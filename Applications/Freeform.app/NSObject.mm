@interface NSObject
+ (BOOL)crl_object:(id)crl_object isEqualToObject:(id)object;
- (BOOL)_crlaxRespondsToSelector:(SEL)selector fromExtrasProtocol:(id)protocol skipAssertions:(BOOL)assertions;
- (BOOL)_crlaxValidateArgumentCountForSelector:(SEL)selector expected:(unint64_t)expected;
- (BOOL)crlaxBoolValueForKey:(id)key;
- (BOOL)crlaxIsDescendantOfElement:(id)element;
- (CGAffineTransform)crlaxCGAffineTransformValueForKey:(SEL)key;
- (CGPoint)crlaxCGPointValueForKey:(id)key;
- (CGRect)crlaxCGRectValueForKey:(id)key;
- (CGSize)crlaxCGSizeValueForKey:(id)key;
- (UIView)crlaxAncestorView;
- (_NSRange)crlaxRangeValueForKey:(id)key;
- (double)crlaxDoubleValueForKey:(id)key;
- (float)crlaxFloatValueForKey:(id)key;
- (id)_crlaxElementAccessibilityChildren;
- (id)_crlaxValidatedValueForKey:(id)key expectedClass:(Class)class possibleExpectedTypeEncodings:(const char *)encodings;
- (id)crl_addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (id)crlaxAncestorOfType:(Class)type;
- (id)crlaxChildren;
- (id)crlaxFindDescendantPassingTest:(id)test;
- (id)crlaxPerformSelector:(SEL)selector;
- (id)crlaxPerformSelector:(SEL)selector withObject:(id)object;
- (id)crlaxPerformSelector:(SEL)selector withObject:(id)object withObject:(id)withObject;
- (id)crlaxPerformSelectorFromString:(id)string;
- (id)crlaxPerformSelectorFromString:(id)string withObject:(id)object;
- (id)crlaxPerformSelectorFromString:(id)string withObject:(id)object withObject:(id)withObject;
- (id)crlaxViewAncestorOfType:(Class)type;
- (int)crlaxIntValueForKey:(id)key;
- (int64_t)crlaxIntegerValueForKey:(id)key;
- (unint64_t)crlaxUnsignedIntegerValueForKey:(id)key;
- (unsigned)crlaxUnsignedIntValueForKey:(id)key;
- (void)crl_performSelector:(SEL)selector withValue:(id)value;
- (void)crl_removeObserverForToken:(id)token;
- (void)crl_runBlock;
- (void)crlaxAccessibilityUnregister;
- (void)crlaxHandleTextOperationAction:(id)action usingBlock:(id)block;
- (void)crlaxInvalidateChildren;
- (void)crlaxSetIsSpeakThisElement:(BOOL)element;
- (void)crlaxStructValue:(void *)value forKey:(id)key ofExpectedType:(const char *)type fallbackValue:(const void *)fallbackValue;
@end

@implementation NSObject

- (void)crl_runBlock
{
  v2 = objc_retainBlock(self);
  (v2[2].isa)();
}

