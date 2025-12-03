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
- (id)contactResultForPhoneNumber:(id)number;
- (id)defaultCallProvider;
- (id)restrictedSubtitleForHandle:(id)handle;
- (id)tabBarIconName;
- (unint64_t)supportedInterfaceOrientations;
- (void)_animateCallButton;
- (void)_callButtonPressed:(id)pressed;
- (void)_callButtonPressedActionWithCallProvider:(id)provider;
- (void)_callStatusChanged:(id)changed;
- (void)_clearDisplayIfNecessary;
- (void)_deleteButtonClicked:(id)clicked;
- (void)_deleteRepeat;
- (void)_dialVoicemail;
- (void)_dialWithRequest:(id)request;
- (void)_fadeSubviewsOf:(id)of excludingViews:(id)views toValue:(double)value;
- (void)_handleSIMInsertionOrRemoval;
- (void)_phonePad:(id)pad appendString:(id)string suppressClearingDialedNumber:(BOOL)number;
- (void)_resetButtonAnimation;
- (void)_startDeleteTimer;
- (void)_stopDeleteTimer;
- (void)_stopLookupTimer;
- (void)_updateCallButtonEnabledState:(id)state;
- (void)_updateCallButtonEnabledState:(id)state updateNameNow:(BOOL)now;
- (void)_updateLCDNameLabelWithAMatchingName:(BOOL)name;
- (void)_updateLCDNameLabelWithOriginallyPastedString:(id)string;
- (void)applicationDidResume;
- (void)dealloc;
- (void)dialerView:(id)view stringWasPasted:(id)pasted;
- (void)dialerViewTextDidChange:(id)change;
- (void)handleApplicationDidEnterBackgroundNotification:(id)notification;
- (void)handleApplicationWillEnterForegroundNotification:(id)notification;
- (void)handleKeyCommand:(id)command;
- (void)loadView;
- (void)performCharacterAddAction:(id)action;
- (void)performDeleteAction;
- (void)phonePad:(id)pad appendString:(id)string;
- (void)phonePad:(id)pad appendString:(id)string playDTMFTone:(BOOL)tone;
- (void)phonePad:(id)pad dialerCharacterButtonWasHeld:(int64_t)held;
- (void)phonePad:(id)pad replaceLastDigitWithString:(id)string;
- (void)phonePadDeleteLastDigit:(id)digit;
- (void)phonePadDidEndSounds:(id)sounds;
- (void)providersChangedForProviderManager:(id)manager;
- (void)reloadButtons;
- (void)restoreLastDialedNumber;
- (void)searchAndUpdateResultsFor:(id)for shouldRefreshResult:(BOOL)result showPastedString:(id)string;
- (void)searchFor:(id)for shouldRefreshResult:(BOOL)result completionHandler:(id)handler;
- (void)setAudioServicesActivated:(BOOL)activated;
- (void)setBackgroundStyle:(int64_t)style animated:(BOOL)animated;
- (void)setShouldHideDeleteButtonWhenEmpty:(BOOL)empty;
- (void)showOrHideDeleteButton;
- (void)showRestrictedAlertWithMessage:(id)message;
- (void)touchesBegan:(id)began withEvent:(id)event;
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
    dialerView = [(DialerController *)self dialerView];
    callButton = [dialerView callButton];

    v5 = +[UIColor systemGreenColor];
    [callButton setBackgroundColor:v5];

    layer = [callButton layer];
    [layer removeAllAnimations];

    imageView = [callButton imageView];
    layer2 = [imageView layer];
    [layer2 removeAllAnimations];

    [callButton setUserInteractionEnabled:1];
    v18[0] = callButton;
    dialerView2 = [(DialerController *)self dialerView];
    deleteButton = [dialerView2 deleteButton];
    v18[1] = deleteButton;
    v11 = [NSArray arrayWithObjects:v18 count:2];
    v12 = [v11 mutableCopy];

    if ([(DialerController *)self appType]== &dword_0 + 1 && [(DialerController *)self enableSmartDialer])
    {
      dialerView3 = [(DialerController *)self dialerView];
      addContactButton = [dialerView3 addContactButton];
      [v12 addObject:addContactButton];
    }

    superview = [callButton superview];
    [(DialerController *)self _fadeSubviewsOf:superview excludingViews:v12 toValue:1.0];

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
    view = [(DialerController *)self view];
    window = [view window];
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
    lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [lcdView setText:&stru_50D80 needsFormat:0];

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
  callProviderManager = [(DialerController *)self callProviderManager];
  telephonyProvider = [callProviderManager telephonyProvider];

  return telephonyProvider;
}

