@interface PRXCardContentViewController
- (id)_addButtonWithLocalizedTitle:(id)a3 style:(int64_t)a4 target:(id)a5 futureSelector:(SEL)a6;
- (id)_addButtonWithTitleKey:(id)a3 style:(int64_t)a4 target:(id)a5 futureSelector:(SEL)a6;
- (id)addOptionalDismissButtonWithLocalizedTitleKey:(id)a3;
- (id)addProminentDismissButtonWithTitleKey:(id)a3;
- (id)futureReturningDirectiveFromTarget:(id)a3 selector:(SEL)a4;
- (void)addDismissButtonWithCoordinator:(id)a3 dismissAfterExecuting:(id)a4;
- (void)addIdentifyButtonWithCoordinator:(id)a3;
- (void)handleButtonDirectiveFuture:(id)a3;
- (void)handleButtonDirectiveFuture:(id)a3 target:(id)a4;
- (void)performPRXLayoutPass;
@end

@implementation PRXCardContentViewController

- (id)addProminentDismissButtonWithTitleKey:(id)a3
{
  v5 = a3;
  if (([(PRXCardContentViewController *)self conformsToProtocol:&OBJC_PROTOCOL___HSProxCardConfigurable]& 1) == 0)
  {
    sub_1000791A4(a2, self);
  }

  if ([(PRXCardContentViewController *)self conformsToProtocol:&OBJC_PROTOCOL___HSProxCardConfigurable])
  {
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PRXCardContentViewController *)self addProminentButtonWithTitleKey:v5 target:v6 futureSelector:"dismissFuture"];

  return v7;
}

- (id)addOptionalDismissButtonWithLocalizedTitleKey:(id)a3
{
  v5 = a3;
  if (([(PRXCardContentViewController *)self conformsToProtocol:&OBJC_PROTOCOL___HSProxCardConfigurable]& 1) == 0)
  {
    sub_100079220(a2, self);
  }

  if ([(PRXCardContentViewController *)self conformsToProtocol:&OBJC_PROTOCOL___HSProxCardConfigurable])
  {
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PRXCardContentViewController *)self addOptionalButtonWithTitleKey:v5 target:v6 futureSelector:"dismissFuture"];

  return v7;
}

