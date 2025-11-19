@interface AMSEngagementMessageCache
- (BOOL)isBlockedWithMessageRequest:(id)a3 placement:(id)a4 serviceType:(id)a5;
- (id)filterWithMessage:(id)a3;
- (void)addWithCachePolicy:(int64_t)a3 placement:(id)a4 serviceType:(id)a5;
@end

@implementation AMSEngagementMessageCache

- (id)filterWithMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1929539B4(v4);

  v6 = sub_192F96AFC();

  return v6;
}

- (void)addWithCachePolicy:(int64_t)a3 placement:(id)a4 serviceType:(id)a5
{
  sub_192F967CC();
  sub_192F967CC();
  v6 = self;
  sub_192C986E0();
}

- (BOOL)isBlockedWithMessageRequest:(id)a3 placement:(id)a4 serviceType:(id)a5
{
  sub_192F967CC();
  sub_192F967CC();
  v7 = a3;
  v8 = self;
  v9 = sub_192C98810();

  return v9 & 1;
}

@end