- (id)_crlaxValidatedValueForKey:(id)key expectedClass:(Class)class possibleExpectedTypeEncodings:(const char *)encodings
{
  v8 = [self crlaxValueForKey:?];
  if (v8)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_101A34808 != -1)
      {
        sub_10132DE3C();
      }

      if (byte_101A34800 != 1)
      {
        return 0;
      }

      if (qword_101A34828 != -1)
      {
        sub_10132DE50();
      }

      v12 = byte_101A34820;
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      NSStringFromClass(class);
      v14 = objc_opt_class();
      NSStringFromClass(v14);
      if (!__CRLAccessibilityHandleValidationErrorWithDescription(v12, 0, @"Value for key %@ on object <%@: %p> is not an %@; class: %@; value: %@", v15, v16, v17, v18, v19, key))
      {
        return 0;
      }

      goto LABEL_34;
    }

    if (encodings)
    {
      objCType = [v8 objCType];
      if (strcmp(objCType, encodings))
      {
        v10 = 0;
        v31 = &v33;
        while (1)
        {
          v11 = v31++;
          if (!*v11)
          {
            break;
          }

          if ((v10 & 1) == 0)
          {
            v10 = 1;
          }

          if (!strcmp(objCType, *v11))
          {
            return v8;
          }
        }

        if (qword_101A34808 != -1)
        {
          sub_10132DE64();
        }

        if (byte_101A34800 != 1)
        {
          return 0;
        }

        if (v10)
        {
          encodings = [[NSMutableString alloc] initWithFormat:@"%s", encodings];
          v32 = &v34;
          for (i = v33; i; i = *v23)
          {
            [encodings appendFormat:@", %s", i];
            v23 = v32++;
          }

          [encodings UTF8String];
          if (qword_101A34808 != -1)
          {
            sub_10132DE64();
          }
        }

        else
        {
          encodings = 0;
        }

        if (byte_101A34800 != 1)
        {
          goto LABEL_32;
        }

        if (qword_101A34828 != -1)
        {
          sub_10132DE8C();
        }

        v24 = byte_101A34820;
        v25 = objc_opt_class();
        NSStringFromClass(v25);
        if (!__CRLAccessibilityHandleValidationErrorWithDescription(v24, 0, @"Value for key %@ on object <%@: %p> doesn't encapsulate the right type; value: %@; actual type encoding: %s; %s: %s.", v26, v27, v28, v29, v30, key))
        {
LABEL_32:

          return 0;
        }

LABEL_34:
        abort();
      }
    }
  }

  return v8;
}

- (BOOL)crlaxBoolValueForKey:(id)key
{
  v3 = [self _crlaxValidatedValueForKey:key expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"i", "c", "B", 0];

  return [v3 BOOLValue];
}

- (int)crlaxIntValueForKey:(id)key
{
  v3 = [self _crlaxValidatedValueForKey:key expectedClass:objc_opt_class() expectedTypeEncoding:"i"];

  return [v3 intValue];
}

- (unsigned)crlaxUnsignedIntValueForKey:(id)key
{
  v3 = [self _crlaxValidatedValueForKey:key expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"i", "I", 0];

  return [v3 unsignedIntValue];
}

- (int64_t)crlaxIntegerValueForKey:(id)key
{
  v3 = [self _crlaxValidatedValueForKey:key expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"q", 0];

  return [v3 integerValue];
}

- (unint64_t)crlaxUnsignedIntegerValueForKey:(id)key
{
  v3 = [self _crlaxValidatedValueForKey:key expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"Q", "q", "Q", 0];

  return [v3 unsignedIntegerValue];
}

- (float)crlaxFloatValueForKey:(id)key
{
  v3 = [self _crlaxValidatedValueForKey:key expectedClass:objc_opt_class() expectedTypeEncoding:"f"];

  [v3 floatValue];
  return result;
}

- (double)crlaxDoubleValueForKey:(id)key
{
  v3 = [self _crlaxValidatedValueForKey:key expectedClass:objc_opt_class() expectedTypeEncoding:"d"];

  [v3 doubleValue];
  return result;
}

- (_NSRange)crlaxRangeValueForKey:(id)key
{
  v3 = [self _crlaxValidatedValueForKey:key expectedClass:objc_opt_class() expectedTypeEncoding:"{_NSRange=QQ}"];

  rangeValue = [v3 rangeValue];
  result.length = v5;
  result.location = rangeValue;
  return result;
}

