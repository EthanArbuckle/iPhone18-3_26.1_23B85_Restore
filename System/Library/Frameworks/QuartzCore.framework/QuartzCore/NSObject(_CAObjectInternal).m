@interface NSObject(_CAObjectInternal)
- (uint64_t)CA_validateValue:()_CAObjectInternal forKey:;
@end

@implementation NSObject(_CAObjectInternal)

- (uint64_t)CA_validateValue:()_CAObjectInternal forKey:
{
  if (a3)
  {
    if (!CAInternAtom(a4, 0))
    {
      goto LABEL_16;
    }

    v6 = objc_opt_class();
    v7 = classDescription(v6);
    v8 = propertyInfoForKey(v7, a4, 0);
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = v8;
    if (*(v8 + 2) - 1 <= 4)
    {
      v10 = *(v8 + 3);
      if (!v10)
      {
LABEL_16:
        isKindOfClass = 1;
        return isKindOfClass & 1;
      }

      if (NSClassFromString(v10))
      {
LABEL_19:
        isKindOfClass = objc_opt_isKindOfClass();
        return isKindOfClass & 1;
      }

      if ([*(v9 + 3) isEqualToString:@"CGColor"])
      {
        v11 = CFGetTypeID(a3);
        TypeID = CGColorGetTypeID();
LABEL_14:
        isKindOfClass = v11 == TypeID;
        return isKindOfClass & 1;
      }

      if ([*(v9 + 3) isEqualToString:@"CGPath"])
      {
        v11 = CFGetTypeID(a3);
        TypeID = CGPathGetTypeID();
        goto LABEL_14;
      }

      if ([*(v9 + 3) isEqualToString:@"CGColorSpace"])
      {
        v11 = CFGetTypeID(a3);
        TypeID = CGColorSpaceGetTypeID();
        goto LABEL_14;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_16;
    }

    objc_opt_class();
    goto LABEL_19;
  }

  isKindOfClass = 1;
  return isKindOfClass & 1;
}

@end