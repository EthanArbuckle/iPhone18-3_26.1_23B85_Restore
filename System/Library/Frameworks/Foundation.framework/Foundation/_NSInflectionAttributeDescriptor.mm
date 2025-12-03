@interface _NSInflectionAttributeDescriptor
- (id)attributeValueFromValue:(id)value;
@end

@implementation _NSInflectionAttributeDescriptor

- (id)attributeValueFromValue:(id)value
{
  if (_NSIsNSNumber())
  {
    if ([value BOOLValue])
    {
      return value;
    }

    else
    {
      return 0;
    }
  }

  else if (_NSIsNSDictionary())
  {
    result = [[NSMorphology alloc] _initWithExternalRepresentationDictionary:value];
    if (result)
    {
      v5 = [[NSInflectionRuleExplicit alloc] initWithMorphology:result];

      return v5;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

@end