@interface URLProtocolDelegate
- (_TtC11AppStoreKit19URLProtocolDelegate)init;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
@end

@implementation URLProtocolDelegate

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  ObjectType = swift_getObjectType();
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a5;
  v13 = self;
  v14 = URLProtocolDelegate.presentDialog(for:)(v12);
  v15 = swift_allocObject();
  v15[2] = v12;
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
  v17 = v12;

  [v14 addFinishBlock_];

  _Block_release(v16);
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  ObjectType = swift_getObjectType();
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a5;
  v13 = self;
  v14 = URLProtocolDelegate.performAuthentication(for:)(v12);
  v15 = swift_allocObject();
  v15[2] = v12;
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
  v17 = v12;

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