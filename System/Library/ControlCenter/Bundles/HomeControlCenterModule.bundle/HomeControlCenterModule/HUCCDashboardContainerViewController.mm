@interface HUCCDashboardContainerViewController
- (CGRect)expandedContentFrame;
- (CGSize)preferredExpandedSize;
- (HUCCDashboardContainerViewController)initWithDelegate:(id)delegate;
- (HUCCDashboardContainerViewControllerDelegate)delegate;
- (id)serviceViewControllerProxy;
- (void)_addNewRemoteViewController:(id)controller;
- (void)_configureAndAddRemoteViewController:(id)controller forHome:(id)home;
- (void)_requestRemoteViewControllerForHome:(id)home;
- (void)_stopAndRemoveRemoteViewController;
- (void)loadView;
- (void)remoteDashboard:(id)dashboard viewServiceDidTerminateWithError:(id)error;
- (void)requestDismissal;
- (void)requestLockAuthenticationForRemoteDashboard:(id)dashboard;
@end

@implementation HUCCDashboardContainerViewController

- (HUCCDashboardContainerViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = HUCCDashboardContainerViewController;
  v5 = [(HUCCDashboardContainerViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x29EDC7DA0]);
  objc_msgSend_expandedContentFrame(self, v4, v5);
  v8 = objc_msgSend_initWithFrame_(v3, v6, v7);
  objc_msgSend_setView_(self, v9, v8);

  v12 = objc_msgSend_sharedDispatcher(MEMORY[0x29EDC5390], v10, v11);
  v16 = objc_msgSend_home(v12, v13, v14);

  objc_msgSend__requestRemoteViewControllerForHome_(self, v15, v16);
}

- (id)serviceViewControllerProxy
{
  v3 = objc_msgSend_remoteDashboardViewController(self, a2, v2);
  v6 = objc_msgSend_serviceViewControllerProxy(v3, v4, v5);

  return v6;
}

- (CGRect)expandedContentFrame
{
  v4 = objc_msgSend_currentDevice(MEMORY[0x29EDC7A58], a2, v2);
  v7 = objc_msgSend_userInterfaceIdiom(v4, v5, v6);

  objc_msgSend_preferredExpandedSize(self, v8, v9);
  v13 = v12;
  if (v7 == 1)
  {
    CCUIExpandedModuleEdgeInsets();
    v13 = v13 + v14 * 2.0;
    objc_msgSend_preferredExpandedSize(self, v15, v16);
    v18 = v17;
    CCUIExpandedModuleEdgeInsets();
    v20 = v18 + v19 * -4.0;
  }

  else
  {
    objc_msgSend_preferredExpandedSize(self, v10, v11);
    v20 = v21;
  }

  v22 = 0.0;
  v23 = 0.0;
  v24 = v13;
  result.size.height = v20;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGSize)preferredExpandedSize
{
  v3 = objc_msgSend_currentDevice(MEMORY[0x29EDC7A58], a2, v2);
  v6 = objc_msgSend_userInterfaceIdiom(v3, v4, v5);

  if (v6 == 1)
  {
    CCUIDefaultExpandedContentModuleWidth();
    Width = v7;
    CCUIMaximumExpandedContentModuleHeight();
  }

  else
  {
    CCUIScreenBounds();
    Width = CGRectGetWidth(v13);
    CCUIScreenBounds();
    Height = CGRectGetHeight(v14);
  }

  v10 = Height;
  v11 = Width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)_requestRemoteViewControllerForHome:(id)home
{
  homeCopy = home;
  objc_msgSend__beginDelayingPresentation_cancellationHandler_(self, v5, &unk_2A23EA6C8, 5.0);
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C99DD34;
  v10[3] = &unk_29F33AB80;
  objc_copyWeak(&v12, &location);
  v6 = homeCopy;
  v11 = v6;
  v8 = objc_msgSend_requestViewControllerWithConnectionHandler_(HUCCRemoteDashboardViewController, v7, v10);
  objc_msgSend_setCancelServiceInvocation_(self, v9, v8);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_configureAndAddRemoteViewController:(id)controller forHome:(id)home
{
  controllerCopy = controller;
  homeCopy = home;
  objc_opt_class();
  v8 = controllerCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    objc_msgSend__addNewRemoteViewController_(self, v11, v10);
    v14 = objc_msgSend_serviceViewControllerProxy(self, v12, v13);
    v17 = objc_msgSend_uniqueIdentifier(homeCopy, v15, v16);
    v20 = objc_msgSend_UUIDString(v17, v18, v19);
    objc_msgSend_configureHomeControlServiceWithHomeUUID_(v14, v21, v20);

    objc_initWeak(&location, self);
    v24 = objc_msgSend_serviceViewControllerProxy(self, v22, v23);
    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 3221225472;
    v26[2] = sub_29C99DF84;
    v26[3] = &unk_29F33ABA8;
    objc_copyWeak(&v27, &location);
    objc_msgSend_getTransitionSubviewFramesWithCompletion_(v24, v25, v26);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    NSLog(&cfstr_UnexpectedRemo.isa, v8);
  }
}

