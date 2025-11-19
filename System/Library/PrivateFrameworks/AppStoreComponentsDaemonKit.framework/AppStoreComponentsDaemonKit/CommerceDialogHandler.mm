@interface CommerceDialogHandler
- (_TtC27AppStoreComponentsDaemonKit21CommerceDialogHandler)init;
- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4;
- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4;
@end

@implementation CommerceDialogHandler

- (_TtC27AppStoreComponentsDaemonKit21CommerceDialogHandler)init
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = [(CommerceDialogHandler *)&v7 init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultCenter];
  [v5 setDialogObserver_];

  return v4;
}

- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CEE3E8]);
  v8 = a3;
  v9 = [v7 initWithRequest_];
  v10 = [v9 performAuthentication];
  v12[4] = sub_222684E48;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_222684E50;
  v12[3] = &block_descriptor_8;
  v11 = _Block_copy(v12);

  [v10 addFinishBlock_];

  _Block_release(v11);
}

- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CEE6B0]);
  v8 = a3;
  v9 = [v7 initWithRequest_];
  v10 = [v9 present];
  v12[4] = sub_222684E28;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_222684E50;
  v12[3] = &block_descriptor_3;
  v11 = _Block_copy(v12);

  [v10 addFinishBlock_];

  _Block_release(v11);
}

@end