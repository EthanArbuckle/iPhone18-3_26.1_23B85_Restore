@interface CarNavigationShareTripModeController
+ (void)attemptToStartShareWithContact:(id)a3 sharingIdentity:(id)a4 interruptPresenter:(id)a5 completion:(id)a6;
- (CarNavigationShareTripModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (id)desiredCards;
- (void)_attemptToStartShareWithContact:(id)a3 fromController:(id)a4;
- (void)_cancelDismiss;
- (void)_closeResultsController;
- (void)_commitPendingShares;
- (void)_dismissAfterDelay;
- (void)_displayContactResults:(id)a3 withTitle:(id)a4;
- (void)_externalDeviceUpdated:(id)a3;
- (void)_handleContactSearchResults:(id)a3 query:(id)a4;
- (void)_refreshSharingIdentity;
- (void)_requestDictation;
- (void)_requestKeyboardInputUsingInteractionModel:(unint64_t)a3;
- (void)_updateSharingFooterWithIdentity:(id)a3;
- (void)_updateWithSharingIdentity:(id)a3;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)carCardViewCloseButtonTapped:(id)a3;
- (void)carNavigationShareTripViewController:(id)a3 didStartSharingWithContact:(id)a4;
- (void)carNavigationShareTripViewController:(id)a3 didStopSharingWithContact:(id)a4;
- (void)carNavigationShareTripViewController:(id)a3 wantsToStartSharingWithContact:(id)a4;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)sharedTripServiceDidUpdateSendingAvailability:(id)a3;
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

- (void)carNavigationShareTripViewController:(id)a3 didStopSharingWithContact:(id)a4
{
  v6 = a4;
  [(CarNavigationShareTripModeController *)self _cancelDismiss];
  if (([(SharedTripSuggestionsDataSource *)self->_dataSource sharingStateForContact:v6]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = [(CarNavigationShareTripModeController *)self chromeViewController];
    [v5 captureUserAction:9026];

    [(SharedTripSuggestionsDataSource *)self->_dataSource toggleContact:v6];
  }
}

- (void)carNavigationShareTripViewController:(id)a3 didStartSharingWithContact:(id)a4
{
  v5 = a4;
  [(CarNavigationShareTripModeController *)self _dismissAfterDelay];
  if (![(SharedTripSuggestionsDataSource *)self->_dataSource sharingStateForContact:v5])
  {
    [(SharedTripSuggestionsDataSource *)self->_dataSource toggleContact:v5];
  }
}

- (void)carNavigationShareTripViewController:(id)a3 wantsToStartSharingWithContact:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self->_suggestionsCardController == v7)
  {
    self->_userInteracted = 1;
  }

  [(CarNavigationShareTripModeController *)self _cancelDismiss];
  if (![(SharedTripSuggestionsDataSource *)self->_dataSource sharingStateForContact:v6])
  {
    [(CarNavigationShareTripModeController *)self _attemptToStartShareWithContact:v6 fromController:v7];
  }
}

- (void)_attemptToStartShareWithContact:(id)a3 fromController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 stringValue];
  if (v8)
  {
    objc_initWeak(&location, self);
    v9 = objc_opt_class();
    sharingIdentity = self->_sharingIdentity;
    v11 = [(CarNavigationShareTripModeController *)self chromeViewController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1006D24D0;
    v12[3] = &unk_101661480;
    objc_copyWeak(&v15, &location);
    v13 = v7;
    v14 = v8;
    [v9 attemptToStartShareWithContact:v6 sharingIdentity:sharingIdentity interruptPresenter:v11 completion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_updateWithSharingIdentity:(id)a3
{
  v4 = a3;
  [(CarNavigationShareTripModeController *)self _updateSharingFooterWithIdentity:v4];
  v5 = [v4 hasValidAccount];

  if ((v5 & 1) == 0)
  {
    v6 = +[CarChromeModeCoordinator sharedInstance];
    [v6 popFromContext:self];
  }
}

- (void)sharedTripServiceDidUpdateSendingAvailability:(id)a3
{
  v4 = [a3 sharingIdentity];
  [(CarNavigationShareTripModeController *)self _updateWithSharingIdentity:v4];
}

- (void)_handleContactSearchResults:(id)a3 query:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  v9 = sub_1000946AC();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (!v10)
    {
LABEL_20:

      v23 = +[NSBundle mainBundle];
      v9 = [v23 localizedStringForKey:@"CarPlay_ShareTrip_ContactResultsTitle" value:@"localized string not found" table:0];

      v24 = [NSString localizedStringWithFormat:v9, v7];
      [(CarNavigationShareTripModeController *)self _displayContactResults:v6 withTitle:v24];

      goto LABEL_23;
    }

    v11 = self;
    if (!v11)
    {
      v16 = @"<nil>";
      goto LABEL_19;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(CarNavigationShareTripModeController *)v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_9;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_9:

LABEL_19:
    *buf = 138543618;
    v27 = v16;
    v28 = 2048;
    v29 = [v6 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}@] [Keyboard] Displaying %lu contact results", buf, 0x16u);

    goto LABEL_20;
  }

  if (v10)
  {
    v17 = self;
    if (!v17)
    {
      v22 = @"<nil>";
      goto LABEL_22;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(CarNavigationShareTripModeController *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_17;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_17:

LABEL_22:
    *buf = 138543362;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}@] [Keyboard] No contact results", buf, 0xCu);
  }

LABEL_23:

  v25 = [(CarNavigationShareTripModeController *)self chromeViewController];
  [v25 popToContext:self animated:1 completion:0];
}

- (void)_requestKeyboardInputUsingInteractionModel:(unint64_t)a3
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
  [v5 displayTripSharingContactKeyboardSearchWithInteractionModel:a3 dataSource:dataSource searchHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_displayContactResults:(id)a3 withTitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_TtC4Maps36CarNavigationShareTripViewController alloc] initWithDelegate:self dataSource:self->_dataSource sharingIdentity:self->_sharingIdentity searchResults:v7 searchQuery:v6];

  contactSearchResultsController = self->_contactSearchResultsController;
  self->_contactSearchResultsController = v8;

  v10 = [(CarNavigationShareTripModeController *)self chromeViewController];
  [v10 updateCardsForContext:self animated:1];
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

