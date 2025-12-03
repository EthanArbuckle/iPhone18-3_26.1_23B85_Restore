@interface MPMediaItem(_QLUtilities)
+ (id)playingInfoFromAsset:()_QLUtilities withDefaultTitle:;
+ (id)playingInfoFromAsset:()_QLUtilities withDefaultTitle:playbackDuration:elapsedTime:;
+ (id)ql_propertyTitleFromAsset:()_QLUtilities;
@end

@implementation MPMediaItem(_QLUtilities)

+ (id)playingInfoFromAsset:()_QLUtilities withDefaultTitle:
{
  v5 = a3;
  v35 = a4;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = MEMORY[0x277CE6520];
  commonMetadata = [v5 commonMetadata];
  v9 = *MEMORY[0x277CE5F98];
  v10 = [v7 metadataItemsFromArray:commonMetadata withKey:*MEMORY[0x277CE5F08] keySpace:*MEMORY[0x277CE5F98]];
  firstObject = [v10 firstObject];
  stringValue = [firstObject stringValue];

  if (stringValue)
  {
    [dictionary setObject:stringValue forKeyedSubscript:*MEMORY[0x277CD56E8]];
  }

  v13 = MEMORY[0x277CE6520];
  commonMetadata2 = [v5 commonMetadata];
  v15 = [v13 metadataItemsFromArray:commonMetadata2 withKey:*MEMORY[0x277CE5F00] keySpace:v9];
  firstObject2 = [v15 firstObject];
  stringValue2 = [firstObject2 stringValue];

  if (stringValue2)
  {
    [dictionary setObject:stringValue2 forKeyedSubscript:*MEMORY[0x277CD56D0]];
  }

  v18 = [objc_opt_class() ql_propertyTitleFromAsset:v5];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v35;
  }

  [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277CD58B8]];
  v20 = MEMORY[0x277CE6520];
  commonMetadata3 = [v5 commonMetadata];
  v22 = [v20 metadataItemsFromArray:commonMetadata3 withKey:*MEMORY[0x277CE5F10] keySpace:v9];
  firstObject3 = [v22 firstObject];
  dataValue = [firstObject3 dataValue];

  if (dataValue && [dataValue length])
  {
    v25 = [MEMORY[0x277D755B8] imageWithData:dataValue];
    v26 = objc_alloc(MEMORY[0x277CD5DE8]);
    [v25 size];
    v28 = v27;
    v30 = v29;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __67__MPMediaItem__QLUtilities__playingInfoFromAsset_withDefaultTitle___block_invoke;
    v36[3] = &unk_278B57EF0;
    v37 = v25;
    v31 = v25;
    v32 = [v26 initWithBoundsSize:v36 requestHandler:{v28, v30}];
    if (v32)
    {
      [dictionary setObject:v32 forKeyedSubscript:*MEMORY[0x277CD56F8]];
    }
  }

  v33 = [dictionary copy];

  return v33;
}

+ (id)playingInfoFromAsset:()_QLUtilities withDefaultTitle:playbackDuration:elapsedTime:
{
  v4 = [MEMORY[0x277CD5DE0] playingInfoFromAsset:? withDefaultTitle:?];
  v5 = [v4 mutableCopy];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD57E8]];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD5CC8]];

  v8 = [v5 copy];

  return v8;
}

+ (id)ql_propertyTitleFromAsset:()_QLUtilities
{
  v3 = MEMORY[0x277CE6520];
  commonMetadata = [a3 commonMetadata];
  v5 = [v3 metadataItemsFromArray:commonMetadata withKey:*MEMORY[0x277CE5F28] keySpace:*MEMORY[0x277CE5F98]];
  firstObject = [v5 firstObject];
  stringValue = [firstObject stringValue];

  return stringValue;
}

@end