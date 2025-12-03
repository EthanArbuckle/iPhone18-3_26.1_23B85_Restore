@interface FTMessage
- (BOOL)isDataAvailable;
- (BOOL)isRTT;
- (BOOL)isRead;
- (BOOL)isSensitive;
- (BOOL)isTranscriptionAvailable;
- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)time;
- (BOOL)transcriptionAttempted;
- (MPMessageID)identifier;
- (MPTranscriptMessage)transcript;
- (NSString)callbackDestinationID;
- (NSString)provider;
- (TUHandle)senderHandle;
- (_TtC8FaceTime9FTMessage)init;
- (double)duration;
- (id)contactUsingContactStore:(id)store withKeysToFetch:(id)fetch;
- (id)displayNameUsingContactStore:(id)store;
- (int64_t)folder;
- (int64_t)messageType;
- (void)setFolder:(int64_t)folder;
- (void)setIsRead:(BOOL)read;
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
  selfCopy = self;
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
  selfCopy = self;
  dispatch thunk of Message.provider.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (int64_t)messageType
{
  selfCopy = self;
  v3 = sub_1000B1F98();

  return v3;
}

- (TUHandle)senderHandle
{
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1000B2628();

  return v3;
}

- (void)setFolder:(int64_t)folder
{
  v4 = (self + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyFolder);
  selfCopy = self;
  os_unfair_lock_lock(v4);
  *&v4[2]._os_unfair_lock_opaque = folder;
  LOBYTE(v4[4]._os_unfair_lock_opaque) = 0;
  os_unfair_lock_unlock(v4);
}

- (BOOL)isRead
{
  v2 = (self + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyRead);
  selfCopy = self;
  os_unfair_lock_lock(v2);
  os_unfair_lock_opaque_low = LOBYTE(v2[1]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = dispatch thunk of Message.isRead.getter();
  }

  return os_unfair_lock_opaque_low & 1;
}

- (void)setIsRead:(BOOL)read
{
  v4 = (self + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyRead);
  selfCopy = self;
  os_unfair_lock_lock(v4);
  LOBYTE(v4[1]._os_unfair_lock_opaque) = read;
  os_unfair_lock_unlock(v4);
}

- (BOOL)isTranscriptionAvailable
{
  selfCopy = self;
  sub_1000B2974();
  v4 = v3;

  return v4 & 1;
}

- (double)duration
{
  selfCopy = self;
  dispatch thunk of Message.duration.getter();
  v4 = v3;

  return v4;
}

- (BOOL)transcriptionAttempted
{
  selfCopy = self;
  dispatch thunk of Message.transcriptionStatus.getter();
  v3 = TranscriptionStatus.rawValue.getter();
  v4 = TranscriptionStatus.rawValue.getter();

  return v3 != v4;
}

- (BOOL)isSensitive
{
  selfCopy = self;
  v3 = dispatch thunk of Message.isSensitive.getter();

  return v3 & 1;
}

- (BOOL)isRTT
{
  selfCopy = self;
  v3 = dispatch thunk of Message.isRTT.getter();

  return v3 & 1;
}

- (BOOL)isDataAvailable
{
  selfCopy = self;
  v3 = sub_1000B3514();

  return v3 & 1;
}

- (MPTranscriptMessage)transcript
{
  selfCopy = self;
  v3 = sub_1000B2EEC();

  return v3;
}

- (_TtC8FaceTime9FTMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)time
{
  selfCopy = self;
  v5 = sub_1000B4C60(time);

  return v5;
}

- (id)contactUsingContactStore:(id)store withKeysToFetch:(id)fetch
{
  sub_1000525C4(&unk_100124BB0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  storeCopy = store;
  selfCopy = self;
  v8 = sub_1000B4D54(storeCopy);

  return v8;
}

- (id)displayNameUsingContactStore:(id)store
{
  storeCopy = store;
  selfCopy = self;
  sub_1000B4F80(storeCopy);
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