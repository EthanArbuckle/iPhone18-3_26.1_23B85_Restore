@interface CNContactContentEditViewController
+ (BOOL)enablesTransportButtons;
+ (BOOL)shouldShowGeminiForResult:(id)result contact:(id)contact;
+ (CNContactContentEditViewController)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder;
+ (id)descriptorForRequiredKeys;
+ (id)descriptorForRequiredKeysForContact:(id)contact;
+ (id)descriptorForRequiredKeysWithDescription:(id)description;
+ (void)_telemetryForContact:(id)contact;
- (BOOL)_indexPathIsActionItem:(id)item forTableView:(id)view;
- (BOOL)_modelHasChanges;
- (BOOL)_modelIsEmpty;
- (BOOL)hasPendingChanges;
- (BOOL)isHeaderViewPhotoProhibited;
- (BOOL)isNicknameProhibited;
- (BOOL)isOutOfProcess;
- (BOOL)isPresentingModalViewController;
- (BOOL)isScrollViewControllingHeaderResizeAnimation:(id)animation;
- (BOOL)isStandardGroup:(id)group;
- (BOOL)isSuggestedContact;
- (BOOL)performSave;
- (BOOL)reloadDataIfNeeded;
- (BOOL)saveChanges;
- (BOOL)shouldAllowContainerPicking;
- (BOOL)shouldDisplayAvatarHeaderView;
- (BOOL)shouldReallyShowLinkedContacts;
- (BOOL)shouldShowGemini;
- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHaveFullLengthBottomSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (CGSize)requiredSizeForVisibleTableView;
- (CGSize)setupTableHeaderView;
- (CNContactContentEditViewController)initWithContact:(id)contact contactViewConfiguration:(id)configuration;
- (CNContactContentEditViewController)initWithEnvironment:(id)environment;
- (CNContactContentEditViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CNContactContentEditViewControllerDelegate)delegate;
- (CNContactContentNavigationItemDelegate)navigationItemDelegate;
- (CNContactHeaderEditView)contactHeaderView;
- (CNContactView)contactView;
- (CNPresenterDelegate)presentingDelegate;
- (Class)groupClassForProperty:(id)property;
- (NSArray)originalContacts;
- (UIEdgeInsets)headerViewSafeAreaInsets;
- (UIEdgeInsets)insetsForContactTableView:(id)view;
- (UIEdgeInsets)peripheryInsets;
- (UIEdgeInsets)scrollIndicatorInsetsForContactTableView:(id)view withContentInsets:(UIEdgeInsets)insets;
- (UINavigationItem)effectiveNavigationItem;
- (double)desiredHeightForWidth:(double)width;
- (double)globalHeaderHeightForContentOffset:(double)offset contentInset:(UIEdgeInsets)inset;
- (double)navigationBarHeight;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)updateHeaderConstraintForGlobalHeaderHeight:(double)height direction:(int64_t)direction animated:(BOOL)animated;
- (id)_addGroupsInArray:(id)array afterGroup:(id)group;
- (id)_addLinkedCardAction;
- (id)_addNewFieldAction;
- (id)_cardGroupAtTableViewSectionIndex:(int64_t)index forTableView:(id)view;
- (id)_cellForIndexPath:(id)path forTableView:(id)view;
- (id)_cellIdentifierForTableView:(id)view indexPath:(id)path;
- (id)_currentTopVisibleGroupInContactView:(id)view;
- (id)_itemAtIndexPath:(id)path forTableView:(id)view;
- (id)_labelWidthKeyForGroup:(id)group;
- (id)_linkedCardsAction;
- (id)_loadEditingGroupsPreservingChanges:(BOOL)changes;
- (id)_loadNameEditingGroups;
- (id)_loadPropertyGroups;
- (id)_phoneticNameForValue:(id)value currentPhoneticName:(id)name property:(id)property;
- (id)_policyForContact:(id)contact mode:(int64_t)mode;
- (id)_propertyGroupsForKeys:(id)keys;
- (id)_removeUnauthorizedKeysFromContact:(id)contact;
- (id)_selectContainersAction;
- (id)_updateContact:(id)contact withMissingKeysFromRequiredKeys:(id)keys;
- (id)action:(id)action cellForPropertyItem:(id)item sender:(id)sender;
- (id)alreadyPickedGroups;
- (id)applyContactStyle;
- (id)cardGroupForProperty:(id)property;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (id)indexPathOfPropertyItem:(id)item editing:(BOOL)editing;
- (id)saveDescriptionForCurrentState;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_modalPresentationStyleForViewController:(id)controller;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)sectionOfGroup:(id)group inTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addGroup:(id)group afterGroup:(id)afterGroup forTableView:(id)view animated:(BOOL)animated;
- (void)_addMedicalIDGroupAnimated:(BOOL)animated forTableView:(id)view;
- (void)_addedGroupWithName:(id)name;
- (void)_didCompleteWithContact:(id)contact;
- (void)_refetchContact;
- (void)_reloadContainerContextPreservingChanges:(BOOL)changes;
- (void)_reloadGeminiGroupPreservingChanges:(BOOL)changes;
- (void)_reloadLinkedCardsGroup;
- (void)_reloadMedicalIDGroup;
- (void)_reloadPropertyGroupsPreservingChanges:(BOOL)changes;
- (void)_reloadStaticIdentityGroup;
- (void)_saveChangesForGroups:(id)groups;
- (void)_scrollContactView:(id)view toVisibleGroup:(id)group;
- (void)_setNeedsUpdateCachedLabelWidths;
- (void)_setupEditingCardActions;
- (void)_setupEditingLinkedContactsForKeys:(id)keys;
- (void)_setupSuggestionActions;
- (void)_updateCachedLabelWidths;
- (void)_updateCachedLabelWidthsForGroup:(id)group;
- (void)_updateCachedLabelWidthsForItem:(id)item;
- (void)_updateCachedLabelWidthsIfNeeded;
- (void)_updateLabelWidthForCell:(id)cell;
- (void)_updateLabelWidthForCellsInGroup:(id)group forTableView:(id)view reset:(BOOL)reset;
- (void)_updateLabelWidthsForAllVisibleCells;
- (void)_updateUserActivity;
- (void)_validateGroup:(id)group;
- (void)action:(id)action dismissViewController:(id)controller sender:(id)sender;
- (void)action:(id)action prepareChildContactViewController:(id)controller sender:(id)sender;
- (void)action:(id)action presentViewController:(id)controller sender:(id)sender;
- (void)action:(id)action pushViewController:(id)controller sender:(id)sender;
- (void)actionDidFinish:(id)finish;
- (void)actionWasCanceled:(id)canceled;
- (void)addCardGroup:(id)group afterGroup:(id)afterGroup;
- (void)addEditingItemAtIndexPath:(id)path forTableView:(id)view;
- (void)addLinkedContact:(id)contact;
- (void)addStaticIdentity:(id)identity;
- (void)adjustInsetsForKeyboardOverlap:(double)overlap;
- (void)cancelAsyncLookups;
- (void)cleanupRecentImageMetadata;
- (void)cleanupRecentMetadata;
- (void)cleanupRecentPosterMetadata;
- (void)clearMapsDataIfEdited;
- (void)contactGroupPickerDidCancel:(id)cancel;
- (void)contactGroupPickerDidFinish:(id)finish withGroup:(id)group;
- (void)contactStoreDidChangeWithNotification:(id)notification;
- (void)contactViewConfigurationDidUpdate;
- (void)contactViewController:(id)controller didDeleteContact:(id)contact;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)createCardEditingContactContainerGroupIfNeeded;
- (void)createCardEditingGeminiGroupIfNeeded;
- (void)createdNewContact:(id)contact;
- (void)dealloc;
- (void)didChangeToEditMode:(BOOL)mode;
- (void)didChangeToShowTitle:(BOOL)title;
- (void)editCancel:(id)cancel;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)finishEditing:(id)editing;
- (void)focusOnFirstEditingItemIfNeeded;
- (void)focusOnLastEditingItemInGroup:(id)group;
- (void)geminiDataSourceDidUpdate:(id)update;
- (void)headerPhotoDidUpdate;
- (void)headerViewDidChangeHeight:(id)height;
- (void)initializeTableViewsForHeaderHeight;
- (void)keyboardDidShowNotification:(id)notification;
- (void)loadContactViewControllerViews;
- (void)loadView;
- (void)performConfirmedCancel;
- (void)prepareCell:(id)cell;
- (void)prepareContactDidAppearForPPT;
- (void)presentConfirmCancelAlertController;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)propertyCell:(id)cell didDeleteLabel:(id)label forGroup:(id)group;
- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewLabel:(id)label;
- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewValue:(id)value;
- (void)propertyCell:(id)cell performActionForItem:(id)item withTransportType:(int64_t)type;
- (void)propertyCellDidChangeLayout:(id)layout;
- (void)propertyItem:(id)item willChangeValue:(id)value;
- (void)reloadCardGroup:(id)group forTableView:(id)view;
- (void)reloadDataPreservingChanges:(BOOL)changes;
- (void)reloadUnifiedContact;
- (void)removeEditingItem:(id)item atIndexPath:(id)path forTableView:(id)view;
- (void)removeLinkedContact:(id)contact;
- (void)saveModelChangesToContact;
- (void)saveNewContactDraft;
- (void)scrollScrollViewAllTheWayUp:(id)up;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler;
- (void)sender:(id)sender presentViewController:(id)controller;
- (void)setBackgroundColorIfNeededForPresentedViewController:(id)controller;
- (void)setCancelKeyboardShortcutEnabled:(BOOL)enabled;
- (void)setContact:(id)contact;
- (void)setContactStore:(id)store;
- (void)setForcesTransparentBackground:(BOOL)background;
- (void)setMenuProviderForCell:(id)cell forActionGroupItem:(id)item;
- (void)setSaveKeyboardShortcutEnabled:(BOOL)enabled;
- (void)setTitle:(id)title;
- (void)setupConstraints;
- (void)setupContainerContextIfNeededForContact:(id)contact;
- (void)setupViewHierarchyIncludingAvatarHeader:(BOOL)header;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)updateContact:(id)contact;
- (void)updateContactsViewWithBlock:(id)block completion:(id)completion;
- (void)updateDoneButton;
- (void)updateEditNavigationItemsAnimated:(BOOL)animated;
- (void)updateEditPhotoButtonIfNeeded;
- (void)updateHeaderHeightToMatchScrollViewState:(id)state scrollDirection:(int64_t)direction animated:(BOOL)animated;
- (void)updateInsetsIfNeededForTableView:(id)view;
- (void)updateOutOfProcessFullscreenPresentationIfNeeded;
- (void)updateTableView:(id)view contentInsetsTo:(UIEdgeInsets)to withScrollIndicatorInsets:(UIEdgeInsets)insets;
- (void)updateUserActivityState:(id)state;
- (void)updateViewConstraints;
- (void)updateWindowTitleForAppearing:(BOOL)appearing;
- (void)updatedExistingContact:(id)contact;
- (void)viewController:(id)controller presentationControllerWillDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CNContactContentEditViewController

- (UIEdgeInsets)peripheryInsets
{
  top = self->_peripheryInsets.top;
  left = self->_peripheryInsets.left;
  bottom = self->_peripheryInsets.bottom;
  right = self->_peripheryInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CNPresenterDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (CNContactContentEditViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNContactContentNavigationItemDelegate)navigationItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationItemDelegate);

  return WeakRetained;
}

- (id)applyContactStyle
{
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = +[CNContactStyle currentStyle];
  if ([(CNContactContentEditViewController *)self forcesTransparentBackground])
  {
    backgroundColor2 = +[CNUIColorRepository transparentBackgroundColor];
  }

  else
  {
    backgroundColor = [v3 backgroundColor];

    if (!backgroundColor)
    {
      goto LABEL_6;
    }

    backgroundColor2 = [v3 backgroundColor];
  }

  v6 = backgroundColor2;
  contactView = [(CNContactContentEditViewController *)self contactView];
  [contactView setBackgroundColor:v6];

LABEL_6:
  sectionBackgroundColor = [v3 sectionBackgroundColor];
  contactView2 = [(CNContactContentEditViewController *)self contactView];
  [contactView2 setSectionBackgroundColor:sectionBackgroundColor];

  separatorColor = [v3 separatorColor];
  contactView3 = [(CNContactContentEditViewController *)self contactView];
  [contactView3 setSeparatorColor:separatorColor];

  selectedCellBackgroundColor = [v3 selectedCellBackgroundColor];
  contactView4 = [(CNContactContentEditViewController *)self contactView];
  [contactView4 setSelectedCellBackgroundColor:selectedCellBackgroundColor];

  v14 = MEMORY[0x1E695DF90];
  contactView5 = [(CNContactContentEditViewController *)self contactView];
  valueTextAttributes = [contactView5 valueTextAttributes];
  v17 = [v14 dictionaryWithDictionary:valueTextAttributes];

  v18 = *MEMORY[0x1E69DB650];
  v33[0] = *MEMORY[0x1E69DB650];
  textColor = [v3 textColor];
  v33[1] = @"ABNotesTextColorAttributeName";
  v34[0] = textColor;
  notesTextColor = [v3 notesTextColor];
  v34[1] = notesTextColor;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  [v17 addEntriesFromDictionary:v21];

  contactView6 = [(CNContactContentEditViewController *)self contactView];
  [contactView6 setValueTextAttributes:v17];

  if ([(CNContactContentEditViewController *)self forcesTransparentBackground])
  {
    v23 = +[CNUIColorRepository transparentBackgroundColor];
  }

  else
  {
    environment = [(CNContactContentEditViewController *)self environment];
    runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

    if (runningInContactsAppOniPad)
    {
      +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    }

    else
    {
      [v3 contactHeaderBackgroundColor];
    }
    v23 = ;
  }

  v26 = v23;
  [(CNContactHeaderEditView *)self->_contactHeaderView setBackgroundColor:v23];

  contactHeaderView = self->_contactHeaderView;
  v31 = v18;
  textColor2 = [v3 textColor];
  v32 = textColor2;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [contactHeaderView cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v29];

  return v3;
}

- (void)updateTableView:(id)view contentInsetsTo:(UIEdgeInsets)to withScrollIndicatorInsets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  right = insets.right;
  left = insets.left;
  top = insets.top;
  v7 = to.right;
  v8 = to.bottom;
  v9 = to.left;
  v10 = to.top;
  viewCopy = view;
  [viewCopy contentInset];
  v12 = v10 - v11;
  [viewCopy contentOffset];
  v14 = v13;
  v16 = v15 - v12;
  [viewCopy setContentInset:{v10, v9, v8, v7}];
  [viewCopy setScrollIndicatorInsets:{top, left, bottom, right}];
  [viewCopy setContentOffset:{v14, v16}];
}

- (UIEdgeInsets)scrollIndicatorInsetsForContactTableView:(id)view withContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  top = insets.top;
  viewCopy = view;
  [viewCopy _systemContentInset];
  v10 = top + v9;
  [(CNContactContentEditViewController *)self keyboardVerticalOverlap];
  v12 = v11;
  [viewCopy _systemContentInset];
  v14 = v13;

  v15 = fmax(v12 - v14, 0.0);
  v16 = v10;
  v17 = left;
  v18 = right;
  result.right = v18;
  result.bottom = v15;
  result.left = v17;
  result.top = v16;
  return result;
}

- (UIEdgeInsets)insetsForContactTableView:(id)view
{
  viewCopy = view;
  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView minHeight];
  v7 = v6;

  contactHeaderView2 = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView2 maxHeight];
  v10 = v9;

  if (v10 == 0.0)
  {
    v12 = *MEMORY[0x1E69DDCE0];
    v25 = *(MEMORY[0x1E69DDCE0] + 8);
    v49 = *(MEMORY[0x1E69DDCE0] + 16);
    v27 = *(MEMORY[0x1E69DDCE0] + 24);
    goto LABEL_18;
  }

  [viewCopy _systemContentInset];
  v12 = v10 - v11;
  [viewCopy bounds];
  v14 = v10 - v7 + v13;
  [viewCopy _systemContentInset];
  v16 = v14 - v15 - v12;
  [viewCopy _systemContentInset];
  v18 = v17;
  [(CNContactContentEditViewController *)self keyboardVerticalOverlap];
  if (v18 >= v19)
  {
    v19 = v18;
  }

  v20 = v16 - v19;
  [viewCopy contentSize];
  v22 = 0.0;
  if (v20 - v21 >= 0.0)
  {
    v23 = v20 - v21;
  }

  else
  {
    v23 = 0.0;
  }

  [viewCopy contentInset];
  v25 = v24;
  v27 = v26;
  [(CNContactContentEditViewController *)self keyboardVerticalOverlap];
  if (v28 > 0.0)
  {
    view = [(CNContactContentEditViewController *)self view];
    window = [view window];
    if (window)
    {
      v31 = window;
      view2 = [(CNContactContentEditViewController *)self view];
      window2 = [view2 window];
      [window2 bounds];
      v35 = v34;
      [viewCopy bounds];
      v37 = v36;

      if (v35 <= v37)
      {
LABEL_12:
        [(CNContactContentEditViewController *)self keyboardVerticalOverlap];
        v46 = v45;
        [viewCopy _systemContentInset];
        v48 = v22 + v46 - v47;
        goto LABEL_15;
      }

      view3 = [(CNContactContentEditViewController *)self view];
      window3 = [view3 window];
      [window3 bounds];
      v41 = v40;
      [viewCopy bounds];
      v43 = v41 - v42;

      view = [(CNContactContentEditViewController *)self contactHeaderView];
      [view minTitleOffset];
      v22 = v43 - v44;
    }

    goto LABEL_12;
  }

  [viewCopy _systemContentInset];
  v48 = -v50;
LABEL_15:
  if (v23 >= v48)
  {
    v49 = v23;
  }

  else
  {
    v49 = v48;
  }

LABEL_18:

  v51 = v12;
  v52 = v25;
  v53 = v49;
  v54 = v27;
  result.right = v54;
  result.bottom = v53;
  result.left = v52;
  result.top = v51;
  return result;
}

- (void)initializeTableViewsForHeaderHeight
{
  contactView = [(CNContactContentEditViewController *)self contactView];
  [contactView layoutIfNeeded];
  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView calculateLabelSizesIfNeeded];

  headerHeightConstraint = [(CNContactContentEditViewController *)self headerHeightConstraint];
  [headerHeightConstraint constant];
  v6 = v5;
  contactHeaderView2 = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView2 minHeight];
  if (v6 > v8)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  headerDropShadowView = [(CNContactContentEditViewController *)self headerDropShadowView];
  [headerDropShadowView setAlpha:v9];

  [(CNContactContentEditViewController *)self updateInsetsIfNeededForTableView:contactView];
  [(CNContactContentEditViewController *)self updateHeaderHeightToMatchScrollViewState:contactView scrollDirection:2 animated:0];
}

- (void)updateInsetsIfNeededForTableView:(id)view
{
  viewCopy = view;
  [(CNContactContentEditViewController *)self keyboardVerticalOverlap];
  if (v4 <= 0.0 || (-[CNContactContentEditViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 bounds], v7 = v6, v5, v7 <= 0.0))
  {
    contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
    contactHeaderView2 = [(CNContactContentEditViewController *)self contactHeaderView];
    [contactHeaderView2 maxHeight];
    v18 = contactHeaderView;
    v17 = 0;
  }

  else
  {
    view = [(CNContactContentEditViewController *)self view];
    [view bounds];
    v10 = v9;
    [(CNContactContentEditViewController *)self keyboardVerticalOverlap];
    v12 = v10 - v11 + -64.0;

    v13 = fmax(v12, 0.0);
    contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
    contactHeaderView2 = [(CNContactContentEditViewController *)self contactHeaderView];
    [contactHeaderView2 maxHeight];
    v17 = v13 <= v16;
    v18 = contactHeaderView;
    v19 = v13;
  }

  [v18 setConstrainedMaxHeight:v17 enabled:v19];

  [viewCopy contentInset];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(CNContactContentEditViewController *)self insetsForContactTableView:viewCopy];
  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  if (v29 != v23 || v28 != v21 || v31 != v27 || v30 != v25)
  {
    [(CNContactContentEditViewController *)self scrollIndicatorInsetsForContactTableView:viewCopy withContentInsets:v28, v29, v30, v31];
    [(CNContactContentEditViewController *)self updateTableView:viewCopy contentInsetsTo:v32 withScrollIndicatorInsets:v33, v34, v35, v36, v37, v38, v39];
  }
}

- (void)scrollScrollViewAllTheWayUp:(id)up
{
  upCopy = up;
  [upCopy contentOffset];
  v4 = v3;
  [upCopy contentInset];
  v6 = v5;
  [upCopy _systemContentInset];
  [upCopy setContentOffset:{v4, -(v6 + v7)}];
}

- (BOOL)isScrollViewControllingHeaderResizeAnimation:(id)animation
{
  animationCopy = animation;
  contactView = [(CNContactContentEditViewController *)self contactView];

  return contactView == animationCopy;
}

- (double)updateHeaderConstraintForGlobalHeaderHeight:(double)height direction:(int64_t)direction animated:(BOOL)animated
{
  v8 = [(CNContactContentEditViewController *)self headerHeightConstraint:direction];
  [v8 constant];
  v10 = v9;

  if (v10 != height && (direction || v10 < height))
  {
    headerHeightConstraint = [(CNContactContentEditViewController *)self headerHeightConstraint];
    [headerHeightConstraint setConstant:height];

    return height;
  }

  return v10;
}

- (void)updateHeaderHeightToMatchScrollViewState:(id)state scrollDirection:(int64_t)direction animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  [stateCopy contentOffset];
  v10 = v9;
  [stateCopy contentInset];
  [(CNContactContentEditViewController *)self globalHeaderHeightForContentOffset:v10 contentInset:v11, v12, v13, v14];
  [(CNContactContentEditViewController *)self updateHeaderConstraintForGlobalHeaderHeight:direction direction:animatedCopy animated:?];
  v16 = v15;
  objc_opt_class();
  v19 = stateCopy;
  if (objc_opt_isKindOfClass())
  {
    v17 = v19;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  [v18 setMaskingInset:v16];
}

- (double)globalHeaderHeightForContentOffset:(double)offset contentInset:(UIEdgeInsets)inset
{
  top = inset.top;
  v7 = [(CNContactContentEditViewController *)self contactView:offset];
  [v7 _systemContentInset];
  v9 = top + v8;

  if (-v9 <= offset)
  {
    v10 = -offset;
  }

  else
  {
    v10 = v9;
  }

  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView minHeight];
  v13 = v12;

  if (v10 >= v13)
  {
    return v10;
  }

  else
  {
    return v13;
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  draggingCopy = dragging;
  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView minHeight];
  v10 = v9;

  contactHeaderView2 = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView2 maxHeight];
  v13 = v12;

  if ([(CNContactContentEditViewController *)self isScrollViewControllingHeaderResizeAnimation:draggingCopy])
  {
    v14 = v13 - offset->y;
    [draggingCopy contentInset];
    v16 = v14 - v15;
    [draggingCopy _systemContentInset];
    v18 = v16 - v17;
    if (y <= 0.0)
    {
      v19 = draggingCopy;
      if (y >= 0.0)
      {
        if (v18 > v10 && v18 < v13)
        {
          if (v18 - v10 >= (v13 - v10) * 0.5)
          {
            v18 = v13;
          }

          else
          {
            v18 = v10;
          }
        }
      }

      else if (v18 < v13)
      {
        v18 = v13;
      }
    }

    else
    {
      v19 = draggingCopy;
      if (v18 > v10)
      {
        v18 = v10;
      }
    }

    v21 = v13 - v18;
    [v19 contentInset];
    v23 = v21 - v22;
    [draggingCopy _systemContentInset];
    offset->y = v23 - v24;
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(CNContactContentEditViewController *)self isScrollViewControllingHeaderResizeAnimation:?])
  {
    [scrollCopy _verticalVelocity];
    [(CNContactContentEditViewController *)self updateHeaderHeightToMatchScrollViewState:scrollCopy scrollDirection:v4 >= 0.0 animated:1];
  }
}

- (void)setCancelKeyboardShortcutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  cancelCommand = [(CNContactContentEditViewController *)self cancelCommand];

  if (enabledCopy)
  {
    if (!cancelCommand)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_editCancel_];
      [(CNContactContentEditViewController *)self setCancelCommand:v6];

      cancelCommand2 = [(CNContactContentEditViewController *)self cancelCommand];
      [(CNContactContentEditViewController *)self addKeyCommand:cancelCommand2];
    }
  }

  else if (cancelCommand)
  {
    cancelCommand3 = [(CNContactContentEditViewController *)self cancelCommand];
    [(CNContactContentEditViewController *)self removeKeyCommand:cancelCommand3];

    [(CNContactContentEditViewController *)self setCancelCommand:0];
  }
}

- (void)setSaveKeyboardShortcutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  saveCommand = [(CNContactContentEditViewController *)self saveCommand];

  if (enabledCopy)
  {
    if (!saveCommand)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"s" modifierFlags:0x100000 action:sel_toggleEditing_];
      [(CNContactContentEditViewController *)self setSaveCommand:v6];

      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"SAVE_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
      saveCommand2 = [(CNContactContentEditViewController *)self saveCommand];
      [saveCommand2 setDiscoverabilityTitle:v8];

      saveCommand3 = [(CNContactContentEditViewController *)self saveCommand];
      [(CNContactContentEditViewController *)self addKeyCommand:saveCommand3];
    }
  }

  else if (saveCommand)
  {
    saveCommand4 = [(CNContactContentEditViewController *)self saveCommand];
    [(CNContactContentEditViewController *)self removeKeyCommand:saveCommand4];

    [(CNContactContentEditViewController *)self setSaveCommand:0];
  }
}

- (void)updateUserActivityState:(id)state
{
  stateCopy = state;
  activityManager = [(CNContactContentEditViewController *)self activityManager];
  contact = [(CNContactContentEditViewController *)self contact];
  [activityManager updateUserActivityState:stateCopy withContentsOfContact:contact];
}

- (void)_updateUserActivity
{
  v21 = *MEMORY[0x1E69E9840];
  if (CNUIIsContacts() || CNUIIsMobilePhone())
  {
    v3 = CNUILogContactCard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v17 = 138412290;
      selfCopy2 = bundleIdentifier;
      _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Activity continuity - running in %@", &v17, 0xCu);
    }

    activityManager = [(CNContactContentEditViewController *)self activityManager];
    contact = [(CNContactContentEditViewController *)self contact];
    v8 = [activityManager makeActivityAdvertisingViewingOfContact:contact];

    userActivity = [(CNContactContentEditViewController *)self userActivity];
    v10 = userActivity;
    if (v8)
    {

      if (!v10)
      {
        [(CNContactContentEditViewController *)self setUserActivity:v8];
        userActivity2 = [(CNContactContentEditViewController *)self userActivity];
        [userActivity2 becomeCurrent];

        v12 = CNUILogContactCard();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          userActivity3 = [(CNContactContentEditViewController *)self userActivity];
          v17 = 138412546;
          selfCopy2 = self;
          v19 = 2112;
          v20 = userActivity3;
          _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_INFO, "Activity continuity -  %@ created %@", &v17, 0x16u);
        }
      }

      userActivity4 = [(CNContactContentEditViewController *)self userActivity];
      [userActivity4 setNeedsSave:1];
    }

    else
    {
      [userActivity resignCurrent];

      v15 = CNUILogContactCard();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        userActivity5 = [(CNContactContentEditViewController *)self userActivity];
        v17 = 138412546;
        selfCopy2 = self;
        v19 = 2112;
        v20 = userActivity5;
        _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_INFO, "Activity continuity -  %@ removed %@", &v17, 0x16u);
      }

      [(CNContactContentEditViewController *)self setUserActivity:0];
    }
  }
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v19 encodeRestorableStateWithCoder:coderCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = +[CNContactContentEditViewController BOOLStateRestorationProperties];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
        v12 = [contactViewConfiguration valueForKey:v10];

        if (v12)
        {
          [coderCopy encodeObject:v12 forKey:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  contact = [(CNContactContentEditViewController *)self contact];
  identifier = [contact identifier];

  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"Identifier"];
  }
}