- (CGPoint)crlaxCGPointValueForKey:(id)key
{
  v3 = [self _crlaxValidatedValueForKey:key expectedClass:objc_opt_class() expectedTypeEncoding:"{CGPoint=dd}"];

  [v3 CGPointValue];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)crlaxCGSizeValueForKey:(id)key
{
  v3 = [self _crlaxValidatedValueForKey:key expectedClass:objc_opt_class() expectedTypeEncoding:"{CGSize=dd}"];

  [v3 CGSizeValue];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)crlaxCGRectValueForKey:(id)key
{
  v3 = [self _crlaxValidatedValueForKey:key expectedClass:objc_opt_class() expectedTypeEncoding:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  [v3 CGRectValue];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGAffineTransform)crlaxCGAffineTransformValueForKey:(SEL)key
{
  result = [self _crlaxValidatedValueForKey:a4 expectedClass:objc_opt_class() expectedTypeEncoding:"{CGAffineTransform=dddddd}"];
  if (result)
  {

    return [(CGAffineTransform *)result CGAffineTransformValue];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)crlaxStructValue:(void *)value forKey:(id)key ofExpectedType:(const char *)type fallbackValue:(const void *)fallbackValue
{
  v9 = [self _crlaxValidatedValueForKey:key expectedClass:objc_opt_class() expectedTypeEncoding:type];
  if (v9)
  {

    [v9 getValue:value];
  }

  else
  {
    sizep = 0;
    NSGetSizeAndAlignment(type, &sizep, 0);
    memmove(value, fallbackValue, sizep);
  }
}

- (void)crlaxAccessibilityUnregister
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1002B4514;
  v2[3] = &unk_10183AB38;
  v2[4] = self;
  if (__CRLAccessibilityPerformSafeBlock(v2))
  {
    abort();
  }
}

- (UIView)crlaxAncestorView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self crlaxAncestorOfType:objc_opt_class()];
  }

  return selfCopy;
}

- (id)crlaxAncestorOfType:(Class)type
{
  v3 = [self crlaxValueForKey:@"accessibilityContainer"];
  if (v3)
  {
    v4 = v3;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [v4 crlaxValueForKey:@"accessibilityContainer"];

      v4 = v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v6 = v4;
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (id)crlaxViewAncestorOfType:(Class)type
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    superview = [self superview];
    if (superview)
    {
      do
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v4Superview = [superview superview];

        superview = v4Superview;
      }

      while (v4Superview);
    }
  }

  else
  {
    superview = 0;
  }

  return superview;
}

- (BOOL)crlaxIsDescendantOfElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    selfCopy = self;
    v6 = selfCopy;
    v7 = selfCopy != 0;
    if (selfCopy != elementCopy && selfCopy)
    {
      do
      {
        v8 = v6;
        v6 = [v6 crlaxValueForKey:@"accessibilityContainer"];

        v7 = v6 != 0;
      }

      while (v6 != elementCopy && v6 != 0);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)crlaxFindDescendantPassingTest:(id)test
{
  testCopy = test;
  v5 = objc_opt_new();
  [v5 addObject:self];
  while ([v5 count])
  {
    lastObject = [v5 lastObject];
    [v5 removeLastObject];
    if (testCopy[2](testCopy, lastObject))
    {
      v7 = lastObject;
    }

    else
    {
      accessibilityElementCount = [lastObject accessibilityElementCount];
      if ((accessibilityElementCount - 1) > 0x7FFFFFFFFFFFFFFDLL)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          subviews = [lastObject subviews];
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_1002B493C;
          v13[3] = &unk_1018516B8;
          v14 = v5;
          [subviews enumerateObjectsWithOptions:2 usingBlock:v13];
        }
      }

      else
      {
        v9 = (accessibilityElementCount + 1);
        do
        {
          v10 = [lastObject accessibilityElementAtIndex:v9 - 2];
          if (v10)
          {
            [v5 addObject:v10];
          }

          --v9;
        }

        while (v9 > 1);
      }

      v7 = 0;
    }

    if (v7)
    {
      goto LABEL_17;
    }
  }

  v7 = 0;
LABEL_17:

  return v7;
}

