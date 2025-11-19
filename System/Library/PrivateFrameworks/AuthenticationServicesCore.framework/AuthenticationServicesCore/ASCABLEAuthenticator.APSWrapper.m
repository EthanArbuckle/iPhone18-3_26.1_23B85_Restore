@interface ASCABLEAuthenticator.APSWrapper
- (_TtCC26AuthenticationServicesCore20ASCABLEAuthenticatorP33_84AFAA0745E7F5997DD6543D9C2808DD10APSWrapper)init;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation ASCABLEAuthenticator.APSWrapper

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = v4;
    v4 = sub_1C2170174();
    v10 = v9;
  }

  else
  {
    v11 = a3;
    v12 = self;
    v10 = 0xF000000000000000;
  }

  sub_1C20E9A58();
  sub_1C20B23C8(v4, v10);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1C20E9B40(a4);
}

- (_TtCC26AuthenticationServicesCore20ASCABLEAuthenticatorP33_84AFAA0745E7F5997DD6543D9C2808DD10APSWrapper)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ASCABLEAuthenticator.APSWrapper();
  return [(ASCABLEAuthenticator.APSWrapper *)&v4 init];
}

@end