- (void)_addedGroupWithName:(id)name
{
  v48 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = +[CNContactView nameProperties];
  v6 = [v5 containsObject:nameCopy];

  if (v6)
  {
    mutableContact = [(CNContactContentEditViewController *)self mutableContact];
    contactStore = [(CNContactContentEditViewController *)self contactStore];
    policy = [(CNContactContentEditViewController *)self policy];
    linkedPoliciesByContactIdentifier = [(CNContactContentEditViewController *)self linkedPoliciesByContactIdentifier];
    v11 = [(CNCardPropertyGroup *)CNCardPropertyNameGroup groupForProperty:nameCopy contact:mutableContact store:contactStore policy:policy linkedPolicies:linkedPoliciesByContactIdentifier];

    v12 = +[CNContactView nameProperties];
    v40 = v11;
    property = [v11 property];
    v14 = [v12 indexOfObject:property];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    selfCopy = self;
    editingGroups = [(CNContactContentEditViewController *)self editingGroups];
    v16 = [editingGroups countByEnumeratingWithState:&v43 objects:v47 count:16];
    v42 = nameCopy;
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v44;
LABEL_4:
      v20 = 0;
      v39 = v18 + v17;
      while (1)
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(editingGroups);
        }

        v21 = *(*(&v43 + 1) + 8 * v20);
        v22 = +[CNContactView nameProperties];
        property2 = [v21 property];
        v24 = [v22 indexOfObject:property2];

        if (v24 >= v14)
        {
          break;
        }

        ++v18;
        if (v17 == ++v20)
        {
          v17 = [editingGroups countByEnumeratingWithState:&v43 objects:v47 count:16];
          v18 = v39;
          if (v17)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    nameEditingGroups = [(CNContactContentEditViewController *)selfCopy nameEditingGroups];
    v26 = [nameEditingGroups mutableCopy];

    [v26 insertObject:v40 atIndex:v18];
    v27 = [v26 copy];
    [(CNContactContentEditViewController *)selfCopy setNameEditingGroups:v27];

    editingGroups2 = [(CNContactContentEditViewController *)selfCopy editingGroups];
    v29 = [editingGroups2 mutableCopy];

    [v29 insertObject:v40 atIndex:v18];
    v30 = [v29 copy];
    [(CNContactContentEditViewController *)selfCopy setEditingGroups:v30];

    contactView = [(CNContactContentEditViewController *)selfCopy contactView];
    [contactView reloadData];

    contactView2 = [(CNContactContentEditViewController *)selfCopy contactView];
    v33 = [(CNContactContentEditViewController *)selfCopy sectionOfGroup:v40 inTableView:contactView2];

    v34 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v33];
    contactView3 = [(CNContactContentEditViewController *)selfCopy contactView];
    v36 = [contactView3 cellForRowAtIndexPath:v34];

    firstResponderItem = [v36 firstResponderItem];
    [firstResponderItem becomeFirstResponder];

    contactView4 = [(CNContactContentEditViewController *)selfCopy contactView];
    [contactView4 scrollToRowAtIndexPath:v34 atScrollPosition:2 animated:0];

    nameCopy = v42;
  }
}

- (BOOL)_indexPathIsActionItem:(id)item forTableView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  v8 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [itemCopy section], viewCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(CNContactContentEditViewController *)self _itemAtIndexPath:itemCopy forTableView:viewCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      isKindOfClass = 0;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass() ^ 1;
    }
  }

  return isKindOfClass & 1;
}

- (id)_itemAtIndexPath:(id)path forTableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
  if ([(CNContactContentEditViewController *)self isStandardGroup:v8])
  {
    editingItems = [v8 editingItems];
LABEL_5:
    v10 = editingItems;
    v11 = [editingItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    goto LABEL_7;
  }

  if ([(CNContactContentEditViewController *)self _indexPathIsActionItem:pathCopy forTableView:viewCopy])
  {
    editingItems = [v8 actionItems];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_cardGroupAtTableViewSectionIndex:(int64_t)index forTableView:(id)view
{
  viewCopy = view;
  v7 = [(CNContactContentEditViewController *)self groupIndexFromTableViewSectionIndex:index forTableView:viewCopy];
  v8 = [(CNContactContentEditViewController *)self _currentGroupsForTableView:viewCopy];

  if ([v8 count] <= v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:v7];
  }

  return v9;
}

- (void)_saveChangesForGroups:(id)groups
{
  v15 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [groupsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(groupsCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = objc_opt_class();
        if ([v9 isSubclassOfClass:objc_opt_class()])
        {
          [v8 saveChanges];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [groupsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_validateGroup:(id)group
{
  v25 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  propertyItems = [groupCopy propertyItems];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [propertyItems countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(propertyItems);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        labeledValue = [v11 labeledValue];
        value = [labeledValue value];
        v14 = [v11 isValidValue:value];

        if ((v14 & 1) == 0)
        {
          labeledValue2 = [v11 labeledValue];
          value2 = [labeledValue2 value];
          v17 = [v11 replacementForInvalidValue:value2];
          [v11 updateLabeledValueWithValue:v17];

          v8 = 1;
        }
      }

      v7 = [propertyItems countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
    if (v8)
    {
      contactView = [(CNContactContentEditViewController *)selfCopy contactView];
      [(CNContactContentEditViewController *)selfCopy reloadCardGroup:groupCopy forTableView:contactView];
    }
  }
}

- (BOOL)_modelIsEmpty
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  editingGroups = [(CNContactContentEditViewController *)self editingGroups];
  v4 = [v2 arrayWithArray:editingGroups];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    v25 = 1;
    do
    {
      v8 = 0;
      v26 = v6;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          editingItems = [v10 editingItems];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v12 = editingItems;
          v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = v7;
            v16 = *v29;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v29 != v16)
                {
                  objc_enumerationMutation(v12);
                }

                v18 = *(*(&v28 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  normalizedValue = [v18 normalizedValue];
                  if (normalizedValue)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0 || [normalizedValue length])
                    {

                      v25 = 0;
                      goto LABEL_21;
                    }
                  }
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }

LABEL_21:
            v7 = v15;
            v6 = v26;
          }
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }

  else
  {
    v25 = 1;
  }

  if (self->_contactHeaderView)
  {
    contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
    hasPhoto = [contactHeaderView hasPhoto];

    v22 = (hasPhoto ^ 1) & v25;
  }

  else
  {
    v22 = v25;
  }

  return v22 & 1;
}

- (BOOL)_modelHasChanges
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  editingGroups = [(CNContactContentEditViewController *)self editingGroups];
  v5 = [v3 arrayWithArray:editingGroups];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v11 modified])
        {
          v12 = 1;
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  if (self->_contactHeaderView)
  {
    contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
    v12 |= [contactHeaderView photoIsModified];
  }

  editingLinkedContacts = [(CNContactContentEditViewController *)self editingLinkedContacts];

  containerContext = [(CNContactContentEditViewController *)self containerContext];
  addedContainers = [containerContext addedContainers];
  v17 = [addedContainers count];

  mode = [(CNContactContentEditViewController *)self mode];
  v19 = [(CNContactContentEditViewController *)self mode]== 4 || [(CNContactContentEditViewController *)self mode]== 5;
  contact = [(CNContactContentEditViewController *)self contact];
  if ([contact hasNonPersistedData])
  {
    shadowCopyOfReadonlyContact = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];
    v22 = shadowCopyOfReadonlyContact == 0;
  }

  else
  {
    v22 = 0;
  }

  if (editingLinkedContacts)
  {
    v23 = 1;
  }

  else
  {
    v23 = v12;
  }

  if (v17)
  {
    v23 = 1;
  }

  if (mode == 3)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  cardStaticIdentityGroup = [(CNContactContentEditViewController *)self cardStaticIdentityGroup];
  didChange = [cardStaticIdentityGroup didChange];

  return (v19 || v22) | didChange | v24;
}

- (id)_loadNameEditingGroups
{
  v44 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  contact = [(CNContactContentEditViewController *)self contact];
  v4 = [CNContactView namePropertiesForContact:contact];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v30 = *v39;
    do
    {
      v8 = 0;
      v32 = v6;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        prohibitedPropertyKeys = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
        v11 = [prohibitedPropertyKeys containsObject:v9];

        if ((v11 & 1) == 0)
        {
          contact2 = [(CNContactContentEditViewController *)self contact];
          v13 = [contact2 valueForKey:v9];

          objc_opt_class();
          v14 = v13;
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (v14 && (!v16 || [v16 length]) || (+[CNContactView requiredNameProperties](CNContactView, "requiredNameProperties"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "containsObject:", v9), v17, v18))
          {
            mutableContact = [(CNContactContentEditViewController *)self mutableContact];
            contactStore = [(CNContactContentEditViewController *)self contactStore];
            policy = [(CNContactContentEditViewController *)self policy];
            linkedPoliciesByContactIdentifier = [(CNContactContentEditViewController *)self linkedPoliciesByContactIdentifier];
            v23 = [(CNCardPropertyGroup *)CNCardPropertyNameGroup groupForProperty:v9 contact:mutableContact store:contactStore policy:policy linkedPolicies:linkedPoliciesByContactIdentifier];

            [v23 setAddSpacerFromPreviousGroup:0];
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            propertyItems = [v23 propertyItems];
            v25 = [propertyItems countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v35;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v35 != v27)
                  {
                    objc_enumerationMutation(propertyItems);
                  }

                  [*(*(&v34 + 1) + 8 * i) setDelegate:self];
                }

                v26 = [propertyItems countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v26);
            }

            [array addObject:v23];
            v7 = v30;
            v6 = v32;
          }
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)_loadEditingGroupsPreservingChanges:(BOOL)changes
{
  v40 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (!changes)
  {
    _loadNameEditingGroups = [(CNContactContentEditViewController *)self _loadNameEditingGroups];
    [(CNContactContentEditViewController *)self setNameEditingGroups:_loadNameEditingGroups];
  }

  nameEditingGroups = [(CNContactContentEditViewController *)self nameEditingGroups];
  [array addObjectsFromArray:nameEditingGroups];

  shouldShowGemini = [(CNContactContentEditViewController *)self shouldShowGemini];
  [(CNContactContentEditViewController *)self createCardEditingGeminiGroupIfNeeded];
  cardEditingGeminiGroup = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
  [cardEditingGeminiGroup setShouldShowGemini:shouldShowGemini];

  if ([(CNContactContentEditViewController *)self shouldShowGemini])
  {
    cardEditingGeminiGroup2 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
    [array _cn_addNonNilObject:cardEditingGeminiGroup2];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = +[CNContactView allCardProperties];
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        propertyGroups = [(CNContactContentEditViewController *)self propertyGroups];
        v18 = [propertyGroups objectForKeyedSubscript:v16];

        if (v18)
        {
          [array addObject:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v13);
  }

  cardStaticIdentityGroup = [(CNContactContentEditViewController *)self cardStaticIdentityGroup];
  [array _cn_addNonNilObject:cardStaticIdentityGroup];

  cardEditingActionsGroup = [(CNContactContentEditViewController *)self cardEditingActionsGroup];
  actions = [cardEditingActionsGroup actions];
  v22 = [actions count];

  if (v22)
  {
    cardEditingActionsGroup2 = [(CNContactContentEditViewController *)self cardEditingActionsGroup];
    [array addObject:cardEditingActionsGroup2];
  }

  cardMedicalIDGroup = [(CNContactContentEditViewController *)self cardMedicalIDGroup];
  actionItems = [cardMedicalIDGroup actionItems];
  v26 = [actionItems count];

  if (v26)
  {
    cardMedicalIDGroup2 = [(CNContactContentEditViewController *)self cardMedicalIDGroup];
    [array _cn_addNonNilObject:cardMedicalIDGroup2];
  }

  [(CNContactContentEditViewController *)self createCardEditingContactContainerGroupIfNeeded];
  cardEditingContactContainerGroup = [(CNContactContentEditViewController *)self cardEditingContactContainerGroup];
  [array _cn_addNonNilObject:cardEditingContactContainerGroup];

  cardLinkedCardsGroup = [(CNContactContentEditViewController *)self cardLinkedCardsGroup];
  [array _cn_addNonNilObject:cardLinkedCardsGroup];

  cardEditingDeleteContactGroup = [(CNContactContentEditViewController *)self cardEditingDeleteContactGroup];
  actions2 = [cardEditingDeleteContactGroup actions];
  v32 = [actions2 count];

  if (v32)
  {
    cardEditingDeleteContactGroup2 = [(CNContactContentEditViewController *)self cardEditingDeleteContactGroup];
    [array addObject:cardEditingDeleteContactGroup2];
  }

  return array;
}

- (void)createCardEditingContactContainerGroupIfNeeded
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:13];

  if (v5)
  {
    if ([(CNContactContentEditViewController *)self shouldAllowContainerPicking])
    {
      v6 = [CNCardContactContainerGroup alloc];
      mutableContact = [(CNContactContentEditViewController *)self mutableContact];
      v8 = [(CNCardGroup *)v6 initWithContact:mutableContact];
      [(CNContactContentEditViewController *)self setCardEditingContactContainerGroup:v8];

      containerContext = [(CNContactContentEditViewController *)self containerContext];
      selectedContainers = [containerContext selectedContainers];
      cardEditingContactContainerGroup = [(CNContactContentEditViewController *)self cardEditingContactContainerGroup];
      [cardEditingContactContainerGroup setContainers:selectedContainers];
    }

    else
    {

      [(CNContactContentEditViewController *)self setCardEditingContactContainerGroup:0];
    }
  }
}

- (void)createCardEditingGeminiGroupIfNeeded
{
  cardEditingGeminiGroup = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];

  if (!cardEditingGeminiGroup)
  {
    propertyGroups = [(CNContactContentEditViewController *)self propertyGroups];
    v5 = [propertyGroups objectForKeyedSubscript:*MEMORY[0x1E695C370]];
    [(CNContactContentEditViewController *)self setCardEditingGeminiGroup:v5];

    cardEditingGeminiGroup2 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
    propertyItems = [cardEditingGeminiGroup2 propertyItems];
    v10 = [propertyItems objectAtIndexedSubscript:0];

    geminiDataSource = [(CNContactContentEditViewController *)self geminiDataSource];
    geminiResult = [geminiDataSource geminiResult];
    [v10 setGeminiResult:geminiResult];

    [v10 setDelegate:self];
  }
}

- (void)_reloadGeminiGroupPreservingChanges:(BOOL)changes
{
  if (!changes)
  {
    [(CNContactContentEditViewController *)self setCardEditingGeminiGroup:0];
    geminiDataSource = [(CNContactContentEditViewController *)self geminiDataSource];
    [geminiDataSource resetDataSource];
    contact = [(CNContactContentEditViewController *)self contact];
    [geminiDataSource setContact:contact];
  }
}

- (id)_addGroupsInArray:(id)array afterGroup:(id)group
{
  v22 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  groupCopy = group;
  groupsAfterGroup = [(CNContactContentEditViewController *)self groupsAfterGroup];
  v9 = [groupsAfterGroup objectForKeyedSubscript:groupCopy];

  if (v9)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [arrayCopy addObject:{*(*(&v17 + 1) + 8 * i), v17}];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    lastObject = [v10 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (void)_reloadStaticIdentityGroup
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:21];

  if (v5)
  {
    if ([(CNContactContentEditViewController *)self isEditing])
    {
      cardStaticIdentityGroup = [(CNContactContentEditViewController *)self cardStaticIdentityGroup];

      if (!cardStaticIdentityGroup)
      {
        v7 = [CNCardStaticIdentityGroup alloc];
        mutableContact = [(CNContactContentEditViewController *)self mutableContact];
        v8 = [(CNCardStaticIdentityGroup *)v7 initWithContact:mutableContact];
        [(CNContactContentEditViewController *)self setCardStaticIdentityGroup:v8];
      }
    }
  }
}

- (void)_reloadLinkedCardsGroup
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_linkedCardsAction)
  {
    _linkedCardsAction = [(CNContactContentEditViewController *)self _linkedCardsAction];
    linkedCardsAction = self->_linkedCardsAction;
    self->_linkedCardsAction = _linkedCardsAction;
  }

  addLinkedCardAction = self->_addLinkedCardAction;
  if (!addLinkedCardAction)
  {
    _addLinkedCardAction = [(CNContactContentEditViewController *)self _addLinkedCardAction];
    v7 = self->_addLinkedCardAction;
    self->_addLinkedCardAction = _addLinkedCardAction;

    addLinkedCardAction = self->_addLinkedCardAction;
  }

  [(CNContactAddLinkedCardAction *)addLinkedCardAction setEditingLinkedContacts:self->_editingLinkedContacts];
  v8 = [CNCardLinkedCardsGroup alloc];
  mutableContact = [(CNContactContentEditViewController *)self mutableContact];
  v10 = [(CNCardGroup *)v8 initWithContact:mutableContact];
  [(CNContactContentEditViewController *)self setCardLinkedCardsGroup:v10];

  array = [MEMORY[0x1E695DF70] array];
  editingLinkedContacts = self->_editingLinkedContacts;
  if (editingLinkedContacts)
  {
    mainStoreLinkedContacts = editingLinkedContacts;
  }

  else
  {
    contact = [(CNContactContentEditViewController *)self contact];
    mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
  }

  shadowCopyOfReadonlyContact = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];

  if (!shadowCopyOfReadonlyContact)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = mainStoreLinkedContacts;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [array addObject:{*(*(&v22 + 1) + 8 * v20++), v22}];
        }

        while (v18 != v20);
        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v18);
    }
  }

  cardLinkedCardsGroup = [(CNContactContentEditViewController *)self cardLinkedCardsGroup];
  [cardLinkedCardsGroup setLinkedContacts:array];
}

- (BOOL)shouldReallyShowLinkedContacts
{
  contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
  if ([contactViewConfiguration shouldShowLinkedContacts])
  {
    contact = [(CNContactContentEditViewController *)self contact];
    mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
    if ([mainStoreLinkedContacts count] < 2)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      shadowCopyOfReadonlyContact = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];
      if (shadowCopyOfReadonlyContact)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        contact2 = [(CNContactContentEditViewController *)self contact];
        v7 = [contact2 isSuggestedMe] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_reloadContainerContextPreservingChanges:(BOOL)changes
{
  containerContext = [(CNContactContentEditViewController *)self containerContext];

  if (containerContext)
  {
    if (!changes)
    {
      containerContext2 = [(CNContactContentEditViewController *)self containerContext];
      [containerContext2 resetToInitialState];

      parentContainer = [(CNContactContentEditViewController *)self parentContainer];

      if (parentContainer)
      {
        containerContext3 = [(CNContactContentEditViewController *)self containerContext];
        parentContainer2 = [(CNContactContentEditViewController *)self parentContainer];
        [containerContext3 addContainer:parentContainer2];
      }
    }
  }
}

- (void)_reloadMedicalIDGroup
{
  environment = [(CNContactContentEditViewController *)self environment];
  healthStoreManager = [environment healthStoreManager];

  medicalIDLookupToken = [(CNContactContentEditViewController *)self medicalIDLookupToken];
  [medicalIDLookupToken cancel];

  [(CNContactContentEditViewController *)self setMedicalIDLookupToken:0];
  [(CNContactContentEditViewController *)self setMedicalIDRegistrationToken:0];
  [(CNContactContentEditViewController *)self setCardMedicalIDGroup:0];
  contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
  if (([contactViewConfiguration allowsActions] & 1) == 0)
  {

    goto LABEL_5;
  }

  contactViewConfiguration2 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  allowsCardActions = [contactViewConfiguration2 allowsCardActions];

  if (!allowsCardActions)
  {
LABEL_5:
    [(CNContactContentEditViewController *)self setCardMedicalIDGroup:0];
    [(CNContactContentEditViewController *)self setMedicalIDAction:0];
    [(CNContactContentEditViewController *)self setEmergencyContactAction:0];
    [(CNContactContentEditViewController *)self setEmergencyNumberIdentifier:0];
    goto LABEL_6;
  }

  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__CNContactContentEditViewController__reloadMedicalIDGroup__block_invoke;
  v21[3] = &unk_1E74E7268;
  objc_copyWeak(&v23, &location);
  v9 = healthStoreManager;
  v22 = v9;
  v10 = [v9 registerMedicalIDDataHandler:v21];
  [(CNContactContentEditViewController *)self setMedicalIDRegistrationToken:v10];
  v11 = MEMORY[0x1E6996668];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __59__CNContactContentEditViewController__reloadMedicalIDGroup__block_invoke_4;
  v17 = &unk_1E74E7290;
  objc_copyWeak(&v20, &location);
  v18 = v9;
  v12 = v10;
  v19 = v12;
  v13 = [v11 tokenWithCancelationBlock:&v14];
  [(CNContactContentEditViewController *)self setMedicalIDLookupToken:v13, v14, v15, v16, v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
LABEL_6:
}

void __59__CNContactContentEditViewController__reloadMedicalIDGroup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained environment];
  v9 = [v8 defaultSchedulerProvider];
  v10 = [v9 mainThreadScheduler];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__CNContactContentEditViewController__reloadMedicalIDGroup__block_invoke_2;
  v13[3] = &unk_1E74E7240;
  v14 = v6;
  v15 = WeakRetained;
  v16 = *(a1 + 32);
  v17 = v5;
  v11 = v5;
  v12 = v6;
  [v10 performBlock:v13];
}

void __59__CNContactContentEditViewController__reloadMedicalIDGroup__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setMedicalIDRegistrationToken:0];
  [*(a1 + 32) unregisterHandlerForToken:*(a1 + 40)];
}

void __59__CNContactContentEditViewController__reloadMedicalIDGroup__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) medicalIDRegistrationToken];

  if (v2 == v3 && [*(a1 + 40) showingMeContact])
  {
    v4 = [*(a1 + 40) cardMedicalIDGroup];

    if (v4)
    {
      v5 = [*(a1 + 40) cardMedicalIDGroup];
      [v5 removeAllActions];
    }

    else
    {
      v6 = [CNCardGroup alloc];
      v5 = [*(a1 + 40) mutableContact];
      v7 = [(CNCardGroup *)v6 initWithContact:v5];
      [*(a1 + 40) setCardMedicalIDGroup:v7];
    }

    v8 = [*(a1 + 40) cardMedicalIDGroup];
    [v8 setAddSpacerFromPreviousGroup:0];

    if ([*(a1 + 40) showingMeContact])
    {
      v9 = [*(a1 + 40) medicalIDAction];

      if (!v9)
      {
        v10 = [CNMedicalIDAction alloc];
        v11 = [*(a1 + 40) contact];
        v12 = [(CNPropertyAction *)v10 initWithContact:v11];
        [*(a1 + 40) setMedicalIDAction:v12];

        v13 = *(a1 + 48);
        v14 = [*(a1 + 40) medicalIDAction];
        [v14 setHealthStoreManager:v13];

        v15 = *(a1 + 40);
        v16 = [v15 medicalIDAction];
        [v16 setDelegate:v15];

        v17 = [*(a1 + 40) medicalIDAction];
        [v17 setShowBackgroundPlatter:0];
      }

      v18 = [*(a1 + 40) cardMedicalIDGroup];
      [v18 setAddSpacerFromPreviousGroup:1];

      v19 = *(a1 + 56);
      v20 = CNContactsUIBundle();
      v21 = v20;
      if (v19)
      {
        v22 = @"CARD_ACTION_EDIT_MEDICAL_ID";
      }

      else
      {
        v22 = @"CARD_ACTION_CREATE_MEDICAL_ID";
      }

      if (v19)
      {
        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      v24 = [v20 localizedStringForKey:v22 value:&stru_1F0CE7398 table:@"Localized"];

      v25 = [*(a1 + 40) medicalIDAction];
      [v25 setMedicalIDActionType:v23];

      v26 = [*(a1 + 40) cardMedicalIDGroup];
      v27 = [*(a1 + 40) medicalIDAction];
      v28 = +[CNUIColorRepository contactListEmergencyContactAddTextColor];
      v29 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
      [v26 addAction:v27 withTitle:v24 color:v28 glyphColor:v29 transportType:6];
    }

    v30 = [*(a1 + 40) contactView];
    v31 = [*(a1 + 40) editingGroups];
    v32 = MEMORY[0x1E69DD250];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __59__CNContactContentEditViewController__reloadMedicalIDGroup__block_invoke_3;
    v43[3] = &unk_1E74E6EE8;
    v33 = v31;
    v34 = *(a1 + 40);
    v44 = v33;
    v45 = v34;
    v35 = v30;
    v46 = v35;
    [v32 performWithoutAnimation:v43];
    v36 = [*(a1 + 40) emergencyNumberIdentifier];
    if (v36)
    {
      v37 = v36;
      v38 = [*(a1 + 40) emergencyNumberIdentifier];
      v39 = [0 isEqualToString:v38];

      if ((v39 & 1) == 0)
      {
        [*(a1 + 40) setEmergencyNumberIdentifier:0];
        v40 = *(a1 + 40);
        v41 = [v40 propertyGroups];
        v42 = [v41 objectForKeyedSubscript:*MEMORY[0x1E695C330]];
        [v40 reloadCardGroup:v42 forTableView:v35];
      }
    }
  }
}

void __59__CNContactContentEditViewController__reloadMedicalIDGroup__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cardMedicalIDGroup];
  v4 = [v2 containsObject:v3];

  v5 = *(a1 + 40);
  if (v4)
  {
    v8 = [*(a1 + 40) cardMedicalIDGroup];
    [v5 reloadCardGroup:v8 forTableView:*(a1 + 48)];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);

    [v7 _addMedicalIDGroupAnimated:0 forTableView:v6];
  }
}

- (void)_addMedicalIDGroupAnimated:(BOOL)animated forTableView:(id)view
{
  animatedCopy = animated;
  viewCopy = view;
  editingGroups = [(CNContactContentEditViewController *)self editingGroups];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__CNContactContentEditViewController__addMedicalIDGroupAnimated_forTableView___block_invoke;
  aBlock[3] = &unk_1E74E7218;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = [editingGroups indexOfObjectPassingTest:v8];
  if (v9)
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [editingGroups lastObject];
    }

    else
    {
      [editingGroups objectAtIndexedSubscript:v9 - 1];
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  cardMedicalIDGroup = [(CNContactContentEditViewController *)self cardMedicalIDGroup];
  [(CNContactContentEditViewController *)self _addGroup:cardMedicalIDGroup afterGroup:v10 forTableView:viewCopy animated:animatedCopy];
}

BOOL __78__CNContactContentEditViewController__addMedicalIDGroupAnimated_forTableView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) cardLinkedCardsGroup];
  if (v4 == v3)
  {
    v7 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) cardStaticIdentityGroup];
    if (v5 == v3)
    {
      v7 = 1;
    }

    else
    {
      v6 = [*(a1 + 32) cardEditingDeleteContactGroup];
      v7 = v6 == v3;
    }
  }

  return v7;
}

