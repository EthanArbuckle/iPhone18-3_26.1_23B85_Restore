@interface FTMessage
- (BOOL)isDataAvailable;
- (BOOL)isRTT;
- (BOOL)isRead;
- (BOOL)isSensitive;
- (BOOL)isTranscriptionAvailable;
- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)a3;
- (BOOL)transcriptionAttempted;
- (MPMessageID)identifier;
- (MPTranscriptMessage)transcript;
- (NSString)callbackDestinationID;
- (NSString)provider;
- (TUHandle)senderHandle;
- (_TtC8FaceTime9FTMessage)init;
- (double)duration;
- (id)contactUsingContactStore:(id)a3 withKeysToFetch:(id)a4;
- (id)displayNameUsingContactStore:(id)a3;
- (int64_t)folder;
- (int64_t)messageType;
- (void)setFolder:(int64_t)a3;
- (void)setIsRead:(BOOL)a3;
@end

@implementation FTMessage

- (MPMessageID)identifier
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = self;
  dispatch thunk of Message.recordUUID.getter();
  v11 = *(v4 + 16);
  v11(v7, v9, v3);
  v12 = type metadata accessor for MessageID(0);
  v13 = objc_allocWithZone(v12);
  v11(&v13[OBJC_IVAR___MPMessageID_value], v7, v3);
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v17.receiver = v13;
  v17.super_class = v12;
  v14 = [(FTMessage *)&v17 init];
  v15 = *(v4 + 8);
  v15(v7, v3);
  v15(v9, v3);

  return v14;
}

- (NSString)provider
{
  v2 = self;
  dispatch thunk of Message.provider.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (int64_t)messageType
{
  v2 = self;
  v3 = sub_1000B1F98();

  return v3;
}

- (TUHandle)senderHandle
{
  v2 = self;
  if (dispatch thunk of Message.isFromUnknown.getter())
  {
    v3 = 0;
  }

  else
  {
    dispatch thunk of Message.from.getter();
    v4 = objc_opt_self();
    v5 = String._bridgeToObjectiveC()();

    v3 = [v4 normalizedHandleWithDestinationID:v5];
  }

  return v3;
}

- (NSString)callbackDestinationID
{
  v2 = self;
  if (dispatch thunk of Message.isFromUnknown.getter())
  {

    v3 = 0;
  }

  else
  {
    dispatch thunk of Message.from.getter();

    v4 = String._bridgeToObjectiveC()();

    v3 = v4;
  }

  return v3;
}

- (int64_t)folder
{
  v2 = self;
  v3 = sub_1000B2628();

  return v3;
}

- (void)setFolder:(int64_t)a3
{
  v4 = (self + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyFolder);
  v5 = self;
  os_unfair_lock_lock(v4);
  *&v4[2]._os_unfair_lock_opaque = a3;
  LOBYTE(v4[4]._os_unfair_lock_opaque) = 0;
  os_unfair_lock_unlock(v4);
}

- (BOOL)isRead
{
  v2 = (self + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyRead);
  v3 = self;
  os_unfair_lock_lock(v2);
  os_unfair_lock_opaque_low = LOBYTE(v2[1]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = dispatch thunk of Message.isRead.getter();
  }

  return os_unfair_lock_opaque_low & 1;
}

- (void)setIsRead:(BOOL)a3
{
  v4 = (self + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyRead);
  v5 = self;
  os_unfair_lock_lock(v4);
  LOBYTE(v4[1]._os_unfair_lock_opaque) = a3;
  os_unfair_lock_unlock(v4);
}

- (BOOL)isTranscriptionAvailable
{
  v2 = self;
  sub_1000B2974();
  v4 = v3;

  return v4 & 1;
}

- (double)duration
{
  v2 = self;
  dispatch thunk of Message.duration.getter();
  v4 = v3;

  return v4;
}

- (BOOL)transcriptionAttempted
{
  v2 = self;
  dispatch thunk of Message.transcriptionStatus.getter();
  v3 = TranscriptionStatus.rawValue.getter();
  v4 = TranscriptionStatus.rawValue.getter();

  return v3 != v4;
}

- (BOOL)isSensitive
{
  v2 = self;
  v3 = dispatch thunk of Message.isSensitive.getter();

  return v3 & 1;
}

- (BOOL)isRTT
{
  v2 = self;
  v3 = dispatch thunk of Message.isRTT.getter();

  return v3 & 1;
}

- (BOOL)isDataAvailable
{
  v2 = self;
  v3 = sub_1000B3514();

  return v3 & 1;
}

- (MPTranscriptMessage)transcript
{
  v2 = self;
  v3 = sub_1000B2EEC();

  return v3;
}

- (_TtC8FaceTime9FTMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)a3
{
  v4 = self;
  v5 = sub_1000B4C60(a3);

  return v5;
}

- (id)contactUsingContactStore:(id)a3 withKeysToFetch:(id)a4
{
  sub_1000525C4(&unk_100124BB0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  v8 = sub_1000B4D54(v6);

  return v8;
}

- (id)displayNameUsingContactStore:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000B4F80(v4);
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end