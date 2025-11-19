@interface CKContainer
- (id)_acceptShareWithShareMetadata:(id)a3;
- (id)_fetchShareMetadataForURL:(id)a3 withToken:(id)a4;
- (id)acceptShareURL:(id)a3 withToken:(id)a4;
- (id)status;
@end

@implementation CKContainer

- (id)acceptShareURL:(id)a3 withToken:(id)a4
{
  v5 = [(CKContainer *)self _fetchShareMetadataForURL:a3 withToken:a4];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100094C24;
  v9[3] = &unk_1002B28A8;
  v9[4] = self;
  v6 = [v5 thenWithBlock:v9];
  v7 = [v6 binaryPromiseAdapter];

  return v7;
}

- (id)status
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100094CDC;
  v5[3] = &unk_1002B28D0;
  v3 = objc_alloc_init(AMSMutablePromise);
  v6 = v3;
  [(CKContainer *)self accountStatusWithCompletionHandler:v5];

  return v3;
}

- (id)_acceptShareWithShareMetadata:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [CKAcceptSharesOperation alloc];
  v13 = v4;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  v8 = [v6 initWithShareMetadatas:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100094EC0;
  v11[3] = &unk_1002B28F8;
  v9 = v5;
  v12 = v9;
  [v8 setPerShareCompletionBlock:v11];
  [(CKContainer *)self addOperation:v8];

  return v9;
}

- (id)_fetchShareMetadataForURL:(id)a3 withToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc_init(AMSMutablePromise);
  v10 = [CKFetchShareMetadataOperation alloc];
  if (v8)
  {
    v24 = v6;
    v11 = [NSArray arrayWithObjects:&v24 count:1];
    v22 = v6;
    v23 = v8;
    v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v13 = [v10 initWithShareURLs:v11 invitationTokensByShareURL:v12];
  }

  else
  {
    v21 = v6;
    v11 = [NSArray arrayWithObjects:&v21 count:1];
    v13 = [v10 initWithShareURLs:v11];
  }

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000950D4;
  v19 = &unk_1002B2920;
  v14 = v9;
  v20 = v14;
  [v13 setPerShareMetadataBlock:&v16];
  [(CKContainer *)self addOperation:v13, v16, v17, v18, v19];

  return v14;
}

@end