@interface SALocalSearchBusiness2(SARecordActivity)
- (id)donateActivityCommand;
@end

@implementation SALocalSearchBusiness2(SARecordActivity)

- (id)donateActivityCommand
{
  v2 = objc_alloc_init(MEMORY[0x277D47158]);
  v3 = [a1 address];
  [v2 setType:@"com.apple.siri.businessLocation"];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (v3)
  {
    v5 = [v3 label];

    if (v5)
    {
      v6 = [v3 label];
      v7 = [MEMORY[0x277CFE210] locationName];
      [v4 setValue:v6 forKey:v7];
    }

    v8 = [v3 city];

    if (v8)
    {
      v9 = [v3 city];
      v10 = [MEMORY[0x277CFE210] city];
      [v4 setValue:v9 forKey:v10];
    }

    v11 = [v3 postalCode];

    if (v11)
    {
      v12 = [v3 postalCode];
      v13 = [MEMORY[0x277CFE210] postalCode];
      [v4 setValue:v12 forKey:v13];
    }

    v14 = [v3 street];

    if (v14)
    {
      v15 = [v3 street];
      v16 = [MEMORY[0x277CFE210] thoroughfare];
      [v4 setValue:v15 forKey:v16];
    }

    v17 = [v3 stateCode];

    if (v17)
    {
      v18 = [v3 stateCode];
      v19 = [MEMORY[0x277CFE210] stateOrProvince];
      [v4 setValue:v18 forKey:v19];
    }

    v20 = [v3 countryCode];

    if (v20)
    {
      v21 = [v3 countryCode];
      v22 = [MEMORY[0x277CFE210] country];
      [v4 setValue:v21 forKey:v22];
    }

    v23 = [v3 longitude];

    if (v23)
    {
      v24 = [v3 longitude];
      v25 = [MEMORY[0x277CFE210] longitude];
      [v4 setValue:v24 forKey:v25];
    }

    v26 = [v3 latitude];

    if (v26)
    {
      v27 = [v3 latitude];
      v28 = [MEMORY[0x277CFE210] latitude];
      [v4 setValue:v27 forKey:v28];
    }
  }

  v29 = [a1 phoneNumber];

  if (v29)
  {
    v30 = [a1 phoneNumber];
    [v4 setValue:v30 forKey:@"_DKLocationApplicationActivityMetadataKey-phoneNumber"];
  }

  [v2 setMetadata:v4];
  [v2 setVisibility:*MEMORY[0x277D47BF8]];
  [v2 setStreamType:@"/app/locationActivity"];
  v31 = objc_alloc_init(MEMORY[0x277D476B0]);
  [v31 setActivity:v2];

  return v31;
}

@end