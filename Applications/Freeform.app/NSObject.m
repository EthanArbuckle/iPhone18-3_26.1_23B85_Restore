@interface NSObject
+ (BOOL)crl_object:(id)a3 isEqualToObject:(id)a4;
- (BOOL)_crlaxRespondsToSelector:(SEL)a3 fromExtrasProtocol:(id)a4 skipAssertions:(BOOL)a5;
- (BOOL)_crlaxValidateArgumentCountForSelector:(SEL)a3 expected:(unint64_t)a4;
- (BOOL)crlaxBoolValueForKey:(id)a3;
- (BOOL)crlaxIsDescendantOfElement:(id)a3;
- (CGAffineTransform)crlaxCGAffineTransformValueForKey:(SEL)a3;
- (CGPoint)crlaxCGPointValueForKey:(id)a3;
- (CGRect)crlaxCGRectValueForKey:(id)a3;
- (CGSize)crlaxCGSizeValueForKey:(id)a3;
- (UIView)crlaxAncestorView;
- (_NSRange)crlaxRangeValueForKey:(id)a3;
- (double)crlaxDoubleValueForKey:(id)a3;
- (float)crlaxFloatValueForKey:(id)a3;
- (id)_crlaxElementAccessibilityChildren;
- (id)_crlaxValidatedValueForKey:(id)a3 expectedClass:(Class)a4 possibleExpectedTypeEncodings:(const char *)a5;
- (id)crl_addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (id)crlaxAncestorOfType:(Class)a3;
- (id)crlaxChildren;
- (id)crlaxFindDescendantPassingTest:(id)a3;
- (id)crlaxPerformSelector:(SEL)a3;
- (id)crlaxPerformSelector:(SEL)a3 withObject:(id)a4;
- (id)crlaxPerformSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
- (id)crlaxPerformSelectorFromString:(id)a3;
- (id)crlaxPerformSelectorFromString:(id)a3 withObject:(id)a4;
- (id)crlaxPerformSelectorFromString:(id)a3 withObject:(id)a4 withObject:(id)a5;
- (id)crlaxViewAncestorOfType:(Class)a3;
- (int)crlaxIntValueForKey:(id)a3;
- (int64_t)crlaxIntegerValueForKey:(id)a3;
- (unint64_t)crlaxUnsignedIntegerValueForKey:(id)a3;
- (unsigned)crlaxUnsignedIntValueForKey:(id)a3;
- (void)crl_performSelector:(SEL)a3 withValue:(id)a4;
- (void)crl_removeObserverForToken:(id)a3;
- (void)crl_runBlock;
- (void)crlaxAccessibilityUnregister;
- (void)crlaxHandleTextOperationAction:(id)a3 usingBlock:(id)a4;
- (void)crlaxInvalidateChildren;
- (void)crlaxSetIsSpeakThisElement:(BOOL)a3;
- (void)crlaxStructValue:(void *)a3 forKey:(id)a4 ofExpectedType:(const char *)a5 fallbackValue:(const void *)a6;
@end

@implementation NSObject

- (void)crl_runBlock
{
  v2 = objc_retainBlock(self);
  (v2[2].isa)();
}

