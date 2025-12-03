@interface CNLimitedAccessContactPickerViewController
+ (id)log;
- (CNLimitedAccessContactPickerDelegate)delegate;
- (id)footerBorderColor;
- (id)initDeltaPickerForAppName:(id)name bundleId:(id)id;
- (id)initForAppName:(id)name bundleId:(id)id;
- (id)initForAppName:(id)name bundleId:(id)id pickerType:(int)type selectedContacts:(id)contacts searchText:(id)text caption:(unint64_t)caption;
- (id)initForOnboarding:(id)onboarding bundleId:(id)id selectedContacts:(id)contacts;
- (id)initForOnboarding:(id)onboarding selectedContacts:(id)contacts;
- (id)initForShowSelected:(id)selected;
- (id)initPickerWithContactsAvailableToAddForAppName:(id)name bundleId:(id)id searchText:(id)text caption:(unint64_t)caption;
- (id)initSettingsPickerForAppName:(id)name bundleId:(id)id;
- (void)callDelegateWithSelectedContactList:(id)list;
- (void)contactListViewController:(id)controller didUpdateLimitedAccessSelection:(id)selection;
- (void)contactListViewControllerShouldEditLimitedAccessSelection:(id)selection;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContacts:(id)contacts;
- (void)contactPickerDidCancel:(id)cancel;
- (void)contactPickerDidGoBack:(id)back;
- (void)createContactsAvailableToSelectPickerView;
- (void)createDeltaEditSelectedPickerView;
- (void)createDeltaFooterView;
- (void)createGenericFooterView;
- (void)createGenericPickerViewWithMultiSelectSupport:(BOOL)support;
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
- (void)saveSelectionToLimitedAccessContacts:(id)contacts;
- (void)setupDeltaFooterConstraints;
- (void)setupManagedOOPFooterConstraints;
- (void)setupOnboardingFooterConstraints;
- (void)setupShowSelectedFooterConstraints;
- (void)updateColors;
- (void)updateFooterShowSelectedButton:(unint64_t)button;
- (void)updateListViewWithSelectedContacts:(id)contacts;
- (void)updateOnboardingUIForSelectionCount:(unint64_t)count;
- (void)viewWillLayoutSubviews;
@end

@implementation CNLimitedAccessContactPickerViewController

