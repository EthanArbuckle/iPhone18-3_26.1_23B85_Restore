@interface CNContactContentEditViewController
+ (BOOL)enablesTransportButtons;
+ (BOOL)shouldShowGeminiForResult:(id)a3 contact:(id)a4;
+ (CNContactContentEditViewController)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4;
+ (id)descriptorForRequiredKeys;
+ (id)descriptorForRequiredKeysForContact:(id)a3;
+ (id)descriptorForRequiredKeysWithDescription:(id)a3;
+ (void)_telemetryForContact:(id)a3;
- (BOOL)_indexPathIsActionItem:(id)a3 forTableView:(id)a4;
- (BOOL)_modelHasChanges;
- (BOOL)_modelIsEmpty;
- (BOOL)hasPendingChanges;
- (BOOL)isHeaderViewPhotoProhibited;
- (BOOL)isNicknameProhibited;
- (BOOL)isOutOfProcess;
- (BOOL)isPresentingModalViewController;
- (BOOL)isScrollViewControllingHeaderResizeAnimation:(id)a3;
- (BOOL)isStandardGroup:(id)a3;
- (BOOL)isSuggestedContact;
- (BOOL)performSave;
- (BOOL)reloadDataIfNeeded;
- (BOOL)saveChanges;
- (BOOL)shouldAllowContainerPicking;
- (BOOL)shouldDisplayAvatarHeaderView;
- (BOOL)shouldReallyShowLinkedContacts;
- (BOOL)shouldShowGemini;
- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldHaveFullLengthBottomSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (CGSize)requiredSizeForVisibleTableView;
- (CGSize)setupTableHeaderView;
- (CNContactContentEditViewController)initWithContact:(id)a3 contactViewConfiguration:(id)a4;
- (CNContactContentEditViewController)initWithEnvironment:(id)a3;
- (CNContactContentEditViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CNContactContentEditViewControllerDelegate)delegate;
- (CNContactContentNavigationItemDelegate)navigationItemDelegate;
- (CNContactHeaderEditView)contactHeaderView;
- (CNContactView)contactView;
- (CNPresenterDelegate)presentingDelegate;
- (Class)groupClassForProperty:(id)a3;
- (NSArray)originalContacts;
- (UIEdgeInsets)headerViewSafeAreaInsets;
- (UIEdgeInsets)insetsForContactTableView:(id)a3;
- (UIEdgeInsets)peripheryInsets;
- (UIEdgeInsets)scrollIndicatorInsetsForContactTableView:(id)a3 withContentInsets:(UIEdgeInsets)a4;
- (UINavigationItem)effectiveNavigationItem;
- (double)desiredHeightForWidth:(double)a3;
- (double)globalHeaderHeightForContentOffset:(double)a3 contentInset:(UIEdgeInsets)a4;
- (double)navigationBarHeight;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)updateHeaderConstraintForGlobalHeaderHeight:(double)a3 direction:(int64_t)a4 animated:(BOOL)a5;
- (id)_addGroupsInArray:(id)a3 afterGroup:(id)a4;
- (id)_addLinkedCardAction;
- (id)_addNewFieldAction;
- (id)_cardGroupAtTableViewSectionIndex:(int64_t)a3 forTableView:(id)a4;
- (id)_cellForIndexPath:(id)a3 forTableView:(id)a4;
- (id)_cellIdentifierForTableView:(id)a3 indexPath:(id)a4;
- (id)_currentTopVisibleGroupInContactView:(id)a3;
- (id)_itemAtIndexPath:(id)a3 forTableView:(id)a4;
- (id)_labelWidthKeyForGroup:(id)a3;
- (id)_linkedCardsAction;
- (id)_loadEditingGroupsPreservingChanges:(BOOL)a3;
- (id)_loadNameEditingGroups;
- (id)_loadPropertyGroups;
- (id)_phoneticNameForValue:(id)a3 currentPhoneticName:(id)a4 property:(id)a5;
- (id)_policyForContact:(id)a3 mode:(int64_t)a4;
- (id)_propertyGroupsForKeys:(id)a3;
- (id)_removeUnauthorizedKeysFromContact:(id)a3;
- (id)_selectContainersAction;
- (id)_updateContact:(id)a3 withMissingKeysFromRequiredKeys:(id)a4;
- (id)action:(id)a3 cellForPropertyItem:(id)a4 sender:(id)a5;
- (id)alreadyPickedGroups;
- (id)applyContactStyle;
- (id)cardGroupForProperty:(id)a3;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (id)indexPathOfPropertyItem:(id)a3 editing:(BOOL)a4;
- (id)saveDescriptionForCurrentState;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)_modalPresentationStyleForViewController:(id)a3;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)sectionOfGroup:(id)a3 inTableView:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addGroup:(id)a3 afterGroup:(id)a4 forTableView:(id)a5 animated:(BOOL)a6;
- (void)_addMedicalIDGroupAnimated:(BOOL)a3 forTableView:(id)a4;
- (void)_addedGroupWithName:(id)a3;
- (void)_didCompleteWithContact:(id)a3;
- (void)_refetchContact;
- (void)_reloadContainerContextPreservingChanges:(BOOL)a3;
- (void)_reloadGeminiGroupPreservingChanges:(BOOL)a3;
- (void)_reloadLinkedCardsGroup;
- (void)_reloadMedicalIDGroup;
- (void)_reloadPropertyGroupsPreservingChanges:(BOOL)a3;
- (void)_reloadStaticIdentityGroup;
- (void)_saveChangesForGroups:(id)a3;
- (void)_scrollContactView:(id)a3 toVisibleGroup:(id)a4;
- (void)_setNeedsUpdateCachedLabelWidths;
- (void)_setupEditingCardActions;
- (void)_setupEditingLinkedContactsForKeys:(id)a3;
- (void)_setupSuggestionActions;
- (void)_updateCachedLabelWidths;
- (void)_updateCachedLabelWidthsForGroup:(id)a3;
- (void)_updateCachedLabelWidthsForItem:(id)a3;
- (void)_updateCachedLabelWidthsIfNeeded;
- (void)_updateLabelWidthForCell:(id)a3;
- (void)_updateLabelWidthForCellsInGroup:(id)a3 forTableView:(id)a4 reset:(BOOL)a5;
- (void)_updateLabelWidthsForAllVisibleCells;
- (void)_updateUserActivity;
- (void)_validateGroup:(id)a3;
- (void)action:(id)a3 dismissViewController:(id)a4 sender:(id)a5;
- (void)action:(id)a3 prepareChildContactViewController:(id)a4 sender:(id)a5;
- (void)action:(id)a3 presentViewController:(id)a4 sender:(id)a5;
- (void)action:(id)a3 pushViewController:(id)a4 sender:(id)a5;
- (void)actionDidFinish:(id)a3;
- (void)actionWasCanceled:(id)a3;
- (void)addCardGroup:(id)a3 afterGroup:(id)a4;
- (void)addEditingItemAtIndexPath:(id)a3 forTableView:(id)a4;
- (void)addLinkedContact:(id)a3;
- (void)addStaticIdentity:(id)a3;
- (void)adjustInsetsForKeyboardOverlap:(double)a3;
- (void)cancelAsyncLookups;
- (void)cleanupRecentImageMetadata;
- (void)cleanupRecentMetadata;
- (void)cleanupRecentPosterMetadata;
- (void)clearMapsDataIfEdited;
- (void)contactGroupPickerDidCancel:(id)a3;
- (void)contactGroupPickerDidFinish:(id)a3 withGroup:(id)a4;
- (void)contactStoreDidChangeWithNotification:(id)a3;
- (void)contactViewConfigurationDidUpdate;
- (void)contactViewController:(id)a3 didDeleteContact:(id)a4;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)createCardEditingContactContainerGroupIfNeeded;
- (void)createCardEditingGeminiGroupIfNeeded;
- (void)createdNewContact:(id)a3;
- (void)dealloc;
- (void)didChangeToEditMode:(BOOL)a3;
- (void)didChangeToShowTitle:(BOOL)a3;
- (void)editCancel:(id)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)finishEditing:(id)a3;
- (void)focusOnFirstEditingItemIfNeeded;
- (void)focusOnLastEditingItemInGroup:(id)a3;
- (void)geminiDataSourceDidUpdate:(id)a3;
- (void)headerPhotoDidUpdate;
- (void)headerViewDidChangeHeight:(id)a3;
- (void)initializeTableViewsForHeaderHeight;
- (void)keyboardDidShowNotification:(id)a3;
- (void)loadContactViewControllerViews;
- (void)loadView;
- (void)performConfirmedCancel;
- (void)prepareCell:(id)a3;
- (void)prepareContactDidAppearForPPT;
- (void)presentConfirmCancelAlertController;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)propertyCell:(id)a3 didDeleteLabel:(id)a4 forGroup:(id)a5;
- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewLabel:(id)a5;
- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewValue:(id)a5;
- (void)propertyCell:(id)a3 performActionForItem:(id)a4 withTransportType:(int64_t)a5;
- (void)propertyCellDidChangeLayout:(id)a3;
- (void)propertyItem:(id)a3 willChangeValue:(id)a4;
- (void)reloadCardGroup:(id)a3 forTableView:(id)a4;
- (void)reloadDataPreservingChanges:(BOOL)a3;
- (void)reloadUnifiedContact;
- (void)removeEditingItem:(id)a3 atIndexPath:(id)a4 forTableView:(id)a5;
- (void)removeLinkedContact:(id)a3;
- (void)saveModelChangesToContact;
- (void)saveNewContactDraft;
- (void)scrollScrollViewAllTheWayUp:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (void)sender:(id)a3 presentViewController:(id)a4;
- (void)setBackgroundColorIfNeededForPresentedViewController:(id)a3;
- (void)setCancelKeyboardShortcutEnabled:(BOOL)a3;
- (void)setContact:(id)a3;
- (void)setContactStore:(id)a3;
- (void)setForcesTransparentBackground:(BOOL)a3;
- (void)setMenuProviderForCell:(id)a3 forActionGroupItem:(id)a4;
- (void)setSaveKeyboardShortcutEnabled:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setupConstraints;
- (void)setupContainerContextIfNeededForContact:(id)a3;
- (void)setupViewHierarchyIncludingAvatarHeader:(BOOL)a3;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)updateContact:(id)a3;
- (void)updateContactsViewWithBlock:(id)a3 completion:(id)a4;
- (void)updateDoneButton;
- (void)updateEditNavigationItemsAnimated:(BOOL)a3;
- (void)updateEditPhotoButtonIfNeeded;
- (void)updateHeaderHeightToMatchScrollViewState:(id)a3 scrollDirection:(int64_t)a4 animated:(BOOL)a5;
- (void)updateInsetsIfNeededForTableView:(id)a3;
- (void)updateOutOfProcessFullscreenPresentationIfNeeded;
- (void)updateTableView:(id)a3 contentInsetsTo:(UIEdgeInsets)a4 withScrollIndicatorInsets:(UIEdgeInsets)a5;
- (void)updateUserActivityState:(id)a3;
- (void)updateViewConstraints;
- (void)updateWindowTitleForAppearing:(BOOL)a3;
- (void)updatedExistingContact:(id)a3;
- (void)viewController:(id)a3 presentationControllerWillDismiss:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
    v4 = +[CNUIColorRepository transparentBackgroundColor];
  }

  else
  {
    v5 = [v3 backgroundColor];

    if (!v5)
    {
      goto LABEL_6;
    }

    v4 = [v3 backgroundColor];
  }

  v6 = v4;
  v7 = [(CNContactContentEditViewController *)self contactView];
  [v7 setBackgroundColor:v6];

LABEL_6:
  v8 = [v3 sectionBackgroundColor];
  v9 = [(CNContactContentEditViewController *)self contactView];
  [v9 setSectionBackgroundColor:v8];

  v10 = [v3 separatorColor];
  v11 = [(CNContactContentEditViewController *)self contactView];
  [v11 setSeparatorColor:v10];

  v12 = [v3 selectedCellBackgroundColor];
  v13 = [(CNContactContentEditViewController *)self contactView];
  [v13 setSelectedCellBackgroundColor:v12];

  v14 = MEMORY[0x1E695DF90];
  v15 = [(CNContactContentEditViewController *)self contactView];
  v16 = [v15 valueTextAttributes];
  v17 = [v14 dictionaryWithDictionary:v16];

  v18 = *MEMORY[0x1E69DB650];
  v33[0] = *MEMORY[0x1E69DB650];
  v19 = [v3 textColor];
  v33[1] = @"ABNotesTextColorAttributeName";
  v34[0] = v19;
  v20 = [v3 notesTextColor];
  v34[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  [v17 addEntriesFromDictionary:v21];

  v22 = [(CNContactContentEditViewController *)self contactView];
  [v22 setValueTextAttributes:v17];

  if ([(CNContactContentEditViewController *)self forcesTransparentBackground])
  {
    v23 = +[CNUIColorRepository transparentBackgroundColor];
  }

  else
  {
    v24 = [(CNContactContentEditViewController *)self environment];
    v25 = [v24 runningInContactsAppOniPad];

    if (v25)
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
  v28 = [v3 textColor];
  v32 = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [contactHeaderView cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v29];

  return v3;
}

- (void)updateTableView:(id)a3 contentInsetsTo:(UIEdgeInsets)a4 withScrollIndicatorInsets:(UIEdgeInsets)a5
{
  bottom = a5.bottom;
  right = a5.right;
  left = a5.left;
  top = a5.top;
  v7 = a4.right;
  v8 = a4.bottom;
  v9 = a4.left;
  v10 = a4.top;
  v19 = a3;
  [v19 contentInset];
  v12 = v10 - v11;
  [v19 contentOffset];
  v14 = v13;
  v16 = v15 - v12;
  [v19 setContentInset:{v10, v9, v8, v7}];
  [v19 setScrollIndicatorInsets:{top, left, bottom, right}];
  [v19 setContentOffset:{v14, v16}];
}

- (UIEdgeInsets)scrollIndicatorInsetsForContactTableView:(id)a3 withContentInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  left = a4.left;
  top = a4.top;
  v8 = a3;
  [v8 _systemContentInset];
  v10 = top + v9;
  [(CNContactContentEditViewController *)self keyboardVerticalOverlap];
  v12 = v11;
  [v8 _systemContentInset];
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

- (UIEdgeInsets)insetsForContactTableView:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v5 minHeight];
  v7 = v6;

  v8 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v8 maxHeight];
  v10 = v9;

  if (v10 == 0.0)
  {
    v12 = *MEMORY[0x1E69DDCE0];
    v25 = *(MEMORY[0x1E69DDCE0] + 8);
    v49 = *(MEMORY[0x1E69DDCE0] + 16);
    v27 = *(MEMORY[0x1E69DDCE0] + 24);
    goto LABEL_18;
  }

  [v4 _systemContentInset];
  v12 = v10 - v11;
  [v4 bounds];
  v14 = v10 - v7 + v13;
  [v4 _systemContentInset];
  v16 = v14 - v15 - v12;
  [v4 _systemContentInset];
  v18 = v17;
  [(CNContactContentEditViewController *)self keyboardVerticalOverlap];
  if (v18 >= v19)
  {
    v19 = v18;
  }

  v20 = v16 - v19;
  [v4 contentSize];
  v22 = 0.0;
  if (v20 - v21 >= 0.0)
  {
    v23 = v20 - v21;
  }

  else
  {
    v23 = 0.0;
  }

  [v4 contentInset];
  v25 = v24;
  v27 = v26;
  [(CNContactContentEditViewController *)self keyboardVerticalOverlap];
  if (v28 > 0.0)
  {
    v29 = [(CNContactContentEditViewController *)self view];
    v30 = [v29 window];
    if (v30)
    {
      v31 = v30;
      v32 = [(CNContactContentEditViewController *)self view];
      v33 = [v32 window];
      [v33 bounds];
      v35 = v34;
      [v4 bounds];
      v37 = v36;

      if (v35 <= v37)
      {
LABEL_12:
        [(CNContactContentEditViewController *)self keyboardVerticalOverlap];
        v46 = v45;
        [v4 _systemContentInset];
        v48 = v22 + v46 - v47;
        goto LABEL_15;
      }

      v38 = [(CNContactContentEditViewController *)self view];
      v39 = [v38 window];
      [v39 bounds];
      v41 = v40;
      [v4 bounds];
      v43 = v41 - v42;

      v29 = [(CNContactContentEditViewController *)self contactHeaderView];
      [v29 minTitleOffset];
      v22 = v43 - v44;
    }

    goto LABEL_12;
  }

  [v4 _systemContentInset];
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
  v11 = [(CNContactContentEditViewController *)self contactView];
  [v11 layoutIfNeeded];
  v3 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v3 calculateLabelSizesIfNeeded];

  v4 = [(CNContactContentEditViewController *)self headerHeightConstraint];
  [v4 constant];
  v6 = v5;
  v7 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v7 minHeight];
  if (v6 > v8)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = [(CNContactContentEditViewController *)self headerDropShadowView];
  [v10 setAlpha:v9];

  [(CNContactContentEditViewController *)self updateInsetsIfNeededForTableView:v11];
  [(CNContactContentEditViewController *)self updateHeaderHeightToMatchScrollViewState:v11 scrollDirection:2 animated:0];
}

- (void)updateInsetsIfNeededForTableView:(id)a3
{
  v40 = a3;
  [(CNContactContentEditViewController *)self keyboardVerticalOverlap];
  if (v4 <= 0.0 || (-[CNContactContentEditViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 bounds], v7 = v6, v5, v7 <= 0.0))
  {
    v14 = [(CNContactContentEditViewController *)self contactHeaderView];
    v15 = [(CNContactContentEditViewController *)self contactHeaderView];
    [v15 maxHeight];
    v18 = v14;
    v17 = 0;
  }

  else
  {
    v8 = [(CNContactContentEditViewController *)self view];
    [v8 bounds];
    v10 = v9;
    [(CNContactContentEditViewController *)self keyboardVerticalOverlap];
    v12 = v10 - v11 + -64.0;

    v13 = fmax(v12, 0.0);
    v14 = [(CNContactContentEditViewController *)self contactHeaderView];
    v15 = [(CNContactContentEditViewController *)self contactHeaderView];
    [v15 maxHeight];
    v17 = v13 <= v16;
    v18 = v14;
    v19 = v13;
  }

  [v18 setConstrainedMaxHeight:v17 enabled:v19];

  [v40 contentInset];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(CNContactContentEditViewController *)self insetsForContactTableView:v40];
  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  if (v29 != v23 || v28 != v21 || v31 != v27 || v30 != v25)
  {
    [(CNContactContentEditViewController *)self scrollIndicatorInsetsForContactTableView:v40 withContentInsets:v28, v29, v30, v31];
    [(CNContactContentEditViewController *)self updateTableView:v40 contentInsetsTo:v32 withScrollIndicatorInsets:v33, v34, v35, v36, v37, v38, v39];
  }
}

- (void)scrollScrollViewAllTheWayUp:(id)a3
{
  v8 = a3;
  [v8 contentOffset];
  v4 = v3;
  [v8 contentInset];
  v6 = v5;
  [v8 _systemContentInset];
  [v8 setContentOffset:{v4, -(v6 + v7)}];
}

- (BOOL)isScrollViewControllingHeaderResizeAnimation:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentEditViewController *)self contactView];

  return v5 == v4;
}

- (double)updateHeaderConstraintForGlobalHeaderHeight:(double)a3 direction:(int64_t)a4 animated:(BOOL)a5
{
  v8 = [(CNContactContentEditViewController *)self headerHeightConstraint:a4];
  [v8 constant];
  v10 = v9;

  if (v10 != a3 && (a4 || v10 < a3))
  {
    v11 = [(CNContactContentEditViewController *)self headerHeightConstraint];
    [v11 setConstant:a3];

    return a3;
  }

  return v10;
}

- (void)updateHeaderHeightToMatchScrollViewState:(id)a3 scrollDirection:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [v8 contentOffset];
  v10 = v9;
  [v8 contentInset];
  [(CNContactContentEditViewController *)self globalHeaderHeightForContentOffset:v10 contentInset:v11, v12, v13, v14];
  [(CNContactContentEditViewController *)self updateHeaderConstraintForGlobalHeaderHeight:a4 direction:v5 animated:?];
  v16 = v15;
  objc_opt_class();
  v19 = v8;
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

