@interface CNContactContentDisplayViewController
+ (BOOL)actionModelIncludesTTY:(id)a3;
+ (BOOL)shouldShowGeminiForResult:(id)a3 contact:(id)a4;
+ (CNContactContentDisplayViewController)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4;
+ (id)descriptorForRequiredKeys;
+ (id)descriptorForRequiredKeysForContact:(id)a3;
+ (id)descriptorForRequiredKeysWithDescription:(id)a3;
- (BOOL)_indexPathIsActionItem:(id)a3;
- (BOOL)contactDisplayViewController:(id)a3 shouldPerformDefaultActionForContact:(id)a4 propertyKey:(id)a5 propertyIdentifier:(id)a6;
- (BOOL)contactInlineActionsViewController:(id)a3 shouldPerformActionOfType:(id)a4 withContactProperty:(id)a5;
- (BOOL)hasTableViewHeaderFirstSection;
- (BOOL)isHeaderViewPhotoProhibited;
- (BOOL)isNicknameProhibited;
- (BOOL)isOutOfProcess;
- (BOOL)isPresentingModalViewController;
- (BOOL)isScrollViewControllingHeaderResizeAnimation:(id)a3;
- (BOOL)isStandardGroup:(id)a3;
- (BOOL)isSuggestedContact;
- (BOOL)isTableViewHeaderFirstSectionIndexPath:(id)a3;
- (BOOL)reloadDataIfNeeded;
- (BOOL)saveWasAuthorized;
- (BOOL)shouldAddFaceTimeGroup;
- (BOOL)shouldAddShareLocationGroup;
- (BOOL)shouldDisplayAvatarHeaderView;
- (BOOL)shouldReallyShowLinkedContacts;
- (BOOL)shouldShowGemini;
- (BOOL)shouldShowVerifiedFooterInSection:(int64_t)a3;
- (BOOL)tableView:(id)a3 canPerformAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldHaveFullLengthBottomSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldShowMenuForRowAtIndexPath:(id)a4;
- (CGRect)centeredSourceRect:(CGRect)a3 inContactView:(id)a4;
- (CGSize)requiredSizeForVisibleTableView;
- (CGSize)setupTableHeaderView;
- (CNContactContentDisplayViewController)initWithContact:(id)a3 contactViewConfiguration:(id)a4;
- (CNContactContentDisplayViewController)initWithEnvironment:(id)a3;
- (CNContactContentDisplayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CNContactContentDisplayViewControllerDelegate)delegate;
- (CNContactContentNavigationItemDelegate)navigationItemDelegate;
- (CNContactHeaderDisplayView)contactHeaderView;
- (CNContactView)contactView;
- (CNPresenterDelegate)presentingDelegate;
- (CNShareLocationController)shareLocationController;
- (Class)groupClassForProperty:(id)a3;
- (NSArray)cardActions;
- (NSArray)originalContacts;
- (UIEdgeInsets)headerViewSafeAreaInsets;
- (UIEdgeInsets)insetsForContactTableView:(id)a3;
- (UIEdgeInsets)scrollIndicatorInsetsForContactTableView:(id)a3 withContentInsets:(UIEdgeInsets)a4;
- (UINavigationItem)effectiveNavigationItem;
- (double)desiredHeightForWidth:(double)a3;
- (double)globalHeaderHeightForContentOffset:(double)a3 contentInset:(UIEdgeInsets)a4;
- (double)navigationBarHeight;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)updateHeaderConstraintForGlobalHeaderHeight:(double)a3 direction:(int64_t)a4 animated:(BOOL)a5;
- (id)_addNewFieldAction;
- (id)_cardGroupAtTableViewSectionIndex:(int64_t)a3;
- (id)_cellForIndexPath:(id)a3;
- (id)_cellIdentifierForIndexPath:(id)a3;
- (id)_clearRecentsDataAction;
- (id)_currentTopVisibleGroupInContactView:(id)a3;
- (id)_itemAtIndexPath:(id)a3;
- (id)_labelWidthKeyForGroup:(id)a3;
- (id)_loadDisplayGroups;
- (id)_loadPropertyGroups;
- (id)_phoneticNameForValue:(id)a3 currentPhoneticName:(id)a4 property:(id)a5;
- (id)_policyForContact:(id)a3 mode:(int64_t)a4;
- (id)_propertyGroupsForKeys:(id)a3;
- (id)_removeUnauthorizedKeysFromContact:(id)a3;
- (id)_updateContact:(id)a3 withMissingKeysFromRequiredKeys:(id)a4;
- (id)_updateExistingContactAction;
- (id)applyContactStyle;
- (id)cardGroupForProperty:(id)a3;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (id)createActionsController;
- (id)currentNavigationController;
- (id)indexPathOfPropertyItem:(id)a3;
- (id)saveDescriptionForRemovingLinkedContact:(id)a3 keys:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableViewHeaderFirstSectionCell;
- (int64_t)_modalPresentationStyleForViewController:(id)a3;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)sectionOfGroup:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addFaceTimeGroupAnimated:(BOOL)a3;
- (void)_addGroup:(id)a3 afterGroup:(id)a4 animated:(BOOL)a5;
- (void)_addMedicalIDGroupAnimated:(BOOL)a3;
- (void)_addShareLocationGroupAnimated:(BOOL)a3;
- (void)_didCompleteWithContact:(id)a3;
- (void)_handleCoalescedBlockListDidChange;
- (void)_refetchContact;
- (void)_reloadAlertGroups;
- (void)_reloadFaceTimeGroup;
- (void)_reloadGeminiGroupPreservingChanges:(BOOL)a3;
- (void)_reloadLinkedCardsGroup;
- (void)_reloadMedicalIDGroup;
- (void)_reloadPropertyGroupsPreservingChanges:(BOOL)a3;
- (void)_retrieveActionsModelPreservingChanges:(BOOL)a3;
- (void)_saveChangesForGroups:(id)a3;
- (void)_scrollContactView:(id)a3 toVisibleGroup:(id)a4;
- (void)_setNeedsUpdateCachedLabelWidths;
- (void)_setupAddToAddressBookActions;
- (void)_setupCardActions;
- (void)_setupContactBlockingActionPreservingChanges:(BOOL)a3 withUpdate:(BOOL)a4;
- (void)_setupContactBlockingReportingActionPreservingChanges:(BOOL)a3 withUpdate:(BOOL)a4;
- (void)_setupCustomActions;
- (void)_setupSuggestionActions;
- (void)_updateAvailableTransports;
- (void)_updateAvailableTransportsForItems:(id)a3;
- (void)_updateCachedLabelWidths;
- (void)_updateCachedLabelWidthsForGroup:(id)a3;
- (void)_updateCachedLabelWidthsForItem:(id)a3;
- (void)_updateCachedLabelWidthsIfNeeded;
- (void)_updateEmailTransportButtonsForItems:(id)a3;
- (void)_updateIMessageTransportButtonsForItems:(id)a3;
- (void)_updateLabelWidthForCell:(id)a3;
- (void)_updateLabelWidthForCellsInGroup:(id)a3 reset:(BOOL)a4;
- (void)_updateLabelWidthsForAllVisibleCells;
- (void)_updatePhoneTransportButtonsForItems:(id)a3;
- (void)_updateTTYTransportButtonsForItems:(id)a3;
- (void)_updateUserActivity;
- (void)_validateGroup:(id)a3;
- (void)action:(id)a3 dismissViewController:(id)a4 sender:(id)a5;
- (void)action:(id)a3 prepareChildContactViewController:(id)a4 sender:(id)a5;
- (void)action:(id)a3 presentViewController:(id)a4 sender:(id)a5;
- (void)action:(id)a3 pushViewController:(id)a4 sender:(id)a5;
- (void)actionDidFinish:(id)a3;
- (void)actionDidUpdate:(id)a3;
- (void)actionWasCanceled:(id)a3;
- (void)addActionWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 menuProvider:(id)a6 inGroup:(id)a7 destructive:(BOOL)a8;
- (void)adjustInsetsForKeyboardOverlap:(double)a3;
- (void)adjustPreferredContentSize;
- (void)blockListDidChange:(id)a3;
- (void)cancelAsyncLookups;
- (void)contactInlineActionsViewControllerDidDismissDisambiguationUI:(id)a3;
- (void)contactInlineActionsViewControllerWillPresentDisambiguationUI:(id)a3;
- (void)contactStoreDidChangeWithNotification:(id)a3;
- (void)contactViewConfigurationDidUpdate;
- (void)contactViewController:(id)a3 didDeleteContact:(id)a4;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)createdNewContact:(id)a3;
- (void)dealloc;
- (void)didChangeToShowTitle:(BOOL)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)geminiDataSourceDidUpdate:(id)a3;
- (void)headerPhotoDidUpdate;
- (void)headerViewDidChangeHeight:(id)a3;
- (void)headerViewDidPickPreferredChannel:(id)a3;
- (void)headerViewDidTapNameLabel:(id)a3;
- (void)initializeTableViewsForHeaderHeight;
- (void)keyboardDidShowNotification:(id)a3;
- (void)loadContactViewControllerViews;
- (void)loadView;
- (void)prepareCell:(id)a3;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)propertyCell:(id)a3 didDeleteLabel:(id)a4 forGroup:(id)a5;
- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewLabel:(id)a5;
- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewValue:(id)a5;
- (void)propertyCell:(id)a3 performActionForItem:(id)a4 withTransportType:(int64_t)a5;
- (void)propertyCellDidChangeLayout:(id)a3;
- (void)reloadCardActionsForBlockState:(BOOL)a3 preservingChanges:(BOOL)a4;
- (void)reloadCardGroup:(id)a3;
- (void)reloadDataPreservingChanges:(BOOL)a3;
- (void)reloadUnifiedContact;
- (void)removeActionWithTarget:(id)a3 selector:(SEL)a4 inGroup:(id)a5;
- (void)removeFirstSectionHeaderViewControllerFromHierarchy;
- (void)removeLinkedContact:(id)a3;
- (void)requestFavoritesUpdateWithGemini;
- (void)scrollScrollViewAllTheWayUp:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (void)sender:(id)a3 presentViewController:(id)a4;
- (void)setBackgroundColorIfNeededForPresentedViewController:(id)a3;
- (void)setCancelKeyboardShortcutEnabled:(BOOL)a3;
- (void)setContact:(id)a3;
- (void)setContactStore:(id)a3;
- (void)setEditKeyboardShortcutEnabled:(BOOL)a3;
- (void)setForcesTransparentBackground:(BOOL)a3;
- (void)setMenuProviderForCell:(id)a3 forActionGroupItem:(id)a4;
- (void)setNeedsReload;
- (void)setPersonHeaderViewController:(id)a3;
- (void)setTitle:(id)a3;
- (void)setupActionsPreservingChanges:(BOOL)a3;
- (void)setupConstraints;
- (void)setupShareLocationActionReload:(BOOL)a3;
- (void)setupTableFooterView;
- (void)setupViewHierarchyIncludingAvatarHeader:(BOOL)a3;
- (void)shouldPresentFullscreen:(BOOL)a3;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)toggleEditing:(id)a3;
- (void)updateContact:(id)a3;
- (void)updateContactsViewWithBlock:(id)a3 completion:(id)a4;
- (void)updateEditNavigationItemsAnimated:(BOOL)a3;
- (void)updateHeaderHeightToMatchScrollViewState:(id)a3 scrollDirection:(int64_t)a4 animated:(BOOL)a5;
- (void)updateInsetsIfNeeded;
- (void)updateOutOfProcessFullscreenPresentationIfNeeded;
- (void)updateTableView:(id)a3 contentInsetsTo:(UIEdgeInsets)a4 withScrollIndicatorInsets:(UIEdgeInsets)a5;
- (void)updateUserActivityState:(id)a3;
- (void)updateViewConstraints;
- (void)updateWindowTitleForAppearing:(BOOL)a3;
- (void)updateWithContactViewConfiguration:(id)a3;
- (void)updatedExistingContact:(id)a3;
- (void)viewController:(id)a3 presentationControllerWillDismiss:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNContactContentDisplayViewController

- (CNPresenterDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (CNContactContentNavigationItemDelegate)navigationItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationItemDelegate);

  return WeakRetained;
}

- (CNContactContentDisplayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)applyContactStyle
{
  v49[2] = *MEMORY[0x1E69E9840];
  v3 = +[CNContactStyle currentStyle];
  if ([(CNContactContentDisplayViewController *)self forcesTransparentBackground])
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
  v7 = [(CNContactContentDisplayViewController *)self contactView];
  [v7 setBackgroundColor:v6];

LABEL_6:
  v8 = [v3 sectionBackgroundColor];
  v9 = [(CNContactContentDisplayViewController *)self contactView];
  [v9 setSectionBackgroundColor:v8];

  v10 = [v3 separatorColor];
  v11 = [(CNContactContentDisplayViewController *)self contactView];
  [v11 setSeparatorColor:v10];

  v12 = [v3 selectedCellBackgroundColor];
  v13 = [(CNContactContentDisplayViewController *)self contactView];
  [v13 setSelectedCellBackgroundColor:v12];

  v14 = MEMORY[0x1E695DF90];
  v15 = [(CNContactContentDisplayViewController *)self contactView];
  v16 = [v15 valueTextAttributes];
  v17 = [v14 dictionaryWithDictionary:v16];

  v18 = *MEMORY[0x1E69DB650];
  v48[0] = *MEMORY[0x1E69DB650];
  v19 = [v3 textColor];
  v48[1] = @"ABNotesTextColorAttributeName";
  v49[0] = v19;
  v20 = [v3 notesTextColor];
  v49[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v17 addEntriesFromDictionary:v21];

  v22 = [(CNContactContentDisplayViewController *)self contactView];
  [v22 setValueTextAttributes:v17];

  if ([(CNContactContentDisplayViewController *)self forcesTransparentBackground])
  {
    v23 = +[CNUIColorRepository transparentBackgroundColor];
    [(CNContactHeaderDisplayView *)self->_contactHeaderView setBackgroundColor:v23];

    v24 = +[CNUIColorRepository transparentBackgroundColor];
  }

  else
  {
    v25 = [(CNContactContentDisplayViewController *)self environment];
    v26 = [v25 runningInContactsAppOniPad];

    if (v26)
    {
      v27 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
      [(CNContactHeaderDisplayView *)self->_contactHeaderView setBackgroundColor:v27];

      +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    }

    else
    {
      v28 = [v3 contactHeaderBackgroundColor];
      [(CNContactHeaderDisplayView *)self->_contactHeaderView setBackgroundColor:v28];

      [v3 contactHeaderBackgroundColor];
    }
    v24 = ;
  }

  v29 = v24;
  [(CNContactActionsContainerView *)self->_actionsWrapperView setBackgroundColor:v24];

  contactHeaderView = self->_contactHeaderView;
  v46 = v18;
  v31 = [v3 taglineTextColor];
  v47 = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  [contactHeaderView cn_updateDictionaryForKey:@"taglineTextAttributes" withChanges:v32];

  v33 = [(CNContactContentDisplayViewController *)self actionsViewController];
  [v33 setViewStyle:{objc_msgSend(v3, "topActionsViewStyle")}];

  v34 = 0;
  if ([v3 usesOpaqueBackground])
  {
    v35 = [(CNContactContentDisplayViewController *)self actionsViewController];
    v36 = [v35 view];
    v37 = [v36 layer];
    [v37 setShadowRadius:8.0];

    v38 = [(CNContactContentDisplayViewController *)self actionsViewController];
    v39 = [v38 view];
    v40 = [v39 layer];
    [v40 setShadowOffset:{0.0, 2.0}];

    v34 = 1025758986;
  }

  v41 = [(CNContactContentDisplayViewController *)self actionsViewController];
  v42 = [v41 view];
  v43 = [v42 layer];
  LODWORD(v44) = v34;
  [v43 setShadowOpacity:v44];

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
  [(CNContactContentDisplayViewController *)self keyboardVerticalOverlap];
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
  v5 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v5 minHeight];
  v7 = v6;

  v8 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v8 maxHeight];
  v10 = v9;

  if (v10 == 0.0)
  {
    v15 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v45 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    goto LABEL_21;
  }

  v11 = 0.0;
  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
  {
    v12 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
    [v12 frame];
    v11 = v13;
  }

  [v4 _systemContentInset];
  v15 = v10 + v11 - v14;
  [v4 bounds];
  v17 = v10 - v7 + v16;
  [v4 _systemContentInset];
  v19 = v17 - v18 - v15;
  [v4 _systemContentInset];
  v21 = v20;
  [(CNContactContentDisplayViewController *)self keyboardVerticalOverlap];
  if (v21 >= v22)
  {
    v22 = v21;
  }

  v23 = v19 - v22;
  [v4 contentSize];
  if (v23 - v24 >= 0.0)
  {
    v25 = v23 - v24;
  }

  else
  {
    v25 = 0.0;
  }

  [v4 contentInset];
  v27 = v26;
  v29 = v28;
  [(CNContactContentDisplayViewController *)self keyboardVerticalOverlap];
  if (v30 <= 0.0)
  {
    [v4 _systemContentInset];
    v47 = -v46;
    goto LABEL_18;
  }

  v31 = [(CNContactContentDisplayViewController *)self view];
  v32 = [v31 window];
  if (!v32)
  {
    v40 = 0.0;
    goto LABEL_16;
  }

  v33 = v32;
  v34 = [(CNContactContentDisplayViewController *)self view];
  v35 = [v34 window];
  [v35 bounds];
  v37 = v36;
  [v4 bounds];
  v39 = v38;

  v40 = 0.0;
  if (v37 > v39)
  {
    v31 = [(CNContactContentDisplayViewController *)self view];
    v41 = [v31 window];
    [v41 bounds];
    v43 = v42;
    [v4 bounds];
    v40 = v43 - v44;

LABEL_16:
  }

  [(CNContactContentDisplayViewController *)self keyboardVerticalOverlap];
  v49 = v48;
  [v4 _systemContentInset];
  v47 = v40 + v49 - v50;
LABEL_18:
  if (v25 >= v47)
  {
    v45 = v25;
  }

  else
  {
    v45 = v47;
  }

LABEL_21:

  v51 = v15;
  v52 = v27;
  v53 = v45;
  v54 = v29;
  result.right = v54;
  result.bottom = v53;
  result.left = v52;
  result.top = v51;
  return result;
}

- (void)initializeTableViewsForHeaderHeight
{
  v7 = [(CNContactContentDisplayViewController *)self contactView];
  [v7 layoutIfNeeded];
  v3 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
  [v3 setNeedsLayout];

  v4 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
  [v4 layoutIfNeeded];

  v5 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v5 calculateLabelSizesIfNeeded];

  v6 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
  [v6 setAlpha:1.0];

  [(CNContactContentDisplayViewController *)self updateInsetsIfNeeded];
  [(CNContactContentDisplayViewController *)self updateHeaderHeightToMatchScrollViewState:v7 scrollDirection:2 animated:0];
}

- (void)updateInsetsIfNeeded
{
  v45 = [(CNContactContentDisplayViewController *)self contactView];
  [(CNContactContentDisplayViewController *)self keyboardVerticalOverlap];
  if (v3 <= 0.0 || (-[CNContactContentDisplayViewController view](self, "view"), v4 = objc_claimAutoreleasedReturnValue(), [v4 bounds], v6 = v5, v4, v6 <= 0.0))
  {
    v13 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    v14 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    [v14 maxHeight];
    v17 = v13;
    v16 = 0;
  }

  else
  {
    v7 = [(CNContactContentDisplayViewController *)self view];
    [v7 bounds];
    v9 = v8;
    [(CNContactContentDisplayViewController *)self keyboardVerticalOverlap];
    v11 = v9 - v10 + -64.0;

    v12 = fmax(v11, 0.0);
    v13 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    v14 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    [v14 maxHeight];
    v16 = v12 <= v15;
    v17 = v13;
    v18 = v12;
  }

  [v17 setConstrainedMaxHeight:v16 enabled:v18];

  [v45 contentInset];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(CNContactContentDisplayViewController *)self insetsForContactTableView:v45];
  v30 = v27;
  v32 = v31;
  v33 = v28;
  v34 = v29;
  if (v31 != v22 || v27 != v20 || v29 != v26 || v28 != v24)
  {
    v35 = [(CNContactContentDisplayViewController *)self contactView];
    [(CNContactContentDisplayViewController *)self scrollIndicatorInsetsForContactTableView:v35 withContentInsets:v30, v32, v33, v34];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v44 = [(CNContactContentDisplayViewController *)self contactView];
    [(CNContactContentDisplayViewController *)self updateTableView:v44 contentInsetsTo:v30 withScrollIndicatorInsets:v32, v33, v34, v37, v39, v41, v43];
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
  v5 = [(CNContactContentDisplayViewController *)self contactView];

  return v5 == v4;
}

- (double)updateHeaderConstraintForGlobalHeaderHeight:(double)a3 direction:(int64_t)a4 animated:(BOOL)a5
{
  v8 = 0.0;
  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
  {
    v9 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
    [v9 frame];
    v8 = v10;
  }

  v11 = [(CNContactContentDisplayViewController *)self headerHeightConstraint];
  [v11 constant];
  v13 = v12;

  if (a3 - v8 == v13 || !a4 && a3 - v8 <= v13)
  {
    return v8 + v13;
  }

  v14 = [(CNContactContentDisplayViewController *)self headerHeightConstraint];
  [v14 setConstant:a3 - v8];

  return a3;
}

- (void)updateHeaderHeightToMatchScrollViewState:(id)a3 scrollDirection:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [v8 contentOffset];
  v10 = v9;
  [v8 contentInset];
  [(CNContactContentDisplayViewController *)self globalHeaderHeightForContentOffset:v10 contentInset:v11, v12, v13, v14];
  [(CNContactContentDisplayViewController *)self updateHeaderConstraintForGlobalHeaderHeight:a4 direction:v5 animated:?];
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
  v7 = 0.0;
  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
  {
    v8 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
    [v8 frame];
    v7 = v9;
  }

  v10 = [(CNContactContentDisplayViewController *)self contactView];
  [v10 _systemContentInset];
  v12 = top + v11;

  if (-v12 <= a3)
  {
    v13 = -a3;
  }

  else
  {
    v13 = v12;
  }

  v14 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v14 minHeight];
  v16 = v7 + v15;

  if (v13 >= v16)
  {
    return v13;
  }

  else
  {
    return v16;
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v25 = a3;
  v8 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v8 minHeight];
  v10 = v9;

  v11 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v11 maxHeight];
  v13 = v12;

  if ([(CNContactContentDisplayViewController *)self isScrollViewControllingHeaderResizeAnimation:v25])
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
  if ([(CNContactContentDisplayViewController *)self isScrollViewControllingHeaderResizeAnimation:?])
  {
    [v5 _verticalVelocity];
    [(CNContactContentDisplayViewController *)self updateHeaderHeightToMatchScrollViewState:v5 scrollDirection:v4 >= 0.0 animated:1];
  }
}

- (void)setEditKeyboardShortcutEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentDisplayViewController *)self editCommand];

  if (v3)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"l" modifierFlags:0x100000 action:sel_toggleEditing_];
      [(CNContactContentDisplayViewController *)self setEditCommand:v6];

      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"EDIT_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
      v9 = [(CNContactContentDisplayViewController *)self editCommand];
      [v9 setDiscoverabilityTitle:v8];

      v11 = [(CNContactContentDisplayViewController *)self editCommand];
      [(CNContactContentDisplayViewController *)self addKeyCommand:v11];
    }
  }

  else if (v5)
  {
    v10 = [(CNContactContentDisplayViewController *)self editCommand];
    [(CNContactContentDisplayViewController *)self removeKeyCommand:v10];

    [(CNContactContentDisplayViewController *)self setEditCommand:0];
  }
}

- (void)setCancelKeyboardShortcutEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentDisplayViewController *)self cancelCommand];

  if (v3)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_editCancel_];
      [(CNContactContentDisplayViewController *)self setCancelCommand:v6];

      v8 = [(CNContactContentDisplayViewController *)self cancelCommand];
      [(CNContactContentDisplayViewController *)self addKeyCommand:v8];
    }
  }

  else if (v5)
  {
    v7 = [(CNContactContentDisplayViewController *)self cancelCommand];
    [(CNContactContentDisplayViewController *)self removeKeyCommand:v7];

    [(CNContactContentDisplayViewController *)self setCancelCommand:0];
  }
}

- (void)updateUserActivityState:(id)a3
{
  v4 = a3;
  v6 = [(CNContactContentDisplayViewController *)self activityManager];
  v5 = [(CNContactContentDisplayViewController *)self contact];
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

    v6 = [(CNContactContentDisplayViewController *)self activityManager];
    v7 = [(CNContactContentDisplayViewController *)self contact];
    v8 = [v6 makeActivityAdvertisingViewingOfContact:v7];

    v9 = [(CNContactContentDisplayViewController *)self userActivity];
    v10 = v9;
    if (v8)
    {

      if (!v10)
      {
        [(CNContactContentDisplayViewController *)self setUserActivity:v8];
        v11 = [(CNContactContentDisplayViewController *)self userActivity];
        [v11 becomeCurrent];

        v12 = CNUILogContactCard();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [(CNContactContentDisplayViewController *)self userActivity];
          v17 = 138412546;
          v18 = self;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_INFO, "Activity continuity -  %@ created %@", &v17, 0x16u);
        }
      }

      v14 = [(CNContactContentDisplayViewController *)self userActivity];
      [v14 setNeedsSave:1];
    }

    else
    {
      [v9 resignCurrent];

      v15 = CNUILogContactCard();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [(CNContactContentDisplayViewController *)self userActivity];
        v17 = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_INFO, "Activity continuity -  %@ removed %@", &v17, 0x16u);
      }

      [(CNContactContentDisplayViewController *)self setUserActivity:0];
    }
  }
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v18 encodeRestorableStateWithCoder:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = +[CNContactContentDisplayViewController BOOLStateRestorationProperties];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(CNContactContentDisplayViewController *)self valueForKey:v10];
        if (v11)
        {
          [v4 encodeObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [(CNContactContentDisplayViewController *)self contact];
  v13 = [v12 identifier];

  if (v13)
  {
    [v4 encodeObject:v13 forKey:@"Identifier"];
  }
}

- (BOOL)_indexPathIsActionItem:(id)a3
{
  v4 = a3;
  v5 = -[CNContactContentDisplayViewController _cardGroupAtTableViewSectionIndex:](self, "_cardGroupAtTableViewSectionIndex:", [v4 section]);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:v4];
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

- (id)_itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[CNContactContentDisplayViewController _cardGroupAtTableViewSectionIndex:](self, "_cardGroupAtTableViewSectionIndex:", [v4 section]);
  if ([(CNContactContentDisplayViewController *)self isStandardGroup:v5])
  {
    v6 = [v5 displayItems];
LABEL_5:
    v7 = v6;
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

    goto LABEL_7;
  }

  if ([(CNContactContentDisplayViewController *)self _indexPathIsActionItem:v4])
  {
    v6 = [v5 actionItems];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_cardGroupAtTableViewSectionIndex:(int64_t)a3
{
  v4 = [(CNContactContentDisplayViewController *)self groupIndexFromTableViewSectionIndex:a3];
  v5 = [(CNContactContentDisplayViewController *)self _currentGroups];
  if ([v5 count] <= v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:v4];
  }

  return v6;
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
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 propertyItems];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = self;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
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

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
    if (v8)
    {
      [(CNContactContentDisplayViewController *)v18 reloadCardGroup:v4];
    }
  }
}

- (void)_reloadGeminiGroupPreservingChanges:(BOOL)a3
{
  if (!a3)
  {
    v6 = [(CNContactContentDisplayViewController *)self geminiDataSource];
    [v6 resetDataSource];
    v5 = [(CNContactContentDisplayViewController *)self contact];
    [v6 setContact:v5];
  }
}

