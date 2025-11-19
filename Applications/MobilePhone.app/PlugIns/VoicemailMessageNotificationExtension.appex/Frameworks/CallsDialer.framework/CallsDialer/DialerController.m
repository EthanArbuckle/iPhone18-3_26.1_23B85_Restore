@interface DialerController
+ ($1FF454C5B48E436092D281DABF654916)badge;
+ (id)callHistoryController;
+ (id)mostRecentCallHandleValue;
- (BOOL)_disableAutomaticKeyboardUI;
- (BOOL)deviceHasMultipleSIM;
- (BOOL)digitsEntered;
- (BOOL)enableDualSimMenu;
- (BOOL)requestAudioServicesActivate;
- (BOOL)shouldAnimateCallButton;
- (BOOL)shouldSnapshot;
- (BOOL)shouldSuppressShowingLastDialedNumber;
- (CNContactStore)contactStore;
- (DialerControllerInterfaceOrientationProvder)interfaceOrientationProvider;
- (NSString)lastDialedNumber;
- (NSString)phoneNumberPrefixHint;
- (TUCallProviderManager)callProviderManager;
- (TUContactsDataProvider)contactsDataProvider;
- (id)contactResultForPhoneNumber:(id)a3;
- (id)defaultCallProvider;
- (id)restrictedSubtitleForHandle:(id)a3;
- (id)tabBarIconName;
- (unint64_t)supportedInterfaceOrientations;
- (void)_animateCallButton;
- (void)_callButtonPressed:(id)a3;
- (void)_callButtonPressedActionWithCallProvider:(id)a3;
- (void)_callStatusChanged:(id)a3;
- (void)_clearDisplayIfNecessary;
- (void)_deleteButtonClicked:(id)a3;
- (void)_deleteRepeat;
- (void)_dialVoicemail;
- (void)_dialWithRequest:(id)a3;
- (void)_fadeSubviewsOf:(id)a3 excludingViews:(id)a4 toValue:(double)a5;
- (void)_handleSIMInsertionOrRemoval;
- (void)_phonePad:(id)a3 appendString:(id)a4 suppressClearingDialedNumber:(BOOL)a5;
- (void)_resetButtonAnimation;
- (void)_startDeleteTimer;
- (void)_stopDeleteTimer;
- (void)_stopLookupTimer;
- (void)_updateCallButtonEnabledState:(id)a3;
- (void)_updateCallButtonEnabledState:(id)a3 updateNameNow:(BOOL)a4;
- (void)_updateLCDNameLabelWithAMatchingName:(BOOL)a3;
- (void)_updateLCDNameLabelWithOriginallyPastedString:(id)a3;
- (void)applicationDidResume;
- (void)dealloc;
- (void)dialerView:(id)a3 stringWasPasted:(id)a4;
- (void)dialerViewTextDidChange:(id)a3;
- (void)handleApplicationDidEnterBackgroundNotification:(id)a3;
- (void)handleApplicationWillEnterForegroundNotification:(id)a3;
- (void)handleKeyCommand:(id)a3;
- (void)loadView;
- (void)performCharacterAddAction:(id)a3;
- (void)performDeleteAction;
- (void)phonePad:(id)a3 appendString:(id)a4;
- (void)phonePad:(id)a3 appendString:(id)a4 playDTMFTone:(BOOL)a5;
- (void)phonePad:(id)a3 dialerCharacterButtonWasHeld:(int64_t)a4;
- (void)phonePad:(id)a3 replaceLastDigitWithString:(id)a4;
- (void)phonePadDeleteLastDigit:(id)a3;
- (void)phonePadDidEndSounds:(id)a3;
- (void)providersChangedForProviderManager:(id)a3;
- (void)reloadButtons;
- (void)restoreLastDialedNumber;
- (void)searchAndUpdateResultsFor:(id)a3 shouldRefreshResult:(BOOL)a4 showPastedString:(id)a5;
- (void)searchFor:(id)a3 shouldRefreshResult:(BOOL)a4 completionHandler:(id)a5;
- (void)setAudioServicesActivated:(BOOL)a3;
- (void)setBackgroundStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)setShouldHideDeleteButtonWhenEmpty:(BOOL)a3;
- (void)showOrHideDeleteButton;
- (void)showRestrictedAlertWithMessage:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)updateDialerViewDualSimMenu;
- (void)updateIDSStatus;
@end

@implementation DialerController

+ ($1FF454C5B48E436092D281DABF654916)badge
{
  v2 = 1;
  v3 = 0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)applicationDidResume
{
  v5.receiver = self;
  v5.super_class = DialerController;
  [(DialerController *)&v5 applicationDidResume];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "DialerAnimation: Calling _resetButtonAnimation in ", v4, 2u);
  }

  [(DialerController *)self _resetButtonAnimation];
}

