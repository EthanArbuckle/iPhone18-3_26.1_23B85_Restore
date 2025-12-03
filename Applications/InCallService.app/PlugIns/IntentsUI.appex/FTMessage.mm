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
- (_TtC9IntentsUI9FTMessage)init;
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
  v3 = sub_10007AE28();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v19 - v10;
  selfCopy = self;
  sub_10007B078();
  v13 = *(v4 + 16);
  v13(v8, v11, v3);
  v14 = type metadata accessor for MessageID(0);
  v15 = objc_allocWithZone(v14);
  v13(&v15[OBJC_IVAR___MPMessageID_value], v8, v3);
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v19.receiver = v15;
  v19.super_class = v14;
  v16 = [(FTMessage *)&v19 init];
  v17 = *(v4 + 8);
  v17(v8, v3);
  v17(v11, v3);

  return v16;
}

- (NSString)provider
{
  selfCopy = self;
  sub_10007B158();

  v3 = sub_10007B448();

  return v3;
}

- (int64_t)messageType
{
  selfCopy = self;
  v3 = sub_1000561CC();

  return v3;
}

- (TUHandle)senderHandle
{
  selfCopy = self;
  if (sub_10007B0D8())
  {
    v3 = 0;
  }

  else
  {
    sub_10007B0F8();
    v4 = objc_opt_self();
    v5 = sub_10007B448();

    v3 = [v4 normalizedHandleWithDestinationID:v5];
  }

  return v3;
}

- (NSString)callbackDestinationID
{
  selfCopy = self;
  if (sub_10007B0D8())
  {

    v3 = 0;
  }

  else
  {
    sub_10007B0F8();

    v4 = sub_10007B448();

    v3 = v4;
  }

  return v3;
}

- (int64_t)folder
{
  selfCopy = self;
  v3 = sub_10005685C();

  return v3;
}

- (void)setFolder:(int64_t)folder
{
  v4 = (self + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyFolder);
  selfCopy = self;
  os_unfair_lock_lock(v4);
  *&v4[2]._os_unfair_lock_opaque = folder;
  LOBYTE(v4[4]._os_unfair_lock_opaque) = 0;
  os_unfair_lock_unlock(v4);
}

- (BOOL)isRead
{
  v2 = (self + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyRead);
  selfCopy = self;
  os_unfair_lock_lock(v2);
  os_unfair_lock_opaque_low = LOBYTE(v2[1]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = sub_10007B118();
  }

  return os_unfair_lock_opaque_low & 1;
}

- (void)setIsRead:(BOOL)read
{
  v4 = (self + OBJC_IVAR____TtC9IntentsUI9FTMessage_dirtyRead);
  selfCopy = self;
  os_unfair_lock_lock(v4);
  LOBYTE(v4[1]._os_unfair_lock_opaque) = read;
  os_unfair_lock_unlock(v4);
}

- (BOOL)isTranscriptionAvailable
{
  selfCopy = self;
  sub_100056BA8();
  v4 = v3;

  return v4 & 1;
}

- (double)duration
{
  selfCopy = self;
  sub_10007B138();
  v4 = v3;

  return v4;
}

- (BOOL)transcriptionAttempted
{
  selfCopy = self;
  sub_10007B0E8();
  v3 = sub_10007B2D8();
  v4 = sub_10007B2D8();

  return v3 != v4;
}

- (BOOL)isSensitive
{
  selfCopy = self;
  v3 = sub_10007B0A8();

  return v3 & 1;
}

- (BOOL)isRTT
{
  selfCopy = self;
  v3 = sub_10007B108();

  return v3 & 1;
}

- (BOOL)isDataAvailable
{
  selfCopy = self;
  v3 = sub_100057744();

  return v3 & 1;
}

- (MPTranscriptMessage)transcript
{
  selfCopy = self;
  v3 = sub_100057120();

  return v3;
}

- (_TtC9IntentsUI9FTMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)time
{
  selfCopy = self;
  v5 = sub_100058F70(time);

  return v5;
}

- (id)contactUsingContactStore:(id)store withKeysToFetch:(id)fetch
{
  sub_100030744(&unk_1000C5440);
  sub_10007B528();
  storeCopy = store;
  selfCopy = self;
  v8 = sub_100059064(storeCopy);

  return v8;
}

- (id)displayNameUsingContactStore:(id)store
{
  storeCopy = store;
  selfCopy = self;
  sub_100059290(storeCopy);
  v7 = v6;

  if (v7)
  {
    v8 = sub_10007B448();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end