- (double)globalHeaderHeightForContentOffset:(double)a3 contentInset:(UIEdgeInsets)a4
{
  top = a4.top;
  v7 = [(CNContactContentEditViewController *)self contactView:a3];
  [v7 _systemContentInset];
  v9 = top + v8;

  if (-v9 <= a3)
  {
    v10 = -a3;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v11 minHeight];
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

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v25 = a3;
  v8 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v8 minHeight];
  v10 = v9;

  v11 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v11 maxHeight];
  v13 = v12;

  if ([(CNContactContentEditViewController *)self isScrollViewControllingHeaderResizeAnimation:v25])
  {
    v14 = v13 - a5->y;
    [v25 contentInset];
    v16 = v14 - v15;
    [v25 _systemContentInset];
    v18 = v16 - v17;
    if (y <= 0.0)
    {
      v19 = v25;
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
      v19 = v25;
      if (v18 > v10)
      {
        v18 = v10;
      }
    }

    v21 = v13 - v18;
    [v19 contentInset];
    v23 = v21 - v22;
    [v25 _systemContentInset];
    a5->y = v23 - v24;
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = a3;
  if ([(CNContactContentEditViewController *)self isScrollViewControllingHeaderResizeAnimation:?])
  {
    [v5 _verticalVelocity];
    [(CNContactContentEditViewController *)self updateHeaderHeightToMatchScrollViewState:v5 scrollDirection:v4 >= 0.0 animated:1];
  }
}

- (void)setCancelKeyboardShortcutEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentEditViewController *)self cancelCommand];

  if (v3)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_editCancel_];
      [(CNContactContentEditViewController *)self setCancelCommand:v6];

      v8 = [(CNContactContentEditViewController *)self cancelCommand];
      [(CNContactContentEditViewController *)self addKeyCommand:v8];
    }
  }

  else if (v5)
  {
    v7 = [(CNContactContentEditViewController *)self cancelCommand];
    [(CNContactContentEditViewController *)self removeKeyCommand:v7];

    [(CNContactContentEditViewController *)self setCancelCommand:0];
  }
}

- (void)setSaveKeyboardShortcutEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentEditViewController *)self saveCommand];

  if (v3)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"s" modifierFlags:0x100000 action:sel_toggleEditing_];
      [(CNContactContentEditViewController *)self setSaveCommand:v6];

      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"SAVE_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
      v9 = [(CNContactContentEditViewController *)self saveCommand];
      [v9 setDiscoverabilityTitle:v8];

      v11 = [(CNContactContentEditViewController *)self saveCommand];
      [(CNContactContentEditViewController *)self addKeyCommand:v11];
    }
  }

  else if (v5)
  {
    v10 = [(CNContactContentEditViewController *)self saveCommand];
    [(CNContactContentEditViewController *)self removeKeyCommand:v10];

    [(CNContactContentEditViewController *)self setSaveCommand:0];
  }
}

- (void)updateUserActivityState:(id)a3
{
  v4 = a3;
  v6 = [(CNContactContentEditViewController *)self activityManager];
  v5 = [(CNContactContentEditViewController *)self contact];
  [v6 updateUserActivityState:v4 withContentsOfContact:v5];
}

- (void)_updateUserActivity
{
  v21 = *MEMORY[0x1E69E9840];
  if (CNUIIsContacts() || CNUIIsMobilePhone())
  {
    v3 = CNUILogContactCard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [MEMORY[0x1E696AAE8] mainBundle];
      v5 = [v4 bundleIdentifier];
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Activity continuity - running in %@", &v17, 0xCu);
    }

    v6 = [(CNContactContentEditViewController *)self activityManager];
    v7 = [(CNContactContentEditViewController *)self contact];
    v8 = [v6 makeActivityAdvertisingViewingOfContact:v7];

    v9 = [(CNContactContentEditViewController *)self userActivity];
    v10 = v9;
    if (v8)
    {

      if (!v10)
      {
        [(CNContactContentEditViewController *)self setUserActivity:v8];
        v11 = [(CNContactContentEditViewController *)self userActivity];
        [v11 becomeCurrent];

        v12 = CNUILogContactCard();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [(CNContactContentEditViewController *)self userActivity];
          v17 = 138412546;
          v18 = self;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_INFO, "Activity continuity -  %@ created %@", &v17, 0x16u);
        }
      }

      v14 = [(CNContactContentEditViewController *)self userActivity];
      [v14 setNeedsSave:1];
    }

    else
    {
      [v9 resignCurrent];

      v15 = CNUILogContactCard();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [(CNContactContentEditViewController *)self userActivity];
        v17 = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_INFO, "Activity continuity -  %@ removed %@", &v17, 0x16u);
      }

      [(CNContactContentEditViewController *)self setUserActivity:0];
    }
  }
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v19 encodeRestorableStateWithCoder:v4];
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
        v11 = [(CNContactContentEditViewController *)self contactViewConfiguration];
        v12 = [v11 valueForKey:v10];

        if (v12)
        {
          [v4 encodeObject:v12 forKey:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [(CNContactContentEditViewController *)self contact];
  v14 = [v13 identifier];

  if (v14)
  {
    [v4 encodeObject:v14 forKey:@"Identifier"];
  }
}

- (void)_addedGroupWithName:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CNContactView nameProperties];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(CNContactContentEditViewController *)self mutableContact];
    v8 = [(CNContactContentEditViewController *)self contactStore];
    v9 = [(CNContactContentEditViewController *)self policy];
    v10 = [(CNContactContentEditViewController *)self linkedPoliciesByContactIdentifier];
    v11 = [(CNCardPropertyGroup *)CNCardPropertyNameGroup groupForProperty:v4 contact:v7 store:v8 policy:v9 linkedPolicies:v10];

    v12 = +[CNContactView nameProperties];
    v40 = v11;
    v13 = [v11 property];
    v14 = [v12 indexOfObject:v13];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = self;
    v15 = [(CNContactContentEditViewController *)self editingGroups];
    v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
    v42 = v4;
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
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v43 + 1) + 8 * v20);
        v22 = +[CNContactView nameProperties];
        v23 = [v21 property];
        v24 = [v22 indexOfObject:v23];

        if (v24 >= v14)
        {
          break;
        }

        ++v18;
        if (v17 == ++v20)
        {
          v17 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
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

    v25 = [(CNContactContentEditViewController *)v41 nameEditingGroups];
    v26 = [v25 mutableCopy];

    [v26 insertObject:v40 atIndex:v18];
    v27 = [v26 copy];
    [(CNContactContentEditViewController *)v41 setNameEditingGroups:v27];

    v28 = [(CNContactContentEditViewController *)v41 editingGroups];
    v29 = [v28 mutableCopy];

    [v29 insertObject:v40 atIndex:v18];
    v30 = [v29 copy];
    [(CNContactContentEditViewController *)v41 setEditingGroups:v30];

    v31 = [(CNContactContentEditViewController *)v41 contactView];
    [v31 reloadData];

    v32 = [(CNContactContentEditViewController *)v41 contactView];
    v33 = [(CNContactContentEditViewController *)v41 sectionOfGroup:v40 inTableView:v32];

    v34 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v33];
    v35 = [(CNContactContentEditViewController *)v41 contactView];
    v36 = [v35 cellForRowAtIndexPath:v34];

    v37 = [v36 firstResponderItem];
    [v37 becomeFirstResponder];

    v38 = [(CNContactContentEditViewController *)v41 contactView];
    [v38 scrollToRowAtIndexPath:v34 atScrollPosition:2 animated:0];

    v4 = v42;
  }
}

- (BOOL)_indexPathIsActionItem:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v6 section], v7);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(CNContactContentEditViewController *)self _itemAtIndexPath:v6 forTableView:v7];
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

- (id)_itemAtIndexPath:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v6 section], v7);
  if ([(CNContactContentEditViewController *)self isStandardGroup:v8])
  {
    v9 = [v8 editingItems];
LABEL_5:
    v10 = v9;
    v11 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    goto LABEL_7;
  }

  if ([(CNContactContentEditViewController *)self _indexPathIsActionItem:v6 forTableView:v7])
  {
    v9 = [v8 actionItems];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_cardGroupAtTableViewSectionIndex:(int64_t)a3 forTableView:(id)a4
{
  v6 = a4;
  v7 = [(CNContactContentEditViewController *)self groupIndexFromTableViewSectionIndex:a3 forTableView:v6];
  v8 = [(CNContactContentEditViewController *)self _currentGroupsForTableView:v6];

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

- (void)_saveChangesForGroups:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_validateGroup:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 propertyItems];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = self;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 labeledValue];
        v13 = [v12 value];
        v14 = [v11 isValidValue:v13];

        if ((v14 & 1) == 0)
        {
          v15 = [v11 labeledValue];
          v16 = [v15 value];
          v17 = [v11 replacementForInvalidValue:v16];
          [v11 updateLabeledValueWithValue:v17];

          v8 = 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
    if (v8)
    {
      v18 = [(CNContactContentEditViewController *)v19 contactView];
      [(CNContactContentEditViewController *)v19 reloadCardGroup:v4 forTableView:v18];
    }
  }
}

- (BOOL)_modelIsEmpty
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  v3 = [(CNContactContentEditViewController *)self editingGroups];
  v4 = [v2 arrayWithArray:v3];

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
          v11 = [v10 editingItems];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v12 = v11;
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
                  v19 = [v18 normalizedValue];
                  if (v19)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0 || [v19 length])
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
    v20 = [(CNContactContentEditViewController *)self contactHeaderView];
    v21 = [v20 hasPhoto];

    v22 = (v21 ^ 1) & v25;
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
  v4 = [(CNContactContentEditViewController *)self editingGroups];
  v5 = [v3 arrayWithArray:v4];

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
    v13 = [(CNContactContentEditViewController *)self contactHeaderView];
    v12 |= [v13 photoIsModified];
  }

  v14 = [(CNContactContentEditViewController *)self editingLinkedContacts];

  v15 = [(CNContactContentEditViewController *)self containerContext];
  v16 = [v15 addedContainers];
  v17 = [v16 count];

  v18 = [(CNContactContentEditViewController *)self mode];
  v19 = [(CNContactContentEditViewController *)self mode]== 4 || [(CNContactContentEditViewController *)self mode]== 5;
  v20 = [(CNContactContentEditViewController *)self contact];
  if ([v20 hasNonPersistedData])
  {
    v21 = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];
    v22 = v21 == 0;
  }

  else
  {
    v22 = 0;
  }

  if (v14)
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

  if (v18 == 3)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  v25 = [(CNContactContentEditViewController *)self cardStaticIdentityGroup];
  v26 = [v25 didChange];

  return (v19 || v22) | v26 | v24;
}

- (id)_loadNameEditingGroups
{
  v44 = *MEMORY[0x1E69E9840];
  v31 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = [(CNContactContentEditViewController *)self contact];
  v4 = [CNContactView namePropertiesForContact:v3];

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
        v10 = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
        v11 = [v10 containsObject:v9];

        if ((v11 & 1) == 0)
        {
          v12 = [(CNContactContentEditViewController *)self contact];
          v13 = [v12 valueForKey:v9];

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
            v19 = [(CNContactContentEditViewController *)self mutableContact];
            v20 = [(CNContactContentEditViewController *)self contactStore];
            v21 = [(CNContactContentEditViewController *)self policy];
            v22 = [(CNContactContentEditViewController *)self linkedPoliciesByContactIdentifier];
            v23 = [(CNCardPropertyGroup *)CNCardPropertyNameGroup groupForProperty:v9 contact:v19 store:v20 policy:v21 linkedPolicies:v22];

            [v23 setAddSpacerFromPreviousGroup:0];
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v24 = [v23 propertyItems];
            v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
                    objc_enumerationMutation(v24);
                  }

                  [*(*(&v34 + 1) + 8 * i) setDelegate:self];
                }

                v26 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v26);
            }

            [v31 addObject:v23];
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

  return v31;
}

- (id)_loadEditingGroupsPreservingChanges:(BOOL)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  if (!a3)
  {
    v6 = [(CNContactContentEditViewController *)self _loadNameEditingGroups];
    [(CNContactContentEditViewController *)self setNameEditingGroups:v6];
  }

  v7 = [(CNContactContentEditViewController *)self nameEditingGroups];
  [v5 addObjectsFromArray:v7];

  v8 = [(CNContactContentEditViewController *)self shouldShowGemini];
  [(CNContactContentEditViewController *)self createCardEditingGeminiGroupIfNeeded];
  v9 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
  [v9 setShouldShowGemini:v8];

  if ([(CNContactContentEditViewController *)self shouldShowGemini])
  {
    v10 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
    [v5 _cn_addNonNilObject:v10];
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
        v17 = [(CNContactContentEditViewController *)self propertyGroups];
        v18 = [v17 objectForKeyedSubscript:v16];

        if (v18)
        {
          [v5 addObject:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v13);
  }

  v19 = [(CNContactContentEditViewController *)self cardStaticIdentityGroup];
  [v5 _cn_addNonNilObject:v19];

  v20 = [(CNContactContentEditViewController *)self cardEditingActionsGroup];
  v21 = [v20 actions];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [(CNContactContentEditViewController *)self cardEditingActionsGroup];
    [v5 addObject:v23];
  }

  v24 = [(CNContactContentEditViewController *)self cardMedicalIDGroup];
  v25 = [v24 actionItems];
  v26 = [v25 count];

  if (v26)
  {
    v27 = [(CNContactContentEditViewController *)self cardMedicalIDGroup];
    [v5 _cn_addNonNilObject:v27];
  }

  [(CNContactContentEditViewController *)self createCardEditingContactContainerGroupIfNeeded];
  v28 = [(CNContactContentEditViewController *)self cardEditingContactContainerGroup];
  [v5 _cn_addNonNilObject:v28];

  v29 = [(CNContactContentEditViewController *)self cardLinkedCardsGroup];
  [v5 _cn_addNonNilObject:v29];

  v30 = [(CNContactContentEditViewController *)self cardEditingDeleteContactGroup];
  v31 = [v30 actions];
  v32 = [v31 count];

  if (v32)
  {
    v33 = [(CNContactContentEditViewController *)self cardEditingDeleteContactGroup];
    [v5 addObject:v33];
  }

  return v5;
}

- (void)createCardEditingContactContainerGroupIfNeeded
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:13];

  if (v5)
  {
    if ([(CNContactContentEditViewController *)self shouldAllowContainerPicking])
    {
      v6 = [CNCardContactContainerGroup alloc];
      v7 = [(CNContactContentEditViewController *)self mutableContact];
      v8 = [(CNCardGroup *)v6 initWithContact:v7];
      [(CNContactContentEditViewController *)self setCardEditingContactContainerGroup:v8];

      v11 = [(CNContactContentEditViewController *)self containerContext];
      v9 = [v11 selectedContainers];
      v10 = [(CNContactContentEditViewController *)self cardEditingContactContainerGroup];
      [v10 setContainers:v9];
    }

    else
    {

      [(CNContactContentEditViewController *)self setCardEditingContactContainerGroup:0];
    }
  }
}

- (void)createCardEditingGeminiGroupIfNeeded
{
  v3 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];

  if (!v3)
  {
    v4 = [(CNContactContentEditViewController *)self propertyGroups];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695C370]];
    [(CNContactContentEditViewController *)self setCardEditingGeminiGroup:v5];

    v6 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
    v7 = [v6 propertyItems];
    v10 = [v7 objectAtIndexedSubscript:0];

    v8 = [(CNContactContentEditViewController *)self geminiDataSource];
    v9 = [v8 geminiResult];
    [v10 setGeminiResult:v9];

    [v10 setDelegate:self];
  }
}

- (void)_reloadGeminiGroupPreservingChanges:(BOOL)a3
{
  if (!a3)
  {
    [(CNContactContentEditViewController *)self setCardEditingGeminiGroup:0];
    v6 = [(CNContactContentEditViewController *)self geminiDataSource];
    [v6 resetDataSource];
    v5 = [(CNContactContentEditViewController *)self contact];
    [v6 setContact:v5];
  }
}

- (id)_addGroupsInArray:(id)a3 afterGroup:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CNContactContentEditViewController *)self groupsAfterGroup];
  v9 = [v8 objectForKeyedSubscript:v7];

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

          [v6 addObject:{*(*(&v17 + 1) + 8 * i), v17}];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v15 = [v10 lastObject];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_reloadStaticIdentityGroup
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:21];

  if (v5)
  {
    if ([(CNContactContentEditViewController *)self isEditing])
    {
      v6 = [(CNContactContentEditViewController *)self cardStaticIdentityGroup];

      if (!v6)
      {
        v7 = [CNCardStaticIdentityGroup alloc];
        v9 = [(CNContactContentEditViewController *)self mutableContact];
        v8 = [(CNCardStaticIdentityGroup *)v7 initWithContact:v9];
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
    v3 = [(CNContactContentEditViewController *)self _linkedCardsAction];
    linkedCardsAction = self->_linkedCardsAction;
    self->_linkedCardsAction = v3;
  }

  addLinkedCardAction = self->_addLinkedCardAction;
  if (!addLinkedCardAction)
  {
    v6 = [(CNContactContentEditViewController *)self _addLinkedCardAction];
    v7 = self->_addLinkedCardAction;
    self->_addLinkedCardAction = v6;

    addLinkedCardAction = self->_addLinkedCardAction;
  }

  [(CNContactAddLinkedCardAction *)addLinkedCardAction setEditingLinkedContacts:self->_editingLinkedContacts];
  v8 = [CNCardLinkedCardsGroup alloc];
  v9 = [(CNContactContentEditViewController *)self mutableContact];
  v10 = [(CNCardGroup *)v8 initWithContact:v9];
  [(CNContactContentEditViewController *)self setCardLinkedCardsGroup:v10];

  v11 = [MEMORY[0x1E695DF70] array];
  editingLinkedContacts = self->_editingLinkedContacts;
  if (editingLinkedContacts)
  {
    v13 = editingLinkedContacts;
  }

  else
  {
    v14 = [(CNContactContentEditViewController *)self contact];
    v13 = [v14 mainStoreLinkedContacts];
  }

  v15 = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];

  if (!v15)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = v13;
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

          [v11 addObject:{*(*(&v22 + 1) + 8 * v20++), v22}];
        }

        while (v18 != v20);
        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v18);
    }
  }

  v21 = [(CNContactContentEditViewController *)self cardLinkedCardsGroup];
  [v21 setLinkedContacts:v11];
}

- (BOOL)shouldReallyShowLinkedContacts
{
  v3 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  if ([v3 shouldShowLinkedContacts])
  {
    v4 = [(CNContactContentEditViewController *)self contact];
    v5 = [v4 mainStoreLinkedContacts];
    if ([v5 count] < 2)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v6 = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];
      if (v6)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v8 = [(CNContactContentEditViewController *)self contact];
        v7 = [v8 isSuggestedMe] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_reloadContainerContextPreservingChanges:(BOOL)a3
{
  v5 = [(CNContactContentEditViewController *)self containerContext];

  if (v5)
  {
    if (!a3)
    {
      v6 = [(CNContactContentEditViewController *)self containerContext];
      [v6 resetToInitialState];

      v7 = [(CNContactContentEditViewController *)self parentContainer];

      if (v7)
      {
        v9 = [(CNContactContentEditViewController *)self containerContext];
        v8 = [(CNContactContentEditViewController *)self parentContainer];
        [v9 addContainer:v8];
      }
    }
  }
}

- (void)_reloadMedicalIDGroup
{
  v3 = [(CNContactContentEditViewController *)self environment];
  v4 = [v3 healthStoreManager];

  v5 = [(CNContactContentEditViewController *)self medicalIDLookupToken];
  [v5 cancel];

  [(CNContactContentEditViewController *)self setMedicalIDLookupToken:0];
  [(CNContactContentEditViewController *)self setMedicalIDRegistrationToken:0];
  [(CNContactContentEditViewController *)self setCardMedicalIDGroup:0];
  v6 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  if (([v6 allowsActions] & 1) == 0)
  {

    goto LABEL_5;
  }

  v7 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  v8 = [v7 allowsCardActions];

  if (!v8)
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
  v9 = v4;
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

- (void)_addMedicalIDGroupAnimated:(BOOL)a3 forTableView:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CNContactContentEditViewController *)self editingGroups];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__CNContactContentEditViewController__addMedicalIDGroupAnimated_forTableView___block_invoke;
  aBlock[3] = &unk_1E74E7218;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = [v7 indexOfObjectPassingTest:v8];
  if (v9)
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v7 lastObject];
    }

    else
    {
      [v7 objectAtIndexedSubscript:v9 - 1];
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CNContactContentEditViewController *)self cardMedicalIDGroup];
  [(CNContactContentEditViewController *)self _addGroup:v11 afterGroup:v10 forTableView:v6 animated:v4];
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

- (void)_addGroup:(id)a3 afterGroup:(id)a4 forTableView:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v18 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    [(CNContactContentEditViewController *)self addCardGroup:v18 afterGroup:v10];
    v12 = [(CNContactContentEditViewController *)self editingGroups];
    v13 = [v12 indexOfObject:v10];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v13 + 1;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = [(CNContactContentEditViewController *)self editingGroups];
  }

  v14 = 0;
