@interface PRXCardContentViewController
- (id)_addButtonWithLocalizedTitle:(id)title style:(int64_t)style target:(id)target futureSelector:(SEL)selector;
- (id)_addButtonWithTitleKey:(id)key style:(int64_t)style target:(id)target futureSelector:(SEL)selector;
- (id)addOptionalDismissButtonWithLocalizedTitleKey:(id)key;
- (id)addProminentDismissButtonWithTitleKey:(id)key;
- (id)futureReturningDirectiveFromTarget:(id)target selector:(SEL)selector;
- (void)addDismissButtonWithCoordinator:(id)coordinator dismissAfterExecuting:(id)executing;
- (void)addIdentifyButtonWithCoordinator:(id)coordinator;
- (void)handleButtonDirectiveFuture:(id)future;
- (void)handleButtonDirectiveFuture:(id)future target:(id)target;
- (void)performPRXLayoutPass;
@end

@implementation PRXCardContentViewController

- (id)addProminentDismissButtonWithTitleKey:(id)key
{
  keyCopy = key;
  if (([(PRXCardContentViewController *)self conformsToProtocol:&OBJC_PROTOCOL___HSProxCardConfigurable]& 1) == 0)
  {
    sub_1000791A4(a2, self);
  }

  if ([(PRXCardContentViewController *)self conformsToProtocol:&OBJC_PROTOCOL___HSProxCardConfigurable])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v7 = [(PRXCardContentViewController *)self addProminentButtonWithTitleKey:keyCopy target:selfCopy futureSelector:"dismissFuture"];

  return v7;
}

- (id)addOptionalDismissButtonWithLocalizedTitleKey:(id)key
{
  keyCopy = key;
  if (([(PRXCardContentViewController *)self conformsToProtocol:&OBJC_PROTOCOL___HSProxCardConfigurable]& 1) == 0)
  {
    sub_100079220(a2, self);
  }

  if ([(PRXCardContentViewController *)self conformsToProtocol:&OBJC_PROTOCOL___HSProxCardConfigurable])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v7 = [(PRXCardContentViewController *)self addOptionalButtonWithTitleKey:keyCopy target:selfCopy futureSelector:"dismissFuture"];

  return v7;
}