- (void)_addGroup:(id)group afterGroup:(id)afterGroup forTableView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  groupCopy = group;
  afterGroupCopy = afterGroup;
  viewCopy = view;
  if (afterGroupCopy)
  {
    [(CNContactContentEditViewController *)self addCardGroup:groupCopy afterGroup:afterGroupCopy];
    editingGroups = [(CNContactContentEditViewController *)self editingGroups];
    v13 = [editingGroups indexOfObject:afterGroupCopy];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v13 + 1;
      goto LABEL_6;
    }
  }

  else
  {
    editingGroups = [(CNContactContentEditViewController *)self editingGroups];
  }

  v14 = 0;
LABEL_6:
  [viewCopy beginUpdates];
  [editingGroups insertObject:groupCopy atIndex:v14];
  v15 = [(CNContactContentEditViewController *)self tableViewSectionIndexFromGroupIndex:v14 forTableView:viewCopy];
  v16 = [MEMORY[0x1E696AC90] indexSetWithIndex:v15];
  if (animatedCopy)
  {
    v17 = 6;
  }

  else
  {
    v17 = 5;
  }

  [viewCopy insertSections:v16 withRowAnimation:v17];

  [viewCopy endUpdates];
}

- (void)_reloadPropertyGroupsPreservingChanges:(BOOL)changes
{
  changesCopy = changes;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  propertyGroups = [(CNContactContentEditViewController *)self propertyGroups];
  allValues = [propertyGroups allValues];

  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9++) reloadDataPreservingChanges:changesCopy];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_loadPropertyGroups
{
  v3 = [CNPropertyGroupsDataSource alloc];
  mutableContact = [(CNContactContentEditViewController *)self mutableContact];
  contactStore = [(CNContactContentEditViewController *)self contactStore];
  policy = [(CNContactContentEditViewController *)self policy];
  linkedPoliciesByContactIdentifier = [(CNContactContentEditViewController *)self linkedPoliciesByContactIdentifier];
  prohibitedPropertyKeys = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
  v9 = [(CNPropertyGroupsDataSource *)v3 initWithMutableContact:mutableContact contactStore:contactStore policy:policy linkedPolicies:linkedPoliciesByContactIdentifier prohibitedKeys:prohibitedPropertyKeys];
  propertyGroupsDataSource = self->_propertyGroupsDataSource;
  self->_propertyGroupsDataSource = v9;

  propertyGroupsDataSource = [(CNContactContentEditViewController *)self propertyGroupsDataSource];
  [propertyGroupsDataSource buildPropertyGroups];

  propertyGroupsDataSource2 = [(CNContactContentEditViewController *)self propertyGroupsDataSource];
  propertyGroups = [propertyGroupsDataSource2 propertyGroups];

  return propertyGroups;
}

- (BOOL)shouldShowGemini
{
  geminiDataSource = [(CNContactContentEditViewController *)self geminiDataSource];
  geminiResult = [geminiDataSource geminiResult];

  if (geminiResult && ![(CNContactContentEditViewController *)self showingMeContact])
  {
    contact = [(CNContactContentEditViewController *)self contact];
    if ([contact isSuggested])
    {
      v5 = 0;
    }

    else
    {
      contact2 = [(CNContactContentEditViewController *)self contact];
      if ([contact2 isCoreRecentsAccepted])
      {
        v5 = 0;
      }

      else
      {
        contact3 = [(CNContactContentEditViewController *)self contact];
        v5 = [CNContactContentEditViewController shouldShowGeminiForResult:geminiResult contact:contact3];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (Class)groupClassForProperty:(id)property
{
  propertyCopy = property;
  if (([propertyCopy isEqualToString:*MEMORY[0x1E695C1E0]] & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C3F8]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C370]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C200]) & 1) == 0)
  {
    [propertyCopy isEqualToString:*MEMORY[0x1E695C1C0]];
  }

  v4 = objc_opt_class();

  return v4;
}

- (id)_addNewFieldAction
{
  v3 = [CNContactAddNewFieldAction alloc];
  contact = [(CNContactContentEditViewController *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:contact];

  prohibitedPropertyKeys = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
  [(CNContactAddNewFieldAction *)v5 setProhibitedPropertyKeys:prohibitedPropertyKeys];

  [(CNContactAction *)v5 setDelegate:self];
  [(CNContactAddNewFieldAction *)v5 setGroupPickerDelegate:self];

  return v5;
}

- (id)_selectContainersAction
{
  v3 = objc_alloc_init(CNContactSelectContainersAction);
  [(CNContactAction *)v3 setDelegate:self];

  return v3;
}

- (id)_addLinkedCardAction
{
  v3 = [CNContactAddLinkedCardAction alloc];
  mutableContact = [(CNContactContentEditViewController *)self mutableContact];
  v5 = [(CNContactAction *)v3 initWithContact:mutableContact];

  [(CNContactAction *)v5 setDelegate:self];

  return v5;
}

- (id)_linkedCardsAction
{
  v3 = [CNPropertyLinkedCardsAction alloc];
  mutableContact = [(CNContactContentEditViewController *)self mutableContact];
  v5 = [(CNPropertyLinkedCardsAction *)v3 initWithContact:mutableContact];

  [(CNContactAction *)v5 setDelegate:self];
  [(CNPropertyLinkedCardsAction *)v5 setContactDelegate:self];

  return v5;
}

- (id)_propertyGroupsForKeys:(id)keys
{
  v20 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        propertyGroups = [(CNContactContentEditViewController *)self propertyGroups];
        v13 = [propertyGroups objectForKeyedSubscript:v11];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_setupEditingCardActions
{
  policy = [(CNContactContentEditViewController *)self policy];
  isReadonly = [policy isReadonly];

  if (isReadonly)
  {
    return;
  }

  [(CNContactContentEditViewController *)self _setupSuggestionActions];
  actionProvider = [(CNContactContentEditViewController *)self actionProvider];
  stopSharingWithFamilyAction = [actionProvider stopSharingWithFamilyAction];
  canPerformAction = [stopSharingWithFamilyAction canPerformAction];

  if (canPerformAction)
  {
    cardEditingActionsGroup = [(CNContactContentEditViewController *)self cardEditingActionsGroup];
    actionProvider2 = [(CNContactContentEditViewController *)self actionProvider];
    stopSharingWithFamilyAction2 = [actionProvider2 stopSharingWithFamilyAction];
    actionProvider3 = [(CNContactContentEditViewController *)self actionProvider];
    stopSharingWithFamilyAction3 = [actionProvider3 stopSharingWithFamilyAction];
    title = [stopSharingWithFamilyAction3 title];
    [cardEditingActionsGroup addAction:stopSharingWithFamilyAction2 withTitle:title];
  }

  v14 = [CNContactAddStaticIdentityAction alloc];
  contact = [(CNContactContentEditViewController *)self contact];
  v16 = [(CNContactAction *)v14 initWithContact:contact];
  [(CNContactContentEditViewController *)self setAddStaticIdentityAction:v16];

  alreadyPickedGroups = [(CNContactContentEditViewController *)self alreadyPickedGroups];
  policy2 = [(CNContactContentEditViewController *)self policy];
  prohibitedPropertyKeys = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
  LODWORD(v16) = [CNContactPropertyGroupPickerViewController propertiesLeftToPickWithPickedGroups:alreadyPickedGroups policy:policy2 prohibitedPropertyKeys:prohibitedPropertyKeys];

  if (v16)
  {
    _addNewFieldAction = [(CNContactContentEditViewController *)self _addNewFieldAction];
    [(CNContactContentEditViewController *)self setAddNewFieldAction:_addNewFieldAction];

    cardEditingActionsGroup2 = [(CNContactContentEditViewController *)self cardEditingActionsGroup];
    addNewFieldAction = [(CNContactContentEditViewController *)self addNewFieldAction];
    v23 = CNContactsUIBundle();
    v24 = [v23 localizedStringForKey:@"ADD_MORE_PROPERTIES" value:&stru_1F0CE7398 table:@"Localized"];
    [cardEditingActionsGroup2 addAction:addNewFieldAction withTitle:v24];
  }

  contact2 = [(CNContactContentEditViewController *)self contact];
  isSuggestedMe = [contact2 isSuggestedMe];

  if (isSuggestedMe)
  {
    v27 = [CNContactIgnoreDonatedInformationAction alloc];
    mutableContact = [(CNContactContentEditViewController *)self mutableContact];
    v29 = objc_alloc_init(MEMORY[0x1E6996448]);
    environment = [(CNContactContentEditViewController *)self environment];
    componentsFactory = [environment componentsFactory];
    v32 = [(CNContactIgnoreDonatedInformationAction *)v27 initWithContact:mutableContact donationStore:v29 componentsFactory:componentsFactory];
    [(CNContactContentEditViewController *)self setIgnoreContactAction:v32];

    ignoreContactAction = [(CNContactContentEditViewController *)self ignoreContactAction];
    [ignoreContactAction setDelegate:self];

    ignoreContactAction2 = [(CNContactContentEditViewController *)self ignoreContactAction];
    [ignoreContactAction2 setDestructive:1];

    cardEditingDeleteContactGroup = [(CNContactContentEditViewController *)self cardEditingDeleteContactGroup];
    ignoreContactAction3 = [(CNContactContentEditViewController *)self ignoreContactAction];
    v37 = CNContactsUIBundle();
    v38 = v37;
    v39 = @"CARD_ACTION_IGNORE_CARD";
LABEL_8:
    v40 = [v37 localizedStringForKey:v39 value:&stru_1F0CE7398 table:@"Localized"];
    [cardEditingDeleteContactGroup addAction:ignoreContactAction3 withTitle:v40];

LABEL_10:
    goto LABEL_11;
  }

  cardEditingDeleteContactGroup = [(CNContactContentEditViewController *)self contact];
  if ([cardEditingDeleteContactGroup isUnknown])
  {
    goto LABEL_10;
  }

  contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
  editingProposedInformation = [contactViewConfiguration editingProposedInformation];

  if ((editingProposedInformation & 1) == 0)
  {
    v44 = [CNContactDeleteContactAction alloc];
    mutableContact2 = [(CNContactContentEditViewController *)self mutableContact];
    environment2 = [(CNContactContentEditViewController *)self environment];
    recentsManager = [environment2 recentsManager];
    environment3 = [(CNContactContentEditViewController *)self environment];
    componentsFactory2 = [environment3 componentsFactory];
    v50 = [(CNContactDeleteContactAction *)v44 initWithContact:mutableContact2 recentsManager:recentsManager componentsFactory:componentsFactory2];
    [(CNContactContentEditViewController *)self setDeleteContactAction:v50];

    deleteContactAction = [(CNContactContentEditViewController *)self deleteContactAction];
    [deleteContactAction setDelegate:self];

    deleteContactAction2 = [(CNContactContentEditViewController *)self deleteContactAction];
    [deleteContactAction2 setDestructive:1];

    cardEditingDeleteContactGroup = [(CNContactContentEditViewController *)self cardEditingDeleteContactGroup];
    ignoreContactAction3 = [(CNContactContentEditViewController *)self deleteContactAction];
    v37 = CNContactsUIBundle();
    v38 = v37;
    v39 = @"CARD_ACTION_DELETE_CARD";
    goto LABEL_8;
  }

LABEL_11:
  if ([(CNContactContentEditViewController *)self shouldAllowContainerPicking])
  {
    v41 = objc_alloc_init(CNContactSelectContainersAction);
    [(CNContactContentEditViewController *)self setSelectContainersAction:v41];

    selectContainersAction = [(CNContactContentEditViewController *)self selectContainersAction];
    [selectContainersAction setDelegate:self];
  }
}

- (void)_setupSuggestionActions
{
  originalContacts = [(CNContactContentEditViewController *)self originalContacts];
  v8 = [originalContacts _cn_filter:&__block_literal_global_630];

  if ([v8 count] == 1)
  {
    v4 = [CNContactSuggestionAction alloc];
    firstObject = [v8 firstObject];
    v6 = [(CNContactAction *)v4 initWithContact:firstObject];
    [(CNContactContentEditViewController *)self setSuggestedContactAction:v6];

    suggestedContactAction = [(CNContactContentEditViewController *)self suggestedContactAction];
    [suggestedContactAction setDelegate:self];
  }

  else
  {
    [(CNContactContentEditViewController *)self setSuggestedContactAction:0];
  }
}

- (void)updateContactsViewWithBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  ++self->_animating;
  contactView = [(CNContactContentEditViewController *)self contactView];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CNContactContentEditViewController_updateContactsViewWithBlock_completion___block_invoke;
  v13[3] = &unk_1E74E6F88;
  v14 = blockCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__CNContactContentEditViewController_updateContactsViewWithBlock_completion___block_invoke_2;
  v11[3] = &unk_1E74E6FB0;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = blockCopy;
  [contactView performBatchUpdates:v13 completion:v11];
}

uint64_t __77__CNContactContentEditViewController_updateContactsViewWithBlock_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  --*(*(a1 + 32) + 996);
  v3 = *(a1 + 32);

  return [v3 reloadDataIfNeeded];
}

- (CGSize)requiredSizeForVisibleTableView
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)desiredHeightForWidth:(double)width
{
  view = [(CNContactContentEditViewController *)self view];
  [view frame];
  [view setFrame:?];
  [(CNContactContentEditViewController *)self reloadDataIfNeeded];
  contactView = [(CNContactContentEditViewController *)self contactView];
  visibleCells = [contactView visibleCells];

  view2 = [(CNContactContentEditViewController *)self view];
  [view2 layoutIfNeeded];

  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView setNeedsLayout];

  [(CNContactContentEditViewController *)self requiredSizeForVisibleTableView];
  v10 = v9;
  superview = [view superview];
  [superview frame];
  [view setFrame:?];

  return v10;
}

- (void)cleanupRecentPosterMetadata
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CE00]);
  v4 = MEMORY[0x1E695CDF0];
  contact = [(CNContactContentEditViewController *)self contact];
  identifier = [contact identifier];
  v16[0] = identifier;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v8 = [v4 requestToDeletePostersForContactIdentifiers:v7];

  v13 = 0;
  [v3 performDeleteRequest:v8 error:&v13];
  v9 = v13;
  if (v9)
  {
    v10 = CNUILogContactCard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      contact2 = [(CNContactContentEditViewController *)self contact];
      identifier2 = [contact2 identifier];
      *buf = 138412290;
      v15 = identifier2;
      _os_log_debug_impl(&dword_199A75000, v10, OS_LOG_TYPE_DEBUG, "Failed to delete recent poster metadata for contact: %@", buf, 0xCu);
    }
  }
}

- (void)cleanupRecentImageMetadata
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CDA8]);
  v4 = MEMORY[0x1E695CD98];
  contact = [(CNContactContentEditViewController *)self contact];
  identifier = [contact identifier];
  v16[0] = identifier;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v8 = [v4 requestToDeleteImagesForContactIdentifiers:v7];

  v13 = 0;
  [v3 performDeleteRequest:v8 error:&v13];
  v9 = v13;
  if (v9)
  {
    v10 = CNUILogContactCard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      contact2 = [(CNContactContentEditViewController *)self contact];
      identifier2 = [contact2 identifier];
      *buf = 138412290;
      v15 = identifier2;
      _os_log_debug_impl(&dword_199A75000, v10, OS_LOG_TYPE_DEBUG, "Failed to delete recent image metadata for contact: %@", buf, 0xCu);
    }
  }
}

- (void)cleanupRecentMetadata
{
  [(CNContactContentEditViewController *)self cleanupRecentImageMetadata];

  [(CNContactContentEditViewController *)self cleanupRecentPosterMetadata];
}

- (void)reloadUnifiedContact
{
  contact = [(CNContactContentEditViewController *)self contact];
  v4 = objc_opt_class();

  contact2 = [(CNContactContentEditViewController *)self contact];
  linkedContacts = [contact2 linkedContacts];

  v6 = linkedContacts;
  if (linkedContacts)
  {
    v7 = [v4 unifyContacts:linkedContacts];
    [(CNContactContentEditViewController *)self setContact:v7];

    v6 = linkedContacts;
  }
}

- (void)addStaticIdentity:(id)identity
{
  identityCopy = identity;
  cardStaticIdentityGroup = [(CNContactContentEditViewController *)self cardStaticIdentityGroup];
  [cardStaticIdentityGroup addIdentity:identityCopy isNew:1];

  [(CNContactContentEditViewController *)self reloadDataPreservingChanges:1];
}

- (void)removeLinkedContact:(id)contact
{
  v14[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    contact = [(CNContactContentEditViewController *)self contact];
    mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
    v7 = [mainStoreLinkedContacts containsObject:contactCopy];

    editingLinkedContacts = [(CNContactContentEditViewController *)self editingLinkedContacts];
    v9 = [editingLinkedContacts containsObject:contactCopy];

    if ((v7 & 1) != 0 || v9)
    {
      availableKeyDescriptor = [contactCopy availableKeyDescriptor];
      v14[0] = availableKeyDescriptor;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [(CNContactContentEditViewController *)self _setupEditingLinkedContactsForKeys:v11];

      editingLinkedContacts2 = [(CNContactContentEditViewController *)self editingLinkedContacts];
      [editingLinkedContacts2 removeObject:contactCopy];

      [(CNContactContentEditViewController *)self reloadDataPreservingChanges:1];
      v13 = +[CNUIDataCollector sharedCollector];
      [v13 logContactActionType:CNUIContactActionTypeUnlink attributes:0];
    }
  }
}

- (void)addLinkedContact:(id)contact
{
  v14[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    contact = [(CNContactContentEditViewController *)self contact];
    v6 = contact;
    if (contact == contactCopy)
    {
    }

    else
    {
      contact2 = [(CNContactContentEditViewController *)self contact];
      mainStoreLinkedContacts = [contact2 mainStoreLinkedContacts];
      v9 = [mainStoreLinkedContacts containsObject:contactCopy];

      if ((v9 & 1) == 0)
      {
        availableKeyDescriptor = [contactCopy availableKeyDescriptor];
        v14[0] = availableKeyDescriptor;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        [(CNContactContentEditViewController *)self _setupEditingLinkedContactsForKeys:v11];

        editingLinkedContacts = [(CNContactContentEditViewController *)self editingLinkedContacts];
        [editingLinkedContacts addObject:contactCopy];

        [(CNContactContentEditViewController *)self reloadDataPreservingChanges:1];
        v13 = +[CNUIDataCollector sharedCollector];
        [v13 logContactActionType:CNUIContactActionTypeLink attributes:0];
      }
    }
  }
}

- (void)_setupEditingLinkedContactsForKeys:(id)keys
{
  keysCopy = keys;
  editingLinkedContacts = [(CNContactContentEditViewController *)self editingLinkedContacts];

  v5 = keysCopy;
  if (!editingLinkedContacts)
  {
    contact = [(CNContactContentEditViewController *)self contact];
    isUnified = [contact isUnified];

    if (isUnified)
    {
      contact2 = [(CNContactContentEditViewController *)self contact];
      mainStoreLinkedContacts = [contact2 mainStoreLinkedContacts];
      v10 = [mainStoreLinkedContacts mutableCopy];
    }

    else
    {
      v11 = MEMORY[0x1E695DF70];
      contact2 = [(CNContactContentEditViewController *)self contact];
      mainStoreLinkedContacts = [contact2 copyWithPropertyKeys:keysCopy];
      v10 = [v11 arrayWithObject:mainStoreLinkedContacts];
    }

    v12 = v10;
    [(CNContactContentEditViewController *)self setEditingLinkedContacts:v10];

    v5 = keysCopy;
  }
}

- (void)updatedExistingContact:(id)contact
{
  contactCopy = contact;
  v7 = contactCopy;
  if (contactCopy)
  {
    contact = contactCopy;
  }

  else
  {
    contact = [(CNContactContentEditViewController *)self contact];
  }

  v6 = contact;
  [(CNContactContentEditViewController *)self setContact:contact];
  [(CNContactContentEditViewController *)self _didCompleteWithContact:v6];
}

- (void)createdNewContact:(id)contact
{
  contactCopy = contact;
  v6 = contactCopy;
  if (contactCopy)
  {
    [(CNContactContentEditViewController *)self setContact:contactCopy];
    [(CNContactContentEditViewController *)self setMode:1];
    contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
    [contactViewConfiguration setAllowsAddingToAddressBook:0];

    contactCopy = v6;
  }

  [(CNContactContentEditViewController *)self _didCompleteWithContact:contactCopy];
}

- (void)_didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v5 = contactCopy;
    v16 = [(CNContactContentEditViewController *)self _removeUnauthorizedKeysFromContact:contactCopy];

    if (self->_contact != &self->_mutableContact->super)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v16 copy];

        v16 = v6;
      }
    }

    suggestedContactAction = [(CNContactContentEditViewController *)self suggestedContactAction];
    [suggestedContactAction confirmSuggestion];
  }

  else
  {
    v16 = 0;
  }

  if ([(CNContactContentEditViewController *)self mode]== 3)
  {
    originalContacts = [(CNContactContentEditViewController *)self originalContacts];
    v9 = [originalContacts count];

    if (v9 == 1)
    {
      if (v16)
      {
        v10 = +[CNUIDataCollector sharedCollector];
        originalContacts2 = [(CNContactContentEditViewController *)self originalContacts];
        v12 = [originalContacts2 objectAtIndexedSubscript:0];
        [v10 logContactCreated:v16 originalContact:v12];
      }
    }
  }

  delegate = [(CNContactContentEditViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(CNContactContentEditViewController *)self delegate];
    [delegate2 contactEditViewController:self didCompleteWithContact:v16];
  }
}

- (id)_removeUnauthorizedKeysFromContact:(id)contact
{
  contactCopy = contact;
  missingRequiredKeys = [(CNContactContentEditViewController *)self missingRequiredKeys];
  v6 = [missingRequiredKeys count];

  if (v6)
  {
    v7 = [contactCopy mutableCopy];
    missingRequiredKeys2 = [(CNContactContentEditViewController *)self missingRequiredKeys];
    [v7 removeKeys:missingRequiredKeys2];

    [v7 setFrozenSelfAsSnapshot];
    contactCopy = v7;
  }

  return contactCopy;
}

- (id)_updateContact:(id)contact withMissingKeysFromRequiredKeys:(id)keys
{
  v30[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  keysCopy = keys;
  v8 = [contactCopy areKeysAvailable:keysCopy useIgnorableKeys:0 findMissingKeys:1];
  first = [v8 first];
  bOOLValue = [first BOOLValue];

  if (bOOLValue)
  {
    freeze = contactCopy;
  }

  else
  {
    second = [v8 second];
    [(CNContactContentEditViewController *)self setMissingRequiredKeys:second];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__22616;
    v28 = __Block_byref_object_dispose__22617;
    v29 = 0;
    v13 = objc_alloc(MEMORY[0x1E695CD78]);
    missingRequiredKeys = [(CNContactContentEditViewController *)self missingRequiredKeys];
    v15 = [v13 initWithKeysToFetch:missingRequiredKeys];

    v16 = MEMORY[0x1E695CD58];
    identifier = [contactCopy identifier];
    v30[0] = identifier;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v19 = [v16 predicateForContactsWithIdentifiers:v18];
    [v15 setPredicate:v19];

    [v15 setUnifyResults:{objc_msgSend(contactCopy, "isUnified")}];
    contactStore = [(CNContactContentEditViewController *)self contactStore];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __85__CNContactContentEditViewController__updateContact_withMissingKeysFromRequiredKeys___block_invoke;
    v23[3] = &unk_1E74E6F60;
    v23[4] = &v24;
    [contactStore enumerateContactsWithFetchRequest:v15 error:0 usingBlock:v23];

    v21 = [contactCopy mutableCopy];
    [v21 overwriteStateFromContact:v25[5]];
    freeze = [v21 freeze];

    _Block_object_dispose(&v24, 8);
  }

  return freeze;
}

- (void)focusOnLastEditingItemInGroup:(id)group
{
  lastEditingItem = [group lastEditingItem];
  v4 = [(CNContactContentEditViewController *)self indexPathOfEditingPropertyItem:lastEditingItem];
  objc_opt_class();
  contactView = [(CNContactContentEditViewController *)self contactView];
  v6 = [contactView cellForRowAtIndexPath:v4];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  firstResponderItem = [v8 firstResponderItem];

  [firstResponderItem becomeFirstResponder];
}

- (void)focusOnFirstEditingItemIfNeeded
{
  if ([(CNContactContentEditViewController *)self mode]== 3 && ![(CNContactContentEditViewController *)self didSetFirstResponder])
  {
    [(CNContactContentEditViewController *)self setDidSetFirstResponder:1];
    nameEditingGroups = [(CNContactContentEditViewController *)self nameEditingGroups];
    firstObject = [nameEditingGroups firstObject];

    editingItems = [firstObject editingItems];
    firstObject2 = [editingItems firstObject];

    v6 = [(CNContactContentEditViewController *)self indexPathOfEditingPropertyItem:firstObject2];
    objc_opt_class();
    contactView = [(CNContactContentEditViewController *)self contactView];
    v8 = [contactView cellForRowAtIndexPath:v6];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    firstResponderItem = [v10 firstResponderItem];

    [firstResponderItem becomeFirstResponder];
  }
}

- (void)removeEditingItem:(id)item atIndexPath:(id)path forTableView:(id)view
{
  itemCopy = item;
  pathCopy = path;
  viewCopy = view;
  v11 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
  canAddEditingItem = [v11 canAddEditingItem];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__CNContactContentEditViewController_removeEditingItem_atIndexPath_forTableView___block_invoke;
  v16[3] = &unk_1E74E6F38;
  v16[4] = v11;
  v17 = itemCopy;
  selfCopy = self;
  v19 = viewCopy;
  v20 = pathCopy;
  v21 = canAddEditingItem;
  v13 = pathCopy;
  v14 = viewCopy;
  v15 = itemCopy;
  [(CNContactContentEditViewController *)self updateContactsViewWithBlock:v16 completion:0];
}

void __81__CNContactContentEditViewController_removeEditingItem_atIndexPath_forTableView___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) removeEditingItem:*(a1 + 40)];
  [*(a1 + 48) _updateLabelWidthForCellsInGroup:*(a1 + 32) forTableView:*(a1 + 56) reset:1];
  if (![*(a1 + 32) isMultiValue])
  {
    v9 = [*(a1 + 32) propertyItems];
    v10 = [v9 count];

    v11 = *(a1 + 56);
    if (v10 < 2)
    {
      v12 = *(a1 + 64);
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
      [v11 reloadRowsAtIndexPaths:v6 withRowAnimation:100];
    }

    else
    {
      v13 = *(a1 + 64);
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      [v11 deleteRowsAtIndexPaths:v6 withRowAnimation:2];
    }

    goto LABEL_8;
  }

  v2 = [*(a1 + 48) contactView];
  v15[0] = *(a1 + 64);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v2 deleteRowsAtIndexPaths:v3 withRowAnimation:2];

  if ((*(a1 + 72) & 1) == 0 && [*(a1 + 32) canAddEditingItem])
  {
    v4 = MEMORY[0x1E696AC88];
    v5 = [*(a1 + 32) editingItems];
    v6 = [v4 indexPathForRow:objc_msgSend(v5 inSection:{"count") - 1, objc_msgSend(*(a1 + 64), "section")}];

    v7 = *(a1 + 56);
    v14 = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [v7 insertRowsAtIndexPaths:v8 withRowAnimation:100];

LABEL_8:
  }
}