- (id)_loadDisplayGroups
{
  v81 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CNContactContentDisplayViewController *)self cardTopGroup];
  v5 = [v4 actions];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(CNContactContentDisplayViewController *)self cardTopGroup];
    [v3 addObject:v7];
  }

  v68 = v3;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v8 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v9 = [v8 displayedProperties];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v10)
  {
    v11 = v10;
    v70 = *v76;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v76 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v75 + 1) + 8 * i);
        v14 = [(CNContactContentDisplayViewController *)self propertyGroups];
        v15 = [v14 objectForKeyedSubscript:v13];

        v16 = [v15 displayItems];
        if ([v16 count])
        {
          v17 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
          v18 = [v17 primaryProperty];
          v19 = [v15 property];
          v20 = [v18 isEqualToString:v19];

          if (v20)
          {
            goto LABEL_20;
          }

          [v68 addObject:v15];
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v16 = [v15 displayItems];
          v21 = [v16 countByEnumeratingWithState:&v71 objects:v79 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v72;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v72 != v23)
                {
                  objc_enumerationMutation(v16);
                }

                v25 = *(*(&v71 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v25 setDelegate:self];
                }
              }

              v22 = [v16 countByEnumeratingWithState:&v71 objects:v79 count:16];
            }

            while (v22);
          }
        }

LABEL_20:
      }

      v11 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v11);
  }

  v26 = [(CNContactContentDisplayViewController *)self cardBottomGroup];
  v27 = [v26 actions];
  v28 = [v27 count];

  if (v28)
  {
    v29 = [(CNContactContentDisplayViewController *)self cardBottomGroup];
    [v68 addObject:v29];
  }

  v30 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if ([v30 hideCardActions])
  {
    goto LABEL_33;
  }

  v31 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
  v32 = [v31 actions];
  v33 = [v32 count];

  if (v33)
  {
    v34 = [(CNContactContentDisplayViewController *)self cardBottomGroup];
    v35 = [v34 actions];
    if ([v35 count])
    {
      v36 = 1;
    }

    else
    {
      v37 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
      v38 = [v37 primaryProperty];
      if (v38)
      {
        v39 = v38;
        v36 = 1;
      }

      else
      {
        v39 = [(CNContactContentDisplayViewController *)self contact];
        v36 = [v39 isSuggested];
      }
    }

    v40 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    [v40 setAddSpacerFromPreviousGroup:v36];

    v30 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    [v68 addObject:v30];
LABEL_33:
  }

  v41 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];
  if (v41)
  {
    v42 = v41;
    v43 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];
    v44 = [v43 actionItems];
    v45 = [v44 count];

    if (v45)
    {
      v46 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];
      [v68 addObject:v46];
    }
  }

  v47 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if (([v47 hideCardActions] & 1) == 0)
  {
    v48 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];
    v49 = [v48 actionItems];
    v50 = [v49 count];

    if (!v50)
    {
      goto LABEL_41;
    }

    v47 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];
    [v68 addObject:v47];
  }

LABEL_41:
  v51 = [(CNContactContentDisplayViewController *)self cardFooterGroup];
  v52 = [v51 actions];
  v53 = [v52 count];

  if (v53)
  {
    v51 = [(CNContactContentDisplayViewController *)self cardFooterGroup];
    [v68 addObject:v51];
  }

  v54 = [(CNContactContentDisplayViewController *)self isSuggestedContact];
  if (v54)
  {
    v55 = 0;
  }

  else
  {
    v51 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    if ([v51 allowsContactBlocking])
    {
      v55 = 0;
    }

    else
    {
      v53 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
      if (([v53 allowsContactBlockingAndReporting] & 1) == 0)
      {

LABEL_59:
        goto LABEL_60;
      }

      v55 = 1;
    }
  }

  v56 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
  v57 = [v56 actions];
  v58 = [v57 count];

  if (v55)
  {

    if (!v54)
    {
      goto LABEL_49;
    }

LABEL_52:
    if (!v58)
    {
      goto LABEL_60;
    }

    goto LABEL_53;
  }

  if (v54)
  {
    goto LABEL_52;
  }

LABEL_49:

  if (v58)
  {
LABEL_53:
    v59 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    v60 = [v59 showContactBlockingFirst];

    v61 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
    v51 = v61;
    if (v60)
    {
      [v61 setAddSpacerFromPreviousGroup:0];

      v51 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [v68 insertObject:v51 atIndex:0];
    }

    else
    {
      [v68 addObject:v61];
    }

    goto LABEL_59;
  }

LABEL_60:
  v62 = [(CNContactContentDisplayViewController *)self cardLinkedCardsGroup];

  if (v62)
  {
    v63 = [(CNContactContentDisplayViewController *)self cardLinkedCardsGroup];
    [v68 addObject:v63];
  }

  v64 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v65 = [v64 allowsNamePicking];

  if (v65)
  {
    v66 = [(CNContactContentDisplayViewController *)self namePickingGroup];
    [v68 addObject:v66];
  }

  return v68;
}

- (void)_reloadLinkedCardsGroup
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(CNContactContentDisplayViewController *)self shouldReallyShowLinkedContacts])
  {
    v3 = [(CNContactContentDisplayViewController *)self actionProvider];
    v4 = [v3 linkedCardsAction];

    if (!v4)
    {
      v5 = [(CNContactContentDisplayViewController *)self actionProvider];
      [v5 buildLinkedContactActions];
    }

    v6 = [(CNContactContentDisplayViewController *)self actionProvider];
    v7 = [v6 linkedCardsAction];
    [v7 setContactDelegate:self];

    v8 = [CNCardLinkedCardsGroup alloc];
    v9 = [(CNContactContentDisplayViewController *)self mutableContact];
    v10 = [(CNCardGroup *)v8 initWithContact:v9];
    [(CNContactContentDisplayViewController *)self setCardLinkedCardsGroup:v10];

    v11 = [MEMORY[0x1E695DF70] array];
    v12 = [(CNContactContentDisplayViewController *)self contact];
    v13 = [v12 mainStoreLinkedContacts];

    v14 = [(CNContactContentDisplayViewController *)self shadowCopyOfReadonlyContact];

    if (!v14)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [v11 addObject:{*(*(&v21 + 1) + 8 * i), v21}];
          }

          v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v17);
      }
    }

    if ([v11 count] < 2)
    {
      [(CNContactContentDisplayViewController *)self setCardLinkedCardsGroup:0];
    }

    else
    {
      v20 = [(CNContactContentDisplayViewController *)self cardLinkedCardsGroup];
      [v20 setLinkedContacts:v11];
    }
  }

  else
  {

    [(CNContactContentDisplayViewController *)self setCardLinkedCardsGroup:0];
  }
}

- (BOOL)shouldReallyShowLinkedContacts
{
  v3 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if ([v3 shouldShowLinkedContacts])
  {
    v4 = [(CNContactContentDisplayViewController *)self contact];
    v5 = [v4 mainStoreLinkedContacts];
    if ([v5 count] < 2)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v6 = [(CNContactContentDisplayViewController *)self shadowCopyOfReadonlyContact];
      if (v6)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v8 = [(CNContactContentDisplayViewController *)self contact];
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

- (void)_reloadAlertGroups
{
  v3 = [(CNContactContentDisplayViewController *)self propertyGroups];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695C1E0]];
  v5 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  [v4 setAllowsDisplayModePickerActions:{objc_msgSend(v5, "allowsDisplayModePickerActions")}];

  v8 = [(CNContactContentDisplayViewController *)self propertyGroups];
  v6 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695C3F8]];
  v7 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  [v6 setAllowsDisplayModePickerActions:{objc_msgSend(v7, "allowsDisplayModePickerActions")}];
}

- (void)_reloadMedicalIDGroup
{
  v3 = [(CNContactContentDisplayViewController *)self environment];
  v4 = [v3 healthStoreManager];

  v5 = [(CNContactContentDisplayViewController *)self medicalIDLookupToken];
  [v5 cancel];

  [(CNContactContentDisplayViewController *)self setMedicalIDLookupToken:0];
  [(CNContactContentDisplayViewController *)self setMedicalIDRegistrationToken:0];
  [(CNContactContentDisplayViewController *)self setCardMedicalIDGroup:0];
  v6 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v6 setIsEmergencyContact:0];

  v7 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if (([v7 allowsActions] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v9 = [v8 allowsCardActions];

  if (!v9)
  {
LABEL_6:
    [(CNContactContentDisplayViewController *)self setCardMedicalIDGroup:0];
    [(CNContactContentDisplayViewController *)self setMedicalIDAction:0];
    [(CNContactContentDisplayViewController *)self setEmergencyContactAction:0];
    [(CNContactContentDisplayViewController *)self setEmergencyNumberIdentifier:0];
    goto LABEL_7;
  }

  if (![(CNContactContentDisplayViewController *)self isContactBlocked])
  {
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__CNContactContentDisplayViewController__reloadMedicalIDGroup__block_invoke;
    v22[3] = &unk_1E74E7268;
    objc_copyWeak(&v24, &location);
    v10 = v4;
    v23 = v10;
    v11 = [v10 registerMedicalIDDataHandler:v22];
    [(CNContactContentDisplayViewController *)self setMedicalIDRegistrationToken:v11];
    v12 = MEMORY[0x1E6996668];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __62__CNContactContentDisplayViewController__reloadMedicalIDGroup__block_invoke_4;
    v18 = &unk_1E74E7290;
    objc_copyWeak(&v21, &location);
    v19 = v10;
    v13 = v11;
    v20 = v13;
    v14 = [v12 tokenWithCancelationBlock:&v15];
    [(CNContactContentDisplayViewController *)self setMedicalIDLookupToken:v14, v15, v16, v17, v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

LABEL_7:
}

void __62__CNContactContentDisplayViewController__reloadMedicalIDGroup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained environment];
  v9 = [v8 defaultSchedulerProvider];
  v10 = [v9 mainThreadScheduler];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CNContactContentDisplayViewController__reloadMedicalIDGroup__block_invoke_2;
  v13[3] = &unk_1E74E7240;
  v14 = v6;
  v15 = WeakRetained;
  v16 = *(a1 + 32);
  v17 = v5;
  v11 = v5;
  v12 = v6;
  [v10 performBlock:v13];
}

void __62__CNContactContentDisplayViewController__reloadMedicalIDGroup__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setMedicalIDRegistrationToken:0];
  [*(a1 + 32) unregisterHandlerForToken:*(a1 + 40)];
}

void __62__CNContactContentDisplayViewController__reloadMedicalIDGroup__block_invoke_2(uint64_t a1)
{
  v72[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) medicalIDRegistrationToken];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) contact];
    v5 = [v4 phoneNumbers];
    v6 = [v5 count];

    if (([*(a1 + 40) showingMeContact] & 1) != 0 || v6)
    {
      v7 = [*(a1 + 40) cardMedicalIDGroup];

      if (v7)
      {
        v8 = [*(a1 + 40) cardMedicalIDGroup];
        [v8 removeAllActions];
      }

      else
      {
        v9 = [CNCardGroup alloc];
        v8 = [*(a1 + 40) mutableContact];
        v10 = [(CNCardGroup *)v9 initWithContact:v8];
        [*(a1 + 40) setCardMedicalIDGroup:v10];
      }

      v11 = [*(a1 + 40) cardMedicalIDGroup];
      [v11 setAddSpacerFromPreviousGroup:0];

      if ([*(a1 + 40) showingMeContact])
      {
        v12 = [*(a1 + 40) medicalIDAction];

        if (!v12)
        {
          v13 = [CNMedicalIDAction alloc];
          v14 = [*(a1 + 40) contact];
          v15 = [(CNPropertyAction *)v13 initWithContact:v14];
          [*(a1 + 40) setMedicalIDAction:v15];

          v16 = *(a1 + 48);
          v17 = [*(a1 + 40) medicalIDAction];
          [v17 setHealthStoreManager:v16];

          v18 = *(a1 + 40);
          v19 = [v18 medicalIDAction];
          [v19 setDelegate:v18];

          v20 = [*(a1 + 40) medicalIDAction];
          [v20 setShowBackgroundPlatter:0];
        }

        v21 = [*(a1 + 40) cardMedicalIDGroup];
        v22 = 1;
        [v21 setAddSpacerFromPreviousGroup:1];

        v23 = [*(a1 + 40) contactHeaderView];
        [v23 setIsEmergencyContact:0];

        v24 = *(a1 + 56);
        v25 = CNContactsUIBundle();
        v26 = v25;
        if (v24)
        {
          v27 = @"CARD_ACTION_SHOW_MEDICAL_ID";
        }

        else
        {
          v27 = @"CARD_ACTION_CREATE_MEDICAL_ID";
        }

        if (v24)
        {
          v22 = 2;
        }

        v28 = [v25 localizedStringForKey:v27 value:&stru_1F0CE7398 table:@"Localized"];

        v29 = [*(a1 + 40) medicalIDAction];
        [v29 setMedicalIDActionType:v22];

        v30 = [*(a1 + 40) cardMedicalIDGroup];
        v31 = [*(a1 + 40) medicalIDAction];
        v32 = +[CNUIColorRepository contactListEmergencyContactAddTextColor];
        v33 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
        [v30 addAction:v31 withTitle:v28 color:v32 glyphColor:v33 transportType:6];

        v6 = 0;
      }

      else if (v6)
      {
        v34 = [*(a1 + 40) emergencyContactAction];

        if (!v34)
        {
          v35 = [*(a1 + 40) propertyGroupsDataSource];
          v72[0] = *MEMORY[0x1E695C330];
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
          v37 = [v35 allDisplayPropertyItemsForPropertyKeys:v36];

          v38 = [CNEmergencyContactAction alloc];
          v39 = [*(a1 + 40) contact];
          v40 = [(CNEmergencyContactAction *)v38 initWithContact:v39 healthStoreManager:*(a1 + 48) propertyItems:v37];
          [*(a1 + 40) setEmergencyContactAction:v40];

          v41 = *(a1 + 40);
          v42 = [v41 emergencyContactAction];
          [v42 setDelegate:v41];
        }

        v43 = [*(a1 + 56) emergencyContacts];
        v44 = [*(a1 + 40) contact];
        v45 = [CNHealthStoreManager emergencyContactMatchingContact:v44];
        v46 = [v43 _cn_firstObjectPassingTest:v45];

        v47 = CNContactsUIBundle();
        v48 = v47;
        if (v46)
        {
          v49 = [v47 localizedStringForKey:@"CARD_ACTION_EMERGENCY_REMOVE" value:&stru_1F0CE7398 table:@"Localized"];

          v6 = [v46 phoneNumberContactIdentifier];
        }

        else
        {
          v49 = [v47 localizedStringForKey:@"CARD_ACTION_EMERGENCY_ADD" value:&stru_1F0CE7398 table:@"Localized"];

          v6 = 0;
        }

        v50 = [*(a1 + 40) emergencyContactAction];
        [v50 setAddingToEmergency:v46 == 0];

        v51 = [*(a1 + 40) contactHeaderView];
        [v51 setIsEmergencyContact:v46 != 0];

        v52 = [*(a1 + 40) contactStore];
        v53 = [*(a1 + 40) emergencyContactAction];
        [v53 setContactStore:v52];

        if (v46)
        {
          +[CNUIColorRepository contactListEmergencyContactGlyphColor];
        }

        else
        {
          +[CNUIColorRepository contactListEmergencyContactAddTextColor];
        }
        v54 = ;
        v55 = [*(a1 + 40) cardMedicalIDGroup];
        v56 = [*(a1 + 40) emergencyContactAction];
        [v55 addAction:v56 withTitle:v49 color:v54 transportType:0 wrapTitle:1];
      }

      v57 = [*(a1 + 40) displayGroups];
      v58 = MEMORY[0x1E69DD250];
      v66 = MEMORY[0x1E69E9820];
      v67 = 3221225472;
      v68 = __62__CNContactContentDisplayViewController__reloadMedicalIDGroup__block_invoke_3;
      v69 = &unk_1E74E77C0;
      v59 = v57;
      v60 = *(a1 + 40);
      v70 = v59;
      v71 = v60;
      [v58 performWithoutAnimation:&v66];
      v61 = [*(a1 + 40) emergencyNumberIdentifier];
      if (v6 != v61)
      {
        v62 = [*(a1 + 40) emergencyNumberIdentifier];
        v63 = [v6 isEqualToString:v62];

        if (v63)
        {
LABEL_30:

          return;
        }

        [*(a1 + 40) setEmergencyNumberIdentifier:v6];
        v64 = *(a1 + 40);
        v61 = [v64 propertyGroups];
        v65 = [v61 objectForKeyedSubscript:*MEMORY[0x1E695C330]];
        [v64 reloadCardGroup:v65];
      }

      goto LABEL_30;
    }
  }
}

void __62__CNContactContentDisplayViewController__reloadMedicalIDGroup__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cardMedicalIDGroup];
  LODWORD(v2) = [v2 containsObject:v3];

  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = [v4 cardMedicalIDGroup];
    [v4 reloadCardGroup:v5];
  }

  else
  {

    [v4 _addMedicalIDGroupAnimated:0];
  }
}

- (void)_addMedicalIDGroupAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentDisplayViewController *)self displayGroups];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__CNContactContentDisplayViewController__addMedicalIDGroupAnimated___block_invoke;
  aBlock[3] = &unk_1E74E7218;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [v5 indexOfObjectPassingTest:v6];
  if (v7)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 lastObject];
    }

    else
    {
      [v5 objectAtIndexedSubscript:v7 - 1];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];
  [(CNContactContentDisplayViewController *)self _addGroup:v9 afterGroup:v8 animated:v3];
}

BOOL __68__CNContactContentDisplayViewController__addMedicalIDGroupAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) cardShareLocationGroup];
  if (v4 == v3)
  {
    v8 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) cardFooterGroup];
    if (v5 == v3)
    {
      v8 = 1;
    }

    else
    {
      v6 = [*(a1 + 32) cardBlockContactGroup];
      if (v6 == v3)
      {
        v8 = 1;
      }

      else
      {
        v7 = [*(a1 + 32) cardLinkedCardsGroup];
        v8 = v7 == v3;
      }
    }
  }

  return v8;
}

- (void)_addGroup:(id)a3 afterGroup:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v16 = a4;
  v8 = a3;
  v9 = [(CNContactContentDisplayViewController *)self contactView];
  v10 = [(CNContactContentDisplayViewController *)self displayGroups];
  if (v16 && (v11 = [v10 indexOfObject:v16], v11 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  [v9 beginUpdates];
  [v10 insertObject:v8 atIndex:v12];

  v13 = [(CNContactContentDisplayViewController *)self tableViewSectionIndexFromGroupIndex:v12];
  v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:v13];
  if (v5)
  {
    v15 = 6;
  }

  else
  {
    v15 = 5;
  }

  [v9 insertSections:v14 withRowAnimation:v15];

  [v9 endUpdates];
  [(CNContactContentDisplayViewController *)self adjustPreferredContentSize];
}

- (BOOL)shouldAddShareLocationGroup
{
  if (([(CNContactContentDisplayViewController *)self isEditing]& 1) != 0)
  {
    return 0;
  }

  if ([(CNContactContentDisplayViewController *)self isContactBlocked])
  {
    return 0;
  }

  v3 = [(CNContactContentDisplayViewController *)self displayGroups];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CNContactContentDisplayViewController *)self displayGroups];
  v6 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];
  v7 = [v5 _cn_containsObject:v6];

  return v7 ^ 1;
}

- (void)_addShareLocationGroupAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactContentDisplayViewController *)self shouldAddShareLocationGroup])
  {
    if (([(CNContactContentDisplayViewController *)self isEditing]& 1) == 0)
    {
      v5 = [(CNContactContentDisplayViewController *)self displayGroups];

      if (v5)
      {
        v6 = [(CNContactContentDisplayViewController *)self displayGroups];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __72__CNContactContentDisplayViewController__addShareLocationGroupAnimated___block_invoke;
        v12[3] = &unk_1E74E6B20;
        v12[4] = self;
        v7 = [v6 _cn_indexOfFirstObjectPassingTest:v12];

        if (v7 && v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = [(CNContactContentDisplayViewController *)self displayGroups];
          v9 = [v8 objectAtIndexedSubscript:v7 - 1];
        }

        else
        {
          v8 = [(CNContactContentDisplayViewController *)self displayGroups];
          v9 = [v8 lastObject];
        }

        v10 = v9;

        v11 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];
        [(CNContactContentDisplayViewController *)self _addGroup:v11 afterGroup:v10 animated:v3];
      }
    }
  }
}

BOOL __72__CNContactContentDisplayViewController__addShareLocationGroupAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) cardFooterGroup];
  if (v4 == v3)
  {
    v7 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) cardBlockContactGroup];
    if (v5 == v3)
    {
      v7 = 1;
    }

    else
    {
      v6 = [*(a1 + 32) cardLinkedCardsGroup];
      v7 = v6 != 0;
    }
  }

  return v7;
}

- (BOOL)shouldAddFaceTimeGroup
{
  if ([(CNContactContentDisplayViewController *)self isContactBlocked])
  {
    return 0;
  }

  v3 = [(CNContactContentDisplayViewController *)self displayGroups];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CNContactContentDisplayViewController *)self cardFaceTimeGroup];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CNContactContentDisplayViewController *)self displayGroups];
  v6 = [(CNContactContentDisplayViewController *)self cardFaceTimeGroup];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    return 0;
  }

  v10 = [(CNContactContentDisplayViewController *)self cardFaceTimeGroup];
  v11 = [v10 contact];

  v12 = [(CNContactContentDisplayViewController *)self displayGroups];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CNContactContentDisplayViewController_shouldAddFaceTimeGroup__block_invoke;
  v14[3] = &unk_1E74E71A8;
  v15 = v11;
  v13 = v11;
  LOBYTE(v11) = [v12 _cn_any:v14];

  v8 = v11 ^ 1;
  return v8;
}

uint64_t __63__CNContactContentDisplayViewController_shouldAddFaceTimeGroup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v6 contact];
    v9 = [v7 isEqualIgnoringIdentifiers:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_addFaceTimeGroupAnimated:(BOOL)a3
{
  v3 = a3;
  v10[2] = *MEMORY[0x1E69E9840];
  if (([(CNContactContentDisplayViewController *)self isEditing]& 1) == 0)
  {
    if ([(CNContactContentDisplayViewController *)self shouldAddFaceTimeGroup])
    {
      v5 = *MEMORY[0x1E695C208];
      v10[0] = *MEMORY[0x1E695C330];
      v10[1] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
      v7 = [(CNContactContentDisplayViewController *)self _propertyGroupsForKeys:v6];

      v8 = [v7 firstObject];
      v9 = [(CNContactContentDisplayViewController *)self cardFaceTimeGroup];
      [(CNContactContentDisplayViewController *)self _addGroup:v9 afterGroup:v8 animated:v3];
    }
  }
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
        v12 = [(CNContactContentDisplayViewController *)self propertyGroups];
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

- (void)_reloadFaceTimeGroup
{
  v26[2] = *MEMORY[0x1E69E9840];
  v3 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  if ([v3 isFaceTimeAppAvailable])
  {
    v4 = [v3 isConferencingAvailable] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(CNContactContentDisplayViewController *)self propertyGroupsDataSource];
  v6 = *MEMORY[0x1E695C208];
  v26[0] = *MEMORY[0x1E695C330];
  v26[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v8 = [v5 allDisplayPropertyItemsForPropertyKeys:v7];

  v9 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if (![v9 allowsActions])
  {
    goto LABEL_12;
  }

  v10 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if (([v10 allowsConferencing] & 1) == 0)
  {

    goto LABEL_12;
  }

  v11 = [(CNContactContentDisplayViewController *)self contact];
  if ((([v11 isSuggested] | v4) & 1) != 0 || !objc_msgSend(v8, "count"))
  {

    goto LABEL_12;
  }

  v12 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v13 = [v12 primaryProperty];
  v14 = v13 == 0;

  if (v14)
  {
    v15 = [v8 _cn_filter:&__block_literal_global_3_58876];
    v9 = [v15 _cn_map:&__block_literal_global_58871];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__CNContactContentDisplayViewController__reloadFaceTimeGroup__block_invoke;
    aBlock[3] = &unk_1E74E7180;
    objc_copyWeak(&v24, &location);
    v16 = _Block_copy(aBlock);
    v17 = MEMORY[0x1E6996B68];
    v18 = [(CNContactContentDisplayViewController *)self environment];
    v19 = [v18 idsAvailabilityProvider];
    v20 = [(CNContactContentDisplayViewController *)self environment];
    v21 = [v20 defaultSchedulerProvider];
    v22 = [v17 validateHandlesForFaceTime:v9 availabilityProvider:v19 schedulerProvider:v21 handler:v16];
    [(CNContactContentDisplayViewController *)self setFaceTimeIDSLookupToken:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
LABEL_12:
  }
}

void __61__CNContactContentDisplayViewController__reloadFaceTimeGroup__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isAvailable])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained faceTimeIDSLookupToken];
    [v3 cancel];

    [WeakRetained setFaceTimeIDSLookupToken:0];
    if (WeakRetained)
    {
      v4 = [WeakRetained cardFaceTimeGroup];

      if (!v4)
      {
        v5 = [CNCardFaceTimeGroup alloc];
        v6 = [WeakRetained mutableContact];
        v7 = [(CNCardGroup *)v5 initWithContact:v6];
        [WeakRetained setCardFaceTimeGroup:v7];

        if (([WeakRetained needsReload] & 1) == 0)
        {
          [WeakRetained _addFaceTimeGroupAnimated:1];
        }
      }
    }
  }
}

- (void)_reloadPropertyGroupsPreservingChanges:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(CNContactContentDisplayViewController *)self propertyGroups];
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
  v4 = [(CNContactContentDisplayViewController *)self mutableContact];
  v5 = [(CNContactContentDisplayViewController *)self contactStore];
  v6 = [(CNContactContentDisplayViewController *)self policy];
  v7 = [(CNContactContentDisplayViewController *)self linkedPoliciesByContactIdentifier];
  v8 = [(CNContactContentDisplayViewController *)self prohibitedPropertyKeys];
  v9 = [(CNPropertyGroupsDataSource *)v3 initWithMutableContact:v4 contactStore:v5 policy:v6 linkedPolicies:v7 prohibitedKeys:v8];
  propertyGroupsDataSource = self->_propertyGroupsDataSource;
  self->_propertyGroupsDataSource = v9;

  v11 = [(CNContactContentDisplayViewController *)self propertyGroupsDataSource];
  [v11 buildPropertyGroups];

  v12 = [(CNContactContentDisplayViewController *)self propertyGroupsDataSource];
  v13 = [v12 propertyGroups];

  return v13;
}