- (void)addIdentifyButtonWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  objc_initWeak(&location, self);
  v5 = HULocalizedString();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002DF38;
  v9[3] = &unk_1000C6B68;
  objc_copyWeak(&v11, &location);
  v6 = coordinatorCopy;
  v10 = v6;
  v7 = [PRXAction actionWithTitle:v5 style:1 handler:v9];
  v8 = [(PRXCardContentViewController *)self addAction:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)addDismissButtonWithCoordinator:(id)coordinator dismissAfterExecuting:(id)executing
{
  coordinatorCopy = coordinator;
  executingCopy = executing;
  [(PRXCardContentViewController *)self setDismissalType:[(PRXCardContentViewController *)self dismissalType]| 1];
  if (![coordinatorCopy requiresDismissalConfirmation])
  {
    objc_initWeak(&location, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002EAB8;
    v20[3] = &unk_1000C6C08;
    objc_copyWeak(&v22, &location);
    v21 = executingCopy;
    v13 = [PRXAction actionWithTitle:&stru_1000C89F8 style:0 handler:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    goto LABEL_19;
  }

  topAccessoryTuple = [coordinatorCopy topAccessoryTuple];
  accessory = [topAccessoryTuple accessory];

  isInSetupContext = [coordinatorCopy isInSetupContext];
  v11 = isInSetupContext;
  if (!accessory)
  {
    v12 = 0;
    if (isInSetupContext)
    {
      goto LABEL_13;
    }

LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  if (([accessory isBridged] & 1) == 0)
  {
    hf_bridgedAccessories = [accessory hf_bridgedAccessories];
    v15 = [hf_bridgedAccessories count];

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
  if ([coordinatorCopy launchReason] == 1)
  {
    v17 = 29;
  }

  else
  {
    v17 = 28;
  }

  v25 = v16;
  selfCopy = self;
  v27 = accessory;
  v28 = executingCopy;
  v29 = v17;
  v18 = accessory;
  v19 = v16;
  v13 = [PRXAction actionWithTitle:&stru_1000C89F8 style:0 handler:v24];

LABEL_19:
  [(PRXCardContentViewController *)self setDismissButtonAction:v13];
}

- (id)_addButtonWithTitleKey:(id)key style:(int64_t)style target:(id)target futureSelector:(SEL)selector
{
  keyCopy = key;
  targetCopy = target;
  v12 = sub_100063B50(keyCopy);
  v13 = HULocalizedStringWithDefaultValue();

  if (!v13)
  {
    v13 = keyCopy;
  }

  v14 = [(PRXCardContentViewController *)self _addButtonWithLocalizedTitle:v13 style:style target:targetCopy futureSelector:selector];

  return v14;
}

- (id)_addButtonWithLocalizedTitle:(id)title style:(int64_t)style target:(id)target futureSelector:(SEL)selector
{
  titleCopy = title;
  targetCopy = target;
  objc_initWeak(&location, self);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10002ED64;
  v19 = &unk_1000C6C30;
  objc_copyWeak(v21, &location);
  v12 = targetCopy;
  v20 = v12;
  v21[1] = selector;
  v13 = [PRXAction actionWithTitle:titleCopy style:style handler:&v16];
  v14 = [(PRXCardContentViewController *)self addAction:v13, v16, v17, v18, v19];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);

  return v13;
}

- (void)handleButtonDirectiveFuture:(id)future
{
  futureCopy = future;
  if (([(PRXCardContentViewController *)self conformsToProtocol:&OBJC_PROTOCOL___HSProxCardConfigurable]& 1) == 0)
  {
    sub_1000793DC(a2, self);
  }

  if ([(PRXCardContentViewController *)self conformsToProtocol:&OBJC_PROTOCOL___HSProxCardConfigurable])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  [(PRXCardContentViewController *)self handleButtonDirectiveFuture:futureCopy target:selfCopy];
}

- (void)handleButtonDirectiveFuture:(id)future target:(id)target
{
  futureCopy = future;
  targetCopy = target;
  v8 = [(PRXCardContentViewController *)self performSelector:"coordinator"];
  [(PRXCardContentViewController *)self showActivityIndicatorWithStatus:&stru_1000C89F8];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002F014;
  v15[3] = &unk_1000C6C58;
  v9 = v8;
  v16 = v9;
  v10 = targetCopy;
  v17 = v10;
  selfCopy = self;
  v11 = [futureCopy flatMap:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002F0E0;
  v13[3] = &unk_1000C5AB0;
  objc_copyWeak(&v14, &location);
  v12 = [v11 addCompletionBlock:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)futureReturningDirectiveFromTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  if (objc_opt_respondsToSelector())
  {
    v6 = [targetCopy methodForSelector:selector];
    objc_opt_class();
    v7 = v6(targetCopy, selector);
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
      v14 = NSStringFromSelector(selector);
      NSLog(@"Did not receive a future.  target (%@) action %@", targetCopy, v14);

      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000795B8(targetCopy, selector);
      }

      v10 = [NAFuture futureWithResult:&off_1000CD6A8];
    }

    v13 = v10;
  }

  else
  {
    v11 = NSStringFromSelector(selector);
    NSLog(@"target (%@) does not respond to selector (%@)", targetCopy, v11);

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100079514(targetCopy, selector);
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

  view = [v3 view];
  [view layoutIfNeeded];

  contentView = [(PRXCardContentViewController *)self contentView];
  [contentView setNeedsUpdateConstraints];

  view2 = [(PRXCardContentViewController *)self view];
  [view2 bounds];
  [(PRXCardContentViewController *)self updatePreferredContentSizeForCardWidth:v15];
}

@end