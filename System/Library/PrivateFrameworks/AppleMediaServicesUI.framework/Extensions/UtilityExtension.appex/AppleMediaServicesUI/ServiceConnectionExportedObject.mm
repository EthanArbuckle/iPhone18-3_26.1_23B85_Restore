@interface ServiceConnectionExportedObject
- (void)bootstrapWithAccount:(id)account bagData:(id)data clientInfo:(id)info mediaClientData:(id)clientData metricsContextData:(id)contextData url:(id)url completion:(id)completion;
- (void)performWithRequestData:(id)data completion:(id)completion;
- (void)updateWithAccount:(id)account completion:(id)completion;
@end

@implementation ServiceConnectionExportedObject

- (void)bootstrapWithAccount:(id)account bagData:(id)data clientInfo:(id)info mediaClientData:(id)clientData metricsContextData:(id)contextData url:(id)url completion:(id)completion
{
  accountCopy = account;
  selfCopy = self;
  v15 = sub_100043B7C();
  v38 = *(v15 - 8);
  v39 = v15;
  v16 = *(v38 + 64);
  __chkstk_darwin(v15);
  v18 = &selfCopy - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(completion);
  accountCopy2 = account;
  dataCopy = data;
  infoCopy = info;
  clientDataCopy = clientData;
  contextDataCopy = contextData;
  urlCopy = url;

  v24 = sub_100043BAC();
  v26 = v25;

  v27 = sub_100043BAC();
  v29 = v28;

  v30 = sub_100043BAC();
  v32 = v31;

  sub_100043B3C();
  _Block_copy(v19);
  v33 = infoCopy;
  sub_10003E72C(accountCopy, v24, v26, infoCopy, v27, v29, v30, v32, v18, selfCopy, v19);
  _Block_release(v19);
  sub_100023364(v30, v32);
  sub_100023364(v27, v29);
  sub_100023364(v24, v26);

  (*(v38 + 8))(v18, v39);
}

- (void)performWithRequestData:(id)data completion:(id)completion
{
  v6 = _Block_copy(completion);
  dataCopy = data;

  v8 = sub_100043BAC();
  v10 = v9;

  _Block_copy(v6);
  sub_10003FED4(v8, v10, self, v6);
  _Block_release(v6);
  sub_100023364(v8, v10);
}

- (void)updateWithAccount:(id)account completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  accountCopy = account;

  sub_100040DD8(account, self, v6);
  _Block_release(v6);
}

@end