@interface NSObject
- (BOOL)_imaxRespondsToSelector:(SEL)selector fromExtrasProtocol:(id)protocol skipAssertions:(BOOL)assertions;
- (BOOL)imaxBoolValueForKey:(id)key;
- (CGPoint)imaxCGPointValueForKey:(id)key;
- (CGRect)imaxCGRectValueForKey:(id)key;
- (CGSize)imaxCGSizeValueForKey:(id)key;
- (_NSRange)imaxRangeValueForKey:(id)key;
- (double)imaxDoubleValueForKey:(id)key;
- (float)imaxFloatValueForKey:(id)key;
- (id)_accessibilityFindDescendant:(id)descendant;
- (id)_imaxValidatedValueForKey:(id)key expectedClass:(Class)class possibleExpectedTypeEncodings:(const char *)encodings;
- (id)im_completeDescription;
- (id)im_propertiesDescription;
- (id)im_recursiveDescriptionChildrenBlock:(id)block;
- (id)imaxAncestorIsKindOf:(Class)of;
- (id)imaxDescendentOfType:(Class)type;
- (id)imaxElementIsAncestor:(id)ancestor;
- (id)imaxFindAncestor:(id)ancestor;
- (id)imaxValueForKey:(id)key;
- (int)imaxIntValueForKey:(id)key;
- (int64_t)imaxIntegerValueForKey:(id)key;
- (unint64_t)imaxUnsignedIntegerValueForKey:(id)key;
- (unsigned)imaxUnsignedIntValueForKey:(id)key;
@end

@implementation NSObject

- (id)imaxFindAncestor:(id)ancestor
{
  ancestorCopy = ancestor;
  v5 = [self imaxValueForKey:@"accessibilityContainer"];
  if (v5)
  {
    do
    {
      if (ancestorCopy[2](ancestorCopy, v5))
      {
        break;
      }

      v6 = [v5 imaxValueForKey:@"accessibilityContainer"];

      v5 = v6;
    }

    while (v6);
  }

  return v5;
}

- (id)imaxElementIsAncestor:(id)ancestor
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_42FB8;
  v7[3] = &unk_2C9640;
  ancestorCopy = ancestor;
  v4 = ancestorCopy;
  v5 = [self imaxFindAncestor:v7];

  return v5;
}

- (id)imaxAncestorIsKindOf:(Class)of
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_43048;
  v5[3] = &unk_2C9660;
  v5[4] = of;
  v3 = [self imaxFindAncestor:v5];

  return v3;
}

- (id)_accessibilityFindDescendant:(id)descendant
{
  descendantCopy = descendant;
  v5 = [objc_allocWithZone(NSMutableArray) init];
  [v5 addObject:self];
  if ([v5 count])
  {
    while (1)
    {
      lastObject = [v5 lastObject];
      [v5 removeLastObject];
      if (descendantCopy[2](descendantCopy, lastObject))
      {
        break;
      }

      accessibilityElementCount = [lastObject accessibilityElementCount];
      if ((accessibilityElementCount - 1) > 0x7FFFFFFFFFFFFFFDLL)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          subviews = [lastObject subviews];
          reverseObjectEnumerator = [subviews reverseObjectEnumerator];
          allObjects = [reverseObjectEnumerator allObjects];

          v13 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v19;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v19 != v15)
                {
                  objc_enumerationMutation(allObjects);
                }

                [v5 addObject:*(*(&v18 + 1) + 8 * i)];
              }

              v14 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
            }

            while (v14);
          }
        }
      }

      else
      {
        v8 = (accessibilityElementCount + 1);
        do
        {
          v9 = [lastObject accessibilityElementAtIndex:v8 - 2];
          if (v9)
          {
            [v5 addObject:v9];
          }

          --v8;
        }

        while (v8 > 1);
      }

      if (![v5 count])
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    lastObject = 0;
  }

  return lastObject;
}

- (id)imaxDescendentOfType:(Class)type
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_43320;
  v5[3] = &unk_2C9660;
  v5[4] = type;
  v3 = [self _accessibilityFindDescendant:v5];

  return v3;
}

