@interface CNContactListBannerView
+ (id)descriptorForRequiredKeys;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)displaysContactInfo;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CNContactListBannerView)init;
- (CNContactListBannerViewDelegate)delegate;
- (double)avatarLeadingMargin;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (void)activatePendingConstraints;
- (void)cellWasLongPressed:(id)a3;
- (void)cellWasSingleTapped:(id)a3;
- (void)configureDragInteraction;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)menuDidHide:(id)a3;
- (void)setAvatarView:(id)a3;
- (void)setContactListStyleApplier:(id)a3;
- (void)setMeContact:(id)a3 footnoteTitle:(id)a4 footnoteValue:(id)a5;
- (void)setTopSeparatorWithInset:(double)a3 andLength:(double)a4;
- (void)showMenu;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFontRelatedConstraints;
@end

@implementation CNContactListBannerView

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1_18505 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_1_18505, &__block_literal_global_18506);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1_18507;

  return v3;
}

void __52__CNContactListBannerView_descriptorForRequiredKeys__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v1 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactListBannerView descriptorForRequiredKeys]_block_invoke"];
  v4 = [v0 descriptorWithKeyDescriptors:v2 description:v3];
  v5 = descriptorForRequiredKeys_cn_once_object_1_18507;
  descriptorForRequiredKeys_cn_once_object_1_18507 = v4;
}

