@interface CNContactListBannerView
+ (id)descriptorForRequiredKeys;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)displaysContactInfo;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CNContactListBannerView)init;
- (CNContactListBannerViewDelegate)delegate;
- (double)avatarLeadingMargin;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (void)activatePendingConstraints;
- (void)cellWasLongPressed:(id)pressed;
- (void)cellWasSingleTapped:(id)tapped;
- (void)configureDragInteraction;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)menuDidHide:(id)hide;
- (void)setAvatarView:(id)view;
- (void)setContactListStyleApplier:(id)applier;
- (void)setMeContact:(id)contact footnoteTitle:(id)title footnoteValue:(id)value;
- (void)setTopSeparatorWithInset:(double)inset andLength:(double)length;
- (void)showMenu;
- (void)traitCollectionDidChange:(id)change;
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v2->_footnoteContainer setBackgroundColor:clearColor];

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
    array = [MEMORY[0x1E695DF70] array];
    v67 = [MEMORY[0x1E696ACD8] constraintWithItem:v2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    LODWORD(v21) = 1132068864;
    [v67 setPriority:v21];
    [(NSArray *)array addObject:v67];
    v22 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_avatarViewContainer attribute:10 relatedBy:0 toItem:v2 attribute:10 multiplier:1.0 constant:0.0];
    [(NSArray *)array addObject:v22];

    v23 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_avatarViewContainer attribute:8 relatedBy:-1 toItem:v2 attribute:8 multiplier:1.0 constant:0.0];
    [(NSArray *)array addObject:v23];

    v24 = MEMORY[0x1E696ACD8];
    v25 = v2->_avatarViewContainer;
    layoutMarginsGuide = [(CNContactListBannerView *)v2 layoutMarginsGuide];
    [(CNContactListBannerView *)v2 avatarLeadingMargin];
    v28 = [v24 constraintWithItem:v25 attribute:5 relatedBy:0 toItem:layoutMarginsGuide attribute:5 multiplier:1.0 constant:v27];
    avatarViewContainerLeadingConstraint = v2->_avatarViewContainerLeadingConstraint;
    v2->_avatarViewContainerLeadingConstraint = v28;

    [(NSArray *)array addObject:v2->_avatarViewContainerLeadingConstraint];
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
    [(NSArray *)array addObject:v66];
    v35 = [MEMORY[0x1E696ACD8] constraintWithItem:v9 attribute:10 relatedBy:0 toItem:v2 attribute:10 multiplier:1.0 constant:0.0];
    [(NSArray *)array addObject:v35];

    v36 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_titleLabel attribute:3 relatedBy:1 toItem:v2 attribute:3 multiplier:1.0 constant:10.0];
    [(NSArray *)array addObject:v36];

    LODWORD(v37) = 1148846080;
    [(UILabel *)v2->_titleLabel setContentCompressionResistancePriority:1 forAxis:v37];
    v38 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_titleLabel attribute:5 relatedBy:0 toItem:v2->_avatarViewContainer attribute:6 multiplier:1.0 constant:10.0];
    [(NSArray *)array addObject:v38];

    v39 = MEMORY[0x1E696ACD8];
    v40 = v2->_titleLabel;
    layoutMarginsGuide2 = [(CNContactListBannerView *)v2 layoutMarginsGuide];
    v42 = [v39 constraintWithItem:v40 attribute:6 relatedBy:-1 toItem:layoutMarginsGuide2 attribute:6 multiplier:1.0 constant:0.0];
    [(NSArray *)array addObject:v42];

    v43 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[title]" options:0 metrics:0 views:v64];
    [(NSArray *)array addObjectsFromArray:v43];

    v44 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[title]|" options:0 metrics:0 views:v64];
    [(NSArray *)array addObjectsFromArray:v44];

    v45 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_footnoteLabel attribute:12 relatedBy:0 toItem:v2->_titleLabel attribute:11 multiplier:1.0 constant:0.0];
    footnoteTitleToTitleVerticalConstraint = v2->_footnoteTitleToTitleVerticalConstraint;
    v2->_footnoteTitleToTitleVerticalConstraint = v45;

    [(NSArray *)array addObject:v2->_footnoteTitleToTitleVerticalConstraint];
    v47 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_footnoteLabel attribute:4 relatedBy:-1 toItem:v2 attribute:4 multiplier:1.0 constant:-10.0];
    [(NSArray *)array addObject:v47];

    v48 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[footnoteTitle]" options:0 metrics:0 views:v64];
    [(NSArray *)array addObjectsFromArray:v48];

    v49 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[footnoteValue]|" options:0 metrics:0 views:v64];
    [(NSArray *)array addObjectsFromArray:v49];

    v50 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_footnoteValueLabel attribute:10 relatedBy:0 toItem:v2->_footnoteLabel attribute:10 multiplier:1.0 constant:0.0];
    [(NSArray *)array addObject:v50];

    v51 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_footnoteLabel attribute:6 relatedBy:0 toItem:v2->_footnoteValueLabel attribute:5 multiplier:1.0 constant:0.0];
    footnoteTitleToValueHorizontalSpaceConstraint = v2->_footnoteTitleToValueHorizontalSpaceConstraint;
    v2->_footnoteTitleToValueHorizontalSpaceConstraint = v51;

    [(NSArray *)array addObject:v2->_footnoteTitleToValueHorizontalSpaceConstraint];
    LODWORD(v53) = 1144750080;
    [(UILabel *)v2->_footnoteLabel setContentHuggingPriority:0 forAxis:v53];
    v54 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[footnoteTitle]|" options:0 metrics:0 views:v64];
    [(NSArray *)array addObjectsFromArray:v54];

    v55 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->_footnoteContainer attribute:5 relatedBy:0 toItem:v2->_avatarViewContainer attribute:6 multiplier:1.0 constant:10.0];
    [(NSArray *)array addObject:v55];

    v56 = MEMORY[0x1E696ACD8];
    v57 = v2->_footnoteContainer;
    layoutMarginsGuide3 = [(CNContactListBannerView *)v2 layoutMarginsGuide];
    v59 = [v56 constraintWithItem:v57 attribute:6 relatedBy:0 toItem:layoutMarginsGuide3 attribute:6 multiplier:1.0 constant:0.0];
    [(NSArray *)array addObject:v59];

    v60 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[footnoteContainer]|" options:0 metrics:0 views:v64];
    [(NSArray *)array addObjectsFromArray:v60];

    constraintsPendingActivation = v2->_constraintsPendingActivation;
    v2->_constraintsPendingActivation = array;

    v62 = v2;
  }

  return v2;
}