LABEL_6:
  [v11 beginUpdates];
  [v12 insertObject:v18 atIndex:v14];
  v15 = [(CNContactContentEditViewController *)self tableViewSectionIndexFromGroupIndex:v14 forTableView:v11];
  v16 = [MEMORY[0x1E696AC90] indexSetWithIndex:v15];
  if (v6)
  {
    v17 = 6;
  }

  else
  {
    v17 = 5;
  }

  [v11 insertSections:v16 withRowAnimation:v17];

  [v11 endUpdates];
}

- (void)_reloadPropertyGroupsPreservingChanges:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(CNContactContentEditViewController *)self propertyGroups];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) reloadDataPreservingChanges:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_loadPropertyGroups
{
  v3 = [CNPropertyGroupsDataSource alloc];
  v4 = [(CNContactContentEditViewController *)self mutableContact];
  v5 = [(CNContactContentEditViewController *)self contactStore];
  v6 = [(CNContactContentEditViewController *)self policy];
  v7 = [(CNContactContentEditViewController *)self linkedPoliciesByContactIdentifier];
  v8 = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
  v9 = [(CNPropertyGroupsDataSource *)v3 initWithMutableContact:v4 contactStore:v5 policy:v6 linkedPolicies:v7 prohibitedKeys:v8];
  propertyGroupsDataSource = self->_propertyGroupsDataSource;
  self->_propertyGroupsDataSource = v9;

  v11 = [(CNContactContentEditViewController *)self propertyGroupsDataSource];
  [v11 buildPropertyGroups];

  v12 = [(CNContactContentEditViewController *)self propertyGroupsDataSource];
  v13 = [v12 propertyGroups];

  return v13;
}

- (BOOL)shouldShowGemini
{
  v3 = [(CNContactContentEditViewController *)self geminiDataSource];
  v4 = [v3 geminiResult];

  if (v4 && ![(CNContactContentEditViewController *)self showingMeContact])
  {
    v6 = [(CNContactContentEditViewController *)self contact];
    if ([v6 isSuggested])
    {
      v5 = 0;
    }

    else
    {
      v7 = [(CNContactContentEditViewController *)self contact];
      if ([v7 isCoreRecentsAccepted])
      {
        v5 = 0;
      }

      else
      {
        v8 = [(CNContactContentEditViewController *)self contact];
        v5 = [CNContactContentEditViewController shouldShowGeminiForResult:v4 contact:v8];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (Class)groupClassForProperty:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:*MEMORY[0x1E695C1E0]] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C3F8]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C370]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C200]) & 1) == 0)
  {
    [v3 isEqualToString:*MEMORY[0x1E695C1C0]];
  }

  v4 = objc_opt_class();

  return v4;
}

- (id)_addNewFieldAction
{
  v3 = [CNContactAddNewFieldAction alloc];
  v4 = [(CNContactContentEditViewController *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  v6 = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
  [(CNContactAddNewFieldAction *)v5 setProhibitedPropertyKeys:v6];

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
  v4 = [(CNContactContentEditViewController *)self mutableContact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  [(CNContactAction *)v5 setDelegate:self];

  return v5;
}

- (id)_linkedCardsAction
{
  v3 = [CNPropertyLinkedCardsAction alloc];
  v4 = [(CNContactContentEditViewController *)self mutableContact];
  v5 = [(CNPropertyLinkedCardsAction *)v3 initWithContact:v4];

  [(CNContactAction *)v5 setDelegate:self];
  [(CNPropertyLinkedCardsAction *)v5 setContactDelegate:self];

  return v5;
}

- (id)_propertyGroupsForKeys:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
        v12 = [(CNContactContentEditViewController *)self propertyGroups];
        v13 = [v12 objectForKeyedSubscript:v11];

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
  v3 = [(CNContactContentEditViewController *)self policy];
  v4 = [v3 isReadonly];

  if (v4)
  {
    return;
  }

  [(CNContactContentEditViewController *)self _setupSuggestionActions];
  v5 = [(CNContactContentEditViewController *)self actionProvider];
  v6 = [v5 stopSharingWithFamilyAction];
  v7 = [v6 canPerformAction];

  if (v7)
  {
    v8 = [(CNContactContentEditViewController *)self cardEditingActionsGroup];
    v9 = [(CNContactContentEditViewController *)self actionProvider];
    v10 = [v9 stopSharingWithFamilyAction];
    v11 = [(CNContactContentEditViewController *)self actionProvider];
    v12 = [v11 stopSharingWithFamilyAction];
    v13 = [v12 title];
    [v8 addAction:v10 withTitle:v13];
  }

  v14 = [CNContactAddStaticIdentityAction alloc];
  v15 = [(CNContactContentEditViewController *)self contact];
  v16 = [(CNContactAction *)v14 initWithContact:v15];
  [(CNContactContentEditViewController *)self setAddStaticIdentityAction:v16];

  v17 = [(CNContactContentEditViewController *)self alreadyPickedGroups];
  v18 = [(CNContactContentEditViewController *)self policy];
  v19 = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
  LODWORD(v16) = [CNContactPropertyGroupPickerViewController propertiesLeftToPickWithPickedGroups:v17 policy:v18 prohibitedPropertyKeys:v19];

  if (v16)
  {
    v20 = [(CNContactContentEditViewController *)self _addNewFieldAction];
    [(CNContactContentEditViewController *)self setAddNewFieldAction:v20];

    v21 = [(CNContactContentEditViewController *)self cardEditingActionsGroup];
    v22 = [(CNContactContentEditViewController *)self addNewFieldAction];
    v23 = CNContactsUIBundle();
    v24 = [v23 localizedStringForKey:@"ADD_MORE_PROPERTIES" value:&stru_1F0CE7398 table:@"Localized"];
    [v21 addAction:v22 withTitle:v24];
  }

  v25 = [(CNContactContentEditViewController *)self contact];
  v26 = [v25 isSuggestedMe];

  if (v26)
  {
    v27 = [CNContactIgnoreDonatedInformationAction alloc];
    v28 = [(CNContactContentEditViewController *)self mutableContact];
    v29 = objc_alloc_init(MEMORY[0x1E6996448]);
    v30 = [(CNContactContentEditViewController *)self environment];
    v31 = [v30 componentsFactory];
    v32 = [(CNContactIgnoreDonatedInformationAction *)v27 initWithContact:v28 donationStore:v29 componentsFactory:v31];
    [(CNContactContentEditViewController *)self setIgnoreContactAction:v32];

    v33 = [(CNContactContentEditViewController *)self ignoreContactAction];
    [v33 setDelegate:self];

    v34 = [(CNContactContentEditViewController *)self ignoreContactAction];
    [v34 setDestructive:1];

    v35 = [(CNContactContentEditViewController *)self cardEditingDeleteContactGroup];
    v36 = [(CNContactContentEditViewController *)self ignoreContactAction];
    v37 = CNContactsUIBundle();
    v38 = v37;
    v39 = @"CARD_ACTION_IGNORE_CARD";
LABEL_8:
    v40 = [v37 localizedStringForKey:v39 value:&stru_1F0CE7398 table:@"Localized"];
    [v35 addAction:v36 withTitle:v40];

LABEL_10:
    goto LABEL_11;
  }

  v35 = [(CNContactContentEditViewController *)self contact];
  if ([v35 isUnknown])
  {
    goto LABEL_10;
  }

  v42 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  v43 = [v42 editingProposedInformation];

  if ((v43 & 1) == 0)
  {
    v44 = [CNContactDeleteContactAction alloc];
    v45 = [(CNContactContentEditViewController *)self mutableContact];
    v46 = [(CNContactContentEditViewController *)self environment];
    v47 = [v46 recentsManager];
    v48 = [(CNContactContentEditViewController *)self environment];
    v49 = [v48 componentsFactory];
    v50 = [(CNContactDeleteContactAction *)v44 initWithContact:v45 recentsManager:v47 componentsFactory:v49];
    [(CNContactContentEditViewController *)self setDeleteContactAction:v50];

    v51 = [(CNContactContentEditViewController *)self deleteContactAction];
    [v51 setDelegate:self];

    v52 = [(CNContactContentEditViewController *)self deleteContactAction];
    [v52 setDestructive:1];

    v35 = [(CNContactContentEditViewController *)self cardEditingDeleteContactGroup];
    v36 = [(CNContactContentEditViewController *)self deleteContactAction];
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

    v53 = [(CNContactContentEditViewController *)self selectContainersAction];
    [v53 setDelegate:self];
  }
}

- (void)_setupSuggestionActions
{
  v3 = [(CNContactContentEditViewController *)self originalContacts];
  v8 = [v3 _cn_filter:&__block_literal_global_630];

  if ([v8 count] == 1)
  {
    v4 = [CNContactSuggestionAction alloc];
    v5 = [v8 firstObject];
    v6 = [(CNContactAction *)v4 initWithContact:v5];
    [(CNContactContentEditViewController *)self setSuggestedContactAction:v6];

    v7 = [(CNContactContentEditViewController *)self suggestedContactAction];
    [v7 setDelegate:self];
  }

  else
  {
    [(CNContactContentEditViewController *)self setSuggestedContactAction:0];
  }
}

- (void)updateContactsViewWithBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  ++self->_animating;
  v8 = [(CNContactContentEditViewController *)self contactView];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CNContactContentEditViewController_updateContactsViewWithBlock_completion___block_invoke;
  v13[3] = &unk_1E74E6F88;
  v14 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__CNContactContentEditViewController_updateContactsViewWithBlock_completion___block_invoke_2;
  v11[3] = &unk_1E74E6FB0;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBatchUpdates:v13 completion:v11];
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

- (double)desiredHeightForWidth:(double)a3
{
  v4 = [(CNContactContentEditViewController *)self view];
  [v4 frame];
  [v4 setFrame:?];
  [(CNContactContentEditViewController *)self reloadDataIfNeeded];
  v5 = [(CNContactContentEditViewController *)self contactView];
  v6 = [v5 visibleCells];

  v7 = [(CNContactContentEditViewController *)self view];
  [v7 layoutIfNeeded];

  v8 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v8 setNeedsLayout];

  [(CNContactContentEditViewController *)self requiredSizeForVisibleTableView];
  v10 = v9;
  v11 = [v4 superview];
  [v11 frame];
  [v4 setFrame:?];

  return v10;
}

- (void)cleanupRecentPosterMetadata
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CE00]);
  v4 = MEMORY[0x1E695CDF0];
  v5 = [(CNContactContentEditViewController *)self contact];
  v6 = [v5 identifier];
  v16[0] = v6;
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
      v11 = [(CNContactContentEditViewController *)self contact];
      v12 = [v11 identifier];
      *buf = 138412290;
      v15 = v12;
      _os_log_debug_impl(&dword_199A75000, v10, OS_LOG_TYPE_DEBUG, "Failed to delete recent poster metadata for contact: %@", buf, 0xCu);
    }
  }
}

- (void)cleanupRecentImageMetadata
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CDA8]);
  v4 = MEMORY[0x1E695CD98];
  v5 = [(CNContactContentEditViewController *)self contact];
  v6 = [v5 identifier];
  v16[0] = v6;
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
      v11 = [(CNContactContentEditViewController *)self contact];
      v12 = [v11 identifier];
      *buf = 138412290;
      v15 = v12;
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
  v3 = [(CNContactContentEditViewController *)self contact];
  v4 = objc_opt_class();

  v5 = [(CNContactContentEditViewController *)self contact];
  v8 = [v5 linkedContacts];

  v6 = v8;
  if (v8)
  {
    v7 = [v4 unifyContacts:v8];
    [(CNContactContentEditViewController *)self setContact:v7];

    v6 = v8;
  }
}

- (void)addStaticIdentity:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentEditViewController *)self cardStaticIdentityGroup];
  [v5 addIdentity:v4 isNew:1];

  [(CNContactContentEditViewController *)self reloadDataPreservingChanges:1];
}

- (void)removeLinkedContact:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(CNContactContentEditViewController *)self contact];
    v6 = [v5 mainStoreLinkedContacts];
    v7 = [v6 containsObject:v4];

    v8 = [(CNContactContentEditViewController *)self editingLinkedContacts];
    v9 = [v8 containsObject:v4];

    if ((v7 & 1) != 0 || v9)
    {
      v10 = [v4 availableKeyDescriptor];
      v14[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [(CNContactContentEditViewController *)self _setupEditingLinkedContactsForKeys:v11];

      v12 = [(CNContactContentEditViewController *)self editingLinkedContacts];
      [v12 removeObject:v4];

      [(CNContactContentEditViewController *)self reloadDataPreservingChanges:1];
      v13 = +[CNUIDataCollector sharedCollector];
      [v13 logContactActionType:CNUIContactActionTypeUnlink attributes:0];
    }
  }
}

- (void)addLinkedContact:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(CNContactContentEditViewController *)self contact];
    v6 = v5;
    if (v5 == v4)
    {
    }

    else
    {
      v7 = [(CNContactContentEditViewController *)self contact];
      v8 = [v7 mainStoreLinkedContacts];
      v9 = [v8 containsObject:v4];

      if ((v9 & 1) == 0)
      {
        v10 = [v4 availableKeyDescriptor];
        v14[0] = v10;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        [(CNContactContentEditViewController *)self _setupEditingLinkedContactsForKeys:v11];

        v12 = [(CNContactContentEditViewController *)self editingLinkedContacts];
        [v12 addObject:v4];

        [(CNContactContentEditViewController *)self reloadDataPreservingChanges:1];
        v13 = +[CNUIDataCollector sharedCollector];
        [v13 logContactActionType:CNUIContactActionTypeLink attributes:0];
      }
    }
  }
}

- (void)_setupEditingLinkedContactsForKeys:(id)a3
{
  v13 = a3;
  v4 = [(CNContactContentEditViewController *)self editingLinkedContacts];

  v5 = v13;
  if (!v4)
  {
    v6 = [(CNContactContentEditViewController *)self contact];
    v7 = [v6 isUnified];

    if (v7)
    {
      v8 = [(CNContactContentEditViewController *)self contact];
      v9 = [v8 mainStoreLinkedContacts];
      v10 = [v9 mutableCopy];
    }

    else
    {
      v11 = MEMORY[0x1E695DF70];
      v8 = [(CNContactContentEditViewController *)self contact];
      v9 = [v8 copyWithPropertyKeys:v13];
      v10 = [v11 arrayWithObject:v9];
    }

    v12 = v10;
    [(CNContactContentEditViewController *)self setEditingLinkedContacts:v10];

    v5 = v13;
  }
}

- (void)updatedExistingContact:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(CNContactContentEditViewController *)self contact];
  }

  v6 = v5;
  [(CNContactContentEditViewController *)self setContact:v5];
  [(CNContactContentEditViewController *)self _didCompleteWithContact:v6];
}

- (void)createdNewContact:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    [(CNContactContentEditViewController *)self setContact:v4];
    [(CNContactContentEditViewController *)self setMode:1];
    v5 = [(CNContactContentEditViewController *)self contactViewConfiguration];
    [v5 setAllowsAddingToAddressBook:0];

    v4 = v6;
  }

  [(CNContactContentEditViewController *)self _didCompleteWithContact:v4];
}

- (void)_didCompleteWithContact:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v16 = [(CNContactContentEditViewController *)self _removeUnauthorizedKeysFromContact:v4];

    if (self->_contact != &self->_mutableContact->super)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v16 copy];

        v16 = v6;
      }
    }

    v7 = [(CNContactContentEditViewController *)self suggestedContactAction];
    [v7 confirmSuggestion];
  }

  else
  {
    v16 = 0;
  }

  if ([(CNContactContentEditViewController *)self mode]== 3)
  {
    v8 = [(CNContactContentEditViewController *)self originalContacts];
    v9 = [v8 count];

    if (v9 == 1)
    {
      if (v16)
      {
        v10 = +[CNUIDataCollector sharedCollector];
        v11 = [(CNContactContentEditViewController *)self originalContacts];
        v12 = [v11 objectAtIndexedSubscript:0];
        [v10 logContactCreated:v16 originalContact:v12];
      }
    }
  }

  v13 = [(CNContactContentEditViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(CNContactContentEditViewController *)self delegate];
    [v15 contactEditViewController:self didCompleteWithContact:v16];
  }
}

- (id)_removeUnauthorizedKeysFromContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentEditViewController *)self missingRequiredKeys];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 mutableCopy];
    v8 = [(CNContactContentEditViewController *)self missingRequiredKeys];
    [v7 removeKeys:v8];

    [v7 setFrozenSelfAsSnapshot];
    v4 = v7;
  }

  return v4;
}

- (id)_updateContact:(id)a3 withMissingKeysFromRequiredKeys:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 areKeysAvailable:v7 useIgnorableKeys:0 findMissingKeys:1];
  v9 = [v8 first];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = v6;
  }

  else
  {
    v12 = [v8 second];
    [(CNContactContentEditViewController *)self setMissingRequiredKeys:v12];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__22616;
    v28 = __Block_byref_object_dispose__22617;
    v29 = 0;
    v13 = objc_alloc(MEMORY[0x1E695CD78]);
    v14 = [(CNContactContentEditViewController *)self missingRequiredKeys];
    v15 = [v13 initWithKeysToFetch:v14];

    v16 = MEMORY[0x1E695CD58];
    v17 = [v6 identifier];
    v30[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v19 = [v16 predicateForContactsWithIdentifiers:v18];
    [v15 setPredicate:v19];

    [v15 setUnifyResults:{objc_msgSend(v6, "isUnified")}];
    v20 = [(CNContactContentEditViewController *)self contactStore];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __85__CNContactContentEditViewController__updateContact_withMissingKeysFromRequiredKeys___block_invoke;
    v23[3] = &unk_1E74E6F60;
    v23[4] = &v24;
    [v20 enumerateContactsWithFetchRequest:v15 error:0 usingBlock:v23];

    v21 = [v6 mutableCopy];
    [v21 overwriteStateFromContact:v25[5]];
    v11 = [v21 freeze];

    _Block_object_dispose(&v24, 8);
  }

  return v11;
}

- (void)focusOnLastEditingItemInGroup:(id)a3
{
  v10 = [a3 lastEditingItem];
  v4 = [(CNContactContentEditViewController *)self indexPathOfEditingPropertyItem:v10];
  objc_opt_class();
  v5 = [(CNContactContentEditViewController *)self contactView];
  v6 = [v5 cellForRowAtIndexPath:v4];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 firstResponderItem];

  [v9 becomeFirstResponder];
}

- (void)focusOnFirstEditingItemIfNeeded
{
  if ([(CNContactContentEditViewController *)self mode]== 3 && ![(CNContactContentEditViewController *)self didSetFirstResponder])
  {
    [(CNContactContentEditViewController *)self setDidSetFirstResponder:1];
    v3 = [(CNContactContentEditViewController *)self nameEditingGroups];
    v12 = [v3 firstObject];

    v4 = [v12 editingItems];
    v5 = [v4 firstObject];

    v6 = [(CNContactContentEditViewController *)self indexPathOfEditingPropertyItem:v5];
    objc_opt_class();
    v7 = [(CNContactContentEditViewController *)self contactView];
    v8 = [v7 cellForRowAtIndexPath:v6];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 firstResponderItem];

    [v11 becomeFirstResponder];
  }
}

- (void)removeEditingItem:(id)a3 atIndexPath:(id)a4 forTableView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v9 section], v10);
  v12 = [v11 canAddEditingItem];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__CNContactContentEditViewController_removeEditingItem_atIndexPath_forTableView___block_invoke;
  v16[3] = &unk_1E74E6F38;
  v16[4] = v11;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v20 = v9;
  v21 = v12;
  v13 = v9;
  v14 = v10;
  v15 = v8;
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

- (void)addEditingItemAtIndexPath:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v6 section], v7);
  if ([v8 addEditingItem])
  {
    [(CNContactContentEditViewController *)self _updateLabelWidthForCellsInGroup:v8 forTableView:v7 reset:0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__CNContactContentEditViewController_addEditingItemAtIndexPath_forTableView___block_invoke;
    v10[3] = &unk_1E74E6EE8;
    v10[4] = v8;
    v10[5] = self;
    v11 = v6;
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
  v3 = [(CNContactContentEditViewController *)self contactView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v3 visibleCells];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v8);
        }

        [(CNContactContentEditViewController *)self _updateLabelWidthForCell:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [v3 setContentOffset:{v5, v7}];
}

- (void)_updateLabelWidthForCellsInGroup:(id)a3 forTableView:(id)a4 reset:(BOOL)a5
{
  v5 = a5;
  v16 = a3;
  v8 = a4;
  if (v5)
  {
    v9 = [(CNContactContentEditViewController *)self _labelWidthKeyForGroup:v16];
    v10 = [(CNContactContentEditViewController *)self cachedLabelWidths];
    [v10 removeObjectForKey:v9];
  }

  [(CNContactContentEditViewController *)self _updateCachedLabelWidthsForGroup:v16];
  v11 = [(CNContactContentEditViewController *)self sectionOfGroup:v16 inTableView:v8];
  v12 = [v16 editingItems];
  if ([v12 count])
  {
    v13 = 0;
    do
    {
      v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:v11];
      v15 = [v8 cellForRowAtIndexPath:v14];
      [(CNContactContentEditViewController *)self _updateLabelWidthForCell:v15];

      ++v13;
    }

    while (v13 < [v12 count]);
  }
}