- (BOOL)shouldShowGemini
{
  v3 = [(CNContactContentDisplayViewController *)self geminiDataSource];
  v4 = [v3 geminiResult];

  if (v4 && ![(CNContactContentDisplayViewController *)self showingMeContact])
  {
    v6 = [(CNContactContentDisplayViewController *)self contact];
    if ([v6 isSuggested])
    {
      v5 = 0;
    }

    else
    {
      v7 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
      v8 = [v7 displayedProperties];
      if ([v8 containsObject:*MEMORY[0x1E695C330]])
      {
        v9 = [(CNContactContentDisplayViewController *)self contact];
        v5 = [CNContactContentDisplayViewController shouldShowGeminiForResult:v4 contact:v9];
      }

      else
      {
        v5 = 0;
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

- (void)_updateTTYTransportButtonsForItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = *MEMORY[0x1E695C330];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 property];
        v12 = [v11 isEqualToString:v8];

        if (v12)
        {
          [v10 setAllowsTTY:{-[CNContactContentDisplayViewController contactSupportsTTYCalls](self, "contactSupportsTTYCalls")}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_updateEmailTransportButtonsForItems:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = *MEMORY[0x1E695C208];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 property];
        v11 = [v10 isEqualToString:v7];

        if (v11)
        {
          [v9 setAllowsEmail:1];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_updatePhoneTransportButtonsForItems:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x1E695C330];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 property];
        v11 = [v10 isEqualToString:v7];

        if (v11)
        {
          v12 = +[CNCapabilitiesManager defaultCapabilitiesManager];
          v13 = ([v12 hasCellularTelephonyCapability] & 1) != 0 || _CFMZEnabled() != 0;
          [v9 setAllowsPhone:v13];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_updateIMessageTransportButtonsForItems:(id)a3
{
  v26 = self;
  v38[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v27 = [MEMORY[0x1E695DF70] arrayWithArray:v3];
  v4 = *MEMORY[0x1E695CBC0];
  v38[0] = *MEMORY[0x1E695CB90];
  v38[1] = v4;
  v38[2] = *MEMORY[0x1E695CB70];
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v28 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    v9 = *MEMORY[0x1E695C330];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [v11 property];
        if ([v12 isEqualToString:v9])
        {
          v13 = [v11 labeledValue];
          v14 = [v13 label];
          v15 = [v29 containsObject:v14];

          if (v15)
          {
            [v11 setAllowsIMessage:1];
            [v28 addObject:v11];
          }
        }

        else
        {
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v7);
  }

  [v27 removeObjectsInArray:v28];
  if ([v27 count])
  {
    v16 = [v27 _cn_filter:&__block_literal_global_3_58876];
    v17 = [v16 _cn_map:&__block_literal_global_58871];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__CNContactContentDisplayViewController__updateIMessageTransportButtonsForItems___block_invoke;
    aBlock[3] = &unk_1E74E7130;
    v31 = v17;
    v32 = v27;
    v18 = v17;
    v19 = _Block_copy(aBlock);
    v20 = MEMORY[0x1E6996B68];
    v21 = [(CNContactContentDisplayViewController *)v26 environment];
    v22 = [v21 idsAvailabilityProvider];
    v23 = [(CNContactContentDisplayViewController *)v26 environment];
    v24 = [v23 defaultSchedulerProvider];
    v25 = [v20 validateHandlesForIMessage:v18 availabilityProvider:v22 schedulerProvider:v24 handler:v19];
    [(CNContactContentDisplayViewController *)v26 setIMessageIDSLookupToken:v25];
  }
}

void __81__CNContactContentDisplayViewController__updateIMessageTransportButtonsForItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 handle];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__CNContactContentDisplayViewController__updateIMessageTransportButtonsForItems___block_invoke_2;
    v17[3] = &unk_1E74E70E0;
    v18 = v6;
    v8 = [v7 _cn_firstObjectPassingTest:v17];
    v9 = *(a1 + 40);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __81__CNContactContentDisplayViewController__updateIMessageTransportButtonsForItems___block_invoke_3;
    v15 = &unk_1E74E7108;
    v16 = v8;
    v10 = v8;
    v11 = [v9 _cn_firstObjectPassingTest:&v12];
    [v11 setAllowsIMessage:{objc_msgSend(v3, "isAvailable", v12, v13, v14, v15)}];
  }
}

uint64_t __81__CNContactContentDisplayViewController__updateIMessageTransportButtonsForItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 contactProperty];
  v4 = [*(a1 + 32) contactProperty];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)_updateAvailableTransportsForItems:(id)a3
{
  v5 = a3;
  v4 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  if ([v4 isMessagesAppAvailable])
  {
    [(CNContactContentDisplayViewController *)self _updateIMessageTransportButtonsForItems:v5];
  }

  if ([v4 isPhoneAppAvailable])
  {
    [(CNContactContentDisplayViewController *)self _updatePhoneTransportButtonsForItems:v5];
  }

  if ([v4 isMailAppAvailable])
  {
    [(CNContactContentDisplayViewController *)self _updateEmailTransportButtonsForItems:v5];
  }

  [(CNContactContentDisplayViewController *)self _updateTTYTransportButtonsForItems:v5];
}

- (void)_updateAvailableTransports
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactContentDisplayViewController *)self propertyGroupsDataSource];
  v4 = *MEMORY[0x1E695C208];
  v7[0] = *MEMORY[0x1E695C330];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v6 = [v3 allDisplayPropertyItemsForPropertyKeys:v5];

  [(CNContactContentDisplayViewController *)self _updateAvailableTransportsForItems:v6];
}

- (id)_clearRecentsDataAction
{
  v3 = [(CNContactContentDisplayViewController *)self recentsData];

  if (v3 && ![(CNContactContentDisplayViewController *)self isSuggestedContact])
  {
    v5 = [CNContactClearRecentsDataAction alloc];
    v6 = [(CNContactContentDisplayViewController *)self recentsData];
    v7 = [(CNContactContentDisplayViewController *)self environment];
    v8 = [v7 recentsManager];
    v4 = [(CNContactClearRecentsDataAction *)v5 initWithRecentsData:v6 coreRecentsManager:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_updateExistingContactAction
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactContentDisplayViewController *)self contactFormatter];
  v4 = [(CNContactContentDisplayViewController *)self contact];
  v5 = [v3 stringFromContact:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:v5];
    v7 = objc_alloc(MEMORY[0x1E695CD78]);
    v8 = [(CNContactContentDisplayViewController *)self contactFormatter];
    v9 = [v8 descriptorForRequiredKeys];
    v26[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v11 = [v7 initWithKeysToFetch:v10];

    [v11 setOnlyMainStore:1];
    [v11 setUnifyResults:1];
    [v11 setPredicate:v6];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__59503;
    v24 = __Block_byref_object_dispose__59504;
    v25 = 0;
    v12 = [(CNContactContentDisplayViewController *)self contactStore];
    v18[4] = &v20;
    v19 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__CNContactContentDisplayViewController__updateExistingContactAction__block_invoke;
    v18[3] = &unk_1E74E6F60;
    [v12 enumerateContactsWithFetchRequest:v11 error:&v19 usingBlock:v18];
    v13 = v19;

    if (v21[5])
    {
      v14 = [CNContactUpdateExistingContactAction alloc];
      v15 = [(CNContactContentDisplayViewController *)self contact];
      v16 = [(CNContactAction *)v14 initWithContact:v15];

      [(CNContactUpdateExistingContactAction *)v16 setExistingContact:v21[5]];
      [(CNContactAction *)v16 setDelegate:self];
    }

    else
    {
      v16 = 0;
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __69__CNContactContentDisplayViewController__updateExistingContactAction__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = *(*(a1 + 32) + 8);
  v9 = *(v6 + 40);
  v7 = (v6 + 40);
  v8 = v9;
  if (v9)
  {
    *v7 = 0;

    *a3 = 1;
  }

  else
  {
    objc_storeStrong(v7, a2);
  }
}

- (CNShareLocationController)shareLocationController
{
  shareLocationController = self->_shareLocationController;
  if (!shareLocationController)
  {
    v4 = [CNShareLocationController alloc];
    v5 = [(CNContactContentDisplayViewController *)self environment];
    v6 = [v5 idsAvailabilityProvider];
    v7 = [(CNShareLocationController *)v4 initWithIDSAvailabilityProvider:v6];
    v8 = self->_shareLocationController;
    self->_shareLocationController = v7;

    [(CNShareLocationController *)self->_shareLocationController setShareLocationDelegate:self];
    shareLocationController = self->_shareLocationController;
  }

  return shareLocationController;
}

- (id)_addNewFieldAction
{
  v3 = [CNContactAddNewFieldAction alloc];
  v4 = [(CNContactContentDisplayViewController *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  v6 = [(CNContactContentDisplayViewController *)self prohibitedPropertyKeys];
  [(CNContactAddNewFieldAction *)v5 setProhibitedPropertyKeys:v6];

  [(CNContactAction *)v5 setDelegate:self];
  [(CNContactAddNewFieldAction *)v5 setGroupPickerDelegate:self];

  return v5;
}

- (void)_setupCustomActions
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(CNContactContentDisplayViewController *)self allowsEditInApp])
  {
    v3 = [(CNContactContentDisplayViewController *)self contact];
    v4 = [v3 isSuggested];

    if ((v4 & 1) == 0)
    {
      v5 = [CNEditInAppAction alloc];
      v6 = [(CNContactContentDisplayViewController *)self contact];
      v7 = [(CNContactContentDisplayViewController *)self activityManager];
      v8 = [(CNEditInAppAction *)v5 initWithContact:v6 activityManager:v7];

      v9 = [(CNContactContentDisplayViewController *)self cardFooterGroup];
      v10 = [(CNEditInAppAction *)v8 title];
      [v9 addAction:v8 withTitle:v10];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [(CNContactContentDisplayViewController *)self customActions];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = +[CNCustomCardAction groupForActionGivenPlacement:inContactContentViewController:](CNCustomCardAction, "groupForActionGivenPlacement:inContactContentViewController:", [v16 placement], self);
        v18 = [v16 menuProvider];

        if (v18)
        {
          [v17 setDisplaysDropdownMenu:1];
          v19 = [v16 title];
          v20 = [v16 menuProvider];
          v21 = [v17 addActionWithTitle:v19 menuProvider:v20 destructive:{objc_msgSend(v16, "isDestructive")}];
        }

        else
        {
          v19 = [v16 title];
          v20 = [v16 targetActionWrapper];
          v22 = [v17 addActionWithTitle:v19 target:v20 selector:sel_performActionWithSender_ destructive:{objc_msgSend(v16, "isDestructive")}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }
}

- (void)_setupAddToAddressBookActions
{
  v3 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v4 = [v3 allowsAddingToAddressBook];

  if (v4)
  {
    v5 = [(CNContactContentDisplayViewController *)self actionProvider];
    [v5 buildAddContactActions];

    v6 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    v7 = [(CNContactContentDisplayViewController *)self actionProvider];
    v8 = [v7 createNewContactAction];
    v9 = CNContactsUIBundle();
    v10 = [v9 localizedStringForKey:@"UNKNOWN_CARD_CREATE_NEW_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    [v6 addAction:v8 withTitle:v10];

    v11 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    v12 = [(CNContactContentDisplayViewController *)self actionProvider];
    v13 = [v12 addToExistingContactAction];
    v14 = CNContactsUIBundle();
    v15 = [v14 localizedStringForKey:@"UNKNOWN_CARD_ADD_TO_EXISTING_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    [v11 addAction:v13 withTitle:v15];

    v30 = [(CNContactContentDisplayViewController *)self _updateExistingContactAction];
    if (v30)
    {
      [(CNContactContentDisplayViewController *)self setUpdateExistingContactAction:v30];
      v16 = MEMORY[0x1E696AEC0];
      v17 = CNContactsUIBundle();
      v18 = [v17 localizedStringForKey:@"UNKNOWN_CARD_ADD_UPDATE_CONTACT-%@" value:&stru_1F0CE7398 table:@"Localized"];
      v19 = [(CNContactContentDisplayViewController *)self contactFormatter];
      v20 = [v30 existingContact];
      v21 = [v19 stringFromContact:v20];
      v22 = [v16 stringWithFormat:v18, v21];

      v23 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
      [v23 addAction:v30 withTitle:v22];
    }

    v24 = [(CNContactContentDisplayViewController *)self suggestedContactAction];

    if (v24)
    {
      v25 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      v26 = [(CNContactContentDisplayViewController *)self suggestedContactAction];
      v27 = CNContactsUIBundle();
      v28 = [v27 localizedStringForKey:@"SUGGESTION_IGNORE_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
      v29 = +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
      [v25 addAction:v26 withTitle:v28 color:v29 transportType:0];
    }
  }
}

- (void)_setupSuggestionActions
{
  v3 = [(CNContactContentDisplayViewController *)self originalContacts];
  v8 = [v3 _cn_filter:&__block_literal_global_652];

  if ([v8 count] == 1)
  {
    v4 = [CNContactSuggestionAction alloc];
    v5 = [v8 firstObject];
    v6 = [(CNContactAction *)v4 initWithContact:v5];
    [(CNContactContentDisplayViewController *)self setSuggestedContactAction:v6];

    v7 = [(CNContactContentDisplayViewController *)self suggestedContactAction];
    [v7 setDelegate:self];
  }

  else
  {
    [(CNContactContentDisplayViewController *)self setSuggestedContactAction:0];
  }
}

- (void)reloadCardActionsForBlockState:(BOOL)a3 preservingChanges:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!a3)
  {
    v7 = +[CNSafetyCheckHelper shared];
    [v7 fetchSharing];
  }

  if ([(CNContactContentDisplayViewController *)self isContactBlocked]!= v5)
  {
    [(CNContactContentDisplayViewController *)self setIsContactBlocked:v5];
    v8 = [(CNContactContentDisplayViewController *)self actionsViewController];
    v9 = [v8 supportedActionTypes];
    v10 = [v9 count];

    if (v10)
    {
      if ([(CNContactContentDisplayViewController *)self isContactBlocked])
      {
        [MEMORY[0x1E6996BE8] allSupportedActionTypesForBlockedContact];
      }

      else
      {
        [MEMORY[0x1E6996BE8] allSupportedActionTypes];
      }
      v11 = ;
      v12 = [(CNContactContentDisplayViewController *)self actionsViewController];
      [v12 setSupportedActionTypes:v11];
    }

    [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:v4];
  }
}

- (void)_setupContactBlockingReportingActionPreservingChanges:(BOOL)a3 withUpdate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v41 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if ([v41 allowsContactBlockingAndReporting])
  {
    v7 = [(CNContactContentDisplayViewController *)self showingMeContact];

    if (v7)
    {
      return;
    }

    v8 = [(CNContactContentDisplayViewController *)self blockReportAction];

    v9 = [(CNContactContentDisplayViewController *)self blockReportAction];

    if (!v9)
    {
      v10 = [CNContactToggleBlockReportCallerAction alloc];
      v11 = [(CNContactContentDisplayViewController *)self contact];
      v12 = [(CNContactAction *)v10 initWithContact:v11];
      [(CNContactContentDisplayViewController *)self setBlockReportAction:v12];

      v13 = [(CNContactContentDisplayViewController *)self blockReportAction];
      [v13 setDelegate:self];

      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 addObserver:self selector:sel_blockListDidChange_ name:*MEMORY[0x1E6995900] object:0];
    }

    v15 = [(CNContactContentDisplayViewController *)self blockReportAction];
    v16 = [v15 isContactBlockedPreservingChanges:v5];

    if (v8)
    {
      v17 = CNContactsUIBundle();
      v18 = v17;
      if (v16)
      {
        v19 = @"BLOCK_CALLER";
      }

      else
      {
        v19 = @"UNBLOCK_CALLER";
      }

      v20 = [v17 localizedStringForKey:v19 value:&stru_1F0CE7398 table:@"Localized"];

      v21 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [v21 removeActionWithTitle:v20];
    }

    v22 = CNContactsUIBundle();
    v23 = v22;
    if (v16)
    {
      v41 = [v22 localizedStringForKey:@"UNBLOCK_CALLER" value:&stru_1F0CE7398 table:@"Localized"];

      v24 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [v24 removeActionWithTitle:v41];

      +[CNUIColorRepository contactsApplicationTintColor];
    }

    else
    {
      v41 = [v22 localizedStringForKey:@"BLOCK_CALLER" value:&stru_1F0CE7398 table:@"Localized"];

      v25 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [v25 removeActionWithTitle:v41];

      +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
    }
    v26 = ;
    v27 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
    v28 = [(CNContactContentDisplayViewController *)self blockReportAction];
    [v27 addAction:v28 withTitle:v41 color:v26 transportType:0];

    if (v4)
    {
      v29 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      v30 = [(CNContactContentDisplayViewController *)self sectionOfGroup:v29];

      if (v30 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = [(CNContactContentDisplayViewController *)self contactView];
        [v31 contentOffset];
        v33 = v32;
        v35 = v34;

        v36 = [(CNContactContentDisplayViewController *)self contactView];
        [v36 beginUpdates];

        v37 = [(CNContactContentDisplayViewController *)self contactView];
        v38 = [MEMORY[0x1E696AC90] indexSetWithIndex:v30];
        [v37 reloadSections:v38 withRowAnimation:0];

        v39 = [(CNContactContentDisplayViewController *)self contactView];
        [v39 endUpdates];

        v40 = [(CNContactContentDisplayViewController *)self contactView];
        [v40 setContentOffset:{v33, v35}];

        [(CNContactContentDisplayViewController *)self adjustPreferredContentSize];
      }
    }

    [(CNContactContentDisplayViewController *)self reloadCardActionsForBlockState:v16 preservingChanges:v5];
  }
}

- (void)_setupContactBlockingActionPreservingChanges:(BOOL)a3 withUpdate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v41 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if ([v41 allowsContactBlocking])
  {
    v7 = [(CNContactContentDisplayViewController *)self showingMeContact];

    if (v7)
    {
      return;
    }

    v8 = [(CNContactContentDisplayViewController *)self blockAction];

    v9 = [(CNContactContentDisplayViewController *)self blockAction];

    if (!v9)
    {
      v10 = [CNContactToggleBlockCallerAction alloc];
      v11 = [(CNContactContentDisplayViewController *)self contact];
      v12 = [(CNContactAction *)v10 initWithContact:v11];
      [(CNContactContentDisplayViewController *)self setBlockAction:v12];

      v13 = [(CNContactContentDisplayViewController *)self blockAction];
      [v13 setDelegate:self];

      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 addObserver:self selector:sel_blockListDidChange_ name:*MEMORY[0x1E6995900] object:0];
    }

    v15 = [(CNContactContentDisplayViewController *)self blockAction];
    v16 = [v15 isContactBlockedPreservingChanges:v5];

    if (v8)
    {
      v17 = CNContactsUIBundle();
      v18 = v17;
      if (v16)
      {
        v19 = @"BLOCK_THIS_CALLER";
      }

      else
      {
        v19 = @"UNBLOCK_THIS_CALLER";
      }

      v20 = [v17 localizedStringForKey:v19 value:&stru_1F0CE7398 table:@"Localized"];

      v21 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [v21 removeActionWithTitle:v20];
    }

    v22 = CNContactsUIBundle();
    v23 = v22;
    if (v16)
    {
      v41 = [v22 localizedStringForKey:@"UNBLOCK_THIS_CALLER" value:&stru_1F0CE7398 table:@"Localized"];

      v24 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [v24 removeActionWithTitle:v41];

      +[CNUIColorRepository contactsApplicationTintColor];
    }

    else
    {
      v41 = [v22 localizedStringForKey:@"BLOCK_THIS_CALLER" value:&stru_1F0CE7398 table:@"Localized"];

      v25 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [v25 removeActionWithTitle:v41];

      +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
    }
    v26 = ;
    v27 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
    v28 = [(CNContactContentDisplayViewController *)self blockAction];
    [v27 addAction:v28 withTitle:v41 color:v26 transportType:0];

    if (v4)
    {
      v29 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      v30 = [(CNContactContentDisplayViewController *)self sectionOfGroup:v29];

      if (v30 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = [(CNContactContentDisplayViewController *)self contactView];
        [v31 contentOffset];
        v33 = v32;
        v35 = v34;

        v36 = [(CNContactContentDisplayViewController *)self contactView];
        [v36 beginUpdates];

        v37 = [(CNContactContentDisplayViewController *)self contactView];
        v38 = [MEMORY[0x1E696AC90] indexSetWithIndex:v30];
        [v37 reloadSections:v38 withRowAnimation:0];

        v39 = [(CNContactContentDisplayViewController *)self contactView];
        [v39 endUpdates];

        v40 = [(CNContactContentDisplayViewController *)self contactView];
        [v40 setContentOffset:{v33, v35}];

        [(CNContactContentDisplayViewController *)self adjustPreferredContentSize];
      }
    }

    [(CNContactContentDisplayViewController *)self reloadCardActionsForBlockState:v16 preservingChanges:v5];
  }
}

- (void)setupShareLocationActionReload:(BOOL)a3
{
  if (![(CNContactContentDisplayViewController *)self showingMeContact]&& !CNUIIsMessages())
  {
    v5 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];
    [v5 setDisplaysDropdownMenu:1];

    v6 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];
    v7 = [(CNContactContentDisplayViewController *)self shareLocationController];
    [v6 removeActionWithTarget:v7 selector:sel_perform_];

    objc_initWeak(&location, self);
    v8 = [(CNContactContentDisplayViewController *)self shareLocationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__CNContactContentDisplayViewController_setupShareLocationActionReload___block_invoke;
    v9[3] = &unk_1E74E7098;
    objc_copyWeak(&v10, &location);
    v11 = a3;
    [v8 canShareWithCompletion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __72__CNContactContentDisplayViewController_setupShareLocationActionReload___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a2)
  {
    v6 = [WeakRetained actionProvider];
    v7 = [v5 shareLocationController];
    [v6 buildSharingLocationActionsWithShareLocationController:v7];

    objc_initWeak(&location, v5);
    v8 = [v5 shareLocationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__CNContactContentDisplayViewController_setupShareLocationActionReload___block_invoke_2;
    v9[3] = &unk_1E74E7098;
    objc_copyWeak(&v10, &location);
    v11 = *(a1 + 40);
    [v8 isSharingWithCompletion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __72__CNContactContentDisplayViewController_setupShareLocationActionReload___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__CNContactContentDisplayViewController_setupShareLocationActionReload___block_invoke_3;
  v5[3] = &unk_1E74E6358;
  v5[4] = WeakRetained;
  v6 = a2;
  v7 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __72__CNContactContentDisplayViewController_setupShareLocationActionReload___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) actionProvider];
  v7 = [v2 appropriateLocationSharingActionWhenSharing:*(a1 + 40)];

  v3 = [*(a1 + 32) cardShareLocationGroup];
  v4 = [v7 title];
  [v3 addAction:v7 withTitle:v4];

  if ([*(a1 + 32) shouldAddShareLocationGroup])
  {
    [*(a1 + 32) _addShareLocationGroupAnimated:1];
  }

  if (*(a1 + 41) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [v5 cardShareLocationGroup];
    [v5 reloadCardGroup:v6];
  }
}

- (void)_setupCardActions
{
  v3 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v4 = [v3 allowsActions];

  if (!v4)
  {
    return;
  }

  v5 = [(CNContactContentDisplayViewController *)self actionProvider];
  [v5 buildStandardActions];

  v6 = [(CNContactContentDisplayViewController *)self actionProvider];
  [v6 buildCommunicationLimitsActions];

  v7 = [(CNContactContentDisplayViewController *)self actionProvider];
  [v7 buildStaticIdentityActions];

  v8 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if (![v8 allowsCardActions])
  {
    goto LABEL_7;
  }

  v9 = [(CNContactContentDisplayViewController *)self contact];
  if ([v9 isSuggested])
  {
    goto LABEL_6;
  }

  v10 = [(CNContactContentDisplayViewController *)self contact];
  if ([v10 isCoreRecentsAccepted])
  {

LABEL_6:
LABEL_7:

    goto LABEL_8;
  }

  v17 = [(CNContactContentDisplayViewController *)self isContactBlocked];

  if (!v17)
  {
    v18 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    if ([v18 allowsSendMessage])
    {
      v19 = [(CNContactContentDisplayViewController *)self actionProvider];
      v20 = [v19 sendMessageAction];
      if (v20)
      {
        v21 = v20;
        v22 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
        v23 = [v22 primaryProperty];

        if (v23)
        {
          goto LABEL_20;
        }

        v18 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
        v19 = [(CNContactContentDisplayViewController *)self actionProvider];
        v24 = [v19 sendMessageAction];
        v25 = CNContactsUIBundle();
        v26 = [v25 localizedStringForKey:@"PHONE_ACTION_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
        [v18 addAction:v24 withTitle:v26];
      }
    }

LABEL_20:
    v27 = [(CNContactContentDisplayViewController *)self actionProvider];
    v28 = [v27 createReminderAction];

    if (v28)
    {
      v29 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
      v30 = [(CNContactContentDisplayViewController *)self actionProvider];
      v31 = [v30 createReminderAction];
      v32 = CNContactsUIBundle();
      v33 = [v32 localizedStringForKey:@"CREATE_REMINDER_ACTION" value:&stru_1F0CE7398 table:@"Localized"];
      [v29 addAction:v31 withTitle:v33];
    }

    v34 = [(CNContactContentDisplayViewController *)self isHeaderViewPhotoProhibited];
    v35 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    if ([v35 allowsSharing] && !v34)
    {
      v36 = [(CNContactContentDisplayViewController *)self actionProvider];
      v37 = [v36 shareContactAction];

      if (!v37)
      {
LABEL_27:
        v42 = [(CNContactContentDisplayViewController *)self actionProvider];
        v43 = [v42 addFavoriteAction];

        if (v43)
        {
          v44 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
          v45 = [(CNContactContentDisplayViewController *)self actionProvider];
          v46 = [v45 addFavoriteAction];
          v47 = CNContactsUIBundle();
          v48 = [v47 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
          [v44 addAction:v46 withTitle:v48];
        }

        v49 = [(CNContactContentDisplayViewController *)self actionProvider];
        v8 = [v49 shareWithFamilyAction];

        if (v8 && [v8 canPerformAction])
        {
          v50 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
          v51 = [v8 title];
          [v50 addAction:v8 withTitle:v51];
        }

        v52 = [(CNContactContentDisplayViewController *)self actionProvider];
        v53 = [v52 stopSharingWithFamilyAction];
        v54 = [v53 canPerformAction];

        if (v54)
        {
          v55 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
          v56 = [v55 ignoresParentalRestrictions];

          if (v56)
          {
            v57 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
            v58 = [(CNContactContentDisplayViewController *)self actionProvider];
            v59 = [v58 stopSharingWithFamilyAction];
            v60 = [(CNContactContentDisplayViewController *)self actionProvider];
            v61 = [v60 stopSharingWithFamilyAction];
            v62 = [v61 title];
            [v57 addAction:v59 withTitle:v62];
          }
        }

        [(CNContactContentDisplayViewController *)self setupShareLocationActionReload:0];
        goto LABEL_7;
      }

      v35 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
      v38 = [(CNContactContentDisplayViewController *)self actionProvider];
      v39 = [v38 shareContactAction];
      v40 = CNContactsUIBundle();
      v41 = [v40 localizedStringForKey:@"SHARE_CONTACT_ACTION_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
      [v35 addAction:v39 withTitle:v41];
    }

    goto LABEL_27;
  }

LABEL_8:
  v11 = [(CNContactContentDisplayViewController *)self _clearRecentsDataAction];
  [(CNContactContentDisplayViewController *)self setClearRecentsDataAction:v11];

  v12 = [(CNContactContentDisplayViewController *)self clearRecentsDataAction];

  if (v12)
  {
    v13 = [(CNContactContentDisplayViewController *)self clearRecentsDataAction];
    [v13 setDelegate:self];

    v63 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    v14 = [(CNContactContentDisplayViewController *)self clearRecentsDataAction];
    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"CLEAR_RECENTS" value:&stru_1F0CE7398 table:@"Localized"];
    [v63 addAction:v14 withTitle:v16];
  }
}

- (void)_retrieveActionsModelPreservingChanges:(BOOL)a3
{
  v5 = [(CNContactContentDisplayViewController *)self contact];

  if (v5)
  {
    if (!a3)
    {
      objc_initWeak(&location, self);
      v6 = [MEMORY[0x1E6996BE8] allActionTypes];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __80__CNContactContentDisplayViewController__retrieveActionsModelPreservingChanges___block_invoke;
      v7[3] = &unk_1E74E7000;
      v7[4] = self;
      objc_copyWeak(&v8, &location);
      [v6 enumerateObjectsUsingBlock:v7];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __80__CNContactContentDisplayViewController__retrieveActionsModelPreservingChanges___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actionsDataSource];
  v5 = [*(a1 + 32) contact];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__CNContactContentDisplayViewController__retrieveActionsModelPreservingChanges___block_invoke_2;
  v8[3] = &unk_1E74E6FD8;
  v6 = v3;
  v9 = v6;
  objc_copyWeak(&v10, (a1 + 40));
  v7 = [v4 consumer:0 actionModelsForContact:v5 actionType:v6 handler:v8];

  objc_destroyWeak(&v10);
}

void __80__CNContactContentDisplayViewController__retrieveActionsModelPreservingChanges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqual:*MEMORY[0x1E695C150]])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __80__CNContactContentDisplayViewController__retrieveActionsModelPreservingChanges___block_invoke_3;
    v4[3] = &unk_1E74E6D30;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);

    objc_destroyWeak(&v6);
  }
}