- (CNContactListBannerView)init
{
  v71[6] = *MEMORY[0x1E69E9840];
  v69.receiver = self;
  v69.super_class = CNContactListBannerView;
  v2 = [(CNContactListBannerView *)&v69 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695CD80]);
    formatter = v2->_formatter;
    v2->_formatter = v3;

    [(CNContactFormatter *)v2->_formatter setStyle:0];
    v5 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v2 action:sel_cellWasLongPressed_];
    longPress = v2->_longPress;
    v2->_longPress = v5;

    [(CNContactListBannerView *)v2 addGestureRecognizer:v2->_longPress];
    v68 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v2 action:sel_cellWasSingleTapped_];
    [v68 setNumberOfTapsRequired:1];
    [(CNContactListBannerView *)v2 addGestureRecognizer:v68];
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    avatarViewContainer = v2->_avatarViewContainer;
    v2->_avatarViewContainer = v7;

    [(UIView *)v2->_avatarViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactListBannerView *)v2 addSubview:v2->_avatarViewContainer];
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactListBannerView *)v2 addSubview:v9];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v2->_titleLabel;
    v2->_titleLabel = v10;

    [(UILabel *)v2->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 addSubview:v2->_titleLabel];
    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    footnoteContainer = v2->_footnoteContainer;
    v2->_footnoteContainer = v12;

    [(UIView *)v2->_footnoteContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v2->_footnoteContainer setBackgroundColor:v14];

    [v9 addSubview:v2->_footnoteContainer];
    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    footnoteLabel = v2->_footnoteLabel;
    v2->_footnoteLabel = v15;

    [(UILabel *)v2->_footnoteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v2->_footnoteContainer addSubview:v2->_footnoteLabel];
    v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    footnoteValueLabel = v2->_footnoteValueLabel;
    v2->_footnoteValueLabel = v17;

    [(UILabel *)v2->_footnoteValueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v2->_footnoteContainer addSubview:v2->_footnoteValueLabel];
    v70[0] = @"avatarViewContainer";
    v71[0] = v2->_avatarViewContainer;
    v70[1] = @"title";
    v71[1] = v2->_titleLabel;
    v70[2] = @"footnoteContainer";
    v71[2] = v2->_footnoteContainer;
    v70[3] = @"footnoteTitle";
    v71[3] = v2->_footnoteLabel;
    v70[4] = @"footnoteValue";
    v19 = v2->_footnoteValueLabel;
    v70[5] = @"labelContainer";
    v71[4] = v19;
    v71[5] = v9;
    v65 = v9;
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:6];
    v20 = [MEMORY[0x1E695DF70] array];
    v67 = [MEMORY[0x1E696ACD8] constraintWithItem:v2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    LODWORD(v21) = 1132068864;
    [v67 setPriority:v21];
    [(NSArray *)v20 addObject:v67];
    v22 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_avatarViewContainer attribute:10 relatedBy:0 toItem:v2 attribute:10 multiplier:1.0 constant:0.0];
    [(NSArray *)v20 addObject:v22];

    v23 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_avatarViewContainer attribute:8 relatedBy:-1 toItem:v2 attribute:8 multiplier:1.0 constant:0.0];
    [(NSArray *)v20 addObject:v23];

    v24 = MEMORY[0x1E696ACD8];
    v25 = v2->_avatarViewContainer;
    v26 = [(CNContactListBannerView *)v2 layoutMarginsGuide];
    [(CNContactListBannerView *)v2 avatarLeadingMargin];
    v28 = [v24 constraintWithItem:v25 attribute:5 relatedBy:0 toItem:v26 attribute:5 multiplier:1.0 constant:v27];
    avatarViewContainerLeadingConstraint = v2->_avatarViewContainerLeadingConstraint;
    v2->_avatarViewContainerLeadingConstraint = v28;

    [(NSArray *)v20 addObject:v2->_avatarViewContainerLeadingConstraint];
    LODWORD(v30) = 1132068864;
    [(UIView *)v2->_avatarViewContainer setContentHuggingPriority:1 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(UIView *)v2->_avatarViewContainer setContentHuggingPriority:0 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [(UIView *)v2->_avatarViewContainer setContentCompressionResistancePriority:1 forAxis:v32];
    LODWORD(v33) = 1148846080;
    [(UIView *)v2->_avatarViewContainer setContentCompressionResistancePriority:0 forAxis:v33];
    v66 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_avatarViewContainer attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    LODWORD(v34) = 1132068864;
    [v66 setPriority:v34];
    [(NSArray *)v20 addObject:v66];
    v35 = [MEMORY[0x1E696ACD8] constraintWithItem:v9 attribute:10 relatedBy:0 toItem:v2 attribute:10 multiplier:1.0 constant:0.0];
    [(NSArray *)v20 addObject:v35];

    v36 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_titleLabel attribute:3 relatedBy:1 toItem:v2 attribute:3 multiplier:1.0 constant:10.0];
    [(NSArray *)v20 addObject:v36];

    LODWORD(v37) = 1148846080;
    [(UILabel *)v2->_titleLabel setContentCompressionResistancePriority:1 forAxis:v37];
    v38 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_titleLabel attribute:5 relatedBy:0 toItem:v2->_avatarViewContainer attribute:6 multiplier:1.0 constant:10.0];
    [(NSArray *)v20 addObject:v38];

    v39 = MEMORY[0x1E696ACD8];
    v40 = v2->_titleLabel;
    v41 = [(CNContactListBannerView *)v2 layoutMarginsGuide];
    v42 = [v39 constraintWithItem:v40 attribute:6 relatedBy:-1 toItem:v41 attribute:6 multiplier:1.0 constant:0.0];
    [(NSArray *)v20 addObject:v42];

    v43 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[title]" options:0 metrics:0 views:v64];
    [(NSArray *)v20 addObjectsFromArray:v43];

    v44 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[title]|" options:0 metrics:0 views:v64];
    [(NSArray *)v20 addObjectsFromArray:v44];

    v45 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_footnoteLabel attribute:12 relatedBy:0 toItem:v2->_titleLabel attribute:11 multiplier:1.0 constant:0.0];
    footnoteTitleToTitleVerticalConstraint = v2->_footnoteTitleToTitleVerticalConstraint;
    v2->_footnoteTitleToTitleVerticalConstraint = v45;

    [(NSArray *)v20 addObject:v2->_footnoteTitleToTitleVerticalConstraint];
    v47 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_footnoteLabel attribute:4 relatedBy:-1 toItem:v2 attribute:4 multiplier:1.0 constant:-10.0];
    [(NSArray *)v20 addObject:v47];

    v48 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[footnoteTitle]" options:0 metrics:0 views:v64];
    [(NSArray *)v20 addObjectsFromArray:v48];

    v49 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[footnoteValue]|" options:0 metrics:0 views:v64];
    [(NSArray *)v20 addObjectsFromArray:v49];

    v50 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_footnoteValueLabel attribute:10 relatedBy:0 toItem:v2->_footnoteLabel attribute:10 multiplier:1.0 constant:0.0];
    [(NSArray *)v20 addObject:v50];

    v51 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_footnoteLabel attribute:6 relatedBy:0 toItem:v2->_footnoteValueLabel attribute:5 multiplier:1.0 constant:0.0];
    footnoteTitleToValueHorizontalSpaceConstraint = v2->_footnoteTitleToValueHorizontalSpaceConstraint;
    v2->_footnoteTitleToValueHorizontalSpaceConstraint = v51;

    [(NSArray *)v20 addObject:v2->_footnoteTitleToValueHorizontalSpaceConstraint];
    LODWORD(v53) = 1144750080;
    [(UILabel *)v2->_footnoteLabel setContentHuggingPriority:0 forAxis:v53];
    v54 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[footnoteTitle]|" options:0 metrics:0 views:v64];
    [(NSArray *)v20 addObjectsFromArray:v54];

    v55 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_footnoteContainer attribute:5 relatedBy:0 toItem:v2->_avatarViewContainer attribute:6 multiplier:1.0 constant:10.0];
    [(NSArray *)v20 addObject:v55];

    v56 = MEMORY[0x1E696ACD8];
    v57 = v2->_footnoteContainer;
    v58 = [(CNContactListBannerView *)v2 layoutMarginsGuide];
    v59 = [v56 constraintWithItem:v57 attribute:6 relatedBy:0 toItem:v58 attribute:6 multiplier:1.0 constant:0.0];
    [(NSArray *)v20 addObject:v59];

    v60 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[footnoteContainer]|" options:0 metrics:0 views:v64];
    [(NSArray *)v20 addObjectsFromArray:v60];

    constraintsPendingActivation = v2->_constraintsPendingActivation;
    v2->_constraintsPendingActivation = v20;

    v62 = v2;
  }

  return v2;
}

