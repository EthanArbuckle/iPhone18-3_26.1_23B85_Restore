@interface APSLaunchUtil
+ (id)lsRecordForLaunchPayload:(id)payload error:(id *)error;
- (APSLaunchUtil)init;
@end

@implementation APSLaunchUtil

+ (id)lsRecordForLaunchPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  v5 = sub_22258FD78();
  v7 = v6;

  v8 = sub_2225864A8();
  sub_2225855C0(v5, v7);

  return v8;
}

- (APSLaunchUtil)init
{
  v3.receiver = self;
  v3.super_class = APSLaunchUtil;
  return [(APSLaunchUtil *)&v3 init];
}

@end