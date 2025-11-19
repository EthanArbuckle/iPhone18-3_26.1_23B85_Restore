@interface SiriMailComposeCoordinator
- (NSString)bodyWithoutSignature;
- (void)onHostAction:(id)a3;
- (void)setBccRecipients:(id)a3;
- (void)setBody:(id)a3;
- (void)setBodyWithoutSignature:(id)a3;
- (void)setCcRecipients:(id)a3;
- (void)setFocusedField:(id)a3;
- (void)setSignature:(id)a3;
- (void)setState:(id)a3;
- (void)setSubject:(id)a3;
- (void)setToRecipients:(id)a3;
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

- (void)setBodyWithoutSignature:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;
    _objc_release(a3);
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

- (void)setSubject:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10044B060(v4, v5);

  _objc_release(a3);
  _objc_release(self);
}

- (void)setBody:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10044BB04(v4, v5);

  _objc_release(a3);
  _objc_release(self);
}

- (void)setSignature:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10044C6E4(v4, v5);

  _objc_release(a3);
  _objc_release(self);
}

- (void)setToRecipients:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100451AA0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10044D06C(v4);

  _objc_release(a3);
  _objc_release(self);
}

- (void)setCcRecipients:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100451AA0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10044DBC0(v4);

  _objc_release(a3);
  _objc_release(self);
}

- (void)setBccRecipients:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100451AA0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10044E60C(v4);

  _objc_release(a3);
  _objc_release(self);
}

- (void)setFocusedField:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_10044F058(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)setState:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_10044FAFC(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)onHostAction:(id)a3
{
  v12 = self;
  v11 = a3;
  v10 = type metadata accessor for Notification();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v11);
  v9 = &v5 - v6;
  _objc_retain(v4);
  _objc_retain(self);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100450914(v9);
  (*(v7 + 8))(v9, v10);
  _objc_release(v11);
  _objc_release(v12);
}

@end