- (void)_externalDeviceUpdated:(id)a3
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

    v4 = [(CarNavigationShareTripModeController *)self chromeViewController];
    [v4 updateCardsForContext:self animated:1];
  }
}

- (void)carCardViewCloseButtonTapped:(id)a3
{
  if (self->_contactSearchResultsController)
  {

    [(CarNavigationShareTripModeController *)self _closeResultsController];
  }

  else
  {
    v4 = [(CarNavigationShareTripModeController *)self chromeViewController];
    [v4 captureUserAction:4 onTarget:1019];

    v5 = +[CarChromeModeCoordinator sharedInstance];
    [v5 popFromContext:self];
  }
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v20 = a3;
  v6 = a4;
  if ([v6 isEqualToString:@"ShareTripContactResults"])
  {
    [v20 setContent:self->_contactSearchResultsController];
    v7 = [(CarNavigationShareTripViewController *)self->_contactSearchResultsController title];
    [v20 setTitle:v7];
  }

  else
  {
    if (![v6 isEqualToString:@"ShareTrip"])
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

    [v20 setContent:suggestionsCardController];
    v7 = +[NSBundle mainBundle];
    v11 = [v7 localizedStringForKey:@"CarPlay_ShareTrip_CardTitle" value:@"localized string not found" table:0];
    [v20 setTitle:v11];
  }

  [v20 setAccessoryType:1];
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
  v16 = [(CarCardLayout *)v15 primaryAxis];
  v17 = [(CarCardLayout *)v15 cornerPosition];
  if (v16 == 1)
  {
    if (v17 == 4 || [(CarCardLayout *)v15 cornerPosition]== 1 || [(CarCardLayout *)v15 edgePosition]== 2)
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
    v19 = v17 == 4 || [(CarCardLayout *)v15 cornerPosition]== 8 || [(CarCardLayout *)v15 edgePosition]== 4;
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
  [v20 setLayout:v15];

LABEL_32:
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006D3374;
  v4[3] = &unk_101661738;
  v4[4] = self;
  [a4 addCompletion:v4];
}

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006D346C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006D34F4;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (void)_updateSharingFooterWithIdentity:(id)a3
{
  objc_storeStrong(&self->_sharingIdentity, a3);
  v5 = a3;
  [(CarNavigationShareTripViewController *)self->_suggestionsCardController setSharingIdentity:v5];
  [(CarNavigationShareTripViewController *)self->_contactSearchResultsController setSharingIdentity:v5];
}

- (void)_refreshSharingIdentity
{
  v3 = +[MSPSharedTripService sharedInstance];
  v4 = [v3 sharingIdentity];

  if (v4)
  {
    [(CarNavigationShareTripModeController *)self _updateSharingFooterWithIdentity:v4];
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

+ (void)attemptToStartShareWithContact:(id)a3 sharingIdentity:(id)a4 interruptPresenter:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = +[MSPSharedTripService sharedInstance];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1006D3930;
  v16[3] = &unk_1016269E0;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = a1;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  [v12 fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:v16];
}

@end