@interface MPVisualMessage
- (BOOL)isDataAvailable;
- (BOOL)isDeleted;
- (BOOL)isRead;
- (BOOL)isTranscribing;
- (BOOL)isTranscriptionAvailable;
- (BOOL)isTranscriptionRated;
- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)a3;
- (BOOL)transcriptionAttempted;
- (MPMessageID)identifier;
- (MPTranscriptMessage)transcript;
- (NSDate)date;
- (NSString)provider;
- (NSURL)dataURL;
- (NSURL)thumbnailURL;
- (NSUUID)callUUID;
- (TUHandle)senderHandle;
- (VMVoicemail)vmMessage;
- (double)duration;
- (id)contactUsingContactStore:(id)a3 withKeysToFetch:(id)a4;
- (id)displayNameUsingContactStore:(id)a3;
- (int64_t)folder;
@end

@implementation MPVisualMessage

- (VMVoicemail)vmMessage
{
  v2 = sub_10021C62C();

  return v2;
}

- (MPMessageID)identifier
{
  v2 = self;
  v3 = sub_10021C680();

  return v3;
}

- (NSString)provider
{
  v2 = self;
  sub_10021C738();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSUUID)callUUID
{
  v2 = sub_10014EA98(&qword_1003AAB40);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v9 - v4;
  sub_10021C8F0();
  v6 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100006AC0(v5, 1, v6) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return isa;
}

- (TUHandle)senderHandle
{
  v2 = self;
  v3 = sub_10021C970();

  return v3;
}

- (int64_t)folder
{
  v2 = self;
  v3 = sub_10021CB84();

  return v3;
}

- (BOOL)isRead
{
  v2 = self;
  v3 = sub_10021CC60();

  return v3 & 1;
}

- (NSDate)date
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_10021CD84();

  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v9.super.isa;
}

- (BOOL)isTranscriptionAvailable
{
  v2 = self;
  v3 = sub_10021CE20();

  return v3 & 1;
}

- (double)duration
{
  v2 = self;
  sub_10021CE88();
  v4 = v3;

  return v4;
}

- (BOOL)isTranscriptionRated
{
  v2 = self;
  v3 = sub_10021CED4();

  return v3 & 1;
}

- (BOOL)isTranscribing
{
  v2 = self;
  v3 = sub_10021CF34();

  return v3;
}

- (BOOL)transcriptionAttempted
{
  v2 = self;
  v3 = sub_10021CF9C();

  return v3;
}

- (MPTranscriptMessage)transcript
{
  v2 = self;
  v3 = sub_10021D014();

  return v3;
}

- (BOOL)isDeleted
{
  v2 = self;
  v3 = sub_10021CC00();

  return v3 & 1;
}

- (NSURL)dataURL
{
  v3 = sub_10014EA98(&qword_1003AAF20);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = self;
  sub_10021D1CC(v6);

  v8 = type metadata accessor for URL();
  v10 = 0;
  if (sub_100006AC0(v6, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v10 = v11;
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v10;
}

- (NSURL)thumbnailURL
{
  v2 = sub_10014EA98(&qword_1003AAF20);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  sub_10021D334();
  v6 = type metadata accessor for URL();
  v8 = 0;
  if (sub_100006AC0(v5, 1, v6) != 1)
  {
    URL._bridgeToObjectiveC()(v7);
    v8 = v9;
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v8;
}

- (BOOL)isDataAvailable
{
  v2 = self;
  v3 = sub_10021D3A4();

  return v3 & 1;
}

- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(double)a3
{
  v4 = self;
  v5 = sub_10021D458(a3);

  return v5 & 1;
}

- (id)contactUsingContactStore:(id)a3 withKeysToFetch:(id)a4
{
  sub_10014EA98(&qword_1003AAF80);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  v9 = sub_10021D4CC(v7, v6);

  return v9;
}

- (id)displayNameUsingContactStore:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10021D5EC(v4);
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