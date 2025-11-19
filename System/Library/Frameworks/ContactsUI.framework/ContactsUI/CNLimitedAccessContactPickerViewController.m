@interface CNLimitedAccessContactPickerViewController
+ (id)log;
- (CNLimitedAccessContactPickerDelegate)delegate;
- (id)footerBorderColor;
- (id)initDeltaPickerForAppName:(id)a3 bundleId:(id)a4;
- (id)initForAppName:(id)a3 bundleId:(id)a4;
- (id)initForAppName:(id)a3 bundleId:(id)a4 pickerType:(int)a5 selectedContacts:(id)a6 searchText:(id)a7 caption:(unint64_t)a8;
- (id)initForOnboarding:(id)a3 bundleId:(id)a4 selectedContacts:(id)a5;
- (id)initForOnboarding:(id)a3 selectedContacts:(id)a4;
- (id)initForShowSelected:(id)a3;
- (id)initPickerWithContactsAvailableToAddForAppName:(id)a3 bundleId:(id)a4 searchText:(id)a5 caption:(unint64_t)a6;
- (id)initSettingsPickerForAppName:(id)a3 bundleId:(id)a4;
- (void)callDelegateWithSelectedContactList:(id)a3;
- (void)contactListViewController:(id)a3 didUpdateLimitedAccessSelection:(id)a4;
- (void)contactListViewControllerShouldEditLimitedAccessSelection:(id)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContacts:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)contactPickerDidGoBack:(id)a3;
- (void)createContactsAvailableToSelectPickerView;
- (void)createDeltaEditSelectedPickerView;
- (void)createDeltaFooterView;
- (void)createGenericFooterView;
- (void)createGenericPickerViewWithMultiSelectSupport:(BOOL)a3;
- (void)createManageOOPFooterView;
- (void)createOOPEditSelectedPickerView;
- (void)createOnboardingFooterView;
- (void)createOnboardingHeaderView;
- (void)createOnboardingPickerView;
- (void)createSettingsShowSelectedPickerView;
- (void)createShowSelectedFooterView;
- (void)createShowSelectedPickerView;
- (void)doLimitedWithNoContacts;
- (void)handleContinueTapped;
- (void)handleDeselectAllTapped;
- (void)handleLaterTapped;
- (void)handleShowSelectedTapped;
- (void)handleUndoTapped;
- (void)registerForTraitChanges;
- (void)saveSelectionToLimitedAccessContacts:(id)a3;
- (void)setupDeltaFooterConstraints;
- (void)setupManagedOOPFooterConstraints;
- (void)setupOnboardingFooterConstraints;
- (void)setupShowSelectedFooterConstraints;
- (void)updateColors;
- (void)updateFooterShowSelectedButton:(unint64_t)a3;
- (void)updateListViewWithSelectedContacts:(id)a3;
- (void)updateOnboardingUIForSelectionCount:(unint64_t)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CNLimitedAccessContactPickerViewController

- (CNLimitedAccessContactPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactListViewControllerShouldEditLimitedAccessSelection:(id)a3
{
  [(CNLimitedAccessContactPickerViewController *)self setIsSettingsEditingSelection:1];
  v4 = [[CNLimitedAccessContactPickerViewController alloc] initDeltaPickerForAppName:self->_appName bundleId:self->_appBundleId];
  [v4 setDelegate:self];
  [(CNLimitedAccessContactPickerViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)contactListViewController:(id)a3 didUpdateLimitedAccessSelection:(id)a4
{
  v27 = a4;
  objc_storeStrong(&self->_selectedIdentifiersInActivePicker, a4);
  v6 = [v27 count];
  pickerType = self->_pickerType;
  if (pickerType > 2)
  {
    if (pickerType == 3)
    {
      [(CNLimitedAccessContactPickerViewController *)self updateFooterShowSelectedButton:v6];
    }

    else if (pickerType == 4)
    {
      v13 = [MEMORY[0x1E695DFA8] setWithSet:v27];
      [v13 minusSet:self->_selectedIdentifiersOnLoad];
      v14 = [v13 count];
      v15 = [MEMORY[0x1E695DFA8] setWithSet:self->_selectedIdentifiersOnLoad];
      [v15 minusSet:v27];
      v16 = [v15 count];
      v17 = (v14 | v16) == 0;
      if (v14 | v16)
      {
        v21 = v16;
        v22 = MEMORY[0x1E696AEC0];
        v23 = CNContactsUIBundle();
        v24 = [v23 localizedStringForKey:@"LIMITED_CONTACTS_DELTA_CHANGES" value:&stru_1F0CE7398 table:@"Localized"];
        v25 = [v22 localizedStringWithFormat:v24, v14, v21];
        p_deltaAddedAndRemovedLabel = &self->_deltaAddedAndRemovedLabel;
        [(UILabel *)self->_deltaAddedAndRemovedLabel setText:v25];

        [(UILabel *)self->_deltaSelectionCountLabel setHidden:1];
        [(UILabel *)self->_deltaEditedLabel setHidden:0];
        v19 = &OBJC_IVAR___CNLimitedAccessContactPickerViewController__deltaUndoButton;
      }

      else
      {
        [(UILabel *)self->_deltaEditedLabel setHidden:1];
        [(UILabel *)self->_deltaAddedAndRemovedLabel setHidden:1];
        p_deltaAddedAndRemovedLabel = &self->_deltaUndoButton;
        v19 = &OBJC_IVAR___CNLimitedAccessContactPickerViewController__deltaSelectionCountLabel;
      }

      [*p_deltaAddedAndRemovedLabel setHidden:v17];
      [*(&self->super.super.super.isa + *v19) setHidden:0];
      v26 = [(CNLimitedAccessContactPickerViewController *)self view];
      [v26 setNeedsLayout];
    }
  }

  else if (pickerType == 1)
  {
    [(CNLimitedAccessContactPickerViewController *)self updateOnboardingUIForSelectionCount:v6];
  }

  else if (pickerType == 2)
  {
    v8 = [(NSSet *)self->_selectedIdentifiersOnLoad count];
    deselectAllButton = self->_deselectAllButton;
    v10 = CNContactsUIBundle();
    v11 = v10;
    if (v6 >= v8)
    {
      v12 = @"LIMITED_CONTACTS_DESELECT_ALL";
    }

    else
    {
      v12 = @"LIMITED_CONTACTS_SELECT_ALL";
    }

    v20 = [v10 localizedStringForKey:v12 value:&stru_1F0CE7398 table:@"Localized"];
    [(UIButton *)deselectAllButton setTitle:v20 forState:0];
  }
}

- (void)contactPickerDidGoBack:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [(CNLimitedAccessContactPickerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NSSet *)self->_selectedIdentifiersInActivePicker allObjects];
    v7 = [(CNLimitedAccessContactPickerViewController *)self appBundleId];
    v8 = [CNLimitedAccessPickerSupport contactsFromIdentifiers:v6 withBundleId:v7];

    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = [v8 count];
      _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_INFO, "Telling delegate limited access went back with %lu selections", &v11, 0xCu);
    }

    v10 = [(CNLimitedAccessContactPickerViewController *)self delegate];
    [v10 contactPicker:self didGoBackWithSelectedContacts:v8];
  }
}

