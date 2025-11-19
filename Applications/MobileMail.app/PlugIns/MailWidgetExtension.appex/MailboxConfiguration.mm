@interface MailboxConfiguration
- (BOOL)isInboxMailbox;
- (NSString)bucketBarConfigurationIdentifier;
- (void)setBucketBarConfigurationIdentifier:(id)a3;
- (void)setIsInboxMailbox:(BOOL)a3;
@end

@implementation MailboxConfiguration

- (BOOL)isInboxMailbox
{
  _objc_retain(self);
  sub_10001B76C();
  _objc_release(self);
  return sub_10007CEB8() & 1;
}

- (void)setIsInboxMailbox:(BOOL)a3
{
  _objc_retain(self);
  v3 = sub_10007CEC8();
  sub_10001B834(v3 & 1);
  _objc_release(self);
}

- (NSString)bucketBarConfigurationIdentifier
{
  _objc_retain(self);
  sub_10001B934();
  _objc_release(self);
  v4 = sub_10007D858();

  return v4;
}

- (void)setBucketBarConfigurationIdentifier:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  v4 = sub_10007D868();
  sub_10001BA24(v4, v5);
  _objc_release(a3);
  _objc_release(self);
}

@end