- (void)_resetButtonAnimation
{
  if ([(DialerController *)self shouldAnimateCallButton])
  {
    v3 = [(DialerController *)self dialerView];
    v4 = [v3 callButton];

    v5 = +[UIColor systemGreenColor];
    [v4 setBackgroundColor:v5];

    v6 = [v4 layer];
    [v6 removeAllAnimations];

    v7 = [v4 imageView];
    v8 = [v7 layer];
    [v8 removeAllAnimations];

    [v4 setUserInteractionEnabled:1];
    v18[0] = v4;
    v9 = [(DialerController *)self dialerView];
    v10 = [v9 deleteButton];
    v18[1] = v10;
    v11 = [NSArray arrayWithObjects:v18 count:2];
    v12 = [v11 mutableCopy];

    if ([(DialerController *)self appType]== &dword_0 + 1 && [(DialerController *)self enableSmartDialer])
    {
      v13 = [(DialerController *)self dialerView];
      v14 = [v13 addContactButton];
      [v12 addObject:v14];
    }

    v15 = [v4 superview];
    [(DialerController *)self _fadeSubviewsOf:v15 excludingViews:v12 toValue:1.0];

    [(DialerController *)self setBackgroundStyle:0 animated:0];
    [(DialerController *)self setWantsCallButtonAnimation:0];
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "DialerAnimation: called", v17, 2u);
    }
  }
}

- (BOOL)shouldAnimateCallButton
{
  if ([(DialerController *)self wantsCallButtonAnimation]&& [(DialerController *)self isViewLoaded]&& ![(DialerController *)self dialerType])
  {
    v5 = [(DialerController *)self view];
    v6 = [v5 window];
    NSClassFromString(&cfstr_Uihostedwindow.isa);
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)_clearDisplayIfNecessary
{
  if ((*(self + 32) & 1) != 0 || (+[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 currentCallCount], v3, v4))
  {
    v5 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [v5 setText:&stru_50D80 needsFormat:0];

    [(DialerController *)self _updateName];
  }
}

- (TUCallProviderManager)callProviderManager
{
  callProviderManager = self->_callProviderManager;
  if (!callProviderManager)
  {
    v4 = objc_alloc_init(TUCallProviderManager);
    v5 = self->_callProviderManager;
    self->_callProviderManager = v4;

    callProviderManager = self->_callProviderManager;
  }

  return callProviderManager;
}

- (id)defaultCallProvider
{
  v2 = [(DialerController *)self callProviderManager];
  v3 = [v2 telephonyProvider];

  return v3;
}

- (void)reloadButtons
{
  v2 = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [v2 reloadButtonImages];
}

- (void)loadView
{
  v3 = [UIView alloc];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];

  if (![(DialerController *)self dialerType]|| [(DialerController *)self dialerType]== 1)
  {
    [v5 setAutoresizingMask:18];
  }

  dialerView = self->_dialerView;
  if (!dialerView)
  {
    v7 = [[PHHandsetDialerView alloc] initWithFrame:[(DialerController *)self appType] appType:[(DialerController *)self enableSmartDialer] enableSmartDialer:[(DialerController *)self enableSmartDialerExpandedSearch] enableSmartDialerExpandedSearch:[(DialerController *)self enableDualSimMenu] enableDualSimMenu:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v8 = self->_dialerView;
    self->_dialerView = &v7->super;

    v9 = +[UIColor clearColor];
    [v5 setBackgroundColor:v9];

    [v5 setOpaque:0];
    dialerView = self->_dialerView;
  }

  [(PHAbstractDialerView *)dialerView setDelegate:self];
  v10 = +[UIDevice currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 1 && [(DialerController *)self appType]== &dword_0 + 1)
  {
    [(PHAbstractDialerView *)self->_dialerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(PHAbstractDialerView *)self->_dialerView backgroundColor];
    [v5 setBackgroundColor:v12];

    [v5 addSubview:self->_dialerView];
    v32 = [(PHAbstractDialerView *)self->_dialerView topAnchor];
    v31 = [v5 topAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:0.0];
    v33[0] = v30;
    v29 = [(PHAbstractDialerView *)self->_dialerView leadingAnchor];
    v28 = [v5 leadingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28 constant:0.0];
    v33[1] = v27;
    v13 = [(PHAbstractDialerView *)self->_dialerView trailingAnchor];
    v14 = [v5 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:-0.0];
    v33[2] = v15;
    v16 = [(PHAbstractDialerView *)self->_dialerView bottomAnchor];
    v17 = [v5 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:-0.0];
    v33[3] = v18;
    v19 = [NSArray arrayWithObjects:v33 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }

  else
  {
    [(PHAbstractDialerView *)self->_dialerView setAutoresizingMask:18];
    [(PHAbstractDialerView *)self->_dialerView bounds];
    [v5 setFrame:?];
    [v5 addSubview:self->_dialerView];
  }

  v20 = [(PHAbstractDialerView *)self->_dialerView callButton];
  [v20 addTarget:self action:"_callButtonPressed:" forControlEvents:64];

  v21 = [(PHAbstractDialerView *)self->_dialerView deleteButton];
  [v21 addTarget:self action:"_deleteButtonClicked:" forControlEvents:64];

  v22 = [(PHAbstractDialerView *)self->_dialerView deleteButton];
  [v22 addTarget:self action:"_deleteButtonDown:" forControlEvents:1];

  v23 = [(PHAbstractDialerView *)self->_dialerView deleteButton];
  [v23 addTarget:self action:"_stopDeleteTimer" forControlEvents:32];

  v24 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"handleSwipeGesture:"];
  [v24 setDirection:3];
  [v24 setDelegate:self];
  v25 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [v25 addGestureRecognizer:v24];

  v26 = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [v26 setDelegate:self];

  [(DialerController *)self setView:v5];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = DialerController;
  v6 = a4;
  [(DialerController *)&v11 touchesBegan:a3 withEvent:v6];
  v7 = [(PHAbstractDialerView *)self->_dialerView lcdView:v11.receiver];
  v8 = [v6 touchesForView:v7];

  if (v8)
  {
  }

  else
  {
    v9 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    v7 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [v7 endEditing];
  }
}

- (BOOL)_disableAutomaticKeyboardUI
{
  if ([(DialerController *)self appType]== &dword_0 + 1 && [(DialerController *)self enableSmartDialer])
  {
    v3 = [(DialerController *)self presentedViewController];
    if (v3)
    {
      v4 = [(DialerController *)self presentedViewController];
      objc_opt_class();
      v5 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

- (void)_callStatusChanged:(id)a3
{
  v4 = a3;
  if ([(DialerController *)self shouldAnimateCallButton])
  {
    v5 = [v4 object];
    if ([v5 status] == 3)
    {
      v6 = +[TUCallCenter sharedInstance];
      if ([v6 currentCallCount] == &dword_0 + 1 && objc_msgSend(v5, "isEndpointOnCurrentDevice") && !objc_msgSend(v5, "isEmergency"))
      {
        v7 = [UIApp isSuspendedEventsOnly];

        if ((v7 & 1) == 0)
        {
          v8 = PHDefaultLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "DialerAnimation: Calling _animateCallButton in ", v9, 2u);
          }

          [(DialerController *)self _animateCallButton];
        }
      }

      else
      {
      }
    }
  }
}

- (void)dealloc
{
  v3 = [(DialerController *)self callProviderManager];
  [v3 removeDelegate:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  CTTelephonyCenterGetDefault();
  CTTelephonyCenterRemoveEveryObserver();
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  [(DialerController *)self _stopLookupTimer];
  [(DialerController *)self _stopDeleteTimer];
  [(PHAbstractDialerView *)self->_dialerView removeFromSuperview];
  [(PHAbstractDialerView *)self->_dialerView setDelegate:0];
  dialerView = self->_dialerView;
  self->_dialerView = 0;

  v7 = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [v7 setDelegate:0];

  v8.receiver = self;
  v8.super_class = DialerController;
  [(DialerController *)&v8 dealloc];
}

- (id)tabBarIconName
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"KEYPAD" value:&stru_50D80 table:@"Dialer"];

  return v3;
}

- (BOOL)shouldSnapshot
{
  v2 = [(DialerController *)self presentedViewController];
  v3 = v2 == 0;

  return v3;
}

- (void)_stopLookupTimer
{
  [(NSTimer *)self->_lookupTimer invalidate];
  lookupTimer = self->_lookupTimer;
  self->_lookupTimer = 0;
}

- (id)contactResultForPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [TUContactsDataProviderFetchRequest alloc];
  v6 = [[TUHandle alloc] initWithType:2 value:v4];

  v7 = [v5 initWithHandle:v6];
  v8 = [(DialerController *)self phoneNumberPrefixHint];
  [v7 setPhoneNumberPrefixHint:v8];

  v9 = [(DialerController *)self contactsDataProvider];
  v10 = [v9 executeFetchRequest:v7];

  return v10;
}

