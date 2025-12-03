@interface MPVisualMessage
- (MPMessageID)identifier;
- (MPTranscriptMessage)transcript;
- (MPVisualMessage)init;
- (NSDate)date;
- (NSString)provider;
- (NSURL)dataURL;
- (TUHandle)senderHandle;
- (id)contactUsingContactStore:(id)store withKeysToFetch:(id)fetch;
- (id)displayNameUsingContactStore:(id)store;
- (int64_t)folder;
@end

@implementation MPVisualMessage

- (MPMessageID)identifier
{
  v2 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  selfCopy = self;
  identifier = [v2 identifier];
  v5 = type metadata accessor for MessageID(0);
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___MPMessageID_value] = identifier;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = [(MPVisualMessage *)&v9 init];

  return v7;
}

- (NSString)provider
{
  sharedInstance = [objc_opt_self() sharedInstance];
  providerManager = [sharedInstance providerManager];

  telephonyProvider = [providerManager telephonyProvider];
  identifier = [telephonyProvider identifier];

  if (!identifier)
  {
    sub_10006081C();
    identifier = sub_1000607EC();
  }

  return identifier;
}

- (TUHandle)senderHandle
{
  v2 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  selfCopy = self;
  senderDestinationID = [v2 senderDestinationID];
  if (senderDestinationID)
  {
    v5 = senderDestinationID;
    v6 = objc_opt_self();
    senderISOCountryCode = [v2 senderISOCountryCode];
    v8 = [v6 normalizedPhoneNumberHandleForValue:v5 isoCountryCode:senderISOCountryCode];

    selfCopy = senderISOCountryCode;
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
  selfCopy = self;
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

    isTrashed = [v2 isTrashed];

    if (isTrashed)
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
  v3 = sub_10006030C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  selfCopy = self;
  date = [v7 date];
  sub_1000602FC();

  v10.super.isa = sub_1000602DC().super.isa;
  (*(v4 + 8))(v6, v3);

  return v10.super.isa;
}

- (MPTranscriptMessage)transcript
{
  v2 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  selfCopy = self;
  transcript = [v2 transcript];
  if (transcript)
  {
    v5 = type metadata accessor for VisualTranscriptionMessage();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript] = transcript;
    v8.receiver = v6;
    v8.super_class = v5;
    transcript = [(MPVisualMessage *)&v8 init];
  }

  return transcript;
}

- (NSURL)dataURL
{
  v3 = sub_10006029C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  selfCopy = self;
  dataURL = [v7 dataURL];
  sub_10006027C();

  sub_10006024C(v10);
  v12 = v11;
  (*(v4 + 8))(v6, v3);

  return v12;
}

- (id)contactUsingContactStore:(id)store withKeysToFetch:(id)fetch
{
  sub_100017538(&unk_100099930);
  v6 = sub_1000608CC();
  v7 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  storeCopy = store;
  selfCopy = self;
  sub_10001C92C(v6);

  isa = sub_1000608BC().super.isa;

  v11 = [v7 contactUsingContactStore:storeCopy withKeysToFetch:isa];

  return v11;
}

- (id)displayNameUsingContactStore:(id)store
{
  v4 = *(&self->super.isa + OBJC_IVAR___MPVisualMessage_vmMessage);
  storeCopy = store;
  selfCopy = self;
  v7 = [v4 displayNameUsingContactStore:storeCopy];
  if (v7)
  {
    v8 = v7;
    sub_10006081C();
  }

  else
  {
  }

  v9 = sub_1000607EC();

  return v9;
}

- (MPVisualMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end