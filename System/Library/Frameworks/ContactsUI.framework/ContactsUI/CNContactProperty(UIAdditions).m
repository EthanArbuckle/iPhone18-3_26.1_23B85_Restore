@interface CNContactProperty(UIAdditions)
+ (id)phoneticPropertiesMap;
- (id)phoneticProperty;
@end

@implementation CNContactProperty(UIAdditions)

- (id)phoneticProperty
{
  v2 = [objc_opt_class() phoneticPropertiesMap];
  v3 = [a1 key];
  v4 = [v2 valueForKey:v3];

  return v4;
}

+ (id)phoneticPropertiesMap
{
  if (phoneticPropertiesMap_onceToken != -1)
  {
    dispatch_once(&phoneticPropertiesMap_onceToken, &__block_literal_global_19099);
  }

  v1 = phoneticPropertiesMap_properties;

  return v1;
}

@end