- (id)crlaxChildren
{
  if ([self _crlaxIsBuildingChildrenCache])
  {
    v3 = 0;
  }

  else
  {
    [self _crlaxSetBuildingChildrenCache:1];
    if ([self conformsToProtocol:&OBJC_PROTOCOL___CRLAccessibilityContainer])
    {
      _crlaxChildrenCache = [self _crlaxChildrenCache];
      v5 = [_crlaxChildrenCache copy];

      if (!v5)
      {
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![self crlaxIsReadyToLoadChildren])
        {
          v5 = 0;
        }

        else
        {
          v5 = objc_opt_new();
          if (objc_opt_respondsToSelector())
          {
            crlaxShouldCacheChildren = [self crlaxShouldCacheChildren];
          }

          else
          {
            crlaxShouldCacheChildren = 1;
          }

          v12 = objc_autoreleasePoolPush();
          [self crlaxLoadChildrenIntoCollection:v5];
          if ((objc_opt_respondsToSelector() & 1) != 0 && [self crlaxShouldSortChildrenUsingStandardAlgorithm])
          {
            [v5 sortUsingSelector:NSSelectorFromString(@"accessibilityCompareGeometry:")];
          }

          objc_autoreleasePoolPop(v12);
          if (crlaxShouldCacheChildren)
          {
            [self _crlaxSetChildrenCache:v5];
          }
        }
      }

      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v3 = v5;
      v6 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v3);
            }

            [*(*(&v13 + 1) + 8 * i) setAccessibilityContainer:{self, v13}];
          }

          v7 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }

    else
    {
      v3 = 0;
    }

    [self _crlaxSetBuildingChildrenCache:0, v13];
  }

  return v3;
}

- (void)crlaxInvalidateChildren
{
  v3 = [self conformsToProtocol:&OBJC_PROTOCOL___CRLAccessibilityContainer];
  if (v3)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([self crlaxShouldCacheChildren]& 1) == 0)
    {
      crlaxChildren = [self crlaxChildren];
    }

    else
    {
      crlaxChildren = [self _crlaxChildrenCache];
    }
  }

  else
  {
    crlaxChildren = [self _crlaxElementAccessibilityChildren];
  }

  v5 = crlaxChildren;
  v6 = [crlaxChildren copy];

  if (v6)
  {
    v7 = objc_opt_respondsToSelector();
    v22 = 0;
    selfCopy = self;
    v9 = __CRLAccessibilityCastAsProtocol(&OBJC_PROTOCOL___CRLAccessibilityContainer, selfCopy, 1, &v22);
    if (v22 == 1)
    {
      abort();
    }

    v10 = v9;

    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      v15 = v3 & v7;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v18 + 1) + 8 * i);
          if (v15)
          {
            [v10 crlaxChildWillBeRemoved:{*(*(&v18 + 1) + 8 * i), v18}];
          }

          [v17 crlaxInvalidateChildren];
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v13);
    }

    if (v3)
    {
      [selfCopy _crlaxSetChildrenCache:0];
      if (objc_opt_respondsToSelector())
      {
        [v10 crlaxDidInvalidateChildren];
      }
    }
  }
}

- (id)_crlaxElementAccessibilityChildren
{
  if ([self isAccessibilityElement])
  {
    goto LABEL_2;
  }

  if ([self crlaxBoolValueForKey:@"_accessibilityHasOrderedChildren"])
  {
    v11 = 0;
    v4 = [self crlaxValueForKey:@"accessibilityElements"];
    v5 = objc_opt_class();
    v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v11);
    v7 = v11;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      v3 = 0;
      goto LABEL_9;
    }

    v10 = 0;
    v4 = [self crlaxValueForKey:@"_accessibilitySubviews"];
    v8 = objc_opt_class();
    v6 = __CRLAccessibilityCastAsClass(v8, v4, 1, &v10);
    v7 = v10;
  }

  if (v7 == 1)
  {
    abort();
  }

  v3 = v6;

LABEL_9:

  return v3;
}

