@interface NSKeyValueIvarGetter
- (NSKeyValueIvarGetter)initWithContainerClassID:(id)d key:(id)key containerIsa:(Class)isa ivar:(objc_ivar *)ivar;
@end

@implementation NSKeyValueIvarGetter

- (NSKeyValueIvarGetter)initWithContainerClassID:(id)d key:(id)key containerIsa:(Class)isa ivar:(objc_ivar *)ivar
{
  v27[3] = *MEMORY[0x1E69E9840];
  TypeEncoding = ivar_getTypeEncoding(ivar);
  v11 = *TypeEncoding;
  v12 = _NSGetBoolValueInIvar;
  if (v11 > 0x62)
  {
    if (*TypeEncoding > 0x6Bu)
    {
      if (*TypeEncoding > 0x72u)
      {
        if (v11 == 115)
        {
          v12 = _NSGetShortValueInIvar;
          goto LABEL_47;
        }

        if (v11 == 123)
        {
          v15 = TypeEncoding;
          v16 = strchr(TypeEncoding, 61);
          v12 = _NSGetValueInIvar;
          if (v16)
          {
            v17 = v16 - v15;
            v18 = strncmp(v15, "{CGPoint=dd}", v16 - v15);
            v12 = _NSGetPointValueInIvar;
            if (v18)
            {
              v19 = strncmp(v15, "{_NSPoint=ff}", v17);
              v12 = _NSGetPointValueInIvar;
              if (v19)
              {
                v20 = strncmp(v15, "{_NSRange=QQ}", v17);
                v12 = _NSGetRangeValueInIvar;
                if (v20)
                {
                  v21 = strncmp(v15, "{CGRect={CGPoint=dd}{CGSize=dd}}", v17);
                  v12 = _NSGetRectValueInIvar;
                  if (v21)
                  {
                    v22 = strncmp(v15, "{_NSRect={_NSPoint=ff}{_NSSize=ff}}", v17);
                    v12 = _NSGetRectValueInIvar;
                    if (v22)
                    {
                      v23 = strncmp(v15, "{CGSize=dd}", v17);
                      v12 = _NSGetSizeValueInIvar;
                      if (v23)
                      {
                        v24 = strncmp(v15, "{_NSSize=ff}", v17);
                        v14 = _NSGetValueInIvar;
                        v12 = _NSGetSizeValueInIvar;
                        if (v24)
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
        if (v11 == 108)
        {
          v12 = _NSGetLongValueInIvar;
          goto LABEL_47;
        }

        if (v11 == 113)
        {
          v12 = _NSGetLongLongValueInIvar;
          goto LABEL_47;
        }
      }
    }

    else if (*TypeEncoding > 0x65u)
    {
      if (v11 == 102)
      {
        v12 = _NSGetFloatValueInIvar;
        goto LABEL_47;
      }

      if (v11 == 105)
      {
        v12 = _NSGetIntValueInIvar;
        goto LABEL_47;
      }
    }

    else
    {
      if (v11 == 99)
      {
        v12 = _NSGetCharValueInIvar;
        goto LABEL_47;
      }

      if (v11 == 100)
      {
        v12 = _NSGetDoubleValueInIvar;
        goto LABEL_47;
      }
    }
  }

  else if (*TypeEncoding > 0x48u)
  {
    if (*TypeEncoding > 0x50u)
    {
      if (v11 == 81)
      {
        v12 = _NSGetUnsignedLongLongValueInIvar;
        goto LABEL_47;
      }

      if (v11 == 83)
      {
        v12 = _NSGetUnsignedShortValueInIvar;
        goto LABEL_47;
      }
    }

    else
    {
      if (v11 == 73)
      {
        v12 = _NSGetUnsignedIntValueInIvar;
        goto LABEL_47;
      }

      if (v11 == 76)
      {
        v12 = _NSGetUnsignedLongValueInIvar;
        goto LABEL_47;
      }
    }
  }

  else if (*TypeEncoding > 0x41u)
  {
    if (v11 == 66)
    {
      goto LABEL_47;
    }

    if (v11 == 67)
    {
      v12 = _NSGetUnsignedCharValueInIvar;
      goto LABEL_47;
    }
  }

  else if (v11 == 35 || v11 == 64)
  {
    IvarMemoryManagement = _class_getIvarMemoryManagement();
    v12 = _NSGetObjectGetIvarValueInIvar;
    if (IvarMemoryManagement < 4)
    {
      v14 = off_1EEEFBAE0[IvarMemoryManagement];
LABEL_48:
      v27[1] = 0;
      v27[2] = 0;
      v26.receiver = self;
      v26.super_class = NSKeyValueIvarGetter;
      v27[0] = ivar;
      return [(NSKeyValueAccessor *)&v26 initWithContainerClassID:d key:key implementation:v14 selector:0 extraArguments:v27 count:1];
    }

LABEL_47:
    v14 = v12;
    goto LABEL_48;
  }

  return 0;
}

@end