- (void)contactPickerDidCancel:(id)a3
{
  if (self->_contactPickerViewController == a3)
  {
    v11 = v3;
    v12 = v4;
    v6 = [(CNLimitedAccessContactPickerViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [objc_opt_class() log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_INFO, "Telling delegate limited picker cancelled", v10, 2u);
      }

      v9 = [(CNLimitedAccessContactPickerViewController *)self delegate];
      [v9 contactPickerDidCancel:self];
    }
  }
}

- (void)contactPicker:(id)a3 didSelectContacts:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  pickerType = self->_pickerType;
  if (pickerType <= 3)
  {
    if (pickerType != 1)
    {
      if (pickerType == 3)
      {
        [(CNLimitedAccessContactPickerViewController *)self saveSelectionToLimitedAccessContacts:v6];
        [(CNLimitedAccessContactPickerViewController *)self updateListViewWithSelectedContacts:v7];
        -[CNLimitedAccessContactPickerViewController updateFooterShowSelectedButton:](self, "updateFooterShowSelectedButton:", [v7 count]);
      }

      goto LABEL_12;
    }

    -[CNLimitedAccessContactPickerViewController updateOnboardingUIForSelectionCount:](self, "updateOnboardingUIForSelectionCount:", [v6 count]);
    goto LABEL_10;
  }

  if (pickerType == 4)
  {
    [(CNLimitedAccessContactPickerViewController *)self saveSelectionToLimitedAccessContacts:v6];
  }

  else if (pickerType == 5)
  {
LABEL_10:
    [(CNLimitedAccessContactPickerViewController *)self updateListViewWithSelectedContacts:v7];
  }

LABEL_12:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CNLimitedAccessContactPickerViewController *)self callDelegateWithSelectedContactList:v7];
  }

LABEL_14:
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [CNLimitedAccessPickerSupport addContactsToLimitedAccess:v8 forBundleID:self->_appBundleId];

      v9 = [(CNLimitedAccessContactPickerViewController *)self delegate];
      LOBYTE(v8) = objc_opt_respondsToSelector();

      if (v8)
      {
        v10 = [objc_opt_class() log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [v7 identifier];
          v13 = 138543362;
          v14 = v11;
          _os_log_impl(&dword_199A75000, v10, OS_LOG_TYPE_INFO, "Telling delegate limited access that %{public}@ has been selected", &v13, 0xCu);
        }

        v12 = [(CNLimitedAccessContactPickerViewController *)self delegate];
        [v12 contactPicker:self didSelectContact:v7];
      }
    }
  }
}

- (void)callDelegateWithSelectedContactList:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNLimitedAccessContactPickerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = [v4 count];
      _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_INFO, "Telling delegate limited access has %lu contacts", &v9, 0xCu);
    }

    v8 = [(CNLimitedAccessContactPickerViewController *)self delegate];
    [v8 contactPicker:self didSelectContacts:v4];
  }
}

- (void)saveSelectionToLimitedAccessContacts:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = [v4 count];
    _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_INFO, "Saving limited access selection for %lu contacts", &v6, 0xCu);
  }

  [CNLimitedAccessPickerSupport removeAllLimitedAccessIdentifiersForBundleID:self->_appBundleId];
  [CNLimitedAccessPickerSupport addContactsToLimitedAccess:v4 forBundleID:self->_appBundleId];
}

- (void)updateFooterShowSelectedButton:(unint64_t)a3
{
  if (a3)
  {
    [(UILabel *)self->_selectContactsLabel setHidden:1];
    p_showSelectedButton = &self->_showSelectedButton;
    showSelectedButton = self->_showSelectedButton;
    v7 = MEMORY[0x1E696AEC0];
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"LIMITED_CONTACTS_SHOW_SELECTED" value:&stru_1F0CE7398 table:@"Localized"];
    v10 = [v7 localizedStringWithFormat:v9, a3];
    [(UIButton *)showSelectedButton setTitle:v10 forState:0];
  }

  else
  {
    [(UIButton *)self->_showSelectedButton setHidden:1];
    p_showSelectedButton = &self->_selectContactsLabel;
  }

  v11 = *p_showSelectedButton;

  [v11 setHidden:0];
}

- (void)updateListViewWithSelectedContacts:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = [v4 count];
    _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_INFO, "Reloading limited access summary for %lu contacts", &v11, 0xCu);
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = [v4 _cn_map:*MEMORY[0x1E695C408]];
  v8 = [v6 setWithArray:v7];
  selectedIdentifiersInActivePicker = self->_selectedIdentifiersInActivePicker;
  self->_selectedIdentifiersInActivePicker = v8;

  v10 = [(CNContactPickerViewController *)self->_contactPickerViewController navigationController];
  [v10 didResetLimitedAccessSelectionTo:self->_selectedIdentifiersInActivePicker];
}

- (void)updateOnboardingUIForSelectionCount:(unint64_t)a3
{
  onboardingContinueButton = self->_onboardingContinueButton;
  if (a3)
  {
    [(UIButton *)onboardingContinueButton setEnabled:1];
    onboardingShowSelectedButton = self->_onboardingShowSelectedButton;
    [MEMORY[0x1E69DC888] tintColor];
  }

  else
  {
    [(UIButton *)onboardingContinueButton setEnabled:?];
    onboardingShowSelectedButton = self->_onboardingShowSelectedButton;
    [MEMORY[0x1E69DC888] labelColor];
  }
  v7 = ;
  [(UIButton *)onboardingShowSelectedButton setTitleColor:v7 forState:0];

  v8 = self->_onboardingShowSelectedButton;
  v9 = MEMORY[0x1E696AEC0];
  v12 = CNContactsUIBundle();
  v10 = [v12 localizedStringForKey:@"LIMITED_CONTACTS_ONBOARDING_SELECTED" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [v9 localizedStringWithFormat:v10, a3];
  [(UIButton *)v8 setTitle:v11 forState:0];
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = CNLimitedAccessContactPickerViewController;
  [(CNLimitedAccessContactPickerViewController *)&v10 viewWillLayoutSubviews];
  if (self->_footerView)
  {
    v3 = [MEMORY[0x1E69966E8] currentEnvironment];
    v4 = [v3 featureFlags];
    v5 = [v4 isFeatureEnabled:29];

    if (v5)
    {
      v6 = [(CNContactPickerViewController *)self->_contactPickerViewController scrollView];
      if (!v6)
      {
        return;
      }

      v7 = v6;
      v8 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:v6 edge:4 style:0];
      [(UIView *)self->_footerView addInteraction:v8];
    }

    pickerType = self->_pickerType;
    if (pickerType > 2)
    {
      if (pickerType == 3)
      {
        [(CNLimitedAccessContactPickerViewController *)self setupManagedOOPFooterConstraints];
      }

      else if (pickerType == 4)
      {
        [(CNLimitedAccessContactPickerViewController *)self setupDeltaFooterConstraints];
      }
    }

    else if (pickerType == 1)
    {
      [(CNLimitedAccessContactPickerViewController *)self setupOnboardingFooterConstraints];
    }

    else if (pickerType == 2)
    {
      [(CNLimitedAccessContactPickerViewController *)self setupShowSelectedFooterConstraints];
    }
  }
}

