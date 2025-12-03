@interface PKImageWandOnboardingContentViewController
- (id)initWithTitle:(void *)title titleBadgeText:(uint64_t)text detailText:(uint64_t)detailText symbolName:(uint64_t)name contentLayout:;
- (void)_updateHeaderLabelTextLayoutGuideConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKImageWandOnboardingContentViewController

- (id)initWithTitle:(void *)title titleBadgeText:(uint64_t)text detailText:(uint64_t)detailText symbolName:(uint64_t)name contentLayout:
{
  v71[4] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (!self)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v69.receiver = self;
  v69.super_class = PKImageWandOnboardingContentViewController;
  v12 = objc_msgSendSuper2(&v69, sel_initWithTitle_detailText_symbolName_contentLayout_, a2, text, detailText, name);
  v13 = v12;
  if (v12)
  {
    headerView = [v12 headerView];
    v15 = objc_opt_respondsToSelector();

    *(v13 + 1272) = v15 & 1;
    if (v15)
    {
      headerView2 = [v13 headerView];
      [headerView2 setBadgeText:titleCopy];
    }

    else
    {
      if (!titleCopy)
      {
        goto LABEL_9;
      }

      headerView3 = [v13 headerView];
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }

      headerView2 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      headerView4 = [v13 headerView];
      headerLabel = [headerView4 headerLabel];
      [headerLabel addLayoutGuide:headerView2];

      topAnchor = [headerView2 topAnchor];
      headerView5 = [v13 headerView];
      headerLabel2 = [headerView5 headerLabel];
      topAnchor2 = [headerLabel2 topAnchor];
      v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v26 = v13[155];
      v13[155] = v25;

      leadingAnchor = [headerView2 leadingAnchor];
      headerView6 = [v13 headerView];
      headerLabel3 = [headerView6 headerLabel];
      leadingAnchor2 = [headerLabel3 leadingAnchor];
      v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v32 = v13[156];
      v13[156] = v31;

      widthAnchor = [headerView2 widthAnchor];
      v34 = [widthAnchor constraintEqualToConstant:0.0];
      v35 = v13[157];
      v13[157] = v34;

      heightAnchor = [headerView2 heightAnchor];
      v37 = [heightAnchor constraintEqualToConstant:0.0];
      v38 = v13[158];
      v13[158] = v37;

      v71[0] = v13[155];
      v39 = MEMORY[0x1E696ACD8];
      v71[1] = v13[156];
      v71[2] = v13[157];
      v71[3] = v13[158];
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:4];
      [v39 activateConstraints:v40];

      v41 = objc_alloc_init(PKBadgeLabel);
      v42 = v13[153];
      v13[153] = v41;

      [v13[153] setText:titleCopy];
      [v13[153] setTranslatesAutoresizingMaskIntoConstraints:0];
      headerView7 = [v13 headerView];
      [headerView7 addSubview:v13[153]];

      v68 = MEMORY[0x1E696ACD8];
      centerYAnchor = [v13[153] centerYAnchor];
      centerYAnchor2 = [headerView2 centerYAnchor];
      v46 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v70[0] = v46;
      leadingAnchor3 = [v13[153] leadingAnchor];
      trailingAnchor = [headerView2 trailingAnchor];
      v49 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:2.0];
      v70[1] = v49;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
      [v68 activateConstraints:v50];
    }

LABEL_9:
    v51 = _PencilKitBundle();
    v52 = [v51 localizedStringForKey:@"START_WITH_CIRCLE_TITLE" value:&stru_1F476BD20 table:@"ImageWand"];
    v53 = _PencilKitBundle();
    v54 = [v53 localizedStringForKey:@"START_WITH_CIRCLE_DESCRIPTION" value:&stru_1F476BD20 table:@"ImageWand"];
    v55 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil.and.outline"];
    [v13 addBulletedListItemWithTitle:v52 description:v54 image:v55];

    v56 = _PencilKitBundle();
    v57 = [v56 localizedStringForKey:@"REPLACE_SKETCH_TITLE" value:&stru_1F476BD20 table:@"ImageWand"];
    v58 = _PencilKitBundle();
    v59 = [v58 localizedStringForKey:@"REPLACE_SKETCH_DESCRIPTION" value:&stru_1F476BD20 table:@"ImageWand"];
    v60 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"pencil.and.sparkles"];
    [v13 addBulletedListItemWithTitle:v57 description:v59 image:v60];

    boldButton = [MEMORY[0x1E69B7D00] boldButton];
    v62 = v13[160];
    v13[160] = boldButton;

    v63 = v13[160];
    v64 = _PencilKitBundle();
    v65 = [v64 localizedStringForKey:@"CONTINUE_BUTTON" value:&stru_1F476BD20 table:@"ImageWand"];
    [v63 setTitle:v65 forState:0];

    buttonTray = [v13 buttonTray];
    [buttonTray addButton:v13[160]];

    [(PKImageWandOnboardingContentViewController *)v13 _updateHeaderLabelTextLayoutGuideConstraints];
  }

LABEL_10:

  return v13;
}

- (void)_updateHeaderLabelTextLayoutGuideConstraints
{
  if (self)
  {
    viewIfLoaded = [self viewIfLoaded];
    if (viewIfLoaded)
    {
      v3 = self[1272];

      if ((v3 & 1) == 0)
      {
        headerView = [self headerView];
        headerLabel = [headerView headerLabel];
        [headerLabel systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
        v7 = v6;
        v9 = v8;

        headerView2 = [self headerView];
        headerLabel2 = [headerView2 headerLabel];
        headerView3 = [self headerView];
        headerLabel3 = [headerView3 headerLabel];
        [headerLabel3 bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        headerView4 = [self headerView];
        headerLabel4 = [headerView4 headerLabel];
        [headerLabel2 textRectForBounds:objc_msgSend(headerLabel4 limitedToNumberOfLines:{"numberOfLines"), v15, v17, v19, v21}];
        v25 = v24;
        v27 = v26;

        v30[1] = 3221225472;
        v28 = 0.0;
        if (v25 >= 0.0)
        {
          v29 = v25;
        }

        else
        {
          v29 = 0.0;
        }

        v30[0] = MEMORY[0x1E69E9820];
        v30[2] = __90__PKImageWandOnboardingContentViewController__updateHeaderLabelTextLayoutGuideConstraints__block_invoke;
        v30[3] = &unk_1E82DBA20;
        v30[4] = self;
        if (v27 >= 0.0)
        {
          v28 = v27;
        }

        *&v30[5] = v29;
        *&v30[6] = v28;
        v30[7] = v7;
        v30[8] = v9;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v30];
      }
    }
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKImageWandOnboardingContentViewController;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  [(PKImageWandOnboardingContentViewController *)self _updateHeaderLabelTextLayoutGuideConstraints];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKImageWandOnboardingContentViewController;
  [(OBBaseWelcomeController *)&v3 viewDidLayoutSubviews];
  [(PKImageWandOnboardingContentViewController *)self _updateHeaderLabelTextLayoutGuideConstraints];
}

uint64_t __90__PKImageWandOnboardingContentViewController__updateHeaderLabelTextLayoutGuideConstraints__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1240) setConstant:*(a1 + 48)];
  [*(*(a1 + 32) + 1248) setConstant:*(a1 + 40)];
  [*(*(a1 + 32) + 1256) setConstant:*(a1 + 56)];
  v2 = *(a1 + 64);
  v3 = *(*(a1 + 32) + 1264);

  return [v3 setConstant:v2];
}

@end