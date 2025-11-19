@interface NSInvocation
+ (const)_typeWithoutQualifiers:(const char *)a3;
- (id)BOOLDescriptionAtIndex:(int64_t)a3;
- (id)argumentDescriptionForIndex:(int64_t)a3 classifier:(id)a4;
- (id)blockInvocationDescriptionWithClassifier:(id)a3;
- (id)cStringDescriptionAtIndex:(int64_t)a3;
- (id)charDescriptionAtIndex:(int64_t)a3;
- (id)doubleDescriptionAtIndex:(int64_t)a3;
- (id)floatDescriptionAtIndex:(int64_t)a3;
- (id)intDescriptionAtIndex:(int64_t)a3;
- (id)invocationDescriptionWithClassifier:(id)a3;
- (id)longDescriptionAtIndex:(int64_t)a3;
- (id)longDoubleDescriptionAtIndex:(int64_t)a3;
- (id)longLongDescriptionAtIndex:(int64_t)a3;
- (id)objectDescriptionAtIndex:(int64_t)a3 classifier:(id)a4;
- (id)optionalFeatureSettingDescriptionAtIndex:(int64_t)a3;
- (id)pointerDescriptionAtIndex:(int64_t)a3;
- (id)selectorDescriptionAtIndex:(int64_t)a3;
- (id)shortDescriptionAtIndex:(int64_t)a3;
- (id)unsignedCharDescriptionAtIndex:(int64_t)a3;
- (id)unsignedIntDescriptionAtIndex:(int64_t)a3;
- (id)unsignedLongDescriptionAtIndex:(int64_t)a3;
- (id)unsignedLongLongDescriptionAtIndex:(int64_t)a3;
- (id)unsignedShortDescriptionAtIndex:(int64_t)a3;
- (int64_t)getBlockArgumentIndex;
@end

@implementation NSInvocation

- (int64_t)getBlockArgumentIndex
{
  v2 = [(NSInvocation *)self methodSignature];
  v3 = [v2 numberOfArguments];
  if (v3 < 3)
  {
LABEL_7:
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 2;
    while (1)
    {
      v5 = [v2 getArgumentTypeAtIndex:v4];
      if (*v5 == 64 && v5[1] == 63 && !v5[2])
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_7;
      }
    }
  }

  return v4;
}

+ (const)_typeWithoutQualifiers:(const char *)a3
{
  v3 = a3 - 1;
  do
  {
    v4 = *++v3;
  }

  while (memchr("rnNoORV", v4, 8uLL));
  return v3;
}

- (id)invocationDescriptionWithClassifier:(id)a3
{
  v4 = a3;
  v5 = [(NSInvocation *)self methodSignature];
  v6 = [v5 numberOfArguments];
  if (v6 == 2)
  {
    v7 = NSStringFromSelector([(NSInvocation *)self selector]);
  }

  else
  {
    v8 = NSStringFromSelector([(NSInvocation *)self selector]);
    v9 = [v8 componentsSeparatedByString:@":"];

    v7 = objc_alloc_init(NSMutableString);
    if (v6 >= 3)
    {
      for (i = 2; i != v6; ++i)
      {
        v11 = [v9 objectAtIndex:i - 2];
        v12 = v11;
        if (i <= 2)
        {
          v13 = &stru_101F6AFB8;
        }

        else
        {
          v13 = @" ";
        }

        [v7 appendFormat:@"%@%@:", v13, v11];

        v14 = [(NSInvocation *)self argumentDescriptionForIndex:i classifier:v4];
        [v7 appendString:v14];
      }
    }
  }

  return v7;
}

- (id)blockInvocationDescriptionWithClassifier:(id)a3
{
  v4 = a3;
  v5 = [(NSInvocation *)self methodSignature];
  v6 = [v5 numberOfArguments];
  if (v6 == 1)
  {
    v7 = @"block(void)";
  }

  else
  {
    v7 = objc_msgSend([NSMutableString alloc], "initWithString:", @"block(");
    if (v6)
    {
      for (i = 1; i != v6; ++i)
      {
        if (i <= 1)
        {
          v9 = &stru_101F6AFB8;
        }

        else
        {
          v9 = @", ";
        }

        [(__CFString *)v7 appendFormat:@"%@", v9];
        v10 = [(NSInvocation *)self argumentDescriptionForIndex:i classifier:v4];
        [(__CFString *)v7 appendString:v10];
      }
    }

    [(__CFString *)v7 appendString:@""]);
  }

  return v7;
}