- (void)createGenericFooterView
{
  v29[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  footerView = self->_footerView;
  self->_footerView = v3;

  [(UIView *)self->_footerView setClipsToBounds:1];
  [(UIView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 featureFlags];
  v7 = [v6 isFeatureEnabled:29];

  if ((v7 & 1) == 0)
  {
    v8 = +[CNUIColorRepository contactPickerBackgroundColor];
    [(UIView *)self->_footerView setBackgroundColor:v8];

    v9 = objc_alloc(MEMORY[0x1E69DD298]);
    v10 = [MEMORY[0x1E69DC730] effectWithStyle:1100];
    v11 = [v9 initWithEffect:v10];

    [v11 setClipsToBounds:1];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setAlpha:1.0];
    [(UIView *)self->_footerView addSubview:v11];
    v28 = [v11 topAnchor];
    v27 = [(UIView *)self->_footerView topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v29[0] = v26;
    v25 = [v11 bottomAnchor];
    v24 = [(UIView *)self->_footerView bottomAnchor];
    v12 = [v25 constraintEqualToAnchor:v24];
    v29[1] = v12;
    v13 = [v11 leadingAnchor];
    v14 = [(UIView *)self->_footerView leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v29[2] = v15;
    v16 = [v11 trailingAnchor];
    v17 = [(UIView *)self->_footerView trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v29[3] = v18;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v23];
    v19 = [MEMORY[0x1E69794A0] layer];
    footerViewBorder = self->_footerViewBorder;
    self->_footerViewBorder = v19;

    v21 = [(CNLimitedAccessContactPickerViewController *)self footerBorderColor];
    -[CAShapeLayer setStrokeColor:](self->_footerViewBorder, "setStrokeColor:", [v21 CGColor]);

    [(CAShapeLayer *)self->_footerViewBorder setFillColor:0];
    v22 = [(UIView *)self->_footerView layer];
    [v22 addSublayer:self->_footerViewBorder];
  }
}

- (void)createGenericPickerViewWithMultiSelectSupport:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(CNContactPickerViewController);
  contactPickerViewController = self->_contactPickerViewController;
  self->_contactPickerViewController = v5;

  if (v3)
  {
    v7 = self;
  }

  else
  {
    v7 = [[CNContactPickerSingleContactDelegate alloc] initWithTargetViewController:self];
  }

  contactPickerDelegate = self->_contactPickerDelegate;
  self->_contactPickerDelegate = v7;

  [(CNContactPickerViewController *)self->_contactPickerViewController setDelegate:self->_contactPickerDelegate];
  [(CNContactPickerViewController *)self->_contactPickerViewController setMode:2];
  [(CNContactPickerViewController *)self->_contactPickerViewController setShouldAllowSearchForMultiSelect:1];
  [(CNContactPickerViewController *)self->_contactPickerViewController setOnlyRealContacts:1];
  [(CNContactPickerViewController *)self->_contactPickerViewController setLimitedAccessPickerType:self->_pickerType];
  [(CNContactPickerViewController *)self->_contactPickerViewController setLimitedAccessContactSelection:self->_selectedIdentifiersOnLoad];
  [(CNContactPickerViewController *)self->_contactPickerViewController setLimitedAccessAppName:self->_appName];
  appBundleId = self->_appBundleId;
  v10 = self->_contactPickerViewController;

  [(CNContactPickerViewController *)v10 setLimitedAccessAppBundleId:appBundleId];
}

- (id)footerBorderColor
{
  v2 = [(CNLimitedAccessContactPickerViewController *)self traitCollection];
  if ([v2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] systemDarkGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemLightGrayColor];
  }
  v3 = ;

  return v3;
}

- (void)updateColors
{
  v4 = [(CNLimitedAccessContactPickerViewController *)self footerBorderColor];
  v3 = v4;
  -[CAShapeLayer setStrokeColor:](self->_footerViewBorder, "setStrokeColor:", [v4 CGColor]);
}

- (void)registerForTraitChanges
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v4 = [(CNLimitedAccessContactPickerViewController *)self registerForTraitChanges:v3 withAction:sel_updateColors];
}

- (void)handleDeselectAllTapped
{
  v3 = [(NSSet *)self->_selectedIdentifiersInActivePicker count];
  if (v3 >= [(NSSet *)self->_selectedIdentifiersOnLoad count])
  {
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v4 = self->_selectedIdentifiersOnLoad;
  }

  v6 = v4;
  v5 = [(CNContactPickerViewController *)self->_contactPickerViewController navigationController];
  [v5 didResetLimitedAccessSelectionTo:v6];
}

- (void)handleUndoTapped
{
  v3 = [(CNContactPickerViewController *)self->_contactPickerViewController navigationController];
  [v3 didResetLimitedAccessSelectionTo:self->_selectedIdentifiersOnLoad];
}

