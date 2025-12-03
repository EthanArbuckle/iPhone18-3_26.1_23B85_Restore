@interface CAFilter
+ (id)filterTypes;
+ (id)filterWithType:(id)type;
+ (void)CAMLParserStartElement:(id)element;
- (CAFilter)initWithCoder:(id)coder;
- (CAFilter)initWithType:(id)type;
- (Object)CA_copyRenderValue;
- (id)CAMLTypeForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForKey:(id)key;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
- (void)setDefaults;
- (void)setName:(id)name;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation CAFilter

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];

  if (self->_attr)
  {
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v5)
    {
      v5 = CA::Transaction::create(v3);
    }

    v6 = *(v5 + 29);
    *(v5 + 29) = v6 + 1;
    if (!v6)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    attr = self->_attr;
    if (attr)
    {
      CA::AttrList::free(attr, v4);
    }

    self->_attr = 0;
    CA::Transaction::unlock(v5);
  }

  cache = self->_cache;
  if (cache && atomic_fetch_add(cache + 2, 0xFFFFFFFF) == 1)
  {
    (*(*cache + 16))(cache);
  }

  v9.receiver = self;
  v9.super_class = CAFilter;
  [(CAFilter *)&v9 dealloc];
}

- (Object)CA_copyRenderValue
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_type)
  {
    return 0;
  }

  selfCopy = self;
  selfCopy2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!selfCopy2)
  {
    self = CA::Transaction::create(self);
    selfCopy2 = self;
  }

  name_high = HIDWORD(selfCopy2[2]._name);
  HIDWORD(selfCopy2[2]._name) = name_high + 1;
  if (!name_high)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  if (!selfCopy->_cache)
  {
    attr = selfCopy->_attr;
    if (attr)
    {
      v6 = -1;
      v7 = selfCopy->_attr;
      do
      {
        v7 = *v7;
        ++v6;
      }

      while (v7);
      if (v6)
      {
        v8 = 8 * v6;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        if ((8 * v6) <= 0x1000)
        {
          MEMORY[0x1EEE9AC00](self);
          bzero(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          v17 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          LODWORD(v18) = selfCopy->_type;
LABEL_16:
          CA::AttrList::for_each(*attr, copy_attr, &v16);
          if (v16)
          {
            v10 = CA::Render::Array::new_array(v16, v17, 0, 0);
            goto LABEL_37;
          }

LABEL_36:
          v10 = 0;
LABEL_37:
          if (v8 > 0x1000)
          {
            free(v17);
          }

          goto LABEL_19;
        }

        v17 = malloc_type_malloc(8 * v6, 0x2004093837F09uLL);
        LODWORD(v18) = selfCopy->_type;
        if (v17)
        {
          attr = selfCopy->_attr;
          if (!attr)
          {
            goto LABEL_36;
          }

          goto LABEL_16;
        }
      }
    }

    v10 = 0;
LABEL_19:
    v11 = CA::Render::String::new_string(selfCopy->_name, a2);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v12 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
    v13 = v12;
    if (v12)
    {
      CA::Render::Filter::Filter(v12, selfCopy->_type, v11, v10);
    }

    if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
    }

    if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v10 + 16))(v10);
    }

    flags = selfCopy->_flags;
    if (flags)
    {
      *(v13 + 3) |= flags << 8;
    }

    selfCopy->_cache = v13;
  }

  CA::Transaction::unlock(selfCopy2);
  result = selfCopy->_cache;
  if (result)
  {
    p_var1 = &result->var1;
    if (!atomic_fetch_add(&result->var1.var0.var0, 1u))
    {
      result = 0;
      atomic_fetch_add(&p_var1->var0.var0, 0xFFFFFFFF);
    }
  }

  return result;
}

