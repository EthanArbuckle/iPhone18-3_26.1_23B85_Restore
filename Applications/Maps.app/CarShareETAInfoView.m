@interface CarShareETAInfoView
- (BOOL)_shouldShowETASuggestion;
- (CarShareETAInfoView)initWithDelegate:(id)a3 interruptPresenter:(id)a4;
- (CarShareETAInfoViewDelegate)delegate;
- (MapsInterruptionDisplay)interruptPresenter;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_startCompletionTimer;
- (void)_stopCompletionTimer;
- (void)_updateFooterContentWithSharingIdentity:(id)a3;
- (void)carShareTripContactCellDidFinishRingAnimation:(id)a3;
- (void)dealloc;
- (void)hideShareETASuggestion;
- (void)setContactSharingSuggestion:(id)a3;
- (void)shareTripButtonTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateContent;
@end

@implementation CarShareETAInfoView

- (void)updateContent
{
  v3 = [(CarShareETAInfoView *)self isShowingShareETASuggestion];
  if (v3)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (v3)
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
  [(NSLayoutConstraint *)self->_shareTripButtonBottomConstraint setActive:v3 ^ 1];
  shareTripContactSuggestionBottomConstraint = self->_shareTripContactSuggestionBottomConstraint;

  [(NSLayoutConstraint *)shareTripContactSuggestionBottomConstraint setActive:v3];
}

- (BOOL)_shouldShowETASuggestion
{
  if (self->_contact)
  {
    v3 = +[MSPSharedTripService sharedInstance];
    v4 = [v3 receivers];
    v5 = (![v4 count] || self->_completionTimer) && !self->_shareETACompleted;
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
    v3 = [(CarTableView *)self->_shareETASuggestionTableView _car_visibleCells];
  }

  else
  {
    shareTripButton = self->_shareTripButton;
    v3 = [NSArray arrayWithObjects:&shareTripButton count:1];
  }

  return v3;
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

- (void)carShareTripContactCellDidFinishRingAnimation:(id)a3
{
  v4 = a3;
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
    v20 = v4;
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
    v17 = v4;
    objc_copyWeak(&v18, &location);
    [v8 startSharingWithContact:v10 completion:&v12];

    v11 = [SharedTripSuggestionsCache sharedInstance:v12];
    [v11 provideFeedbackForContact:v10];
    v9 = &v16;

    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&location);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:0];
  v8 = [v6 cellForRowAtIndexPath:v7];
  v9 = [v8 sharingState];
  if (v9 == 1)
  {
    [v8 setSharingState:0 animated:0];
  }

  else if (v9)
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
    v12 = [v11 sharingIdentity];
    WeakRetained = objc_loadWeakRetained(&self->_interruptPresenter);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100F1394C;
    v24[3] = &unk_101661B18;
    v25 = v8;
    [CarNavigationShareTripModeController attemptToStartShareWithContact:v10 sharingIdentity:v12 interruptPresenter:WeakRetained completion:v24];
  }

  v16 = [NSNotificationCenter defaultCenter:v17];
  [v16 postNotificationName:@"CarShareETAInfoViewDidInteractWithShareETASuggestionNotification" object:self];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = self;
  [UIView performWithoutAnimation:v12];
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

- (void)shareTripButtonTapped:(id)a3
{
  v4 = [(CarShareETAInfoView *)self delegate];
  [v4 infoViewDidTapShareTripButton:self];
}