- (BOOL)displaysContactInfo
{
  meContact = [(CNContactListBannerView *)self meContact];
  v3 = meContact != 0;

  return v3;
}

- (void)updateFontRelatedConstraints
{
  contactListStyleApplier = [(CNContactListBannerView *)self contactListStyleApplier];
  titleLabel = [(CNContactListBannerView *)self titleLabel];
  [contactListStyleApplier applyContactListStyleToBannerTitle:titleLabel primaryAppearance:{-[CNContactListBannerView displaysContactInfo](self, "displaysContactInfo")}];

  contactListStyleApplier2 = [(CNContactListBannerView *)self contactListStyleApplier];
  footnoteLabel = [(CNContactListBannerView *)self footnoteLabel];
  [contactListStyleApplier2 applyContactListStyleToBannerFootnote:footnoteLabel primaryAppearance:{-[CNContactListBannerView displaysContactInfo](self, "displaysContactInfo")}];

  contactListStyleApplier3 = [(CNContactListBannerView *)self contactListStyleApplier];
  footnoteValueLabel = [(CNContactListBannerView *)self footnoteValueLabel];
  [contactListStyleApplier3 applyContactListStyleToBannerFootnote:footnoteValueLabel primaryAppearance:{-[CNContactListBannerView displaysContactInfo](self, "displaysContactInfo")}];

  footnoteLabel2 = [(CNContactListBannerView *)self footnoteLabel];
  font = [footnoteLabel2 font];
  [font _scaledValueForValue:20.0];
  v12 = v11;

  footnoteTitleToTitleVerticalConstraint = [(CNContactListBannerView *)self footnoteTitleToTitleVerticalConstraint];
  [footnoteTitleToTitleVerticalConstraint setConstant:v12];

  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  titleLabel2 = [(CNContactListBannerView *)self titleLabel];
  [titleLabel2 setNumberOfLines:v14];
}

