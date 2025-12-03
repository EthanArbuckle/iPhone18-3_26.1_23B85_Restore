@interface AMSEngagementMessageCache
- (BOOL)isBlockedWithMessageRequest:(id)request placement:(id)placement serviceType:(id)type;
- (id)filterWithMessage:(id)message;
- (void)addWithCachePolicy:(int64_t)policy placement:(id)placement serviceType:(id)type;
@end

@implementation AMSEngagementMessageCache

- (id)filterWithMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  sub_1929539B4(messageCopy);

  v6 = sub_192F96AFC();

  return v6;
}

- (void)addWithCachePolicy:(int64_t)policy placement:(id)placement serviceType:(id)type
{
  sub_192F967CC();
  sub_192F967CC();
  selfCopy = self;
  sub_192C986E0();
}

- (BOOL)isBlockedWithMessageRequest:(id)request placement:(id)placement serviceType:(id)type
{
  sub_192F967CC();
  sub_192F967CC();
  requestCopy = request;
  selfCopy = self;
  v9 = sub_192C98810();

  return v9 & 1;
}

@end