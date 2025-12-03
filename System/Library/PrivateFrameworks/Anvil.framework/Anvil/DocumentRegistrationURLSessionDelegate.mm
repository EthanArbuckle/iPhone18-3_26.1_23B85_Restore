@interface DocumentRegistrationURLSessionDelegate
- (_TtC5Anvil38DocumentRegistrationURLSessionDelegate)init;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
@end

@implementation DocumentRegistrationURLSessionDelegate

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  v6 = _Block_copy(stream);
  if (*(&self->super.isa + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileDescriptor + 4))
  {
    selfCopy = self;
    _Block_release(v6);
    __break(1u);
  }

  else
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileDescriptor);
    v8 = objc_allocWithZone(type metadata accessor for FileDescriptorInputStream());
    selfCopy2 = self;
    v10 = sub_1DD941A6C(v7);
    v11 = v6[2];
    v13 = v10;
    v11(v6, v13);

    _Block_release(v6);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v8 = sub_1DDA13590();
  v10 = v9;

  swift_beginAccess();
  sub_1DDA135A0();
  swift_endAccess();

  sub_1DD909D28(v8, v10);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_1DD916DF8(taskCopy, error);
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_1DD916EF4(data, sent, send);
}

- (_TtC5Anvil38DocumentRegistrationURLSessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end