- (id)argumentDescriptionForIndex:(int64_t)a3 classifier:(id)a4
{
  v6 = a4;
  v7 = [(NSInvocation *)self methodSignature];
  v8 = [v7 getArgumentTypeAtIndex:a3];

  v9 = *[objc_opt_class() _typeWithoutQualifiers:v8];
  v10 = @"<??>";
  if (v9 <= 0x5D)
  {
    if (v9 > 67)
    {
      if (v9 > 80)
      {
        if (v9 == 81)
        {
          v11 = [(NSInvocation *)self unsignedLongDescriptionAtIndex:a3];
        }

        else
        {
          if (v9 != 83)
          {
            goto LABEL_43;
          }

          v11 = [(NSInvocation *)self unsignedShortDescriptionAtIndex:a3];
        }
      }

      else if (v9 == 68)
      {
        v11 = [(NSInvocation *)self longDoubleDescriptionAtIndex:a3];
      }

      else
      {
        if (v9 != 73)
        {
          goto LABEL_43;
        }

        v11 = [(NSInvocation *)self unsignedIntDescriptionAtIndex:a3];
      }
    }

    else if (v9 > 65)
    {
      if (v9 == 66)
      {
        [(NSInvocation *)self BOOLDescriptionAtIndex:a3];
      }

      else
      {
        [(NSInvocation *)self unsignedCharDescriptionAtIndex:a3];
      }
      v11 = ;
    }

    else if (v9 == 58)
    {
      v11 = [(NSInvocation *)self selectorDescriptionAtIndex:a3];
    }

    else
    {
      if (v9 != 64)
      {
        goto LABEL_43;
      }

      v11 = [(NSInvocation *)self objectDescriptionAtIndex:a3 classifier:v6];
    }
  }

  else if (v9 <= 104)
  {
    if (v9 > 99)
    {
      if (v9 == 100)
      {
        v11 = [(NSInvocation *)self doubleDescriptionAtIndex:a3];
      }

      else
      {
        if (v9 != 102)
        {
          goto LABEL_43;
        }

        v11 = [(NSInvocation *)self floatDescriptionAtIndex:a3];
      }
    }

    else if (v9 == 94)
    {
      v11 = [(NSInvocation *)self pointerDescriptionAtIndex:a3];
    }

    else
    {
      if (v9 != 99)
      {
        goto LABEL_43;
      }

      v11 = [(NSInvocation *)self charDescriptionAtIndex:a3];
    }
  }

  else if (v9 <= 113)
  {
    if (v9 == 105)
    {
      v11 = [(NSInvocation *)self intDescriptionAtIndex:a3];
    }

    else
    {
      if (v9 != 113)
      {
        goto LABEL_43;
      }

      v11 = [(NSInvocation *)self longDescriptionAtIndex:a3];
    }
  }

  else
  {
    switch(v9)
    {
      case 'r':
        v11 = [(NSInvocation *)self cStringDescriptionAtIndex:a3];
        break;
      case 's':
        v11 = [(NSInvocation *)self shortDescriptionAtIndex:a3];
        break;
      case '{':
        v11 = [(NSInvocation *)self optionalFeatureSettingDescriptionAtIndex:a3];
        break;
      default:
        goto LABEL_43;
    }
  }

  v10 = v11;
LABEL_43:

  return v10;
}

- (id)objectDescriptionAtIndex:(int64_t)a3 classifier:(id)a4
{
  v6 = a4;
  v13 = 0;
  [(NSInvocation *)self getArgument:&v13 atIndex:a3];
  if (v13)
  {
    if (([v13 isProxy] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = @"<block>";
        goto LABEL_15;
      }

      [v6 classifyObject:v13];
      v10 = v13;
      if (objc_opt_respondsToSelector())
      {
        [v10 ct_shortDescription];
      }

      else
      {
        [v10 description];
      }
      v7 = ;

      v11 = @"<nil description>";
      if (v7)
      {
        v11 = v7;
      }

      v8 = v11;
    }

    else
    {
      v7 = [v13 description];
      v8 = [NSString stringWithFormat:@"@%@", v7];
    }

    v9 = v8;
  }

  else
  {
    v9 = @"nil";
  }

LABEL_15:

  return v9;
}

