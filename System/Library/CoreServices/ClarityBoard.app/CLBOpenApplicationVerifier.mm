@interface CLBOpenApplicationVerifier
+ (CLBOpenApplicationVerifier)sharedInstance;
- (BOOL)shouldOpenAppWithBundleIdentifier:(id)a3;
- (BOOL)shouldOpenWebsiteInlineForRequest:(id)a3;
- (CLBOpenApplicationVerifier)init;
- (CLBOpenApplicationVerifier)initWithUserSelectedApplicationBundleIdentifiers:(id)a3;
- (void)verifyRequest:(FBSystemServiceOpenApplicationRequest *)a3 completionHandler:(id)a4;
@end

@implementation CLBOpenApplicationVerifier

+ (CLBOpenApplicationVerifier)sharedInstance
{
  if (qword_10032B500 != -1)
  {
    swift_once();
  }

  v3 = qword_1003368D0;

  return v3;
}

- (CLBOpenApplicationVerifier)initWithUserSelectedApplicationBundleIdentifiers:(id)a3
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for OpenApplicationVerifier();
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR___CLBOpenApplicationVerifier_implementation) = OpenApplicationVerifier.init(userSelectedApplicationBundleIdentifiers:isPPTURL:)();
  v5.receiver = self;
  v5.super_class = type metadata accessor for OpenApplicationVerifierWrapper();
  return [(CLBOpenApplicationVerifier *)&v5 init];
}

- (BOOL)shouldOpenAppWithBundleIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = *(**(&self->super.isa + OBJC_IVAR___CLBOpenApplicationVerifier_implementation) + 104);
  v8 = self;

  LOBYTE(v4) = v7(v4, v6);

  return v4 & 1;
}

- (void)verifyRequest:(FBSystemServiceOpenApplicationRequest *)a3 completionHandler:(id)a4
{
  v7 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029B5B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029A1A8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10008C9F0(0, 0, v9, &unk_10029A1B0, v14);
}

- (BOOL)shouldOpenWebsiteInlineForRequest:(id)a3
{
  v4 = self;
  v5 = *(&self->super.isa + OBJC_IVAR___CLBOpenApplicationVerifier_implementation);
  v10[3] = sub_10002C9FC(0, &qword_10032EF80);
  v10[4] = &protocol witness table for FBSystemServiceOpenApplicationRequest;
  v10[0] = a3;
  v6 = *(*v5 + 120);
  v7 = a3;
  v8 = v4;

  LOBYTE(v4) = v6(v10);

  sub_10002C9B0(v10);
  return v4 & 1;
}

- (CLBOpenApplicationVerifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end