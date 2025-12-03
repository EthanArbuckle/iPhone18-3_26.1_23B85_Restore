@interface CNStarkContactsListViewController
+ (id)collectionViewLayoutWithFloatingHeaderViews:(BOOL)views contactListStyleApplier:(id)applier directionalLayoutMargins:(id)margins hasNoContacts:(id)contacts;
+ (id)makeContactsDisplayedProperties;
- (BOOL)deviceIsEnrolledInDirectActionExperiment;
- (BOOL)isSiriDirectActionTextExperimentGroup;
- (CNStarkContactsListViewController)init;
- (CNStarkContactsListViewController)initWithCollectionViewLayout:(id)layout;
- (CNStarkContactsListViewController)initWithDataSource:(id)source searchable:(BOOL)searchable environment:(id)environment shouldUseLargeTitle:(BOOL)title;
- (NSDirectionalEdgeInsets)viewDirectionalLayoutMargins;
- (double)headerViewWidthForSize:(CGSize)size;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)createCollectionView;
- (void)contactDataSourceDidChange:(id)change;
- (void)contactListViewController:(id)controller didSelectContact:(id)contact shouldScrollToContact:(BOOL)toContact;
- (void)dealloc;
- (void)handleSiriHeaderViewTap:(id)tap;
- (void)postMessageOverlayIfNecessary;
- (void)refreshTableViewHeaderWithSize:(CGSize)size;
- (void)sendSiriExperimentTriggerLoggingIfEligible;
- (void)setLimitedUI:(BOOL)i;
- (void)setupDataSource;
- (void)showContactListTableView;
- (void)showOverlayView;
- (void)updateLimitedUI;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CNStarkContactsListViewController

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CNStarkContactsListViewController;
  [(CNContactListViewController *)&v5 viewDidLayoutSubviews];
  if (![(CNStarkContactsListViewController *)self hadScrollAccessoryAtLastHeaderViewUpdate])
  {
    contactListTableView = [(CNStarkContactsListViewController *)self contactListTableView];
    v4 = [contactListTableView accessoryViewAtEdge:1];

    if (v4)
    {
      [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
    }
  }
}

- (void)contactListViewController:(id)controller didSelectContact:(id)contact shouldScrollToContact:(BOOL)toContact
{
  v21[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  dataSource = [(CNContactListViewController *)self dataSource];
  store = [dataSource store];
  identifier = [contactCopy identifier];

  v10 = +[CNStarkCardViewController descriptorForRequiredKeys];
  v21[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v18 = 0;
  v12 = [store unifiedContactWithIdentifier:identifier keysToFetch:v11 error:&v18];
  v13 = v18;

  if (v13)
  {
    v14 = CNUILogContactCard();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_fault_impl(&dword_199A75000, v14, OS_LOG_TYPE_FAULT, "Failed to refetch contact for CNStarkCardViewController, %@", buf, 0xCu);
    }
  }

  else
  {
    v15 = [CNStarkCardViewController alloc];
    displayedContactProperties = [(CNStarkContactsListViewController *)self displayedContactProperties];
    v14 = [(CNStarkCardViewController *)v15 initWithContact:v12 displayedContactProperties:displayedContactProperties];

    navigationController = [(CNStarkContactsListViewController *)self navigationController];
    [navigationController pushViewController:v14 animated:1];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = CNStarkContactsListViewController;
  v4 = [(CNContactListViewController *)&v7 collectionView:view cellForItemAtIndexPath:path];
  listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
  [listCellConfiguration setCornerRadius:14.0];
  [v4 setBackgroundConfiguration:listCellConfiguration];

  return v4;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:*MEMORY[0x1E69DDC08]])
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v12 forIndexPath:pathCopy];

    section = [pathCopy section];
    v15 = 4.0;
    if (!section)
    {
      v15 = 16.0;
    }

    [v13 setTopPadding:v15];
    v16 = -[CNContactListViewController titleForHeaderInSection:](self, "titleForHeaderInSection:", [pathCopy section]);
    [v13 setText:v16];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CNStarkContactsListViewController;
    v13 = [(CNContactListViewController *)&v18 collectionView:viewCopy viewForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
  }

  return v13;
}

