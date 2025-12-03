@interface CarNavigationShareTripModeController
+ (void)attemptToStartShareWithContact:(id)contact sharingIdentity:(id)identity interruptPresenter:(id)presenter completion:(id)completion;
- (CarNavigationShareTripModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (id)desiredCards;
- (void)_attemptToStartShareWithContact:(id)contact fromController:(id)controller;
- (void)_cancelDismiss;
- (void)_closeResultsController;
- (void)_commitPendingShares;
- (void)_dismissAfterDelay;
- (void)_displayContactResults:(id)results withTitle:(id)title;
- (void)_externalDeviceUpdated:(id)updated;
- (void)_handleContactSearchResults:(id)results query:(id)query;
- (void)_refreshSharingIdentity;
- (void)_requestDictation;
- (void)_requestKeyboardInputUsingInteractionModel:(unint64_t)model;
- (void)_updateSharingFooterWithIdentity:(id)identity;
- (void)_updateWithSharingIdentity:(id)identity;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)carCardViewCloseButtonTapped:(id)tapped;
- (void)carNavigationShareTripViewController:(id)controller didStartSharingWithContact:(id)contact;
- (void)carNavigationShareTripViewController:(id)controller didStopSharingWithContact:(id)contact;
- (void)carNavigationShareTripViewController:(id)controller wantsToStartSharingWithContact:(id)contact;
- (void)configureCard:(id)card forKey:(id)key;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)sharedTripServiceDidUpdateSendingAvailability:(id)availability;
@end

@implementation CarNavigationShareTripModeController

- (CarNavigationShareTripModeController)init
{
  v7.receiver = self;
  v7.super_class = CarNavigationShareTripModeController;
  v2 = [(CarNavigationShareTripModeController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_userInteracted = 0;
    v4 = [[SharedTripSuggestionsDataSource alloc] initWithSoftCellCap:+[CarDisplayController includeActiveContacts:"maximumListLength"], 1];
    dataSource = v3->_dataSource;
    v3->_dataSource = v4;
  }

  return v3;
}

- (id)desiredCards
{
  if (self->_contactSearchResultsController)
  {
    v6 = @"ShareTripContactResults";
    v2 = &v6;
  }

  else
  {
    v5 = @"ShareTrip";
    v2 = &v5;
  }

  v3 = [NSArray arrayWithObjects:v2 count:1];

  return v3;
}

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)_cancelDismiss
{
  dismissTimer = self->_dismissTimer;
  if (dismissTimer)
  {
    [(NSTimer *)dismissTimer invalidate];
    v4 = self->_dismissTimer;
    self->_dismissTimer = 0;
  }
}

- (void)carNavigationShareTripViewController:(id)controller didStopSharingWithContact:(id)contact
{
  contactCopy = contact;
  [(CarNavigationShareTripModeController *)self _cancelDismiss];
  if (([(SharedTripSuggestionsDataSource *)self->_dataSource sharingStateForContact:contactCopy]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    chromeViewController = [(CarNavigationShareTripModeController *)self chromeViewController];
    [chromeViewController captureUserAction:9026];

    [(SharedTripSuggestionsDataSource *)self->_dataSource toggleContact:contactCopy];
  }
}

- (void)carNavigationShareTripViewController:(id)controller didStartSharingWithContact:(id)contact
{
  contactCopy = contact;
  [(CarNavigationShareTripModeController *)self _dismissAfterDelay];
  if (![(SharedTripSuggestionsDataSource *)self->_dataSource sharingStateForContact:contactCopy])
  {
    [(SharedTripSuggestionsDataSource *)self->_dataSource toggleContact:contactCopy];
  }
}

- (void)carNavigationShareTripViewController:(id)controller wantsToStartSharingWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  if (self->_suggestionsCardController == controllerCopy)
  {
    self->_userInteracted = 1;
  }

  [(CarNavigationShareTripModeController *)self _cancelDismiss];
  if (![(SharedTripSuggestionsDataSource *)self->_dataSource sharingStateForContact:contactCopy])
  {
    [(CarNavigationShareTripModeController *)self _attemptToStartShareWithContact:contactCopy fromController:controllerCopy];
  }
}