void __80__CNContactContentDisplayViewController__retrieveActionsModelPreservingChanges___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setContactSupportsTTYCalls:{objc_msgSend(objc_opt_class(), "actionModelIncludesTTY:", *(a1 + 32))}];
  [WeakRetained _updateAvailableTransports];
}

- (void)setupActionsPreservingChanges:(BOOL)a3
{
  v29 = a3;
  v27 = [CNContactActionProvider alloc];
  v26 = [(CNContactContentDisplayViewController *)self mutableContact];
  v28 = [(CNContactContentDisplayViewController *)self contactViewCache];
  v4 = [(CNContactContentDisplayViewController *)self contact];
  v5 = [v28 containerForContact:v4];
  v6 = [(CNContactContentDisplayViewController *)self contactViewCache];
  v7 = [v6 contactStore];
  v8 = [(CNContactContentDisplayViewController *)self propertyGroupsDataSource];
  v9 = [(CNContactContentDisplayViewController *)self actionsDataSource];
  v10 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  v11 = [(CNContactContentDisplayViewController *)self environment];
  v12 = [(CNContactActionProvider *)v27 initWithContact:v26 inContainer:v5 contactStore:v7 propertyGroupsDataSource:v8 actionsDataSource:v9 capabilities:v10 environment:v11];
  [(CNContactContentDisplayViewController *)self setActionProvider:v12];

  v13 = [(CNContactContentDisplayViewController *)self actionProvider];
  [v13 setActionDelegate:self];

  v14 = [(CNCardGroup *)self->_cardActionsGroup actions];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [CNCardGroup alloc];
    v17 = [(CNContactContentDisplayViewController *)self mutableContact];
    v18 = [(CNCardGroup *)v16 initWithContact:v17];
    cardActionsGroup = self->_cardActionsGroup;
    self->_cardActionsGroup = v18;
  }

  v20 = [(CNCardGroup *)self->_cardShareLocationGroup actions];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [CNCardGroup alloc];
    v23 = [(CNContactContentDisplayViewController *)self mutableContact];
    v24 = [(CNCardGroup *)v22 initWithContact:v23];
    cardShareLocationGroup = self->_cardShareLocationGroup;
    self->_cardShareLocationGroup = v24;
  }

  [(CNContactContentDisplayViewController *)self _retrieveActionsModelPreservingChanges:v29];
  [(CNContactContentDisplayViewController *)self _setupCardActions];
  [(CNContactContentDisplayViewController *)self _setupContactBlockingActionPreservingChanges:v29 withUpdate:!v29];
  [(CNContactContentDisplayViewController *)self _setupSuggestionActions];
  [(CNContactContentDisplayViewController *)self _setupAddToAddressBookActions];

  [(CNContactContentDisplayViewController *)self _setupCustomActions];
}

- (void)_handleCoalescedBlockListDidChange
{
  if ([(CNContactContentDisplayViewController *)self shouldIgnoreBlockListChange])
  {

    [(CNContactContentDisplayViewController *)self setShouldIgnoreBlockListChange:0];
  }

  else
  {

    [(CNContactContentDisplayViewController *)self _setupContactBlockingActionPreservingChanges:0 withUpdate:1];
  }
}

- (void)blockListDidChange:(id)a3
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleCoalescedBlockListDidChange object:0];

  [(CNContactContentDisplayViewController *)self performSelector:sel__handleCoalescedBlockListDidChange withObject:0 afterDelay:0.1];
}

- (void)updateContactsViewWithBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  ++self->_animating;
  v8 = [(CNContactContentDisplayViewController *)self contactView];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__CNContactContentDisplayViewController_updateContactsViewWithBlock_completion___block_invoke;
  v13[3] = &unk_1E74E6F88;
  v14 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__CNContactContentDisplayViewController_updateContactsViewWithBlock_completion___block_invoke_2;
  v11[3] = &unk_1E74E6FB0;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBatchUpdates:v13 completion:v11];
}

uint64_t __80__CNContactContentDisplayViewController_updateContactsViewWithBlock_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  --*(*(a1 + 32) + 1004);
  v3 = *(a1 + 32);

  return [v3 reloadDataIfNeeded];
}

- (CGSize)requiredSizeForVisibleTableView
{
  v3 = [(CNContactContentDisplayViewController *)self contactView];
  [v3 contentSize];
  v5 = v4;
  [v3 contentInset];
  v7 = v6;
  if ([(CNContactContentDisplayViewController *)self hasTableViewHeaderFirstSection]&& [(UIViewController *)self ab_isInPopover])
  {
    *&v8 = 400.0;
  }

  else
  {
    *&v8 = 0.0;
  }

  v9 = *&v8;
  v10 = v5 + v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)desiredHeightForWidth:(double)a3
{
  v4 = [(CNContactContentDisplayViewController *)self view];
  [v4 frame];
  [v4 setFrame:?];
  [(CNContactContentDisplayViewController *)self reloadDataIfNeeded];
  v5 = [(CNContactContentDisplayViewController *)self contactView];
  v6 = [v5 visibleCells];

  v7 = [(CNContactContentDisplayViewController *)self view];
  [v7 layoutIfNeeded];

  v8 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v8 setNeedsLayout];

  [(CNContactContentDisplayViewController *)self requiredSizeForVisibleTableView];
  v10 = v9;
  v11 = [v4 superview];
  [v11 frame];
  [v4 setFrame:?];

  return v10;
}

- (void)reloadUnifiedContact
{
  v3 = [(CNContactContentDisplayViewController *)self contact];
  v4 = objc_opt_class();

  v5 = [(CNContactContentDisplayViewController *)self contact];
  v8 = [v5 linkedContacts];

  v6 = v8;
  if (v8)
  {
    v7 = [v4 unifyContacts:v8];
    [(CNContactContentDisplayViewController *)self setContact:v7];

    v6 = v8;
  }
}

- (void)removeLinkedContact:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(CNContactContentDisplayViewController *)self contact];
    v6 = [v5 mainStoreLinkedContacts];
    v7 = [v6 containsObject:v9];

    v4 = v9;
    if (v7)
    {
      [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:1];
      v8 = +[CNUIDataCollector sharedCollector];
      [v8 logContactActionType:CNUIContactActionTypeUnlink attributes:0];

      v4 = v9;
    }
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
    v5 = [(CNContactContentDisplayViewController *)self contact];
  }

  v6 = v5;
  [(CNContactContentDisplayViewController *)self setContact:v5];
  [(CNContactContentDisplayViewController *)self _didCompleteWithContact:v6];
}

- (void)createdNewContact:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    [(CNContactContentDisplayViewController *)self setContact:v4];
    [(CNContactContentDisplayViewController *)self setMode:1];
    v5 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    [v5 setAllowsAddingToAddressBook:0];

    v4 = v6;
  }

  [(CNContactContentDisplayViewController *)self _didCompleteWithContact:v4];
}

- (void)updateContact:(id)a3
{
  if ([(CNContactContentDisplayViewController *)self saveChanges])
  {
    v4 = [(CNContactContentDisplayViewController *)self mutableContact];
    [(CNContactContentDisplayViewController *)self _didCompleteWithContact:v4];
  }

  else
  {
    [(CNContactContentDisplayViewController *)self _didCompleteWithContact:0];
  }

  [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:0];
}

- (void)_didCompleteWithContact:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v16 = [(CNContactContentDisplayViewController *)self _removeUnauthorizedKeysFromContact:v4];

    if (self->_contact != &self->_mutableContact->super)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v16 copy];

        v16 = v6;
      }
    }

    v7 = [(CNContactContentDisplayViewController *)self suggestedContactAction];
    [v7 confirmSuggestion];
  }

  else
  {
    v16 = 0;
  }

  if ([(CNContactContentDisplayViewController *)self mode]== 3)
  {
    v8 = [(CNContactContentDisplayViewController *)self originalContacts];
    v9 = [v8 count];

    if (v9 == 1)
    {
      if (v16)
      {
        v10 = +[CNUIDataCollector sharedCollector];
        v11 = [(CNContactContentDisplayViewController *)self originalContacts];
        v12 = [v11 objectAtIndexedSubscript:0];
        [v10 logContactCreated:v16 originalContact:v12];
      }
    }
  }

  v13 = [(CNContactContentDisplayViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(CNContactContentDisplayViewController *)self delegate];
    [v15 contactDisplayViewController:self didCompleteWithContact:v16];
  }
}

- (id)_removeUnauthorizedKeysFromContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentDisplayViewController *)self missingRequiredKeys];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 mutableCopy];
    v8 = [(CNContactContentDisplayViewController *)self missingRequiredKeys];
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
    [(CNContactContentDisplayViewController *)self setMissingRequiredKeys:v12];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__59503;
    v28 = __Block_byref_object_dispose__59504;
    v29 = 0;
    v13 = objc_alloc(MEMORY[0x1E695CD78]);
    v14 = [(CNContactContentDisplayViewController *)self missingRequiredKeys];
    v15 = [v13 initWithKeysToFetch:v14];

    v16 = MEMORY[0x1E695CD58];
    v17 = [v6 identifier];
    v30[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v19 = [v16 predicateForContactsWithIdentifiers:v18];
    [v15 setPredicate:v19];

    [v15 setUnifyResults:{objc_msgSend(v6, "isUnified")}];
    v20 = [(CNContactContentDisplayViewController *)self contactStore];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __88__CNContactContentDisplayViewController__updateContact_withMissingKeysFromRequiredKeys___block_invoke;
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

- (id)saveDescriptionForRemovingLinkedContact:(id)a3 keys:(id)a4
{
  v5 = a4;
  v6 = [(CNContactContentDisplayViewController *)self contact];
  v7 = [v6 isUnified];

  if (v7)
  {
    v8 = [(CNContactContentDisplayViewController *)self contact];
    v9 = [v8 mainStoreLinkedContacts];
    v10 = [v9 mutableCopy];
  }

  else
  {
    v11 = MEMORY[0x1E695DF70];
    v8 = [(CNContactContentDisplayViewController *)self contact];
    v9 = [v8 copyWithPropertyKeys:v5];
    v10 = [v11 arrayWithObject:v9];
  }

  v12 = v10;

  v13 = [CNUIContactSaveConfiguration alloc];
  v14 = [(CNContactContentDisplayViewController *)self contact];
  v15 = [(CNContactContentDisplayViewController *)self mutableContact];
  v16 = [(CNContactContentDisplayViewController *)self originalContacts];
  v17 = [(CNContactContentDisplayViewController *)self contactStore];
  v18 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v19 = [v18 ignoresParentalRestrictions];
  v20 = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  LOBYTE(v23) = [v20 saveWasAuthorized];
  v21 = [(CNUIContactSaveConfiguration *)v13 initWithContact:v14 mutableContact:v15 originalContacts:v16 editingLinkedContacts:v12 contactStore:v17 ignoresParentalRestrictions:v19 saveWasAuthorized:v23];

  return v21;
}

- (void)_updateLabelWidthsForAllVisibleCells
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactContentDisplayViewController *)self contactView];
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

        [(CNContactContentDisplayViewController *)self _updateLabelWidthForCell:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [v3 setContentOffset:{v5, v7}];
  [(CNContactContentDisplayViewController *)self adjustPreferredContentSize];
}

- (void)_updateLabelWidthForCellsInGroup:(id)a3 reset:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  v6 = [(CNContactContentDisplayViewController *)self contactView];
  if (v4)
  {
    v7 = [(CNContactContentDisplayViewController *)self _labelWidthKeyForGroup:v14];
    v8 = [(CNContactContentDisplayViewController *)self cachedLabelWidths];
    [v8 removeObjectForKey:v7];
  }

  [(CNContactContentDisplayViewController *)self _updateCachedLabelWidthsForGroup:v14];
  v9 = [(CNContactContentDisplayViewController *)self sectionOfGroup:v14];
  v10 = [v14 displayItems];
  if ([v10 count])
  {
    v11 = 0;
    do
    {
      v12 = [MEMORY[0x1E696AC88] indexPathForRow:v11 inSection:v9];
      v13 = [v6 cellForRowAtIndexPath:v12];
      [(CNContactContentDisplayViewController *)self _updateLabelWidthForCell:v13];

      ++v11;
    }

    while (v11 < [v10 count]);
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
      v10 = [(CNContactContentDisplayViewController *)self _labelWidthKeyForItem:v8];
    }

    else
    {
      v11 = [v8 group];
      v10 = [(CNContactContentDisplayViewController *)self _labelWidthKeyForGroup:v11];
    }

    v12 = [(CNContactContentDisplayViewController *)self cachedLabelWidths];
    v13 = [v12 objectForKey:v10];
    [v13 floatValue];
    [v6 setLabelWidth:v14];

    v5 = v15;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v5);
}

- (void)_updateCachedLabelWidthsIfNeeded
{
  v3 = [(CNContactContentDisplayViewController *)self cachedLabelWidths];

  if (!v3)
  {
    v4 = [(CNContactContentDisplayViewController *)self traitCollection];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 3)
    {

      [(CNContactContentDisplayViewController *)self _updateCachedLabelWidths];
    }
  }
}

- (void)_setNeedsUpdateCachedLabelWidths
{
  [(CNContactContentDisplayViewController *)self setCachedLabelWidths:0];
  if ([(CNContactContentDisplayViewController *)self isViewLoaded])
  {
    v3 = [(CNContactContentDisplayViewController *)self view];
    [v3 setNeedsLayout];
  }
}

- (void)_updateCachedLabelWidths
{
  v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  [(CNContactContentDisplayViewController *)self setCachedLabelWidths:v3];

  v4 = [(CNContactContentDisplayViewController *)self displayGroups];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(CNContactContentDisplayViewController *)self displayGroups];
      v8 = [v7 objectAtIndexedSubscript:v6];

      [(CNContactContentDisplayViewController *)self _updateCachedLabelWidthsForGroup:v8];
      ++v6;
      v9 = [(CNContactContentDisplayViewController *)self displayGroups];
      v10 = [v9 count];
    }

    while (v6 < v10);
  }

  [(CNContactContentDisplayViewController *)self _updateLabelWidthsForAllVisibleCells];
}

- (void)_updateCachedLabelWidthsForGroup:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 displayItems];
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

        [(CNContactContentDisplayViewController *)self _updateCachedLabelWidthsForItem:*(*(&v9 + 1) + 8 * v8++)];
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
    v8 = [(CNContactContentDisplayViewController *)self contactView];
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

    v13 = [(CNContactContentDisplayViewController *)self contactView];
    [v13 frame];
    Width = CGRectGetWidth(v39);
    if (v7)
    {
      v15 = [(CNContactContentDisplayViewController *)self contactView];
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
    v20 = [(CNContactContentDisplayViewController *)self contactView];
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
    v27 = [(CNContactContentDisplayViewController *)self _labelWidthKeyForGroup:v26];
    v28 = [(CNContactContentDisplayViewController *)self _labelWidthKeyForItem:v6];
    v29 = [(CNContactContentDisplayViewController *)self cachedLabelWidths];
    v30 = [v29 objectForKey:v27];
    [v30 floatValue];
    v32 = v31;

    if (v25 > 0.0)
    {
      v33 = [(CNContactContentDisplayViewController *)self cachedLabelWidths];
      v34 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      [v33 setObject:v34 forKey:v28];

      if (v25 > v32)
      {
        v35 = [(CNContactContentDisplayViewController *)self cachedLabelWidths];
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

- (void)removeFirstSectionHeaderViewControllerFromHierarchy
{
  v3 = [(CNContactContentDisplayViewController *)self personHeaderViewController];
  v4 = [v3 parentViewController];

  if (v4)
  {
    v5 = [(CNContactContentDisplayViewController *)self personHeaderViewController];
    [v5 willMoveToParentViewController:0];

    v6 = [(CNContactContentDisplayViewController *)self personHeaderViewController];
    v7 = [v6 isViewLoaded];

    if (v7)
    {
      v8 = [(CNContactContentDisplayViewController *)self personHeaderViewController];
      v9 = [v8 view];
      [v9 removeFromSuperview];
    }

    v10 = [(CNContactContentDisplayViewController *)self personHeaderViewController];
    [v10 removeFromParentViewController];
  }
}

- (BOOL)isTableViewHeaderFirstSectionIndexPath:(id)a3
{
  v4 = a3;
  if ([(CNContactContentDisplayViewController *)self hasTableViewHeaderFirstSection])
  {
    v5 = [v4 section] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableViewHeaderFirstSectionCell
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactContentDisplayViewController *)self contactView];
  v4 = [v3 dequeueReusableCellWithIdentifier:@"FirstSectionCellIdentifier"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"FirstSectionCellIdentifier"];
    [v4 setSelectionStyle:0];
    [v4 setSeparatorStyle:0];
    [v4 _cnui_applyContactStyle];
  }

  v5 = self;
  v6 = [(CNContactContentDisplayViewController *)v5 personHeaderViewController];
  v7 = [v6 parentViewController];

  if (v7 != v5)
  {
    [(CNContactContentDisplayViewController *)v5 removeFirstSectionHeaderViewControllerFromHierarchy];
    v8 = [(CNContactContentDisplayViewController *)v5 personHeaderViewController];
    [(CNContactContentDisplayViewController *)v5 addChildViewController:v8];

    v9 = [(CNContactContentDisplayViewController *)v5 personHeaderViewController];
    v10 = [v9 view];

    v11 = [v4 contentView];
    [v11 addSubview:v10];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v4 contentView];
    v13 = [v12 layoutMarginsGuide];

    v20 = @"personHeaderView";
    v21[0] = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v15 = [MEMORY[0x1E695DF70] array];
    v16 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[personHeaderView]|" options:0 metrics:0 views:v14];
    [v15 addObjectsFromArray:v16];

    v17 = [MEMORY[0x1E696ACD8] constraintWithItem:v10 attribute:5 relatedBy:0 toItem:v13 attribute:5 multiplier:1.0 constant:0.0];
    [v15 addObject:v17];

    v18 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[personHeaderView]|" options:0 metrics:0 views:v14];
    [v15 addObjectsFromArray:v18];

    [MEMORY[0x1E696ACD8] activateConstraints:v15];
  }

  return v4;
}

- (BOOL)hasTableViewHeaderFirstSection
{
  v2 = [(CNContactContentDisplayViewController *)self personHeaderViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)geminiDataSourceDidUpdate:(id)a3
{
  v7 = [a3 geminiResult];
  v4 = [(CNContactContentDisplayViewController *)self shouldShowGemini];
  v5 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v5 updateGeminiResult:v7];

  v6 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v6 setShouldShowGemini:v4];
}

- (void)setMenuProviderForCell:(id)a3 forActionGroupItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (-[CNContactContentDisplayViewController cardShareLocationGroup](self, "cardShareLocationGroup"), v8 = objc_claimAutoreleasedReturnValue(), [v8 actions], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "actions"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToArray:", v10), v10, v9, v8, v11))
  {
    v12 = [(CNContactContentDisplayViewController *)self shareLocationController];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __83__CNContactContentDisplayViewController_setMenuProviderForCell_forActionGroupItem___block_invoke;
    v23[3] = &unk_1E74E6E70;
    v24 = v6;
    [v12 actionsMenuProviderWithCompletion:v23];
  }

  else
  {
    v13 = [v7 actions];
    v14 = [v13 firstObject];

    objc_opt_class();
    v15 = v14;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      v18 = [v17 menuProvider];
      [v6 setMenuProvider:v18];
    }

    else
    {
      v19 = [v15 target];
      if ([v19 conformsToProtocol:&unk_1F0D822B0])
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v18 = v20;

      if (v18)
      {
        v21 = [v6 contextMenuInteraction];
        v22 = [v18 menuProviderForContextMenuInteraction:v21];
        [v6 setMenuProvider:v22];
      }
    }
  }
}

void __83__CNContactContentDisplayViewController_setMenuProviderForCell_forActionGroupItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__CNContactContentDisplayViewController_setMenuProviderForCell_forActionGroupItem___block_invoke_2;
  v5[3] = &unk_1E74E6DD0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (id)_cellForIndexPath:(id)a3
{
  v5 = a3;
  v6 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:v5];
  v7 = [(CNContactContentDisplayViewController *)self _cellIdentifierForIndexPath:v5];
  v8 = [(CNContactContentDisplayViewController *)self noteCell];
  if (v8 && (v9 = v8, -[CNContactContentDisplayViewController contactView](self, "contactView"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_class(), [v11 cellIdentifierForClass:objc_opt_class()], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v7, "isEqualToString:", v12), v12, v10, v9, v13))
  {
    v14 = [(CNContactContentDisplayViewController *)self noteCell];
    [(CNContactContentDisplayViewController *)self setNoteCell:0];
  }

  else
  {
    v15 = [(CNContactContentDisplayViewController *)self contactView];
    v14 = [v15 dequeueReusableCellWithIdentifier:v7];
  }

  if (!v14)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"CNContactContentDisplayViewController.m" lineNumber:3089 description:{@"We couldn’t create a cell with identifier: %@ indexPath: %@", v7, v5}];
  }

  if ([(CNContactContentDisplayViewController *)self mode]== 5)
  {
    objc_opt_class();
    v16 = v6;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v18)
    {
      v19 = [(CNContactContentDisplayViewController *)self highlightedProperties];
      if ([v19 count])
      {
        v20 = [(CNContactContentDisplayViewController *)self highlightedProperties];
        v21 = [v18 contactProperty];
        v22 = [v20 containsObject:v21];

        if (v22 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v14 setForceSuggested:1];
        }
      }

      else
      {
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 setDelegate:self];
  }

  [v14 setCardGroupItem:v6];
  if (objc_opt_respondsToSelector())
  {
    v23 = [(CNContactContentDisplayViewController *)self presentingDelegate];
    [v14 setPresentingDelegate:v23];
  }

  if (objc_opt_respondsToSelector())
  {
    v24 = [(CNContactContentDisplayViewController *)self contactView];
    v25 = objc_opt_class();
    v26 = [v25 cellIdentifierForClass:objc_opt_class()];
    v27 = [v7 isEqualToString:v26];

    v28 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    v29 = [v28 allowsEditing];
    v30 = v29;
    if (v27)
    {
      if (v29)
      {
        v31 = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
        [v14 setAllowsEditing:{objc_msgSend(v31, "shouldPromptForPasscodeAuthorization") ^ 1}];

LABEL_29:
        goto LABEL_30;
      }

      v32 = v14;
      v30 = 0;
    }

    else
    {
      v32 = v14;
    }

    [v32 setAllowsEditing:v30];
    goto LABEL_29;
  }

LABEL_30:
  if (objc_opt_respondsToSelector())
  {
    v33 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    [v14 setAllowsActions:{objc_msgSend(v33, "allowsActions")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v34 = v14;
    v35 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    [v34 setVIP:{objc_msgSend(v35, "isMailVIP")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v36 = v14;
    v37 = [(CNContactContentDisplayViewController *)self emergencyNumberIdentifier];
    v38 = [v36 propertyItem];
    v39 = [v38 contactProperty];
    v40 = [v39 identifier];
    [v36 setEmergencyPhoneNumber:{objc_msgSend(v37, "isEqualToString:", v40)}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v41 = v6;
    if (objc_opt_isKindOfClass())
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42;

    objc_opt_class();
    v44 = v14;
    if (objc_opt_isKindOfClass())
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    v46 = v45;

    [(CNContactContentDisplayViewController *)self setMenuProviderForCell:v46 forActionGroupItem:v43];
  }

  return v14;
}

- (id)_cellIdentifierForIndexPath:(id)a3
{
  v5 = a3;
  v6 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 property];
    v8 = [CNContactView cellIdentifierForProperty:v7];
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[CNContactView cellIdentifierForPropertyPlaceholder];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = -[CNContactContentDisplayViewController _cardGroupAtTableViewSectionIndex:](self, "_cardGroupAtTableViewSectionIndex:", [v5 section]);
    if ([v7 useSplitActions])
    {
      v8 = +[CNContactView cellIdentifierForSplitActions];
    }

    else
    {
      if ([v7 displaysDropdownMenu])
      {
        +[CNContactView cellIdentifierForDropdownMenuActions];
      }

      else
      {
        +[CNContactView cellIdentifierForActions];
      }
      v8 = ;
    }

LABEL_3:
    v9 = v8;

    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[CNContactView cellIdentifierForFaceTimeGroup];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[CNContactView cellIdentifierForLinkedCardsGroup];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[CNContactView cellIdentifierForLinkedCardsPlaceholderGroup];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[CNContactView cellIdentifierForCardNamePickingGroup];
LABEL_7:
    v9 = v10;
    if (v10)
    {
      goto LABEL_8;
    }
  }

LABEL_26:
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"CNContactContentDisplayViewController.m" lineNumber:3069 description:{@"Unknown group item: %@", v6}];

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)_scrollContactView:(id)a3 toVisibleGroup:(id)a4
{
  v16 = a3;
  v6 = a4;
  [v16 _effectiveContentInset];
  [v16 setContentOffset:{0.0, -v7}];
  if (v6)
  {
    v8 = [(CNContactContentDisplayViewController *)self sectionOfGroup:v6];
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
      v18 = [(CNContactContentDisplayViewController *)self cardGroupForProperty:v21];

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

  [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:0, v2, v3];
  return 1;
}

- (void)setNeedsReload
{
  self->_needsReload = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CNContactContentDisplayViewController_setNeedsReload__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)isSuggestedContact
{
  v2 = [(CNContactContentDisplayViewController *)self contact];
  v3 = [v2 isSuggested];

  return v3;
}

- (BOOL)contactDisplayViewController:(id)a3 shouldPerformDefaultActionForContact:(id)a4 propertyKey:(id)a5 propertyIdentifier:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(CNContactContentDisplayViewController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(CNContactContentDisplayViewController *)self delegate];
    v15 = [v14 contactDisplayViewController:self shouldPerformDefaultActionForContact:v9 propertyKey:v10 propertyIdentifier:v11];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)contactViewController:(id)a3 didDeleteContact:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(CNContactContentDisplayViewController *)self contact];
  v7 = [v6 mainStoreLinkedContacts];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    [(CNContactContentDisplayViewController *)self removeLinkedContact:v5];
    v9 = [(CNContactContentDisplayViewController *)self saveLinkedContactsExecutor];
    v10 = [(CNContactContentDisplayViewController *)self contact];
    v11 = [v10 availableKeyDescriptor];
    v19[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v13 = [(CNContactContentDisplayViewController *)self saveDescriptionForRemovingLinkedContact:v5 keys:v12];
    v14 = [v9 executeSaveWithConfiguration:v13 saveDelegate:self];

    v15 = [(CNContactContentDisplayViewController *)self issuedSaveRequestIdentifiers];
    v16 = [v14 identifiersOfIssuedSaveRequests];
    [v15 addObjectsFromArray:v16];

    v17 = [v14 contact];

    if (v17)
    {
      v18 = [v14 contact];
      [(CNContactContentDisplayViewController *)self setContact:v18];
    }
  }
}