- (void)handleShowSelectedTapped
{
  if ([(NSSet *)self->_selectedIdentifiersInActivePicker count])
  {
    v3 = [CNLimitedAccessContactPickerViewController alloc];
    v4 = [(NSSet *)self->_selectedIdentifiersInActivePicker allObjects];
    v5 = [(CNLimitedAccessContactPickerViewController *)v3 initForShowSelected:v4];

    [v5 setDelegate:self];
    [(CNLimitedAccessContactPickerViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (void)setupShowSelectedFooterConstraints
{
  v27[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  footerView = self->_footerView;
  if (v4 == 1)
  {
    v6 = [(UIView *)footerView centerYAnchor];
  }

  else
  {
    v7 = [(UIView *)footerView safeAreaLayoutGuide];
    v6 = [v7 centerYAnchor];
  }

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_footerConstraints];
  }

  v25 = [(UIButton *)self->_deselectAllButton centerYAnchor];
  v26 = v6;
  v24 = [v25 constraintEqualToAnchor:v6];
  v27[0] = v24;
  v22 = [(UIButton *)self->_deselectAllButton centerXAnchor];
  v23 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  v21 = [v23 centerXAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v27[1] = v20;
  v8 = [(UIView *)self->_footerView layoutMarginsGuide];
  v9 = [v8 heightAnchor];
  v10 = [(UIButton *)self->_showSelectedButton heightAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:40.0];
  v27[2] = v11;
  v12 = [(UIView *)self->_footerView bottomAnchor];
  v13 = [(CNLimitedAccessContactPickerViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v27[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  footerConstraints = self->_footerConstraints;
  self->_footerConstraints = v16;

  v18 = [(CNContactPickerViewController *)self->_contactPickerViewController scrollView];

  if (v18)
  {
    contactPickerViewController = self->_contactPickerViewController;
    [(UIView *)self->_footerView frame];
    [(CNContactPickerViewController *)contactPickerViewController setBottomEdgeInsetForContentView:CGRectGetHeight(v28)];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_footerConstraints];
}

- (void)setupDeltaFooterConstraints
{
  v55[12] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  footerView = self->_footerView;
  if (v4 == 1)
  {
    v6 = [(UIView *)footerView centerYAnchor];
  }

  else
  {
    v7 = [(UIView *)footerView safeAreaLayoutGuide];
    v6 = [v7 centerYAnchor];
  }

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_footerConstraints];
  }

  v52 = [(UILabel *)self->_deltaSelectionCountLabel centerYAnchor];
  v53 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  v51 = [v53 centerYAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v55[0] = v50;
  v48 = [(UILabel *)self->_deltaSelectionCountLabel centerXAnchor];
  v49 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  v47 = [v49 centerXAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v55[1] = v46;
  v45 = [(UILabel *)self->_deltaEditedLabel bottomAnchor];
  v44 = [v45 constraintEqualToAnchor:v6];
  v55[2] = v44;
  v42 = [(UILabel *)self->_deltaEditedLabel topAnchor];
  v43 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  v41 = [v43 topAnchor];
  v40 = [v42 constraintGreaterThanOrEqualToAnchor:v41];
  v55[3] = v40;
  v38 = [(UILabel *)self->_deltaEditedLabel centerXAnchor];
  v39 = [(CNLimitedAccessContactPickerViewController *)self footerView];
  v37 = [v39 centerXAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v55[4] = v36;
  v35 = [(UILabel *)self->_deltaAddedAndRemovedLabel topAnchor];
  v34 = [v35 constraintEqualToAnchor:v6];
  v55[5] = v34;
  v32 = [(UILabel *)self->_deltaAddedAndRemovedLabel bottomAnchor];
  v33 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  v31 = [v33 bottomAnchor];
  v30 = [v32 constraintLessThanOrEqualToAnchor:v31];
  v55[6] = v30;
  v28 = [(UILabel *)self->_deltaAddedAndRemovedLabel centerXAnchor];
  v29 = [(CNLimitedAccessContactPickerViewController *)self footerView];
  v27 = [v29 centerXAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v55[7] = v26;
  v25 = [(UIButton *)self->_deltaUndoButton centerYAnchor];
  v54 = v6;
  v24 = [v25 constraintEqualToAnchor:v6];
  v55[8] = v24;
  v22 = [(UIButton *)self->_deltaUndoButton trailingAnchor];
  v23 = [(UIView *)self->_footerView layoutMarginsGuide];
  v21 = [v23 trailingAnchor];
  v8 = [v22 constraintEqualToAnchor:v21 constant:-10.0];
  v55[9] = v8;
  v9 = [(UIView *)self->_footerView layoutMarginsGuide];
  v10 = [v9 heightAnchor];
  v11 = [(UILabel *)self->_deltaSelectionCountLabel heightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:24.0];
  v55[10] = v12;
  v13 = [(UIView *)self->_footerView bottomAnchor];
  v14 = [(CNLimitedAccessContactPickerViewController *)self view];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v55[11] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:12];
  footerConstraints = self->_footerConstraints;
  self->_footerConstraints = v17;

  v19 = [(CNContactPickerViewController *)self->_contactPickerViewController scrollView];

  if (v19)
  {
    contactPickerViewController = self->_contactPickerViewController;
    [(UIView *)self->_footerView frame];
    [(CNContactPickerViewController *)contactPickerViewController setBottomEdgeInsetForContentView:CGRectGetHeight(v56)];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_footerConstraints];
}

- (void)setupManagedOOPFooterConstraints
{
  v33[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  footerView = self->_footerView;
  if (v4 == 1)
  {
    v6 = [(UIView *)footerView centerYAnchor];
  }

  else
  {
    v7 = [(UIView *)footerView safeAreaLayoutGuide];
    v6 = [v7 centerYAnchor];
  }

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_footerConstraints];
  }

  v31 = [(UIButton *)self->_showSelectedButton centerYAnchor];
  v30 = [v31 constraintEqualToAnchor:v6];
  v33[0] = v30;
  v28 = [(UIButton *)self->_showSelectedButton centerXAnchor];
  v29 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  v27 = [v29 centerXAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v33[1] = v26;
  v25 = [(UILabel *)self->_selectContactsLabel centerYAnchor];
  v32 = v6;
  v24 = [v25 constraintEqualToAnchor:v6];
  v33[2] = v24;
  v22 = [(UILabel *)self->_selectContactsLabel centerXAnchor];
  v23 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  v21 = [v23 centerXAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v33[3] = v20;
  v8 = [(UIView *)self->_footerView layoutMarginsGuide];
  v9 = [v8 heightAnchor];
  v10 = [(UIButton *)self->_showSelectedButton heightAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:10.0];
  v33[4] = v11;
  v12 = [(UIView *)self->_footerView bottomAnchor];
  v13 = [(CNLimitedAccessContactPickerViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v33[5] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:6];
  footerConstraints = self->_footerConstraints;
  self->_footerConstraints = v16;

  v18 = [(CNContactPickerViewController *)self->_contactPickerViewController scrollView];

  if (v18)
  {
    contactPickerViewController = self->_contactPickerViewController;
    [(UIView *)self->_footerView frame];
    [(CNContactPickerViewController *)contactPickerViewController setBottomEdgeInsetForContentView:CGRectGetHeight(v34)];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_footerConstraints];
}

- (void)createDeltaFooterView
{
  [(CNLimitedAccessContactPickerViewController *)self createGenericFooterView];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  deltaSelectionCountLabel = self->_deltaSelectionCountLabel;
  self->_deltaSelectionCountLabel = v3;

  v5 = MEMORY[0x1E696AEC0];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SELECTED_CONTACTS_COUNT" value:&stru_1F0CE7398 table:@"Localized"];
  v8 = [v5 localizedStringWithFormat:v7, -[NSSet count](self->_selectedIdentifiersOnLoad, "count")];
  [(UILabel *)self->_deltaSelectionCountLabel setText:v8];

  [(UILabel *)self->_deltaSelectionCountLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(UILabel *)self->_deltaSelectionCountLabel setFont:v9];

  [(UILabel *)self->_deltaSelectionCountLabel setAdjustsFontForContentSizeCategory:0];
  [(UIView *)self->_footerView addSubview:self->_deltaSelectionCountLabel];
  v25 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD10] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
  v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  deltaEditedLabel = self->_deltaEditedLabel;
  self->_deltaEditedLabel = v10;

  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"LIMITED_PICKER_EDITED" value:&stru_1F0CE7398 table:@"Localized"];
  [(UILabel *)self->_deltaEditedLabel setText:v13];

  [(UILabel *)self->_deltaEditedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_deltaEditedLabel setFont:v25];
  [(UILabel *)self->_deltaEditedLabel setAdjustsFontForContentSizeCategory:0];
  [(UILabel *)self->_deltaEditedLabel setHidden:1];
  [(UIView *)self->_footerView addSubview:self->_deltaEditedLabel];
  v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  deltaAddedAndRemovedLabel = self->_deltaAddedAndRemovedLabel;
  self->_deltaAddedAndRemovedLabel = v14;

  v16 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)self->_deltaAddedAndRemovedLabel setTextColor:v16];

  [(UILabel *)self->_deltaAddedAndRemovedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_deltaAddedAndRemovedLabel setFont:v25];
  [(UILabel *)self->_deltaAddedAndRemovedLabel setAdjustsFontForContentSizeCategory:0];
  [(UILabel *)self->_deltaAddedAndRemovedLabel setHidden:1];
  [(UIView *)self->_footerView addSubview:self->_deltaAddedAndRemovedLabel];
  v17 = objc_alloc_init(MEMORY[0x1E69DC738]);
  deltaUndoButton = self->_deltaUndoButton;
  self->_deltaUndoButton = v17;

  v19 = [MEMORY[0x1E69966E8] currentEnvironment];
  v20 = [v19 featureFlags];
  LODWORD(v12) = [v20 isFeatureEnabled:29];

  if (v12)
  {
    v21 = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
    [(UIButton *)self->_deltaUndoButton setConfiguration:v21];
    v22 = self->_deltaUndoButton;
    v23 = [MEMORY[0x1E69DCAB8] cnui_symbolImageNamed:@"arrow.uturn.backward" scale:3 withColor:0 useFixedSize:0];
    [(UIButton *)v22 setImage:v23 forState:0];
  }

  else
  {
    v24 = self->_deltaUndoButton;
    v21 = [MEMORY[0x1E69DCAB8] cnui_symbolImageNamed:@"arrow.uturn.backward.circle" scale:3 withColor:0 useFixedSize:0];
    [(UIButton *)v24 setImage:v21 forState:0];
  }

  [(UIButton *)self->_deltaUndoButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_deltaUndoButton setHidden:1];
  [(UIButton *)self->_deltaUndoButton addTarget:self action:sel_handleUndoTapped forControlEvents:64];
  [(UIView *)self->_footerView addSubview:self->_deltaUndoButton];
}

- (void)createManageOOPFooterView
{
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0 weight:*MEMORY[0x1E69DB980]];
  [(CNLimitedAccessContactPickerViewController *)self createGenericFooterView];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  selectContactsLabel = self->_selectContactsLabel;
  self->_selectContactsLabel = v4;

  v6 = MEMORY[0x1E696AEC0];
  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"LIMITED_CONTACTS_SELECT_CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
  v9 = [v6 localizedStringWithFormat:v8, -[NSSet count](self->_selectedIdentifiersOnLoad, "count")];
  [(UILabel *)self->_selectContactsLabel setText:v9];

  [(UILabel *)self->_selectContactsLabel setFont:v3];
  [(UILabel *)self->_selectContactsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_selectContactsLabel setAdjustsFontForContentSizeCategory:1];
  [(UIView *)self->_footerView addSubview:self->_selectContactsLabel];
  v10 = objc_alloc_init(MEMORY[0x1E69DC738]);
  showSelectedButton = self->_showSelectedButton;
  self->_showSelectedButton = v10;

  v12 = [MEMORY[0x1E69966E8] currentEnvironment];
  v13 = [v12 featureFlags];
  LODWORD(v8) = [v13 isFeatureEnabled:29];

  if (v8)
  {
    v14 = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
    v15 = [v14 background];
    [v15 setCornerRadius:26.0];
  }

  else
  {
    v14 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"LIMITED_CONTACTS_SHOW_SELECTED" value:&stru_1F0CE7398 table:@"Localized"];
  v19 = [v16 localizedStringWithFormat:v18, -[NSSet count](self->_selectedIdentifiersOnLoad, "count")];
  [v14 setTitle:v19];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__CNLimitedAccessContactPickerViewController_createManageOOPFooterView__block_invoke;
  v21[3] = &unk_1E74E6238;
  v22 = v3;
  v20 = v3;
  [v14 setTitleTextAttributesTransformer:v21];
  [(UIButton *)self->_showSelectedButton setConfiguration:v14];
  [(UIButton *)self->_showSelectedButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_showSelectedButton addTarget:self action:sel_handleShowSelectedTapped forControlEvents:64];
  [(UIView *)self->_footerView addSubview:self->_showSelectedButton];
}

id __71__CNLimitedAccessContactPickerViewController_createManageOOPFooterView__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

- (void)createShowSelectedFooterView
{
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0 weight:*MEMORY[0x1E69DB978]];
  [(CNLimitedAccessContactPickerViewController *)self createGenericFooterView];
  v4 = objc_alloc_init(MEMORY[0x1E69DC738]);
  deselectAllButton = self->_deselectAllButton;
  self->_deselectAllButton = v4;

  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 featureFlags];
  v8 = [v7 isFeatureEnabled:29];

  if (v8)
  {
    v9 = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
    v10 = [v9 background];
    [v10 setCornerRadius:26.0];
  }

  else
  {
    v9 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  }

  v11 = CNContactsUIBundle();
  v12 = [v11 localizedStringForKey:@"LIMITED_CONTACTS_DESELECT_ALL" value:&stru_1F0CE7398 table:@"Localized"];
  [v9 setTitle:v12];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CNLimitedAccessContactPickerViewController_createShowSelectedFooterView__block_invoke;
  v14[3] = &unk_1E74E6238;
  v15 = v3;
  v13 = v3;
  [v9 setTitleTextAttributesTransformer:v14];
  [(UIButton *)self->_deselectAllButton setConfiguration:v9];
  [(UIButton *)self->_deselectAllButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_deselectAllButton addTarget:self action:sel_handleDeselectAllTapped forControlEvents:64];
  [(UIView *)self->_footerView addSubview:self->_deselectAllButton];
}

id __74__CNLimitedAccessContactPickerViewController_createShowSelectedFooterView__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

- (void)createContactsAvailableToSelectPickerView
{
  [(CNLimitedAccessContactPickerViewController *)self createGenericPickerViewWithMultiSelectSupport:0];
  [(CNContactPickerViewController *)self->_contactPickerViewController setLimitedAccessContactSelection:self->_selectedIdentifiersOnLoad];
  [(CNContactPickerViewController *)self->_contactPickerViewController setHidesSearchableSources:1];
  [(CNContactPickerViewController *)self->_contactPickerViewController setLimitedAccessSearchQuery:self->_initalSearchText];
  [(CNContactPickerViewController *)self->_contactPickerViewController setLimitedAccessCaption:self->_caption];
  [(CNContactPickerViewController *)self->_contactPickerViewController setAllowsCancel:1];
  v4 = CNContactsUIBundle();
  v3 = [v4 localizedStringForKey:@"LIMITED_CONTACTS_APPAFFORDANCE_PICKER_PROMPT" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNContactPickerViewController *)self->_contactPickerViewController setPrompt:v3];
}

- (void)createShowSelectedPickerView
{
  [(CNLimitedAccessContactPickerViewController *)self createGenericPickerViewWithMultiSelectSupport:1];
  [(CNContactPickerViewController *)self->_contactPickerViewController setLimitedAccessContactSelection:self->_selectedIdentifiersOnLoad];
  contactPickerViewController = self->_contactPickerViewController;

  [(CNContactPickerViewController *)contactPickerViewController setHidesSearchableSources:1];
}

- (void)createSettingsShowSelectedPickerView
{
  [(CNContactPickerViewController *)self->_contactPickerViewController setLimitedAccessContactSelection:self->_selectedIdentifiersOnLoad];
  [(CNLimitedAccessContactPickerViewController *)self createGenericPickerViewWithMultiSelectSupport:1];
  [(CNContactPickerViewController *)self->_contactPickerViewController setLimitedAccessContactSelection:self->_selectedIdentifiersOnLoad];
  [(CNContactPickerViewController *)self->_contactPickerViewController setHidesSearchableSources:1];
  v3 = MEMORY[0x1E696AEC0];
  v6 = CNContactsUIBundle();
  v4 = [v6 localizedStringForKey:@"LIMITED_CONTACTS_SELECTED_PROMPT" value:&stru_1F0CE7398 table:@"Localized"];
  v5 = [v3 localizedStringWithFormat:v4, -[NSSet count](self->_selectedIdentifiersOnLoad, "count")];
  [(CNContactPickerViewController *)self->_contactPickerViewController setPrompt:v5];
}

- (void)createDeltaEditSelectedPickerView
{
  [(CNLimitedAccessContactPickerViewController *)self createGenericPickerViewWithMultiSelectSupport:1];
  v3 = MEMORY[0x1E696AEC0];
  v6 = CNContactsUIBundle();
  v4 = [v6 localizedStringForKey:@"LIMITED_PICKER_PRIVACY-%@" value:&stru_1F0CE7398 table:@"Localized"];
  v5 = [v3 stringWithFormat:v4, self->_appName];
  [(CNContactPickerViewController *)self->_contactPickerViewController setPrompt:v5];
}

- (void)createOOPEditSelectedPickerView
{
  [(CNLimitedAccessContactPickerViewController *)self createGenericPickerViewWithMultiSelectSupport:1];
  v3 = MEMORY[0x1E696AEC0];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"LIMITED_PICKER_PRIVACY-%@" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = [v3 stringWithFormat:v5, self->_appName];
  [(CNContactPickerViewController *)self->_contactPickerViewController setPrompt:v6];

  contactPickerViewController = self->_contactPickerViewController;

  [(CNContactPickerViewController *)contactPickerViewController setHasPickerPrivacyUI:1];
}

- (void)doLimitedWithNoContacts
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Limited picker select contacts later", v4, 2u);
  }

  [(CNContactPickerViewController *)self->_contactPickerViewController pickerDidSelectContactsLater];
  [(CNLimitedAccessContactPickerViewController *)self callDelegateWithSelectedContactList:MEMORY[0x1E695E0F0]];
}

