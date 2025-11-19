uint64_t MOEventBundle.assets.getter(uint64_t a1)
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 280);
  *(*v1 + 360) = a1;

  v2(v3, v4);

  return _swift_task_switch(MOEventBundle.assets.getter, 0, 0);
}

id MOEventBundle.title.getter()
{
  result = [v0 labels];
  if (result)
  {
    v2 = result;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16))
    {

      v4 = objc_allocWithZone(type metadata accessor for TemplatedString());
      return TemplatedString.init(template:)();
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t MOEventBundle.dateRange.getter()
{
  v1 = type metadata accessor for Date();
  v2 = __chkstk_darwin(v1 - 8);
  __chkstk_darwin(v2);
  v3 = [v0 displayStartDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v0 displayEndDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = objc_allocWithZone(type metadata accessor for DateRange());
  return DateRange.init(startDate:endDate:)();
}

uint64_t MOEventBundle.suggestionType.getter@<X0>(uint64_t a1@<X8>)
{
  switch([v1 interfaceType])
  {
    case 0uLL:
    case 3uLL:
    case 6uLL:
    case 8uLL:
    case 9uLL:
    case 0xFuLL:
    case 0x11uLL:
      v3 = type metadata accessor for SuggestionType();
      v4 = *(*(v3 - 8) + 56);
      v5 = v3;
      v6 = a1;
      v7 = 1;
      goto LABEL_15;
    case 1uLL:
      v8 = &enum case for SuggestionType.activity(_:);
      goto LABEL_14;
    case 2uLL:
      v8 = &enum case for SuggestionType.outing(_:);
      goto LABEL_14;
    case 4uLL:
      v8 = &enum case for SuggestionType.significantContact(_:);
      goto LABEL_14;
    case 5uLL:
      v8 = &enum case for SuggestionType.media(_:);
      goto LABEL_14;
    case 7uLL:
      v8 = &enum case for SuggestionType.timeAtHome(_:);
      goto LABEL_14;
    case 0xAuLL:
      v8 = &enum case for SuggestionType.photoMemory(_:);
      goto LABEL_14;
    case 0xBuLL:
      v8 = &enum case for SuggestionType.evergreen(_:);
      goto LABEL_14;
    case 0xCuLL:
      v8 = &enum case for SuggestionType.timeContext(_:);
      goto LABEL_14;
    case 0xDuLL:
      v8 = &enum case for SuggestionType.trip(_:);
      goto LABEL_14;
    case 0xEuLL:
      v8 = &enum case for SuggestionType.stateOfMind(_:);
      goto LABEL_14;
    case 0x10uLL:
      v8 = &enum case for SuggestionType.thematicSummary(_:);
LABEL_14:
      v9 = *v8;
      v10 = type metadata accessor for SuggestionType();
      v12 = *(v10 - 8);
      (*(v12 + 104))(a1, v9, v10);
      v4 = *(v12 + 56);
      v6 = a1;
      v7 = 0;
      v5 = v10;
LABEL_15:

      return v4(v6, v7, 1, v5);
    default:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x100165E60);
  }
}

uint64_t MOEventBundle.suggestionSubType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 bundleSubType];
  if (v3 <= 800)
  {
    switch(v3)
    {
      case 301:
        v4 = &enum case for SuggestionSubType.contact(_:);
        goto LABEL_21;
      case 302:
        v4 = &enum case for SuggestionSubType.contactWeeklySummary(_:);
        goto LABEL_21;
      case 303:
        v4 = &enum case for SuggestionSubType.contactTrend(_:);
        goto LABEL_21;
      case 304:
      case 305:
      case 306:
      case 307:
      case 308:
      case 309:
      case 310:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      case 317:
      case 318:
      case 319:
      case 320:
      case 321:
      case 322:
      case 323:
      case 324:
      case 325:
      case 326:
      case 327:
      case 328:
      case 329:
      case 330:
      case 331:
      case 332:
      case 333:
      case 334:
      case 335:
      case 336:
      case 337:
      case 338:
      case 339:
      case 340:
      case 341:
      case 342:
      case 343:
      case 344:
      case 345:
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
      case 357:
      case 358:
      case 359:
      case 360:
      case 361:
      case 362:
      case 363:
      case 364:
      case 365:
      case 366:
      case 367:
      case 368:
      case 369:
      case 370:
      case 371:
      case 372:
      case 373:
      case 374:
      case 375:
      case 376:
      case 377:
      case 378:
      case 379:
      case 380:
      case 381:
      case 382:
      case 383:
      case 384:
      case 385:
      case 386:
      case 387:
      case 388:
      case 389:
      case 390:
      case 391:
      case 392:
      case 393:
      case 394:
      case 395:
      case 396:
      case 397:
      case 398:
      case 399:
      case 400:
      case 406:
      case 411:
      case 412:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 420:
      case 421:
      case 422:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
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
      case 452:
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
      case 483:
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
      case 534:
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
      case 618:
      case 619:
      case 620:
      case 621:
      case 622:
      case 623:
      case 624:
      case 625:
      case 626:
      case 627:
      case 628:
      case 629:
      case 630:
      case 631:
      case 632:
      case 633:
      case 634:
      case 635:
      case 636:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
      case 642:
      case 643:
      case 644:
      case 645:
      case 646:
      case 647:
      case 648:
      case 649:
      case 650:
      case 651:
      case 652:
      case 653:
      case 654:
      case 655:
      case 656:
      case 657:
      case 658:
      case 659:
      case 660:
      case 661:
      case 662:
      case 663:
      case 664:
      case 665:
      case 666:
      case 667:
      case 668:
      case 669:
      case 670:
      case 671:
      case 672:
      case 673:
      case 674:
      case 675:
      case 676:
      case 677:
      case 678:
      case 679:
      case 680:
      case 681:
      case 682:
      case 683:
      case 684:
      case 685:
      case 686:
      case 687:
      case 688:
      case 689:
      case 690:
      case 691:
      case 692:
      case 693:
      case 694:
      case 695:
      case 696:
      case 697:
      case 698:
      case 699:
      case 700:
        goto LABEL_30;
      case 401:
        v4 = &enum case for SuggestionSubType.songOnRepeat(_:);
        goto LABEL_21;
      case 402:
        v4 = &enum case for SuggestionSubType.playedSong(_:);
        goto LABEL_21;
      case 403:
        v4 = &enum case for SuggestionSubType.playedPodCast(_:);
        goto LABEL_21;
      case 404:
        v4 = &enum case for SuggestionSubType.mediaOnRepeatWeeklySummary(_:);
        goto LABEL_21;
      case 405:
        v4 = &enum case for SuggestionSubType.playedMediaWeeklySummary(_:);
        goto LABEL_21;
      case 407:
        v4 = &enum case for SuggestionSubType.mediaOnRepeatThirdParty(_:);
        goto LABEL_21;
      case 408:
        v4 = &enum case for SuggestionSubType.playedMediaThirdParty(_:);
        goto LABEL_21;
      case 409:
        v4 = &enum case for SuggestionSubType.mediaOnRepeatWeeklySummaryThirdParty(_:);
        goto LABEL_21;
      case 410:
        v4 = &enum case for SuggestionSubType.playedMediaWeeklySummaryThirdParty(_:);
        goto LABEL_21;
      case 501:
        v4 = &enum case for SuggestionSubType.timeAtHome(_:);
        goto LABEL_21;
      case 502:
        v4 = &enum case for SuggestionSubType.photosAtHome(_:);
        goto LABEL_21;
      case 503:
        v4 = &enum case for SuggestionSubType.hostingAtHome(_:);
        goto LABEL_21;
      case 504:
        v4 = &enum case for SuggestionSubType.evergreenAtHome(_:);
        goto LABEL_21;
      case 601:
        v4 = &enum case for SuggestionSubType.photoMemorySingleMoment(_:);
        goto LABEL_21;
      case 602:
        v4 = &enum case for SuggestionSubType.photoMemoryPerson(_:);
        goto LABEL_21;
      case 603:
        v4 = &enum case for SuggestionSubType.photoMemorySocialGroup(_:);
        goto LABEL_21;
      case 604:
        v4 = &enum case for SuggestionSubType.photoMemoryLastMonthAtHome(_:);
        goto LABEL_21;
      case 605:
        v4 = &enum case for SuggestionSubType.photoMemoryLookbacks(_:);
        goto LABEL_21;
      case 606:
        v4 = &enum case for SuggestionSubType.photoMemoryFoodie(_:);
        goto LABEL_21;
      case 607:
        v4 = &enum case for SuggestionSubType.photoMemoryPet(_:);
        goto LABEL_21;
      case 608:
        v4 = &enum case for SuggestionSubType.photoMemoryLocation(_:);
        goto LABEL_21;
      case 609:
        v4 = &enum case for SuggestionSubType.photoMemoryMeaningfulEvent(_:);
        goto LABEL_21;
      case 610:
        v4 = &enum case for SuggestionSubType.photoMemoryTrip(_:);
        goto LABEL_21;
      case 611:
        v4 = &enum case for SuggestionSubType.photoMemoryPastSuperSet(_:);
        goto LABEL_21;
      case 612:
        v4 = &enum case for SuggestionSubType.photoMemorySeason(_:);
        goto LABEL_21;
      case 613:
        v4 = &enum case for SuggestionSubType.photoMemoryRecentHighlights(_:);
        goto LABEL_21;
      case 614:
        v4 = &enum case for SuggestionSubType.photoMemoryFamily(_:);
        goto LABEL_21;
      case 615:
        v4 = &enum case for SuggestionSubType.photoMemoryExcitingMoments(_:);
        goto LABEL_21;
      case 616:
        v4 = &enum case for SuggestionSubType.photoMemoryTrends(_:);
        goto LABEL_21;
      case 617:
        v4 = &enum case for SuggestionSubType.photoMemoryOthers(_:);
        goto LABEL_21;
      case 701:
        v4 = &enum case for SuggestionSubType.evergreenGratitude(_:);
        goto LABEL_21;
      case 702:
        v4 = &enum case for SuggestionSubType.evergreenWisdom(_:);
        goto LABEL_21;
      case 703:
        v4 = &enum case for SuggestionSubType.evergreenResillience(_:);
        goto LABEL_21;
      case 704:
        v4 = &enum case for SuggestionSubType.evergreenCreativity(_:);
        goto LABEL_21;
      case 705:
        v4 = &enum case for SuggestionSubType.evergreenKindness(_:);
        goto LABEL_21;
      case 706:
      case 707:
        v4 = &enum case for SuggestionSubType.evergreenPurpose(_:);
        goto LABEL_21;
      case 708:
        v4 = &enum case for SuggestionSubType.timeAtHomeEvergreenResilience(_:);
        goto LABEL_21;
      case 709:
        v4 = &enum case for SuggestionSubType.timeAtHomeEvergreenPurpose(_:);
        goto LABEL_21;
      default:
        switch(v3)
        {
          case 101:
            v4 = &enum case for SuggestionSubType.visit(_:);
            goto LABEL_21;
          case 102:
            v4 = &enum case for SuggestionSubType.flight(_:);
            goto LABEL_21;
          case 103:
            v4 = &enum case for SuggestionSubType.dining(_:);
            goto LABEL_21;
          case 104:
            v4 = &enum case for SuggestionSubType.shopping(_:);
            goto LABEL_21;
          case 105:
            v4 = &enum case for SuggestionSubType.trip(_:);
            goto LABEL_21;
          case 106:
            v4 = &enum case for SuggestionSubType.preOnboardedVisit(_:);
            goto LABEL_21;
          case 107:
          case 108:
          case 109:
          case 110:
          case 111:
          case 112:
          case 113:
          case 114:
          case 115:
          case 116:
          case 117:
          case 118:
          case 119:
          case 120:
          case 121:
          case 122:
          case 123:
          case 124:
          case 125:
          case 126:
          case 127:
          case 128:
          case 129:
          case 130:
          case 131:
          case 132:
          case 133:
          case 134:
          case 135:
          case 136:
          case 137:
          case 138:
          case 139:
          case 140:
          case 141:
          case 142:
          case 143:
          case 144:
          case 145:
          case 146:
          case 147:
          case 148:
          case 149:
          case 150:
          case 151:
          case 152:
          case 153:
          case 154:
          case 155:
          case 156:
          case 157:
          case 158:
          case 159:
          case 160:
          case 161:
          case 162:
          case 163:
          case 164:
          case 165:
          case 166:
          case 167:
          case 168:
          case 169:
          case 170:
          case 171:
          case 172:
          case 173:
          case 174:
          case 175:
          case 176:
          case 177:
          case 178:
          case 179:
          case 180:
          case 181:
          case 182:
          case 183:
          case 184:
          case 185:
          case 186:
          case 187:
          case 188:
          case 189:
          case 190:
          case 191:
          case 192:
          case 193:
          case 194:
          case 195:
          case 196:
          case 197:
          case 198:
          case 199:
          case 200:
            goto LABEL_30;
          case 201:
            v4 = &enum case for SuggestionSubType.workout(_:);
            goto LABEL_21;
          case 202:
            v4 = &enum case for SuggestionSubType.workoutWeeklySummary(_:);
            goto LABEL_21;
          case 203:
            v4 = &enum case for SuggestionSubType.workoutRoutine(_:);
            goto LABEL_21;
          case 204:
            v4 = &enum case for SuggestionSubType.motionActivityWalking(_:);
            goto LABEL_21;
          case 205:
            v4 = &enum case for SuggestionSubType.workoutTransit(_:);
            goto LABEL_21;
          case 206:
            v4 = &enum case for SuggestionSubType.motionActivityTransit(_:);
            goto LABEL_21;
          case 207:
            v4 = &enum case for SuggestionSubType.motionActivityRunning(_:);
            goto LABEL_21;
          case 208:
            v4 = &enum case for SuggestionSubType.motionActivityMixedRunningWalking(_:);
            goto LABEL_21;
          default:
            if (v3)
            {
              goto LABEL_30;
            }

            v5 = enum case for SuggestionSubType.unknown(_:);
            break;
        }

        goto LABEL_22;
    }
  }

  if (v3 > 1002)
  {
    if (v3 > 1004)
    {
      if (v3 == 1005)
      {
        v4 = &enum case for SuggestionSubType.thematicSummaryPhotoSubject(_:);
      }

      else
      {
        if (v3 != 1006)
        {
          goto LABEL_30;
        }

        v4 = &enum case for SuggestionSubType.thematicSummaryStateOfMind(_:);
      }
    }

    else if (v3 == 1003)
    {
      v4 = &enum case for SuggestionSubType.thematicSummaryCommonActivity(_:);
    }

    else
    {
      v4 = &enum case for SuggestionSubType.thematicSummaryCommonPlace(_:);
    }
  }

  else if (v3 > 1000)
  {
    if (v3 == 1001)
    {
      v4 = &enum case for SuggestionSubType.thematicSummaryHoliday(_:);
    }

    else
    {
      v4 = &enum case for SuggestionSubType.thematicSummarySocial(_:);
    }
  }

  else
  {
    if (v3 != 801)
    {
      if (v3 == 802)
      {
        v4 = &enum case for SuggestionSubType.momentaryEmotion(_:);
        goto LABEL_21;
      }

LABEL_30:
      v12 = type metadata accessor for SuggestionSubType();
      v7 = *(*(v12 - 8) + 56);
      v10 = v12;
      v8 = a1;
      v9 = 1;
      goto LABEL_23;
    }

    v4 = &enum case for SuggestionSubType.dailyMood(_:);
  }

LABEL_21:
  v5 = *v4;
LABEL_22:
  v6 = type metadata accessor for SuggestionSubType();
  v13 = *(v6 - 8);
  (*(v13 + 104))(a1, v5, v6);
  v7 = *(v13 + 56);
  v8 = a1;
  v9 = 0;
  v10 = v6;
LABEL_23:

  return v7(v8, v9, 1, v10);
}

uint64_t static MOEventBundle.constructedPhotoAssets(resources:suggestionID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static MOEventBundle.constructedPhotoAssets(resources:suggestionID:);

  return (specialized static MOEventBundle.constructedPhotoAssets(resources:suggestionID:))(a1, a2);
}

