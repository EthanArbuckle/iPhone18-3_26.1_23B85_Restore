@interface _NSAssumedFallbackInflectionAttributeDescriptor
- (id)attributeValueFromValue:(id)a3;
@end

@implementation _NSAssumedFallbackInflectionAttributeDescriptor

- (id)attributeValueFromValue:(id)a3
{
  if (_NSIsNSDictionary())
  {
    v4 = [[_NSAttributedStringGrammarInflection alloc] initWithExternalRepresentationDictionary:a3 error:0];

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

    return a3;
  }
}

@end