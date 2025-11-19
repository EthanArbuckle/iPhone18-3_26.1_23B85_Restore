@interface MPMediaKitInitPropertyRadioStationEventMap
@end

@implementation MPMediaKitInitPropertyRadioStationEventMap

id ___MPMediaKitInitPropertyRadioStationEventMap_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.endTime"];
  v3 = _MPMediaKitDateAndTimeFromString(v2);

  return v3;
}

id ___MPMediaKitInitPropertyRadioStationEventMap_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:@"attributes.startTime"];
  v3 = _MPMediaKitDateAndTimeFromString(v2);

  return v3;
}

void ___MPMediaKitInitPropertyRadioStationEventMap_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___MPMediaKitInitPropertyRadioStationEventMap_block_invoke_2;
  v11[3] = &unk_1E7680C00;
  v12 = v6;
  v7 = v6;
  v8 = a4;
  v9 = a3;
  [v8 setRadioIdentifiersWithBlock:v11];
  v10 = [v9 personID];

  [v8 setPersonalStoreIdentifiersWithPersonID:v10 block:&__block_literal_global_551];
}

void ___MPMediaKitInitPropertyRadioStationEventMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:@"id"];
  [v3 setStationEventID:v4];
}

@end