- (id)CAMLTypeForKey:(id)key
{
  v4 = CAInternAtom(key, 0);
  if (v4 == 87 || v4 == 234)
  {
    return @"BOOL";
  }

  if (v4 == 527)
  {
    return @"string";
  }

  v7 = 0;
  while (filter_inputs[v7] != self->_type)
  {
    v7 += filter_inputs[v7 + 1] + 2;
    if (v7 >= 0x10B)
    {
      return 0;
    }
  }

  v5 = 0;
  if (v7 != 41 && v7 != 209)
  {
    v8 = filter_inputs[v7 + 1];
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    for (i = v7 + 2; filter_inputs[i] != v4; ++i)
    {
      v5 = 0;
      if (!--v9)
      {
        return v5;
      }
    }

    v5 = @"BOOL";
    switch(v4)
    {
      case 316:
      case 317:
      case 318:
      case 319:
      case 322:
      case 325:
      case 326:
      case 327:
      case 332:
      case 333:
      case 334:
      case 335:
      case 337:
      case 338:
      case 340:
      case 341:
      case 342:
      case 343:
      case 346:
      case 347:
      case 348:
      case 349:
      case 350:
      case 351:
      case 352:
      case 353:
      case 354:
      case 355:
      case 356:
      case 358:
      case 367:
      case 368:
      case 369:
      case 370:
      case 371:
      case 372:
      case 374:
      case 376:
      case 377:
      case 378:
      case 386:
      case 387:
      case 391:
      case 395:
      case 396:
      case 397:
      case 400:
      case 403:
      case 404:
      case 405:
      case 406:
      case 407:
      case 408:
      case 409:
      case 411:
      case 412:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 425:
      case 426:
      case 428:
      case 429:
      case 430:
      case 432:
      case 433:
      case 434:
      case 483:
      case 534:
        return @"real";
      case 320:
      case 323:
      case 330:
      case 331:
      case 339:
      case 359:
      case 365:
      case 366:
      case 379:
      case 381:
      case 384:
      case 385:
      case 389:
      case 392:
      case 398:
      case 410:
      case 413:
      case 435:
      case 452:
        return v5;
      case 321:
      case 373:
      case 393:
      case 421:
      case 423:
      case 424:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 453:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
      case 500:
      case 501:
      case 502:
      case 503:
      case 504:
      case 505:
      case 506:
      case 507:
      case 508:
      case 509:
      case 510:
      case 511:
      case 512:
      case 513:
      case 514:
      case 515:
      case 516:
      case 517:
      case 518:
      case 519:
      case 520:
      case 521:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 528:
      case 529:
      case 530:
      case 531:
      case 532:
      case 533:
      case 535:
      case 536:
      case 537:
      case 538:
      case 539:
      case 540:
      case 541:
      case 542:
      case 543:
      case 544:
      case 545:
      case 546:
      case 547:
      case 548:
      case 549:
      case 550:
      case 551:
      case 552:
      case 553:
      case 554:
      case 555:
      case 556:
      case 557:
      case 558:
      case 559:
      case 560:
      case 561:
      case 562:
      case 563:
      case 564:
      case 565:
      case 566:
      case 567:
      case 568:
      case 569:
      case 570:
      case 571:
      case 572:
      case 573:
      case 574:
      case 575:
      case 576:
      case 577:
      case 578:
      case 579:
      case 580:
      case 581:
      case 582:
      case 583:
      case 584:
      case 585:
      case 586:
      case 587:
      case 588:
      case 589:
      case 590:
      case 591:
      case 592:
      case 593:
      case 594:
      case 595:
      case 596:
      case 597:
      case 598:
      case 599:
      case 600:
      case 601:
        return 0;
      case 324:
      case 345:
      case 383:
      case 402:
      case 436:
        return @"NSArray";
      case 328:
      case 329:
      case 336:
      case 360:
      case 361:
      case 362:
      case 375:
      case 380:
      case 420:
      case 422:
        return @"CGColor";
      case 344:
      case 382:
      case 394:
      case 401:
      case 427:
        return @"CGPoint";
      case 357:
      case 419:
        return @"CGRect";
      case 363:
      case 390:
        return @"CGImage";
      case 364:
        return @"CAColorMatrix";
      case 388:
      case 399:
      case 431:
      case 602:
        return @"string";
      default:
        if (v4 == 265)
        {
          return @"CGColor";
        }

        if (v4 == 648)
        {
          return @"real";
        }

        break;
    }

    return 0;
  }

  return v5;
}