- (void)addEditingItemAtIndexPath:(id)path forTableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
  if ([v8 addEditingItem])
  {
    [(CNContactContentEditViewController *)self _updateLabelWidthForCellsInGroup:v8 forTableView:viewCopy reset:0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__CNContactContentEditViewController_addEditingItemAtIndexPath_forTableView___block_invoke;
    v10[3] = &unk_1E74E6EE8;
    v10[4] = v8;
    v10[5] = self;
    v11 = pathCopy;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__CNContactContentEditViewController_addEditingItemAtIndexPath_forTableView___block_invoke_2;
    v9[3] = &unk_1E74E6EC0;
    v9[4] = self;
    v9[5] = v8;
    [(CNContactContentEditViewController *)self updateContactsViewWithBlock:v10 completion:v9];
  }
}

void __77__CNContactContentEditViewController_addEditingItemAtIndexPath_forTableView___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) isMultiValue])
  {
    v3 = [*(a1 + 40) contactView];
    v7 = *(a1 + 48);
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v7;
LABEL_6:
    v4 = [v5 arrayWithObjects:v6 count:{1, v7, v8}];
    [v3 reloadRowsAtIndexPaths:v4 withRowAnimation:100];
    goto LABEL_7;
  }

  v2 = [*(a1 + 32) canAddEditingItem];
  v3 = [*(a1 + 40) contactView];
  if (!v2)
  {
    v8 = *(a1 + 48);
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v8;
    goto LABEL_6;
  }

  v9[0] = *(a1 + 48);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v3 insertRowsAtIndexPaths:v4 withRowAnimation:6];
LABEL_7:
}

uint64_t __77__CNContactContentEditViewController_addEditingItemAtIndexPath_forTableView___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) focusOnLastEditingItemInGroup:*(result + 40)];
  }

  return result;
}

- (void)_updateLabelWidthsForAllVisibleCells
{
  v18 = *MEMORY[0x1E69E9840];
  contactView = [(CNContactContentEditViewController *)self contactView];
  [contactView contentOffset];
  v5 = v4;
  v7 = v6;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  visibleCells = [contactView visibleCells];
  v9 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(visibleCells);
        }

        [(CNContactContentEditViewController *)self _updateLabelWidthForCell:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [contactView setContentOffset:{v5, v7}];
}

- (void)_updateLabelWidthForCellsInGroup:(id)group forTableView:(id)view reset:(BOOL)reset
{
  resetCopy = reset;
  groupCopy = group;
  viewCopy = view;
  if (resetCopy)
  {
    v9 = [(CNContactContentEditViewController *)self _labelWidthKeyForGroup:groupCopy];
    cachedLabelWidths = [(CNContactContentEditViewController *)self cachedLabelWidths];
    [cachedLabelWidths removeObjectForKey:v9];
  }

  [(CNContactContentEditViewController *)self _updateCachedLabelWidthsForGroup:groupCopy];
  v11 = [(CNContactContentEditViewController *)self sectionOfGroup:groupCopy inTableView:viewCopy];
  editingItems = [groupCopy editingItems];
  if ([editingItems count])
  {
    v13 = 0;
    do
    {
      v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:v11];
      v15 = [viewCopy cellForRowAtIndexPath:v14];
      [(CNContactContentEditViewController *)self _updateLabelWidthForCell:v15];

      ++v13;
    }

    while (v13 < [editingItems count]);
  }
}

- (void)_updateLabelWidthForCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = cellCopy;
  if (isKindOfClass)
  {
    v6 = cellCopy;
    ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    propertyItem = [v6 propertyItem];
    v9 = propertyItem;
    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      v10 = [(CNContactContentEditViewController *)self _labelWidthKeyForItem:propertyItem];
    }

    else
    {
      group = [propertyItem group];
      v10 = [(CNContactContentEditViewController *)self _labelWidthKeyForGroup:group];
    }

    cachedLabelWidths = [(CNContactContentEditViewController *)self cachedLabelWidths];
    v13 = [cachedLabelWidths objectForKey:v10];
    [v13 floatValue];
    [v6 setLabelWidth:v14];

    v5 = cellCopy;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v5);
}

- (void)_updateCachedLabelWidthsIfNeeded
{
  cachedLabelWidths = [(CNContactContentEditViewController *)self cachedLabelWidths];

  if (!cachedLabelWidths)
  {

    [(CNContactContentEditViewController *)self _updateCachedLabelWidths];
  }
}

- (void)_setNeedsUpdateCachedLabelWidths
{
  [(CNContactContentEditViewController *)self setCachedLabelWidths:0];
  if ([(CNContactContentEditViewController *)self isViewLoaded])
  {
    view = [(CNContactContentEditViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_updateCachedLabelWidths
{
  weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  [(CNContactContentEditViewController *)self setCachedLabelWidths:weakToStrongObjectsMapTable];

  editingGroups = [(CNContactContentEditViewController *)self editingGroups];
  v5 = [editingGroups count];

  if (v5)
  {
    v6 = 0;
    do
    {
      editingGroups2 = [(CNContactContentEditViewController *)self editingGroups];
      v8 = [editingGroups2 objectAtIndexedSubscript:v6];

      [(CNContactContentEditViewController *)self _updateCachedLabelWidthsForGroup:v8];
      ++v6;
      editingGroups3 = [(CNContactContentEditViewController *)self editingGroups];
      v10 = [editingGroups3 count];
    }

    while (v6 < v10);
  }

  [(CNContactContentEditViewController *)self _updateLabelWidthsForAllVisibleCells];
}

- (void)_updateCachedLabelWidthsForGroup:(id)group
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  editingItems = [group editingItems];
  v5 = [editingItems countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(editingItems);
        }

        [(CNContactContentEditViewController *)self _updateCachedLabelWidthsForItem:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [editingItems countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateCachedLabelWidthsForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v37 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v37;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && [v6 supportsLabel])
  {
    ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    contactView = [(CNContactContentEditViewController *)self contactView];
    labelTextAttributes = [contactView labelTextAttributes];
    v10 = [labelTextAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB648]];

    if (v10)
    {
      [v10 _scaledValueForValue:44.0];
      v12 = v11;
    }

    else
    {
      v12 = 44.0;
    }

    contactView2 = [(CNContactContentEditViewController *)self contactView];
    [contactView2 frame];
    Width = CGRectGetWidth(v39);
    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      contactView3 = [(CNContactContentEditViewController *)self contactView];
      [contactView3 _marginWidth];
      v17 = Width - v16;
    }

    else
    {
      v17 = Width / 3.0;
    }

    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      v17 = v17 + -53.0;
    }

    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    displayLabel = [v6 displayLabel];
    contactView4 = [(CNContactContentEditViewController *)self contactView];
    labelTextAttributes2 = [contactView4 labelTextAttributes];
    v22 = [v18 initWithString:displayLabel attributes:labelTextAttributes2];

    [v22 boundingRectWithSize:3 options:0 context:{v17, 10000.0}];
    v23 = CGRectGetWidth(v40);
    if (v12 < v23)
    {
      v24 = 1;
    }

    else
    {
      v24 = ab_preferredContentSizeCategoryIsAccessibilityCategory;
    }

    if (!v24)
    {
      v23 = v12;
    }

    if (v23 >= v17)
    {
      v23 = v17;
    }

    v25 = ceil(v23);
    group = [v6 group];
    v27 = [(CNContactContentEditViewController *)self _labelWidthKeyForGroup:group];
    v28 = [(CNContactContentEditViewController *)self _labelWidthKeyForItem:v6];
    cachedLabelWidths = [(CNContactContentEditViewController *)self cachedLabelWidths];
    v30 = [cachedLabelWidths objectForKey:v27];
    [v30 floatValue];
    v32 = v31;

    if (v25 > 0.0)
    {
      cachedLabelWidths2 = [(CNContactContentEditViewController *)self cachedLabelWidths];
      v34 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      [cachedLabelWidths2 setObject:v34 forKey:v28];

      if (v25 > v32)
      {
        cachedLabelWidths3 = [(CNContactContentEditViewController *)self cachedLabelWidths];
        v36 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
        [cachedLabelWidths3 setObject:v36 forKey:v27];
      }
    }
  }
}

- (id)_labelWidthKeyForGroup:(id)group
{
  groupCopy = group;
  objc_opt_class();
  v4 = groupCopy;
  if (objc_opt_isKindOfClass())
  {
    property = [(__CFString *)groupCopy property];
    if ([property isEqualToString:*MEMORY[0x1E695C3F8]])
    {
    }

    else
    {
      property2 = [(__CFString *)groupCopy property];
      v7 = [property2 isEqualToString:*MEMORY[0x1E695C1E0]];

      v4 = groupCopy;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v4 = @"alerts";
  }

LABEL_6:

  return v4;
}

- (void)geminiDataSourceDidUpdate:(id)update
{
  v25[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  geminiResult = [updateCopy geminiResult];
  cardEditingGeminiGroup = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
  editingItems = [cardEditingGeminiGroup editingItems];
  firstObject = [editingItems firstObject];

  [firstObject geminiDataSourceDidUpdate:updateCopy];
  v9 = [(CNContactContentEditViewController *)self indexPathOfEditingPropertyItem:firstObject];
  shouldShowGemini = [(CNContactContentEditViewController *)self shouldShowGemini];
  cardEditingGeminiGroup2 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
  [cardEditingGeminiGroup2 setGeminiResult:geminiResult];

  cardEditingGeminiGroup3 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
  [cardEditingGeminiGroup3 setShouldShowGemini:shouldShowGemini];

  cardEditingGeminiGroup4 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];

  if (cardEditingGeminiGroup4)
  {
    if (v9)
    {
      if (shouldShowGemini)
      {
        contactView = [(CNContactContentEditViewController *)self contactView];
        v25[0] = v9;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
        [contactView reloadRowsAtIndexPaths:v15 withRowAnimation:100];
      }

      else
      {
        cardEditingGeminiGroup5 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
        contactView2 = [(CNContactContentEditViewController *)self contactView];
        v23 = [(CNContactContentEditViewController *)self sectionOfGroup:cardEditingGeminiGroup5 inTableView:contactView2];

        editingGroups = [(CNContactContentEditViewController *)self editingGroups];
        [editingGroups removeObjectAtIndex:v23];

        contactView = [(CNContactContentEditViewController *)self contactView];
        v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v9, "indexAtPosition:", 0)}];
        [contactView deleteSections:v15 withRowAnimation:3];
      }

      goto LABEL_9;
    }

    if (shouldShowGemini)
    {
      editingGroups2 = [(CNContactContentEditViewController *)self editingGroups];
      cardEditingGeminiGroup6 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
      [editingGroups2 insertObject:cardEditingGeminiGroup6 atIndex:0];

      cardEditingGeminiGroup7 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
      contactView3 = [(CNContactContentEditViewController *)self contactView];
      v20 = [(CNContactContentEditViewController *)self sectionOfGroup:cardEditingGeminiGroup7 inTableView:contactView3];

      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        contactView = [(CNContactContentEditViewController *)self contactView];
        v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:v20];
        [contactView insertSections:v15 withRowAnimation:3];
LABEL_9:
      }
    }
  }
}

- (void)setMenuProviderForCell:(id)cell forActionGroupItem:(id)item
{
  cellCopy = cell;
  actions = [item actions];
  firstObject = [actions firstObject];

  objc_opt_class();
  v7 = firstObject;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    menuProvider = [v9 menuProvider];

    [cellCopy setMenuProvider:menuProvider];
  }

  else
  {
    target = [v7 target];
    if ([target conformsToProtocol:&unk_1F0D822B0])
    {
      v12 = target;
    }

    else
    {
      v12 = 0;
    }

    menuProvider = v12;

    if (menuProvider)
    {
      contextMenuInteraction = [cellCopy contextMenuInteraction];
      v14 = [menuProvider menuProviderForContextMenuInteraction:contextMenuInteraction];
      [cellCopy setMenuProvider:v14];
    }
  }
}

- (id)_cellForIndexPath:(id)path forTableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v9 = [(CNContactContentEditViewController *)self _itemAtIndexPath:pathCopy forTableView:viewCopy];
  v10 = [(CNContactContentEditViewController *)self _cellIdentifierForTableView:viewCopy indexPath:pathCopy];

  noteCell = [(CNContactContentEditViewController *)self noteCell];
  if (noteCell && (v12 = noteCell, -[CNContactContentEditViewController contactView](self, "contactView"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_class(), [v14 cellIdentifierForClass:objc_opt_class()], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v10, "isEqualToString:", v15), v15, v13, v12, v16))
  {
    noteCell2 = [(CNContactContentEditViewController *)self noteCell];
    [(CNContactContentEditViewController *)self setNoteCell:0];
  }

  else
  {
    contactView = [(CNContactContentEditViewController *)self contactView];
    noteCell2 = [contactView dequeueReusableCellWithIdentifier:v10];
  }

  if (!noteCell2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactContentEditViewController.m" lineNumber:3081 description:{@"We couldn’t create a cell with identifier: %@ indexPath: %@", v10, pathCopy}];
  }

  if ([(CNContactContentEditViewController *)self mode]== 5)
  {
    objc_opt_class();
    v19 = v9;
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v21)
    {
      highlightedProperties = [(CNContactContentEditViewController *)self highlightedProperties];
      if ([highlightedProperties count])
      {
        highlightedProperties2 = [(CNContactContentEditViewController *)self highlightedProperties];
        contactProperty = [v21 contactProperty];
        v25 = [highlightedProperties2 containsObject:contactProperty];

        if (v25 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [noteCell2 setForceSuggested:1];
        }
      }

      else
      {
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [noteCell2 setDelegate:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [noteCell2 setShouldShowTransportButtons:{objc_msgSend(objc_opt_class(), "enablesTransportButtons")}];
  }

  [noteCell2 setCardGroupItem:v9];
  if (objc_opt_respondsToSelector())
  {
    presentingDelegate = [(CNContactContentEditViewController *)self presentingDelegate];
    [noteCell2 setPresentingDelegate:presentingDelegate];
  }

  if (objc_opt_respondsToSelector())
  {
    contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
    [noteCell2 setAllowsActions:{objc_msgSend(contactViewConfiguration, "allowsActions")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v28 = noteCell2;
    emergencyNumberIdentifier = [(CNContactContentEditViewController *)self emergencyNumberIdentifier];
    propertyItem = [v28 propertyItem];
    contactProperty2 = [propertyItem contactProperty];
    identifier = [contactProperty2 identifier];
    [v28 setEmergencyPhoneNumber:{objc_msgSend(emergencyNumberIdentifier, "isEqualToString:", identifier)}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v33 = v9;
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;

    objc_opt_class();
    v36 = noteCell2;
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    [(CNContactContentEditViewController *)self setMenuProviderForCell:v38 forActionGroupItem:v35];
  }

  return noteCell2;
}

- (id)_cellIdentifierForTableView:(id)view indexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = [(CNContactContentEditViewController *)self _itemAtIndexPath:pathCopy forTableView:viewCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [CNContactView cellIdentifierForEditingPropertyItem:v9];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[CNContactView cellIdentifierForPropertyPlaceholder];
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = +[CNContactView cellIdentifierForLinkedCardsEditingGroup];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = +[CNContactView cellIdentifierForLinkedCardsPlaceholderGroup];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = +[CNContactView cellIdentifierForStaticIdentityPlaceholderGroup];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = +[CNContactView cellIdentifierForStaticIdentityEditingGroup];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
LABEL_28:
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactContentEditViewController.m" lineNumber:3061 description:{@"Unknown group item: %@", v9}];

              v11 = 0;
              goto LABEL_6;
            }

            v10 = +[CNContactView cellIdentifierForContactContainerEditingGroup];
          }
        }
      }
    }

LABEL_5:
    v11 = v10;
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  v13 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
  if ([v13 useSplitActions])
  {
    v14 = +[CNContactView cellIdentifierForSplitActions];
  }

  else
  {
    if ([v13 displaysDropdownMenu])
    {
      +[CNContactView cellIdentifierForDropdownMenuActions];
    }

    else
    {
      +[CNContactView cellIdentifierForActions];
    }
    v14 = ;
  }

  v11 = v14;

  if (!v11)
  {
    goto LABEL_28;
  }

LABEL_6:

  return v11;
}

- (void)_scrollContactView:(id)view toVisibleGroup:(id)group
{
  viewCopy = view;
  groupCopy = group;
  [viewCopy _effectiveContentInset];
  [viewCopy setContentOffset:{0.0, -v7}];
  if (groupCopy)
  {
    v8 = [(CNContactContentEditViewController *)self sectionOfGroup:groupCopy inTableView:viewCopy];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      displayItems = [groupCopy displayItems];
      v11 = ([displayItems count] >> 1);

      v12 = [MEMORY[0x1E696AC88] indexPathForRow:v11 inSection:v9];
      numberOfSections = [viewCopy numberOfSections];
      if (numberOfSections > [v12 section])
      {
        v14 = [viewCopy numberOfRowsInSection:{objc_msgSend(v12, "section")}];
        if (v14 > [v12 row])
        {
LABEL_7:
          if (!v12)
          {
            goto LABEL_10;
          }

          [viewCopy scrollToRowAtIndexPath:v12 atScrollPosition:2 animated:0];
          goto LABEL_9;
        }

        if ([viewCopy numberOfRowsInSection:{objc_msgSend(v12, "section")}] >= 1)
        {
          v15 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v9];

          v12 = v15;
          goto LABEL_7;
        }
      }

LABEL_9:
    }
  }

LABEL_10:
}

- (id)_currentTopVisibleGroupInContactView:(id)view
{
  v28 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy contentOffset];
  v6 = v5;
  tableHeaderView = [viewCopy tableHeaderView];
  [tableHeaderView bounds];
  v9 = v8;
  [viewCopy estimatedRowHeight];
  v11 = v9 - v10;

  if (v6 <= v11)
  {
LABEL_14:
    v18 = 0;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    visibleCells = [viewCopy visibleCells];
    v13 = [visibleCells countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(visibleCells);
        }

        v17 = *(*(&v23 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [visibleCells countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v19 = v17;

      if (!v19)
      {
        goto LABEL_14;
      }

      propertyItem = [v19 propertyItem];
      property = [propertyItem property];
      v18 = [(CNContactContentEditViewController *)self cardGroupForProperty:property];

      visibleCells = v19;
    }

    else
    {
LABEL_10:
      v18 = 0;
    }
  }

  return v18;
}

- (BOOL)reloadDataIfNeeded
{
  if (!self->_needsReload || self->_animating)
  {
    return 0;
  }

  [(CNContactContentEditViewController *)self reloadDataPreservingChanges:0, v2, v3];
  return 1;
}

- (BOOL)isSuggestedContact
{
  contact = [(CNContactContentEditViewController *)self contact];
  isSuggested = [contact isSuggested];

  return isSuggested;
}

- (void)contactViewController:(id)controller didDeleteContact:(id)contact
{
  contactCopy = contact;
  contact = [(CNContactContentEditViewController *)self contact];
  mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
  v7 = [mainStoreLinkedContacts containsObject:contactCopy];

  if (v7)
  {
    [(CNContactContentEditViewController *)self removeLinkedContact:contactCopy];
    saveLinkedContactsExecutor = [(CNContactContentEditViewController *)self saveLinkedContactsExecutor];
    saveDescriptionForCurrentState = [(CNContactContentEditViewController *)self saveDescriptionForCurrentState];
    v11 = [saveLinkedContactsExecutor executeSaveWithConfiguration:saveDescriptionForCurrentState saveDelegate:self];

    [(CNContactContentEditViewController *)self setEditingLinkedContacts:0];
    issuedSaveRequestIdentifiers = [(CNContactContentEditViewController *)self issuedSaveRequestIdentifiers];
    identifiersOfIssuedSaveRequests = [v11 identifiersOfIssuedSaveRequests];
    [issuedSaveRequestIdentifiers addObjectsFromArray:identifiersOfIssuedSaveRequests];

    contact2 = [v11 contact];

    if (contact2)
    {
      contact3 = [v11 contact];
      [(CNContactContentEditViewController *)self setContact:contact3];
    }
  }

  MEMORY[0x1EEE66BE0](v8);
}

- (double)navigationBarHeight
{
  navigationItemController = [(CNContactContentEditViewController *)self navigationItemController];
  navigationController = [navigationItemController navigationController];

  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v6 = v5;

  return v6;
}

- (UIEdgeInsets)headerViewSafeAreaInsets
{
  view = [(CNContactContentEditViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [(CNContactContentEditViewController *)self navigationBarHeight];
  v11 = v5 - v10;
  v12 = 0.0;
  v13 = v7;
  v14 = v9;
  result.right = v14;
  result.bottom = v12;
  result.left = v13;
  result.top = v11;
  return result;
}

- (void)headerViewDidChangeHeight:(id)height
{
  heightCopy = height;
  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];

  if (contactHeaderView == heightCopy)
  {
    [(CNContactContentEditViewController *)self viewDidLayoutSubviews];
    [(CNContactContentEditViewController *)self reloadDataPreservingChanges:1];

    [(CNContactContentEditViewController *)self setupConstraints];
  }
}

- (BOOL)isNicknameProhibited
{
  prohibitedPropertyKeys = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
  v3 = [prohibitedPropertyKeys containsObject:*MEMORY[0x1E695C310]];

  return v3;
}

- (void)headerPhotoDidUpdate
{
  [(CNContactContentEditViewController *)self updateDoneButton];
  contactHeaderView = self->_contactHeaderView;

  [(CNContactHeaderEditView *)contactHeaderView updateEditButtonTitle];
}

- (void)contactGroupPickerDidFinish:(id)finish withGroup:(id)group
{
  groupCopy = group;
  finishCopy = finish;
  presentingDelegate = [(CNContactContentEditViewController *)self presentingDelegate];
  [presentingDelegate sender:self dismissViewController:finishCopy];

  [(CNContactContentEditViewController *)self _addedGroupWithName:groupCopy];
}

- (void)contactGroupPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentingDelegate = [(CNContactContentEditViewController *)self presentingDelegate];
  [presentingDelegate sender:self dismissViewController:cancelCopy];
}

- (id)alreadyPickedGroups
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  editingGroups = [(CNContactContentEditViewController *)self editingGroups];
  v5 = [editingGroups countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(editingGroups);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        property = [v9 property];
        [array addObject:property];
      }

      v6 = [editingGroups countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)_phoneticNameForValue:(id)value currentPhoneticName:(id)name property:(id)property
{
  nameCopy = name;
  valueCopy = value;
  v9 = [valueCopy cnui_stringByTransliteratingToPhoneticCharactersForProperty:property];
  _cn_trimmedString = [v9 _cn_trimmedString];
  _cn_trimmedString2 = [valueCopy _cn_trimmedString];

  v12 = [_cn_trimmedString isEqualToString:_cn_trimmedString2];
  v13 = [nameCopy length];

  if (v13)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

    v14 = &stru_1F0CE7398;
  }

  else
  {
    if (!(([v9 length] == 0) | v12 & 1))
    {
      goto LABEL_7;
    }

    v14 = 0;
  }

  v9 = v14;
LABEL_7:

  return v9;
}

- (void)propertyItem:(id)item willChangeValue:(id)value
{
  v58 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  valueCopy = value;
  contactProperty = [itemCopy contactProperty];
  phoneticProperty = [contactProperty phoneticProperty];

  if (phoneticProperty)
  {
    nameEditingGroups = [(CNContactContentEditViewController *)self nameEditingGroups];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __67__CNContactContentEditViewController_propertyItem_willChangeValue___block_invoke;
    v54[3] = &unk_1E74E6E48;
    v11 = phoneticProperty;
    v55 = v11;
    v12 = [nameEditingGroups _cn_firstObjectPassingTest:v54];

    editingItems = [v12 editingItems];
    firstObject = [editingItems firstObject];
    labeledValue = [firstObject labeledValue];
    value = [labeledValue value];

    v17 = [(CNContactContentEditViewController *)self _phoneticNameForValue:valueCopy currentPhoneticName:value property:v11];
    v44 = value;
    if (![valueCopy length])
    {
      labeledValue2 = [itemCopy labeledValue];
      value2 = [labeledValue2 value];
      v20 = v11;
      v21 = value2;
      v22 = value;
      v23 = v20;
      v24 = [(CNContactContentEditViewController *)self _phoneticNameForValue:value2 currentPhoneticName:v22 property:?];

      if (v24)
      {

        v17 = &stru_1F0CE7398;
      }

      v11 = v23;
      value = v44;
    }

    if (v17)
    {
      v42 = valueCopy;
      v43 = itemCopy;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      editingItems2 = [v12 editingItems];
      v26 = [editingItems2 countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v51;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v51 != v28)
            {
              objc_enumerationMutation(editingItems2);
            }

            [*(*(&v50 + 1) + 8 * i) updateLabeledValueWithValue:v17];
          }

          v27 = [editingItems2 countByEnumeratingWithState:&v50 objects:v57 count:16];
        }

        while (v27);
      }

      v45 = v11;
      v41 = v12;

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      contactView = [(CNContactContentEditViewController *)self contactView];
      visibleCells = [contactView visibleCells];

      v32 = [visibleCells countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v47;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v47 != v34)
            {
              objc_enumerationMutation(visibleCells);
            }

            v36 = *(*(&v46 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              propertyItem = [v36 propertyItem];
              property = [propertyItem property];
              v39 = [property isEqualToString:v45];

              if (v39)
              {
                textField = [v36 textField];
                [textField setText:v17];
              }
            }
          }

          v33 = [visibleCells countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v33);
      }

      valueCopy = v42;
      itemCopy = v43;
      v12 = v41;
      value = v44;
    }
  }
}

uint64_t __67__CNContactContentEditViewController_propertyItem_willChangeValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 property];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)propertyCellDidChangeLayout:(id)layout
{
  layoutCopy = layout;
  contactView = [(CNContactContentEditViewController *)self contactView];
  v5 = [contactView indexPathForCell:layoutCopy];
  if (v5)
  {
    [layoutCopy setValue:MEMORY[0x1E695E118] forKey:@"needsHeightCalculation"];
    [contactView _heightForRowAtIndexPath:v5];
    [contactView _setHeight:v5 forRowAtIndexPath:?];
  }
}

- (void)propertyCell:(id)cell didDeleteLabel:(id)label forGroup:(id)group
{
  v33 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  [groupCopy itemsUsingLabel:label];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v19 = *v28;
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * v6);
        nextAvailableLabel = [groupCopy nextAvailableLabel];
        [v7 updateLabeledValueWithLabel:nextAvailableLabel];
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        contactView = [(CNContactContentEditViewController *)self contactView];
        visibleCells = [contactView visibleCells];

        v11 = [visibleCells countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          do
          {
            v14 = 0;
            do
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(visibleCells);
              }

              v15 = *(*(&v23 + 1) + 8 * v14);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                propertyItem = [v15 propertyItem];

                if (propertyItem == v7)
                {
                  [v15 updateWithPropertyItem:v7];
                }
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [visibleCells countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }

        ++v6;
      }

      while (v6 != v22);
      v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  contactView2 = [(CNContactContentEditViewController *)self contactView];
  [(CNContactContentEditViewController *)self _updateLabelWidthForCellsInGroup:groupCopy forTableView:contactView2 reset:1];

  [(CNContactContentEditViewController *)self updateDoneButton];
}