- (void)reloadButtons
{
  phonePadView = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [phonePadView reloadButtonImages];
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
  userInterfaceIdiom = [v10 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && [(DialerController *)self appType]== &dword_0 + 1)
  {
    [(PHAbstractDialerView *)self->_dialerView setTranslatesAutoresizingMaskIntoConstraints:0];
    backgroundColor = [(PHAbstractDialerView *)self->_dialerView backgroundColor];
    [v5 setBackgroundColor:backgroundColor];

    [v5 addSubview:self->_dialerView];
    topAnchor = [(PHAbstractDialerView *)self->_dialerView topAnchor];
    topAnchor2 = [v5 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v33[0] = v30;
    leadingAnchor = [(PHAbstractDialerView *)self->_dialerView leadingAnchor];
    leadingAnchor2 = [v5 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v33[1] = v27;
    trailingAnchor = [(PHAbstractDialerView *)self->_dialerView trailingAnchor];
    trailingAnchor2 = [v5 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-0.0];
    v33[2] = v15;
    bottomAnchor = [(PHAbstractDialerView *)self->_dialerView bottomAnchor];
    bottomAnchor2 = [v5 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-0.0];
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

  callButton = [(PHAbstractDialerView *)self->_dialerView callButton];
  [callButton addTarget:self action:"_callButtonPressed:" forControlEvents:64];

  deleteButton = [(PHAbstractDialerView *)self->_dialerView deleteButton];
  [deleteButton addTarget:self action:"_deleteButtonClicked:" forControlEvents:64];

  deleteButton2 = [(PHAbstractDialerView *)self->_dialerView deleteButton];
  [deleteButton2 addTarget:self action:"_deleteButtonDown:" forControlEvents:1];

  deleteButton3 = [(PHAbstractDialerView *)self->_dialerView deleteButton];
  [deleteButton3 addTarget:self action:"_stopDeleteTimer" forControlEvents:32];

  v24 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"handleSwipeGesture:"];
  [v24 setDirection:3];
  [v24 setDelegate:self];
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [lcdView addGestureRecognizer:v24];

  phonePadView = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [phonePadView setDelegate:self];

  [(DialerController *)self setView:v5];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = DialerController;
  eventCopy = event;
  [(DialerController *)&v11 touchesBegan:began withEvent:eventCopy];
  lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView:v11.receiver];
  v8 = [eventCopy touchesForView:lcdView2];

  if (v8)
  {
  }

  else
  {
    lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [lcdView2 endEditing];
  }
}

- (BOOL)_disableAutomaticKeyboardUI
{
  if ([(DialerController *)self appType]== &dword_0 + 1 && [(DialerController *)self enableSmartDialer])
  {
    presentedViewController = [(DialerController *)self presentedViewController];
    if (presentedViewController)
    {
      presentedViewController2 = [(DialerController *)self presentedViewController];
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

- (void)_callStatusChanged:(id)changed
{
  changedCopy = changed;
  if ([(DialerController *)self shouldAnimateCallButton])
  {
    object = [changedCopy object];
    if ([object status] == 3)
    {
      v6 = +[TUCallCenter sharedInstance];
      if ([v6 currentCallCount] == &dword_0 + 1 && objc_msgSend(object, "isEndpointOnCurrentDevice") && !objc_msgSend(object, "isEmergency"))
      {
        isSuspendedEventsOnly = [UIApp isSuspendedEventsOnly];

        if ((isSuspendedEventsOnly & 1) == 0)
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
  callProviderManager = [(DialerController *)self callProviderManager];
  [callProviderManager removeDelegate:self];

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

  phonePadView = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [phonePadView setDelegate:0];

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
  presentedViewController = [(DialerController *)self presentedViewController];
  v3 = presentedViewController == 0;

  return v3;
}

- (void)_stopLookupTimer
{
  [(NSTimer *)self->_lookupTimer invalidate];
  lookupTimer = self->_lookupTimer;
  self->_lookupTimer = 0;
}

- (id)contactResultForPhoneNumber:(id)number
{
  numberCopy = number;
  v5 = [TUContactsDataProviderFetchRequest alloc];
  v6 = [[TUHandle alloc] initWithType:2 value:numberCopy];

  v7 = [v5 initWithHandle:v6];
  phoneNumberPrefixHint = [(DialerController *)self phoneNumberPrefixHint];
  [v7 setPhoneNumberPrefixHint:phoneNumberPrefixHint];

  contactsDataProvider = [(DialerController *)self contactsDataProvider];
  v10 = [contactsDataProvider executeFetchRequest:v7];

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
  firstObject = [v8 firstObject];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  remoteParticipantHandles = [firstObject remoteParticipantHandles];
  v11 = [remoteParticipantHandles countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(remoteParticipantHandles);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ([v16 type] == &dword_0 + 2)
        {
          value = [v16 value];

          v13 = value;
        }
      }

      v12 = [remoteParticipantHandles countByEnumeratingWithState:&v19 objects:v23 count:16];
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
    mostRecentCallHandleValue = 0;
  }

  else
  {
    mostRecentCallHandleValue = [objc_opt_class() mostRecentCallHandleValue];
  }

  return mostRecentCallHandleValue;
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

- (void)setShouldHideDeleteButtonWhenEmpty:(BOOL)empty
{
  self->_shouldHideDeleteButtonWhenEmpty = empty;
  if ([(DialerController *)self shouldHideDeleteButtonWhenEmpty])
  {

    [(DialerController *)self showOrHideDeleteButton];
  }
}

- (void)showOrHideDeleteButton
{
  dialerView = [(DialerController *)self dialerView];
  lcdView = [dialerView lcdView];
  text = [lcdView text];
  v6 = [text length] == 0;
  dialerView2 = [(DialerController *)self dialerView];
  deleteButton = [dialerView2 deleteButton];
  [deleteButton setHidden:v6];

  dialerView3 = [(DialerController *)self dialerView];
  deleteButton2 = [dialerView3 deleteButton];
  if ([deleteButton2 isHidden])
  {
    dialerType = [(DialerController *)self dialerType];

    if (dialerType != 1)
    {
      return;
    }

    dialerView3 = +[NSNotificationCenter defaultCenter];
    deleteButton2 = [(DialerController *)self dialerView];
    v9DeleteButton = [deleteButton2 deleteButton];
    [dialerView3 postNotificationName:@"kPHCarPlayDeleteButtonHideNotification" object:v9DeleteButton];
  }
}

- (void)dialerViewTextDidChange:(id)change
{
  dialerView = self->_dialerView;
  if (dialerView == change)
  {
    lcdView = [(PHAbstractDialerView *)dialerView lcdView];
    text = [lcdView text];
    [(DialerController *)self _updateCallButtonEnabledState:text updateNameNow:1];

    if ([(DialerController *)self shouldHideDeleteButtonWhenEmpty])
    {

      [(DialerController *)self showOrHideDeleteButton];
    }
  }
}

- (void)dialerView:(id)view stringWasPasted:(id)pasted
{
  viewCopy = view;
  pastedCopy = pasted;
  if (pastedCopy && self->_dialerView == viewCopy)
  {
    encodedDialerString = [pastedCopy encodedDialerString];
    v8 = [pastedCopy isEqualToString:encodedDialerString];
    v9 = [(DialerController *)self contactResultForPhoneNumber:encodedDialerString];
    if ([(DialerController *)self appType]== &dword_0 + 1 && [(DialerController *)self enableSmartDialer])
    {
      lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
      [lcdView setText:encodedDialerString needsFormat:1];

      [(DialerController *)self _updateCallButtonEnabledState:encodedDialerString];
      [(DialerController *)self updateIDSStatus];
      if (v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = pastedCopy;
      }

      [(DialerController *)self searchAndUpdateResultsFor:encodedDialerString shouldRefreshResult:0 showPastedString:v11];
      goto LABEL_19;
    }

    if ((v8 & 1) == 0)
    {
      contacts = [v9 contacts];
      v13 = [contacts count];

      if (!v13)
      {
        lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"QUOTE_%@_QUOTE" value:&stru_50D80 table:@"Dialer"];
        pastedCopy = [NSString stringWithFormat:v26, pastedCopy];
        [lcdView2 setText:encodedDialerString needsFormat:1 name:pastedCopy label:0];

        [(DialerController *)self _updateCallButtonEnabledState:encodedDialerString];
        goto LABEL_19;
      }
    }

    contacts2 = [v9 contacts];
    if ([contacts2 count])
    {
      contacts3 = [v9 contacts];
      firstObject = [contacts3 firstObject];
      isSuggested = [firstObject isSuggested];

      if ((isSuggested & 1) == 0)
      {
        lcdView3 = [(PHAbstractDialerView *)self->_dialerView lcdView];
        localizedName = [v9 localizedName];
        contactLabel = [v9 contactLabel];
        [lcdView3 setText:encodedDialerString needsFormat:1 name:localizedName label:contactLabel];

        goto LABEL_17;
      }
    }

    else
    {
    }

    lcdView3 = [(DialerController *)self pseudoNameStringForDestinationID:encodedDialerString];
    lcdView4 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [lcdView4 setText:encodedDialerString needsFormat:1 name:0 label:0];

    if (!lcdView3)
    {
LABEL_18:

      lcdView5 = [(PHAbstractDialerView *)self->_dialerView lcdView];
      text = [lcdView5 text];
      [(DialerController *)self _updateCallButtonEnabledState:text];

LABEL_19:
      goto LABEL_20;
    }

    localizedName = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [localizedName setName:lcdView3 numberLabel:0 suggestion:1];
LABEL_17:

    goto LABEL_18;
  }

LABEL_20:
}

- (void)_updateCallButtonEnabledState:(id)state updateNameNow:(BOOL)now
{
  nowCopy = now;
  [(DialerController *)self _updateCallButtonEnabledState:state];

  [(DialerController *)self _updateLCDNameLabelWithAMatchingName:!nowCopy];
}

- (void)_updateLCDNameLabelWithAMatchingName:(BOOL)name
{
  if (name && (-[PHAbstractDialerView lcdView](self->_dialerView, "lcdView"), v4 = objc_claimAutoreleasedReturnValue(), [v4 text], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
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

- (void)_updateLCDNameLabelWithOriginallyPastedString:(id)string
{
  stringCopy = string;
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [lcdView2 setName:stringCopy numberLabel:&stru_50D80 suggestion:0];
  }
}

- (void)_updateCallButtonEnabledState:(id)state
{
  stateCopy = state;
  if (self->_lookupTimer)
  {
    [(DialerController *)self _stopLookupTimer];
  }

  TUNetworkCountryCode();
  valid = PNIsValidPhoneNumberForCountry();
  callButton = [(PHAbstractDialerView *)self->_dialerView callButton];
  v7 = callButton;
  if (valid)
  {
    LODWORD(v6) = -1097229926;
  }

  else
  {
    [callButton charge];
    v9 = fabsf(v8);

    if (v9 < 2.2204e-16)
    {
      goto LABEL_8;
    }

    callButton = [(PHAbstractDialerView *)self->_dialerView callButton];
    v7 = callButton;
    v6 = 0.0;
  }

  [callButton setCharge:v6];

LABEL_8:
}

- (void)_fadeSubviewsOf:(id)of excludingViews:(id)views toValue:(double)value
{
  ofCopy = of;
  viewsCopy = views;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  subviews = [ofCopy subviews];
  v11 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if (([viewsCopy containsObject:v15] & 1) == 0)
        {
          [v15 setAlpha:value];
        }
      }

      v12 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  superview = [ofCopy superview];

  if (superview)
  {
    superview2 = [ofCopy superview];
    [(DialerController *)self _fadeSubviewsOf:superview2 excludingViews:viewsCopy toValue:value];
  }
}

- (void)_animateCallButton
{
  if ([(DialerController *)self shouldAnimateCallButton])
  {
    dialerView = [(DialerController *)self dialerView];
    callButton = [dialerView callButton];

    [callButton setUserInteractionEnabled:0];
    [(DialerController *)self setBackgroundStyle:4 animated:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __38__DialerController__animateCallButton__block_invoke;
    v20[3] = &unk_4C770;
    v20[4] = self;
    v5 = callButton;
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
    cGColor = [v8 CGColor];

    v10 = +[UIColor systemRedColor];
    cGColor2 = [v10 CGColor];

    v22[0] = cGColor;
    v22[1] = cGColor2;
    v12 = [NSArray arrayWithObjects:v22 count:2];
    [v7 setValues:v12];

    [v7 setKeyTimes:&off_55E20];
    [v7 setDuration:0.254999995];
    [v7 setFillMode:kCAFillModeForwards];
    [v7 setRemovedOnCompletion:0];
    imageView = [v5 imageView];
    [imageView setClipsToBounds:0];

    imageView2 = [v5 imageView];
    [imageView2 setContentMode:4];

    +[CATransaction begin];
    imageView3 = [v5 imageView];
    layer = [imageView3 layer];
    [layer addAnimation:v6 forKey:@"rollButtonAnimation"];

    layer2 = [v5 layer];
    [layer2 addAnimation:v7 forKey:@"buttonColorAnimation"];

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
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)searchAndUpdateResultsFor:(id)for shouldRefreshResult:(BOOL)result showPastedString:(id)string
{
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(DialerController *)a2 updateIDSStatus];
  }
}

- (void)searchFor:(id)for shouldRefreshResult:(BOOL)result completionHandler:(id)handler
{
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(DialerController *)a2 updateIDSStatus];
  }
}

- (void)_callButtonPressed:(id)pressed
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

  featureFlags = [(DialerController *)self featureFlags];
  if (![featureFlags phoneLargeFormatUIEnabled])
  {
    goto LABEL_12;
  }

  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1) | v4 & 1)
  {
    goto LABEL_12;
  }

  featureFlags2 = [(DialerController *)self featureFlags];
  if (([featureFlags2 uplevelFTAEnabled] & 1) == 0)
  {

LABEL_12:
    goto LABEL_13;
  }

  v9 = +[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls];

  if (v9)
  {
    callProviderManager = [(DialerController *)self callProviderManager];
    faceTimeProvider = [callProviderManager faceTimeProvider];
    goto LABEL_14;
  }

LABEL_13:
  callProviderManager = [(DialerController *)self callProviderManager];
  faceTimeProvider = [callProviderManager telephonyProvider];
LABEL_14:
  v11 = faceTimeProvider;
  [(DialerController *)self _callButtonPressedActionWithCallProvider:faceTimeProvider];
}

- (void)_callButtonPressedActionWithCallProvider:(id)provider
{
  providerCopy = provider;
  [(DialerController *)self setBackgroundStyle:4 animated:1];
  if ([(DialerController *)self digitsEntered])
  {
    dialerView = [(DialerController *)self dialerView];
    lcdView = [dialerView lcdView];
    [lcdView endEditing];

    [(DialerController *)self setWantsCallButtonAnimation:1];
    [(DialerController *)self performCallActionForCallProvider:providerCopy];
  }

  else
  {
    [(DialerController *)self restoreLastDialedNumber];
  }

  lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  if (objc_opt_respondsToSelector())
  {
    [lcdView2 logWithCall];
  }
}

- (void)showRestrictedAlertWithMessage:(id)message
{
  messageCopy = message;
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"RESTRICTED_CONTENT" value:&stru_50D80 table:@"TelephonyUtilities"];
  v10 = [UIAlertController alertControllerWithTitle:v6 message:messageCopy preferredStyle:1];

  v7 = TUBundle();
  v8 = [v7 localizedStringForKey:@"CANCEL" value:&stru_50D80 table:@"TelephonyUtilities"];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];
  [v10 addAction:v9];

  [(DialerController *)self presentViewController:v10 animated:1 completion:0];
}

