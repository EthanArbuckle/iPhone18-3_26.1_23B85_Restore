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
  v3 = sub_1000344B8("VMD(%s) isSubscribed: %{BOOL}d");

  return v3 & 1;
}

- (BOOL)isOnline
{
  selfCopy = self;
  v3 = sub_100034264();

  return v3 & 1;
}

- (BOOL)isMessageWaiting
{
  selfCopy = self;
  v3 = sub_1000344B8("VMD(%s) isMessageWaiting: %{BOOL}d");

  return v3 & 1;
}

- (unint64_t)storageUsage
{
  selfCopy = self;
  v3 = sub_10003470C();

  return v3;
}

- (int64_t)estimatedAccountCount
{
  selfCopy = self;
  v3 = sub_100034954();

  return v3;
}

- (NSArray)accounts
{
  selfCopy = self;
  sub_100034C08();

  type metadata accessor for VoicemailAccount();
  v3.super.isa = sub_1000608BC().super.isa;

  return v3.super.isa;
}

- (BOOL)isTranscriptionEnabled
{
  v2 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v2);
  sub_100033A08(v2 + 1, selfCopy, v7);
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
  sub_100033A08(v2 + 1, selfCopy, v8);
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
  return sub_100035380(sub_100037140, v4);
}

- (BOOL)isCallVoicemailSupportedForAccountUUID:(id)d
{
  v4 = sub_10006036C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v8 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v8);
  sub_100033A08(v8 + 1, selfCopy, v14);
  os_unfair_lock_unlock(v8);
  v10 = v14[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v10) = (*(v10 + 88))(v7, ObjectType, v10);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v10 & 1;
}

- (BOOL)isAccountSubscribed:(id)subscribed
{
  v4 = sub_10006036C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v8 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v8);
  sub_100033A08(v8 + 1, selfCopy, v14);
  os_unfair_lock_unlock(v8);
  v10 = v14[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v10) = (*(v10 + 96))(v7, ObjectType, v10);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v10 & 1;
}

- (BOOL)isGreetingChangeSupportedForAccountUUID:(id)d
{
  v4 = sub_10006036C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v8 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v8);
  sub_100033A08(v8 + 1, selfCopy, v14);
  os_unfair_lock_unlock(v8);
  v10 = v14[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v10) = (*(v10 + 104))(v7, ObjectType, v10);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v10 & 1;
}

- (BOOL)isPasscodeChangeSupportedForAccountUUID:(id)d
{
  v4 = sub_10006036C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v8 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v8);
  sub_100033A08(v8 + 1, selfCopy, v14);
  os_unfair_lock_unlock(v8);
  v10 = v14[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v10) = (*(v10 + 112))(v7, ObjectType, v10);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v10 & 1;
}

- (int64_t)maximumPasscodeLengthForAccountUUID:(id)d
{
  v4 = sub_10006036C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v8 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v8);
  sub_100033A08(v8 + 1, selfCopy, v15);
  os_unfair_lock_unlock(v8);
  v10 = v15[1];
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 120))(v7, ObjectType, v10);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v12;
}

- (int64_t)minimumPasscodeLengthForAccountUUID:(id)d
{
  v4 = sub_10006036C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v8 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v8);
  sub_100033A08(v8 + 1, selfCopy, v15);
  os_unfair_lock_unlock(v8);
  v10 = v15[1];
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 128))(v7, ObjectType, v10);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v12;
}

- (void)setPasscode:(id)passcode forAccountUUID:(id)d completion:(id)completion
{
  v7 = sub_10006036C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  v12 = sub_10006081C();
  v14 = v13;
  sub_10006035C();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v16);
  sub_100033A08(v16 + 1, selfCopy, v21);
  os_unfair_lock_unlock(v16);
  v18 = v21[1];
  ObjectType = swift_getObjectType();
  (*(v18 + 136))(v12, v14, v10, sub_10001BE68, v15, ObjectType, v18);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
}

- (double)maximumGreetingDurationForAccountUUID:(id)d
{
  v4 = sub_10006036C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v8 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v8);
  sub_100033A08(v8 + 1, selfCopy, v15);
  os_unfair_lock_unlock(v8);
  v10 = v15[1];
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 144))(v7, ObjectType, v10);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v12;
}

- (void)greetingForAccountUUID:(id)d completion:(id)completion
{
  v6 = sub_10006036C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  sub_10006035C();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  selfCopy = self;
  os_unfair_lock_lock(v12);
  sub_100033A08(v12 + 1, selfCopy, v17);
  os_unfair_lock_unlock(v12);
  v14 = v17[1];
  ObjectType = swift_getObjectType();
  (*(v14 + 152))(v9, sub_10001B908, v11, ObjectType, v14);

  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
}

- (void)setGreeting:(id)greeting forAccountUUID:(id)d completion:(id)completion
{
  v8 = sub_10006036C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  sub_10006035C();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  greetingCopy = greeting;
  selfCopy = self;
  os_unfair_lock_lock(v14);
  sub_100033A08(v14 + 1, selfCopy, v20);
  os_unfair_lock_unlock(v14);
  v17 = v20[1];
  ObjectType = swift_getObjectType();
  (*(v17 + 160))(greetingCopy, v11, sub_10001B900, v13, ObjectType, v17);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
}

- (id)listenForChangesWithHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  v8 = sub_1000363C4(sub_10001B6B0, v6);

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