@interface CNContactProperty(UIAdditions)
+ (id)phoneticPropertiesMap;
- (id)phoneticProperty;
@end

@implementation CNContactProperty(UIAdditions)

- (id)phoneticProperty
{
  phoneticPropertiesMap = [objc_opt_class() phoneticPropertiesMap];
  v3 = [self key];
  v4 = [phoneticPropertiesMap valueForKey:v3];

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