- (id)restrictedSubtitleForHandle:(id)handle
{
  handleCopy = handle;
  v5 = [TUContactsDataProviderFetchRequest alloc];
  v6 = [TUHandle handleWithDestinationID:handleCopy];
  v7 = [v5 initWithHandle:v6];

  contactsDataProvider = [(DialerController *)self contactsDataProvider];
  v9 = [contactsDataProvider executeFetchRequest:v7];

  localizedName = [v9 localizedName];
  if ([localizedName length])
  {
    localizedName2 = [v9 localizedName];
  }

  else
  {
    localizedName2 = handleCopy;
  }

  v12 = localizedName2;

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

- (void)phonePad:(id)pad dialerCharacterButtonWasHeld:(int64_t)held
{
  if (!held)
  {
    lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
    text = [lcdView text];
    v7 = [text length];

    if (v7 == &dword_0 + 1)
    {

      [(DialerController *)self _dialVoicemail];
    }
  }
}

- (void)performCharacterAddAction:(id)action
{
  actionCopy = action;
  dialerView = [(DialerController *)self dialerView];
  phonePadView = [dialerView phonePadView];
  [(DialerController *)self phonePad:phonePadView appendString:actionCopy playDTMFTone:0];
}

- (void)phonePad:(id)pad appendString:(id)string
{
  stringCopy = string;
  padCopy = pad;
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  [(DialerController *)self phonePad:padCopy appendString:stringCopy playDTMFTone:[(DialerController *)self dialerType]== 2];
}

- (void)phonePad:(id)pad appendString:(id)string playDTMFTone:(BOOL)tone
{
  toneCopy = tone;
  stringCopy = string;
  [(DialerController *)self _phonePad:pad appendString:stringCopy suppressClearingDialedNumber:0];
  [(DialerController *)self setBackgroundStyle:4 animated:1];
  if (toneCopy)
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = stringCopy;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Will play DTMF tone due to string being appended (%@)", &v10, 0xCu);
    }

    +[DialerController playDTMFToneForKey:](DialerController, "playDTMFToneForKey:", [stringCopy characterAtIndex:0]);
  }
}

