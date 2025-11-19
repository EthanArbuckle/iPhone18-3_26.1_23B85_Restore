@interface RAPReportViewControllerDelegate
- (RAPReportViewControllerDelegate)initWithReport:(id)a3 completion:(id)a4 delegate:(id)a5;
- (RAPReportViewControllerDelegate)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (RAPReportViewControllerProtocol)delegate;
- (RAPUserInfoPart)userInfoPart;
- (UIBarButtonItem)sendButtonItem;
- (void)_send;
- (void)dealloc;
- (void)invokeCompletionWithOutcome:(int64_t)a3;
@end

@implementation RAPReportViewControllerDelegate

- (RAPReportViewControllerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(RAPReport *)self->_report removeObserver:self];
  v3.receiver = self;
  v3.super_class = RAPReportViewControllerDelegate;
  [(RAPReportViewControllerDelegate *)&v3 dealloc];
}

- (void)_send
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100D84A34;
  v2[3] = &unk_101653830;
  v2[4] = self;
  [RAPPrivacy performPrivacyCheckWithAppearance:1 completion:v2];
}

- (RAPUserInfoPart)userInfoPart
{
  userInfoPart = self->_userInfoPart;
  if (!userInfoPart)
  {
    v4 = objc_alloc_init(RAPUserInfoPart);
    v5 = self->_userInfoPart;
    self->_userInfoPart = v4;

    userInfoPart = self->_userInfoPart;
  }

  return userInfoPart;
}

- (UIBarButtonItem)sendButtonItem
{
  sendButtonItem = self->_sendButtonItem;
  if (!sendButtonItem)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v5 = self;
    }

    v6 = v5;

    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v6 action:"_send"];
    [v7 setEnabled:{-[RAPReport canCreateSubmittableProblem](self->_report, "canCreateSubmittableProblem")}];
    report = self->_report;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100D84BDC;
    v13[3] = &unk_101653808;
    v9 = v7;
    v14 = v9;
    [(RAPReport *)report addObserver:self changeHandler:v13];
    v10 = self->_sendButtonItem;
    self->_sendButtonItem = v9;
    v11 = v9;

    sendButtonItem = self->_sendButtonItem;
  }

  return sendButtonItem;
}

- (void)invokeCompletionWithOutcome:(int64_t)a3
{
  completion = self->_completion;
  if (completion)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    completion[2](completion, WeakRetained, a3);
  }
}

- (RAPReportViewControllerDelegate)initWithReport:(id)a3 completion:(id)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = [(RAPReportViewControllerDelegate *)self initWithReport:a3 question:0 completion:a4];
  v10 = v9;
  if (v9)
  {
    v11 = objc_storeWeak(&v9->_delegate, v8);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      WeakRetained = objc_loadWeakRetained(&v10->_delegate);
      v14 = +[RAPQuestion RAPTitle];
      [WeakRetained setTitle:v14];
    }
  }

  return v10;
}

- (RAPReportViewControllerDelegate)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = RAPReportViewControllerDelegate;
  v10 = [(RAPReportViewControllerDelegate *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_report, a3);
    v12 = [v9 copy];
    completion = v11->_completion;
    v11->_completion = v12;
  }

  return v11;
}

@end