- (void)_updateLabelWidthForCell:(id)a3
{
  v15 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v15;
  if (isKindOfClass)
  {
    v6 = v15;
    v7 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v8 = [v6 propertyItem];
    v9 = v8;
    if (v7)
    {
      v10 = [(CNContactContentEditViewController *)self _labelWidthKeyForItem:v8];
    }

    else
    {
      v11 = [v8 group];
      v10 = [(CNContactContentEditViewController *)self _labelWidthKeyForGroup:v11];
    }

    v12 = [(CNContactContentEditViewController *)self cachedLabelWidths];
    v13 = [v12 objectForKey:v10];
    [v13 floatValue];
    [v6 setLabelWidth:v14];

    v5 = v15;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v5);
}

- (void)_updateCachedLabelWidthsIfNeeded
{
  v3 = [(CNContactContentEditViewController *)self cachedLabelWidths];

  if (!v3)
  {

    [(CNContactContentEditViewController *)self _updateCachedLabelWidths];
  }
}

- (void)_setNeedsUpdateCachedLabelWidths
{
  [(CNContactContentEditViewController *)self setCachedLabelWidths:0];
  if ([(CNContactContentEditViewController *)self isViewLoaded])
  {
    v3 = [(CNContactContentEditViewController *)self view];
    [v3 setNeedsLayout];
  }
}

- (void)_updateCachedLabelWidths
{
  v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  [(CNContactContentEditViewController *)self setCachedLabelWidths:v3];

  v4 = [(CNContactContentEditViewController *)self editingGroups];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(CNContactContentEditViewController *)self editingGroups];
      v8 = [v7 objectAtIndexedSubscript:v6];

      [(CNContactContentEditViewController *)self _updateCachedLabelWidthsForGroup:v8];
      ++v6;
      v9 = [(CNContactContentEditViewController *)self editingGroups];
      v10 = [v9 count];
    }

    while (v6 < v10);
  }

  [(CNContactContentEditViewController *)self _updateLabelWidthsForAllVisibleCells];
}

- (void)_updateCachedLabelWidthsForGroup:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 editingItems];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(CNContactContentEditViewController *)self _updateCachedLabelWidthsForItem:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateCachedLabelWidthsForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v37 = v4;
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
    v7 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v8 = [(CNContactContentEditViewController *)self contactView];
    v9 = [v8 labelTextAttributes];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];

    if (v10)
    {
      [v10 _scaledValueForValue:44.0];
      v12 = v11;
    }

    else
    {
      v12 = 44.0;
    }

    v13 = [(CNContactContentEditViewController *)self contactView];
    [v13 frame];
    Width = CGRectGetWidth(v39);
    if (v7)
    {
      v15 = [(CNContactContentEditViewController *)self contactView];
      [v15 _marginWidth];
      v17 = Width - v16;
    }

    else
    {
      v17 = Width / 3.0;
    }

    if (v7)
    {
      v17 = v17 + -53.0;
    }

    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = [v6 displayLabel];
    v20 = [(CNContactContentEditViewController *)self contactView];
    v21 = [v20 labelTextAttributes];
    v22 = [v18 initWithString:v19 attributes:v21];

    [v22 boundingRectWithSize:3 options:0 context:{v17, 10000.0}];
    v23 = CGRectGetWidth(v40);
    if (v12 < v23)
    {
      v24 = 1;
    }

    else
    {
      v24 = v7;
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
    v26 = [v6 group];
    v27 = [(CNContactContentEditViewController *)self _labelWidthKeyForGroup:v26];
    v28 = [(CNContactContentEditViewController *)self _labelWidthKeyForItem:v6];
    v29 = [(CNContactContentEditViewController *)self cachedLabelWidths];
    v30 = [v29 objectForKey:v27];
    [v30 floatValue];
    v32 = v31;

    if (v25 > 0.0)
    {
      v33 = [(CNContactContentEditViewController *)self cachedLabelWidths];
      v34 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      [v33 setObject:v34 forKey:v28];

      if (v25 > v32)
      {
        v35 = [(CNContactContentEditViewController *)self cachedLabelWidths];
        v36 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
        [v35 setObject:v36 forKey:v27];
      }
    }
  }
}

- (id)_labelWidthKeyForGroup:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = [(__CFString *)v3 property];
    if ([v5 isEqualToString:*MEMORY[0x1E695C3F8]])
    {
    }

    else
    {
      v6 = [(__CFString *)v3 property];
      v7 = [v6 isEqualToString:*MEMORY[0x1E695C1E0]];

      v4 = v3;
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

- (void)geminiDataSourceDidUpdate:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 geminiResult];
  v6 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
  v7 = [v6 editingItems];
  v8 = [v7 firstObject];

  [v8 geminiDataSourceDidUpdate:v4];
  v9 = [(CNContactContentEditViewController *)self indexPathOfEditingPropertyItem:v8];
  v10 = [(CNContactContentEditViewController *)self shouldShowGemini];
  v11 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
  [v11 setGeminiResult:v5];

  v12 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
  [v12 setShouldShowGemini:v10];

  v13 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];

  if (v13)
  {
    if (v9)
    {
      if (v10)
      {
        v14 = [(CNContactContentEditViewController *)self contactView];
        v25[0] = v9;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
        [v14 reloadRowsAtIndexPaths:v15 withRowAnimation:100];
      }

      else
      {
        v21 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
        v22 = [(CNContactContentEditViewController *)self contactView];
        v23 = [(CNContactContentEditViewController *)self sectionOfGroup:v21 inTableView:v22];

        v24 = [(CNContactContentEditViewController *)self editingGroups];
        [v24 removeObjectAtIndex:v23];

        v14 = [(CNContactContentEditViewController *)self contactView];
        v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v9, "indexAtPosition:", 0)}];
        [v14 deleteSections:v15 withRowAnimation:3];
      }

      goto LABEL_9;
    }

    if (v10)
    {
      v16 = [(CNContactContentEditViewController *)self editingGroups];
      v17 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
      [v16 insertObject:v17 atIndex:0];

      v18 = [(CNContactContentEditViewController *)self cardEditingGeminiGroup];
      v19 = [(CNContactContentEditViewController *)self contactView];
      v20 = [(CNContactContentEditViewController *)self sectionOfGroup:v18 inTableView:v19];

      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = [(CNContactContentEditViewController *)self contactView];
        v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:v20];
        [v14 insertSections:v15 withRowAnimation:3];
LABEL_9:
      }
    }
  }
}

- (void)setMenuProviderForCell:(id)a3 forActionGroupItem:(id)a4
{
  v15 = a3;
  v5 = [a4 actions];
  v6 = [v5 firstObject];

  objc_opt_class();
  v7 = v6;
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
    v10 = [v9 menuProvider];

    [v15 setMenuProvider:v10];
  }

  else
  {
    v11 = [v7 target];
    if ([v11 conformsToProtocol:&unk_1F0D822B0])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v10 = v12;

    if (v10)
    {
      v13 = [v15 contextMenuInteraction];
      v14 = [v10 menuProviderForContextMenuInteraction:v13];
      [v15 setMenuProvider:v14];
    }
  }
}

- (id)_cellForIndexPath:(id)a3 forTableView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CNContactContentEditViewController *)self _itemAtIndexPath:v7 forTableView:v8];
  v10 = [(CNContactContentEditViewController *)self _cellIdentifierForTableView:v8 indexPath:v7];

  v11 = [(CNContactContentEditViewController *)self noteCell];
  if (v11 && (v12 = v11, -[CNContactContentEditViewController contactView](self, "contactView"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_class(), [v14 cellIdentifierForClass:objc_opt_class()], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v10, "isEqualToString:", v15), v15, v13, v12, v16))
  {
    v17 = [(CNContactContentEditViewController *)self noteCell];
    [(CNContactContentEditViewController *)self setNoteCell:0];
  }

  else
  {
    v18 = [(CNContactContentEditViewController *)self contactView];
    v17 = [v18 dequeueReusableCellWithIdentifier:v10];
  }

  if (!v17)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"CNContactContentEditViewController.m" lineNumber:3081 description:{@"We couldn’t create a cell with identifier: %@ indexPath: %@", v10, v7}];
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
      v22 = [(CNContactContentEditViewController *)self highlightedProperties];
      if ([v22 count])
      {
        v23 = [(CNContactContentEditViewController *)self highlightedProperties];
        v24 = [v21 contactProperty];
        v25 = [v23 containsObject:v24];

        if (v25 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v17 setForceSuggested:1];
        }
      }

      else
      {
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v17 setDelegate:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [v17 setShouldShowTransportButtons:{objc_msgSend(objc_opt_class(), "enablesTransportButtons")}];
  }

  [v17 setCardGroupItem:v9];
  if (objc_opt_respondsToSelector())
  {
    v26 = [(CNContactContentEditViewController *)self presentingDelegate];
    [v17 setPresentingDelegate:v26];
  }

  if (objc_opt_respondsToSelector())
  {
    v27 = [(CNContactContentEditViewController *)self contactViewConfiguration];
    [v17 setAllowsActions:{objc_msgSend(v27, "allowsActions")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v28 = v17;
    v29 = [(CNContactContentEditViewController *)self emergencyNumberIdentifier];
    v30 = [v28 propertyItem];
    v31 = [v30 contactProperty];
    v32 = [v31 identifier];
    [v28 setEmergencyPhoneNumber:{objc_msgSend(v29, "isEqualToString:", v32)}];
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
    v36 = v17;
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

  return v17;
}

- (id)_cellIdentifierForTableView:(id)a3 indexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CNContactContentEditViewController *)self _itemAtIndexPath:v8 forTableView:v7];
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
              v15 = [MEMORY[0x1E696AAA8] currentHandler];
              [v15 handleFailureInMethod:a2 object:self file:@"CNContactContentEditViewController.m" lineNumber:3061 description:{@"Unknown group item: %@", v9}];

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

  v13 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v8 section], v7);
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

- (void)_scrollContactView:(id)a3 toVisibleGroup:(id)a4
{
  v16 = a3;
  v6 = a4;
  [v16 _effectiveContentInset];
  [v16 setContentOffset:{0.0, -v7}];
  if (v6)
  {
    v8 = [(CNContactContentEditViewController *)self sectionOfGroup:v6 inTableView:v16];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = [v6 displayItems];
      v11 = ([v10 count] >> 1);

      v12 = [MEMORY[0x1E696AC88] indexPathForRow:v11 inSection:v9];
      v13 = [v16 numberOfSections];
      if (v13 > [v12 section])
      {
        v14 = [v16 numberOfRowsInSection:{objc_msgSend(v12, "section")}];
        if (v14 > [v12 row])
        {
LABEL_7:
          if (!v12)
          {
            goto LABEL_10;
          }

          [v16 scrollToRowAtIndexPath:v12 atScrollPosition:2 animated:0];
          goto LABEL_9;
        }

        if ([v16 numberOfRowsInSection:{objc_msgSend(v12, "section")}] >= 1)
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

- (id)_currentTopVisibleGroupInContactView:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  v7 = [v4 tableHeaderView];
  [v7 bounds];
  v9 = v8;
  [v4 estimatedRowHeight];
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
    v12 = [v4 visibleCells];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

      v20 = [v19 propertyItem];
      v21 = [v20 property];
      v18 = [(CNContactContentEditViewController *)self cardGroupForProperty:v21];

      v12 = v19;
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
  v2 = [(CNContactContentEditViewController *)self contact];
  v3 = [v2 isSuggested];

  return v3;
}

- (void)contactViewController:(id)a3 didDeleteContact:(id)a4
{
  v16 = a4;
  v5 = [(CNContactContentEditViewController *)self contact];
  v6 = [v5 mainStoreLinkedContacts];
  v7 = [v6 containsObject:v16];

  if (v7)
  {
    [(CNContactContentEditViewController *)self removeLinkedContact:v16];
    v9 = [(CNContactContentEditViewController *)self saveLinkedContactsExecutor];
    v10 = [(CNContactContentEditViewController *)self saveDescriptionForCurrentState];
    v11 = [v9 executeSaveWithConfiguration:v10 saveDelegate:self];

    [(CNContactContentEditViewController *)self setEditingLinkedContacts:0];
    v12 = [(CNContactContentEditViewController *)self issuedSaveRequestIdentifiers];
    v13 = [v11 identifiersOfIssuedSaveRequests];
    [v12 addObjectsFromArray:v13];

    v14 = [v11 contact];

    if (v14)
    {
      v15 = [v11 contact];
      [(CNContactContentEditViewController *)self setContact:v15];
    }
  }

  MEMORY[0x1EEE66BE0](v8);
}

- (double)navigationBarHeight
{
  v2 = [(CNContactContentEditViewController *)self navigationItemController];
  v3 = [v2 navigationController];

  v4 = [v3 navigationBar];
  [v4 frame];
  v6 = v5;

  return v6;
}

- (UIEdgeInsets)headerViewSafeAreaInsets
{
  v3 = [(CNContactContentEditViewController *)self view];
  [v3 safeAreaInsets];
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

- (void)headerViewDidChangeHeight:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentEditViewController *)self contactHeaderView];

  if (v5 == v4)
  {
    [(CNContactContentEditViewController *)self viewDidLayoutSubviews];
    [(CNContactContentEditViewController *)self reloadDataPreservingChanges:1];

    [(CNContactContentEditViewController *)self setupConstraints];
  }
}

- (BOOL)isNicknameProhibited
{
  v2 = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
  v3 = [v2 containsObject:*MEMORY[0x1E695C310]];

  return v3;
}

- (void)headerPhotoDidUpdate
{
  [(CNContactContentEditViewController *)self updateDoneButton];
  contactHeaderView = self->_contactHeaderView;

  [(CNContactHeaderEditView *)contactHeaderView updateEditButtonTitle];
}

- (void)contactGroupPickerDidFinish:(id)a3 withGroup:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(CNContactContentEditViewController *)self presentingDelegate];
  [v7 sender:self dismissViewController:v6];

  [(CNContactContentEditViewController *)self _addedGroupWithName:v8];
}

- (void)contactGroupPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentEditViewController *)self presentingDelegate];
  [v5 sender:self dismissViewController:v4];
}

- (id)alreadyPickedGroups
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CNContactContentEditViewController *)self editingGroups];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
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

        v10 = [v9 property];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_phoneticNameForValue:(id)a3 currentPhoneticName:(id)a4 property:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 cnui_stringByTransliteratingToPhoneticCharactersForProperty:a5];
  v10 = [v9 _cn_trimmedString];
  v11 = [v8 _cn_trimmedString];

  v12 = [v10 isEqualToString:v11];
  v13 = [v7 length];

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

- (void)propertyItem:(id)a3 willChangeValue:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 contactProperty];
  v9 = [v8 phoneticProperty];

  if (v9)
  {
    v10 = [(CNContactContentEditViewController *)self nameEditingGroups];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __67__CNContactContentEditViewController_propertyItem_willChangeValue___block_invoke;
    v54[3] = &unk_1E74E6E48;
    v11 = v9;
    v55 = v11;
    v12 = [v10 _cn_firstObjectPassingTest:v54];

    v13 = [v12 editingItems];
    v14 = [v13 firstObject];
    v15 = [v14 labeledValue];
    v16 = [v15 value];

    v17 = [(CNContactContentEditViewController *)self _phoneticNameForValue:v7 currentPhoneticName:v16 property:v11];
    v44 = v16;
    if (![v7 length])
    {
      v18 = [v6 labeledValue];
      v19 = [v18 value];
      v20 = v11;
      v21 = v19;
      v22 = v16;
      v23 = v20;
      v24 = [(CNContactContentEditViewController *)self _phoneticNameForValue:v19 currentPhoneticName:v22 property:?];

      if (v24)
      {

        v17 = &stru_1F0CE7398;
      }

      v11 = v23;
      v16 = v44;
    }

    if (v17)
    {
      v42 = v7;
      v43 = v6;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v25 = [v12 editingItems];
      v26 = [v25 countByEnumeratingWithState:&v50 objects:v57 count:16];
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
              objc_enumerationMutation(v25);
            }

            [*(*(&v50 + 1) + 8 * i) updateLabeledValueWithValue:v17];
          }

          v27 = [v25 countByEnumeratingWithState:&v50 objects:v57 count:16];
        }

        while (v27);
      }

      v45 = v11;
      v41 = v12;

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v30 = [(CNContactContentEditViewController *)self contactView];
      v31 = [v30 visibleCells];

      v32 = [v31 countByEnumeratingWithState:&v46 objects:v56 count:16];
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
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v46 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = [v36 propertyItem];
              v38 = [v37 property];
              v39 = [v38 isEqualToString:v45];

              if (v39)
              {
                v40 = [v36 textField];
                [v40 setText:v17];
              }
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v33);
      }

      v7 = v42;
      v6 = v43;
      v12 = v41;
      v16 = v44;
    }
  }
}

uint64_t __67__CNContactContentEditViewController_propertyItem_willChangeValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 property];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)propertyCellDidChangeLayout:(id)a3
{
  v6 = a3;
  v4 = [(CNContactContentEditViewController *)self contactView];
  v5 = [v4 indexPathForCell:v6];
  if (v5)
  {
    [v6 setValue:MEMORY[0x1E695E118] forKey:@"needsHeightCalculation"];
    [v4 _heightForRowAtIndexPath:v5];
    [v4 _setHeight:v5 forRowAtIndexPath:?];
  }
}

- (void)propertyCell:(id)a3 didDeleteLabel:(id)a4 forGroup:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v21 = a5;
  [v21 itemsUsingLabel:a4];
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
        v8 = [v21 nextAvailableLabel];
        [v7 updateLabeledValueWithLabel:v8];
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [(CNContactContentEditViewController *)self contactView];
        v10 = [v9 visibleCells];

        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * v14);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = [v15 propertyItem];

                if (v16 == v7)
                {
                  [v15 updateWithPropertyItem:v7];
                }
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

  v17 = [(CNContactContentEditViewController *)self contactView];
  [(CNContactContentEditViewController *)self _updateLabelWidthForCellsInGroup:v21 forTableView:v17 reset:1];

  [(CNContactContentEditViewController *)self updateDoneButton];
}

- (void)propertyCell:(id)a3 performActionForItem:(id)a4 withTransportType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(CNContactContentEditViewController *)self addLinkedCardAction];
LABEL_6:
      v11 = v12;
      [v12 performActionWithSender:v8];
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(CNContactContentEditViewController *)self staticIdentityAction];
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(CNContactContentEditViewController *)self addStaticIdentityAction];
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(CNContactContentEditViewController *)self selectContainersAction];
      v14 = [(CNContactContentEditViewController *)self containerContext];
      [(CNPropertySuggestionAction *)v13 performActionWithContainerContext:v14];
    }

    else
    {
      if ([v8 isSuggested])
      {
        v15 = [CNPropertySuggestionAction alloc];
        v16 = [(CNContactContentEditViewController *)self contact];
        v13 = [(CNPropertyAction *)v15 initWithContact:v16 propertyItem:v9];

        [(CNContactAction *)v13 setDelegate:self];
      }

      else
      {
        if (a5 == 7)
        {
          v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
          v17 = MEMORY[0x1E69DC648];
          v18 = CNContactsUIBundle();
          v19 = [v18 localizedStringForKey:@"PHONE_ACTION_TTY_CALL" value:&stru_1F0CE7398 table:@"Localized"];
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __90__CNContactContentEditViewController_propertyCell_performActionForItem_withTransportType___block_invoke;
          v41[3] = &unk_1E74E6E20;
          v41[4] = self;
          v20 = v9;
          v42 = v20;
          v21 = v8;
          v43 = v21;
          v22 = [v17 actionWithTitle:v19 style:0 handler:v41];
          [(CNPropertySuggestionAction *)v13 addAction:v22];

          v23 = MEMORY[0x1E69DC648];
          v24 = CNContactsUIBundle();
          v25 = [v24 localizedStringForKey:@"PHONE_ACTION_TTY_RELAY_CALL" value:&stru_1F0CE7398 table:@"Localized"];
          v34 = MEMORY[0x1E69E9820];
          v35 = 3221225472;
          v36 = __90__CNContactContentEditViewController_propertyCell_performActionForItem_withTransportType___block_invoke_2;
          v37 = &unk_1E74E6E20;
          v38 = self;
          v39 = v20;
          v26 = v21;
          v40 = v26;
          v27 = [v23 actionWithTitle:v25 style:0 handler:&v34];
          [(CNPropertySuggestionAction *)v13 addAction:v27, v34, v35, v36, v37, v38];

          v28 = MEMORY[0x1E69DC648];
          v29 = CNContactsUIBundle();
          v30 = [v29 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
          v31 = [v28 actionWithTitle:v30 style:1 handler:0];
          [(CNPropertySuggestionAction *)v13 addAction:v31];

          [(CNContactContentEditViewController *)self sender:v26 presentViewController:v13];
          goto LABEL_20;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [CNPropertyAction performDefaultActionForItem:v9 sender:v8];
          goto LABEL_8;
        }

        v32 = [CNPropertyPostalAddressAction alloc];
        v33 = [(CNContactContentEditViewController *)self contact];
        v13 = [(CNPropertyAction *)v32 initWithContact:v33 propertyItem:v9];
      }

      [(CNPropertySuggestionAction *)v13 performActionForItem:v9 sender:v8];
    }

LABEL_20:

    goto LABEL_8;
  }

  v10 = [(CNContactContentEditViewController *)self linkedCardsAction];
