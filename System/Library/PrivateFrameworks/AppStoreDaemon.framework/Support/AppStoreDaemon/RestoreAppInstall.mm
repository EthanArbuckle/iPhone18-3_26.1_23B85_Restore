@interface RestoreAppInstall
+ (id)defaultProperties;
- (id)description;
@end

@implementation RestoreAppInstall

+ (id)defaultProperties
{
  v4[0] = @"account_id";
  v4[1] = @"alt_dsid";
  v4[2] = @"apple_id";
  v4[3] = @"arcade";
  v4[4] = @"bootstrapped";
  v4[5] = @"bundle_id";
  v4[6] = @"coordinator_id";
  v4[7] = @"coordinator_intent";
  v4[8] = @"device_based_vpp";
  v4[9] = @"downloader_id";
  v4[10] = @"external_id";
  v4[11] = @"evid";
  v4[12] = @"failure_error";
  v4[13] = @"item_id";
  v4[14] = @"log_code";
  v4[15] = @"metrics_install_type";
  v4[16] = @"order_index";
  v4[17] = @"phase";
  v4[18] = @"priority";
  v4[19] = @"restore_retry_count";
  v4[20] = @"restore_type";
  v4[21] = @"restore_state";
  v4[22] = @"store_metadata";
  v4[23] = @"storefront";
  v4[24] = @"supress_dialogs";
  v4[25] = @"vid";
  v4[26] = @"ROWID";
  v2 = [NSArray arrayWithObjects:v4 count:27];

  return v2;
}

- (id)description
{
  v3 = sub_10040908C(self);
  v4 = sub_10040916C(self);
  v5 = sub_1003987D0(self);
  v6 = sub_10039882C(self);
  v7 = sub_10039872C(self);
  v8 = [NSString stringWithFormat:@"{ bundleID: %@ itemID: %@ evid: %@ storefront: %@ account: %@ }", v3, v4, v5, v6, v7];

  return v8;
}

@end