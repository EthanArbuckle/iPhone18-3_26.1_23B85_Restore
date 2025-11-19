@interface SKANGhostbackEntity
+ (id)defaultProperties;
- (BOOL)canUpdateWithRestrictedConversionValue:(int64_t)a3;
@end

@implementation SKANGhostbackEntity

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
  v4[11] = @"environment";
  v2 = [NSArray arrayWithObjects:v4 count:12];

  return v2;
}

- (BOOL)canUpdateWithRestrictedConversionValue:(int64_t)a3
{
  v5 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  [v5 timeIntervalSince1970];
  v7 = v6;

  v8 = sub_100340328(self, @"environment");
  v9 = [_TtC9appstored21SKANEnvironmentHelper pingbackDelayOverrideForEnvironment:v8];
  v10 = v9;
  if (v9)
  {
    v11 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", -[v9 integerValue]);
    [v11 timeIntervalSince1970];
    v7 = v12;
  }

  v13 = sub_100340154(self, @"restricted_update_timestamp");
  v14 = [v13 longLongValue];

  v15 = v14 >= (v7 * 1000.0) && sub_1003402E8(self, @"restricted_conversion_value") < a3;
  return v15;
}

@end