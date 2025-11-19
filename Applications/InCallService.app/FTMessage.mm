@interface FTMessage
- (BOOL)isDataAvailable;
- (BOOL)isDeleted;
- (BOOL)isRTT;
- (BOOL)isRead;
- (BOOL)isSensitive;
- (BOOL)isTranscriptionAvailable;
- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)a3;
- (BOOL)transcriptionAttempted;
- (MPMessageID)identifier;
- (MPTranscriptMessage)transcript;
- (NSDate)date;
- (NSUUID)callUUID;
- (TUHandle)senderHandle;
- (_TtC20FaceTimeMessageStore7Message)ftMessage;
- (double)duration;
- (id)contactUsingContactStore:(id)a3 withKeysToFetch:(id)a4;
- (id)displayNameUsingContactStore:(id)a3;
- (int64_t)folder;
- (int64_t)messageType;
- (void)setFolder:(int64_t)a3;
- (void)setIsDeleted:(BOOL)a3;
- (void)setIsRead:(BOOL)a3;
@end

@implementation FTMessage

- (_TtC20FaceTimeMessageStore7Message)ftMessage
{
  v2 = sub_1001B9BB4();

  return v2;
}

- (MPMessageID)identifier
{
  v2 = self;
  v3 = sub_1001B9C08();

  return v3;
}

- (NSUUID)callUUID
{
  v3 = sub_10014EA98(&qword_1003AAB40);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = self;
  sub_1001B9E78(v6);

  v8 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100006AC0(v6, 1, v8) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return isa;
}

- (int64_t)messageType
{
  v2 = self;
  v3 = sub_1001B9F08();

  return v3;
}

- (TUHandle)senderHandle
{
  v2 = self;
  v3 = sub_1001BA078();

  return v3;
}

- (int64_t)folder
{
  v2 = self;
  v3 = sub_1001BA430();

  return v3;
}

- (void)setFolder:(int64_t)a3
{
  v4 = self;
  sub_1001BA504(a3);
}

- (BOOL)isRead
{
  v2 = self;
  v3 = sub_1001BA588();

  return v3 & 1;
}

- (void)setIsRead:(BOOL)a3
{
  v4 = self;
  sub_1001BA644(a3);
}

- (NSDate)date
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_1001BA788();

  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v9.super.isa;
}

- (BOOL)isTranscriptionAvailable
{
  v2 = self;
  sub_1001BA7E8();
  v4 = v3;

  return v4 & 1;
}

- (double)duration
{
  v2 = self;
  sub_1001BAC7C();
  v4 = v3;

  return v4;
}

- (BOOL)transcriptionAttempted
{
  v2 = self;
  v3 = sub_1001BACEC();

  return v3;
}

- (BOOL)isDeleted
{
  v2 = self;
  v3 = sub_1001BADA8();

  return v3 & 1;
}

- (void)setIsDeleted:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1001BAE14(v3);
}

- (BOOL)isSensitive
{
  v2 = self;
  v3 = sub_1001BAE5C();

  return v3 & 1;
}

- (BOOL)isRTT
{
  v2 = self;
  v3 = sub_1001BABE4();

  return v3 & 1;
}

- (BOOL)isDataAvailable
{
  v2 = self;
  v3 = sub_1001BB824();

  return v3 & 1;
}

- (MPTranscriptMessage)transcript
{
  v2 = self;
  v3 = sub_1001BAC14();

  return v3;
}

- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)a3
{
  v4 = self;
  v5 = sub_1001BCACC(a3);

  return v5;
}

- (id)contactUsingContactStore:(id)a3 withKeysToFetch:(id)a4
{
  sub_10014EA98(&qword_1003AAF80);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  v8 = sub_1001BCB7C(v6);

  return v8;
}

- (id)displayNameUsingContactStore:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001BCCF4(v4);
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