uint64_t static MOEventBundle.constructedPhotoAssets(resources:suggestionID:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t specialized Array.subscript.getter(Swift::Int a1, unint64_t a2, unint64_t a3)
{
  v6 = a3 >> 62;
  if (!(a3 >> 62))
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= a1)
    {
      goto LABEL_3;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < a1)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (a1 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a2)
  {
    goto LABEL_22;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    if (a2 >= a1)
    {
      if (a1 == a2)
      {
        goto LABEL_12;
      }

      if (a1 < a2)
      {
        type metadata accessor for Asset();

        v8 = a1;
        do
        {
          v9 = v8 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v8);
          v8 = v9;
        }

        while (a2 != v9);
        goto LABEL_16;
      }

LABEL_25:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_12:

LABEL_16:
  if (!v6)
  {
    return a3 & 0xFFFFFFFFFFFFFF8;
  }

  return _CocoaArrayWrapper.subscript.getter();
}

id closure #2 in static MOEventBundle.constructedFirstPartyMediaAssets(resources:suggestionID:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  __chkstk_darwin(v8 - 8);
  v86 = v71 - v9;
  v10 = type metadata accessor for Date();
  v88 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v85 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v87 = v71 - v14;
  __chkstk_darwin(v13);
  v89 = v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI13MediaCategoryOSgMd);
  v17 = __chkstk_darwin(v16 - 8);
  v84 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v71 - v19;
  v21 = type metadata accessor for MediaCategory();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v90 = v71 - v26;
  v27 = *a1;
  result = [v27 mediaFirstPartyTrackIdentifier];
  if (!result)
  {
    goto LABEL_4;
  }

  v81 = v25;
  v83 = v10;
  v29 = result;
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  MOResource.mediaFirstPartyCategory.getter(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {

    result = outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v20, &_s9MomentsUI13MediaCategoryOSgMd);
LABEL_4:
    v32 = 0;
    goto LABEL_24;
  }

  v76 = v31;
  v78 = v7;
  v79 = a2;
  (*(v22 + 32))(v90, v20, v21);
  static Date.now.getter();
  v33 = [v27 data];
  v80 = v2;
  if (!v33)
  {
    v41 = v81;
    goto LABEL_16;
  }

  v34 = v33;
  v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v92[0] = 0;
  v40 = [v38 JSONObjectWithData:isa options:0 error:v92];

  v41 = v81;
  if (!v40)
  {
    v54 = v92[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v35, v37);

    v80 = 0;
    goto LABEL_16;
  }

  v42 = v92[0];
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data._Representation(v35, v37);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v43 = v91;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v43[2])
  {

    goto LABEL_15;
  }

  v46 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v45);
  v48 = v47;

  if ((v48 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v49 = *(v43[7] + 8 * v46);
  swift_unknownObjectRetain();

  v92[0] = v49;
  if (swift_dynamicCast())
  {
    v50 = v87;
    Date.init(timeIntervalSinceReferenceDate:)();
    v51 = v88;
    v52 = v89;
    v53 = v83;
    (*(v88 + 8))(v89, v83);
    (*(v51 + 32))(v52, v50, v53);
  }

LABEL_16:
  (*(v22 + 104))(v41, enum case for MediaCategory.songAlbum(_:), v21);
  lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory(&lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory, &type metadata accessor for MediaCategory);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v55 = *(v22 + 8);
  v75 = v22 + 8;
  v74 = v55;
  v55(v41, v21);
  if (v92[0] != v91)
  {
    v56 = [v27 mediaFirstPartyTrackTitle];
    if (v56)
    {
      goto LABEL_18;
    }

LABEL_20:
    v81 = 0;
    v72 = 0;
    goto LABEL_21;
  }

  v56 = [v27 mediaAlbum];
  if (!v56)
  {
    goto LABEL_20;
  }

LABEL_18:
  v57 = v56;
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v58;

LABEL_21:
  v77 = v27;
  if (one-time initialization token for defaultMaximumScreenViewport != -1)
  {
    swift_once();
  }

  v71[1] = static MOBundleProcessingSession.defaultMaximumScreenViewport;
  static AssetViewModel.Style.allCases.getter();
  v59 = v84;
  (*(v22 + 16))(v84, v90, v21);
  (*(v22 + 56))(v59, 0, 1, v21);
  v60 = v88;
  v61 = *(v88 + 16);
  v73 = v21;
  v62 = v89;
  v63 = v83;
  v61(v87, v89, v83);
  v61(v85, v62, v63);
  v64 = v86;
  DateInterval.init(start:end:)();
  v65 = type metadata accessor for DateInterval();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  v66 = objc_allocWithZone(type metadata accessor for MutableMediaFirstPartyViewModel());
  v67 = MutableMediaFirstPartyViewModel.init(viewport:styles:image:title:subtitle:trackIdentifier:mediaCategory:dateInterval:)();
  UUID.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1002A4A70;
  *(v68 + 32) = v67;
  v69 = v67;
  [v77 priorityScore];
  v70 = objc_allocWithZone(type metadata accessor for Asset());
  v32 = Asset.init(universalUUID:representations:priorityScore:)();

  (*(v60 + 8))(v62, v63);
  result = v74(v90, v73);
  a2 = v79;
LABEL_24:
  *a2 = v32;
  return result;
}

id closure #2 in static MOEventBundle.constructedContactAssets(resources:suggestionID:startDate:endDate:)@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  v14 = type metadata accessor for DateInterval();
  __chkstk_darwin(v14 - 8);
  result = [*a1 contactIdentifier];
  if (result)
  {
    v16 = result;
    v25[3] = v4;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25[1] = v18;
    v25[2] = v17;

    if (one-time initialization token for defaultMaximumScreenViewport != -1)
    {
      swift_once();
    }

    v19 = static MOBundleProcessingSession.defaultMaximumScreenViewport;
    static AssetViewModel.Style.allCases.getter();
    v20 = *(v8 + 16);
    v20(v13, v26, v7);
    v20(v11, v27, v7);
    DateInterval.init(start:end:)();
    v21 = objc_allocWithZone(type metadata accessor for MutableContactViewModel());
    v22 = MutableContactViewModel.init(intendedViewport:supportedStyles:contactIdentifier:dateInterval:)();
    UUID.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1002A4A70;
    *(v23 + 32) = v22;
    v24 = objc_allocWithZone(type metadata accessor for Asset());
    result = Asset.init(universalUUID:representations:priorityScore:)();
  }

  *v28 = result;
  return result;
}

id closure #2 in static MOEventBundle.constructedThirdPartyMediaAssets(resources:suggestionID:)@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v99 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateInterval();
  __chkstk_darwin(v8 - 8);
  v98 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Date();
  v100 = *(v102 - 8);
  v10 = __chkstk_darwin(v102);
  v97 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v101 = &v81 - v13;
  __chkstk_darwin(v12);
  v104 = &v81 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI23MediaThirdPartyCategoryOSgMd);
  __chkstk_darwin(v15 - 8);
  v17 = &v81 - v16;
  v18 = type metadata accessor for MediaThirdPartyCategory();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v103 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v81 - v23;
  __chkstk_darwin(v22);
  v105 = &v81 - v25;
  v26 = *a1;
  result = [*a1 mediaSourceBundleIdentifier];
  if (!result)
  {
    goto LABEL_4;
  }

  v28 = result;
  v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  MOResource.mediaThirdPartyCategory.getter(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    result = outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v17, &_s9MomentsUI23MediaThirdPartyCategoryOSgMd);
LABEL_4:
    v31 = 0;
    goto LABEL_39;
  }

  v90 = v30;
  (*(v19 + 32))(v105, v17, v18);
  static Date.now.getter();
  v96 = v26;
  v32 = [v26 data];
  v91 = a2;
  v93 = v18;
  if (!v32)
  {
    goto LABEL_17;
  }

  v95 = v2;
  v33 = v32;
  v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v107[0] = 0;
  v39 = [v37 JSONObjectWithData:isa options:0 error:v107];

  if (!v39)
  {
    v55 = v107[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v34, v36);

    v3 = 0;
LABEL_17:
    v49 = v96;
    goto LABEL_18;
  }

  v40 = v107[0];
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data._Representation(v34, v36);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v3 = v95;
    goto LABEL_17;
  }

  v41 = v106;
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v41[2])
  {

    goto LABEL_15;
  }

  v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v43);
  v46 = v45;

  if ((v46 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v47 = *(v41[7] + 8 * v44);
  swift_unknownObjectRetain();

  v107[0] = v47;
  v48 = swift_dynamicCast();
  v49 = v96;
  if (v48)
  {
    v50 = v101;
    Date.init(timeIntervalSinceReferenceDate:)();
    v51 = v100;
    v52 = v104;
    v53 = v102;
    (*(v100 + 8))(v104, v102);
    v54 = v52;
    v18 = v93;
    (*(v51 + 32))(v54, v50, v53);
  }

  v3 = v95;
LABEL_18:
  (*(v19 + 104))(v24, enum case for MediaThirdPartyCategory.album(_:), v18);
  lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory(&lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory, &type metadata accessor for MediaThirdPartyCategory);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v56 = *(v19 + 8);
  v89 = v19 + 8;
  v88 = v56;
  v56(v24, v18);
  if (v107[0] != v106)
  {
    v57 = [v49 mediaFirstPartyTrackTitle];
    if (v57)
    {
      goto LABEL_20;
    }

LABEL_22:
    v59 = 0;
    v61 = 0;
    goto LABEL_23;
  }

  v57 = [v49 mediaAlbum];
  if (!v57)
  {
    goto LABEL_22;
  }

LABEL_20:
  v58 = v57;
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v49 = v96;
LABEL_23:
  if (one-time initialization token for defaultMaximumScreenViewport != -1)
  {
    swift_once();
  }

  v92 = static MOBundleProcessingSession.defaultMaximumScreenViewport;
  v87 = static AssetViewModel.Style.allCases.getter();
  if (v61)
  {
    v62 = v59;
  }

  else
  {
    v62 = 0;
  }

  v86 = v62;
  v63 = 0xE000000000000000;
  if (v61)
  {
    v63 = v61;
  }

  v85 = v63;
  v64 = [v49 mediaArtist];
  if (v64)
  {
    v65 = v64;
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v66;
  }

  else
  {
    v84 = 0;
    v83 = 0;
  }

  v67 = [v49 mediaAlbum];
  if (v67)
  {
    v68 = v67;
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v69;
  }

  else
  {
    v82 = 0;
    v81 = 0;
  }

  v95 = v3;
  (*(v19 + 16))(v103, v105, v18);
  v70 = [v49 mediaBackgroundColorString];
  if (v70)
  {
    v71 = v70;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v72 = v100;
  v73 = *(v100 + 16);
  v74 = v104;
  v75 = v102;
  v73(v101, v104, v102);
  v73(v97, v74, v75);
  DateInterval.init(start:end:)();
  v76 = objc_allocWithZone(type metadata accessor for MutableMediaThirdPartyViewModel());
  v77 = MutableMediaThirdPartyViewModel.init(intendedViewport:supportedStyles:appBundleId:trackTitle:artist:album:mediaCategory:backgroundColorString:dateInterval:)();
  UUID.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1002A4A70;
  *(v78 + 32) = v77;
  v79 = v77;
  [v96 priorityScore];
  v80 = objc_allocWithZone(type metadata accessor for Asset());
  v31 = Asset.init(universalUUID:representations:priorityScore:)();

  (*(v72 + 8))(v74, v75);
  result = v88(v105, v93);
  a2 = v91;
LABEL_39:
  *a2 = v31;
  return result;
}

unint64_t type metadata accessor for MOResource()
{
  result = lazy cache variable for type metadata for MOResource;
  if (!lazy cache variable for type metadata for MOResource)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MOResource);
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        specialized Array.remove(at:)(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 priorityScore];
      v19 = v18;
      [v17 priorityScore];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 priorityScore];
        v27 = v26;
        [v25 priorityScore];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 < v21 == v27 >= v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 < v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        specialized Array.remove(at:)(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 priorityScore];
    v48 = v47;
    [v46 priorityScore];
    v50 = v49;

    if (v48 >= v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_102:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_134:
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    v109 = *(v10 + 2);
    if (v109 >= 2)
    {
      while (*v6)
      {
        v110 = v10;
        v10 = (v109 - 1);
        v111 = *&v110[16 * v109];
        v112 = *&v110[16 * v109 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v111), (*v6 + 8 * *&v110[16 * v109 + 16]), (*v6 + 8 * v112), v7);
        if (v5)
        {
          goto LABEL_112;
        }

        if (v112 < v111)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = specialized _ArrayBuffer._consumeAndCreateNew()(v110);
        }

        if (v109 - 2 >= *(v110 + 2))
        {
          goto LABEL_128;
        }

        v113 = &v110[16 * v109];
        *v113 = v111;
        *(v113 + 1) = v112;
        specialized Array.remove(at:)(v109 - 1);
        v10 = v110;
        v109 = *(v110 + 2);
        if (v109 <= 1)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_138;
    }

LABEL_112:

    return;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v121 = v9;
    if (v9 + 1 < v8)
    {
      v117 = v10;
      v119 = v5;
      v7 = (8 * v9);
      v13 = (*v6 + 8 * v9);
      v14 = v9;
      v16 = *v13;
      v15 = v13 + 2;
      v17 = *(*v6 + 8 * v12);
      v18 = v16;
      v19 = COERCE_DOUBLE(dispatch thunk of Asset.priorityScore.getter());
      v21 = 300.0;
      if (v20)
      {
        v22 = 300.0;
      }

      else
      {
        v22 = v19;
      }

      v23 = COERCE_DOUBLE(dispatch thunk of Asset.priorityScore.getter());
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        v21 = v23;
      }

      v26 = v14 + 2;
      while (v8 != v26)
      {
        v27 = *(v15 - 1);
        v28 = *v15;
        v29 = v27;
        v30 = COERCE_DOUBLE(dispatch thunk of Asset.priorityScore.getter());
        if (v31)
        {
          v32 = 300.0;
        }

        else
        {
          v32 = v30;
        }

        v33 = dispatch thunk of Asset.priorityScore.getter();
        v35 = v34;

        v36 = *&v33;
        if (v35)
        {
          v36 = 300.0;
        }

        ++v26;
        ++v15;
        if (v22 < v21 == v32 >= v36)
        {
          v8 = v26 - 1;
          break;
        }
      }

      v10 = v117;
      v5 = v119;
      v6 = a3;
      v11 = v121;
      if (v22 < v21)
      {
        if (v8 < v121)
        {
          goto LABEL_131;
        }

        if (v121 < v8)
        {
          v37 = 8 * v8 - 8;
          v38 = v8;
          v39 = v121;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_137;
              }

              v40 = *(v7 + v41);
              *(v7 + v41) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            ++v39;
            v37 -= 8;
            ++v7;
          }

          while (v39 < v38);
        }
      }

      v12 = v8;
      v7 = a1;
    }

    v42 = v6[1];
    if (v12 < v42)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_130;
      }

      if (v12 - v11 < a4)
      {
        v43 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_132;
        }

        if (v43 >= v42)
        {
          v43 = v6[1];
        }

        if (v43 < v11)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (v12 != v43)
        {
          break;
        }
      }
    }

LABEL_51:
    if (v12 < v11)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v63 = *(v10 + 2);
    v62 = *(v10 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v10);
    }

    *(v10 + 2) = v64;
    v65 = &v10[16 * v63];
    *(v65 + 4) = v121;
    *(v65 + 5) = v12;
    v66 = *v7;
    if (!*v7)
    {
      goto LABEL_139;
    }

    v124 = v12;
    if (v63)
    {
      while (1)
      {
        v67 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v68 = *(v10 + 4);
          v69 = *(v10 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_71:
          if (v71)
          {
            goto LABEL_118;
          }

          v84 = &v10[16 * v64];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_121;
          }

          v90 = &v10[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_125;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v64 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v94 = &v10[16 * v64];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_85:
        if (v89)
        {
          goto LABEL_120;
        }

        v97 = &v10[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_123;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_92:
        v105 = v67 - 1;
        if (v67 - 1 >= v64)
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*v6)
        {
          goto LABEL_136;
        }

        v106 = *&v10[16 * v105 + 32];
        v107 = *&v10[16 * v67 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v106), (*v6 + 8 * *&v10[16 * v67 + 32]), (*v6 + 8 * v107), v66);
        if (v5)
        {
          goto LABEL_112;
        }

        if (v107 < v106)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v105 >= *(v10 + 2))
        {
          goto LABEL_115;
        }

        v108 = &v10[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        specialized Array.remove(at:)(v67);
        v64 = *(v10 + 2);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v10[16 * v64 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_116;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_117;
      }

      v79 = &v10[16 * v64];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_119;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_122;
      }

      if (v83 >= v75)
      {
        v101 = &v10[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_126;
        }

        if (v70 < v104)
        {
          v67 = v64 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v8 = v6[1];
    v9 = v124;
    if (v124 >= v8)
    {
      goto LABEL_102;
    }
  }

  v118 = v10;
  v120 = v5;
  v44 = *v6;
  v45 = *v6 + 8 * v12 - 8;
  v46 = v11 - v12;
  v122 = v43;
LABEL_39:
  v123 = v12;
  v47 = *(v44 + 8 * v12);
  v48 = v46;
  v49 = v45;
  while (1)
  {
    v50 = *v49;
    v51 = v47;
    v52 = v50;
    v53 = COERCE_DOUBLE(dispatch thunk of Asset.priorityScore.getter());
    if (v54)
    {
      v55 = 300.0;
    }

    else
    {
      v55 = v53;
    }

    v56 = dispatch thunk of Asset.priorityScore.getter();
    v58 = v57;

    v59 = *&v56;
    if (v58)
    {
      v59 = 300.0;
    }

    if (v55 >= v59)
    {
LABEL_38:
      v12 = v123 + 1;
      v45 += 8;
      --v46;
      if (v123 + 1 != v122)
      {
        goto LABEL_39;
      }

      v12 = v122;
      v10 = v118;
      v5 = v120;
      v7 = a1;
      v6 = a3;
      v11 = v121;
      goto LABEL_51;
    }

    if (!v44)
    {
      break;
    }

    v60 = *v49;
    v47 = *(v49 + 8);
    *v49 = v47;
    *(v49 + 8) = v60;
    v49 -= 8;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 priorityScore];
        v35 = v34;
        [v33 priorityScore];
        v37 = v36;

        if (v35 < v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 priorityScore];
        v19 = v18;
        [v17 priorityScore];
        v21 = v20;

        if (v19 >= v21)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v28 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v28;
    }

    v27 = a2;
    v48 = &v14[v11];
    if (v9 >= 8 && a2 > v5)
    {
      v46 = v5;
LABEL_31:
      __dst = v27;
      v29 = v27 - 1;
      --v4;
      v30 = v48;
      do
      {
        v31 = v14;
        v32 = *--v30;
        v33 = (v4 + 1);
        v34 = v29;
        v35 = *v29;
        v36 = v32;
        v37 = v35;
        v38 = COERCE_DOUBLE(dispatch thunk of Asset.priorityScore.getter());
        if (v39)
        {
          v40 = 300.0;
        }

        else
        {
          v40 = v38;
        }

        v41 = dispatch thunk of Asset.priorityScore.getter();
        v43 = v42;

        v44 = *&v41;
        if (v43)
        {
          v44 = 300.0;
        }

        if (v40 < v44)
        {
          if (v33 != __dst)
          {
            *v4 = *v34;
          }

          v14 = v31;
          if (v48 <= v31 || (v27 = v34, v34 <= v46))
          {
            v27 = v34;
            goto LABEL_47;
          }

          goto LABEL_31;
        }

        if (v33 != v48)
        {
          *v4 = *v30;
        }

        --v4;
        v48 = v30;
        v14 = v31;
        v29 = v34;
      }

      while (v30 > v31);
      v48 = v30;
      v27 = __dst;
    }
  }

  else
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v48 = &a4[v8];
    v14 = a4;
    if (v6 >= 8 && v12 < v4)
    {
      while (1)
      {
        v15 = *v14;
        v16 = *v12;
        v17 = v15;
        v18 = COERCE_DOUBLE(dispatch thunk of Asset.priorityScore.getter());
        if (v19)
        {
          v20 = 300.0;
        }

        else
        {
          v20 = v18;
        }

        v21 = dispatch thunk of Asset.priorityScore.getter();
        v23 = v22;

        v24 = *&v21;
        if (v23)
        {
          v24 = 300.0;
        }

        if (v20 >= v24)
        {
          break;
        }

        v25 = v12;
        v26 = v5 == v12++;
        if (!v26)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v5;
        if (v14 >= v48 || v12 >= v4)
        {
          goto LABEL_24;
        }
      }

      v25 = v14;
      v26 = v5 == v14++;
      if (v26)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v5 = *v25;
      goto LABEL_22;
    }

LABEL_24:
    v27 = v5;
  }