- (void)activatePendingConstraints
{
  constraintsPendingActivation = [(CNContactListBannerView *)self constraintsPendingActivation];
  v4 = [constraintsPendingActivation count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    constraintsPendingActivation2 = [(CNContactListBannerView *)self constraintsPendingActivation];
    [v5 activateConstraints:constraintsPendingActivation2];

    v7 = MEMORY[0x1E695E0F0];

    [(CNContactListBannerView *)self setConstraintsPendingActivation:v7];
  }
}

- (void)configureDragInteraction
{
  if ([MEMORY[0x1E69DC988] isEnabledByDefault])
  {
    meContact = [(CNContactListBannerView *)self meContact];

    dragInteraction = [(CNContactListBannerView *)self dragInteraction];
    v8 = dragInteraction;
    if (meContact)
    {

      if (!v8)
      {
        v5 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:self];
        [(CNContactListBannerView *)self setDragInteraction:v5];

        dragInteraction2 = [(CNContactListBannerView *)self dragInteraction];
        [(CNContactListBannerView *)self addInteraction:dragInteraction2];
      }

      dragInteraction = [(CNContactListBannerView *)self dragInteraction];
      v8 = dragInteraction;
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    [dragInteraction setEnabled:v7];
  }
}

- (CNContactListBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cellWasSingleTapped:(id)tapped
{
  meContact = [(CNContactListBannerView *)self meContact];

  if (meContact)
  {
    delegate = [(CNContactListBannerView *)self delegate];
    meContact2 = [(CNContactListBannerView *)self meContact];
    [delegate bannerView:self wasSelectedToPresentMeContact:meContact2];
  }
}

- (void)cellWasLongPressed:(id)pressed
{
  if ([pressed state] == 1 && -[CNContactListBannerView becomeFirstResponder](self, "becomeFirstResponder"))
  {

    [(CNContactListBannerView *)self showMenu];
  }
}

- (void)showMenu
{
  mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
  [(CNContactListBannerView *)self bounds];
  [mEMORY[0x1E69DCC68] setTargetRect:self inView:?];
  [mEMORY[0x1E69DCC68] setMenuVisible:1 animated:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_menuDidHide_ name:*MEMORY[0x1E69DE0E0] object:mEMORY[0x1E69DCC68]];
}

- (void)menuDidHide:(id)hide
{
  [(CNContactListBannerView *)self resignFirstResponder];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)copy:(id)copy
{
  footnoteValueLabel = [(CNContactListBannerView *)self footnoteValueLabel];
  text = [footnoteValueLabel text];

  if (text)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    [generalPasteboard setString:text];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_copy_ == action)
  {
    return 1;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = CNContactListBannerView;
  return [CNContactListBannerView canPerformAction:sel_canPerformAction_withSender_ withSender:?];
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [(CNContactListBannerView *)self meContact:interaction];
  contactStore = [(CNContactListBannerView *)self contactStore];
  v7 = [CNUIDraggingContacts dragItemForContact:v5 withContactStore:contactStore];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  return v8;
}

- (double)avatarLeadingMargin
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (!v5)
  {
    return 0.0;
  }

  contactListStyleApplier = [(CNContactListBannerView *)self contactListStyleApplier];
  contactListStyle = [contactListStyleApplier contactListStyle];
  traitCollection = [(CNContactListBannerView *)self traitCollection];
  v9 = [contactListStyle listAppearanceForTraitCollection:traitCollection];

  contactListStyleApplier2 = [(CNContactListBannerView *)self contactListStyleApplier];
  contactListStyle2 = [contactListStyleApplier2 contactListStyle];
  [contactListStyle2 meBannerAvatarLeadingInsetForListAppearance:v9];
  v13 = v12;

  return v13;
}

