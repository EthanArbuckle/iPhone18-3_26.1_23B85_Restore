@interface ASWebSocket
- (_TtC26AuthenticationServicesCore11ASWebSocket)init;
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session webSocketTask:(id)task didOpenWithProtocol:(id)protocol;
@end

@implementation ASWebSocket

- (void)URLSession:(id)session webSocketTask:(id)task didOpenWithProtocol:(id)protocol
{
  if (protocol)
  {
    v8 = sub_1C2170914();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_1C21537F4(v8, v10);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_1C215393C(error);
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = session;
  v16[3] = task;
  v16[4] = challenge;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1C2170BE4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1C217FA68;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1C21799C0;
  v19[5] = v18;
  sessionCopy = session;
  taskCopy = task;
  challengeCopy = challenge;
  selfCopy = self;
  sub_1C2166D88(0, 0, v14, &unk_1C21768B0, v19);
}

- (_TtC26AuthenticationServicesCore11ASWebSocket)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end