+ (id)callHistoryController
{
  if (callHistoryController_onceToken != -1)
  {
    +[DialerController callHistoryController];
  }

  v3 = callHistoryController_sCallHistoryController;

  return v3;
}

void __41__DialerController_callHistoryController__block_invoke(id a1)
{
  callHistoryController_sCallHistoryController = [TUCallHistoryController sharedControllerWithCoalescingStrategy:1 options:4];

  _objc_release_x1();
}

+ (id)mostRecentCallHandleValue
{
  v2 = +[DialerController callHistoryController];
  v3 = [NSNumber numberWithUnsignedInt:kCHCallTypeNormal];
  v4 = [NSNumber numberWithUnsignedInt:kCHCallStatusCancelled];
  v24[0] = v4;
  v5 = [NSNumber numberWithUnsignedInt:kCHCallStatusConnectedOutgoing];
  v24[1] = v5;
  v6 = [NSArray arrayWithObjects:v24 count:2];
  v7 = [NSPredicate predicateWithFormat:@"callType == %@ AND callStatus IN %@", v3, v6];
  v8 = [v2 recentCallsWithPredicate:v7];
  v9 = [v8 firstObject];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 remoteParticipantHandles];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ([v16 type] == &dword_0 + 2)
        {
          v17 = [v16 value];

          v13 = v17;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)lastDialedNumber
{
  if ([(DialerController *)self shouldSuppressShowingLastDialedNumber])
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_opt_class() mostRecentCallHandleValue];
  }

  return v2;
}

- (BOOL)shouldSuppressShowingLastDialedNumber
{
  if (!self->_loadedShouldSuppressShowingLastDialedNumberCache)
  {
    self->_loadedShouldSuppressShowingLastDialedNumberCache = 1;
    v3 = PHPreferencesGetValueInDomain();
    self->_shouldSuppressShowingLastDialedNumberCache = [v3 BOOLValue];

    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      shouldSuppressShowingLastDialedNumberCache = self->_shouldSuppressShowingLastDialedNumberCache;
      v7[0] = 67109120;
      v7[1] = shouldSuppressShowingLastDialedNumberCache;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Loaded shouldSuppressShowingLastDialedNumber from defaults as %d", v7, 8u);
    }
  }

  return self->_shouldSuppressShowingLastDialedNumberCache;
}

- (void)setShouldHideDeleteButtonWhenEmpty:(BOOL)a3
{
  self->_shouldHideDeleteButtonWhenEmpty = a3;
  if ([(DialerController *)self shouldHideDeleteButtonWhenEmpty])
  {

    [(DialerController *)self showOrHideDeleteButton];
  }
}

