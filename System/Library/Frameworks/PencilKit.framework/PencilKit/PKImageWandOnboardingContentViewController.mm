@interface PKImageWandOnboardingContentViewController
- (id)initWithTitle:(void *)a3 titleBadgeText:(uint64_t)a4 detailText:(uint64_t)a5 symbolName:(uint64_t)a6 contentLayout:;
- (void)_updateHeaderLabelTextLayoutGuideConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKImageWandOnboardingContentViewController

- (id)initWithTitle:(void *)a3 titleBadgeText:(uint64_t)a4 detailText:(uint64_t)a5 symbolName:(uint64_t)a6 contentLayout:
{
  v71[4] = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (!a1)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v69.receiver = a1;
  v69.super_class = PKImageWandOnboardingContentViewController;
  v12 = objc_msgSendSuper2(&v69, sel_initWithTitle_detailText_symbolName_contentLayout_, a2, a4, a5, a6);
  v13 = v12;
  if (v12)
  {
    v14 = [v12 headerView];
    v15 = objc_opt_respondsToSelector();

    *(v13 + 1272) = v15 & 1;
    if (v15)
    {
      v16 = [v13 headerView];
      [v16 setBadgeText:v11];
    }

    else
    {
      if (!v11)
      {
        goto LABEL_9;
      }

      v17 = [v13 headerView];
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }

      v16 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      v19 = [v13 headerView];
      v20 = [v19 headerLabel];
      [v20 addLayoutGuide:v16];

      v21 = [v16 topAnchor];
      v22 = [v13 headerView];
      v23 = [v22 headerLabel];
      v24 = [v23 topAnchor];
      v25 = [v21 constraintEqualToAnchor:v24];
      v26 = v13[155];
      v13[155] = v25;

      v27 = [v16 leadingAnchor];
      v28 = [v13 headerView];
      v29 = [v28 headerLabel];
      v30 = [v29 leadingAnchor];
      v31 = [v27 constraintEqualToAnchor:v30];
      v32 = v13[156];
      v13[156] = v31;

      v33 = [v16 widthAnchor];
      v34 = [v33 constraintEqualToConstant:0.0];
      v35 = v13[157];
      v13[157] = v34;

      v36 = [v16 heightAnchor];
      v37 = [v36 constraintEqualToConstant:0.0];
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

      [v13[153] setText:v11];
      [v13[153] setTranslatesAutoresizingMaskIntoConstraints:0];
      v43 = [v13 headerView];
      [v43 addSubview:v13[153]];

      v68 = MEMORY[0x1E696ACD8];
      v44 = [v13[153] centerYAnchor];
      v45 = [v16 centerYAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];
      v70[0] = v46;
      v47 = [v13[153] leadingAnchor];
      v48 = [v16 trailingAnchor];
      v49 = [v47 constraintEqualToAnchor:v48 constant:2.0];
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

    v61 = [MEMORY[0x1E69B7D00] boldButton];
    v62 = v13[160];
    v13[160] = v61;

    v63 = v13[160];
    v64 = _PencilKitBundle();
    v65 = [v64 localizedStringForKey:@"CONTINUE_BUTTON" value:&stru_1F476BD20 table:@"ImageWand"];
    [v63 setTitle:v65 forState:0];

    v66 = [v13 buttonTray];
    [v66 addButton:v13[160]];

    [(PKImageWandOnboardingContentViewController *)v13 _updateHeaderLabelTextLayoutGuideConstraints];
  }

LABEL_10:

  return v13;
}

- (void)_updateHeaderLabelTextLayoutGuideConstraints
{
  if (a1)
  {
    v2 = [a1 viewIfLoaded];
    if (v2)
    {
      v3 = a1[1272];

      if ((v3 & 1) == 0)
      {
        v4 = [a1 headerView];
        v5 = [v4 headerLabel];
        [v5 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
        v7 = v6;
        v9 = v8;

        v10 = [a1 headerView];
        v11 = [v10 headerLabel];
        v12 = [a1 headerView];
        v13 = [v12 headerLabel];
        [v13 bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = [a1 headerView];
        v23 = [v22 headerLabel];
        [v11 textRectForBounds:objc_msgSend(v23 limitedToNumberOfLines:{"numberOfLines"), v15, v17, v19, v21}];
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
        v30[4] = a1;
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