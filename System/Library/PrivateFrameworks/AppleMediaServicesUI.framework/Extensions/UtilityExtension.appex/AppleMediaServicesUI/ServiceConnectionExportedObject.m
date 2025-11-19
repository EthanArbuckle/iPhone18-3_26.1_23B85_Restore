@interface ServiceConnectionExportedObject
- (void)bootstrapWithAccount:(id)a3 bagData:(id)a4 clientInfo:(id)a5 mediaClientData:(id)a6 metricsContextData:(id)a7 url:(id)a8 completion:(id)a9;
- (void)performWithRequestData:(id)a3 completion:(id)a4;
- (void)updateWithAccount:(id)a3 completion:(id)a4;
@end

@implementation ServiceConnectionExportedObject

- (void)bootstrapWithAccount:(id)a3 bagData:(id)a4 clientInfo:(id)a5 mediaClientData:(id)a6 metricsContextData:(id)a7 url:(id)a8 completion:(id)a9
{
  v36 = a3;
  v34 = self;
  v15 = sub_100043B7C();
  v38 = *(v15 - 8);
  v39 = v15;
  v16 = *(v38 + 64);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(a9);
  v37 = a3;
  v20 = a4;
  v35 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;

  v24 = sub_100043BAC();
  v26 = v25;

  v27 = sub_100043BAC();
  v29 = v28;

  v30 = sub_100043BAC();
  v32 = v31;

  sub_100043B3C();
  _Block_copy(v19);
  v33 = v35;
  sub_10003E72C(v36, v24, v26, v35, v27, v29, v30, v32, v18, v34, v19);
  _Block_release(v19);
  sub_100023364(v30, v32);
  sub_100023364(v27, v29);
  sub_100023364(v24, v26);

  (*(v38 + 8))(v18, v39);
}

- (void)performWithRequestData:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = sub_100043BAC();
  v10 = v9;

  _Block_copy(v6);
  sub_10003FED4(v8, v10, self, v6);
  _Block_release(v6);
  sub_100023364(v8, v10);
}

- (void)updateWithAccount:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;

  sub_100040DD8(a3, self, v6);
  _Block_release(v6);
}

@end