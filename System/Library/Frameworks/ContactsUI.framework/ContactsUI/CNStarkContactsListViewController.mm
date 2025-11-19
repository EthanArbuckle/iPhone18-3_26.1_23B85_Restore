@interface CNStarkContactsListViewController
+ (id)collectionViewLayoutWithFloatingHeaderViews:(BOOL)a3 contactListStyleApplier:(id)a4 directionalLayoutMargins:(id)a5 hasNoContacts:(id)a6;
+ (id)makeContactsDisplayedProperties;
- (BOOL)deviceIsEnrolledInDirectActionExperiment;
- (BOOL)isSiriDirectActionTextExperimentGroup;
- (CNStarkContactsListViewController)init;
- (CNStarkContactsListViewController)initWithCollectionViewLayout:(id)a3;
- (CNStarkContactsListViewController)initWithDataSource:(id)a3 searchable:(BOOL)a4 environment:(id)a5 shouldUseLargeTitle:(BOOL)a6;
- (NSDirectionalEdgeInsets)viewDirectionalLayoutMargins;
- (double)headerViewWidthForSize:(CGSize)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)createCollectionView;
- (void)contactDataSourceDidChange:(id)a3;
- (void)contactListViewController:(id)a3 didSelectContact:(id)a4 shouldScrollToContact:(BOOL)a5;
- (void)dealloc;
- (void)handleSiriHeaderViewTap:(id)a3;
- (void)postMessageOverlayIfNecessary;
- (void)refreshTableViewHeaderWithSize:(CGSize)a3;
- (void)sendSiriExperimentTriggerLoggingIfEligible;
- (void)setLimitedUI:(BOOL)a3;
- (void)setupDataSource;
- (void)showContactListTableView;
- (void)showOverlayView;
- (void)updateLimitedUI;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNStarkContactsListViewController

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CNStarkContactsListViewController;
  [(CNContactListViewController *)&v5 viewDidLayoutSubviews];
  if (![(CNStarkContactsListViewController *)self hadScrollAccessoryAtLastHeaderViewUpdate])
  {
    v3 = [(CNStarkContactsListViewController *)self contactListTableView];
    v4 = [v3 accessoryViewAtEdge:1];

    if (v4)
    {
      [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
    }
  }
}

- (void)contactListViewController:(id)a3 didSelectContact:(id)a4 shouldScrollToContact:(BOOL)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(CNContactListViewController *)self dataSource];
  v8 = [v7 store];
  v9 = [v6 identifier];

  v10 = +[CNStarkCardViewController descriptorForRequiredKeys];
  v21[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v18 = 0;
  v12 = [v8 unifiedContactWithIdentifier:v9 keysToFetch:v11 error:&v18];
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
    v16 = [(CNStarkContactsListViewController *)self displayedContactProperties];
    v14 = [(CNStarkCardViewController *)v15 initWithContact:v12 displayedContactProperties:v16];

    v17 = [(CNStarkContactsListViewController *)self navigationController];
    [v17 pushViewController:v14 animated:1];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = CNStarkContactsListViewController;
  v4 = [(CNContactListViewController *)&v7 collectionView:a3 cellForItemAtIndexPath:a4];
  v5 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
  [v5 setCornerRadius:14.0];
  [v4 setBackgroundConfiguration:v5];

  return v4;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:*MEMORY[0x1E69DDC08]])
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v12 forIndexPath:v10];

    v14 = [v10 section];
    v15 = 4.0;
    if (!v14)
    {
      v15 = 16.0;
    }

    [v13 setTopPadding:v15];
    v16 = -[CNContactListViewController titleForHeaderInSection:](self, "titleForHeaderInSection:", [v10 section]);
    [v13 setText:v16];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CNStarkContactsListViewController;
    v13 = [(CNContactListViewController *)&v18 collectionView:v8 viewForSupplementaryElementOfKind:v9 atIndexPath:v10];
  }

  return v13;
}

- (void)showContactListTableView
{
  v3 = [(CNStarkContactsListViewController *)self view];
  v4 = [(CNStarkContactsListViewController *)self contactListTableView];

  if (v3 != v4)
  {
    v5 = [(CNStarkContactsListViewController *)self contactListTableView];
    [(CNStarkContactsListViewController *)self setCollectionView:v5];

    v6 = [(CNStarkContactsListViewController *)self contactListTableView];
    [(CNStarkContactsListViewController *)self setView:v6];

    v7 = [(CNContactListViewController *)self dataSource];
    v8 = [v7 contacts];
    v9 = [v8 count];

    if (v9)
    {
      v11 = [(CNStarkContactsListViewController *)self collectionView];
      v10 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      [v11 scrollToItemAtIndexPath:v10 atScrollPosition:2 animated:0];
    }
  }
}

