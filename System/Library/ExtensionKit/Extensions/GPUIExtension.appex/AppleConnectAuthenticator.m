@interface AppleConnectAuthenticator
- (void)authenticateIfNeededWithCompletion:(id)a3;
@end

@implementation AppleConnectAuthenticator

- (void)authenticateIfNeededWithCompletion:(id)a3
{
  v5 = sub_1000032E4(&qword_10000C4D0, &qword_100006368);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_100005D9C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_100005D7C();
  v12 = self;

  v13 = sub_100005D6C();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v14[5] = sub_100005668;
  v14[6] = v10;
  sub_100002DAC(0, 0, v8, &unk_100006498, v14);
}

@end