- (void)crlaxHandleTextOperationAction:(id)action usingBlock:(id)block
{
  actionCopy = action;
  blockCopy = block;
  if (blockCopy)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    if (v7 <= *&qword_101A34A78 + 0.2)
    {
      blockCopy[2](blockCopy);
    }

    else
    {
      qword_101A34A78 = *&v7;
      blockCopy[2](blockCopy);
      v8 = +[UIPasteboard generalPasteboard];
      string = [v8 string];

      if ([string length])
      {
        v10 = string;
        if ([actionCopy length])
        {
          v11 = CRLAccessibilityGetUIKitLocalizedString(actionCopy);
          v18 = __CRLAccessibilityStringForVariables(1, v10, v12, v13, v14, v15, v16, v17, v11);

          v10 = v18;
        }

        CRLAccessibilityPostHighPriorityAnnouncementNotification(self, v10);
      }
    }
  }
}

- (void)crlaxSetIsSpeakThisElement:(BOOL)element
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1002B5080;
  v3[3] = &unk_10183C3C8;
  v3[4] = self;
  elementCopy = element;
  if (__CRLAccessibilityPerformSafeBlock(v3))
  {
    abort();
  }
}

- (void)crl_performSelector:(SEL)selector withValue:(id)value
{
  valueCopy = value;
  v7 = [self methodSignatureForSelector:selector];
  v8 = v7;
  if (v7)
  {
    if ([v7 numberOfArguments] != 3)
    {
      v15 = objc_opt_class();
      v16 = NSStringFromSelector(selector);
      v17 = [NSString stringWithFormat:@"*** [%@ %@] does not take one argument.", v15, v16];
      v18 = [NSException exceptionWithName:NSInvalidArgumentException reason:v17 userInfo:0];
      v19 = v18;

      objc_exception_throw(v18);
    }

    v9 = [v8 getArgumentTypeAtIndex:2];
    while (2)
    {
      switch(*v9)
      {
        case '@':
          goto LABEL_8;
        case 'A':
        case 'D':
        case 'E':
        case 'F':
        case 'G':
        case 'H':
        case 'J':
        case 'K':
        case 'M':
        case 'P':
        case 'T':
        case 'U':
        case 'W':
        case 'X':
        case 'Y':
        case 'Z':
        case '[':
        case '\\':
        case ']':
        case '_':
        case 'a':
        case 'b':
        case 'e':
        case 'g':
        case 'h':
        case 'j':
        case 'k':
        case 'm':
        case 'p':
          goto LABEL_9;
        case 'B':
          bOOLValue = [valueCopy BOOLValue];
          goto LABEL_27;
        case 'C':
          bOOLValue = [valueCopy unsignedCharValue];
          goto LABEL_27;
        case 'I':
          bOOLValue = [valueCopy unsignedIntValue];
          goto LABEL_27;
        case 'L':
          bOOLValue = [valueCopy unsignedLongValue];
          goto LABEL_27;
        case 'N':
        case 'O':
        case 'R':
        case 'V':
        case 'n':
        case 'o':
        case 'r':
          ++v9;
          continue;
        case 'Q':
          bOOLValue = [valueCopy unsignedLongLongValue];
          goto LABEL_27;
        case 'S':
          bOOLValue = [valueCopy unsignedShortValue];
          goto LABEL_27;
        case '^':
          bOOLValue = [valueCopy pointerValue];
          goto LABEL_27;
        case 'c':
          bOOLValue = [valueCopy charValue];
          goto LABEL_27;
        case 'd':
          [valueCopy doubleValue];
          [self selector];
          goto LABEL_28;
        case 'f':
          [valueCopy floatValue];
          [self selector];
          goto LABEL_28;
        case 'i':
          bOOLValue = [valueCopy intValue];
          goto LABEL_27;
        case 'l':
          bOOLValue = [valueCopy longValue];
          goto LABEL_27;
        case 'q':
          bOOLValue = [valueCopy longLongValue];
          goto LABEL_27;
        case 's':
          bOOLValue = [valueCopy shortValue];
LABEL_27:
          [self selector];
          break;
        default:
          if (*v9 == 35)
          {
LABEL_8:
            [self selector];
          }

          else
          {
LABEL_9:
            objCType = [valueCopy objCType];
            if (!objCType || (v11 = objCType, strcmp(v9, objCType)))
            {
              v20 = objc_opt_class();
              v21 = NSStringFromSelector(selector);
              valueCopy = [NSString stringWithFormat:@"*** [%@ %@] first argument type does not match type of %@.", v20, v21, valueCopy];
              v23 = [NSException exceptionWithName:NSInvalidArgumentException reason:valueCopy userInfo:0];
              v24 = v23;

              objc_exception_throw(v23);
            }

            v12 = [NSInvocation invocationWithMethodSignature:v8];
            [v12 setTarget:self];
            [v12 setSelector:selector];
            sizep = 0;
            NSGetSizeAndAlignment(v11, &sizep, 0);
            v13 = malloc_type_malloc(sizep, 0xC7300880uLL);
            [valueCopy getValue:v13];
            [v12 setArgument:v13 atIndex:2];
            [v12 invoke];
            free(v13);
          }

          break;
      }

      break;
    }
  }

  else
  {
    [self doesNotRecognizeSelector:selector];
  }

LABEL_28:
}

