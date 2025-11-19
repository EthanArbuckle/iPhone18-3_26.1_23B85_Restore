@interface COSPartnerAppAMSDelegate
- (COSPartnerAppAMSDelegate)initWithPresentingViewController:(id)a3;
- (UIViewController)presentingViewController;
- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4;
- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4;
- (void)startListening;
- (void)stopListening;
@end

@implementation COSPartnerAppAMSDelegate

- (COSPartnerAppAMSDelegate)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COSPartnerAppAMSDelegate;
  v5 = [(COSPartnerAppAMSDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, v4);
    [(COSPartnerAppAMSDelegate *)v6 startListening];
  }

  return v6;
}

- (void)stopListening
{
  v2 = +[ASDNotificationCenter defaultCenter];
  [v2 setDialogObserver:0];
}

- (void)startListening
{
  v3 = +[ASDNotificationCenter defaultCenter];
  [v3 setDialogObserver:self];
}

- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [AMSUIAuthenticateTask alloc];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v10 = [v8 initWithRequest:v7 presentingViewController:WeakRetained];

  v11 = [v10 performAuthentication];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100051784;
  v13[3] = &unk_100269470;
  v14 = v6;
  v12 = v6;
  [v11 addFinishBlock:v13];
}

- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [AMSUIAlertDialogTask alloc];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v10 = [v8 initWithRequest:v7 presentingViewController:WeakRetained];

  v11 = [v10 present];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000519AC;
  v13[3] = &unk_100269498;
  v14 = v6;
  v12 = v6;
  [v11 addFinishBlock:v13];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end