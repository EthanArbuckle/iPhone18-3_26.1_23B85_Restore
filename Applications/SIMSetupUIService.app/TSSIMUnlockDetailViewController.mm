@interface TSSIMUnlockDetailViewController
- (BOOL)_appearingOrAppeared;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (TSSIMUnlockDetailViewController)initWithSubscriptionContext:(id)context subscriptionAction:(id)action lockedSIMName:(id)name delegate:(id)delegate;
- (TSSIMUnlockDetailViewController)initWithSubscriptionContext:(id)context subscriptionAction:(id)action suppressCancellation:(BOOL)cancellation delegate:(id)delegate;
- (TSSIMUnlockDetailViewControllerDelegate)delegate;
- (void)_cancelButtonPressed:(id)pressed;
- (void)changeHeaderText;
- (void)entryView:(id)view didEnterText:(id)text;
- (void)simPinEntryErrorDidOccur:(id)occur status:(id)status;
- (void)simPukEntryErrorDidOccur:(id)occur status:(id)status;
- (void)simStatusDidChange:(id)change status:(id)status;
- (void)unlockDetailViewController:(id)controller didCompleteWithResult:(int64_t)result;
- (void)viewDidLoad;
@end

@implementation TSSIMUnlockDetailViewController

- (TSSIMUnlockDetailViewController)initWithSubscriptionContext:(id)context subscriptionAction:(id)action lockedSIMName:(id)name delegate:(id)delegate
{
  contextCopy = context;
  actionCopy = action;
  nameCopy = name;
  delegateCopy = delegate;
  v14 = sub_10000C1BC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10000E858();
  }

  v15 = [(TSSIMUnlockDetailViewController *)self initWithSubscriptionContext:contextCopy subscriptionAction:actionCopy suppressCancellation:1 delegate:delegateCopy];
  if (v15)
  {
    v16 = [nameCopy copy];
    lockedSIMName = v15->_lockedSIMName;
    v15->_lockedSIMName = v16;
  }

  return v15;
}