- (id)_crlaxValidatedValueForKey:(id)a3 expectedClass:(Class)a4 possibleExpectedTypeEncodings:(const char *)a5
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
      NSStringFromClass(a4);
      v14 = objc_opt_class();
      NSStringFromClass(v14);
      if (!__CRLAccessibilityHandleValidationErrorWithDescription(v12, 0, @"Value for key %@ on object <%@: %p> is not an %@; class: %@; value: %@", v15, v16, v17, v18, v19, a3))
      {
        return 0;
      }

      goto LABEL_34;
    }

    if (a5)
    {
      v9 = [v8 objCType];
      if (strcmp(v9, a5))
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

          if (!strcmp(v9, *v11))
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
          v21 = [[NSMutableString alloc] initWithFormat:@"%s", a5];
          v32 = &v34;
          for (i = v33; i; i = *v23)
          {
            [v21 appendFormat:@", %s", i];
            v23 = v32++;
          }

          [v21 UTF8String];
          if (qword_101A34808 != -1)
          {
            sub_10132DE64();
          }
        }

        else
        {
          v21 = 0;
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
        if (!__CRLAccessibilityHandleValidationErrorWithDescription(v24, 0, @"Value for key %@ on object <%@: %p> doesn't encapsulate the right type; value: %@; actual type encoding: %s; %s: %s.", v26, v27, v28, v29, v30, a3))
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

- (BOOL)crlaxBoolValueForKey:(id)a3
{
  v3 = [self _crlaxValidatedValueForKey:a3 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"i", "c", "B", 0];

  return [v3 BOOLValue];
}

- (int)crlaxIntValueForKey:(id)a3
{
  v3 = [self _crlaxValidatedValueForKey:a3 expectedClass:objc_opt_class() expectedTypeEncoding:"i"];

  return [v3 intValue];
}

- (unsigned)crlaxUnsignedIntValueForKey:(id)a3
{
  v3 = [self _crlaxValidatedValueForKey:a3 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"i", "I", 0];

  return [v3 unsignedIntValue];
}

- (int64_t)crlaxIntegerValueForKey:(id)a3
{
  v3 = [self _crlaxValidatedValueForKey:a3 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"q", 0];

  return [v3 integerValue];
}

- (unint64_t)crlaxUnsignedIntegerValueForKey:(id)a3
{
  v3 = [self _crlaxValidatedValueForKey:a3 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"Q", "q", "Q", 0];

  return [v3 unsignedIntegerValue];
}

- (float)crlaxFloatValueForKey:(id)a3
{
  v3 = [self _crlaxValidatedValueForKey:a3 expectedClass:objc_opt_class() expectedTypeEncoding:"f"];

  [v3 floatValue];
  return result;
}

- (double)crlaxDoubleValueForKey:(id)a3
{
  v3 = [self _crlaxValidatedValueForKey:a3 expectedClass:objc_opt_class() expectedTypeEncoding:"d"];

  [v3 doubleValue];
  return result;
}

- (_NSRange)crlaxRangeValueForKey:(id)a3
{
  v3 = [self _crlaxValidatedValueForKey:a3 expectedClass:objc_opt_class() expectedTypeEncoding:"{_NSRange=QQ}"];

  v4 = [v3 rangeValue];
  result.length = v5;
  result.location = v4;
  return result;
}

- (CGPoint)crlaxCGPointValueForKey:(id)a3
{
  v3 = [self _crlaxValidatedValueForKey:a3 expectedClass:objc_opt_class() expectedTypeEncoding:"{CGPoint=dd}"];

  [v3 CGPointValue];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)crlaxCGSizeValueForKey:(id)a3
{
  v3 = [self _crlaxValidatedValueForKey:a3 expectedClass:objc_opt_class() expectedTypeEncoding:"{CGSize=dd}"];

  [v3 CGSizeValue];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)crlaxCGRectValueForKey:(id)a3
{
  v3 = [self _crlaxValidatedValueForKey:a3 expectedClass:objc_opt_class() expectedTypeEncoding:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  [v3 CGRectValue];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGAffineTransform)crlaxCGAffineTransformValueForKey:(SEL)a3
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

- (void)crlaxStructValue:(void *)a3 forKey:(id)a4 ofExpectedType:(const char *)a5 fallbackValue:(const void *)a6
{
  v9 = [self _crlaxValidatedValueForKey:a4 expectedClass:objc_opt_class() expectedTypeEncoding:a5];
  if (v9)
  {

    [v9 getValue:a3];
  }

  else
  {
    sizep = 0;
    NSGetSizeAndAlignment(a5, &sizep, 0);
    memmove(a3, a6, sizep);
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
    v3 = self;
  }

  else
  {
    v3 = [self crlaxAncestorOfType:objc_opt_class()];
  }

  return v3;
}

- (id)crlaxAncestorOfType:(Class)a3
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

- (id)crlaxViewAncestorOfType:(Class)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [self superview];
    if (v4)
    {
      do
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v5 = [v4 superview];

        v4 = v5;
      }

      while (v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)crlaxIsDescendantOfElement:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    v6 = v5;
    v7 = v5 != 0;
    if (v5 != v4 && v5)
    {
      do
      {
        v8 = v6;
        v6 = [v6 crlaxValueForKey:@"accessibilityContainer"];

        v7 = v6 != 0;
      }

      while (v6 != v4 && v6 != 0);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)crlaxFindDescendantPassingTest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 addObject:self];
  while ([v5 count])
  {
    v6 = [v5 lastObject];
    [v5 removeLastObject];
    if (v4[2](v4, v6))
    {
      v7 = v6;
    }

    else
    {
      v8 = [v6 accessibilityElementCount];
      if ((v8 - 1) > 0x7FFFFFFFFFFFFFFDLL)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v6 subviews];
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_1002B493C;
          v13[3] = &unk_1018516B8;
          v14 = v5;
          [v11 enumerateObjectsWithOptions:2 usingBlock:v13];
        }
      }

      else
      {
        v9 = (v8 + 1);
        do
        {
          v10 = [v6 accessibilityElementAtIndex:v9 - 2];
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
      v4 = [self _crlaxChildrenCache];
      v5 = [v4 copy];

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
            v11 = [self crlaxShouldCacheChildren];
          }

          else
          {
            v11 = 1;
          }

          v12 = objc_autoreleasePoolPush();
          [self crlaxLoadChildrenIntoCollection:v5];
          if ((objc_opt_respondsToSelector() & 1) != 0 && [self crlaxShouldSortChildrenUsingStandardAlgorithm])
          {
            [v5 sortUsingSelector:NSSelectorFromString(@"accessibilityCompareGeometry:")];
          }

          objc_autoreleasePoolPop(v12);
          if (v11)
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
      v4 = [self crlaxChildren];
    }

    else
    {
      v4 = [self _crlaxChildrenCache];
    }
  }

  else
  {
    v4 = [self _crlaxElementAccessibilityChildren];
  }

  v5 = v4;
  v6 = [v4 copy];

  if (v6)
  {
    v7 = objc_opt_respondsToSelector();
    v22 = 0;
    v8 = self;
    v9 = __CRLAccessibilityCastAsProtocol(&OBJC_PROTOCOL___CRLAccessibilityContainer, v8, 1, &v22);
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
      [v8 _crlaxSetChildrenCache:0];
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

- (void)crlaxHandleTextOperationAction:(id)a3 usingBlock:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (v6)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    if (v7 <= *&qword_101A34A78 + 0.2)
    {
      v6[2](v6);
    }

    else
    {
      qword_101A34A78 = *&v7;
      v6[2](v6);
      v8 = +[UIPasteboard generalPasteboard];
      v9 = [v8 string];

      if ([v9 length])
      {
        v10 = v9;
        if ([v19 length])
        {
          v11 = CRLAccessibilityGetUIKitLocalizedString(v19);
          v18 = __CRLAccessibilityStringForVariables(1, v10, v12, v13, v14, v15, v16, v17, v11);

          v10 = v18;
        }

        CRLAccessibilityPostHighPriorityAnnouncementNotification(self, v10);
      }
    }
  }
}