LABEL_3:
  v11 = v10;
  [v10 performActionForItem:v9 sender:v8];
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

- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewValue:(id)a5
{
  v21 = a3;
  v8 = a4;
  [v8 updateLabeledValueWithValue:a5];
  if (objc_opt_respondsToSelector())
  {
    [v21 updateWithPropertyItem:v8];
  }

  v9 = [v8 group];
  v10 = [(CNContactContentEditViewController *)self contactView];
  [(CNContactContentEditViewController *)self _updateLabelWidthForCellsInGroup:v9 forTableView:v10 reset:1];

  v11 = [v8 property];
  v12 = *MEMORY[0x1E695C1E0];
  if ([v11 isEqualToString:*MEMORY[0x1E695C1E0]])
  {

    v13 = *MEMORY[0x1E695C3F8];
  }

  else
  {
    v14 = [v8 property];
    v13 = *MEMORY[0x1E695C3F8];
    v15 = [v14 isEqualToString:*MEMORY[0x1E695C3F8]];

    if (!v15)
    {
      goto LABEL_7;
    }
  }

  v16 = [(CNContactContentEditViewController *)self propertyGroups];
  v17 = [v16 objectForKeyedSubscript:v12];
  [(CNContactContentEditViewController *)self _validateGroup:v17];

  v18 = [(CNContactContentEditViewController *)self propertyGroups];
  v19 = [v18 objectForKeyedSubscript:v13];
  [(CNContactContentEditViewController *)self _validateGroup:v19];

LABEL_7:
  v20 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v20 updateContactWithEditedPropertyItem:v8];

  [(CNContactContentEditViewController *)self updateDoneButton];
}

- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewLabel:(id)a5
{
  v8 = a4;
  v9 = a3;
  [v8 updateLabeledValueWithLabel:a5];
  [v9 updateWithPropertyItem:v8];

  v10 = [v8 group];

  v11 = [(CNContactContentEditViewController *)self contactView];
  [(CNContactContentEditViewController *)self _updateLabelWidthForCellsInGroup:v10 forTableView:v11 reset:1];

  [(CNContactContentEditViewController *)self updateDoneButton];
}

- (void)actionWasCanceled:(id)a3
{
  v6 = [(CNContactContentEditViewController *)self contactView];
  v4 = [(CNContactContentEditViewController *)self contactView];
  v5 = [v4 indexPathForSelectedRow];
  [v6 deselectRowAtIndexPath:v5 animated:1];
}

- (void)actionDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentEditViewController *)self contactView];
  v6 = [(CNContactContentEditViewController *)self contactView];
  v7 = [v6 indexPathForSelectedRow];
  [v5 deselectRowAtIndexPath:v7 animated:1];

  v8 = [(CNContactContentEditViewController *)self deleteContactAction];
  v9 = v8;
  if (v8 == v4)
  {

    goto LABEL_8;
  }

  v10 = [(CNContactContentEditViewController *)self ignoreContactAction];

  if (v10 == v4)
  {
LABEL_8:
    v13 = [(CNContactContentEditViewController *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
LABEL_11:
      v17 = [(CNContactContentEditViewController *)self navigationController];
      v18 = [v17 popViewControllerAnimated:1];
LABEL_15:

      goto LABEL_16;
    }

    v15 = [(CNContactContentEditViewController *)self delegate];
    v16 = [(CNContactContentEditViewController *)self contact];
    [v15 contactEditViewController:self didDeleteContact:v16];
LABEL_10:

    goto LABEL_11;
  }

  v11 = [(CNContactContentEditViewController *)self addLinkedCardAction];

  if (v11 == v4)
  {
    v17 = [(CNContactContentEditViewController *)self addLinkedCardAction];
    v19 = [v17 chosenContact];
    [(CNContactContentEditViewController *)self addLinkedContact:v19];
LABEL_14:

    goto LABEL_15;
  }

  v12 = [(CNContactContentEditViewController *)self addStaticIdentityAction];

  if (v12 == v4)
  {
    v17 = [(CNContactContentEditViewController *)self addStaticIdentityAction];
    v19 = [v17 chosenIdentity];
    [(CNContactContentEditViewController *)self addStaticIdentity:v19];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CNContactContentEditViewController *)self reloadUnifiedContact];
    goto LABEL_16;
  }

  v20 = [(CNContactContentEditViewController *)self suggestedContactAction];

  if (v20 == v4)
  {
    v27 = [(CNContactContentEditViewController *)self delegate];
    v28 = objc_opt_respondsToSelector();

    if ((v28 & 1) == 0)
    {
      goto LABEL_11;
    }

    v15 = [(CNContactContentEditViewController *)self delegate];
    v16 = [(CNContactContentEditViewController *)self suggestedContactAction];
    v29 = [v16 contact];
    [v15 contactEditViewController:self didDeleteContact:v29];

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v4;
    v21 = [v17 propertyItem];
    v19 = [v21 group];

    v22 = [v17 selectedChoice];
    if (v22 == 2)
    {
      [v17 reject];
      [v19 reloadDataPreservingChanges:0];
    }

    else if (v22 == 1)
    {
      v23 = [v17 propertyItem];
      v24 = [(CNContactContentEditViewController *)self indexPathOfDisplayedPropertyItem:v23];

      v25 = [(CNContactContentEditViewController *)self contactView];
      [v25 selectRowAtIndexPath:v24 animated:0 scrollPosition:0];

      v26 = dispatch_time(0, 500000000);
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __54__CNContactContentEditViewController_actionDidFinish___block_invoke;
      v34 = &unk_1E74E77C0;
      v35 = v17;
      v36 = v19;
      dispatch_after(v26, MEMORY[0x1E69E96A0], &v31);
    }

    goto LABEL_14;
  }

  v30 = [(CNContactContentEditViewController *)self selectContainersAction];

  if (v30 == v4)
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

- (void)action:(id)a3 pushViewController:(id)a4 sender:(id)a5
{
  v6 = a4;
  [(CNContactContentEditViewController *)self setBackgroundColorIfNeededForPresentedViewController:v6];
  v7 = [(CNContactContentEditViewController *)self navigationItem];
  v8 = [v7 prompt];
  v9 = [v6 navigationItem];
  [v9 setPrompt:v8];

  v10 = [(CNContactContentEditViewController *)self navigationController];
  [v10 pushViewController:v6 animated:1];
}

- (void)action:(id)a3 dismissViewController:(id)a4 sender:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CNContactContentEditViewController *)self presentingDelegate];
  [v9 sender:v7 dismissViewController:v8];
}

- (void)action:(id)a3 presentViewController:(id)a4 sender:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CNContactContentEditViewController *)self presentingDelegate];
  [v9 sender:v7 presentViewController:v8];
}

- (id)action:(id)a3 cellForPropertyItem:(id)a4 sender:(id)a5
{
  v6 = a4;
  v7 = [v6 property];
  v8 = [CNContactView cellIdentifierForProperty:v7];

  v9 = [CNContactView classForCellIdentifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 alloc];
    v12 = NSStringFromClass(v10);
    v10 = [v11 initWithStyle:0 reuseIdentifier:v12];

    [(objc_class *)v10 setIgnoreSuggested:1];
    [(objc_class *)v10 setCardGroupItem:v6];
    [(objc_class *)v10 setDelegate:self];
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CNContactContentEditViewController *)self contactViewConfiguration];
      -[objc_class setAllowsActions:](v10, "setAllowsActions:", [v13 allowsActions]);
    }

    [(CNContactContentEditViewController *)self prepareCell:v10];
  }

  return v10;
}

- (void)action:(id)a3 prepareChildContactViewController:(id)a4 sender:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
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
          [v8 setValue:v14 forKey:v13];
        }
      }

      v10 = [&unk_1F0D4B940 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  [v8 setAllowsSettingLinkedContactsAsPreferred:0];
  [v8 setAllowsAddToFavorites:0];
  [v8 setAllowsAddingToAddressBook:0];
  [v8 setShouldShowLinkedContacts:0];
  v15 = [(CNContactContentEditViewController *)self parentGroup];
  [v8 setParentGroup:v15];

  v16 = [(CNContactContentEditViewController *)self linkedCardsAction];

  if (v16 != v7)
  {
    v17 = [(CNContactContentEditViewController *)self parentContainer];
    [v8 setParentContainer:v17];
  }

  v18 = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
  [v8 setProhibitedPropertyKeys:v18];

  v19 = [v8 contactView];
  v20 = [(CNContactContentEditViewController *)self contactView];
  v21 = [(CNContactContentEditViewController *)self environment];
  [v19 setAttributesFromContactView:v20 runningInContactsAppOniPad:{objc_msgSend(v21, "runningInContactsAppOniPad")}];
}

- (void)viewController:(id)a3 presentationControllerWillDismiss:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(CNContactContentEditViewController *)self presentedViewController];

  if (v7 == v6)
  {
    [(CNContactContentEditViewController *)self presentationControllerWillDismiss:v8];
  }
}

- (BOOL)isPresentingModalViewController
{
  v2 = [(CNContactContentEditViewController *)self presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(CNContactContentEditViewController *)self isOutOfProcess])
  {
    v9 = [(CNContactContentEditViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      [(CNContactContentEditViewController *)self setIsPresentingFullscreenForOutOfProcess:0];
      v11 = [(CNContactContentEditViewController *)self delegate];
      [v11 contactEditViewControllerWillDismissFullscreen:self];
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__CNContactContentEditViewController_sender_dismissViewController_completionHandler___block_invoke;
  v13[3] = &unk_1E74E6DD0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v7 dismissViewControllerAnimated:1 completion:v13];
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

- (void)setBackgroundColorIfNeededForPresentedViewController:(id)a3
{
  v20 = a3;
  v4 = +[CNContactStyle currentStyle];
  v5 = [v4 backgroundColor];
  if (v5)
  {
    v6 = +[CNContactStyle currentStyle];
    v7 = [v6 backgroundColor];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    v9 = [v7 isEqual:v8];

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = [(CNContactContentEditViewController *)self view];
  v12 = [v11 superview];
  v13 = [v12 backgroundColor];
  v14 = [MEMORY[0x1E69DC888] clearColor];
  v15 = [v13 isEqual:v14];

  if ((v10 & 1) == 0 && (v15 & 1) == 0)
  {
    v16 = [(CNContactContentEditViewController *)self view];
    v17 = [v16 superview];
    v18 = [v17 backgroundColor];
    v19 = [v20 view];
    [v19 setBackgroundColor:v18];
  }
}

- (int64_t)_modalPresentationStyleForViewController:(id)a3
{
  v5 = a3;
  if (NSClassFromString(&cfstr_Qlpreviewcontr.isa) && (objc_opt_isKindOfClass() & 1) != 0)
  {
    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v5 modalPresentationStyle])
  {
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 modalPresentationStyle];
    goto LABEL_30;
  }

  v7 = [v5 view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = 7;
    goto LABEL_30;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v9 = getSLComposeViewControllerClass_softClass_22632;
  v28 = getSLComposeViewControllerClass_softClass_22632;
  if (!getSLComposeViewControllerClass_softClass_22632)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __getSLComposeViewControllerClass_block_invoke_22633;
    v24[3] = &unk_1E74E7518;
    v24[4] = &v25;
    __getSLComposeViewControllerClass_block_invoke_22633(v24);
    v9 = v26[3];
  }

  v10 = v9;
  _Block_object_dispose(&v25, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 5;
    goto LABEL_30;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  if (v11)
  {
    v9 = [v5 viewControllers];
    v3 = [v9 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

LABEL_19:
      if ([(UIViewController *)self ab_isInPopover])
      {
        v6 = 2;
        goto LABEL_30;
      }

      if ([(CNContactContentEditViewController *)self isOutOfProcess]|| CNUIIsDDActionsService())
      {
        v17 = [MEMORY[0x1E69DC938] currentDevice];
        v18 = [v17 userInterfaceIdiom];

        if ((v18 & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
LABEL_29:
          v6 = 0;
          goto LABEL_30;
        }
      }

      v16 = +[CNContactStyle currentStyle];
      if ([v16 shouldPresentInCurrentContext])
      {
        v6 = 3;
      }

      else
      {
        v21 = [MEMORY[0x1E69DC938] currentDevice];
        v22 = [v21 userInterfaceIdiom];

        if ((v22 & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          v6 = 2;
        }

        else
        {
          v6 = -2;
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
    v13 = [v5 viewControllers];
    v14 = [v13 firstObject];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    if (v15)
    {
      v16 = +[CNContactStyle currentStyle];
      if ([v16 shouldPresentInCurrentContext])
      {
        v6 = 6;
      }

      else
      {
        v6 = -2;
      }

      goto LABEL_40;
    }
  }

  if ([(UIViewController *)self ab_isInPopover]|| [(UIViewController *)self ab_isInSheet])
  {
LABEL_42:
    v6 = 3;
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
    v6 = 3;
  }

  else
  {
    v6 = 7;
  }

LABEL_30:

  return v6;
}

- (void)performConfirmedCancel
{
  [(CNContactContentEditViewController *)self cancelAsyncLookups];
  [(CNContactContentEditViewController *)self _didCompleteWithContact:0];
  if ([(CNContactContentEditViewController *)self mode]== 3)
  {
    v3 = [(CNContactContentEditViewController *)self contact];
    v4 = [v3 identifier];

    if (v4)
    {
      [(CNContactContentEditViewController *)self cleanupRecentMetadata];
    }
  }

  v5 = [(CNContactContentEditViewController *)self view];
  [v5 endEditing:1];

  [(CNContactContentEditViewController *)self setEditingLinkedContacts:0];
  [(CNContactContentEditViewController *)self reloadDataPreservingChanges:0];
  v6 = [(CNContactContentEditViewController *)self contactView];
  [v6 reloadData];

  if ([(CNContactContentEditViewController *)self supportsDrafts])
  {

    +[CNUIDraftSupport deleteDrafts];
  }
}

- (void)presentationControllerWillDismiss:(id)a3
{
  if ([(CNContactContentEditViewController *)self isOutOfProcess])
  {
    v4 = [(CNContactContentEditViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      [(CNContactContentEditViewController *)self setIsPresentingFullscreenForOutOfProcess:0];
      v6 = [(CNContactContentEditViewController *)self delegate];
      [v6 contactEditViewControllerWillDismissFullscreen:self];
    }
  }
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v14 = a3;
  v8 = a5;
  if (a4 != 5)
  {
    if ([(CNContactContentEditViewController *)self isOutOfProcess])
    {
      v9 = [(CNContactContentEditViewController *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [v14 presentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          [(CNContactContentEditViewController *)self setIsPresentingFullscreenForOutOfProcess:1];
          v13 = [(CNContactContentEditViewController *)self delegate];
          [v13 contactEditViewControllerWillPresentFullscreen:self];
        }
      }
    }
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1 && CNUIIsDDActionsService())
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
      v3 = [(CNContactContentEditViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        if ([(CNContactContentEditViewController *)self isPresentingFullscreenForOutOfProcess]&& ([(CNContactContentEditViewController *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
        {
          v9 = [(CNContactContentEditViewController *)self delegate];
          [v9 contactEditViewControllerWillPresentFullscreen:self];
        }

        else
        {
          if ([(CNContactContentEditViewController *)self isPresentingFullscreenForOutOfProcess])
          {
            return;
          }

          v7 = [(CNContactContentEditViewController *)self delegate];
          v8 = objc_opt_respondsToSelector();

          if ((v8 & 1) == 0)
          {
            return;
          }

          v9 = [(CNContactContentEditViewController *)self delegate];
          [v9 contactEditViewControllerWillDismissFullscreen:self];
        }
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v17 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(CNContactContentEditViewController *)self presentedViewController];
  v9 = [v8 popoverPresentationController];
  v10 = [v9 sourceView];

  if (v10)
  {
    v11 = [v10 superview];
    v12 = [(CNContactContentEditViewController *)self contactView];

    if (v11 == v12)
    {
      v13 = [(CNContactContentEditViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __89__CNContactContentEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
        v15[3] = &unk_1E74E6330;
        v15[4] = self;
        v16 = v10;
        [v7 animateAlongsideTransition:0 completion:v15];
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

- (void)sender:(id)a3 presentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 setModalPresentationStyle:{-[CNContactContentEditViewController _modalPresentationStyleForViewController:](self, "_modalPresentationStyleForViewController:", v7)}];
  v8 = +[CNContactStyle currentStyle];
  [v7 setModalTransitionStyle:{objc_msgSend(v8, "modalTransitionStyle")}];

  objc_opt_class();
  v36 = v6;
  if (objc_opt_isKindOfClass())
  {
    v9 = v36;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v7 popoverPresentationController];
  [v11 setSourceView:v10];

  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(CNContactContentEditViewController *)self contactView];
  [(CNContactContentEditViewController *)self centeredSourceRect:v20 inContactView:v13, v15, v17, v19];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v7 popoverPresentationController];
  [v29 setSourceRect:{v22, v24, v26, v28}];

  v30 = [v7 popoverPresentationController];
  [v30 setPermittedArrowDirections:15];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = [v7 presentationController];
    [v31 setDelegate:self];
  }

  if (!self->_disablingRotation)
  {
    v32 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v32 userInterfaceIdiom])
    {
LABEL_11:

      goto LABEL_12;
    }

    v33 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v33 _referenceBounds];
    if (CGRectGetHeight(v38) <= 667.0 || [v7 modalPresentationStyle])
    {

      goto LABEL_11;
    }

    v34 = [v7 supportedInterfaceOrientations];
    v35 = [(CNContactContentEditViewController *)self supportedInterfaceOrientations];

    if (v34 != v35)
    {
      [(CNContactContentEditViewController *)self _beginDisablingInterfaceAutorotation];
      self->_disablingRotation = 1;
    }
  }

LABEL_12:
  [(CNContactContentEditViewController *)self setBackgroundColorIfNeededForPresentedViewController:v7];
  [(CNContactContentEditViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v4 = [a3 cellForRowAtIndexPath:a4];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 shouldPerformAccessoryAction])
  {
    [v4 performAccessoryAction];
  }
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  v4 = [(CNContactContentEditViewController *)self _itemAtIndexPath:a4 forTableView:a3];
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

- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6
{
  if (sel_copy_ == a4)
  {
    v8 = [a3 cellForRowAtIndexPath:a5];
    [v8 a4];
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(CNContactContentEditViewController *)self _itemAtIndexPath:a4 forTableView:a3];
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

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v5 = [(CNContactContentEditViewController *)self _cellIdentifierForTableView:a3 indexPath:a4];
  v6 = [(CNContactContentEditViewController *)self contactView];
  v7 = [objc_opt_class() classForCellIdentifier:v5];

  LOBYTE(v6) = [v7 shouldIndentWhileEditing];
  return v6;
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v14 = a4;
  [v14 updateConstraintsIfNeeded];
  v6 = [v14 backgroundView];
  v7 = [(CNContactContentEditViewController *)self contactView];
  v8 = [v7 sectionBackgroundColor];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = [(CNContactContentEditViewController *)self environment];
    v9 = [v10 runningInContactsAppOniPad];
  }

  if (v9 && !v6)
  {
    v11 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  v12 = [(CNContactContentEditViewController *)self contactView];
  v13 = [v12 sectionBackgroundColor];
  [v6 setBackgroundColor:v13];

  [v14 setBackgroundView:v6];
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v21 = a4;
  v8 = a3;
  [(CNContactContentEditViewController *)self tableView:v8 willDisplayFooterView:v21 forSection:a5];
  [v21 _cnui_applyContactStyle];
  v9 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:a5 forTableView:v8];

  v10 = [(CNContactContentEditViewController *)self cardEditingDeleteContactGroup];
  if (v9 == v10 && ([(CNContactContentEditViewController *)self ignoreContactAction], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = v15;
    v17 = [(CNContactContentEditViewController *)self contactView];
    v18 = [v17 sectionBackgroundColor];

    if (v18)
    {
      v13 = [(CNContactContentEditViewController *)self contactView];
      v14 = [v13 sectionBackgroundColor];
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
    v12 = [v11 backgroundColor];

    if (v12)
    {
      v13 = +[CNContactStyle currentStyle];
      v14 = [v13 backgroundColor];
LABEL_9:
      v19 = v14;
      v20 = [v21 backgroundView];
      [v20 setBackgroundColor:v19];
    }
  }
}

- (BOOL)tableView:(id)a3 shouldHaveFullLengthBottomSeparatorForSection:(int64_t)a4
{
  v5 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(CNContactContentEditViewController *)self nameEditingGroups];
    v7 = [v6 indexOfObject:v5];
    v8 = [(CNContactContentEditViewController *)self nameEditingGroups];
    v9 = v7 == [v8 count] - 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4
{
  v5 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(CNContactContentEditViewController *)self nameEditingGroups];
    v7 = [v6 firstObject];
    v8 = v5 == v7;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:a3];
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 title];
  }

  else
  {
    v7 = [(CNContactContentEditViewController *)self cardEditingDeleteContactGroup];
    v8 = v7;
    if (v5 == v7)
    {
      v9 = [(CNContactContentEditViewController *)self ignoreContactAction];

      if (v9)
      {
        v6 = &stru_1F0CE7398;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 || (v7 = *MEMORY[0x1E6996568], -[CNContactContentEditViewController contactViewConfiguration](self, "contactViewConfiguration"), v8 = objc_claimAutoreleasedReturnValue(), [v8 warningMessage], v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v7) = (*(v7 + 16))(v7, v9), v9, v8, (v7 & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v10 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v13];

    v14 = *MEMORY[0x1E6996530];
    v15 = [(CNContactContentEditViewController *)self mutableContact];
    v16 = [v15 phoneNumbers];
    [v10 setShouldDisplayWarningIcon:{(*(v14 + 16))(v14, v16)}];

    v17 = [v10 warningText];
    v18 = [(CNContactContentEditViewController *)self contactViewConfiguration];
    v19 = [v18 warningMessage];
    v20 = [v17 isEqual:v19];

    if ((v20 & 1) == 0)
    {
      v21 = [(CNContactContentEditViewController *)self contactViewConfiguration];
      v22 = [v21 warningMessage];
      [v10 setWarningText:v22];
    }
  }

  return v10;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:a3];
  v6 = [(CNContactContentEditViewController *)self editingGroups];
  v7 = [v6 lastObject];

  if (v5 == v7)
  {
    v8 = 35.0;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:a3];
  v7 = [v6 title];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v7)
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
      v12 = [(CNContactContentEditViewController *)self nameEditingGroups];
      v13 = [v12 containsObject:v6];

      if (v13)
      {
        v11 = 0.0;
        if (!a4)
        {
          v14 = *MEMORY[0x1E6996568];
          v15 = [(CNContactContentEditViewController *)self contactViewConfiguration];
          v16 = [v15 warningMessage];
          LOBYTE(v14) = (*(v14 + 16))(v14, v16);

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v14 cellForRowAtIndexPath:v6];
  if ([(CNContactContentEditViewController *)self _indexPathIsActionItem:v6 forTableView:v14])
  {
    v8 = [(CNContactContentEditViewController *)self _itemAtIndexPath:v6 forTableView:v14];
    v9 = [v8 actions];
    v10 = [v9 objectAtIndexedSubscript:0];

    [v10 performActionWithSender:v7];
    v11 = [v14 indexPathForSelectedRow];
    [v14 deselectRowAtIndexPath:v11 animated:1];
  }

  else if (objc_opt_respondsToSelector())
  {
    if ([v7 isMemberOfClass:objc_opt_class()])
    {
      [v14 deselectRowAtIndexPath:v6 animated:1];
      [(CNContactContentEditViewController *)self addEditingItemAtIndexPath:v6 forTableView:v14];
    }

    else
    {
      if (([v7 shouldPerformDefaultAction] & 1) != 0 || (-[CNContactContentEditViewController contactViewConfiguration](self, "contactViewConfiguration"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "allowsPropertyActions"), v12, v13))
      {
        [v7 performDefaultAction];
      }

      [v14 deselectRowAtIndexPath:v6 animated:1];
    }
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = [a3 cellForRowAtIndexPath:a4];
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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  v10 = v8;
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
  v13 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v9 section], v19);
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
    v16 = [v9 row];
    v17 = [v19 numberOfRowsInSection:{objc_msgSend(v9, "section")}];
    if (v15 && v16 < v17 - 1)
    {
      [v12 setShowSeparator:1];
    }

    else
    {
      v18 = [(CNContactContentEditViewController *)self environment];
      [v12 setShowSeparator:{objc_msgSend(v18, "runningInContactsAppOniPad")}];
    }
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v15 = a3;
  v8 = a5;
  v9 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v8 section], v15);
  v10 = [v9 editingItems];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];

  if (a4 == 2)
  {
    v12 = [v15 cellForRowAtIndexPath:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(CNContactContentEditViewController *)self addLinkedCardAction];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }

      v13 = [(CNContactContentEditViewController *)self addStaticIdentityAction];
    }

    v14 = v13;
    if (v13)
    {
      [v13 performActionWithSender:v12];

      goto LABEL_13;
    }

LABEL_12:
    [(CNContactContentEditViewController *)self addEditingItemAtIndexPath:v8 forTableView:v15];
    goto LABEL_13;
  }

  if (a4 != 1)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CNContactContentEditViewController *)self removeEditingItem:v11 atIndexPath:v8 forTableView:v15];
    goto LABEL_14;
  }

  v12 = [v11 contact];
  [(CNContactContentEditViewController *)self removeLinkedContact:v12];
LABEL_13:

LABEL_14:
  [(CNContactContentEditViewController *)self updateDoneButton];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CNContactContentEditViewController *)self _indexPathIsActionItem:v8 forTableView:v7])
  {
    v9 = [(CNContactContentEditViewController *)self _cellForIndexPath:v8 forTableView:v7];
  }

  else
  {
    v10 = -[CNContactContentEditViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v8 section], v7);
    if ([(CNContactContentEditViewController *)self isStandardGroup:v10])
    {
      v9 = [(CNContactContentEditViewController *)self _cellForIndexPath:v8 forTableView:v7];
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
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"CNContactContentEditViewController.m" lineNumber:1891 description:@"We have no cell to return!"];
  }

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(CNContactContentEditViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:a3];
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

