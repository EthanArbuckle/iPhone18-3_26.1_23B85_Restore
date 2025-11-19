@interface CHNavigator
+ (CHNavigator)sharedNavigator;
+ (NSString)scheme;
- (BOOL)navigateToURL:(id)a3 context:(id)a4;
- (BOOL)registerURLHandlerWithSlug:(id)a3 behavior:(id)a4 completion:(id)a5;
- (BOOL)registerURLHandlerWithSlug:(id)a3 completion:(id)a4;
- (CHNavigator)init;
- (id)regexFormattedURL:(id)a3;
- (void)unregister:(id)a3;
@end

@implementation CHNavigator

- (BOOL)registerURLHandlerWithSlug:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = type metadata accessor for NavigatorBehavior();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR___CHNavigatorBehavior_allowedDuringWorkout] = 0;
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = self;
  v13 = [(CHNavigator *)&v15 init];
  LOBYTE(v6) = sub_10003B518(v6, v8, v13, sub_1004DB46C, v9);

  return v6 & 1;
}

- (BOOL)registerURLHandlerWithSlug:(id)a3 behavior:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a4;
  v13 = self;
  LOBYTE(v8) = sub_10003B518(v8, v10, v12, sub_1004DB460, v11);

  return v8 & 1;
}

+ (CHNavigator)sharedNavigator
{
  if (qword_1008DACC0 != -1)
  {
    swift_once();
  }

  v3 = qword_100925BA8;

  return v3;
}

+ (NSString)scheme
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)unregister:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_1004D9E8C(v4, v6);
}

- (BOOL)navigateToURL:(id)a3 context:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a4;
  v11 = self;
  LOBYTE(self) = sub_1004DA120(v9, v10);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)regexFormattedURL:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_100041BB0();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (CHNavigator)init
{
  *(&self->super.isa + OBJC_IVAR___CHNavigator_urlKeys) = _swiftEmptyArrayStorage;
  *(&self->super.isa + OBJC_IVAR___CHNavigator_urlHandlers) = _swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for Navigator();
  return [(CHNavigator *)&v3 init];
}

@end