- (void)showOrHideDeleteButton
{
  v3 = [(DialerController *)self dialerView];
  v4 = [v3 lcdView];
  v5 = [v4 text];
  v6 = [v5 length] == 0;
  v7 = [(DialerController *)self dialerView];
  v8 = [v7 deleteButton];
  [v8 setHidden:v6];

  v12 = [(DialerController *)self dialerView];
  v9 = [v12 deleteButton];
  if ([v9 isHidden])
  {
    v10 = [(DialerController *)self dialerType];

    if (v10 != 1)
    {
      return;
    }

    v12 = +[NSNotificationCenter defaultCenter];
    v9 = [(DialerController *)self dialerView];
    v11 = [v9 deleteButton];
    [v12 postNotificationName:@"kPHCarPlayDeleteButtonHideNotification" object:v11];
  }
}

- (void)dialerViewTextDidChange:(id)a3
{
  dialerView = self->_dialerView;
  if (dialerView == a3)
  {
    v5 = [(PHAbstractDialerView *)dialerView lcdView];
    v6 = [v5 text];
    [(DialerController *)self _updateCallButtonEnabledState:v6 updateNameNow:1];

    if ([(DialerController *)self shouldHideDeleteButtonWhenEmpty])
    {

      [(DialerController *)self showOrHideDeleteButton];
    }
  }
}

- (void)dialerView:(id)a3 stringWasPasted:(id)a4
{
  v28 = a3;
  v6 = a4;
  if (v6 && self->_dialerView == v28)
  {
    v7 = [v6 encodedDialerString];
    v8 = [v6 isEqualToString:v7];
    v9 = [(DialerController *)self contactResultForPhoneNumber:v7];
    if ([(DialerController *)self appType]== &dword_0 + 1 && [(DialerController *)self enableSmartDialer])
    {
      v10 = [(PHAbstractDialerView *)self->_dialerView lcdView];
      [v10 setText:v7 needsFormat:1];

      [(DialerController *)self _updateCallButtonEnabledState:v7];
      [(DialerController *)self updateIDSStatus];
      if (v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6;
      }

      [(DialerController *)self searchAndUpdateResultsFor:v7 shouldRefreshResult:0 showPastedString:v11];
      goto LABEL_19;
    }

    if ((v8 & 1) == 0)
    {
      v12 = [v9 contacts];
      v13 = [v12 count];

      if (!v13)
      {
        v24 = [(PHAbstractDialerView *)self->_dialerView lcdView];
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"QUOTE_%@_QUOTE" value:&stru_50D80 table:@"Dialer"];
        v27 = [NSString stringWithFormat:v26, v6];
        [v24 setText:v7 needsFormat:1 name:v27 label:0];

        [(DialerController *)self _updateCallButtonEnabledState:v7];
        goto LABEL_19;
      }
    }

    v14 = [v9 contacts];
    if ([v14 count])
    {
      v15 = [v9 contacts];
      v16 = [v15 firstObject];
      v17 = [v16 isSuggested];

      if ((v17 & 1) == 0)
      {
        v18 = [(PHAbstractDialerView *)self->_dialerView lcdView];
        v19 = [v9 localizedName];
        v20 = [v9 contactLabel];
        [v18 setText:v7 needsFormat:1 name:v19 label:v20];

        goto LABEL_17;
      }
    }

    else
    {
    }

    v18 = [(DialerController *)self pseudoNameStringForDestinationID:v7];
    v21 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [v21 setText:v7 needsFormat:1 name:0 label:0];

    if (!v18)
    {
LABEL_18:

      v22 = [(PHAbstractDialerView *)self->_dialerView lcdView];
      v23 = [v22 text];
      [(DialerController *)self _updateCallButtonEnabledState:v23];

LABEL_19:
      goto LABEL_20;
    }

    v19 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [v19 setName:v18 numberLabel:0 suggestion:1];
LABEL_17:

    goto LABEL_18;
  }

LABEL_20:
}

- (void)_updateCallButtonEnabledState:(id)a3 updateNameNow:(BOOL)a4
{
  v4 = a4;
  [(DialerController *)self _updateCallButtonEnabledState:a3];

  [(DialerController *)self _updateLCDNameLabelWithAMatchingName:!v4];
}

- (void)_updateLCDNameLabelWithAMatchingName:(BOOL)a3
{
  if (a3 && (-[PHAbstractDialerView lcdView](self->_dialerView, "lcdView"), v4 = objc_claimAutoreleasedReturnValue(), [v4 text], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"_updateName" selector:0 userInfo:0 repeats:0.2];
    lookupTimer = self->_lookupTimer;
    self->_lookupTimer = v6;

    _objc_release_x1();
  }

  else
  {

    [(DialerController *)self _updateName];
  }
}

- (void)_updateLCDNameLabelWithOriginallyPastedString:(id)a3
{
  v7 = a3;
  v4 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [v6 setName:v7 numberLabel:&stru_50D80 suggestion:0];
  }
}

- (void)_updateCallButtonEnabledState:(id)a3
{
  v10 = a3;
  if (self->_lookupTimer)
  {
    [(DialerController *)self _stopLookupTimer];
  }

  TUNetworkCountryCode();
  valid = PNIsValidPhoneNumberForCountry();
  v5 = [(PHAbstractDialerView *)self->_dialerView callButton];
  v7 = v5;
  if (valid)
  {
    LODWORD(v6) = -1097229926;
  }

  else
  {
    [v5 charge];
    v9 = fabsf(v8);

    if (v9 < 2.2204e-16)
    {
      goto LABEL_8;
    }

    v5 = [(PHAbstractDialerView *)self->_dialerView callButton];
    v7 = v5;
    v6 = 0.0;
  }

  [v5 setCharge:v6];

LABEL_8:
}