- (double)navigationBarHeight
{
  v2 = [(CNContactContentDisplayViewController *)self currentNavigationController];
  v3 = [v2 navigationBar];
  [v3 frame];
  v5 = v4;

  return v5;
}

- (UIEdgeInsets)headerViewSafeAreaInsets
{
  v3 = [(CNContactContentDisplayViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [(CNContactContentDisplayViewController *)self navigationBarHeight];
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

- (void)headerViewDidTapNameLabel:(id)a3
{
  v4 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v5 = [v4 allowsNamePicking];

  if (v5)
  {

    [(CNContactContentDisplayViewController *)self _pickName];
  }
}

- (void)headerViewDidChangeHeight:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentDisplayViewController *)self contactHeaderView];

  if (v5 == v4)
  {
    [(CNContactContentDisplayViewController *)self viewDidLayoutSubviews];
    [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:1];

    [(CNContactContentDisplayViewController *)self setupConstraints];
  }
}

- (BOOL)isNicknameProhibited
{
  v2 = [(CNContactContentDisplayViewController *)self prohibitedPropertyKeys];
  v3 = [v2 containsObject:*MEMORY[0x1E695C310]];

  return v3;
}

- (void)requestFavoritesUpdateWithGemini
{
  v3 = [(CNContactContentDisplayViewController *)self environment];
  v4 = [v3 inProcessFavorites];
  v5 = [(CNContactContentDisplayViewController *)self contact];
  v6 = [v4 entriesForContact:v5];

  if (v6)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.contacts.clientDidDisplayFavorites", 0, 0, 0);
  }
}

- (void)headerViewDidPickPreferredChannel:(id)a3
{
  v13 = a3;
  v4 = [(CNContactContentDisplayViewController *)self contact];
  v5 = [v4 preferredChannel];
  v6 = [v5 isEqualToString:v13];

  if ((v6 & 1) == 0)
  {
    v7 = [(CNContactContentDisplayViewController *)self contact];
    v8 = [v7 mutableCopy];

    [v8 setPreferredChannel:v13];
    v9 = objc_alloc_init(MEMORY[0x1E695CF88]);
    [v9 setIgnoresGuardianRestrictions:1];
    [v9 setIgnoresContactProviderRestrictions:1];
    v10 = [(CNContactContentDisplayViewController *)self issuedSaveRequestIdentifiers];
    v11 = [v9 saveRequestIdentifier];
    [v10 addObject:v11];

    [v9 updateContact:v8];
    v12 = [(CNContactContentDisplayViewController *)self contactStore];
    [v12 executeSaveRequest:v9 error:0];

    [(CNContactContentDisplayViewController *)self setContact:v8];
    [(CNContactContentDisplayViewController *)self requestFavoritesUpdateWithGemini];
    [(CNContactContentDisplayViewController *)self updateInsetsIfNeeded];
  }
}

- (void)headerPhotoDidUpdate
{
  v7 = [(CNContactContentDisplayViewController *)self contactNavigationItemUpdater];
  v3 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v4 = [v3 allowsEditing];
  v5 = [(CNContactContentDisplayViewController *)self mode];
  v6 = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  [v7 updateDisplayDoneButtonForController:self allowsEditing:v4 viewMode:v5 editRequiresAuthorization:{objc_msgSend(v6, "shouldPromptForPasscodeAuthorization")}];
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

- (void)propertyCellDidChangeLayout:(id)a3
{
  v6 = a3;
  v4 = [(CNContactContentDisplayViewController *)self contactView];
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
  v37 = *MEMORY[0x1E69E9840];
  v25 = a5;
  [v25 itemsUsingLabel:a4];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v26)
  {
    v23 = *v32;
    do
    {
      v6 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * v6);
        v8 = [v25 nextAvailableLabel];
        [v7 updateLabeledValueWithLabel:v8];
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v9 = [(CNContactContentDisplayViewController *)self contactView];
        v10 = [v9 visibleCells];

        v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
          do
          {
            v14 = 0;
            do
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v27 + 1) + 8 * v14);
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
            v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v12);
        }

        ++v6;
      }

      while (v6 != v26);
      v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v26);
  }

  [(CNContactContentDisplayViewController *)self _updateLabelWidthForCellsInGroup:v25 reset:1];
  v17 = [(CNContactContentDisplayViewController *)self contactNavigationItemUpdater];
  v18 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v19 = [v18 allowsEditing];
  v20 = [(CNContactContentDisplayViewController *)self mode];
  v21 = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  [v17 updateDisplayDoneButtonForController:self allowsEditing:v19 viewMode:v20 editRequiresAuthorization:{objc_msgSend(v21, "shouldPromptForPasscodeAuthorization")}];
}

- (void)propertyCell:(id)a3 performActionForItem:(id)a4 withTransportType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 == 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(CNContactContentDisplayViewController *)self actionProvider];
        v11 = [v10 linkedCardsAction];
        goto LABEL_9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(CNContactContentDisplayViewController *)self actionProvider];
        v14 = [v10 addLinkedCardAction];
        [v14 performActionWithSender:v8];
        goto LABEL_10;
      }

      if ([v8 isSuggested])
      {
        v15 = [CNPropertySuggestionAction alloc];
        v16 = [(CNContactContentDisplayViewController *)self contact];
        v17 = [(CNPropertyAction *)v15 initWithContact:v16 propertyItem:v9];

        [(CNContactAction *)v17 setDelegate:self];
      }

      else
      {
        if (a5 == 7)
        {
          v17 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
          v18 = MEMORY[0x1E69DC648];
          v19 = CNContactsUIBundle();
          v20 = [v19 localizedStringForKey:@"PHONE_ACTION_TTY_CALL" value:&stru_1F0CE7398 table:@"Localized"];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __93__CNContactContentDisplayViewController_propertyCell_performActionForItem_withTransportType___block_invoke;
          v42[3] = &unk_1E74E6E20;
          v42[4] = self;
          v21 = v9;
          v43 = v21;
          v22 = v8;
          v44 = v22;
          v23 = [v18 actionWithTitle:v20 style:0 handler:v42];
          [(CNPropertySuggestionAction *)v17 addAction:v23];

          v24 = MEMORY[0x1E69DC648];
          v25 = CNContactsUIBundle();
          v26 = [v25 localizedStringForKey:@"PHONE_ACTION_TTY_RELAY_CALL" value:&stru_1F0CE7398 table:@"Localized"];
          v35 = MEMORY[0x1E69E9820];
          v36 = 3221225472;
          v37 = __93__CNContactContentDisplayViewController_propertyCell_performActionForItem_withTransportType___block_invoke_2;
          v38 = &unk_1E74E6E20;
          v39 = self;
          v40 = v21;
          v27 = v22;
          v41 = v27;
          v28 = [v24 actionWithTitle:v26 style:0 handler:&v35];
          [(CNPropertySuggestionAction *)v17 addAction:v28, v35, v36, v37, v38, v39];

          v29 = MEMORY[0x1E69DC648];
          v30 = CNContactsUIBundle();
          v31 = [v30 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
          v32 = [v29 actionWithTitle:v31 style:1 handler:0];
          [(CNPropertySuggestionAction *)v17 addAction:v32];

          [(CNContactContentDisplayViewController *)self sender:v27 presentViewController:v17];
          goto LABEL_19;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [CNPropertyAction performDefaultActionForItem:v9 sender:v8];
          goto LABEL_11;
        }

        v33 = [CNPropertyPostalAddressAction alloc];
        v34 = [(CNContactContentDisplayViewController *)self contact];
        v17 = [(CNPropertyAction *)v33 initWithContact:v34 propertyItem:v9];
      }

      [(CNPropertySuggestionAction *)v17 performActionForItem:v9 sender:v8];
LABEL_19:

      goto LABEL_11;
    }

LABEL_6:
    v12 = [(CNContactContentDisplayViewController *)self actionProvider];
    v13 = [v12 faceTimeAction];
    [v13 setType:a5];

    v10 = [(CNContactContentDisplayViewController *)self actionProvider];
    v11 = [v10 faceTimeAction];
    goto LABEL_9;
  }

  if (a5 == 3)
  {
    goto LABEL_6;
  }

  if (a5 != 2)
  {
    goto LABEL_7;
  }

  v10 = [(CNContactContentDisplayViewController *)self actionProvider];
  v11 = [v10 sendMessageAction];
LABEL_9:
  v14 = v11;
  [v11 performActionForItem:v9 sender:v8];
LABEL_10:

LABEL_11:
}

void __93__CNContactContentDisplayViewController_propertyCell_performActionForItem_withTransportType___block_invoke(uint64_t a1)
{
  v2 = [CNPropertyTTYAction alloc];
  v3 = [*(a1 + 32) contact];
  v4 = [(CNPropertyAction *)v2 initWithContact:v3 propertyItem:*(a1 + 40)];

  [(CNContactAction *)v4 setDelegate:*(a1 + 32)];
  [(CNPropertyTTYAction *)v4 performActionForItem:*(a1 + 40) sender:*(a1 + 48)];
}

void __93__CNContactContentDisplayViewController_propertyCell_performActionForItem_withTransportType___block_invoke_2(uint64_t a1)
{
  v2 = [CNPropertyTTYRelayAction alloc];
  v3 = [*(a1 + 32) contact];
  v4 = [(CNPropertyAction *)v2 initWithContact:v3 propertyItem:*(a1 + 40)];

  [(CNContactAction *)v4 setDelegate:*(a1 + 32)];
  [(CNPropertyTTYRelayAction *)v4 performActionForItem:*(a1 + 40) sender:*(a1 + 48)];
}

- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewValue:(id)a5
{
  v24 = a3;
  v8 = a4;
  [v8 updateLabeledValueWithValue:a5];
  if (objc_opt_respondsToSelector())
  {
    [v24 updateWithPropertyItem:v8];
  }

  v9 = [v8 group];
  [(CNContactContentDisplayViewController *)self _updateLabelWidthForCellsInGroup:v9 reset:1];

  v10 = [v8 property];
  v11 = *MEMORY[0x1E695C1E0];
  if ([v10 isEqualToString:*MEMORY[0x1E695C1E0]])
  {

    v12 = *MEMORY[0x1E695C3F8];
  }

  else
  {
    v13 = [v8 property];
    v12 = *MEMORY[0x1E695C3F8];
    v14 = [v13 isEqualToString:*MEMORY[0x1E695C3F8]];

    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v15 = [(CNContactContentDisplayViewController *)self propertyGroups];
  v16 = [v15 objectForKeyedSubscript:v11];
  [(CNContactContentDisplayViewController *)self _validateGroup:v16];

  v17 = [(CNContactContentDisplayViewController *)self propertyGroups];
  v18 = [v17 objectForKeyedSubscript:v12];
  [(CNContactContentDisplayViewController *)self _validateGroup:v18];

LABEL_7:
  v19 = [(CNContactContentDisplayViewController *)self contactNavigationItemUpdater];
  v20 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v21 = [v20 allowsEditing];
  v22 = [(CNContactContentDisplayViewController *)self mode];
  v23 = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  [v19 updateDisplayDoneButtonForController:self allowsEditing:v21 viewMode:v22 editRequiresAuthorization:{objc_msgSend(v23, "shouldPromptForPasscodeAuthorization")}];
}

- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewLabel:(id)a5
{
  v8 = a4;
  v9 = a3;
  [v8 updateLabeledValueWithLabel:a5];
  [v9 updateWithPropertyItem:v8];

  v10 = [v8 group];

  [(CNContactContentDisplayViewController *)self _updateLabelWidthForCellsInGroup:v10 reset:1];
  v15 = [(CNContactContentDisplayViewController *)self contactNavigationItemUpdater];
  v11 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v12 = [v11 allowsEditing];
  v13 = [(CNContactContentDisplayViewController *)self mode];
  v14 = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  [v15 updateDisplayDoneButtonForController:self allowsEditing:v12 viewMode:v13 editRequiresAuthorization:{objc_msgSend(v14, "shouldPromptForPasscodeAuthorization")}];
}

- (void)actionWasCanceled:(id)a3
{
  v6 = [(CNContactContentDisplayViewController *)self contactView];
  v4 = [(CNContactContentDisplayViewController *)self contactView];
  v5 = [v4 indexPathForSelectedRow];
  [v6 deselectRowAtIndexPath:v5 animated:1];
}

- (void)actionDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentDisplayViewController *)self contactView];
  v6 = [(CNContactContentDisplayViewController *)self contactView];
  v7 = [v6 indexPathForSelectedRow];
  [v5 deselectRowAtIndexPath:v7 animated:1];

  v8 = [(CNContactContentDisplayViewController *)self ignoreContactAction];

  if (v8 == v4)
  {
    v18 = [(CNContactContentDisplayViewController *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [(CNContactContentDisplayViewController *)self delegate];
      v21 = [(CNContactContentDisplayViewController *)self contact];
      [v20 contactDisplayViewController:self didDeleteContact:v21];
LABEL_10:
    }

LABEL_11:
    v15 = [(CNContactContentDisplayViewController *)self navigationController];
    v22 = [v15 popViewControllerAnimated:1];
LABEL_20:

    goto LABEL_21;
  }

  v9 = [(CNContactContentDisplayViewController *)self actionProvider];
  v10 = [v9 addFavoriteAction];

  v11 = [(CNContactContentDisplayViewController *)self actionProvider];
  v12 = v11;
  if (v10 == v4)
  {
    v23 = [v11 addFavoriteAction];
    v24 = [v23 canPerformAction];

    if ((v24 & 1) == 0)
    {
      v25 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
      v26 = CNContactsUIBundle();
      v27 = [v26 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
      [v25 removeActionWithTitle:v27];
    }

    v28 = self;
    v29 = 0;
    goto LABEL_15;
  }

  v13 = [v11 createNewContactAction];

  v14 = [(CNContactContentDisplayViewController *)self actionProvider];
  v15 = v14;
  if (v13 == v4)
  {
    v30 = [v14 createNewContactAction];
    v31 = [v30 createdContact];
    [(CNContactContentDisplayViewController *)self createdNewContact:v31];
    goto LABEL_18;
  }

  v16 = [v14 addToExistingContactAction];

  if (v16 == v4)
  {
    v15 = [(CNContactContentDisplayViewController *)self actionProvider];
    v30 = [v15 addToExistingContactAction];
    v31 = [v30 chosenContact];
    [(CNContactContentDisplayViewController *)self updatedExistingContact:v31];
    goto LABEL_18;
  }

  v17 = [(CNContactContentDisplayViewController *)self updateExistingContactAction];

  if (v17 == v4)
  {
    v15 = [(CNContactContentDisplayViewController *)self updateExistingContactAction];
    v30 = [v15 existingContact];
    [(CNContactContentDisplayViewController *)self updatedExistingContact:v30];
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = [(CNContactContentDisplayViewController *)self blockAction];

    if (v32 == v4)
    {
      [(CNContactContentDisplayViewController *)self setShouldIgnoreBlockListChange:1];
      [(CNContactContentDisplayViewController *)self _setupContactBlockingActionPreservingChanges:1 withUpdate:1];
      goto LABEL_21;
    }

    v33 = [(CNContactContentDisplayViewController *)self blockReportAction];

    if (v33 == v4)
    {
      [(CNContactContentDisplayViewController *)self setShouldIgnoreBlockListChange:1];
      [(CNContactContentDisplayViewController *)self _setupContactBlockingReportingActionPreservingChanges:1 withUpdate:1];
      v15 = [(CNContactContentDisplayViewController *)self delegate];
      v30 = [(CNContactContentDisplayViewController *)self contact];
      [v15 didTapBlockAndReportForContact:v30];
      goto LABEL_19;
    }

    v34 = [(CNContactContentDisplayViewController *)self actionProvider];
    v35 = [v34 shareWithFamilyAction];

    if (v35 == v4)
    {
      [(CNContactContentDisplayViewController *)self updateContact:v4];
      goto LABEL_21;
    }

    v36 = [(CNContactContentDisplayViewController *)self actionProvider];
    v37 = [v36 stopSharingWithFamilyAction];

    if (v37 == v4)
    {
      v45 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
      v46 = [(CNContactContentDisplayViewController *)self actionProvider];
      v47 = [v46 stopSharingWithFamilyAction];
      v48 = [v47 title];
      [v45 removeActionWithTitle:v48];

      [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:0];
      v15 = [(CNContactContentDisplayViewController *)self delegate];
      [v15 contactDisplayViewControllerDidExecuteDeleteFromDowntimeWhitelistAction:self];
      goto LABEL_20;
    }

    v38 = [(CNContactContentDisplayViewController *)self suggestedContactAction];

    if (v38 != v4)
    {
      v39 = [(CNContactContentDisplayViewController *)self clearRecentsDataAction];

      if (v39 == v4)
      {
        v15 = [(CNContactContentDisplayViewController *)self delegate];
        [v15 contactDisplayViewControllerDidExecuteClearRecentsDataAction:self];
        goto LABEL_20;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v4;
        v40 = [v15 propertyItem];
        v30 = [v40 group];

        v41 = [v15 selectedChoice];
        if (v41 == 2)
        {
          [v15 reject];
          [v30 reloadDataPreservingChanges:0];
          goto LABEL_19;
        }

        if (v41 != 1)
        {
LABEL_19:

          goto LABEL_20;
        }

        v42 = [v15 propertyItem];
        v31 = [(CNContactContentDisplayViewController *)self indexPathOfDisplayedPropertyItem:v42];

        v43 = [(CNContactContentDisplayViewController *)self contactView];
        [v43 selectRowAtIndexPath:v31 animated:0 scrollPosition:0];

        v44 = dispatch_time(0, 500000000);
        v53 = MEMORY[0x1E69E9820];
        v54 = 3221225472;
        v55 = __57__CNContactContentDisplayViewController_actionDidFinish___block_invoke;
        v56 = &unk_1E74E77C0;
        v57 = v15;
        v58 = v30;
        dispatch_after(v44, MEMORY[0x1E69E96A0], &v53);

LABEL_18:
        goto LABEL_19;
      }

      v52 = [(CNContactContentDisplayViewController *)self selectContainersAction];

      if (v52 != v4)
      {
        goto LABEL_21;
      }

      v28 = self;
      v29 = 1;
LABEL_15:
      [(CNContactContentDisplayViewController *)v28 reloadDataPreservingChanges:v29];
      goto LABEL_21;
    }

    v49 = [(CNContactContentDisplayViewController *)self delegate];
    v50 = objc_opt_respondsToSelector();

    if (v50)
    {
      v20 = [(CNContactContentDisplayViewController *)self delegate];
      v21 = [(CNContactContentDisplayViewController *)self suggestedContactAction];
      v51 = [v21 contact];
      [v20 contactDisplayViewController:self didDeleteContact:v51];

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [(CNContactContentDisplayViewController *)self reloadUnifiedContact];
LABEL_21:
  [(CNContactContentDisplayViewController *)self updateEditNavigationItemsAnimated:1, v53, v54, v55, v56];
}

uint64_t __57__CNContactContentDisplayViewController_actionDidFinish___block_invoke(uint64_t a1)
{
  [*(a1 + 32) confirm];
  v2 = *(a1 + 40);

  return [v2 reloadDataPreservingChanges:0];
}

- (void)actionDidUpdate:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContactContentDisplayViewController *)self actionProvider];
  v6 = [v5 addFavoriteAction];

  if (v6 == v4)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    v8 = [v7 actions];

    v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v28 + 1) + 8 * v12) target];
        v14 = [(CNContactContentDisplayViewController *)self actionProvider];
        v15 = [v14 addFavoriteAction];

        if (v13 == v15)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      if (![(CNContactContentDisplayViewController *)self isContactBlocked])
      {
        v24 = [(CNContactContentDisplayViewController *)self actionProvider];
        v25 = [v24 addFavoriteAction];
        v26 = [v25 canPerformAction];

        if ((v26 & 1) == 0)
        {
          v19 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
          v20 = [v4 target];
          [v19 removeActionWithTarget:v20 selector:{objc_msgSend(v4, "selector")}];
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_11:

      v16 = [(CNContactContentDisplayViewController *)self actionProvider];
      v17 = [v16 addFavoriteAction];
      v18 = [v17 canPerformAction];

      if (v18)
      {
        v19 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
        v20 = [(CNContactContentDisplayViewController *)self actionProvider];
        v21 = [v20 addFavoriteAction];
        v22 = CNContactsUIBundle();
        v23 = [v22 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
        [v19 addAction:v21 withTitle:v23];

LABEL_16:
        v27 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
        [(CNContactContentDisplayViewController *)self reloadCardGroup:v27];
      }
    }
  }
}

- (void)action:(id)a3 pushViewController:(id)a4 sender:(id)a5
{
  v6 = a4;
  [(CNContactContentDisplayViewController *)self setBackgroundColorIfNeededForPresentedViewController:v6];
  v7 = [(CNContactContentDisplayViewController *)self navigationItem];
  v8 = [v7 prompt];
  v9 = [v6 navigationItem];
  [v9 setPrompt:v8];

  v10 = [(CNContactContentDisplayViewController *)self navigationController];
  [v10 pushViewController:v6 animated:1];
}

- (void)action:(id)a3 dismissViewController:(id)a4 sender:(id)a5
{
  v21 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(CNContactContentDisplayViewController *)self actionProvider];
  v11 = [v10 createNewContactAction];
  if (v11 != v21)
  {
    v12 = [(CNContactContentDisplayViewController *)self actionProvider];
    v13 = [v12 addToExistingContactAction];
    if (v13 != v21)
    {
      v14 = [(CNContactContentDisplayViewController *)self updateExistingContactAction];

      if (v14 != v21)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v15 = [(CNContactContentDisplayViewController *)self delegate];
  if (v15)
  {
    v16 = v15;
    v17 = [(CNContactContentDisplayViewController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [(CNContactContentDisplayViewController *)self delegate];
      [v19 contactDisplayViewControllerIsDismissingEditingController:self];
    }
  }

LABEL_10:
  v20 = [(CNContactContentDisplayViewController *)self presentingDelegate];
  [v20 sender:v8 dismissViewController:v9];
}

- (void)action:(id)a3 presentViewController:(id)a4 sender:(id)a5
{
  v21 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(CNContactContentDisplayViewController *)self actionProvider];
  v11 = [v10 createNewContactAction];
  if (v11 != v21)
  {
    v12 = [(CNContactContentDisplayViewController *)self actionProvider];
    v13 = [v12 addToExistingContactAction];
    if (v13 != v21)
    {
      v14 = [(CNContactContentDisplayViewController *)self updateExistingContactAction];

      if (v14 != v21)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v15 = [(CNContactContentDisplayViewController *)self delegate];
  if (v15)
  {
    v16 = v15;
    v17 = [(CNContactContentDisplayViewController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [(CNContactContentDisplayViewController *)self delegate];
      [v19 contactDisplayViewControllerIsPresentingEditingController:self];
    }
  }

LABEL_10:
  v20 = [(CNContactContentDisplayViewController *)self presentingDelegate];
  [v20 sender:v8 presentViewController:v9];
}

- (void)action:(id)a3 prepareChildContactViewController:(id)a4 sender:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(CNContactContentDisplayViewController *)self delegate];
  [v9 contactDisplayViewController:self prepareChildContactViewController:v7 forAction:v8];
}

- (void)contactInlineActionsViewControllerDidDismissDisambiguationUI:(id)a3
{
  v4 = [(CNContactContentDisplayViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactContentDisplayViewController *)self delegate];
    [v6 contactDisplayViewControllerDidDismissDisambiguationUI:self];
  }
}

- (void)contactInlineActionsViewControllerWillPresentDisambiguationUI:(id)a3
{
  v4 = [(CNContactContentDisplayViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactContentDisplayViewController *)self delegate];
    [v6 contactDisplayViewControllerWillPresentDisambiguationUI:self];
  }
}

- (BOOL)contactInlineActionsViewController:(id)a3 shouldPerformActionOfType:(id)a4 withContactProperty:(id)a5
{
  v6 = a5;
  v7 = [v6 contact];
  v8 = [v6 key];
  v9 = [v6 identifier];

  LOBYTE(self) = [(CNContactContentDisplayViewController *)self contactDisplayViewController:self shouldPerformDefaultActionForContact:v7 propertyKey:v8 propertyIdentifier:v9];
  return self;
}

- (void)viewController:(id)a3 presentationControllerWillDismiss:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(CNContactContentDisplayViewController *)self presentedViewController];

  if (v7 == v6)
  {
    [(CNContactContentDisplayViewController *)self presentationControllerWillDismiss:v8];
  }
}