- (void)_phonePad:(id)pad appendString:(id)string suppressClearingDialedNumber:(BOOL)number
{
  stringCopy = string;
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  text = [lcdView text];

  lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [lcdView2 insertStringAtCurrentPosition:stringCopy];

  lcdView3 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  text2 = [lcdView3 text];

  if ([text2 length] == &dword_0 + 1 && objc_msgSend(text2, "characterAtIndex:", 0) == 44)
  {
    v12 = @"*";
LABEL_7:

    text2 = v12;
    goto LABEL_8;
  }

  if ([text2 length] == &dword_0 + 1 && objc_msgSend(text2, "characterAtIndex:", 0) == 59)
  {
    v12 = @"#";
    goto LABEL_7;
  }

LABEL_8:
  -[DialerController _updateCallButtonEnabledState:updateNameNow:](self, "_updateCallButtonEnabledState:updateNameNow:", text2, [text length] == 0);
  *(self + 32) &= ~1u;
  if (!number)
  {
    [(DialerController *)self setShouldSuppressShowingLastDialedNumber:1];
  }
}

- (void)phonePad:(id)pad replaceLastDigitWithString:(id)string
{
  stringCopy = string;
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [lcdView insertStringAtCurrentPosition:stringCopy deletingPreviousCharacter:1];

  lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  text = [lcdView2 text];

  if ([text length] == &dword_0 + 1 && objc_msgSend(text, "characterAtIndex:", 0) == 44)
  {
    v8 = @"*";
LABEL_7:
    lcdView3 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [lcdView3 setText:v8 needsFormat:1];

    [(DialerController *)self _updateCallButtonEnabledState:v8 updateNameNow:0];
    goto LABEL_8;
  }

  if ([text length] == &dword_0 + 1 && objc_msgSend(text, "characterAtIndex:", 0) == 59)
  {
    v8 = @"#";
    goto LABEL_7;
  }

LABEL_8:
}

