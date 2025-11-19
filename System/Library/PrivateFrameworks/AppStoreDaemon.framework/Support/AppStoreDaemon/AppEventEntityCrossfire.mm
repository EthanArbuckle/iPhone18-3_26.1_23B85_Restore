@interface AppEventEntityCrossfire
+ (id)defaultProperties;
@end

@implementation AppEventEntityCrossfire

+ (id)defaultProperties
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___AppEventEntityCrossfire;
  v2 = objc_msgSendSuper2(&v7, "defaultProperties");
  v3 = [NSMutableArray arrayWithArray:v2];

  v8[0] = @"clip_affiliate_token";
  v8[1] = @"clip_app_type";
  v8[2] = @"clip_campaign";
  v8[3] = @"clip_campaign_token";
  v8[4] = @"clip_provider_token";
  v8[5] = @"clip_ref_source";
  v8[6] = @"clip_ref_type";
  v4 = [NSArray arrayWithObjects:v8 count:7];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

@end