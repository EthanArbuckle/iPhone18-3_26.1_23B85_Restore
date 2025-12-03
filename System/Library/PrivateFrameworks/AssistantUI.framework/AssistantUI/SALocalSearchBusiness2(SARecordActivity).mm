@interface SALocalSearchBusiness2(SARecordActivity)
- (id)donateActivityCommand;
@end

@implementation SALocalSearchBusiness2(SARecordActivity)

- (id)donateActivityCommand
{
  v2 = objc_alloc_init(MEMORY[0x277D47158]);
  address = [self address];
  [v2 setType:@"com.apple.siri.businessLocation"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (address)
  {
    label = [address label];

    if (label)
    {
      label2 = [address label];
      locationName = [MEMORY[0x277CFE210] locationName];
      [dictionary setValue:label2 forKey:locationName];
    }

    city = [address city];

    if (city)
    {
      city2 = [address city];
      city3 = [MEMORY[0x277CFE210] city];
      [dictionary setValue:city2 forKey:city3];
    }

    postalCode = [address postalCode];

    if (postalCode)
    {
      postalCode2 = [address postalCode];
      postalCode3 = [MEMORY[0x277CFE210] postalCode];
      [dictionary setValue:postalCode2 forKey:postalCode3];
    }

    street = [address street];

    if (street)
    {
      street2 = [address street];
      thoroughfare = [MEMORY[0x277CFE210] thoroughfare];
      [dictionary setValue:street2 forKey:thoroughfare];
    }

    stateCode = [address stateCode];

    if (stateCode)
    {
      stateCode2 = [address stateCode];
      stateOrProvince = [MEMORY[0x277CFE210] stateOrProvince];
      [dictionary setValue:stateCode2 forKey:stateOrProvince];
    }

    countryCode = [address countryCode];

    if (countryCode)
    {
      countryCode2 = [address countryCode];
      country = [MEMORY[0x277CFE210] country];
      [dictionary setValue:countryCode2 forKey:country];
    }

    longitude = [address longitude];

    if (longitude)
    {
      longitude2 = [address longitude];
      longitude3 = [MEMORY[0x277CFE210] longitude];
      [dictionary setValue:longitude2 forKey:longitude3];
    }

    latitude = [address latitude];

    if (latitude)
    {
      latitude2 = [address latitude];
      latitude3 = [MEMORY[0x277CFE210] latitude];
      [dictionary setValue:latitude2 forKey:latitude3];
    }
  }

  phoneNumber = [self phoneNumber];

  if (phoneNumber)
  {
    phoneNumber2 = [self phoneNumber];
    [dictionary setValue:phoneNumber2 forKey:@"_DKLocationApplicationActivityMetadataKey-phoneNumber"];
  }

  [v2 setMetadata:dictionary];
  [v2 setVisibility:*MEMORY[0x277D47BF8]];
  [v2 setStreamType:@"/app/locationActivity"];
  v31 = objc_alloc_init(MEMORY[0x277D476B0]);
  [v31 setActivity:v2];

  return v31;
}

@end