- (CNLimitedAccessContactPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactListViewControllerShouldEditLimitedAccessSelection:(id)selection
{
  [(CNLimitedAccessContactPickerViewController *)self setIsSettingsEditingSelection:1];
  v4 = [[CNLimitedAccessContactPickerViewController alloc] initDeltaPickerForAppName:self->_appName bundleId:self->_appBundleId];
  [v4 setDelegate:self];
  [(CNLimitedAccessContactPickerViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)contactListViewController:(id)controller didUpdateLimitedAccessSelection:(id)selection
{
  selectionCopy = selection;
  objc_storeStrong(&self->_selectedIdentifiersInActivePicker, selection);
  v6 = [selectionCopy count];
  pickerType = self->_pickerType;
  if (pickerType > 2)
  {
    if (pickerType == 3)
    {
      [(CNLimitedAccessContactPickerViewController *)self updateFooterShowSelectedButton:v6];
    }

    else if (pickerType == 4)
    {
      v13 = [MEMORY[0x1E695DFA8] setWithSet:selectionCopy];
      [v13 minusSet:self->_selectedIdentifiersOnLoad];
      v14 = [v13 count];
      v15 = [MEMORY[0x1E695DFA8] setWithSet:self->_selectedIdentifiersOnLoad];
      [v15 minusSet:selectionCopy];
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
      view = [(CNLimitedAccessContactPickerViewController *)self view];
      [view setNeedsLayout];
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

- (void)contactPickerDidGoBack:(id)back
{
  v13 = *MEMORY[0x1E69E9840];
  delegate = [(CNLimitedAccessContactPickerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    allObjects = [(NSSet *)self->_selectedIdentifiersInActivePicker allObjects];
    appBundleId = [(CNLimitedAccessContactPickerViewController *)self appBundleId];
    v8 = [CNLimitedAccessPickerSupport contactsFromIdentifiers:allObjects withBundleId:appBundleId];

    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = [v8 count];
      _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_INFO, "Telling delegate limited access went back with %lu selections", &v11, 0xCu);
    }

    delegate2 = [(CNLimitedAccessContactPickerViewController *)self delegate];
    [delegate2 contactPicker:self didGoBackWithSelectedContacts:v8];
  }
}

- (void)contactPickerDidCancel:(id)cancel
{
  if (self->_contactPickerViewController == cancel)
  {
    v11 = v3;
    v12 = v4;
    delegate = [(CNLimitedAccessContactPickerViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [objc_opt_class() log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_INFO, "Telling delegate limited picker cancelled", v10, 2u);
      }

      delegate2 = [(CNLimitedAccessContactPickerViewController *)self delegate];
      [delegate2 contactPickerDidCancel:self];
    }
  }
}

- (void)contactPicker:(id)picker didSelectContacts:(id)contacts
{
  pickerCopy = picker;
  contactsCopy = contacts;
  v7 = contactsCopy;
  if (!contactsCopy)
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
        [(CNLimitedAccessContactPickerViewController *)self saveSelectionToLimitedAccessContacts:contactsCopy];
        [(CNLimitedAccessContactPickerViewController *)self updateListViewWithSelectedContacts:v7];
        -[CNLimitedAccessContactPickerViewController updateFooterShowSelectedButton:](self, "updateFooterShowSelectedButton:", [v7 count]);
      }

      goto LABEL_12;
    }

    -[CNLimitedAccessContactPickerViewController updateOnboardingUIForSelectionCount:](self, "updateOnboardingUIForSelectionCount:", [contactsCopy count]);
    goto LABEL_10;
  }

  if (pickerType == 4)
  {
    [(CNLimitedAccessContactPickerViewController *)self saveSelectionToLimitedAccessContacts:contactsCopy];
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

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  v15[1] = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  contactCopy = contact;
  if (contactCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15[0] = contactCopy;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [CNLimitedAccessPickerSupport addContactsToLimitedAccess:v8 forBundleID:self->_appBundleId];

      delegate = [(CNLimitedAccessContactPickerViewController *)self delegate];
      LOBYTE(v8) = objc_opt_respondsToSelector();

      if (v8)
      {
        v10 = [objc_opt_class() log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          identifier = [contactCopy identifier];
          v13 = 138543362;
          v14 = identifier;
          _os_log_impl(&dword_199A75000, v10, OS_LOG_TYPE_INFO, "Telling delegate limited access that %{public}@ has been selected", &v13, 0xCu);
        }

        delegate2 = [(CNLimitedAccessContactPickerViewController *)self delegate];
        [delegate2 contactPicker:self didSelectContact:contactCopy];
      }
    }
  }
}

- (void)callDelegateWithSelectedContactList:(id)list
{
  v11 = *MEMORY[0x1E69E9840];
  listCopy = list;
  delegate = [(CNLimitedAccessContactPickerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = [listCopy count];
      _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_INFO, "Telling delegate limited access has %lu contacts", &v9, 0xCu);
    }

    delegate2 = [(CNLimitedAccessContactPickerViewController *)self delegate];
    [delegate2 contactPicker:self didSelectContacts:listCopy];
  }
}

- (void)saveSelectionToLimitedAccessContacts:(id)contacts
{
  v8 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = [contactsCopy count];
    _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_INFO, "Saving limited access selection for %lu contacts", &v6, 0xCu);
  }

  [CNLimitedAccessPickerSupport removeAllLimitedAccessIdentifiersForBundleID:self->_appBundleId];
  [CNLimitedAccessPickerSupport addContactsToLimitedAccess:contactsCopy forBundleID:self->_appBundleId];
}

- (void)updateFooterShowSelectedButton:(unint64_t)button
{
  if (button)
  {
    [(UILabel *)self->_selectContactsLabel setHidden:1];
    p_showSelectedButton = &self->_showSelectedButton;
    showSelectedButton = self->_showSelectedButton;
    v7 = MEMORY[0x1E696AEC0];
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"LIMITED_CONTACTS_SHOW_SELECTED" value:&stru_1F0CE7398 table:@"Localized"];
    button = [v7 localizedStringWithFormat:v9, button];
    [(UIButton *)showSelectedButton setTitle:button forState:0];
  }

  else
  {
    [(UIButton *)self->_showSelectedButton setHidden:1];
    p_showSelectedButton = &self->_selectContactsLabel;
  }

  v11 = *p_showSelectedButton;

  [v11 setHidden:0];
}

- (void)updateListViewWithSelectedContacts:(id)contacts
{
  v13 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = [contactsCopy count];
    _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_INFO, "Reloading limited access summary for %lu contacts", &v11, 0xCu);
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = [contactsCopy _cn_map:*MEMORY[0x1E695C408]];
  v8 = [v6 setWithArray:v7];
  selectedIdentifiersInActivePicker = self->_selectedIdentifiersInActivePicker;
  self->_selectedIdentifiersInActivePicker = v8;

  navigationController = [(CNContactPickerViewController *)self->_contactPickerViewController navigationController];
  [navigationController didResetLimitedAccessSelectionTo:self->_selectedIdentifiersInActivePicker];
}