- (void)showOverlayView
{
  v3 = [(CNStarkContactsListViewController *)self view];
  v4 = [(CNStarkContactsListViewController *)self overlayView];

  if (v3 != v4)
  {
    v5 = [(CNStarkContactsListViewController *)self overlayView];
    [(CNStarkContactsListViewController *)self setView:v5];
  }
}

- (void)postMessageOverlayIfNecessary
{
  if (-[CNStarkContactsListViewController limitedUI](self, "limitedUI") && (CNContactsUIBundle(), v3 = objc_claimAutoreleasedReturnValue(), [v3 localizedStringForKey:@"CONTACTS_ACCESS_LIMITED" value:&stru_1F0CE7398 table:@"Localized"], v13 = objc_claimAutoreleasedReturnValue(), v3, v13))
  {
    v4 = [(CNStarkContactsListViewController *)self overlayView];

    if (!v4)
    {
      v5 = [CNStarkNoContentBannerView alloc];
      v6 = [(CNStarkNoContentBannerView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(CNStarkContactsListViewController *)self setOverlayView:v6];
    }

    v7 = [(CNStarkContactsListViewController *)self overlayView];
    [v7 setTitleString:v13];

    v8 = [(CNStarkContactsListViewController *)self overlayView];
    [v8 setSiriButtonEnabled:1];

    [(CNStarkContactsListViewController *)self showOverlayView];
  }

  else
  {
    v9 = [(CNContactListViewController *)self dataSource];
    v10 = [v9 contacts];
    v11 = [v10 count] == 0;
    v12 = [(CNContactListViewController *)self listHeaderView];
    [v12 setHidden:v11];

    [(CNStarkContactsListViewController *)self showContactListTableView];
  }
}

- (void)handleSiriHeaderViewTap:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
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
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkAssistantDirectActionEventKey(void)"];
    [v14 handleFailureInFunction:v15 file:@"CNSiriSoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];

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

- (double)headerViewWidthForSize:(CGSize)a3
{
  width = a3.width;
  [(CNStarkContactsListViewController *)self viewDirectionalLayoutMargins:a3.width];
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
      v5 = [v3 BOOLeanValue];
      v6 = @"FALSE";
      if (v5)
      {
        v6 = @"TRUE";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_INFO, "#ABStarkExperiment The user is in the experimental group: %@", &v9, 0xCu);
    }

    v7 = [v3 BOOLeanValue];
  }

  else
  {
    v3 = CNUILogStarkSiriExperiment();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "#ABStarkExperiment This vehicle or device isn't eligible for the experiment", &v9, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)refreshTableViewHeaderWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v84[1] = *MEMORY[0x1E69E9840];
  v6 = [(CNStarkContactsListViewController *)self siriHeaderView];

  if (v6)
  {
    v7 = [(CNStarkContactsListViewController *)self siriHeaderView];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [(CNStarkContactsListViewController *)self headerViewWidthForSize:width, height];
    v15 = v14;
    v16 = [(CNStarkContactsListViewController *)self siriHeaderView];
    [v16 setFrame:{v9, v11, v15, v13}];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E69DD250]);
    v16 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v16 frame];
    v19 = v18;
    v21 = v20;
    [(CNStarkContactsListViewController *)self headerViewWidthForSize:width, height];
    [v16 setFrame:{v19, v21, v22, 44.0}];
    v23 = [(CNStarkContactsListViewController *)self isSiriDirectActionTextExperimentGroup];
    v24 = CNContactsUIBundle();
    v25 = v24;
    if (v23)
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
    [v16 addSubview:v31];
    [v16 setUserInteractionEnabled:1];
    [v16 setIsAccessibilityElement:1];
    [v16 setAccessibilityTraits:*MEMORY[0x1E69DD9B8]];
    if (v27)
    {
      v84[0] = v27;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
      [v16 setAccessibilityUserInputLabels:v32];
    }

    v80 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleSiriHeaderViewTap_];
    [v16 addGestureRecognizer:v80];
    v79 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleSiriHeaderViewTap_];
    [v79 setAllowedPressTypes:&unk_1F0D4B8F8];
    [v16 addGestureRecognizer:v79];
    v72 = MEMORY[0x1E696ACD8];
    v78 = [(CNStarkHeaderPlatterView *)v31 leftAnchor];
    v77 = [v16 leftAnchor];
    v75 = [v78 constraintEqualToAnchor:v77];
    v83[0] = v75;
    v74 = [(CNStarkHeaderPlatterView *)v31 rightAnchor];
    v73 = [v16 rightAnchor];
    v71 = [v74 constraintEqualToAnchor:v73];
    v83[1] = v71;
    v33 = [(CNStarkHeaderPlatterView *)v31 topAnchor];
    v34 = [v16 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    v83[2] = v35;
    v36 = [(CNStarkHeaderPlatterView *)v31 bottomAnchor];
    [v16 bottomAnchor];
    v37 = v76 = v27;
    v38 = [v36 constraintEqualToAnchor:v37];
    v83[3] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
    [v72 activateConstraints:v39];

    [v16 setAccessibilityIdentifier:@"CNStarkSiriCell"];
    [(CNStarkContactsListViewController *)self setSiriHeaderView:v16];
  }

  v40 = [(CNStarkContactsListViewController *)self siriHeaderView];
  [v40 frame];
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [(CNStarkContactsListViewController *)self viewDirectionalLayoutMargins];
  v48 = v47;
  v50 = v49;
  v51 = [(CNStarkContactsListViewController *)self traitCollection];
  v52 = [v51 layoutDirection];

  v53 = [(CNStarkContactsListViewController *)self view];
  [v53 safeAreaInsets];
  v55 = v54;

  if (v52 == 1)
  {
    v56 = v50;
  }

  else
  {
    v56 = v48;
  }

  v57 = v56 - v55;
  v58 = [(CNStarkContactsListViewController *)self siriHeaderView];
  [v58 setFrame:{v57, v42, v44, v46}];

  v59 = [(CNStarkContactsListViewController *)self contactListTableView];
  v60 = [v59 accessoryViewAtEdge:1];

  [(CNStarkContactsListViewController *)self setHadScrollAccessoryAtLastHeaderViewUpdate:v60 != 0];
  v61 = [(CNContactListViewController *)self listHeaderView];
  v62 = [v61 superview];

  if (v62)
  {
    objc_opt_class();
    v63 = [(CNContactListViewController *)self listHeaderView];
    v64 = [v63 superview];
    v65 = [v64 superview];
    if (objc_opt_isKindOfClass())
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    v67 = v66;

    if (v67)
    {
      v68 = [(CNStarkContactsListViewController *)self siriHeaderView];
      [v67 setHeaderView:v68];
    }

    v69 = [(CNStarkContactsListViewController *)self collectionView];
    v70 = [v69 collectionViewLayout];
    [v70 invalidateLayout];
  }

  else
  {
    v67 = [(CNStarkContactsListViewController *)self siriHeaderView];
    [(CNContactListViewController *)self setListHeaderView:v67];
  }
}