- (void)setContactSharingSuggestion:(id)a3
{
  v5 = a3;
  v6 = self->_contact;
  v7 = v5;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(CarShareETAInfoView *)self _shouldShowETASuggestion];
      objc_storeStrong(&self->_contact, a3);
      v10 = [(CarShareETAInfoView *)self _shouldShowETASuggestion];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100F13E74;
      v12[3] = &unk_101661B18;
      v12[4] = self;
      [UIView performWithoutAnimation:v12];
      [(CarShareETAInfoView *)self invalidateIntrinsicContentSize];
      if (v9 != v10)
      {
        v11 = +[NSNotificationCenter defaultCenter];
        [v11 postNotificationName:@"CarShareETAInfoViewDidChangeShareETASuggestionVisibilityNotification" object:self];

        if (v10)
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

- (void)_updateFooterContentWithSharingIdentity:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v5 = [v4 name];
    [(CarShareTripFooterView *)self->_shareETASuggestionFooterView setNameText:v5];

    v6 = [v8 handle];
    v7 = [NSString localizedStringWithFormat:@"(%@)", v6];
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
  v3 = [(CarShareETAInfoView *)self _shouldShowETASuggestion];
  v4 = &OBJC_IVAR___CarShareETAInfoView__shareTripButton;
  if (v3)
  {
    v4 = &OBJC_IVAR___CarShareETAInfoView__shareETASuggestionFooterView;
  }

  v5 = *(&self->super.super.super.isa + *v4);

  return v5;
}