- (void)showContactListTableView
{
  view = [(CNStarkContactsListViewController *)self view];
  contactListTableView = [(CNStarkContactsListViewController *)self contactListTableView];

  if (view != contactListTableView)
  {
    contactListTableView2 = [(CNStarkContactsListViewController *)self contactListTableView];
    [(CNStarkContactsListViewController *)self setCollectionView:contactListTableView2];

    contactListTableView3 = [(CNStarkContactsListViewController *)self contactListTableView];
    [(CNStarkContactsListViewController *)self setView:contactListTableView3];

    dataSource = [(CNContactListViewController *)self dataSource];
    contacts = [dataSource contacts];
    v9 = [contacts count];

    if (v9)
    {
      collectionView = [(CNStarkContactsListViewController *)self collectionView];
      v10 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      [collectionView scrollToItemAtIndexPath:v10 atScrollPosition:2 animated:0];
    }
  }
}

- (void)showOverlayView
{
  view = [(CNStarkContactsListViewController *)self view];
  overlayView = [(CNStarkContactsListViewController *)self overlayView];

  if (view != overlayView)
  {
    overlayView2 = [(CNStarkContactsListViewController *)self overlayView];
    [(CNStarkContactsListViewController *)self setView:overlayView2];
  }
}

- (void)postMessageOverlayIfNecessary
{
  if (-[CNStarkContactsListViewController limitedUI](self, "limitedUI") && (CNContactsUIBundle(), v3 = objc_claimAutoreleasedReturnValue(), [v3 localizedStringForKey:@"CONTACTS_ACCESS_LIMITED" value:&stru_1F0CE7398 table:@"Localized"], v13 = objc_claimAutoreleasedReturnValue(), v3, v13))
  {
    overlayView = [(CNStarkContactsListViewController *)self overlayView];

    if (!overlayView)
    {
      v5 = [CNStarkNoContentBannerView alloc];
      v6 = [(CNStarkNoContentBannerView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(CNStarkContactsListViewController *)self setOverlayView:v6];
    }

    overlayView2 = [(CNStarkContactsListViewController *)self overlayView];
    [overlayView2 setTitleString:v13];

    overlayView3 = [(CNStarkContactsListViewController *)self overlayView];
    [overlayView3 setSiriButtonEnabled:1];

    [(CNStarkContactsListViewController *)self showOverlayView];
  }

  else
  {
    dataSource = [(CNContactListViewController *)self dataSource];
    contacts = [dataSource contacts];
    v11 = [contacts count] == 0;
    listHeaderView = [(CNContactListViewController *)self listHeaderView];
    [listHeaderView setHidden:v11];

    [(CNStarkContactsListViewController *)self showContactListTableView];
  }
}

- (void)handleSiriHeaderViewTap:(id)tap
{
  v26[1] = *MEMORY[0x1E69E9840];
  tapCopy = tap;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v4 = getkAssistantDirectActionEventKeySymbolLoc_ptr;
  v24 = getkAssistantDirectActionEventKeySymbolLoc_ptr;
  if (!getkAssistantDirectActionEventKeySymbolLoc_ptr)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getkAssistantDirectActionEventKeySymbolLoc_block_invoke;
    v19 = &unk_1E74E7518;
    v20 = &v21;
    __getkAssistantDirectActionEventKeySymbolLoc_block_invoke(&v16);
    v4 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkAssistantDirectActionEventKey(void)"];
    [currentHandler handleFailureInFunction:v15 file:@"CNSiriSoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v25 = *v4;
  v26[0] = &unk_1F0D4B568;
  v5 = MEMORY[0x1E695DF20];
  v6 = v25;
  v7 = [v5 dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v8 = getSiriDirectActionContextClass_softClass;
  v24 = getSiriDirectActionContextClass_softClass;
  if (!getSiriDirectActionContextClass_softClass)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getSiriDirectActionContextClass_block_invoke;
    v19 = &unk_1E74E7518;
    v20 = &v21;
    __getSiriDirectActionContextClass_block_invoke(&v16);
    v8 = v22[3];
  }

  v9 = v8;
  _Block_object_dispose(&v21, 8);
  v10 = [[v8 alloc] initWithPayload:v7];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v11 = getSiriDirectActionSourceClass_softClass;
  v24 = getSiriDirectActionSourceClass_softClass;
  if (!getSiriDirectActionSourceClass_softClass)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getSiriDirectActionSourceClass_block_invoke;
    v19 = &unk_1E74E7518;
    v20 = &v21;
    __getSiriDirectActionSourceClass_block_invoke(&v16);
    v11 = v22[3];
  }

  v12 = v11;
  _Block_object_dispose(&v21, 8);
  v13 = objc_alloc_init(v11);
  [v13 activateWithContext:v10];
}

- (double)headerViewWidthForSize:(CGSize)size
{
  width = size.width;
  [(CNStarkContactsListViewController *)self viewDirectionalLayoutMargins:size.width];
  return width - v4 - v5;
}

- (BOOL)isSiriDirectActionTextExperimentGroup
{
  v11 = *MEMORY[0x1E69E9840];
  if (+[CNStarkUtilities vehicleHasBuiltInMic](CNStarkUtilities, "vehicleHasBuiltInMic") && +[CNStarkUtilities siriLanguageMatchesSystemLanguage])
  {
    [(TRIClient *)self->_trialClient refresh];
    v3 = [(TRIClient *)self->_trialClient levelForFactor:@"isHSSiriActionButtonPhone" withNamespaceName:@"SIRI_CARPLAY_JARVIS"];
    v4 = CNUILogStarkSiriExperiment();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      bOOLeanValue = [v3 BOOLeanValue];
      v6 = @"FALSE";
      if (bOOLeanValue)
      {
        v6 = @"TRUE";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_INFO, "#ABStarkExperiment The user is in the experimental group: %@", &v9, 0xCu);
    }

    bOOLeanValue2 = [v3 BOOLeanValue];
  }

  else
  {
    v3 = CNUILogStarkSiriExperiment();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "#ABStarkExperiment This vehicle or device isn't eligible for the experiment", &v9, 2u);
    }

    bOOLeanValue2 = 0;
  }

  return bOOLeanValue2;
}

