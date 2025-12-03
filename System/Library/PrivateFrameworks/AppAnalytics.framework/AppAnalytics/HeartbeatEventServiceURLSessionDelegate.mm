@interface HeartbeatEventServiceURLSessionDelegate
- (_TtC12AppAnalyticsP33_883BEF9FB9BC10A2D6AB6388C0003C3E39HeartbeatEventServiceURLSessionDelegate)init;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation HeartbeatEventServiceURLSessionDelegate

- (_TtC12AppAnalyticsP33_883BEF9FB9BC10A2D6AB6388C0003C3E39HeartbeatEventServiceURLSessionDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(HeartbeatEventServiceURLSessionDelegate *)&v3 init];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_1B6A6FD04(taskCopy, error);
}

@end