- (BOOL)isPresentingModalViewController
{
  v2 = [(CNContactContentDisplayViewController *)self presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(CNContactContentDisplayViewController *)self isOutOfProcess])
  {
    v9 = [(CNContactContentDisplayViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      [(CNContactContentDisplayViewController *)self setIsPresentingFullscreenForOutOfProcess:0];
      v11 = [(CNContactContentDisplayViewController *)self delegate];
      [v11 contactDisplayViewControllerWillDismissFullscreen:self];
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__CNContactContentDisplayViewController_sender_dismissViewController_completionHandler___block_invoke;
  v13[3] = &unk_1E74E6DD0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v7 dismissViewControllerAnimated:1 completion:v13];
}

uint64_t __88__CNContactContentDisplayViewController_sender_dismissViewController_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1002] == 1)
  {
    [v2 _endDisablingInterfaceAutorotation];
    *(*(a1 + 32) + 1002) = 0;
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

  v11 = [(CNContactContentDisplayViewController *)self view];
  v12 = [v11 superview];
  v13 = [v12 backgroundColor];
  v14 = [MEMORY[0x1E69DC888] clearColor];
  v15 = [v13 isEqual:v14];

  if ((v10 & 1) == 0 && (v15 & 1) == 0)
  {
    v16 = [(CNContactContentDisplayViewController *)self view];
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
  v9 = getSLComposeViewControllerClass_softClass_59566;
  v28 = getSLComposeViewControllerClass_softClass_59566;
  if (!getSLComposeViewControllerClass_softClass_59566)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __getSLComposeViewControllerClass_block_invoke_59567;
    v24[3] = &unk_1E74E7518;
    v24[4] = &v25;
    __getSLComposeViewControllerClass_block_invoke_59567(v24);
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

      if ([(CNContactContentDisplayViewController *)self isOutOfProcess]|| CNUIIsDDActionsService())
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

- (void)presentationControllerWillDismiss:(id)a3
{
  if ([(CNContactContentDisplayViewController *)self isOutOfProcess])
  {
    v4 = [(CNContactContentDisplayViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      [(CNContactContentDisplayViewController *)self setIsPresentingFullscreenForOutOfProcess:0];
      v6 = [(CNContactContentDisplayViewController *)self delegate];
      [v6 contactDisplayViewControllerWillDismissFullscreen:self];
    }
  }
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v14 = a3;
  v8 = a5;
  if (a4 != 5)
  {
    if ([(CNContactContentDisplayViewController *)self isOutOfProcess])
    {
      v9 = [(CNContactContentDisplayViewController *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [v14 presentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          [(CNContactContentDisplayViewController *)self setIsPresentingFullscreenForOutOfProcess:1];
          v13 = [(CNContactContentDisplayViewController *)self delegate];
          [v13 contactDisplayViewControllerWillPresentFullscreen:self];
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
  if ([(CNContactContentDisplayViewController *)self isOutOfProcess])
  {
    if ([(CNContactContentDisplayViewController *)self isPresentingModalViewController])
    {
      v3 = [(CNContactContentDisplayViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        if ([(CNContactContentDisplayViewController *)self isPresentingFullscreenForOutOfProcess]&& ([(CNContactContentDisplayViewController *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
        {
          v9 = [(CNContactContentDisplayViewController *)self delegate];
          [v9 contactDisplayViewControllerWillPresentFullscreen:self];
        }

        else
        {
          if ([(CNContactContentDisplayViewController *)self isPresentingFullscreenForOutOfProcess])
          {
            return;
          }

          v7 = [(CNContactContentDisplayViewController *)self delegate];
          v8 = objc_opt_respondsToSelector();

          if ((v8 & 1) == 0)
          {
            return;
          }

          v9 = [(CNContactContentDisplayViewController *)self delegate];
          [v9 contactDisplayViewControllerWillDismissFullscreen:self];
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
  v17.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v17 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(CNContactContentDisplayViewController *)self presentedViewController];
  v9 = [v8 popoverPresentationController];
  v10 = [v9 sourceView];

  if (v10)
  {
    v11 = [v10 superview];
    v12 = [(CNContactContentDisplayViewController *)self contactView];

    if (v11 == v12)
    {
      v13 = [(CNContactContentDisplayViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __92__CNContactContentDisplayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
        v15[3] = &unk_1E74E6330;
        v15[4] = self;
        v16 = v10;
        [v7 animateAlongsideTransition:0 completion:v15];
      }
    }
  }
}

void __92__CNContactContentDisplayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactView];
  [*(a1 + 40) frame];
  [v2 scrollRectToVisible:0 animated:?];
}

- (void)shouldPresentFullscreen:(BOOL)a3
{
  v3 = a3;
  [(CNContactContentDisplayViewController *)self setIsPresentingFullscreenForOutOfProcess:?];
  v5 = [(CNContactContentDisplayViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNContactContentDisplayViewController *)self delegate];
    [v7 contactDisplayViewController:self isPresentingFullscreen:v3];
  }
}

- (CGRect)centeredSourceRect:(CGRect)a3 inContactView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  [v8 layoutMargins];
  v10 = v9;
  [v8 layoutMargins];
  v12 = width - (v10 + v11);
  [v8 layoutMargins];
  v14 = v13;

  v15 = +[CNContactStyle currentStyle];
  [v15 sectionContentInset];
  v17 = x + v14 - v16;

  v18 = v17;
  v19 = y;
  v20 = v12;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)sender:(id)a3 presentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 setModalPresentationStyle:{-[CNContactContentDisplayViewController _modalPresentationStyleForViewController:](self, "_modalPresentationStyleForViewController:", v7)}];
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
  v20 = [(CNContactContentDisplayViewController *)self contactView];
  [(CNContactContentDisplayViewController *)self centeredSourceRect:v20 inContactView:v13, v15, v17, v19];
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
    v35 = [(CNContactContentDisplayViewController *)self supportedInterfaceOrientations];

    if (v34 != v35)
    {
      [(CNContactContentDisplayViewController *)self _beginDisablingInterfaceAutorotation];
      self->_disablingRotation = 1;
    }
  }

LABEL_12:
  [(CNContactContentDisplayViewController *)self setBackgroundColorIfNeededForPresentedViewController:v7];
  [(CNContactContentDisplayViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:v6])
  {
    v7 = [v8 cellForRowAtIndexPath:v6];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 shouldPerformAccessoryAction])
    {
      [v7 performAccessoryAction];
    }
  }
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:v5];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = CNContactsUIBundle();
    v10 = v9;
    if (isKindOfClass)
    {
      v11 = @"UNLINK";
    }

    else
    {
      v11 = @"DELETE";
    }

    v6 = [v9 localizedStringForKey:v11 value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v6;
}

- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6
{
  if (sel_copy_ == a4)
  {
    v8 = [a3 cellForRowAtIndexPath:a5];
    [v8 a4];
  }
}

- (BOOL)tableView:(id)a3 canPerformAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6
{
  v8 = a5;
  if ([(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:v8])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = (sel_copy_ == a4) & ~[(CNContactContentDisplayViewController *)self _indexPathIsActionItem:v8];
  }

  return v9;
}

- (BOOL)tableView:(id)a3 shouldShowMenuForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:v5];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      objc_opt_class();
      v6 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v15 = a4;
  [v15 updateConstraintsIfNeeded];
  v6 = [v15 backgroundView];
  v7 = [(CNContactContentDisplayViewController *)self contactView];
  v8 = [v7 sectionBackgroundColor];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = [(CNContactContentDisplayViewController *)self environment];
    v9 = [v10 runningInContactsAppOniPad];
  }

  if (v9 && !v6)
  {
    v11 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  v12 = [(CNContactContentDisplayViewController *)self environment];
  if ([v12 runningInContactsAppOniPad])
  {
    v13 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    [v6 setBackgroundColor:v13];
  }

  else
  {
    v13 = [(CNContactContentDisplayViewController *)self contactView];
    v14 = [v13 sectionBackgroundColor];
    [v6 setBackgroundColor:v14];
  }

  [v15 setBackgroundView:v6];
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v16 = a4;
  [(CNContactContentDisplayViewController *)self tableView:a3 willDisplayFooterView:v16 forSection:a5];
  [v16 _cnui_applyContactStyle];
  v8 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:a5];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = +[CNContactStyle currentStyle];
    v10 = [v9 backgroundColor];

    if (v10)
    {
      v11 = +[CNContactStyle currentStyle];
      v12 = [v11 backgroundColor];
      v13 = [v16 backgroundView];
      [v13 setBackgroundColor:v12];

LABEL_7:
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(CNContactContentDisplayViewController *)self environment];
    v15 = [v14 runningInContactsAppOniPad];

    if (v15)
    {
      v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      v12 = [v16 textLabel];
      [v12 setFont:v11];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (BOOL)tableView:(id)a3 shouldHaveFullLengthBottomSeparatorForSection:(int64_t)a4
{
  v5 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:a4];
  v6 = [(CNContactContentDisplayViewController *)self environment];
  v7 = [v6 runningInContactsAppOniPad];

  if (v7)
  {
    goto LABEL_2;
  }

  v9 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];

  v10 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];

  v11 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
  v12 = v11;
  if (v5 == v11)
  {

    goto LABEL_20;
  }

  v13 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];

  if (v9)
  {
    v14 = v5 == v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = !v14;
  isKindOfClass = 1;
  if (v5 != v13 && v15)
  {
    if (v9 && [v5 isMemberOfClass:objc_opt_class()])
    {
      v16 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];
      v17 = [v16 actionItems];
      if ([v17 count])
      {
        v18 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];
        v19 = [v18 addSpacerFromPreviousGroup];

        if (!v19)
        {
LABEL_2:
          isKindOfClass = 0;
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    if (([v5 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      goto LABEL_22;
    }

LABEL_20:
    isKindOfClass = 1;
  }

LABEL_22:

  return isKindOfClass & 1;
}

- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4
{
  v6 = [(CNContactContentDisplayViewController *)self environment];
  v7 = [v6 runningInContactsAppOniPad];

  if (v7)
  {
    v8 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:a4];
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    objc_opt_class();
    v12 = v9;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    objc_opt_class();
    v15 = v12;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    objc_opt_class();
    v18 = v15;
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v11)
    {
      v21 = [v11 property];
      v22 = [v21 isEqualToString:*MEMORY[0x1E695C320]] ^ 1;
    }

    else if (v14)
    {
      LOBYTE(v22) = 0;
    }

    else
    {
      LOBYTE(v22) = (v17 | v20) != 0;
    }
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  return v22;
}

- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4
{
  v5 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[CNContactContentDisplayViewController contact](self, "contact"), v6 = objc_claimAutoreleasedReturnValue(), [v6 mainStoreLinkedContacts], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8 > 1))
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v10 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];

    if (v5 == v10)
    {
      v11 = [(CNContactContentDisplayViewController *)self environment];
      v9 = [v11 runningInContactsAppOniPad] ^ 1;
    }

    else
    {
      LOBYTE(v9) = [v5 addSpacerFromPreviousGroup];
    }
  }

  return v9;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (((a4 == 0) & [(CNContactContentDisplayViewController *)self hasTableViewHeaderFirstSection]) != 0)
  {
    return 0;
  }

  else
  {
    return &stru_1F0CE7398;
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(CNContactContentDisplayViewController *)self hasTableViewHeaderFirstSection];
  if (a4 || !v6)
  {
    v8 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:a4];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[CNContactContentDisplayViewController contact](self, "contact"), v9 = objc_claimAutoreleasedReturnValue(), [v9 mainStoreLinkedContacts], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9, v11 >= 2))
    {
      v7 = [v8 title];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(CNContactContentDisplayViewController *)self shouldShowVerifiedFooterInSection:a4])
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v8];

    v10 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    v11 = [v10 verifiedInfoMessage];
    [v9 setAttributedString:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldShowVerifiedFooterInSection:(int64_t)a3
{
  v6 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v7 = [v6 verifiedInfoMessage];

  if (v7)
  {
    v8 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:a3];
    v9 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    if (v8 == v9 || (-[CNContactContentDisplayViewController cardMedicalIDGroup](self, "cardMedicalIDGroup"), v3 = objc_claimAutoreleasedReturnValue(), v8 == v3) && ([v8 addSpacerFromPreviousGroup] & 1) == 0)
    {
      v11 = [(CNContactContentDisplayViewController *)self contactView];
      v10 = [(CNContactContentDisplayViewController *)self tableView:v11 shouldHaveFullLengthBottomSeparatorForSection:a3];

      if (v8 == v9)
      {
LABEL_9:

        return v10;
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_9;
  }

  return 0;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[CNContactContentDisplayViewController contact](self, "contact"), v8 = objc_claimAutoreleasedReturnValue(), [v8 mainStoreLinkedContacts], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v11 = 16.0, v10 <= 1))
  {
    if ([v6 numberOfSections] - 1 == a4)
    {
      v12 = [(CNContactContentDisplayViewController *)self contact];
      v13 = [v12 phonemeData];

      if (v13)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 16.0;
      }
    }

    else if ([(CNContactContentDisplayViewController *)self shouldShowVerifiedFooterInSection:a4])
    {
      v11 = *MEMORY[0x1E69DE3D0];
    }

    else
    {
      v11 = 0.0;
    }
  }

  return v11;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:a4];
  v7 = [v6 title];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = +[CNContactStyle currentStyle];
  v10 = [v9 usesInsetPlatterStyle];

  v11 = 0.0;
  if (v10)
  {
    v12 = (v10 & isKindOfClass) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    if (((v7 != 0) & isKindOfClass) == 1 && (-[CNContactContentDisplayViewController contact](self, "contact"), v13 = objc_claimAutoreleasedReturnValue(), [v13 mainStoreLinkedContacts], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v13, v15 >= 2))
    {
      v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v16 _scaledValueForValue:44.0];
      v11 = v17 + 15.0;
    }

    else
    {
      v18 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];

      if (v6 == v18)
      {
        v11 = 55.0;
      }

      else if (((a4 != 1) & [v6 addSpacerFromPreviousGroup]) != 0)
      {
        v11 = 55.0;
      }

      else
      {
        v11 = 0.0;
      }
    }
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (![(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:v6])
  {
    v7 = [v19 cellForRowAtIndexPath:v6];
    if ([(CNContactContentDisplayViewController *)self _indexPathIsActionItem:v6])
    {
      v8 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:v6];
      v9 = [v8 actions];
      v10 = [v9 objectAtIndexedSubscript:0];

      [v10 performActionWithSender:v7];
      v11 = [v19 indexPathForSelectedRow];
      [v19 deselectRowAtIndexPath:v11 animated:1];
    }

    else if (objc_opt_respondsToSelector())
    {
      if ([v7 shouldPerformDefaultAction])
      {
        v12 = 1;
      }

      else
      {
        v13 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
        v12 = [v13 allowsPropertyActions];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 isSuggested] & 1) == 0)
      {
        v14 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:v6];
        v15 = [v14 contact];
        v16 = [v14 property];
        v17 = [v14 labeledValue];
        v18 = [v17 identifier];
        v12 = [(CNContactContentDisplayViewController *)self contactDisplayViewController:self shouldPerformDefaultActionForContact:v15 propertyKey:v16 propertyIdentifier:v18];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CNContactContentDisplayViewController *)self _pickName];
      }

      if (v12)
      {
        [v7 performDefaultAction];
      }

      [v19 deselectRowAtIndexPath:v6 animated:1];
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

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  if ([(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:a5, a4])
  {

    [(CNContactContentDisplayViewController *)self removeFirstSectionHeaderViewControllerFromHierarchy];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  if ([(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:a5])
  {
    v8 = [(CNContactContentDisplayViewController *)self personHeaderViewController];
    [v8 didMoveToParentViewController:self];
  }

  objc_opt_class();
  v12 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v12;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(CNContactContentDisplayViewController *)self environment];
    [v10 setShowSeparator:{objc_msgSend(v11, "runningInContactsAppOniPad")}];
  }
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [a4 section];
  v8 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
  v9 = [(CNContactContentDisplayViewController *)self sectionOfGroup:v8];

  if (v7 == v9)
  {
    v10 = 150.0;
  }

  else
  {
    [v6 estimatedRowHeight];
    v10 = v11;
  }

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  if ([(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:v6])
  {
    v7 = [(CNContactContentDisplayViewController *)self tableViewHeaderFirstSectionCell];
  }

  else
  {
    if ([(CNContactContentDisplayViewController *)self _indexPathIsActionItem:v6])
    {
      v7 = [(CNContactContentDisplayViewController *)self _cellForIndexPath:v6];
    }

    else
    {
      v8 = -[CNContactContentDisplayViewController _cardGroupAtTableViewSectionIndex:](self, "_cardGroupAtTableViewSectionIndex:", [v6 section]);
      if ([(CNContactContentDisplayViewController *)self isStandardGroup:v8])
      {
        v7 = [(CNContactContentDisplayViewController *)self _cellForIndexPath:v6];
      }

      else
      {
        v7 = 0;
      }
    }

    [(CNContactContentDisplayViewController *)self _updateLabelWidthForCell:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CNContactContentDisplayViewController *)self prepareCell:v7];
    }
  }

  v9 = [(CNContactContentDisplayViewController *)self environment];
  v10 = [v9 runningInContactsAppOniPad];

  if (v10)
  {
    v11 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    [v7 setBackgroundColor:v11];
  }

  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"CNContactContentDisplayViewController.m" lineNumber:1881 description:@"We have no cell to return!"];
  }

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(CNContactContentDisplayViewController *)self hasTableViewHeaderFirstSection];
  if (!a4 && v6)
  {
    return 1;
  }

  v8 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:a4];
  if ([(CNContactContentDisplayViewController *)self isStandardGroup:v8])
  {
    [v8 displayItems];
  }

  else
  {
    [v8 actionItems];
  }
  v9 = ;
  v10 = [v9 count];

  return v10;
}

- (BOOL)isStandardGroup:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
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
  v4 = [(CNContactContentDisplayViewController *)self _currentGroups];
  v5 = [v4 count];
  v6 = v5 + [(CNContactContentDisplayViewController *)self hasTableViewHeaderFirstSection];

  return v6;
}

- (void)didChangeToShowTitle:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  [v5 setLayoutPositionallyAfterNavBar:v3];

  v7 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  v6 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  [v7 updateForShowingNavBar:{objc_msgSend(v6, "layoutPositionallyAfterNavBar")}];
}

- (void)updateWithContactViewConfiguration:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CNUILogContactCard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "display updateWithContactViewConfiguration: %@", &v13, 0xCu);
  }

  [(CNContactContentDisplayViewController *)self reloadDataIfNeeded];
  v6 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  v7 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  [v6 updateForShowingNavBar:{objc_msgSend(v7, "layoutPositionallyAfterNavBar")}];

  v8 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  v9 = [(CNContactContentDisplayViewController *)self mutableContact];
  [v8 updateWithNewContact:v9];

  v10 = [(CNContactContentDisplayViewController *)self shouldShowGemini];
  v11 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v11 setShouldShowGemini:v10];

  [(CNContactContentDisplayViewController *)self updateEditNavigationItemsAnimated:0];
  v12 = [(CNContactContentDisplayViewController *)self applyContactStyle];
}

- (void)setupTableFooterView
{
  if ((-[CNContactContentDisplayViewController isEditing](self, "isEditing") & 1) != 0 || (-[CNContactContentDisplayViewController contact](self, "contact"), v3 = objc_claimAutoreleasedReturnValue(), [v3 phonemeData], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v19 = [(CNContactContentDisplayViewController *)self contactView];
    [(CNContactViewFooterView *)v19 setTableFooterView:0];
  }

  else
  {
    objc_opt_class();
    v5 = [(CNContactContentDisplayViewController *)self contactView];
    v19 = [v5 tableFooterView];
    if (objc_opt_isKindOfClass())
    {
      v6 = v19;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      v19 = objc_alloc_init(CNContactViewFooterView);
      v8 = [(CNContactContentDisplayViewController *)self contactView];
      [v8 setTableFooterView:v19];
    }

    v9 = [(CNContactContentDisplayViewController *)self contact];
    [(CNContactViewFooterView *)v19 setContact:v9];

    v10 = [(CNContactViewFooterView *)v19 label];
    v11 = [(CNContactContentDisplayViewController *)self view];
    [v11 bounds];
    v13 = v12;
    v14 = [(CNContactContentDisplayViewController *)self view];
    [v14 layoutMargins];
    v16 = v13 - v15;
    v17 = [(CNContactContentDisplayViewController *)self view];
    [v17 layoutMargins];
    [v10 sizeThatFits:{v16 - v18, 1.79769313e308}];

    [(CNContactViewFooterView *)v19 frame];
    [(CNContactViewFooterView *)v19 setFrame:?];
  }
}

- (CGSize)setupTableHeaderView
{
  if ([(CNContactContentDisplayViewController *)self shouldDisplayAvatarHeaderView])
  {
    if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
    {
      v3 = [(CNContactContentDisplayViewController *)self contactHeaderView];
      v4 = [v3 backgroundColor];
      v5 = [(CNContactContentDisplayViewController *)self actionsViewController];
      v6 = [v5 view];
      [v6 setBackgroundColor:v4];

      v7 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [(CNContactContentDisplayViewController *)self contactView];
    v9 = [v8 customHeaderView];

    if (v9)
    {
      v10 = [(CNContactContentDisplayViewController *)self contactView];
      v7 = [v10 customHeaderView];

      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_7:
  v11 = [(CNContactContentDisplayViewController *)self contactView];
  v12 = [v11 tableHeaderView];
  v13 = [v12 needsUpdateConstraints];

  if (v7)
  {
    [v7 frame];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v15 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
  }

  v18 = [(CNContactContentDisplayViewController *)self contactView];
  [v18 setTableHeaderView:v7];

  if ((v13 & 1) == 0)
  {
    v19 = [(CNContactContentDisplayViewController *)self contactView];
    v20 = [v19 tableHeaderView];
    v21 = [v20 needsUpdateConstraints];

    if (v21)
    {
      v22 = [(CNContactContentDisplayViewController *)self contactView];
      v23 = [v22 tableHeaderView];
      [v23 updateConstraints];
    }
  }

  v24 = v15;
  v25 = v17;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v12 viewDidLayoutSubviews];
  [(CNContactContentDisplayViewController *)self _updateCachedLabelWidthsIfNeeded];
  [(CNContactContentDisplayViewController *)self setupTableHeaderView];
  v4 = v3;
  v6 = v5;
  [(CNContactContentDisplayViewController *)self initializeTableViewsForHeaderHeight];
  [(CNContactContentDisplayViewController *)self adjustPreferredContentSize];
  v7 = [(CNContactContentDisplayViewController *)self contactView];
  v8 = [v7 tableHeaderView];

  if (v8)
  {
    [v8 frame];
    if (v4 != v10 || v6 != v9)
    {
      v11 = [(CNContactContentDisplayViewController *)self contactView];
      [v11 setTableHeaderView:v8];
    }
  }

  [(CNContactContentDisplayViewController *)self setupTableFooterView];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v3 calculateLabelSizesIfNeeded];

  [(CNContactContentDisplayViewController *)self updateOutOfProcessFullscreenPresentationIfNeeded];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v6 viewWillDisappear:a3];
  v4 = [(CNContactContentDisplayViewController *)self siriContextProvider];
  [v4 setEnabled:0];

  [(CNContactContentDisplayViewController *)self updateWindowTitleForAppearing:0];
  v5 = [(CNContactContentDisplayViewController *)self shareLocationController];
  [v5 stopUpdatingFriends];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v6 viewDidAppear:a3];
  if (self->_needsRefetch)
  {
    [(CNContactContentDisplayViewController *)self _refetchContact];
    self->_needsRefetch = 0;
  }

  v4 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v5 = [v4 alwaysEditing];

  if ((v5 & 1) == 0)
  {
    [(CNContactContentDisplayViewController *)self becomeFirstResponder];
  }

  [(CNContactContentDisplayViewController *)self updateWindowTitleForAppearing:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactContentDisplayViewController *)self forcesTransparentBackground])
  {
    v5 = +[CNUIColorRepository transparentBackgroundColor];
  }

  else if ([(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
  {
    v5 = +[CNUIColorRepository popoverBackgroundColor];
  }

  else
  {
    v6 = [(CNContactContentDisplayViewController *)self environment];
    v7 = [v6 runningInContactsAppOniPad];

    if (!v7)
    {
      goto LABEL_8;
    }

    v5 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
  }

  v8 = v5;
  v9 = [(CNContactContentDisplayViewController *)self contactView];
  [v9 setBackgroundColor:v8];

LABEL_8:
  v18.receiver = self;
  v18.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v18 viewWillAppear:v3];
  v10 = +[CNContactStyle currentStyle];
  v11 = [v10 backgroundColor];

  if (v11)
  {
    v12 = +[CNContactStyle currentStyle];
    v13 = [v12 backgroundColor];
    v14 = [(CNContactContentDisplayViewController *)self view];
    [v14 setBackgroundColor:v13];
  }

  v15 = [(CNContactContentDisplayViewController *)self contactView];
  [v15 _cnui_applyContactStyle];

  if (![(CNContactContentDisplayViewController *)self reloadDataIfNeeded])
  {
    [(CNContactContentDisplayViewController *)self _setNeedsUpdateCachedLabelWidths];
  }

  [(CNContactContentDisplayViewController *)self updateEditNavigationItemsAnimated:0];
  v16 = [(CNContactContentDisplayViewController *)self siriContextProvider];
  [v16 setEnabled:1];

  v17 = [(CNContactContentDisplayViewController *)self shareLocationController];
  [v17 startUpdatingFriends];
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v3 updateViewConstraints];
  [(CNContactContentDisplayViewController *)self setupConstraints];
}

- (void)setupConstraints
{
  v3 = [(CNContactContentDisplayViewController *)self shouldDisplayAvatarHeaderView];
  [(CNContactContentDisplayViewController *)self setupViewHierarchyIncludingAvatarHeader:v3];
  [(CNContactContentDisplayViewController *)self setupTableHeaderView];
  [(CNContactContentDisplayViewController *)self setupTableFooterView];
  v4 = MEMORY[0x1E696ACD8];
  v5 = [(CNContactContentDisplayViewController *)self activatedConstraints];
  [v4 deactivateConstraints:v5];

  v101 = [MEMORY[0x1E695DF70] array];
  if (v3)
  {
    v6 = MEMORY[0x1E696ACD8];
    v7 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    v8 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    [v8 maxHeight];
    v10 = [v6 constraintWithItem:v7 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v9];
    [(CNContactContentDisplayViewController *)self setHeaderHeightConstraint:v10];

    v11 = [(CNContactContentDisplayViewController *)self headerHeightConstraint];
    [v101 addObject:v11];

    v12 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    v13 = [v12 topAnchor];
    v14 = [(CNContactContentDisplayViewController *)self view];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    [v101 addObject:v16];

    v17 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    v18 = [v17 leftAnchor];
    v19 = [(CNContactContentDisplayViewController *)self view];
    v20 = [v19 leftAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    [v101 addObject:v21];

    v22 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    v23 = [v22 rightAnchor];
    v24 = [(CNContactContentDisplayViewController *)self view];
    v25 = [v24 rightAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v101 addObject:v26];

    v27 = [(CNContactContentDisplayViewController *)self contactView];
    v28 = [v27 topAnchor];
    v29 = [(CNContactContentDisplayViewController *)self view];
    v30 = [v29 topAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    [v101 addObject:v31];

    v32 = [(CNContactContentDisplayViewController *)self contactView];
    v33 = [v32 bottomAnchor];
    v34 = [(CNContactContentDisplayViewController *)self view];
    v35 = [v34 bottomAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    [v101 addObject:v36];

    v37 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
    v38 = [v37 superview];

    if (v38)
    {
      v39 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v39 scale];
      v41 = v40;

      v42 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      v43 = [v42 heightAnchor];
      v44 = [v43 constraintEqualToConstant:1.0 / v41];
      [v101 addObject:v44];

      v45 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      v46 = [v45 bottomAnchor];
      v47 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      v48 = [v47 superview];
      v49 = [v48 bottomAnchor];
      v50 = [v46 constraintEqualToAnchor:v49];
      [v101 addObject:v50];

      v51 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      v52 = [v51 leftAnchor];
      v53 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      v54 = [v53 superview];
      v55 = [v54 leftAnchor];
      v56 = [v52 constraintEqualToAnchor:v55];
      [v101 addObject:v56];

      v57 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      v58 = [v57 rightAnchor];
      v59 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      v60 = [v59 superview];
      v61 = [v60 rightAnchor];
      v62 = [v58 constraintEqualToAnchor:v61];
      [v101 addObject:v62];
    }

    v63 = +[CNContactStyle currentStyle];
    if ([v63 usesInsetPlatterStyle])
    {
      v64 = 20.0;
    }

    else
    {
      v64 = 10.0;
    }

    v65 = +[CNContactStyle currentStyle];
    if ([v65 usesInsetPlatterStyle])
    {
      v66 = 16.0;
    }

    else
    {
      v66 = 15.0;
    }

    v67 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    v68 = [v67 allowsActionsModel];

    if (v68)
    {
      v69 = [(CNContactContentDisplayViewController *)self view];
      v70 = [v69 leadingAnchor];
      v71 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
      v72 = [v71 leadingAnchor];
      v73 = [v70 constraintEqualToAnchor:v72];
      [v101 addObject:v73];

      v74 = [(CNContactContentDisplayViewController *)self view];
      v75 = [v74 trailingAnchor];
      v76 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
      v77 = [v76 trailingAnchor];
      v78 = [v75 constraintEqualToAnchor:v77];
      [v101 addObject:v78];

      if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
      {
        v79 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
        v80 = [v79 topAnchor];
        v81 = [(CNContactContentDisplayViewController *)self contactHeaderView];
        v82 = [v81 bottomAnchor];
        v83 = [v80 constraintEqualToAnchor:v82];
        [v101 addObject:v83];
      }

      v84 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
      [v84 setLayoutMargins:{v64, 8.0, v66, 8.0}];

      v85 = [(CNContactContentDisplayViewController *)self view];
      v86 = [v85 _cnui_contactStyle];
      [v86 sectionMaximumPlatterWidth];
      v88 = v87;
      v89 = *MEMORY[0x1E698B6F8];
      v90 = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
      [v90 setMinimumLayoutSize:{v88, v89}];
    }
  }

  v91 = [(CNContactContentDisplayViewController *)self contactView];
  v92 = [v91 leftAnchor];
  v93 = [(CNContactContentDisplayViewController *)self view];
  v94 = [v93 leftAnchor];
  v95 = [v92 constraintEqualToAnchor:v94];
  [v101 addObject:v95];

  v96 = [(CNContactContentDisplayViewController *)self contactView];
  v97 = [v96 rightAnchor];
  v98 = [(CNContactContentDisplayViewController *)self view];
  v99 = [v98 rightAnchor];
  v100 = [v97 constraintEqualToAnchor:v99];
  [v101 addObject:v100];

  [(CNContactContentDisplayViewController *)self setActivatedConstraints:v101];
  [MEMORY[0x1E696ACD8] activateConstraints:v101];
}

- (BOOL)shouldDisplayAvatarHeaderView
{
  v2 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  v3 = v2 != 0;

  return v3;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v10 viewDidLoad];
  v3 = *MEMORY[0x1E6996568];
  v4 = [(CNContactContentDisplayViewController *)self initialPrompt];
  LOBYTE(v3) = (*(v3 + 16))(v3, v4);

  if ((v3 & 1) == 0)
  {
    v5 = [(CNContactContentDisplayViewController *)self initialPrompt];
    v6 = [(CNContactContentDisplayViewController *)self navigationItem];
    [v6 setPrompt:v5];
  }

  if ([(CNContactContentDisplayViewController *)self shouldDrawNavigationBar])
  {
    v7 = [(CNContactContentDisplayViewController *)self navigationItem];
    [v7 _setBackgroundHidden:0];
  }

  [(CNContactContentDisplayViewController *)self reloadDataIfNeeded];
  v8 = objc_alloc_init(CNContactContentNavigationItemUpdater);
  [(CNContactContentDisplayViewController *)self setContactNavigationItemUpdater:v8];

  v9 = [(CNContactContentDisplayViewController *)self view];
  [v9 setNeedsUpdateConstraints];
}

- (void)setupViewHierarchyIncludingAvatarHeader:(BOOL)a3
{
  v3 = a3;
  v43[1] = *MEMORY[0x1E69E9840];
  if ([(CNContactContentDisplayViewController *)self isViewLoaded])
  {
    v5 = [(CNContactContentDisplayViewController *)self view];
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    v9 = v8;
    if (v3)
    {
      v43[0] = v8;
      v10 = v43;
      v11 = v7;
    }

    else
    {
      v42 = v8;
      v10 = &v42;
      v11 = v6;
    }

    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v11 addObjectsFromArray:v12];

    if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
    {
      v13 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
      [v7 addObject:v13];

      v14 = [(CNContactContentDisplayViewController *)self view];
      v15 = [v14 _cnui_contactStyle];
      v16 = [v15 usesOpaqueBackground];

      if (v16)
      {
        v17 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
        v18 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
        [v17 addSubview:v18];
      }
    }

    v19 = [(CNContactContentDisplayViewController *)self contactView];
    [v7 addObject:v19];

    v20 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    v21 = [v20 allowsActionsModel];

    if ((v21 & 1) == 0)
    {
      v22 = [(CNContactContentDisplayViewController *)self actionsViewController];
      v23 = [v22 view];
      [v23 removeFromSuperview];
    }

    v24 = [(CNContactContentDisplayViewController *)self contactView];
    v25 = [v24 panGestureRecognizer];
    v26 = [v25 view];
    v27 = [(CNContactContentDisplayViewController *)self view];

    if (v26 != v27)
    {
      v28 = [(CNContactContentDisplayViewController *)self contactView];
      v29 = [v28 panGestureRecognizer];
      v30 = [v29 view];
      v31 = [(CNContactContentDisplayViewController *)self contactView];
      v32 = [v31 panGestureRecognizer];
      [v30 removeGestureRecognizer:v32];

      v33 = [(CNContactContentDisplayViewController *)self view];
      v34 = [(CNContactContentDisplayViewController *)self contactView];
      v35 = [v34 panGestureRecognizer];
      [v33 addGestureRecognizer:v35];
    }

    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __81__CNContactContentDisplayViewController_setupViewHierarchyIncludingAvatarHeader___block_invoke;
    v40 = &unk_1E74E6C50;
    v41 = v5;
    v36 = v5;
    [v7 enumerateObjectsUsingBlock:&v37];
    [v6 enumerateObjectsUsingBlock:{&__block_literal_global_395, v37, v38, v39, v40}];
  }
}

