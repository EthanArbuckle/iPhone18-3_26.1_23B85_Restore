@interface AUUIAlert
- (AUUIAlert)initWithViewController:(id)a3 actionSheet:(BOOL)a4;
- (BOOL)alertViewShouldEnableFirstOtherButton:(id)a3;
- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)applicationDidEnterBackgroundNotification:(id)a3;
- (void)dealloc;
- (void)dismissWithCancelActionAnimated:(BOOL)a3;
- (void)dismissWithOKActionAnimated:(BOOL)a3;
- (void)enableAlternateAction:(BOOL)a3;
- (void)enableCancelAction:(BOOL)a3;
- (void)enableDestructiveAction:(BOOL)a3;
- (void)enableOKAction:(BOOL)a3;
- (void)prepareToShow;
- (void)show;
@end

@implementation AUUIAlert

- (AUUIAlert)initWithViewController:(id)a3 actionSheet:(BOOL)a4
{
  v4 = a4;
  v16.receiver = self;
  v16.super_class = AUUIAlert;
  v7 = [(AUUIAlert *)&v16 init];
  if (v7)
  {
    v8 = objc_msgSend_alertControllerWithTitle_message_preferredStyle_(MEMORY[0x277D75110], v6, 0, 0, !v4);
    objc_msgSend_setAlert_(v7, v9, v8);
    objc_msgSend_setViewController_(v7, v10, a3);
    v7->okButtonIndex = -1;
    v7->cancelButtonIndex = -1;
    v7->alternateButtonIndex = -1;
    v7->destructiveButtonIndex = -1;
    v13 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v11, v12);
    objc_msgSend_addObserver_selector_name_object_(v13, v14, v7, sel_applicationDidEnterBackgroundNotification_, *MEMORY[0x277D76660], 0);
  }

  return v7;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, *MEMORY[0x277D76660], 0);

  self->title = 0;
  self->message = 0;

  self->okButtonTitle = 0;
  self->cancelButtonTitle = 0;

  self->alternateButtonTitle = 0;
  self->destructiveButtonTitle = 0;
  objc_msgSend_setOkAction_(self, v6, 0);
  objc_msgSend_setCancelAction_(self, v7, 0);
  objc_msgSend_setDestructiveAction_(self, v8, 0);
  objc_msgSend_setAlternateAction_(self, v9, 0);
  objc_msgSend_dismissWithNoActionAnimated_(self, v10, 0);

  self->alert = 0;
  v11.receiver = self;
  v11.super_class = AUUIAlert;
  [(AUUIAlert *)&v11 dealloc];
}

- (void)prepareToShow
{
  self->prepared = 1;
  alert = self->alert;
  objc_msgSend_setTitle_(alert, a2, self->title);
  objc_msgSend_setMessage_(alert, v4, self->message);
  if (objc_msgSend_length(self->destructiveButtonTitle, v5, v6))
  {
    destructiveButtonTitle = self->destructiveButtonTitle;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = sub_23EB78230;
    v58[3] = &unk_278C68E68;
    v58[4] = self;
    v10 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v7, destructiveButtonTitle, 2, v58);
    objc_msgSend_setDestructiveAction_(self, v11, v10);
  }

  if (objc_msgSend_length(self->cancelButtonTitle, v7, v8))
  {
    cancelButtonTitle = self->cancelButtonTitle;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = sub_23EB7828C;
    v57[3] = &unk_278C68E68;
    v57[4] = self;
    v15 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v12, cancelButtonTitle, 1, v57);
    objc_msgSend_setCancelAction_(self, v16, v15);
  }

  if (objc_msgSend_length(self->alternateButtonTitle, v12, v13))
  {
    alternateButtonTitle = self->alternateButtonTitle;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_23EB782E8;
    v56[3] = &unk_278C68E68;
    v56[4] = self;
    v20 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v17, alternateButtonTitle, 0, v56);
    objc_msgSend_setAlternateAction_(self, v21, v20);
  }

  if (objc_msgSend_length(self->okButtonTitle, v17, v18))
  {
    okButtonTitle = self->okButtonTitle;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_23EB78344;
    v55[3] = &unk_278C68E68;
    v55[4] = self;
    v25 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v22, okButtonTitle, 0, v55);
    objc_msgSend_setOkAction_(self, v26, v25);
  }

  if (objc_msgSend_destructiveAction(self, v22, v23))
  {
    v29 = objc_msgSend_destructiveAction(self, v27, v28);
    objc_msgSend_addAction_(alert, v30, v29);
    if (objc_msgSend_alternateAction(self, v31, v32))
    {
      v35 = objc_msgSend_alternateAction(self, v33, v34);
      objc_msgSend_addAction_(alert, v36, v35);
    }

    if (objc_msgSend_okAction(self, v33, v34))
    {
      ok = objc_msgSend_okAction(self, v37, v38);
      objc_msgSend_addAction_(alert, v40, ok);
    }

    if (objc_msgSend_cancelAction(self, v37, v38))
    {
      v43 = objc_msgSend_cancelAction(self, v41, v42);
LABEL_22:
      objc_msgSend_addAction_(alert, v44, v43);
    }
  }

  else
  {
    if (objc_msgSend_cancelAction(self, v27, v28))
    {
      v47 = objc_msgSend_cancelAction(self, v45, v46);
      objc_msgSend_addAction_(alert, v48, v47);
    }

    if (objc_msgSend_alternateAction(self, v45, v46))
    {
      v51 = objc_msgSend_alternateAction(self, v49, v50);
      objc_msgSend_addAction_(alert, v52, v51);
    }

    if (objc_msgSend_okAction(self, v49, v50))
    {
      v43 = objc_msgSend_okAction(self, v53, v54);
      goto LABEL_22;
    }
  }
}