- (void)crlaxSetIsSpeakThisElement:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1002B5080;
  v3[3] = &unk_10183C3C8;
  v3[4] = self;
  v4 = a3;
  if (__CRLAccessibilityPerformSafeBlock(v3))
  {
    abort();
  }
}

- (void)crl_performSelector:(SEL)a3 withValue:(id)a4
{
  v6 = a4;
  v7 = [self methodSignatureForSelector:a3];
  v8 = v7;
  if (v7)
  {
    if ([v7 numberOfArguments] != 3)
    {
      v15 = objc_opt_class();
      v16 = NSStringFromSelector(a3);
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
          v14 = [v6 BOOLValue];
          goto LABEL_27;
        case 'C':
          v14 = [v6 unsignedCharValue];
          goto LABEL_27;
        case 'I':
          v14 = [v6 unsignedIntValue];
          goto LABEL_27;
        case 'L':
          v14 = [v6 unsignedLongValue];
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
          v14 = [v6 unsignedLongLongValue];
          goto LABEL_27;
        case 'S':
          v14 = [v6 unsignedShortValue];
          goto LABEL_27;
        case '^':
          v14 = [v6 pointerValue];
          goto LABEL_27;
        case 'c':
          v14 = [v6 charValue];
          goto LABEL_27;
        case 'd':
          [v6 doubleValue];
          [self a3];
          goto LABEL_28;
        case 'f':
          [v6 floatValue];
          [self a3];
          goto LABEL_28;
        case 'i':
          v14 = [v6 intValue];
          goto LABEL_27;
        case 'l':
          v14 = [v6 longValue];
          goto LABEL_27;
        case 'q':
          v14 = [v6 longLongValue];
          goto LABEL_27;
        case 's':
          v14 = [v6 shortValue];
LABEL_27:
          [self a3];
          break;
        default:
          if (*v9 == 35)
          {
LABEL_8:
            [self a3];
          }

          else
          {
LABEL_9:
            v10 = [v6 objCType];
            if (!v10 || (v11 = v10, strcmp(v9, v10)))
            {
              v20 = objc_opt_class();
              v21 = NSStringFromSelector(a3);
              v22 = [NSString stringWithFormat:@"*** [%@ %@] first argument type does not match type of %@.", v20, v21, v6];
              v23 = [NSException exceptionWithName:NSInvalidArgumentException reason:v22 userInfo:0];
              v24 = v23;

              objc_exception_throw(v23);
            }

            v12 = [NSInvocation invocationWithMethodSignature:v8];
            [v12 setTarget:self];
            [v12 setSelector:a3];
            sizep = 0;
            NSGetSizeAndAlignment(v11, &sizep, 0);
            v13 = malloc_type_malloc(sizep, 0xC7300880uLL);
            [v6 getValue:v13];
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
    [self doesNotRecognizeSelector:a3];
  }

LABEL_28:
}

+ (BOOL)crl_object:(id)a3 isEqualToObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    if (v5)
    {
      v6 = v5;
      v8 = v7;
    }

    else
    {
      if (!v6)
      {
        v9 = 0;
        goto LABEL_8;
      }

      v8 = 0;
    }

    v9 = [v6 isEqual:v8];
  }

LABEL_8:

  return v9;
}