- (BOOL)isStandardGroup:(id)a3
{
  v3 = a3;
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

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(CNContactContentEditViewController *)self _currentGroupsForTableView:a3];
  v4 = [v3 count];

  return v4;
}

- (void)didChangeToShowTitle:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  [v5 setLayoutPositionallyAfterNavBar:v3];

  v7 = [(CNContactContentEditViewController *)self contactHeaderView];
  v6 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  [v7 updateForShowingNavBar:{objc_msgSend(v6, "layoutPositionallyAfterNavBar")}];
}

- (void)didChangeToEditMode:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactContentEditViewController *)self isEditing]!= a3)
  {

    [(CNContactContentEditViewController *)self setEditing:v3 animated:0];
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
    v4 = [(CNContactContentEditViewController *)self view];
    v5 = [(CNContactContentEditViewController *)self traitCollection];
    v3 = [(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController canShowPhotoPickerForView:v4 withTraitCollection:v5];
  }

  v6 = [(CNContactContentEditViewController *)self contactHeaderView];
  v7 = [v6 allowsEditPhoto];

  if (v3 != v7)
  {
    v8 = [(CNContactContentEditViewController *)self contactHeaderView];
    [v8 setAllowsEditPhoto:v3 preservingChanges:1];
  }
}

- (CGSize)setupTableHeaderView
{
  if (-[CNContactContentEditViewController shouldDisplayAvatarHeaderView](self, "shouldDisplayAvatarHeaderView") || (-[CNContactContentEditViewController contactView](self, "contactView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 customHeaderView], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v6 = 0;
  }

  else
  {
    v5 = [(CNContactContentEditViewController *)self contactView];
    v6 = [v5 customHeaderView];
  }

  v7 = [(CNContactContentEditViewController *)self contactView];
  v8 = [v7 tableHeaderView];
  v9 = [v8 needsUpdateConstraints];

  if (v6)
  {
    [v6 frame];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
  }

  v14 = [(CNContactContentEditViewController *)self contactView];
  [v14 setTableHeaderView:v6];

  if ((v9 & 1) == 0)
  {
    v15 = [(CNContactContentEditViewController *)self contactView];
    v16 = [v15 tableHeaderView];
    v17 = [v16 needsUpdateConstraints];

    if (v17)
    {
      v18 = [(CNContactContentEditViewController *)self contactView];
      v19 = [v18 tableHeaderView];
      [v19 updateConstraints];
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
  v7 = [(CNContactContentEditViewController *)self contactView];
  v8 = [v7 tableHeaderView];

  if (v8)
  {
    [v8 frame];
    if (v4 != v10 || v6 != v9)
    {
      v12 = [(CNContactContentEditViewController *)self contactView];
      [v12 setTableHeaderView:v8];
    }
  }

  [(CNContactContentEditViewController *)self focusOnFirstEditingItemIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v3 calculateLabelSizesIfNeeded];

  [(CNContactContentEditViewController *)self updateEditPhotoButtonIfNeeded];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v5 viewWillDisappear:a3];
  v4 = [(CNContactContentEditViewController *)self siriContextProvider];
  [v4 setEnabled:0];

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

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v13.receiver = self;
  v13.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v13 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (![(CNContactContentEditViewController *)self isOutOfProcess])
  {
    p_peripheryInsets = &self->_peripheryInsets;
    v6 = [(CNContactContentEditViewController *)self view];
    v7 = [v6 window];
    v8 = [v7 screen];
    [v8 _peripheryInsets];
    p_peripheryInsets->top = v9;
    p_peripheryInsets->left = v10;
    p_peripheryInsets->bottom = v11;
    p_peripheryInsets->right = v12;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v4 viewDidAppear:a3];
  if (self->_needsRefetch)
  {
    [(CNContactContentEditViewController *)self _refetchContact];
    self->_needsRefetch = 0;
  }

  [(CNContactContentEditViewController *)self becomeFirstResponder];
  [(CNContactContentEditViewController *)self updateWindowTitleForAppearing:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
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
  v7 = [(CNContactContentEditViewController *)self contactView];
  [v7 setBackgroundColor:v6];

LABEL_6:
  v15.receiver = self;
  v15.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v15 viewWillAppear:v3];
  v8 = +[CNContactStyle currentStyle];
  v9 = [v8 backgroundColor];

  if (v9)
  {
    v10 = +[CNContactStyle currentStyle];
    v11 = [v10 backgroundColor];
    v12 = [(CNContactContentEditViewController *)self view];
    [v12 setBackgroundColor:v11];
  }

  v13 = [(CNContactContentEditViewController *)self contactView];
  [v13 _cnui_applyContactStyle];

  if (![(CNContactContentEditViewController *)self reloadDataIfNeeded])
  {
    [(CNContactContentEditViewController *)self _setNeedsUpdateCachedLabelWidths];
  }

  [(CNContactContentEditViewController *)self updateEditNavigationItemsAnimated:0];
  v14 = [(CNContactContentEditViewController *)self siriContextProvider];
  [v14 setEnabled:1];

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
  v3 = [(CNContactContentEditViewController *)self shouldDisplayAvatarHeaderView];
  [(CNContactContentEditViewController *)self setupViewHierarchyIncludingAvatarHeader:v3];
  [(CNContactContentEditViewController *)self setupTableHeaderView];
  v4 = MEMORY[0x1E696ACD8];
  v5 = [(CNContactContentEditViewController *)self activatedConstraints];
  [v4 deactivateConstraints:v5];

  v73 = [MEMORY[0x1E695DF70] array];
  if (v3)
  {
    v6 = MEMORY[0x1E696ACD8];
    v7 = [(CNContactContentEditViewController *)self contactHeaderView];
    v8 = [(CNContactContentEditViewController *)self contactHeaderView];
    [v8 maxHeight];
    v10 = [v6 constraintWithItem:v7 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v9];
    [(CNContactContentEditViewController *)self setHeaderHeightConstraint:v10];

    v11 = [(CNContactContentEditViewController *)self headerHeightConstraint];
    [v73 addObject:v11];

    v12 = [(CNContactContentEditViewController *)self contactHeaderView];
    v13 = [v12 topAnchor];
    v14 = [(CNContactContentEditViewController *)self view];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    [v73 addObject:v16];

    v17 = [(CNContactContentEditViewController *)self contactHeaderView];
    v18 = [v17 leftAnchor];
    v19 = [(CNContactContentEditViewController *)self view];
    v20 = [v19 leftAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    [v73 addObject:v21];

    v22 = [(CNContactContentEditViewController *)self contactHeaderView];
    v23 = [v22 rightAnchor];
    v24 = [(CNContactContentEditViewController *)self view];
    v25 = [v24 rightAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v73 addObject:v26];

    v27 = [(CNContactContentEditViewController *)self contactView];
    v28 = [v27 topAnchor];
    v29 = [(CNContactContentEditViewController *)self view];
    v30 = [v29 topAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    [v73 addObject:v31];

    v32 = [(CNContactContentEditViewController *)self contactView];
    v33 = [v32 bottomAnchor];
    v34 = [(CNContactContentEditViewController *)self view];
    v35 = [v34 bottomAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    [v73 addObject:v36];

    v37 = [(CNContactContentEditViewController *)self headerDropShadowView];
    v38 = [v37 superview];

    if (v38)
    {
      v39 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v39 scale];
      v41 = v40;

      v42 = [(CNContactContentEditViewController *)self headerDropShadowView];
      v43 = [v42 heightAnchor];
      v44 = [v43 constraintEqualToConstant:1.0 / v41];
      [v73 addObject:v44];

      v45 = [(CNContactContentEditViewController *)self headerDropShadowView];
      v46 = [v45 bottomAnchor];
      v47 = [(CNContactContentEditViewController *)self headerDropShadowView];
      v48 = [v47 superview];
      v49 = [v48 bottomAnchor];
      v50 = [v46 constraintEqualToAnchor:v49];
      [v73 addObject:v50];

      v51 = [(CNContactContentEditViewController *)self headerDropShadowView];
      v52 = [v51 leftAnchor];
      v53 = [(CNContactContentEditViewController *)self headerDropShadowView];
      v54 = [v53 superview];
      v55 = [v54 leftAnchor];
      v56 = [v52 constraintEqualToAnchor:v55];
      [v73 addObject:v56];

      v57 = [(CNContactContentEditViewController *)self headerDropShadowView];
      v58 = [v57 rightAnchor];
      v59 = [(CNContactContentEditViewController *)self headerDropShadowView];
      v60 = [v59 superview];
      v61 = [v60 rightAnchor];
      v62 = [v58 constraintEqualToAnchor:v61];
      [v73 addObject:v62];
    }
  }

  v63 = [(CNContactContentEditViewController *)self contactView];
  v64 = [v63 leftAnchor];
  v65 = [(CNContactContentEditViewController *)self view];
  v66 = [v65 leftAnchor];
  v67 = [v64 constraintEqualToAnchor:v66];
  [v73 addObject:v67];

  v68 = [(CNContactContentEditViewController *)self contactView];
  v69 = [v68 rightAnchor];
  v70 = [(CNContactContentEditViewController *)self view];
  v71 = [v70 rightAnchor];
  v72 = [v69 constraintEqualToAnchor:v71];
  [v73 addObject:v72];

  [(CNContactContentEditViewController *)self setActivatedConstraints:v73];
  [MEMORY[0x1E696ACD8] activateConstraints:v73];
}

- (BOOL)shouldDisplayAvatarHeaderView
{
  v2 = [(CNContactContentEditViewController *)self contactHeaderView];
  v3 = v2 != 0;

  return v3;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v11 viewDidLoad];
  [(CNContactContentEditViewController *)self setEditing:1];
  v3 = *MEMORY[0x1E6996568];
  v4 = [(CNContactContentEditViewController *)self initialPrompt];
  LOBYTE(v3) = (*(v3 + 16))(v3, v4);

  if ((v3 & 1) == 0)
  {
    v5 = [(CNContactContentEditViewController *)self initialPrompt];
    v6 = [(CNContactContentEditViewController *)self navigationItem];
    [v6 setPrompt:v5];
  }

  if ([(CNContactContentEditViewController *)self shouldDrawNavigationBar])
  {
    v7 = [(CNContactContentEditViewController *)self navigationItem];
    [v7 _setBackgroundHidden:0];
  }

  v8 = [(CNContactContentEditViewController *)self navItemUpdater];

  if (!v8)
  {
    v9 = objc_alloc_init(CNContactContentNavigationItemUpdater);
    [(CNContactContentEditViewController *)self setNavItemUpdater:v9];
  }

  [(CNContactContentEditViewController *)self reloadDataIfNeeded];
  v10 = [(CNContactContentEditViewController *)self view];
  [v10 setNeedsUpdateConstraints];
}

- (void)setupViewHierarchyIncludingAvatarHeader:(BOOL)a3
{
  v3 = a3;
  v32[1] = *MEMORY[0x1E69E9840];
  if ([(CNContactContentEditViewController *)self isViewLoaded])
  {
    v5 = [(CNContactContentEditViewController *)self view];
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [(CNContactContentEditViewController *)self contactHeaderView];
    v9 = v8;
    if (v3)
    {
      v32[0] = v8;
      v10 = v32;
      v11 = v7;
    }

    else
    {
      v31 = v8;
      v10 = &v31;
      v11 = v6;
    }

    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v11 addObjectsFromArray:v12];

    v13 = [(CNContactContentEditViewController *)self contactHeaderView];
    v14 = [(CNContactContentEditViewController *)self headerDropShadowView];
    [v13 addSubview:v14];

    v15 = [(CNContactContentEditViewController *)self contactView];
    [v7 addObject:v15];

    v16 = [(CNContactContentEditViewController *)self contactView];
    v17 = [(CNContactContentEditViewController *)self contactView];
    v18 = [v17 panGestureRecognizer];
    v19 = [v18 view];

    if (v16 != v19)
    {
      v20 = [(CNContactContentEditViewController *)self contactView];
      v21 = [v20 panGestureRecognizer];
      v22 = [v21 view];
      v23 = [(CNContactContentEditViewController *)self contactView];
      v24 = [v23 panGestureRecognizer];
      [v22 removeGestureRecognizer:v24];

      v25 = [(CNContactContentEditViewController *)self view];
      v26 = [(CNContactContentEditViewController *)self contactView];
      v27 = [v26 panGestureRecognizer];
      [v25 addGestureRecognizer:v27];
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __78__CNContactContentEditViewController_setupViewHierarchyIncludingAvatarHeader___block_invoke;
    v29[3] = &unk_1E74E6C50;
    v30 = v5;
    v28 = v5;
    [v7 enumerateObjectsUsingBlock:v29];
  }
}

- (void)loadContactViewControllerViews
{
  v3 = [(CNContactContentEditViewController *)self contactView];
  v4 = [(CNContactContentEditViewController *)self contactView];
  v5 = objc_opt_class();
  v6 = [v5 cellIdentifierForClass:objc_opt_class()];
  v7 = [v3 dequeueReusableCellWithIdentifier:v6];
  [(CNContactContentEditViewController *)self setNoteCell:v7];

  v9 = [(CNContactContentEditViewController *)self view];
  v8 = [(CNContactContentEditViewController *)self contactView];
  [v9 addSubview:v8];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(CNContactContentEditViewController *)self setView:v3];

  [(CNContactContentEditViewController *)self loadContactViewControllerViews];
}

- (void)finishEditing:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentEditViewController *)self isEditing];
  [(CNContactContentEditViewController *)self cancelAsyncLookups];
  v6 = [(CNContactContentEditViewController *)self contactView];
  [v6 endEditing:1];

  if (v5)
  {
    if (![(CNContactContentEditViewController *)self _modelHasChanges])
    {
      [(CNContactContentEditViewController *)self editCancel:v4];
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
      v8 = [(CNContactContentEditViewController *)self mutableContact];
      [(CNContactContentEditViewController *)self _didCompleteWithContact:v8];
    }

    else
    {
      [(CNContactContentEditViewController *)self _didCompleteWithContact:0];
    }
  }

  [(CNContactContentEditViewController *)self reloadDataPreservingChanges:0];
  v9 = [(CNContactContentEditViewController *)self contactView];
  [v9 reloadData];

LABEL_10:
  if (([(CNContactContentEditViewController *)self supportsDrafts]& v5) == 1)
  {
    +[CNUIDraftSupport deleteDrafts];
  }
}