LABEL_47:
  if (v27 != v14 || v27 >= (v14 + ((v48 - v14 + (v48 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v27, v14, 8 * ((v48 - v14) / 8));
  }

  return 1;
}

unint64_t specialized static MOEventBundle.constructedReflectionAssets(resources:suggestionID:promptLanguages:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v106 = a3;
  v90 = a2;
  v89 = type metadata accessor for Logger();
  v88 = *(v89 - 8);
  v4 = __chkstk_darwin(v89);
  v6 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v78 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 1);
  v11 = __chkstk_darwin(v9);
  v105 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v78 - v14;
  __chkstk_darwin(v13);
  v84 = v78 - v16;
  v17 = type metadata accessor for Date();
  v18 = __chkstk_darwin(v17 - 8);
  v83 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v82 = v78 - v20;
  v21 = type metadata accessor for DateInterval();
  __chkstk_darwin(v21 - 8);
  v81 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = [objc_allocWithZone(UIColor) initWithRed:0.450980392 green:0.435294118 blue:0.674509804 alpha:1.0];
  v97 = [objc_allocWithZone(UIColor) initWithRed:0.866666667 green:0.352941176 blue:0.345098039 alpha:1.0];
  v98 = [objc_allocWithZone(UIColor) initWithRed:0.537254902 green:0.611764706 blue:0.968627451 alpha:1.0];
  v96 = [objc_allocWithZone(UIColor) initWithRed:0.854901961 green:0.533333333 blue:0.533333333 alpha:1.0];
  v99 = [objc_allocWithZone(UIColor) initWithRed:0.568627451 green:0.31372549 blue:0.447058824 alpha:1.0];
  v100 = [objc_allocWithZone(UIColor) initWithRed:0.129411765 green:0.141176471 blue:0.219607843 alpha:1.0];
  v101 = [objc_allocWithZone(UIColor) initWithRed:0.349019608 green:0.333333333 blue:0.57254902 alpha:1.0];
  v92 = [objc_allocWithZone(UIColor) initWithRed:0.764705882 green:0.250980392 blue:0.243137255 alpha:1.0];
  v93 = [objc_allocWithZone(UIColor) initWithRed:0.435294118 green:0.509803922 blue:0.866666667 alpha:1.0];
  v91 = [objc_allocWithZone(UIColor) initWithRed:0.752941176 green:0.431372549 blue:0.431372549 alpha:1.0];
  v94 = [objc_allocWithZone(UIColor) initWithRed:0.466666667 green:0.211764706 blue:0.345098039 alpha:1.0];
  v95 = [objc_allocWithZone(UIColor) initWithRed:0.231372549 green:0.243137255 blue:0.321568627 alpha:1.0];
  v109[0] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v86 = v15;
    v87 = v8;
    v15 = _swiftEmptyArrayStorage;
    v103 = v10;
    v104 = v9;
    if (!i)
    {
      break;
    }

    v85 = v6;
    v15 = 0;
    v6 = (a1 & 0xC000000000000001);
    v8 = (a1 & 0xFFFFFFFFFFFFFF8);
    v9 = &selRef_isLocationShiftRequiredForCoordinate_;
    while (1)
    {
      if (v6)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v24 = *(a1 + 8 * v15 + 32);
      }

      v25 = v24;
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ([v24 type] == 9)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v15;
      if (v10 == i)
      {
        v15 = v109[0];
        v10 = v103;
        v9 = v104;
        v6 = v85;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_15:
  v8 = v105;
  if ((v15 & 0x8000000000000000) == 0 && (v15 & 0x4000000000000000) == 0)
  {
    a1 = *(v15 + 16);
    if (a1)
    {
      v108 = _swiftEmptyArrayStorage;
      goto LABEL_19;
    }

    goto LABEL_70;
  }

  if (_CocoaArrayWrapper.endIndex.getter() <= 0)
  {
LABEL_70:

    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    (*(v10 + 16))(v8, v90, v9);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v109[0] = v72;
      *v71 = 136315138;
      v73 = UUID.uuidString.getter();
      v75 = v74;
      (*(v10 + 8))(v8, v9);
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v109);

      *(v71 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v69, v70, "[constructedReflectionAssets] suggestionID=%s, no Reflection in resources", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
    }

    else
    {

      (*(v10 + 8))(v8, v9);
    }

    (*(v88 + 8))(v6, v89);
    return 0;
  }

  v108 = _swiftEmptyArrayStorage;
  a1 = _CocoaArrayWrapper.endIndex.getter();
  if (a1)
  {
LABEL_19:
    v6 = 0;
    v105 = 0;
    v9 = (v15 & 0xC000000000000001);
    v85 = _swiftEmptyArrayStorage;
    v80 = xmmword_1002A4A70;
LABEL_20:
    v26 = v6;
    while (1)
    {
      if (v9)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v15 + 16))
        {
          goto LABEL_61;
        }

        v28 = *(v15 + 8 * v26 + 32);
      }

      v29 = v28;
      v6 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_60;
      }

      v30 = [v28 data];
      if (!v30)
      {
        goto LABEL_22;
      }

      v31 = v30;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v109[0] = 0;
      v36 = [v34 JSONObjectWithData:isa options:0 error:v109];

      if (!v36)
      {
        v44 = v109[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        outlined consume of Data._Representation(v10, v33);

        v27 = 0;
        v8 = 0;
        v105 = 0;
        if (v106)
        {
          goto LABEL_52;
        }

        goto LABEL_23;
      }

      v37 = v109[0];
      _bridgeAnyObjectToAny(_:)();
      outlined consume of Data._Representation(v10, v33);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      v38 = v107;
      if (!*(v107 + 16) || (v39 = specialized __RawDictionaryStorage.find<A>(_:)(0x6565726772657665, 0xEE00657079745F6ELL), (v40 & 1) == 0))
      {

LABEL_22:
        v27 = 0;
        v8 = 0;
        if (v106)
        {
          goto LABEL_52;
        }

        goto LABEL_23;
      }

      v41 = *(*(v38 + 56) + 8 * v39);
      swift_unknownObjectRetain();

      v109[0] = v41;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      if (v107 > 3)
      {
        if (v107 == 4)
        {
          v8 = v98;
          v48 = v98;
          v43 = &v112;
        }

        else
        {
          if (v107 != 6)
          {
LABEL_44:
            v8 = v102;
            v46 = v102;
            v27 = v101;
            goto LABEL_49;
          }

          v8 = v99;
          v45 = v99;
          v43 = &v113;
        }
      }

      else
      {
        switch(v107)
        {
          case 1:
            v8 = v100;
            v47 = v100;
            v43 = &v114;
            break;
          case 2:
            v8 = v97;
            v49 = v97;
            v43 = &v111;
            break;
          case 3:
            v8 = v96;
            v42 = v96;
            v43 = &v110;
            break;
          default:
            goto LABEL_44;
        }
      }

      v27 = *(v43 - 32);
LABEL_49:
      v50 = v27;
      if (v106)
      {
LABEL_52:
        if (one-time initialization token for defaultMaximumScreenViewport != -1)
        {
          swift_once();
        }

        v78[2] = static MOBundleProcessingSession.defaultMaximumScreenViewport;
        v78[1] = static AssetViewModel.Style.allCases.getter();
        static Date.now.getter();
        static Date.now.getter();
        v10 = v81;
        DateInterval.init(start:end:)();
        objc_allocWithZone(type metadata accessor for MutableReflectionViewModel());
        v85 = v27;

        v79 = v8;
        v51 = MutableReflectionViewModel.init(intendedViewport:supportedStyles:prompts:promptIndex:dateInterval:lightBackgroundColor:darkBackgroundColor:)();
        UUID.init()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v52 = swift_allocObject();
        *(v52 + 16) = v80;
        *(v52 + 32) = v51;
        v53 = v51;
        [v29 priorityScore];
        v54 = objc_allocWithZone(type metadata accessor for Asset());
        v8 = Asset.init(universalUUID:representations:priorityScore:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v85 = v108;
        if (v6 != a1)
        {
          goto LABEL_20;
        }

        goto LABEL_66;
      }

LABEL_23:

      ++v26;
      if (v6 == a1)
      {
        goto LABEL_66;
      }
    }
  }

  v85 = _swiftEmptyArrayStorage;
LABEL_66:

  type metadata accessor for CommonLogger();
  v55 = v87;
  static CommonLogger.processing.getter();
  v57 = v103;
  v56 = v104;
  v58 = v86;
  (*(v103 + 16))(v86, v90, v104);
  v59 = v85;
  swift_bridgeObjectRetain_n();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v109[0] = v63;
    *v62 = 136315394;
    v64 = UUID.uuidString.getter();
    v66 = v65;
    (*(v57 + 8))(v58, v56);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v109);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2048;
    if (v59 >> 62)
    {
      v68 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v68 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v62 + 14) = v68;

    _os_log_impl(&_mh_execute_header, v60, v61, "[constructedReflectionAssets] suggestionID=%s, constructed reflection assets count=%ld", v62, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v63);

    (*(v88 + 8))(v87, v89);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v57 + 8))(v58, v56);
    (*(v88 + 8))(v55, v89);
  }

  return v59;
}

uint64_t specialized static MOEventBundle.mapItemsByTitle(resources:)(unint64_t a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI7MapItemCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  if (a1 >> 62)
  {
LABEL_28:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

    return v2;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return v2;
  }

LABEL_3:
  v4 = 0;
  v33 = a1;
  v34 = a1 & 0xC000000000000001;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = v3;
  while (1)
  {
    if (v34)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v31 + 16))
      {
        goto LABEL_26;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v8 = [v5 data];
    if (v8)
    {
      break;
    }

LABEL_5:
    ++v4;
    if (v7 == v3)
    {
      return v2;
    }
  }

  v9 = v8;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  type metadata accessor for MapItem();
  outlined copy of Data._Representation(v10, v12);
  v35 = v12;
  v13 = MapItem.__allocating_init(handle:)();
  v36 = v6;
  v14 = [v6 name];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a1 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17);
  v20 = v2[2];
  v21 = (v19 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    goto LABEL_25;
  }

  v23 = v19;
  if (v2[3] >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v23)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    v2[(a1 >> 6) + 8] |= 1 << a1;
    v26 = (v2[6] + 16 * a1);
    *v26 = v15;
    v26[1] = v17;
    *(v2[7] + 8 * a1) = v13;

    outlined consume of Data._Representation(v10, v35);
    v27 = v2[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_27;
    }

    v2[2] = v29;
    goto LABEL_23;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17);
  if ((v23 & 1) == (v25 & 1))
  {
    a1 = v24;
    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_19:

    *(v2[7] + 8 * a1) = v13;

    outlined consume of Data._Representation(v10, v35);
LABEL_23:
    v3 = v32;
    a1 = v33;
    v7 = v4 + 1;
    goto LABEL_5;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized static MOEventBundle.constructedLocationAsset(resources:suggestionID:)(unint64_t a1, uint64_t a2)
{
  v116 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v99 - v9;
  __chkstk_darwin(v8);
  v112 = v99 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v118 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v110 = v99 - v17;
  __chkstk_darwin(v16);
  v19 = (v99 - v18);
  v20 = type metadata accessor for Date();
  v21 = __chkstk_darwin(v20 - 8);
  v115 = v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v114 = v99 - v23;
  v24 = type metadata accessor for DateInterval();
  __chkstk_darwin(v24 - 8);
  v113 = v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static DefaultsManager.Processing.shouldSkipMaps.getter())
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "[constructedLocationAsset] skipping because of manual defaults override", v28, 2u);
    }

    (v4[1])(v7, v3);
    return 0;
  }

  v119[0] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v108 = v4;
    v109 = v3;
    v106 = v13;
    v107 = v12;
    v104 = v19;
    if (!i)
    {
      break;
    }

    v117 = v10;
    v10 = 0;
    v4 = (a1 & 0xC000000000000001);
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = &selRef_isLocationShiftRequiredForCoordinate_;
    do
    {
      if (v4)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v30 = *(a1 + 8 * v10 + 32);
      }

      v31 = v30;
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if ([v30 type] == 12)
      {
        v19 = v119;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v10;
    }

    while (v3 != i);
    v32 = 0;
    v111 = v119[0];
    v119[0] = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v4)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v32 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v33 = *(a1 + 8 * v32 + 32);
      }

      v34 = v33;
      v10 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if ([v33 type] == 6)
      {
        v19 = v119;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v3 = *(v119[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v32;
      if (v10 == i)
      {
        v19 = v119[0];
        v4 = v108;
        v3 = v109;
        v13 = v106;
        v12 = v107;
        v35 = v111;
        v10 = v117;
        goto LABEL_30;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    ;
  }

  v35 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
LABEL_30:
  v36 = specialized static MOEventBundle.mapItemsByTitle(resources:)(v19);

  if ((v35 & 0x8000000000000000) == 0 && (v35 & 0x4000000000000000) == 0)
  {
    a1 = *(v35 + 16);
    if (a1)
    {
      v119[0] = _swiftEmptyArrayStorage;
      goto LABEL_34;
    }

LABEL_75:

    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v86 = v118;
    (*(v13 + 16))(v118, v116, v12);
    v87 = v10;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v117 = v87;
      v91 = v86;
      v92 = v90;
      v93 = swift_slowAlloc();
      v119[0] = v93;
      *v92 = 136315138;
      v116 = UUID.uuidString.getter();
      v95 = v94;
      (*(v13 + 8))(v91, v12);
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v95, v119);

      *(v92 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v88, v89, "[constructedLocationAsset] suggestionID=%s, no locations in resources", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v93);

      (v4[1])(v117, v3);
    }

    else
    {

      (*(v13 + 8))(v86, v12);
      (v4[1])(v87, v3);
    }

    return 0;
  }

  if (_CocoaArrayWrapper.endIndex.getter() <= 0)
  {
    goto LABEL_75;
  }

  v119[0] = _swiftEmptyArrayStorage;
  a1 = _CocoaArrayWrapper.endIndex.getter();
LABEL_34:
  v13 = 0;
  v118 = (v35 & 0xC000000000000001);
  v117 = _swiftEmptyArrayStorage;
  v4 = &selRef_isLocationShiftRequiredForCoordinate_;
  if (a1)
  {
    while (1)
    {
      if (v118)
      {
        v10 = v35;
        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v35 + 16))
        {
          goto LABEL_71;
        }

        v10 = v35;
        v59 = *(v35 + 8 * v13 + 32);
      }

      v60 = v59;
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_70;
      }

      v61 = [v59 name];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      if (*(v36 + 16))
      {
        v65 = specialized __RawDictionaryStorage.find<A>(_:)(v62, v64);
        v67 = v66;

        if (v67)
        {
          v12 = *(*(v36 + 56) + 8 * v65);

          goto LABEL_46;
        }
      }

      else
      {
      }

      v12 = 0;
LABEL_46:
      v19 = type metadata accessor for MapLocation();
      v58 = MapLocation.init(resource:mapItem:)(v60, v12);
      ++v13;
      v35 = v10;
      if (v58)
      {
        v12 = v58;
        v19 = v119;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v119[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v117 = v119[0];
        v13 = v3;
        if (a1 == v3)
        {
          break;
        }
      }

      else if (a1 == v13)
      {
        break;
      }
    }
  }

  v111 = v35;

  v103 = type metadata accessor for MutableMapViewModel();
  if (one-time initialization token for defaultMaximumScreenViewport != -1)
  {
    swift_once();
  }

  v105 = static MOBundleProcessingSession.defaultMaximumScreenViewport;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI14AssetViewModelC5StyleOGMd);
  v37 = type metadata accessor for AssetViewModel.Style();
  v38 = *(v37 - 8);
  v39 = *(v38 + 72);
  v101 = *(v38 + 80);
  v40 = (v101 + 32) & ~v101;
  v100 = v40;
  v41 = swift_allocObject();
  v99[2] = v41;
  *(v41 + 16) = xmmword_1002A49F0;
  v42 = v41 + v40;
  v43 = *(v38 + 104);
  v43(v41 + v40, enum case for AssetViewModel.Style.extraSmallThumbnail(_:), v37);
  v43(v42 + v39, enum case for AssetViewModel.Style.smallThumbnail(_:), v37);
  v43(v42 + 2 * v39, enum case for AssetViewModel.Style.mediumThumbnail(_:), v37);
  v43(v42 + 3 * v39, enum case for AssetViewModel.Style.largeThumbnail(_:), v37);
  v43(v42 + 4 * v39, enum case for AssetViewModel.Style.extraLargeThumbnail(_:), v37);
  v43(v42 + 5 * v39, enum case for AssetViewModel.Style.extraLargeCondensedThumbnail(_:), v37);
  v43(v42 + 6 * v39, enum case for AssetViewModel.Style.fullResolution(_:), v37);
  v43(v42 + 7 * v39, enum case for AssetViewModel.Style.interstitialList(_:), v37);
  v44 = v105;

  static Date.now.getter();
  static Date.now.getter();
  DateInterval.init(start:end:)();
  v99[1] = v44;
  v105 = MutableMapViewModel.__allocating_init(viewport:styles:locations:dateInterval:)();
  v45 = v100;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1002A48B0;
  v43(v46 + v45, enum case for AssetViewModel.Style.interstitialCarousel(_:), v37);
  static Date.now.getter();
  static Date.now.getter();
  DateInterval.init(start:end:)();
  v47 = v105;
  v48 = MutableMapViewModel.__allocating_init(viewport:styles:locations:dateInterval:)();
  v49 = v48;
  if (!v47 || !v48)
  {

    type metadata accessor for CommonLogger();
    v68 = v112;
    static CommonLogger.processing.getter();
    v70 = v106;
    v69 = v107;
    v71 = v110;
    (*(v106 + 16))(v110, v116, v107);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v71;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v119[0] = v76;
      *v75 = 136315138;
      v77 = UUID.uuidString.getter();
      v79 = v78;
      (*(v70 + 8))(v74, v69);
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v119);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v72, v73, "[constructedLocationAsset] suggestionID=%s, failed to construct view models", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);

      (v108[1])(v112, v109);
    }

    else
    {

      (*(v70 + 8))(v71, v69);
      (v108[1])(v68, v109);
    }

    return 0;
  }

  v50 = v47;
  v51 = v49;
  UUID.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_1002A6160;
  *(result + 32) = v50;
  *(result + 40) = v51;
  if (!a1)
  {
    v81 = v50;
    v82 = v51;

    goto LABEL_65;
  }

  if (v118)
  {
    v97 = v50;
    v98 = v51;
    v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_43;
  }

  if (*(v111 + 16))
  {
    v53 = *(v111 + 32);
    v54 = v50;
    v55 = v51;
    v56 = v53;
LABEL_43:
    v57 = v56;

    [v57 priorityScore];

LABEL_65:
    v83 = objc_allocWithZone(type metadata accessor for Asset());
    v84 = Asset.init(universalUUID:representations:priorityScore:)();
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1002A4A70;
    *(v85 + 32) = v84;

    return v85;
  }

  __break(1u);
  return result;
}

uint64_t specialized static MOEventBundle.constructedWorkoutAssets(resources:suggestionID:)(unint64_t a1, unint64_t a2)
{
  v4 = 0;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v133 = (&v118 - v11);
  v12 = __chkstk_darwin(v10);
  v14 = (&v118 - v13);
  __chkstk_darwin(v12);
  v16 = &v118 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v18 = __chkstk_darwin(v17 - 8);
  v130 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  *&v138 = &v118 - v20;
  v126 = type metadata accessor for UUID();
  v21 = *(v126 - 8);
  v22 = __chkstk_darwin(v126);
  v134 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v124 = &v118 - v25;
  v26 = __chkstk_darwin(v24);
  v125 = &v118 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v118 - v29;
  __chkstk_darwin(v28);
  v137 = &v118 - v31;
  if (static DefaultsManager.Processing.shouldSkipWorkouts.getter())
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "[constructedWorkoutAssets] skipping because of manual defaults override", v34, 2u);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  v140 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_78;
  }

  v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v120 = v16;
  v129 = v21;
  v122 = v6;
  v121 = v5;
  v118 = v14;
  v123 = a2;
  v119 = v30;
  v128 = v4;
  if (!v36)
  {
    v38 = _swiftEmptyArrayStorage;
    a1 = v134;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_79;
    }

