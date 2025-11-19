@interface _NSInflectionAttributeDescriptor
- (id)attributeValueFromValue:(id)a3;
@end

@implementation _NSInflectionAttributeDescriptor

- (id)attributeValueFromValue:(id)a3
{
  if (_NSIsNSNumber())
  {
    if ([a3 BOOLValue])
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }

  else if (_NSIsNSDictionary())
  {
    result = [[NSMorphology alloc] _initWithExternalRepresentationDictionary:a3];
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