- (void)updateContact:(id)a3
{
  if ([(CNContactContentEditViewController *)self saveChanges])
  {
    v4 = [(CNContactContentEditViewController *)self mutableContact];
    [(CNContactContentEditViewController *)self _didCompleteWithContact:v4];
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
  v16 = [(CNContactContentEditViewController *)self contact];
  v4 = [(CNContactContentEditViewController *)self mutableContact];
  v5 = [(CNContactContentEditViewController *)self originalContacts];
  v17 = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];
  v15 = [(CNContactContentEditViewController *)self editingLinkedContacts];
  v6 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  v7 = [v6 contactStore];
  v8 = [(CNContactContentEditViewController *)self parentGroup];
  v9 = [(CNContactContentEditViewController *)self parentContainer];
  v10 = [(CNContactContentEditViewController *)self containerContext];
  v11 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  BYTE1(v13) = 1;
  LOBYTE(v13) = [v11 ignoresParentalRestrictions];
  v14 = [(CNUIContactSaveConfiguration *)v3 initWithContact:v16 mutableContact:v4 originalContacts:v5 shadowCopyOfReadonlyContact:v17 editingLinkedContacts:v15 contactStore:v7 parentGroup:v8 parentContainer:v9 containerContext:v10 groupContext:0 ignoresParentalRestrictions:v13 saveWasAuthorized:?];

  return v14;
}

- (BOOL)performSave
{
  v3 = [(CNContactContentEditViewController *)self saveContactExecutor];
  v4 = [(CNContactContentEditViewController *)self saveDescriptionForCurrentState];
  v5 = [v3 executeSaveWithConfiguration:v4 saveDelegate:self];

  v6 = [MEMORY[0x1E695DF70] array];
  [(CNContactContentEditViewController *)self setIssuedSaveRequestIdentifiers:v6];

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

  v8 = [(CNContactContentEditViewController *)self issuedSaveRequestIdentifiers];
  v9 = [v5 identifiersOfIssuedSaveRequests];
  [v8 addObjectsFromArray:v9];

  [(CNContactContentEditViewController *)self setEditingLinkedContacts:0];
  v10 = [v5 contact];
  [(CNContactContentEditViewController *)self setContact:v10];

  v11 = [v5 success];
  return v11;
}

void __49__CNContactContentEditViewController_performSave__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contact];
  [CNContactContentEditViewController _telemetryForContact:v1];
}

- (void)saveModelChangesToContact
{
  v3 = [(CNContactContentEditViewController *)self editingGroups];
  [(CNContactContentEditViewController *)self _saveChangesForGroups:v3];

  v4 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v4 saveContactPhoto];
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
    v3 = [(CNContactContentEditViewController *)self mutableContact];
    [v3 setMapsData:0];
  }
}

- (void)presentConfirmCancelAlertController
{
  v3 = [(CNContactContentEditViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNContactContentEditViewController *)self delegate];
    [v5 contactEditViewControllerRequestsCancelConfirmationAlert:self];
  }
}

- (void)editCancel:(id)a3
{
  if ([(CNContactContentEditViewController *)self hasPendingChanges])
  {
    v4 = [(CNContactContentEditViewController *)self contactView];
    [v4 endEditing:1];

    [(CNContactContentEditViewController *)self presentConfirmCancelAlertController];
  }

  else
  {

    [(CNContactContentEditViewController *)self performConfirmedCancel];
  }
}

- (void)cancelAsyncLookups
{
  v3 = [(CNContactContentEditViewController *)self medicalIDLookupToken];
  [v3 cancel];

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
  v8 = [(CNContactContentEditViewController *)self navigationItemController];
  v3 = [(CNContactContentEditViewController *)self navItemUpdater];
  v4 = [v3 updateEditDoneButtonForController:v8 isUpdatingContact:-[CNContactContentEditViewController mode](self hasChanges:{"mode") == 4, -[CNContactContentEditViewController hasPendingChanges](self, "hasPendingChanges")}];

  -[CNContactContentEditViewController setSaveKeyboardShortcutEnabled:](self, "setSaveKeyboardShortcutEnabled:", [v4 enableSaveShortcut]);
  v5 = [(CNContactContentEditViewController *)self navigationItemDelegate];
  v6 = [v8 navigationItem];
  v7 = [(CNContactContentEditViewController *)self doneButtonItem];
  [v5 contactNavigationItemProvider:self didUpdateNavigationItem:v6 doneButtonItem:v7];
}

- (void)updateWindowTitleForAppearing:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CNContactContentEditViewController *)self title];
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v7 = [(CNContactContentEditViewController *)self navigationController];
      v11 = [v7 title];

      if (!v11)
      {
        v8 = [(CNContactContentEditViewController *)self contactFormatter];
        v9 = [(CNContactContentEditViewController *)self contact];
        v11 = [v8 stringFromContact:v9];
      }
    }

    v5 = [(CNContactContentEditViewController *)self view];
    v6 = [v5 window];
    v10 = [v6 windowScene];
    [v10 setTitle:v11];
  }

  else
  {
    v11 = [(CNContactContentEditViewController *)self view];
    v5 = [v11 window];
    v6 = [v5 windowScene];
    [v6 setTitle:0];
  }
}

- (void)updateEditNavigationItemsAnimated:(BOOL)a3
{
  v21 = [(CNContactContentEditViewController *)self navigationItemController];
  v6 = [(CNContactContentEditViewController *)self navItemUpdater];
  v7 = [(UIViewController *)self ab_isInSheet];
  v8 = [(CNContactContentEditViewController *)self shouldDrawNavigationBar];
  v9 = [(CNContactContentEditViewController *)self mode]== 4;
  BYTE1(v20) = a3;
  LOBYTE(v20) = [(CNContactContentEditViewController *)self hasPendingChanges];
  v10 = [v6 updateEditingNavigationItemForController:v21 actionTarget:self isInSheet:v7 isShowingNavBar:v8 shouldUsePlatterStyle:0 isUpdatingContact:v9 hasChanges:v20 animated:?];

  -[CNContactContentEditViewController setCancelKeyboardShortcutEnabled:](self, "setCancelKeyboardShortcutEnabled:", [v10 enableCancelShortcut]);
  -[CNContactContentEditViewController setSaveKeyboardShortcutEnabled:](self, "setSaveKeyboardShortcutEnabled:", [v10 enableSaveShortcut]);
  v11 = [v21 navigationItem];
  v12 = [(CNContactContentEditViewController *)self navigationItemDelegate];
  v13 = [(CNContactContentEditViewController *)self doneButtonItem];
  [v12 contactNavigationItemProvider:self didUpdateNavigationItem:v11 doneButtonItem:v13];

  v14 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  v15 = [v14 layoutPositionallyAfterNavBar];
  if (v15)
  {
    v16 = 0;
    v17 = 1;
  }

  else
  {
    v18 = [v11 title];
    if (v18)
    {
      v9 = v18;
      v16 = 0;
      v17 = 1;
    }

    else
    {
      v3 = [v11 titleView];
      v9 = 0;
      if (v3)
      {
        v16 = 1;
        v17 = 1;
      }

      else
      {
        v17 = [v11 _backgroundHidden] ^ 1;
        v16 = 1;
      }
    }
  }

  v19 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v19 setShouldShowBelowNavigationTitle:v17];

  if (v16)
  {
  }

  if ((v15 & 1) == 0)
  {
  }
}

- (UINavigationItem)effectiveNavigationItem
{
  v2 = [(CNContactContentEditViewController *)self navigationItemController];
  v3 = [v2 navigationItem];

  return v3;
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  if (a3 == 4)
  {
    v5 = [(CNContactContentEditViewController *)self contactView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_policyForContact:(id)a3 mode:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  if ([v7 allowsAddingToAddressBook])
  {
  }

  else
  {
    v8 = [v6 hasBeenPersisted];

    if ((v8 & 1) == 0)
    {
LABEL_8:
      v12 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
      goto LABEL_9;
    }
  }

  if (a4 > 5 || (v9 = 1 << a4, v10 = v6, (v9 & 0x32) == 0))
  {
    v10 = 0;
  }

  v11 = [(CNContactContentEditViewController *)self contactViewCache];
  v12 = [v11 policyForContact:v10];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v12;
}

- (id)indexPathOfPropertyItem:(id)a3 editing:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 group];
  v7 = [(CNContactContentEditViewController *)self contactView];
  v8 = [(CNContactContentEditViewController *)self sectionOfGroup:v6 inTableView:v7];
  v9 = [v6 editingItems];
  v10 = [v9 indexOfObject:v5];

  v11 = 0;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForRow:v10 inSection:v8];
  }

  return v11;
}

- (void)reloadCardGroup:(id)a3 forTableView:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([(CNContactContentEditViewController *)self isViewLoaded])
  {
    if (![(CNContactContentEditViewController *)self needsReload])
    {
      v7 = [(CNContactContentEditViewController *)self sectionOfGroup:v10 inTableView:v6];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = v7;
        [v6 beginUpdates];
        v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:v8];
        [v6 reloadSections:v9 withRowAnimation:0];

        [v6 endUpdates];
        [(CNContactContentEditViewController *)self updateHeaderHeightToMatchScrollViewState:v6 scrollDirection:2 animated:0];
      }
    }
  }
}

- (void)addCardGroup:(id)a3 afterGroup:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CNContactContentEditViewController *)self groupsAfterGroup];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(CNContactContentEditViewController *)self groupsAfterGroup];
    v10 = [v9 objectForKeyedSubscript:v6];
    [v10 addObject:v11];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithObject:v11];
    v10 = [(CNContactContentEditViewController *)self groupsAfterGroup];
    [v10 setObject:v9 forKeyedSubscript:v6];
  }
}

- (int64_t)sectionOfGroup:(id)a3 inTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNContactContentEditViewController *)self _currentGroupsForTableView:v7];
  v9 = v8;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v11 = [v8 indexOfObject:v6];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(CNContactContentEditViewController *)self tableViewSectionIndexFromGroupIndex:v11 forTableView:v7];
    }
  }

  return v10;
}

- (id)cardGroupForProperty:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentEditViewController *)self propertyGroups];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)reloadDataPreservingChanges:(BOOL)a3
{
  v3 = a3;
  v45 = *MEMORY[0x1E69E9840];
  if (([(CNContactContentEditViewController *)self isViewLoaded]& 1) != 0)
  {
    self->_needsReload = 0;
    v5 = [(CNContactContentEditViewController *)self contactStore];

    if (!v5)
    {
      v6 = [(CNContactContentEditViewController *)self originalContacts];
      v7 = [v6 _cn_filter:&__block_literal_global_377];

      if ([v7 count])
      {
        v8 = 7;
      }

      else
      {
        v8 = 1;
      }

      v9 = [(CNContactContentEditViewController *)self managedConfiguration];

      if (v9)
      {
        v10 = objc_alloc(MEMORY[0x1E695CE18]);
        v11 = [(CNContactContentEditViewController *)self environment];
        v12 = [v11 cnEnvironment];
        v13 = [(CNContactContentEditViewController *)self managedConfiguration];
        v14 = [v10 initWithEnvironment:v12 options:v8 managedConfiguration:v13];
        [(CNContactContentEditViewController *)self setContactStore:v14];
      }

      else
      {
        v11 = [MEMORY[0x1E695CE18] storeWithOptions:v8];
        [(CNContactContentEditViewController *)self setContactStore:v11];
      }
    }

    if (![(CNContactContentEditViewController *)self mode])
    {
      v15 = [(CNContactContentEditViewController *)self parentViewController];
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

    v18 = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];

    if (!v18)
    {
      v19 = [(CNContactContentEditViewController *)self contact];
      v20 = [(CNContactContentEditViewController *)self _policyForContact:v19 mode:[(CNContactContentEditViewController *)self mode]];
      [(CNContactContentEditViewController *)self setPolicy:v20];
    }

    v21 = [(CNContactContentEditViewController *)self contact];
    v22 = [v21 isUnified];

    if (v22)
    {
      v23 = [MEMORY[0x1E695DF90] dictionary];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v24 = [(CNContactContentEditViewController *)self contact];
      v25 = [v24 linkedContacts];

      v26 = [v25 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v39 + 1) + 8 * i);
            v31 = [(CNContactContentEditViewController *)self _policyForContact:v30 mode:[(CNContactContentEditViewController *)self mode]];
            if (v31)
            {
              v32 = [v30 identifier];
              [v23 setObject:v31 forKey:v32];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v27);
      }

      v33 = [v23 copy];
      [(CNContactContentEditViewController *)self setLinkedPoliciesByContactIdentifier:v33];
    }

    if (!self->_propertyGroups)
    {
      v34 = [(CNContactContentEditViewController *)self _loadPropertyGroups];
      propertyGroups = self->_propertyGroups;
      self->_propertyGroups = v34;
    }

    [(CNContactContentEditViewController *)self _reloadStaticIdentityGroup];
    [(CNContactContentEditViewController *)self _reloadGeminiGroupPreservingChanges:v3];
    [(CNContactContentEditViewController *)self _reloadLinkedCardsGroup];
    [(CNContactContentEditViewController *)self _reloadPropertyGroupsPreservingChanges:v3];
    [(CNContactContentEditViewController *)self _reloadMedicalIDGroup];
    [(CNContactContentEditViewController *)self _reloadContainerContextPreservingChanges:v3];
    [(CNContactContentEditViewController *)self setupActionsPreservingChanges:v3];
    v36 = [(CNContactContentEditViewController *)self _loadEditingGroupsPreservingChanges:v3];
    [(CNContactContentEditViewController *)self setEditingGroups:v36];

    [(CNContactContentEditViewController *)self _setNeedsUpdateCachedLabelWidths];
    v37 = [(CNContactContentEditViewController *)self contactView];
    [v37 reloadData];

    v38 = [(CNContactContentEditViewController *)self contactHeaderView];
    [v38 reloadDataPreservingChanges:v3];

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
  v3 = [(CNContactContentEditViewController *)self contact];
  v4 = [(CNContactContentEditViewController *)self parentContainer];
  if (v3)
  {
    v5 = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    v6 = [(CNContactContentEditViewController *)self contact];
    v7 = [v5 isMeContact:v6];

    v8 = CNUILogContactCard();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v3 identifier];
        *buf = 138543362;
        v28 = v10;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it the me card, identifier %{public}@", buf, 0xCu);
      }

      v11 = [(CNContactContentEditViewController *)self contactStore];
      v12 = [objc_opt_class() descriptorForRequiredKeysForContact:v3];
      v36[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      v26 = 0;
      v14 = [v11 _crossPlatformUnifiedMeContactWithKeysToFetch:v13 error:&v26];
      v15 = v26;
    }

    else
    {
      if (v9)
      {
        v16 = [v3 identifier];
        *buf = 138543362;
        v28 = v16;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it not the me card, identifier %{public}@", buf, 0xCu);
      }

      v11 = [(CNContactContentEditViewController *)self contactStore];
      v12 = [v3 identifier];
      v13 = [objc_opt_class() descriptorForRequiredKeysForContact:v3];
      v35 = v13;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      v25 = 0;
      v14 = [v11 unifiedContactWithIdentifier:v12 keysToFetch:v17 error:&v25];
      v15 = v25;
    }

    v18 = [(CNContactContentEditViewController *)self contactViewCache];
    v19 = [v18 containerForContact:v14];

    if (v15 || !v14)
    {
      v22 = CNUILogContactCard();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v3 identifier];
        v24 = [(CNContactContentEditViewController *)self contactStore];
        *buf = 138413058;
        v28 = v23;
        v29 = 2112;
        v30 = v15;
        v31 = 2112;
        v32 = v24;
        v33 = 2112;
        v34 = v3;
        _os_log_error_impl(&dword_199A75000, v22, OS_LOG_TYPE_ERROR, "Error refetching contact with identifier %@, %@, store %@, full contact %@", buf, 0x2Au);
      }
    }

    else
    {
      v20 = [v14 isEqual:v3];
      v21 = [v19 isEqual:v4];
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
  v3 = [(CNContactContentEditViewController *)self mutableContact];
  [CNUIDraftSupport saveNewContactDraft:v3];

  [(CNContactContentEditViewController *)self _refetchContact];
}

- (void)contactStoreDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = [(CNUIContactsEnvironment *)self->_environment defaultSchedulerProvider];
  v6 = [v5 mainThreadScheduler];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__CNContactContentEditViewController_contactStoreDidChangeWithNotification___block_invoke;
  v8[3] = &unk_1E74E77C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 performBlock:v8];
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

- (void)adjustInsetsForKeyboardOverlap:(double)a3
{
  [(CNContactContentEditViewController *)self setKeyboardVerticalOverlap:a3];
  v4 = [(CNContactContentEditViewController *)self contactView];
  [(CNContactContentEditViewController *)self updateInsetsIfNeededForTableView:v4];
}

- (void)keyboardDidShowNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v31 = [(CNContactContentEditViewController *)self view];
  v14 = [v31 window];
  [v14 convertRect:0 fromWindow:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v31 convertRect:0 fromView:{v16, v18, v20, v22}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v31 bounds];
  v35.origin.x = v24;
  v35.origin.y = v26;
  v35.size.width = v28;
  v35.size.height = v30;
  v34 = CGRectIntersection(v33, v35);
  [(CNContactContentEditViewController *)self adjustInsetsForKeyboardOverlap:CGRectGetHeight(v34)];
}

- (void)setContact:(id)a3
{
  v101[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  self->_needsRefetch = 0;
  if (self->_contact == v4)
  {
    goto LABEL_45;
  }

  v6 = [(CNContact *)v4 identifier];
  v7 = [(CNContact *)self->_contact identifier];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(CNContactContentEditViewController *)self setDidSetNewContact:1];
  }

  v9 = [(CNContactContentEditViewController *)self environment];
  v10 = [v9 defaultSchedulerProvider];

  [v10 suspendBackgroundScheduler];
  v11 = [v10 afterCACommitScheduler];
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __49__CNContactContentEditViewController_setContact___block_invoke;
  v91[3] = &unk_1E74E6A88;
  v12 = v10;
  v92 = v12;
  [v11 performBlock:v91];

  v13 = [(CNContactContentEditViewController *)self contactViewCache];
  [v13 resetCache];

  LODWORD(v11) = [(CNContactContentEditViewController *)self isOutOfProcess];
  v14 = [objc_opt_class() descriptorForRequiredKeys];
  v15 = v14;
  if (v11)
  {
    v101[0] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:1];
    v17 = [(CNContactContentEditViewController *)self _updateContact:v5 withMissingKeysFromRequiredKeys:v16];

    v5 = v17;
  }

  else
  {
    v100 = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
    [v5 assertKeysAreAvailable:v16];
  }

  v18 = [(CNContactContentEditViewController *)self parentContainer];
  if (!v18)
  {
LABEL_10:
    v19 = [(CNContactContentEditViewController *)self contactViewCache];
    v23 = [v19 containerForContact:v5];
    [(CNContactContentEditViewController *)self setParentContainer:v23];

    goto LABEL_11;
  }

  v19 = v18;
  v20 = [(CNContactContentEditViewController *)self parentContainer];
  if (v20)
  {
    v21 = v20;
    v22 = [v5 hasBeenPersisted];

    if (!v22)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
  [(CNContactContentEditViewController *)self setContainerContext:0];
  v24 = [(CNContactContentEditViewController *)self contactViewCache];
  v25 = [v24 policyForContact:v5];

  if ([v25 isReadonly])
  {
    v84 = v12;
    v26 = [(CNContactContentEditViewController *)self contactStore];
    v27 = [v5 identifier];
    v28 = [objc_opt_class() descriptorForRequiredKeysForContact:v5];
    v99 = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
    v90 = 0;
    v30 = [v26 unifiedContactWithIdentifier:v27 keysToFetch:v29 error:&v90];
    v83 = v90;

    if (v30)
    {
      v31 = v30;

      v32 = [(CNContactContentEditViewController *)self contactViewCache];
      v33 = [v32 policyForContact:v31];

      v25 = v33;
      if ([v33 isReadonly])
      {
        v82 = v33;
        v34 = objc_alloc_init(MEMORY[0x1E695CF18]);
        v35 = [v31 availableKeyDescriptor];
        v98 = v35;
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
                v45 = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];
                v46 = [v31 valueForKey:v44];
                [v45 setValue:v46 forKey:v44];
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v86 objects:v97 count:16];
          }

          while (v41);
        }

        v47 = MEMORY[0x1E695DF70];
        v48 = [(CNContactContentEditViewController *)self shadowCopyOfReadonlyContact];
        v49 = [v47 arrayWithObject:v48];

        if ([v31 isUnified])
        {
          v50 = [v31 linkedContacts];
          [v49 addObjectsFromArray:v50];
        }

        else
        {
          [v49 addObject:v31];
        }

        v12 = v84;
        v51 = v83;
        v5 = [MEMORY[0x1E695CD58] unifyContacts:v49];

        v52 = [(CNContactContentEditViewController *)self contactViewCache];
        v53 = [v52 policyForDefaultContainer];
        [(CNContactContentEditViewController *)self setPolicy:v53];

        v54 = [(CNContactContentEditViewController *)self policy];

        if (!v54 || v83)
        {
          v55 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
          [(CNContactContentEditViewController *)self setPolicy:v55];
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
    v59 = [v5 identifier];
    mutableContact = self->_mutableContact;
    *buf = 138543618;
    v94 = v59;
    v95 = 2050;
    v96 = mutableContact;
    _os_log_impl(&dword_199A75000, v58, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] setting contact with identifier %{public}@, mutable contact %{public}p", buf, 0x16u);
  }

  v61 = [(CNContactContentEditViewController *)self customActions];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __49__CNContactContentEditViewController_setContact___block_invoke_368;
  v85[3] = &unk_1E74E6AF8;
  v85[4] = self;
  v62 = [v61 _cn_filter:v85];
  [(CNContactContentEditViewController *)self setCustomActions:v62];

  v63 = [MEMORY[0x1E695DF90] dictionary];
  [(CNContactContentEditViewController *)self setGroupsAfterGroup:v63];

  v64 = [[CNCardGroup alloc] initWithContact:self->_mutableContact];
  cardEditingActionsGroup = self->_cardEditingActionsGroup;
  self->_cardEditingActionsGroup = v64;

  v66 = [[CNCardGroup alloc] initWithContact:self->_mutableContact];
  cardEditingDeleteContactGroup = self->_cardEditingDeleteContactGroup;
  self->_cardEditingDeleteContactGroup = v66;

  propertyGroups = self->_propertyGroups;
  self->_propertyGroups = 0;

  v69 = [(CNContactContentEditViewController *)self siriContextProvider];
  LODWORD(v62) = [v69 isEnabled];

  v70 = [CNSiriContactContextProvider alloc];
  v71 = [(CNContactContentEditViewController *)self contactStore];
  v72 = [(CNSiriContactContextProvider *)v70 initWithContact:v5 store:v71];
  [(CNContactContentEditViewController *)self setSiriContextProvider:v72];

  if (v62)
  {
    v73 = [(CNContactContentEditViewController *)self siriContextProvider];
    [v73 setEnabled:1];
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
  v78 = [(CNContactContentEditViewController *)self geminiDataSource];
  [v78 setContact:v5];

  if (self->_contactHeaderView)
  {
    v79 = [(CNContactContentEditViewController *)self contactHeaderView];
    [v79 updateWithNewContact:self->_mutableContact];
  }

  [(CNContactContentEditViewController *)self updateEditNavigationItemsAnimated:0];
  [(CNContactContentEditViewController *)self reloadDataPreservingChanges:0];
  v80 = +[CNUIDataCollector sharedCollector];
  v81 = [(CNContactContentEditViewController *)self contact];
  [v80 logContactShown:v81];

  [(CNContactContentEditViewController *)self prepareContactDidAppearForPPT];
LABEL_45:
}