- (void)handleLaterTapped
{
  if ([(NSSet *)self->_selectedIdentifiersInActivePicker count])
  {
    v3 = CNContactsUIBundle();
    v4 = [v3 localizedStringForKey:@"LIMITED_PICKER_CANCEL_WARNING_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

    v5 = MEMORY[0x1E696AEC0];
    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"LIMITED_PICKER_CANCEL_WARNING_MESSAGE-%@" value:&stru_1F0CE7398 table:@"Localized"];
    v8 = [v5 stringWithFormat:v7, self->_appName];

    v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:v8 preferredStyle:1];
    v10 = MEMORY[0x1E69DC648];
    v11 = CNContactsUIBundle();
    v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
    v13 = [v10 actionWithTitle:v12 style:1 handler:&__block_literal_global_117];
    [v9 addAction:v13];

    v14 = MEMORY[0x1E69DC648];
    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"LIMITED_PICKER_CANCEL_SELECT_LATER" value:&stru_1F0CE7398 table:@"Localized"];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__CNLimitedAccessContactPickerViewController_handleLaterTapped__block_invoke_2;
    v18[3] = &unk_1E74E6C28;
    v18[4] = self;
    v17 = [v14 actionWithTitle:v16 style:0 handler:v18];
    [v9 addAction:v17];

    [(CNLimitedAccessContactPickerViewController *)self presentViewController:v9 animated:1 completion:0];
  }

  else
  {

    [(CNLimitedAccessContactPickerViewController *)self doLimitedWithNoContacts];
  }
}

