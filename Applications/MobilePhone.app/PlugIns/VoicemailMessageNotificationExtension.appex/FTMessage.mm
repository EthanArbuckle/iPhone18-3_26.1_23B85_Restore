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
- (_TtC37VoicemailMessageNotificationExtension9FTMessage)init;
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
  v3 = sub_10006036C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  selfCopy = self;
  sub_1000604BC();
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
  sub_10006059C();

  v3 = sub_1000607EC();

  return v3;
}

- (int64_t)messageType
{
  selfCopy = self;
  v3 = sub_100023734();

  return v3;
}

- (TUHandle)senderHandle
{
  selfCopy = self;
  if (sub_10006051C())
  {
    v3 = 0;
  }

  else
  {
    sub_10006053C();
    v4 = objc_opt_self();
    v5 = sub_1000607EC();

    v3 = [v4 normalizedHandleWithDestinationID:v5];
  }

  return v3;
}

- (NSString)callbackDestinationID
{
  selfCopy = self;
  if (sub_10006051C())
  {

    v3 = 0;
  }

  else
  {
    sub_10006053C();

    v4 = sub_1000607EC();

    v3 = v4;
  }

  return v3;
}

- (int64_t)folder
{
  selfCopy = self;
  v3 = sub_100023DC4();

  return v3;
}

- (void)setFolder:(int64_t)folder
{
  v4 = (self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyFolder);
  selfCopy = self;
  os_unfair_lock_lock(v4);
  *&v4[2]._os_unfair_lock_opaque = folder;
  LOBYTE(v4[4]._os_unfair_lock_opaque) = 0;
  os_unfair_lock_unlock(v4);
}

- (BOOL)isRead
{
  v2 = (self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyRead);
  selfCopy = self;
  os_unfair_lock_lock(v2);
  os_unfair_lock_opaque_low = LOBYTE(v2[1]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = sub_10006055C();
  }

  return os_unfair_lock_opaque_low & 1;
}

- (void)setIsRead:(BOOL)read
{
  v4 = (self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyRead);
  selfCopy = self;
  os_unfair_lock_lock(v4);
  LOBYTE(v4[1]._os_unfair_lock_opaque) = read;
  os_unfair_lock_unlock(v4);
}

- (BOOL)isTranscriptionAvailable
{
  selfCopy = self;
  sub_100024110();
  v4 = v3;

  return v4 & 1;
}

- (double)duration
{
  selfCopy = self;
  sub_10006057C();
  v4 = v3;

  return v4;
}

- (BOOL)transcriptionAttempted
{
  selfCopy = self;
  sub_10006052C();
  v3 = sub_10006071C();
  v4 = sub_10006071C();

  return v3 != v4;
}

- (BOOL)isSensitive
{
  selfCopy = self;
  v3 = sub_1000604EC();

  return v3 & 1;
}

- (BOOL)isRTT
{
  selfCopy = self;
  v3 = sub_10006054C();

  return v3 & 1;
}

- (BOOL)isDataAvailable
{
  selfCopy = self;
  v3 = sub_100024CAC();

  return v3 & 1;
}

- (MPTranscriptMessage)transcript
{
  selfCopy = self;
  v3 = sub_100024688();

  return v3;
}

- (_TtC37VoicemailMessageNotificationExtension9FTMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)time
{
  selfCopy = self;
  v5 = sub_1000264D8(time);

  return v5;
}

- (id)contactUsingContactStore:(id)store withKeysToFetch:(id)fetch
{
  sub_100017538(&unk_100099930);
  sub_1000608CC();
  storeCopy = store;
  selfCopy = self;
  v8 = sub_1000265CC(storeCopy);

  return v8;
}

- (id)displayNameUsingContactStore:(id)store
{
  storeCopy = store;
  selfCopy = self;
  sub_1000267F8(storeCopy);
  v7 = v6;

  if (v7)
  {
    v8 = sub_1000607EC();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end