- (void)setupContainerContextIfNeededForContact:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNContactContentEditViewController *)self shouldAllowContainerPicking])
  {
    v5 = [(CNContactContentEditViewController *)self containerContext];

    if (!v5)
    {
      if ([v4 hasBeenPersisted])
      {
        v6 = [v4 identifier];
      }

      else
      {
        v6 = 0;
      }

      v7 = [MEMORY[0x1E695DF90] dictionary];
      if ([v4 isUnified])
      {
        v22 = v6;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [v4 mainStoreLinkedContacts];
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v23 + 1) + 8 * v12);
              v14 = [(CNContactContentEditViewController *)self contactViewCache];
              v15 = [v14 containerForContact:v13];

              v16 = [v13 identifier];
              [v7 setObject:v15 forKeyedSubscript:v16];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v10);
        }

        v6 = v22;
      }

      v17 = [(CNContactContentEditViewController *)self parentContainer];

      if (v17 && v6)
      {
        v18 = [(CNContactContentEditViewController *)self parentContainer];
        [v7 setObject:v18 forKeyedSubscript:v6];
      }

      v19 = [[CNUIContainerContext alloc] initWithContainers:v7];
      v20 = [(CNContactContentEditViewController *)self parentContainer];

      if (v20 && !v6)
      {
        v21 = [(CNContactContentEditViewController *)self parentContainer];
        [(CNUIContainerContext *)v19 addContainer:v21];
      }

      [(CNContactContentEditViewController *)self setContainerContext:v19];
    }
  }
}

- (BOOL)shouldAllowContainerPicking
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:13];

  if (v5)
  {
    v6 = [(CNContactContentEditViewController *)self parentContainer];
    v7 = [v6 isGuardianRestricted] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)prepareCell:(id)a3
{
  v37 = a3;
  v4 = [(CNContactContentEditViewController *)self contactView];
  [v4 applyCellAppearance:v37];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  v5 = v37;
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
  v9 = [v4 labelTextAttributes];
  v10 = [v4 valueTextAttributes];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v12 = [v4 actionTextAttributes];

    v9 = v12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v13 = [(CNContactContentEditViewController *)self view];
    v14 = [v13 tintColorOverride];
    v15 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v5;
    if ([v21 supportsValueColorUsesLabelColor])
    {
      v22 = +[CNContactStyle currentStyle];
      v14 = [v22 textColor];
    }

    else
    {
      v14 = 0;
    }

    v23 = [(CNContactContentEditViewController *)self highlightedProperties];
    if ([v23 count])
    {
      [(CNContactContentEditViewController *)self highlightedProperties];
      v24 = v35 = isKindOfClass;
      [v21 propertyItem];
      v25 = v36 = v23;
      [v25 contactProperty];
      v27 = v26 = v21;
      [v26 setHighlightedProperty:{objc_msgSend(v24, "containsObject:", v27)}];

      v21 = v26;
      v23 = v36;

      isKindOfClass = v35;
    }

    else
    {
      [v21 setHighlightedProperty:0];
    }

    if ([v21 isSuggested])
    {
      v28 = +[CNContactStyle currentStyle];
      v15 = [v28 suggestedLabelTextColor];

      v29 = +[CNContactStyle currentStyle];
      v30 = [v29 suggestedValueTextColor];
    }

    else
    {
      if ([v21 isHighlightedProperty] && -[CNContactContentEditViewController highlightedPropertyImportant](self, "highlightedPropertyImportant"))
      {
        [v21 setImportant:{-[CNContactContentEditViewController highlightedPropertyImportant](self, "highlightedPropertyImportant")}];
        v30 = [MEMORY[0x1E69DC888] redColor];
        v15 = 0;
        goto LABEL_37;
      }

      if ((-[CNContactContentEditViewController isEditing](self, "isEditing") & 1) != 0 || ![v21 supportsTintColorValue])
      {
        v15 = 0;
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

        if (!v15)
        {
LABEL_14:
          if (v14)
          {
            v16 = [v10 mutableCopy];
            [v16 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69DB650]];

            v10 = v16;
          }

          if (isKindOfClass)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v34 = [v9 mutableCopy];
        [v34 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69DB650]];
        v13 = v9;
        v9 = v34;
LABEL_13:

        goto LABEL_14;
      }

      v29 = [(CNContactContentEditViewController *)self view];
      v30 = [v29 tintColorOverride];

      v15 = 0;
    }

    v14 = v29;
LABEL_37:

    v14 = v30;
    goto LABEL_45;
  }

  v15 = 0;
  if (isKindOfClass)
  {
    goto LABEL_18;
  }

LABEL_17:
  v17 = [v7 labelTextAttributes];
  v18 = [v17 isEqual:v9];

  if ((v18 & 1) == 0)
  {
LABEL_18:
    [v7 setLabelTextAttributes:v9];
  }

  v19 = [v7 valueTextAttributes];
  v20 = [v19 isEqual:v10];

  if ((v20 & 1) == 0)
  {
    [v7 setValueTextAttributes:v10];
  }

LABEL_22:
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  [(CNContactView *)self->_contactView updateFontSizes];
  v4 = [(CNContactContentEditViewController *)self contactHeaderView];
  [v4 updateFontSizes];

  [(CNContactContentEditViewController *)self viewDidLayoutSubviews];
  [(CNContactContentEditViewController *)self reloadDataPreservingChanges:1];
  [(CNContactContentEditViewController *)self setupConstraints];
  v5 = [(CNContactContentEditViewController *)self applyContactStyle];
}

- (BOOL)isOutOfProcess
{
  v2 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  v3 = [v2 isOutOfProcess];

  return v3;
}

- (CNContactView)contactView
{
  contactView = self->_contactView;
  if (!contactView)
  {
    v4 = [CNContactView alloc];
    v5 = [(CNContactContentEditViewController *)self contact];
    v6 = [(CNContactView *)v4 initWithFrame:v5 contact:0.0, 0.0, 320.0, 200.0];
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
  v3 = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
  if ([v3 containsObject:*MEMORY[0x1E695C278]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CNContactContentEditViewController *)self prohibitedPropertyKeys];
    v4 = [v5 containsObject:*MEMORY[0x1E695C400]];
  }

  return v4;
}

- (CNContactHeaderEditView)contactHeaderView
{
  contactHeaderView = self->_contactHeaderView;
  if (!contactHeaderView)
  {
    v4 = [(CNContactContentEditViewController *)self isHeaderViewPhotoProhibited];
    if ([(CNContactContentEditViewController *)self shouldDrawNavigationBar])
    {
      v5 = 1;
    }

    else
    {
      v6 = [(CNContactContentEditViewController *)self contactViewConfiguration];
      v5 = [v6 layoutPositionallyAfterNavBar];
    }

    v7 = [(CNContactContentEditViewController *)self mutableContact];
    v8 = [CNContactHeaderEditView contactHeaderViewWithContact:v7 shouldAllowTakePhotoAction:1 showingNavBar:v5 monogramOnly:v4 isOutOfProcess:[(CNContactContentEditViewController *)self isOutOfProcess] delegate:self];
    v9 = self->_contactHeaderView;
    self->_contactHeaderView = v8;

    v10 = [(CNContactContentEditViewController *)self presentingDelegate];
    [(CNContactHeaderEditView *)self->_contactHeaderView setPresenterDelegate:v10];

    v11 = +[CNContactStyle currentStyle];
    v12 = [v11 contactHeaderBackgroundColor];
    [(CNContactHeaderEditView *)self->_contactHeaderView setBackgroundColor:v12];

    [(CNContactHeaderEditView *)self->_contactHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(CNContactContentEditViewController *)self contactViewConfiguration];
    -[CNContactHeaderEditView setAllowsEditPhoto:](self->_contactHeaderView, "setAllowsEditPhoto:", [v13 allowsEditPhoto] & !v4);

    v14 = [(CNContactContentEditViewController *)self applyContactStyle];
    contactHeaderView = self->_contactHeaderView;
  }

  return contactHeaderView;
}

- (void)contactViewConfigurationDidUpdate
{
  [(CNContactContentEditViewController *)self reloadDataIfNeeded];
  v3 = [(CNContactContentEditViewController *)self contactHeaderView];
  v4 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  [v3 updateForShowingNavBar:{objc_msgSend(v4, "layoutPositionallyAfterNavBar")}];

  v5 = [(CNContactContentEditViewController *)self contactHeaderView];
  v6 = [(CNContactContentEditViewController *)self mutableContact];
  [v5 updateWithNewContact:v6];

  [(CNContactContentEditViewController *)self updateEditNavigationItemsAnimated:0];
  v7 = [(CNContactContentEditViewController *)self applyContactStyle];
  v9 = [(CNContactContentEditViewController *)self contactHeaderView];
  v8 = [(CNContactContentEditViewController *)self contactViewConfiguration];
  [v9 setAllowsEditPhoto:objc_msgSend(v8 preservingChanges:{"allowsEditPhoto"), 0}];
}

- (void)dealloc
{
  [(CNContactView *)self->_contactView setDelegate:0];
  [(CNContactView *)self->_contactView setDataSource:0];
  [(CNContactHeaderView *)self->_contactHeaderView setDelegate:0];
  [(CNContactHeaderEditView *)self->_contactHeaderView didFinishUsing];
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContactContentEditViewController;
  [(CNContactContentEditViewController *)&v4 dealloc];
}

- (void)setForcesTransparentBackground:(BOOL)a3
{
  if (self->_forcesTransparentBackground != a3)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_forcesTransparentBackground = a3;
    v6 = [MEMORY[0x1E69966E8] currentEnvironment];
    v7 = [v6 schedulerProvider];
    v8 = [v7 mainThreadScheduler];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__CNContactContentEditViewController_setForcesTransparentBackground___block_invoke;
    v9[3] = &unk_1E74E6A88;
    v9[4] = self;
    [v8 performBlock:v9];
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (v5 || ([(CNContactContentEditViewController *)self title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(CNContactContentEditViewController *)self title];
    v7 = [v5 isEqual:v6];

    if (!v5)
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
      [(CNContactContentEditViewController *)&v8 setTitle:v5];
      [(CNContactContentEditViewController *)self didChangeToShowTitle:v5 != 0];
    }
  }

LABEL_6:
}

- (void)setContactStore:(id)a3
{
  objc_storeStrong(&self->_contactStore, a3);
  v5 = a3;
  v6 = [(CNContactContentEditViewController *)self contactViewCache];
  [v6 setContactStore:v5];
}

- (CNContactContentEditViewController)initWithContact:(id)a3 contactViewConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNContactContentEditViewController *)self initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(CNContactContentEditViewController *)v8 setContact:v6];
    [(CNContactContentEditViewController *)v9 setContactViewConfiguration:v7];
  }

  return v9;
}

- (CNContactContentEditViewController)initWithEnvironment:(id)a3
{
  v5 = a3;
  v38.receiver = self;
  v38.super_class = CNContactContentEditViewController;
  v6 = [(CNContactContentEditViewController *)&v38 initWithNibName:0 bundle:0];
  objc_storeStrong(&v6->_environment, a3);
  v7 = objc_alloc_init(CNContactViewCache);
  contactViewCache = v6->_contactViewCache;
  v6->_contactViewCache = v7;

  if ([MEMORY[0x1E695CEB0] deviceSupportsGemini])
  {
    v9 = objc_alloc(MEMORY[0x1E6996B60]);
    v10 = +[CNUIContactsEnvironment currentEnvironment];
    v11 = [v10 geminiManager];
    v12 = [v9 initWithGeminiManager:v11];
    geminiDataSource = v6->_geminiDataSource;
    v6->_geminiDataSource = v12;

    [(CNUIGeminiDataSource *)v6->_geminiDataSource setDelegate:v6];
  }

  v14 = *(MEMORY[0x1E69DDCE0] + 16);
  *&v6->_peripheryInsets.top = *MEMORY[0x1E69DDCE0];
  *&v6->_peripheryInsets.bottom = v14;
  objc_storeWeak(&v6->_presentingDelegate, v6);
  v15 = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  contactFormatter = v6->_contactFormatter;
  v6->_contactFormatter = v15;

  v17 = [v5 inProcessActivityManager];
  activityManager = v6->_activityManager;
  v6->_activityManager = v17;

  v19 = [MEMORY[0x1E695DEC8] array];
  customActions = v6->_customActions;
  v6->_customActions = v19;

  v21 = objc_alloc_init(CNUIContactStoreSaveExecutor);
  saveContactExecutor = v6->_saveContactExecutor;
  v6->_saveContactExecutor = v21;

  v23 = objc_alloc_init(CNUIContactStoreLinkedContactSaveExecutor);
  saveLinkedContactsExecutor = v6->_saveLinkedContactsExecutor;
  v6->_saveLinkedContactsExecutor = v23;

  v25 = [MEMORY[0x1E696AD88] defaultCenter];
  [v25 addObserver:v6 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  v26 = [MEMORY[0x1E696AD88] defaultCenter];
  [v26 addObserver:v6 selector:sel_localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

  v27 = [MEMORY[0x1E696AD88] defaultCenter];
  [v27 addObserver:v6 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E695C3D8] object:0];

  v28 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v28 addObserver:v6 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E6996440] object:0 suspensionBehavior:4];

  v29 = [MEMORY[0x1E696AD88] defaultCenter];
  [v29 addObserver:v6 selector:sel_keyboardDidShowNotification_ name:*MEMORY[0x1E69DDF78] object:0];

  v30 = [MEMORY[0x1E696AD88] defaultCenter];
  [v30 addObserver:v6 selector:sel_keyboardWillHideNotification_ name:*MEMORY[0x1E69DE078] object:0];

  v31 = [MEMORY[0x1E696AD88] defaultCenter];
  [v31 addObserver:v6 selector:sel_favoritesDidChangeWithNotification_ name:*MEMORY[0x1E695C458] object:0];

  v32 = [MEMORY[0x1E69966E8] currentEnvironment];
  v33 = [v32 featureFlags];
  v6->_supportsDrafts = [v33 isFeatureEnabled:31];

  [(CNContactContentEditViewController *)v6 setRestorationIdentifier:@"ContactCard"];
  [(CNContactContentEditViewController *)v6 setRestorationClass:objc_opt_class()];
  v34 = [(CNContactContentEditViewController *)v6 navigationItem];
  [v34 _setBackgroundHidden:1];

  v35 = [(CNContactContentEditViewController *)v6 navigationItem];
  [v35 setLargeTitleDisplayMode:2];

  v36 = [(CNContactContentEditViewController *)v6 applyContactStyle];
  return v6;
}

- (CNContactContentEditViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = [CNUIContactsEnvironment currentEnvironment:a3];
  v6 = [(CNContactContentEditViewController *)self initWithEnvironment:v5];

  return v6;
}

+ (CNContactContentEditViewController)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v7 = MEMORY[0x1E695CD58];
  v8 = +[CNContactContentEditViewController descriptorForRequiredKeys];
  v27[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v10 = [v7 contactWithStateRestorationCoder:v5 store:v6 keys:v9];

  if (v10)
  {
    v21 = v6;
    v11 = [[CNContactContentViewControllerConfiguration alloc] initForOutOfProcess:0];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [a1 BOOLStateRestorationProperties];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v5 decodeObjectOfClass:objc_opt_class() forKey:v17];
          if (v18)
          {
            [v11 setValue:v18 forKey:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

+ (BOOL)shouldShowGeminiForResult:(id)a3 contact:(id)a4
{
  v7 = a3;
  if (v7)
  {
    v8 = [a4 phoneNumbers];
    if ([v8 count] && objc_msgSend(MEMORY[0x1E695CEB0], "deviceSupportsGemini"))
    {
      v4 = [v7 availableChannels];
      if ([v4 count] > 1)
      {
        v9 = 1;
LABEL_13:

LABEL_14:
        goto LABEL_15;
      }

      v5 = [v7 channel];
      v10 = 1;
      v9 = 1;
      if (![v5 isAvailable])
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = [v7 channel];
    v9 = ([v11 isAvailable] & 1) == 0 && objc_msgSend(v7, "usage") == 1;

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

+ (void)_telemetryForContact:(id)a3
{
  v38[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v37[0] = @"PhoneNumbers";
  v4 = MEMORY[0x1E696AD98];
  v5 = [v3 phoneNumbers];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  v38[0] = v6;
  v37[1] = @"EmailAddresses";
  v7 = MEMORY[0x1E696AD98];
  v8 = [v3 emailAddresses];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  v38[1] = v9;
  v37[2] = @"PostalAddresses";
  v10 = MEMORY[0x1E696AD98];
  v11 = [v3 postalAddresses];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
  v38[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];

  v14 = [v3 note];
  v15 = [v14 length];

  if (v15 >> 11 >= 5)
  {
    v16 = _LargeDatabasesLowSeveritySignpostLogHandle();
    if (os_signpost_enabled(v16))
    {
      v17 = [v3 note];
      *buf = 134349056;
      v33 = [v17 length];
      _os_signpost_emit_with_name_impl(&dword_199A75000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LongContactNoteLength", " enableTelemetry=YES %{public, signpost.telemetry:number1, name=NoteLength}lu", buf, 0xCu);
    }
  }

  v27 = v3;
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
        v25 = [v24 unsignedIntegerValue];

        if (v25 >= 0xA)
        {
          v26 = _LargeDatabasesLowSeveritySignpostLogHandle();
          if (os_signpost_enabled(v26))
          {
            *buf = 138543618;
            v33 = v23;
            v34 = 2050;
            v35 = v25;
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

+ (id)descriptorForRequiredKeysWithDescription:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CNContactContentEditViewController_descriptorForRequiredKeysWithDescription___block_invoke;
  block[3] = &unk_1E74E6A88;
  v10 = v3;
  v4 = descriptorForRequiredKeysWithDescription__cn_once_token_13;
  v5 = v3;
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
  v4 = [a1 descriptorForRequiredKeysWithDescription:v3];

  return v4;
}

+ (id)descriptorForRequiredKeysForContact:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 descriptorForRequiredKeys];
  v6 = [v4 availableKeyDescriptor];

  v12[0] = v5;
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = MEMORY[0x1E695CD58];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentEditViewController descriptorForRequiredKeysForContact:]"];
  v10 = [v8 descriptorWithKeyDescriptors:v7 description:v9];

  return v10;
}

@end