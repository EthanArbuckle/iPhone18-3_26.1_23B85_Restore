@interface MPVoicemailAccountManagerWithDelegateDecorator
- (BOOL)isAnyAccountSubscribed;
- (BOOL)isMessageWaiting;
- (BOOL)isOnline;
- (BOOL)isTranscriptionEnabled;
- (MPVoicemailAccountManagerWithDelegateDecorator)initWithVMD:(id)a3;
- (NSArray)accounts;
- (NSProgress)transcriptionProgress;
- (double)maximumGreetingDurationForAccountUUID:(id)a3;
- (id)listenForChangesWithHandler:(id)a3;
- (int64_t)estimatedAccountCount;
- (unint64_t)storageUsage;
- (void)greetingForAccountUUID:(id)a3 completion:(id)a4;
- (void)setGreeting:(id)a3 forAccountUUID:(id)a4 completion:(id)a5;
- (void)setPasscode:(id)a3 forAccountUUID:(id)a4 completion:(id)a5;
@end

@implementation MPVoicemailAccountManagerWithDelegateDecorator

- (BOOL)isAnyAccountSubscribed
{
  v2 = self;
  sub_1001E9D44();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isOnline
{
  v2 = self;
  sub_1001E9BB0();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isMessageWaiting
{
  v2 = self;
  sub_1001E9D44();
  v4 = v3;

  return v4 & 1;
}

- (unint64_t)storageUsage
{
  v2 = self;
  sub_1001E9EF0();
  v4 = v3;

  return v4;
}

- (int64_t)estimatedAccountCount
{
  v2 = self;
  sub_1001EA06C();
  v4 = v3;

  return v4;
}

- (NSArray)accounts
{
  v2 = self;
  sub_1001EA234();

  type metadata accessor for VoicemailAccount();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)isTranscriptionEnabled
{
  v2 = self;
  v3 = sub_1001EA698();

  return v3 & 1;
}

- (NSProgress)transcriptionProgress
{
  v2 = self;
  v3 = sub_1001EA720();

  return v3;
}

- (MPVoicemailAccountManagerWithDelegateDecorator)initWithVMD:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_1001EA764(sub_1001EBE6C, v4);
}

- (void)setPasscode:(id)a3 forAccountUUID:(id)a4 completion:(id)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = self;
  sub_1001EAC74(v13, v15, v11, sub_1001B79E0, v16);

  (*(v8 + 8))(v11, v7);
}

- (double)maximumGreetingDurationForAccountUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = sub_1001EAE70();

  (*(v5 + 8))(v8, v4);
  return v10;
}

- (void)greetingForAccountUUID:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_1001EAFC8(v10, sub_1001B7714, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)setGreeting:(id)a3 forAccountUUID:(id)a4 completion:(id)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = self;
  sub_1001EB180(v15, v12, sub_1001B6018, v14);

  (*(v9 + 8))(v12, v8);
}

- (id)listenForChangesWithHandler:(id)a3
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self;
  v8 = sub_1001EB35C(sub_1001B5EE0, v6);

  _Block_release(a3);

  return v8;
}

@end