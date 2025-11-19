@interface VettingAcceptor
- (VettingAcceptor)initWithCloudKitURL:(id)a3;
- (void)completeVettingWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)retrievingDialogCancelled;
@end

@implementation VettingAcceptor

- (VettingAcceptor)initWithCloudKitURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VettingAcceptor;
  v5 = [(VettingAcceptor *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = [[VettingHandler alloc] initWithCloudKitURL:v4];
    vettingHandler = v5->_vettingHandler;
    v5->_vettingHandler = v8;

    v10 = objc_alloc_init(RetrievingDialog);
    retrievingDialog = v5->_retrievingDialog;
    v5->_retrievingDialog = v10;

    [(RetrievingDialog *)v5->_retrievingDialog setDelegate:v5];
  }

  return v5;
}

- (void)retrievingDialogCancelled
{
  obj = self;
  objc_sync_enter(obj);
  [(VettingAcceptor *)obj setCancelled:1];
  objc_sync_exit(obj);
}

- (void)completeVettingWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(VettingAcceptor *)self retrievingDialog];
  [v5 schedule];

  objc_initWeak(&location, self);
  v6 = [(VettingAcceptor *)self vettingHandler];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000155BC;
  v10[3] = &unk_100028CC0;
  objc_copyWeak(&v12, &location);
  v7 = v4;
  v11 = v7;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015A7C;
  v8[3] = &unk_100028848;
  objc_copyWeak(&v9, &location);
  [v6 completeVettingWithCompletionHandler:v10 willIssueCompletionOperationHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  [(RetrievingDialog *)self->_retrievingDialog abort];
  v3.receiver = self;
  v3.super_class = VettingAcceptor;
  [(VettingAcceptor *)&v3 dealloc];
}

@end