- (id)im_propertiesDescription
{
  outCount = 0;
  v2 = objc_opt_class();
  v18 = class_copyPropertyList(v2, &outCount);
  if (v18)
  {
    if (outCount)
    {
      v3 = 0;
      v4 = &stru_2D2930;
      while (1)
      {
        v5 = [NSString stringWithCString:property_getName(v18[v3]) encoding:1];
        if ([(NSString *)v5 isEqualToString:@"description"]|| [(NSString *)v5 isEqualToString:@"debugDescription"])
        {
          v6 = &stru_2D2930;
        }

        else
        {
          NSSelectorFromString(v5);
          v6 = @"<not implemented>";
          if (objc_opt_respondsToSelector())
          {
            v6 = [self valueForKey:v5];
          }
        }

        v7 = objc_opt_class();
        v28[0] = objc_opt_class();
        v28[1] = objc_opt_class();
        v28[2] = objc_opt_class();
        v8 = [NSArray arrayWithObjects:v28 count:3];
        v27[0] = objc_opt_class();
        v27[1] = objc_opt_class();
        v27[2] = objc_opt_class();
        v27[3] = objc_opt_class();
        v9 = [NSArray arrayWithObjects:v27 count:4];
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        v25 = 0;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_74B98;
        v19[3] = &unk_2CA818;
        v21 = &v22;
        v10 = v6;
        v20 = v10;
        v11 = objc_retainBlock(v19);
        v12 = v11;
        if (!v10)
        {
          *(v23 + 6) = 1;
        }

        if ((v11[2])(v11, v8))
        {
          *(v23 + 6) = 1;
        }

        else
        {
          if ((v12)[2](v12, v9))
          {
            *(v23 + 6) = 2;
LABEL_19:
            v13 = [(__CFString *)v4 stringByAppendingFormat:@"\t%@ = <%@: %p> {%ld objects}", v5, v7, v10, [(__CFString *)v10 count]];
            goto LABEL_20;
          }

          v14 = *(v23 + 6);
          if (v14 == 2)
          {
            goto LABEL_19;
          }

          if (v14 != 1)
          {
            v13 = [(__CFString *)v4 stringByAppendingFormat:@"\t%@ = <%@: %p>", v5, v7, v10];
            goto LABEL_20;
          }
        }

        v13 = [(__CFString *)v4 stringByAppendingFormat:@"\t%@ = %@", v5, v10];
LABEL_20:
        v15 = v13;

        if (v3 >= outCount - 1)
        {
          v4 = v15;
        }

        else
        {
          v4 = [(__CFString *)v15 stringByAppendingString:@", \n"];
        }

        _Block_object_dispose(&v22, 8);
        if (++v3 >= outCount)
        {
          goto LABEL_27;
        }
      }
    }

    v4 = &stru_2D2930;
LABEL_27:
    free(v18);
  }

  else
  {
    v4 = &stru_2D2930;
  }

  return v4;
}

- (id)im_completeDescription
{
  v3 = [objc_opt_class() superclass];
  InstanceMethod = class_getInstanceMethod(v3, "description");
  Implementation = method_getImplementation(InstanceMethod);
  v6 = (Implementation)(self, "description");
  im_propertiesDescription = [self im_propertiesDescription];
  if ([im_propertiesDescription length])
  {
    v8 = [v6 stringByAppendingFormat:@"{\n%@\n}", im_propertiesDescription];

    v6 = v8;
  }

  return v6;
}

- (id)im_recursiveDescriptionChildrenBlock:(id)block
{
  blockCopy = block;
  v5 = [self description];
  v33 = [NSMutableString stringWithString:v5];

  v6 = +[NSMutableString string];
  v7 = blockCopy[2](blockCopy, self);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = [v12 im_recursiveDescriptionChildrenBlock:blockCopy];
        [v6 appendString:v13];

        lastObject = [v7 lastObject];

        if (v12 != lastObject)
        {
          [v6 appendString:@"\n"];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v9);
  }

  v32 = v7;
  v34 = blockCopy;
  v15 = +[NSCharacterSet newlineCharacterSet];
  v16 = [v6 componentsSeparatedByCharactersInSet:v15];

  v17 = +[NSMutableString string];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v35 + 1) + 8 * j);
        v24 = +[NSCharacterSet whitespaceCharacterSet];
        v25 = [v23 stringByTrimmingCharactersInSet:v24];
        v26 = [v25 length];

        if (v26)
        {
          [v17 appendFormat:@"\t%@", v23];
          lastObject2 = [v18 lastObject];

          if (v23 != lastObject2)
          {
            [v17 appendString:@"\n"];
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v20);
  }

  v28 = +[NSCharacterSet whitespaceCharacterSet];
  v29 = [v17 stringByTrimmingCharactersInSet:v28];
  v30 = [v29 length];

  if (v30)
  {
    [v33 appendFormat:@"\n%@", v17];
  }

  return v33;
}