- (void)propertyCell:(id)cell performActionForItem:(id)item withTransportType:(int64_t)type
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      addLinkedCardAction = [(CNContactContentEditViewController *)self addLinkedCardAction];
LABEL_6:
      v11 = addLinkedCardAction;
      [addLinkedCardAction performActionWithSender:cellCopy];
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      staticIdentityAction = [(CNContactContentEditViewController *)self staticIdentityAction];
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      addLinkedCardAction = [(CNContactContentEditViewController *)self addStaticIdentityAction];
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selectContainersAction = [(CNContactContentEditViewController *)self selectContainersAction];
      containerContext = [(CNContactContentEditViewController *)self containerContext];
      [(CNPropertySuggestionAction *)selectContainersAction performActionWithContainerContext:containerContext];
    }

    else
    {
      if ([cellCopy isSuggested])
      {
        v15 = [CNPropertySuggestionAction alloc];
        contact = [(CNContactContentEditViewController *)self contact];
        selectContainersAction = [(CNPropertyAction *)v15 initWithContact:contact propertyItem:itemCopy];

        [(CNContactAction *)selectContainersAction setDelegate:self];
      }

      else
      {
        if (type == 7)
        {
          selectContainersAction = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
          v17 = MEMORY[0x1E69DC648];
          v18 = CNContactsUIBundle();
          v19 = [v18 localizedStringForKey:@"PHONE_ACTION_TTY_CALL" value:&stru_1F0CE7398 table:@"Localized"];
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __90__CNContactContentEditViewController_propertyCell_performActionForItem_withTransportType___block_invoke;
          v41[3] = &unk_1E74E6E20;
          v41[4] = self;
          v20 = itemCopy;
          v42 = v20;
          v21 = cellCopy;
          v43 = v21;
          v22 = [v17 actionWithTitle:v19 style:0 handler:v41];
          [(CNPropertySuggestionAction *)selectContainersAction addAction:v22];

          v23 = MEMORY[0x1E69DC648];
          v24 = CNContactsUIBundle();
          v25 = [v24 localizedStringForKey:@"PHONE_ACTION_TTY_RELAY_CALL" value:&stru_1F0CE7398 table:@"Localized"];
          v34 = MEMORY[0x1E69E9820];
          v35 = 3221225472;
          v36 = __90__CNContactContentEditViewController_propertyCell_performActionForItem_withTransportType___block_invoke_2;
          v37 = &unk_1E74E6E20;
          selfCopy = self;
          v39 = v20;
          v26 = v21;
          v40 = v26;
          v27 = [v23 actionWithTitle:v25 style:0 handler:&v34];
          [(CNPropertySuggestionAction *)selectContainersAction addAction:v27, v34, v35, v36, v37, selfCopy];

          v28 = MEMORY[0x1E69DC648];
          v29 = CNContactsUIBundle();
          v30 = [v29 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
          v31 = [v28 actionWithTitle:v30 style:1 handler:0];
          [(CNPropertySuggestionAction *)selectContainersAction addAction:v31];

          [(CNContactContentEditViewController *)self sender:v26 presentViewController:selectContainersAction];
          goto LABEL_20;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [CNPropertyAction performDefaultActionForItem:itemCopy sender:cellCopy];
          goto LABEL_8;
        }

        v32 = [CNPropertyPostalAddressAction alloc];
        contact2 = [(CNContactContentEditViewController *)self contact];
        selectContainersAction = [(CNPropertyAction *)v32 initWithContact:contact2 propertyItem:itemCopy];
      }

      [(CNPropertySuggestionAction *)selectContainersAction performActionForItem:itemCopy sender:cellCopy];
    }

LABEL_20:

    goto LABEL_8;
  }

  staticIdentityAction = [(CNContactContentEditViewController *)self linkedCardsAction];
LABEL_3:
  v11 = staticIdentityAction;
  [staticIdentityAction performActionForItem:itemCopy sender:cellCopy];
LABEL_7:

LABEL_8:
}

void __90__CNContactContentEditViewController_propertyCell_performActionForItem_withTransportType___block_invoke(uint64_t a1)
{
  v2 = [CNPropertyTTYAction alloc];
  v3 = [*(a1 + 32) contact];
  v4 = [(CNPropertyAction *)v2 initWithContact:v3 propertyItem:*(a1 + 40)];

  [(CNContactAction *)v4 setDelegate:*(a1 + 32)];
  [(CNPropertyTTYAction *)v4 performActionForItem:*(a1 + 40) sender:*(a1 + 48)];
}

void __90__CNContactContentEditViewController_propertyCell_performActionForItem_withTransportType___block_invoke_2(uint64_t a1)
{
  v2 = [CNPropertyTTYRelayAction alloc];
  v3 = [*(a1 + 32) contact];
  v4 = [(CNPropertyAction *)v2 initWithContact:v3 propertyItem:*(a1 + 40)];

  [(CNContactAction *)v4 setDelegate:*(a1 + 32)];
  [(CNPropertyTTYRelayAction *)v4 performActionForItem:*(a1 + 40) sender:*(a1 + 48)];
}

- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewValue:(id)value
{
  cellCopy = cell;
  itemCopy = item;
  [itemCopy updateLabeledValueWithValue:value];
  if (objc_opt_respondsToSelector())
  {
    [cellCopy updateWithPropertyItem:itemCopy];
  }

  group = [itemCopy group];
  contactView = [(CNContactContentEditViewController *)self contactView];
  [(CNContactContentEditViewController *)self _updateLabelWidthForCellsInGroup:group forTableView:contactView reset:1];

  property = [itemCopy property];
  v12 = *MEMORY[0x1E695C1E0];
  if ([property isEqualToString:*MEMORY[0x1E695C1E0]])
  {

    v13 = *MEMORY[0x1E695C3F8];
  }

  else
  {
    property2 = [itemCopy property];
    v13 = *MEMORY[0x1E695C3F8];
    v15 = [property2 isEqualToString:*MEMORY[0x1E695C3F8]];

    if (!v15)
    {
      goto LABEL_7;
    }
  }

  propertyGroups = [(CNContactContentEditViewController *)self propertyGroups];
  v17 = [propertyGroups objectForKeyedSubscript:v12];
  [(CNContactContentEditViewController *)self _validateGroup:v17];

  propertyGroups2 = [(CNContactContentEditViewController *)self propertyGroups];
  v19 = [propertyGroups2 objectForKeyedSubscript:v13];
  [(CNContactContentEditViewController *)self _validateGroup:v19];

LABEL_7:
  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView updateContactWithEditedPropertyItem:itemCopy];

  [(CNContactContentEditViewController *)self updateDoneButton];
}

- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewLabel:(id)label
{
  itemCopy = item;
  cellCopy = cell;
  [itemCopy updateLabeledValueWithLabel:label];
  [cellCopy updateWithPropertyItem:itemCopy];

  group = [itemCopy group];

  contactView = [(CNContactContentEditViewController *)self contactView];
  [(CNContactContentEditViewController *)self _updateLabelWidthForCellsInGroup:group forTableView:contactView reset:1];

  [(CNContactContentEditViewController *)self updateDoneButton];
}

- (void)actionWasCanceled:(id)canceled
{
  contactView = [(CNContactContentEditViewController *)self contactView];
  contactView2 = [(CNContactContentEditViewController *)self contactView];
  indexPathForSelectedRow = [contactView2 indexPathForSelectedRow];
  [contactView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (void)actionDidFinish:(id)finish
{
  finishCopy = finish;
  contactView = [(CNContactContentEditViewController *)self contactView];
  contactView2 = [(CNContactContentEditViewController *)self contactView];
  indexPathForSelectedRow = [contactView2 indexPathForSelectedRow];
  [contactView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

  deleteContactAction = [(CNContactContentEditViewController *)self deleteContactAction];
  v9 = deleteContactAction;
  if (deleteContactAction == finishCopy)
  {

    goto LABEL_8;
  }

  ignoreContactAction = [(CNContactContentEditViewController *)self ignoreContactAction];

  if (ignoreContactAction == finishCopy)
  {
LABEL_8:
    delegate = [(CNContactContentEditViewController *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
LABEL_11:
      navigationController = [(CNContactContentEditViewController *)self navigationController];
      v18 = [navigationController popViewControllerAnimated:1];
LABEL_15:

      goto LABEL_16;
    }

    delegate2 = [(CNContactContentEditViewController *)self delegate];
    contact = [(CNContactContentEditViewController *)self contact];
    [delegate2 contactEditViewController:self didDeleteContact:contact];
LABEL_10:

    goto LABEL_11;
  }

  addLinkedCardAction = [(CNContactContentEditViewController *)self addLinkedCardAction];

  if (addLinkedCardAction == finishCopy)
  {
    navigationController = [(CNContactContentEditViewController *)self addLinkedCardAction];
    chosenContact = [navigationController chosenContact];
    [(CNContactContentEditViewController *)self addLinkedContact:chosenContact];
LABEL_14:

    goto LABEL_15;
  }

  addStaticIdentityAction = [(CNContactContentEditViewController *)self addStaticIdentityAction];

  if (addStaticIdentityAction == finishCopy)
  {
    navigationController = [(CNContactContentEditViewController *)self addStaticIdentityAction];
    chosenContact = [navigationController chosenIdentity];
    [(CNContactContentEditViewController *)self addStaticIdentity:chosenContact];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CNContactContentEditViewController *)self reloadUnifiedContact];
    goto LABEL_16;
  }

  suggestedContactAction = [(CNContactContentEditViewController *)self suggestedContactAction];

  if (suggestedContactAction == finishCopy)
  {
    delegate3 = [(CNContactContentEditViewController *)self delegate];
    v28 = objc_opt_respondsToSelector();

    if ((v28 & 1) == 0)
    {
      goto LABEL_11;
    }

    delegate2 = [(CNContactContentEditViewController *)self delegate];
    contact = [(CNContactContentEditViewController *)self suggestedContactAction];
    v16Contact = [contact contact];
    [delegate2 contactEditViewController:self didDeleteContact:v16Contact];

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationController = finishCopy;
    propertyItem = [navigationController propertyItem];
    chosenContact = [propertyItem group];

    selectedChoice = [navigationController selectedChoice];
    if (selectedChoice == 2)
    {
      [navigationController reject];
      [chosenContact reloadDataPreservingChanges:0];
    }

    else if (selectedChoice == 1)
    {
      propertyItem2 = [navigationController propertyItem];
      v24 = [(CNContactContentEditViewController *)self indexPathOfDisplayedPropertyItem:propertyItem2];

      contactView3 = [(CNContactContentEditViewController *)self contactView];
      [contactView3 selectRowAtIndexPath:v24 animated:0 scrollPosition:0];

      v26 = dispatch_time(0, 500000000);
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __54__CNContactContentEditViewController_actionDidFinish___block_invoke;
      v34 = &unk_1E74E77C0;
      v35 = navigationController;
      v36 = chosenContact;
      dispatch_after(v26, MEMORY[0x1E69E96A0], &v31);
    }

    goto LABEL_14;
  }

  selectContainersAction = [(CNContactContentEditViewController *)self selectContainersAction];

  if (selectContainersAction == finishCopy)
  {
    [(CNContactContentEditViewController *)self reloadDataPreservingChanges:1];
  }

LABEL_16:
  [(CNContactContentEditViewController *)self updateEditNavigationItemsAnimated:1, v31, v32, v33, v34];
}

uint64_t __54__CNContactContentEditViewController_actionDidFinish___block_invoke(uint64_t a1)
{
  [*(a1 + 32) confirm];
  v2 = *(a1 + 40);

  return [v2 reloadDataPreservingChanges:0];
}

- (void)action:(id)action pushViewController:(id)controller sender:(id)sender
{
  controllerCopy = controller;
  [(CNContactContentEditViewController *)self setBackgroundColorIfNeededForPresentedViewController:controllerCopy];
  navigationItem = [(CNContactContentEditViewController *)self navigationItem];
  prompt = [navigationItem prompt];
  navigationItem2 = [controllerCopy navigationItem];
  [navigationItem2 setPrompt:prompt];

  navigationController = [(CNContactContentEditViewController *)self navigationController];
  [navigationController pushViewController:controllerCopy animated:1];
}

- (void)action:(id)action dismissViewController:(id)controller sender:(id)sender
{
  senderCopy = sender;
  controllerCopy = controller;
  presentingDelegate = [(CNContactContentEditViewController *)self presentingDelegate];
  [presentingDelegate sender:senderCopy dismissViewController:controllerCopy];
}

- (void)action:(id)action presentViewController:(id)controller sender:(id)sender
{
  senderCopy = sender;
  controllerCopy = controller;
  presentingDelegate = [(CNContactContentEditViewController *)self presentingDelegate];
  [presentingDelegate sender:senderCopy presentViewController:controllerCopy];
}

- (id)action:(id)action cellForPropertyItem:(id)item sender:(id)sender
{
  itemCopy = item;
  property = [itemCopy property];
  v8 = [CNContactView cellIdentifierForProperty:property];

  v9 = [CNContactView classForCellIdentifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 alloc];
    v12 = NSStringFromClass(v10);
    v10 = [v11 initWithStyle:0 reuseIdentifier:v12];

    [(objc_class *)v10 setIgnoreSuggested:1];
    [(objc_class *)v10 setCardGroupItem:itemCopy];
    [(objc_class *)v10 setDelegate:self];
    if (objc_opt_respondsToSelector())
    {
      contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
      -[objc_class setAllowsActions:](v10, "setAllowsActions:", [contactViewConfiguration allowsActions]);
    }

    [(CNContactContentEditViewController *)self prepareCell:v10];
  }

  return v10;
}

- (void)action:(id)action prepareChildContactViewController:(id)controller sender:(id)sender
{
  v27 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  controllerCopy = controller;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [&unk_1F0D4B940 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(&unk_1F0D4B940);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [(CNContactContentEditViewController *)self valueForKey:v13];
        if (v14)
        {
          [controllerCopy setValue:v14 forKey:v13];
        }
      }

      v10 = [&unk_1F0D4B940 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  [controllerCopy setAllowsSettingLinkedContactsAsPreferred:0];
  [controllerCopy setAllowsAddToFavorites:0];
  [controllerCopy setAllowsAddingToAddressBook:0];
  [controllerCopy setShouldShowLinkedContacts:0];
  parentGroup = [(CNContactContentEditViewController *)self parentGroup];
  [controllerCopy setParentGroup:parentGroup];

  linkedCardsAction = [(CNContactContentEditViewController *)self linkedCardsAction];

  if (linkedCardsAction != actionCopy)
  {
    parentContainer = [(CNContactContentEditViewController *)self parentContainer];
    [controllerCopy setParentContainer:parentContainer];
  }

  prohibitedPropertyKeys = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
  [controllerCopy setProhibitedPropertyKeys:prohibitedPropertyKeys];

  contactView = [controllerCopy contactView];
  contactView2 = [(CNContactContentEditViewController *)self contactView];
  environment = [(CNContactContentEditViewController *)self environment];
  [contactView setAttributesFromContactView:contactView2 runningInContactsAppOniPad:{objc_msgSend(environment, "runningInContactsAppOniPad")}];
}

- (void)viewController:(id)controller presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  controllerCopy = controller;
  presentedViewController = [(CNContactContentEditViewController *)self presentedViewController];

  if (presentedViewController == controllerCopy)
  {
    [(CNContactContentEditViewController *)self presentationControllerWillDismiss:dismissCopy];
  }
}

- (BOOL)isPresentingModalViewController
{
  presentedViewController = [(CNContactContentEditViewController *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  if ([(CNContactContentEditViewController *)self isOutOfProcess])
  {
    delegate = [(CNContactContentEditViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      [(CNContactContentEditViewController *)self setIsPresentingFullscreenForOutOfProcess:0];
      delegate2 = [(CNContactContentEditViewController *)self delegate];
      [delegate2 contactEditViewControllerWillDismissFullscreen:self];
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__CNContactContentEditViewController_sender_dismissViewController_completionHandler___block_invoke;
  v13[3] = &unk_1E74E6DD0;
  v13[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [controllerCopy dismissViewControllerAnimated:1 completion:v13];
}

uint64_t __85__CNContactContentEditViewController_sender_dismissViewController_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[994] == 1)
  {
    [v2 _endDisablingInterfaceAutorotation];
    *(*(a1 + 32) + 994) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)setBackgroundColorIfNeededForPresentedViewController:(id)controller
{
  controllerCopy = controller;
  v4 = +[CNContactStyle currentStyle];
  backgroundColor = [v4 backgroundColor];
  if (backgroundColor)
  {
    v6 = +[CNContactStyle currentStyle];
    backgroundColor2 = [v6 backgroundColor];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v9 = [backgroundColor2 isEqual:clearColor];

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  view = [(CNContactContentEditViewController *)self view];
  superview = [view superview];
  backgroundColor3 = [superview backgroundColor];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  v15 = [backgroundColor3 isEqual:clearColor2];

  if ((v10 & 1) == 0 && (v15 & 1) == 0)
  {
    view2 = [(CNContactContentEditViewController *)self view];
    superview2 = [view2 superview];
    backgroundColor4 = [superview2 backgroundColor];
    view3 = [controllerCopy view];
    [view3 setBackgroundColor:backgroundColor4];
  }
}

- (int64_t)_modalPresentationStyleForViewController:(id)controller
{
  controllerCopy = controller;
  if (NSClassFromString(&cfstr_Qlpreviewcontr.isa) && (objc_opt_isKindOfClass() & 1) != 0)
  {
    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![controllerCopy modalPresentationStyle])
  {
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    modalPresentationStyle = [controllerCopy modalPresentationStyle];
    goto LABEL_30;
  }

  view = [controllerCopy view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    modalPresentationStyle = 7;
    goto LABEL_30;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  viewControllers = getSLComposeViewControllerClass_softClass_22632;
  v28 = getSLComposeViewControllerClass_softClass_22632;
  if (!getSLComposeViewControllerClass_softClass_22632)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __getSLComposeViewControllerClass_block_invoke_22633;
    v24[3] = &unk_1E74E7518;
    v24[4] = &v25;
    __getSLComposeViewControllerClass_block_invoke_22633(v24);
    viewControllers = v26[3];
  }

  v10 = viewControllers;
  _Block_object_dispose(&v25, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    modalPresentationStyle = 5;
    goto LABEL_30;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  if (v11)
  {
    viewControllers = [controllerCopy viewControllers];
    firstObject = [viewControllers firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

LABEL_19:
      if ([(UIViewController *)self ab_isInPopover])
      {
        modalPresentationStyle = 2;
        goto LABEL_30;
      }

      if ([(CNContactContentEditViewController *)self isOutOfProcess]|| CNUIIsDDActionsService())
      {
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
LABEL_29:
          modalPresentationStyle = 0;
          goto LABEL_30;
        }
      }

      v16 = +[CNContactStyle currentStyle];
      if ([v16 shouldPresentInCurrentContext])
      {
        modalPresentationStyle = 3;
      }

      else
      {
        currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
        userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

        if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          modalPresentationStyle = 2;
        }

        else
        {
          modalPresentationStyle = -2;
        }
      }

LABEL_40:

      goto LABEL_30;
    }
  }

  objc_opt_class();
  v12 = objc_opt_isKindOfClass();
  if (v11)
  {
  }

  if (v12)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewControllers2 = [controllerCopy viewControllers];
    firstObject2 = [viewControllers2 firstObject];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    if (v15)
    {
      v16 = +[CNContactStyle currentStyle];
      if ([v16 shouldPresentInCurrentContext])
      {
        modalPresentationStyle = 6;
      }

      else
      {
        modalPresentationStyle = -2;
      }

      goto LABEL_40;
    }
  }

  if ([(UIViewController *)self ab_isInPopover]|| [(UIViewController *)self ab_isInSheet])
  {
LABEL_42:
    modalPresentationStyle = 3;
    goto LABEL_30;
  }

  v20 = +[CNContactStyle currentStyle];
  if ([v20 shouldPresentInCurrentContext])
  {

    goto LABEL_42;
  }

  v23 = CNUIIsDDActionsService();

  if (v23)
  {
    goto LABEL_42;
  }

  if (_CFMZEnabled())
  {
    modalPresentationStyle = 3;
  }

  else
  {
    modalPresentationStyle = 7;
  }

LABEL_30:

  return modalPresentationStyle;
}

- (void)performConfirmedCancel
{
  [(CNContactContentEditViewController *)self cancelAsyncLookups];
  [(CNContactContentEditViewController *)self _didCompleteWithContact:0];
  if ([(CNContactContentEditViewController *)self mode]== 3)
  {
    contact = [(CNContactContentEditViewController *)self contact];
    identifier = [contact identifier];

    if (identifier)
    {
      [(CNContactContentEditViewController *)self cleanupRecentMetadata];
    }
  }

  view = [(CNContactContentEditViewController *)self view];
  [view endEditing:1];

  [(CNContactContentEditViewController *)self setEditingLinkedContacts:0];
  [(CNContactContentEditViewController *)self reloadDataPreservingChanges:0];
  contactView = [(CNContactContentEditViewController *)self contactView];
  [contactView reloadData];

  if ([(CNContactContentEditViewController *)self supportsDrafts])
  {

    +[CNUIDraftSupport deleteDrafts];
  }
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  if ([(CNContactContentEditViewController *)self isOutOfProcess])
  {
    delegate = [(CNContactContentEditViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      [(CNContactContentEditViewController *)self setIsPresentingFullscreenForOutOfProcess:0];
      delegate2 = [(CNContactContentEditViewController *)self delegate];
      [delegate2 contactEditViewControllerWillDismissFullscreen:self];
    }
  }
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  if (style != 5)
  {
    if ([(CNContactContentEditViewController *)self isOutOfProcess])
    {
      delegate = [(CNContactContentEditViewController *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        presentedViewController = [controllerCopy presentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          [(CNContactContentEditViewController *)self setIsPresentingFullscreenForOutOfProcess:1];
          delegate2 = [(CNContactContentEditViewController *)self delegate];
          [delegate2 contactEditViewControllerWillPresentFullscreen:self];
        }
      }
    }
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && CNUIIsDDActionsService())
  {
    return -1;
  }

  else
  {
    return -2;
  }
}

- (void)updateOutOfProcessFullscreenPresentationIfNeeded
{
  if ([(CNContactContentEditViewController *)self isOutOfProcess])
  {
    if ([(CNContactContentEditViewController *)self isPresentingModalViewController])
    {
      presentedViewController = [(CNContactContentEditViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        if ([(CNContactContentEditViewController *)self isPresentingFullscreenForOutOfProcess]&& ([(CNContactContentEditViewController *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
        {
          delegate = [(CNContactContentEditViewController *)self delegate];
          [delegate contactEditViewControllerWillPresentFullscreen:self];
        }

        else
        {
          if ([(CNContactContentEditViewController *)self isPresentingFullscreenForOutOfProcess])
          {
            return;
          }

          delegate2 = [(CNContactContentEditViewController *)self delegate];
          v8 = objc_opt_respondsToSelector();

          if ((v8 & 1) == 0)
          {
            return;
          }

          delegate = [(CNContactContentEditViewController *)self delegate];
          [delegate contactEditViewControllerWillDismissFullscreen:self];
        }
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v17.receiver = self;
  v17.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v17 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  presentedViewController = [(CNContactContentEditViewController *)self presentedViewController];
  popoverPresentationController = [presentedViewController popoverPresentationController];
  sourceView = [popoverPresentationController sourceView];

  if (sourceView)
  {
    superview = [sourceView superview];
    contactView = [(CNContactContentEditViewController *)self contactView];

    if (superview == contactView)
    {
      presentedViewController2 = [(CNContactContentEditViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __89__CNContactContentEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
        v15[3] = &unk_1E74E6330;
        v15[4] = self;
        v16 = sourceView;
        [coordinatorCopy animateAlongsideTransition:0 completion:v15];
      }
    }
  }
}

void __89__CNContactContentEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactView];
  [*(a1 + 40) frame];
  [v2 scrollRectToVisible:0 animated:?];
}

- (void)sender:(id)sender presentViewController:(id)controller
{
  senderCopy = sender;
  controllerCopy = controller;
  [controllerCopy setModalPresentationStyle:{-[CNContactContentEditViewController _modalPresentationStyleForViewController:](self, "_modalPresentationStyleForViewController:", controllerCopy)}];
  v8 = +[CNContactStyle currentStyle];
  [controllerCopy setModalTransitionStyle:{objc_msgSend(v8, "modalTransitionStyle")}];

  objc_opt_class();
  v36 = senderCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v36;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setSourceView:v10];

  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  contactView = [(CNContactContentEditViewController *)self contactView];
  [(CNContactContentEditViewController *)self centeredSourceRect:contactView inContactView:v13, v15, v17, v19];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  popoverPresentationController2 = [controllerCopy popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v22, v24, v26, v28}];

  popoverPresentationController3 = [controllerCopy popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:15];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    presentationController = [controllerCopy presentationController];
    [presentationController setDelegate:self];
  }

  if (!self->_disablingRotation)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
LABEL_11:

      goto LABEL_12;
    }

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    if (CGRectGetHeight(v38) <= 667.0 || [controllerCopy modalPresentationStyle])
    {

      goto LABEL_11;
    }

    supportedInterfaceOrientations = [controllerCopy supportedInterfaceOrientations];
    supportedInterfaceOrientations2 = [(CNContactContentEditViewController *)self supportedInterfaceOrientations];

    if (supportedInterfaceOrientations != supportedInterfaceOrientations2)
    {
      [(CNContactContentEditViewController *)self _beginDisablingInterfaceAutorotation];
      self->_disablingRotation = 1;
    }
  }

LABEL_12:
  [(CNContactContentEditViewController *)self setBackgroundColorIfNeededForPresentedViewController:controllerCopy];
  [(CNContactContentEditViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v4 = [view cellForRowAtIndexPath:path];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 shouldPerformAccessoryAction])
  {
    [v4 performAccessoryAction];
  }
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  v4 = [(CNContactContentEditViewController *)self _itemAtIndexPath:path forTableView:view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = CNContactsUIBundle();
  v7 = v6;
  if (isKindOfClass)
  {
    v8 = @"UNLINK";
  }

  else
  {
    v8 = @"DELETE";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_1F0CE7398 table:@"Localized"];

  return v9;
}

- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  if (sel_copy_ == action)
  {
    v8 = [view cellForRowAtIndexPath:path];
    [v8 action];
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(CNContactContentEditViewController *)self _itemAtIndexPath:path forTableView:view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (([v5 isReadonly] & 1) != 0 || !objc_msgSend(v5, "canRemove"))
    {
      v6 = 0;
    }

    else
    {
      objc_opt_class();
      v6 = (objc_opt_isKindOfClass() & 1) == 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = 1;
          goto LABEL_10;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v6 = objc_opt_isKindOfClass() & 1;
              goto LABEL_10;
            }
          }
        }
      }
    }

    v6 = 2;
  }

LABEL_10:

  return v6;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v5 = [(CNContactContentEditViewController *)self _cellIdentifierForTableView:view indexPath:path];
  contactView = [(CNContactContentEditViewController *)self contactView];
  v7 = [objc_opt_class() classForCellIdentifier:v5];

  LOBYTE(contactView) = [v7 shouldIndentWhileEditing];
  return contactView;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  footerViewCopy = footerView;
  [footerViewCopy updateConstraintsIfNeeded];
  backgroundView = [footerViewCopy backgroundView];
  contactView = [(CNContactContentEditViewController *)self contactView];
  sectionBackgroundColor = [contactView sectionBackgroundColor];
  if (sectionBackgroundColor)
  {
    runningInContactsAppOniPad = 1;
  }

  else
  {
    environment = [(CNContactContentEditViewController *)self environment];
    runningInContactsAppOniPad = [environment runningInContactsAppOniPad];
  }

  if (runningInContactsAppOniPad && !backgroundView)
  {
    v11 = objc_alloc(MEMORY[0x1E69DD250]);
    backgroundView = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  contactView2 = [(CNContactContentEditViewController *)self contactView];
  sectionBackgroundColor2 = [contactView2 sectionBackgroundColor];
  [backgroundView setBackgroundColor:sectionBackgroundColor2];

  [footerViewCopy setBackgroundView:backgroundView];
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  viewCopy = view;
  [(CNContactContentEditViewController *)self tableView:viewCopy willDisplayFooterView:headerViewCopy forSection:section];
  [headerViewCopy _cnui_applyContactStyle];
  v9 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:viewCopy];

  cardEditingDeleteContactGroup = [(CNContactContentEditViewController *)self cardEditingDeleteContactGroup];
  if (v9 == cardEditingDeleteContactGroup && ([(CNContactContentEditViewController *)self ignoreContactAction], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = v15;
    contactView = [(CNContactContentEditViewController *)self contactView];
    sectionBackgroundColor = [contactView sectionBackgroundColor];

    if (sectionBackgroundColor)
    {
      contactView2 = [(CNContactContentEditViewController *)self contactView];
      sectionBackgroundColor2 = [contactView2 sectionBackgroundColor];
      goto LABEL_9;
    }
  }

  else
  {
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = +[CNContactStyle currentStyle];
    backgroundColor = [v11 backgroundColor];

    if (backgroundColor)
    {
      contactView2 = +[CNContactStyle currentStyle];
      sectionBackgroundColor2 = [contactView2 backgroundColor];
LABEL_9:
      v19 = sectionBackgroundColor2;
      backgroundView = [headerViewCopy backgroundView];
      [backgroundView setBackgroundColor:v19];
    }
  }
}

- (BOOL)tableView:(id)view shouldHaveFullLengthBottomSeparatorForSection:(int64_t)section
{
  v5 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nameEditingGroups = [(CNContactContentEditViewController *)self nameEditingGroups];
    v7 = [nameEditingGroups indexOfObject:v5];
    nameEditingGroups2 = [(CNContactContentEditViewController *)self nameEditingGroups];
    v9 = v7 == [nameEditingGroups2 count] - 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section
{
  v5 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nameEditingGroups = [(CNContactContentEditViewController *)self nameEditingGroups];
    firstObject = [nameEditingGroups firstObject];
    v8 = v5 == firstObject;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:view];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[CNContactContentEditViewController nameEditingGroups](self, "nameEditingGroups"), v6 = objc_claimAutoreleasedReturnValue(), [v6 lastObject], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5 == v7))
  {
    v8 = &stru_1F0CE7398;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v5 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    title = [v5 title];
  }

  else
  {
    cardEditingDeleteContactGroup = [(CNContactContentEditViewController *)self cardEditingDeleteContactGroup];
    v8 = cardEditingDeleteContactGroup;
    if (v5 == cardEditingDeleteContactGroup)
    {
      ignoreContactAction = [(CNContactContentEditViewController *)self ignoreContactAction];

      if (ignoreContactAction)
      {
        title = &stru_1F0CE7398;
      }

      else
      {
        title = 0;
      }
    }

    else
    {

      title = 0;
    }
  }

  return title;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section || (v7 = *MEMORY[0x1E6996568], -[CNContactContentEditViewController contactViewConfiguration](self, "contactViewConfiguration"), v8 = objc_claimAutoreleasedReturnValue(), [v8 warningMessage], v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v7) = (*(v7 + 16))(v7, v9), v9, v8, (v7 & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v10 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v13];

    v14 = *MEMORY[0x1E6996530];
    mutableContact = [(CNContactContentEditViewController *)self mutableContact];
    phoneNumbers = [mutableContact phoneNumbers];
    [v10 setShouldDisplayWarningIcon:{(*(v14 + 16))(v14, phoneNumbers)}];

    warningText = [v10 warningText];
    contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
    warningMessage = [contactViewConfiguration warningMessage];
    v20 = [warningText isEqual:warningMessage];

    if ((v20 & 1) == 0)
    {
      contactViewConfiguration2 = [(CNContactContentEditViewController *)self contactViewConfiguration];
      warningMessage2 = [contactViewConfiguration2 warningMessage];
      [v10 setWarningText:warningMessage2];
    }
  }

  return v10;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v5 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:view];
  editingGroups = [(CNContactContentEditViewController *)self editingGroups];
  lastObject = [editingGroups lastObject];

  if (v5 == lastObject)
  {
    v8 = 35.0;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v6 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:view];
  title = [v6 title];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (title)
  {
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v9 _scaledValueForValue:44.0];
    v11 = v10 + 15.0;
  }

  else
  {
    v11 = 16.0;
    if (isKindOfClass)
    {
      nameEditingGroups = [(CNContactContentEditViewController *)self nameEditingGroups];
      v13 = [nameEditingGroups containsObject:v6];

      if (v13)
      {
        v11 = 0.0;
        if (!section)
        {
          v14 = *MEMORY[0x1E6996568];
          contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
          warningMessage = [contactViewConfiguration warningMessage];
          LOBYTE(v14) = (*(v14 + 16))(v14, warningMessage);

          if (v14)
          {
            v11 = 0.0;
          }

          else
          {
            v11 = *MEMORY[0x1E69DE3D0];
          }
        }
      }
    }
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if ([(CNContactContentEditViewController *)self _indexPathIsActionItem:pathCopy forTableView:viewCopy])
  {
    v8 = [(CNContactContentEditViewController *)self _itemAtIndexPath:pathCopy forTableView:viewCopy];
    actions = [v8 actions];
    v10 = [actions objectAtIndexedSubscript:0];

    [v10 performActionWithSender:v7];
    indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
    [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
  }

  else if (objc_opt_respondsToSelector())
  {
    if ([v7 isMemberOfClass:objc_opt_class()])
    {
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      [(CNContactContentEditViewController *)self addEditingItemAtIndexPath:pathCopy forTableView:viewCopy];
    }

    else
    {
      if (([v7 shouldPerformDefaultAction] & 1) != 0 || (-[CNContactContentEditViewController contactViewConfiguration](self, "contactViewConfiguration"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "allowsPropertyActions"), v12, v13))
      {
        [v7 performDefaultAction];
      }

      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = [view cellForRowAtIndexPath:path];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = !v7 || ([v7 forceSuggested] & 1) == 0 && objc_msgSend(v7, "allowsCellSelection");
  return v8;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  v10 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  objc_opt_class();
  v13 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v12)
  {
    v16 = [pathCopy row];
    v17 = [viewCopy numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}];
    if (v15 && v16 < v17 - 1)
    {
      [v12 setShowSeparator:1];
    }

    else
    {
      environment = [(CNContactContentEditViewController *)self environment];
      [v12 setShowSeparator:{objc_msgSend(environment, "runningInContactsAppOniPad")}];
    }
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
  editingItems = [v9 editingItems];
  v11 = [editingItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if (style == 2)
  {
    contact = [viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      addLinkedCardAction = [(CNContactContentEditViewController *)self addLinkedCardAction];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }

      addLinkedCardAction = [(CNContactContentEditViewController *)self addStaticIdentityAction];
    }

    v14 = addLinkedCardAction;
    if (addLinkedCardAction)
    {
      [addLinkedCardAction performActionWithSender:contact];

      goto LABEL_13;
    }

LABEL_12:
    [(CNContactContentEditViewController *)self addEditingItemAtIndexPath:pathCopy forTableView:viewCopy];
    goto LABEL_13;
  }

  if (style != 1)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CNContactContentEditViewController *)self removeEditingItem:v11 atIndexPath:pathCopy forTableView:viewCopy];
    goto LABEL_14;
  }

  contact = [v11 contact];
  [(CNContactContentEditViewController *)self removeLinkedContact:contact];
LABEL_13:

LABEL_14:
  [(CNContactContentEditViewController *)self updateDoneButton];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(CNContactContentEditViewController *)self _indexPathIsActionItem:pathCopy forTableView:viewCopy])
  {
    v9 = [(CNContactContentEditViewController *)self _cellForIndexPath:pathCopy forTableView:viewCopy];
  }

  else
  {
    v10 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
    if ([(CNContactContentEditViewController *)self isStandardGroup:v10])
    {
      v9 = [(CNContactContentEditViewController *)self _cellForIndexPath:pathCopy forTableView:viewCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  [(CNContactContentEditViewController *)self _updateLabelWidthForCell:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CNContactContentEditViewController *)self prepareCell:v9];
  }

  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactContentEditViewController.m" lineNumber:1891 description:@"We have no cell to return!"];
  }

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:view];
  if ([(CNContactContentEditViewController *)self isStandardGroup:v5])
  {
    [v5 editingItems];
  }

  else
  {
    [v5 actionItems];
  }
  v6 = ;
  v7 = [v6 count];

  return v7;
}

