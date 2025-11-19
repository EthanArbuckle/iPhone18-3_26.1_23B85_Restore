@interface AppStoreComponentsWrapper
- (AppStoreComponentsWrapper)initWithLogKey:(id)a3;
- (id)lockupWithItemID:(id)a3 versionID:(id)a4 distributorID:(id)a5 isForAppStore:(BOOL)a6 delegate:(id)a7;
- (id)presentingViewControllerForMiniProductPageView:(id)a3;
- (void)miniProductPageView:(id)a3 didFailRequestWithError:(id)a4;
- (void)miniProductPageViewDidBeginRequest:(id)a3;
- (void)miniProductPageViewDidFinishRequest:(id)a3;
- (void)miniProductPageViewDidInvalidateIntrinsicContentSize:(id)a3;
- (void)miniProductPageViewDidPresentDescription:(id)a3;
@end

@implementation AppStoreComponentsWrapper

- (AppStoreComponentsWrapper)initWithLogKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AppStoreComponentsWrapper;
  v6 = [(AppStoreComponentsWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logKey, a3);
  }

  return v7;
}

- (id)lockupWithItemID:(id)a3 versionID:(id)a4 distributorID:(id)a5 isForAppStore:(BOOL)a6 delegate:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  objc_storeWeak(&self->_delegate, v15);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v16 = qword_10008AA20;
  v44 = qword_10008AA20;
  if (!qword_10008AA20)
  {
    v36 = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_1000030E0;
    v39 = &unk_10007E248;
    v40 = &v41;
    sub_1000030E0(&v36);
    v16 = v42[3];
  }

  v17 = v16;
  _Block_object_dispose(&v41, 8);
  v18 = [[v16 alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v18 setDelegate:self];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v19 = qword_10008AA30;
  v44 = qword_10008AA30;
  if (!qword_10008AA30)
  {
    v36 = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_1000032AC;
    v39 = &unk_10007E248;
    v40 = &v41;
    sub_1000032AC(&v36);
    v19 = v42[3];
  }

  v20 = v19;
  _Block_object_dispose(&v41, 8);
  v21 = [[v19 alloc] initWithStringValue:v12];
  v22 = sub_100002B0C();
  v23 = v22;
  if (v8)
  {
    v24 = [v22 alloc];
    v25 = sub_100002BEC();
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v26 = qword_10008AA48;
    v44 = qword_10008AA48;
    if (!qword_10008AA48)
    {
      v36 = _NSConcreteStackBlock;
      v37 = 3221225472;
      v38 = sub_1000033AC;
      v39 = &unk_10007E248;
      v40 = &v41;
      v27 = sub_100003138();
      v28 = dlsym(v27, "ASCLockupContextAppStoreInstall");
      *(v40[1] + 24) = v28;
      qword_10008AA48 = *(v40[1] + 24);
      v26 = v42[3];
    }

    _Block_object_dispose(&v41, 8);
    if (v26)
    {
      v29 = [v24 initWithID:v21 kind:v25 context:*v26];
      goto LABEL_14;
    }

    sub_1000619BC();
LABEL_18:
    v35 = sub_1000619BC();
    _Block_object_dispose(&v41, 8);
    _Unwind_Resume(v35);
  }

  v25 = sub_100002BEC();
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v30 = qword_10008AA50;
  v44 = qword_10008AA50;
  if (!qword_10008AA50)
  {
    v36 = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_1000033FC;
    v39 = &unk_10007E248;
    v40 = &v41;
    v31 = sub_100003138();
    v32 = dlsym(v31, "ASCLockupContextAppDistributionInstall");
    *(v40[1] + 24) = v32;
    qword_10008AA50 = *(v40[1] + 24);
    v30 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v30)
  {
    goto LABEL_18;
  }

  v29 = [(objc_class *)v23 _requestWithID:v21 kind:v25 context:*v30 appVersionId:v13 distributorId:v14];
LABEL_14:
  v33 = v29;

  [v18 setRequest:v33];

  return v18;
}

- (id)presentingViewControllerForMiniProductPageView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained miniProductPagePresentingViewController];

  v6 = sub_1000025E8(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v9 = 138543618;
    v10 = logKey;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mini product page asked for it's presenting controller, returning %@", &v9, 0x16u);
  }

  return v5;
}

- (void)miniProductPageViewDidBeginRequest:(id)a3
{
  v4 = sub_1000025E8(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v6 = 138543362;
    v7 = logKey;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mini product page began request", &v6, 0xCu);
  }
}

- (void)miniProductPageViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = sub_1000025E8(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logKey = self->_logKey;
    v8 = 138543362;
    v9 = logKey;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mini product page finished request", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained miniProductPageRequestDidFinish];

  [v4 setNeedsLayout];
}

- (void)miniProductPageView:(id)a3 didFailRequestWithError:(id)a4
{
  v5 = a4;
  v6 = sub_1000025E8(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000619E0(self, v5, v6);
  }
}

- (void)miniProductPageViewDidInvalidateIntrinsicContentSize:(id)a3
{
  v4 = a3;
  v5 = sub_1000025E8(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100061A6C(self, v5);
  }

  [v4 setNeedsLayout];
}

- (void)miniProductPageViewDidPresentDescription:(id)a3
{
  v4 = sub_1000025E8(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100061AE8(self, v4);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained moreButtonPressed];
}

@end