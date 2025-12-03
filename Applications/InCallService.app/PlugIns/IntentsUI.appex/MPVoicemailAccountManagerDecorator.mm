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
  v3 = sub_100075A1C("VMD(%s) isSubscribed: %{BOOL}d");

  return v3 & 1;
}

- (BOOL)isOnline
{
  selfCopy = self;
  v3 = sub_100075818();

  return v3 & 1;
}

- (BOOL)isMessageWaiting
{
  selfCopy = self;
  v3 = sub_100075A1C("VMD(%s) isMessageWaiting: %{BOOL}d");

  return v3 & 1;
}

- (unint64_t)storageUsage
{
  selfCopy = self;
  v3 = sub_100075C18();

  return v3;
}

- (int64_t)estimatedAccountCount
{
  selfCopy = self;
  v3 = sub_100075E10();

  return v3;
}

- (NSArray)accounts
{
  selfCopy = self;
  sub_10007606C();

  type metadata accessor for VoicemailAccount();
  v3.super.isa = sub_10007B518().super.isa;

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
  v4 = sub_1000785D4(dCopy);

  return v4;
}

- (BOOL)isCallVoicemailSupportedForAccountUUID:(id)d
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 88);
  selfCopy = self;
  v13 = v11(v8, ObjectType, v9);
  (*(v5 + 8))(v8, v4);

  return v13 & 1;
}

- (BOOL)isAccountSubscribed:(id)subscribed
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 96);
  selfCopy = self;
  v13 = v11(v8, ObjectType, v9);
  (*(v5 + 8))(v8, v4);

  return v13 & 1;
}

- (BOOL)isGreetingChangeSupportedForAccountUUID:(id)d
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 104);
  selfCopy = self;
  v13 = v11(v8, ObjectType, v9);
  (*(v5 + 8))(v8, v4);

  return v13 & 1;
}

- (BOOL)isPasscodeChangeSupportedForAccountUUID:(id)d
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 112);
  selfCopy = self;
  v13 = v11(v8, ObjectType, v9);
  (*(v5 + 8))(v8, v4);

  return v13 & 1;
}

- (int64_t)maximumPasscodeLengthForAccountUUID:(id)d
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 120);
  selfCopy = self;
  v13 = v11(v8, ObjectType, v9);
  (*(v5 + 8))(v8, v4);

  return v13;
}

- (int64_t)minimumPasscodeLengthForAccountUUID:(id)d
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 128);
  selfCopy = self;
  v13 = v11(v8, ObjectType, v9);
  (*(v5 + 8))(v8, v4);

  return v13;
}

- (void)setPasscode:(id)passcode forAccountUUID:(id)d completion:(id)completion
{
  v21 = sub_10007AE28();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  v20 = sub_10007B478();
  v13 = v12;
  sub_10007AE08();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v17 = *(v15 + 136);
  selfCopy = self;
  v17(v20, v13, v10, sub_10006D2FC, v14, ObjectType, v15);

  (*(v7 + 8))(v10, v21);
}

- (double)maximumGreetingDurationForAccountUUID:(id)d
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 144);
  selfCopy = self;
  v13 = v11(v8, ObjectType, v9);
  (*(v5 + 8))(v8, v4);

  return v13;
}

- (void)greetingForAccountUUID:(id)d completion:(id)completion
{
  v17 = sub_10007AE28();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  sub_10007AE08();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 152);
  selfCopy = self;
  v14(v9, sub_10006CCF0, v11, ObjectType, v12);

  (*(v6 + 8))(v9, v17);
}

- (void)setGreeting:(id)greeting forAccountUUID:(id)d completion:(id)completion
{
  v19 = sub_10007AE28();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19, v9);
  v11 = &selfCopy - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  sub_10007AE08();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = *&self->vmd[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 160);
  greetingCopy = greeting;
  selfCopy = self;
  v16(greetingCopy, v11, sub_10006C3FC, v13, ObjectType, v14);

  (*(v8 + 8))(v11, v19);
}

- (id)listenForChangesWithHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  v8 = sub_100077540(sub_10006C204, v6);

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