- (void)handleContinueTapped
{
  v2 = [(CNContactPickerViewController *)self->_contactPickerViewController navigationController];
  [v2 didFinishLimitedAccessSelection];
}

- (void)setupOnboardingFooterConstraints
{
  v40[10] = *MEMORY[0x1E69E9840];
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_onboardingConstraints];
  }

  if ([(CNLimitedAccessContactPickerViewController *)self pickerType]== 1)
  {
    v3 = 158.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [(CNContactPickerViewController *)self->_contactPickerViewController scrollView];

  if (v4)
  {
    [(CNContactPickerViewController *)self->_contactPickerViewController setBottomEdgeInsetForContentView:v3];
  }

  v38 = [(UIButton *)self->_onboardingContinueButton topAnchor];
  v39 = [(UIView *)self->_footerView layoutMarginsGuide];
  v37 = [v39 topAnchor];
  v36 = [v38 constraintEqualToAnchor:v37 constant:10.0];
  v40[0] = v36;
  v34 = [(UIButton *)self->_onboardingContinueButton leadingAnchor];
  v35 = [(UIView *)self->_footerView layoutMarginsGuide];
  v33 = [v35 leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:20.0];
  v40[1] = v32;
  v30 = [(UIButton *)self->_onboardingContinueButton trailingAnchor];
  v31 = [(UIView *)self->_footerView layoutMarginsGuide];
  v29 = [v31 trailingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:-20.0];
  v40[2] = v28;
  v27 = [(UIButton *)self->_onboardingContinueButton heightAnchor];
  v26 = [v27 constraintEqualToConstant:52.0];
  v40[3] = v26;
  v24 = [(UIButton *)self->_onboardingLaterButton leadingAnchor];
  v25 = [(UIView *)self->_footerView layoutMarginsGuide];
  v23 = [v25 leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:20.0];
  v40[4] = v22;
  v20 = [(UIButton *)self->_onboardingLaterButton trailingAnchor];
  v21 = [(UIView *)self->_footerView layoutMarginsGuide];
  v19 = [v21 trailingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:-20.0];
  v40[5] = v18;
  v17 = [(UIButton *)self->_onboardingLaterButton topAnchor];
  v16 = [(UIButton *)self->_onboardingContinueButton bottomAnchor];
  v15 = [v17 constraintEqualToAnchor:v16 constant:4.0];
  v40[6] = v15;
  v5 = [(UIButton *)self->_onboardingLaterButton heightAnchor];
  v6 = [v5 constraintEqualToConstant:52.0];
  v40[7] = v6;
  v7 = [(UIView *)self->_footerView heightAnchor];
  v8 = [v7 constraintEqualToConstant:v3];
  v40[8] = v8;
  v9 = [(UIView *)self->_footerView bottomAnchor];
  v10 = [(CNLimitedAccessContactPickerViewController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v40[9] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:10];
  onboardingConstraints = self->_onboardingConstraints;
  self->_onboardingConstraints = v13;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_onboardingConstraints];
}

- (void)createOnboardingFooterView
{
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0 weight:*MEMORY[0x1E69DB980]];
  [(CNLimitedAccessContactPickerViewController *)self createGenericFooterView];
  v4 = objc_alloc_init(MEMORY[0x1E69DC738]);
  onboardingContinueButton = self->_onboardingContinueButton;
  self->_onboardingContinueButton = v4;

  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 featureFlags];
  if ([v7 isFeatureEnabled:29])
  {
    [MEMORY[0x1E69DC740] _tintedGlassButtonConfiguration];
  }

  else
  {
    [MEMORY[0x1E69DC740] filledButtonConfiguration];
  }
  v8 = ;

  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"LIMITED_PICKER_CONTINUE" value:&stru_1F0CE7398 table:@"Localized"];
  [v8 setTitle:v10];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __72__CNLimitedAccessContactPickerViewController_createOnboardingFooterView__block_invoke;
  v29[3] = &unk_1E74E6238;
  v11 = v3;
  v30 = v11;
  [v8 setTitleTextAttributesTransformer:v29];
  v12 = [MEMORY[0x1E69966E8] currentEnvironment];
  v13 = [v12 featureFlags];
  if ([v13 isFeatureEnabled:29])
  {
    v14 = 26.0;
  }

  else
  {
    v14 = 14.0;
  }

  v15 = [v8 background];
  [v15 setCornerRadius:v14];

  [v8 setCornerStyle:-1];
  [(UIButton *)self->_onboardingContinueButton setConfiguration:v8];
  [(UIButton *)self->_onboardingContinueButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_onboardingContinueButton addTarget:self action:sel_handleContinueTapped forControlEvents:64];
  [(UIView *)self->_footerView addSubview:self->_onboardingContinueButton];
  v16 = objc_alloc_init(MEMORY[0x1E69DC738]);
  onboardingLaterButton = self->_onboardingLaterButton;
  self->_onboardingLaterButton = v16;

  v18 = [MEMORY[0x1E69966E8] currentEnvironment];
  v19 = [v18 featureFlags];
  if ([v19 isFeatureEnabled:29])
  {
    [MEMORY[0x1E69DC740] _glassButtonConfiguration];
  }

  else
  {
    [MEMORY[0x1E69DC740] plainButtonConfiguration];
  }
  v20 = ;

  v21 = CNContactsUIBundle();
  v22 = [v21 localizedStringForKey:@"LIMITED_PICKER_LATER" value:&stru_1F0CE7398 table:@"Localized"];
  [v20 setTitle:v22];

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __72__CNLimitedAccessContactPickerViewController_createOnboardingFooterView__block_invoke_2;
  v27 = &unk_1E74E6238;
  v28 = v11;
  v23 = v11;
  [v20 setTitleTextAttributesTransformer:&v24];
  [(UIButton *)self->_onboardingLaterButton setConfiguration:v20, v24, v25, v26, v27];
  [(UIButton *)self->_onboardingLaterButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_onboardingLaterButton addTarget:self action:sel_handleLaterTapped forControlEvents:64];
  [(UIView *)self->_footerView addSubview:self->_onboardingLaterButton];
}

