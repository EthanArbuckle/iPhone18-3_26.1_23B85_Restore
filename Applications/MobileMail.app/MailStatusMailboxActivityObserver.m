@interface MailStatusMailboxActivityObserver
- (MailStatusMailboxActivityObserver)initWithDelegate:(id)a3;
- (void)setMailboxesOfInterest:(id)a3 mailboxTypeResolver:(id)a4;
- (void)startWithRegistry:(id)a3;
- (void)tearDown;
@end

@implementation MailStatusMailboxActivityObserver

- (MailStatusMailboxActivityObserver)initWithDelegate:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  return sub_1003956C0(a3);
}

- (void)tearDown
{
  swift_getObjectType();
  _objc_retain(self);
  sub_100395BEC();
  _objc_release(self);
}

- (void)startWithRegistry:(id)a3
{
  swift_getObjectType();
  _objc_retain(a3);
  _objc_retain(self);
  sub_100396468(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)setMailboxesOfInterest:(id)a3 mailboxTypeResolver:(id)a4
{
  swift_getObjectType();
  _objc_retain(a3);
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1003655EC();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100396E10(v5, a4);

  _objc_release(a3);
  _objc_release(self);
  swift_unknownObjectRelease();
}

@end