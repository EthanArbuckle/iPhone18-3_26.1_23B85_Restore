@interface NSKeyValueMethodGetter
- (NSKeyValueMethodGetter)initWithContainerClassID:(id)a3 key:(id)a4 method:(objc_method *)a5;
@end

@implementation NSKeyValueMethodGetter

- (NSKeyValueMethodGetter)initWithContainerClassID:(id)a3 key:(id)a4 method:(objc_method *)a5
{
  v5 = a5;
  v24[3] = *MEMORY[0x1E69E9840];
  if (method_getNumberOfArguments(a5) != 2)
  {
    goto LABEL_54;
  }

  Name = method_getName(v5);
  v10 = method_copyReturnType(v5);
  v11 = v10;
  v12 = *v10;
  v13 = _NSGetBoolValueWithMethod;
  if (v12 > 0x62)
  {
    if (*v10 <= 0x6Bu)
    {
      if (*v10 > 0x65u)
      {
        if (v12 == 102)
        {
          v13 = _NSGetFloatValueWithMethod;
          goto LABEL_50;
        }

        if (v12 == 105)
        {
          v13 = _NSGetIntValueWithMethod;
          goto LABEL_50;
        }
      }

      else
      {
        if (v12 == 99)
        {
          v13 = _NSGetCharValueWithMethod;
          goto LABEL_50;
        }

        if (v12 == 100)
        {
          v13 = _NSGetDoubleValueWithMethod;
          goto LABEL_50;
        }
      }
    }

    else if (*v10 <= 0x72u)
    {
      if (v12 == 108)
      {
        v13 = _NSGetLongValueWithMethod;
        goto LABEL_50;
      }

      if (v12 == 113)
      {
        v13 = _NSGetLongLongValueWithMethod;
        goto LABEL_50;
      }
    }

    else
    {
      switch(v12)
      {
        case 's':
          v13 = _NSGetShortValueWithMethod;
          goto LABEL_50;
        case 'v':
          v13 = _NSGetVoidValueWithMethod;
          goto LABEL_50;
        case '{':
          v14 = strcmp(v10, "{CGPoint=dd}");
          v13 = _NSGetPointValueWithMethod;
          if (v14)
          {
            v15 = strcmp(v11, "{_NSPoint=ff}");
            v13 = _NSGetPointValueWithMethod;
            if (v15)
            {
              v16 = strcmp(v11, "{_NSRange=QQ}");
              v13 = _NSGetRangeValueWithMethod;
              if (v16)
              {
                v17 = strcmp(v11, "{CGRect={CGPoint=dd}{CGSize=dd}}");
                v13 = _NSGetRectValueWithMethod;
                if (v17)
                {
                  v18 = strcmp(v11, "{_NSRect={_NSPoint=ff}{_NSSize=ff}}");
                  v13 = _NSGetRectValueWithMethod;
                  if (v18)
                  {
                    v19 = strcmp(v11, "{CGSize=dd}");
                    v13 = _NSGetSizeValueWithMethod;
                    if (v19)
                    {
                      if (!strcmp(v11, "{_NSSize=ff}"))
                      {
                        Implementation = _NSGetSizeValueWithMethod;
                      }

                      else
                      {
                        Implementation = _NSGetValueWithMethod;
                      }

                      goto LABEL_51;
                    }
                  }
                }
              }
            }
          }

LABEL_50:
          Implementation = v13;
LABEL_51:
          free(v11);
          v21 = 1;
          goto LABEL_52;
      }
    }

    goto LABEL_53;
  }

  if (*v10 > 0x48u)
  {
    if (*v10 > 0x50u)
    {
      if (v12 == 81)
      {
        v13 = _NSGetUnsignedLongLongValueWithMethod;
        goto LABEL_50;
      }

      if (v12 == 83)
      {
        v13 = _NSGetUnsignedShortValueWithMethod;
        goto LABEL_50;
      }
    }

    else
    {
      if (v12 == 73)
      {
        v13 = _NSGetUnsignedIntValueWithMethod;
        goto LABEL_50;
      }

      if (v12 == 76)
      {
        v13 = _NSGetUnsignedLongValueWithMethod;
        goto LABEL_50;
      }
    }

    goto LABEL_53;
  }

  if (*v10 > 0x41u)
  {
    if (v12 == 66)
    {
      goto LABEL_50;
    }

    if (v12 == 67)
    {
      v13 = _NSGetUnsignedCharValueWithMethod;
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  if (v12 != 35 && v12 != 64)
  {
LABEL_53:
    free(v10);
    goto LABEL_54;
  }

  Implementation = method_getImplementation(v5);
  free(v11);
  if (Implementation)
  {
    v5 = 0;
    v21 = 0;
LABEL_52:
    v24[1] = 0;
    v24[2] = 0;
    v23.receiver = self;
    v23.super_class = NSKeyValueMethodGetter;
    v24[0] = v5;
    return [(NSKeyValueAccessor *)&v23 initWithContainerClassID:a3 key:a4 implementation:Implementation selector:Name extraArguments:v24 count:v21];
  }

LABEL_54:

  return 0;
}

@end