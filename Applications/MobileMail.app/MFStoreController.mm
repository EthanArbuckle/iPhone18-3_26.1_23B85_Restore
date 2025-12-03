@interface MFStoreController
+ (OS_os_log)log;
+ (id)_canLoadAsStoreURL:(id)l;
+ (id)_presentStoreURL:(id)l from:(id)from;
+ (id)openPossibleStoreURL:(id)l presentingFrom:(id)from;
- (MFStoreController)init;
- (id)_presentStoreURL:(id)l from:(id)from;
@end

@implementation MFStoreController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100217450;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD678 != -1)
  {
    dispatch_once(&qword_1006DD678, block);
  }

  v2 = qword_1006DD670;

  return v2;
}

+ (id)openPossibleStoreURL:(id)l presentingFrom:(id)from
{
  lCopy = l;
  fromCopy = from;
  v8 = +[EFScheduler mainThreadScheduler];
  view = [fromCopy view];
  isUserInteractionEnabled = [view isUserInteractionEnabled];

  view2 = [fromCopy view];
  [view2 setUserInteractionEnabled:0];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100217850;
  v33[3] = &unk_10064D9D8;
  v12 = fromCopy;
  v34 = v12;
  v35 = isUserInteractionEnabled;
  v13 = [EFDeallocInvocationToken tokenWithLabel:@"MFStoreController Interaction Resumer" invocationBlock:v33];
  v14 = [self _canLoadAsStoreURL:lCopy];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100217980;
  v30[3] = &unk_10064C660;
  v15 = v13;
  v31 = v15;
  v16 = v14;
  v32 = v16;
  [v8 afterDelay:v30 performBlock:2.0];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1002179BC;
  v17 = v25[3] = &unk_100655AD0;
  v26 = v17;
  selfCopy = self;
  v18 = lCopy;
  v27 = v18;
  v19 = v12;
  v28 = v19;
  v20 = [v16 onScheduler:v8 then:v25];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100217A04;
  v23[3] = &unk_10064C7E8;
  v21 = v15;
  v24 = v21;
  [v20 onScheduler:v8 always:v23];

  return v20;
}

+ (id)_canLoadAsStoreURL:(id)l
{
  lCopy = l;
  +[EFPromise promise];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100217B38;
  v4 = v9[3] = &unk_10064C570;
  v10 = v4;
  v5 = objc_retainBlock(v9);
  v6 = sub_100217BF8();
  if (v6)
  {
    [v6 getCanLoadURL:lCopy completionBlock:v5];
  }

  else
  {
    (v5[2])(v5, 0);
  }

  future = [v4 future];

  return future;
}

+ (id)_presentStoreURL:(id)l from:(id)from
{
  lCopy = l;
  fromCopy = from;
  v7 = objc_alloc_init(MFStoreController);
  v8 = [(MFStoreController *)v7 _presentStoreURL:lCopy from:fromCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100217DFC;
  v11[3] = &unk_10064C7E8;
  v9 = v7;
  v12 = v9;
  [v8 always:v11];

  return v8;
}

- (MFStoreController)init
{
  v8.receiver = self;
  v8.super_class = MFStoreController;
  v2 = [(MFStoreController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(sub_100217BF8());
    storeViewController = v2->_storeViewController;
    v2->_storeViewController = v3;

    v5 = objc_alloc_init(EFPromise);
    promise = v2->_promise;
    v2->_promise = v5;
  }

  return v2;
}

- (id)_presentStoreURL:(id)l from:(id)from
{
  lCopy = l;
  fromCopy = from;
  storeViewController = self->_storeViewController;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100218014;
  v14[3] = &unk_100655AF8;
  v9 = lCopy;
  v15 = v9;
  selfCopy = self;
  [(SKStoreProductViewController *)storeViewController loadProductWithURL:v9 completionBlock:v14];
  v10 = self->_storeViewController;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10021817C;
  v13[3] = &unk_10064C7E8;
  v13[4] = self;
  [fromCopy presentViewController:v10 animated:1 completion:v13];
  future = [(EFPromise *)self->_promise future];

  return future;
}

@end