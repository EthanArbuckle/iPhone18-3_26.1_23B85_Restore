@interface CommerceDialogHandler
- (_TtC27AppStoreComponentsDaemonKit21CommerceDialogHandler)init;
- (void)handleAuthenticateRequest:(id)request resultHandler:(id)handler;
- (void)handleDialogRequest:(id)request resultHandler:(id)handler;
@end

@implementation CommerceDialogHandler

- (_TtC27AppStoreComponentsDaemonKit21CommerceDialogHandler)init
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = [(CommerceDialogHandler *)&v7 init];
  v3 = objc_opt_self();
  v4 = v2;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter setDialogObserver_];

  return v4;
}

- (void)handleAuthenticateRequest:(id)request resultHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CEE3E8]);
  requestCopy = request;
  initWithRequest_ = [v7 initWithRequest_];
  performAuthentication = [initWithRequest_ performAuthentication];
  v12[4] = sub_222684E48;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_222684E50;
  v12[3] = &block_descriptor_8;
  v11 = _Block_copy(v12);

  [performAuthentication addFinishBlock_];

  _Block_release(v11);
}

- (void)handleDialogRequest:(id)request resultHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CEE6B0]);
  requestCopy = request;
  initWithRequest_ = [v7 initWithRequest_];
  present = [initWithRequest_ present];
  v12[4] = sub_222684E28;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_222684E50;
  v12[3] = &block_descriptor_3;
  v11 = _Block_copy(v12);

  [present addFinishBlock_];

  _Block_release(v11);
}

@end