- (void)refreshTableViewHeaderWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v84[1] = *MEMORY[0x1E69E9840];
  siriHeaderView = [(CNStarkContactsListViewController *)self siriHeaderView];

  if (siriHeaderView)
  {
    siriHeaderView2 = [(CNStarkContactsListViewController *)self siriHeaderView];
    [siriHeaderView2 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [(CNStarkContactsListViewController *)self headerViewWidthForSize:width, height];
    v15 = v14;
    siriHeaderView3 = [(CNStarkContactsListViewController *)self siriHeaderView];
    [siriHeaderView3 setFrame:{v9, v11, v15, v13}];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E69DD250]);
    siriHeaderView3 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [siriHeaderView3 frame];
    v19 = v18;
    v21 = v20;
    [(CNStarkContactsListViewController *)self headerViewWidthForSize:width, height];
    [siriHeaderView3 setFrame:{v19, v21, v22, 44.0}];
    isSiriDirectActionTextExperimentGroup = [(CNStarkContactsListViewController *)self isSiriDirectActionTextExperimentGroup];
    v24 = CNContactsUIBundle();
    v25 = v24;
    if (isSiriDirectActionTextExperimentGroup)
    {
      v26 = @"HEY_SIRI_MAKE_A_CALL";
    }

    else
    {
      v26 = @"ASK_SIRI_TO_MAKE_CALL";
    }

    v27 = [v24 localizedStringForKey:v26 value:&stru_1F0CE7398 table:@"Localized"];

    v28 = MEMORY[0x1E69DCAD8];
    v29 = +[CNUIFontRepository carPlaySymbolImageFont];
    v30 = [v28 configurationWithFont:v29 scale:-1];

    v82 = v30;
    v81 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"siri" withConfiguration:v30];
    v31 = [[CNStarkHeaderPlatterView alloc] initWithLabelText:v27 accessoryImage:v81];
    [(CNStarkHeaderPlatterView *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    [siriHeaderView3 addSubview:v31];
    [siriHeaderView3 setUserInteractionEnabled:1];
    [siriHeaderView3 setIsAccessibilityElement:1];
    [siriHeaderView3 setAccessibilityTraits:*MEMORY[0x1E69DD9B8]];
    if (v27)
    {
      v84[0] = v27;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
      [siriHeaderView3 setAccessibilityUserInputLabels:v32];
    }

    v80 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleSiriHeaderViewTap_];
    [siriHeaderView3 addGestureRecognizer:v80];
    v79 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleSiriHeaderViewTap_];
    [v79 setAllowedPressTypes:&unk_1F0D4B8F8];
    [siriHeaderView3 addGestureRecognizer:v79];
    v72 = MEMORY[0x1E696ACD8];
    leftAnchor = [(CNStarkHeaderPlatterView *)v31 leftAnchor];
    leftAnchor2 = [siriHeaderView3 leftAnchor];
    v75 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v83[0] = v75;
    rightAnchor = [(CNStarkHeaderPlatterView *)v31 rightAnchor];
    rightAnchor2 = [siriHeaderView3 rightAnchor];
    v71 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v83[1] = v71;
    topAnchor = [(CNStarkHeaderPlatterView *)v31 topAnchor];
    topAnchor2 = [siriHeaderView3 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v83[2] = v35;
    bottomAnchor = [(CNStarkHeaderPlatterView *)v31 bottomAnchor];
    [siriHeaderView3 bottomAnchor];
    v37 = v76 = v27;
    v38 = [bottomAnchor constraintEqualToAnchor:v37];
    v83[3] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
    [v72 activateConstraints:v39];

    [siriHeaderView3 setAccessibilityIdentifier:@"CNStarkSiriCell"];
    [(CNStarkContactsListViewController *)self setSiriHeaderView:siriHeaderView3];
  }

  siriHeaderView4 = [(CNStarkContactsListViewController *)self siriHeaderView];
  [siriHeaderView4 frame];
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [(CNStarkContactsListViewController *)self viewDirectionalLayoutMargins];
  v48 = v47;
  v50 = v49;
  traitCollection = [(CNStarkContactsListViewController *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  view = [(CNStarkContactsListViewController *)self view];
  [view safeAreaInsets];
  v55 = v54;

  if (layoutDirection == 1)
  {
    v56 = v50;
  }

  else
  {
    v56 = v48;
  }

  v57 = v56 - v55;
  siriHeaderView5 = [(CNStarkContactsListViewController *)self siriHeaderView];
  [siriHeaderView5 setFrame:{v57, v42, v44, v46}];

  contactListTableView = [(CNStarkContactsListViewController *)self contactListTableView];
  v60 = [contactListTableView accessoryViewAtEdge:1];

  [(CNStarkContactsListViewController *)self setHadScrollAccessoryAtLastHeaderViewUpdate:v60 != 0];
  listHeaderView = [(CNContactListViewController *)self listHeaderView];
  superview = [listHeaderView superview];

  if (superview)
  {
    objc_opt_class();
    listHeaderView2 = [(CNContactListViewController *)self listHeaderView];
    superview2 = [listHeaderView2 superview];
    v64Superview = [superview2 superview];
    if (objc_opt_isKindOfClass())
    {
      v66 = v64Superview;
    }

    else
    {
      v66 = 0;
    }

    siriHeaderView7 = v66;

    if (siriHeaderView7)
    {
      siriHeaderView6 = [(CNStarkContactsListViewController *)self siriHeaderView];
      [siriHeaderView7 setHeaderView:siriHeaderView6];
    }

    collectionView = [(CNStarkContactsListViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }

  else
  {
    siriHeaderView7 = [(CNStarkContactsListViewController *)self siriHeaderView];
    [(CNContactListViewController *)self setListHeaderView:siriHeaderView7];
  }
}

- (void)contactDataSourceDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CNStarkContactsListViewController;
  [(CNContactListViewController *)&v4 contactDataSourceDidChange:change];
  [(CNStarkContactsListViewController *)self postMessageOverlayIfNecessary];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__CNStarkContactsListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_1E74E30E8;
  v4[4] = self;
  sizeCopy = size;
  [coordinator animateAlongsideTransition:v4 completion:0];
}

- (BOOL)deviceIsEnrolledInDirectActionExperiment
{
  v11 = *MEMORY[0x1E69E9840];
  [(TRIClient *)self->_trialClient refresh];
  v3 = [(TRIClient *)self->_trialClient experimentIdentifiersWithNamespaceName:@"SIRI_CARPLAY_JARVIS"];
  v4 = CNUILogStarkSiriExperiment();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"TRUE";
    if (!v3)
    {
      v5 = @"FALSE";
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_INFO, "#ABStarkExperiment The device is enrolled in an experiment with namespace SIRI_CARPLAY_JARVIS: %@", &v9, 0xCu);
  }

  if (v3)
  {
    experimentId = [v3 experimentId];
    v7 = [experimentId isEqualToString:@"65dfd24b12edf62098adc714"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)sendSiriExperimentTriggerLoggingIfEligible
{
  if (+[CNStarkUtilities vehicleHasBuiltInMic](CNStarkUtilities, "vehicleHasBuiltInMic") && +[CNStarkUtilities siriLanguageMatchesSystemLanguage]&& [(CNStarkContactsListViewController *)self deviceIsEnrolledInDirectActionExperiment])
  {
    v3 = CNUILogStarkSiriExperiment();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "#ABStarkExperiment User is in Jarvis Car. Emitting Trigger Logging...", v7, 2u);
    }

    analyticsManager = self->_analyticsManager;
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"acf17e91-9c40-4d2b-825f-d74e75f3707c"];
    v6 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    [(AIMLExperimentationAnalyticsManager *)analyticsManager emitTriggerForCodePathID:v5 withNamespace:@"SIRI_CARPLAY_JARVIS" requestID:v6 completionHandler:&__block_literal_global_21226];
  }
}

