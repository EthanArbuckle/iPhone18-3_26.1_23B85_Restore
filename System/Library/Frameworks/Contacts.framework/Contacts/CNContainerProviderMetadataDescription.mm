@interface CNContainerProviderMetadataDescription
- (id)CNValueFromABValue:(void *)value;
- (void)ABValueFromCNValue:(id)value;
@end

@implementation CNContainerProviderMetadataDescription

- (void)ABValueFromCNValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v4 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  dataRepresentation = [v6 dataRepresentation];

  return dataRepresentation;
}

- (id)CNValueFromABValue:(void *)value
{
  valueCopy = value;
  if (value)
  {
    v4 = CFGetTypeID(value);
    if (v4 == CFDataGetTypeID())
    {
      v5 = valueCopy;
      valueCopy = [[CNProviderMetadata alloc] initWithDataRepresentation:v5];
    }

    else
    {
      valueCopy = 0;
    }
  }

  return valueCopy;
}

@end