LABEL_22:
    if ((v38 & 0x4000000000000000) != 0)
    {
      goto LABEL_79;
    }

    v135 = *(v38 + 16);
    v136 = (v38 + 16);
    if (v135)
    {
      goto LABEL_24;
    }

LABEL_82:

    type metadata accessor for CommonLogger();
    v105 = v133;
    static CommonLogger.processing.getter();
    v106 = v126;
    (v21[2])(a1, a2, v126);
    v107 = Logger.logObject.getter();
    v108 = v21;
    v109 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v107, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v140 = v111;
      *v110 = 136315138;
      v112 = UUID.uuidString.getter();
      v113 = a1;
      v115 = v114;
      (v108[1])(v113, v106);
      v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v115, &v140);

      *(v110 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v107, v109, "[constructedWorkoutAssets] suggestionID=%s, no workouts in resources", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v111);

      (*(v6 + 8))(v133, v5);
    }

    else
    {

      (v108[1])(a1, v106);
      (*(v6 + 8))(v105, v5);
    }

    return 0;
  }

  v16 = 0;
  v21 = (a1 & 0xC000000000000001);
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = &selRef_isLocationShiftRequiredForCoordinate_;
  do
  {
    if (v21)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      v37 = *(a1 + 8 * v16 + 32);
    }

    v30 = v37;
    v5 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      v36 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_8;
    }

    if ([v37 type] == 10)
    {
      v14 = &v140;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a2 = *(v140 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v16;
  }

  while (v5 != v36);
  v38 = v140;
  v6 = v122;
  v5 = v121;
  v21 = v129;
  a2 = v123;
  a1 = v134;
  if ((v140 & 0x8000000000000000) == 0)
  {
    goto LABEL_22;
  }

LABEL_79:
  if (_CocoaArrayWrapper.endIndex.getter() <= 0)
  {
    goto LABEL_82;
  }

  v135 = _CocoaArrayWrapper.endIndex.getter();
  v136 = (v38 + 16);
  if (v135)
  {
LABEL_24:
    v4 = 0;
    v134 = (v38 & 0xC000000000000001);
    v127 = @"MOWorkoutMetaDataKeyWorkoutID";
    v39 = v21;
    v131 = (v21 + 7);
    v132 = (v21 + 6);
    v21 = _swiftEmptyArrayStorage;
    v133 = v39 + 4;
    v5 = v126;
    v6 = v130;
    v14 = v138;
    while (1)
    {
      if (v134)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v4 >= *v136)
        {
          goto LABEL_77;
        }

        v40 = *(v38 + 8 * v4 + 32);
        v16 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_76;
        }
      }

      a1 = v40;
      v41 = [a1 data];
      if (!v41)
      {
        goto LABEL_41;
      }

      v42 = v21;
      v43 = v38;
      v44 = v41;
      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v140 = 0;
      a2 = [v47 JSONObjectWithData:isa options:0 error:&v140];

      if (!a2)
      {
        break;
      }

      v49 = v140;
      _bridgeAnyObjectToAny(_:)();
      outlined consume of Data._Representation(v30, v46);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_40;
      }

      v50 = v139;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v50 + 16))
      {

LABEL_39:

        goto LABEL_40;
      }

      v30 = v52;
      a2 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
      v54 = v53;

      if ((v54 & 1) == 0)
      {
        goto LABEL_39;
      }

      a2 = *(*(v50 + 56) + 8 * a2);
      swift_unknownObjectRetain();

      v139 = a2;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_40;
      }

      a2 = v130;
      UUID.init(uuidString:)();

      v38 = v43;
      v21 = v42;
      v6 = a2;
      v14 = v138;
LABEL_42:
      outlined init with take of UUID?(v6, v14);

      if ((*v132)(v14, 1, v5) == 1)
      {
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s10Foundation4UUIDVSgMd);
      }

      else
      {
        a2 = *v133;
        (*v133)(v137, v14, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
        }

        v30 = v21[2];
        v57 = v21[3];
        if (v30 >= v57 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v30 + 1, 1, v21);
        }

        v21[2] = v30 + 1;
        (a2)(v21 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + v129[9] * v30, v137, v5);
        v14 = v138;
      }

      ++v4;
      if (v16 == v135)
      {
        LODWORD(v58) = 0;
        goto LABEL_52;
      }
    }

    v55 = v140;
    v56 = _convertNSErrorToError(_:)();

    a2 = v56;
    swift_willThrow();
    outlined consume of Data._Representation(v30, v46);

    v128 = 0;
LABEL_40:
    v38 = v43;
    v21 = v42;
    v6 = v130;
    v14 = v138;
LABEL_41:
    (*v131)(v6, 1, 1, v5);
    goto LABEL_42;
  }

  v21 = _swiftEmptyArrayStorage;
  LODWORD(v58) = 1;
  v5 = v126;
LABEL_52:
  v59 = v21[2];
  v60 = v120;
  v61 = v21;
  v62 = v129;
  if (!v59)
  {

    type metadata accessor for CommonLogger();
    v81 = v118;
    static CommonLogger.processing.getter();
    v82 = v124;
    (v62[2])(v124, v123, v5);
    v83 = Logger.logObject.getter();
    v84 = v62;
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v140 = v87;
      *v86 = 136315138;
      v88 = UUID.uuidString.getter();
      v90 = v89;
      (v84[1])(v82, v5);
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v140);

      *(v86 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v83, v85, "[constructedWorkoutAssets] suggestionID=%s, no decoded workoutUUIDs", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
    }

    else
    {

      (v84[1])(v82, v5);
    }

    (*(v122 + 8))(v81, v121);
    return 0;
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v63 = v119;
  (v62[2])(v119, v123, v5);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();

  v66 = os_log_type_enabled(v64, v65);
  *&v138 = v61;
  if (!v66)
  {

    (v62[1])(v63, v5);
    (*(v122 + 8))(v60, v121);
    goto LABEL_63;
  }

  v67 = swift_slowAlloc();
  LODWORD(v137) = v58;
  v68 = v62;
  v69 = v67;
  v135 = swift_slowAlloc();
  v140 = v135;
  *v69 = 136315650;
  v70 = UUID.uuidString.getter();
  v71 = v5;
  v73 = v72;
  (v68[1])(v63, v71);
  v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v73, &v140);

  *(v69 + 4) = v74;
  *(v69 + 12) = 2080;
  v75 = Array.description.getter();
  v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v140);

  *(v69 + 14) = v58;
  LOBYTE(v58) = v137;
  *(v69 + 22) = 2048;
  v77 = -1.0;
  if (v58)
  {
    goto LABEL_59;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    goto LABEL_87;
  }

  if (!*v136)
  {
    __break(1u);
  }

  for (i = *(v38 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v79 = i;
    [i priorityScore];
    v77 = v80;

LABEL_59:
    *(v69 + 24) = v77;
    _os_log_impl(&_mh_execute_header, v64, v65, "[constructedWorkoutAssets] suggestionID=%s, workoutUUIDs=%s, priorityScore=%f", v69, 0x20u);
    swift_arrayDestroy();

    (*(v122 + 8))(v120, v121);
LABEL_63:
    v92 = v138;
    if (one-time initialization token for defaultMaximumScreenViewport != -1)
    {
      swift_once();
    }

    v93 = static MOBundleProcessingSession.defaultMaximumScreenViewport;
    static AssetViewModel.Style.allCases.getter();
    v69 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v92);

    v94 = objc_allocWithZone(type metadata accessor for MutableWorkoutViewModel());
    v95 = MutableWorkoutViewModel.init(intendedViewport:supportedStyles:workoutUUIDs:)();
    UUID.init()();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_1002A4A70;
    *(v96 + 32) = v95;
    v138 = xmmword_1002A4A70;
    if (v58)
    {
      v97 = v95;

      goto LABEL_71;
    }

    if ((v38 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*v136)
    {
      v98 = *(v38 + 32);
      v99 = v95;
      v100 = v98;
      goto LABEL_70;
    }

    __break(1u);
LABEL_87:
    ;
  }

  v117 = v95;
  v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_70:
  v101 = v100;

  [v101 priorityScore];

LABEL_71:
  v102 = objc_allocWithZone(type metadata accessor for Asset());
  v103 = Asset.init(universalUUID:representations:priorityScore:)();
  v104 = swift_allocObject();
  *(v104 + 16) = v138;
  *(v104 + 32) = v103;

  return v104;
}

unint64_t specialized static MOEventBundle.constructedMotionActivityAssets(resources:suggestionID:)(unint64_t a1, uint64_t a2)
{
  v137 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v145 = v112 - v9;
  __chkstk_darwin(v8);
  v11 = v112 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v142 = v112 - v18;
  __chkstk_darwin(v17);
  v126 = v112 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  __chkstk_darwin(v20 - 8);
  v128 = v112 - v21;
  v129 = type metadata accessor for DateInterval();
  v22 = *(v129 - 8);
  v23 = __chkstk_darwin(v129);
  v125 = v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v127 = v112 - v25;
  v132 = type metadata accessor for CharacterSet();
  v26 = *(v132 - 8);
  v27 = __chkstk_darwin(v132);
  v131 = v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v130 = v112 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI14MotionActivityVSgMd);
  __chkstk_darwin(v30 - 8);
  v136 = v112 - v31;
  v139 = type metadata accessor for MotionActivity();
  v135 = *(v139 - 8);
  v32 = __chkstk_darwin(v139);
  v124 = v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v143 = v112 - v34;
  if (static DefaultsManager.Processing.shouldSkipMotionActivity.getter())
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "[constructedMotionActivityAssets] skipping because of manual defaults override", v37, 2u);
    }

    (*(v4 + 8))(v7, v3);
    return 0;
  }

  v121 = v11;
  v38 = v16;
  v39 = v12;
  v40 = v4;
  v149[0] = _swiftEmptyArrayStorage;
  v41 = a1;
  if (a1 >> 62)
  {
LABEL_70:
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v138 = v13;
  v123 = v3;
  v133 = v40;
  v134 = v39;
  if (!v42)
  {
    v45 = _swiftEmptyArrayStorage;
    v46 = v40;
    v47 = v39;
    v48 = v38;
    v49 = v143;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

LABEL_21:
    if ((v45 & 0x4000000000000000) != 0)
    {
      goto LABEL_71;
    }

    v146 = *(v45 + 16);
    if (v146)
    {
      v148 = _swiftEmptyArrayStorage;
      goto LABEL_24;
    }

LABEL_73:

    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    (*(v13 + 16))(v48, v137, v47);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = v48;
      v104 = v13;
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v149[0] = v106;
      *v105 = 136315138;
      v107 = UUID.uuidString.getter();
      v109 = v108;
      (*(v104 + 8))(v103, v47);
      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, v149);

      *(v105 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v101, v102, "[constructedMotionActivityAssets] suggestionID=%s, no motion activity in resources", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
    }

    else
    {

      (*(v13 + 8))(v48, v47);
    }

    (*(v46 + 8))(v145, v123);
    return 0;
  }

  v141 = v26;
  v144 = v22;
  v146 = v38;
  v13 = 0;
  v38 = v41;
  v40 = v41 & 0xC000000000000001;
  v3 = v41 & 0xFFFFFFFFFFFFFF8;
  v26 = &selRef_isLocationShiftRequiredForCoordinate_;
  do
  {
    if (v40)
    {
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v43 = *&v38[8 * v13 + 32];
    }

    v39 = v43;
    v44 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if ([v43 type] == 13)
    {
      v22 = v149;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v38 = v41;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v13;
  }

  while (v44 != v42);
  v45 = v149[0];
  v46 = v133;
  v47 = v134;
  v13 = v138;
  v48 = v146;
  v22 = v144;
  v26 = v141;
  v49 = v143;
  if ((v149[0] & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_71:
  if (_CocoaArrayWrapper.endIndex.getter() <= 0)
  {
    goto LABEL_73;
  }

  v148 = _swiftEmptyArrayStorage;
  v146 = _CocoaArrayWrapper.endIndex.getter();
LABEL_24:
  v41 = v45;
  if (v146)
  {
    v40 = 0;
    v122 = 0;
    v144 = (v135 + 6);
    v145 = (v45 & 0xC000000000000001);
    v140 = (v135 + 4);
    v120 = @"MOActivityMetaDataKeyStepCount";
    v141 = (v135 + 1);
    v119 = (v26 + 1);
    v118 = (v22 + 6);
    v117 = (v22 + 4);
    v116 = (v135 + 2);
    v115 = (v22 + 2);
    v135 = _swiftEmptyArrayStorage;
    v114 = (v22 + 1);
    v113 = xmmword_1002A4A70;
    v3 = v142;
    v50 = v136;
    v38 = v139;
    while (2)
    {
      v39 = v40;
LABEL_29:
      if (v145)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v39 >= *(v41 + 16))
        {
          goto LABEL_69;
        }

        v51 = *(v41 + 8 * v39 + 32);
      }

      v26 = v51;
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_68;
      }

      v22 = v51;
      MOResource.motionActivityType.getter(v50);
      if ((*v144)(v50, 1, v38) == 1)
      {

        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v50, &_s9MomentsUI14MotionActivityVSgMd);
        goto LABEL_28;
      }

      (*v140)(v49, v50, v38);
      v52 = [v26 data];
      if (v52)
      {
        v53 = v52;
        v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v55;

        v56 = objc_opt_self();
        isa = Data._bridgeToObjectiveC()().super.isa;
        v149[0] = 0;
        v58 = [v56 JSONObjectWithData:isa options:0 error:v149];

        if (v58)
        {
          v59 = v149[0];
          _bridgeAnyObjectToAny(_:)();
          outlined consume of Data._Representation(v54, v22);
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
          if (swift_dynamicCast())
          {
            v22 = v147;
            v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v3 = v142;
            if (v22[2])
            {
              v62 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
              v64 = v63;

              if (v64)
              {
                v65 = *(v22[7] + v62);
                swift_unknownObjectRetain();

                v147 = v65;
                if (swift_dynamicCast())
                {
                  v112[1] = v149[1];
                  v66 = v130;
                  static CharacterSet.decimalDigits.getter();
                  v67 = v131;
                  CharacterSet.inverted.getter();
                  v68 = *v119;
                  v69 = v132;
                  (*v119)(v66, v132);
                  lazy protocol witness table accessor for type String and conformance String();
                  v22 = StringProtocol.trimmingCharacters(in:)();
                  v71 = v70;
                  v68(v67, v69);

                  _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v22, v71);
                  if (v72)
                  {
                    v49 = v143;
                    v38 = v139;
                    (*v141)(v143, v139);

                    v13 = v138;
                    v50 = v136;
                    v3 = v142;
                    goto LABEL_28;
                  }

                  v74 = v128;
                  MOResource.motionActivityDateInterval.getter(v128);
                  v75 = (*v118)(v74, 1, v129);
                  v50 = v136;
                  v3 = v142;
                  v49 = v143;
                  if (v75 != 1)
                  {
                    (*v117)(v127, v74, v129);
                    if (one-time initialization token for defaultMaximumScreenViewport != -1)
                    {
                      swift_once();
                    }

                    v77 = static MOBundleProcessingSession.defaultMaximumScreenViewport;
                    static AssetViewModel.Style.allCases.getter();
                    (*v116)(v124, v49, v139);
                    (*v115)(v125, v127, v129);
                    v78 = objc_allocWithZone(type metadata accessor for MutableMotionActivityViewModel());
                    v79 = MutableMotionActivityViewModel.init(intendedViewport:supportedStyles:motionActivity:steps:dateInterval:)();
                    UUID.init()();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
                    v80 = swift_allocObject();
                    *(v80 + 16) = v113;
                    *(v80 + 32) = v79;
                    v81 = v79;
                    [v26 priorityScore];
                    v82 = objc_allocWithZone(type metadata accessor for Asset());
                    v49 = v143;
                    Asset.init(universalUUID:representations:priorityScore:)();

                    v38 = v139;
                    (*v114)(v127, v129);
                    (*v141)(v49, v38);
                    v22 = &v148;
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      v38 = v139;
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    v135 = v148;
                    v13 = v138;
                    if (v40 != v146)
                    {
                      continue;
                    }

                    goto LABEL_61;
                  }

                  v22 = v139;
                  (*v141)(v143, v139);

                  v76 = v74;
                  v38 = v22;
                  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v76, &_s10Foundation12DateIntervalVSgMd);
                }

                else
                {
                  v49 = v143;
                  v38 = v139;
                  (*v141)(v143, v139);
                }

LABEL_49:
                v13 = v138;
LABEL_28:
                ++v39;
                if (v40 == v146)
                {
                  goto LABEL_61;
                }

                goto LABEL_29;
              }
            }

            else
            {
            }

            v49 = v143;
            v38 = v139;
            (*v141)(v143, v139);
            goto LABEL_49;
          }
        }

        else
        {
          v73 = v149[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          outlined consume of Data._Representation(v54, v22);

          v122 = 0;
        }

        v13 = v138;
        v38 = v139;
        v3 = v142;
        v49 = v143;
      }

      else
      {
      }

      break;
    }

    (*v141)(v49, v38);
    goto LABEL_28;
  }

  v135 = _swiftEmptyArrayStorage;
  v3 = v142;
LABEL_61:

  type metadata accessor for CommonLogger();
  v83 = v121;
  static CommonLogger.processing.getter();
  v84 = v134;
  (*(v13 + 16))(v3, v137, v134);
  v85 = v135;
  swift_bridgeObjectRetain_n();
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = v13;
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v149[0] = v90;
    *v89 = 136315394;
    v91 = UUID.uuidString.getter();
    v92 = v3;
    v94 = v93;
    (*(v88 + 8))(v92, v84);
    v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v94, v149);

    *(v89 + 4) = v95;
    *(v89 + 12) = 2048;
    v96 = v85 >> 62;
    v97 = v85;
    v98 = v123;
    v99 = v133;
    if (v96)
    {
      v100 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v100 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v89 + 14) = v100;

    _os_log_impl(&_mh_execute_header, v86, v87, "[constructedWorkoutAssets] suggestionID=%s, constructed motion activity assets count=%ld", v89, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v90);

    (*(v99 + 8))(v83, v98);
    return v97;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v13 + 8))(v3, v84);
    (*(v133 + 8))(v83, v123);
  }

  return v85;
}