- (void)encodeWithCAMLWriter:(id)writer
{
  [writer setElementAttribute:-[CAFilter type](self forKey:{"type"), @"filter"}];
  name = [(CAFilter *)self name];
  if (name)
  {
    [writer setElementAttribute:name forKey:@"name"];
  }

  if (![(CAFilter *)self isEnabled])
  {
    [writer setElementAttribute:@"0" forKey:@"enabled"];
  }

  cachesInputImage = [(CAFilter *)self cachesInputImage];
  if (cachesInputImage)
  {
    cachesInputImage = [writer setElementAttribute:@"1" forKey:@"cachesInputImage"];
  }

  if (self->_attr)
  {
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v7)
    {
      v7 = CA::Transaction::create(cachesInputImage);
    }

    v8 = *(v7 + 29);
    *(v7 + 29) = v8 + 1;
    if (!v8)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    attr = self->_attr;
    if (attr)
    {
      CA::AttrList::for_each(*attr, write_attr, writer);
    }

    CA::Transaction::unlock(v7);
  }
}

- (CAFilter)initWithCoder:(id)coder
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CAFilter;
  v4 = [(CAFilter *)&v11 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"CAFilterType"];
    if (v5)
    {
      v4->_type = CAInternAtom(v5, 1);
    }

    v4->_name = [coder decodeObjectOfClass:objc_opt_class() forKey:@"CAFilterName"];
    if ([coder containsValueForKey:@"CAFilterEnabled"] && !objc_msgSend(coder, "decodeBoolForKey:", @"CAFilterEnabled"))
    {
      v6 = v4->_flags & 0xFFFFFFFE;
    }

    else
    {
      v6 = v4->_flags | 1;
    }

    v4->_flags = v6;
    v7 = [coder CA_decodeObjectForKey:@"CAFilterInputs"];
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      if (v9 == CFDictionaryGetTypeID())
      {
        CFDictionaryApplyFunction(v8, set_attr, v4);
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = [coder encodeObject:CAAtomGetString(self->_type) forKey:@"CAFilterType"];
  name = self->_name;
  if (name)
  {
    v5 = [coder encodeObject:name forKey:@"CAFilterName"];
  }

  if ((self->_flags & 1) == 0)
  {
    v5 = [coder encodeBool:0 forKey:@"CAFilterEnabled"];
  }

  if (self->_attr)
  {
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v7)
    {
      v7 = CA::Transaction::create(v5);
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = *(v7 + 29);
    *(v7 + 29) = v9 + 1;
    v11 = v8;
    if (!v9)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    attr = self->_attr;
    if (attr)
    {
      CA::AttrList::for_each(*attr, copy_dictionary, v11);
    }

    CA::Transaction::unlock(v7);
    [coder CA_encodeObject:v11 forKey:@"CAFilterInputs" conditional:0];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v6)
    {
      v6 = CA::Transaction::create(v4);
    }

    *(v5 + 2) = self->_type;
    *(v5 + 2) = [(NSString *)self->_name copy];
    *(v5 + 6) = self->_flags;
    v7 = *(v6 + 29);
    *(v6 + 29) = v7 + 1;
    if (!v7)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    attr = self->_attr;
    if (attr)
    {
      v9 = *(attr + 1) & 7;
      if (v9 == 7)
      {
        attr = CA::AttrList::copy_(attr);
      }

      else
      {
        *(attr + 1) = *(attr + 1) & 0xFFFFFFFFFFFFFFF8 | (v9 + 1);
      }
    }

    *(v5 + 4) = attr;
    CA::Transaction::unlock(v6);
  }

  return v5;
}

- (void)setDefaults
{
  if (self->_attr)
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v3)
    {
      v3 = CA::Transaction::create(self);
    }

    v4 = *(v3 + 29);
    *(v3 + 29) = v4 + 1;
    if (!v4)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    attr = self->_attr;
    if (attr)
    {
      CA::AttrList::free(attr, a2);
    }

    self->_attr = 0;
    CA::Transaction::unlock(v3);
    cache = self->_cache;
    if (cache)
    {
      if (atomic_fetch_add(cache + 2, 0xFFFFFFFF) == 1)
      {
        (*(*cache + 16))(cache);
      }

      self->_cache = 0;
    }
  }
}

