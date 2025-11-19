@interface TSSIMUnlockDetailViewController
- (BOOL)_appearingOrAppeared;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (TSSIMUnlockDetailViewController)initWithSubscriptionContext:(id)a3 subscriptionAction:(id)a4 lockedSIMName:(id)a5 delegate:(id)a6;
- (TSSIMUnlockDetailViewController)initWithSubscriptionContext:(id)a3 subscriptionAction:(id)a4 suppressCancellation:(BOOL)a5 delegate:(id)a6;
- (TSSIMUnlockDetailViewControllerDelegate)delegate;
- (void)_cancelButtonPressed:(id)a3;
- (void)changeHeaderText;
- (void)entryView:(id)a3 didEnterText:(id)a4;
- (void)simPinEntryErrorDidOccur:(id)a3 status:(id)a4;
- (void)simPukEntryErrorDidOccur:(id)a3 status:(id)a4;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
- (void)unlockDetailViewController:(id)a3 didCompleteWithResult:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation TSSIMUnlockDetailViewController

- (TSSIMUnlockDetailViewController)initWithSubscriptionContext:(id)a3 subscriptionAction:(id)a4 lockedSIMName:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_10000C1BC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10000E858();
  }

  v15 = [(TSSIMUnlockDetailViewController *)self initWithSubscriptionContext:v10 subscriptionAction:v11 suppressCancellation:1 delegate:v13];
  if (v15)
  {
    v16 = [v12 copy];
    lockedSIMName = v15->_lockedSIMName;
    v15->_lockedSIMName = v16;
  }

  return v15;
}

- (TSSIMUnlockDetailViewController)initWithSubscriptionContext:(id)a3 subscriptionAction:(id)a4 suppressCancellation:(BOOL)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
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
    objc_storeStrong(&v15->_subscriptionContext, a3);
    objc_storeStrong(&v16->_subscriptionAction, a4);
    objc_storeWeak(&v16->_delegate, v13);
    v16->_suppressCancellation = a5;
    v17 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
    telephonyClient = v16->_telephonyClient;
    v16->_telephonyClient = v17;

    v19 = [(TSSIMUnlockDetailViewController *)v16 view];
    [v19 setAutoresizesSubviews:0];

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
  v5 = [(TSSIMUnlockDetailViewController *)self view];
  [v5 bounds];
  Width = CGRectGetWidth(v32);

  v7 = [(TSSIMUnlockDetailViewController *)self view];
  [v7 bounds];
  Height = CGRectGetHeight(v33);

  v9 = Height / 3.0;
  v10 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  v11 = [v10 entryField];
  [v11 setFrame:{Width * 0.5 + -50.0, v9, 100.0, 30.0}];

  v12 = [(TSSIMUnlockDetailViewController *)self view];
  v13 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  v14 = [v13 entryField];
  [v12 addSubview:v14];

  v15 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  v16 = [v15 okButton];
  [v16 setFrame:{Width * 0.5 + 50.0, v9, 100.0, 30.0}];

  v17 = [(TSSIMUnlockDetailViewController *)self view];
  v18 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  v19 = [v18 okButton];
  [v17 addSubview:v19];

  v20 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  v21 = [v20 detailLabel];
  [v21 setFrame:{0.0, v9 + -30.0 + -20.0, Width, 60.0}];

  v22 = [(TSSIMUnlockDetailViewController *)self view];
  v23 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  v24 = [v23 detailLabel];
  [v22 addSubview:v24];

  v25 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  [v25 setDelegate:self];

  if (!self->_suppressCancellation)
  {
    v26 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonPressed:"];
    v27 = [(TSSIMUnlockDetailViewController *)self navigationItem];
    [v27 setLeftBarButtonItem:v26];

    v28 = +[UIColor systemBackgroundColor];
    v29 = [(TSSIMUnlockDetailViewController *)self navigationController];
    v30 = [v29 view];
    [v30 setBackgroundColor:v28];
  }

  [(TSSIMUnlockDetailViewController *)self setNavigationBarColor];
  [(TSSIMUnlockDetailViewController *)self setEdgesForExtendedLayout:0];
}