void __79__CNStarkContactsListViewController_sendSiriExperimentTriggerLoggingIfEligible__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = CNUILogStarkSiriExperiment();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_199A75000, v2, OS_LOG_TYPE_ERROR, "#ABStarkExperiment trigger logging failed", v3, 2u);
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CNStarkContactsListViewController;
  [(CNContactListViewController *)&v4 viewWillAppear:appear];
  [(CNStarkContactsListViewController *)self updateLimitedUI];
  [(CNStarkContactsListViewController *)self sendSiriExperimentTriggerLoggingIfEligible];
  [(CNStarkContactsListViewController *)self postMessageOverlayIfNecessary];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CNStarkContactsListViewController;
  [(CNContactListViewController *)&v10 viewDidLoad];
  v3 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
  collectionView = [(CNStarkContactsListViewController *)self collectionView];
  [collectionView setBackgroundColor:v3];

  contactListTableView = [(CNStarkContactsListViewController *)self contactListTableView];
  v6 = objc_opt_class();
  v7 = *MEMORY[0x1E69DDC08];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [contactListTableView registerClass:v6 forSupplementaryViewOfKind:v7 withReuseIdentifier:v9];
}

- (void)setLimitedUI:(BOOL)i
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__CNStarkContactsListViewController_setLimitedUI___block_invoke;
  v3[3] = &unk_1E74E4768;
  v3[4] = self;
  iCopy = i;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)updateLimitedUI
{
  externalDevice = [(CNStarkContactsListViewController *)self externalDevice];
  if ([externalDevice limitedUI])
  {
    externalDevice2 = [(CNStarkContactsListViewController *)self externalDevice];
    limitedUIElements = [externalDevice2 limitedUIElements];
    -[CNStarkContactsListViewController setLimitedUI:](self, "setLimitedUI:", [limitedUIElements containsObject:*MEMORY[0x1E6987438]]);
  }

  else
  {
    [(CNStarkContactsListViewController *)self setLimitedUI:0];
  }
}