- (void)_stopAndRemoveRemoteViewController
{
  v4 = objc_msgSend_remoteDashboardViewController(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_remoteDashboardViewController(self, v5, v6);
    objc_msgSend_beginAppearanceTransition_animated_(v7, v8, 0, 0);

    v11 = objc_msgSend_remoteDashboardViewController(self, v9, v10);
    objc_msgSend_willMoveToParentViewController_(v11, v12, 0);

    v15 = objc_msgSend_remoteDashboardViewController(self, v13, v14);
    v18 = objc_msgSend_view(v15, v16, v17);
    objc_msgSend_removeFromSuperview(v18, v19, v20);

    v23 = objc_msgSend_remoteDashboardViewController(self, v21, v22);
    v26 = objc_msgSend_disconnect(v23, v24, v25);

    v29 = objc_msgSend_remoteDashboardViewController(self, v27, v28);
    objc_msgSend_removeFromParentViewController(v29, v30, v31);

    v34 = objc_msgSend_remoteDashboardViewController(self, v32, v33);
    objc_msgSend_endAppearanceTransition(v34, v35, v36);

    objc_msgSend_setRemoteDashboardViewController_(self, v37, 0);
  }
}

- (void)_addNewRemoteViewController:(id)controller
{
  controllerCopy = controller;
  objc_msgSend__stopAndRemoveRemoteViewController(self, v5, v6);
  objc_msgSend_setRemoteDashboardViewController_(self, v7, controllerCopy);

  v10 = objc_msgSend_remoteDashboardViewController(self, v8, v9);
  objc_msgSend_setDelegate_(v10, v11, self);

  v14 = objc_msgSend_remoteDashboardViewController(self, v12, v13);
  objc_msgSend_beginAppearanceTransition_animated_(v14, v15, 1, 0);

  v18 = objc_msgSend_remoteDashboardViewController(self, v16, v17);
  objc_msgSend_addChildViewController_(self, v19, v18);

  v22 = objc_msgSend_view(self, v20, v21);
  objc_msgSend_bounds(v22, v23, v24);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v35 = objc_msgSend_remoteDashboardViewController(self, v33, v34);
  v38 = objc_msgSend_view(v35, v36, v37);
  objc_msgSend_setFrame_(v38, v39, v40, v26, v28, v30, v32);

  v43 = objc_msgSend_remoteDashboardViewController(self, v41, v42);
  v46 = objc_msgSend_view(v43, v44, v45);
  objc_msgSend_setAutoresizingMask_(v46, v47, 18);

  v50 = objc_msgSend_remoteDashboardViewController(self, v48, v49);
  objc_msgSend_didMoveToParentViewController_(v50, v51, self);

  v56 = objc_msgSend_remoteDashboardViewController(self, v52, v53);
  objc_msgSend_endAppearanceTransition(v56, v54, v55);
}

- (void)remoteDashboard:(id)dashboard viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_29C9ABFE0(errorCopy, v6);
  }

  objc_msgSend_setRemoteDashboardViewController_(self, v7, 0);
}

- (void)requestDismissal
{
  v5 = objc_msgSend_delegate(self, a2, v2);
  objc_msgSend_requestDismissal(v5, v3, v4);
}

- (void)requestLockAuthenticationForRemoteDashboard:(id)dashboard
{
  v4 = objc_msgSend_delegate(self, a2, dashboard);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = sub_29C99E3BC;
  v6[3] = &unk_29F33ABD0;
  v6[4] = self;
  objc_msgSend_requestAuthenticationIfLockedWithCompletionHandler_(v4, v5, v6);
}

- (HUCCDashboardContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end