- (void)setTopSeparatorWithInset:(double)inset andLength:(double)length
{
  if (!self->_topSeparator)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v9 = [featureFlags isFeatureEnabled:29];

    if ((v9 & 1) == 0)
    {
      layer = [MEMORY[0x1E6979398] layer];
      topSeparator = self->_topSeparator;
      self->_topSeparator = layer;

      v12 = +[CNUIColorRepository contactStyleDefaultSeparatorColor];
      -[CALayer setBackgroundColor:](self->_topSeparator, "setBackgroundColor:", [v12 CGColor]);
    }
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  [(CALayer *)self->_topSeparator setFrame:inset, 0.0, length, 1.0 / v14];

  layer2 = [(CNContactListBannerView *)self layer];
  [layer2 addSublayer:self->_topSeparator];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CNContactListBannerView;
  changeCopy = change;
  [(CNContactListBannerView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CNContactListBannerView *)self traitCollection:v8.receiver];
  v6 = [changeCopy hasDifferentColorAppearanceComparedToTraitCollection:v5];

  if (v6)
  {
    v7 = +[CNUIColorRepository contactStyleDefaultSeparatorColor];
    -[CALayer setBackgroundColor:](self->_topSeparator, "setBackgroundColor:", [v7 CGColor]);
  }

  [(CNContactListBannerView *)self avatarLeadingMargin];
  [(NSLayoutConstraint *)self->_avatarViewContainerLeadingConstraint setConstant:?];
}

- (void)setMeContact:(id)contact footnoteTitle:(id)title footnoteValue:(id)value
{
  titleCopy = title;
  valueCopy = value;
  [(CNContactListBannerView *)self setMeContact:contact];
  v10 = *MEMORY[0x1E6996568];
  v11 = (*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], titleCopy);
  v12 = titleCopy;
  if (v11)
  {
    v5 = CNContactsUIBundle();
    v12 = [v5 localizedStringForKey:@"MY_CARD" value:&stru_1F0CE7398 table:@"Localized"];
  }

  footnoteLabel = [(CNContactListBannerView *)self footnoteLabel];
  [footnoteLabel setText:v12];

  if (v11)
  {
  }

  footnoteValueLabel = [(CNContactListBannerView *)self footnoteValueLabel];
  [footnoteValueLabel setText:valueCopy];

  v15 = (*(v10 + 16))(v10, valueCopy);
  longPress = [(CNContactListBannerView *)self longPress];
  [longPress setEnabled:v15 ^ 1u];

  if (v15)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = -5.0;
  }

  footnoteTitleToValueHorizontalSpaceConstraint = [(CNContactListBannerView *)self footnoteTitleToValueHorizontalSpaceConstraint];
  [footnoteTitleToValueHorizontalSpaceConstraint setConstant:v17];

  if ([(CNContactListBannerView *)self displaysContactInfo])
  {
    formatter = [(CNContactListBannerView *)self formatter];
    meContact = [(CNContactListBannerView *)self meContact];
    v21 = [formatter stringFromContact:meContact];
    titleLabel = [(CNContactListBannerView *)self titleLabel];
    [titleLabel setText:v21];
  }

  else
  {
    formatter = [(CNContactListBannerView *)self titleLabel];
    [formatter setText:0];
  }

  [(CNContactListBannerView *)self updateFontRelatedConstraints];
  [(CNContactListBannerView *)self activatePendingConstraints];
  [(CNContactListBannerView *)self configureDragInteraction];
}

- (void)setAvatarView:(id)view
{
  firstValue = view;
  [(UIView *)self->_avatarView removeFromSuperview];
  objc_storeStrong(&self->_avatarView, view);
  if (firstValue)
  {
    [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = _NSDictionaryOfVariableBindings(&cfstr_Avatarview.isa, firstValue, 0);
    avatarViewContainer = [(CNContactListBannerView *)self avatarViewContainer];
    [avatarViewContainer addSubview:firstValue];

    array = [MEMORY[0x1E695DF70] array];
    v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[avatarView(avatarSize)]|" options:0 metrics:&unk_1F0D4BB38 views:v5];
    [array addObjectsFromArray:v8];

    v9 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(verticalMargin)-[avatarView(avatarSize)]-(verticalMargin)-|" options:0 metrics:&unk_1F0D4BB38 views:v5];
    [array addObjectsFromArray:v9];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    [(UILabel *)self->_titleLabel setPreferredMaxLayoutWidth:floor(width + -40.0 + -20.0)];
LABEL_5:
    [(CNContactListBannerView *)self systemLayoutSizeFittingSize:width, height];
    width = v8;
    goto LABEL_6;
  }

  avatarView = [(CNContactListBannerView *)self avatarView];

  if (!avatarView)
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

- (void)setContactListStyleApplier:(id)applier
{
  objc_storeStrong(&self->_contactListStyleApplier, applier);

  [(CNContactListBannerView *)self applyStyle];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContactListBannerView;
  [(CNContactListBannerView *)&v4 dealloc];
}

@end