- (TSSIMUnlockDetailViewController)initWithSubscriptionContext:(id)context subscriptionAction:(id)action suppressCancellation:(BOOL)cancellation delegate:(id)delegate
{
  contextCopy = context;
  actionCopy = action;
  delegateCopy = delegate;
  v14 = sub_10000C1BC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10000E90C();
  }

  v21.receiver = self;
  v21.super_class = TSSIMUnlockDetailViewController;
  v15 = [(TSSIMUnlockDetailViewController *)&v21 initWithTitle:&stru_10001CA70 detailText:&stru_10001CA70 symbolName:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_subscriptionContext, context);
    objc_storeStrong(&v16->_subscriptionAction, action);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v16->_suppressCancellation = cancellation;
    v17 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
    telephonyClient = v16->_telephonyClient;
    v16->_telephonyClient = v17;

    view = [(TSSIMUnlockDetailViewController *)v16 view];
    [view setAutoresizesSubviews:0];

    [(CoreTelephonyClient *)v16->_telephonyClient setDelegate:v16];
  }

  return v16;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = TSSIMUnlockDetailViewController;
  [(TSSIMUnlockDetailViewController *)&v31 viewDidLoad];
  v3 = [[TSSIMUnlockDetailView alloc] initWithActionType:[(TSSubscriptionAction *)self->_subscriptionAction actionType] actionSubtype:[(TSSubscriptionAction *)self->_subscriptionAction actionSubtype] lockedSIMName:self->_lockedSIMName];
  detailView = self->_detailView;
  self->_detailView = v3;

  [(TSSIMUnlockDetailViewController *)self changeHeaderText];
  view = [(TSSIMUnlockDetailViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v32);

  view2 = [(TSSIMUnlockDetailViewController *)self view];
  [view2 bounds];
  Height = CGRectGetHeight(v33);

  v9 = Height / 3.0;
  entryView = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  entryField = [entryView entryField];
  [entryField setFrame:{Width * 0.5 + -50.0, v9, 100.0, 30.0}];

  view3 = [(TSSIMUnlockDetailViewController *)self view];
  entryView2 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  entryField2 = [entryView2 entryField];
  [view3 addSubview:entryField2];

  entryView3 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  okButton = [entryView3 okButton];
  [okButton setFrame:{Width * 0.5 + 50.0, v9, 100.0, 30.0}];

  view4 = [(TSSIMUnlockDetailViewController *)self view];
  entryView4 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  okButton2 = [entryView4 okButton];
  [view4 addSubview:okButton2];

  entryView5 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  detailLabel = [entryView5 detailLabel];
  [detailLabel setFrame:{0.0, v9 + -30.0 + -20.0, Width, 60.0}];

  view5 = [(TSSIMUnlockDetailViewController *)self view];
  entryView6 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  detailLabel2 = [entryView6 detailLabel];
  [view5 addSubview:detailLabel2];

  entryView7 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  [entryView7 setDelegate:self];

  if (!self->_suppressCancellation)
  {
    v26 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonPressed:"];
    navigationItem = [(TSSIMUnlockDetailViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v26];

    v28 = +[UIColor systemBackgroundColor];
    navigationController = [(TSSIMUnlockDetailViewController *)self navigationController];
    view6 = [navigationController view];
    [view6 setBackgroundColor:v28];
  }

  [(TSSIMUnlockDetailViewController *)self setNavigationBarColor];
  [(TSSIMUnlockDetailViewController *)self setEdgesForExtendedLayout:0];
}

- (void)changeHeaderText
{
  headerView = [(TSSIMUnlockDetailViewController *)self headerView];
  titleLabel = [(TSSIMUnlockDetailView *)self->_detailView titleLabel];
  [headerView setTitle:titleLabel];

  headerView2 = [(TSSIMUnlockDetailViewController *)self headerView];
  descriptionLabel = [(TSSIMUnlockDetailView *)self->_detailView descriptionLabel];
  [headerView2 setDetailText:descriptionLabel];
}

- (BOOL)becomeFirstResponder
{
  _appearingOrAppeared = [(TSSIMUnlockDetailViewController *)self _appearingOrAppeared];
  if (_appearingOrAppeared)
  {
    entryView = [(TSSIMUnlockDetailView *)self->_detailView entryView];
    becomeFirstResponder = [entryView becomeFirstResponder];

    LOBYTE(_appearingOrAppeared) = becomeFirstResponder;
  }

  return _appearingOrAppeared;
}

- (BOOL)canBecomeFirstResponder
{
  _appearingOrAppeared = [(TSSIMUnlockDetailViewController *)self _appearingOrAppeared];
  if (_appearingOrAppeared)
  {
    entryView = [(TSSIMUnlockDetailView *)self->_detailView entryView];
    canBecomeFirstResponder = [entryView canBecomeFirstResponder];

    LOBYTE(_appearingOrAppeared) = canBecomeFirstResponder;
  }

  return _appearingOrAppeared;
}

- (BOOL)resignFirstResponder
{
  entryView = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  resignFirstResponder = [entryView resignFirstResponder];

  return resignFirstResponder;
}

- (BOOL)canResignFirstResponder
{
  entryView = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  canResignFirstResponder = [entryView canResignFirstResponder];

  return canResignFirstResponder;
}

- (BOOL)isFirstResponder
{
  entryView = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  isFirstResponder = [entryView isFirstResponder];

  return isFirstResponder;
}

- (void)entryView:(id)view didEnterText:(id)text
{
  textCopy = text;
  v6 = sub_10000C1BC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EA68(self);
  }

  actionType = [(TSSubscriptionAction *)self->_subscriptionAction actionType];
  if (actionType == 3)
  {
    subscriptionContext = self->_subscriptionAction;
    v10 = sub_10000C1BC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10000EB10(subscriptionContext);
    }

    actionSubtype = [(TSSubscriptionAction *)subscriptionContext actionSubtype];
    if (actionSubtype == 3)
    {
      v16 = self->_subscriptionAction;
      pin1 = [(TSSubscriptionAction *)v16 pin1];
      v18 = [pin1 isEqualToString:textCopy];

      if (v18)
      {
        [(TSSIMUnlockDetailView *)self->_detailView setUnlocking:1];
        [(TSSIMUnlockDetailViewController *)self changeHeaderText];
        telephonyClient = self->_telephonyClient;
        subscriptionContext = self->_subscriptionContext;
        WeakRetained = [(TSSubscriptionAction *)v16 puk];
        pin12 = [(TSSubscriptionAction *)v16 pin1];
        [(CoreTelephonyClient *)telephonyClient unlockPUK:subscriptionContext puk:WeakRetained newPin:pin12 error:0];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained unlockDetailViewController:self didCompleteWithResult:4];
      }

      goto LABEL_19;
    }

    if (actionSubtype == 2)
    {
      v12 = [(TSSubscriptionAction *)subscriptionContext copyByApplyingPIN1:textCopy];
    }

    else
    {
      if (actionSubtype != 1)
      {
        goto LABEL_19;
      }

      v12 = [(TSSubscriptionAction *)subscriptionContext copyByApplyingPUK:textCopy];
    }

    v13 = v12;
    v14 = [[TSSIMUnlockDetailViewController alloc] initWithSubscriptionContext:self->_subscriptionContext subscriptionAction:v12 lockedSIMName:self->_lockedSIMName delegate:self];

    if (v14)
    {
      navigationController = [(TSSIMUnlockDetailViewController *)self navigationController];
      [navigationController pushViewController:v14 animated:1];

      subscriptionContext = v14;
      goto LABEL_19;
    }
  }

  else if (actionType == 2)
  {
    [(TSSIMUnlockDetailView *)self->_detailView setUnlocking:1];
    [(TSSIMUnlockDetailViewController *)self changeHeaderText];
    v8 = self->_telephonyClient;
    subscriptionContext = [(TSSIMUnlockDetailViewController *)self subscriptionContext];
    [(CoreTelephonyClient *)v8 unlockPIN:subscriptionContext pin:textCopy error:0];
LABEL_19:
  }
}