- (BOOL)isStandardGroup:(id)group
{
  groupCopy = group;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = [(CNContactContentEditViewController *)self _currentGroupsForTableView:view];
  v4 = [v3 count];

  return v4;
}

- (void)didChangeToShowTitle:(BOOL)title
{
  titleCopy = title;
  contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
  [contactViewConfiguration setLayoutPositionallyAfterNavBar:titleCopy];

  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  contactViewConfiguration2 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  [contactHeaderView updateForShowingNavBar:{objc_msgSend(contactViewConfiguration2, "layoutPositionallyAfterNavBar")}];
}

- (void)didChangeToEditMode:(BOOL)mode
{
  modeCopy = mode;
  if ([(CNContactContentEditViewController *)self isEditing]!= mode)
  {

    [(CNContactContentEditViewController *)self setEditing:modeCopy animated:0];
  }
}

- (void)updateEditPhotoButtonIfNeeded
{
  if ([(CNContactContentEditViewController *)self isHeaderViewPhotoProhibited])
  {
    v3 = 0;
  }

  else
  {
    view = [(CNContactContentEditViewController *)self view];
    traitCollection = [(CNContactContentEditViewController *)self traitCollection];
    v3 = [(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController canShowPhotoPickerForView:view withTraitCollection:traitCollection];
  }

  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  allowsEditPhoto = [contactHeaderView allowsEditPhoto];

  if (v3 != allowsEditPhoto)
  {
    contactHeaderView2 = [(CNContactContentEditViewController *)self contactHeaderView];
    [contactHeaderView2 setAllowsEditPhoto:v3 preservingChanges:1];
  }
}

- (CGSize)setupTableHeaderView
{
  if (-[CNContactContentEditViewController shouldDisplayAvatarHeaderView](self, "shouldDisplayAvatarHeaderView") || (-[CNContactContentEditViewController contactView](self, "contactView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 customHeaderView], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    customHeaderView = 0;
  }

  else
  {
    contactView = [(CNContactContentEditViewController *)self contactView];
    customHeaderView = [contactView customHeaderView];
  }

  contactView2 = [(CNContactContentEditViewController *)self contactView];
  tableHeaderView = [contactView2 tableHeaderView];
  needsUpdateConstraints = [tableHeaderView needsUpdateConstraints];

  if (customHeaderView)
  {
    [customHeaderView frame];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
  }

  contactView3 = [(CNContactContentEditViewController *)self contactView];
  [contactView3 setTableHeaderView:customHeaderView];

  if ((needsUpdateConstraints & 1) == 0)
  {
    contactView4 = [(CNContactContentEditViewController *)self contactView];
    tableHeaderView2 = [contactView4 tableHeaderView];
    needsUpdateConstraints2 = [tableHeaderView2 needsUpdateConstraints];

    if (needsUpdateConstraints2)
    {
      contactView5 = [(CNContactContentEditViewController *)self contactView];
      tableHeaderView3 = [contactView5 tableHeaderView];
      [tableHeaderView3 updateConstraints];
    }
  }

  v20 = v11;
  v21 = v13;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v13 viewDidLayoutSubviews];
  [(CNContactContentEditViewController *)self _updateCachedLabelWidthsIfNeeded];
  [(CNContactContentEditViewController *)self setupTableHeaderView];
  v4 = v3;
  v6 = v5;
  [(CNContactContentEditViewController *)self initializeTableViewsForHeaderHeight];
  contactView = [(CNContactContentEditViewController *)self contactView];
  tableHeaderView = [contactView tableHeaderView];

  if (tableHeaderView)
  {
    [tableHeaderView frame];
    if (v4 != v10 || v6 != v9)
    {
      contactView2 = [(CNContactContentEditViewController *)self contactView];
      [contactView2 setTableHeaderView:tableHeaderView];
    }
  }

  [(CNContactContentEditViewController *)self focusOnFirstEditingItemIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v4 viewWillLayoutSubviews];
  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView calculateLabelSizesIfNeeded];

  [(CNContactContentEditViewController *)self updateEditPhotoButtonIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v5 viewWillDisappear:disappear];
  siriContextProvider = [(CNContactContentEditViewController *)self siriContextProvider];
  [siriContextProvider setEnabled:0];

  [(CNContactContentEditViewController *)self updateWindowTitleForAppearing:0];
}

- (void)prepareContactDidAppearForPPT
{
  if ([(CNContactContentEditViewController *)self runningPPT])
  {
    v2 = *MEMORY[0x1E69DDA98];

    [v2 installCACommitCompletionBlock:&__block_literal_global_415];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v13.receiver = self;
  v13.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v13 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (![(CNContactContentEditViewController *)self isOutOfProcess])
  {
    p_peripheryInsets = &self->_peripheryInsets;
    view = [(CNContactContentEditViewController *)self view];
    window = [view window];
    screen = [window screen];
    [screen _peripheryInsets];
    p_peripheryInsets->top = v9;
    p_peripheryInsets->left = v10;
    p_peripheryInsets->bottom = v11;
    p_peripheryInsets->right = v12;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v4 viewDidAppear:appear];
  if (self->_needsRefetch)
  {
    [(CNContactContentEditViewController *)self _refetchContact];
    self->_needsRefetch = 0;
  }

  [(CNContactContentEditViewController *)self becomeFirstResponder];
  [(CNContactContentEditViewController *)self updateWindowTitleForAppearing:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(CNContactContentEditViewController *)self forcesTransparentBackground])
  {
    v5 = +[CNUIColorRepository transparentBackgroundColor];
  }

  else
  {
    if (![(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
    {
      goto LABEL_6;
    }

    v5 = +[CNUIColorRepository popoverBackgroundColor];
  }

  v6 = v5;
  contactView = [(CNContactContentEditViewController *)self contactView];
  [contactView setBackgroundColor:v6];

LABEL_6:
  v15.receiver = self;
  v15.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v15 viewWillAppear:appearCopy];
  v8 = +[CNContactStyle currentStyle];
  backgroundColor = [v8 backgroundColor];

  if (backgroundColor)
  {
    v10 = +[CNContactStyle currentStyle];
    backgroundColor2 = [v10 backgroundColor];
    view = [(CNContactContentEditViewController *)self view];
    [view setBackgroundColor:backgroundColor2];
  }

  contactView2 = [(CNContactContentEditViewController *)self contactView];
  [contactView2 _cnui_applyContactStyle];

  if (![(CNContactContentEditViewController *)self reloadDataIfNeeded])
  {
    [(CNContactContentEditViewController *)self _setNeedsUpdateCachedLabelWidths];
  }

  [(CNContactContentEditViewController *)self updateEditNavigationItemsAnimated:0];
  siriContextProvider = [(CNContactContentEditViewController *)self siriContextProvider];
  [siriContextProvider setEnabled:1];

  [*MEMORY[0x1E69DDA98] setNetworkActivityIndicatorVisible:0];
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v3 updateViewConstraints];
  [(CNContactContentEditViewController *)self setupConstraints];
}

- (void)setupConstraints
{
  shouldDisplayAvatarHeaderView = [(CNContactContentEditViewController *)self shouldDisplayAvatarHeaderView];
  [(CNContactContentEditViewController *)self setupViewHierarchyIncludingAvatarHeader:shouldDisplayAvatarHeaderView];
  [(CNContactContentEditViewController *)self setupTableHeaderView];
  v4 = MEMORY[0x1E696ACD8];
  activatedConstraints = [(CNContactContentEditViewController *)self activatedConstraints];
  [v4 deactivateConstraints:activatedConstraints];

  array = [MEMORY[0x1E695DF70] array];
  if (shouldDisplayAvatarHeaderView)
  {
    v6 = MEMORY[0x1E696ACD8];
    contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
    contactHeaderView2 = [(CNContactContentEditViewController *)self contactHeaderView];
    [contactHeaderView2 maxHeight];
    v10 = [v6 constraintWithItem:contactHeaderView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v9];
    [(CNContactContentEditViewController *)self setHeaderHeightConstraint:v10];

    headerHeightConstraint = [(CNContactContentEditViewController *)self headerHeightConstraint];
    [array addObject:headerHeightConstraint];

    contactHeaderView3 = [(CNContactContentEditViewController *)self contactHeaderView];
    topAnchor = [contactHeaderView3 topAnchor];
    view = [(CNContactContentEditViewController *)self view];
    topAnchor2 = [view topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v16];

    contactHeaderView4 = [(CNContactContentEditViewController *)self contactHeaderView];
    leftAnchor = [contactHeaderView4 leftAnchor];
    view2 = [(CNContactContentEditViewController *)self view];
    leftAnchor2 = [view2 leftAnchor];
    v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [array addObject:v21];

    contactHeaderView5 = [(CNContactContentEditViewController *)self contactHeaderView];
    rightAnchor = [contactHeaderView5 rightAnchor];
    view3 = [(CNContactContentEditViewController *)self view];
    rightAnchor2 = [view3 rightAnchor];
    v26 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [array addObject:v26];

    contactView = [(CNContactContentEditViewController *)self contactView];
    topAnchor3 = [contactView topAnchor];
    view4 = [(CNContactContentEditViewController *)self view];
    topAnchor4 = [view4 topAnchor];
    v31 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [array addObject:v31];

    contactView2 = [(CNContactContentEditViewController *)self contactView];
    bottomAnchor = [contactView2 bottomAnchor];
    view5 = [(CNContactContentEditViewController *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v36];

    headerDropShadowView = [(CNContactContentEditViewController *)self headerDropShadowView];
    superview = [headerDropShadowView superview];

    if (superview)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v41 = v40;

      headerDropShadowView2 = [(CNContactContentEditViewController *)self headerDropShadowView];
      heightAnchor = [headerDropShadowView2 heightAnchor];
      v44 = [heightAnchor constraintEqualToConstant:1.0 / v41];
      [array addObject:v44];

      headerDropShadowView3 = [(CNContactContentEditViewController *)self headerDropShadowView];
      bottomAnchor3 = [headerDropShadowView3 bottomAnchor];
      headerDropShadowView4 = [(CNContactContentEditViewController *)self headerDropShadowView];
      superview2 = [headerDropShadowView4 superview];
      bottomAnchor4 = [superview2 bottomAnchor];
      v50 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [array addObject:v50];

      headerDropShadowView5 = [(CNContactContentEditViewController *)self headerDropShadowView];
      leftAnchor3 = [headerDropShadowView5 leftAnchor];
      headerDropShadowView6 = [(CNContactContentEditViewController *)self headerDropShadowView];
      superview3 = [headerDropShadowView6 superview];
      leftAnchor4 = [superview3 leftAnchor];
      v56 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
      [array addObject:v56];

      headerDropShadowView7 = [(CNContactContentEditViewController *)self headerDropShadowView];
      rightAnchor3 = [headerDropShadowView7 rightAnchor];
      headerDropShadowView8 = [(CNContactContentEditViewController *)self headerDropShadowView];
      superview4 = [headerDropShadowView8 superview];
      rightAnchor4 = [superview4 rightAnchor];
      v62 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
      [array addObject:v62];
    }
  }

  contactView3 = [(CNContactContentEditViewController *)self contactView];
  leftAnchor5 = [contactView3 leftAnchor];
  view6 = [(CNContactContentEditViewController *)self view];
  leftAnchor6 = [view6 leftAnchor];
  v67 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
  [array addObject:v67];

  contactView4 = [(CNContactContentEditViewController *)self contactView];
  rightAnchor5 = [contactView4 rightAnchor];
  view7 = [(CNContactContentEditViewController *)self view];
  rightAnchor6 = [view7 rightAnchor];
  v72 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  [array addObject:v72];

  [(CNContactContentEditViewController *)self setActivatedConstraints:array];
  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (BOOL)shouldDisplayAvatarHeaderView
{
  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  v3 = contactHeaderView != 0;

  return v3;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v11 viewDidLoad];
  [(CNContactContentEditViewController *)self setEditing:1];
  v3 = *MEMORY[0x1E6996568];
  initialPrompt = [(CNContactContentEditViewController *)self initialPrompt];
  LOBYTE(v3) = (*(v3 + 16))(v3, initialPrompt);

  if ((v3 & 1) == 0)
  {
    initialPrompt2 = [(CNContactContentEditViewController *)self initialPrompt];
    navigationItem = [(CNContactContentEditViewController *)self navigationItem];
    [navigationItem setPrompt:initialPrompt2];
  }

  if ([(CNContactContentEditViewController *)self shouldDrawNavigationBar])
  {
    navigationItem2 = [(CNContactContentEditViewController *)self navigationItem];
    [navigationItem2 _setBackgroundHidden:0];
  }

  navItemUpdater = [(CNContactContentEditViewController *)self navItemUpdater];

  if (!navItemUpdater)
  {
    v9 = objc_alloc_init(CNContactContentNavigationItemUpdater);
    [(CNContactContentEditViewController *)self setNavItemUpdater:v9];
  }

  [(CNContactContentEditViewController *)self reloadDataIfNeeded];
  view = [(CNContactContentEditViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)setupViewHierarchyIncludingAvatarHeader:(BOOL)header
{
  headerCopy = header;
  v32[1] = *MEMORY[0x1E69E9840];
  if ([(CNContactContentEditViewController *)self isViewLoaded])
  {
    view = [(CNContactContentEditViewController *)self view];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
    v9 = contactHeaderView;
    if (headerCopy)
    {
      v32[0] = contactHeaderView;
      v10 = v32;
      v11 = array2;
    }

    else
    {
      v31 = contactHeaderView;
      v10 = &v31;
      v11 = array;
    }

    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v11 addObjectsFromArray:v12];

    contactHeaderView2 = [(CNContactContentEditViewController *)self contactHeaderView];
    headerDropShadowView = [(CNContactContentEditViewController *)self headerDropShadowView];
    [contactHeaderView2 addSubview:headerDropShadowView];

    contactView = [(CNContactContentEditViewController *)self contactView];
    [array2 addObject:contactView];

    contactView2 = [(CNContactContentEditViewController *)self contactView];
    contactView3 = [(CNContactContentEditViewController *)self contactView];
    panGestureRecognizer = [contactView3 panGestureRecognizer];
    view2 = [panGestureRecognizer view];

    if (contactView2 != view2)
    {
      contactView4 = [(CNContactContentEditViewController *)self contactView];
      panGestureRecognizer2 = [contactView4 panGestureRecognizer];
      view3 = [panGestureRecognizer2 view];
      contactView5 = [(CNContactContentEditViewController *)self contactView];
      panGestureRecognizer3 = [contactView5 panGestureRecognizer];
      [view3 removeGestureRecognizer:panGestureRecognizer3];

      view4 = [(CNContactContentEditViewController *)self view];
      contactView6 = [(CNContactContentEditViewController *)self contactView];
      panGestureRecognizer4 = [contactView6 panGestureRecognizer];
      [view4 addGestureRecognizer:panGestureRecognizer4];
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __78__CNContactContentEditViewController_setupViewHierarchyIncludingAvatarHeader___block_invoke;
    v29[3] = &unk_1E74E6C50;
    v30 = view;
    v28 = view;
    [array2 enumerateObjectsUsingBlock:v29];
  }
}

- (void)loadContactViewControllerViews
{
  contactView = [(CNContactContentEditViewController *)self contactView];
  contactView2 = [(CNContactContentEditViewController *)self contactView];
  v5 = objc_opt_class();
  v6 = [v5 cellIdentifierForClass:objc_opt_class()];
  v7 = [contactView dequeueReusableCellWithIdentifier:v6];
  [(CNContactContentEditViewController *)self setNoteCell:v7];

  view = [(CNContactContentEditViewController *)self view];
  contactView3 = [(CNContactContentEditViewController *)self contactView];
  [view addSubview:contactView3];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(CNContactContentEditViewController *)self setView:v3];

  [(CNContactContentEditViewController *)self loadContactViewControllerViews];
}

- (void)finishEditing:(id)editing
{
  editingCopy = editing;
  isEditing = [(CNContactContentEditViewController *)self isEditing];
  [(CNContactContentEditViewController *)self cancelAsyncLookups];
  contactView = [(CNContactContentEditViewController *)self contactView];
  [contactView endEditing:1];

  if (isEditing)
  {
    if (![(CNContactContentEditViewController *)self _modelHasChanges])
    {
      [(CNContactContentEditViewController *)self editCancel:editingCopy];
      goto LABEL_10;
    }

    v7 = CNUILogContactCard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] Done editing, will save changes", v10, 2u);
    }

    if ([(CNContactContentEditViewController *)self saveChanges])
    {
      mutableContact = [(CNContactContentEditViewController *)self mutableContact];
      [(CNContactContentEditViewController *)self _didCompleteWithContact:mutableContact];
    }

    else
    {
      [(CNContactContentEditViewController *)self _didCompleteWithContact:0];
    }
  }

  [(CNContactContentEditViewController *)self reloadDataPreservingChanges:0];
  contactView2 = [(CNContactContentEditViewController *)self contactView];
  [contactView2 reloadData];

LABEL_10:
  if (([(CNContactContentEditViewController *)self supportsDrafts]& isEditing) == 1)
  {
    +[CNUIDraftSupport deleteDrafts];
  }
}

- (void)updateContact:(id)contact
{
  if ([(CNContactContentEditViewController *)self saveChanges])
  {
    mutableContact = [(CNContactContentEditViewController *)self mutableContact];
    [(CNContactContentEditViewController *)self _didCompleteWithContact:mutableContact];
  }

  else
  {
    [(CNContactContentEditViewController *)self _didCompleteWithContact:0];
  }

  [(CNContactContentEditViewController *)self reloadDataPreservingChanges:0];
}

- (id)saveDescriptionForCurrentState
{
  v3 = [CNUIContactSaveConfiguration alloc];
  contact = [(CNContactContentEditViewController *)self contact];
  mutableContact = [(CNContactContentEditViewController *)self mutableContact];
  originalContacts = [(CNContactContentEditViewController *)self originalContacts];
  shadowCopyOfReadonlyContact = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];
  editingLinkedContacts = [(CNContactContentEditViewController *)self editingLinkedContacts];
  contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
  contactStore = [contactViewConfiguration contactStore];
  parentGroup = [(CNContactContentEditViewController *)self parentGroup];
  parentContainer = [(CNContactContentEditViewController *)self parentContainer];
  containerContext = [(CNContactContentEditViewController *)self containerContext];
  contactViewConfiguration2 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  BYTE1(v13) = 1;
  LOBYTE(v13) = [contactViewConfiguration2 ignoresParentalRestrictions];
  v14 = [(CNUIContactSaveConfiguration *)v3 initWithContact:contact mutableContact:mutableContact originalContacts:originalContacts shadowCopyOfReadonlyContact:shadowCopyOfReadonlyContact editingLinkedContacts:editingLinkedContacts contactStore:contactStore parentGroup:parentGroup parentContainer:parentContainer containerContext:containerContext groupContext:0 ignoresParentalRestrictions:v13 saveWasAuthorized:?];

  return v14;
}