unint64_t specialized static MOEventBundle.constructedFirstPartyMediaAssets(resources:suggestionID:)(unint64_t a1, uint64_t a2)
{
  v64 = a2;
  v3 = type metadata accessor for UUID();
  v65 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v56 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v56 - v13;
  __chkstk_darwin(v12);
  v63 = &v56 - v15;
  if ((static DefaultsManager.Processing.shouldSkipFirstPartyMedia.getter() & 1) == 0)
  {
    v59 = 0;
    v70 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v60 = v3;
      v67 = _swiftEmptyArrayStorage;
      if (i)
      {
        v57 = v7;
        v58 = v14;
        v56 = v8;
        v14 = 0;
        v7 = a1 & 0xC000000000000001;
        v3 = a1 & 0xFFFFFFFFFFFFFF8;
        v66 = a1 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v7)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v14 >= *(v3 + 16))
            {
              goto LABEL_38;
            }

            v21 = *(a1 + 8 * v14 + 32);
          }

          v22 = v21;
          v23 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if ([v21 type] == 3 && (objc_msgSend(v22, "mediaIsFirstParty") & 1) != 0)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v8 = *(v70 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v3 = v66;
          }

          else
          {
          }

          ++v14;
        }

        while (v23 != i);
        a1 = v70;
        v8 = v56;
        v7 = v57;
        v3 = v60;
        v14 = v58;
        if ((v70 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        a1 = _swiftEmptyArrayStorage;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
        {
LABEL_23:
          if ((a1 & 0x4000000000000000) == 0)
          {
            v24 = *(a1 + 16);
            if (!v24)
            {
              goto LABEL_48;
            }

            v70 = _swiftEmptyArrayStorage;
            goto LABEL_26;
          }
        }
      }

      if (_CocoaArrayWrapper.endIndex.getter() <= 0)
      {
LABEL_48:

        type metadata accessor for CommonLogger();
        static CommonLogger.processing.getter();
        v43 = v65;
        v44 = v61;
        (*(v65 + 16))(v61, v64, v3);
        v45 = v14;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v58 = v45;
          v49 = v44;
          v50 = v48;
          v51 = swift_slowAlloc();
          v70 = v51;
          *v50 = 136315138;
          v67 = UUID.uuidString.getter();
          v53 = v52;
          (*(v43 + 8))(v49, v3);
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v53, &v70);

          *(v50 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v46, v47, "[constructedFirstPartyMediaAssets] suggestionID=%s, no 1P media in resources", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v51);

          (*(v8 + 8))(v58, v7);
        }

        else
        {

          (*(v43 + 8))(v44, v3);
          (*(v8 + 8))(v45, v7);
        }

        return 0;
      }

      v70 = _swiftEmptyArrayStorage;
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (!v24)
      {
LABEL_44:

        type metadata accessor for CommonLogger();
        v28 = v63;
        static CommonLogger.processing.getter();
        v29 = v65;
        v30 = v62;
        v31 = v60;
        (*(v65 + 16))(v62, v64, v60);
        v19 = v67;
        swift_bridgeObjectRetain_n();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = v29;
          v36 = v30;
          v66 = swift_slowAlloc();
          v70 = v66;
          *v34 = 136315394;
          v37 = UUID.uuidString.getter();
          v39 = v38;
          (*(v35 + 8))(v36, v31);
          v19 = v67;
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v70);

          *(v34 + 4) = v40;
          *(v34 + 12) = 2048;
          if (v19 >> 62)
          {
            v41 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v41 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v42 = v63;

          *(v34 + 14) = v41;

          _os_log_impl(&_mh_execute_header, v32, v33, "[constructedFirstPartyMediaAssets] suggestionID=%s, constructed 1P media assets count=%ld", v34, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v66);

          (*(v8 + 8))(v42, v7);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          (*(v29 + 8))(v30, v31);
          (*(v8 + 8))(v28, v7);
        }

        return v19;
      }

LABEL_26:
      v3 = 0;
      v67 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(a1 + 16))
          {
            goto LABEL_40;
          }

          v25 = *(a1 + 8 * v3 + 32);
        }

        v26 = v25;
        v27 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v69 = v25;
        closure #2 in static MOEventBundle.constructedFirstPartyMediaAssets(resources:suggestionID:)(&v69, &v68);

        v14 = v68;
        if (v68)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v67 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v67 = v70;
        }

        ++v3;
        if (v27 == v24)
        {
          goto LABEL_44;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "[constructedFirstPartyMediaAssets] skipping because of manual defaults override", v18, 2u);
  }

  (*(v8 + 8))(v11, v7);
  return 0;
}

unint64_t specialized static MOEventBundle.constructedThirdPartyMediaAssets(resources:suggestionID:)(unint64_t a1, uint64_t a2)
{
  v64 = a2;
  v3 = type metadata accessor for UUID();
  v65 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v56 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v56 - v13;
  __chkstk_darwin(v12);
  v63 = &v56 - v15;
  if ((static DefaultsManager.Processing.shouldSkipThirdPartyMedia.getter() & 1) == 0)
  {
    v59 = 0;
    v70 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v60 = v3;
      v67 = _swiftEmptyArrayStorage;
      if (i)
      {
        v57 = v7;
        v58 = v14;
        v56 = v8;
        v14 = 0;
        v7 = a1 & 0xC000000000000001;
        v3 = a1 & 0xFFFFFFFFFFFFFF8;
        v66 = a1 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v7)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v14 >= *(v3 + 16))
            {
              goto LABEL_38;
            }

            v21 = *(a1 + 8 * v14 + 32);
          }

          v22 = v21;
          v23 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if ([v21 type] != 3 || (objc_msgSend(v22, "mediaIsFirstParty") & 1) != 0)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v8 = *(v70 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v3 = v66;
          }

          ++v14;
        }

        while (v23 != i);
        a1 = v70;
        v8 = v56;
        v7 = v57;
        v3 = v60;
        v14 = v58;
        if ((v70 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        a1 = _swiftEmptyArrayStorage;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
        {
LABEL_23:
          if ((a1 & 0x4000000000000000) == 0)
          {
            v24 = *(a1 + 16);
            if (!v24)
            {
              goto LABEL_48;
            }

            v70 = _swiftEmptyArrayStorage;
            goto LABEL_26;
          }
        }
      }

      if (_CocoaArrayWrapper.endIndex.getter() <= 0)
      {
LABEL_48:

        type metadata accessor for CommonLogger();
        static CommonLogger.processing.getter();
        v43 = v65;
        v44 = v61;
        (*(v65 + 16))(v61, v64, v3);
        v45 = v14;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v58 = v45;
          v49 = v44;
          v50 = v48;
          v51 = swift_slowAlloc();
          v70 = v51;
          *v50 = 136315138;
          v67 = UUID.uuidString.getter();
          v53 = v52;
          (*(v43 + 8))(v49, v3);
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v53, &v70);

          *(v50 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v46, v47, "[constructedThirdPartyMediaAssets] suggestionID=%s, no 3P Media in resources", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v51);

          (*(v8 + 8))(v58, v7);
        }

        else
        {

          (*(v43 + 8))(v44, v3);
          (*(v8 + 8))(v45, v7);
        }

        return 0;
      }

      v70 = _swiftEmptyArrayStorage;
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (!v24)
      {
LABEL_44:

        type metadata accessor for CommonLogger();
        v28 = v63;
        static CommonLogger.processing.getter();
        v29 = v65;
        v30 = v62;
        v31 = v60;
        (*(v65 + 16))(v62, v64, v60);
        v19 = v67;
        swift_bridgeObjectRetain_n();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = v29;
          v36 = v30;
          v66 = swift_slowAlloc();
          v70 = v66;
          *v34 = 136315394;
          v37 = UUID.uuidString.getter();
          v39 = v38;
          (*(v35 + 8))(v36, v31);
          v19 = v67;
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v70);

          *(v34 + 4) = v40;
          *(v34 + 12) = 2048;
          if (v19 >> 62)
          {
            v41 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v41 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v42 = v63;

          *(v34 + 14) = v41;

          _os_log_impl(&_mh_execute_header, v32, v33, "[constructedThirdPartyMediaAssets] suggestionID=%s, constructed 3P Media assets count=%ld", v34, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v66);

          (*(v8 + 8))(v42, v7);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          (*(v29 + 8))(v30, v31);
          (*(v8 + 8))(v28, v7);
        }

        return v19;
      }

LABEL_26:
      v3 = 0;
      v67 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(a1 + 16))
          {
            goto LABEL_40;
          }

          v25 = *(a1 + 8 * v3 + 32);
        }

        v26 = v25;
        v27 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v69 = v25;
        closure #2 in static MOEventBundle.constructedThirdPartyMediaAssets(resources:suggestionID:)(&v69, &v68);

        v14 = v68;
        if (v68)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v67 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v67 = v70;
        }

        ++v3;
        if (v27 == v24)
        {
          goto LABEL_44;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "[constructedThirdPartyMediaAssets] skipping because of manual defaults override", v18, 2u);
  }

  (*(v8 + 8))(v11, v7);
  return 0;
}

unint64_t specialized static MOEventBundle.constructedStateOfMindAssets(resources:suggestionID:)(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v97 = *(v4 - 1);
  v5 = __chkstk_darwin(v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = (&v83 - v9);
  __chkstk_darwin(v8);
  v93 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v12 - 8);
  v99 = &v83 - v13;
  v14 = type metadata accessor for UUID();
  v95 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v96 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v92 = &v83 - v18;
  v19 = __chkstk_darwin(v17);
  v90 = &v83 - v20;
  __chkstk_darwin(v19);
  v22 = (&v83 - v21);
  if (static DefaultsManager.Processing.shouldSkipStateOfMind.getter())
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "[constructedStateOfMindAssets] skipping because of manual defaults override", v25, 2u);
    }

    (*(v97 + 8))(v7, v4);
    return 0;
  }

  v103[0] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_68:
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v14;
  v85 = v22;
  v91 = v4;
  v89 = a2;
  if (!v28)
  {
    v32 = _swiftEmptyArrayStorage;
    a1 = v99;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_69;
    }

LABEL_23:
    if ((v32 & 0x4000000000000000) != 0)
    {
      goto LABEL_69;
    }

    if (*(v32 + 16))
    {
      v33 = *(v32 + 16);
      v102 = _swiftEmptyArrayStorage;
      goto LABEL_26;
    }

LABEL_71:

    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v72 = v95;
    v95[2](v96, a2, v14);
    v73 = Logger.logObject.getter();
    v74 = v10;
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v73, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v103[0] = v77;
      *v76 = 136315138;
      v94 = v74;
      v78 = v96;
      v79 = UUID.uuidString.getter();
      v81 = v80;
      (v72[1])(v78, v14);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v103);

      *(v76 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v73, v75, "[constructedStateOfMindAssets] suggestionID=%s, no State of Mind in resources", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);

      (*(v97 + 8))(v94, v4);
    }

    else
    {

      (v72[1])(v96, v14);
      (*(v97 + 8))(v74, v4);
    }

    return 0;
  }

  v94 = v10;
  v10 = 0;
  v14 = a1 & 0xC000000000000001;
  v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  v22 = &selRef_isLocationShiftRequiredForCoordinate_;
  v100 = v28;
  do
  {
    if (v14)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v29 = *(a1 + 8 * v10 + 32);
    }

    v30 = v29;
    v31 = &v10->isa + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if ([v29 type] == 16)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a2 = a1 & 0xC000000000000001;
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v28 = v100;
    }

    else
    {
    }

    v10 = (v10 + 1);
  }

  while (v31 != v28);
  v32 = v103[0];
  v4 = v91;
  v14 = v98;
  a2 = v89;
  v10 = v94;
  a1 = v99;
  if ((v103[0] & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_69:
  if (_CocoaArrayWrapper.endIndex.getter() <= 0)
  {
    goto LABEL_71;
  }

  v102 = _swiftEmptyArrayStorage;
  v33 = _CocoaArrayWrapper.endIndex.getter();
LABEL_26:
  v86 = (v95 + 2);
  v87 = (v95 + 1);
  if (v33)
  {
    v34 = 0;
    v96 = 0;
    v100 = v32 & 0xC000000000000001;
    v94 = @"MOStateOfMindMetaDataKeyStateOfMindID";
    v84 = (v95 + 6);
    v4 = (v95 + 7);
    v88 = _swiftEmptyArrayStorage;
    v95 += 4;
    v83 = xmmword_1002A4A70;
    while (2)
    {
      a2 = v34;
LABEL_29:
      if (v100)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(v32 + 16))
        {
          goto LABEL_67;
        }

        v35 = *(v32 + 8 * a2 + 32);
      }

      v10 = v35;
      v34 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_66;
      }

      v36 = [(__CFString *)v35 data];
      if (v36)
      {
        v37 = v36;
        v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v39;

        v40 = objc_opt_self();
        isa = Data._bridgeToObjectiveC()().super.isa;
        v103[0] = 0;
        v42 = [v40 JSONObjectWithData:isa options:0 error:v103];

        if (v42)
        {
          v43 = v103[0];
          _bridgeAnyObjectToAny(_:)();
          outlined consume of Data._Representation(v38, v22);
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
          if (swift_dynamicCast())
          {
            v22 = v101;
            v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (v22[2])
            {
              v46 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v45);
              v48 = v47;

              if (v48)
              {
                v49 = *&v22[7][8 * v46];
                swift_unknownObjectRetain();

                v101 = v49;
                v50 = swift_dynamicCast();
                a1 = v99;
                if (v50)
                {
                  v22 = v103[1];
                  UUID.init(uuidString:)();

                  v14 = v98;
                  if ((*v84)(a1, 1, v98) != 1)
                  {
                    (*v95)(v85, a1, v14);
                    if (one-time initialization token for defaultMaximumScreenViewport != -1)
                    {
                      swift_once();
                    }

                    v52 = static MOBundleProcessingSession.defaultMaximumScreenViewport;
                    static AssetViewModel.Style.allCases.getter();
                    (*v86)(v90, v85, v14);
                    v53 = objc_allocWithZone(type metadata accessor for MutableStateOfMindViewModel());
                    v54 = MutableStateOfMindViewModel.init(intendedViewport:supportedStyles:stateOfMindUUID:)();
                    UUID.init()();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
                    v55 = swift_allocObject();
                    *(v55 + 16) = v83;
                    *(v55 + 32) = v54;
                    v56 = v54;
                    [(__CFString *)v10 priorityScore];
                    v57 = objc_allocWithZone(type metadata accessor for Asset());
                    Asset.init(universalUUID:representations:priorityScore:)();

                    v14 = v98;
                    (*v87)(v85, v14);
                    v22 = &v102;
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      v14 = v98;
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    v88 = v102;
                    a2 = v89;
                    if (v34 != v33)
                    {
                      continue;
                    }

                    goto LABEL_59;
                  }

                  goto LABEL_48;
                }

                v14 = v98;
LABEL_47:
                (*v4)(a1, 1, 1, v14);
LABEL_48:
                outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a1, &_s10Foundation4UUIDVSgMd);
                ++a2;
                if (v34 == v33)
                {
                  a2 = v89;
                  goto LABEL_59;
                }

                goto LABEL_29;
              }
            }

            else
            {
            }
          }
        }

        else
        {
          v51 = v103[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          outlined consume of Data._Representation(v38, v22);

          v96 = 0;
        }

        v14 = v98;
        a1 = v99;
        goto LABEL_47;
      }

      break;
    }

    goto LABEL_47;
  }

  v88 = _swiftEmptyArrayStorage;
LABEL_59:

  type metadata accessor for CommonLogger();
  v58 = v93;
  static CommonLogger.processing.getter();
  v59 = v92;
  (*v86)(v92, a2, v14);
  v26 = v88;
  swift_bridgeObjectRetain_n();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = v14;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v103[0] = v64;
    *v63 = 136315394;
    v65 = UUID.uuidString.getter();
    v67 = v66;
    v68 = v62;
    v26 = v88;
    (*v87)(v59, v68);
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v103);

    *(v63 + 4) = v69;
    *(v63 + 12) = 2048;
    v70 = v91;
    if (v26 >> 62)
    {
      v71 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v71 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v63 + 14) = v71;

    _os_log_impl(&_mh_execute_header, v60, v61, "[constructedStateOfMindAssets] suggestionID=%s, constructed State of Mind assets count=%ld", v63, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v64);

    (*(v97 + 8))(v58, v70);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*v87)(v59, v14);
    (*(v97 + 8))(v58, v91);
  }

  return v26;
}

unint64_t specialized static MOEventBundle.constructedContactAssets(resources:suggestionID:startDate:endDate:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  v84 = a4;
  v85 = type metadata accessor for UUID();
  v6 = *(v85 - 8);
  v7 = __chkstk_darwin(v85);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v74 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v74 - v18;
  __chkstk_darwin(v17);
  v21 = (&v74 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v22 - 8);
  v87 = &v74 - v23;
  if (static DefaultsManager.Processing.shouldSkipContacts.getter())
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "[constructedContactAssets] skipping because of manual defaults override", v26, 2u);
    }

    (*(v13 + 8))(v16, v12);
    return 0;
  }

  v75 = v9;
  v76 = v19;
  v79 = a2;
  v80 = v13;
  v81 = v12;
  v82 = v6;
  v88 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v30 = v85;
    v77 = v11;
    v78 = v21;
    if (!i)
    {
      break;
    }

    v31 = 0;
    v11 = (a1 & 0xC000000000000001);
    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    v86 = (v82 + 56);
    v21 = &selRef_isLocationShiftRequiredForCoordinate_;
    while (1)
    {
      if (v11)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *(v32 + 16))
        {
          goto LABEL_33;
        }

        v33 = *(a1 + 8 * v31 + 32);
      }

      v34 = v33;
      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if ([v33 v21[353]] == 11)
      {
        v36 = [v34 sourceEventIdentifier];
        if (v36)
        {
          v37 = v30;
          v38 = v87;
          v39 = v32;
          v40 = i;
          v41 = v11;
          v42 = a1;
          v43 = v36;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v86)(v38, 0, 1, v37);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v38, &_s10Foundation4UUIDVSgMd);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v30 = v85;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          a1 = v42;
          v11 = v41;
          i = v40;
          v32 = v39;
          v21 = &selRef_isLocationShiftRequiredForCoordinate_;
        }

        else
        {

          v44 = v87;
          (*v86)(v87, 1, 1, v30);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v44, &_s10Foundation4UUIDVSgMd);
        }
      }

      else
      {
      }

      ++v31;
      if (v35 == i)
      {
        v45 = v88;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_24:
  v47 = v80;
  v46 = v81;
  v48 = v82;
  if ((v45 & 0x8000000000000000) == 0 && (v45 & 0x4000000000000000) == 0)
  {
    v49 = *(v45 + 16);
    if (v49 > 0)
    {
      goto LABEL_27;
    }

LABEL_36:
    v63 = v46;

    type metadata accessor for CommonLogger();
    v64 = v76;
    static CommonLogger.processing.getter();
    v65 = v75;
    (*(v48 + 16))(v75, v79, v30);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v88 = v69;
      *v68 = 136315138;
      v70 = UUID.uuidString.getter();
      v72 = v71;
      (*(v48 + 8))(v65, v85);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v88);

      *(v68 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v66, v67, "[constructedContactAssets] suggestionID=%s, no Contact in resources", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);

      (*(v47 + 8))(v64, v81);
    }

    else
    {

      (*(v48 + 8))(v65, v30);
      (*(v47 + 8))(v64, v63);
    }

    return 0;
  }

  v49 = _CocoaArrayWrapper.endIndex.getter();
  if (v49 <= 0)
  {
    goto LABEL_36;
  }