- (void)loadContactViewControllerViews
{
  v3 = [(CNContactContentDisplayViewController *)self contactView];
  v4 = [(CNContactContentDisplayViewController *)self contactView];
  v5 = objc_opt_class();
  v6 = [v5 cellIdentifierForClass:objc_opt_class()];
  v7 = [v3 dequeueReusableCellWithIdentifier:v6];
  [(CNContactContentDisplayViewController *)self setNoteCell:v7];

  v9 = [(CNContactContentDisplayViewController *)self view];
  v8 = [(CNContactContentDisplayViewController *)self contactView];
  [v9 addSubview:v8];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(CNContactContentDisplayViewController *)self setView:v3];

  [(CNContactContentDisplayViewController *)self loadContactViewControllerViews];
}

- (void)toggleEditing:(id)a3
{
  v4 = [(CNContactContentDisplayViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactContentDisplayViewController *)self delegate];
    [v6 contactDisplayViewController:self didChangeToEditMode:1];
  }
}

- (BOOL)saveWasAuthorized
{
  v2 = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  v3 = [v2 saveWasAuthorized];

  return v3;
}

- (void)cancelAsyncLookups
{
  v3 = [(CNContactContentDisplayViewController *)self faceTimeIDSLookupToken];
  [v3 cancel];

  [(CNContactContentDisplayViewController *)self setFaceTimeIDSLookupToken:0];
  v4 = [(CNContactContentDisplayViewController *)self iMessageIDSLookupToken];
  [v4 cancel];

  [(CNContactContentDisplayViewController *)self setIMessageIDSLookupToken:0];
  v5 = [(CNContactContentDisplayViewController *)self medicalIDLookupToken];
  [v5 cancel];

  [(CNContactContentDisplayViewController *)self setMedicalIDLookupToken:0];
}

- (void)updateWindowTitleForAppearing:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CNContactContentDisplayViewController *)self title];
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v7 = [(CNContactContentDisplayViewController *)self navigationController];
      v11 = [v7 title];

      if (!v11)
      {
        v8 = [(CNContactContentDisplayViewController *)self contactFormatter];
        v9 = [(CNContactContentDisplayViewController *)self contact];
        v11 = [v8 stringFromContact:v9];
      }
    }

    v5 = [(CNContactContentDisplayViewController *)self view];
    v6 = [v5 window];
    v10 = [v6 windowScene];
    [v10 setTitle:v11];
  }

  else
  {
    v11 = [(CNContactContentDisplayViewController *)self view];
    v5 = [v11 window];
    v6 = [v5 windowScene];
    [v6 setTitle:0];
  }
}

- (id)currentNavigationController
{
  v2 = [(CNContactContentDisplayViewController *)self navigationItemController];
  v3 = [v2 navigationController];

  v4 = [v3 navigationBar];
  v5 = [v4 backItem];
  if (v5)
  {

LABEL_3:
    v6 = v3;
    goto LABEL_6;
  }

  v7 = [v3 navigationController];
  v8 = [v7 navigationBar];
  v9 = [v8 backItem];

  if (!v9)
  {
    goto LABEL_3;
  }

  v6 = [v3 navigationController];
LABEL_6:
  v10 = v6;

  return v10;
}

- (void)updateEditNavigationItemsAnimated:(BOOL)a3
{
  [(CNContactContentDisplayViewController *)self isOutOfProcess];
  v4 = [(CNContactContentDisplayViewController *)self currentNavigationController];
  v5 = [v4 navigationBar];
  v6 = [v5 backItem];
  v7 = v6 != 0;

  v8 = [(CNContactContentDisplayViewController *)self contactNavigationItemUpdater];
  v9 = [(CNContactContentDisplayViewController *)self navigationItemController];
  v10 = [(CNContactContentDisplayViewController *)self mode];
  v11 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v12 = [v11 allowsEditing];
  v13 = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  v14 = [v13 shouldPromptForPasscodeAuthorization];
  v15 = [(UIViewController *)self ab_isInSheet];
  LOBYTE(v21) = a3;
  BYTE2(v20) = 0;
  BYTE1(v20) = v7;
  LOBYTE(v20) = [(CNContactContentDisplayViewController *)self shouldDrawNavigationBar];
  v23 = [v8 updateDisplayNavigationItemsForController:v9 mode:v10 actionTarget:self allowsEditing:v12 editRequiresAuthorization:v14 isInSheet:v15 isShowingNavBar:v20 shouldShowBackButton:0 shouldUsePlatterStyle:v21 platterBackBarButtonItem:? animated:?];

  -[CNContactContentDisplayViewController setEditKeyboardShortcutEnabled:](self, "setEditKeyboardShortcutEnabled:", [v23 enableEditShortcut]);
  -[CNContactContentDisplayViewController setCancelKeyboardShortcutEnabled:](self, "setCancelKeyboardShortcutEnabled:", [v23 enableCancelShortcut]);
  v16 = [(CNContactContentDisplayViewController *)self navigationItemDelegate];
  v17 = [(CNContactContentDisplayViewController *)self navigationItemController];
  v18 = [v17 navigationItem];
  v19 = [(CNContactContentDisplayViewController *)self doneButtonItem];
  [v16 contactNavigationItemProvider:self didUpdateNavigationItem:v18 doneButtonItem:v19];
}

- (UINavigationItem)effectiveNavigationItem
{
  v2 = [(CNContactContentDisplayViewController *)self navigationItemController];
  v3 = [v2 navigationItem];

  return v3;
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  if (a3 == 4)
  {
    v5 = [(CNContactContentDisplayViewController *)self contactView];
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
  v7 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if (![v7 allowsAddingToAddressBook])
  {
    v12 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    if ([v12 allowsEditing])
    {
      v13 = [v6 hasBeenPersisted];

      if (v13)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

LABEL_12:
    v11 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
    goto LABEL_13;
  }

LABEL_3:
  if (a4 > 5 || (v8 = 1 << a4, v9 = v6, (v8 & 0x32) == 0))
  {
    v9 = 0;
  }

  v10 = [(CNContactContentDisplayViewController *)self contactViewCache];
  v11 = [v10 policyForContact:v9];

  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v11;
}

- (id)indexPathOfPropertyItem:(id)a3
{
  v4 = a3;
  v5 = [v4 group];
  v6 = [(CNContactContentDisplayViewController *)self sectionOfGroup:v5];
  v7 = [v5 displayItems];
  v8 = [v7 indexOfObject:v4];

  v9 = 0;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:v6];
  }

  return v9;
}

- (void)adjustPreferredContentSize
{
  [(CNContactContentDisplayViewController *)self requiredSizeForVisibleTableView];
  v4 = v3;
  v6 = v5;
  [(CNContactContentDisplayViewController *)self preferredContentSize];
  if (v4 != v8 || v6 != v7)
  {
    [(CNContactContentDisplayViewController *)self setPreferredContentSize:v4, v6];
    v10 = [(CNContactContentDisplayViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(CNContactContentDisplayViewController *)self delegate];
      [(CNContactContentDisplayViewController *)self preferredContentSize];
      [v12 contactDisplayViewController:self didChangePreferredContentSize:?];
    }
  }
}

- (void)reloadCardGroup:(id)a3
{
  v8 = a3;
  v4 = [(CNContactContentDisplayViewController *)self contactView];
  if ([(CNContactContentDisplayViewController *)self isViewLoaded])
  {
    if (![(CNContactContentDisplayViewController *)self needsReload])
    {
      v5 = [(CNContactContentDisplayViewController *)self sectionOfGroup:v8];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = v5;
        [v4 beginUpdates];
        v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:v6];
        [v4 reloadSections:v7 withRowAnimation:0];

        [v4 endUpdates];
        [(CNContactContentDisplayViewController *)self updateHeaderHeightToMatchScrollViewState:v4 scrollDirection:2 animated:0];
        [(CNContactContentDisplayViewController *)self adjustPreferredContentSize];
      }
    }
  }
}

- (void)removeActionWithTarget:(id)a3 selector:(SEL)a4 inGroup:(id)a5
{
  v8 = a3;
  v9 = a5;
  [v9 removeActionWithTarget:v8 selector:a4];
  v10 = [(CNContactContentDisplayViewController *)self customActions];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __81__CNContactContentDisplayViewController_removeActionWithTarget_selector_inGroup___block_invoke;
  v17 = &unk_1E74E6BB8;
  v18 = v8;
  v19 = v9;
  v20 = self;
  v21 = a4;
  v11 = v9;
  v12 = v8;
  v13 = [v10 _cn_filter:&v14];
  [(CNContactContentDisplayViewController *)self setCustomActions:v13, v14, v15, v16, v17];

  [(CNContactContentDisplayViewController *)self setNeedsReload];
}

- (void)addActionWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 menuProvider:(id)a6 inGroup:(id)a7 destructive:(BOOL)a8
{
  v8 = a8;
  v31 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a4;
  v18 = [[CNContactTargetActionWrapper alloc] initWithTarget:v17 action:a5];

  v19 = [CNCustomCardAction placementForGroup:v16 inContactContentViewController:self];
  if (v19)
  {
    v20 = v19;
    v21 = [CNCustomCardAction alloc];
    v22 = [(CNContactContentDisplayViewController *)self contact];
    v23 = [v22 identifier];
    v24 = [(CNCustomCardAction *)v21 initWithTitle:v14 targetActionWrapper:v18 contactIdentifier:v23 placement:v20 isDestructive:v8 menuProvider:v15];

    v25 = [(CNContactContentDisplayViewController *)self customActions];
    v26 = [v25 arrayByAddingObject:v24];
    [(CNContactContentDisplayViewController *)self setCustomActions:v26];
  }

  else
  {
    v24 = CNUILogContactCard();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v29 = 138412290;
      v30 = v14;
      _os_log_impl(&dword_199A75000, v24, OS_LOG_TYPE_INFO, "Found undefined placement for action with title %@", &v29, 0xCu);
    }
  }

  if (v15)
  {
    v27 = [v16 addActionWithTitle:v14 menuProvider:v15 destructive:v8];
  }

  else
  {
    v28 = [v16 addActionWithTitle:v14 target:v18 selector:sel_performActionWithSender_ destructive:v8];
  }

  [(CNContactContentDisplayViewController *)self setNeedsReload];
}

- (int64_t)sectionOfGroup:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentDisplayViewController *)self _currentGroups];
  v6 = v5;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5)
  {
    v8 = [v5 indexOfObject:v4];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(CNContactContentDisplayViewController *)self tableViewSectionIndexFromGroupIndex:v8];
    }
  }

  return v7;
}

- (id)cardGroupForProperty:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentDisplayViewController *)self propertyGroups];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)reloadDataPreservingChanges:(BOOL)a3
{
  v3 = a3;
  v51 = *MEMORY[0x1E69E9840];
  if (![(CNContactContentDisplayViewController *)self isViewLoaded])
  {
    return;
  }

  [(CNContactContentDisplayViewController *)self isOutOfProcess];
  self->_needsReload = 0;
  v5 = [(CNContactContentDisplayViewController *)self contactStore];

  if (!v5)
  {
    v6 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    v7 = [v6 contactStore];

    if (v7)
    {
      v8 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
      v9 = [v8 contactStore];
    }

    else
    {
      v11 = [(CNContactContentDisplayViewController *)self originalContacts];
      v8 = [v11 _cn_filter:&__block_literal_global_59599];

      if ([v8 count])
      {
        v12 = 7;
      }

      else
      {
        v12 = 1;
      }

      v13 = [(CNContactContentDisplayViewController *)self managedConfiguration];

      if (v13)
      {
        v14 = objc_alloc(MEMORY[0x1E695CE18]);
        v10 = [(CNContactContentDisplayViewController *)self environment];
        v15 = [v10 cnEnvironment];
        v16 = [(CNContactContentDisplayViewController *)self managedConfiguration];
        v17 = [v14 initWithEnvironment:v15 options:v12 managedConfiguration:v16];
        [(CNContactContentDisplayViewController *)self setContactStore:v17];

        goto LABEL_11;
      }

      v9 = [MEMORY[0x1E695CE18] storeWithOptions:v12];
    }

    v10 = v9;
    [(CNContactContentDisplayViewController *)self setContactStore:v9];
LABEL_11:
  }

  if (![(CNContactContentDisplayViewController *)self mode])
  {
    v18 = [(CNContactContentDisplayViewController *)self parentViewController];
    objc_getClass("ABNewPersonViewController");
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(CNContactContentDisplayViewController *)self setMode:3];
    }
  }

  if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] != 3)
  {
    v20 = CNUILogContactCard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v20, OS_LOG_TYPE_ERROR, "CNContactContentViewController does not have authorization to access contacts.", buf, 2u);
    }
  }

  v21 = [(CNContactContentDisplayViewController *)self shadowCopyOfReadonlyContact];

  if (!v21)
  {
    v22 = [(CNContactContentDisplayViewController *)self contact];
    v23 = [(CNContactContentDisplayViewController *)self _policyForContact:v22 mode:[(CNContactContentDisplayViewController *)self mode]];
    [(CNContactContentDisplayViewController *)self setPolicy:v23];
  }

  v24 = [(CNContactContentDisplayViewController *)self contact];
  v25 = [v24 isUnified];

  if (v25)
  {
    v26 = [MEMORY[0x1E695DF90] dictionary];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = [(CNContactContentDisplayViewController *)self contact];
    v28 = [v27 linkedContacts];

    v29 = [v28 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v46;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v45 + 1) + 8 * i);
          v34 = [(CNContactContentDisplayViewController *)self _policyForContact:v33 mode:[(CNContactContentDisplayViewController *)self mode]];
          if (v34)
          {
            v35 = [v33 identifier];
            [v26 setObject:v34 forKey:v35];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v30);
    }

    v36 = [v26 copy];
    [(CNContactContentDisplayViewController *)self setLinkedPoliciesByContactIdentifier:v36];
  }

  v37 = [(CNContactContentDisplayViewController *)self iMessageIDSLookupToken];
  [v37 cancel];

  v38 = [(CNContactContentDisplayViewController *)self faceTimeIDSLookupToken];
  [v38 cancel];

  if (!self->_propertyGroups)
  {
    v39 = [(CNContactContentDisplayViewController *)self _loadPropertyGroups];
    propertyGroups = self->_propertyGroups;
    self->_propertyGroups = v39;
  }

  if (([MEMORY[0x1E695CD58] quickActionsEnabled] & 1) == 0)
  {
    [(CNContactContentDisplayViewController *)self _reloadFaceTimeGroup];
  }

  [(CNContactContentDisplayViewController *)self _reloadGeminiGroupPreservingChanges:v3];
  [(CNContactContentDisplayViewController *)self _reloadPropertyGroupsPreservingChanges:v3];
  [(CNContactContentDisplayViewController *)self _reloadMedicalIDGroup];
  [(CNContactContentDisplayViewController *)self _reloadAlertGroups];
  [(CNContactContentDisplayViewController *)self setupActionsPreservingChanges:v3];
  [(CNContactContentDisplayViewController *)self _reloadLinkedCardsGroup];
  v41 = [(CNContactContentDisplayViewController *)self _loadDisplayGroups];
  [(CNContactContentDisplayViewController *)self setDisplayGroups:v41];

  [(CNContactContentDisplayViewController *)self _setNeedsUpdateCachedLabelWidths];
  [(CNContactContentDisplayViewController *)self _updateAvailableTransports];
  v42 = [(CNContactContentDisplayViewController *)self contactView];
  [v42 reloadData];

  v43 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v43 reloadDataPreservingChanges:v3];

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __69__CNContactContentDisplayViewController_reloadDataPreservingChanges___block_invoke_380;
  v44[3] = &unk_1E74E6A88;
  v44[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v44];
  [(CNContactContentDisplayViewController *)self _updateUserActivity];
  [(CNContactContentDisplayViewController *)self adjustPreferredContentSize];
}

- (void)setPersonHeaderViewController:(id)a3
{
  v5 = a3;
  personHeaderViewController = self->_personHeaderViewController;
  if (v5 | personHeaderViewController)
  {
    v8 = v5;
    personHeaderViewController = [personHeaderViewController isEqual:v5];
    v5 = v8;
    if ((personHeaderViewController & 1) == 0)
    {
      if (self->_personHeaderViewController)
      {
        [(CNContactContentDisplayViewController *)self removeFirstSectionHeaderViewControllerFromHierarchy];
      }

      objc_storeStrong(&self->_personHeaderViewController, a3);
      personHeaderViewController = [(CNContactContentDisplayViewController *)self isViewLoaded];
      v5 = v8;
      if (personHeaderViewController)
      {
        v7 = [(CNContactContentDisplayViewController *)self contactView];
        [v7 reloadData];

        v5 = v8;
      }
    }
  }

  MEMORY[0x1EEE66BB8](personHeaderViewController, v5);
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
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactContentDisplayViewController *)self contact];
  if (v3)
  {
    v4 = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    v5 = [(CNContactContentDisplayViewController *)self contact];
    v6 = [v4 isMeContact:v5];

    v7 = CNUILogContactCard();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [v3 identifier];
        *buf = 138543362;
        v23 = v9;
        _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it the me card, identifier %{public}@", buf, 0xCu);
      }

      v10 = [(CNContactContentDisplayViewController *)self contactStore];
      v11 = [objc_opt_class() descriptorForRequiredKeysForContact:v3];
      v31[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v21 = 0;
      v13 = [v10 _crossPlatformUnifiedMeContactWithKeysToFetch:v12 error:&v21];
      v14 = v21;
    }

    else
    {
      if (v8)
      {
        v15 = [v3 identifier];
        *buf = 138543362;
        v23 = v15;
        _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it not the me card, identifier %{public}@", buf, 0xCu);
      }

      v10 = [(CNContactContentDisplayViewController *)self contactStore];
      v11 = [v3 identifier];
      v12 = [objc_opt_class() descriptorForRequiredKeysForContact:v3];
      v30 = v12;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
      v20 = 0;
      v13 = [v10 unifiedContactWithIdentifier:v11 keysToFetch:v16 error:&v20];
      v14 = v20;
    }

    if (v14 || !v13)
    {
      v17 = CNUILogContactCard();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v3 identifier];
        v19 = [(CNContactContentDisplayViewController *)self contactStore];
        *buf = 138413058;
        v23 = v18;
        v24 = 2112;
        v25 = v14;
        v26 = 2112;
        v27 = v19;
        v28 = 2112;
        v29 = v3;
        _os_log_error_impl(&dword_199A75000, v17, OS_LOG_TYPE_ERROR, "Error refetching contact with identifier %@, %@, store %@, full contact %@", buf, 0x2Au);
      }
    }

    else if (([v13 isEqual:v3] & 1) == 0)
    {
      [(CNContactContentDisplayViewController *)self setContact:v13];
    }
  }
}

- (void)contactStoreDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = [(CNUIContactsEnvironment *)self->_environment defaultSchedulerProvider];
  v6 = [v5 mainThreadScheduler];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__CNContactContentDisplayViewController_contactStoreDidChangeWithNotification___block_invoke;
  v8[3] = &unk_1E74E77C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 performBlock:v8];
}

void __79__CNContactContentDisplayViewController_contactStoreDidChangeWithNotification___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) shouldIgnoreContactStoreDidChangeNotification] & 1) == 0)
  {
    v2 = [*(a1 + 40) userInfo];
    v13 = [v2 objectForKey:*MEMORY[0x1E695CBF0]];

    v3 = [*(a1 + 40) userInfo];
    v4 = [v3 objectForKey:*MEMORY[0x1E695CBF8]];

    v5 = [MEMORY[0x1E695DFD8] setWithArray:v4];
    v6 = MEMORY[0x1E695DFD8];
    v7 = [*(a1 + 32) issuedSaveRequestIdentifiers];
    v8 = [v6 setWithArray:v7];

    if (v13 && ([v13 BOOLValue] & 1) != 0 || !objc_msgSend(v8, "count") || !objc_msgSend(v5, "count") || (objc_msgSend(v5, "isSubsetOfSet:", v8) & 1) == 0)
    {
      if ([*(a1 + 32) isViewLoaded] && (objc_msgSend(*(a1 + 32), "view"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "window"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
      {
        *(*(a1 + 32) + 1001) = 1;
      }

      else
      {
        v11 = *(a1 + 32);
        if ((v11[1003] & 1) == 0)
        {
          v12 = [v11 contactViewCache];
          [v12 resetCache];

          [*(a1 + 32) _refetchContact];
        }
      }
    }
  }
}

- (void)adjustInsetsForKeyboardOverlap:(double)a3
{
  [(CNContactContentDisplayViewController *)self setKeyboardVerticalOverlap:a3];

  [(CNContactContentDisplayViewController *)self updateInsetsIfNeeded];
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

  v31 = [(CNContactContentDisplayViewController *)self view];
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
  [(CNContactContentDisplayViewController *)self adjustInsetsForKeyboardOverlap:CGRectGetHeight(v34)];
}

- (void)setContact:(id)a3
{
  v109[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  self->_needsRefetch = 0;
  if (self->_contact == v4)
  {
    goto LABEL_40;
  }

  v6 = [(CNContact *)v4 identifier];
  v7 = [(CNContact *)self->_contact identifier];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(CNContactContentDisplayViewController *)self setDidSetNewContact:1];
  }

  v9 = [(CNContactContentDisplayViewController *)self environment];
  v10 = [v9 defaultSchedulerProvider];

  [v10 suspendBackgroundScheduler];
  v11 = [v10 afterCACommitScheduler];
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __52__CNContactContentDisplayViewController_setContact___block_invoke;
  v99[3] = &unk_1E74E6A88;
  v12 = v10;
  v100 = v12;
  [v11 performBlock:v99];

  v13 = [(CNContactContentDisplayViewController *)self contactViewCache];
  [v13 resetCache];

  LODWORD(v11) = [(CNContactContentDisplayViewController *)self isOutOfProcess];
  v14 = [objc_opt_class() descriptorForRequiredKeys];
  v15 = v14;
  if (v11)
  {
    v109[0] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:1];
    v17 = [(CNContactContentDisplayViewController *)self _updateContact:v5 withMissingKeysFromRequiredKeys:v16];

    v5 = v17;
  }

  else
  {
    v108 = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
    [v5 assertKeysAreAvailable:v16];
  }

  v18 = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  [v18 updateWithContact:v5];

  v19 = [(CNContactContentDisplayViewController *)self contactViewCache];
  v20 = [v19 policyForContact:v5];

  if ([v20 isReadonly])
  {
    v92 = v12;
    v21 = [(CNContactContentDisplayViewController *)self contactStore];
    v22 = [v5 identifier];
    v23 = [objc_opt_class() descriptorForRequiredKeysForContact:v5];
    v107 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
    v98 = 0;
    v25 = [v21 unifiedContactWithIdentifier:v22 keysToFetch:v24 error:&v98];
    v91 = v98;

    if (v25)
    {
      v26 = v25;

      v27 = [(CNContactContentDisplayViewController *)self contactViewCache];
      v28 = [v27 policyForContact:v26];

      v20 = v28;
      if ([v28 isReadonly])
      {
        v90 = v28;
        v29 = objc_alloc_init(MEMORY[0x1E695CF18]);
        v30 = [v26 availableKeyDescriptor];
        v106 = v30;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
        v32 = [v29 copyWithPropertyKeys:v31];
        v33 = [v32 mutableCopy];
        [(CNContactContentDisplayViewController *)self setShadowCopyOfReadonlyContact:v33];

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v34 = +[CNContactView nameProperties];
        v35 = [v34 countByEnumeratingWithState:&v94 objects:v105 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v95;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v95 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v94 + 1) + 8 * i);
              if ([v26 isKeyAvailable:v39])
              {
                v40 = [(CNContactContentDisplayViewController *)self shadowCopyOfReadonlyContact];
                v41 = [v26 valueForKey:v39];
                [v40 setValue:v41 forKey:v39];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v94 objects:v105 count:16];
          }

          while (v36);
        }

        v42 = MEMORY[0x1E695DF70];
        v43 = [(CNContactContentDisplayViewController *)self shadowCopyOfReadonlyContact];
        v44 = [v42 arrayWithObject:v43];

        v45 = v91;
        if ([v26 isUnified])
        {
          v46 = [v26 linkedContacts];
          [v44 addObjectsFromArray:v46];
        }

        else
        {
          [v44 addObject:v26];
        }

        v12 = v92;
        v5 = [MEMORY[0x1E695CD58] unifyContacts:v44];

        v47 = [(CNContactContentDisplayViewController *)self contactViewCache];
        v48 = [v47 policyForDefaultContainer];
        [(CNContactContentDisplayViewController *)self setPolicy:v48];

        v49 = [(CNContactContentDisplayViewController *)self policy];

        if (!v49 || v91)
        {
          v50 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
          [(CNContactContentDisplayViewController *)self setPolicy:v50];
        }

        v20 = v90;
        goto LABEL_28;
      }

      v5 = v26;
    }

    v12 = v92;
    v45 = v91;