- (void)contactDataSourceDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNStarkContactsListViewController;
  [(CNContactListViewController *)&v4 contactDataSourceDidChange:a3];
  [(CNStarkContactsListViewController *)self postMessageOverlayIfNecessary];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__CNStarkContactsListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_1E74E30E8;
  v4[4] = self;
  v5 = a3;
  [a4 animateAlongsideTransition:v4 completion:0];
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
    v6 = [v3 experimentId];
    v7 = [v6 isEqualToString:@"65dfd24b12edf62098adc714"];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNStarkContactsListViewController;
  [(CNContactListViewController *)&v4 viewWillAppear:a3];
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
  v4 = [(CNStarkContactsListViewController *)self collectionView];
  [v4 setBackgroundColor:v3];

  v5 = [(CNStarkContactsListViewController *)self contactListTableView];
  v6 = objc_opt_class();
  v7 = *MEMORY[0x1E69DDC08];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v5 registerClass:v6 forSupplementaryViewOfKind:v7 withReuseIdentifier:v9];
}

- (void)setLimitedUI:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__CNStarkContactsListViewController_setLimitedUI___block_invoke;
  v3[3] = &unk_1E74E4768;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)updateLimitedUI
{
  v5 = [(CNStarkContactsListViewController *)self externalDevice];
  if ([v5 limitedUI])
  {
    v3 = [(CNStarkContactsListViewController *)self externalDevice];
    v4 = [v3 limitedUIElements];
    -[CNStarkContactsListViewController setLimitedUI:](self, "setLimitedUI:", [v4 containsObject:*MEMORY[0x1E6987438]]);
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
    v3 = [(CNStarkContactsListViewController *)self view];
    [v3 directionalLayoutMargins];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    v13 = [MEMORY[0x1E6987F90] currentCarPlayExternalDevice];
    v14 = [v13 rightHandDrive];

    if (v14)
    {
      v15 = v7 + 44.0;
      if (v12 == 1)
      {
        v11 = v11 + 44.0;
      }

      else
      {
        v7 = v7 + 44.0;
      }
    }

    else if (v12 == 1)
    {
      v18 = [(CNStarkContactsListViewController *)self contactListTableView];
      v19 = [v18 accessoryViewAtEdge:1];

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

    v20 = [(CNStarkContactsListViewController *)self view];
    [v20 safeAreaInsets];
    v22 = v21;
    v24 = v23;

    v25 = [(CNStarkContactsListViewController *)self view];
    v26 = [v25 safeAreaLayoutGuide];
    [v26 layoutFrame];
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
  v5 = [(CNStarkContactsListViewController *)self contactListStyleApplier];
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
  v6 = [v4 collectionViewLayoutWithFloatingHeaderViews:1 contactListStyleApplier:v5 directionalLayoutMargins:v12 hasNoContacts:v11];
  v7 = [(CNContactListCollectionView *)v3 initWithFrame:v6 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNStarkContactsListViewController *)self setContactListTableView:v7];

  v8 = [(CNStarkContactsListViewController *)self contactListTableView];
  [v8 setAccessibilityIdentifier:@"CNContactListCollectionView"];

  v9 = [(CNStarkContactsListViewController *)self contactListTableView];

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E6987430] object:self->_externalDevice];

  v4.receiver = self;
  v4.super_class = CNStarkContactsListViewController;
  [(CNContactListViewController *)&v4 dealloc];
}