- (void)_fadeSubviewsOf:(id)a3 excludingViews:(id)a4 toValue:(double)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v8 subviews];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if (([v9 containsObject:v15] & 1) == 0)
        {
          [v15 setAlpha:a5];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = [v8 superview];

  if (v16)
  {
    v17 = [v8 superview];
    [(DialerController *)self _fadeSubviewsOf:v17 excludingViews:v9 toValue:a5];
  }
}

- (void)_animateCallButton
{
  if ([(DialerController *)self shouldAnimateCallButton])
  {
    v3 = [(DialerController *)self dialerView];
    v4 = [v3 callButton];

    [v4 setUserInteractionEnabled:0];
    [(DialerController *)self setBackgroundStyle:4 animated:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __38__DialerController__animateCallButton__block_invoke;
    v20[3] = &unk_4C770;
    v20[4] = self;
    v5 = v4;
    v21 = v5;
    [UIView animateWithDuration:v20 animations:0.50999999];
    if (objc_opt_respondsToSelector())
    {
      [v5 performSelector:"_animationWillBegin"];
    }

    v6 = [CASpringAnimation animationWithKeyPath:@"transform.rotation.z"];
    [v6 setMass:2.0];
    [v6 setStiffness:300.0];
    [v6 setDamping:50.0];
    [v6 setDuration:0.50999999];
    [v6 setToValue:&off_55E50];
    [v6 setFillMode:kCAFillModeForwards];
    [v6 setRemovedOnCompletion:0];
    v7 = [CAKeyframeAnimation animationWithKeyPath:@"backgroundColor"];
    v8 = +[UIColor systemGreenColor];
    v9 = [v8 CGColor];

    v10 = +[UIColor systemRedColor];
    v11 = [v10 CGColor];

    v22[0] = v9;
    v22[1] = v11;
    v12 = [NSArray arrayWithObjects:v22 count:2];
    [v7 setValues:v12];

    [v7 setKeyTimes:&off_55E20];
    [v7 setDuration:0.254999995];
    [v7 setFillMode:kCAFillModeForwards];
    [v7 setRemovedOnCompletion:0];
    v13 = [v5 imageView];
    [v13 setClipsToBounds:0];

    v14 = [v5 imageView];
    [v14 setContentMode:4];

    +[CATransaction begin];
    v15 = [v5 imageView];
    v16 = [v15 layer];
    [v16 addAnimation:v6 forKey:@"rollButtonAnimation"];

    v17 = [v5 layer];
    [v17 addAnimation:v7 forKey:@"buttonColorAnimation"];

    +[CATransaction commit];
    v18 = PHDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "DialerAnimation: Called ", v19, 2u);
    }
  }
}

void __38__DialerController__animateCallButton__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) superview];
  v4 = *(a1 + 32);
  v8[0] = *(a1 + 40);
  v5 = [v4 dialerView];
  v6 = [v5 deleteButton];
  v8[1] = v6;
  v7 = [NSArray arrayWithObjects:v8 count:2];
  [v2 _fadeSubviewsOf:v3 excludingViews:v7 toValue:0.0];
}

- (void)updateIDSStatus
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)searchAndUpdateResultsFor:(id)a3 shouldRefreshResult:(BOOL)a4 showPastedString:(id)a5
{
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(DialerController *)a2 updateIDSStatus];
  }
}

- (void)searchFor:(id)a3 shouldRefreshResult:(BOOL)a4 completionHandler:(id)a5
{
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(DialerController *)a2 updateIDSStatus];
  }
}

- (void)_callButtonPressed:(id)a3
{
  if (+[TUCallCapabilities supportsTelephonyCalls])
  {
    if ((+[TUCallCapabilities isRelayCallingEnabled]& 1) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = +[TUCallCapabilities isThumperCallingEnabled];
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [(DialerController *)self featureFlags];
  if (![v5 phoneLargeFormatUIEnabled])
  {
    goto LABEL_12;
  }

  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (((v7 & 0xFFFFFFFFFFFFFFFBLL) != 1) | v4 & 1)
  {
    goto LABEL_12;
  }

  v8 = [(DialerController *)self featureFlags];
  if (([v8 uplevelFTAEnabled] & 1) == 0)
  {

LABEL_12:
    goto LABEL_13;
  }

  v9 = +[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls];

  if (v9)
  {
    v12 = [(DialerController *)self callProviderManager];
    v10 = [v12 faceTimeProvider];
    goto LABEL_14;
  }

LABEL_13:
  v12 = [(DialerController *)self callProviderManager];
  v10 = [v12 telephonyProvider];
LABEL_14:
  v11 = v10;
  [(DialerController *)self _callButtonPressedActionWithCallProvider:v10];
}

- (void)_callButtonPressedActionWithCallProvider:(id)a3
{
  v7 = a3;
  [(DialerController *)self setBackgroundStyle:4 animated:1];
  if ([(DialerController *)self digitsEntered])
  {
    v4 = [(DialerController *)self dialerView];
    v5 = [v4 lcdView];
    [v5 endEditing];

    [(DialerController *)self setWantsCallButtonAnimation:1];
    [(DialerController *)self performCallActionForCallProvider:v7];
  }

  else
  {
    [(DialerController *)self restoreLastDialedNumber];
  }

  v6 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  if (objc_opt_respondsToSelector())
  {
    [v6 logWithCall];
  }
}

- (void)showRestrictedAlertWithMessage:(id)a3
{
  v4 = a3;
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"RESTRICTED_CONTENT" value:&stru_50D80 table:@"TelephonyUtilities"];
  v10 = [UIAlertController alertControllerWithTitle:v6 message:v4 preferredStyle:1];

  v7 = TUBundle();
  v8 = [v7 localizedStringForKey:@"CANCEL" value:&stru_50D80 table:@"TelephonyUtilities"];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];
  [v10 addAction:v9];

  [(DialerController *)self presentViewController:v10 animated:1 completion:0];
}