- (NSDirectionalEdgeInsets)viewDirectionalLayoutMargins
{
  if ([(CNStarkContactsListViewController *)self isViewLoaded])
  {
    view = [(CNStarkContactsListViewController *)self view];
    [view directionalLayoutMargins];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    currentCarPlayExternalDevice = [MEMORY[0x1E6987F90] currentCarPlayExternalDevice];
    rightHandDrive = [currentCarPlayExternalDevice rightHandDrive];

    if (rightHandDrive)
    {
      v15 = v7 + 44.0;
      if (userInterfaceLayoutDirection == 1)
      {
        v11 = v11 + 44.0;
      }

      else
      {
        v7 = v7 + 44.0;
      }
    }

    else if (userInterfaceLayoutDirection == 1)
    {
      contactListTableView = [(CNStarkContactsListViewController *)self contactListTableView];
      v19 = [contactListTableView accessoryViewAtEdge:1];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 desiredAccessoryEdge] == 1)
      {
        v11 = v11 + 44.0;
      }

      else
      {
        v7 = v7 + 44.0;
      }
    }

    else
    {
      v15 = 44.0;
      v11 = v11 + 44.0;
    }

    view2 = [(CNStarkContactsListViewController *)self view];
    [view2 safeAreaInsets];
    v22 = v21;
    v24 = v23;

    view3 = [(CNStarkContactsListViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v28 = v27 - v7 - v11 - v22 - v24;

    v29 = round((v28 + -520.0) * 0.25);
    v30 = v29 > 12.0;
    v31 = v7 + v29;
    v32 = v11 + v29;
    if (v28 <= 520.0 || !v30)
    {
      v32 = v11;
      v31 = v7;
    }

    v16 = v31 + -6.0;
    v17 = 6.0;
    if (v16 < 6.0)
    {
      v16 = 6.0;
    }

    v33 = v32 + -6.0;
    if (v33 >= 6.0)
    {
      v17 = v33;
    }
  }

  else
  {
    v5 = *MEMORY[0x1E69DC5C0];
    v16 = *(MEMORY[0x1E69DC5C0] + 8);
    v9 = *(MEMORY[0x1E69DC5C0] + 16);
    v17 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  v34 = v5;
  v35 = v9;
  result.trailing = v17;
  result.bottom = v35;
  result.leading = v16;
  result.top = v34;
  return result;
}

- (id)createCollectionView
{
  v3 = [CNContactListCollectionView alloc];
  v4 = objc_opt_class();
  contactListStyleApplier = [(CNStarkContactsListViewController *)self contactListStyleApplier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__CNStarkContactsListViewController_createCollectionView__block_invoke;
  v12[3] = &unk_1E74E3098;
  v12[4] = self;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__CNStarkContactsListViewController_createCollectionView__block_invoke_2;
  v11[3] = &unk_1E74E30C0;
  v11[4] = self;
  v6 = [v4 collectionViewLayoutWithFloatingHeaderViews:1 contactListStyleApplier:contactListStyleApplier directionalLayoutMargins:v12 hasNoContacts:v11];
  v7 = [(CNContactListCollectionView *)v3 initWithFrame:v6 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNStarkContactsListViewController *)self setContactListTableView:v7];

  contactListTableView = [(CNStarkContactsListViewController *)self contactListTableView];
  [contactListTableView setAccessibilityIdentifier:@"CNContactListCollectionView"];

  contactListTableView2 = [(CNStarkContactsListViewController *)self contactListTableView];

  return contactListTableView2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6987430] object:self->_externalDevice];

  v4.receiver = self;
  v4.super_class = CNStarkContactsListViewController;
  [(CNContactListViewController *)&v4 dealloc];
}