- (void)updateOnboardingUIForSelectionCount:(unint64_t)count
{
  onboardingContinueButton = self->_onboardingContinueButton;
  if (count)
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
  v11 = [v9 localizedStringWithFormat:v10, count];
  [(UIButton *)v8 setTitle:v11 forState:0];
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = CNLimitedAccessContactPickerViewController;
  [(CNLimitedAccessContactPickerViewController *)&v10 viewWillLayoutSubviews];
  if (self->_footerView)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v5 = [featureFlags isFeatureEnabled:29];

    if (v5)
    {
      scrollView = [(CNContactPickerViewController *)self->_contactPickerViewController scrollView];
      if (!scrollView)
      {
        return;
      }

      v7 = scrollView;
      v8 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:scrollView edge:4 style:0];
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v7 = [featureFlags isFeatureEnabled:29];

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
    topAnchor = [v11 topAnchor];
    topAnchor2 = [(UIView *)self->_footerView topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v29[0] = v26;
    bottomAnchor = [v11 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_footerView bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v29[1] = v12;
    leadingAnchor = [v11 leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_footerView leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[2] = v15;
    trailingAnchor = [v11 trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_footerView trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[3] = v18;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v23];
    layer = [MEMORY[0x1E69794A0] layer];
    footerViewBorder = self->_footerViewBorder;
    self->_footerViewBorder = layer;

    footerBorderColor = [(CNLimitedAccessContactPickerViewController *)self footerBorderColor];
    -[CAShapeLayer setStrokeColor:](self->_footerViewBorder, "setStrokeColor:", [footerBorderColor CGColor]);

    [(CAShapeLayer *)self->_footerViewBorder setFillColor:0];
    layer2 = [(UIView *)self->_footerView layer];
    [layer2 addSublayer:self->_footerViewBorder];
  }
}

- (void)createGenericPickerViewWithMultiSelectSupport:(BOOL)support
{
  supportCopy = support;
  v5 = objc_alloc_init(CNContactPickerViewController);
  contactPickerViewController = self->_contactPickerViewController;
  self->_contactPickerViewController = v5;

  if (supportCopy)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[CNContactPickerSingleContactDelegate alloc] initWithTargetViewController:self];
  }

  contactPickerDelegate = self->_contactPickerDelegate;
  self->_contactPickerDelegate = selfCopy;

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
  traitCollection = [(CNLimitedAccessContactPickerViewController *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
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
  footerBorderColor = [(CNLimitedAccessContactPickerViewController *)self footerBorderColor];
  v3 = footerBorderColor;
  -[CAShapeLayer setStrokeColor:](self->_footerViewBorder, "setStrokeColor:", [footerBorderColor CGColor]);
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
  navigationController = [(CNContactPickerViewController *)self->_contactPickerViewController navigationController];
  [navigationController didResetLimitedAccessSelectionTo:v6];
}

- (void)handleUndoTapped
{
  navigationController = [(CNContactPickerViewController *)self->_contactPickerViewController navigationController];
  [navigationController didResetLimitedAccessSelectionTo:self->_selectedIdentifiersOnLoad];
}

- (void)handleShowSelectedTapped
{
  if ([(NSSet *)self->_selectedIdentifiersInActivePicker count])
  {
    v3 = [CNLimitedAccessContactPickerViewController alloc];
    allObjects = [(NSSet *)self->_selectedIdentifiersInActivePicker allObjects];
    v5 = [(CNLimitedAccessContactPickerViewController *)v3 initForShowSelected:allObjects];

    [v5 setDelegate:self];
    [(CNLimitedAccessContactPickerViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (void)setupShowSelectedFooterConstraints
{
  v27[4] = *MEMORY[0x1E69E9840];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  footerView = self->_footerView;
  if (userInterfaceIdiom == 1)
  {
    centerYAnchor = [(UIView *)footerView centerYAnchor];
  }

  else
  {
    safeAreaLayoutGuide = [(UIView *)footerView safeAreaLayoutGuide];
    centerYAnchor = [safeAreaLayoutGuide centerYAnchor];
  }

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_footerConstraints];
  }

  centerYAnchor2 = [(UIButton *)self->_deselectAllButton centerYAnchor];
  v26 = centerYAnchor;
  v24 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor];
  v27[0] = v24;
  centerXAnchor = [(UIButton *)self->_deselectAllButton centerXAnchor];
  safeAreaLayoutGuide2 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide2 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v27[1] = v20;
  layoutMarginsGuide = [(UIView *)self->_footerView layoutMarginsGuide];
  heightAnchor = [layoutMarginsGuide heightAnchor];
  heightAnchor2 = [(UIButton *)self->_showSelectedButton heightAnchor];
  v11 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:40.0];
  v27[2] = v11;
  bottomAnchor = [(UIView *)self->_footerView bottomAnchor];
  view = [(CNLimitedAccessContactPickerViewController *)self view];
  bottomAnchor2 = [view bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  footerConstraints = self->_footerConstraints;
  self->_footerConstraints = v16;

  scrollView = [(CNContactPickerViewController *)self->_contactPickerViewController scrollView];

  if (scrollView)
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  footerView = self->_footerView;
  if (userInterfaceIdiom == 1)
  {
    centerYAnchor = [(UIView *)footerView centerYAnchor];
  }

  else
  {
    safeAreaLayoutGuide = [(UIView *)footerView safeAreaLayoutGuide];
    centerYAnchor = [safeAreaLayoutGuide centerYAnchor];
  }

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_footerConstraints];
  }

  centerYAnchor2 = [(UILabel *)self->_deltaSelectionCountLabel centerYAnchor];
  safeAreaLayoutGuide2 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  centerYAnchor3 = [safeAreaLayoutGuide2 centerYAnchor];
  v50 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
  v55[0] = v50;
  centerXAnchor = [(UILabel *)self->_deltaSelectionCountLabel centerXAnchor];
  safeAreaLayoutGuide3 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide3 centerXAnchor];
  v46 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v55[1] = v46;
  bottomAnchor = [(UILabel *)self->_deltaEditedLabel bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:centerYAnchor];
  v55[2] = v44;
  topAnchor = [(UILabel *)self->_deltaEditedLabel topAnchor];
  safeAreaLayoutGuide4 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide4 topAnchor];
  v40 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v55[3] = v40;
  centerXAnchor3 = [(UILabel *)self->_deltaEditedLabel centerXAnchor];
  footerView = [(CNLimitedAccessContactPickerViewController *)self footerView];
  centerXAnchor4 = [footerView centerXAnchor];
  v36 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v55[4] = v36;
  topAnchor3 = [(UILabel *)self->_deltaAddedAndRemovedLabel topAnchor];
  v34 = [topAnchor3 constraintEqualToAnchor:centerYAnchor];
  v55[5] = v34;
  bottomAnchor2 = [(UILabel *)self->_deltaAddedAndRemovedLabel bottomAnchor];
  safeAreaLayoutGuide5 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide5 bottomAnchor];
  v30 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
  v55[6] = v30;
  centerXAnchor5 = [(UILabel *)self->_deltaAddedAndRemovedLabel centerXAnchor];
  footerView2 = [(CNLimitedAccessContactPickerViewController *)self footerView];
  centerXAnchor6 = [footerView2 centerXAnchor];
  v26 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v55[7] = v26;
  centerYAnchor4 = [(UIButton *)self->_deltaUndoButton centerYAnchor];
  v54 = centerYAnchor;
  v24 = [centerYAnchor4 constraintEqualToAnchor:centerYAnchor];
  v55[8] = v24;
  trailingAnchor = [(UIButton *)self->_deltaUndoButton trailingAnchor];
  layoutMarginsGuide = [(UIView *)self->_footerView layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v55[9] = v8;
  layoutMarginsGuide2 = [(UIView *)self->_footerView layoutMarginsGuide];
  heightAnchor = [layoutMarginsGuide2 heightAnchor];
  heightAnchor2 = [(UILabel *)self->_deltaSelectionCountLabel heightAnchor];
  v12 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:24.0];
  v55[10] = v12;
  bottomAnchor4 = [(UIView *)self->_footerView bottomAnchor];
  view = [(CNLimitedAccessContactPickerViewController *)self view];
  bottomAnchor5 = [view bottomAnchor];
  v16 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v55[11] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:12];
  footerConstraints = self->_footerConstraints;
  self->_footerConstraints = v17;

  scrollView = [(CNContactPickerViewController *)self->_contactPickerViewController scrollView];

  if (scrollView)
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  footerView = self->_footerView;
  if (userInterfaceIdiom == 1)
  {
    centerYAnchor = [(UIView *)footerView centerYAnchor];
  }

  else
  {
    safeAreaLayoutGuide = [(UIView *)footerView safeAreaLayoutGuide];
    centerYAnchor = [safeAreaLayoutGuide centerYAnchor];
  }

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_footerConstraints];
  }

  centerYAnchor2 = [(UIButton *)self->_showSelectedButton centerYAnchor];
  v30 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor];
  v33[0] = v30;
  centerXAnchor = [(UIButton *)self->_showSelectedButton centerXAnchor];
  safeAreaLayoutGuide2 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide2 centerXAnchor];
  v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v33[1] = v26;
  centerYAnchor3 = [(UILabel *)self->_selectContactsLabel centerYAnchor];
  v32 = centerYAnchor;
  v24 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor];
  v33[2] = v24;
  centerXAnchor3 = [(UILabel *)self->_selectContactsLabel centerXAnchor];
  safeAreaLayoutGuide3 = [(UIView *)self->_footerView safeAreaLayoutGuide];
  centerXAnchor4 = [safeAreaLayoutGuide3 centerXAnchor];
  v20 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v33[3] = v20;
  layoutMarginsGuide = [(UIView *)self->_footerView layoutMarginsGuide];
  heightAnchor = [layoutMarginsGuide heightAnchor];
  heightAnchor2 = [(UIButton *)self->_showSelectedButton heightAnchor];
  v11 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:10.0];
  v33[4] = v11;
  bottomAnchor = [(UIView *)self->_footerView bottomAnchor];
  view = [(CNLimitedAccessContactPickerViewController *)self view];
  bottomAnchor2 = [view bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v33[5] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:6];
  footerConstraints = self->_footerConstraints;
  self->_footerConstraints = v16;

  scrollView = [(CNContactPickerViewController *)self->_contactPickerViewController scrollView];

  if (scrollView)
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

  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)self->_deltaAddedAndRemovedLabel setTextColor:systemGrayColor];

  [(UILabel *)self->_deltaAddedAndRemovedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_deltaAddedAndRemovedLabel setFont:v25];
  [(UILabel *)self->_deltaAddedAndRemovedLabel setAdjustsFontForContentSizeCategory:0];
  [(UILabel *)self->_deltaAddedAndRemovedLabel setHidden:1];
  [(UIView *)self->_footerView addSubview:self->_deltaAddedAndRemovedLabel];
  v17 = objc_alloc_init(MEMORY[0x1E69DC738]);
  deltaUndoButton = self->_deltaUndoButton;
  self->_deltaUndoButton = v17;

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  LODWORD(v12) = [featureFlags isFeatureEnabled:29];

  if (v12)
  {
    _glassButtonConfiguration = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
    [(UIButton *)self->_deltaUndoButton setConfiguration:_glassButtonConfiguration];
    v22 = self->_deltaUndoButton;
    v23 = [MEMORY[0x1E69DCAB8] cnui_symbolImageNamed:@"arrow.uturn.backward" scale:3 withColor:0 useFixedSize:0];
    [(UIButton *)v22 setImage:v23 forState:0];
  }

  else
  {
    v24 = self->_deltaUndoButton;
    _glassButtonConfiguration = [MEMORY[0x1E69DCAB8] cnui_symbolImageNamed:@"arrow.uturn.backward.circle" scale:3 withColor:0 useFixedSize:0];
    [(UIButton *)v24 setImage:_glassButtonConfiguration forState:0];
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

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  LODWORD(v8) = [featureFlags isFeatureEnabled:29];

  if (v8)
  {
    _glassButtonConfiguration = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
    background = [_glassButtonConfiguration background];
    [background setCornerRadius:26.0];
  }

  else
  {
    _glassButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"LIMITED_CONTACTS_SHOW_SELECTED" value:&stru_1F0CE7398 table:@"Localized"];
  v19 = [v16 localizedStringWithFormat:v18, -[NSSet count](self->_selectedIdentifiersOnLoad, "count")];
  [_glassButtonConfiguration setTitle:v19];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__CNLimitedAccessContactPickerViewController_createManageOOPFooterView__block_invoke;
  v21[3] = &unk_1E74E6238;
  v22 = v3;
  v20 = v3;
  [_glassButtonConfiguration setTitleTextAttributesTransformer:v21];
  [(UIButton *)self->_showSelectedButton setConfiguration:_glassButtonConfiguration];
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

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v8 = [featureFlags isFeatureEnabled:29];

  if (v8)
  {
    _glassButtonConfiguration = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
    background = [_glassButtonConfiguration background];
    [background setCornerRadius:26.0];
  }

  else
  {
    _glassButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  }

  v11 = CNContactsUIBundle();
  v12 = [v11 localizedStringForKey:@"LIMITED_CONTACTS_DESELECT_ALL" value:&stru_1F0CE7398 table:@"Localized"];
  [_glassButtonConfiguration setTitle:v12];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CNLimitedAccessContactPickerViewController_createShowSelectedFooterView__block_invoke;
  v14[3] = &unk_1E74E6238;
  v15 = v3;
  v13 = v3;
  [_glassButtonConfiguration setTitleTextAttributesTransformer:v14];
  [(UIButton *)self->_deselectAllButton setConfiguration:_glassButtonConfiguration];
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
  navigationController = [(CNContactPickerViewController *)self->_contactPickerViewController navigationController];
  [navigationController didFinishLimitedAccessSelection];
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

  scrollView = [(CNContactPickerViewController *)self->_contactPickerViewController scrollView];

  if (scrollView)
  {
    [(CNContactPickerViewController *)self->_contactPickerViewController setBottomEdgeInsetForContentView:v3];
  }

  topAnchor = [(UIButton *)self->_onboardingContinueButton topAnchor];
  layoutMarginsGuide = [(UIView *)self->_footerView layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v40[0] = v36;
  leadingAnchor = [(UIButton *)self->_onboardingContinueButton leadingAnchor];
  layoutMarginsGuide2 = [(UIView *)self->_footerView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v40[1] = v32;
  trailingAnchor = [(UIButton *)self->_onboardingContinueButton trailingAnchor];
  layoutMarginsGuide3 = [(UIView *)self->_footerView layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v40[2] = v28;
  heightAnchor = [(UIButton *)self->_onboardingContinueButton heightAnchor];
  v26 = [heightAnchor constraintEqualToConstant:52.0];
  v40[3] = v26;
  leadingAnchor3 = [(UIButton *)self->_onboardingLaterButton leadingAnchor];
  layoutMarginsGuide4 = [(UIView *)self->_footerView layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
  v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
  v40[4] = v22;
  trailingAnchor3 = [(UIButton *)self->_onboardingLaterButton trailingAnchor];
  layoutMarginsGuide5 = [(UIView *)self->_footerView layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
  v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-20.0];
  v40[5] = v18;
  topAnchor3 = [(UIButton *)self->_onboardingLaterButton topAnchor];
  bottomAnchor = [(UIButton *)self->_onboardingContinueButton bottomAnchor];
  v15 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
  v40[6] = v15;
  heightAnchor2 = [(UIButton *)self->_onboardingLaterButton heightAnchor];
  v6 = [heightAnchor2 constraintEqualToConstant:52.0];
  v40[7] = v6;
  heightAnchor3 = [(UIView *)self->_footerView heightAnchor];
  v8 = [heightAnchor3 constraintEqualToConstant:v3];
  v40[8] = v8;
  bottomAnchor2 = [(UIView *)self->_footerView bottomAnchor];
  view = [(CNLimitedAccessContactPickerViewController *)self view];
  bottomAnchor3 = [view bottomAnchor];
  v12 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
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

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:29])
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
  currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags2 = [currentEnvironment2 featureFlags];
  if ([featureFlags2 isFeatureEnabled:29])
  {
    v14 = 26.0;
  }

  else
  {
    v14 = 14.0;
  }

  background = [v8 background];
  [background setCornerRadius:v14];

  [v8 setCornerStyle:-1];
  [(UIButton *)self->_onboardingContinueButton setConfiguration:v8];
  [(UIButton *)self->_onboardingContinueButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_onboardingContinueButton addTarget:self action:sel_handleContinueTapped forControlEvents:64];
  [(UIView *)self->_footerView addSubview:self->_onboardingContinueButton];
  v16 = objc_alloc_init(MEMORY[0x1E69DC738]);
  onboardingLaterButton = self->_onboardingLaterButton;
  self->_onboardingLaterButton = v16;

  currentEnvironment3 = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags3 = [currentEnvironment3 featureFlags];
  if ([featureFlags3 isFeatureEnabled:29])
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

  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v7 = MEMORY[0x1E696AEC0];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"LIMITED_CONTACTS_ONBOARDING_SELECTED" value:&stru_1F0CE7398 table:@"Localized"];
  v10 = [v7 localizedStringWithFormat:v9, 0];
  [plainButtonConfiguration setTitle:v10];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [plainButtonConfiguration setBaseForegroundColor:labelColor];

  [plainButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_90];
  [(UIButton *)self->_onboardingShowSelectedButton setConfiguration:plainButtonConfiguration];
  [(UIButton *)self->_onboardingShowSelectedButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_onboardingShowSelectedButton addTarget:self action:sel_handleShowSelectedTapped forControlEvents:64];
  [(UIView *)self->_headerView addSubview:self->_onboardingShowSelectedButton];
  topAnchor = [(UIButton *)self->_onboardingShowSelectedButton topAnchor];
  topAnchor2 = [(UIView *)self->_headerView topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:3.0];
  v26[0] = v22;
  leadingAnchor = [(UIButton *)self->_onboardingShowSelectedButton leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_headerView leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v26[1] = v13;
  trailingAnchor = [(UIButton *)self->_onboardingShowSelectedButton trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_headerView trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v26[2] = v16;
  heightAnchor = [(UIButton *)self->_onboardingShowSelectedButton heightAnchor];
  heightAnchor2 = [(UIView *)self->_headerView heightAnchor];
  v19 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
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

- (id)initForAppName:(id)name bundleId:(id)id pickerType:(int)type selectedContacts:(id)contacts searchText:(id)text caption:(unint64_t)caption
{
  v125[3] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  idCopy = id;
  contactsCopy = contacts;
  textCopy = text;
  v118.receiver = self;
  v118.super_class = CNLimitedAccessContactPickerViewController;
  v16 = [(CNLimitedAccessContactPickerViewController *)&v118 initWithNibName:0 bundle:0];
  if (!v16)
  {
    goto LABEL_35;
  }

  v115 = idCopy;
  v17 = (*(*MEMORY[0x1E6996570] + 16))();
  v114 = nameCopy;
  if ((v17 & 1) == 0)
  {
    nameCopy = [CNLimitedAccessPickerSupport appNameForBundleId:v115];
  }

  objc_storeStrong(&v16->_appName, nameCopy);
  if ((v17 & 1) == 0)
  {
  }

  objc_storeStrong(&v16->_appBundleId, id);
  objc_storeStrong(&v16->_selectedIdentifiersOnLoad, contacts);
  v16->_pickerType = type;
  objc_storeStrong(&v16->_initalSearchText, text);
  v16->_caption = caption;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        [(CNLimitedAccessContactPickerViewController *)v16 createOnboardingPickerView];
        [(CNLimitedAccessContactPickerViewController *)v16 createOnboardingHeaderView];
        [(CNLimitedAccessContactPickerViewController *)v16 createOnboardingFooterView];
      }

      else if (type == 2)
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

  else if (type > 4)
  {
    if (type == 5)
    {
      [(CNLimitedAccessContactPickerViewController *)v16 createSettingsShowSelectedPickerView];
    }

    else if (type == 6)
    {
      [(CNLimitedAccessContactPickerViewController *)v16 createContactsAvailableToSelectPickerView];
    }
  }

  else if (type == 3)
  {
    [(CNLimitedAccessContactPickerViewController *)v16 createOOPEditSelectedPickerView];
    [(CNLimitedAccessContactPickerViewController *)v16 createManageOOPFooterView];
  }

  else
  {
    [(CNLimitedAccessContactPickerViewController *)v16 createDeltaEditSelectedPickerView];
    [(CNLimitedAccessContactPickerViewController *)v16 createDeltaFooterView];
  }

  view = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  [(CNLimitedAccessContactPickerViewController *)v16 addChildViewController:v16->_contactPickerViewController];
  view2 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  view3 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
  [view2 addSubview:view3];

  if (type != 4)
  {
    [(CNContactPickerViewController *)v16->_contactPickerViewController didMoveToParentViewController:v16];
  }

  v94 = MEMORY[0x1E696ACD8];
  view4 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
  widthAnchor = [view4 widthAnchor];
  view5 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  widthAnchor2 = [view5 widthAnchor];
  v100 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v125[0] = v100;
  view6 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
  leadingAnchor = [view6 leadingAnchor];
  view7 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  leadingAnchor2 = [view7 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v125[1] = v23;
  view8 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
  trailingAnchor = [view8 trailingAnchor];
  view9 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  trailingAnchor2 = [view9 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v125[2] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:3];
  [v94 activateConstraints:v29];

  if (v16->_headerView)
  {
    view10 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    [view10 addSubview:v16->_headerView];

    v104 = MEMORY[0x1E696ACD8];
    widthAnchor3 = [(UIView *)v16->_headerView widthAnchor];
    view11 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    widthAnchor4 = [view11 widthAnchor];
    v98 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v124[0] = v98;
    leadingAnchor3 = [(UIView *)v16->_headerView leadingAnchor];
    view12 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    leadingAnchor4 = [view12 leadingAnchor];
    v107 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v124[1] = v107;
    trailingAnchor3 = [(UIView *)v16->_headerView trailingAnchor];
    view13 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    trailingAnchor4 = [view13 trailingAnchor];
    v83 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v124[2] = v83;
    topAnchor = [(UIView *)v16->_headerView topAnchor];
    view14 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    topAnchor2 = [view14 topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v124[3] = v33;
    view15 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
    topAnchor3 = [view15 topAnchor];
    view16 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    topAnchor4 = [view16 topAnchor];
    v38 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v124[4] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:5];
    [v104 activateConstraints:v39];

    v40 = view12;
    view18 = widthAnchor4;

    topAnchor5 = view11;
    v43 = leadingAnchor3;

    topAnchor6 = v98;
    view17 = widthAnchor3;
  }

  else
  {
    v46 = MEMORY[0x1E696ACD8];
    view17 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
    topAnchor5 = [view17 topAnchor];
    view18 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    topAnchor6 = [view18 topAnchor];
    v43 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v123 = v43;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
    [v46 activateConstraints:v40];
  }

  if (!v16->_footerView)
  {
    v66 = MEMORY[0x1E696ACD8];
    view19 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
    bottomAnchor = [view19 bottomAnchor];
    view20 = [(CNLimitedAccessContactPickerViewController *)v16 view];
    bottomAnchor2 = [view20 bottomAnchor];
    v64 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v119 = v64;
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
    [v66 activateConstraints:v67];

LABEL_31:
    nameCopy = v114;
    goto LABEL_32;
  }

  view21 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  [view21 addSubview:v16->_footerView];

  v88 = MEMORY[0x1E696ACD8];
  widthAnchor5 = [(UIView *)v16->_footerView widthAnchor];
  view22 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  widthAnchor6 = [view22 widthAnchor];
  v102 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
  v122[0] = v102;
  leadingAnchor5 = [(UIView *)v16->_footerView leadingAnchor];
  view23 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  leadingAnchor6 = [view23 leadingAnchor];
  v90 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v122[1] = v90;
  trailingAnchor5 = [(UIView *)v16->_footerView trailingAnchor];
  view24 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  trailingAnchor6 = [view24 trailingAnchor];
  v80 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v122[2] = v80;
  bottomAnchor3 = [(UIView *)v16->_footerView bottomAnchor];
  view25 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  bottomAnchor4 = [view25 bottomAnchor];
  v49 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v122[3] = v49;
  layoutMarginsGuide = [(UIView *)v16->_footerView layoutMarginsGuide];
  bottomAnchor5 = [layoutMarginsGuide bottomAnchor];
  view26 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  layoutMarginsGuide2 = [view26 layoutMarginsGuide];
  bottomAnchor6 = [layoutMarginsGuide2 bottomAnchor];
  v55 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v122[4] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:5];
  [v88 activateConstraints:v56];

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  LODWORD(v56) = [featureFlags isFeatureEnabled:29];

  v59 = MEMORY[0x1E696ACD8];
  if (!v56)
  {
    view19 = [(UIView *)v16->_footerView topAnchor];
    bottomAnchor = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
    view20 = [bottomAnchor bottomAnchor];
    bottomAnchor2 = [view19 constraintEqualToAnchor:view20];
    v120 = bottomAnchor2;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
    [v59 activateConstraints:v64];
    goto LABEL_31;
  }

  view19 = [(CNContactPickerViewController *)v16->_contactPickerViewController view];
  bottomAnchor = [view19 bottomAnchor];
  view20 = [(CNLimitedAccessContactPickerViewController *)v16 view];
  bottomAnchor2 = [view20 bottomAnchor];
  v64 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v121 = v64;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
  [v59 activateConstraints:v65];

  nameCopy = v114;
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
  idCopy = v115;
LABEL_35:

  return v16;
}

- (id)initPickerWithContactsAvailableToAddForAppName:(id)name bundleId:(id)id searchText:(id)text caption:(unint64_t)caption
{
  textCopy = text;
  idCopy = id;
  nameCopy = name;
  v13 = [CNLimitedAccessPickerSupport allowedIdentifiersForBundleID:idCopy];
  v14 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:nameCopy bundleId:idCopy pickerType:6 selectedContacts:v13 searchText:textCopy caption:caption];

  return v14;
}

- (id)initSettingsPickerForAppName:(id)name bundleId:(id)id
{
  idCopy = id;
  nameCopy = name;
  v8 = [CNLimitedAccessPickerSupport allowedIdentifiersForBundleID:idCopy];
  v9 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:nameCopy bundleId:idCopy pickerType:5 selectedContacts:v8 searchText:0 caption:0];

  return v9;
}

- (id)initDeltaPickerForAppName:(id)name bundleId:(id)id
{
  idCopy = id;
  nameCopy = name;
  v8 = [CNLimitedAccessPickerSupport allowedIdentifiersForBundleID:idCopy];
  v9 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:nameCopy bundleId:idCopy pickerType:4 selectedContacts:v8 searchText:0 caption:0];

  return v9;
}

