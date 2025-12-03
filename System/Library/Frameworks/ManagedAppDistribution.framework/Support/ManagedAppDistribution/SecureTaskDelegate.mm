@interface SecureTaskDelegate
- (_TtC28ManagedAppDistributionDaemonP33_7C6A6A5846008938E730A14DB607337C18SecureTaskDelegate)init;
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task willPerformHTTPRedirection:(NSHTTPURLResponse *)redirection newRequest:(NSURLRequest *)request completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation SecureTaskDelegate

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  _Block_copy(v10);
  sessionCopy = session;
  taskCopy = task;
  challengeCopy = challenge;
  selfCopy = self;
  sub_10052B44C(taskCopy, challengeCopy, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task willPerformHTTPRedirection:(NSHTTPURLResponse *)redirection newRequest:(NSURLRequest *)request completionHandler:(id)handler
{
  v13 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = session;
  v17[3] = task;
  v17[4] = redirection;
  v17[5] = request;
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
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  selfCopy = self;
  sub_100521E40(0, 0, v15, &unk_1006A16B0, v20);
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7C6A6A5846008938E730A14DB607337C18SecureTaskDelegate__metrics);
  metricsCopy = metrics;
  selfCopy = self;
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