- (id)_imaxValidatedValueForKey:(id)key expectedClass:(Class)class possibleExpectedTypeEncodings:(const char *)encodings
{
  keyCopy = key;
  v9 = [self imaxValueForKey:keyCopy];
  if (v9)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_345F18 != -1)
      {
        sub_1EB088();
      }

      if (byte_345F10 != 1)
      {
        goto LABEL_17;
      }

      if (qword_345F38 != -1)
      {
        sub_1EB09C();
      }

      v13 = byte_345F30;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromClass(class);
      v17 = objc_opt_class();
      v37 = NSStringFromClass(v17);
      v23 = __IMAccessibilityHandleValidationErrorWithDescription(v13, 0, @"Value for key %@ on object <%@: %p> is not an %@; class: %@; value: %@", v18, v19, v20, v21, v22, keyCopy);

      if (!v23)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }

    if (encodings)
    {
      objCType = [v9 objCType];
      if (strcmp(objCType, encodings))
      {
        v11 = 0;
        v38 = &v41;
        while (1)
        {
          v12 = v38++;
          if (!*v12)
          {
            break;
          }

          if ((v11 & 1) == 0)
          {
            v11 = 1;
          }

          if (!strcmp(objCType, *v12))
          {
            goto LABEL_18;
          }
        }

        if (qword_345F18 != -1)
        {
          sub_1EB0B0();
        }

        if (byte_345F10 != 1)
        {
          goto LABEL_17;
        }

        if (v11)
        {
          encodings = [[NSMutableString alloc] initWithFormat:@"%s", encodings];
          v39 = &v42;
          for (i = v41; i; i = *v27)
          {
            [encodings appendFormat:@", %s", i];
            v27 = v39++;
          }

          [encodings UTF8String];
          if (qword_345F18 != -1)
          {
            sub_1EB0B0();
          }
        }

        else
        {
          encodings = 0;
        }

        if (byte_345F10 != 1)
        {
          goto LABEL_34;
        }

        if (qword_345F38 != -1)
        {
          sub_1EB0D8();
        }

        v28 = byte_345F30;
        v29 = objc_opt_class();
        v36 = NSStringFromClass(v29);
        v35 = __IMAccessibilityHandleValidationErrorWithDescription(v28, 0, @"Value for key %@ on object <%@: %p> doesn't encapsulate the right type; value: %@; actual type encoding: %s; %s: %s.", v30, v31, v32, v33, v34, keyCopy);

        if (!v35)
        {
LABEL_34:

LABEL_17:
          v9 = 0;
          goto LABEL_18;
        }

LABEL_36:
        abort();
      }
    }
  }

LABEL_18:

  return v9;
}

- (id)imaxValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self valueForKey:keyCopy];

  return v5;
}

- (BOOL)imaxBoolValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _imaxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"i", "c", "B", 0];

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (int)imaxIntValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _imaxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"i"];

  intValue = [v5 intValue];
  return intValue;
}

- (unsigned)imaxUnsignedIntValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _imaxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"i", "I", 0];

  unsignedIntValue = [v5 unsignedIntValue];
  return unsignedIntValue;
}

- (int64_t)imaxIntegerValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _imaxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"q", 0];

  integerValue = [v5 integerValue];
  return integerValue;
}

- (unint64_t)imaxUnsignedIntegerValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _imaxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"Q", "q", "Q", 0];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (float)imaxFloatValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _imaxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"f"];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (double)imaxDoubleValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _imaxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"d"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (_NSRange)imaxRangeValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _imaxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"{_NSRange=QQ}"];

  rangeValue = [v5 rangeValue];
  v8 = v7;

  v9 = rangeValue;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (CGPoint)imaxCGPointValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _imaxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"{CGPoint=dd}"];

  [v5 CGPointValue];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGSize)imaxCGSizeValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _imaxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"{CGSize=dd}"];

  [v5 CGSizeValue];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)imaxCGRectValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _imaxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)_imaxRespondsToSelector:(SEL)selector fromExtrasProtocol:(id)protocol skipAssertions:(BOOL)assertions
{
  protocolCopy = protocol;
  if (!assertions)
  {
    ShouldPerformValidationChecks = IMAccessibilityShouldPerformValidationChecks();
    if (!selector)
    {
      if (ShouldPerformValidationChecks)
      {
        ShouldCrashOnValidationErrorAfterLaunch = IMAccessibilityShouldCrashOnValidationErrorAfterLaunch();
        if (__IMAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Selector can't be null.", v14, v15, v16, v17, v18, v45))
        {
          goto LABEL_23;
        }
      }
    }

    v19 = IMAccessibilityShouldPerformValidationChecks();
    if (!protocolCopy)
    {
      if (v19)
      {
        v20 = IMAccessibilityShouldCrashOnValidationErrorAfterLaunch();
        if (!__IMAccessibilityHandleValidationErrorWithDescription(v20, 0, @"Protocol can't be null.", v21, v22, v23, v24, v25, v45))
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
    if ((name == 0) | ((IMAccessibilityShouldPerformValidationChecks() & 1) == 0) | v11 & 1 || (v26 = IMAccessibilityShouldCrashOnValidationErrorAfterLaunch(), v27 = objc_opt_class(), NSStringFromClass(v27), v28 = objc_claimAutoreleasedReturnValue(), NSStringFromProtocol(protocolCopy), v46 = objc_claimAutoreleasedReturnValue(), v34 = __IMAccessibilityHandleValidationErrorWithDescription(v26, 0, @"<%@: %p> doesn't conform to the protocol: %@", v29, v30, v31, v32, v33, v28), v46, v28, !v34))
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

      v9 = objc_opt_respondsToSelector();
      if (!IMAccessibilityShouldPerformValidationChecks() || !name || (v9 & 1) != 0)
      {
        goto LABEL_22;
      }

      v35 = IMAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v47 = NSStringFromSelector(selector);
      v43 = __IMAccessibilityHandleValidationErrorWithDescription(v35, 0, @"<%@: %p> doesn't respond to the following abstract method: %@", v38, v39, v40, v41, v42, v37);

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

@end