- (BOOL)performSave
{
  saveContactExecutor = [(CNContactContentEditViewController *)self saveContactExecutor];
  saveDescriptionForCurrentState = [(CNContactContentEditViewController *)self saveDescriptionForCurrentState];
  v5 = [saveContactExecutor executeSaveWithConfiguration:saveDescriptionForCurrentState saveDelegate:self];

  array = [MEMORY[0x1E695DF70] array];
  [(CNContactContentEditViewController *)self setIssuedSaveRequestIdentifiers:array];

  if ([v5 success])
  {
    [(CNContactContentEditViewController *)self setShadowCopyOfReadonlyContact:0];
    v7 = _LargeDatabasesSignpostLogQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__CNContactContentEditViewController_performSave__block_invoke;
    block[3] = &unk_1E74E6A88;
    v14 = v5;
    dispatch_async(v7, block);
  }

  issuedSaveRequestIdentifiers = [(CNContactContentEditViewController *)self issuedSaveRequestIdentifiers];
  identifiersOfIssuedSaveRequests = [v5 identifiersOfIssuedSaveRequests];
  [issuedSaveRequestIdentifiers addObjectsFromArray:identifiersOfIssuedSaveRequests];

  [(CNContactContentEditViewController *)self setEditingLinkedContacts:0];
  contact = [v5 contact];
  [(CNContactContentEditViewController *)self setContact:contact];

  success = [v5 success];
  return success;
}

void __49__CNContactContentEditViewController_performSave__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contact];
  [CNContactContentEditViewController _telemetryForContact:v1];
}

- (void)saveModelChangesToContact
{
  editingGroups = [(CNContactContentEditViewController *)self editingGroups];
  [(CNContactContentEditViewController *)self _saveChangesForGroups:editingGroups];

  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView saveContactPhoto];
}

- (BOOL)saveChanges
{
  if (self->_saving)
  {
    return 0;
  }

  self->_saving = 1;
  [(CNContactContentEditViewController *)self saveModelChangesToContact];
  v4 = CNUILogContactCard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "[CNContactContentEditViewController] performing save…", v5, 2u);
  }

  result = [(CNContactContentEditViewController *)self performSave];
  self->_saving = 0;
  return result;
}

- (void)clearMapsDataIfEdited
{
  if ([(CNContactContentEditViewController *)self _modelHasChanges])
  {
    mutableContact = [(CNContactContentEditViewController *)self mutableContact];
    [mutableContact setMapsData:0];
  }
}

- (void)presentConfirmCancelAlertController
{
  delegate = [(CNContactContentEditViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNContactContentEditViewController *)self delegate];
    [delegate2 contactEditViewControllerRequestsCancelConfirmationAlert:self];
  }
}

- (void)editCancel:(id)cancel
{
  if ([(CNContactContentEditViewController *)self hasPendingChanges])
  {
    contactView = [(CNContactContentEditViewController *)self contactView];
    [contactView endEditing:1];

    [(CNContactContentEditViewController *)self presentConfirmCancelAlertController];
  }

  else
  {

    [(CNContactContentEditViewController *)self performConfirmedCancel];
  }
}

- (void)cancelAsyncLookups
{
  medicalIDLookupToken = [(CNContactContentEditViewController *)self medicalIDLookupToken];
  [medicalIDLookupToken cancel];

  [(CNContactContentEditViewController *)self setMedicalIDLookupToken:0];
}

- (BOOL)hasPendingChanges
{
  if ([(CNContactContentEditViewController *)self _modelIsEmpty])
  {
    return 0;
  }

  return [(CNContactContentEditViewController *)self _modelHasChanges];
}

- (void)updateDoneButton
{
  navigationItemController = [(CNContactContentEditViewController *)self navigationItemController];
  navItemUpdater = [(CNContactContentEditViewController *)self navItemUpdater];
  v4 = [navItemUpdater updateEditDoneButtonForController:navigationItemController isUpdatingContact:-[CNContactContentEditViewController mode](self hasChanges:{"mode") == 4, -[CNContactContentEditViewController hasPendingChanges](self, "hasPendingChanges")}];

  -[CNContactContentEditViewController setSaveKeyboardShortcutEnabled:](self, "setSaveKeyboardShortcutEnabled:", [v4 enableSaveShortcut]);
  navigationItemDelegate = [(CNContactContentEditViewController *)self navigationItemDelegate];
  navigationItem = [navigationItemController navigationItem];
  doneButtonItem = [(CNContactContentEditViewController *)self doneButtonItem];
  [navigationItemDelegate contactNavigationItemProvider:self didUpdateNavigationItem:navigationItem doneButtonItem:doneButtonItem];
}

- (void)updateWindowTitleForAppearing:(BOOL)appearing
{
  if (appearing)
  {
    title = [(CNContactContentEditViewController *)self title];
    if (title)
    {
      title2 = title;
    }

    else
    {
      navigationController = [(CNContactContentEditViewController *)self navigationController];
      title2 = [navigationController title];

      if (!title2)
      {
        contactFormatter = [(CNContactContentEditViewController *)self contactFormatter];
        contact = [(CNContactContentEditViewController *)self contact];
        title2 = [contactFormatter stringFromContact:contact];
      }
    }

    view = [(CNContactContentEditViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    [windowScene setTitle:title2];
  }

  else
  {
    title2 = [(CNContactContentEditViewController *)self view];
    view = [title2 window];
    window = [view windowScene];
    [window setTitle:0];
  }
}

- (void)updateEditNavigationItemsAnimated:(BOOL)animated
{
  navigationItemController = [(CNContactContentEditViewController *)self navigationItemController];
  navItemUpdater = [(CNContactContentEditViewController *)self navItemUpdater];
  ab_isInSheet = [(UIViewController *)self ab_isInSheet];
  shouldDrawNavigationBar = [(CNContactContentEditViewController *)self shouldDrawNavigationBar];
  v9 = [(CNContactContentEditViewController *)self mode]== 4;
  BYTE1(v20) = animated;
  LOBYTE(v20) = [(CNContactContentEditViewController *)self hasPendingChanges];
  v10 = [navItemUpdater updateEditingNavigationItemForController:navigationItemController actionTarget:self isInSheet:ab_isInSheet isShowingNavBar:shouldDrawNavigationBar shouldUsePlatterStyle:0 isUpdatingContact:v9 hasChanges:v20 animated:?];

  -[CNContactContentEditViewController setCancelKeyboardShortcutEnabled:](self, "setCancelKeyboardShortcutEnabled:", [v10 enableCancelShortcut]);
  -[CNContactContentEditViewController setSaveKeyboardShortcutEnabled:](self, "setSaveKeyboardShortcutEnabled:", [v10 enableSaveShortcut]);
  navigationItem = [navigationItemController navigationItem];
  navigationItemDelegate = [(CNContactContentEditViewController *)self navigationItemDelegate];
  doneButtonItem = [(CNContactContentEditViewController *)self doneButtonItem];
  [navigationItemDelegate contactNavigationItemProvider:self didUpdateNavigationItem:navigationItem doneButtonItem:doneButtonItem];

  contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
  layoutPositionallyAfterNavBar = [contactViewConfiguration layoutPositionallyAfterNavBar];
  if (layoutPositionallyAfterNavBar)
  {
    v16 = 0;
    v17 = 1;
  }

  else
  {
    title = [navigationItem title];
    if (title)
    {
      v9 = title;
      v16 = 0;
      v17 = 1;
    }

    else
    {
      titleView = [navigationItem titleView];
      v9 = 0;
      if (titleView)
      {
        v16 = 1;
        v17 = 1;
      }

      else
      {
        v17 = [navigationItem _backgroundHidden] ^ 1;
        v16 = 1;
      }
    }
  }

  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView setShouldShowBelowNavigationTitle:v17];

  if (v16)
  {
  }

  if ((layoutPositionallyAfterNavBar & 1) == 0)
  {
  }
}

- (UINavigationItem)effectiveNavigationItem
{
  navigationItemController = [(CNContactContentEditViewController *)self navigationItemController];
  navigationItem = [navigationItemController navigationItem];

  return navigationItem;
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  if (edge == 4)
  {
    contactView = [(CNContactContentEditViewController *)self contactView];
  }

  else
  {
    contactView = 0;
  }

  return contactView;
}

- (id)_policyForContact:(id)contact mode:(int64_t)mode
{
  contactCopy = contact;
  contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
  if ([contactViewConfiguration allowsAddingToAddressBook])
  {
  }

  else
  {
    hasBeenPersisted = [contactCopy hasBeenPersisted];

    if ((hasBeenPersisted & 1) == 0)
    {
LABEL_8:
      mEMORY[0x1E695CF48] = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
      goto LABEL_9;
    }
  }

  if (mode > 5 || (v9 = 1 << mode, v10 = contactCopy, (v9 & 0x32) == 0))
  {
    v10 = 0;
  }

  contactViewCache = [(CNContactContentEditViewController *)self contactViewCache];
  mEMORY[0x1E695CF48] = [contactViewCache policyForContact:v10];

  if (!mEMORY[0x1E695CF48])
  {
    goto LABEL_8;
  }

LABEL_9:

  return mEMORY[0x1E695CF48];
}

- (id)indexPathOfPropertyItem:(id)item editing:(BOOL)editing
{
  itemCopy = item;
  group = [itemCopy group];
  contactView = [(CNContactContentEditViewController *)self contactView];
  v8 = [(CNContactContentEditViewController *)self sectionOfGroup:group inTableView:contactView];
  editingItems = [group editingItems];
  v10 = [editingItems indexOfObject:itemCopy];

  v11 = 0;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForRow:v10 inSection:v8];
  }

  return v11;
}

- (void)reloadCardGroup:(id)group forTableView:(id)view
{
  groupCopy = group;
  viewCopy = view;
  if ([(CNContactContentEditViewController *)self isViewLoaded])
  {
    if (![(CNContactContentEditViewController *)self needsReload])
    {
      v7 = [(CNContactContentEditViewController *)self sectionOfGroup:groupCopy inTableView:viewCopy];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = v7;
        [viewCopy beginUpdates];
        v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:v8];
        [viewCopy reloadSections:v9 withRowAnimation:0];

        [viewCopy endUpdates];
        [(CNContactContentEditViewController *)self updateHeaderHeightToMatchScrollViewState:viewCopy scrollDirection:2 animated:0];
      }
    }
  }
}

- (void)addCardGroup:(id)group afterGroup:(id)afterGroup
{
  groupCopy = group;
  afterGroupCopy = afterGroup;
  groupsAfterGroup = [(CNContactContentEditViewController *)self groupsAfterGroup];
  v8 = [groupsAfterGroup objectForKeyedSubscript:afterGroupCopy];

  if (v8)
  {
    groupsAfterGroup2 = [(CNContactContentEditViewController *)self groupsAfterGroup];
    groupsAfterGroup3 = [groupsAfterGroup2 objectForKeyedSubscript:afterGroupCopy];
    [groupsAfterGroup3 addObject:groupCopy];
  }

  else
  {
    groupsAfterGroup2 = [MEMORY[0x1E695DF70] arrayWithObject:groupCopy];
    groupsAfterGroup3 = [(CNContactContentEditViewController *)self groupsAfterGroup];
    [groupsAfterGroup3 setObject:groupsAfterGroup2 forKeyedSubscript:afterGroupCopy];
  }
}

- (int64_t)sectionOfGroup:(id)group inTableView:(id)view
{
  groupCopy = group;
  viewCopy = view;
  v8 = [(CNContactContentEditViewController *)self _currentGroupsForTableView:viewCopy];
  v9 = v8;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v11 = [v8 indexOfObject:groupCopy];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(CNContactContentEditViewController *)self tableViewSectionIndexFromGroupIndex:v11 forTableView:viewCopy];
    }
  }

  return v10;
}

- (id)cardGroupForProperty:(id)property
{
  propertyCopy = property;
  propertyGroups = [(CNContactContentEditViewController *)self propertyGroups];
  v6 = [propertyGroups objectForKeyedSubscript:propertyCopy];

  return v6;
}

- (void)reloadDataPreservingChanges:(BOOL)changes
{
  changesCopy = changes;
  v45 = *MEMORY[0x1E69E9840];
  if (([(CNContactContentEditViewController *)self isViewLoaded]& 1) != 0)
  {
    self->_needsReload = 0;
    contactStore = [(CNContactContentEditViewController *)self contactStore];

    if (!contactStore)
    {
      originalContacts = [(CNContactContentEditViewController *)self originalContacts];
      v7 = [originalContacts _cn_filter:&__block_literal_global_377];

      if ([v7 count])
      {
        v8 = 7;
      }

      else
      {
        v8 = 1;
      }

      managedConfiguration = [(CNContactContentEditViewController *)self managedConfiguration];

      if (managedConfiguration)
      {
        v10 = objc_alloc(MEMORY[0x1E695CE18]);
        environment = [(CNContactContentEditViewController *)self environment];
        cnEnvironment = [environment cnEnvironment];
        managedConfiguration2 = [(CNContactContentEditViewController *)self managedConfiguration];
        v14 = [v10 initWithEnvironment:cnEnvironment options:v8 managedConfiguration:managedConfiguration2];
        [(CNContactContentEditViewController *)self setContactStore:v14];
      }

      else
      {
        environment = [MEMORY[0x1E695CE18] storeWithOptions:v8];
        [(CNContactContentEditViewController *)self setContactStore:environment];
      }
    }

    if (![(CNContactContentEditViewController *)self mode])
    {
      parentViewController = [(CNContactContentEditViewController *)self parentViewController];
      objc_getClass("ABNewPersonViewController");
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(CNContactContentEditViewController *)self setMode:3];
      }
    }

    if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] != 3)
    {
      v17 = CNUILogContactCard();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_199A75000, v17, OS_LOG_TYPE_ERROR, "CNContactContentViewController does not have authorization to access contacts.", buf, 2u);
      }
    }

    shadowCopyOfReadonlyContact = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];

    if (!shadowCopyOfReadonlyContact)
    {
      contact = [(CNContactContentEditViewController *)self contact];
      v20 = [(CNContactContentEditViewController *)self _policyForContact:contact mode:[(CNContactContentEditViewController *)self mode]];
      [(CNContactContentEditViewController *)self setPolicy:v20];
    }

    contact2 = [(CNContactContentEditViewController *)self contact];
    isUnified = [contact2 isUnified];

    if (isUnified)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      contact3 = [(CNContactContentEditViewController *)self contact];
      linkedContacts = [contact3 linkedContacts];

      v26 = [linkedContacts countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v40;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v40 != v28)
            {
              objc_enumerationMutation(linkedContacts);
            }

            v30 = *(*(&v39 + 1) + 8 * i);
            v31 = [(CNContactContentEditViewController *)self _policyForContact:v30 mode:[(CNContactContentEditViewController *)self mode]];
            if (v31)
            {
              identifier = [v30 identifier];
              [dictionary setObject:v31 forKey:identifier];
            }
          }

          v27 = [linkedContacts countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v27);
      }

      v33 = [dictionary copy];
      [(CNContactContentEditViewController *)self setLinkedPoliciesByContactIdentifier:v33];
    }

    if (!self->_propertyGroups)
    {
      _loadPropertyGroups = [(CNContactContentEditViewController *)self _loadPropertyGroups];
      propertyGroups = self->_propertyGroups;
      self->_propertyGroups = _loadPropertyGroups;
    }

    [(CNContactContentEditViewController *)self _reloadStaticIdentityGroup];
    [(CNContactContentEditViewController *)self _reloadGeminiGroupPreservingChanges:changesCopy];
    [(CNContactContentEditViewController *)self _reloadLinkedCardsGroup];
    [(CNContactContentEditViewController *)self _reloadPropertyGroupsPreservingChanges:changesCopy];
    [(CNContactContentEditViewController *)self _reloadMedicalIDGroup];
    [(CNContactContentEditViewController *)self _reloadContainerContextPreservingChanges:changesCopy];
    [(CNContactContentEditViewController *)self setupActionsPreservingChanges:changesCopy];
    v36 = [(CNContactContentEditViewController *)self _loadEditingGroupsPreservingChanges:changesCopy];
    [(CNContactContentEditViewController *)self setEditingGroups:v36];

    [(CNContactContentEditViewController *)self _setNeedsUpdateCachedLabelWidths];
    contactView = [(CNContactContentEditViewController *)self contactView];
    [contactView reloadData];

    contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
    [contactHeaderView reloadDataPreservingChanges:changesCopy];

    [(CNContactContentEditViewController *)self _updateUserActivity];
  }

  else
  {
    self->_needsReload = 1;
  }
}

- (NSArray)originalContacts
{
  v5[1] = *MEMORY[0x1E69E9840];
  originalContacts = self->_originalContacts;
  if (originalContacts)
  {
    v3 = originalContacts;
  }

  else if (self->_contact)
  {
    v5[0] = self->_contact;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (void)_refetchContact
{
  v36[1] = *MEMORY[0x1E69E9840];
  contact = [(CNContactContentEditViewController *)self contact];
  parentContainer = [(CNContactContentEditViewController *)self parentContainer];
  if (contact)
  {
    unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    contact2 = [(CNContactContentEditViewController *)self contact];
    v7 = [unifiedMeContactMonitor isMeContact:contact2];

    v8 = CNUILogContactCard();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        identifier = [contact identifier];
        *buf = 138543362;
        v28 = identifier;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it the me card, identifier %{public}@", buf, 0xCu);
      }

      contactStore = [(CNContactContentEditViewController *)self contactStore];
      identifier3 = [objc_opt_class() descriptorForRequiredKeysForContact:contact];
      v36[0] = identifier3;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      v26 = 0;
      v14 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v13 error:&v26];
      v15 = v26;
    }

    else
    {
      if (v9)
      {
        identifier2 = [contact identifier];
        *buf = 138543362;
        v28 = identifier2;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it not the me card, identifier %{public}@", buf, 0xCu);
      }

      contactStore = [(CNContactContentEditViewController *)self contactStore];
      identifier3 = [contact identifier];
      v13 = [objc_opt_class() descriptorForRequiredKeysForContact:contact];
      v35 = v13;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      v25 = 0;
      v14 = [contactStore unifiedContactWithIdentifier:identifier3 keysToFetch:v17 error:&v25];
      v15 = v25;
    }

    contactViewCache = [(CNContactContentEditViewController *)self contactViewCache];
    v19 = [contactViewCache containerForContact:v14];

    if (v15 || !v14)
    {
      v22 = CNUILogContactCard();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        identifier4 = [contact identifier];
        contactStore2 = [(CNContactContentEditViewController *)self contactStore];
        *buf = 138413058;
        v28 = identifier4;
        v29 = 2112;
        v30 = v15;
        v31 = 2112;
        v32 = contactStore2;
        v33 = 2112;
        v34 = contact;
        _os_log_error_impl(&dword_199A75000, v22, OS_LOG_TYPE_ERROR, "Error refetching contact with identifier %@, %@, store %@, full contact %@", buf, 0x2Au);
      }
    }

    else
    {
      v20 = [v14 isEqual:contact];
      v21 = [v19 isEqual:parentContainer];
      if (!v20 || (v21 & 1) == 0)
      {
        [(CNContactContentEditViewController *)self setContact:v14];
      }
    }
  }
}

- (void)saveNewContactDraft
{
  [(CNContactContentEditViewController *)self saveModelChangesToContact];
  mutableContact = [(CNContactContentEditViewController *)self mutableContact];
  [CNUIDraftSupport saveNewContactDraft:mutableContact];

  [(CNContactContentEditViewController *)self _refetchContact];
}

- (void)contactStoreDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  defaultSchedulerProvider = [(CNUIContactsEnvironment *)self->_environment defaultSchedulerProvider];
  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__CNContactContentEditViewController_contactStoreDidChangeWithNotification___block_invoke;
  v8[3] = &unk_1E74E77C0;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  [mainThreadScheduler performBlock:v8];
}

void __76__CNContactContentEditViewController_contactStoreDidChangeWithNotification___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldIgnoreContactStoreDidChangeNotification])
  {
    return;
  }

  v2 = [*(a1 + 40) userInfo];
  v15 = [v2 objectForKey:*MEMORY[0x1E695CBF0]];

  v3 = [*(a1 + 40) userInfo];
  v4 = [v3 objectForKey:*MEMORY[0x1E695CBF8]];

  v5 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  v6 = MEMORY[0x1E695DFD8];
  v7 = [*(a1 + 32) issuedSaveRequestIdentifiers];
  v8 = [v6 setWithArray:v7];

  if (v15 && ([v15 BOOLValue] & 1) != 0 || !objc_msgSend(v8, "count") || !objc_msgSend(v5, "count") || (objc_msgSend(v5, "isSubsetOfSet:", v8) & 1) == 0)
  {
    if (![*(a1 + 32) isViewLoaded])
    {
      goto LABEL_10;
    }

    v9 = [*(a1 + 32) view];
    v10 = [v9 window];
    if (v10)
    {
      v11 = v10;
      v12 = [*(a1 + 32) isEditing];

      if (!v12)
      {
LABEL_10:
        v13 = *(a1 + 32);
        if ((v13[995] & 1) == 0)
        {
          v14 = [v13 contactViewCache];
          [v14 resetCache];

          [*(a1 + 32) _refetchContact];
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    *(*(a1 + 32) + 993) = 1;
  }

LABEL_14:
}

- (void)adjustInsetsForKeyboardOverlap:(double)overlap
{
  [(CNContactContentEditViewController *)self setKeyboardVerticalOverlap:overlap];
  contactView = [(CNContactContentEditViewController *)self contactView];
  [(CNContactContentEditViewController *)self updateInsetsIfNeededForTableView:contactView];
}

- (void)keyboardDidShowNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view = [(CNContactContentEditViewController *)self view];
  window = [view window];
  [window convertRect:0 fromWindow:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [view convertRect:0 fromView:{v16, v18, v20, v22}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [view bounds];
  v35.origin.x = v24;
  v35.origin.y = v26;
  v35.size.width = v28;
  v35.size.height = v30;
  v34 = CGRectIntersection(v33, v35);
  [(CNContactContentEditViewController *)self adjustInsetsForKeyboardOverlap:CGRectGetHeight(v34)];
}

- (void)setContact:(id)contact
{
  v101[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = contactCopy;
  self->_needsRefetch = 0;
  if (self->_contact == contactCopy)
  {
    goto LABEL_45;
  }

  identifier = [(CNContact *)contactCopy identifier];
  identifier2 = [(CNContact *)self->_contact identifier];
  v8 = [identifier isEqualToString:identifier2];

  if ((v8 & 1) == 0)
  {
    [(CNContactContentEditViewController *)self setDidSetNewContact:1];
  }

  environment = [(CNContactContentEditViewController *)self environment];
  defaultSchedulerProvider = [environment defaultSchedulerProvider];

  [defaultSchedulerProvider suspendBackgroundScheduler];
  afterCACommitScheduler = [defaultSchedulerProvider afterCACommitScheduler];
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __49__CNContactContentEditViewController_setContact___block_invoke;
  v91[3] = &unk_1E74E6A88;
  v12 = defaultSchedulerProvider;
  v92 = v12;
  [afterCACommitScheduler performBlock:v91];

  contactViewCache = [(CNContactContentEditViewController *)self contactViewCache];
  [contactViewCache resetCache];

  LODWORD(afterCACommitScheduler) = [(CNContactContentEditViewController *)self isOutOfProcess];
  descriptorForRequiredKeys = [objc_opt_class() descriptorForRequiredKeys];
  v15 = descriptorForRequiredKeys;
  if (afterCACommitScheduler)
  {
    v101[0] = descriptorForRequiredKeys;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:1];
    v17 = [(CNContactContentEditViewController *)self _updateContact:v5 withMissingKeysFromRequiredKeys:v16];

    v5 = v17;
  }

  else
  {
    v100 = descriptorForRequiredKeys;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
    [v5 assertKeysAreAvailable:v16];
  }

  parentContainer = [(CNContactContentEditViewController *)self parentContainer];
  if (!parentContainer)
  {
LABEL_10:
    contactViewCache2 = [(CNContactContentEditViewController *)self contactViewCache];
    v23 = [contactViewCache2 containerForContact:v5];
    [(CNContactContentEditViewController *)self setParentContainer:v23];

    goto LABEL_11;
  }

  contactViewCache2 = parentContainer;
  parentContainer2 = [(CNContactContentEditViewController *)self parentContainer];
  if (parentContainer2)
  {
    v21 = parentContainer2;
    hasBeenPersisted = [v5 hasBeenPersisted];

    if (!hasBeenPersisted)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
  [(CNContactContentEditViewController *)self setContainerContext:0];
  contactViewCache3 = [(CNContactContentEditViewController *)self contactViewCache];
  v25 = [contactViewCache3 policyForContact:v5];

  if ([v25 isReadonly])
  {
    v84 = v12;
    contactStore = [(CNContactContentEditViewController *)self contactStore];
    identifier3 = [v5 identifier];
    v28 = [objc_opt_class() descriptorForRequiredKeysForContact:v5];
    v99 = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
    v90 = 0;
    v30 = [contactStore unifiedContactWithIdentifier:identifier3 keysToFetch:v29 error:&v90];
    v83 = v90;

    if (v30)
    {
      v31 = v30;

      contactViewCache4 = [(CNContactContentEditViewController *)self contactViewCache];
      v33 = [contactViewCache4 policyForContact:v31];

      v25 = v33;
      if ([v33 isReadonly])
      {
        v82 = v33;
        v34 = objc_alloc_init(MEMORY[0x1E695CF18]);
        availableKeyDescriptor = [v31 availableKeyDescriptor];
        v98 = availableKeyDescriptor;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
        v37 = [v34 copyWithPropertyKeys:v36];
        v38 = [v37 mutableCopy];
        [(CNContactContentEditViewController *)self setShadowCopyOfReadonlyContact:v38];

        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v39 = +[CNContactView nameProperties];
        v40 = [v39 countByEnumeratingWithState:&v86 objects:v97 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v87;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v87 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v86 + 1) + 8 * i);
              if ([v31 isKeyAvailable:v44])
              {
                shadowCopyOfReadonlyContact = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];
                v46 = [v31 valueForKey:v44];
                [shadowCopyOfReadonlyContact setValue:v46 forKey:v44];
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v86 objects:v97 count:16];
          }

          while (v41);
        }

        v47 = MEMORY[0x1E695DF70];
        shadowCopyOfReadonlyContact2 = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];
        v49 = [v47 arrayWithObject:shadowCopyOfReadonlyContact2];

        if ([v31 isUnified])
        {
          linkedContacts = [v31 linkedContacts];
          [v49 addObjectsFromArray:linkedContacts];
        }

        else
        {
          [v49 addObject:v31];
        }

        v12 = v84;
        v51 = v83;
        v5 = [MEMORY[0x1E695CD58] unifyContacts:v49];

        contactViewCache5 = [(CNContactContentEditViewController *)self contactViewCache];
        policyForDefaultContainer = [contactViewCache5 policyForDefaultContainer];
        [(CNContactContentEditViewController *)self setPolicy:policyForDefaultContainer];

        policy = [(CNContactContentEditViewController *)self policy];

        if (!policy || v83)
        {
          mEMORY[0x1E695CF48] = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
          [(CNContactContentEditViewController *)self setPolicy:mEMORY[0x1E695CF48]];
        }

        v25 = v82;
        goto LABEL_33;
      }

      v5 = v31;
    }

    v12 = v84;
    v51 = v83;
LABEL_33:
  }

  objc_storeStrong(&self->_contact, v5);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v57 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    v57 = [v5 mutableCopy];
  }

  objc_storeStrong(&self->_mutableContact, v57);
  if ((isKindOfClass & 1) == 0)
  {
  }

  v58 = CNUILogContactCard();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    identifier4 = [v5 identifier];
    mutableContact = self->_mutableContact;
    *buf = 138543618;
    v94 = identifier4;
    v95 = 2050;
    v96 = mutableContact;
    _os_log_impl(&dword_199A75000, v58, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] setting contact with identifier %{public}@, mutable contact %{public}p", buf, 0x16u);
  }

  customActions = [(CNContactContentEditViewController *)self customActions];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __49__CNContactContentEditViewController_setContact___block_invoke_368;
  v85[3] = &unk_1E74E6AF8;
  v85[4] = self;
  v62 = [customActions _cn_filter:v85];
  [(CNContactContentEditViewController *)self setCustomActions:v62];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(CNContactContentEditViewController *)self setGroupsAfterGroup:dictionary];

  v64 = [[CNCardGroup alloc] initWithContact:self->_mutableContact];
  cardEditingActionsGroup = self->_cardEditingActionsGroup;
  self->_cardEditingActionsGroup = v64;

  v66 = [[CNCardGroup alloc] initWithContact:self->_mutableContact];
  cardEditingDeleteContactGroup = self->_cardEditingDeleteContactGroup;
  self->_cardEditingDeleteContactGroup = v66;

  propertyGroups = self->_propertyGroups;
  self->_propertyGroups = 0;

  siriContextProvider = [(CNContactContentEditViewController *)self siriContextProvider];
  LODWORD(v62) = [siriContextProvider isEnabled];

  v70 = [CNSiriContactContextProvider alloc];
  contactStore2 = [(CNContactContentEditViewController *)self contactStore];
  v72 = [(CNSiriContactContextProvider *)v70 initWithContact:v5 store:contactStore2];
  [(CNContactContentEditViewController *)self setSiriContextProvider:v72];

  if (v62)
  {
    siriContextProvider2 = [(CNContactContentEditViewController *)self siriContextProvider];
    [siriContextProvider2 setEnabled:1];
  }

  linkedCardsAction = self->_linkedCardsAction;
  self->_linkedCardsAction = 0;

  addLinkedCardAction = self->_addLinkedCardAction;
  self->_addLinkedCardAction = 0;

  cardStaticIdentityGroup = self->_cardStaticIdentityGroup;
  self->_cardStaticIdentityGroup = 0;

  addStaticIdentityAction = self->_addStaticIdentityAction;
  self->_addStaticIdentityAction = 0;

  [(CNContactContentEditViewController *)self setIgnoreContactAction:0];
  [(CNContactContentEditViewController *)self setCardMedicalIDGroup:0];
  [(CNContactContentEditViewController *)self setMedicalIDAction:0];
  [(CNContactContentEditViewController *)self setEmergencyContactAction:0];
  [(CNContactContentEditViewController *)self setCardEditingGeminiGroup:0];
  geminiDataSource = [(CNContactContentEditViewController *)self geminiDataSource];
  [geminiDataSource setContact:v5];

  if (self->_contactHeaderView)
  {
    contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
    [contactHeaderView updateWithNewContact:self->_mutableContact];
  }

  [(CNContactContentEditViewController *)self updateEditNavigationItemsAnimated:0];
  [(CNContactContentEditViewController *)self reloadDataPreservingChanges:0];
  v80 = +[CNUIDataCollector sharedCollector];
  contact = [(CNContactContentEditViewController *)self contact];
  [v80 logContactShown:contact];

  [(CNContactContentEditViewController *)self prepareContactDidAppearForPPT];