- (id)restrictedSubtitleForHandle:(id)a3
{
  v4 = a3;
  v5 = [TUContactsDataProviderFetchRequest alloc];
  v6 = [TUHandle handleWithDestinationID:v4];
  v7 = [v5 initWithHandle:v6];

  v8 = [(DialerController *)self contactsDataProvider];
  v9 = [v8 executeFetchRequest:v7];

  v10 = [v9 localizedName];
  if ([v10 length])
  {
    v11 = [v9 localizedName];
  }

  else
  {
    v11 = v4;
  }

  v12 = v11;

  if (![v12 length])
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"UNKNOWN" value:&stru_50D80 table:@"Dialer"];

    v12 = v14;
  }

  v15 = TUBundle();
  v16 = [v15 localizedStringForKey:@"DOWNTIME_CALLER_ALTERNATE_%@" value:&stru_50D80 table:@"TelephonyUtilities"];
  v17 = [NSString stringWithFormat:v16, v12];

  return v17;
}

- (void)phonePad:(id)a3 dialerCharacterButtonWasHeld:(int64_t)a4
{
  if (!a4)
  {
    v5 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    v6 = [v5 text];
    v7 = [v6 length];

    if (v7 == &dword_0 + 1)
    {

      [(DialerController *)self _dialVoicemail];
    }
  }
}

- (void)performCharacterAddAction:(id)a3
{
  v4 = a3;
  v6 = [(DialerController *)self dialerView];
  v5 = [v6 phonePadView];
  [(DialerController *)self phonePad:v5 appendString:v4 playDTMFTone:0];
}

- (void)phonePad:(id)a3 appendString:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  [(DialerController *)self phonePad:v7 appendString:v6 playDTMFTone:[(DialerController *)self dialerType]== 2];
}

- (void)phonePad:(id)a3 appendString:(id)a4 playDTMFTone:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  [(DialerController *)self _phonePad:a3 appendString:v8 suppressClearingDialedNumber:0];
  [(DialerController *)self setBackgroundStyle:4 animated:1];
  if (v5)
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Will play DTMF tone due to string being appended (%@)", &v10, 0xCu);
    }

    +[DialerController playDTMFToneForKey:](DialerController, "playDTMFToneForKey:", [v8 characterAtIndex:0]);
  }
}

- (void)_phonePad:(id)a3 appendString:(id)a4 suppressClearingDialedNumber:(BOOL)a5
{
  v7 = a4;
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  v8 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v13 = [v8 text];

  v9 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [v9 insertStringAtCurrentPosition:v7];

  v10 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v11 = [v10 text];

  if ([v11 length] == &dword_0 + 1 && objc_msgSend(v11, "characterAtIndex:", 0) == 44)
  {
    v12 = @"*";
LABEL_7:

    v11 = v12;
    goto LABEL_8;
  }

  if ([v11 length] == &dword_0 + 1 && objc_msgSend(v11, "characterAtIndex:", 0) == 59)
  {
    v12 = @"#";
    goto LABEL_7;
  }

LABEL_8:
  -[DialerController _updateCallButtonEnabledState:updateNameNow:](self, "_updateCallButtonEnabledState:updateNameNow:", v11, [v13 length] == 0);
  *(self + 32) &= ~1u;
  if (!a5)
  {
    [(DialerController *)self setShouldSuppressShowingLastDialedNumber:1];
  }
}

- (void)phonePad:(id)a3 replaceLastDigitWithString:(id)a4
{
  v5 = a4;
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  v6 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [v6 insertStringAtCurrentPosition:v5 deletingPreviousCharacter:1];

  v7 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v10 = [v7 text];

  if ([v10 length] == &dword_0 + 1 && objc_msgSend(v10, "characterAtIndex:", 0) == 44)
  {
    v8 = @"*";
LABEL_7:
    v9 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [v9 setText:v8 needsFormat:1];

    [(DialerController *)self _updateCallButtonEnabledState:v8 updateNameNow:0];
    goto LABEL_8;
  }

  if ([v10 length] == &dword_0 + 1 && objc_msgSend(v10, "characterAtIndex:", 0) == 59)
  {
    v8 = @"#";
    goto LABEL_7;
  }

LABEL_8:
}

- (void)phonePadDeleteLastDigit:(id)a3
{
  v4 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [v4 deleteCharacter];

  v5 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v6 = [v5 text];
  [(DialerController *)self _updateCallButtonEnabledState:v6 updateNameNow:0];

  *(self + 32) &= ~1u;

  [(DialerController *)self setShouldSuppressShowingLastDialedNumber:1];
}

