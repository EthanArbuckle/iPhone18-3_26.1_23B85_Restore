@interface GEOMapItemCorrectedLocationAttributes(MapKitExtras)
- (id)_addressFormattedAsName;
- (id)_addressFormattedAsShortenedAddress;
- (id)_addressFormattedAsSinglelineAddress;
- (id)_formattedPostalAddress;
@end

@implementation GEOMapItemCorrectedLocationAttributes(MapKitExtras)

- (id)_addressFormattedAsShortenedAddress
{
  v1 = [a1 correctedAddress];
  v2 = [v1 formattedAddressLines];
  v3 = [v2 firstObject];

  return v3;
}

- (id)_addressFormattedAsSinglelineAddress
{
  v1 = [a1 correctedAddress];
  v2 = [v1 formattedAddressLines];
  v3 = [v2 firstObject];

  return v3;
}

- (id)_addressFormattedAsName
{
  v1 = [a1 correctedAddress];
  v2 = [v1 formattedAddressLines];
  v3 = [v2 firstObject];

  return v3;
}

- (id)_formattedPostalAddress
{
  v2 = [a1 correctedAddress];
  v3 = [v2 structuredAddress];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CF30]);
    if ([v3 hasFullThoroughfare])
    {
      v5 = [v3 fullThoroughfare];
      v6 = [v5 mutableCopy];

      v7 = [a1 correctedAddressSecondaryStreetLine];
      v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v9 = [v7 stringByTrimmingCharactersInSet:v8];

      if ([v9 length])
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v9];
        [v6 appendString:v10];
      }

      v11 = [v6 copy];
      [v4 setStreet:v11];
    }

    if ([v3 hasLocality])
    {
      v12 = [v3 locality];
      [v4 setCity:v12];
    }

    if ([v3 hasAdministrativeArea])
    {
      v13 = [v3 administrativeArea];
      [v4 setState:v13];
    }

    if ([v3 hasPostCode])
    {
      v14 = [v3 postCode];
      [v4 setPostalCode:v14];
    }

    if ([v3 hasCountry])
    {
      v15 = [v3 country];
      [v4 setCountry:v15];
    }

    if ([v3 hasCountryCode])
    {
      v16 = [v3 countryCode];
      [v4 setISOCountryCode:v16];
    }

    v17 = [MEMORY[0x1E695CF68] stringFromPostalAddress:v4 style:0];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end