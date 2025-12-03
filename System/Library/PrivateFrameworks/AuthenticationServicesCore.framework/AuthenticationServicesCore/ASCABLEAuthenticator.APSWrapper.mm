@interface ASCABLEAuthenticator.APSWrapper
- (_TtCC26AuthenticationServicesCore20ASCABLEAuthenticatorP33_84AFAA0745E7F5997DD6543D9C2808DD10APSWrapper)init;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation ASCABLEAuthenticator.APSWrapper

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  if (token)
  {
    connectionCopy = connection;
    selfCopy = self;
    v8 = tokenCopy;
    tokenCopy = sub_1C2170174();
    v10 = v9;
  }

  else
  {
    connectionCopy2 = connection;
    selfCopy2 = self;
    v10 = 0xF000000000000000;
  }

  sub_1C20E9A58();
  sub_1C20B23C8(tokenCopy, v10);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_1C20E9B40(message);
}

- (_TtCC26AuthenticationServicesCore20ASCABLEAuthenticatorP33_84AFAA0745E7F5997DD6543D9C2808DD10APSWrapper)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ASCABLEAuthenticator.APSWrapper();
  return [(ASCABLEAuthenticator.APSWrapper *)&v4 init];
}

@end