- (CNStarkContactsListViewController)initWithDataSource:(id)source searchable:(BOOL)searchable environment:(id)environment shouldUseLargeTitle:(BOOL)title
{
  v8.receiver = self;
  v8.super_class = CNStarkContactsListViewController;
  v6 = [(CNContactListViewController *)&v8 initWithDataSource:source searchable:0 environment:environment shouldUseLargeTitle:title];
  [(CNContactListViewController *)v6 setIsHandlingSearch:0];

  return v6;
}

- (void)setupDataSource
{
  v3 = [CNContactStoreDataSource alloc];
  v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v6 = [(CNContactStoreDataSource *)v3 initWithStore:v4];

  if (objc_opt_respondsToSelector())
  {
    contactFormatter = [(CNContactListViewController *)self contactFormatter];
    [(CNContactStoreDataSource *)v6 setContactFormatter:contactFormatter];
  }

  [(CNContactListViewController *)self setDataSource:v6];
}

- (CNStarkContactsListViewController)initWithCollectionViewLayout:(id)layout
{
  v19.receiver = self;
  v19.super_class = CNStarkContactsListViewController;
  v3 = [(CNContactListViewController *)&v19 initWithCollectionViewLayout:layout];
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__CNStarkContactsListViewController_initWithCollectionViewLayout___block_invoke;
    block[3] = &unk_1E74E6A88;
    v5 = v3;
    v18 = v5;
    if (initWithCollectionViewLayout__cn_once_token_5 != -1)
    {
      dispatch_once(&initWithCollectionViewLayout__cn_once_token_5, block);
    }

    v6 = v18;
    v7 = initWithCollectionViewLayout__cn_once_object_5;

    [(CNStarkContactsListViewController *)v5 setDisplayedContactProperties:v7];
    v8 = objc_alloc_init(MEMORY[0x1E695CD80]);
    [v8 setStyle:0];
    [v8 setEmphasizesPrimaryNameComponent:1];
    [v8 setFallbackStyle:-1];
    [(CNContactListViewController *)v5 setContactFormatter:v8];
    [(CNContactListViewController *)v5 setShouldDisplayCount:0];
    [(CNContactListViewController *)v5 setDelegate:v5];
    [(CNContactListViewController *)v5 setShouldDisplayEmergencyContacts:0];
    [(CNStarkContactsListViewController *)v5 setupDataSource];
    currentCarPlayExternalDevice = [MEMORY[0x1E6987F90] currentCarPlayExternalDevice];
    externalDevice = v5->_externalDevice;
    v5->_externalDevice = currentCarPlayExternalDevice;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_limitedUINotification_ name:*MEMORY[0x1E6987430] object:v5->_externalDevice];

    v12 = objc_alloc_init(MEMORY[0x1E6985FA0]);
    analyticsManager = v5->_analyticsManager;
    v5->_analyticsManager = v12;

    v14 = [MEMORY[0x1E69DB518] clientWithIdentifier:331];
    trialClient = v5->_trialClient;
    v5->_trialClient = v14;
  }

  return v4;
}

