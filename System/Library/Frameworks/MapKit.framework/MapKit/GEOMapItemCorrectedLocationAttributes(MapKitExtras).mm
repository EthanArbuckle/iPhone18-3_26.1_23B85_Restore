@interface GEOMapItemCorrectedLocationAttributes(MapKitExtras)
- (id)_addressFormattedAsName;
- (id)_addressFormattedAsShortenedAddress;
- (id)_addressFormattedAsSinglelineAddress;
- (id)_formattedPostalAddress;
@end

@implementation GEOMapItemCorrectedLocationAttributes(MapKitExtras)

- (id)_addressFormattedAsShortenedAddress
{
  correctedAddress = [self correctedAddress];
  formattedAddressLines = [correctedAddress formattedAddressLines];
  firstObject = [formattedAddressLines firstObject];

  return firstObject;
}

- (id)_addressFormattedAsSinglelineAddress
{
  correctedAddress = [self correctedAddress];
  formattedAddressLines = [correctedAddress formattedAddressLines];
  firstObject = [formattedAddressLines firstObject];

  return firstObject;
}

- (id)_addressFormattedAsName
{
  correctedAddress = [self correctedAddress];
  formattedAddressLines = [correctedAddress formattedAddressLines];
  firstObject = [formattedAddressLines firstObject];

  return firstObject;
}

- (id)_formattedPostalAddress
{
  correctedAddress = [self correctedAddress];
  structuredAddress = [correctedAddress structuredAddress];

  if (structuredAddress)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CF30]);
    if ([structuredAddress hasFullThoroughfare])
    {
      fullThoroughfare = [structuredAddress fullThoroughfare];
      v6 = [fullThoroughfare mutableCopy];

      correctedAddressSecondaryStreetLine = [self correctedAddressSecondaryStreetLine];
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v9 = [correctedAddressSecondaryStreetLine stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      if ([v9 length])
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v9];
        [v6 appendString:v10];
      }

      v11 = [v6 copy];
      [v4 setStreet:v11];
    }

    if ([structuredAddress hasLocality])
    {
      locality = [structuredAddress locality];
      [v4 setCity:locality];
    }

    if ([structuredAddress hasAdministrativeArea])
    {
      administrativeArea = [structuredAddress administrativeArea];
      [v4 setState:administrativeArea];
    }

    if ([structuredAddress hasPostCode])
    {
      postCode = [structuredAddress postCode];
      [v4 setPostalCode:postCode];
    }

    if ([structuredAddress hasCountry])
    {
      country = [structuredAddress country];
      [v4 setCountry:country];
    }

    if ([structuredAddress hasCountryCode])
    {
      countryCode = [structuredAddress countryCode];
      [v4 setISOCountryCode:countryCode];
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