- (void)changeHeaderText
{
  v3 = [(TSSIMUnlockDetailViewController *)self headerView];
  v4 = [(TSSIMUnlockDetailView *)self->_detailView titleLabel];
  [v3 setTitle:v4];

  v6 = [(TSSIMUnlockDetailViewController *)self headerView];
  v5 = [(TSSIMUnlockDetailView *)self->_detailView descriptionLabel];
  [v6 setDetailText:v5];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(TSSIMUnlockDetailViewController *)self _appearingOrAppeared];
  if (v3)
  {
    v4 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
    v5 = [v4 becomeFirstResponder];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)canBecomeFirstResponder
{
  v3 = [(TSSIMUnlockDetailViewController *)self _appearingOrAppeared];
  if (v3)
  {
    v4 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
    v5 = [v4 canBecomeFirstResponder];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (BOOL)canResignFirstResponder
{
  v2 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  v3 = [v2 canResignFirstResponder];

  return v3;
}

- (BOOL)isFirstResponder
{
  v2 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (void)entryView:(id)a3 didEnterText:(id)a4
{
  v5 = a4;
  v6 = sub_10000C1BC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EA68(self);
  }

  v7 = [(TSSubscriptionAction *)self->_subscriptionAction actionType];
  if (v7 == 3)
  {
    v9 = self->_subscriptionAction;
    v10 = sub_10000C1BC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10000EB10(v9);
    }

    v11 = [(TSSubscriptionAction *)v9 actionSubtype];
    if (v11 == 3)
    {
      v16 = self->_subscriptionAction;
      v17 = [(TSSubscriptionAction *)v16 pin1];
      v18 = [v17 isEqualToString:v5];

      if (v18)
      {
        [(TSSIMUnlockDetailView *)self->_detailView setUnlocking:1];
        [(TSSIMUnlockDetailViewController *)self changeHeaderText];
        telephonyClient = self->_telephonyClient;
        subscriptionContext = self->_subscriptionContext;
        WeakRetained = [(TSSubscriptionAction *)v16 puk];
        v22 = [(TSSubscriptionAction *)v16 pin1];
        [(CoreTelephonyClient *)telephonyClient unlockPUK:subscriptionContext puk:WeakRetained newPin:v22 error:0];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained unlockDetailViewController:self didCompleteWithResult:4];
      }

      goto LABEL_19;
    }

    if (v11 == 2)
    {
      v12 = [(TSSubscriptionAction *)v9 copyByApplyingPIN1:v5];
    }

    else
    {
      if (v11 != 1)
      {
        goto LABEL_19;
      }

      v12 = [(TSSubscriptionAction *)v9 copyByApplyingPUK:v5];
    }

    v13 = v12;
    v14 = [[TSSIMUnlockDetailViewController alloc] initWithSubscriptionContext:self->_subscriptionContext subscriptionAction:v12 lockedSIMName:self->_lockedSIMName delegate:self];

    if (v14)
    {
      v15 = [(TSSIMUnlockDetailViewController *)self navigationController];
      [v15 pushViewController:v14 animated:1];

      v9 = v14;
      goto LABEL_19;
    }
  }

  else if (v7 == 2)
  {
    [(TSSIMUnlockDetailView *)self->_detailView setUnlocking:1];
    [(TSSIMUnlockDetailViewController *)self changeHeaderText];
    v8 = self->_telephonyClient;
    v9 = [(TSSIMUnlockDetailViewController *)self subscriptionContext];
    [(CoreTelephonyClient *)v8 unlockPIN:v9 pin:v5 error:0];
LABEL_19:
  }
}