- (BOOL)displaysContactInfo
{
  v2 = [(CNContactListBannerView *)self meContact];
  v3 = v2 != 0;

  return v3;
}

- (void)updateFontRelatedConstraints
{
  v3 = [(CNContactListBannerView *)self contactListStyleApplier];
  v4 = [(CNContactListBannerView *)self titleLabel];
  [v3 applyContactListStyleToBannerTitle:v4 primaryAppearance:{-[CNContactListBannerView displaysContactInfo](self, "displaysContactInfo")}];

  v5 = [(CNContactListBannerView *)self contactListStyleApplier];
  v6 = [(CNContactListBannerView *)self footnoteLabel];
  [v5 applyContactListStyleToBannerFootnote:v6 primaryAppearance:{-[CNContactListBannerView displaysContactInfo](self, "displaysContactInfo")}];

  v7 = [(CNContactListBannerView *)self contactListStyleApplier];
  v8 = [(CNContactListBannerView *)self footnoteValueLabel];
  [v7 applyContactListStyleToBannerFootnote:v8 primaryAppearance:{-[CNContactListBannerView displaysContactInfo](self, "displaysContactInfo")}];

  v9 = [(CNContactListBannerView *)self footnoteLabel];
  v10 = [v9 font];
  [v10 _scaledValueForValue:20.0];
  v12 = v11;

  v13 = [(CNContactListBannerView *)self footnoteTitleToTitleVerticalConstraint];
  [v13 setConstant:v12];

  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = [(CNContactListBannerView *)self titleLabel];
  [v15 setNumberOfLines:v14];
}

- (void)activatePendingConstraints
{
  v3 = [(CNContactListBannerView *)self constraintsPendingActivation];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(CNContactListBannerView *)self constraintsPendingActivation];
    [v5 activateConstraints:v6];

    v7 = MEMORY[0x1E695E0F0];

    [(CNContactListBannerView *)self setConstraintsPendingActivation:v7];
  }
}