- (void)_attemptToStartShareWithContact:(id)contact fromController:(id)controller
{
  contactCopy = contact;
  controllerCopy = controller;
  stringValue = [contactCopy stringValue];
  if (stringValue)
  {
    objc_initWeak(&location, self);
    v9 = objc_opt_class();
    sharingIdentity = self->_sharingIdentity;
    chromeViewController = [(CarNavigationShareTripModeController *)self chromeViewController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1006D24D0;
    v12[3] = &unk_101661480;
    objc_copyWeak(&v15, &location);
    v13 = controllerCopy;
    v14 = stringValue;
    [v9 attemptToStartShareWithContact:contactCopy sharingIdentity:sharingIdentity interruptPresenter:chromeViewController completion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_updateWithSharingIdentity:(id)identity
{
  identityCopy = identity;
  [(CarNavigationShareTripModeController *)self _updateSharingFooterWithIdentity:identityCopy];
  hasValidAccount = [identityCopy hasValidAccount];

  if ((hasValidAccount & 1) == 0)
  {
    v6 = +[CarChromeModeCoordinator sharedInstance];
    [v6 popFromContext:self];
  }
}

- (void)sharedTripServiceDidUpdateSendingAvailability:(id)availability
{
  sharingIdentity = [availability sharingIdentity];
  [(CarNavigationShareTripModeController *)self _updateWithSharingIdentity:sharingIdentity];
}

- (void)_handleContactSearchResults:(id)results query:(id)query
{
  resultsCopy = results;
  queryCopy = query;
  v8 = [resultsCopy count];
  v9 = sub_1000946AC();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (!v10)
    {
LABEL_20:

      v23 = +[NSBundle mainBundle];
      v9 = [v23 localizedStringForKey:@"CarPlay_ShareTrip_ContactResultsTitle" value:@"localized string not found" table:0];

      queryCopy = [NSString localizedStringWithFormat:v9, queryCopy];
      [(CarNavigationShareTripModeController *)self _displayContactResults:resultsCopy withTitle:queryCopy];

      goto LABEL_23;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_19;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(CarNavigationShareTripModeController *)selfCopy performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_9:

LABEL_19:
    *buf = 138543618;
    v27 = selfCopy;
    v28 = 2048;
    v29 = [resultsCopy count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}@] [Keyboard] Displaying %lu contact results", buf, 0x16u);

    goto LABEL_20;
  }

  if (v10)
  {
    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_22;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(CarNavigationShareTripModeController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy2, v21];

        goto LABEL_17;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy2];
LABEL_17:

LABEL_22:
    *buf = 138543362;
    v27 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}@] [Keyboard] No contact results", buf, 0xCu);
  }

LABEL_23:

  chromeViewController = [(CarNavigationShareTripModeController *)self chromeViewController];
  [chromeViewController popToContext:self animated:1 completion:0];
}