- (id)crl_addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [[CRLKVOToken alloc] initWithObserver:v10 target:self keyPath:v11 context:a6];
  v13 = objc_getAssociatedObject(self, off_1019EF210);
  if (!v13)
  {
    v14 = [NSMutableSet setWithObjects:v12, 0];
    objc_setAssociatedObject(self, off_1019EF210, v14, 1);
LABEL_9:
    [self addObserver:v10 forKeyPath:v11 options:a5 context:a6];
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
    v18 = v10;
    v19 = 2112;
    v20 = self;
    v21 = 2112;
    v22 = v11;
    v23 = 2048;
    v24 = a6;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ is already observing %@ for key path %@ using context %p", buf, 0x2Au);
  }

LABEL_10:

  return v12;
}

- (void)crl_removeObserverForToken:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  if (v6)
  {
    v7 = [v6 target];

    if (v7 != self)
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
      v14 = [v6 target];
      v15 = [v6 observer];
      v16 = [v6 keyPath];
      [v14 removeObserver:v15 forKeyPath:v16 context:{objc_msgSend(v6, "context")}];

      [v13 removeObject:v6];
    }
  }
}

- (BOOL)_crlaxRespondsToSelector:(SEL)a3 fromExtrasProtocol:(id)a4 skipAssertions:(BOOL)a5
{
  v8 = a4;
  if (!a5)
  {
    ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks();
    if (!a3)
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
    if (!v8)
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
  if (!a3 || !v8)
  {
    goto LABEL_22;
  }

  name = protocol_getMethodDescription(v8, a3, 1, 1).name;
  v11 = [self conformsToProtocol:v8];
  v9 = v11;
  if (!a5)
  {
    if ((name == 0) | ((CRLAccessibilityShouldPerformValidationChecks() & 1) == 0) | v11 & 1 || (v26 = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(), v27 = objc_opt_class(), NSStringFromClass(v27), v28 = objc_claimAutoreleasedReturnValue(), NSStringFromProtocol(v8), v46 = objc_claimAutoreleasedReturnValue(), v34 = __CRLAccessibilityHandleValidationErrorWithDescription(v26, 0, @"<%@: %p> doesn't conform to the protocol: %@", v29, v30, v31, v32, v33, v28), v46, v28, !v34))
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
      v47 = NSStringFromSelector(a3);
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

- (id)crlaxPerformSelectorFromString:(id)a3
{
  v4 = NSSelectorFromString(a3);

  return [self crlaxPerformSelector:v4];
}

- (id)crlaxPerformSelectorFromString:(id)a3 withObject:(id)a4
{
  v6 = a4;
  v7 = [self crlaxPerformSelector:NSSelectorFromString(a3) withObject:v6];

  return v7;
}

- (id)crlaxPerformSelectorFromString:(id)a3 withObject:(id)a4 withObject:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [self crlaxPerformSelector:NSSelectorFromString(a3) withObject:v9 withObject:v8];

  return v10;
}

- (id)crlaxPerformSelector:(SEL)a3
{
  if ([self _crlaxValidateResponseToSelector:?]&& [self _crlaxValidateArgumentCountForSelector:a3 expected:0])
  {
    v5 = ([self methodForSelector:a3])(self, a3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)crlaxPerformSelector:(SEL)a3 withObject:(id)a4
{
  v6 = a4;
  if ([self _crlaxValidateResponseToSelector:a3]&& [self _crlaxValidateArgumentCountForSelector:a3 expected:1])
  {
    v7 = ([self methodForSelector:a3])(self, a3, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)crlaxPerformSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([self _crlaxValidateResponseToSelector:a3]&& [self _crlaxValidateArgumentCountForSelector:a3 expected:2])
  {
    v10 = ([self methodForSelector:a3])(self, a3, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_crlaxValidateArgumentCountForSelector:(SEL)a3 expected:(unint64_t)a4
{
  v5 = [self methodSignatureForSelector:a3];
  LOBYTE(a4) = [v5 numberOfArguments] - 2 == a4;

  return a4;
}

@end