- (NSString)phoneNumberPrefixHint
{
  v3 = +[FTDeviceSupport sharedInstance];
  if ([v3 isGreenTea] && objc_msgSend(v3, "deviceType") == &dword_4)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Skipping phone number lookup on GreenTea iPad, returning nil for prefix hint.", v11, 2u);
    }

    v5 = 0;
  }

  else
  {
    phoneNumberPrefixHint = self->_phoneNumberPrefixHint;
    if (!phoneNumberPrefixHint)
    {
      v7 = CTSettingCopyMyPhoneNumber();
      v8 = UIPhonePrefixFromNumber();
      v9 = self->_phoneNumberPrefixHint;
      self->_phoneNumberPrefixHint = v8;

      phoneNumberPrefixHint = self->_phoneNumberPrefixHint;
    }

    v5 = phoneNumberPrefixHint;
  }

  return v5;
}

- (void)handleKeyCommand:(id)a3
{
  v4 = a3;
  v5 = [(DialerController *)self dialerView];
  v6 = [v5 phonePadView];

  v7 = [(DialerController *)self keyCommandHandler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __37__DialerController_handleKeyCommand___block_invoke;
  v11[3] = &unk_4C798;
  v11[4] = self;
  v12 = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __37__DialerController_handleKeyCommand___block_invoke_2;
  v9[3] = &unk_4C7C0;
  v9[4] = self;
  v10 = v12;
  v8 = v12;
  [v7 handleKeyCommand:v4 receivedCharacterBlock:v11 receivedSpecialCharacterBlock:v9];
}

void __37__DialerController_handleKeyCommand___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) soundPlayer];
  [v4 attemptToPlayKey:a2];

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = [NSString stringWithFormat:@"%c", a2];
  [v6 phonePad:v5 appendString:v7];
}

id *__37__DialerController_handleKeyCommand___block_invoke_2(id *result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [result[4] _callButtonPressed:0];
  }

  if (!a2)
  {
    return [result[4] phonePadDeleteLastDigit:result[5]];
  }

  return result;
}

- (void)phonePadDidEndSounds:(id)a3
{
  v4 = a3;
  if (self->_dialerType == 2 && self->_dtmfPlaying)
  {
    v5 = v4;
    CTDTMFPlayStop();
    v4 = v5;
    self->_dtmfPlaying = 0;
  }
}

- (void)_dialVoicemail
{
  v3 = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [v3 cancelTouchTracking];

  v4 = [(DialerController *)self callProviderManager];
  v5 = [v4 voicemailProvider];

  if (v5)
  {
    v6 = [[TUDialRequest alloc] initWithProvider:v5];
    [v6 setDialType:2];
    v7 = [(DialerController *)self selectedSenderIdentity];
    v8 = [v7 accountUUID];
    [v6 setLocalSenderIdentityAccountUUID:v8];

    [v6 setOriginatingUIType:41];
    [(DialerController *)self _dialWithRequest:v6];
  }

  else
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(DialerController *)v9 _dialVoicemail];
    }
  }
}

- (void)_dialWithRequest:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  *(self + 32) |= 1u;
  [(DialerController *)self dismissModalViewControllerAnimated:1];
  v6 = +[UIApplication sharedApplication];
  v7 = [v4 URL];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __37__DialerController__dialWithRequest___block_invoke;
  v9[3] = &unk_4C690;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v6 openURL:v7 withCompletionHandler:v9];
}

id __37__DialerController__dialWithRequest___block_invoke(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __37__DialerController__dialWithRequest___block_invoke_cold_1(v2);
    }

    return [*(v2 + 40) setWantsCallButtonAnimation:0];
  }

  return result;
}

- (void)_deleteRepeat
{
  [(DialerController *)self phonePadDeleteLastDigit:0];
  v3 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v4 = [v3 text];
  v5 = [v4 length];

  if (!v5)
  {
    [(DialerController *)self _stopDeleteTimer];
  }

  *(self + 32) |= 2u;
}

- (void)_startDeleteTimer
{
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_deleteRepeat" selector:0 userInfo:1 repeats:0.04];
  deleteTimer = self->_deleteTimer;
  self->_deleteTimer = v3;

  [(DialerController *)self _deleteRepeat];
}

- (void)_stopDeleteTimer
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_startDeleteTimer" object:0];
  [(NSTimer *)self->_deleteTimer invalidate];
  deleteTimer = self->_deleteTimer;
  self->_deleteTimer = 0;
}

- (void)_deleteButtonClicked:(id)a3
{
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  if ((*(self + 32) & 2) != 0)
  {

    [(DialerController *)self _stopDeleteTimer];
  }

  else
  {

    [(DialerController *)self performDeleteAction];
  }
}

- (BOOL)digitsEntered
{
  v2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v3 = [v2 text];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)restoreLastDialedNumber
{
  v3 = +[TUCallCenter sharedInstance];
  if ([v3 currentCallCount])
  {

LABEL_3:
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = +[TUCallCenter sharedInstance];
      v6 = [v5 currentCallCount] != 0;
      v7 = [(DialerController *)self lastDialedNumber];
      v12 = 67109376;
      LODWORD(v13[0]) = v6;
      WORD2(v13[0]) = 1024;
      *(v13 + 6) = v7 == 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Not updating visible number to saved redialed number because we are in call (%d) or we don't have a redialed number saved (%d)", &v12, 0xEu);
    }

    return;
  }

  v8 = [(DialerController *)self lastDialedNumber];

  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(DialerController *)self lastDialedNumber];
    v12 = 138412290;
    v13[0] = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Updating visible number to saved redialed number: %@", &v12, 0xCu);
  }

  v11 = [(DialerController *)self lastDialedNumber];
  [(DialerController *)self _phonePad:0 appendString:v11 suppressClearingDialedNumber:1];

  [(DialerController *)self _updateName];
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:1];
}

