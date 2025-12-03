@interface _NSMorphologyAttributeDescriptor
- (id)attributeValueFromValue:(id)value;
@end

@implementation _NSMorphologyAttributeDescriptor

- (id)attributeValueFromValue:(id)value
{
  if (_NSIsNSDictionary())
  {
    v4 = [[NSMorphology alloc] _initWithExternalRepresentationDictionary:value];

    return v4;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return value;
    }

    else
    {
      return 0;
    }
  }
}

@end