- (void)configureDragInteraction
{
  if ([MEMORY[0x1E69DC988] isEnabledByDefault])
  {
    v3 = [(CNContactListBannerView *)self meContact];

    v4 = [(CNContactListBannerView *)self dragInteraction];
    v8 = v4;
    if (v3)
    {

      if (!v8)
      {
        v5 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:self];
        [(CNContactListBannerView *)self setDragInteraction:v5];

        v6 = [(CNContactListBannerView *)self dragInteraction];
        [(CNContactListBannerView *)self addInteraction:v6];
      }

      v4 = [(CNContactListBannerView *)self dragInteraction];
      v8 = v4;
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    [v4 setEnabled:v7];
  }
}

- (CNContactListBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cellWasSingleTapped:(id)a3
{
  v4 = [(CNContactListBannerView *)self meContact];

  if (v4)
  {
    v6 = [(CNContactListBannerView *)self delegate];
    v5 = [(CNContactListBannerView *)self meContact];
    [v6 bannerView:self wasSelectedToPresentMeContact:v5];
  }
}

- (void)cellWasLongPressed:(id)a3
{
  if ([a3 state] == 1 && -[CNContactListBannerView becomeFirstResponder](self, "becomeFirstResponder"))
  {

    [(CNContactListBannerView *)self showMenu];
  }
}

- (void)showMenu
{
  v4 = [MEMORY[0x1E69DCC68] sharedMenuController];
  [(CNContactListBannerView *)self bounds];
  [v4 setTargetRect:self inView:?];
  [v4 setMenuVisible:1 animated:1];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_menuDidHide_ name:*MEMORY[0x1E69DE0E0] object:v4];
}

- (void)menuDidHide:(id)a3
{
  [(CNContactListBannerView *)self resignFirstResponder];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];
}

- (void)copy:(id)a3
{
  v3 = [(CNContactListBannerView *)self footnoteValueLabel];
  v5 = [v3 text];

  if (v5)
  {
    v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v4 setString:v5];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_copy_ == a3)
  {
    return 1;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = CNContactListBannerView;
  return [CNContactListBannerView canPerformAction:sel_canPerformAction_withSender_ withSender:?];
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [(CNContactListBannerView *)self meContact:a3];
  v6 = [(CNContactListBannerView *)self contactStore];
  v7 = [CNUIDraggingContacts dragItemForContact:v5 withContactStore:v6];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  return v8;
}

- (double)avatarLeadingMargin
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (!v5)
  {
    return 0.0;
  }

  v6 = [(CNContactListBannerView *)self contactListStyleApplier];
  v7 = [v6 contactListStyle];
  v8 = [(CNContactListBannerView *)self traitCollection];
  v9 = [v7 listAppearanceForTraitCollection:v8];

  v10 = [(CNContactListBannerView *)self contactListStyleApplier];
  v11 = [v10 contactListStyle];
  [v11 meBannerAvatarLeadingInsetForListAppearance:v9];
  v13 = v12;

  return v13;
}

- (void)setTopSeparatorWithInset:(double)a3 andLength:(double)a4
{
  if (!self->_topSeparator)
  {
    v7 = [MEMORY[0x1E69966E8] currentEnvironment];
    v8 = [v7 featureFlags];
    v9 = [v8 isFeatureEnabled:29];

    if ((v9 & 1) == 0)
    {
      v10 = [MEMORY[0x1E6979398] layer];
      topSeparator = self->_topSeparator;
      self->_topSeparator = v10;

      v12 = +[CNUIColorRepository contactStyleDefaultSeparatorColor];
      -[CALayer setBackgroundColor:](self->_topSeparator, "setBackgroundColor:", [v12 CGColor]);
    }
  }

  v13 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v13 scale];
  [(CALayer *)self->_topSeparator setFrame:a3, 0.0, a4, 1.0 / v14];

  v15 = [(CNContactListBannerView *)self layer];
  [v15 addSublayer:self->_topSeparator];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CNContactListBannerView;
  v4 = a3;
  [(CNContactListBannerView *)&v8 traitCollectionDidChange:v4];
  v5 = [(CNContactListBannerView *)self traitCollection:v8.receiver];
  v6 = [v4 hasDifferentColorAppearanceComparedToTraitCollection:v5];

  if (v6)
  {
    v7 = +[CNUIColorRepository contactStyleDefaultSeparatorColor];
    -[CALayer setBackgroundColor:](self->_topSeparator, "setBackgroundColor:", [v7 CGColor]);
  }

  [(CNContactListBannerView *)self avatarLeadingMargin];
  [(NSLayoutConstraint *)self->_avatarViewContainerLeadingConstraint setConstant:?];
}

