@interface MailStatusDataSource
- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change;
@end

@implementation MailStatusDataSource

- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change
{
  _objc_retain(repository);
  _objc_retain(query);
  _objc_retain(self);
  sub_100023C9C(repository, query, change);
  _objc_release(self);
  _objc_release(query);
  _objc_release(repository);
}

@end