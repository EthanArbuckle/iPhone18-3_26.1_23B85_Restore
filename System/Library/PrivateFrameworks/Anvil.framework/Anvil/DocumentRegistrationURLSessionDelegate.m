@interface DocumentRegistrationURLSessionDelegate
- (_TtC5Anvil38DocumentRegistrationURLSessionDelegate)init;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
@end

@implementation DocumentRegistrationURLSessionDelegate

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v6 = _Block_copy(a5);
  if (*(&self->super.isa + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileDescriptor + 4))
  {
    v12 = self;
    _Block_release(v6);
    __break(1u);
  }

  else
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileDescriptor);
    v8 = objc_allocWithZone(type metadata accessor for FileDescriptorInputStream());
    v9 = self;
    v10 = sub_1DD941A6C(v7);
    v11 = v6[2];
    v13 = v10;
    v11(v6, v13);

    _Block_release(v6);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v6 = a5;
  v7 = self;
  v8 = sub_1DDA13590();
  v10 = v9;

  swift_beginAccess();
  sub_1DDA135A0();
  swift_endAccess();

  sub_1DD909D28(v8, v10);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1DD916DF8(v9, a5);
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_1DD916EF4(a5, a6, a7);
}

- (_TtC5Anvil38DocumentRegistrationURLSessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end