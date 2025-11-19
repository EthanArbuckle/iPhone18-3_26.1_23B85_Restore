@interface MPVoicemailAccountManagerWithDelegateDecorator
- (BOOL)isAccountSubscribed:(id)a3;
- (BOOL)isAnyAccountSubscribed;
- (BOOL)isCallVoicemailSupportedForAccountUUID:(id)a3;
- (BOOL)isGreetingChangeSupportedForAccountUUID:(id)a3;
- (BOOL)isMessageWaiting;
- (BOOL)isOnline;
- (BOOL)isPasscodeChangeSupportedForAccountUUID:(id)a3;
- (BOOL)isTranscriptionEnabled;
- (MPVoicemailAccountManagerWithDelegateDecorator)init;
- (MPVoicemailAccountManagerWithDelegateDecorator)initWithVMD:(id)a3;
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

@implementation MPVoicemailAccountManagerWithDelegateDecorator

- (BOOL)isAnyAccountSubscribed
{
  v2 = self;
  v3 = sub_10006DDE4("VMD(%s) isSubscribed: %{BOOL}d");

  return v3 & 1;
}

- (BOOL)isOnline
{
  v2 = self;
  v3 = sub_10006DB90();

  return v3 & 1;
}

- (BOOL)isMessageWaiting
{
  v2 = self;
  v3 = sub_10006DDE4("VMD(%s) isMessageWaiting: %{BOOL}d");

  return v3 & 1;
}

- (unint64_t)storageUsage
{
  v2 = self;
  v3 = sub_10006E038();

  return v3;
}

- (int64_t)estimatedAccountCount
{
  v2 = self;
  v3 = sub_10006E280();

  return v3;
}

- (NSArray)accounts
{
  v2 = self;
  sub_10006E534();

  type metadata accessor for VoicemailAccount();
  v3.super.isa = sub_10007B518().super.isa;

  return v3.super.isa;
}

- (BOOL)isTranscriptionEnabled
{
  v2 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  v3 = self;
  os_unfair_lock_lock(v2);
  sub_10006D334(v2 + 1, v3, v7);
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
  v3 = self;
  os_unfair_lock_lock(v2);
  sub_10006D334(v2 + 1, v3, v8);
  os_unfair_lock_unlock(v2);
  v4 = v8[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 80))(ObjectType, v4);

  swift_unknownObjectRelease();

  return v6;
}

- (MPVoicemailAccountManagerWithDelegateDecorator)initWithVMD:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_10006ECAC(sub_100070ADC, v4);
}

- (BOOL)isCallVoicemailSupportedForAccountUUID:(id)a3
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  v10 = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, v10, v15);
  os_unfair_lock_unlock(v9);
  v11 = v15[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v11) = (*(v11 + 88))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v11 & 1;
}

- (BOOL)isAccountSubscribed:(id)a3
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  v10 = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, v10, v15);
  os_unfair_lock_unlock(v9);
  v11 = v15[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v11) = (*(v11 + 96))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v11 & 1;
}

- (BOOL)isGreetingChangeSupportedForAccountUUID:(id)a3
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  v10 = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, v10, v15);
  os_unfair_lock_unlock(v9);
  v11 = v15[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v11) = (*(v11 + 104))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v11 & 1;
}

- (BOOL)isPasscodeChangeSupportedForAccountUUID:(id)a3
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  v10 = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, v10, v15);
  os_unfair_lock_unlock(v9);
  v11 = v15[1];
  ObjectType = swift_getObjectType();
  LOBYTE(v11) = (*(v11 + 112))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v11 & 1;
}

- (int64_t)maximumPasscodeLengthForAccountUUID:(id)a3
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  v10 = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, v10, v16);
  os_unfair_lock_unlock(v9);
  v11 = v16[1];
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 120))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v13;
}

- (int64_t)minimumPasscodeLengthForAccountUUID:(id)a3
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  v10 = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, v10, v16);
  os_unfair_lock_unlock(v9);
  v11 = v16[1];
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 128))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v13;
}

- (void)setPasscode:(id)a3 forAccountUUID:(id)a4 completion:(id)a5
{
  v7 = sub_10007AE28();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  v13 = sub_10007B478();
  v15 = v14;
  sub_10007AE08();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  v18 = self;
  os_unfair_lock_lock(v17);
  sub_10006D334(v17 + 1, v18, v22);
  os_unfair_lock_unlock(v17);
  v19 = v22[1];
  ObjectType = swift_getObjectType();
  (*(v19 + 136))(v13, v15, v11, sub_10006D2FC, v16, ObjectType, v19);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v11, v7);
}

- (double)maximumGreetingDurationForAccountUUID:(id)a3
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  v10 = self;
  os_unfair_lock_lock(v9);
  sub_10006D334(v9 + 1, v10, v16);
  os_unfair_lock_unlock(v9);
  v11 = v16[1];
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 144))(v8, ObjectType, v11);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v13;
}

- (void)greetingForAccountUUID:(id)a3 completion:(id)a4
{
  v6 = sub_10007AE28();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_10007AE08();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  v14 = self;
  os_unfair_lock_lock(v13);
  sub_10006D334(v13 + 1, v14, v18);
  os_unfair_lock_unlock(v13);
  v15 = v18[1];
  ObjectType = swift_getObjectType();
  (*(v15 + 152))(v10, sub_10006CCF0, v12, ObjectType, v15);

  swift_unknownObjectRelease();
  (*(v7 + 8))(v10, v6);
}

- (void)setGreeting:(id)a3 forAccountUUID:(id)a4 completion:(id)a5
{
  v8 = sub_10007AE28();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  sub_10007AE08();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = self + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  v16 = a3;
  v17 = self;
  os_unfair_lock_lock(v15);
  sub_10006D334(v15 + 1, v17, v21);
  os_unfair_lock_unlock(v15);
  v18 = v21[1];
  ObjectType = swift_getObjectType();
  (*(v18 + 160))(v16, v12, sub_10006C3FC, v14, ObjectType, v18);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
}

- (id)listenForChangesWithHandler:(id)a3
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self;
  v8 = sub_10006FCF0(sub_10006C204, v6);

  _Block_release(a3);

  return v8;
}

- (MPVoicemailAccountManagerWithDelegateDecorator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end