id __72__CNLimitedAccessContactPickerViewController_createOnboardingFooterView__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

id __72__CNLimitedAccessContactPickerViewController_createOnboardingFooterView__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

- (void)createOnboardingHeaderView
{
  v26[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  headerView = self->_headerView;
  self->_headerView = v3;

  [(UIView *)self->_headerView setClipsToBounds:1];
  [(UIView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_alloc_init(MEMORY[0x1E69DC738]);
  onboardingShowSelectedButton = self->_onboardingShowSelectedButton;
  self->_onboardingShowSelectedButton = v5;

  v25 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v7 = MEMORY[0x1E696AEC0];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"LIMITED_CONTACTS_ONBOARDING_SELECTED" value:&stru_1F0CE7398 table:@"Localized"];
  v10 = [v7 localizedStringWithFormat:v9, 0];
  [v25 setTitle:v10];

  v11 = [MEMORY[0x1E69DC888] labelColor];
  [v25 setBaseForegroundColor:v11];

  [v25 setTitleTextAttributesTransformer:&__block_literal_global_90];
  [(UIButton *)self->_onboardingShowSelectedButton setConfiguration:v25];
  [(UIButton *)self->_onboardingShowSelectedButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_onboardingShowSelectedButton addTarget:self action:sel_handleShowSelectedTapped forControlEvents:64];
  [(UIView *)self->_headerView addSubview:self->_onboardingShowSelectedButton];
  v24 = [(UIButton *)self->_onboardingShowSelectedButton topAnchor];
  v23 = [(UIView *)self->_headerView topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:3.0];
  v26[0] = v22;
  v21 = [(UIButton *)self->_onboardingShowSelectedButton leadingAnchor];
  v12 = [(UIView *)self->_headerView leadingAnchor];
  v13 = [v21 constraintEqualToAnchor:v12 constant:20.0];
  v26[1] = v13;
  v14 = [(UIButton *)self->_onboardingShowSelectedButton trailingAnchor];
  v15 = [(UIView *)self->_headerView trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-20.0];
  v26[2] = v16;
  v17 = [(UIButton *)self->_onboardingShowSelectedButton heightAnchor];
  v18 = [(UIView *)self->_headerView heightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v26[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v20];
}

id __72__CNLimitedAccessContactPickerViewController_createOnboardingHeaderView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB978]];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

- (void)createOnboardingPickerView
{
  [(CNLimitedAccessContactPickerViewController *)self createGenericPickerViewWithMultiSelectSupport:1];
  contactPickerViewController = self->_contactPickerViewController;

  [(CNContactPickerViewController *)contactPickerViewController setPrompt:&stru_1F0CE7398];
}

- (id)initForAppName:(id)a3 bundleId:(id)a4 pickerType:(int)a5 selectedContacts:(id)a6 searchText:(id)a7 caption:(unint64_t)a8
{
  v125[3] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v117 = a6;
  v116 = a7;
  v118.receiver = self;
  v118.super_class = CNLimitedAccessContactPickerViewController;
  v16 = [(CNLimitedAccessContactPickerViewController *)&v118 initWithNibName:0 bundle:0];
  if (!v16)
  {
    goto LABEL_35;
  }

  v115 = v15;
  v17 = (*(*MEMORY[0x1E6996570] + 16))();
  v114 = v14;
  if ((v17 & 1) == 0)
  {
    v14 = [CNLimitedAccessPickerSupport appNameForBundleId:v115];
  }

  objc_storeStrong(&v16->_appName, v14);
  if ((v17 & 1) == 0)
  {
  }

  objc_storeStrong(&v16->_appBundleId, a4);
  objc_storeStrong(&v16->_selectedIdentifiersOnLoad, a6);
  v16->_pickerType = a5;
  objc_storeStrong(&v16->_initalSearchText, a7);
  v16->_caption = a8;
  if (a5 <= 2)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        [(CNLimitedAccessContactPickerViewController *)v16 createOnboardingPickerView];
        [(CNLimitedAccessContactPickerViewController *)v16 createOnboardingHeaderView];
        [(CNLimitedAccessContactPickerViewController *)v16 createOnboardingFooterView];
      }

      else if (a5 == 2)
      {
        [(CNLimitedAccessContactPickerViewController *)v16 createShowSelectedPickerView];
        [(CNLimitedAccessContactPickerViewController *)v16 createShowSelectedFooterView];
      }
    }

    else
    {
      [(CNLimitedAccessContactPickerViewController *)v16 createGenericPickerViewWithMultiSelectSupport:1];
    }
  }

  else if (a5 > 4)
  {
    if (a5 == 5)
    {
      [(CNLimitedAccessContactPickerViewController *)v16 createSettingsShowSelectedPickerView];
    }

    else if (a5 == 6)
    {
      [(CNLimitedAccessContactPickerViewController *)v16 createContactsAvailableToSelectPickerView];
    }
  }

  else if (a5 == 3)
  {
    [(CNLimitedAccessContactPickerViewController *)v16 createOOPEditSelectedPickerView];
    [(CNLimitedAccessContactPickerViewController *)v16 createManageOOPFooterView];
  }

  else
  {
    [(CNLimitedAccessContactPickerViewController *)v16 createDeltaEditSelectedPickerView];
    [(CNLimitedAccessContactPickerViewController *)v16 createDeltaFooterView];
  }

  v18 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(CNLimitedAccessContactPickerViewController *)v16 addChildViewController:v16->_contactPickerViewController];
  v19 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  v20 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
  [v19 addSubview:v20];

  if (a5 != 4)
  {
    [(CNContactPickerViewController *)v16->_contactPickerViewController didMoveToParentViewController:v16];
  }

  v94 = MEMORY[0x1E696ACD8];
  v112 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
  v106 = [v112 widthAnchor];
  v109 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  v103 = [v109 widthAnchor];
  v100 = [v106 constraintEqualToAnchor:v103];
  v125[0] = v100;
  v97 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
  v91 = [v97 leadingAnchor];
  v21 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  v22 = [v21 leadingAnchor];
  v23 = [v91 constraintEqualToAnchor:v22];
  v125[1] = v23;
  v24 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
  v25 = [v24 trailingAnchor];
  v26 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  v27 = [v26 trailingAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  v125[2] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:3];
  [v94 activateConstraints:v29];

  if (v16->_headerView)
  {
    v30 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    [v30 addSubview:v16->_headerView];

    v104 = MEMORY[0x1E696ACD8];
    v110 = [(UIView *)v16->_headerView widthAnchor];
    v101 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    v92 = [v101 widthAnchor];
    v98 = [v110 constraintEqualToAnchor:v92];
    v124[0] = v98;
    v85 = [(UIView *)v16->_headerView leadingAnchor];
    v81 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    v113 = [v81 leadingAnchor];
    v107 = [v85 constraintEqualToAnchor:v113];
    v124[1] = v107;
    v89 = [(UIView *)v16->_headerView trailingAnchor];
    v95 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    v87 = [v95 trailingAnchor];
    v83 = [v89 constraintEqualToAnchor:v87];
    v124[2] = v83;
    v79 = [(UIView *)v16->_headerView topAnchor];
    v31 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    v32 = [v31 topAnchor];
    v33 = [v79 constraintEqualToAnchor:v32];
    v124[3] = v33;
    v34 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
    v35 = [v34 topAnchor];
    v36 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    v37 = [v36 topAnchor];
    v38 = [v35 constraintEqualToAnchor:v37];
    v124[4] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:5];
    [v104 activateConstraints:v39];

    v40 = v81;
    v41 = v92;

    v42 = v101;
    v43 = v85;

    v44 = v98;
    v45 = v110;
  }

  else
  {
    v46 = MEMORY[0x1E696ACD8];
    v45 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
    v42 = [v45 topAnchor];
    v41 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    v44 = [v41 topAnchor];
    v43 = [v42 constraintEqualToAnchor:v44];
    v123 = v43;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
    [v46 activateConstraints:v40];
  }

  if (!v16->_footerView)
  {
    v66 = MEMORY[0x1E696ACD8];
    v60 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
    v61 = [v60 bottomAnchor];
    v62 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    v63 = [v62 bottomAnchor];
    v64 = [v61 constraintEqualToAnchor:v63];
    v119 = v64;
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
    [v66 activateConstraints:v67];

LABEL_31:
    v14 = v114;
    goto LABEL_32;
  }

  v47 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  [v47 addSubview:v16->_footerView];

  v88 = MEMORY[0x1E696ACD8];
  v108 = [(UIView *)v16->_footerView widthAnchor];
  v111 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  v105 = [v111 widthAnchor];
  v102 = [v108 constraintEqualToAnchor:v105];
  v122[0] = v102;
  v96 = [(UIView *)v16->_footerView leadingAnchor];
  v99 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  v93 = [v99 leadingAnchor];
  v90 = [v96 constraintEqualToAnchor:v93];
  v122[1] = v90;
  v84 = [(UIView *)v16->_footerView trailingAnchor];
  v86 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  v82 = [v86 trailingAnchor];
  v80 = [v84 constraintEqualToAnchor:v82];
  v122[2] = v80;
  v77 = [(UIView *)v16->_footerView bottomAnchor];
  v78 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  v48 = [v78 bottomAnchor];
  v49 = [v77 constraintEqualToAnchor:v48];
  v122[3] = v49;
  v50 = [(UIView *)v16->_footerView layoutMarginsGuide];
  v51 = [v50 bottomAnchor];
  v52 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  v53 = [v52 layoutMarginsGuide];
  v54 = [v53 bottomAnchor];
  v55 = [v51 constraintEqualToAnchor:v54];
  v122[4] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:5];
  [v88 activateConstraints:v56];

  v57 = [MEMORY[0x1E69966E8] currentEnvironment];
  v58 = [v57 featureFlags];
  LODWORD(v56) = [v58 isFeatureEnabled:29];

  v59 = MEMORY[0x1E696ACD8];
  if (!v56)
  {
    v60 = [(UIView *)v16->_footerView topAnchor];
    v61 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
    v62 = [v61 bottomAnchor];
    v63 = [v60 constraintEqualToAnchor:v62];
    v120 = v63;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
    [v59 activateConstraints:v64];
    goto LABEL_31;
  }

  v60 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
  v61 = [v60 bottomAnchor];
  v62 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  v63 = [v62 bottomAnchor];
  v64 = [v61 constraintEqualToAnchor:v63];
  v121 = v64;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
  [v59 activateConstraints:v65];

  v14 = v114;
