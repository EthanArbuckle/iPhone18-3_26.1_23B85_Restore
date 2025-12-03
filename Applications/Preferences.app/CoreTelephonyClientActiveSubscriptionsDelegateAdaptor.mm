@interface CoreTelephonyClientActiveSubscriptionsDelegateAdaptor
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)displayStatusChanged:(id)changed status:(id)status;
@end

@implementation CoreTelephonyClientActiveSubscriptionsDelegateAdaptor

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v15 - v12;
  (*(v10 + 16))(&v15 - v12, self + OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_satelliteCarrierNameStreamContinuation, v9);
  selfCopy = self;
  AsyncStream.Continuation.finish()();
  (*(v10 + 8))(v13, v9);
  (*(v5 + 16))(v8, selfCopy + OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_coreTelephonyUpdateStreamContinuation, v4);
  AsyncStream.Continuation.finish()();
  (*(v5 + 8))(v8, v4);
  v15.receiver = selfCopy;
  v15.super_class = ObjectType;
  [(CoreTelephonyClientActiveSubscriptionsDelegateAdaptor *)&v15 dealloc];
}

- (void)displayStatusChanged:(id)changed status:(id)status
{
  v5 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  selfCopy = self;
  AsyncStream.Continuation.yield<A>()();

  (*(v6 + 8))(v9, v5);
}

- (void)activeSubscriptionsDidChange
{
  v3 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  selfCopy = self;
  AsyncStream.Continuation.yield<A>()();

  (*(v4 + 8))(v7, v3);
}

@end