uint64_t __66__CNStarkContactsListViewController_initWithCollectionViewLayout___block_invoke()
{
  v0 = [objc_opt_class() makeContactsDisplayedProperties];
  v1 = initWithCollectionViewLayout__cn_once_object_5;
  initWithCollectionViewLayout__cn_once_object_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNStarkContactsListViewController)init
{
  v3 = +[CNContactListViewController collectionViewLayout];
  v4 = [(CNStarkContactsListViewController *)self initWithCollectionViewLayout:v3];

  return v4;
}

+ (id)collectionViewLayoutWithFloatingHeaderViews:(BOOL)views contactListStyleApplier:(id)applier directionalLayoutMargins:(id)margins hasNoContacts:(id)contacts
{
  v26[1] = *MEMORY[0x1E69E9840];
  marginsCopy = margins;
  v8 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:0];
  [v8 setHeaderMode:1];
  [v8 setHeaderTopPadding:0.0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v8 setBackgroundColor:clearColor];

  v10 = objc_alloc(MEMORY[0x1E69DC808]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __144__CNStarkContactsListViewController_collectionViewLayoutWithFloatingHeaderViews_contactListStyleApplier_directionalLayoutMargins_hasNoContacts___block_invoke;
  v22[3] = &unk_1E74E3070;
  viewsCopy = views;
  v23 = v8;
  v24 = marginsCopy;
  v11 = marginsCopy;
  v12 = v8;
  v13 = [v10 initWithSectionProvider:v22];
  v14 = MEMORY[0x1E6995588];
  v15 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v16 = [MEMORY[0x1E6995558] estimatedDimension:0.0];
  v17 = [v14 sizeWithWidthDimension:v15 heightDimension:v16];

  v18 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v17 elementKind:@"CNContactListLayoutHeaderIdentifier" alignment:2];
  configuration = [v13 configuration];
  v26[0] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [configuration setBoundarySupplementaryItems:v20];

  [v13 setConfiguration:configuration];

  return v13;
}

