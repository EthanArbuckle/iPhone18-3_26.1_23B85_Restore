@interface CarShareETAInfoView
- (BOOL)_shouldShowETASuggestion;
- (CarShareETAInfoView)initWithDelegate:(id)delegate interruptPresenter:(id)presenter;
- (CarShareETAInfoViewDelegate)delegate;
- (MapsInterruptionDisplay)interruptPresenter;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_startCompletionTimer;
- (void)_stopCompletionTimer;
- (void)_updateFooterContentWithSharingIdentity:(id)identity;
- (void)carShareTripContactCellDidFinishRingAnimation:(id)animation;
- (void)dealloc;
- (void)hideShareETASuggestion;
- (void)setContactSharingSuggestion:(id)suggestion;
- (void)shareTripButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateContent;
@end

@implementation CarShareETAInfoView

- (void)updateContent
{
  isShowingShareETASuggestion = [(CarShareETAInfoView *)self isShowingShareETASuggestion];
  if (isShowingShareETASuggestion)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (isShowingShareETASuggestion)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [(CarContentSizedTableView *)self->_shareETASuggestionTableView setAlpha:v4];
  [(CarShareTripFooterView *)self->_shareETASuggestionFooterView setAlpha:v4];
  [(CarFocusableButton *)self->_shareTripButton setAlpha:v5];
  [(NSLayoutConstraint *)self->_shareTripButtonBottomConstraint setActive:isShowingShareETASuggestion ^ 1];
  shareTripContactSuggestionBottomConstraint = self->_shareTripContactSuggestionBottomConstraint;

  [(NSLayoutConstraint *)shareTripContactSuggestionBottomConstraint setActive:isShowingShareETASuggestion];
}

- (BOOL)_shouldShowETASuggestion
{
  if (self->_contact)
  {
    v3 = +[MSPSharedTripService sharedInstance];
    receivers = [v3 receivers];
    v5 = (![receivers count] || self->_completionTimer) && !self->_shareETACompleted;
  }

  else
  {
    return 0;
  }

  return v5;
}

- (MapsInterruptionDisplay)interruptPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_interruptPresenter);

  return WeakRetained;
}

- (CarShareETAInfoViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)focusOrderSubItems
{
  if ([(CarShareETAInfoView *)self _shouldShowETASuggestion])
  {
    _car_visibleCells = [(CarTableView *)self->_shareETASuggestionTableView _car_visibleCells];
  }

  else
  {
    shareTripButton = self->_shareTripButton;
    _car_visibleCells = [NSArray arrayWithObjects:&shareTripButton count:1];
  }

  return _car_visibleCells;
}

- (NSArray)preferredFocusEnvironments
{
  if ([(CarShareETAInfoView *)self _shouldShowETASuggestion])
  {
    shareETASuggestionTableView = self->_shareETASuggestionTableView;
    p_shareETASuggestionTableView = &shareETASuggestionTableView;
  }

  else
  {
    shareTripButton = self->_shareTripButton;
    p_shareETASuggestionTableView = &shareTripButton;
  }

  v4 = [NSArray arrayWithObjects:p_shareETASuggestionTableView count:1];

  return v4;
}

- (void)carShareTripContactCellDidFinishRingAnimation:(id)animation
{
  animationCopy = animation;
  v5 = self->_contact;
  objc_initWeak(&location, self);
  v6 = +[MSPSharedTripService sharedInstance];
  v7 = [v6 isSharingWithContact:v5];

  v8 = +[MSPSharedTripService sharedInstance];
  if (v7)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100F135C0;
    v19[3] = &unk_10165D288;
    v20 = animationCopy;
    objc_copyWeak(&v21, &location);
    [v8 stopSharingWithContact:v5 completion:v19];
    v9 = &v20;

    objc_destroyWeak(&v21);
  }

  else
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100F13628;
    v15 = &unk_10165CFD0;
    v10 = v5;
    v16 = v10;
    v17 = animationCopy;
    objc_copyWeak(&v18, &location);
    [v8 startSharingWithContact:v10 completion:&v12];

    v11 = [SharedTripSuggestionsCache sharedInstance:v12];
    [v11 provideFeedbackForContact:v10];
    v9 = &v16;

    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&location);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  sharingState = [v8 sharingState];
  if (sharingState == 1)
  {
    [v8 setSharingState:0 animated:0];
  }

  else if (sharingState)
  {
    objc_initWeak(&location, self);
    v14 = +[MSPSharedTripService sharedInstance];
    contact = self->_contact;
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100F1395C;
    v20 = &unk_10165D288;
    v21 = v8;
    objc_copyWeak(&v22, &location);
    [v14 stopSharingWithContact:contact completion:&v17];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = self->_contact;
    v11 = +[MSPSharedTripService sharedInstance];
    sharingIdentity = [v11 sharingIdentity];
    WeakRetained = objc_loadWeakRetained(&self->_interruptPresenter);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100F1394C;
    v24[3] = &unk_101661B18;
    v25 = v8;
    [CarNavigationShareTripModeController attemptToStartShareWithContact:v10 sharingIdentity:sharingIdentity interruptPresenter:WeakRetained completion:v24];
  }

  v16 = [NSNotificationCenter defaultCenter:v17];
  [v16 postNotificationName:@"CarShareETAInfoViewDidInteractWithShareETASuggestionNotification" object:self];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100F13B28;
  v21 = sub_100F13B38;
  v22 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100F13B40;
  v12[3] = &unk_10165CFA8;
  v16 = &v17;
  v8 = viewCopy;
  v13 = v8;
  v9 = pathCopy;
  v14 = v9;
  selfCopy = self;
  [UIView performWithoutAnimation:v12];
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