- (void)_requestKeyboardInputUsingInteractionModel:(unint64_t)model
{
  [(CarNavigationShareTripModeController *)self _cancelDismiss];
  objc_initWeak(&location, self);
  v5 = +[CarChromeModeCoordinator sharedInstance];
  dataSource = self->_dataSource;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006D2A98;
  v7[3] = &unk_101626990;
  objc_copyWeak(&v8, &location);
  [v5 displayTripSharingContactKeyboardSearchWithInteractionModel:model dataSource:dataSource searchHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_displayContactResults:(id)results withTitle:(id)title
{
  titleCopy = title;
  resultsCopy = results;
  v8 = [[_TtC4Maps36CarNavigationShareTripViewController alloc] initWithDelegate:self dataSource:self->_dataSource sharingIdentity:self->_sharingIdentity searchResults:resultsCopy searchQuery:titleCopy];

  contactSearchResultsController = self->_contactSearchResultsController;
  self->_contactSearchResultsController = v8;

  chromeViewController = [(CarNavigationShareTripModeController *)self chromeViewController];
  [chromeViewController updateCardsForContext:self animated:1];
}

- (void)_requestDictation
{
  [(CarNavigationShareTripModeController *)self _cancelDismiss];
  v2 = +[CarChromeModeCoordinator sharedInstance];
  [v2 displaySiriTripSharing];
}

- (void)_commitPendingShares
{
  [(CarNavigationShareTripViewController *)self->_suggestionsCardController commitPendingShares];
  contactSearchResultsController = self->_contactSearchResultsController;

  [(CarNavigationShareTripViewController *)contactSearchResultsController commitPendingShares];
}

- (void)_dismissAfterDelay
{
  [(CarNavigationShareTripModeController *)self _cancelDismiss];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006D2D34;
  v5[3] = &unk_101661BC8;
  objc_copyWeak(&v6, &location);
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v5 block:5.0];
  dismissTimer = self->_dismissTimer;
  self->_dismissTimer = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_externalDeviceUpdated:(id)updated
{
  v4 = +[CarDisplayController maximumListLength];
  if ([(SharedTripSuggestionsDataSource *)self->_dataSource softCap]!= v4)
  {
    [(CarNavigationShareTripModeController *)self _commitPendingShares];
    dataSource = self->_dataSource;

    [(SharedTripSuggestionsDataSource *)dataSource setSoftCap:v4];
  }
}

- (NSArray)carFocusOrderSequences
{
  v2 = +[CarFocusOrderSequence defaultSequence];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)_closeResultsController
{
  contactSearchResultsController = self->_contactSearchResultsController;
  if (contactSearchResultsController)
  {
    self->_contactSearchResultsController = 0;

    chromeViewController = [(CarNavigationShareTripModeController *)self chromeViewController];
    [chromeViewController updateCardsForContext:self animated:1];
  }
}

- (void)carCardViewCloseButtonTapped:(id)tapped
{
  if (self->_contactSearchResultsController)
  {

    [(CarNavigationShareTripModeController *)self _closeResultsController];
  }

  else
  {
    chromeViewController = [(CarNavigationShareTripModeController *)self chromeViewController];
    [chromeViewController captureUserAction:4 onTarget:1019];

    v5 = +[CarChromeModeCoordinator sharedInstance];
    [v5 popFromContext:self];
  }
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"ShareTripContactResults"])
  {
    [cardCopy setContent:self->_contactSearchResultsController];
    title = [(CarNavigationShareTripViewController *)self->_contactSearchResultsController title];
    [cardCopy setTitle:title];
  }

  else
  {
    if (![keyCopy isEqualToString:@"ShareTrip"])
    {
      goto LABEL_32;
    }

    suggestionsCardController = self->_suggestionsCardController;
    if (!suggestionsCardController)
    {
      v9 = [[_TtC4Maps36CarNavigationShareTripViewController alloc] initWithDelegate:self dataSource:self->_dataSource sharingIdentity:self->_sharingIdentity];
      v10 = self->_suggestionsCardController;
      self->_suggestionsCardController = v9;

      suggestionsCardController = self->_suggestionsCardController;
    }

    [cardCopy setContent:suggestionsCardController];
    title = +[NSBundle mainBundle];
    v11 = [title localizedStringForKey:@"CarPlay_ShareTrip_CardTitle" value:@"localized string not found" table:0];
    [cardCopy setTitle:v11];
  }

  [cardCopy setAccessoryType:1];
  v12 = objc_alloc_init(CarCardLayout);
  [(CarCardLayout *)v12 setEdgePosition:0];
  [(CarCardLayout *)v12 setCornerPosition:4];
  [(CarCardLayout *)v12 setPrimaryAxis:1];
  [(CarCardLayout *)v12 setPinnedEdges:0];
  [(CarCardLayout *)v12 setPrimaryAxisFillMode:3];
  LODWORD(v13) = 1148846080;
  [(CarCardLayout *)v12 setPrimaryAxisFillModePriority:v13];
  [(CarCardLayout *)v12 setSecondaryAxisFillMode:2];
  LODWORD(v14) = 1148846080;
  [(CarCardLayout *)v12 setSecondaryAxisFillModePriority:v14];
  [(CarCardLayout *)v12 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
  [(CarCardLayout *)v12 setFlipForRightHandDrive:1];
  v15 = v12;
  primaryAxis = [(CarCardLayout *)v15 primaryAxis];
  cornerPosition = [(CarCardLayout *)v15 cornerPosition];
  if (primaryAxis == 1)
  {
    if (cornerPosition == 4 || [(CarCardLayout *)v15 cornerPosition]== 1 || [(CarCardLayout *)v15 edgePosition]== 2)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    if ([(CarCardLayout *)v15 cornerPosition]== 8 || [(CarCardLayout *)v15 cornerPosition]== 2 || [(CarCardLayout *)v15 edgePosition]== 8)
    {
      v18 |= 2uLL;
    }

    if ([(CarCardLayout *)v15 edgePosition]== 1)
    {
      v18 |= 4uLL;
    }

    v19 = v18 | ([(CarCardLayout *)v15 edgePosition]== 4);
  }

  else
  {
    v19 = cornerPosition == 4 || [(CarCardLayout *)v15 cornerPosition]== 8 || [(CarCardLayout *)v15 edgePosition]== 4;
    if ([(CarCardLayout *)v15 cornerPosition]== 1 || [(CarCardLayout *)v15 cornerPosition]== 2 || [(CarCardLayout *)v15 edgePosition]== 1)
    {
      v19 |= 4uLL;
    }

    if ([(CarCardLayout *)v15 edgePosition]== 2)
    {
      v19 |= 8uLL;
    }

    if ([(CarCardLayout *)v15 edgePosition]== 8)
    {
      v19 |= 2uLL;
    }
  }

  [(CarCardLayout *)v15 setEdgesAffectingMapInsets:v19];
  [(CarCardLayout *)v15 setHorizontallyCenterMapInsets:0];
  [cardCopy setLayout:v15];

LABEL_32:
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006D3374;
  v4[3] = &unk_101661738;
  v4[4] = self;
  [animation addCompletion:v4];
}

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006D346C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006D34F4;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (void)_updateSharingFooterWithIdentity:(id)identity
{
  objc_storeStrong(&self->_sharingIdentity, identity);
  identityCopy = identity;
  [(CarNavigationShareTripViewController *)self->_suggestionsCardController setSharingIdentity:identityCopy];
  [(CarNavigationShareTripViewController *)self->_contactSearchResultsController setSharingIdentity:identityCopy];
}

- (void)_refreshSharingIdentity
{
  v3 = +[MSPSharedTripService sharedInstance];
  sharingIdentity = [v3 sharingIdentity];

  if (sharingIdentity)
  {
    [(CarNavigationShareTripModeController *)self _updateSharingFooterWithIdentity:sharingIdentity];
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = +[MSPSharedTripService sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1006D3720;
    v6[3] = &unk_10165CF80;
    objc_copyWeak(&v7, &location);
    [v5 refreshSharingIdentityWithCompletion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

+ (void)attemptToStartShareWithContact:(id)contact sharingIdentity:(id)identity interruptPresenter:(id)presenter completion:(id)completion
{
  identityCopy = identity;
  presenterCopy = presenter;
  completionCopy = completion;
  v12 = +[MSPSharedTripService sharedInstance];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1006D3930;
  v16[3] = &unk_1016269E0;
  v17 = identityCopy;
  v18 = presenterCopy;
  v19 = completionCopy;
  selfCopy = self;
  v13 = completionCopy;
  v14 = presenterCopy;
  v15 = identityCopy;
  [v12 fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:v16];
}

@end