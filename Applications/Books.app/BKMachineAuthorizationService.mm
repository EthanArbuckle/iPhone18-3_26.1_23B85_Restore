@interface BKMachineAuthorizationService
+ (void)requestAuthorizeWithAccount:(id)account completion:(id)completion;
+ (void)requestKeybagRefetchWithDsid:(unint64_t)dsid completion:(id)completion;
- (void)handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation BKMachineAuthorizationService

+ (void)requestAuthorizeWithAccount:(id)account completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = sub_1007A2254();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  sceneManager = [objc_opt_self() sceneManager];
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v7;
  v10[4] = sub_100474A40;
  v10[5] = v8;
  v12[4] = sub_1004749FC;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100201C54;
  v12[3] = &unk_100A1DA60;
  v11 = _Block_copy(v12);

  [sceneManager requestPrimaryScene:v11];

  _Block_release(v11);
}

+ (void)requestKeybagRefetchWithDsid:(unint64_t)dsid completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sceneManager = [objc_opt_self() sceneManager];
  v8 = swift_allocObject();
  v8[2] = dsid;
  v8[3] = sub_1004749E8;
  v8[4] = v6;
  v10[4] = sub_1004749F0;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100201C54;
  v10[3] = &unk_100A1D9E8;
  v9 = _Block_copy(v10);

  [sceneManager requestPrimaryScene:v9];

  _Block_release(v9);
}

- (void)handleAuthenticateRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_100017E74();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = request;
  v9[4] = sub_100474A1C;
  v9[5] = v7;
  requestCopy = request;
  selfCopy = self;

  sub_1007A2CD4();
}

- (void)handleDialogRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_100017E74();
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = request;
  v8[4] = sub_100474890;
  v8[5] = v7;
  requestCopy = request;
  selfCopy = self;
  v10 = requestCopy;

  sub_1007A2CD4();
}

@end