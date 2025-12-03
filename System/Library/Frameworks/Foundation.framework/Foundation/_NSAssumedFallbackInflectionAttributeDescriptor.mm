@interface _NSAssumedFallbackInflectionAttributeDescriptor
- (id)attributeValueFromValue:(id)value;
@end

@implementation _NSAssumedFallbackInflectionAttributeDescriptor

- (id)attributeValueFromValue:(id)value
{
  if (_NSIsNSDictionary())
  {
    v4 = [[_NSAttributedStringGrammarInflection alloc] initWithExternalRepresentationDictionary:value error:0];

    return v4;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }
    }

    return value;
  }
}

@end