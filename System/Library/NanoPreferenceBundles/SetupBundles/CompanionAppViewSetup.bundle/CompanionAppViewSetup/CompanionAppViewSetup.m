void sub_132C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = +[CSLPRFAppViewImageCache getImageForLauncherMode:](CSLPRFAppViewImageCache, "getImageForLauncherMode:", [v4 choice]);
  if (v3)
  {
    [v4 setScreenImage:v3];
  }

  if ([v4 choice] == &dword_0 + 2)
  {
    [v4 setImageProvider:*(a1 + 32)];
  }
}

void sub_1944(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateViewChoice];
}

void sub_1B2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) bridgeController];
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, ">>>> bridge controller %@ retrieved app view image %@", &v6, 0x16u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  if (v3)
  {
    [CSLPRFAppViewImageCache storeImage:v3 forLauncherMode:*(a1 + 48)];
  }
}

void sub_22D8(void *a1)
{
  v1 = [a1 bridgeController];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, ">>>> bridge controller %@ cannot retrieve app view image", &v2, 0xCu);
}

self;
  v8.super_class = CompanionAppViewSetup;
  v2 = [(CompanionAppViewSetup *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(CompanionAppViewSetupViewController);
    appViewChoiceViewController = v2->_appViewChoiceViewController;
    v2->_appViewChoiceViewController = v3;

    [(CompanionAppViewSetupViewController *)v2->_appViewChoiceViewController setMiniFlowDelegate:v2];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v2->_appViewChoiceViewController;
      v6 = [(CompanionAppViewSetupViewController *)v5 miniFlowDelegate];
      *buf = 138412802;
      v10 = v2;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, ">>>> %@ created %@ and set miniFlowDelegate %@", buf, 0x20u);
    }
  }

  return v2;
}

- (id)viewController
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    appViewChoiceViewController = self->_appViewChoiceViewController;
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = appViewChoiceViewController;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, ">>>> %@ viewController %@", &v6, 0x16u);
  }

  v4 = self->_appViewChoiceViewController;

  return v4;
}

- (void)miniFlowStepComplete:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, ">>>> %@ miniFlowStepComplete %@", &v7, 0x16u);
  }

  appViewChoiceViewController = self->_appViewChoiceViewController;
  self->_appViewChoiceViewController = 0;

  v6 = [(CompanionAppViewSetup *)self delegate];
  [v6 buddyControllerDone:self];
}

- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = self;
    v10 = 2112;
    v11 = a3;
    v12 = 2112;
    v13 = a4;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, ">>>> %@ miniFlowStepComplete %@ nextControllerClass %@", &v8, 0x20u);
  }

  v7 = objc_alloc_init(a4);
  [v7 setMiniFlowDelegate:self];
  [(CompanionAppViewSetup *)self pushController:v7 animated:1];
}

@end