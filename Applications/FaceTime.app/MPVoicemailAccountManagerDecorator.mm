@interface MPVoicemailAccountManagerDecorator
- (BOOL)isAccountSubscribed:(id)subscribed;
- (BOOL)isAnyAccountSubscribed;
- (BOOL)isCallVoicemailSupportedForAccountUUID:(id)d;
- (BOOL)isGreetingChangeSupportedForAccountUUID:(id)d;
- (BOOL)isMessageWaiting;
- (BOOL)isOnline;
- (BOOL)isPasscodeChangeSupportedForAccountUUID:(id)d;
- (BOOL)isTranscriptionEnabled;
- (MPVoicemailAccountManagerDecorator)init;
- (MPVoicemailAccountManagerDecorator)initWithVMD:(id)d;
- (NSArray)accounts;
- (NSProgress)transcriptionProgress;
- (double)maximumGreetingDurationForAccountUUID:(id)d;
- (id)listenForChangesWithHandler:(id)handler;
- (int64_t)estimatedAccountCount;
- (int64_t)maximumPasscodeLengthForAccountUUID:(id)d;
- (int64_t)minimumPasscodeLengthForAccountUUID:(id)d;
- (unint64_t)storageUsage;
- (void)greetingForAccountUUID:(id)d completion:(id)completion;
- (void)setGreeting:(id)greeting forAccountUUID:(id)d completion:(id)completion;
- (void)setPasscode:(id)passcode forAccountUUID:(id)d completion:(id)completion;
@end

@implementation MPVoicemailAccountManagerDecorator

- (BOOL)isAnyAccountSubscribed
{
  selfCopy = self;
  v3 = sub_10008982C("VMD(%s) isSubscribed: %{BOOL}d");

  return v3 & 1;
}

- (BOOL)isOnline
{
  selfCopy = self;
  v3 = sub_100089644();

  return v3 & 1;
}

- (BOOL)isMessageWaiting
{
  selfCopy = self;
  v3 = sub_10008982C("VMD(%s) isMessageWaiting: %{BOOL}d");

  return v3 & 1;
}

- (unint64_t)storageUsage
{
  selfCopy = self;
  v3 = sub_100089A0C();

  return v3;
}

- (int64_t)estimatedAccountCount
{
  selfCopy = self;
  v3 = sub_100089BE8();

  return v3;
}

- (NSArray)accounts
{
  selfCopy = self;
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
  selfCopy = self;
  v7 = v5(ObjectType, v3);

  return v7 & 1;
}

- (NSProgress)transcriptionProgress
{
  v3 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 80);
  selfCopy = self;
  v7 = v5(ObjectType, v3);

  return v7;
}

- (MPVoicemailAccountManagerDecorator)initWithVMD:(id)d
{
  dCopy = d;
  v4 = sub_10008BF20(dCopy);

  return v4;
}

- (BOOL)isCallVoicemailSupportedForAccountUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 88);
  selfCopy = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12 & 1;
}

- (BOOL)isAccountSubscribed:(id)subscribed
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 96);
  selfCopy = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12 & 1;
}

- (BOOL)isGreetingChangeSupportedForAccountUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 104);
  selfCopy = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12 & 1;
}

- (BOOL)isPasscodeChangeSupportedForAccountUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 112);
  selfCopy = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12 & 1;
}

- (int64_t)maximumPasscodeLengthForAccountUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 120);
  selfCopy = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12;
}

- (int64_t)minimumPasscodeLengthForAccountUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 128);
  selfCopy = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12;
}

- (void)setPasscode:(id)passcode forAccountUUID:(id)d completion:(id)completion
{
  v20 = type metadata accessor for UUID();
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 136);
  selfCopy = self;
  v16(v19, v12, v9, sub_100064A34, v13, ObjectType, v14);

  (*(v7 + 8))(v9, v20);
}

- (double)maximumGreetingDurationForAccountUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 144);
  selfCopy = self;
  v12 = v10(v7, ObjectType, v8);
  (*(v5 + 8))(v7, v4);

  return v12;
}

- (void)greetingForAccountUUID:(id)d completion:(id)completion
{
  v16 = type metadata accessor for UUID();
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 152);
  selfCopy = self;
  v13(v8, sub_1000646B8, v10, ObjectType, v11);

  (*(v6 + 8))(v8, v16);
}

- (void)setGreeting:(id)greeting forAccountUUID:(id)d completion:(id)completion
{
  v18 = type metadata accessor for UUID();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &selfCopy - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 160);
  greetingCopy = greeting;
  selfCopy = self;
  v15(greetingCopy, v10, sub_100064188, v12, ObjectType, v13);

  (*(v8 + 8))(v10, v18);
}

- (id)listenForChangesWithHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  v8 = sub_10008B2FC(sub_100064010, v6);

  _Block_release(handler);

  return v8;
}

- (MPVoicemailAccountManagerDecorator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end