LABEL_28:
  }

  objc_storeStrong(&self->_contact, v5);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v52 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    v52 = [v5 mutableCopy];
  }

  objc_storeStrong(&self->_mutableContact, v52);
  if ((isKindOfClass & 1) == 0)
  {
  }

  v53 = CNUILogContactCard();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = [v5 identifier];
    mutableContact = self->_mutableContact;
    *buf = 138543618;
    v102 = v54;
    v103 = 2050;
    v104 = mutableContact;
    _os_log_impl(&dword_199A75000, v53, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] setting contact with identifier %{public}@, mutable contact %{public}p", buf, 0x16u);
  }

  v56 = [(CNContactContentDisplayViewController *)self customActions];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __52__CNContactContentDisplayViewController_setContact___block_invoke_368;
  v93[3] = &unk_1E74E6AF8;
  v93[4] = self;
  v57 = [v56 _cn_filter:v93];
  [(CNContactContentDisplayViewController *)self setCustomActions:v57];

  v58 = [[CNCardGroup alloc] initWithContact:self->_mutableContact];
  cardTopGroup = self->_cardTopGroup;
  self->_cardTopGroup = v58;

  v60 = [[CNCardGroup alloc] initWithContact:self->_mutableContact];
  cardBottomGroup = self->_cardBottomGroup;
  self->_cardBottomGroup = v60;

  [(CNCardGroup *)self->_cardBottomGroup setAddSpacerFromPreviousGroup:1];
  v62 = [[CNCardGroup alloc] initWithContact:self->_mutableContact];
  cardActionsGroup = self->_cardActionsGroup;
  self->_cardActionsGroup = v62;

  v64 = [(CNCardGroup *)[CNCardNamePickingGroup alloc] initWithContact:self->_contact];
  namePickingGroup = self->_namePickingGroup;
  self->_namePickingGroup = v64;

  v66 = [[CNCardGroup alloc] initWithContact:self->_mutableContact];
  cardShareLocationGroup = self->_cardShareLocationGroup;
  self->_cardShareLocationGroup = v66;

  v68 = [[CNCardGroup alloc] initWithContact:self->_mutableContact];
  cardBlockContactGroup = self->_cardBlockContactGroup;
  self->_cardBlockContactGroup = v68;

  [(CNCardGroup *)self->_cardBlockContactGroup setAddSpacerFromPreviousGroup:1];
  v70 = [[CNCardGroup alloc] initWithContact:self->_mutableContact];
  cardFooterGroup = self->_cardFooterGroup;
  self->_cardFooterGroup = v70;

  [(CNCardGroup *)self->_cardFooterGroup setAddSpacerFromPreviousGroup:1];
  propertyGroups = self->_propertyGroups;
  self->_propertyGroups = 0;

  v73 = [(CNContactContentDisplayViewController *)self siriContextProvider];
  LODWORD(v57) = [v73 isEnabled];

  v74 = [CNSiriContactContextProvider alloc];
  v75 = [(CNContactContentDisplayViewController *)self contactStore];
  v76 = [(CNSiriContactContextProvider *)v74 initWithContact:v5 store:v75];
  [(CNContactContentDisplayViewController *)self setSiriContextProvider:v76];

  if (v57)
  {
    v77 = [(CNContactContentDisplayViewController *)self siriContextProvider];
    [v77 setEnabled:1];
  }

  [(CNContactContentDisplayViewController *)self setActionProvider:0];
  [(CNContactContentDisplayViewController *)self setCardFaceTimeGroup:0];
  [(CNContactContentDisplayViewController *)self setBlockAction:0];
  [(CNContactContentDisplayViewController *)self setIgnoreContactAction:0];
  [(CNContactContentDisplayViewController *)self setCardMedicalIDGroup:0];
  [(CNContactContentDisplayViewController *)self setMedicalIDAction:0];
  [(CNContactContentDisplayViewController *)self setEmergencyContactAction:0];
  v78 = [(CNContactContentDisplayViewController *)self geminiDataSource];
  [v78 setContact:v5];

  [(CNContactContentDisplayViewController *)self isOutOfProcess];
  v79 = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  v80 = [v79 shouldPromptForPasscodeAuthorization];
  v81 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v81 setIsRestrictedContact:v80];

  v82 = [MEMORY[0x1E695CE70] isWhitelistedContact:self->_mutableContact];
  v83 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v83 setIsDowntimeContact:v82];

  v84 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v84 updateWithNewContact:self->_mutableContact];

  [(CNContactContentDisplayViewController *)self updateEditNavigationItemsAnimated:0];
  [(CNContactContentDisplayViewController *)self setContactSupportsTTYCalls:0];
  v85 = [(CNContactContentDisplayViewController *)self shareLocationController];
  [v85 setContact:v5];

  v86 = [(CNContactContentDisplayViewController *)self actionsViewController];
  [v86 setContact:v5];

  [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:0];
  if ([(CNContactContentDisplayViewController *)self isViewLoaded])
  {
    v87 = [(CNContactContentDisplayViewController *)self contactView];
    [(CNContactContentDisplayViewController *)self scrollScrollViewAllTheWayUp:v87];
  }

  v88 = +[CNUIDataCollector sharedCollector];
  v89 = [(CNContactContentDisplayViewController *)self contact];
  [v88 logContactShown:v89];

  [(CNContactContentDisplayViewController *)self prepareContactDidAppearForPPT];
LABEL_40:
}

- (void)prepareCell:(id)a3
{
  v41 = a3;
  v4 = [(CNContactContentDisplayViewController *)self contactView];
  [v4 applyCellAppearance:v41];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  objc_opt_class();
  v5 = v41;
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
LABEL_15:

    v9 = v12;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v13 = v5;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = [(CNContactContentDisplayViewController *)self actionsDataSource];
    [v15 setActionsDataSource:v16];

    v17 = [(CNContactContentDisplayViewController *)self contact];
    [v15 setContact:v17];

    v12 = [v4 valueTextAttributes];

    v9 = v15;
    goto LABEL_15;
  }

LABEL_16:
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v18 = [(CNContactContentDisplayViewController *)self view];
    v19 = [v18 tintColorOverride];
    v20 = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v5;
    if ([v26 supportsValueColorUsesLabelColor])
    {
      v27 = +[CNContactStyle currentStyle];
      v19 = [v27 textColor];
    }

    else
    {
      v19 = 0;
    }

    v28 = [(CNContactContentDisplayViewController *)self highlightedProperties];
    if ([v28 count])
    {
      v29 = [(CNContactContentDisplayViewController *)self highlightedProperties];
      v39 = [v26 propertyItem];
      v40 = v28;
      [v39 contactProperty];
      v31 = v30 = v26;
      [v30 setHighlightedProperty:{objc_msgSend(v29, "containsObject:", v31)}];

      v26 = v30;
      v28 = v40;
    }

    else
    {
      [v26 setHighlightedProperty:0];
    }

    if ([v26 isSuggested])
    {
      v32 = +[CNContactStyle currentStyle];
      v20 = [v32 suggestedLabelTextColor];

      v33 = +[CNContactStyle currentStyle];
      v34 = [v33 suggestedValueTextColor];
    }

    else
    {
      if ([v26 isHighlightedProperty] && -[CNContactContentDisplayViewController highlightedPropertyImportant](self, "highlightedPropertyImportant"))
      {
        [v26 setImportant:{-[CNContactContentDisplayViewController highlightedPropertyImportant](self, "highlightedPropertyImportant")}];
        v34 = [MEMORY[0x1E69DC888] redColor];
        v20 = 0;
LABEL_49:

        v19 = v34;
        goto LABEL_50;
      }

      if (![v26 supportsTintColorValue])
      {
        v20 = 0;
LABEL_50:
        if ([v26 isHighlightedProperty])
        {
          if (([v26 isImportant] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              v35 = v26;
              if (objc_opt_isKindOfClass())
              {
                v36 = v35;
              }

              else
              {
                v36 = 0;
              }

              v37 = v36;

              [v37 setShouldShowBadge:1];
            }
          }
        }

        if (!v20)
        {
LABEL_21:
          if (v19)
          {
            v21 = [v10 mutableCopy];
            [v21 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69DB650]];

            v10 = v21;
          }

          if (isKindOfClass)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        v38 = [v9 mutableCopy];
        [v38 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69DB650]];
        v18 = v9;
        v9 = v38;
LABEL_20:

        goto LABEL_21;
      }

      v33 = [(CNContactContentDisplayViewController *)self view];
      v34 = [v33 tintColorOverride];

      v20 = 0;
    }

    v19 = v33;
    goto LABEL_49;
  }

  v20 = 0;
  if (isKindOfClass)
  {
    goto LABEL_25;
  }

LABEL_24:
  v22 = [v7 labelTextAttributes];
  v23 = [v22 isEqual:v9];

  if ((v23 & 1) == 0)
  {
LABEL_25:
    [v7 setLabelTextAttributes:v9];
  }

  v24 = [v7 valueTextAttributes];
  v25 = [v24 isEqual:v10];

  if ((v25 & 1) == 0)
  {
    [v7 setValueTextAttributes:v10];
  }

LABEL_29:
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [(CNContactContentDisplayViewController *)self contactView];
  [v4 updateFontSizes];

  v5 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v5 updateFontSizes];

  [(CNContactView *)self->_contactView setTableHeaderView:0];
  [(CNContactInlineActionsViewController *)self->_actionsViewController willMoveToParentViewController:0];
  [(CNContactInlineActionsViewController *)self->_actionsViewController removeFromParentViewController];
  v6 = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
  [v6 removeFromSuperview];

  v7 = [(CNContactContentDisplayViewController *)self createActionsController];
  actionsViewController = self->_actionsViewController;
  self->_actionsViewController = v7;

  [(CNContactInlineActionsViewController *)self->_actionsViewController setObjectViewControllerDelegate:self];
  [(CNContactInlineActionsViewController *)self->_actionsViewController setDelegate:self];
  [(CNContactContentDisplayViewController *)self addChildViewController:self->_actionsViewController];
  [(CNContactInlineActionsViewController *)self->_actionsViewController didMoveToParentViewController:self];
  actionsWrapperView = self->_actionsWrapperView;
  v10 = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
  [(CNContactActionsContainerView *)actionsWrapperView addArrangedSubview:v10];

  [(CNContactContentDisplayViewController *)self viewDidLayoutSubviews];
  [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:1];
  [(CNContactContentDisplayViewController *)self setupConstraints];
  v11 = [(CNContactContentDisplayViewController *)self applyContactStyle];
}

- (NSArray)cardActions
{
  v2 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
  v3 = [v2 actions];

  return v3;
}

- (BOOL)isOutOfProcess
{
  v2 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v3 = [v2 isOutOfProcess];

  return v3;
}

- (id)createActionsController
{
  v3 = [CNContactInlineActionsViewController alloc];
  actionsDataSource = self->_actionsDataSource;
  v5 = [(CNContactContentDisplayViewController *)self environment];
  v6 = [(CNContactInlineActionsViewController *)v3 initWithActionListDataSource:actionsDataSource environment:v5];

  [(CNContactInlineActionsViewController *)v6 setDisplaysTitles:1];
  [(CNContactInlineActionsViewController *)v6 setDisplaysUnavailableActionTypes:1];
  v7 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if ([v7 showsInlineActions])
  {
    v8 = [(CNContactContentDisplayViewController *)self isContactBlocked];

    if (!v8)
    {
      v9 = [MEMORY[0x1E6996BE8] allSupportedActionTypes];
      [(CNContactInlineActionsViewController *)v6 setSupportedActionTypes:v9];

      goto LABEL_6;
    }
  }

  else
  {
  }

  [(CNContactInlineActionsViewController *)v6 setSupportedActionTypes:MEMORY[0x1E695E0F0]];
LABEL_6:
  v10 = [(CNContactInlineActionsViewController *)v6 view];
  LODWORD(v11) = 1148846080;
  [v10 setContentCompressionResistancePriority:0 forAxis:v11];

  return v6;
}

- (BOOL)isHeaderViewPhotoProhibited
{
  v3 = [(CNContactContentDisplayViewController *)self prohibitedPropertyKeys];
  if ([v3 containsObject:*MEMORY[0x1E695C278]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CNContactContentDisplayViewController *)self prohibitedPropertyKeys];
    v4 = [v5 containsObject:*MEMORY[0x1E695C400]];
  }

  return v4;
}

- (CNContactView)contactView
{
  contactView = self->_contactView;
  if (!contactView)
  {
    v4 = [CNContactView alloc];
    v5 = [objc_opt_class() tableViewStyle];
    v6 = [(CNContactContentDisplayViewController *)self contact];
    v7 = [(CNContactView *)v4 initWithFrame:v5 style:v6 contact:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v8 = self->_contactView;
    self->_contactView = v7;

    [(CNContactView *)self->_contactView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactView *)self->_contactView setDataSource:self];
    [(CNContactView *)self->_contactView setDelegate:self];
    [(CNContactView *)self->_contactView _setHeaderAndFooterViewsFloat:0];
    contactView = self->_contactView;
  }

  return contactView;
}

- (CNContactHeaderDisplayView)contactHeaderView
{
  contactHeaderView = self->_contactHeaderView;
  if (!contactHeaderView)
  {
    v4 = [(CNContactContentDisplayViewController *)self isHeaderViewPhotoProhibited];
    v5 = [(CNContactContentDisplayViewController *)self mutableContact];
    v6 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    v7 = +[CNContactHeaderDisplayView contactHeaderViewWithContact:showingNavBar:monogramOnly:delegate:](CNContactHeaderDisplayView, "contactHeaderViewWithContact:showingNavBar:monogramOnly:delegate:", v5, [v6 layoutPositionallyAfterNavBar], v4, self);
    v8 = self->_contactHeaderView;
    self->_contactHeaderView = v7;

    [(CNContactHeaderView *)self->_contactHeaderView setAlwaysShowsMonogram:1];
    v9 = [(CNContactContentDisplayViewController *)self contactFormatter];
    [(CNContactHeaderDisplayView *)self->_contactHeaderView setContactFormatter:v9];

    v10 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    v11 = [v10 alternateName];
    [(CNContactHeaderDisplayView *)self->_contactHeaderView setAlternateName:v11];

    v12 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    v13 = [v12 message];
    [(CNContactHeaderDisplayView *)self->_contactHeaderView setMessage:v13];

    v14 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    v15 = [v14 importantMessage];
    [(CNContactHeaderDisplayView *)self->_contactHeaderView setImportantMessage:v15];

    v16 = [(CNContactContentDisplayViewController *)self presentingDelegate];
    [(CNContactHeaderView *)self->_contactHeaderView setPresenterDelegate:v16];

    [(CNContactHeaderDisplayView *)self->_contactHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    -[CNContactHeaderDisplayView setAllowsPickerActions:](self->_contactHeaderView, "setAllowsPickerActions:", [v17 allowsDisplayModePickerActions]);

    v18 = [(CNContactContentDisplayViewController *)self applyContactStyle];
    contactHeaderView = self->_contactHeaderView;
  }

  return contactHeaderView;
}

- (void)contactViewConfigurationDidUpdate
{
  v3 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  v4 = [v3 contactStore];

  v5 = [(CNContactContentDisplayViewController *)self actionsDataSource];
  [v5 setContactStore:v4];

  v6 = [(CNContactContentDisplayViewController *)self contactViewCache];
  [v6 setContactStore:v4];

  v7 = CNUILogContactCard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_debug_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEBUG, "display contactViewConfigurationDidUpdate", v15, 2u);
  }

  [(CNContactContentDisplayViewController *)self reloadDataIfNeeded];
  v8 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  v9 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  [v8 updateForShowingNavBar:{objc_msgSend(v9, "layoutPositionallyAfterNavBar")}];

  v10 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  v11 = [(CNContactContentDisplayViewController *)self mutableContact];
  [v10 updateWithNewContact:v11];

  v12 = [(CNContactContentDisplayViewController *)self shouldShowGemini];
  v13 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [v13 setShouldShowGemini:v12];

  [(CNContactContentDisplayViewController *)self updateEditNavigationItemsAnimated:0];
  v14 = [(CNContactContentDisplayViewController *)self applyContactStyle];
}

- (void)dealloc
{
  v13[1] = *MEMORY[0x1E69E9840];
  [(CNContactView *)self->_contactView setDelegate:0];
  [(CNContactView *)self->_contactView setDataSource:0];
  [(CNContactHeaderView *)self->_contactHeaderView setDelegate:0];
  [(CNContactHeaderDisplayView *)self->_contactHeaderView didFinishUsing];
  v3 = [(CNContactContentDisplayViewController *)self headerHeightConstraint];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v5 = [(CNContactContentDisplayViewController *)self headerHeightConstraint];
    v13[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v4 deactivateConstraints:v6];
  }

  actionsDataSource = self->_actionsDataSource;
  self->_actionsDataSource = 0;

  actionProvider = self->_actionProvider;
  self->_actionProvider = 0;

  v9 = [(CNContactContentDisplayViewController *)self iMessageIDSLookupToken];
  [v9 cancel];

  v10 = [(CNContactContentDisplayViewController *)self faceTimeIDSLookupToken];
  [v10 cancel];

  v11 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v11 removeObserver:self];

  v12.receiver = self;
  v12.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v12 dealloc];
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
    v9[2] = __72__CNContactContentDisplayViewController_setForcesTransparentBackground___block_invoke;
    v9[3] = &unk_1E74E6A88;
    v9[4] = self;
    [v8 performBlock:v9];
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (v5 || ([(CNContactContentDisplayViewController *)self title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(CNContactContentDisplayViewController *)self title];
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
      v8.super_class = CNContactContentDisplayViewController;
      [(CNContactContentDisplayViewController *)&v8 setTitle:v5];
      [(CNContactContentDisplayViewController *)self didChangeToShowTitle:v5 != 0];
    }
  }

LABEL_6:
}

- (void)setContactStore:(id)a3
{
  objc_storeStrong(&self->_contactStore, a3);
  v5 = a3;
  v6 = [(CNContactContentDisplayViewController *)self actionsDataSource];
  [v6 setContactStore:v5];

  v7 = [(CNContactContentDisplayViewController *)self contactViewCache];
  [v7 setContactStore:v5];
}

- (CNContactContentDisplayViewController)initWithContact:(id)a3 contactViewConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNContactContentDisplayViewController *)self initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(CNContactContentDisplayViewController *)v8 setContact:v6];
    [(CNContactContentDisplayViewController *)v9 setContactViewConfiguration:v7];
    [(CNContactContentDisplayViewController *)v9 contactViewConfigurationDidUpdate];
  }

  return v9;
}

- (CNContactContentDisplayViewController)initWithEnvironment:(id)a3
{
  v54[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v53.receiver = self;
  v53.super_class = CNContactContentDisplayViewController;
  v6 = [(CNContactContentDisplayViewController *)&v53 initWithNibName:0 bundle:0];
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

  objc_storeWeak(&v6->_presentingDelegate, v6);
  v14 = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  contactFormatter = v6->_contactFormatter;
  v6->_contactFormatter = v14;

  v16 = +[CNContactView allCardProperties];
  displayedProperties = v6->_displayedProperties;
  v6->_displayedProperties = v16;

  v18 = objc_alloc(MEMORY[0x1E6996BE8]);
  v19 = [v5 actionDiscoveringEnvironment];
  v20 = [v18 initWithDiscoveringEnvironment:v19];
  actionsDataSource = v6->_actionsDataSource;
  v6->_actionsDataSource = v20;

  v22 = [(CNContactContentDisplayViewController *)v6 createActionsController];
  actionsViewController = v6->_actionsViewController;
  v6->_actionsViewController = v22;

  [(CNContactInlineActionsViewController *)v6->_actionsViewController setObjectViewControllerDelegate:v6];
  [(CNContactInlineActionsViewController *)v6->_actionsViewController setDelegate:v6];
  [(CNContactContentDisplayViewController *)v6 addChildViewController:v6->_actionsViewController];
  [(CNContactInlineActionsViewController *)v6->_actionsViewController didMoveToParentViewController:v6];
  v24 = [CNContactActionsContainerView alloc];
  v25 = [(CNContactInlineActionsViewController *)v6->_actionsViewController view];
  v54[0] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  v27 = [(CNContactActionsContainerView *)v24 initWithArrangedSubviews:v26];
  actionsWrapperView = v6->_actionsWrapperView;
  v6->_actionsWrapperView = v27;

  [(CNContactActionsContainerView *)v6->_actionsWrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = *MEMORY[0x1E698B6F8];
  v30 = [(CNContactInlineActionsViewController *)v6->_actionsViewController view];
  [v30 setMinimumLayoutSize:{v29, 35.0}];

  v31 = objc_opt_new();
  headerDropShadowView = v6->_headerDropShadowView;
  v6->_headerDropShadowView = v31;

  [(UIView *)v6->_headerDropShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [(CNContactContentDisplayViewController *)v6 environment];
  if ([v33 runningInContactsAppOniPad])
  {
    v34 = [(UIView *)v6->_headerDropShadowView backgroundColor];
    [(UIView *)v6->_headerDropShadowView setBackgroundColor:v34];
  }

  else
  {
    v34 = +[CNContactStyle currentStyle];
    v35 = [v34 contactHeaderDropShadowColor];
    [(UIView *)v6->_headerDropShadowView setBackgroundColor:v35];
  }

  v36 = [v5 inProcessActivityManager];
  activityManager = v6->_activityManager;
  v6->_activityManager = v36;

  v38 = [MEMORY[0x1E695DEC8] array];
  customActions = v6->_customActions;
  v6->_customActions = v38;

  v40 = objc_alloc_init(CNUIContactStoreLinkedContactSaveExecutor);
  saveLinkedContactsExecutor = v6->_saveLinkedContactsExecutor;
  v6->_saveLinkedContactsExecutor = v40;

  [(CNContactContentDisplayViewController *)v6 setNeedsReloadLazy];
  v42 = [MEMORY[0x1E696AD88] defaultCenter];
  [v42 addObserver:v6 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  v43 = [MEMORY[0x1E696AD88] defaultCenter];
  [v43 addObserver:v6 selector:sel_localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

  v44 = [MEMORY[0x1E696AD88] defaultCenter];
  [v44 addObserver:v6 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E695C3D8] object:0];

  v45 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v45 addObserver:v6 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E6996440] object:0 suspensionBehavior:4];

  v46 = [MEMORY[0x1E696AD88] defaultCenter];
  [v46 addObserver:v6 selector:sel_keyboardDidShowNotification_ name:*MEMORY[0x1E69DDF78] object:0];

  v47 = [MEMORY[0x1E696AD88] defaultCenter];
  [v47 addObserver:v6 selector:sel_keyboardWillHideNotification_ name:*MEMORY[0x1E69DE078] object:0];

  v48 = [MEMORY[0x1E696AD88] defaultCenter];
  [v48 addObserver:v6 selector:sel_favoritesDidChangeWithNotification_ name:*MEMORY[0x1E695C458] object:0];

  [(CNContactContentDisplayViewController *)v6 setRestorationIdentifier:@"ContactCard"];
  [(CNContactContentDisplayViewController *)v6 setRestorationClass:objc_opt_class()];
  v49 = [(CNContactContentDisplayViewController *)v6 navigationItem];
  [v49 _setBackgroundHidden:1];

  v50 = [(CNContactContentDisplayViewController *)v6 navigationItem];
  [v50 setLargeTitleDisplayMode:2];

  v51 = [(CNContactContentDisplayViewController *)v6 applyContactStyle];
  return v6;
}

- (CNContactContentDisplayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = [CNUIContactsEnvironment currentEnvironment:a3];
  v6 = [(CNContactContentDisplayViewController *)self initWithEnvironment:v5];

  return v6;
}

+ (CNContactContentDisplayViewController)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v7 = MEMORY[0x1E695CD58];
  v8 = +[CNContactContentViewController descriptorForRequiredKeys];
  v26[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v10 = [v7 contactWithStateRestorationCoder:v5 store:v6 keys:v9];

  if (v10)
  {
    v20 = v6;
    v11 = [[CNContactContentViewController alloc] initWithContact:v10];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [a1 BOOLStateRestorationProperties];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [v5 decodeObjectOfClass:objc_opt_class() forKey:v17];
          if (v18)
          {
            [(CNContactContentViewController *)v11 setValue:v18 forKey:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    v6 = v20;
  }

  else
  {
    v11 = 0;
  }

  return v11;
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

+ (BOOL)actionModelIncludesTTY:(id)a3
{
  v3 = [a3 allActions];
  v4 = [v3 _cn_any:&__block_literal_global_673];

  return v4;
}

uint64_t __64__CNContactContentDisplayViewController_actionModelIncludesTTY___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  if ([v3 isEqual:*MEMORY[0x1E695C190]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 type];
    v4 = [v5 isEqual:*MEMORY[0x1E695C1A8]];
  }

  return v4;
}

+ (id)descriptorForRequiredKeysWithDescription:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__CNContactContentDisplayViewController_descriptorForRequiredKeysWithDescription___block_invoke;
  block[3] = &unk_1E74E6A88;
  v10 = v3;
  v4 = descriptorForRequiredKeysWithDescription__cn_once_token_13_59654;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&descriptorForRequiredKeysWithDescription__cn_once_token_13_59654, block);
  }

  v6 = descriptorForRequiredKeysWithDescription__cn_once_object_13_59655;
  v7 = descriptorForRequiredKeysWithDescription__cn_once_object_13_59655;

  return v6;
}

void __82__CNContactContentDisplayViewController_descriptorForRequiredKeysWithDescription___block_invoke(uint64_t a1)
{
  v13[51] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CEB0] descriptorForRequiredKeys];
  v3 = *MEMORY[0x1E695C200];
  v13[47] = v2;
  v13[48] = v3;
  v4 = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  v5 = [v4 descriptorForRequiredKeys];
  v13[49] = v5;
  v6 = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  v7 = [CNContactHeaderDisplayView descriptorForRequiredKeysForContactFormatter:v6];
  v13[50] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:51];

  v9 = +[CNSiriContactContextProvider descriptorForRequiredKeys];
  if (v9)
  {
    v10 = [v8 arrayByAddingObject:v9];

    v8 = v10;
  }

  v11 = [MEMORY[0x1E695CD58] descriptorWithKeyDescriptors:v8 description:*(a1 + 32)];

  v12 = descriptorForRequiredKeysWithDescription__cn_once_object_13_59655;
  descriptorForRequiredKeysWithDescription__cn_once_object_13_59655 = v11;
}

+ (id)descriptorForRequiredKeys
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentDisplayViewController descriptorForRequiredKeys]"];
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
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentDisplayViewController descriptorForRequiredKeysForContact:]"];
  v10 = [v8 descriptorWithKeyDescriptors:v7 description:v9];

  return v10;
}

@end