LABEL_32:

  if (v16->_footerViewBorder)
  {
    [(UIView *)v16->_footerView bounds];
    v69 = v68;
    v71 = v70;
    v73 = v72;
    [(CAShapeLayer *)v16->_footerViewBorder setFrame:?];
    v74 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v69, v71, v73, 0.0}];
    -[CAShapeLayer setPath:](v16->_footerViewBorder, "setPath:", [v74 CGPath]);
  }

  [(CNLimitedAccessContactPickerViewController *)v16 registerForTraitChanges];
  v75 = v16;
  v15 = v115;
LABEL_35:

  return v16;
}

- (id)initPickerWithContactsAvailableToAddForAppName:(id)a3 bundleId:(id)a4 searchText:(id)a5 caption:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [CNLimitedAccessPickerSupport allowedIdentifiersForBundleID:v11];
  v14 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:v12 bundleId:v11 pickerType:6 selectedContacts:v13 searchText:v10 caption:a6];

  return v14;
}

- (id)initSettingsPickerForAppName:(id)a3 bundleId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CNLimitedAccessPickerSupport allowedIdentifiersForBundleID:v6];
  v9 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:v7 bundleId:v6 pickerType:5 selectedContacts:v8 searchText:0 caption:0];

  return v9;
}

- (id)initDeltaPickerForAppName:(id)a3 bundleId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CNLimitedAccessPickerSupport allowedIdentifiersForBundleID:v6];
  v9 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:v7 bundleId:v6 pickerType:4 selectedContacts:v8 searchText:0 caption:0];

  return v9;
}

- (id)initForAppName:(id)a3 bundleId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CNLimitedAccessPickerSupport allowedIdentifiersForBundleID:v6];
  v9 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:v7 bundleId:v6 pickerType:3 selectedContacts:v8 searchText:0 caption:0];

  return v9;
}

- (id)initForShowSelected:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v5 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:&stru_1F0CE7398 bundleId:&stru_1F0CE7398 pickerType:2 selectedContacts:v4 searchText:0 caption:0];

  return v5;
}

- (id)initForOnboarding:(id)a3 bundleId:(id)a4 selectedContacts:(id)a5
{
  v8 = MEMORY[0x1E695DFD8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 setWithArray:a5];
  v12 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:v10 bundleId:v9 pickerType:1 selectedContacts:v11 searchText:0 caption:0];

  return v12;
}

- (id)initForOnboarding:(id)a3 selectedContacts:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a3;
  v8 = [v6 setWithArray:a4];
  v9 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:v7 bundleId:&stru_1F0CE7398 pickerType:1 selectedContacts:v8 searchText:0 caption:0];

  return v9;
}

+ (id)log
{
  if (log_cn_once_token_1_58377 != -1)
  {
    dispatch_once(&log_cn_once_token_1_58377, &__block_literal_global_58378);
  }

  v3 = log_cn_once_object_1_58379;

  return v3;
}

uint64_t __49__CNLimitedAccessContactPickerViewController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNLimitedAccessContactPickerViewController");
  v1 = log_cn_once_object_1_58379;
  log_cn_once_object_1_58379 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end