id __144__CNStarkContactsListViewController_collectionViewLayoutWithFloatingHeaderViews_contactListStyleApplier_directionalLayoutMargins_hasNoContacts___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E6995580] sectionWithListConfiguration:*(a1 + 32) layoutEnvironment:a3];
  v5 = [v4 boundarySupplementaryItems];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __144__CNStarkContactsListViewController_collectionViewLayoutWithFloatingHeaderViews_contactListStyleApplier_directionalLayoutMargins_hasNoContacts___block_invoke_2;
  v10[3] = &__block_descriptor_33_e53__16__0__NSCollectionLayoutBoundarySupplementaryItem_8l;
  v11 = *(a1 + 48);
  v6 = [v5 _cn_map:v10];
  [v4 setBoundarySupplementaryItems:v6];

  [v4 contentInsets];
  v8 = v7;
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 40) + 16))();
  [v4 setContentInsets:v8];

  return v4;
}

id __144__CNStarkContactsListViewController_collectionViewLayoutWithFloatingHeaderViews_contactListStyleApplier_directionalLayoutMargins_hasNoContacts___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPinToVisibleBounds:*(a1 + 32)];

  return v3;
}

+ (id)makeContactsDisplayedProperties
{
  v13 = *MEMORY[0x1E69E9840];
  sharedConfiguration = [(objc_class *)getGEOCountryConfigurationClass() sharedConfiguration];
  currentCountrySupportsCarIntegration = [sharedConfiguration currentCountrySupportsCarIntegration];

  if (currentCountrySupportsCarIntegration)
  {
    v4 = *MEMORY[0x1E695C360];
    v11 = *MEMORY[0x1E695C330];
    v12 = v4;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v11;
    v7 = 2;
  }

  else
  {
    v10 = *MEMORY[0x1E695C330];
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v10;
    v7 = 1;
  }

  v8 = [v5 arrayWithObjects:v6 count:{v7, v10, v11, v12}];

  return v8;
}

@end