- (void)addIdentifyButtonWithCoordinator:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = HULocalizedString();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002DF38;
  v9[3] = &unk_1000C6B68;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = [PRXAction actionWithTitle:v5 style:1 handler:v9];
  v8 = [(PRXCardContentViewController *)self addAction:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)addDismissButtonWithCoordinator:(id)a3 dismissAfterExecuting:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PRXCardContentViewController *)self setDismissalType:[(PRXCardContentViewController *)self dismissalType]| 1];
  if (![v6 requiresDismissalConfirmation])
  {
    objc_initWeak(&location, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002EAB8;
    v20[3] = &unk_1000C6C08;
    objc_copyWeak(&v22, &location);
    v21 = v7;
    v13 = [PRXAction actionWithTitle:&stru_1000C89F8 style:0 handler:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    goto LABEL_19;
  }

  v8 = [v6 topAccessoryTuple];
  v9 = [v8 accessory];

  v10 = [v6 isInSetupContext];
  v11 = v10;
  if (!v9)
  {
    v12 = 0;
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  if (([v9 isBridged] & 1) == 0)
  {
    v14 = [v9 hf_bridgedAccessories];
    v15 = [v14 count];

    if (v15)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    if (v11)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v12 = 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_13:
  v16 = HULocalizedString();
LABEL_15:
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10002E408;
  v24[3] = &unk_1000C6BE0;
  v30 = v12;
  if ([v6 launchReason] == 1)
  {
    v17 = 29;
  }

  else
  {
    v17 = 28;
  }

  v25 = v16;
  v26 = self;
  v27 = v9;
  v28 = v7;
  v29 = v17;
  v18 = v9;
  v19 = v16;
  v13 = [PRXAction actionWithTitle:&stru_1000C89F8 style:0 handler:v24];

LABEL_19:
  [(PRXCardContentViewController *)self setDismissButtonAction:v13];
}

- (id)_addButtonWithTitleKey:(id)a3 style:(int64_t)a4 target:(id)a5 futureSelector:(SEL)a6
{
  v10 = a3;
  v11 = a5;
  v12 = sub_100063B50(v10);
  v13 = HULocalizedStringWithDefaultValue();

  if (!v13)
  {
    v13 = v10;
  }

  v14 = [(PRXCardContentViewController *)self _addButtonWithLocalizedTitle:v13 style:a4 target:v11 futureSelector:a6];

  return v14;
}

- (id)_addButtonWithLocalizedTitle:(id)a3 style:(int64_t)a4 target:(id)a5 futureSelector:(SEL)a6
{
  v10 = a3;
  v11 = a5;
  objc_initWeak(&location, self);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10002ED64;
  v19 = &unk_1000C6C30;
  objc_copyWeak(v21, &location);
  v12 = v11;
  v20 = v12;
  v21[1] = a6;
  v13 = [PRXAction actionWithTitle:v10 style:a4 handler:&v16];
  v14 = [(PRXCardContentViewController *)self addAction:v13, v16, v17, v18, v19];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);

  return v13;
}

- (void)handleButtonDirectiveFuture:(id)a3
{
  v6 = a3;
  if (([(PRXCardContentViewController *)self conformsToProtocol:&OBJC_PROTOCOL___HSProxCardConfigurable]& 1) == 0)
  {
    sub_1000793DC(a2, self);
  }

  if ([(PRXCardContentViewController *)self conformsToProtocol:&OBJC_PROTOCOL___HSProxCardConfigurable])
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  [(PRXCardContentViewController *)self handleButtonDirectiveFuture:v6 target:v5];
}

- (void)handleButtonDirectiveFuture:(id)a3 target:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PRXCardContentViewController *)self performSelector:"coordinator"];
  [(PRXCardContentViewController *)self showActivityIndicatorWithStatus:&stru_1000C89F8];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002F014;
  v15[3] = &unk_1000C6C58;
  v9 = v8;
  v16 = v9;
  v10 = v7;
  v17 = v10;
  v18 = self;
  v11 = [v6 flatMap:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002F0E0;
  v13[3] = &unk_1000C5AB0;
  objc_copyWeak(&v14, &location);
  v12 = [v11 addCompletionBlock:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)futureReturningDirectiveFromTarget:(id)a3 selector:(SEL)a4
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 methodForSelector:a4];
    objc_opt_class();
    v7 = v6(v5, a4);
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [v9 flatMap:&stru_1000C6C78];
    }

    else
    {
      v14 = NSStringFromSelector(a4);
      NSLog(@"Did not receive a future.  target (%@) action %@", v5, v14);

      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000795B8(v5, a4);
      }

      v10 = [NAFuture futureWithResult:&off_1000CD6A8];
    }

    v13 = v10;
  }

  else
  {
    v11 = NSStringFromSelector(a4);
    NSLog(@"target (%@) does not respond to selector (%@)", v5, v11);

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100079514(v5, a4);
    }

    v13 = [NAFuture futureWithResult:&off_1000CD6A8];
  }

  return v13;
}

- (void)performPRXLayoutPass
{
  v3 = [(PRXCardContentViewController *)self performSelector:"contentVC"];
  if (!v3)
  {
    NSLog(@"Performing a PRX layout pass only makes sense in the context of a nested child VC that needs to request relayout.  Check why is self.contentVC nil");
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100079694(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = [v3 view];
  [v12 layoutIfNeeded];

  v13 = [(PRXCardContentViewController *)self contentView];
  [v13 setNeedsUpdateConstraints];

  v14 = [(PRXCardContentViewController *)self view];
  [v14 bounds];
  [(PRXCardContentViewController *)self updatePreferredContentSizeForCardWidth:v15];
}

@end