- (CNStarkContactsListViewController)initWithDataSource:(id)a3 searchable:(BOOL)a4 environment:(id)a5 shouldUseLargeTitle:(BOOL)a6
{
  v8.receiver = self;
  v8.super_class = CNStarkContactsListViewController;
  v6 = [(CNContactListViewController *)&v8 initWithDataSource:a3 searchable:0 environment:a5 shouldUseLargeTitle:a6];
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
    v5 = [(CNContactListViewController *)self contactFormatter];
    [(CNContactStoreDataSource *)v6 setContactFormatter:v5];
  }

  [(CNContactListViewController *)self setDataSource:v6];
}

- (CNStarkContactsListViewController)initWithCollectionViewLayout:(id)a3
{
  v19.receiver = self;
  v19.super_class = CNStarkContactsListViewController;
  v3 = [(CNContactListViewController *)&v19 initWithCollectionViewLayout:a3];
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
    v9 = [MEMORY[0x1E6987F90] currentCarPlayExternalDevice];
    externalDevice = v5->_externalDevice;
    v5->_externalDevice = v9;

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v5 selector:sel_limitedUINotification_ name:*MEMORY[0x1E6987430] object:v5->_externalDevice];

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

+ (id)collectionViewLayoutWithFloatingHeaderViews:(BOOL)a3 contactListStyleApplier:(id)a4 directionalLayoutMargins:(id)a5 hasNoContacts:(id)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:0];
  [v8 setHeaderMode:1];
  [v8 setHeaderTopPadding:0.0];
  v9 = [MEMORY[0x1E69DC888] clearColor];
  [v8 setBackgroundColor:v9];

  v10 = objc_alloc(MEMORY[0x1E69DC808]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __144__CNStarkContactsListViewController_collectionViewLayoutWithFloatingHeaderViews_contactListStyleApplier_directionalLayoutMargins_hasNoContacts___block_invoke;
  v22[3] = &unk_1E74E3070;
  v25 = a3;
  v23 = v8;
  v24 = v7;
  v11 = v7;
  v12 = v8;
  v13 = [v10 initWithSectionProvider:v22];
  v14 = MEMORY[0x1E6995588];
  v15 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v16 = [MEMORY[0x1E6995558] estimatedDimension:0.0];
  v17 = [v14 sizeWithWidthDimension:v15 heightDimension:v16];

  v18 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v17 elementKind:@"CNContactListLayoutHeaderIdentifier" alignment:2];
  v19 = [v13 configuration];
  v26[0] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v19 setBoundarySupplementaryItems:v20];

  [v13 setConfiguration:v19];

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
  v2 = [(objc_class *)getGEOCountryConfigurationClass() sharedConfiguration];
  v3 = [v2 currentCountrySupportsCarIntegration];

  if (v3)
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