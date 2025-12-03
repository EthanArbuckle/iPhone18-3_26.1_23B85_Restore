@interface ServerPushListener
- (_TtC23ActivitySharingServices18ServerPushListener)init;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
@end

@implementation ServerPushListener

- (_TtC23ActivitySharingServices18ServerPushListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  if (token)
  {
    connectionCopy = connection;
    selfCopy = self;
    v8 = tokenCopy;
    tokenCopy = sub_221FB5B18();
    v10 = v9;
  }

  else
  {
    connectionCopy2 = connection;
    selfCopy2 = self;
    v10 = 0xF000000000000000;
  }

  sub_221F973F8(connection, tokenCopy, v10);
  sub_221EBEFE4(tokenCopy, v10);
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  tokenCopy = token;
  if (token)
  {
    connectionCopy = connection;
    topicCopy = topic;
    identifierCopy = identifier;
    selfCopy = self;
    v14 = tokenCopy;
    tokenCopy = sub_221FB5B18();
    v16 = v15;

    if (topic)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0;
    if (identifier)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  connectionCopy2 = connection;
  topicCopy2 = topic;
  identifierCopy2 = identifier;
  selfCopy2 = self;
  v16 = 0xF000000000000000;
  if (!topic)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = sub_221FB6318();
  v19 = v18;

  if (identifier)
  {
LABEL_4:
    v20 = sub_221FB6318();
    v22 = v21;

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
  v22 = 0;
LABEL_8:
  sub_221F9778C(tokenCopy, v16, v17, v19, v20, v22);

  sub_221EBEFE4(tokenCopy, v16);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_221F97C34(message);
}

@end