LABEL_27:
  __chkstk_darwin(v49);
  v50 = v84;
  *(&v74 - 2) = v83;
  *(&v74 - 1) = v50;
  v27 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in static MOEventBundle.constructedContactAssets(resources:suggestionID:startDate:endDate:), (&v74 - 4), v45);

  type metadata accessor for CommonLogger();
  v51 = v78;
  static CommonLogger.processing.getter();
  v52 = v77;
  (*(v48 + 16))(v77, v79, v30);
  swift_bridgeObjectRetain_n();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v88 = v56;
    *v55 = 136315394;
    v57 = UUID.uuidString.getter();
    v58 = v30;
    v60 = v59;
    (*(v48 + 8))(v52, v58);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v60, &v88);

    *(v55 + 4) = v61;
    *(v55 + 12) = 2048;
    if (v27 >> 62)
    {
      v62 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v62 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v55 + 14) = v62;

    _os_log_impl(&_mh_execute_header, v53, v54, "[constructedContactAssets] suggestionID=%s, constructed Contact assets count=%ld", v55, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v56);

    (*(v47 + 8))(v78, v81);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v48 + 8))(v52, v30);
    (*(v47 + 8))(v51, v46);
  }

  return v27;
}

void *specialized _ArrayProtocol.filter(_:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v4 = a1;
  v26 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v24 = v3;
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v3 = &selRef_isLocationShiftRequiredForCoordinate_;
    v22 = v4;
    while (1)
    {
      if (v7)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v9 v3[353]] == 11)
      {
        v12 = i;
        v13 = [v10 assets];
        if (v13)
        {
          v14 = v13;
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;
        }

        else
        {
          v15 = 0;
          v17 = 0xE000000000000000;
        }

        v25[0] = v15;
        v25[1] = v17;
        __chkstk_darwin(v13);
        v21[2] = v25;
        v18 = v24;
        v19 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v21, v23);
        v24 = v18;

        if (v19)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        i = v12;
        v4 = v22;
        v3 = &selRef_isLocationShiftRequiredForCoordinate_;
      }

      else
      {
      }

      ++v6;
      if (v11 == i)
      {
        return v26;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t specialized static MOEventBundle.constructedPhotoAssets(resources:suggestionID:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  type metadata accessor for Date();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  type metadata accessor for DateInterval();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI15PhotosUtilitiesV14AssetSuperTypeOSgMd);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(specialized static MOEventBundle.constructedPhotoAssets(resources:suggestionID:), 0, 0);
}

uint64_t specialized static MOEventBundle.constructedPhotoAssets(resources:suggestionID:)()
{
  v72 = v0;
  v1 = *(v0 + 24);
  v71 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v3 = 0;
      v4 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      v6 = *(v0 + 24) + 32;
      v0 = i;
      do
      {
        if (v4)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            goto LABEL_40;
          }

          v7 = *(v6 + 8 * v3);
        }

        v8 = v7;
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ([v7 type] == 2)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = &v71;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
      }

      while (v9 != v0);
      v0 = v68;
      v10 = v71;
      *(v68 + 184) = v71;
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      *(v0 + 184) = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((v10 & 0x4000000000000000) == 0)
        {
          v11 = *(v10 + 16);
          if (!v11)
          {
            goto LABEL_47;
          }

          *(v0 + 16) = _swiftEmptyArrayStorage;
          goto LABEL_20;
        }
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
LABEL_47:
      v46 = *(v0 + 104);
      v45 = *(v0 + 112);
      v47 = *(v0 + 96);
      v48 = *(v0 + 32);

      type metadata accessor for CommonLogger();
      static CommonLogger.processing.getter();
      (*(v46 + 16))(v45, v48, v47);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      v51 = os_log_type_enabled(v49, v50);
      v53 = *(v0 + 104);
      v52 = *(v0 + 112);
      v54 = *(v0 + 96);
      v56 = *(v0 + 48);
      v55 = *(v0 + 56);
      v57 = *(v0 + 40);
      if (v51)
      {
        v70 = *(v0 + 40);
        v58 = swift_slowAlloc();
        v66 = v50;
        v59 = swift_slowAlloc();
        v71 = v59;
        *v58 = 136315138;
        v60 = UUID.uuidString.getter();
        v67 = v55;
        v62 = v61;
        (*(v53 + 8))(v52, v54);
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v71);

        *(v58 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v49, v66, "[constructedPhotoAssets] suggestionID=%s, no Photos in resources", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);

        (*(v56 + 8))(v67, v70);
      }

      else
      {

        (*(v53 + 8))(v52, v54);
        (*(v56 + 8))(v55, v57);
      }

      goto LABEL_52;
    }

    *(v0 + 16) = _swiftEmptyArrayStorage;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      break;
    }

LABEL_20:
    v1 = 0;
    *(v0 + 192) = v11;
    v12 = enum case for PhotosUtilities.AssetSuperType.livePhoto(_:);
    *(v0 + 248) = enum case for PhotosUtilities.AssetSuperType.stillPhoto(_:);
    *(v0 + 252) = v12;
    *(v0 + 256) = enum case for PhotosUtilities.AssetSuperType.video(_:);
    while (1)
    {
      *(v0 + 200) = _swiftEmptyArrayStorage;
      v13 = *(v0 + 184);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v1 >= *(v13 + 16))
        {
          goto LABEL_42;
        }

        v14 = *(v13 + 8 * v1 + 32);
      }

      v15 = v14;
      *(v0 + 208) = v14;
      *(v0 + 216) = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v16 = MOResource.photoLocalIdentifier.getter();
      *(v0 + 224) = v16;
      *(v0 + 232) = v17;
      if (v17)
      {
        v38 = v16;
        v39 = v17;
        v40 = swift_task_alloc();
        *(v0 + 240) = v40;
        *v40 = v0;
        v40[1] = specialized static MOEventBundle.constructedPhotoAssets(resources:suggestionID:);
        v41 = *(v0 + 176);

        return static PhotosUtilities.assetType(from:)(v41, v38, v39);
      }

      v1 = *(v0 + 216);
      if (v1 == *(v0 + 192))
      {
        goto LABEL_28;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_28:
  v18 = *(v0 + 120);
  v19 = *(v0 + 96);
  v20 = *(v0 + 104);
  v21 = *(v0 + 32);

  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  (*(v20 + 16))(v18, v21, v19);
  swift_bridgeObjectRetain_n();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 120);
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v71 = v29;
    *v28 = 136315394;
    v30 = UUID.uuidString.getter();
    v32 = v31;
    (*(v26 + 8))(v25, v27);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v71);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2048;
    if (_swiftEmptyArrayStorage >> 62)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = *(v0 + 64);
    v37 = *(v0 + 40);
    v36 = *(v0 + 48);

    *(v28 + 14) = v34;

    _os_log_impl(&_mh_execute_header, v22, v23, "[constructedPhotoAssets] suggestionID=%s, constructed Photo assets count=%ld", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v29);

    (*(v36 + 8))(v35, v37);
  }

  else
  {
    v42 = *(v0 + 64);
    v43 = *(v0 + 40);
    v44 = *(v0 + 48);
    swift_bridgeObjectRelease_n();

    (*(v26 + 8))(v25, v27);
    (*(v44 + 8))(v42, v43);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_38;
    }
  }

  else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_38:
    v69 = _swiftEmptyArrayStorage;
    goto LABEL_53;
  }

LABEL_52:
  v69 = 0;
LABEL_53:

  v64 = *(v0 + 8);

  return v64(v69);
}

{

  return _swift_task_switch(specialized static MOEventBundle.constructedPhotoAssets(resources:suggestionID:), 0, 0);
}

{
  v85 = v0;
  v1 = *(v0 + 168);
  outlined init with copy of PhotosUtilities.AssetSuperType?(*(v0 + 176), v1);
  v2 = type metadata accessor for PhotosUtilities.AssetSuperType();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v5 = (v0 + 16);
    v6 = *(v0 + 248);
    v7 = *(v0 + 160);
    outlined init with copy of PhotosUtilities.AssetSuperType?(*(v0 + 168), v7);
    v8 = (*(v3 + 88))(v7, v2);
    if (v8 == v6)
    {
      if (static DefaultsManager.Processing.shouldSkipPhotos.getter())
      {

        type metadata accessor for CommonLogger();
        static CommonLogger.processing.getter();
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "[constructedPhotoAssets] skipping Photos because of manual defaults override", v11, 2u);
        }

        v12 = *(v0 + 208);
        v14 = *(v0 + 168);
        v13 = *(v0 + 176);
        v15 = *(v0 + 88);
LABEL_22:
        v27 = *(v0 + 40);
        v28 = *(v0 + 48);

        (*(v28 + 8))(v15, v27);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v13, &_s9MomentsUI15PhotosUtilitiesV14AssetSuperTypeOSgMd);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s9MomentsUI15PhotosUtilitiesV14AssetSuperTypeOSgMd);
        v29 = *(v0 + 200);
        goto LABEL_34;
      }

      if (one-time initialization token for defaultMaximumScreenViewport != -1)
      {
        swift_once();
      }

      v81 = *(v0 + 208);
      v18 = static MOBundleProcessingSession.defaultMaximumScreenViewport;
      static AssetViewModel.Style.allCases.getter();
      static Date.now.getter();
      static Date.now.getter();
      DateInterval.init(start:end:)();
      v19 = objc_allocWithZone(type metadata accessor for MutablePhotoViewModel());
      v20 = MutablePhotoViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)();
      UUID.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1002A4A70;
      *(v21 + 32) = v20;
      v22 = v20;
      [v81 priorityScore];
      v23 = objc_allocWithZone(type metadata accessor for Asset());
      v24 = Asset.init(universalUUID:representations:priorityScore:)();
    }

    else if (v8 == *(v0 + 252))
    {
      if (static DefaultsManager.Processing.shouldSkipLivePhotos.getter())
      {

        type metadata accessor for CommonLogger();
        static CommonLogger.processing.getter();
        v9 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v9, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v9, v16, "[constructedPhotoAssets] skipping Live Photos because of manual defaults override", v17, 2u);
        }

        v12 = *(v0 + 208);
        v14 = *(v0 + 168);
        v13 = *(v0 + 176);
        v15 = *(v0 + 80);
        goto LABEL_22;
      }

      if (one-time initialization token for defaultMaximumScreenViewport != -1)
      {
        swift_once();
      }

      v82 = *(v0 + 208);
      v30 = static MOBundleProcessingSession.defaultMaximumScreenViewport;
      static AssetViewModel.Style.allCases.getter();
      static Date.now.getter();
      static Date.now.getter();
      DateInterval.init(start:end:)();
      v31 = objc_allocWithZone(type metadata accessor for MutableLivePhotoViewModel());
      v32 = MutableLivePhotoViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)();
      UUID.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1002A4A70;
      *(v33 + 32) = v32;
      v22 = v32;
      [v82 priorityScore];
      v34 = objc_allocWithZone(type metadata accessor for Asset());
      v24 = Asset.init(universalUUID:representations:priorityScore:)();
    }

    else
    {
      if (v8 != *(v0 + 256))
      {
        v35 = *(v0 + 208);
        v36 = *(v0 + 160);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 176), &_s9MomentsUI15PhotosUtilitiesV14AssetSuperTypeOSgMd);

        (*(v3 + 8))(v36, v2);
        goto LABEL_3;
      }

      if (static DefaultsManager.Processing.shouldSkipVideos.getter())
      {

        type metadata accessor for CommonLogger();
        static CommonLogger.processing.getter();
        v9 = Logger.logObject.getter();
        v25 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v9, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v9, v25, "[constructedPhotoAssets] skipping Videos because of manual defaults override", v26, 2u);
        }

        v12 = *(v0 + 208);
        v14 = *(v0 + 168);
        v13 = *(v0 + 176);
        v15 = *(v0 + 72);
        goto LABEL_22;
      }

      if (one-time initialization token for defaultMaximumScreenViewport != -1)
      {
        swift_once();
      }

      v83 = *(v0 + 208);
      v37 = static MOBundleProcessingSession.defaultMaximumScreenViewport;
      static AssetViewModel.Style.allCases.getter();
      static Date.now.getter();
      static Date.now.getter();
      DateInterval.init(start:end:)();
      v38 = objc_allocWithZone(type metadata accessor for MutableVideoViewModel());
      v39 = MutableVideoViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)();
      UUID.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1002A4A70;
      *(v40 + 32) = v39;
      v22 = v39;
      [v83 priorityScore];
      v41 = objc_allocWithZone(type metadata accessor for Asset());
      v24 = Asset.init(universalUUID:representations:priorityScore:)();
    }

    v42 = v24;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v43 = *(v0 + 208);
    v44 = *(v0 + 176);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v44, &_s9MomentsUI15PhotosUtilitiesV14AssetSuperTypeOSgMd);
    goto LABEL_33;
  }

  v4 = *(v0 + 208);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 176), &_s9MomentsUI15PhotosUtilitiesV14AssetSuperTypeOSgMd);

LABEL_3:
  v5 = (v0 + 200);
LABEL_33:
  v29 = *v5;
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 168), &_s9MomentsUI15PhotosUtilitiesV14AssetSuperTypeOSgMd);
  while (1)
  {
LABEL_34:
    v45 = *(v0 + 216);
    if (v45 == *(v0 + 192))
    {
      v51 = *(v0 + 120);
      v52 = *(v0 + 96);
      v53 = *(v0 + 104);
      v54 = *(v0 + 32);

      type metadata accessor for CommonLogger();
      static CommonLogger.processing.getter();
      (*(v53 + 16))(v51, v54, v52);
      swift_bridgeObjectRetain_n();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 120);
      v59 = v29 >> 62;
      v61 = *(v0 + 96);
      v60 = *(v0 + 104);
      if (v57)
      {
        v62 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v84 = v80;
        *v62 = 136315394;
        v63 = UUID.uuidString.getter();
        v65 = v64;
        (*(v60 + 8))(v58, v61);
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v84);
        v59 = v29 >> 62;

        *(v62 + 4) = v66;
        *(v62 + 12) = 2048;
        if (v29 >> 62)
        {
          v67 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v67 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v68 = *(v0 + 64);
        v70 = *(v0 + 40);
        v69 = *(v0 + 48);

        *(v62 + 14) = v67;

        _os_log_impl(&_mh_execute_header, v55, v56, "[constructedPhotoAssets] suggestionID=%s, constructed Photo assets count=%ld", v62, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v80);

        (*(v69 + 8))(v68, v70);
      }

      else
      {
        v71 = *(v0 + 64);
        v72 = *(v0 + 40);
        v73 = *(v0 + 48);
        swift_bridgeObjectRelease_n();

        (*(v60 + 8))(v58, v61);
        (*(v73 + 8))(v71, v72);
      }

      if (v59)
      {
        goto LABEL_58;
      }

      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

LABEL_49:

      v29 = 0;
      goto LABEL_50;
    }

    *(v0 + 200) = v29;
    v46 = *(v0 + 184);
    if ((v46 & 0xC000000000000001) != 0)
    {
      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v45 >= *(v46 + 16))
      {
        goto LABEL_57;
      }

      v47 = *(v46 + 8 * v45 + 32);
    }

    v48 = v47;
    *(v0 + 208) = v47;
    *(v0 + 216) = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    v49 = MOResource.photoLocalIdentifier.getter();
    *(v0 + 224) = v49;
    *(v0 + 232) = v50;
    if (v50)
    {
      v76 = v49;
      v77 = v50;
      v78 = swift_task_alloc();
      *(v0 + 240) = v78;
      *v78 = v0;
      v78[1] = specialized static MOEventBundle.constructedPhotoAssets(resources:suggestionID:);
      v79 = *(v0 + 176);

      return static PhotosUtilities.assetType(from:)(v79, v76, v77);
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_49;
  }

LABEL_50:

  v74 = *(v0 + 8);

  return v74(v29);
}

unint64_t specialized static MOEventBundle.constructedPosterAssets(resources:suggestionID:)(unint64_t a1, uint64_t a2)
{
  v74 = a2;
  v3 = type metadata accessor for Logger();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (v63 - v7);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 1);
  v11 = __chkstk_darwin(v9);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v63 - v15;
  __chkstk_darwin(v14);
  v69 = v63 - v17;
  v18 = type metadata accessor for Date();
  v19 = __chkstk_darwin(v18 - 8);
  v68 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v67 = v63 - v21;
  v22 = type metadata accessor for DateInterval();
  __chkstk_darwin(v22 - 8);
  v66 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78[0] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v70 = v16;
    v71 = v8;
    v75 = v10;
    v76 = v9;
    if (i)
    {
      v64 = v13;
      *&v65 = v6;
      v16 = 0;
      v10 = a1 & 0xC000000000000001;
      v13 = (a1 & 0xFFFFFFFFFFFFFF8);
      v8 = &selRef_isLocationShiftRequiredForCoordinate_;
      v77 = i;
      do
      {
        if (v10)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v25 = *(a1 + 8 * v16 + 32);
        }

        v26 = v25;
        v9 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if ([v25 type] == 17)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v6 = (a1 & 0xC000000000000001);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          i = v77;
        }

        else
        {
        }

        ++v16;
      }

      while (v9 != i);
      a1 = v78[0];
      v10 = v75;
      v9 = v76;
      v13 = v64;
      v6 = v65;
      if ((v78[0] & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      a1 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((a1 & 0x4000000000000000) == 0)
        {
          v27 = *(a1 + 16);
          if (!v27)
          {
            goto LABEL_54;
          }

          v78[0] = _swiftEmptyArrayStorage;
          goto LABEL_20;
        }
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
LABEL_54:

      type metadata accessor for CommonLogger();
      static CommonLogger.processing.getter();
      (*(v10 + 16))(v13, v74, v9);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v78[0] = v57;
        *v56 = 136315138;
        v58 = UUID.uuidString.getter();
        v60 = v59;
        (*(v10 + 8))(v13, v9);
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v78);

        *(v56 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v54, v55, "[constructedPosterAssets] suggestionID=%s, no Poster in resources", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
      }

      else
      {

        (*(v10 + 8))(v13, v9);
      }

      (*(v72 + 8))(v6, v73);
      return 0;
    }

    v78[0] = _swiftEmptyArrayStorage;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    if (!v27)
    {
      break;
    }

