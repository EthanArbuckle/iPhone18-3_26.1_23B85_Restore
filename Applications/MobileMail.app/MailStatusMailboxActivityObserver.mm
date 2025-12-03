@interface MailStatusMailboxActivityObserver
- (MailStatusMailboxActivityObserver)initWithDelegate:(id)delegate;
- (void)setMailboxesOfInterest:(id)interest mailboxTypeResolver:(id)resolver;
- (void)startWithRegistry:(id)registry;
- (void)tearDown;
@end

@implementation MailStatusMailboxActivityObserver

- (MailStatusMailboxActivityObserver)initWithDelegate:(id)delegate
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  return sub_1003956C0(delegate);
}

- (void)tearDown
{
  swift_getObjectType();
  _objc_retain(self);
  sub_100395BEC();
  _objc_release(self);
}

- (void)startWithRegistry:(id)registry
{
  swift_getObjectType();
  _objc_retain(registry);
  _objc_retain(self);
  sub_100396468(registry);
  _objc_release(self);
  _objc_release(registry);
}

- (void)setMailboxesOfInterest:(id)interest mailboxTypeResolver:(id)resolver
{
  swift_getObjectType();
  _objc_retain(interest);
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1003655EC();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100396E10(v5, resolver);

  _objc_release(interest);
  _objc_release(self);
  swift_unknownObjectRelease();
}

@end