- (void)performDeleteAction
{
  [(DialerController *)self _stopDeleteTimer];

  [(DialerController *)self phonePadDeleteLastDigit:0];
}

- (void)_handleSIMInsertionOrRemoval
{
  [(DialerController *)self setPhoneNumberPrefixHint:0];

  [(DialerController *)self setContactsDataProvider:0];
}

- (void)setBackgroundStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_backgroundStyle != a3)
  {
    self->_backgroundStyle = a3;
    if (a4)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = __48__DialerController_setBackgroundStyle_animated___block_invoke;
      v6[3] = &__block_descriptor_40_e5_v8__0l;
      v6[4] = a3;
      [UIView animateWithDuration:v6 animations:0.5];
    }

    else
    {
      v5 = +[UIApplication sharedApplication];
      [v5 _setBackgroundStyle:a3];
    }
  }
}

void __48__DialerController_setBackgroundStyle_animated___block_invoke(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 _setBackgroundStyle:*(a1 + 32)];
}

- (void)handleApplicationDidEnterBackgroundNotification:(id)a3
{
  [(DialerController *)self deactivateAudioServices];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Application entered the background. Keypad button tones are disabled.", v4, 2u);
  }
}

- (void)handleApplicationWillEnterForegroundNotification:(id)a3
{
  v3 = [(DialerController *)self requestAudioServicesActivate];
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Application is entering the foreground. Keypad button tones are enabled: %@.", &v6, 0xCu);
  }
}

- (BOOL)requestAudioServicesActivate
{
  v3 = +[TUCallCenter sharedInstance];
  if ([v3 currentCallCount])
  {
    v4 = self->_dialerType == 2;
  }

  else
  {
    v4 = 1;
  }

  [(DialerController *)self setAudioServicesActivated:v4];
  return v4;
}

- (void)setAudioServicesActivated:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __46__DialerController_setAudioServicesActivated___block_invoke;
  v3[3] = &unk_4C720;
  v3[4] = self;
  v4 = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

void __46__DialerController_setAudioServicesActivated___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) phonePadView];
  [v2 setPlaysSounds:*(a1 + 40)];
}

- (CNContactStore)contactStore
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:TUBundleIdentifierInCallServiceApplication];

  if (v5)
  {
    v6 = +[TUCallCenter sharedInstance];
    v7 = [v6 displayedCallFromCalls:0];

    v8 = [CNContactStoreConfiguration tu_contactStoreConfigurationForCall:v7];
    [v8 setIncludeDonatedContacts:1];
    [v8 setIncludeSuggestedContacts:1];
    v9 = [[CNContactStore alloc] initWithConfiguration:v8];
  }

  else
  {
    contactStore = self->_contactStore;
    if (!contactStore)
    {
      v11 = +[CNContactStore suggestedContactStore];
      v12 = self->_contactStore;
      self->_contactStore = v11;

      contactStore = self->_contactStore;
    }

    v9 = contactStore;
  }

  return v9;
}

- (TUContactsDataProvider)contactsDataProvider
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:TUBundleIdentifierInCallServiceApplication];

  if (v5)
  {
    v6 = [TUContactsDataProvider alloc];
    v7 = [(DialerController *)self contactStore];
    v8 = [v6 initWithContactsDataSource:v7];
  }

  else
  {
    contactsDataProvider = self->_contactsDataProvider;
    if (!contactsDataProvider)
    {
      v10 = [TUContactsDataProvider alloc];
      v11 = [(DialerController *)self contactStore];
      v12 = [v10 initWithContactsDataSource:v11];
      v13 = self->_contactsDataProvider;
      self->_contactsDataProvider = v12;

      contactsDataProvider = self->_contactsDataProvider;
    }

    v8 = contactsDataProvider;
  }

  return v8;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(DialerController *)self interfaceOrientationProvider];

  if (v3)
  {
    v4 = [(DialerController *)self interfaceOrientationProvider];
    v5 = [v4 dialerSupportedInterfaceOrientations];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DialerController;
    return [(DialerController *)&v7 supportedInterfaceOrientations];
  }
}

- (BOOL)deviceHasMultipleSIM
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 providerManager];

  v4 = [v3 telephonyProvider];
  v5 = [v4 prioritizedSenderIdentities];
  v6 = [v5 count] > 1;

  return v6;
}

- (BOOL)enableDualSimMenu
{
  v3 = PHDeviceSupportsDualSim();
  if (v3)
  {

    LOBYTE(v3) = [(DialerController *)self deviceHasMultipleSIM];
  }

  return v3;
}

- (void)updateDialerViewDualSimMenu
{
  v3 = [(DialerController *)self dialerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(DialerController *)self dialerView];
    [v5 setEnableDualSimMenu:{-[DialerController enableDualSimMenu](self, "enableDualSimMenu")}];
  }
}

- (void)providersChangedForProviderManager:(id)a3
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "providersChangedForProviderManager called", v5, 2u);
  }

  [(DialerController *)self updateDialerViewDualSimMenu];
}

- (DialerControllerInterfaceOrientationProvder)interfaceOrientationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_interfaceOrientationProvider);

  return WeakRetained;
}

void __37__DialerController__dialWithRequest___block_invoke_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) URL];
  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end