- (void)phonePadDeleteLastDigit:(id)digit
{
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [lcdView deleteCharacter];

  lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  text = [lcdView2 text];
  [(DialerController *)self _updateCallButtonEnabledState:text updateNameNow:0];

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

- (void)handleKeyCommand:(id)command
{
  commandCopy = command;
  dialerView = [(DialerController *)self dialerView];
  phonePadView = [dialerView phonePadView];

  keyCommandHandler = [(DialerController *)self keyCommandHandler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __37__DialerController_handleKeyCommand___block_invoke;
  v11[3] = &unk_4C798;
  v11[4] = self;
  v12 = phonePadView;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __37__DialerController_handleKeyCommand___block_invoke_2;
  v9[3] = &unk_4C7C0;
  v9[4] = self;
  v10 = v12;
  v8 = v12;
  [keyCommandHandler handleKeyCommand:commandCopy receivedCharacterBlock:v11 receivedSpecialCharacterBlock:v9];
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

- (void)phonePadDidEndSounds:(id)sounds
{
  soundsCopy = sounds;
  if (self->_dialerType == 2 && self->_dtmfPlaying)
  {
    v5 = soundsCopy;
    CTDTMFPlayStop();
    soundsCopy = v5;
    self->_dtmfPlaying = 0;
  }
}

- (void)_dialVoicemail
{
  phonePadView = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [phonePadView cancelTouchTracking];

  callProviderManager = [(DialerController *)self callProviderManager];
  voicemailProvider = [callProviderManager voicemailProvider];

  if (voicemailProvider)
  {
    v6 = [[TUDialRequest alloc] initWithProvider:voicemailProvider];
    [v6 setDialType:2];
    selectedSenderIdentity = [(DialerController *)self selectedSenderIdentity];
    accountUUID = [selectedSenderIdentity accountUUID];
    [v6 setLocalSenderIdentityAccountUUID:accountUUID];

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

- (void)_dialWithRequest:(id)request
{
  requestCopy = request;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = requestCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  *(self + 32) |= 1u;
  [(DialerController *)self dismissModalViewControllerAnimated:1];
  v6 = +[UIApplication sharedApplication];
  v7 = [requestCopy URL];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __37__DialerController__dialWithRequest___block_invoke;
  v9[3] = &unk_4C690;
  v10 = requestCopy;
  selfCopy = self;
  v8 = requestCopy;
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
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  text = [lcdView text];
  v5 = [text length];

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

- (void)_deleteButtonClicked:(id)clicked
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
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  text = [lcdView text];
  v4 = [text length] != 0;

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
      lastDialedNumber = [(DialerController *)self lastDialedNumber];
      v12 = 67109376;
      LODWORD(v13[0]) = v6;
      WORD2(v13[0]) = 1024;
      *(v13 + 6) = lastDialedNumber == 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Not updating visible number to saved redialed number because we are in call (%d) or we don't have a redialed number saved (%d)", &v12, 0xEu);
    }

    return;
  }

  lastDialedNumber2 = [(DialerController *)self lastDialedNumber];

  if (!lastDialedNumber2)
  {
    goto LABEL_3;
  }

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    lastDialedNumber3 = [(DialerController *)self lastDialedNumber];
    v12 = 138412290;
    v13[0] = lastDialedNumber3;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Updating visible number to saved redialed number: %@", &v12, 0xCu);
  }

  lastDialedNumber4 = [(DialerController *)self lastDialedNumber];
  [(DialerController *)self _phonePad:0 appendString:lastDialedNumber4 suppressClearingDialedNumber:1];

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

- (void)setBackgroundStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->_backgroundStyle != style)
  {
    self->_backgroundStyle = style;
    if (animated)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = __48__DialerController_setBackgroundStyle_animated___block_invoke;
      v6[3] = &__block_descriptor_40_e5_v8__0l;
      v6[4] = style;
      [UIView animateWithDuration:v6 animations:0.5];
    }

    else
    {
      v5 = +[UIApplication sharedApplication];
      [v5 _setBackgroundStyle:style];
    }
  }
}

