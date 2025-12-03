@interface IMBMessage
- (_TtC8Business10IMBMessage)initWithData:(id)data url:(id)url messageGUID:(id)d isFromMe:(BOOL)me;
- (id)initFromOriginalMessage:(id)message rootKey:(id)key rootObject:(id)object receivedMessage:(id)receivedMessage replyMessage:(id)replyMessage;
- (id)makeRootObjectWithMessageData:(id)data dictionary:(id)dictionary imageDictionary:(id)imageDictionary version:(int64_t)version;
@end

@implementation IMBMessage

- (id)makeRootObjectWithMessageData:(id)data dictionary:(id)dictionary imageDictionary:(id)imageDictionary version:(int64_t)version
{
  v10 = sub_1000ABFBC();
  if (imageDictionary)
  {
    sub_10003C438();
    imageDictionary = sub_1000ABFBC();
  }

  dataCopy = data;
  selfCopy = self;
  v13 = sub_10003B778(dataCopy, v10, imageDictionary, version);

  return v13;
}

- (_TtC8Business10IMBMessage)initWithData:(id)data url:(id)url messageGUID:(id)d isFromMe:(BOOL)me
{
  meCopy = me;
  v10 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v28 - v13;
  if (data)
  {
    urlCopy = url;
    dCopy = d;
    dataCopy = data;
    data = sub_1000AB73C();
    v19 = v18;

    if (url)
    {
LABEL_3:
      sub_1000AB6AC();

      v20 = sub_1000AB6EC();
      (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
      goto LABEL_6;
    }
  }

  else
  {
    urlCopy2 = url;
    dCopy2 = d;
    v19 = 0xF000000000000000;
    if (url)
    {
      goto LABEL_3;
    }
  }

  v23 = sub_1000AB6EC();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
LABEL_6:
  if (d)
  {
    v24 = sub_1000AC06C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  return sub_10003BF6C(data, v19, v14, v24, v26, meCopy);
}

- (id)initFromOriginalMessage:(id)message rootKey:(id)key rootObject:(id)object receivedMessage:(id)receivedMessage replyMessage:(id)replyMessage
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for IMBMessage();
  return [(IMBMessage *)&v13 initFromOriginalMessage:message rootKey:key rootObject:object receivedMessage:receivedMessage replyMessage:replyMessage];
}

@end