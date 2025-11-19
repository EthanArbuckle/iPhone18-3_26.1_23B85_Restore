@interface AppleConnectAuthenticator
- (void)authenticateIfNeededWithCompletion:(id)a3;
@end

@implementation AppleConnectAuthenticator

- (void)authenticateIfNeededWithCompletion:(id)a3
{
  v5 = (*(*(sub_1000031C4(&qword_1000149F0, &qword_10000BAD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_10000A674();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_10000A654();
  v11 = self;

  v12 = sub_10000A644();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  v13[5] = sub_1000032D4;
  v13[6] = v9;
  sub_10000383C(0, 0, v7, &unk_10000B968, v13);
}

@end