- (id)BOOLDescriptionAtIndex:(int64_t)a3
{
  v6 = 0;
  [(NSInvocation *)self getArgument:&v6 atIndex:a3];
  if (v6)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = v3;

  return v4;
}

- (id)charDescriptionAtIndex:(int64_t)a3
{
  memset(v6, 0, sizeof(v6));
  [(NSInvocation *)self getArgument:v6 atIndex:a3];
  if (BYTE1(v6[0]) || LOBYTE(v6[0]) > 1u)
  {
    v4 = [NSString stringWithFormat:@"'%c'", LOBYTE(v6[0])];
  }

  else
  {
    v3 = @"NO";
    if (LOBYTE(v6[0]) == 1)
    {
      v3 = @"YES";
    }

    v4 = v3;
  }

  return v4;
}

- (id)unsignedCharDescriptionAtIndex:(int64_t)a3
{
  memset(v5, 0, sizeof(v5));
  [(NSInvocation *)self getArgument:v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"'%c'", LOBYTE(v5[0])];

  return v3;
}

- (id)intDescriptionAtIndex:(int64_t)a3
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"%d", v5];

  return v3;
}

- (id)unsignedIntDescriptionAtIndex:(int64_t)a3
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"%d", v5];

  return v3;
}

- (id)shortDescriptionAtIndex:(int64_t)a3
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"%hi", v5];

  return v3;
}

- (id)unsignedShortDescriptionAtIndex:(int64_t)a3
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"%hu", v5];

  return v3;
}

- (id)longDescriptionAtIndex:(int64_t)a3
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"%ld", v5];

  return v3;
}

- (id)unsignedLongDescriptionAtIndex:(int64_t)a3
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"%lu", v5];

  return v3;
}

- (id)longLongDescriptionAtIndex:(int64_t)a3
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"%qi", v5];

  return v3;
}

- (id)unsignedLongLongDescriptionAtIndex:(int64_t)a3
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"%qu", v5];

  return v3;
}

- (id)doubleDescriptionAtIndex:(int64_t)a3
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"%f", v5];

  return v3;
}

- (id)floatDescriptionAtIndex:(int64_t)a3
{
  v5 = 0.0;
  [(NSInvocation *)self getArgument:&v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"%f", v5];

  return v3;
}

- (id)longDoubleDescriptionAtIndex:(int64_t)a3
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"%Lf", v5];

  return v3;
}

- (id)pointerDescriptionAtIndex:(int64_t)a3
{
  v5 = 0;
  [(NSInvocation *)self getArgument:&v5 atIndex:a3];
  v3 = [NSString stringWithFormat:@"%p", v5];

  return v3;
}

- (id)cStringDescriptionAtIndex:(int64_t)a3
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__dst = 0u;
  v7 = 0u;
  __source = 0;
  [(NSInvocation *)self getArgument:&__source atIndex:a3];
  strlcpy(__dst, __source, 0x68uLL);
  HIDWORD(v12) = 3026478;
  v3 = [NSString stringWithFormat:@"%s", __dst];

  return v3;
}

- (id)selectorDescriptionAtIndex:(int64_t)a3
{
  aSelector = 0;
  [(NSInvocation *)self getArgument:&aSelector atIndex:a3];
  v3 = NSStringFromSelector(aSelector);
  v4 = [NSString stringWithFormat:@"@selector(%@)", v3];

  return v4;
}

- (id)optionalFeatureSettingDescriptionAtIndex:(int64_t)a3
{
  v7 = 0;
  [(NSInvocation *)self getArgument:&v7 atIndex:a3];
  v3 = "NO";
  if (v7)
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  if (HIBYTE(v7))
  {
    v3 = "YES";
  }

  v5 = [NSString stringWithFormat:@"Feature Enabled (%s) User Enabled (%s)", v4, v3];

  return v5;
}

@end