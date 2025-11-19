@interface IMBMessage
- (_TtC8Business10IMBMessage)initWithData:(id)a3 url:(id)a4 messageGUID:(id)a5 isFromMe:(BOOL)a6;
- (id)initFromOriginalMessage:(id)a3 rootKey:(id)a4 rootObject:(id)a5 receivedMessage:(id)a6 replyMessage:(id)a7;
- (id)makeRootObjectWithMessageData:(id)a3 dictionary:(id)a4 imageDictionary:(id)a5 version:(int64_t)a6;
@end

@implementation IMBMessage

- (id)makeRootObjectWithMessageData:(id)a3 dictionary:(id)a4 imageDictionary:(id)a5 version:(int64_t)a6
{
  v10 = sub_1000ABFBC();
  if (a5)
  {
    sub_10003C438();
    a5 = sub_1000ABFBC();
  }

  v11 = a3;
  v12 = self;
  v13 = sub_10003B778(v11, v10, a5, a6);

  return v13;
}

- (_TtC8Business10IMBMessage)initWithData:(id)a3 url:(id)a4 messageGUID:(id)a5 isFromMe:(BOOL)a6
{
  v6 = a6;
  v10 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v28 - v13;
  if (a3)
  {
    v15 = a4;
    v16 = a5;
    v17 = a3;
    a3 = sub_1000AB73C();
    v19 = v18;

    if (a4)
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
    v21 = a4;
    v22 = a5;
    v19 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v23 = sub_1000AB6EC();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
LABEL_6:
  if (a5)
  {
    v24 = sub_1000AC06C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  return sub_10003BF6C(a3, v19, v14, v24, v26, v6);
}

- (id)initFromOriginalMessage:(id)a3 rootKey:(id)a4 rootObject:(id)a5 receivedMessage:(id)a6 replyMessage:(id)a7
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for IMBMessage();
  return [(IMBMessage *)&v13 initFromOriginalMessage:a3 rootKey:a4 rootObject:a5 receivedMessage:a6 replyMessage:a7];
}

@end