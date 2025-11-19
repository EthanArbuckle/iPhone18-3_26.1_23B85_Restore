@interface PDASMPublishAccountOperation
+ (id)defaultEndpointInfo;
@end

@implementation PDASMPublishAccountOperation

+ (id)defaultEndpointInfo
{
  v2 = objc_alloc_init(PDEndpointInfo);
  sub_100087930(v2, @"apple_school_manager");
  sub_10003F68C(v2, @"ee.publishAccount");
  sub_10003F69C(v2, @"https://ws.school.apple.com/maid/v1/account/publish");
  if (v2)
  {
    v2->_payloadLimitItems = 0;
    v2->_payloadLimitBytes = 0;
    v2->_responseTTLSeconds = 0;
    *&v2->_requiresAuth = 257;
  }

  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end