- (void)shareTripButtonTapped:(id)tapped
{
  delegate = [(CarShareETAInfoView *)self delegate];
  [delegate infoViewDidTapShareTripButton:self];
}

- (void)setContactSharingSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v6 = self->_contact;
  v7 = suggestionCopy;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      _shouldShowETASuggestion = [(CarShareETAInfoView *)self _shouldShowETASuggestion];
      objc_storeStrong(&self->_contact, suggestion);
      _shouldShowETASuggestion2 = [(CarShareETAInfoView *)self _shouldShowETASuggestion];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100F13E74;
      v12[3] = &unk_101661B18;
      v12[4] = self;
      [UIView performWithoutAnimation:v12];
      [(CarShareETAInfoView *)self invalidateIntrinsicContentSize];
      if (_shouldShowETASuggestion != _shouldShowETASuggestion2)
      {
        v11 = +[NSNotificationCenter defaultCenter];
        [v11 postNotificationName:@"CarShareETAInfoViewDidChangeShareETASuggestionVisibilityNotification" object:self];

        if (_shouldShowETASuggestion2)
        {
          [GEOAPPortal captureUserAction:45 target:126 value:0];
        }
      }
    }
  }
}

- (void)_stopCompletionTimer
{
  [(GCDTimer *)self->_completionTimer invalidate];
  completionTimer = self->_completionTimer;
  self->_completionTimer = 0;
}

- (void)_startCompletionTimer
{
  objc_initWeak(&location, self);
  GEOConfigGetDouble();
  v4 = v3;
  v5 = &_dispatch_main_q;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100F1402C;
  v8[3] = &unk_1016616E8;
  objc_copyWeak(&v9, &location);
  v6 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v8 block:v4];
  completionTimer = self->_completionTimer;
  self->_completionTimer = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_updateFooterContentWithSharingIdentity:(id)identity
{
  identityCopy = identity;
  v8 = identityCopy;
  if (identityCopy)
  {
    name = [identityCopy name];
    [(CarShareTripFooterView *)self->_shareETASuggestionFooterView setNameText:name];

    handle = [v8 handle];
    v7 = [NSString localizedStringWithFormat:@"(%@)", handle];
    [(CarShareTripFooterView *)self->_shareETASuggestionFooterView setHandleText:v7];
  }

  else
  {
    [(CarShareTripFooterView *)self->_shareETASuggestionFooterView setNameText:0];
    [(CarShareTripFooterView *)self->_shareETASuggestionFooterView setHandleText:0];
  }
}

- (void)hideShareETASuggestion
{
  [(CarShareETAInfoView *)self _stopCompletionTimer];
  self->_shareETACompleted = 1;
  [(CarShareETAInfoView *)self updateContent];
  shareETASuggestionTableView = self->_shareETASuggestionTableView;

  [(CarContentSizedTableView *)shareETASuggestionTableView reloadData];
}

- (id)viewForLastBaselineLayout
{
  _shouldShowETASuggestion = [(CarShareETAInfoView *)self _shouldShowETASuggestion];
  v4 = &OBJC_IVAR___CarShareETAInfoView__shareTripButton;
  if (_shouldShowETASuggestion)
  {
    v4 = &OBJC_IVAR___CarShareETAInfoView__shareETASuggestionFooterView;
  }

  v5 = *(&self->super.super.super.isa + *v4);

  return v5;
}

- (id)viewForFirstBaselineLayout
{
  _shouldShowETASuggestion = [(CarShareETAInfoView *)self _shouldShowETASuggestion];
  v4 = &OBJC_IVAR___CarShareETAInfoView__shareTripButton;
  if (_shouldShowETASuggestion)
  {
    v4 = &OBJC_IVAR___CarShareETAInfoView__shareETASuggestionTableView;
  }

  v5 = *(&self->super.super.super.isa + *v4);

  return v5;
}