- (void)unlockDetailViewController:(id)a3 didCompleteWithResult:(int64_t)a4
{
  v6 = sub_10000C1BC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "[TSSIMUnlockDetailViewController unlockDetailViewController:didCompleteWithResult:]";
    v19 = 2048;
    v20 = a4;
    v21 = 2080;
    v22 = "[TSSIMUnlockDetailViewController unlockDetailViewController:didCompleteWithResult:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s, result %ld @%s", &v17, 0x20u);
  }

  if (a4 > 3)
  {
    if (a4 == 4)
    {
      v11 = [(TSSIMUnlockDetailViewController *)self navigationController];
      v12 = [v11 popToViewController:self animated:1];

      v13 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
      [v13 setPinMismatch:1];

      v8 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
      [v8 resetEnteredTextWithShakeAnimation:0];
      goto LABEL_17;
    }

    if (a4 != 5)
    {
      if (a4 != 6)
      {
        return;
      }

      goto LABEL_11;
    }

    if ([(TSSubscriptionAction *)self->_subscriptionAction actionSubtype]!= 1)
    {
      v7 = [(TSSIMUnlockDetailViewController *)self delegate];
      v8 = v7;
      v9 = self;
      v10 = 5;
      goto LABEL_12;
    }

    v14 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
    [v14 setPinMismatch:0];

    v15 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
    [v15 resetEnteredTextWithShakeAnimation:1];

LABEL_16:
    v8 = [(TSSIMUnlockDetailViewController *)self navigationController];
    v16 = [v8 popToViewController:self animated:1];
    goto LABEL_17;
  }

  if ((a4 - 1) < 2)
  {
    goto LABEL_16;
  }

  if (!a4 || a4 == 3)
  {
LABEL_11:
    v7 = [(TSSIMUnlockDetailViewController *)self delegate];
    v8 = v7;
    v9 = self;
    v10 = a4;
LABEL_12:
    [v7 unlockDetailViewController:v9 didCompleteWithResult:v10];
LABEL_17:
  }
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = sub_10000C1BC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [v6 slotID];
      v9 = CTSubscriptionSlotAsString();
      v10 = sub_1000071C0([(TSSubscriptionAction *)self->_subscriptionAction actionType]);
      v17 = 136316162;
      v18 = "[TSSIMUnlockDetailViewController simStatusDidChange:status:]";
      v19 = 2080;
      v20 = v9;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v10;
      v25 = 2080;
      v26 = "[TSSIMUnlockDetailViewController simStatusDidChange:status:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: context %s, status %@, current action %@ @%s", &v17, 0x34u);
    }

    if ([(TSSubscriptionAction *)self->_subscriptionAction actionType]== 2 || [(TSSubscriptionAction *)self->_subscriptionAction actionType]== 3)
    {
      v11 = [v6 uuid];
      v12 = [(CTXPCServiceSubscriptionContext *)self->_subscriptionContext uuid];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        if ([v7 isEqualToString:kCTSIMSupportSIMStatusPUKLocked])
        {
          v14 = 3;
LABEL_17:
          v16 = [(TSSIMUnlockDetailViewController *)self delegate];
          [v16 unlockDetailViewController:self didCompleteWithResult:v14];

          goto LABEL_18;
        }

        if ([v7 isEqualToString:kCTSIMSupportSIMStatusPermanentlyLocked])
        {
          v14 = 6;
          goto LABEL_17;
        }

        if ([v7 isEqualToString:kCTSIMSupportSIMStatusReady])
        {
          v14 = 0;
          goto LABEL_17;
        }

        if ((sub_10000144C(v7) & 1) == 0)
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

- (void)simPinEntryErrorDidOccur:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000C1BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EBB8();
  }

  if ([(TSSubscriptionAction *)self->_subscriptionAction actionType]== 2)
  {
    v9 = [v6 uuid];
    v10 = [(CTXPCServiceSubscriptionContext *)self->_subscriptionContext uuid];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      if ([v7 isEqualToString:kCTSIMSupportSIMStatusPUKLocked])
      {
        v12 = [(TSSIMUnlockDetailView *)self->_detailView entryView];
        [v12 resignFirstResponder];

        v13 = [(TSSIMUnlockDetailViewController *)self delegate];
        [v13 unlockDetailViewController:self didCompleteWithResult:3];
      }

      else if ([v7 isEqualToString:kCTSIMSupportSIMStatusPINLocked])
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

- (void)simPukEntryErrorDidOccur:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000C1BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EC48();
  }

  if ([(TSSubscriptionAction *)self->_subscriptionAction actionSubtype]== 3)
  {
    v9 = [v6 uuid];
    v10 = [(CTXPCServiceSubscriptionContext *)self->_subscriptionContext uuid];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      objc_initWeak(&location, self);
      v12 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002C08;
      block[3] = &unk_10001C6C0;
      objc_copyWeak(&v15, &location);
      v14 = v7;
      dispatch_after(v12, &_dispatch_main_q, block);

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_cancelButtonPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained unlockDetailViewController:self didCompleteWithResult:2];
}

- (BOOL)_appearingOrAppeared
{
  v3 = [(TSSIMUnlockDetailViewController *)self _appearState];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(TSSIMUnlockDetailViewController *)self _appearState]== 2;
  }

  return v3;
}

- (TSSIMUnlockDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end