- (void)show
{
  if (!self->prepared)
  {
    objc_msgSend_prepareToShow(self, a2, v2);
  }

  alert = self->alert;
  v5 = objc_msgSend_viewController(self, a2, v2);

  MEMORY[0x2821F9670](v5, sel_presentViewController_animated_completion_, alert);
}

- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  cancelButtonIndex = self->cancelButtonIndex;
  if (cancelButtonIndex != -1 && cancelButtonIndex == a4)
  {
    if (objc_opt_respondsToSelector())
    {
      delegate = self->delegate;

      MEMORY[0x2821F9670](delegate, sel_auUIAlertCancelAction_, self);
    }
  }

  else
  {
    okButtonIndex = self->okButtonIndex;
    if (okButtonIndex != -1 && okButtonIndex == a4)
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = self->delegate;

        MEMORY[0x2821F9670](v15, sel_auUIAlertOKAction_, self);
      }
    }

    else
    {
      alternateButtonIndex = self->alternateButtonIndex;
      if (alternateButtonIndex != -1 && alternateButtonIndex == a4)
      {
        if (objc_opt_respondsToSelector())
        {
          v16 = self->delegate;
          context = self->context;

          MEMORY[0x2821F9670](v16, sel_auUIAlertAlternateAction_, context);
        }
      }

      else
      {
        destructiveButtonIndex = self->destructiveButtonIndex;
        v12 = destructiveButtonIndex != -1 && destructiveButtonIndex == a4;
        if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v13 = self->delegate;

          MEMORY[0x2821F9670](v13, sel_auUIAlertDestructiveAction_, self);
        }
      }
    }
  }
}

- (BOOL)alertViewShouldEnableFirstOtherButton:(id)a3
{
  v17 = a3;
  v4 = 1;
  v16 = 1;
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_methodSignatureForSelector_(self->delegate, v5, sel_alertViewShouldEnableFirstOtherButton_);
    v8 = objc_msgSend_invocationWithMethodSignature_(MEMORY[0x277CBEAE8], v7, v6);
    objc_msgSend_setTarget_(v8, v9, self->delegate);
    objc_msgSend_setSelector_(v8, v10, sel_alertViewShouldEnableFirstOtherButton_);
    objc_msgSend_setArgument_atIndex_(v8, v11, &v17, 2);
    objc_msgSend_invoke(v8, v12, v13);
    objc_msgSend_getReturnValue_(v8, v14, &v16);
    v4 = v16;
  }

  return v4 & 1;
}

- (void)dismissWithOKActionAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_alert(self, a2, a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23EB78670;
  v7[3] = &unk_278C66C50;
  v7[4] = self;
  objc_msgSend_dismissViewControllerAnimated_completion_(v5, v6, v3, v7);
}

- (void)dismissWithCancelActionAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_alert(self, a2, a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23EB78750;
  v7[3] = &unk_278C66C50;
  v7[4] = self;
  objc_msgSend_dismissViewControllerAnimated_completion_(v5, v6, v3, v7);
}

- (void)enableOKAction:(BOOL)a3
{
  v3 = a3;
  ok = objc_msgSend_okAction(self, a2, a3);

  objc_msgSend_setEnabled_(ok, v5, v3);
}

- (void)enableCancelAction:(BOOL)a3
{
  v3 = a3;
  v4 = objc_msgSend_cancelAction(self, a2, a3);

  objc_msgSend_setEnabled_(v4, v5, v3);
}

- (void)enableDestructiveAction:(BOOL)a3
{
  v3 = a3;
  v4 = objc_msgSend_destructiveAction(self, a2, a3);

  objc_msgSend_setEnabled_(v4, v5, v3);
}

- (void)enableAlternateAction:(BOOL)a3
{
  v3 = a3;
  v4 = objc_msgSend_alternateAction(self, a2, a3);

  objc_msgSend_setEnabled_(v4, v5, v3);
}

- (void)applicationDidEnterBackgroundNotification:(id)a3
{
  objc_msgSend_setDelegate_(self, a2, 0);

  objc_msgSend_dismissWithNoActionAnimated_(self, v4, 0);
}

@end