+ (BOOL)crl_object:(id)crl_object isEqualToObject:(id)object
{
  crl_objectCopy = crl_object;
  objectCopy = object;
  v7 = objectCopy;
  if (crl_objectCopy == objectCopy)
  {
    v9 = 1;
  }

  else
  {
    if (crl_objectCopy)
    {
      objectCopy = crl_objectCopy;
      v8 = v7;
    }

    else
    {
      if (!objectCopy)
      {
        v9 = 0;
        goto LABEL_8;
      }

      v8 = 0;
    }

    v9 = [objectCopy isEqual:v8];
  }

LABEL_8:

  return v9;
}

- (id)crl_addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  observerCopy = observer;
  pathCopy = path;
  v12 = [[CRLKVOToken alloc] initWithObserver:observerCopy target:self keyPath:pathCopy context:context];
  v13 = objc_getAssociatedObject(self, off_1019EF210);
  if (!v13)
  {
    v14 = [NSMutableSet setWithObjects:v12, 0];
    objc_setAssociatedObject(self, off_1019EF210, v14, 1);
LABEL_9:
    [self addObserver:observerCopy forKeyPath:pathCopy options:options context:context];
    goto LABEL_10;
  }

  v14 = v13;
  if (([v13 containsObject:v12] & 1) == 0)
  {
    [v14 addObject:v12];
    goto LABEL_9;
  }

  if (qword_101AD5A08 != -1)
  {
    sub_10134B5E8();
  }

  v15 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413058;
    v18 = observerCopy;
    v19 = 2112;
    selfCopy = self;
    v21 = 2112;
    v22 = pathCopy;
    v23 = 2048;
    contextCopy = context;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ is already observing %@ for key path %@ using context %p", buf, 0x2Au);
  }

LABEL_10:

  return v12;
}

- (void)crl_removeObserverForToken:(id)token
{
  tokenCopy = token;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, tokenCopy);

  if (v6)
  {
    target = [v6 target];

    if (target != self)
    {
      v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134B5FC();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134B610(self, v8, v9);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134B6CC();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v10, v8);
      }

      v11 = [NSString stringWithUTF8String:"[NSObject(CRLAdditions) crl_removeObserverForToken:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSObject_CRLAdditions.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:203 isFatal:0 description:"Attempted to stop key-value observing on %@ using a token that it was not associated with", self];
    }

    v13 = objc_getAssociatedObject(self, off_1019EF210);
    if ([v13 containsObject:v6])
    {
      target2 = [v6 target];
      observer = [v6 observer];
      keyPath = [v6 keyPath];
      [target2 removeObserver:observer forKeyPath:keyPath context:{objc_msgSend(v6, "context")}];

      [v13 removeObject:v6];
    }
  }
}

