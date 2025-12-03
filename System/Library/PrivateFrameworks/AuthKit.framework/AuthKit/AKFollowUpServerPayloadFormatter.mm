@interface AKFollowUpServerPayloadFormatter
+ (id)pendingAuthKitFollowUpPayload:(id)payload;
@end

@implementation AKFollowUpServerPayloadFormatter

+ (id)pendingAuthKitFollowUpPayload:(id)payload
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v4 = [location[0] aaf_map:&__block_literal_global_38];
  objc_storeStrong(location, 0);

  return v4;
}

id __66__AKFollowUpServerPayloadFormatter_pendingAuthKitFollowUpPayload___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[1] = a1;
  v11[0] = [MEMORY[0x1E695DF90] dictionary];
  v10 = [location[0] uniqueIdentifier];
  MEMORY[0x1E69E5920](v10);
  if (v10)
  {
    v8 = [location[0] uniqueIdentifier];
    [v11[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v8);
  }

  v6 = [location[0] userInfo];
  v7 = [v6 objectForKeyedSubscript:@"idmsdata"];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v6);
  if (v7)
  {
    v5 = [location[0] userInfo];
    v4 = [v5 objectForKeyedSubscript:@"idmsdata"];
    [v11[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v5);
  }

  v3 = MEMORY[0x1E69E5928](v11[0]);
  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);

  return v3;
}

@end