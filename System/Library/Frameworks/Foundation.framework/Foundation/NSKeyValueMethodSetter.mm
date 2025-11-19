@interface NSKeyValueMethodSetter
- (NSKeyValueMethodSetter)initWithContainerClassID:(id)a3 key:(id)a4 method:(objc_method *)a5;
@end

@implementation NSKeyValueMethodSetter

- (NSKeyValueMethodSetter)initWithContainerClassID:(id)a3 key:(id)a4 method:(objc_method *)a5
{
  v25[3] = *MEMORY[0x1E69E9840];
  if (method_getNumberOfArguments(a5) != 3)
  {
    goto LABEL_53;
  }

  Name = method_getName(a5);
  v10 = method_copyArgumentType(a5, 2u);
  v11 = v10;
  v12 = *v10;
  v13 = _NSSetBoolValueForKeyWithMethod;
  if (v12 > 0x62)
  {
    if (*v10 > 0x6Bu)
    {
      if (*v10 > 0x72u)
      {
        if (v12 == 115)
        {
          v13 = _NSSetShortValueForKeyWithMethod;
        }

        else
        {
          if (v12 != 123)
          {
            goto LABEL_52;
          }

          v17 = strcmp(v10, "{CGPoint=dd}");
          v13 = _NSSetPointValueForKeyWithMethod;
          if (v17)
          {
            v18 = strcmp(v11, "{_NSPoint=ff}");
            v13 = _NSSetPointValueForKeyWithMethod;
            if (v18)
            {
              v19 = strcmp(v11, "{_NSRange=QQ}");
              v13 = _NSSetRangeValueForKeyWithMethod;
              if (v19)
              {
                v20 = strcmp(v11, "{CGRect={CGPoint=dd}{CGSize=dd}}");
                v13 = _NSSetRectValueForKeyWithMethod;
                if (v20)
                {
                  v21 = strcmp(v11, "{_NSRect={_NSPoint=ff}{_NSSize=ff}}");
                  v13 = _NSSetRectValueForKeyWithMethod;
                  if (v21)
                  {
                    v22 = strcmp(v11, "{CGSize=dd}");
                    v13 = _NSSetSizeValueForKeyWithMethod;
                    if (v22)
                    {
                      if (!strcmp(v11, "{_NSSize=ff}"))
                      {
                        Implementation = _NSSetSizeValueForKeyWithMethod;
                      }

                      else
                      {
                        Implementation = _NSSetValueWithMethod;
                      }

                      goto LABEL_49;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else if (v12 == 108)
      {
        v13 = _NSSetLongValueForKeyWithMethod;
      }

      else
      {
        if (v12 != 113)
        {
          goto LABEL_52;
        }

        v13 = _NSSetLongLongValueForKeyWithMethod;
      }
    }

    else if (*v10 > 0x65u)
    {
      if (v12 == 102)
      {
        v13 = _NSSetFloatValueForKeyWithMethod;
      }

      else
      {
        if (v12 != 105)
        {
          goto LABEL_52;
        }

        v13 = _NSSetIntValueForKeyWithMethod;
      }
    }

    else if (v12 == 99)
    {
      v13 = _NSSetCharValueForKeyWithMethod;
    }

    else
    {
      if (v12 != 100)
      {
        goto LABEL_52;
      }

      v13 = _NSSetDoubleValueForKeyWithMethod;
    }
  }

  else if (*v10 > 0x48u)
  {
    if (*v10 > 0x50u)
    {
      if (v12 == 81)
      {
        v13 = _NSSetUnsignedLongLongValueForKeyWithMethod;
      }

      else
      {
        if (v12 != 83)
        {
          goto LABEL_52;
        }

        v13 = _NSSetUnsignedShortValueForKeyWithMethod;
      }
    }

    else if (v12 == 73)
    {
      v13 = _NSSetUnsignedIntValueForKeyWithMethod;
    }

    else
    {
      if (v12 != 76)
      {
        goto LABEL_52;
      }

      v13 = _NSSetUnsignedLongValueForKeyWithMethod;
    }
  }

  else
  {
    if (*v10 <= 0x41u)
    {
      if (v12 == 35 || v12 == 64)
      {
        Implementation = method_getImplementation(a5);
        free(v11);
        if (Implementation)
        {
          v15 = 0;
          v16 = 0;
          goto LABEL_50;
        }

LABEL_53:

        return 0;
      }

LABEL_52:
      free(v10);
      goto LABEL_53;
    }

    if (v12 != 66)
    {
      if (v12 != 67)
      {
        goto LABEL_52;
      }

      v13 = _NSSetUnsignedCharValueForKeyWithMethod;
    }
  }

  Implementation = v13;
LABEL_49:
  free(v11);
  v16 = 2;
  v15 = a5;
LABEL_50:
  v25[0] = a4;
  v25[1] = v15;
  v25[2] = 0;
  v24.receiver = self;
  v24.super_class = NSKeyValueMethodSetter;
  result = [(NSKeyValueAccessor *)&v24 initWithContainerClassID:a3 key:a4 implementation:Implementation selector:Name extraArguments:v25 count:v16];
  if (result)
  {
    result->_method = a5;
  }

  return result;
}

@end