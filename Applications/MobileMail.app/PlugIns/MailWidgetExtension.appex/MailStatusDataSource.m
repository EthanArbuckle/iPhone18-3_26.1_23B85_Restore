@interface MailStatusDataSource
- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5;
@end

@implementation MailStatusDataSource

- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  sub_100023C9C(a3, a4, a5);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

@end