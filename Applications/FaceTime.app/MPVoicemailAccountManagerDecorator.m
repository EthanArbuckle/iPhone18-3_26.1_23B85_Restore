@interface MPVoicemailAccountManagerDecorator
- (BOOL)isAccountSubscribed:(id)a3;
- (BOOL)isAnyAccountSubscribed;
- (BOOL)isCallVoicemailSupportedForAccountUUID:(id)a3;
- (BOOL)isGreetingChangeSupportedForAccountUUID:(id)a3;
- (BOOL)isMessageWaiting;
- (BOOL)isOnline;
- (BOOL)isPasscodeChangeSupportedForAccountUUID:(id)a3;
- (BOOL)isTranscriptionEnabled;
- (MPVoicemailAccountManagerDecorator)init;
- (MPVoicemailAccountManagerDecorator)initWithVMD:(id)a3;
- (NSArray)accounts;
- (NSProgress)transcriptionProgress;
- (double)maximumGreetingDurationForAccountUUID:(id)a3;
- (id)listenForChangesWithHandler:(id)a3;
- (int64_t)estimatedAccountCount;
- (int64_t)maximumPasscodeLengthForAccountUUID:(id)a3;
- (int64_t)minimumPasscodeLengthForAccountUUID:(id)a3;
- (unint64_t)storageUsage;
- (void)greetingForAccountUUID:(id)a3 completion:(id)a4;
- (void)setGreeting:(id)a3 forAccountUUID:(id)a4 completion:(id)a5;
- (void)setPasscode:(id)a3 forAccountUUID:(id)a4 completion:(id)a5;
@end

@implementation MPVoicemailAccountManagerDecorator

- (BOOL)isAnyAccountSubscribed
{
  v2 = self;
  v3 = sub_10008982C("VMD(%s) isSubscribed: %{BOOL}d");

  return v3 & 1;
}

- (BOOL)isOnline
{
  v2 = self;
  v3 = sub_100089644();

  return v3 & 1;
}

- (BOOL)isMessageWaiting
{
  v2 = self;
  v3 = sub_10008982C("VMD(%s) isMessageWaiting: %{BOOL}d");

  return v3 & 1;
}

- (unint64_t)storageUsage
{
  v2 = self;
  v3 = sub_100089A0C();

  return v3;
}

- (int64_t)estimatedAccountCount
{
  v2 = self;
  v3 = sub_100089BE8();

  return v3;
}

- (NSArray)accounts
{
  v2 = self;
  sub_100089E28();

  type metadata accessor for VoicemailAccount();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)isTranscriptionEnabled
{
  v3 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 72);
  v6 = self;
  v7 = v5(ObjectType, v3);

  return v7 & 1;
}

- (NSProgress)transcriptionProgress
{
  v3 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 80);
  v6 = self;
  v7 = v5(ObjectType, v3);

  return v7;
}

- (MPVoicemailAccountManagerDecorator)initWithVMD:(id)a3
{
  v3 = a3;
  v4 = sub_10008BF20(v3);

  return v4;
}

- (BOOL)isCallVoicemailSupportedForAccountUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 88);
  v11 = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12 & 1;
}

- (BOOL)isAccountSubscribed:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 96);
  v11 = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12 & 1;
}

- (BOOL)isGreetingChangeSupportedForAccountUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 104);
  v11 = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12 & 1;
}

- (BOOL)isPasscodeChangeSupportedForAccountUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 112);
  v11 = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12 & 1;
}

- (int64_t)maximumPasscodeLengthForAccountUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 120);
  v11 = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12;
}

- (int64_t)minimumPasscodeLengthForAccountUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 128);
  v11 = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12;
}

- (void)setPasscode:(id)a3 forAccountUUID:(id)a4 completion:(id)a5
{
  v20 = type metadata accessor for UUID();
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a5);
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 136);
  v18 = self;
  v16(v19, v12, v9, sub_100064A34, v13, ObjectType, v14);

  (*(v7 + 8))(v9, v20);
}

- (double)maximumGreetingDurationForAccountUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 144);
  v11 = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12;
}

- (void)greetingForAccountUUID:(id)a3 completion:(id)a4
{
  v16 = type metadata accessor for UUID();
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 152);
  v14 = self;
  v13(v8, sub_1000646B8, v10, ObjectType, v11);

  (*(v6 + 8))(v8, v16);
}

- (void)setGreeting:(id)a3 forAccountUUID:(id)a4 completion:(id)a5
{
  v18 = type metadata accessor for UUID();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 160);
  v16 = a3;
  v17 = self;
  v15(v16, v10, sub_100064188, v12, ObjectType, v13);

  (*(v8 + 8))(v10, v18);
}

- (id)listenForChangesWithHandler:(id)a3
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self;
  v8 = sub_10008B2FC(sub_100064010, v6);

  _Block_release(a3);

  return v8;
}

- (MPVoicemailAccountManagerDecorator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end