- (void)setMeContact:(id)a3 footnoteTitle:(id)a4 footnoteValue:(id)a5
{
  v23 = a4;
  v9 = a5;
  [(CNContactListBannerView *)self setMeContact:a3];
  v10 = *MEMORY[0x1E6996568];
  v11 = (*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v23);
  v12 = v23;
  if (v11)
  {
    v5 = CNContactsUIBundle();
    v12 = [v5 localizedStringForKey:@"MY_CARD" value:&stru_1F0CE7398 table:@"Localized"];
  }

  v13 = [(CNContactListBannerView *)self footnoteLabel];
  [v13 setText:v12];

  if (v11)
  {
  }

  v14 = [(CNContactListBannerView *)self footnoteValueLabel];
  [v14 setText:v9];

  v15 = (*(v10 + 16))(v10, v9);
  v16 = [(CNContactListBannerView *)self longPress];
  [v16 setEnabled:v15 ^ 1u];

  if (v15)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = -5.0;
  }

  v18 = [(CNContactListBannerView *)self footnoteTitleToValueHorizontalSpaceConstraint];
  [v18 setConstant:v17];

  if ([(CNContactListBannerView *)self displaysContactInfo])
  {
    v19 = [(CNContactListBannerView *)self formatter];
    v20 = [(CNContactListBannerView *)self meContact];
    v21 = [v19 stringFromContact:v20];
    v22 = [(CNContactListBannerView *)self titleLabel];
    [v22 setText:v21];
  }

  else
  {
    v19 = [(CNContactListBannerView *)self titleLabel];
    [v19 setText:0];
  }

  [(CNContactListBannerView *)self updateFontRelatedConstraints];
  [(CNContactListBannerView *)self activatePendingConstraints];
  [(CNContactListBannerView *)self configureDragInteraction];
}

- (void)setAvatarView:(id)a3
{
  firstValue = a3;
  [(UIView *)self->_avatarView removeFromSuperview];
  objc_storeStrong(&self->_avatarView, a3);
  if (firstValue)
  {
    [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = _NSDictionaryOfVariableBindings(&cfstr_Avatarview.isa, firstValue, 0);
    v6 = [(CNContactListBannerView *)self avatarViewContainer];
    [v6 addSubview:firstValue];

    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[avatarView(avatarSize)]|" options:0 metrics:&unk_1F0D4BB38 views:v5];
    [v7 addObjectsFromArray:v8];

    v9 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(verticalMargin)-[avatarView(avatarSize)]-(verticalMargin)-|" options:0 metrics:&unk_1F0D4BB38 views:v5];
    [v7 addObjectsFromArray:v9];

    [MEMORY[0x1E696ACD8] activateConstraints:v7];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    [(UILabel *)self->_titleLabel setPreferredMaxLayoutWidth:floor(width + -40.0 + -20.0)];
LABEL_5:
    [(CNContactListBannerView *)self systemLayoutSizeFittingSize:width, height];
    width = v8;
    goto LABEL_6;
  }

  v6 = [(CNContactListBannerView *)self avatarView];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = 60.0;
LABEL_6:
  v9 = width;
  result.height = v7;
  result.width = v9;
  return result;
}

- (void)setContactListStyleApplier:(id)a3
{
  objc_storeStrong(&self->_contactListStyleApplier, a3);

  [(CNContactListBannerView *)self applyStyle];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContactListBannerView;
  [(CNContactListBannerView *)&v4 dealloc];
}

@end