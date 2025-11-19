@interface CNContainerProviderMetadataDescription
- (id)CNValueFromABValue:(void *)a3;
- (void)ABValueFromCNValue:(id)a3;
@end

@implementation CNContainerProviderMetadataDescription

- (void)ABValueFromCNValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 dataRepresentation];

  return v7;
}

- (id)CNValueFromABValue:(void *)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = CFGetTypeID(a3);
    if (v4 == CFDataGetTypeID())
    {
      v5 = v3;
      v3 = [[CNProviderMetadata alloc] initWithDataRepresentation:v5];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end