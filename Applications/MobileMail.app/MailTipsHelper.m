@interface MailTipsHelper
+ (_TtC10MobileMail14MailTipsHelper)shared;
- (void)filterByUnreadUsed;
- (void)setup;
- (void)updateFilterByUnreadRulesWithAmountOfEmails:(int64_t)a3 amountOfUnreads:(int64_t)a4;
@end

@implementation MailTipsHelper

+ (_TtC10MobileMail14MailTipsHelper)shared
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = sub_1003A2894();

  return v2;
}

- (void)setup
{
  _objc_retain(self);
  sub_1003A2B28();
  _objc_release(self);
}

- (void)filterByUnreadUsed
{
  _objc_retain(self);
  sub_1003A312C();
  _objc_release(self);
}

- (void)updateFilterByUnreadRulesWithAmountOfEmails:(int64_t)a3 amountOfUnreads:(int64_t)a4
{
  _objc_retain(self);
  sub_1003A3310();
  _objc_release(self);
}

@end