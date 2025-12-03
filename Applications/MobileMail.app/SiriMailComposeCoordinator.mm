@interface SiriMailComposeCoordinator
- (NSString)bodyWithoutSignature;
- (void)onHostAction:(id)action;
- (void)setBccRecipients:(id)recipients;
- (void)setBody:(id)body;
- (void)setBodyWithoutSignature:(id)signature;
- (void)setCcRecipients:(id)recipients;
- (void)setFocusedField:(id)field;
- (void)setSignature:(id)signature;
- (void)setState:(id)state;
- (void)setSubject:(id)subject;
- (void)setToRecipients:(id)recipients;
@end

@implementation SiriMailComposeCoordinator

- (NSString)bodyWithoutSignature
{
  _objc_retain(self);
  sub_10044A528();
  v7 = v2;
  _objc_release(self);
  if (v7)
  {
    v4 = String._bridgeToObjectiveC()();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setBodyWithoutSignature:(id)signature
{
  _objc_retain(signature);
  _objc_retain(self);
  if (signature)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;
    _objc_release(signature);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_10044A670(v6, v7);
  _objc_release(self);
}

- (void)setSubject:(id)subject
{
  _objc_retain(subject);
  _objc_retain(self);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10044B060(v4, v5);

  _objc_release(subject);
  _objc_release(self);
}

- (void)setBody:(id)body
{
  _objc_retain(body);
  _objc_retain(self);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10044BB04(v4, v5);

  _objc_release(body);
  _objc_release(self);
}

- (void)setSignature:(id)signature
{
  _objc_retain(signature);
  _objc_retain(self);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10044C6E4(v4, v5);

  _objc_release(signature);
  _objc_release(self);
}

- (void)setToRecipients:(id)recipients
{
  _objc_retain(recipients);
  _objc_retain(self);
  sub_100451AA0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10044D06C(v4);

  _objc_release(recipients);
  _objc_release(self);
}

- (void)setCcRecipients:(id)recipients
{
  _objc_retain(recipients);
  _objc_retain(self);
  sub_100451AA0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10044DBC0(v4);

  _objc_release(recipients);
  _objc_release(self);
}

- (void)setBccRecipients:(id)recipients
{
  _objc_retain(recipients);
  _objc_retain(self);
  sub_100451AA0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10044E60C(v4);

  _objc_release(recipients);
  _objc_release(self);
}

- (void)setFocusedField:(id)field
{
  _objc_retain(field);
  _objc_retain(self);
  sub_10044F058(field);
  _objc_release(self);
  _objc_release(field);
}

- (void)setState:(id)state
{
  _objc_retain(state);
  _objc_retain(self);
  sub_10044FAFC(state);
  _objc_release(self);
  _objc_release(state);
}

- (void)onHostAction:(id)action
{
  selfCopy = self;
  actionCopy = action;
  v10 = type metadata accessor for Notification();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(actionCopy);
  v9 = &v5 - v6;
  _objc_retain(v4);
  _objc_retain(self);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100450914(v9);
  (*(v7 + 8))(v9, v10);
  _objc_release(actionCopy);
  _objc_release(selfCopy);
}

@end