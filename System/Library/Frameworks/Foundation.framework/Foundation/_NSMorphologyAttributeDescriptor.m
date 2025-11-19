@interface _NSMorphologyAttributeDescriptor
- (id)attributeValueFromValue:(id)a3;
@end

@implementation _NSMorphologyAttributeDescriptor

- (id)attributeValueFromValue:(id)a3
{
  if (_NSIsNSDictionary())
  {
    v4 = [[NSMorphology alloc] _initWithExternalRepresentationDictionary:a3];

    return v4;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }
}

@end