void __48__DialerController_setBackgroundStyle_animated___block_invoke(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 _setBackgroundStyle:*(a1 + 32)];
}

- (void)handleApplicationDidEnterBackgroundNotification:(id)notification
{
  [(DialerController *)self deactivateAudioServices];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Application entered the background. Keypad button tones are disabled.", v4, 2u);
  }
}

- (void)handleApplicationWillEnterForegroundNotification:(id)notification
{
  requestAudioServicesActivate = [(DialerController *)self requestAudioServicesActivate];
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (requestAudioServicesActivate)
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

- (void)setAudioServicesActivated:(BOOL)activated
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __46__DialerController_setAudioServicesActivated___block_invoke;
  v3[3] = &unk_4C720;
  v3[4] = self;
  activatedCopy = activated;
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
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:TUBundleIdentifierInCallServiceApplication];

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
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:TUBundleIdentifierInCallServiceApplication];

  if (v5)
  {
    v6 = [TUContactsDataProvider alloc];
    contactStore = [(DialerController *)self contactStore];
    v8 = [v6 initWithContactsDataSource:contactStore];
  }

  else
  {
    contactsDataProvider = self->_contactsDataProvider;
    if (!contactsDataProvider)
    {
      v10 = [TUContactsDataProvider alloc];
      contactStore2 = [(DialerController *)self contactStore];
      v12 = [v10 initWithContactsDataSource:contactStore2];
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
  interfaceOrientationProvider = [(DialerController *)self interfaceOrientationProvider];

  if (interfaceOrientationProvider)
  {
    interfaceOrientationProvider2 = [(DialerController *)self interfaceOrientationProvider];
    dialerSupportedInterfaceOrientations = [interfaceOrientationProvider2 dialerSupportedInterfaceOrientations];

    return dialerSupportedInterfaceOrientations;
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
  providerManager = [v2 providerManager];

  telephonyProvider = [providerManager telephonyProvider];
  prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
  v6 = [prioritizedSenderIdentities count] > 1;

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
  dialerView = [(DialerController *)self dialerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dialerView2 = [(DialerController *)self dialerView];
    [dialerView2 setEnableDualSimMenu:{-[DialerController enableDualSimMenu](self, "enableDualSimMenu")}];
  }
}

- (void)providersChangedForProviderManager:(id)manager
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