- (void)unlockDetailViewController:(id)controller didCompleteWithResult:(int64_t)result
{
  v6 = sub_10000C1BC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "[TSSIMUnlockDetailViewController unlockDetailViewController:didCompleteWithResult:]";
    v19 = 2048;
    resultCopy = result;
    v21 = 2080;
    v22 = "[TSSIMUnlockDetailViewController unlockDetailViewController:didCompleteWithResult:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s, result %ld @%s", &v17, 0x20u);
  }

  if (result > 3)
  {
    if (result == 4)
    {
      navigationController = [(TSSIMUnlockDetailViewController *)self navigationController];
      v12 = [navigationController popToViewController:self animated:1];

      entryView = [(TSSIMUnlockDetailView *)self->_detailView entryView];
      [entryView setPinMismatch:1];

      entryView2 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
      [entryView2 resetEnteredTextWithShakeAnimation:0];
      goto LABEL_17;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return;
      }

      goto LABEL_11;
    }

    if ([(TSSubscriptionAction *)self->_subscriptionAction actionSubtype]!= 1)
    {
      delegate = [(TSSIMUnlockDetailViewController *)self delegate];
      entryView2 = delegate;
      selfCopy2 = self;
      resultCopy2 = 5;
      goto LABEL_12;
    }

    entryView3 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
    [entryView3 setPinMismatch:0];

    entryView4 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
    [entryView4 resetEnteredTextWithShakeAnimation:1];

