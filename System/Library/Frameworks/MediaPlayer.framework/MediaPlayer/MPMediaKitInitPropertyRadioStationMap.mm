@interface MPMediaKitInitPropertyRadioStationMap
@end

@implementation MPMediaKitInitPropertyRadioStationMap

id ___MPMediaKitInitPropertyRadioStationMap_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.airTime.end"];
  v3 = _MPMediaKitDateAndTimeFromString(v2);

  return v3;
}

id ___MPMediaKitInitPropertyRadioStationMap_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.airTime.start"];
  v3 = _MPMediaKitDateAndTimeFromString(v2);

  return v3;
}

id ___MPMediaKitInitPropertyRadioStationMap_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.streamingRadioSubType"];
  if ([v2 isEqualToString:@"Episode"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"Shoutcast"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:v3];

  return v4;
}

id ___MPMediaKitInitPropertyRadioStationMap_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.contentRating"];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isEqualToString:", @"explicit"}];

  return v3;
}

void ___MPMediaKitInitPropertyRadioStationMap_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___MPMediaKitInitPropertyRadioStationMap_block_invoke_2;
  v11[3] = &unk_1E7680C00;
  v12 = v6;
  v7 = v6;
  v8 = a4;
  v9 = a3;
  [v8 setRadioIdentifiersWithBlock:v11];
  v10 = [v9 personID];

  [v8 setPersonalStoreIdentifiersWithPersonID:v10 block:&__block_literal_global_479];
}

void ___MPMediaKitInitPropertyRadioStationMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:@"id"];
  [v3 setStationStringID:v4];
}

@end