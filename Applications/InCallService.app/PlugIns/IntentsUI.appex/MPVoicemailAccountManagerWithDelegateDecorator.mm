@interface MPVoicemailAccountManagerWithDelegateDecorator
- (BOOL)isAccountSubscribed:(id)subscribed;
- (BOOL)isAnyAccountSubscribed;
- (BOOL)isCallVoicemailSupportedForAccountUUID:(id)d;
- (BOOL)isGreetingChangeSupportedForAccountUUID:(id)d;
- (BOOL)isMessageWaiting;
- (BOOL)isOnline;
- (BOOL)isPasscodeChangeSupportedForAccountUUID:(id)d;
- (BOOL)isTranscriptionEnabled;
- (MPVoicemailAccountManagerWithDelegateDecorator)init;
- (MPVoicemailAccountManagerWithDelegateDecorator)initWithVMD:(id)d;
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

@implementation MPVoicemailAccountManagerWithDelegateDecorator

- (BOOL)isAnyAccountSubscribed
{
  selfCopy = self;
  v3 = sub_10006DDE4("VMD(%s) isSubscribed: %{BOOL}d");

  return v3 & 1;
}

- (BOOL)isOnline
{
  selfCopy = self;
  v3 = sub_10006DB90();

  return v3 & 1;
}

- (BOOL)isMessageWaiting
{
  selfCopy = self;
  v3 = sub_10006DDE4("VMD(%s) isMessageWaiting: %{BOOL}d");

  return v3 & 1;
}

- (unint64_t)storageUsage
{
  selfCopy = self;
  v3 = sub_10006E038();

  return v3;
}

- (int64_t)estimatedAccountCount
{
  selfCopy = self;
  v3 = sub_10006E280();

  return v3;
}

- (NSArray)accounts
{
  selfCopy = self;
  sub_10006E534();

  type metadata accessor for VoicemailAccount();
  v3.super.isa = sub_10007B518().super.isa;

  return v3.super.isa;
}

- (BOOL)isTranscriptionEnabled
{
  v2 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v2);
  sub_10006D334(v2 + 1, selfCopy, v7);
  os_unfair_lock_unlock(v2);
  v4 = v7[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v4) = (*(v4 + 72))(ObjectType, v4);

  swift_unknownObjectRelease();
  return v4 & 1;
}

- (NSProgress)transcriptionProgress
{
  v2 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v2);
  sub_10006D334(v2 + 1, selfCopy, v8);
  os_unfair_lock_unlock(v2);
  v4 = v8[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 80))(ObjectType, v4);

  swift_unknownObjectRelease();

  return v6;
}

- (MPVoicemailAccountManagerWithDelegateDecorator)initWithVMD:(id)d
{
  v3 = _Block_copy(d);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_10006ECAC(sub_100070ADC, v4);
}

- (BOOL)isCallVoicemailSupportedForAccountUUID:(id)d
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, selfCopy, v15);
  os_unfair_lock_unlock(v9);
  v11 = v15[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v11) = (*(v11 + 88))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v11 & 1;
}

- (BOOL)isAccountSubscribed:(id)subscribed
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, selfCopy, v15);
  os_unfair_lock_unlock(v9);
  v11 = v15[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v11) = (*(v11 + 96))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v11 & 1;
}

- (BOOL)isGreetingChangeSupportedForAccountUUID:(id)d
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, selfCopy, v15);
  os_unfair_lock_unlock(v9);
  v11 = v15[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v11) = (*(v11 + 104))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v11 & 1;
}

- (BOOL)isPasscodeChangeSupportedForAccountUUID:(id)d
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, selfCopy, v15);
  os_unfair_lock_unlock(v9);
  v11 = v15[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v11) = (*(v11 + 112))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v11 & 1;
}

- (int64_t)maximumPasscodeLengthForAccountUUID:(id)d
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, selfCopy, v16);
  os_unfair_lock_unlock(v9);
  v11 = v16[1];
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 120))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v13;
}

- (int64_t)minimumPasscodeLengthForAccountUUID:(id)d
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, selfCopy, v16);
  os_unfair_lock_unlock(v9);
  v11 = v16[1];
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 128))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v13;
}

- (void)setPasscode:(id)passcode forAccountUUID:(id)d completion:(id)completion
{
  v7 = sub_10007AE28();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  v13 = sub_10007B478();
  v15 = v14;
  sub_10007AE08();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v17);
  sub_10006D334(v17 + 1, selfCopy, v22);
  os_unfair_lock_unlock(v17);
  v19 = v22[1];
  ObjectType = swift_getObjectType();
  (*(v19 + 136))(v13, v15, v11, sub_10006D2FC, v16, ObjectType, v19);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v11, v7);
}

- (double)maximumGreetingDurationForAccountUUID:(id)d
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, selfCopy, v16);
  os_unfair_lock_unlock(v9);
  v11 = v16[1];
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 144))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v13;
}

- (void)greetingForAccountUUID:(id)d completion:(id)completion
{
  v6 = sub_10007AE28();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  sub_10007AE08();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v13);
  sub_10006D334(v13 + 1, selfCopy, v18);
  os_unfair_lock_unlock(v13);
  v15 = v18[1];
  ObjectType = swift_getObjectType();
  (*(v15 + 152))(v10, sub_10006CCF0, v12, ObjectType, v15);

  swift_unknownObjectRelease();
  (*(v7 + 8))(v10, v6);
}

- (void)setGreeting:(id)greeting forAccountUUID:(id)d completion:(id)completion
{
  v8 = sub_10007AE28();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  sub_10007AE08();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  greetingCopy = greeting;
  selfCopy = self;
  os_unfair_lock_lock(v15);
  sub_10006D334(v15 + 1, selfCopy, v21);
  os_unfair_lock_unlock(v15);
  v18 = v21[1];
  ObjectType = swift_getObjectType();
  (*(v18 + 160))(greetingCopy, v12, sub_10006C3FC, v14, ObjectType, v18);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
}

- (id)listenForChangesWithHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  v8 = sub_10006FCF0(sub_10006C204, v6);

  _Block_release(handler);

  return v8;
}

- (MPVoicemailAccountManagerWithDelegateDecorator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end