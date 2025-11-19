@interface NSDictionary(BSObjCProperty)
+ (id)bsobjc_attributesForProperty:()BSObjCProperty;
@end

@implementation NSDictionary(BSObjCProperty)

+ (id)bsobjc_attributesForProperty:()BSObjCProperty
{
  v4 = objc_opt_new();
  outCount = 0;
  v5 = property_copyAttributeList(a3, &outCount);
  v6 = v5;
  if (outCount)
  {
    v7 = 0;
    p_value = &v5->value;
    do
    {
      v9 = *(p_value - 1);
      v10 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:*p_value];
      v11 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:v9];
      [v4 setObject:v10 forKey:v11];

      ++v7;
      p_value += 2;
    }

    while (v7 < outCount);
  }

  else if (!v5)
  {
    goto LABEL_7;
  }

  free(v6);
LABEL_7:

  return v4;
}

@end