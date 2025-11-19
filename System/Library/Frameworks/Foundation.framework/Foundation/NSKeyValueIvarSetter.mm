@interface NSKeyValueIvarSetter
- (NSKeyValueIvarSetter)initWithContainerClassID:(id)a3 key:(id)a4 containerIsa:(Class)a5 ivar:(objc_ivar *)a6;
@end

@implementation NSKeyValueIvarSetter

- (NSKeyValueIvarSetter)initWithContainerClassID:(id)a3 key:(id)a4 containerIsa:(Class)a5 ivar:(objc_ivar *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  TypeEncoding = ivar_getTypeEncoding(a6);
  v12 = *TypeEncoding;
  v13 = _NSSetBoolValueForKeyInIvar;
  if (v12 > 0x62)
  {
    if (*TypeEncoding > 0x6Bu)
    {
      if (*TypeEncoding > 0x72u)
      {
        if (v12 == 115)
        {
          v13 = _NSSetShortValueForKeyInIvar;
          goto LABEL_47;
        }

        if (v12 == 123)
        {
          v16 = TypeEncoding;
          v17 = strchr(TypeEncoding, 61);
          v13 = _NSSetValueInIvar;
          if (v17)
          {
            v18 = v17 - v16;
            v19 = strncmp(v16, "{CGPoint=dd}", v17 - v16);
            v13 = _NSSetPointValueForKeyInIvar;
            if (v19)
            {
              v20 = strncmp(v16, "{_NSPoint=ff}", v18);
              v13 = _NSSetPointValueForKeyInIvar;
              if (v20)
              {
                v21 = strncmp(v16, "{_NSRange=QQ}", v18);
                v13 = _NSSetRangeValueForKeyInIvar;
                if (v21)
                {
                  v22 = strncmp(v16, "{CGRect={CGPoint=dd}{CGSize=dd}}", v18);
                  v13 = _NSSetRectValueForKeyInIvar;
                  if (v22)
                  {
                    v23 = strncmp(v16, "{_NSRect={_NSPoint=ff}{_NSSize=ff}}", v18);
                    v13 = _NSSetRectValueForKeyInIvar;
                    if (v23)
                    {
                      v24 = strncmp(v16, "{CGSize=dd}", v18);
                      v13 = _NSSetSizeValueForKeyInIvar;
                      if (v24)
                      {
                        v25 = strncmp(v16, "{_NSSize=ff}", v18);
                        v15 = _NSSetValueInIvar;
                        v13 = _NSSetSizeValueForKeyInIvar;
                        if (v25)
                        {
                          goto LABEL_48;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_47;
        }
      }

      else
      {
        if (v12 == 108)
        {
          v13 = _NSSetLongValueForKeyInIvar;
          goto LABEL_47;
        }

        if (v12 == 113)
        {
          v13 = _NSSetLongLongValueForKeyInIvar;
          goto LABEL_47;
        }
      }
    }

    else if (*TypeEncoding > 0x65u)
    {
      if (v12 == 102)
      {
        v13 = _NSSetFloatValueForKeyInIvar;
        goto LABEL_47;
      }

      if (v12 == 105)
      {
        v13 = _NSSetIntValueForKeyInIvar;
        goto LABEL_47;
      }
    }

    else
    {
      if (v12 == 99)
      {
        v13 = _NSSetCharValueForKeyInIvar;
        goto LABEL_47;
      }

      if (v12 == 100)
      {
        v13 = _NSSetDoubleValueForKeyInIvar;
        goto LABEL_47;
      }
    }

LABEL_51:

    return 0;
  }

  if (*TypeEncoding > 0x48u)
  {
    if (*TypeEncoding > 0x50u)
    {
      if (v12 == 81)
      {
        v13 = _NSSetUnsignedLongLongValueForKeyInIvar;
        goto LABEL_47;
      }

      if (v12 == 83)
      {
        v13 = _NSSetUnsignedShortValueForKeyInIvar;
        goto LABEL_47;
      }
    }

    else
    {
      if (v12 == 73)
      {
        v13 = _NSSetUnsignedIntValueForKeyInIvar;
        goto LABEL_47;
      }

      if (v12 == 76)
      {
        v13 = _NSSetUnsignedLongValueForKeyInIvar;
        goto LABEL_47;
      }
    }

    goto LABEL_51;
  }

  if (*TypeEncoding > 0x41u)
  {
    if (v12 == 66)
    {
      goto LABEL_47;
    }

    if (v12 == 67)
    {
      v13 = _NSSetUnsignedCharValueForKeyInIvar;
      goto LABEL_47;
    }

    goto LABEL_51;
  }

  if (v12 != 35 && v12 != 64)
  {
    goto LABEL_51;
  }

  IvarMemoryManagement = _class_getIvarMemoryManagement();
  v13 = _NSSetObjectSetIvarValueForKeyInIvar;
  if (IvarMemoryManagement < 4)
  {
    v15 = off_1EEEFBB00[IvarMemoryManagement];
    goto LABEL_48;
  }

LABEL_47:
  v15 = v13;
LABEL_48:
  if (_NSKVONotifyingMutatorsShouldNotifyForIsaAndKey(a5, a4))
  {
    return [(NSKeyValueAccessor *)&v28 initWithContainerClassID:a3 key:a4 implementation:_NSSetValueAndNotifyForKeyInIvar selector:0 extraArguments:&v29 count:3, v27.receiver, v27.super_class, self, NSKeyValueIvarSetter, a4, a6, v15, v30];
  }

  else
  {
    return [(NSKeyValueAccessor *)&v27 initWithContainerClassID:a3 key:a4 implementation:v15 selector:0 extraArguments:&v29 count:2, self, NSKeyValueIvarSetter, v28.receiver, v28.super_class, a4, a6, 0, v30];
  }
}

@end