- (void)dealloc
{
  v3 = +[MSPSharedTripService sharedInstance];
  [v3 removeSendingObserver:self];

  v4.receiver = self;
  v4.super_class = CarShareETAInfoView;
  [(CarShareETAInfoView *)&v4 dealloc];
}

- (CarShareETAInfoView)initWithDelegate:(id)delegate interruptPresenter:(id)presenter
{
  obj = delegate;
  presenterCopy = presenter;
  v92.receiver = self;
  v92.super_class = CarShareETAInfoView;
  v6 = [(CarShareETAInfoView *)&v92 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, obj);
    objc_storeWeak(&v7->_interruptPresenter, presenterCopy);
    [(CarShareETAInfoView *)v7 setAccessibilityIdentifier:@"CarShareETAInfoView"];
    v87 = +[NSMutableArray array];
    v8 = [CarFocusableButton alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(CarFocusableButton *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
    shareTripButton = v7->_shareTripButton;
    v7->_shareTripButton = height;

    [(CarFocusableButton *)v7->_shareTripButton setAccessibilityIdentifier:@"ShareTripButton"];
    [(CarFocusableButton *)v7->_shareTripButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarFocusableButton *)v7->_shareTripButton setModifiesBackgroundColor:1];
    [(CarFocusableButton *)v7->_shareTripButton setAlpha:1.0];
    titleLabel = [(CarFocusableButton *)v7->_shareTripButton titleLabel];
    v15 = [UIFont systemFontOfSize:12.0];
    [titleLabel setFont:v15];

    titleLabel2 = [(CarFocusableButton *)v7->_shareTripButton titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    titleLabel3 = [(CarFocusableButton *)v7->_shareTripButton titleLabel];
    [titleLabel3 setMinimumScaleFactor:0.833333333];

    if (_os_feature_enabled_impl())
    {
      titleLabel4 = [(CarFocusableButton *)v7->_shareTripButton titleLabel];
      v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
      [titleLabel4 setFont:v19];

      titleLabel5 = [(CarFocusableButton *)v7->_shareTripButton titleLabel];
      [titleLabel5 setAdjustsFontForContentSizeCategory:1];
    }

    v88 = [CarHairlineView hairlineViewAlongAxis:0];
    [(CarFocusableButton *)v7->_shareTripButton setContentEdgeInsets:0.0, 6.0, 0.0, 6.0];
    [(CarFocusableButton *)v7->_shareTripButton addSubview:v88];
    [(CarFocusableButton *)v7->_shareTripButton addTarget:v7 action:"shareTripButtonTapped:" forControlEvents:64];
    [(CarShareETAInfoView *)v7 addSubview:v7->_shareTripButton];
    bottomAnchor = [(CarFocusableButton *)v7->_shareTripButton bottomAnchor];
    bottomAnchor2 = [(CarShareETAInfoView *)v7 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    shareTripButtonBottomConstraint = v7->_shareTripButtonBottomConstraint;
    v7->_shareTripButtonBottomConstraint = v23;

    topAnchor = [v88 topAnchor];
    topAnchor2 = [(CarFocusableButton *)v7->_shareTripButton topAnchor];
    v77 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v95[0] = v77;
    leadingAnchor = [v88 leadingAnchor];
    leadingAnchor2 = [(CarFocusableButton *)v7->_shareTripButton leadingAnchor];
    v74 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v95[1] = v74;
    trailingAnchor = [v88 trailingAnchor];
    trailingAnchor2 = [(CarFocusableButton *)v7->_shareTripButton trailingAnchor];
    v71 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v95[2] = v71;
    leadingAnchor3 = [(CarFocusableButton *)v7->_shareTripButton leadingAnchor];
    leadingAnchor4 = [(CarShareETAInfoView *)v7 leadingAnchor];
    v68 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v95[3] = v68;
    trailingAnchor3 = [(CarFocusableButton *)v7->_shareTripButton trailingAnchor];
    trailingAnchor4 = [(CarShareETAInfoView *)v7 trailingAnchor];
    v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v95[4] = v27;
    topAnchor3 = [(CarFocusableButton *)v7->_shareTripButton topAnchor];
    topAnchor4 = [(CarShareETAInfoView *)v7 topAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v95[5] = v30;
    v95[6] = v7->_shareTripButtonBottomConstraint;
    heightAnchor = [(CarFocusableButton *)v7->_shareTripButton heightAnchor];
    v32 = [heightAnchor constraintEqualToConstant:28.0];
    v95[7] = v32;
    v33 = [NSArray arrayWithObjects:v95 count:8];
    [v87 addObjectsFromArray:v33];

    height2 = [[CarContentSizedTableView alloc] initWithFrame:0 style:CGRectZero.origin.x, y, width, height];
    shareETASuggestionTableView = v7->_shareETASuggestionTableView;
    v7->_shareETASuggestionTableView = height2;

    [(CarContentSizedTableView *)v7->_shareETASuggestionTableView setAccessibilityIdentifier:@"ShareETASuggestionTableView"];
    [(CarContentSizedTableView *)v7->_shareETASuggestionTableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarContentSizedTableView *)v7->_shareETASuggestionTableView setDataSource:v7];
    [(CarContentSizedTableView *)v7->_shareETASuggestionTableView setDelegate:v7];
    [(CarContentSizedTableView *)v7->_shareETASuggestionTableView setAlpha:0.0];
    v36 = +[UIColor clearColor];
    [(CarContentSizedTableView *)v7->_shareETASuggestionTableView setBackgroundColor:v36];

    [(CarContentSizedTableView *)v7->_shareETASuggestionTableView setRowHeight:UITableViewAutomaticDimension];
    LODWORD(v37) = 1148846080;
    [(CarContentSizedTableView *)v7->_shareETASuggestionTableView setContentCompressionResistancePriority:1 forAxis:v37];
    v38 = v7->_shareETASuggestionTableView;
    v39 = objc_opt_class();
    v40 = +[CarShareTripContactCell reuseIdentifier];
    [(CarContentSizedTableView *)v38 registerClass:v39 forCellReuseIdentifier:v40];

    [(CarShareETAInfoView *)v7 addSubview:v7->_shareETASuggestionTableView];
    leadingAnchor5 = [(CarContentSizedTableView *)v7->_shareETASuggestionTableView leadingAnchor];
    leadingAnchor6 = [(CarShareETAInfoView *)v7 leadingAnchor];
    v41 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v94[0] = v41;
    trailingAnchor5 = [(CarContentSizedTableView *)v7->_shareETASuggestionTableView trailingAnchor];
    trailingAnchor6 = [(CarShareETAInfoView *)v7 trailingAnchor];
    v44 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v94[1] = v44;
    topAnchor5 = [(CarContentSizedTableView *)v7->_shareETASuggestionTableView topAnchor];
    topAnchor6 = [(CarShareETAInfoView *)v7 topAnchor];
    v47 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v94[2] = v47;
    v48 = [NSArray arrayWithObjects:v94 count:3];
    [v87 addObjectsFromArray:v48];

    height3 = [[CarShareTripFooterView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    shareETASuggestionFooterView = v7->_shareETASuggestionFooterView;
    v7->_shareETASuggestionFooterView = height3;

    [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v51) = 1148846080;
    [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView setContentCompressionResistancePriority:1 forAxis:v51];
    [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView setAlpha:0.0];
    v52 = +[MSPSharedTripService sharedInstance];
    sharingIdentity = [v52 sharingIdentity];
    [(CarShareETAInfoView *)v7 _updateFooterContentWithSharingIdentity:sharingIdentity];

    [(CarShareETAInfoView *)v7 addSubview:v7->_shareETASuggestionFooterView];
    topAnchor7 = [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView topAnchor];
    bottomAnchor3 = [(CarContentSizedTableView *)v7->_shareETASuggestionTableView bottomAnchor];
    v78 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3];
    v93[0] = v78;
    leadingAnchor7 = [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView leadingAnchor];
    leadingAnchor8 = [(CarContentSizedTableView *)v7->_shareETASuggestionTableView leadingAnchor];
    v56 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v93[1] = v56;
    trailingAnchor7 = [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView trailingAnchor];
    trailingAnchor8 = [(CarContentSizedTableView *)v7->_shareETASuggestionTableView trailingAnchor];
    v59 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v93[2] = v59;
    v60 = [NSArray arrayWithObjects:v93 count:3];
    [v87 addObjectsFromArray:v60];

    bottomAnchor4 = [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView bottomAnchor];
    bottomAnchor5 = [(CarShareETAInfoView *)v7 bottomAnchor];
    v63 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-10.0];
    shareTripContactSuggestionBottomConstraint = v7->_shareTripContactSuggestionBottomConstraint;
    v7->_shareTripContactSuggestionBottomConstraint = v63;

    v65 = +[MSPSharedTripService sharedInstance];
    [v65 addSendingObserver:v7];

    objc_initWeak(&location, v7);
    v66 = +[MSPSharedTripService sharedInstance];
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_100F14DA0;
    v89[3] = &unk_10165CF80;
    objc_copyWeak(&v90, &location);
    [v66 refreshSharingIdentityWithCompletion:v89];

    [NSLayoutConstraint activateConstraints:v87];
    objc_destroyWeak(&v90);
    objc_destroyWeak(&location);
  }

  return v7;
}

@end