@interface SKANGhostback
+ (id)defaultProperties;
- (void)setFreeConversionValue:(int64_t)value;
- (void)setIsLocked:(BOOL)locked;
- (void)setIsRegistered:(BOOL)registered;
- (void)setRestrictedConversionValue:(int64_t)value;
@end

@implementation SKANGhostback

+ (id)defaultProperties
{
  v4[0] = @"app_adam_id";
  v4[1] = @"app_bundle_id";
  v4[2] = @"restricted_conversion_value";
  v4[3] = @"free_conversion_value";
  v4[4] = @"coarse_conversion_value";
  v4[5] = @"is_registered";
  v4[6] = @"origin_timestamp";
  v4[7] = @"update_timestamp";
  v4[8] = @"restricted_update_timestamp";
  v4[9] = @"fetch_timestamp";
  v4[10] = @"is_locked";
  v2 = [NSArray arrayWithObjects:v4 count:11];

  return v2;
}

- (void)setRestrictedConversionValue:(int64_t)value
{
  v4 = [NSNumber numberWithInteger:value];
  sub_10023E000(self, v4, @"restricted_conversion_value");
}

- (void)setFreeConversionValue:(int64_t)value
{
  v4 = [NSNumber numberWithInteger:value];
  sub_10023E000(self, v4, @"free_conversion_value");
}

- (void)setIsRegistered:(BOOL)registered
{
  v4 = [NSNumber numberWithBool:registered];
  sub_10023E000(self, v4, @"is_registered");
}

- (void)setIsLocked:(BOOL)locked
{
  v4 = [NSNumber numberWithBool:locked];
  sub_10023E000(self, v4, @"is_locked");
}

@end