LABEL_20:
    v10 = 0;
    v13 = (a1 & 0xC000000000000001);
    v77 = _swiftEmptyArrayStorage;
    v65 = xmmword_1002A4A70;
LABEL_21:
    v16 = v10;
    while (1)
    {
      if (v13)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(a1 + 16))
        {
          goto LABEL_45;
        }

        v28 = *(a1 + 8 * v16 + 32);
      }

      v9 = v28;
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v30 = MOResource.bundleId.getter();
      v31 = v29;
      if (v29)
      {
        v8 = v29;
      }

      else
      {
        v8 = 0xE000000000000000;
      }

      v32 = [v9 assets];
      if (v32)
      {
        v33 = v32;
        if (v31)
        {
          v34 = v30;
        }

        else
        {
          v34 = 0;
        }

        v77 = v34;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63[2] = v36;
        v64 = v35;

        if (one-time initialization token for defaultMaximumScreenViewport != -1)
        {
          swift_once();
        }

        v63[1] = static MOBundleProcessingSession.defaultMaximumScreenViewport;
        static AssetViewModel.Style.allCases.getter();
        static Date.now.getter();
        static Date.now.getter();
        DateInterval.init(start:end:)();
        v37 = objc_allocWithZone(type metadata accessor for MutablePosterViewModel());
        v38 = MutablePosterViewModel.init(intendedViewport:supportedStyles:spotlightIdentifier:bundleID:dateInterval:)();
        v6 = v69;
        UUID.init()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v39 = swift_allocObject();
        *(v39 + 16) = v65;
        *(v39 + 32) = v38;
        objc_allocWithZone(type metadata accessor for Asset());
        v40 = v38;
        Asset.init(universalUUID:representations:priorityScore:)();

        v8 = v78;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v9 = *((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v77 = v78[0];
        if (v10 != v27)
        {
          goto LABEL_21;
        }

        goto LABEL_50;
      }

      ++v16;
      if (v10 == v27)
      {
        goto LABEL_50;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  v77 = _swiftEmptyArrayStorage;
LABEL_50:

  type metadata accessor for CommonLogger();
  v41 = v71;
  static CommonLogger.processing.getter();
  v42 = v75;
  v43 = v70;
  v44 = v76;
  (*(v75 + 16))(v70, v74, v76);
  v45 = v77;
  swift_bridgeObjectRetain_n();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v78[0] = v74;
    *v48 = 136315394;
    v49 = UUID.uuidString.getter();
    v51 = v50;
    (*(v42 + 8))(v43, v44);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v78);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2048;
    if (v45 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v53 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v48 + 14) = v53;

    _os_log_impl(&_mh_execute_header, v46, v47, "[constructedPosterAssets] suggestionID=%s, constructed poster assets count=%ld", v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v74);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v42 + 8))(v43, v44);
  }

  (*(v72 + 8))(v41, v73);
  return v45;
}

uint64_t outlined init with copy of PhotosUtilities.AssetSuperType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI15PhotosUtilitiesV14AssetSuperTypeOSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t MOSuggestionAssetPhotoMomentMetadata.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MOSuggestionAssetPhotoMomentMetadata.date.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

id MOSuggestionAssetPhotoMomentMetadata.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for MOSuggestionAssetPhotoMomentMetadata() + 20));

  return v1;
}

uint64_t type metadata accessor for MOSuggestionAssetPhotoMomentMetadata()
{
  result = type metadata singleton initialization cache for MOSuggestionAssetPhotoMomentMetadata;
  if (!type metadata singleton initialization cache for MOSuggestionAssetPhotoMomentMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MOSuggestionAssetPhotoMomentMetadata.location.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MOSuggestionAssetPhotoMomentMetadata() + 20);

  *(v1 + v3) = a1;
}

uint64_t MOSuggestionAssetPhotoMomentMetadata.resolution.setter(double a1, double a2)
{
  result = type metadata accessor for MOSuggestionAssetPhotoMomentMetadata();
  v6 = (v2 + *(result + 24));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

unint64_t MOSuggestionAssetPhotoMomentMetadata.packedDictionary()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A55C0;
  v3 = MOSuggestionAssetMetadataKeyPhotoMomentDate;
  *(inited + 32) = MOSuggestionAssetMetadataKeyPhotoMomentDate;
  v4 = type metadata accessor for Date();
  *(inited + 64) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 40));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v1, v4);
  v6 = MOSuggestionAssetMetadataKeyPhotoMomentLocation;
  *(inited + 72) = MOSuggestionAssetMetadataKeyPhotoMomentLocation;
  v7 = type metadata accessor for MOSuggestionAssetPhotoMomentMetadata();
  v8 = *(v1 + *(v7 + 20));
  v9 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CLLocation);
  *(inited + 80) = v8;
  v10 = MOSuggestionAssetMetadataKeyPhotoMomentResolution;
  *(inited + 104) = v9;
  *(inited + 112) = v10;
  v11 = *(v1 + *(v7 + 24) + 8);
  *(inited + 144) = &type metadata for Double;
  *(inited + 120) = v11;
  v12 = v3;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28MOSuggestionAssetMetadataKeya_yptMd);
  swift_arrayDestroy();
  return v16;
}

uint64_t MOSuggestionAssetPhotoMomentMetadata.init(date:location:resolution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  result = type metadata accessor for MOSuggestionAssetPhotoMomentMetadata();
  *(a3 + *(result + 20)) = a2;
  v12 = (a3 + *(result + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

uint64_t MOAssetPhotoMomentProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() defaultManager];
  return v0;
}

uint64_t *MOAssetPhotoMomentProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOAssetPhotoMomentProvider.shared;
}

uint64_t static MOAssetPhotoMomentProvider.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

Swift::OpaquePointer_optional __swiftcall MOAssetPhotoMomentProvider.fetchAssetsByIdentifiers(for:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.shared);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v3, v4))
  {

    if (*(a1._rawValue + 2))
    {
      goto LABEL_5;
    }

LABEL_11:
    v6 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v6, v19, "[Assets] No localIdentifier", v20, 2u);
    }

    goto LABEL_14;
  }

  v5 = swift_slowAlloc();
  *v5 = 134217984;
  *(v5 + 4) = *(a1._rawValue + 2);

  _os_log_impl(&_mh_execute_header, v3, v4, "[Assets] fetching photos identifierCount=%ld", v5, 0xCu);

  if (!*(a1._rawValue + 2))
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = [objc_allocWithZone(PHFetchOptions) init];
  [v6 setIncludeGuestAssets:1];
  v7 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9 = [v7 fetchAssetsWithLocalIdentifiers:isa options:v6];

  if ([v9 count] < 1 || (v10 = objc_msgSend(v9, "fetchedObjects")) == 0)
  {

LABEL_14:
    v18 = 0;
    goto LABEL_16;
  }

  v11 = v10;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PHAsset);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = v9;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = [v13 count];

    _os_log_impl(&_mh_execute_header, v14, v15, "[Assets] Fetched PHAsset count=%ld", v16, 0xCu);
  }

  else
  {
  }

  v18 = v12;
LABEL_16:
  result.value._rawValue = v18;
  result.is_nil = v17;
  return result;
}

uint64_t MOAssetPhotoMomentProvider.getMetadata(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = [a1 creationDate];
  if (v11)
  {
    v12 = v11;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = *(v5 + 32);
    v13(v10, v8, v4);
    v14 = [a1 location];
    if (v14)
    {
      v15 = v14;
      v13(a2, v10, v4);
      v16 = type metadata accessor for MOSuggestionAssetPhotoMomentMetadata();
      *&a2[*(v16 + 20)] = v15;
      *&a2[*(v16 + 24)] = vdupq_n_s64(0x4072C00000000000uLL);
      return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    }

    (*(v5 + 8))(v10, v4);
  }

  v18 = type metadata accessor for MOSuggestionAssetPhotoMomentMetadata();
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

uint64_t MOAssetPhotoMomentProvider.getImages(from:previewOnly:completion:)(unint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService36MOSuggestionAssetPhotoMomentMetadataVSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v67 - v10;
  v78 = type metadata accessor for MOSuggestionAssetPhotoMomentMetadata();
  v69 = *(v78 - 8);
  v12 = __chkstk_darwin(v78);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v67 - v14;
  v82 = swift_allocObject();
  *(v82 + 16) = _swiftEmptyArrayStorage;
  v15 = swift_allocObject();
  v81 = v15;
  *(v15 + 16) = _swiftEmptyArrayStorage;
  v79 = (v15 + 16);
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
    v17 = swift_allocObject();
    v80 = v17;
    *(v17 + 16) = v16;
    v18 = (v17 + 16);
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
LABEL_35:

      return 1;
    }

    while (1)
    {
      v85 = a1 & 0xC000000000000001;
      v74 = v18;
      swift_beginAccess();
      v20 = 0;
      v70 = a1 & 0xFFFFFFFFFFFFFF8;
      v72 = (v69 + 48);
      v71 = v88;
      *&v21 = 136315138;
      v67 = v21;
      v83 = v11;
      v73 = v19;
      v68 = a4;
      v75 = a1;
      while (1)
      {
        if (v85)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v70 + 16))
          {
            goto LABEL_32;
          }

          v33 = *(a1 + 8 * v20 + 32);
        }

        v34 = v33;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v35 = [v33 mediaSubtypes];
        v86 = v20 + 1;
        if ((v35 & 4) != 0)
        {
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static MOAngelLogger.shared);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v37, v38, "[Assets] Skipping screenshot", v39, 2u);
            v11 = v83;
          }

          if (__OFSUB__(*v74, 1))
          {
            goto LABEL_31;
          }

          --*v74;
        }

        else
        {
          (*(*v5 + 96))(v34);
          if ((*v72)(v11, 1, v78) == 1)
          {
            outlined destroy of MOSuggestionAssetPhotoMomentMetadata?(v11);
          }

          else
          {
            v40 = v76;
            outlined init with take of MOSuggestionAssetPhotoMomentMetadata(v11, v76);
            outlined init with copy of MOSuggestionAssetPhotoMomentMetadata(v40, v77);
            v41 = v79;
            swift_beginAccess();
            v42 = *v41;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v41 = v42;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
              *v79 = v42;
            }

            v45 = v42[2];
            v44 = v42[3];
            if (v45 >= v44 >> 1)
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v42);
            }

            v42[2] = v45 + 1;
            outlined init with take of MOSuggestionAssetPhotoMomentMetadata(v77, v42 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v45);
            *v79 = v42;
            swift_endAccess();
            outlined destroy of MOSuggestionAssetPhotoMomentMetadata(v76);
          }

          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v46 = type metadata accessor for Logger();
          __swift_project_value_buffer(v46, static MOAngelLogger.shared);
          v47 = v34;
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.debug.getter();

          v50 = os_log_type_enabled(v48, v49);
          v84 = v47;
          if (v50)
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            aBlock[0] = v52;
            *v51 = v67;
            v53 = a3;
            v54 = [v47 localIdentifier];
            v55 = v5;
            v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v57;

            v59 = v56;
            v5 = v55;
            v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, aBlock);

            *(v51 + 4) = v60;
            a3 = v53;
            a4 = v68;
            _os_log_impl(&_mh_execute_header, v48, v49, "[Assets] imageRequested=%s", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v52);
          }

          v22 = swift_allocObject();
          v23 = v81;
          v24 = v80;
          v22[2] = v82;
          v22[3] = v24;
          v22[4] = a3;
          v22[5] = a4;
          v22[6] = v23;
          v25 = objc_allocWithZone(PHImageRequestOptions);

          v26 = [v25 init];
          [v26 setDeliveryMode:1];
          v27 = v5[2];
          v28 = swift_allocObject();
          v29 = v84;
          v28[2] = v84;
          v28[3] = partial apply for closure #1 in MOAssetPhotoMomentProvider.getImages(from:previewOnly:completion:);
          v28[4] = v22;
          v88[2] = partial apply for closure #1 in MOAssetPhotoMomentProvider.fetchImage(for:targetSize:contentMode:onComplete:);
          v88[3] = v28;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v88[0] = thunk for @escaping @callee_guaranteed (@guaranteed UIImage?, @guaranteed [AnyHashable : Any]?) -> ();
          v88[1] = &block_descriptor_25;
          v30 = _Block_copy(aBlock);
          v31 = v29;
          v32 = v26;

          [v27 requestImageForAsset:v31 targetSize:1 contentMode:v32 options:v30 resultHandler:{300.0, 300.0}];
          _Block_release(v30);

          a1 = v75;
          v11 = v83;
          v19 = v73;
        }

        ++v20;
        if (v86 == v19)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v61 = _CocoaArrayWrapper.endIndex.getter();
      if (v61 < 1)
      {
        break;
      }

      v62 = v61;
      v63 = swift_allocObject();
      v80 = v63;
      *(v63 + 16) = v62;
      v64 = v63 + 16;
      v65 = _CocoaArrayWrapper.endIndex.getter();
      v18 = v64;
      v19 = v65;
      if (!v65)
      {
        goto LABEL_35;
      }
    }
  }

  a3(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);

  return 0;
}

uint64_t closure #1 in MOAssetPhotoMomentProvider.getImages(from:previewOnly:completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v11 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v12 = *(a2 + 16);
  swift_endAccess();
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = swift_beginAccess();
  if (v13 >= *(a3 + 16))
  {
    swift_beginAccess();
    v15 = *(a2 + 16);
    swift_beginAccess();
    v16 = *(a6 + 16);

    a4(v15, v16);
  }

  return result;
}

void closure #1 in MOAssetPhotoMomentProvider.fetchImage(for:targetSize:contentMode:onComplete:)(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  if (a1)
  {
    v6 = one-time initialization token for shared;
    v18 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static MOAngelLogger.shared);
    v8 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = [v8 localIdentifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v19);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "[Assets] imageFetched=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    a4(v18);
  }
}

uint64_t sub_100174108()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t outlined destroy of MOSuggestionAssetPhotoMomentMetadata?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService36MOSuggestionAssetPhotoMomentMetadataVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001741B8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100174218()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of MOSuggestionAssetPhotoMomentMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetPhotoMomentMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of MOSuggestionAssetPhotoMomentMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetPhotoMomentMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MOSuggestionAssetPhotoMomentMetadata(uint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionAssetPhotoMomentMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001743B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100174484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for MOSuggestionAssetPhotoMomentMetadata()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIApplication(319, &lazy cache variable for type metadata for CLLocation);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x4449656C646E7562;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000016;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x80000001002AF1B0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001002AF1B0;
  }

  else
  {
    v6 = 0x80000001002AF1D0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4449656C646E7562;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000016;
    v4 = 0x80000001002AF1D0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x4449656C646E7562;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x80000001002AF1B0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v5 = 0x80000001002AF1D0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x4449656C646E7562;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

MomentsUIService::MOSuggestionAssetMediaAnalytics::MediaEngagementEvent __swiftcall MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.init(bundleId:isAppIconUnchanged:isPredefinedPopularApp:)(MomentsUIService::MOSuggestionAssetMediaAnalytics::MediaEngagementEvent bundleId, Swift::Bool isAppIconUnchanged, Swift::Bool isPredefinedPopularApp)
{
  if (isPredefinedPopularApp)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFE | isAppIconUnchanged;
  bundleId.isAppIconUnchanged = v4;
  bundleId.isPredefinedPopularApp = HIBYTE(v4);
  return bundleId;
}

Swift::Void __swiftcall MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.send()()
{
  v1 = v0;
  v2 = (v0 >> 8) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A55C0;
  *(inited + 32) = 0x4449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(NSString);

  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithString:v6];

  *(inited + 48) = v7;
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x80000001002AF1B0;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:v1 & 1];
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001002AF1D0;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithBool:v2];
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  swift_arrayDestroy();
  *(v4 + 16) = v8;
  v9 = String._bridgeToObjectiveC()();
  aBlock[4] = partial apply for closure #1 in MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.send();
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_26;
  v10 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

unint64_t specialized MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100174D04()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for closure #1 in MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.send()()
{
  specialized closure #1 in MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.send()(v0);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields and conformance MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields and conformance MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields and conformance MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields and conformance MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.EventFields);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MOSuggestionAssetMediaAnalytics.MediaEngagementEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MOSuggestionAssetMediaAnalytics.MediaEngagementEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized closure #1 in MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.send()(uint64_t a1)
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.assets);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    swift_beginAccess();
    type metadata accessor for NSObject();

    v7 = Dictionary.debugDescription.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v12);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Media Suggestion Analytics] result=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  swift_beginAccess();
  return *(a1 + 16);
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

id MOSuggestionActivityRingsAssetView.energyLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_energyLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionActivityRingsAssetView.energyLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_energyLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void closure #1 in variable initialization expression of MOSuggestionActivityRingsAssetView.exerciseMinuteLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    if (one-time initialization token for exerciseGreen != -1)
    {
      swift_once();
    }

    [v0 setTextColor:static MOSuggestionTheme.Colors.exerciseGreen];
    [v0 setTextAlignment:0];
  }

  else
  {
    __break(1u);
  }
}

id MOSuggestionActivityRingsAssetView.exerciseMinuteLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_exerciseMinuteLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionActivityRingsAssetView.exerciseMinuteLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_exerciseMinuteLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void closure #1 in variable initialization expression of MOSuggestionActivityRingsAssetView.energyLabel(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v7 = [v6 fontDescriptor];
  v8 = [v7 fontDescriptorWithSymbolicTraits:2];

  if (v8)
  {
    v9 = [v5 fontWithDescriptor:v8 size:0.0];

    [v4 setFont:v9];
    v10 = String._bridgeToObjectiveC()();
    v11 = objc_opt_self();
    v12 = [v11 colorNamed:v10];

    if (!v12)
    {
      v12 = [v11 *a3];
    }

    [v4 setTextColor:v12];

    [v4 setTextAlignment:0];
  }

  else
  {
    __break(1u);
  }
}

id MOSuggestionActivityRingsAssetView.standLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_standLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionActivityRingsAssetView.standLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_standLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOSuggestionActivityRingsAssetView.labelStackView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_labelStackView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionActivityRingsAssetView.labelStackView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_labelStackView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOSuggestionActivityRingsAssetView.init(activitySummary:currentSizeType:frame:)(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v13 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_energyLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityRingsAssetView.energyLabel(0x6B6E695065766F6DLL, 0xE800000000000000, &selRef_systemPinkColor);
  *&v6[v13] = v14;
  v15 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_exerciseMinuteLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityRingsAssetView.exerciseMinuteLabel();
  *&v6[v15] = v16;
  v17 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_standLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityRingsAssetView.energyLabel(0x65636E6174736964, 0xEC00000065756C42, &selRef_systemBlueColor);
  *&v6[v17] = v18;
  v19 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_labelStackView;
  v20 = [objc_allocWithZone(UIStackView) init];
  [v20 setAxis:1];
  [v20 setSpacing:2.0];
  [v20 setAlignment:1];
  [v20 setDistribution:3];
  *&v6[v19] = v20;
  *&v6[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_activitySummary] = a1;
  v6[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_currentSizeType] = a2;
  v25.receiver = v6;
  v25.super_class = type metadata accessor for MOSuggestionActivityRingsAssetView();
  v21 = a1;
  v22 = objc_msgSendSuper2(&v25, "initWithFrame:", a3, a4, a5, a6);
  v23 = [v22 setContentMode:{1, v25.receiver, v25.super_class}];
  (*((swift_isaMask & *v22) + 0xE8))(v23);

  return v22;
}

