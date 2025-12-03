@interface AppStoreComponentsWrapper
- (AppStoreComponentsWrapper)initWithLogKey:(id)key;
- (id)lockupWithItemID:(id)d versionID:(id)iD distributorID:(id)distributorID isForAppStore:(BOOL)store delegate:(id)delegate;
- (id)presentingViewControllerForMiniProductPageView:(id)view;
- (void)miniProductPageView:(id)view didFailRequestWithError:(id)error;
- (void)miniProductPageViewDidBeginRequest:(id)request;
- (void)miniProductPageViewDidFinishRequest:(id)request;
- (void)miniProductPageViewDidInvalidateIntrinsicContentSize:(id)size;
- (void)miniProductPageViewDidPresentDescription:(id)description;
@end

@implementation AppStoreComponentsWrapper

- (AppStoreComponentsWrapper)initWithLogKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = AppStoreComponentsWrapper;
  v6 = [(AppStoreComponentsWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logKey, key);
  }

  return v7;
}

- (id)lockupWithItemID:(id)d versionID:(id)iD distributorID:(id)distributorID isForAppStore:(BOOL)store delegate:(id)delegate
{
  storeCopy = store;
  dCopy = d;
  iDCopy = iD;
  distributorIDCopy = distributorID;
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v16 = qword_100025B30;
  v44 = qword_100025B30;
  if (!qword_100025B30)
  {
    v36 = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_100002C40;
    v39 = &unk_100021038;
    v40 = &v41;
    sub_100002C40(&v36);
    v16 = v42[3];
  }

  v17 = v16;
  _Block_object_dispose(&v41, 8);
  v18 = [[v16 alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v18 setDelegate:self];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v19 = qword_100025B40;
  v44 = qword_100025B40;
  if (!qword_100025B40)
  {
    v36 = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_100002E0C;
    v39 = &unk_100021038;
    v40 = &v41;
    sub_100002E0C(&v36);
    v19 = v42[3];
  }

  v20 = v19;
  _Block_object_dispose(&v41, 8);
  v21 = [[v19 alloc] initWithStringValue:dCopy];
  v22 = sub_10000266C();
  v23 = v22;
  if (storeCopy)
  {
    v24 = [v22 alloc];
    v25 = sub_10000274C();
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v26 = qword_100025B58;
    v44 = qword_100025B58;
    if (!qword_100025B58)
    {
      v36 = _NSConcreteStackBlock;
      v37 = 3221225472;
      v38 = sub_100002F0C;
      v39 = &unk_100021038;
      v40 = &v41;
      v27 = sub_100002C98();
      v28 = dlsym(v27, "ASCLockupContextAppStoreInstall");
      *(v40[1] + 24) = v28;
      qword_100025B58 = *(v40[1] + 24);
      v26 = v42[3];
    }

    _Block_object_dispose(&v41, 8);
    if (v26)
    {
      v29 = [v24 initWithID:v21 kind:v25 context:*v26];
      goto LABEL_14;
    }

    sub_100017210();
LABEL_18:
    v35 = sub_100017210();
    _Block_object_dispose(&v41, 8);
    _Unwind_Resume(v35);
  }

  v25 = sub_10000274C();
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v30 = qword_100025B60;
  v44 = qword_100025B60;
  if (!qword_100025B60)
  {
    v36 = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_100002F5C;
    v39 = &unk_100021038;
    v40 = &v41;
    v31 = sub_100002C98();
    v32 = dlsym(v31, "ASCLockupContextAppDistributionInstall");
    *(v40[1] + 24) = v32;
    qword_100025B60 = *(v40[1] + 24);
    v30 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v30)
  {
    goto LABEL_18;
  }

  v29 = [(objc_class *)v23 _requestWithID:v21 kind:v25 context:*v30 appVersionId:iDCopy distributorId:distributorIDCopy];
LABEL_14:
  v33 = v29;

  [v18 setRequest:v33];

  return v18;
}

- (id)presentingViewControllerForMiniProductPageView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  miniProductPagePresentingViewController = [WeakRetained miniProductPagePresentingViewController];

  v6 = LALogHandleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v9 = 138543618;
    v10 = logKey;
    v11 = 2112;
    v12 = miniProductPagePresentingViewController;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mini product page asked for it's presenting controller, returning %@", &v9, 0x16u);
  }

  return miniProductPagePresentingViewController;
}

- (void)miniProductPageViewDidBeginRequest:(id)request
{
  v4 = LALogHandleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v6 = 138543362;
    v7 = logKey;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mini product page began request", &v6, 0xCu);
  }
}

- (void)miniProductPageViewDidFinishRequest:(id)request
{
  requestCopy = request;
  v5 = LALogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v8 = 138543362;
    v9 = logKey;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mini product page finished request", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained miniProductPageRequestDidFinish];

  [requestCopy setNeedsLayout];
}

- (void)miniProductPageView:(id)view didFailRequestWithError:(id)error
{
  errorCopy = error;
  v6 = LALogHandleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100017234(self, errorCopy, v6);
  }
}

- (void)miniProductPageViewDidInvalidateIntrinsicContentSize:(id)size
{
  sizeCopy = size;
  v5 = LALogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000172C0(self, v5);
  }

  [sizeCopy setNeedsLayout];
}

- (void)miniProductPageViewDidPresentDescription:(id)description
{
  v4 = LALogHandleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001733C(self, v4);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained moreButtonPressed];
}

@end