- (id)viewForFirstBaselineLayout
{
  v3 = [(CarShareETAInfoView *)self _shouldShowETASuggestion];
  v4 = &OBJC_IVAR___CarShareETAInfoView__shareTripButton;
  if (v3)
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

- (CarShareETAInfoView)initWithDelegate:(id)a3 interruptPresenter:(id)a4
{
  obj = a3;
  v86 = a4;
  v92.receiver = self;
  v92.super_class = CarShareETAInfoView;
  v6 = [(CarShareETAInfoView *)&v92 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, obj);
    objc_storeWeak(&v7->_interruptPresenter, v86);
    [(CarShareETAInfoView *)v7 setAccessibilityIdentifier:@"CarShareETAInfoView"];
    v87 = +[NSMutableArray array];
    v8 = [CarFocusableButton alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v12 = [(CarFocusableButton *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
    shareTripButton = v7->_shareTripButton;
    v7->_shareTripButton = v12;

    [(CarFocusableButton *)v7->_shareTripButton setAccessibilityIdentifier:@"ShareTripButton"];
    [(CarFocusableButton *)v7->_shareTripButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarFocusableButton *)v7->_shareTripButton setModifiesBackgroundColor:1];
    [(CarFocusableButton *)v7->_shareTripButton setAlpha:1.0];
    v14 = [(CarFocusableButton *)v7->_shareTripButton titleLabel];
    v15 = [UIFont systemFontOfSize:12.0];
    [v14 setFont:v15];

    v16 = [(CarFocusableButton *)v7->_shareTripButton titleLabel];
    [v16 setAdjustsFontSizeToFitWidth:1];

    v17 = [(CarFocusableButton *)v7->_shareTripButton titleLabel];
    [v17 setMinimumScaleFactor:0.833333333];

    if (_os_feature_enabled_impl())
    {
      v18 = [(CarFocusableButton *)v7->_shareTripButton titleLabel];
      v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
      [v18 setFont:v19];

      v20 = [(CarFocusableButton *)v7->_shareTripButton titleLabel];
      [v20 setAdjustsFontForContentSizeCategory:1];
    }

    v88 = [CarHairlineView hairlineViewAlongAxis:0];
    [(CarFocusableButton *)v7->_shareTripButton setContentEdgeInsets:0.0, 6.0, 0.0, 6.0];
    [(CarFocusableButton *)v7->_shareTripButton addSubview:v88];
    [(CarFocusableButton *)v7->_shareTripButton addTarget:v7 action:"shareTripButtonTapped:" forControlEvents:64];
    [(CarShareETAInfoView *)v7 addSubview:v7->_shareTripButton];
    v21 = [(CarFocusableButton *)v7->_shareTripButton bottomAnchor];
    v22 = [(CarShareETAInfoView *)v7 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    shareTripButtonBottomConstraint = v7->_shareTripButtonBottomConstraint;
    v7->_shareTripButtonBottomConstraint = v23;

    v82 = [v88 topAnchor];
    v79 = [(CarFocusableButton *)v7->_shareTripButton topAnchor];
    v77 = [v82 constraintEqualToAnchor:v79];
    v95[0] = v77;
    v76 = [v88 leadingAnchor];
    v75 = [(CarFocusableButton *)v7->_shareTripButton leadingAnchor];
    v74 = [v76 constraintEqualToAnchor:v75];
    v95[1] = v74;
    v73 = [v88 trailingAnchor];
    v72 = [(CarFocusableButton *)v7->_shareTripButton trailingAnchor];
    v71 = [v73 constraintEqualToAnchor:v72];
    v95[2] = v71;
    v70 = [(CarFocusableButton *)v7->_shareTripButton leadingAnchor];
    v69 = [(CarShareETAInfoView *)v7 leadingAnchor];
    v68 = [v70 constraintEqualToAnchor:v69];
    v95[3] = v68;
    v25 = [(CarFocusableButton *)v7->_shareTripButton trailingAnchor];
    v26 = [(CarShareETAInfoView *)v7 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v95[4] = v27;
    v28 = [(CarFocusableButton *)v7->_shareTripButton topAnchor];
    v29 = [(CarShareETAInfoView *)v7 topAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v95[5] = v30;
    v95[6] = v7->_shareTripButtonBottomConstraint;
    v31 = [(CarFocusableButton *)v7->_shareTripButton heightAnchor];
    v32 = [v31 constraintEqualToConstant:28.0];
    v95[7] = v32;
    v33 = [NSArray arrayWithObjects:v95 count:8];
    [v87 addObjectsFromArray:v33];

    v34 = [[CarContentSizedTableView alloc] initWithFrame:0 style:CGRectZero.origin.x, y, width, height];
    shareETASuggestionTableView = v7->_shareETASuggestionTableView;
    v7->_shareETASuggestionTableView = v34;

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
    v83 = [(CarContentSizedTableView *)v7->_shareETASuggestionTableView leadingAnchor];
    v80 = [(CarShareETAInfoView *)v7 leadingAnchor];
    v41 = [v83 constraintEqualToAnchor:v80];
    v94[0] = v41;
    v42 = [(CarContentSizedTableView *)v7->_shareETASuggestionTableView trailingAnchor];
    v43 = [(CarShareETAInfoView *)v7 trailingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v94[1] = v44;
    v45 = [(CarContentSizedTableView *)v7->_shareETASuggestionTableView topAnchor];
    v46 = [(CarShareETAInfoView *)v7 topAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    v94[2] = v47;
    v48 = [NSArray arrayWithObjects:v94 count:3];
    [v87 addObjectsFromArray:v48];

    v49 = [[CarShareTripFooterView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    shareETASuggestionFooterView = v7->_shareETASuggestionFooterView;
    v7->_shareETASuggestionFooterView = v49;

    [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v51) = 1148846080;
    [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView setContentCompressionResistancePriority:1 forAxis:v51];
    [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView setAlpha:0.0];
    v52 = +[MSPSharedTripService sharedInstance];
    v53 = [v52 sharingIdentity];
    [(CarShareETAInfoView *)v7 _updateFooterContentWithSharingIdentity:v53];

    [(CarShareETAInfoView *)v7 addSubview:v7->_shareETASuggestionFooterView];
    v84 = [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView topAnchor];
    v81 = [(CarContentSizedTableView *)v7->_shareETASuggestionTableView bottomAnchor];
    v78 = [v84 constraintEqualToAnchor:v81];
    v93[0] = v78;
    v54 = [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView leadingAnchor];
    v55 = [(CarContentSizedTableView *)v7->_shareETASuggestionTableView leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];
    v93[1] = v56;
    v57 = [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView trailingAnchor];
    v58 = [(CarContentSizedTableView *)v7->_shareETASuggestionTableView trailingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    v93[2] = v59;
    v60 = [NSArray arrayWithObjects:v93 count:3];
    [v87 addObjectsFromArray:v60];

    v61 = [(CarShareTripFooterView *)v7->_shareETASuggestionFooterView bottomAnchor];
    v62 = [(CarShareETAInfoView *)v7 bottomAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:-10.0];
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