Swift::Void __swiftcall MOSuggestionActivityRingsAssetView.makeUIView()()
{
  v1 = v0;
  v2 = [objc_opt_self() blackColor];
  [v0 setBackgroundColor:v2];

  v3 = [objc_allocWithZone(HKActivityRingView) init];
  v4 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_activitySummary);
  [v3 setActivitySummary:v4 animated:1];
  [v0 addSubview:v3];
  v5 = [v3 superview];
  if (v5)
  {
    v6 = v5;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v3 leadingAnchor];
    v8 = [v6 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    [v9 setConstant:8.0];
    [v9 setActive:1];
  }

  v10 = [v3 superview];
  if (v10)
  {
    v11 = v10;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v3 topAnchor];
    v13 = [v11 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:8.0];
    [v14 setActive:1];
  }

  v148 = *((swift_isaMask & *v1) + 0x80);
  v15 = v148();
  v16 = [v4 activeEnergyBurned];
  v17 = objc_opt_self();
  v18 = [v17 largeCalorieUnit];
  [v16 doubleValueForUnit:v18];
  v20 = v19;
  v21 = v19;

  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_72;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v149._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v149._object = v22;
  v23._countAndFlagsBits = 47;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24 = [v4 activeEnergyBurnedGoal];
  v25 = [v17 largeCalorieUnit];
  [v24 doubleValueForUnit:v25];
  v27 = v26;

  v28 = round(v27);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 4997443;
  v30._object = 0xE300000000000000;
  String.append(_:)(v30);
  v31 = objc_opt_self();
  v32 = [v31 mainBundle];
  v152._object = 0x80000001002B6E30;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v152._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v149, 0, v32, v33, v152);

  v34 = String._bridgeToObjectiveC()();

  [v15 setText:v34];

  v35 = [v4 exerciseTimeGoal];
  if (!v35)
  {
    goto LABEL_19;
  }

  v36 = v35;
  [v35 _value];
  v38 = v37;

  v39 = (*((swift_isaMask & *v1) + 0x98))();
  v40 = [v4 appleExerciseTime];
  [v40 _value];
  v42 = v41;
  v43 = v41;

  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_77;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v42 >= 9.22337204e18)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v150._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v150._object = v44;
  v45._countAndFlagsBits = 47;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  v47._countAndFlagsBits = 5130573;
  v47._object = 0xE300000000000000;
  String.append(_:)(v47);
  v48 = [v31 mainBundle];
  v153._object = 0x80000001002B6E50;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v153._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v150, 0, v48, v49, v153);

  v50 = String._bridgeToObjectiveC()();

  [v39 setText:v50];

LABEL_19:
  v51 = [v4 standHoursGoal];
  if (!v51)
  {
    goto LABEL_27;
  }

  v52 = v51;
  [v51 _value];
  v54 = v53;

  v55 = (*((swift_isaMask & *v1) + 0xB0))();
  v56 = [v4 appleStandHours];
  [v56 _value];
  v58 = v57;
  v59 = v57;

  if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_81;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v151._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v151._object = v60;
  v61._countAndFlagsBits = 47;
  v61._object = 0xE100000000000000;
  String.append(_:)(v61);
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v54 < 9.22337204e18)
  {
    v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v62);

    v63._countAndFlagsBits = 1397901344;
    v63._object = 0xE400000000000000;
    String.append(_:)(v63);
    v64 = [v31 mainBundle];
    v154._countAndFlagsBits = 0xD000000000000013;
    v154._object = 0x80000001002B6E70;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v151, 0, v64, v65, v154);

    v66 = String._bridgeToObjectiveC()();

    [v55 setText:v66];

LABEL_27:
    v67 = *(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_currentSizeType);
    if (((1 << v67) & 6) != 0)
    {
      v78 = *((swift_isaMask & *v1) + 0xC8);
      v79 = v78();
      v80 = v148();
      [v79 addArrangedSubview:v80];

      v81 = v78();
      v82 = (*((swift_isaMask & *v1) + 0xB0))();
      [v81 addArrangedSubview:v82];

      v83 = v78();
      v84 = (*((swift_isaMask & *v1) + 0x98))();
      [v83 addArrangedSubview:v84];

      v85 = v78();
      [v1 addSubview:v85];

      v86 = [v3 superview];
      if (v86)
      {
        v87 = v86;
        [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
        v88 = [v3 bottomAnchor];
        v89 = [v87 bottomAnchor];
        v90 = [v88 constraintEqualToAnchor:v89];

        if (v90)
        {
          [v90 setConstant:-8.0];
          [v90 setActive:1];
        }
      }

      v91 = v78();
      [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
      v92 = [v91 leadingAnchor];
      v93 = [v3 trailingAnchor];
      v94 = [v92 constraintEqualToAnchor:v93];

      [v94 setConstant:8.0];
      [v94 setActive:1];

      v95 = v78();
      v96 = [v95 superview];
      if (v96)
      {
        v97 = v96;
        [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
        v98 = [v95 topAnchor];
        v99 = [v97 topAnchor];
        v100 = [v98 constraintEqualToAnchor:v99];

        [v100 setConstant:8.0];
        if (v100)
        {
          [v100 setActive:1];
        }
      }

      else
      {
        v100 = 0;
        v97 = v95;
      }

      v127 = v78();
      v128 = [v127 superview];
      if (v128)
      {
        v129 = v128;
        [v127 setTranslatesAutoresizingMaskIntoConstraints:0];
        v130 = [v127 bottomAnchor];
        v131 = [v129 bottomAnchor];
        v132 = [v130 constraintEqualToAnchor:v131];

        if (v132)
        {
          [v132 setConstant:-8.0];
          [v132 setActive:1];
        }
      }

      else
      {
        v129 = v127;
      }

      if (v67 == 2)
      {
        v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

        p_align = (&stru_100327FE8 + 24);
        if ((v133 & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      else
      {

        p_align = &stru_100327FE8.align;
      }

      v77 = (v78)(v134);
      [v77 setTranslatesAutoresizingMaskIntoConstraints:0];
      v136 = [v77 leadingAnchor];
      v137 = [v3 trailingAnchor];
      v74 = [v136 *(p_align + 278)];

      [v74 setConstant:12.0];
      [v74 setActive:1];
    }

    else if (((1 << v67) & 0x18) != 0)
    {
      v68 = [v3 superview];
      if (v68)
      {
        v69 = v68;
        [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
        v70 = [v3 bottomAnchor];
        v71 = [v69 bottomAnchor];
        v72 = [v70 constraintEqualToAnchor:v71];

        if (v72)
        {
          [v72 setConstant:-8.0];
          [v72 setActive:1];
        }
      }

      v73 = [v3 superview];
      if (!v73)
      {
        goto LABEL_70;
      }

      v74 = v73;
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v75 = [v3 trailingAnchor];
      v76 = [v74 trailingAnchor];
      v77 = [v75 constraintEqualToAnchor:v76];

      [v77 setConstant:-8.0];
      [v77 setActive:1];
    }

    else
    {
      v101 = *((swift_isaMask & *v1) + 0xC8);
      v102 = v101();
      v103 = v148();
      [v102 addArrangedSubview:v103];

      v104 = v101();
      v105 = (*((swift_isaMask & *v1) + 0x98))();
      [v104 addArrangedSubview:v105];

      v106 = v101();
      v107 = (*((swift_isaMask & *v1) + 0xB0))();
      [v106 addArrangedSubview:v107];

      v108 = v101();
      [v1 addSubview:v108];

      [v1 frame];
      v110 = v109 * 0.5;
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v111 = [v3 widthAnchor];
      v112 = [v111 constraintEqualToConstant:v110];

      [v112 setActive:1];
      [v1 frame];
      v114 = v113 * 0.5;
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v115 = [v3 heightAnchor];
      v116 = [v115 constraintEqualToConstant:v114];

      [v116 setActive:1];
      v117 = v101();
      [v117 setTranslatesAutoresizingMaskIntoConstraints:0];
      v118 = [v117 topAnchor];
      v119 = [v3 bottomAnchor];
      v120 = [v118 constraintEqualToAnchor:v119];

      [v120 setConstant:8.0];
      [v120 setActive:1];

      v121 = v101();
      v122 = [v121 superview];
      if (v122)
      {
        v123 = v122;
        [v121 setTranslatesAutoresizingMaskIntoConstraints:0];
        v124 = [v121 leadingAnchor];
        v125 = [v123 leadingAnchor];
        v126 = [v124 constraintEqualToAnchor:v125];

        [v126 setConstant:12.0];
        if (v126)
        {
          [v126 setActive:1];
        }
      }

      else
      {
        v126 = 0;
        v123 = v121;
      }

      v138 = v101();
      v139 = [v138 superview];
      if (v139)
      {
        v140 = v139;
        [v138 setTranslatesAutoresizingMaskIntoConstraints:0];
        v141 = [v138 trailingAnchor];
        v142 = [v140 trailingAnchor];
        v143 = [v141 constraintEqualToAnchor:v142];

        [v143 setConstant:-12.0];
        if (v143)
        {
          [v143 setActive:1];
        }
      }

      else
      {
        v143 = 0;
        v140 = v138;
      }

      v77 = v101();
      v144 = [v77 superview];
      if (!v144)
      {
        goto LABEL_69;
      }

      v74 = v144;
      [v77 setTranslatesAutoresizingMaskIntoConstraints:0];
      v145 = [v77 bottomAnchor];
      v146 = [v74 bottomAnchor];
      v147 = [v145 constraintEqualToAnchor:v146];

      if (v147)
      {
        [v147 setConstant:-12.0];
        [v147 setActive:1];
      }
    }

    v77 = v3;
    v3 = v74;
LABEL_69:

LABEL_70:
    return;
  }

LABEL_88:
  __break(1u);
}

id MOSuggestionActivityRingsAssetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionActivityRingsAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized MOSuggestionActivityRingsAssetView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_energyLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityRingsAssetView.energyLabel(0x6B6E695065766F6DLL, 0xE800000000000000, &selRef_systemPinkColor);
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_exerciseMinuteLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityRingsAssetView.exerciseMinuteLabel();
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_standLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityRingsAssetView.energyLabel(0x65636E6174736964, 0xEC00000065756C42, &selRef_systemBlueColor);
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRingsAssetView_labelStackView;
  v8 = [objc_allocWithZone(UIStackView) init];
  [v8 setAxis:1];
  [v8 setSpacing:2.0];
  [v8 setAlignment:1];
  [v8 setDistribution:3];
  *(v0 + v7) = v8;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001773B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_100177474@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_100177534@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_1001775F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall TaskProgressReporter.reportProgress(itemCount:)(Swift::UInt itemCount)
{
  v3 = (*(*v1 + 104))(v5);
  if (__CFADD__(*v4, itemCount))
  {
    __break(1u);
  }

  else
  {
    *v4 += itemCount;
    v3(v5, 0);
  }
}

uint64_t TaskProgressReporter.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t TaskProgressReporter.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t TaskProcessorManager.activeWorkers.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t TaskProcessorManager.registeredWorkerTypes.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

void TaskProcessorManager.registerProcessorOfType<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a3;
  v10 = *(a3 + 32);
  v57 = a2;
  v58 = a1;
  v56 = v10;
  v59 = v10(a2, a3);
  swift_beginAccess();
  v11 = *(v4 + 120);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v16 = 0;
  while (v14)
  {
LABEL_9:
    v18 = (*(v11 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
    v20 = *v18;
    v19 = v18[1];
    if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v21)
    {

LABEL_17:

      type metadata accessor for CommonLogger();
      v28 = v54;
      static CommonLogger.processing.getter();
      v29 = static os_log_type_t.fault.getter();
      v30 = Logger.logObject.getter();
      v31 = os_log_type_enabled(v30, v29);
      v26 = v57;
      v25 = v58;
      v32 = v56;
      if (v31)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v51 = v34;
        *v33 = 136315394;
        v35 = v59;
        v60 = v59;
        v61[0] = v34;
        type metadata accessor for MOTaskWork(0);
        v50 = v29;
        v36 = v35;
        v37 = String.init<A>(describing:)();
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v61);

        *(v33 + 4) = v39;
        *(v33 + 12) = 2080;
        v60 = v25;
        swift_getMetatypeMetadata();
        v40 = String.init<A>(describing:)();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v61);

        *(v33 + 14) = v42;
        _os_log_impl(&_mh_execute_header, v30, v50, "Duplicate registration for task processor work value: %s, type: %s", v33, 0x16u);
        swift_arrayDestroy();

        (*(v52 + 8))(v54, v53);
      }

      else
      {

        (*(v52 + 8))(v28, v53);
      }

      v24 = v55;
      v27 = v32(v26, v55);
LABEL_21:
      v43 = v27;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = swift_allocObject();
      v47[2] = v26;
      v47[3] = v24;
      v47[4] = v25;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = *(v4 + 120);
      *(v4 + 120) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for implicit closure #3 in TaskProcessorManager.registerProcessorOfType<A>(_:), v47, v44, v46, isUniquelyReferenced_nonNull_native);

      *(v4 + 120) = v60;
      swift_endAccess();

      return;
    }

    v14 &= v14 - 1;
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {

      goto LABEL_17;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      v24 = v55;
      v26 = v57;
      v25 = v58;
      v27 = v56(v57, v55);
      goto LABEL_21;
    }

    v14 = *(v11 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void TaskProcessorManager.registerProcessorWorkerTypes<each A>(_:)(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
    v6 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v7 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v11 = *v7++;
      v10 = v11;
      v12 = *a1++;
      TaskProcessorManager.registerProcessorOfType<A>(_:)(*v12, v8, v10);
      --v4;
    }

    while (v4);
  }
}

uint64_t TaskProcessorManager.beginTask(task:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for UUID();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(TaskProcessorManager.beginTask(task:), v2, 0);
}

uint64_t TaskProcessorManager.beginTask(task:)()
{
  v1 = v0[20];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  swift_beginAccess();
  v5 = *(v1 + 120);
  if (*(v5 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v4);
    v8 = v7;

    if (v8)
    {
      v9 = *(v5 + 56) + 16 * v6;
      v10 = *v9;
      v0[25] = *(v9 + 8);
      swift_endAccess();

      v10(v11);
      v18 = v0[5];
      v19 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v18);
      v21 = (*(v19 + 8) + **(v19 + 8));
      v20 = swift_task_alloc();
      v0[26] = v20;
      *v20 = v0;
      v20[1] = TaskProcessorManager.beginTask(task:);

      return v21(v18, v19);
    }
  }

  else
  {
  }

  v12 = v0[19];
  swift_endAccess();
  v13 = type metadata accessor for MUIProcessingError();
  lazy protocol witness table accessor for type MUIProcessingError and conformance MUIProcessingError();
  swift_allocError();
  *v14 = v12;
  (*(*(v13 - 8) + 104))(v14, enum case for MUIProcessingError.InvalidTaskWork(_:), v13);
  swift_willThrow();
  v15 = v12;

  v16 = v0[1];

  return v16();
}

{
  UUID.init()();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {

    goto LABEL_8;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
LABEL_8:
    v7 = v0[23];
    (*(v0[22] + 16))(v7, v0[24], v0[21]);
    outlined init with copy of MOProtectedAppsManagerDelegate((v0 + 2), (v0 + 7));
    swift_beginAccess();
    specialized Dictionary.subscript.setter((v0 + 7), v7);
    swift_endAccess();
  }

  (*(v0[22] + 32))(v0[18], v0[24], v0[21]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v8 = v0[1];
  v9 = v0[27];

  return v8(v9);
}

{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TaskProcessorManager.beginTask(task:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v5 = *(v3 + 160);
  if (v1)
  {
    v6 = TaskProcessorManager.beginTask(task:);
  }

  else
  {
    v6 = TaskProcessorManager.beginTask(task:);
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t TaskProcessorManager.continueTask(taskTokenId:)(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = type metadata accessor for UUID();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(TaskProcessorManager.continueTask(taskTokenId:), v1, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 248) = a1;
  *(v4 + 256) = v1;

  v5 = *(v3 + 200);
  if (v1)
  {
    v6 = TaskProcessorManager.continueTask(taskTokenId:);
  }

  else
  {
    v6 = TaskProcessorManager.continueTask(taskTokenId:);
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t TaskProcessorManager.continueTask(taskTokenId:)()
{
  v1 = v0[25];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v0[24]), (v4 & 1) != 0))
  {
    outlined init with copy of MOProtectedAppsManagerDelegate(*(v2 + 56) + 40 * v3, (v0 + 7));
    outlined init with take of URLBasedAsset(v0 + 7, v0 + 2);
    swift_endAccess();
    type metadata accessor for TaskProgressReporter();
    v5 = swift_allocObject();
    v0[29] = v5;
    *(v5 + 16) = 0;
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v6);
    v17 = (*(v7 + 16) + **(v7 + 16));
    v8 = swift_task_alloc();
    v0[30] = v8;
    *v8 = v0;
    v8[1] = TaskProcessorManager.continueTask(taskTokenId:);

    return v17(v5, v6, v7);
  }

  else
  {
    v10 = v0[26];
    v11 = v0[27];
    v12 = v0[24];
    swift_endAccess();
    v13 = type metadata accessor for MUIProcessingError();
    lazy protocol witness table accessor for type MUIProcessingError and conformance MUIProcessingError();
    swift_allocError();
    v15 = v14;
    (*(v11 + 16))(v14, v12, v10);
    (*(*(v13 - 8) + 104))(v15, enum case for MUIProcessingError.InvalidTaskToken(_:), v13);
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

{
  v15 = v0;
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      v7 = v0[28];
      (*(v0[27] + 16))(v7, v0[24], v0[26]);
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v13, v7);
      swift_endAccess();
    }
  }

  v8 = v0[29];
  swift_beginAccess();
  v9 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:*(v8 + 16)];

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v10 = v0[1];
  v11 = v0[31];

  return v10(v11, v9);
}

{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TaskProcessorManager.endTask(taskTokenId:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for UUID();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(TaskProcessorManager.endTask(taskTokenId:), v1, 0);
}

{
  v4 = *v2;
  v4[24] = v1;

  v5 = v4[19];
  if (v1)
  {
    v6 = TaskProcessorManager.endTask(taskTokenId:);
  }

  else
  {
    v4[25] = a1;
    v6 = TaskProcessorManager.endTask(taskTokenId:);
  }

  return _swift_task_switch(v6, v5, 0);
}