- (BOOL)_crlaxRespondsToSelector:(SEL)selector fromExtrasProtocol:(id)protocol skipAssertions:(BOOL)assertions
{
  protocolCopy = protocol;
  if (!assertions)
  {
    ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks();
    if (!selector)
    {
      if (ShouldPerformValidationChecks)
      {
        ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
        if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Selector can't be null.", v14, v15, v16, v17, v18, v45))
        {
          goto LABEL_23;
        }
      }
    }

    v19 = CRLAccessibilityShouldPerformValidationChecks();
    if (!protocolCopy)
    {
      if (v19)
      {
        v20 = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
        if (!__CRLAccessibilityHandleValidationErrorWithDescription(v20, 0, @"Protocol can't be null.", v21, v22, v23, v24, v25, v45))
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }
    }
  }

  v9 = 0;
  if (!selector || !protocolCopy)
  {
    goto LABEL_22;
  }

  name = protocol_getMethodDescription(protocolCopy, selector, 1, 1).name;
  v11 = [self conformsToProtocol:protocolCopy];
  v9 = v11;
  if (!assertions)
  {
    if ((name == 0) | ((CRLAccessibilityShouldPerformValidationChecks() & 1) == 0) | v11 & 1 || (v26 = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(), v27 = objc_opt_class(), NSStringFromClass(v27), v28 = objc_claimAutoreleasedReturnValue(), NSStringFromProtocol(protocolCopy), v46 = objc_claimAutoreleasedReturnValue(), v34 = __CRLAccessibilityHandleValidationErrorWithDescription(v26, 0, @"<%@: %p> doesn't conform to the protocol: %@", v29, v30, v31, v32, v33, v28), v46, v28, !v34))
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

      v9 = objc_opt_respondsToSelector();
      if (!CRLAccessibilityShouldPerformValidationChecks() || !name || (v9 & 1) != 0)
      {
        goto LABEL_22;
      }

      v35 = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v47 = NSStringFromSelector(selector);
      v43 = __CRLAccessibilityHandleValidationErrorWithDescription(v35, 0, @"<%@: %p> doesn't respond to the following abstract method: %@", v38, v39, v40, v41, v42, v37);

      if (!v43)
      {
LABEL_21:
        v9 = 0;
        goto LABEL_22;
      }
    }

LABEL_23:
    abort();
  }

  if (v11)
  {
    v9 = objc_opt_respondsToSelector();
  }

LABEL_22:

  return v9 & 1;
}

- (id)crlaxPerformSelectorFromString:(id)string
{
  v4 = NSSelectorFromString(string);

  return [self crlaxPerformSelector:v4];
}

- (id)crlaxPerformSelectorFromString:(id)string withObject:(id)object
{
  objectCopy = object;
  v7 = [self crlaxPerformSelector:NSSelectorFromString(string) withObject:objectCopy];

  return v7;
}

- (id)crlaxPerformSelectorFromString:(id)string withObject:(id)object withObject:(id)withObject
{
  withObjectCopy = withObject;
  objectCopy = object;
  v10 = [self crlaxPerformSelector:NSSelectorFromString(string) withObject:objectCopy withObject:withObjectCopy];

  return v10;
}

- (id)crlaxPerformSelector:(SEL)selector
{
  if ([self _crlaxValidateResponseToSelector:?]&& [self _crlaxValidateArgumentCountForSelector:selector expected:0])
  {
    v5 = ([self methodForSelector:selector])(self, selector);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)crlaxPerformSelector:(SEL)selector withObject:(id)object
{
  objectCopy = object;
  if ([self _crlaxValidateResponseToSelector:selector]&& [self _crlaxValidateArgumentCountForSelector:selector expected:1])
  {
    v7 = ([self methodForSelector:selector])(self, selector, objectCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)crlaxPerformSelector:(SEL)selector withObject:(id)object withObject:(id)withObject
{
  objectCopy = object;
  withObjectCopy = withObject;
  if ([self _crlaxValidateResponseToSelector:selector]&& [self _crlaxValidateArgumentCountForSelector:selector expected:2])
  {
    v10 = ([self methodForSelector:selector])(self, selector, objectCopy, withObjectCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_crlaxValidateArgumentCountForSelector:(SEL)selector expected:(unint64_t)expected
{
  v5 = [self methodSignatureForSelector:selector];
  LOBYTE(expected) = [v5 numberOfArguments] - 2 == expected;

  return expected;
}

@end