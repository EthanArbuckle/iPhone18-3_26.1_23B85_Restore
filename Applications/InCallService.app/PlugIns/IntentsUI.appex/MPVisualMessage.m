@interface MPVisualMessage
- (MPMessageID)identifier;
- (MPTranscriptMessage)transcript;
- (MPVisualMessage)init;
- (NSDate)date;
- (NSString)provider;
- (NSURL)dataURL;
- (TUHandle)senderHandle;
- (id)contactUsingContactStore:(id)a3 withKeysToFetch:(id)a4;
- (id)displayNameUsingContactStore:(id)a3;
- (int64_t)folder;
@end

@implementation MPVisualMessage

- (MPMessageID)identifier
{
  v2 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  v3 = self;
  v4 = [v2 identifier];
  v5 = type metadata accessor for MessageID(0);
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___MPMessageID_value] = v4;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = [(MPVisualMessage *)&v9 init];

  return v7;
}

- (NSString)provider
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 providerManager];

  v4 = [v3 telephonyProvider];
  v5 = [v4 identifier];

  if (!v5)
  {
    sub_10007B478();
    v5 = sub_10007B448();
  }

  return v5;
}

- (TUHandle)senderHandle
{
  v2 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  v3 = self;
  v4 = [v2 senderDestinationID];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = [v2 senderISOCountryCode];
    v8 = [v6 normalizedPhoneNumberHandleForValue:v5 isoCountryCode:v7];

    v3 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)folder
{
  v2 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  v3 = self;
  if ([v2 isDeleted])
  {

    return 0;
  }

  else
  {
    if ([v2 isBlocked])
    {
      v5 = 4;
    }

    else
    {
      v5 = 1;
    }

    v6 = [v2 isTrashed];

    if (v6)
    {
      return 2;
    }

    else
    {
      return v5;
    }
  }
}

- (NSDate)date
{
  v3 = sub_10007ADB8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  v9 = self;
  v10 = [v8 date];
  sub_10007ADA8();

  v11.super.isa = sub_10007AD88().super.isa;
  (*(v4 + 8))(v7, v3);

  return v11.super.isa;
}

- (MPTranscriptMessage)transcript
{
  v2 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  v3 = self;
  v4 = [v2 transcript];
  if (v4)
  {
    v5 = type metadata accessor for VisualTranscriptionMessage();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript] = v4;
    v8.receiver = v6;
    v8.super_class = v5;
    v4 = [(MPVisualMessage *)&v8 init];
  }

  return v4;
}

- (NSURL)dataURL
{
  v3 = sub_10007AD68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  v9 = self;
  v10 = [v8 dataURL];
  sub_10007AD48();

  sub_10007AD38(v11);
  v13 = v12;
  (*(v4 + 8))(v7, v3);

  return v13;
}

- (id)contactUsingContactStore:(id)a3 withKeysToFetch:(id)a4
{
  sub_100030744(&unk_1000C5440);
  v6 = sub_10007B528();
  v7 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  v8 = a3;
  v9 = self;
  sub_1000435E8(v6);

  isa = sub_10007B518().super.isa;

  v11 = [v7 contactUsingContactStore:v8 withKeysToFetch:isa];

  return v11;
}

- (id)displayNameUsingContactStore:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  v5 = a3;
  v6 = self;
  v7 = [v4 displayNameUsingContactStore:v5];
  if (v7)
  {
    v8 = v7;
    sub_10007B478();
  }

  else
  {
  }

  v9 = sub_10007B448();

  return v9;
}

- (MPVisualMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end