- (id)valueForKey:(id)key
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!key)
  {
    return 0;
  }

  v4 = CAInternAtom(key, 1);
  v5 = v4;
  if (v4 <= 526)
  {
    if (v4 == 87)
    {
      v6 = MEMORY[0x1E696AD98];
      cachesInputImage = [(CAFilter *)self cachesInputImage];
      goto LABEL_18;
    }

    if (v4 == 234)
    {
      v6 = MEMORY[0x1E696AD98];
      cachesInputImage = [(CAFilter *)self isEnabled];
LABEL_18:

      return [v6 numberWithBool:cachesInputImage];
    }

    goto LABEL_9;
  }

  if (v4 != 725)
  {
    if (v4 == 527)
    {
      return self->_name;
    }

LABEL_9:
    v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v9)
    {
      v9 = CA::Transaction::create(v4);
    }

    v10 = *(v9 + 29);
    *(v9 + 29) = v10 + 1;
    if (!v10)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    attr = self->_attr;
    if (attr)
    {
      v13[0] = 0;
      v12 = CA::AttrList::get(attr, v5, 1, v13);
      CA::Transaction::unlock(v9);
      if (v12)
      {
        return v13[0];
      }

      else
      {
        return 0;
      }
    }

    CA::Transaction::unlock(v9);
    return 0;
  }

  return [(CAFilter *)self type];
}

- (void)setValue:(id)value forKey:(id)key
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = value;
  if (key)
  {
    v7 = CAInternAtom(key, 1);
    if (v7 == 87)
    {
      v10 = *MEMORY[0x1E695E4C0] != value;

      [(CAFilter *)self setCachesInputImage:v10];
    }

    else
    {
      v8 = v7;
      if (v7 == 234)
      {
        v9 = *MEMORY[0x1E695E4C0] != value;

        [(CAFilter *)self setEnabled:v9];
      }

      else if (v7 == 527)
      {

        [(CAFilter *)self setName:value];
      }

      else
      {
        v16 = 0;
        v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
        if (!v11)
        {
          v11 = CA::Transaction::create(v7);
        }

        v12 = *(v11 + 29);
        *(v11 + 29) = v12 + 1;
        if (!v12)
        {
          os_unfair_lock_lock(&CA::Transaction::transaction_lock);
        }

        attr = self->_attr;
        if (!attr || !CA::AttrList::get(attr, v8, 1, &v16) || ([v16 isEqual:value] & 1) == 0)
        {
          [(CAFilter *)self willChangeValueForKey:key];
          v14 = self->_attr;
          if (!v14)
          {
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v14 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
          }

          self->_attr = CA::AttrList::set(v14, v8, 2, v17);
          cache = self->_cache;
          if (cache)
          {
            if (atomic_fetch_add(cache + 2, 0xFFFFFFFF) == 1)
            {
              (*(*cache + 16))(cache);
            }

            self->_cache = 0;
          }

          [(CAFilter *)self didChangeValueForKey:key];
        }

        CA::Transaction::unlock(v11);
      }
    }
  }
}

- (void)setName:(id)name
{
  if (self->_name != name)
  {
    [(CAFilter *)self willChangeValueForKey:@"name"];

    self->_name = [name copy];
    cache = self->_cache;
    if (cache)
    {
      if (atomic_fetch_add(cache + 2, 0xFFFFFFFF) == 1)
      {
        (*(*cache + 16))(cache);
      }

      self->_cache = 0;
    }

    [(CAFilter *)self didChangeValueForKey:@"name"];
  }
}

- (CAFilter)initWithType:(id)type
{
  self->_flags = 1;
  if (type)
  {
    type = CAInternAtom(type, 1);
    self->_type = type;
  }

  else
  {
    type = self->_type;
  }

  self->_name = CAAtomGetString(type);

  return [(CAFilter *)self init];
}

+ (void)CAMLParserStartElement:(id)element
{
  v4 = [element attributeForKey:@"filter" remove:1];
  if (v4)
  {
    v5 = [CAFilter filterWithType:v4];

    [element setElementValue:v5];
  }

  else
  {
  }
}

+ (id)filterWithType:(id)type
{
  v3 = [[self alloc] initWithType:type];

  return v3;
}

+ (id)filterTypes
{
  result = +[CAFilter filterTypes]::names;
  if (!+[CAFilter filterTypes]::names)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i < 267; i += v5[1] + 2)
    {
      v5 = &filter_inputs[i];
      [v3 addObject:CAAtomGetString(*v5)];
    }

    +[CAFilter filterTypes]::names = [v3 copy];

    return +[CAFilter filterTypes]::names;
  }

  return result;
}

@end