- (id)initForAppName:(id)name bundleId:(id)id
{
  idCopy = id;
  nameCopy = name;
  v8 = [CNLimitedAccessPickerSupport allowedIdentifiersForBundleID:idCopy];
  v9 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:nameCopy bundleId:idCopy pickerType:3 selectedContacts:v8 searchText:0 caption:0];

  return v9;
}

- (id)initForShowSelected:(id)selected
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:selected];
  v5 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:&stru_1F0CE7398 bundleId:&stru_1F0CE7398 pickerType:2 selectedContacts:v4 searchText:0 caption:0];

  return v5;
}

- (id)initForOnboarding:(id)onboarding bundleId:(id)id selectedContacts:(id)contacts
{
  v8 = MEMORY[0x1E695DFD8];
  idCopy = id;
  onboardingCopy = onboarding;
  v11 = [v8 setWithArray:contacts];
  v12 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:onboardingCopy bundleId:idCopy pickerType:1 selectedContacts:v11 searchText:0 caption:0];

  return v12;
}

- (id)initForOnboarding:(id)onboarding selectedContacts:(id)contacts
{
  v6 = MEMORY[0x1E695DFD8];
  onboardingCopy = onboarding;
  v8 = [v6 setWithArray:contacts];
  v9 = [(CNLimitedAccessContactPickerViewController *)self initForAppName:onboardingCopy bundleId:&stru_1F0CE7398 pickerType:1 selectedContacts:v8 searchText:0 caption:0];

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