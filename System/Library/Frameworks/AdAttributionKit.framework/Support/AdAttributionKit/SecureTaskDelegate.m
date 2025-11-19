@interface SecureTaskDelegate
- (_TtC20AttributionKitDaemon18SecureTaskDelegate)init;
- (void)URLSession:(NSURLSession *)a3 didReceiveChallenge:(NSURLAuthenticationChallenge *)a4 completionHandler:(id)a5;
@end

@implementation SecureTaskDelegate

- (void)URLSession:(NSURLSession *)a3 didReceiveChallenge:(NSURLAuthenticationChallenge *)a4 completionHandler:(id)a5
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001BAFD8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001BAFE8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1000A226C(0, 0, v12, &unk_1001BAFF8, v17);
}

- (_TtC20AttributionKitDaemon18SecureTaskDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SecureTaskDelegate();
  return [(SecureTaskDelegate *)&v3 init];
}

@end