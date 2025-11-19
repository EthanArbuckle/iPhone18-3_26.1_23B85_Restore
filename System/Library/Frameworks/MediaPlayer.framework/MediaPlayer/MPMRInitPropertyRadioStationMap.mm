@interface MPMRInitPropertyRadioStationMap
@end

@implementation MPMRInitPropertyRadioStationMap

id ___MPMRInitPropertyRadioStationMap_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"raPrID"];

  return v3;
}

id ___MPMRInitPropertyRadioStationMap_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"raBID"];

  return v3;
}

id ___MPMRInitPropertyRadioStationMap_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"raPUL"];

  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  return v4;
}

id ___MPMRInitPropertyRadioStationMap_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"raSty"];

  return v3;
}

id ___MPMRInitPropertyRadioStationMap_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"raTy"];

  return v3;
}

id ___MPMRInitPropertyRadioStationMap_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"raAttrLbl"];

  return v3;
}

void ___MPMRInitPropertyRadioStationMap_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___MPMRInitPropertyRadioStationMap_block_invoke_2;
  v6[3] = &unk_1E7680C00;
  v7 = v4;
  v5 = v4;
  [a3 setRadioIdentifiersWithBlock:v6];
}

void ___MPMRInitPropertyRadioStationMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 radioStationStringIdentifier];
  [v3 setStationStringID:v4];
}

@end