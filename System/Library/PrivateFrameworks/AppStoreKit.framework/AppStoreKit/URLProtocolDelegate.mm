@interface URLProtocolDelegate
- (_TtC11AppStoreKit19URLProtocolDelegate)init;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation URLProtocolDelegate

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  requestCopy = request;
  selfCopy = self;
  v14 = URLProtocolDelegate.presentDialog(for:)(requestCopy);
  v15 = swift_allocObject();
  v15[2] = requestCopy;
  v15[3] = sub_1E167F0A8;
  v15[4] = v11;
  v15[5] = ObjectType;
  v18[4] = sub_1E1820320;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1E1619988;
  v18[3] = &block_descriptor_45_0;
  v16 = _Block_copy(v18);
  v17 = requestCopy;

  [v14 addFinishBlock_];

  _Block_release(v16);
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  requestCopy = request;
  selfCopy = self;
  v14 = URLProtocolDelegate.performAuthentication(for:)(requestCopy);
  v15 = swift_allocObject();
  v15[2] = requestCopy;
  v15[3] = sub_1E167F1D0;
  v15[4] = v11;
  v15[5] = ObjectType;
  v18[4] = sub_1E182031C;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1E1619988;
  v18[3] = &block_descriptor_35_2;
  v16 = _Block_copy(v18);
  v17 = requestCopy;

  [v14 addFinishBlock_];

  _Block_release(v16);
}

- (_TtC11AppStoreKit19URLProtocolDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end