LABEL_45:
}

- (void)setupContainerContextIfNeededForContact:(id)contact
{
  v28 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if ([(CNContactContentEditViewController *)self shouldAllowContainerPicking])
  {
    containerContext = [(CNContactContentEditViewController *)self containerContext];

    if (!containerContext)
    {
      if ([contactCopy hasBeenPersisted])
      {
        identifier = [contactCopy identifier];
      }

      else
      {
        identifier = 0;
      }

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      if ([contactCopy isUnified])
      {
        v22 = identifier;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        mainStoreLinkedContacts = [contactCopy mainStoreLinkedContacts];
        v9 = [mainStoreLinkedContacts countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
          do
          {
            v12 = 0;
            do
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(mainStoreLinkedContacts);
              }

              v13 = *(*(&v23 + 1) + 8 * v12);
              contactViewCache = [(CNContactContentEditViewController *)self contactViewCache];
              v15 = [contactViewCache containerForContact:v13];

              identifier2 = [v13 identifier];
              [dictionary setObject:v15 forKeyedSubscript:identifier2];

              ++v12;
            }

            while (v10 != v12);
            v10 = [mainStoreLinkedContacts countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v10);
        }

        identifier = v22;
      }

      parentContainer = [(CNContactContentEditViewController *)self parentContainer];

      if (parentContainer && identifier)
      {
        parentContainer2 = [(CNContactContentEditViewController *)self parentContainer];
        [dictionary setObject:parentContainer2 forKeyedSubscript:identifier];
      }

      v19 = [[CNUIContainerContext alloc] initWithContainers:dictionary];
      parentContainer3 = [(CNContactContentEditViewController *)self parentContainer];

      if (parentContainer3 && !identifier)
      {
        parentContainer4 = [(CNContactContentEditViewController *)self parentContainer];
        [(CNUIContainerContext *)v19 addContainer:parentContainer4];
      }

      [(CNContactContentEditViewController *)self setContainerContext:v19];
    }
  }
}

- (BOOL)shouldAllowContainerPicking
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:13];

  if (v5)
  {
    parentContainer = [(CNContactContentEditViewController *)self parentContainer];
    v7 = [parentContainer isGuardianRestricted] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)prepareCell:(id)cell
{
  cellCopy = cell;
  contactView = [(CNContactContentEditViewController *)self contactView];
  [contactView applyCellAppearance:cellCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  v5 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([v7 displaysCellSelectionState])
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  [v7 setSelectionStyle:v8];
  labelTextAttributes = [contactView labelTextAttributes];
  valueTextAttributes = [contactView valueTextAttributes];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    actionTextAttributes = [contactView actionTextAttributes];

    labelTextAttributes = actionTextAttributes;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    view = [(CNContactContentEditViewController *)self view];
    tintColorOverride = [view tintColorOverride];
    suggestedLabelTextColor = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v5;
    if ([v21 supportsValueColorUsesLabelColor])
    {
      v22 = +[CNContactStyle currentStyle];
      tintColorOverride = [v22 textColor];
    }

    else
    {
      tintColorOverride = 0;
    }

    highlightedProperties = [(CNContactContentEditViewController *)self highlightedProperties];
    if ([highlightedProperties count])
    {
      [(CNContactContentEditViewController *)self highlightedProperties];
      v24 = v35 = isKindOfClass;
      [v21 propertyItem];
      v25 = v36 = highlightedProperties;
      [v25 contactProperty];
      v27 = v26 = v21;
      [v26 setHighlightedProperty:{objc_msgSend(v24, "containsObject:", v27)}];

      v21 = v26;
      highlightedProperties = v36;

      isKindOfClass = v35;
    }

    else
    {
      [v21 setHighlightedProperty:0];
    }

    if ([v21 isSuggested])
    {
      v28 = +[CNContactStyle currentStyle];
      suggestedLabelTextColor = [v28 suggestedLabelTextColor];

      view2 = +[CNContactStyle currentStyle];
      suggestedValueTextColor = [view2 suggestedValueTextColor];
    }

    else
    {
      if ([v21 isHighlightedProperty] && -[CNContactContentEditViewController highlightedPropertyImportant](self, "highlightedPropertyImportant"))
      {
        [v21 setImportant:{-[CNContactContentEditViewController highlightedPropertyImportant](self, "highlightedPropertyImportant")}];
        suggestedValueTextColor = [MEMORY[0x1E69DC888] redColor];
        suggestedLabelTextColor = 0;
        goto LABEL_37;
      }

      if ((-[CNContactContentEditViewController isEditing](self, "isEditing") & 1) != 0 || ![v21 supportsTintColorValue])
      {
        suggestedLabelTextColor = 0;
LABEL_45:
        if ([v21 isHighlightedProperty])
        {
          if (([v21 isImportant] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              v31 = v21;
              if (objc_opt_isKindOfClass())
              {
                v32 = v31;
              }

              else
              {
                v32 = 0;
              }

              v33 = v32;

              [v33 setShouldShowBadge:1];
            }
          }
        }

        if (!suggestedLabelTextColor)
        {
LABEL_14:
          if (tintColorOverride)
          {
            v16 = [valueTextAttributes mutableCopy];
            [v16 setObject:tintColorOverride forKeyedSubscript:*MEMORY[0x1E69DB650]];

            valueTextAttributes = v16;
          }

          if (isKindOfClass)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v34 = [labelTextAttributes mutableCopy];
        [v34 setObject:suggestedLabelTextColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
        view = labelTextAttributes;
        labelTextAttributes = v34;
LABEL_13:

        goto LABEL_14;
      }

      view2 = [(CNContactContentEditViewController *)self view];
      suggestedValueTextColor = [view2 tintColorOverride];

      suggestedLabelTextColor = 0;
    }

    tintColorOverride = view2;
LABEL_37:

    tintColorOverride = suggestedValueTextColor;
    goto LABEL_45;
  }

  suggestedLabelTextColor = 0;
  if (isKindOfClass)
  {
    goto LABEL_18;
  }

LABEL_17:
  labelTextAttributes2 = [v7 labelTextAttributes];
  v18 = [labelTextAttributes2 isEqual:labelTextAttributes];

  if ((v18 & 1) == 0)
  {
LABEL_18:
    [v7 setLabelTextAttributes:labelTextAttributes];
  }

  valueTextAttributes2 = [v7 valueTextAttributes];
  v20 = [valueTextAttributes2 isEqual:valueTextAttributes];

  if ((v20 & 1) == 0)
  {
    [v7 setValueTextAttributes:valueTextAttributes];
  }

LABEL_22:
}

- (void)contentSizeCategoryDidChange:(id)change
{
  [(CNContactView *)self->_contactView updateFontSizes];
  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  [contactHeaderView updateFontSizes];

  [(CNContactContentEditViewController *)self viewDidLayoutSubviews];
  [(CNContactContentEditViewController *)self reloadDataPreservingChanges:1];
  [(CNContactContentEditViewController *)self setupConstraints];
  applyContactStyle = [(CNContactContentEditViewController *)self applyContactStyle];
}

- (BOOL)isOutOfProcess
{
  contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
  isOutOfProcess = [contactViewConfiguration isOutOfProcess];

  return isOutOfProcess;
}

- (CNContactView)contactView
{
  contactView = self->_contactView;
  if (!contactView)
  {
    v4 = [CNContactView alloc];
    contact = [(CNContactContentEditViewController *)self contact];
    v6 = [(CNContactView *)v4 initWithFrame:contact contact:0.0, 0.0, 320.0, 200.0];
    v7 = self->_contactView;
    self->_contactView = v6;

    [(CNContactView *)self->_contactView setEditing:1];
    [(CNContactView *)self->_contactView setDataSource:self];
    [(CNContactView *)self->_contactView setDelegate:self];
    [(CNContactView *)self->_contactView _setHeaderAndFooterViewsFloat:0];
    [(CNContactView *)self->_contactView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactView *)self->_contactView setKeyboardDismissMode:1];
    contactView = self->_contactView;
  }

  return contactView;
}

- (BOOL)isHeaderViewPhotoProhibited
{
  prohibitedPropertyKeys = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
  if ([prohibitedPropertyKeys containsObject:*MEMORY[0x1E695C278]])
  {
    v4 = 1;
  }

  else
  {
    prohibitedPropertyKeys2 = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
    v4 = [prohibitedPropertyKeys2 containsObject:*MEMORY[0x1E695C400]];
  }

  return v4;
}

- (CNContactHeaderEditView)contactHeaderView
{
  contactHeaderView = self->_contactHeaderView;
  if (!contactHeaderView)
  {
    isHeaderViewPhotoProhibited = [(CNContactContentEditViewController *)self isHeaderViewPhotoProhibited];
    if ([(CNContactContentEditViewController *)self shouldDrawNavigationBar])
    {
      layoutPositionallyAfterNavBar = 1;
    }

    else
    {
      contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
      layoutPositionallyAfterNavBar = [contactViewConfiguration layoutPositionallyAfterNavBar];
    }

    mutableContact = [(CNContactContentEditViewController *)self mutableContact];
    v8 = [CNContactHeaderEditView contactHeaderViewWithContact:mutableContact shouldAllowTakePhotoAction:1 showingNavBar:layoutPositionallyAfterNavBar monogramOnly:isHeaderViewPhotoProhibited isOutOfProcess:[(CNContactContentEditViewController *)self isOutOfProcess] delegate:self];
    v9 = self->_contactHeaderView;
    self->_contactHeaderView = v8;

    presentingDelegate = [(CNContactContentEditViewController *)self presentingDelegate];
    [(CNContactHeaderEditView *)self->_contactHeaderView setPresenterDelegate:presentingDelegate];

    v11 = +[CNContactStyle currentStyle];
    contactHeaderBackgroundColor = [v11 contactHeaderBackgroundColor];
    [(CNContactHeaderEditView *)self->_contactHeaderView setBackgroundColor:contactHeaderBackgroundColor];

    [(CNContactHeaderEditView *)self->_contactHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    contactViewConfiguration2 = [(CNContactContentEditViewController *)self contactViewConfiguration];
    -[CNContactHeaderEditView setAllowsEditPhoto:](self->_contactHeaderView, "setAllowsEditPhoto:", [contactViewConfiguration2 allowsEditPhoto] & !isHeaderViewPhotoProhibited);

    applyContactStyle = [(CNContactContentEditViewController *)self applyContactStyle];
    contactHeaderView = self->_contactHeaderView;
  }

  return contactHeaderView;
}

- (void)contactViewConfigurationDidUpdate
{
  [(CNContactContentEditViewController *)self reloadDataIfNeeded];
  contactHeaderView = [(CNContactContentEditViewController *)self contactHeaderView];
  contactViewConfiguration = [(CNContactContentEditViewController *)self contactViewConfiguration];
  [contactHeaderView updateForShowingNavBar:{objc_msgSend(contactViewConfiguration, "layoutPositionallyAfterNavBar")}];

  contactHeaderView2 = [(CNContactContentEditViewController *)self contactHeaderView];
  mutableContact = [(CNContactContentEditViewController *)self mutableContact];
  [contactHeaderView2 updateWithNewContact:mutableContact];

  [(CNContactContentEditViewController *)self updateEditNavigationItemsAnimated:0];
  applyContactStyle = [(CNContactContentEditViewController *)self applyContactStyle];
  contactHeaderView3 = [(CNContactContentEditViewController *)self contactHeaderView];
  contactViewConfiguration2 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  [contactHeaderView3 setAllowsEditPhoto:objc_msgSend(contactViewConfiguration2 preservingChanges:{"allowsEditPhoto"), 0}];
}

- (void)dealloc
{
  [(CNContactView *)self->_contactView setDelegate:0];
  [(CNContactView *)self->_contactView setDataSource:0];
  [(CNContactHeaderView *)self->_contactHeaderView setDelegate:0];
  [(CNContactHeaderEditView *)self->_contactHeaderView didFinishUsing];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v4 dealloc];
}

- (void)setForcesTransparentBackground:(BOOL)background
{
  if (self->_forcesTransparentBackground != background)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_forcesTransparentBackground = background;
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    schedulerProvider = [currentEnvironment schedulerProvider];
    mainThreadScheduler = [schedulerProvider mainThreadScheduler];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__CNContactContentEditViewController_setForcesTransparentBackground___block_invoke;
    v9[3] = &unk_1E74E6A88;
    v9[4] = self;
    [mainThreadScheduler performBlock:v9];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (titleCopy || ([(CNContactContentEditViewController *)self title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    title = [(CNContactContentEditViewController *)self title];
    v7 = [titleCopy isEqual:title];

    if (!titleCopy)
    {

      if (v7)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if ((v7 & 1) == 0)
    {
LABEL_5:
      v8.receiver = self;
      v8.super_class = CNContactContentEditViewController;
      [(CNContactContentEditViewController *)&v8 setTitle:titleCopy];
      [(CNContactContentEditViewController *)self didChangeToShowTitle:titleCopy != 0];
    }
  }

LABEL_6:
}

- (void)setContactStore:(id)store
{
  objc_storeStrong(&self->_contactStore, store);
  storeCopy = store;
  contactViewCache = [(CNContactContentEditViewController *)self contactViewCache];
  [contactViewCache setContactStore:storeCopy];
}

- (CNContactContentEditViewController)initWithContact:(id)contact contactViewConfiguration:(id)configuration
{
  contactCopy = contact;
  configurationCopy = configuration;
  v8 = [(CNContactContentEditViewController *)self initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(CNContactContentEditViewController *)v8 setContact:contactCopy];
    [(CNContactContentEditViewController *)v9 setContactViewConfiguration:configurationCopy];
  }

  return v9;
}

- (CNContactContentEditViewController)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v38.receiver = self;
  v38.super_class = CNContactContentEditViewController;
  v6 = [(CNContactContentEditViewController *)&v38 initWithNibName:0 bundle:0];
  objc_storeStrong(&v6->_environment, environment);
  v7 = objc_alloc_init(CNContactViewCache);
  contactViewCache = v6->_contactViewCache;
  v6->_contactViewCache = v7;

  if ([MEMORY[0x1E695CEB0] deviceSupportsGemini])
  {
    v9 = objc_alloc(MEMORY[0x1E6996B60]);
    v10 = +[CNUIContactsEnvironment currentEnvironment];
    geminiManager = [v10 geminiManager];
    v12 = [v9 initWithGeminiManager:geminiManager];
    geminiDataSource = v6->_geminiDataSource;
    v6->_geminiDataSource = v12;

    [(CNUIGeminiDataSource *)v6->_geminiDataSource setDelegate:v6];
  }

  v14 = *(MEMORY[0x1E69DDCE0] + 16);
  *&v6->_peripheryInsets.top = *MEMORY[0x1E69DDCE0];
  *&v6->_peripheryInsets.bottom = v14;
  objc_storeWeak(&v6->_presentingDelegate, v6);
  mEMORY[0x1E695CD80] = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  contactFormatter = v6->_contactFormatter;
  v6->_contactFormatter = mEMORY[0x1E695CD80];

  inProcessActivityManager = [environmentCopy inProcessActivityManager];
  activityManager = v6->_activityManager;
  v6->_activityManager = inProcessActivityManager;

  array = [MEMORY[0x1E695DEC8] array];
  customActions = v6->_customActions;
  v6->_customActions = array;

  v21 = objc_alloc_init(CNUIContactStoreSaveExecutor);
  saveContactExecutor = v6->_saveContactExecutor;
  v6->_saveContactExecutor = v21;

  v23 = objc_alloc_init(CNUIContactStoreLinkedContactSaveExecutor);
  saveLinkedContactsExecutor = v6->_saveLinkedContactsExecutor;
  v6->_saveLinkedContactsExecutor = v23;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v6 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:v6 selector:sel_localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:v6 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E695C3D8] object:0];

  defaultCenter4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter4 addObserver:v6 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E6996440] object:0 suspensionBehavior:4];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 addObserver:v6 selector:sel_keyboardDidShowNotification_ name:*MEMORY[0x1E69DDF78] object:0];

  defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter6 addObserver:v6 selector:sel_keyboardWillHideNotification_ name:*MEMORY[0x1E69DE078] object:0];

  defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter7 addObserver:v6 selector:sel_favoritesDidChangeWithNotification_ name:*MEMORY[0x1E695C458] object:0];

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6->_supportsDrafts = [featureFlags isFeatureEnabled:31];

  [(CNContactContentEditViewController *)v6 setRestorationIdentifier:@"ContactCard"];
  [(CNContactContentEditViewController *)v6 setRestorationClass:objc_opt_class()];
  navigationItem = [(CNContactContentEditViewController *)v6 navigationItem];
  [navigationItem _setBackgroundHidden:1];

  navigationItem2 = [(CNContactContentEditViewController *)v6 navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:2];

  applyContactStyle = [(CNContactContentEditViewController *)v6 applyContactStyle];
  return v6;
}

- (CNContactContentEditViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = [CNUIContactsEnvironment currentEnvironment:name];
  v6 = [(CNContactContentEditViewController *)self initWithEnvironment:v5];

  return v6;
}

+ (CNContactContentEditViewController)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder
{
  v27[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v6 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v7 = MEMORY[0x1E695CD58];
  v8 = +[CNContactContentEditViewController descriptorForRequiredKeys];
  v27[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v10 = [v7 contactWithStateRestorationCoder:coderCopy store:v6 keys:v9];

  if (v10)
  {
    v21 = v6;
    v11 = [[CNContactContentViewControllerConfiguration alloc] initForOutOfProcess:0];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    bOOLStateRestorationProperties = [self BOOLStateRestorationProperties];
    v13 = [bOOLStateRestorationProperties countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(bOOLStateRestorationProperties);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v17];
          if (v18)
          {
            [v11 setValue:v18 forKey:v17];
          }
        }

        v14 = [bOOLStateRestorationProperties countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    v19 = [[CNContactContentEditViewController alloc] initWithContact:v10 contactViewConfiguration:v11];
    v6 = v21;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (BOOL)shouldShowGeminiForResult:(id)result contact:(id)contact
{
  resultCopy = result;
  if (resultCopy)
  {
    phoneNumbers = [contact phoneNumbers];
    if ([phoneNumbers count] && objc_msgSend(MEMORY[0x1E695CEB0], "deviceSupportsGemini"))
    {
      availableChannels = [resultCopy availableChannels];
      if ([availableChannels count] > 1)
      {
        v9 = 1;
LABEL_13:

LABEL_14:
        goto LABEL_15;
      }

      channel = [resultCopy channel];
      v10 = 1;
      v9 = 1;
      if (![channel isAvailable])
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
    }

    channel2 = [resultCopy channel];
    v9 = ([channel2 isAvailable] & 1) == 0 && objc_msgSend(resultCopy, "usage") == 1;

    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

+ (void)_telemetryForContact:(id)contact
{
  v38[3] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v37[0] = @"PhoneNumbers";
  v4 = MEMORY[0x1E696AD98];
  phoneNumbers = [contactCopy phoneNumbers];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(phoneNumbers, "count")}];
  v38[0] = v6;
  v37[1] = @"EmailAddresses";
  v7 = MEMORY[0x1E696AD98];
  emailAddresses = [contactCopy emailAddresses];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(emailAddresses, "count")}];
  v38[1] = v9;
  v37[2] = @"PostalAddresses";
  v10 = MEMORY[0x1E696AD98];
  postalAddresses = [contactCopy postalAddresses];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(postalAddresses, "count")}];
  v38[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];

  note = [contactCopy note];
  v15 = [note length];

  if (v15 >> 11 >= 5)
  {
    v16 = _LargeDatabasesLowSeveritySignpostLogHandle();
    if (os_signpost_enabled(v16))
    {
      note2 = [contactCopy note];
      *buf = 134349056;
      v33 = [note2 length];
      _os_signpost_emit_with_name_impl(&dword_199A75000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LongContactNoteLength", " enableTelemetry=YES %{public, signpost.telemetry:number1, name=NoteLength}lu", buf, 0xCu);
    }
  }

  v27 = contactCopy;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v13;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * i);
        v24 = [v18 objectForKeyedSubscript:v23];
        unsignedIntegerValue = [v24 unsignedIntegerValue];

        if (unsignedIntegerValue >= 0xA)
        {
          v26 = _LargeDatabasesLowSeveritySignpostLogHandle();
          if (os_signpost_enabled(v26))
          {
            *buf = 138543618;
            v33 = v23;
            v34 = 2050;
            v35 = unsignedIntegerValue;
            _os_signpost_emit_with_name_impl(&dword_199A75000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HighContactAttributeCount", " enableTelemetry=YES %{public, signpost.telemetry:string1, name=Label}@ %{public, signpost.telemetry:number1, name=LabelCount}lu", buf, 0x16u);
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }
}

+ (BOOL)enablesTransportButtons
{
  if (enablesTransportButtons_s_onceToken != -1)
  {
    dispatch_once(&enablesTransportButtons_s_onceToken, &__block_literal_global_22699);
  }

  return enablesTransportButtons_s_enableTransportButtons;
}

uint64_t __61__CNContactContentEditViewController_enablesTransportButtons__block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"CNEnableTransportButtons", *MEMORY[0x1E695E890], 0);
  enablesTransportButtons_s_enableTransportButtons = result != 0;
  return result;
}

+ (id)descriptorForRequiredKeysWithDescription:(id)description
{
  descriptionCopy = description;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CNContactContentEditViewController_descriptorForRequiredKeysWithDescription___block_invoke;
  block[3] = &unk_1E74E6A88;
  v10 = descriptionCopy;
  v4 = descriptorForRequiredKeysWithDescription__cn_once_token_13;
  v5 = descriptionCopy;
  if (v4 != -1)
  {
    dispatch_once(&descriptorForRequiredKeysWithDescription__cn_once_token_13, block);
  }

  v6 = descriptorForRequiredKeysWithDescription__cn_once_object_13;
  v7 = descriptorForRequiredKeysWithDescription__cn_once_object_13;

  return v6;
}

void __79__CNContactContentEditViewController_descriptorForRequiredKeysWithDescription___block_invoke(uint64_t a1)
{
  v13[49] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CEB0] descriptorForRequiredKeys];
  v3 = *MEMORY[0x1E695C200];
  v13[45] = v2;
  v13[46] = v3;
  v4 = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  v5 = [v4 descriptorForRequiredKeys];
  v13[47] = v5;
  v6 = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  v7 = [CNContactHeaderDisplayView descriptorForRequiredKeysForContactFormatter:v6];
  v13[48] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:49];

  v9 = +[CNSiriContactContextProvider descriptorForRequiredKeys];
  if (v9)
  {
    v10 = [v8 arrayByAddingObject:v9];

    v8 = v10;
  }

  v11 = [MEMORY[0x1E695CD58] descriptorWithKeyDescriptors:v8 description:*(a1 + 32)];

  v12 = descriptorForRequiredKeysWithDescription__cn_once_object_13;
  descriptorForRequiredKeysWithDescription__cn_once_object_13 = v11;
}

+ (id)descriptorForRequiredKeys
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentEditViewController descriptorForRequiredKeys]"];
  v4 = [self descriptorForRequiredKeysWithDescription:v3];

  return v4;
}

+ (id)descriptorForRequiredKeysForContact:(id)contact
{
  v12[2] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  descriptorForRequiredKeys = [self descriptorForRequiredKeys];
  availableKeyDescriptor = [contactCopy availableKeyDescriptor];

  v12[0] = descriptorForRequiredKeys;
  v12[1] = availableKeyDescriptor;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = MEMORY[0x1E695CD58];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentEditViewController descriptorForRequiredKeysForContact:]"];
  v10 = [v8 descriptorWithKeyDescriptors:v7 description:v9];

  return v10;
}

@end