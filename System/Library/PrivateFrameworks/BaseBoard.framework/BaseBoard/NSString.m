@interface NSString
+ (id)bsobjc_typeQualifiers;
- (id)bsobjc_structName;
@end

@implementation NSString

+ (id)bsobjc_typeQualifiers
{
  objc_opt_self();
  if (qword_1ED44FDE0 != -1)
  {
    dispatch_once(&qword_1ED44FDE0, &__block_literal_global_13);
  }

  v0 = _MergedGlobals_13;

  return v0;
}

void __50__NSString_BSObjCInterface__bsobjc_typeQualifiers__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"rnNoORV"];
  v1 = _MergedGlobals_13;
  _MergedGlobals_13 = v0;
}

- (id)bsobjc_structName
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x1E696AE88] scannerWithString:a1];
    if (([v1 hasPrefix:@"{"] & 1) == 0 && !objc_msgSend(v2, "scanUpToString:intoString:", @"{", 0))
    {
      v1 = 0;
      goto LABEL_10;
    }

    [v2 scanString:@"{" intoString:0];
    v10 = 0;
    v3 = [v2 scanUpToString:@"=" intoString:&v10];
    v4 = v10;
    v5 = v4;
    if (v3)
    {
      v6 = [v4 copy];
    }

    else
    {
      v9 = v4;
      v7 = [v2 scanUpToString:@"}" intoString:&v9];
      v1 = v9;

      if (!v7)
      {
LABEL_10:

        goto LABEL_11;
      }

      v6 = [v1 copy];
      v5 = v1;
    }

    v1 = v6;

    goto LABEL_10;
  }

LABEL_11:

  return v1;
}

@end