LABEL_16:
    entryView2 = [(TSSIMUnlockDetailViewController *)self navigationController];
    v16 = [entryView2 popToViewController:self animated:1];
    goto LABEL_17;
  }

  if ((result - 1) < 2)
  {
    goto LABEL_16;
  }

  if (!result || result == 3)
  {
LABEL_11:
    delegate = [(TSSIMUnlockDetailViewController *)self delegate];
    entryView2 = delegate;
    selfCopy2 = self;
    resultCopy2 = result;
LABEL_12:
    [delegate unlockDetailViewController:selfCopy2 didCompleteWithResult:resultCopy2];
LABEL_17:
  }
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  changeCopy = change;
  statusCopy = status;
  if (statusCopy)
  {
    v8 = sub_10000C1BC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [changeCopy slotID];
      v9 = CTSubscriptionSlotAsString();
      v10 = sub_1000071C0([(TSSubscriptionAction *)self->_subscriptionAction actionType]);
      v17 = 136316162;
      v18 = "[TSSIMUnlockDetailViewController simStatusDidChange:status:]";
      v19 = 2080;
      v20 = v9;
      v21 = 2112;
      v22 = statusCopy;
      v23 = 2112;
      v24 = v10;
      v25 = 2080;
      v26 = "[TSSIMUnlockDetailViewController simStatusDidChange:status:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: context %s, status %@, current action %@ @%s", &v17, 0x34u);
    }

    if ([(TSSubscriptionAction *)self->_subscriptionAction actionType]== 2 || [(TSSubscriptionAction *)self->_subscriptionAction actionType]== 3)
    {
      uuid = [changeCopy uuid];
      uuid2 = [(CTXPCServiceSubscriptionContext *)self->_subscriptionContext uuid];
      v13 = [uuid isEqual:uuid2];

      if (v13)
      {
        if ([statusCopy isEqualToString:kCTSIMSupportSIMStatusPUKLocked])
        {
          v14 = 3;
LABEL_17:
          delegate = [(TSSIMUnlockDetailViewController *)self delegate];
          [delegate unlockDetailViewController:self didCompleteWithResult:v14];

          goto LABEL_18;
        }

        if ([statusCopy isEqualToString:kCTSIMSupportSIMStatusPermanentlyLocked])
        {
          v14 = 6;
          goto LABEL_17;
        }

        if ([statusCopy isEqualToString:kCTSIMSupportSIMStatusReady])
        {
          v14 = 0;
          goto LABEL_17;
        }

        if ((sub_10000144C(statusCopy) & 1) == 0)
        {
          v15 = sub_10000C1BC();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 136315138;
            v18 = "[TSSIMUnlockDetailViewController simStatusDidChange:status:]";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "sim not locked anymore, action complete @%s", &v17, 0xCu);
          }

          v14 = 1;
          goto LABEL_17;
        }
      }
    }
  }

LABEL_18:
}

- (void)simPinEntryErrorDidOccur:(id)occur status:(id)status
{
  occurCopy = occur;
  statusCopy = status;
  v8 = sub_10000C1BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EBB8();
  }

  if ([(TSSubscriptionAction *)self->_subscriptionAction actionType]== 2)
  {
    uuid = [occurCopy uuid];
    uuid2 = [(CTXPCServiceSubscriptionContext *)self->_subscriptionContext uuid];
    v11 = [uuid isEqual:uuid2];

    if (v11)
    {
      if ([statusCopy isEqualToString:kCTSIMSupportSIMStatusPUKLocked])
      {
        entryView = [(TSSIMUnlockDetailView *)self->_detailView entryView];
        [entryView resignFirstResponder];

        delegate = [(TSSIMUnlockDetailViewController *)self delegate];
        [delegate unlockDetailViewController:self didCompleteWithResult:3];
      }

      else if ([statusCopy isEqualToString:kCTSIMSupportSIMStatusPINLocked])
      {
        objc_initWeak(&location, self);
        v14 = dispatch_time(0, 500000000);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000028B0;
        v15[3] = &unk_10001C698;
        objc_copyWeak(&v16, &location);
        dispatch_after(v14, &_dispatch_main_q, v15);
        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)simPukEntryErrorDidOccur:(id)occur status:(id)status
{
  occurCopy = occur;
  statusCopy = status;
  v8 = sub_10000C1BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EC48();
  }

  if ([(TSSubscriptionAction *)self->_subscriptionAction actionSubtype]== 3)
  {
    uuid = [occurCopy uuid];
    uuid2 = [(CTXPCServiceSubscriptionContext *)self->_subscriptionContext uuid];
    v11 = [uuid isEqual:uuid2];

    if (v11)
    {
      objc_initWeak(&location, self);
      v12 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002C08;
      block[3] = &unk_10001C6C0;
      objc_copyWeak(&v15, &location);
      v14 = statusCopy;
      dispatch_after(v12, &_dispatch_main_q, block);

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_cancelButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained unlockDetailViewController:self didCompleteWithResult:2];
}

- (BOOL)_appearingOrAppeared
{
  _appearState = [(TSSIMUnlockDetailViewController *)self _appearState];
  if (_appearState != 1)
  {
    LOBYTE(_appearState) = [(TSSIMUnlockDetailViewController *)self _appearState]== 2;
  }

  return _appearState;
}

- (TSSIMUnlockDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end