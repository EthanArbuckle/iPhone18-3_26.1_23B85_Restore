@interface AppInstall
+ (id)defaultProperties;
@end

@implementation AppInstall

+ (id)defaultProperties
{
  v4[0] = @"arcade";
  v4[1] = @"automatic_type";
  v4[2] = @"bootstrapped";
  v4[3] = @"bundle_id";
  v4[4] = @"client_id";
  v4[5] = @"coordinator_intent";
  v4[6] = @"external_id";
  v4[7] = @"item_id";
  v4[8] = @"last_start_date";
  v4[9] = @"log_code";
  v4[10] = @"optimal_download_start";
  v4[11] = @"order_index";
  v4[12] = @"priority";
  v4[13] = @"policy";
  v4[14] = @"preorder";
  v4[15] = @"restore_type";
  v4[16] = @"software_platform";
  v4[17] = @"source_type";
  v4[18] = @"supress_dialogs";
  v4[19] = @"update_type";
  v2 = [NSArray arrayWithObjects:v4 count:20];

  return v2;
}

@end