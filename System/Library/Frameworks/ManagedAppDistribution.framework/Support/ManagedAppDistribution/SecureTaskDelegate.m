@interface SecureTaskDelegate
- (_TtC28ManagedAppDistributionDaemonP33_7C6A6A5846008938E730A14DB607337C18SecureTaskDelegate)init;
- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 willPerformHTTPRedirection:(NSHTTPURLResponse *)a5 newRequest:(NSURLRequest *)a6 completionHandler:(id)a7;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
@end

@implementation SecureTaskDelegate

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  sub_10052B44C(v12, v13, v14, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 willPerformHTTPRedirection:(NSHTTPURLResponse *)a5 newRequest:(NSURLRequest *)a6 completionHandler:(id)a7
{
  v13 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = v16;
  v17[7] = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1006B21D8;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1006A16A8;
  v20[5] = v19;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = self;
  sub_100521E40(0, 0, v15, &unk_1006A16B0, v20);
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7C6A6A5846008938E730A14DB607337C18SecureTaskDelegate__metrics);
  v7 = a5;
  v8 = self;
  os_unfair_lock_lock((v6 + 24));
  sub_10052A3D4((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
}

- (_TtC28ManagedAppDistributionDaemonP33_7C6A6A5846008938E730A14DB607337C18SecureTaskDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end