@interface CNContactContentDisplayViewController
+ (BOOL)actionModelIncludesTTY:(id)y;
+ (BOOL)shouldShowGeminiForResult:(id)result contact:(id)contact;
+ (CNContactContentDisplayViewController)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder;
+ (id)descriptorForRequiredKeys;
+ (id)descriptorForRequiredKeysForContact:(id)contact;
+ (id)descriptorForRequiredKeysWithDescription:(id)description;
- (BOOL)_indexPathIsActionItem:(id)item;
- (BOOL)contactDisplayViewController:(id)controller shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier;
- (BOOL)contactInlineActionsViewController:(id)controller shouldPerformActionOfType:(id)type withContactProperty:(id)property;
- (BOOL)hasTableViewHeaderFirstSection;
- (BOOL)isHeaderViewPhotoProhibited;
- (BOOL)isNicknameProhibited;
- (BOOL)isOutOfProcess;
- (BOOL)isPresentingModalViewController;
- (BOOL)isScrollViewControllingHeaderResizeAnimation:(id)animation;
- (BOOL)isStandardGroup:(id)group;
- (BOOL)isSuggestedContact;
- (BOOL)isTableViewHeaderFirstSectionIndexPath:(id)path;
- (BOOL)reloadDataIfNeeded;
- (BOOL)saveWasAuthorized;
- (BOOL)shouldAddFaceTimeGroup;
- (BOOL)shouldAddShareLocationGroup;
- (BOOL)shouldDisplayAvatarHeaderView;
- (BOOL)shouldReallyShowLinkedContacts;
- (BOOL)shouldShowGemini;
- (BOOL)shouldShowVerifiedFooterInSection:(int64_t)section;
- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHaveFullLengthBottomSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path;
- (CGRect)centeredSourceRect:(CGRect)rect inContactView:(id)view;
- (CGSize)requiredSizeForVisibleTableView;
- (CGSize)setupTableHeaderView;
- (CNContactContentDisplayViewController)initWithContact:(id)contact contactViewConfiguration:(id)configuration;
- (CNContactContentDisplayViewController)initWithEnvironment:(id)environment;
- (CNContactContentDisplayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CNContactContentDisplayViewControllerDelegate)delegate;
- (CNContactContentNavigationItemDelegate)navigationItemDelegate;
- (CNContactHeaderDisplayView)contactHeaderView;
- (CNContactView)contactView;
- (CNPresenterDelegate)presentingDelegate;
- (CNShareLocationController)shareLocationController;
- (Class)groupClassForProperty:(id)property;
- (NSArray)cardActions;
- (NSArray)originalContacts;
- (UIEdgeInsets)headerViewSafeAreaInsets;
- (UIEdgeInsets)insetsForContactTableView:(id)view;
- (UIEdgeInsets)scrollIndicatorInsetsForContactTableView:(id)view withContentInsets:(UIEdgeInsets)insets;
- (UINavigationItem)effectiveNavigationItem;
- (double)desiredHeightForWidth:(double)width;
- (double)globalHeaderHeightForContentOffset:(double)offset contentInset:(UIEdgeInsets)inset;
- (double)navigationBarHeight;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)updateHeaderConstraintForGlobalHeaderHeight:(double)height direction:(int64_t)direction animated:(BOOL)animated;
- (id)_addNewFieldAction;
- (id)_cardGroupAtTableViewSectionIndex:(int64_t)index;
- (id)_cellForIndexPath:(id)path;
- (id)_cellIdentifierForIndexPath:(id)path;
- (id)_clearRecentsDataAction;
- (id)_currentTopVisibleGroupInContactView:(id)view;
- (id)_itemAtIndexPath:(id)path;
- (id)_labelWidthKeyForGroup:(id)group;
- (id)_loadDisplayGroups;
- (id)_loadPropertyGroups;
- (id)_phoneticNameForValue:(id)value currentPhoneticName:(id)name property:(id)property;
- (id)_policyForContact:(id)contact mode:(int64_t)mode;
- (id)_propertyGroupsForKeys:(id)keys;
- (id)_removeUnauthorizedKeysFromContact:(id)contact;
- (id)_updateContact:(id)contact withMissingKeysFromRequiredKeys:(id)keys;
- (id)_updateExistingContactAction;
- (id)applyContactStyle;
- (id)cardGroupForProperty:(id)property;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (id)createActionsController;
- (id)currentNavigationController;
- (id)indexPathOfPropertyItem:(id)item;
- (id)saveDescriptionForRemovingLinkedContact:(id)contact keys:(id)keys;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableViewHeaderFirstSectionCell;
- (int64_t)_modalPresentationStyleForViewController:(id)controller;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)sectionOfGroup:(id)group;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addFaceTimeGroupAnimated:(BOOL)animated;
- (void)_addGroup:(id)group afterGroup:(id)afterGroup animated:(BOOL)animated;
- (void)_addMedicalIDGroupAnimated:(BOOL)animated;
- (void)_addShareLocationGroupAnimated:(BOOL)animated;
- (void)_didCompleteWithContact:(id)contact;
- (void)_handleCoalescedBlockListDidChange;
- (void)_refetchContact;
- (void)_reloadAlertGroups;
- (void)_reloadFaceTimeGroup;
- (void)_reloadGeminiGroupPreservingChanges:(BOOL)changes;
- (void)_reloadLinkedCardsGroup;
- (void)_reloadMedicalIDGroup;
- (void)_reloadPropertyGroupsPreservingChanges:(BOOL)changes;
- (void)_retrieveActionsModelPreservingChanges:(BOOL)changes;
- (void)_saveChangesForGroups:(id)groups;
- (void)_scrollContactView:(id)view toVisibleGroup:(id)group;
- (void)_setNeedsUpdateCachedLabelWidths;
- (void)_setupAddToAddressBookActions;
- (void)_setupCardActions;
- (void)_setupContactBlockingActionPreservingChanges:(BOOL)changes withUpdate:(BOOL)update;
- (void)_setupContactBlockingReportingActionPreservingChanges:(BOOL)changes withUpdate:(BOOL)update;
- (void)_setupCustomActions;
- (void)_setupSuggestionActions;
- (void)_updateAvailableTransports;
- (void)_updateAvailableTransportsForItems:(id)items;
- (void)_updateCachedLabelWidths;
- (void)_updateCachedLabelWidthsForGroup:(id)group;
- (void)_updateCachedLabelWidthsForItem:(id)item;
- (void)_updateCachedLabelWidthsIfNeeded;
- (void)_updateEmailTransportButtonsForItems:(id)items;
- (void)_updateIMessageTransportButtonsForItems:(id)items;
- (void)_updateLabelWidthForCell:(id)cell;
- (void)_updateLabelWidthForCellsInGroup:(id)group reset:(BOOL)reset;
- (void)_updateLabelWidthsForAllVisibleCells;
- (void)_updatePhoneTransportButtonsForItems:(id)items;
- (void)_updateTTYTransportButtonsForItems:(id)items;
- (void)_updateUserActivity;
- (void)_validateGroup:(id)group;
- (void)action:(id)action dismissViewController:(id)controller sender:(id)sender;
- (void)action:(id)action prepareChildContactViewController:(id)controller sender:(id)sender;
- (void)action:(id)action presentViewController:(id)controller sender:(id)sender;
- (void)action:(id)action pushViewController:(id)controller sender:(id)sender;
- (void)actionDidFinish:(id)finish;
- (void)actionDidUpdate:(id)update;
- (void)actionWasCanceled:(id)canceled;
- (void)addActionWithTitle:(id)title target:(id)target selector:(SEL)selector menuProvider:(id)provider inGroup:(id)group destructive:(BOOL)destructive;
- (void)adjustInsetsForKeyboardOverlap:(double)overlap;
- (void)adjustPreferredContentSize;
- (void)blockListDidChange:(id)change;
- (void)cancelAsyncLookups;
- (void)contactInlineActionsViewControllerDidDismissDisambiguationUI:(id)i;
- (void)contactInlineActionsViewControllerWillPresentDisambiguationUI:(id)i;
- (void)contactStoreDidChangeWithNotification:(id)notification;
- (void)contactViewConfigurationDidUpdate;
- (void)contactViewController:(id)controller didDeleteContact:(id)contact;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)createdNewContact:(id)contact;
- (void)dealloc;
- (void)didChangeToShowTitle:(BOOL)title;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)geminiDataSourceDidUpdate:(id)update;
- (void)headerPhotoDidUpdate;
- (void)headerViewDidChangeHeight:(id)height;
- (void)headerViewDidPickPreferredChannel:(id)channel;
- (void)headerViewDidTapNameLabel:(id)label;
- (void)initializeTableViewsForHeaderHeight;
- (void)keyboardDidShowNotification:(id)notification;
- (void)loadContactViewControllerViews;
- (void)loadView;
- (void)prepareCell:(id)cell;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)propertyCell:(id)cell didDeleteLabel:(id)label forGroup:(id)group;
- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewLabel:(id)label;
- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewValue:(id)value;
- (void)propertyCell:(id)cell performActionForItem:(id)item withTransportType:(int64_t)type;
- (void)propertyCellDidChangeLayout:(id)layout;
- (void)reloadCardActionsForBlockState:(BOOL)state preservingChanges:(BOOL)changes;
- (void)reloadCardGroup:(id)group;
- (void)reloadDataPreservingChanges:(BOOL)changes;
- (void)reloadUnifiedContact;
- (void)removeActionWithTarget:(id)target selector:(SEL)selector inGroup:(id)group;
- (void)removeFirstSectionHeaderViewControllerFromHierarchy;
- (void)removeLinkedContact:(id)contact;
- (void)requestFavoritesUpdateWithGemini;
- (void)scrollScrollViewAllTheWayUp:(id)up;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler;
- (void)sender:(id)sender presentViewController:(id)controller;
- (void)setBackgroundColorIfNeededForPresentedViewController:(id)controller;
- (void)setCancelKeyboardShortcutEnabled:(BOOL)enabled;
- (void)setContact:(id)contact;
- (void)setContactStore:(id)store;
- (void)setEditKeyboardShortcutEnabled:(BOOL)enabled;
- (void)setForcesTransparentBackground:(BOOL)background;
- (void)setMenuProviderForCell:(id)cell forActionGroupItem:(id)item;
- (void)setNeedsReload;
- (void)setPersonHeaderViewController:(id)controller;
- (void)setTitle:(id)title;
- (void)setupActionsPreservingChanges:(BOOL)changes;
- (void)setupConstraints;
- (void)setupShareLocationActionReload:(BOOL)reload;
- (void)setupTableFooterView;
- (void)setupViewHierarchyIncludingAvatarHeader:(BOOL)header;
- (void)shouldPresentFullscreen:(BOOL)fullscreen;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)toggleEditing:(id)editing;
- (void)updateContact:(id)contact;
- (void)updateContactsViewWithBlock:(id)block completion:(id)completion;
- (void)updateEditNavigationItemsAnimated:(BOOL)animated;
- (void)updateHeaderHeightToMatchScrollViewState:(id)state scrollDirection:(int64_t)direction animated:(BOOL)animated;
- (void)updateInsetsIfNeeded;
- (void)updateOutOfProcessFullscreenPresentationIfNeeded;
- (void)updateTableView:(id)view contentInsetsTo:(UIEdgeInsets)to withScrollIndicatorInsets:(UIEdgeInsets)insets;
- (void)updateUserActivityState:(id)state;
- (void)updateViewConstraints;
- (void)updateWindowTitleForAppearing:(BOOL)appearing;
- (void)updateWithContactViewConfiguration:(id)configuration;
- (void)updatedExistingContact:(id)contact;
- (void)viewController:(id)controller presentationControllerWillDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  [contactView setBackgroundColor:v6];

LABEL_6:
  sectionBackgroundColor = [v3 sectionBackgroundColor];
  contactView2 = [(CNContactContentDisplayViewController *)self contactView];
  [contactView2 setSectionBackgroundColor:sectionBackgroundColor];

  separatorColor = [v3 separatorColor];
  contactView3 = [(CNContactContentDisplayViewController *)self contactView];
  [contactView3 setSeparatorColor:separatorColor];

  selectedCellBackgroundColor = [v3 selectedCellBackgroundColor];
  contactView4 = [(CNContactContentDisplayViewController *)self contactView];
  [contactView4 setSelectedCellBackgroundColor:selectedCellBackgroundColor];

  v14 = MEMORY[0x1E695DF90];
  contactView5 = [(CNContactContentDisplayViewController *)self contactView];
  valueTextAttributes = [contactView5 valueTextAttributes];
  v17 = [v14 dictionaryWithDictionary:valueTextAttributes];

  v18 = *MEMORY[0x1E69DB650];
  v48[0] = *MEMORY[0x1E69DB650];
  textColor = [v3 textColor];
  v48[1] = @"ABNotesTextColorAttributeName";
  v49[0] = textColor;
  notesTextColor = [v3 notesTextColor];
  v49[1] = notesTextColor;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v17 addEntriesFromDictionary:v21];

  contactView6 = [(CNContactContentDisplayViewController *)self contactView];
  [contactView6 setValueTextAttributes:v17];

  if ([(CNContactContentDisplayViewController *)self forcesTransparentBackground])
  {
    v23 = +[CNUIColorRepository transparentBackgroundColor];
    [(CNContactHeaderDisplayView *)self->_contactHeaderView setBackgroundColor:v23];

    v24 = +[CNUIColorRepository transparentBackgroundColor];
  }

  else
  {
    environment = [(CNContactContentDisplayViewController *)self environment];
    runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

    if (runningInContactsAppOniPad)
    {
      v27 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
      [(CNContactHeaderDisplayView *)self->_contactHeaderView setBackgroundColor:v27];

      +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    }

    else
    {
      contactHeaderBackgroundColor = [v3 contactHeaderBackgroundColor];
      [(CNContactHeaderDisplayView *)self->_contactHeaderView setBackgroundColor:contactHeaderBackgroundColor];

      [v3 contactHeaderBackgroundColor];
    }
    v24 = ;
  }

  v29 = v24;
  [(CNContactActionsContainerView *)self->_actionsWrapperView setBackgroundColor:v24];

  contactHeaderView = self->_contactHeaderView;
  v46 = v18;
  taglineTextColor = [v3 taglineTextColor];
  v47 = taglineTextColor;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  [contactHeaderView cn_updateDictionaryForKey:@"taglineTextAttributes" withChanges:v32];

  actionsViewController = [(CNContactContentDisplayViewController *)self actionsViewController];
  [actionsViewController setViewStyle:{objc_msgSend(v3, "topActionsViewStyle")}];

  v34 = 0;
  if ([v3 usesOpaqueBackground])
  {
    actionsViewController2 = [(CNContactContentDisplayViewController *)self actionsViewController];
    view = [actionsViewController2 view];
    layer = [view layer];
    [layer setShadowRadius:8.0];

    actionsViewController3 = [(CNContactContentDisplayViewController *)self actionsViewController];
    view2 = [actionsViewController3 view];
    layer2 = [view2 layer];
    [layer2 setShadowOffset:{0.0, 2.0}];

    v34 = 1025758986;
  }

  actionsViewController4 = [(CNContactContentDisplayViewController *)self actionsViewController];
  view3 = [actionsViewController4 view];
  layer3 = [view3 layer];
  LODWORD(v44) = v34;
  [layer3 setShadowOpacity:v44];

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
  [(CNContactContentDisplayViewController *)self keyboardVerticalOverlap];
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
  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView minHeight];
  v7 = v6;

  contactHeaderView2 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView2 maxHeight];
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
    actionsWrapperView = [(CNContactContentDisplayViewController *)self actionsWrapperView];
    [actionsWrapperView frame];
    v11 = v13;
  }

  [viewCopy _systemContentInset];
  v15 = v10 + v11 - v14;
  [viewCopy bounds];
  v17 = v10 - v7 + v16;
  [viewCopy _systemContentInset];
  v19 = v17 - v18 - v15;
  [viewCopy _systemContentInset];
  v21 = v20;
  [(CNContactContentDisplayViewController *)self keyboardVerticalOverlap];
  if (v21 >= v22)
  {
    v22 = v21;
  }

  v23 = v19 - v22;
  [viewCopy contentSize];
  if (v23 - v24 >= 0.0)
  {
    v25 = v23 - v24;
  }

  else
  {
    v25 = 0.0;
  }

  [viewCopy contentInset];
  v27 = v26;
  v29 = v28;
  [(CNContactContentDisplayViewController *)self keyboardVerticalOverlap];
  if (v30 <= 0.0)
  {
    [viewCopy _systemContentInset];
    v47 = -v46;
    goto LABEL_18;
  }

  view = [(CNContactContentDisplayViewController *)self view];
  window = [view window];
  if (!window)
  {
    v40 = 0.0;
    goto LABEL_16;
  }

  v33 = window;
  view2 = [(CNContactContentDisplayViewController *)self view];
  window2 = [view2 window];
  [window2 bounds];
  v37 = v36;
  [viewCopy bounds];
  v39 = v38;

  v40 = 0.0;
  if (v37 > v39)
  {
    view = [(CNContactContentDisplayViewController *)self view];
    window3 = [view window];
    [window3 bounds];
    v43 = v42;
    [viewCopy bounds];
    v40 = v43 - v44;

LABEL_16:
  }

  [(CNContactContentDisplayViewController *)self keyboardVerticalOverlap];
  v49 = v48;
  [viewCopy _systemContentInset];
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
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  [contactView layoutIfNeeded];
  actionsWrapperView = [(CNContactContentDisplayViewController *)self actionsWrapperView];
  [actionsWrapperView setNeedsLayout];

  actionsWrapperView2 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
  [actionsWrapperView2 layoutIfNeeded];

  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView calculateLabelSizesIfNeeded];

  headerDropShadowView = [(CNContactContentDisplayViewController *)self headerDropShadowView];
  [headerDropShadowView setAlpha:1.0];

  [(CNContactContentDisplayViewController *)self updateInsetsIfNeeded];
  [(CNContactContentDisplayViewController *)self updateHeaderHeightToMatchScrollViewState:contactView scrollDirection:2 animated:0];
}

- (void)updateInsetsIfNeeded
{
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  [(CNContactContentDisplayViewController *)self keyboardVerticalOverlap];
  if (v3 <= 0.0 || (-[CNContactContentDisplayViewController view](self, "view"), v4 = objc_claimAutoreleasedReturnValue(), [v4 bounds], v6 = v5, v4, v6 <= 0.0))
  {
    contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
    contactHeaderView2 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    [contactHeaderView2 maxHeight];
    v17 = contactHeaderView;
    v16 = 0;
  }

  else
  {
    view = [(CNContactContentDisplayViewController *)self view];
    [view bounds];
    v9 = v8;
    [(CNContactContentDisplayViewController *)self keyboardVerticalOverlap];
    v11 = v9 - v10 + -64.0;

    v12 = fmax(v11, 0.0);
    contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
    contactHeaderView2 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    [contactHeaderView2 maxHeight];
    v16 = v12 <= v15;
    v17 = contactHeaderView;
    v18 = v12;
  }

  [v17 setConstrainedMaxHeight:v16 enabled:v18];

  [contactView contentInset];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(CNContactContentDisplayViewController *)self insetsForContactTableView:contactView];
  v30 = v27;
  v32 = v31;
  v33 = v28;
  v34 = v29;
  if (v31 != v22 || v27 != v20 || v29 != v26 || v28 != v24)
  {
    contactView2 = [(CNContactContentDisplayViewController *)self contactView];
    [(CNContactContentDisplayViewController *)self scrollIndicatorInsetsForContactTableView:contactView2 withContentInsets:v30, v32, v33, v34];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    contactView3 = [(CNContactContentDisplayViewController *)self contactView];
    [(CNContactContentDisplayViewController *)self updateTableView:contactView3 contentInsetsTo:v30 withScrollIndicatorInsets:v32, v33, v34, v37, v39, v41, v43];
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
  contactView = [(CNContactContentDisplayViewController *)self contactView];

  return contactView == animationCopy;
}

- (double)updateHeaderConstraintForGlobalHeaderHeight:(double)height direction:(int64_t)direction animated:(BOOL)animated
{
  v8 = 0.0;
  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
  {
    actionsWrapperView = [(CNContactContentDisplayViewController *)self actionsWrapperView];
    [actionsWrapperView frame];
    v8 = v10;
  }

  headerHeightConstraint = [(CNContactContentDisplayViewController *)self headerHeightConstraint];
  [headerHeightConstraint constant];
  v13 = v12;

  if (height - v8 == v13 || !direction && height - v8 <= v13)
  {
    return v8 + v13;
  }

  headerHeightConstraint2 = [(CNContactContentDisplayViewController *)self headerHeightConstraint];
  [headerHeightConstraint2 setConstant:height - v8];

  return height;
}

- (void)updateHeaderHeightToMatchScrollViewState:(id)state scrollDirection:(int64_t)direction animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  [stateCopy contentOffset];
  v10 = v9;
  [stateCopy contentInset];
  [(CNContactContentDisplayViewController *)self globalHeaderHeightForContentOffset:v10 contentInset:v11, v12, v13, v14];
  [(CNContactContentDisplayViewController *)self updateHeaderConstraintForGlobalHeaderHeight:direction direction:animatedCopy animated:?];
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
  v7 = 0.0;
  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
  {
    actionsWrapperView = [(CNContactContentDisplayViewController *)self actionsWrapperView];
    [actionsWrapperView frame];
    v7 = v9;
  }

  contactView = [(CNContactContentDisplayViewController *)self contactView];
  [contactView _systemContentInset];
  v12 = top + v11;

  if (-v12 <= offset)
  {
    v13 = -offset;
  }

  else
  {
    v13 = v12;
  }

  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView minHeight];
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

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  draggingCopy = dragging;
  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView minHeight];
  v10 = v9;

  contactHeaderView2 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView2 maxHeight];
  v13 = v12;

  if ([(CNContactContentDisplayViewController *)self isScrollViewControllingHeaderResizeAnimation:draggingCopy])
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
  if ([(CNContactContentDisplayViewController *)self isScrollViewControllingHeaderResizeAnimation:?])
  {
    [scrollCopy _verticalVelocity];
    [(CNContactContentDisplayViewController *)self updateHeaderHeightToMatchScrollViewState:scrollCopy scrollDirection:v4 >= 0.0 animated:1];
  }
}

- (void)setEditKeyboardShortcutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  editCommand = [(CNContactContentDisplayViewController *)self editCommand];

  if (enabledCopy)
  {
    if (!editCommand)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"l" modifierFlags:0x100000 action:sel_toggleEditing_];
      [(CNContactContentDisplayViewController *)self setEditCommand:v6];

      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"EDIT_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
      editCommand2 = [(CNContactContentDisplayViewController *)self editCommand];
      [editCommand2 setDiscoverabilityTitle:v8];

      editCommand3 = [(CNContactContentDisplayViewController *)self editCommand];
      [(CNContactContentDisplayViewController *)self addKeyCommand:editCommand3];
    }
  }

  else if (editCommand)
  {
    editCommand4 = [(CNContactContentDisplayViewController *)self editCommand];
    [(CNContactContentDisplayViewController *)self removeKeyCommand:editCommand4];

    [(CNContactContentDisplayViewController *)self setEditCommand:0];
  }
}

- (void)setCancelKeyboardShortcutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  cancelCommand = [(CNContactContentDisplayViewController *)self cancelCommand];

  if (enabledCopy)
  {
    if (!cancelCommand)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_editCancel_];
      [(CNContactContentDisplayViewController *)self setCancelCommand:v6];

      cancelCommand2 = [(CNContactContentDisplayViewController *)self cancelCommand];
      [(CNContactContentDisplayViewController *)self addKeyCommand:cancelCommand2];
    }
  }

  else if (cancelCommand)
  {
    cancelCommand3 = [(CNContactContentDisplayViewController *)self cancelCommand];
    [(CNContactContentDisplayViewController *)self removeKeyCommand:cancelCommand3];

    [(CNContactContentDisplayViewController *)self setCancelCommand:0];
  }
}

- (void)updateUserActivityState:(id)state
{
  stateCopy = state;
  activityManager = [(CNContactContentDisplayViewController *)self activityManager];
  contact = [(CNContactContentDisplayViewController *)self contact];
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

    activityManager = [(CNContactContentDisplayViewController *)self activityManager];
    contact = [(CNContactContentDisplayViewController *)self contact];
    v8 = [activityManager makeActivityAdvertisingViewingOfContact:contact];

    userActivity = [(CNContactContentDisplayViewController *)self userActivity];
    v10 = userActivity;
    if (v8)
    {

      if (!v10)
      {
        [(CNContactContentDisplayViewController *)self setUserActivity:v8];
        userActivity2 = [(CNContactContentDisplayViewController *)self userActivity];
        [userActivity2 becomeCurrent];

        v12 = CNUILogContactCard();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          userActivity3 = [(CNContactContentDisplayViewController *)self userActivity];
          v17 = 138412546;
          selfCopy2 = self;
          v19 = 2112;
          v20 = userActivity3;
          _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_INFO, "Activity continuity -  %@ created %@", &v17, 0x16u);
        }
      }

      userActivity4 = [(CNContactContentDisplayViewController *)self userActivity];
      [userActivity4 setNeedsSave:1];
    }

    else
    {
      [userActivity resignCurrent];

      v15 = CNUILogContactCard();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        userActivity5 = [(CNContactContentDisplayViewController *)self userActivity];
        v17 = 138412546;
        selfCopy2 = self;
        v19 = 2112;
        v20 = userActivity5;
        _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_INFO, "Activity continuity -  %@ removed %@", &v17, 0x16u);
      }

      [(CNContactContentDisplayViewController *)self setUserActivity:0];
    }
  }
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v18 encodeRestorableStateWithCoder:coderCopy];
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
          [coderCopy encodeObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  contact = [(CNContactContentDisplayViewController *)self contact];
  identifier = [contact identifier];

  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"Identifier"];
  }
}

- (BOOL)_indexPathIsActionItem:(id)item
{
  itemCopy = item;
  v5 = -[CNContactContentDisplayViewController _cardGroupAtTableViewSectionIndex:](self, "_cardGroupAtTableViewSectionIndex:", [itemCopy section]);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:itemCopy];
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

- (id)_itemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[CNContactContentDisplayViewController _cardGroupAtTableViewSectionIndex:](self, "_cardGroupAtTableViewSectionIndex:", [pathCopy section]);
  if ([(CNContactContentDisplayViewController *)self isStandardGroup:v5])
  {
    displayItems = [v5 displayItems];
LABEL_5:
    v7 = displayItems;
    v8 = [displayItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    goto LABEL_7;
  }

  if ([(CNContactContentDisplayViewController *)self _indexPathIsActionItem:pathCopy])
  {
    displayItems = [v5 actionItems];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_cardGroupAtTableViewSectionIndex:(int64_t)index
{
  v4 = [(CNContactContentDisplayViewController *)self groupIndexFromTableViewSectionIndex:index];
  _currentGroups = [(CNContactContentDisplayViewController *)self _currentGroups];
  if ([_currentGroups count] <= v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [_currentGroups objectAtIndexedSubscript:v4];
  }

  return v6;
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
  v24 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  propertyItems = [groupCopy propertyItems];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [propertyItems countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(propertyItems);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
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

      v7 = [propertyItems countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
    if (v8)
    {
      [(CNContactContentDisplayViewController *)selfCopy reloadCardGroup:groupCopy];
    }
  }
}

- (void)_reloadGeminiGroupPreservingChanges:(BOOL)changes
{
  if (!changes)
  {
    geminiDataSource = [(CNContactContentDisplayViewController *)self geminiDataSource];
    [geminiDataSource resetDataSource];
    contact = [(CNContactContentDisplayViewController *)self contact];
    [geminiDataSource setContact:contact];
  }
}

- (id)_loadDisplayGroups
{
  v81 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  cardTopGroup = [(CNContactContentDisplayViewController *)self cardTopGroup];
  actions = [cardTopGroup actions];
  v6 = [actions count];

  if (v6)
  {
    cardTopGroup2 = [(CNContactContentDisplayViewController *)self cardTopGroup];
    [array addObject:cardTopGroup2];
  }

  v68 = array;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  displayedProperties = [contactViewConfiguration displayedProperties];

  obj = displayedProperties;
  v10 = [displayedProperties countByEnumeratingWithState:&v75 objects:v80 count:16];
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
        propertyGroups = [(CNContactContentDisplayViewController *)self propertyGroups];
        v15 = [propertyGroups objectForKeyedSubscript:v13];

        displayItems = [v15 displayItems];
        if ([displayItems count])
        {
          contactViewConfiguration2 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
          primaryProperty = [contactViewConfiguration2 primaryProperty];
          property = [v15 property];
          v20 = [primaryProperty isEqualToString:property];

          if (v20)
          {
            goto LABEL_20;
          }

          [v68 addObject:v15];
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          displayItems = [v15 displayItems];
          v21 = [displayItems countByEnumeratingWithState:&v71 objects:v79 count:16];
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
                  objc_enumerationMutation(displayItems);
                }

                v25 = *(*(&v71 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v25 setDelegate:self];
                }
              }

              v22 = [displayItems countByEnumeratingWithState:&v71 objects:v79 count:16];
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

  cardBottomGroup = [(CNContactContentDisplayViewController *)self cardBottomGroup];
  actions2 = [cardBottomGroup actions];
  v28 = [actions2 count];

  if (v28)
  {
    cardBottomGroup2 = [(CNContactContentDisplayViewController *)self cardBottomGroup];
    [v68 addObject:cardBottomGroup2];
  }

  contactViewConfiguration3 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if ([contactViewConfiguration3 hideCardActions])
  {
    goto LABEL_33;
  }

  cardActionsGroup = [(CNContactContentDisplayViewController *)self cardActionsGroup];
  actions3 = [cardActionsGroup actions];
  v33 = [actions3 count];

  if (v33)
  {
    cardBottomGroup3 = [(CNContactContentDisplayViewController *)self cardBottomGroup];
    actions4 = [cardBottomGroup3 actions];
    if ([actions4 count])
    {
      isSuggested = 1;
    }

    else
    {
      contactViewConfiguration4 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
      primaryProperty2 = [contactViewConfiguration4 primaryProperty];
      if (primaryProperty2)
      {
        contact = primaryProperty2;
        isSuggested = 1;
      }

      else
      {
        contact = [(CNContactContentDisplayViewController *)self contact];
        isSuggested = [contact isSuggested];
      }
    }

    cardActionsGroup2 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    [cardActionsGroup2 setAddSpacerFromPreviousGroup:isSuggested];

    contactViewConfiguration3 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    [v68 addObject:contactViewConfiguration3];
LABEL_33:
  }

  cardMedicalIDGroup = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];
  if (cardMedicalIDGroup)
  {
    v42 = cardMedicalIDGroup;
    cardMedicalIDGroup2 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];
    actionItems = [cardMedicalIDGroup2 actionItems];
    v45 = [actionItems count];

    if (v45)
    {
      cardMedicalIDGroup3 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];
      [v68 addObject:cardMedicalIDGroup3];
    }
  }

  contactViewConfiguration5 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if (([contactViewConfiguration5 hideCardActions] & 1) == 0)
  {
    cardShareLocationGroup = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];
    actionItems2 = [cardShareLocationGroup actionItems];
    v50 = [actionItems2 count];

    if (!v50)
    {
      goto LABEL_41;
    }

    contactViewConfiguration5 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];
    [v68 addObject:contactViewConfiguration5];
  }

LABEL_41:
  cardFooterGroup = [(CNContactContentDisplayViewController *)self cardFooterGroup];
  actions5 = [cardFooterGroup actions];
  contactViewConfiguration6 = [actions5 count];

  if (contactViewConfiguration6)
  {
    cardFooterGroup = [(CNContactContentDisplayViewController *)self cardFooterGroup];
    [v68 addObject:cardFooterGroup];
  }

  isSuggestedContact = [(CNContactContentDisplayViewController *)self isSuggestedContact];
  if (isSuggestedContact)
  {
    v55 = 0;
  }

  else
  {
    cardFooterGroup = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    if ([cardFooterGroup allowsContactBlocking])
    {
      v55 = 0;
    }

    else
    {
      contactViewConfiguration6 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
      if (([contactViewConfiguration6 allowsContactBlockingAndReporting] & 1) == 0)
      {

LABEL_59:
        goto LABEL_60;
      }

      v55 = 1;
    }
  }

  cardBlockContactGroup = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
  actions6 = [cardBlockContactGroup actions];
  v58 = [actions6 count];

  if (v55)
  {

    if (!isSuggestedContact)
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

  if (isSuggestedContact)
  {
    goto LABEL_52;
  }

LABEL_49:

  if (v58)
  {
LABEL_53:
    contactViewConfiguration7 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    showContactBlockingFirst = [contactViewConfiguration7 showContactBlockingFirst];

    cardBlockContactGroup2 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
    cardFooterGroup = cardBlockContactGroup2;
    if (showContactBlockingFirst)
    {
      [cardBlockContactGroup2 setAddSpacerFromPreviousGroup:0];

      cardFooterGroup = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [v68 insertObject:cardFooterGroup atIndex:0];
    }

    else
    {
      [v68 addObject:cardBlockContactGroup2];
    }

    goto LABEL_59;
  }

LABEL_60:
  cardLinkedCardsGroup = [(CNContactContentDisplayViewController *)self cardLinkedCardsGroup];

  if (cardLinkedCardsGroup)
  {
    cardLinkedCardsGroup2 = [(CNContactContentDisplayViewController *)self cardLinkedCardsGroup];
    [v68 addObject:cardLinkedCardsGroup2];
  }

  contactViewConfiguration8 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  allowsNamePicking = [contactViewConfiguration8 allowsNamePicking];

  if (allowsNamePicking)
  {
    namePickingGroup = [(CNContactContentDisplayViewController *)self namePickingGroup];
    [v68 addObject:namePickingGroup];
  }

  return v68;
}

- (void)_reloadLinkedCardsGroup
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(CNContactContentDisplayViewController *)self shouldReallyShowLinkedContacts])
  {
    actionProvider = [(CNContactContentDisplayViewController *)self actionProvider];
    linkedCardsAction = [actionProvider linkedCardsAction];

    if (!linkedCardsAction)
    {
      actionProvider2 = [(CNContactContentDisplayViewController *)self actionProvider];
      [actionProvider2 buildLinkedContactActions];
    }

    actionProvider3 = [(CNContactContentDisplayViewController *)self actionProvider];
    linkedCardsAction2 = [actionProvider3 linkedCardsAction];
    [linkedCardsAction2 setContactDelegate:self];

    v8 = [CNCardLinkedCardsGroup alloc];
    mutableContact = [(CNContactContentDisplayViewController *)self mutableContact];
    v10 = [(CNCardGroup *)v8 initWithContact:mutableContact];
    [(CNContactContentDisplayViewController *)self setCardLinkedCardsGroup:v10];

    array = [MEMORY[0x1E695DF70] array];
    contact = [(CNContactContentDisplayViewController *)self contact];
    mainStoreLinkedContacts = [contact mainStoreLinkedContacts];

    shadowCopyOfReadonlyContact = [(CNContactContentDisplayViewController *)self shadowCopyOfReadonlyContact];

    if (!shadowCopyOfReadonlyContact)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v15 = mainStoreLinkedContacts;
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

            [array addObject:{*(*(&v21 + 1) + 8 * i), v21}];
          }

          v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v17);
      }
    }

    if ([array count] < 2)
    {
      [(CNContactContentDisplayViewController *)self setCardLinkedCardsGroup:0];
    }

    else
    {
      cardLinkedCardsGroup = [(CNContactContentDisplayViewController *)self cardLinkedCardsGroup];
      [cardLinkedCardsGroup setLinkedContacts:array];
    }
  }

  else
  {

    [(CNContactContentDisplayViewController *)self setCardLinkedCardsGroup:0];
  }
}

- (BOOL)shouldReallyShowLinkedContacts
{
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if ([contactViewConfiguration shouldShowLinkedContacts])
  {
    contact = [(CNContactContentDisplayViewController *)self contact];
    mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
    if ([mainStoreLinkedContacts count] < 2)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      shadowCopyOfReadonlyContact = [(CNContactContentDisplayViewController *)self shadowCopyOfReadonlyContact];
      if (shadowCopyOfReadonlyContact)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        contact2 = [(CNContactContentDisplayViewController *)self contact];
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

- (void)_reloadAlertGroups
{
  propertyGroups = [(CNContactContentDisplayViewController *)self propertyGroups];
  v4 = [propertyGroups objectForKeyedSubscript:*MEMORY[0x1E695C1E0]];
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  [v4 setAllowsDisplayModePickerActions:{objc_msgSend(contactViewConfiguration, "allowsDisplayModePickerActions")}];

  propertyGroups2 = [(CNContactContentDisplayViewController *)self propertyGroups];
  v6 = [propertyGroups2 objectForKeyedSubscript:*MEMORY[0x1E695C3F8]];
  contactViewConfiguration2 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  [v6 setAllowsDisplayModePickerActions:{objc_msgSend(contactViewConfiguration2, "allowsDisplayModePickerActions")}];
}

- (void)_reloadMedicalIDGroup
{
  environment = [(CNContactContentDisplayViewController *)self environment];
  healthStoreManager = [environment healthStoreManager];

  medicalIDLookupToken = [(CNContactContentDisplayViewController *)self medicalIDLookupToken];
  [medicalIDLookupToken cancel];

  [(CNContactContentDisplayViewController *)self setMedicalIDLookupToken:0];
  [(CNContactContentDisplayViewController *)self setMedicalIDRegistrationToken:0];
  [(CNContactContentDisplayViewController *)self setCardMedicalIDGroup:0];
  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView setIsEmergencyContact:0];

  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if (([contactViewConfiguration allowsActions] & 1) == 0)
  {

    goto LABEL_6;
  }

  contactViewConfiguration2 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  allowsCardActions = [contactViewConfiguration2 allowsCardActions];

  if (!allowsCardActions)
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
    v10 = healthStoreManager;
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

- (void)_addMedicalIDGroupAnimated:(BOOL)animated
{
  animatedCopy = animated;
  displayGroups = [(CNContactContentDisplayViewController *)self displayGroups];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__CNContactContentDisplayViewController__addMedicalIDGroupAnimated___block_invoke;
  aBlock[3] = &unk_1E74E7218;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [displayGroups indexOfObjectPassingTest:v6];
  if (v7)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [displayGroups lastObject];
    }

    else
    {
      [displayGroups objectAtIndexedSubscript:v7 - 1];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  cardMedicalIDGroup = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];
  [(CNContactContentDisplayViewController *)self _addGroup:cardMedicalIDGroup afterGroup:v8 animated:animatedCopy];
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

- (void)_addGroup:(id)group afterGroup:(id)afterGroup animated:(BOOL)animated
{
  animatedCopy = animated;
  afterGroupCopy = afterGroup;
  groupCopy = group;
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  displayGroups = [(CNContactContentDisplayViewController *)self displayGroups];
  if (afterGroupCopy && (v11 = [displayGroups indexOfObject:afterGroupCopy], v11 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  [contactView beginUpdates];
  [displayGroups insertObject:groupCopy atIndex:v12];

  v13 = [(CNContactContentDisplayViewController *)self tableViewSectionIndexFromGroupIndex:v12];
  v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:v13];
  if (animatedCopy)
  {
    v15 = 6;
  }

  else
  {
    v15 = 5;
  }

  [contactView insertSections:v14 withRowAnimation:v15];

  [contactView endUpdates];
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

  displayGroups = [(CNContactContentDisplayViewController *)self displayGroups];

  if (!displayGroups)
  {
    return 0;
  }

  cardShareLocationGroup = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];

  if (!cardShareLocationGroup)
  {
    return 0;
  }

  displayGroups2 = [(CNContactContentDisplayViewController *)self displayGroups];
  cardShareLocationGroup2 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];
  v7 = [displayGroups2 _cn_containsObject:cardShareLocationGroup2];

  return v7 ^ 1;
}

- (void)_addShareLocationGroupAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CNContactContentDisplayViewController *)self shouldAddShareLocationGroup])
  {
    if (([(CNContactContentDisplayViewController *)self isEditing]& 1) == 0)
    {
      displayGroups = [(CNContactContentDisplayViewController *)self displayGroups];

      if (displayGroups)
      {
        displayGroups2 = [(CNContactContentDisplayViewController *)self displayGroups];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __72__CNContactContentDisplayViewController__addShareLocationGroupAnimated___block_invoke;
        v12[3] = &unk_1E74E6B20;
        v12[4] = self;
        v7 = [displayGroups2 _cn_indexOfFirstObjectPassingTest:v12];

        if (v7 && v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          displayGroups3 = [(CNContactContentDisplayViewController *)self displayGroups];
          lastObject = [displayGroups3 objectAtIndexedSubscript:v7 - 1];
        }

        else
        {
          displayGroups3 = [(CNContactContentDisplayViewController *)self displayGroups];
          lastObject = [displayGroups3 lastObject];
        }

        v10 = lastObject;

        cardShareLocationGroup = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];
        [(CNContactContentDisplayViewController *)self _addGroup:cardShareLocationGroup afterGroup:v10 animated:animatedCopy];
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

  displayGroups = [(CNContactContentDisplayViewController *)self displayGroups];

  if (!displayGroups)
  {
    return 0;
  }

  cardFaceTimeGroup = [(CNContactContentDisplayViewController *)self cardFaceTimeGroup];

  if (!cardFaceTimeGroup)
  {
    return 0;
  }

  displayGroups2 = [(CNContactContentDisplayViewController *)self displayGroups];
  cardFaceTimeGroup2 = [(CNContactContentDisplayViewController *)self cardFaceTimeGroup];
  v7 = [displayGroups2 containsObject:cardFaceTimeGroup2];

  if (v7)
  {
    return 0;
  }

  cardFaceTimeGroup3 = [(CNContactContentDisplayViewController *)self cardFaceTimeGroup];
  contact = [cardFaceTimeGroup3 contact];

  displayGroups3 = [(CNContactContentDisplayViewController *)self displayGroups];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CNContactContentDisplayViewController_shouldAddFaceTimeGroup__block_invoke;
  v14[3] = &unk_1E74E71A8;
  v15 = contact;
  v13 = contact;
  LOBYTE(contact) = [displayGroups3 _cn_any:v14];

  v8 = contact ^ 1;
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

- (void)_addFaceTimeGroupAnimated:(BOOL)animated
{
  animatedCopy = animated;
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

      firstObject = [v7 firstObject];
      cardFaceTimeGroup = [(CNContactContentDisplayViewController *)self cardFaceTimeGroup];
      [(CNContactContentDisplayViewController *)self _addGroup:cardFaceTimeGroup afterGroup:firstObject animated:animatedCopy];
    }
  }
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
        propertyGroups = [(CNContactContentDisplayViewController *)self propertyGroups];
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

  propertyGroupsDataSource = [(CNContactContentDisplayViewController *)self propertyGroupsDataSource];
  v6 = *MEMORY[0x1E695C208];
  v26[0] = *MEMORY[0x1E695C330];
  v26[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v8 = [propertyGroupsDataSource allDisplayPropertyItemsForPropertyKeys:v7];

  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if (![contactViewConfiguration allowsActions])
  {
    goto LABEL_12;
  }

  contactViewConfiguration2 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if (([contactViewConfiguration2 allowsConferencing] & 1) == 0)
  {

    goto LABEL_12;
  }

  contact = [(CNContactContentDisplayViewController *)self contact];
  if ((([contact isSuggested] | v4) & 1) != 0 || !objc_msgSend(v8, "count"))
  {

    goto LABEL_12;
  }

  contactViewConfiguration3 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  primaryProperty = [contactViewConfiguration3 primaryProperty];
  v14 = primaryProperty == 0;

  if (v14)
  {
    v15 = [v8 _cn_filter:&__block_literal_global_3_58876];
    contactViewConfiguration = [v15 _cn_map:&__block_literal_global_58871];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__CNContactContentDisplayViewController__reloadFaceTimeGroup__block_invoke;
    aBlock[3] = &unk_1E74E7180;
    objc_copyWeak(&v24, &location);
    v16 = _Block_copy(aBlock);
    v17 = MEMORY[0x1E6996B68];
    environment = [(CNContactContentDisplayViewController *)self environment];
    idsAvailabilityProvider = [environment idsAvailabilityProvider];
    environment2 = [(CNContactContentDisplayViewController *)self environment];
    defaultSchedulerProvider = [environment2 defaultSchedulerProvider];
    v22 = [v17 validateHandlesForFaceTime:contactViewConfiguration availabilityProvider:idsAvailabilityProvider schedulerProvider:defaultSchedulerProvider handler:v16];
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

- (void)_reloadPropertyGroupsPreservingChanges:(BOOL)changes
{
  changesCopy = changes;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  propertyGroups = [(CNContactContentDisplayViewController *)self propertyGroups];
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
  mutableContact = [(CNContactContentDisplayViewController *)self mutableContact];
  contactStore = [(CNContactContentDisplayViewController *)self contactStore];
  policy = [(CNContactContentDisplayViewController *)self policy];
  linkedPoliciesByContactIdentifier = [(CNContactContentDisplayViewController *)self linkedPoliciesByContactIdentifier];
  prohibitedPropertyKeys = [(CNContactContentDisplayViewController *)self prohibitedPropertyKeys];
  v9 = [(CNPropertyGroupsDataSource *)v3 initWithMutableContact:mutableContact contactStore:contactStore policy:policy linkedPolicies:linkedPoliciesByContactIdentifier prohibitedKeys:prohibitedPropertyKeys];
  propertyGroupsDataSource = self->_propertyGroupsDataSource;
  self->_propertyGroupsDataSource = v9;

  propertyGroupsDataSource = [(CNContactContentDisplayViewController *)self propertyGroupsDataSource];
  [propertyGroupsDataSource buildPropertyGroups];

  propertyGroupsDataSource2 = [(CNContactContentDisplayViewController *)self propertyGroupsDataSource];
  propertyGroups = [propertyGroupsDataSource2 propertyGroups];

  return propertyGroups;
}

- (BOOL)shouldShowGemini
{
  geminiDataSource = [(CNContactContentDisplayViewController *)self geminiDataSource];
  geminiResult = [geminiDataSource geminiResult];

  if (geminiResult && ![(CNContactContentDisplayViewController *)self showingMeContact])
  {
    contact = [(CNContactContentDisplayViewController *)self contact];
    if ([contact isSuggested])
    {
      v5 = 0;
    }

    else
    {
      contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
      displayedProperties = [contactViewConfiguration displayedProperties];
      if ([displayedProperties containsObject:*MEMORY[0x1E695C330]])
      {
        contact2 = [(CNContactContentDisplayViewController *)self contact];
        v5 = [CNContactContentDisplayViewController shouldShowGeminiForResult:geminiResult contact:contact2];
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

- (void)_updateTTYTransportButtonsForItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        property = [v10 property];
        v12 = [property isEqualToString:v8];

        if (v12)
        {
          [v10 setAllowsTTY:{-[CNContactContentDisplayViewController contactSupportsTTYCalls](self, "contactSupportsTTYCalls")}];
        }
      }

      v6 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_updateEmailTransportButtonsForItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [itemsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        property = [v9 property];
        v11 = [property isEqualToString:v7];

        if (v11)
        {
          [v9 setAllowsEmail:1];
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_updatePhoneTransportButtonsForItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [itemsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        property = [v9 property];
        v11 = [property isEqualToString:v7];

        if (v11)
        {
          v12 = +[CNCapabilitiesManager defaultCapabilitiesManager];
          v13 = ([v12 hasCellularTelephonyCapability] & 1) != 0 || _CFMZEnabled() != 0;
          [v9 setAllowsPhone:v13];
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_updateIMessageTransportButtonsForItems:(id)items
{
  selfCopy = self;
  v38[3] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v27 = [MEMORY[0x1E695DF70] arrayWithArray:itemsCopy];
  v4 = *MEMORY[0x1E695CBC0];
  v38[0] = *MEMORY[0x1E695CB90];
  v38[1] = v4;
  v38[2] = *MEMORY[0x1E695CB70];
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  array = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = itemsCopy;
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
        property = [v11 property];
        if ([property isEqualToString:v9])
        {
          labeledValue = [v11 labeledValue];
          label = [labeledValue label];
          v15 = [v29 containsObject:label];

          if (v15)
          {
            [v11 setAllowsIMessage:1];
            [array addObject:v11];
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

  [v27 removeObjectsInArray:array];
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
    environment = [(CNContactContentDisplayViewController *)selfCopy environment];
    idsAvailabilityProvider = [environment idsAvailabilityProvider];
    environment2 = [(CNContactContentDisplayViewController *)selfCopy environment];
    defaultSchedulerProvider = [environment2 defaultSchedulerProvider];
    v25 = [v20 validateHandlesForIMessage:v18 availabilityProvider:idsAvailabilityProvider schedulerProvider:defaultSchedulerProvider handler:v19];
    [(CNContactContentDisplayViewController *)selfCopy setIMessageIDSLookupToken:v25];
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

- (void)_updateAvailableTransportsForItems:(id)items
{
  itemsCopy = items;
  v4 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  if ([v4 isMessagesAppAvailable])
  {
    [(CNContactContentDisplayViewController *)self _updateIMessageTransportButtonsForItems:itemsCopy];
  }

  if ([v4 isPhoneAppAvailable])
  {
    [(CNContactContentDisplayViewController *)self _updatePhoneTransportButtonsForItems:itemsCopy];
  }

  if ([v4 isMailAppAvailable])
  {
    [(CNContactContentDisplayViewController *)self _updateEmailTransportButtonsForItems:itemsCopy];
  }

  [(CNContactContentDisplayViewController *)self _updateTTYTransportButtonsForItems:itemsCopy];
}

- (void)_updateAvailableTransports
{
  v7[2] = *MEMORY[0x1E69E9840];
  propertyGroupsDataSource = [(CNContactContentDisplayViewController *)self propertyGroupsDataSource];
  v4 = *MEMORY[0x1E695C208];
  v7[0] = *MEMORY[0x1E695C330];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v6 = [propertyGroupsDataSource allDisplayPropertyItemsForPropertyKeys:v5];

  [(CNContactContentDisplayViewController *)self _updateAvailableTransportsForItems:v6];
}

- (id)_clearRecentsDataAction
{
  recentsData = [(CNContactContentDisplayViewController *)self recentsData];

  if (recentsData && ![(CNContactContentDisplayViewController *)self isSuggestedContact])
  {
    v5 = [CNContactClearRecentsDataAction alloc];
    recentsData2 = [(CNContactContentDisplayViewController *)self recentsData];
    environment = [(CNContactContentDisplayViewController *)self environment];
    recentsManager = [environment recentsManager];
    v4 = [(CNContactClearRecentsDataAction *)v5 initWithRecentsData:recentsData2 coreRecentsManager:recentsManager];
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
  contactFormatter = [(CNContactContentDisplayViewController *)self contactFormatter];
  contact = [(CNContactContentDisplayViewController *)self contact];
  v5 = [contactFormatter stringFromContact:contact];

  if (v5)
  {
    v6 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:v5];
    v7 = objc_alloc(MEMORY[0x1E695CD78]);
    contactFormatter2 = [(CNContactContentDisplayViewController *)self contactFormatter];
    descriptorForRequiredKeys = [contactFormatter2 descriptorForRequiredKeys];
    v26[0] = descriptorForRequiredKeys;
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
    contactStore = [(CNContactContentDisplayViewController *)self contactStore];
    v18[4] = &v20;
    v19 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__CNContactContentDisplayViewController__updateExistingContactAction__block_invoke;
    v18[3] = &unk_1E74E6F60;
    [contactStore enumerateContactsWithFetchRequest:v11 error:&v19 usingBlock:v18];
    v13 = v19;

    if (v21[5])
    {
      v14 = [CNContactUpdateExistingContactAction alloc];
      contact2 = [(CNContactContentDisplayViewController *)self contact];
      v16 = [(CNContactAction *)v14 initWithContact:contact2];

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
    environment = [(CNContactContentDisplayViewController *)self environment];
    idsAvailabilityProvider = [environment idsAvailabilityProvider];
    v7 = [(CNShareLocationController *)v4 initWithIDSAvailabilityProvider:idsAvailabilityProvider];
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
  contact = [(CNContactContentDisplayViewController *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:contact];

  prohibitedPropertyKeys = [(CNContactContentDisplayViewController *)self prohibitedPropertyKeys];
  [(CNContactAddNewFieldAction *)v5 setProhibitedPropertyKeys:prohibitedPropertyKeys];

  [(CNContactAction *)v5 setDelegate:self];
  [(CNContactAddNewFieldAction *)v5 setGroupPickerDelegate:self];

  return v5;
}

- (void)_setupCustomActions
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(CNContactContentDisplayViewController *)self allowsEditInApp])
  {
    contact = [(CNContactContentDisplayViewController *)self contact];
    isSuggested = [contact isSuggested];

    if ((isSuggested & 1) == 0)
    {
      v5 = [CNEditInAppAction alloc];
      contact2 = [(CNContactContentDisplayViewController *)self contact];
      activityManager = [(CNContactContentDisplayViewController *)self activityManager];
      v8 = [(CNEditInAppAction *)v5 initWithContact:contact2 activityManager:activityManager];

      cardFooterGroup = [(CNContactContentDisplayViewController *)self cardFooterGroup];
      title = [(CNEditInAppAction *)v8 title];
      [cardFooterGroup addAction:v8 withTitle:title];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  customActions = [(CNContactContentDisplayViewController *)self customActions];
  v12 = [customActions countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(customActions);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = +[CNCustomCardAction groupForActionGivenPlacement:inContactContentViewController:](CNCustomCardAction, "groupForActionGivenPlacement:inContactContentViewController:", [v16 placement], self);
        menuProvider = [v16 menuProvider];

        if (menuProvider)
        {
          [v17 setDisplaysDropdownMenu:1];
          title2 = [v16 title];
          menuProvider2 = [v16 menuProvider];
          v21 = [v17 addActionWithTitle:title2 menuProvider:menuProvider2 destructive:{objc_msgSend(v16, "isDestructive")}];
        }

        else
        {
          title2 = [v16 title];
          menuProvider2 = [v16 targetActionWrapper];
          v22 = [v17 addActionWithTitle:title2 target:menuProvider2 selector:sel_performActionWithSender_ destructive:{objc_msgSend(v16, "isDestructive")}];
        }
      }

      v13 = [customActions countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }
}

- (void)_setupAddToAddressBookActions
{
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  allowsAddingToAddressBook = [contactViewConfiguration allowsAddingToAddressBook];

  if (allowsAddingToAddressBook)
  {
    actionProvider = [(CNContactContentDisplayViewController *)self actionProvider];
    [actionProvider buildAddContactActions];

    cardActionsGroup = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    actionProvider2 = [(CNContactContentDisplayViewController *)self actionProvider];
    createNewContactAction = [actionProvider2 createNewContactAction];
    v9 = CNContactsUIBundle();
    v10 = [v9 localizedStringForKey:@"UNKNOWN_CARD_CREATE_NEW_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    [cardActionsGroup addAction:createNewContactAction withTitle:v10];

    cardActionsGroup2 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    actionProvider3 = [(CNContactContentDisplayViewController *)self actionProvider];
    addToExistingContactAction = [actionProvider3 addToExistingContactAction];
    v14 = CNContactsUIBundle();
    v15 = [v14 localizedStringForKey:@"UNKNOWN_CARD_ADD_TO_EXISTING_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    [cardActionsGroup2 addAction:addToExistingContactAction withTitle:v15];

    _updateExistingContactAction = [(CNContactContentDisplayViewController *)self _updateExistingContactAction];
    if (_updateExistingContactAction)
    {
      [(CNContactContentDisplayViewController *)self setUpdateExistingContactAction:_updateExistingContactAction];
      v16 = MEMORY[0x1E696AEC0];
      v17 = CNContactsUIBundle();
      v18 = [v17 localizedStringForKey:@"UNKNOWN_CARD_ADD_UPDATE_CONTACT-%@" value:&stru_1F0CE7398 table:@"Localized"];
      contactFormatter = [(CNContactContentDisplayViewController *)self contactFormatter];
      existingContact = [_updateExistingContactAction existingContact];
      v21 = [contactFormatter stringFromContact:existingContact];
      v22 = [v16 stringWithFormat:v18, v21];

      cardActionsGroup3 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
      [cardActionsGroup3 addAction:_updateExistingContactAction withTitle:v22];
    }

    suggestedContactAction = [(CNContactContentDisplayViewController *)self suggestedContactAction];

    if (suggestedContactAction)
    {
      cardBlockContactGroup = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      suggestedContactAction2 = [(CNContactContentDisplayViewController *)self suggestedContactAction];
      v27 = CNContactsUIBundle();
      v28 = [v27 localizedStringForKey:@"SUGGESTION_IGNORE_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
      v29 = +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
      [cardBlockContactGroup addAction:suggestedContactAction2 withTitle:v28 color:v29 transportType:0];
    }
  }
}

- (void)_setupSuggestionActions
{
  originalContacts = [(CNContactContentDisplayViewController *)self originalContacts];
  v8 = [originalContacts _cn_filter:&__block_literal_global_652];

  if ([v8 count] == 1)
  {
    v4 = [CNContactSuggestionAction alloc];
    firstObject = [v8 firstObject];
    v6 = [(CNContactAction *)v4 initWithContact:firstObject];
    [(CNContactContentDisplayViewController *)self setSuggestedContactAction:v6];

    suggestedContactAction = [(CNContactContentDisplayViewController *)self suggestedContactAction];
    [suggestedContactAction setDelegate:self];
  }

  else
  {
    [(CNContactContentDisplayViewController *)self setSuggestedContactAction:0];
  }
}

- (void)reloadCardActionsForBlockState:(BOOL)state preservingChanges:(BOOL)changes
{
  changesCopy = changes;
  stateCopy = state;
  if (!state)
  {
    v7 = +[CNSafetyCheckHelper shared];
    [v7 fetchSharing];
  }

  if ([(CNContactContentDisplayViewController *)self isContactBlocked]!= stateCopy)
  {
    [(CNContactContentDisplayViewController *)self setIsContactBlocked:stateCopy];
    actionsViewController = [(CNContactContentDisplayViewController *)self actionsViewController];
    supportedActionTypes = [actionsViewController supportedActionTypes];
    v10 = [supportedActionTypes count];

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
      actionsViewController2 = [(CNContactContentDisplayViewController *)self actionsViewController];
      [actionsViewController2 setSupportedActionTypes:v11];
    }

    [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:changesCopy];
  }
}

- (void)_setupContactBlockingReportingActionPreservingChanges:(BOOL)changes withUpdate:(BOOL)update
{
  updateCopy = update;
  changesCopy = changes;
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if ([contactViewConfiguration allowsContactBlockingAndReporting])
  {
    showingMeContact = [(CNContactContentDisplayViewController *)self showingMeContact];

    if (showingMeContact)
    {
      return;
    }

    blockReportAction = [(CNContactContentDisplayViewController *)self blockReportAction];

    blockReportAction2 = [(CNContactContentDisplayViewController *)self blockReportAction];

    if (!blockReportAction2)
    {
      v10 = [CNContactToggleBlockReportCallerAction alloc];
      contact = [(CNContactContentDisplayViewController *)self contact];
      v12 = [(CNContactAction *)v10 initWithContact:contact];
      [(CNContactContentDisplayViewController *)self setBlockReportAction:v12];

      blockReportAction3 = [(CNContactContentDisplayViewController *)self blockReportAction];
      [blockReportAction3 setDelegate:self];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_blockListDidChange_ name:*MEMORY[0x1E6995900] object:0];
    }

    blockReportAction4 = [(CNContactContentDisplayViewController *)self blockReportAction];
    v16 = [blockReportAction4 isContactBlockedPreservingChanges:changesCopy];

    if (blockReportAction)
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

      cardBlockContactGroup = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [cardBlockContactGroup removeActionWithTitle:v20];
    }

    v22 = CNContactsUIBundle();
    v23 = v22;
    if (v16)
    {
      contactViewConfiguration = [v22 localizedStringForKey:@"UNBLOCK_CALLER" value:&stru_1F0CE7398 table:@"Localized"];

      cardBlockContactGroup2 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [cardBlockContactGroup2 removeActionWithTitle:contactViewConfiguration];

      +[CNUIColorRepository contactsApplicationTintColor];
    }

    else
    {
      contactViewConfiguration = [v22 localizedStringForKey:@"BLOCK_CALLER" value:&stru_1F0CE7398 table:@"Localized"];

      cardBlockContactGroup3 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [cardBlockContactGroup3 removeActionWithTitle:contactViewConfiguration];

      +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
    }
    v26 = ;
    cardBlockContactGroup4 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
    blockReportAction5 = [(CNContactContentDisplayViewController *)self blockReportAction];
    [cardBlockContactGroup4 addAction:blockReportAction5 withTitle:contactViewConfiguration color:v26 transportType:0];

    if (updateCopy)
    {
      cardBlockContactGroup5 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      v30 = [(CNContactContentDisplayViewController *)self sectionOfGroup:cardBlockContactGroup5];

      if (v30 != 0x7FFFFFFFFFFFFFFFLL)
      {
        contactView = [(CNContactContentDisplayViewController *)self contactView];
        [contactView contentOffset];
        v33 = v32;
        v35 = v34;

        contactView2 = [(CNContactContentDisplayViewController *)self contactView];
        [contactView2 beginUpdates];

        contactView3 = [(CNContactContentDisplayViewController *)self contactView];
        v38 = [MEMORY[0x1E696AC90] indexSetWithIndex:v30];
        [contactView3 reloadSections:v38 withRowAnimation:0];

        contactView4 = [(CNContactContentDisplayViewController *)self contactView];
        [contactView4 endUpdates];

        contactView5 = [(CNContactContentDisplayViewController *)self contactView];
        [contactView5 setContentOffset:{v33, v35}];

        [(CNContactContentDisplayViewController *)self adjustPreferredContentSize];
      }
    }

    [(CNContactContentDisplayViewController *)self reloadCardActionsForBlockState:v16 preservingChanges:changesCopy];
  }
}

- (void)_setupContactBlockingActionPreservingChanges:(BOOL)changes withUpdate:(BOOL)update
{
  updateCopy = update;
  changesCopy = changes;
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if ([contactViewConfiguration allowsContactBlocking])
  {
    showingMeContact = [(CNContactContentDisplayViewController *)self showingMeContact];

    if (showingMeContact)
    {
      return;
    }

    blockAction = [(CNContactContentDisplayViewController *)self blockAction];

    blockAction2 = [(CNContactContentDisplayViewController *)self blockAction];

    if (!blockAction2)
    {
      v10 = [CNContactToggleBlockCallerAction alloc];
      contact = [(CNContactContentDisplayViewController *)self contact];
      v12 = [(CNContactAction *)v10 initWithContact:contact];
      [(CNContactContentDisplayViewController *)self setBlockAction:v12];

      blockAction3 = [(CNContactContentDisplayViewController *)self blockAction];
      [blockAction3 setDelegate:self];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_blockListDidChange_ name:*MEMORY[0x1E6995900] object:0];
    }

    blockAction4 = [(CNContactContentDisplayViewController *)self blockAction];
    v16 = [blockAction4 isContactBlockedPreservingChanges:changesCopy];

    if (blockAction)
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

      cardBlockContactGroup = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [cardBlockContactGroup removeActionWithTitle:v20];
    }

    v22 = CNContactsUIBundle();
    v23 = v22;
    if (v16)
    {
      contactViewConfiguration = [v22 localizedStringForKey:@"UNBLOCK_THIS_CALLER" value:&stru_1F0CE7398 table:@"Localized"];

      cardBlockContactGroup2 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [cardBlockContactGroup2 removeActionWithTitle:contactViewConfiguration];

      +[CNUIColorRepository contactsApplicationTintColor];
    }

    else
    {
      contactViewConfiguration = [v22 localizedStringForKey:@"BLOCK_THIS_CALLER" value:&stru_1F0CE7398 table:@"Localized"];

      cardBlockContactGroup3 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      [cardBlockContactGroup3 removeActionWithTitle:contactViewConfiguration];

      +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
    }
    v26 = ;
    cardBlockContactGroup4 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
    blockAction5 = [(CNContactContentDisplayViewController *)self blockAction];
    [cardBlockContactGroup4 addAction:blockAction5 withTitle:contactViewConfiguration color:v26 transportType:0];

    if (updateCopy)
    {
      cardBlockContactGroup5 = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
      v30 = [(CNContactContentDisplayViewController *)self sectionOfGroup:cardBlockContactGroup5];

      if (v30 != 0x7FFFFFFFFFFFFFFFLL)
      {
        contactView = [(CNContactContentDisplayViewController *)self contactView];
        [contactView contentOffset];
        v33 = v32;
        v35 = v34;

        contactView2 = [(CNContactContentDisplayViewController *)self contactView];
        [contactView2 beginUpdates];

        contactView3 = [(CNContactContentDisplayViewController *)self contactView];
        v38 = [MEMORY[0x1E696AC90] indexSetWithIndex:v30];
        [contactView3 reloadSections:v38 withRowAnimation:0];

        contactView4 = [(CNContactContentDisplayViewController *)self contactView];
        [contactView4 endUpdates];

        contactView5 = [(CNContactContentDisplayViewController *)self contactView];
        [contactView5 setContentOffset:{v33, v35}];

        [(CNContactContentDisplayViewController *)self adjustPreferredContentSize];
      }
    }

    [(CNContactContentDisplayViewController *)self reloadCardActionsForBlockState:v16 preservingChanges:changesCopy];
  }
}

- (void)setupShareLocationActionReload:(BOOL)reload
{
  if (![(CNContactContentDisplayViewController *)self showingMeContact]&& !CNUIIsMessages())
  {
    cardShareLocationGroup = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];
    [cardShareLocationGroup setDisplaysDropdownMenu:1];

    cardShareLocationGroup2 = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];
    shareLocationController = [(CNContactContentDisplayViewController *)self shareLocationController];
    [cardShareLocationGroup2 removeActionWithTarget:shareLocationController selector:sel_perform_];

    objc_initWeak(&location, self);
    shareLocationController2 = [(CNContactContentDisplayViewController *)self shareLocationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__CNContactContentDisplayViewController_setupShareLocationActionReload___block_invoke;
    v9[3] = &unk_1E74E7098;
    objc_copyWeak(&v10, &location);
    reloadCopy = reload;
    [shareLocationController2 canShareWithCompletion:v9];

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
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  allowsActions = [contactViewConfiguration allowsActions];

  if (!allowsActions)
  {
    return;
  }

  actionProvider = [(CNContactContentDisplayViewController *)self actionProvider];
  [actionProvider buildStandardActions];

  actionProvider2 = [(CNContactContentDisplayViewController *)self actionProvider];
  [actionProvider2 buildCommunicationLimitsActions];

  actionProvider3 = [(CNContactContentDisplayViewController *)self actionProvider];
  [actionProvider3 buildStaticIdentityActions];

  contactViewConfiguration2 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if (![contactViewConfiguration2 allowsCardActions])
  {
    goto LABEL_7;
  }

  contact = [(CNContactContentDisplayViewController *)self contact];
  if ([contact isSuggested])
  {
    goto LABEL_6;
  }

  contact2 = [(CNContactContentDisplayViewController *)self contact];
  if ([contact2 isCoreRecentsAccepted])
  {

LABEL_6:
LABEL_7:

    goto LABEL_8;
  }

  isContactBlocked = [(CNContactContentDisplayViewController *)self isContactBlocked];

  if (!isContactBlocked)
  {
    contactViewConfiguration3 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    if ([contactViewConfiguration3 allowsSendMessage])
    {
      actionProvider4 = [(CNContactContentDisplayViewController *)self actionProvider];
      sendMessageAction = [actionProvider4 sendMessageAction];
      if (sendMessageAction)
      {
        v21 = sendMessageAction;
        contactViewConfiguration4 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
        primaryProperty = [contactViewConfiguration4 primaryProperty];

        if (primaryProperty)
        {
          goto LABEL_20;
        }

        contactViewConfiguration3 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
        actionProvider4 = [(CNContactContentDisplayViewController *)self actionProvider];
        sendMessageAction2 = [actionProvider4 sendMessageAction];
        v25 = CNContactsUIBundle();
        v26 = [v25 localizedStringForKey:@"PHONE_ACTION_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
        [contactViewConfiguration3 addAction:sendMessageAction2 withTitle:v26];
      }
    }

LABEL_20:
    actionProvider5 = [(CNContactContentDisplayViewController *)self actionProvider];
    createReminderAction = [actionProvider5 createReminderAction];

    if (createReminderAction)
    {
      cardActionsGroup = [(CNContactContentDisplayViewController *)self cardActionsGroup];
      actionProvider6 = [(CNContactContentDisplayViewController *)self actionProvider];
      createReminderAction2 = [actionProvider6 createReminderAction];
      v32 = CNContactsUIBundle();
      v33 = [v32 localizedStringForKey:@"CREATE_REMINDER_ACTION" value:&stru_1F0CE7398 table:@"Localized"];
      [cardActionsGroup addAction:createReminderAction2 withTitle:v33];
    }

    isHeaderViewPhotoProhibited = [(CNContactContentDisplayViewController *)self isHeaderViewPhotoProhibited];
    contactViewConfiguration5 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    if ([contactViewConfiguration5 allowsSharing] && !isHeaderViewPhotoProhibited)
    {
      actionProvider7 = [(CNContactContentDisplayViewController *)self actionProvider];
      shareContactAction = [actionProvider7 shareContactAction];

      if (!shareContactAction)
      {
LABEL_27:
        actionProvider8 = [(CNContactContentDisplayViewController *)self actionProvider];
        addFavoriteAction = [actionProvider8 addFavoriteAction];

        if (addFavoriteAction)
        {
          cardActionsGroup2 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
          actionProvider9 = [(CNContactContentDisplayViewController *)self actionProvider];
          addFavoriteAction2 = [actionProvider9 addFavoriteAction];
          v47 = CNContactsUIBundle();
          v48 = [v47 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
          [cardActionsGroup2 addAction:addFavoriteAction2 withTitle:v48];
        }

        actionProvider10 = [(CNContactContentDisplayViewController *)self actionProvider];
        contactViewConfiguration2 = [actionProvider10 shareWithFamilyAction];

        if (contactViewConfiguration2 && [contactViewConfiguration2 canPerformAction])
        {
          cardActionsGroup3 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
          title = [contactViewConfiguration2 title];
          [cardActionsGroup3 addAction:contactViewConfiguration2 withTitle:title];
        }

        actionProvider11 = [(CNContactContentDisplayViewController *)self actionProvider];
        stopSharingWithFamilyAction = [actionProvider11 stopSharingWithFamilyAction];
        canPerformAction = [stopSharingWithFamilyAction canPerformAction];

        if (canPerformAction)
        {
          contactViewConfiguration6 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
          ignoresParentalRestrictions = [contactViewConfiguration6 ignoresParentalRestrictions];

          if (ignoresParentalRestrictions)
          {
            cardActionsGroup4 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
            actionProvider12 = [(CNContactContentDisplayViewController *)self actionProvider];
            stopSharingWithFamilyAction2 = [actionProvider12 stopSharingWithFamilyAction];
            actionProvider13 = [(CNContactContentDisplayViewController *)self actionProvider];
            stopSharingWithFamilyAction3 = [actionProvider13 stopSharingWithFamilyAction];
            title2 = [stopSharingWithFamilyAction3 title];
            [cardActionsGroup4 addAction:stopSharingWithFamilyAction2 withTitle:title2];
          }
        }

        [(CNContactContentDisplayViewController *)self setupShareLocationActionReload:0];
        goto LABEL_7;
      }

      contactViewConfiguration5 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
      actionProvider14 = [(CNContactContentDisplayViewController *)self actionProvider];
      shareContactAction2 = [actionProvider14 shareContactAction];
      v40 = CNContactsUIBundle();
      v41 = [v40 localizedStringForKey:@"SHARE_CONTACT_ACTION_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
      [contactViewConfiguration5 addAction:shareContactAction2 withTitle:v41];
    }

    goto LABEL_27;
  }

LABEL_8:
  _clearRecentsDataAction = [(CNContactContentDisplayViewController *)self _clearRecentsDataAction];
  [(CNContactContentDisplayViewController *)self setClearRecentsDataAction:_clearRecentsDataAction];

  clearRecentsDataAction = [(CNContactContentDisplayViewController *)self clearRecentsDataAction];

  if (clearRecentsDataAction)
  {
    clearRecentsDataAction2 = [(CNContactContentDisplayViewController *)self clearRecentsDataAction];
    [clearRecentsDataAction2 setDelegate:self];

    cardActionsGroup5 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    clearRecentsDataAction3 = [(CNContactContentDisplayViewController *)self clearRecentsDataAction];
    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"CLEAR_RECENTS" value:&stru_1F0CE7398 table:@"Localized"];
    [cardActionsGroup5 addAction:clearRecentsDataAction3 withTitle:v16];
  }
}

- (void)_retrieveActionsModelPreservingChanges:(BOOL)changes
{
  contact = [(CNContactContentDisplayViewController *)self contact];

  if (contact)
  {
    if (!changes)
    {
      objc_initWeak(&location, self);
      allActionTypes = [MEMORY[0x1E6996BE8] allActionTypes];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __80__CNContactContentDisplayViewController__retrieveActionsModelPreservingChanges___block_invoke;
      v7[3] = &unk_1E74E7000;
      v7[4] = self;
      objc_copyWeak(&v8, &location);
      [allActionTypes enumerateObjectsUsingBlock:v7];

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

- (void)setupActionsPreservingChanges:(BOOL)changes
{
  changesCopy = changes;
  v27 = [CNContactActionProvider alloc];
  mutableContact = [(CNContactContentDisplayViewController *)self mutableContact];
  contactViewCache = [(CNContactContentDisplayViewController *)self contactViewCache];
  contact = [(CNContactContentDisplayViewController *)self contact];
  v5 = [contactViewCache containerForContact:contact];
  contactViewCache2 = [(CNContactContentDisplayViewController *)self contactViewCache];
  contactStore = [contactViewCache2 contactStore];
  propertyGroupsDataSource = [(CNContactContentDisplayViewController *)self propertyGroupsDataSource];
  actionsDataSource = [(CNContactContentDisplayViewController *)self actionsDataSource];
  v10 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  environment = [(CNContactContentDisplayViewController *)self environment];
  v12 = [(CNContactActionProvider *)v27 initWithContact:mutableContact inContainer:v5 contactStore:contactStore propertyGroupsDataSource:propertyGroupsDataSource actionsDataSource:actionsDataSource capabilities:v10 environment:environment];
  [(CNContactContentDisplayViewController *)self setActionProvider:v12];

  actionProvider = [(CNContactContentDisplayViewController *)self actionProvider];
  [actionProvider setActionDelegate:self];

  actions = [(CNCardGroup *)self->_cardActionsGroup actions];
  v15 = [actions count];

  if (v15)
  {
    v16 = [CNCardGroup alloc];
    mutableContact2 = [(CNContactContentDisplayViewController *)self mutableContact];
    v18 = [(CNCardGroup *)v16 initWithContact:mutableContact2];
    cardActionsGroup = self->_cardActionsGroup;
    self->_cardActionsGroup = v18;
  }

  actions2 = [(CNCardGroup *)self->_cardShareLocationGroup actions];
  v21 = [actions2 count];

  if (v21)
  {
    v22 = [CNCardGroup alloc];
    mutableContact3 = [(CNContactContentDisplayViewController *)self mutableContact];
    v24 = [(CNCardGroup *)v22 initWithContact:mutableContact3];
    cardShareLocationGroup = self->_cardShareLocationGroup;
    self->_cardShareLocationGroup = v24;
  }

  [(CNContactContentDisplayViewController *)self _retrieveActionsModelPreservingChanges:changesCopy];
  [(CNContactContentDisplayViewController *)self _setupCardActions];
  [(CNContactContentDisplayViewController *)self _setupContactBlockingActionPreservingChanges:changesCopy withUpdate:!changesCopy];
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

- (void)blockListDidChange:(id)change
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleCoalescedBlockListDidChange object:0];

  [(CNContactContentDisplayViewController *)self performSelector:sel__handleCoalescedBlockListDidChange withObject:0 afterDelay:0.1];
}

- (void)updateContactsViewWithBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  ++self->_animating;
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__CNContactContentDisplayViewController_updateContactsViewWithBlock_completion___block_invoke;
  v13[3] = &unk_1E74E6F88;
  v14 = blockCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__CNContactContentDisplayViewController_updateContactsViewWithBlock_completion___block_invoke_2;
  v11[3] = &unk_1E74E6FB0;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = blockCopy;
  [contactView performBatchUpdates:v13 completion:v11];
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
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  [contactView contentSize];
  v5 = v4;
  [contactView contentInset];
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

- (double)desiredHeightForWidth:(double)width
{
  view = [(CNContactContentDisplayViewController *)self view];
  [view frame];
  [view setFrame:?];
  [(CNContactContentDisplayViewController *)self reloadDataIfNeeded];
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  visibleCells = [contactView visibleCells];

  view2 = [(CNContactContentDisplayViewController *)self view];
  [view2 layoutIfNeeded];

  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView setNeedsLayout];

  [(CNContactContentDisplayViewController *)self requiredSizeForVisibleTableView];
  v10 = v9;
  superview = [view superview];
  [superview frame];
  [view setFrame:?];

  return v10;
}

- (void)reloadUnifiedContact
{
  contact = [(CNContactContentDisplayViewController *)self contact];
  v4 = objc_opt_class();

  contact2 = [(CNContactContentDisplayViewController *)self contact];
  linkedContacts = [contact2 linkedContacts];

  v6 = linkedContacts;
  if (linkedContacts)
  {
    v7 = [v4 unifyContacts:linkedContacts];
    [(CNContactContentDisplayViewController *)self setContact:v7];

    v6 = linkedContacts;
  }
}

- (void)removeLinkedContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v9 = contactCopy;
    contact = [(CNContactContentDisplayViewController *)self contact];
    mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
    v7 = [mainStoreLinkedContacts containsObject:v9];

    contactCopy = v9;
    if (v7)
    {
      [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:1];
      v8 = +[CNUIDataCollector sharedCollector];
      [v8 logContactActionType:CNUIContactActionTypeUnlink attributes:0];

      contactCopy = v9;
    }
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
    contact = [(CNContactContentDisplayViewController *)self contact];
  }

  v6 = contact;
  [(CNContactContentDisplayViewController *)self setContact:contact];
  [(CNContactContentDisplayViewController *)self _didCompleteWithContact:v6];
}

- (void)createdNewContact:(id)contact
{
  contactCopy = contact;
  v6 = contactCopy;
  if (contactCopy)
  {
    [(CNContactContentDisplayViewController *)self setContact:contactCopy];
    [(CNContactContentDisplayViewController *)self setMode:1];
    contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    [contactViewConfiguration setAllowsAddingToAddressBook:0];

    contactCopy = v6;
  }

  [(CNContactContentDisplayViewController *)self _didCompleteWithContact:contactCopy];
}

- (void)updateContact:(id)contact
{
  if ([(CNContactContentDisplayViewController *)self saveChanges])
  {
    mutableContact = [(CNContactContentDisplayViewController *)self mutableContact];
    [(CNContactContentDisplayViewController *)self _didCompleteWithContact:mutableContact];
  }

  else
  {
    [(CNContactContentDisplayViewController *)self _didCompleteWithContact:0];
  }

  [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:0];
}

- (void)_didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v5 = contactCopy;
    v16 = [(CNContactContentDisplayViewController *)self _removeUnauthorizedKeysFromContact:contactCopy];

    if (self->_contact != &self->_mutableContact->super)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v16 copy];

        v16 = v6;
      }
    }

    suggestedContactAction = [(CNContactContentDisplayViewController *)self suggestedContactAction];
    [suggestedContactAction confirmSuggestion];
  }

  else
  {
    v16 = 0;
  }

  if ([(CNContactContentDisplayViewController *)self mode]== 3)
  {
    originalContacts = [(CNContactContentDisplayViewController *)self originalContacts];
    v9 = [originalContacts count];

    if (v9 == 1)
    {
      if (v16)
      {
        v10 = +[CNUIDataCollector sharedCollector];
        originalContacts2 = [(CNContactContentDisplayViewController *)self originalContacts];
        v12 = [originalContacts2 objectAtIndexedSubscript:0];
        [v10 logContactCreated:v16 originalContact:v12];
      }
    }
  }

  delegate = [(CNContactContentDisplayViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(CNContactContentDisplayViewController *)self delegate];
    [delegate2 contactDisplayViewController:self didCompleteWithContact:v16];
  }
}

- (id)_removeUnauthorizedKeysFromContact:(id)contact
{
  contactCopy = contact;
  missingRequiredKeys = [(CNContactContentDisplayViewController *)self missingRequiredKeys];
  v6 = [missingRequiredKeys count];

  if (v6)
  {
    v7 = [contactCopy mutableCopy];
    missingRequiredKeys2 = [(CNContactContentDisplayViewController *)self missingRequiredKeys];
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
    [(CNContactContentDisplayViewController *)self setMissingRequiredKeys:second];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__59503;
    v28 = __Block_byref_object_dispose__59504;
    v29 = 0;
    v13 = objc_alloc(MEMORY[0x1E695CD78]);
    missingRequiredKeys = [(CNContactContentDisplayViewController *)self missingRequiredKeys];
    v15 = [v13 initWithKeysToFetch:missingRequiredKeys];

    v16 = MEMORY[0x1E695CD58];
    identifier = [contactCopy identifier];
    v30[0] = identifier;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v19 = [v16 predicateForContactsWithIdentifiers:v18];
    [v15 setPredicate:v19];

    [v15 setUnifyResults:{objc_msgSend(contactCopy, "isUnified")}];
    contactStore = [(CNContactContentDisplayViewController *)self contactStore];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __88__CNContactContentDisplayViewController__updateContact_withMissingKeysFromRequiredKeys___block_invoke;
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

- (id)saveDescriptionForRemovingLinkedContact:(id)contact keys:(id)keys
{
  keysCopy = keys;
  contact = [(CNContactContentDisplayViewController *)self contact];
  isUnified = [contact isUnified];

  if (isUnified)
  {
    contact2 = [(CNContactContentDisplayViewController *)self contact];
    mainStoreLinkedContacts = [contact2 mainStoreLinkedContacts];
    v10 = [mainStoreLinkedContacts mutableCopy];
  }

  else
  {
    v11 = MEMORY[0x1E695DF70];
    contact2 = [(CNContactContentDisplayViewController *)self contact];
    mainStoreLinkedContacts = [contact2 copyWithPropertyKeys:keysCopy];
    v10 = [v11 arrayWithObject:mainStoreLinkedContacts];
  }

  v12 = v10;

  v13 = [CNUIContactSaveConfiguration alloc];
  contact3 = [(CNContactContentDisplayViewController *)self contact];
  mutableContact = [(CNContactContentDisplayViewController *)self mutableContact];
  originalContacts = [(CNContactContentDisplayViewController *)self originalContacts];
  contactStore = [(CNContactContentDisplayViewController *)self contactStore];
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  ignoresParentalRestrictions = [contactViewConfiguration ignoresParentalRestrictions];
  editAuthorizationManager = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  LOBYTE(v23) = [editAuthorizationManager saveWasAuthorized];
  v21 = [(CNUIContactSaveConfiguration *)v13 initWithContact:contact3 mutableContact:mutableContact originalContacts:originalContacts editingLinkedContacts:v12 contactStore:contactStore ignoresParentalRestrictions:ignoresParentalRestrictions saveWasAuthorized:v23];

  return v21;
}

- (void)_updateLabelWidthsForAllVisibleCells
{
  v18 = *MEMORY[0x1E69E9840];
  contactView = [(CNContactContentDisplayViewController *)self contactView];
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

        [(CNContactContentDisplayViewController *)self _updateLabelWidthForCell:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [contactView setContentOffset:{v5, v7}];
  [(CNContactContentDisplayViewController *)self adjustPreferredContentSize];
}

- (void)_updateLabelWidthForCellsInGroup:(id)group reset:(BOOL)reset
{
  resetCopy = reset;
  groupCopy = group;
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  if (resetCopy)
  {
    v7 = [(CNContactContentDisplayViewController *)self _labelWidthKeyForGroup:groupCopy];
    cachedLabelWidths = [(CNContactContentDisplayViewController *)self cachedLabelWidths];
    [cachedLabelWidths removeObjectForKey:v7];
  }

  [(CNContactContentDisplayViewController *)self _updateCachedLabelWidthsForGroup:groupCopy];
  v9 = [(CNContactContentDisplayViewController *)self sectionOfGroup:groupCopy];
  displayItems = [groupCopy displayItems];
  if ([displayItems count])
  {
    v11 = 0;
    do
    {
      v12 = [MEMORY[0x1E696AC88] indexPathForRow:v11 inSection:v9];
      v13 = [contactView cellForRowAtIndexPath:v12];
      [(CNContactContentDisplayViewController *)self _updateLabelWidthForCell:v13];

      ++v11;
    }

    while (v11 < [displayItems count]);
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
      v10 = [(CNContactContentDisplayViewController *)self _labelWidthKeyForItem:propertyItem];
    }

    else
    {
      group = [propertyItem group];
      v10 = [(CNContactContentDisplayViewController *)self _labelWidthKeyForGroup:group];
    }

    cachedLabelWidths = [(CNContactContentDisplayViewController *)self cachedLabelWidths];
    v13 = [cachedLabelWidths objectForKey:v10];
    [v13 floatValue];
    [v6 setLabelWidth:v14];

    v5 = cellCopy;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v5);
}

- (void)_updateCachedLabelWidthsIfNeeded
{
  cachedLabelWidths = [(CNContactContentDisplayViewController *)self cachedLabelWidths];

  if (!cachedLabelWidths)
  {
    traitCollection = [(CNContactContentDisplayViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
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
    view = [(CNContactContentDisplayViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_updateCachedLabelWidths
{
  weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  [(CNContactContentDisplayViewController *)self setCachedLabelWidths:weakToStrongObjectsMapTable];

  displayGroups = [(CNContactContentDisplayViewController *)self displayGroups];
  v5 = [displayGroups count];

  if (v5)
  {
    v6 = 0;
    do
    {
      displayGroups2 = [(CNContactContentDisplayViewController *)self displayGroups];
      v8 = [displayGroups2 objectAtIndexedSubscript:v6];

      [(CNContactContentDisplayViewController *)self _updateCachedLabelWidthsForGroup:v8];
      ++v6;
      displayGroups3 = [(CNContactContentDisplayViewController *)self displayGroups];
      v10 = [displayGroups3 count];
    }

    while (v6 < v10);
  }

  [(CNContactContentDisplayViewController *)self _updateLabelWidthsForAllVisibleCells];
}

- (void)_updateCachedLabelWidthsForGroup:(id)group
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  displayItems = [group displayItems];
  v5 = [displayItems countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(displayItems);
        }

        [(CNContactContentDisplayViewController *)self _updateCachedLabelWidthsForItem:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [displayItems countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    contactView = [(CNContactContentDisplayViewController *)self contactView];
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

    contactView2 = [(CNContactContentDisplayViewController *)self contactView];
    [contactView2 frame];
    Width = CGRectGetWidth(v39);
    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      contactView3 = [(CNContactContentDisplayViewController *)self contactView];
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
    contactView4 = [(CNContactContentDisplayViewController *)self contactView];
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
    v27 = [(CNContactContentDisplayViewController *)self _labelWidthKeyForGroup:group];
    v28 = [(CNContactContentDisplayViewController *)self _labelWidthKeyForItem:v6];
    cachedLabelWidths = [(CNContactContentDisplayViewController *)self cachedLabelWidths];
    v30 = [cachedLabelWidths objectForKey:v27];
    [v30 floatValue];
    v32 = v31;

    if (v25 > 0.0)
    {
      cachedLabelWidths2 = [(CNContactContentDisplayViewController *)self cachedLabelWidths];
      v34 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      [cachedLabelWidths2 setObject:v34 forKey:v28];

      if (v25 > v32)
      {
        cachedLabelWidths3 = [(CNContactContentDisplayViewController *)self cachedLabelWidths];
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

- (void)removeFirstSectionHeaderViewControllerFromHierarchy
{
  personHeaderViewController = [(CNContactContentDisplayViewController *)self personHeaderViewController];
  parentViewController = [personHeaderViewController parentViewController];

  if (parentViewController)
  {
    personHeaderViewController2 = [(CNContactContentDisplayViewController *)self personHeaderViewController];
    [personHeaderViewController2 willMoveToParentViewController:0];

    personHeaderViewController3 = [(CNContactContentDisplayViewController *)self personHeaderViewController];
    isViewLoaded = [personHeaderViewController3 isViewLoaded];

    if (isViewLoaded)
    {
      personHeaderViewController4 = [(CNContactContentDisplayViewController *)self personHeaderViewController];
      view = [personHeaderViewController4 view];
      [view removeFromSuperview];
    }

    personHeaderViewController5 = [(CNContactContentDisplayViewController *)self personHeaderViewController];
    [personHeaderViewController5 removeFromParentViewController];
  }
}

- (BOOL)isTableViewHeaderFirstSectionIndexPath:(id)path
{
  pathCopy = path;
  if ([(CNContactContentDisplayViewController *)self hasTableViewHeaderFirstSection])
  {
    v5 = [pathCopy section] == 0;
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
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  v4 = [contactView dequeueReusableCellWithIdentifier:@"FirstSectionCellIdentifier"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"FirstSectionCellIdentifier"];
    [v4 setSelectionStyle:0];
    [v4 setSeparatorStyle:0];
    [v4 _cnui_applyContactStyle];
  }

  selfCopy = self;
  personHeaderViewController = [(CNContactContentDisplayViewController *)selfCopy personHeaderViewController];
  parentViewController = [personHeaderViewController parentViewController];

  if (parentViewController != selfCopy)
  {
    [(CNContactContentDisplayViewController *)selfCopy removeFirstSectionHeaderViewControllerFromHierarchy];
    personHeaderViewController2 = [(CNContactContentDisplayViewController *)selfCopy personHeaderViewController];
    [(CNContactContentDisplayViewController *)selfCopy addChildViewController:personHeaderViewController2];

    personHeaderViewController3 = [(CNContactContentDisplayViewController *)selfCopy personHeaderViewController];
    view = [personHeaderViewController3 view];

    contentView = [v4 contentView];
    [contentView addSubview:view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];

    v20 = @"personHeaderView";
    v21[0] = view;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    array = [MEMORY[0x1E695DF70] array];
    v16 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[personHeaderView]|" options:0 metrics:0 views:v14];
    [array addObjectsFromArray:v16];

    v17 = [MEMORY[0x1E696ACD8] constraintWithItem:view attribute:5 relatedBy:0 toItem:layoutMarginsGuide attribute:5 multiplier:1.0 constant:0.0];
    [array addObject:v17];

    v18 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[personHeaderView]|" options:0 metrics:0 views:v14];
    [array addObjectsFromArray:v18];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
  }

  return v4;
}

- (BOOL)hasTableViewHeaderFirstSection
{
  personHeaderViewController = [(CNContactContentDisplayViewController *)self personHeaderViewController];
  v3 = personHeaderViewController != 0;

  return v3;
}

- (void)geminiDataSourceDidUpdate:(id)update
{
  geminiResult = [update geminiResult];
  shouldShowGemini = [(CNContactContentDisplayViewController *)self shouldShowGemini];
  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView updateGeminiResult:geminiResult];

  contactHeaderView2 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView2 setShouldShowGemini:shouldShowGemini];
}

- (void)setMenuProviderForCell:(id)cell forActionGroupItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  if (cellCopy && (-[CNContactContentDisplayViewController cardShareLocationGroup](self, "cardShareLocationGroup"), v8 = objc_claimAutoreleasedReturnValue(), [v8 actions], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(itemCopy, "actions"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToArray:", v10), v10, v9, v8, v11))
  {
    shareLocationController = [(CNContactContentDisplayViewController *)self shareLocationController];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __83__CNContactContentDisplayViewController_setMenuProviderForCell_forActionGroupItem___block_invoke;
    v23[3] = &unk_1E74E6E70;
    v24 = cellCopy;
    [shareLocationController actionsMenuProviderWithCompletion:v23];
  }

  else
  {
    actions = [itemCopy actions];
    firstObject = [actions firstObject];

    objc_opt_class();
    v15 = firstObject;
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
      menuProvider = [v17 menuProvider];
      [cellCopy setMenuProvider:menuProvider];
    }

    else
    {
      target = [v15 target];
      if ([target conformsToProtocol:&unk_1F0D822B0])
      {
        v20 = target;
      }

      else
      {
        v20 = 0;
      }

      menuProvider = v20;

      if (menuProvider)
      {
        contextMenuInteraction = [cellCopy contextMenuInteraction];
        v22 = [menuProvider menuProviderForContextMenuInteraction:contextMenuInteraction];
        [cellCopy setMenuProvider:v22];
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

- (id)_cellForIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:pathCopy];
  v7 = [(CNContactContentDisplayViewController *)self _cellIdentifierForIndexPath:pathCopy];
  noteCell = [(CNContactContentDisplayViewController *)self noteCell];
  if (noteCell && (v9 = noteCell, -[CNContactContentDisplayViewController contactView](self, "contactView"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_class(), [v11 cellIdentifierForClass:objc_opt_class()], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v7, "isEqualToString:", v12), v12, v10, v9, v13))
  {
    noteCell2 = [(CNContactContentDisplayViewController *)self noteCell];
    [(CNContactContentDisplayViewController *)self setNoteCell:0];
  }

  else
  {
    contactView = [(CNContactContentDisplayViewController *)self contactView];
    noteCell2 = [contactView dequeueReusableCellWithIdentifier:v7];
  }

  if (!noteCell2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactContentDisplayViewController.m" lineNumber:3089 description:{@"We couldn’t create a cell with identifier: %@ indexPath: %@", v7, pathCopy}];
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
      highlightedProperties = [(CNContactContentDisplayViewController *)self highlightedProperties];
      if ([highlightedProperties count])
      {
        highlightedProperties2 = [(CNContactContentDisplayViewController *)self highlightedProperties];
        contactProperty = [v18 contactProperty];
        v22 = [highlightedProperties2 containsObject:contactProperty];

        if (v22 && (objc_opt_respondsToSelector() & 1) != 0)
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

  [noteCell2 setCardGroupItem:v6];
  if (objc_opt_respondsToSelector())
  {
    presentingDelegate = [(CNContactContentDisplayViewController *)self presentingDelegate];
    [noteCell2 setPresentingDelegate:presentingDelegate];
  }

  if (objc_opt_respondsToSelector())
  {
    contactView2 = [(CNContactContentDisplayViewController *)self contactView];
    v25 = objc_opt_class();
    v26 = [v25 cellIdentifierForClass:objc_opt_class()];
    v27 = [v7 isEqualToString:v26];

    contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    allowsEditing = [contactViewConfiguration allowsEditing];
    v30 = allowsEditing;
    if (v27)
    {
      if (allowsEditing)
      {
        editAuthorizationManager = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
        [noteCell2 setAllowsEditing:{objc_msgSend(editAuthorizationManager, "shouldPromptForPasscodeAuthorization") ^ 1}];

LABEL_29:
        goto LABEL_30;
      }

      v32 = noteCell2;
      v30 = 0;
    }

    else
    {
      v32 = noteCell2;
    }

    [v32 setAllowsEditing:v30];
    goto LABEL_29;
  }

LABEL_30:
  if (objc_opt_respondsToSelector())
  {
    contactViewConfiguration2 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    [noteCell2 setAllowsActions:{objc_msgSend(contactViewConfiguration2, "allowsActions")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v34 = noteCell2;
    contactViewConfiguration3 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    [v34 setVIP:{objc_msgSend(contactViewConfiguration3, "isMailVIP")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v36 = noteCell2;
    emergencyNumberIdentifier = [(CNContactContentDisplayViewController *)self emergencyNumberIdentifier];
    propertyItem = [v36 propertyItem];
    contactProperty2 = [propertyItem contactProperty];
    identifier = [contactProperty2 identifier];
    [v36 setEmergencyPhoneNumber:{objc_msgSend(emergencyNumberIdentifier, "isEqualToString:", identifier)}];
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
    v44 = noteCell2;
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

  return noteCell2;
}

- (id)_cellIdentifierForIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    property = [v6 property];
    v8 = [CNContactView cellIdentifierForProperty:property];
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
    property = -[CNContactContentDisplayViewController _cardGroupAtTableViewSectionIndex:](self, "_cardGroupAtTableViewSectionIndex:", [pathCopy section]);
    if ([property useSplitActions])
    {
      v8 = +[CNContactView cellIdentifierForSplitActions];
    }

    else
    {
      if ([property displaysDropdownMenu])
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactContentDisplayViewController.m" lineNumber:3069 description:{@"Unknown group item: %@", v6}];

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)_scrollContactView:(id)view toVisibleGroup:(id)group
{
  viewCopy = view;
  groupCopy = group;
  [viewCopy _effectiveContentInset];
  [viewCopy setContentOffset:{0.0, -v7}];
  if (groupCopy)
  {
    v8 = [(CNContactContentDisplayViewController *)self sectionOfGroup:groupCopy];
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
      v18 = [(CNContactContentDisplayViewController *)self cardGroupForProperty:property];

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
  contact = [(CNContactContentDisplayViewController *)self contact];
  isSuggested = [contact isSuggested];

  return isSuggested;
}

- (BOOL)contactDisplayViewController:(id)controller shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier
{
  contactCopy = contact;
  keyCopy = key;
  identifierCopy = identifier;
  delegate = [(CNContactContentDisplayViewController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(CNContactContentDisplayViewController *)self delegate];
    v15 = [delegate2 contactDisplayViewController:self shouldPerformDefaultActionForContact:contactCopy propertyKey:keyCopy propertyIdentifier:identifierCopy];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)contactViewController:(id)controller didDeleteContact:(id)contact
{
  v19[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  contact = [(CNContactContentDisplayViewController *)self contact];
  mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
  v8 = [mainStoreLinkedContacts containsObject:contactCopy];

  if (v8)
  {
    [(CNContactContentDisplayViewController *)self removeLinkedContact:contactCopy];
    saveLinkedContactsExecutor = [(CNContactContentDisplayViewController *)self saveLinkedContactsExecutor];
    contact2 = [(CNContactContentDisplayViewController *)self contact];
    availableKeyDescriptor = [contact2 availableKeyDescriptor];
    v19[0] = availableKeyDescriptor;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v13 = [(CNContactContentDisplayViewController *)self saveDescriptionForRemovingLinkedContact:contactCopy keys:v12];
    v14 = [saveLinkedContactsExecutor executeSaveWithConfiguration:v13 saveDelegate:self];

    issuedSaveRequestIdentifiers = [(CNContactContentDisplayViewController *)self issuedSaveRequestIdentifiers];
    identifiersOfIssuedSaveRequests = [v14 identifiersOfIssuedSaveRequests];
    [issuedSaveRequestIdentifiers addObjectsFromArray:identifiersOfIssuedSaveRequests];

    contact3 = [v14 contact];

    if (contact3)
    {
      contact4 = [v14 contact];
      [(CNContactContentDisplayViewController *)self setContact:contact4];
    }
  }
}

- (double)navigationBarHeight
{
  currentNavigationController = [(CNContactContentDisplayViewController *)self currentNavigationController];
  navigationBar = [currentNavigationController navigationBar];
  [navigationBar frame];
  v5 = v4;

  return v5;
}

- (UIEdgeInsets)headerViewSafeAreaInsets
{
  view = [(CNContactContentDisplayViewController *)self view];
  [view safeAreaInsets];
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

- (void)headerViewDidTapNameLabel:(id)label
{
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  allowsNamePicking = [contactViewConfiguration allowsNamePicking];

  if (allowsNamePicking)
  {

    [(CNContactContentDisplayViewController *)self _pickName];
  }
}

- (void)headerViewDidChangeHeight:(id)height
{
  heightCopy = height;
  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];

  if (contactHeaderView == heightCopy)
  {
    [(CNContactContentDisplayViewController *)self viewDidLayoutSubviews];
    [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:1];

    [(CNContactContentDisplayViewController *)self setupConstraints];
  }
}

- (BOOL)isNicknameProhibited
{
  prohibitedPropertyKeys = [(CNContactContentDisplayViewController *)self prohibitedPropertyKeys];
  v3 = [prohibitedPropertyKeys containsObject:*MEMORY[0x1E695C310]];

  return v3;
}

- (void)requestFavoritesUpdateWithGemini
{
  environment = [(CNContactContentDisplayViewController *)self environment];
  inProcessFavorites = [environment inProcessFavorites];
  contact = [(CNContactContentDisplayViewController *)self contact];
  v6 = [inProcessFavorites entriesForContact:contact];

  if (v6)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.contacts.clientDidDisplayFavorites", 0, 0, 0);
  }
}

- (void)headerViewDidPickPreferredChannel:(id)channel
{
  channelCopy = channel;
  contact = [(CNContactContentDisplayViewController *)self contact];
  preferredChannel = [contact preferredChannel];
  v6 = [preferredChannel isEqualToString:channelCopy];

  if ((v6 & 1) == 0)
  {
    contact2 = [(CNContactContentDisplayViewController *)self contact];
    v8 = [contact2 mutableCopy];

    [v8 setPreferredChannel:channelCopy];
    v9 = objc_alloc_init(MEMORY[0x1E695CF88]);
    [v9 setIgnoresGuardianRestrictions:1];
    [v9 setIgnoresContactProviderRestrictions:1];
    issuedSaveRequestIdentifiers = [(CNContactContentDisplayViewController *)self issuedSaveRequestIdentifiers];
    saveRequestIdentifier = [v9 saveRequestIdentifier];
    [issuedSaveRequestIdentifiers addObject:saveRequestIdentifier];

    [v9 updateContact:v8];
    contactStore = [(CNContactContentDisplayViewController *)self contactStore];
    [contactStore executeSaveRequest:v9 error:0];

    [(CNContactContentDisplayViewController *)self setContact:v8];
    [(CNContactContentDisplayViewController *)self requestFavoritesUpdateWithGemini];
    [(CNContactContentDisplayViewController *)self updateInsetsIfNeeded];
  }
}

- (void)headerPhotoDidUpdate
{
  contactNavigationItemUpdater = [(CNContactContentDisplayViewController *)self contactNavigationItemUpdater];
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  allowsEditing = [contactViewConfiguration allowsEditing];
  mode = [(CNContactContentDisplayViewController *)self mode];
  editAuthorizationManager = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  [contactNavigationItemUpdater updateDisplayDoneButtonForController:self allowsEditing:allowsEditing viewMode:mode editRequiresAuthorization:{objc_msgSend(editAuthorizationManager, "shouldPromptForPasscodeAuthorization")}];
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

- (void)propertyCellDidChangeLayout:(id)layout
{
  layoutCopy = layout;
  contactView = [(CNContactContentDisplayViewController *)self contactView];
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
  v37 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  [groupCopy itemsUsingLabel:label];
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
        nextAvailableLabel = [groupCopy nextAvailableLabel];
        [v7 updateLabeledValueWithLabel:nextAvailableLabel];
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        contactView = [(CNContactContentDisplayViewController *)self contactView];
        visibleCells = [contactView visibleCells];

        v11 = [visibleCells countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(visibleCells);
              }

              v15 = *(*(&v27 + 1) + 8 * v14);
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
            v12 = [visibleCells countByEnumeratingWithState:&v27 objects:v35 count:16];
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

  [(CNContactContentDisplayViewController *)self _updateLabelWidthForCellsInGroup:groupCopy reset:1];
  contactNavigationItemUpdater = [(CNContactContentDisplayViewController *)self contactNavigationItemUpdater];
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  allowsEditing = [contactViewConfiguration allowsEditing];
  mode = [(CNContactContentDisplayViewController *)self mode];
  editAuthorizationManager = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  [contactNavigationItemUpdater updateDisplayDoneButtonForController:self allowsEditing:allowsEditing viewMode:mode editRequiresAuthorization:{objc_msgSend(editAuthorizationManager, "shouldPromptForPasscodeAuthorization")}];
}

- (void)propertyCell:(id)cell performActionForItem:(id)item withTransportType:(int64_t)type
{
  cellCopy = cell;
  itemCopy = item;
  if (type == 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        actionProvider = [(CNContactContentDisplayViewController *)self actionProvider];
        linkedCardsAction = [actionProvider linkedCardsAction];
        goto LABEL_9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        actionProvider = [(CNContactContentDisplayViewController *)self actionProvider];
        addLinkedCardAction = [actionProvider addLinkedCardAction];
        [addLinkedCardAction performActionWithSender:cellCopy];
        goto LABEL_10;
      }

      if ([cellCopy isSuggested])
      {
        v15 = [CNPropertySuggestionAction alloc];
        contact = [(CNContactContentDisplayViewController *)self contact];
        v17 = [(CNPropertyAction *)v15 initWithContact:contact propertyItem:itemCopy];

        [(CNContactAction *)v17 setDelegate:self];
      }

      else
      {
        if (type == 7)
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
          v21 = itemCopy;
          v43 = v21;
          v22 = cellCopy;
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
          selfCopy = self;
          v40 = v21;
          v27 = v22;
          v41 = v27;
          v28 = [v24 actionWithTitle:v26 style:0 handler:&v35];
          [(CNPropertySuggestionAction *)v17 addAction:v28, v35, v36, v37, v38, selfCopy];

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
          [CNPropertyAction performDefaultActionForItem:itemCopy sender:cellCopy];
          goto LABEL_11;
        }

        v33 = [CNPropertyPostalAddressAction alloc];
        contact2 = [(CNContactContentDisplayViewController *)self contact];
        v17 = [(CNPropertyAction *)v33 initWithContact:contact2 propertyItem:itemCopy];
      }

      [(CNPropertySuggestionAction *)v17 performActionForItem:itemCopy sender:cellCopy];
LABEL_19:

      goto LABEL_11;
    }

LABEL_6:
    actionProvider2 = [(CNContactContentDisplayViewController *)self actionProvider];
    faceTimeAction = [actionProvider2 faceTimeAction];
    [faceTimeAction setType:type];

    actionProvider = [(CNContactContentDisplayViewController *)self actionProvider];
    linkedCardsAction = [actionProvider faceTimeAction];
    goto LABEL_9;
  }

  if (type == 3)
  {
    goto LABEL_6;
  }

  if (type != 2)
  {
    goto LABEL_7;
  }

  actionProvider = [(CNContactContentDisplayViewController *)self actionProvider];
  linkedCardsAction = [actionProvider sendMessageAction];
LABEL_9:
  addLinkedCardAction = linkedCardsAction;
  [linkedCardsAction performActionForItem:itemCopy sender:cellCopy];
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
  [(CNContactContentDisplayViewController *)self _updateLabelWidthForCellsInGroup:group reset:1];

  property = [itemCopy property];
  v11 = *MEMORY[0x1E695C1E0];
  if ([property isEqualToString:*MEMORY[0x1E695C1E0]])
  {

    v12 = *MEMORY[0x1E695C3F8];
  }

  else
  {
    property2 = [itemCopy property];
    v12 = *MEMORY[0x1E695C3F8];
    v14 = [property2 isEqualToString:*MEMORY[0x1E695C3F8]];

    if (!v14)
    {
      goto LABEL_7;
    }
  }

  propertyGroups = [(CNContactContentDisplayViewController *)self propertyGroups];
  v16 = [propertyGroups objectForKeyedSubscript:v11];
  [(CNContactContentDisplayViewController *)self _validateGroup:v16];

  propertyGroups2 = [(CNContactContentDisplayViewController *)self propertyGroups];
  v18 = [propertyGroups2 objectForKeyedSubscript:v12];
  [(CNContactContentDisplayViewController *)self _validateGroup:v18];

LABEL_7:
  contactNavigationItemUpdater = [(CNContactContentDisplayViewController *)self contactNavigationItemUpdater];
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  allowsEditing = [contactViewConfiguration allowsEditing];
  mode = [(CNContactContentDisplayViewController *)self mode];
  editAuthorizationManager = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  [contactNavigationItemUpdater updateDisplayDoneButtonForController:self allowsEditing:allowsEditing viewMode:mode editRequiresAuthorization:{objc_msgSend(editAuthorizationManager, "shouldPromptForPasscodeAuthorization")}];
}

- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewLabel:(id)label
{
  itemCopy = item;
  cellCopy = cell;
  [itemCopy updateLabeledValueWithLabel:label];
  [cellCopy updateWithPropertyItem:itemCopy];

  group = [itemCopy group];

  [(CNContactContentDisplayViewController *)self _updateLabelWidthForCellsInGroup:group reset:1];
  contactNavigationItemUpdater = [(CNContactContentDisplayViewController *)self contactNavigationItemUpdater];
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  allowsEditing = [contactViewConfiguration allowsEditing];
  mode = [(CNContactContentDisplayViewController *)self mode];
  editAuthorizationManager = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  [contactNavigationItemUpdater updateDisplayDoneButtonForController:self allowsEditing:allowsEditing viewMode:mode editRequiresAuthorization:{objc_msgSend(editAuthorizationManager, "shouldPromptForPasscodeAuthorization")}];
}

- (void)actionWasCanceled:(id)canceled
{
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  contactView2 = [(CNContactContentDisplayViewController *)self contactView];
  indexPathForSelectedRow = [contactView2 indexPathForSelectedRow];
  [contactView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (void)actionDidFinish:(id)finish
{
  finishCopy = finish;
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  contactView2 = [(CNContactContentDisplayViewController *)self contactView];
  indexPathForSelectedRow = [contactView2 indexPathForSelectedRow];
  [contactView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

  ignoreContactAction = [(CNContactContentDisplayViewController *)self ignoreContactAction];

  if (ignoreContactAction == finishCopy)
  {
    delegate = [(CNContactContentDisplayViewController *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegate2 = [(CNContactContentDisplayViewController *)self delegate];
      contact = [(CNContactContentDisplayViewController *)self contact];
      [delegate2 contactDisplayViewController:self didDeleteContact:contact];
LABEL_10:
    }

LABEL_11:
    navigationController = [(CNContactContentDisplayViewController *)self navigationController];
    v22 = [navigationController popViewControllerAnimated:1];
LABEL_20:

    goto LABEL_21;
  }

  actionProvider = [(CNContactContentDisplayViewController *)self actionProvider];
  addFavoriteAction = [actionProvider addFavoriteAction];

  actionProvider2 = [(CNContactContentDisplayViewController *)self actionProvider];
  v12 = actionProvider2;
  if (addFavoriteAction == finishCopy)
  {
    addFavoriteAction2 = [actionProvider2 addFavoriteAction];
    canPerformAction = [addFavoriteAction2 canPerformAction];

    if ((canPerformAction & 1) == 0)
    {
      cardActionsGroup = [(CNContactContentDisplayViewController *)self cardActionsGroup];
      v26 = CNContactsUIBundle();
      v27 = [v26 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
      [cardActionsGroup removeActionWithTitle:v27];
    }

    selfCopy2 = self;
    v29 = 0;
    goto LABEL_15;
  }

  createNewContactAction = [actionProvider2 createNewContactAction];

  actionProvider3 = [(CNContactContentDisplayViewController *)self actionProvider];
  navigationController = actionProvider3;
  if (createNewContactAction == finishCopy)
  {
    createNewContactAction2 = [actionProvider3 createNewContactAction];
    createdContact = [createNewContactAction2 createdContact];
    [(CNContactContentDisplayViewController *)self createdNewContact:createdContact];
    goto LABEL_18;
  }

  addToExistingContactAction = [actionProvider3 addToExistingContactAction];

  if (addToExistingContactAction == finishCopy)
  {
    navigationController = [(CNContactContentDisplayViewController *)self actionProvider];
    createNewContactAction2 = [navigationController addToExistingContactAction];
    createdContact = [createNewContactAction2 chosenContact];
    [(CNContactContentDisplayViewController *)self updatedExistingContact:createdContact];
    goto LABEL_18;
  }

  updateExistingContactAction = [(CNContactContentDisplayViewController *)self updateExistingContactAction];

  if (updateExistingContactAction == finishCopy)
  {
    navigationController = [(CNContactContentDisplayViewController *)self updateExistingContactAction];
    createNewContactAction2 = [navigationController existingContact];
    [(CNContactContentDisplayViewController *)self updatedExistingContact:createNewContactAction2];
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    blockAction = [(CNContactContentDisplayViewController *)self blockAction];

    if (blockAction == finishCopy)
    {
      [(CNContactContentDisplayViewController *)self setShouldIgnoreBlockListChange:1];
      [(CNContactContentDisplayViewController *)self _setupContactBlockingActionPreservingChanges:1 withUpdate:1];
      goto LABEL_21;
    }

    blockReportAction = [(CNContactContentDisplayViewController *)self blockReportAction];

    if (blockReportAction == finishCopy)
    {
      [(CNContactContentDisplayViewController *)self setShouldIgnoreBlockListChange:1];
      [(CNContactContentDisplayViewController *)self _setupContactBlockingReportingActionPreservingChanges:1 withUpdate:1];
      navigationController = [(CNContactContentDisplayViewController *)self delegate];
      createNewContactAction2 = [(CNContactContentDisplayViewController *)self contact];
      [navigationController didTapBlockAndReportForContact:createNewContactAction2];
      goto LABEL_19;
    }

    actionProvider4 = [(CNContactContentDisplayViewController *)self actionProvider];
    shareWithFamilyAction = [actionProvider4 shareWithFamilyAction];

    if (shareWithFamilyAction == finishCopy)
    {
      [(CNContactContentDisplayViewController *)self updateContact:finishCopy];
      goto LABEL_21;
    }

    actionProvider5 = [(CNContactContentDisplayViewController *)self actionProvider];
    stopSharingWithFamilyAction = [actionProvider5 stopSharingWithFamilyAction];

    if (stopSharingWithFamilyAction == finishCopy)
    {
      cardActionsGroup2 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
      actionProvider6 = [(CNContactContentDisplayViewController *)self actionProvider];
      stopSharingWithFamilyAction2 = [actionProvider6 stopSharingWithFamilyAction];
      title = [stopSharingWithFamilyAction2 title];
      [cardActionsGroup2 removeActionWithTitle:title];

      [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:0];
      navigationController = [(CNContactContentDisplayViewController *)self delegate];
      [navigationController contactDisplayViewControllerDidExecuteDeleteFromDowntimeWhitelistAction:self];
      goto LABEL_20;
    }

    suggestedContactAction = [(CNContactContentDisplayViewController *)self suggestedContactAction];

    if (suggestedContactAction != finishCopy)
    {
      clearRecentsDataAction = [(CNContactContentDisplayViewController *)self clearRecentsDataAction];

      if (clearRecentsDataAction == finishCopy)
      {
        navigationController = [(CNContactContentDisplayViewController *)self delegate];
        [navigationController contactDisplayViewControllerDidExecuteClearRecentsDataAction:self];
        goto LABEL_20;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        navigationController = finishCopy;
        propertyItem = [navigationController propertyItem];
        createNewContactAction2 = [propertyItem group];

        selectedChoice = [navigationController selectedChoice];
        if (selectedChoice == 2)
        {
          [navigationController reject];
          [createNewContactAction2 reloadDataPreservingChanges:0];
          goto LABEL_19;
        }

        if (selectedChoice != 1)
        {
LABEL_19:

          goto LABEL_20;
        }

        propertyItem2 = [navigationController propertyItem];
        createdContact = [(CNContactContentDisplayViewController *)self indexPathOfDisplayedPropertyItem:propertyItem2];

        contactView3 = [(CNContactContentDisplayViewController *)self contactView];
        [contactView3 selectRowAtIndexPath:createdContact animated:0 scrollPosition:0];

        v44 = dispatch_time(0, 500000000);
        v53 = MEMORY[0x1E69E9820];
        v54 = 3221225472;
        v55 = __57__CNContactContentDisplayViewController_actionDidFinish___block_invoke;
        v56 = &unk_1E74E77C0;
        v57 = navigationController;
        v58 = createNewContactAction2;
        dispatch_after(v44, MEMORY[0x1E69E96A0], &v53);

LABEL_18:
        goto LABEL_19;
      }

      selectContainersAction = [(CNContactContentDisplayViewController *)self selectContainersAction];

      if (selectContainersAction != finishCopy)
      {
        goto LABEL_21;
      }

      selfCopy2 = self;
      v29 = 1;
LABEL_15:
      [(CNContactContentDisplayViewController *)selfCopy2 reloadDataPreservingChanges:v29];
      goto LABEL_21;
    }

    delegate3 = [(CNContactContentDisplayViewController *)self delegate];
    v50 = objc_opt_respondsToSelector();

    if (v50)
    {
      delegate2 = [(CNContactContentDisplayViewController *)self delegate];
      contact = [(CNContactContentDisplayViewController *)self suggestedContactAction];
      v21Contact = [contact contact];
      [delegate2 contactDisplayViewController:self didDeleteContact:v21Contact];

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

- (void)actionDidUpdate:(id)update
{
  v33 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  actionProvider = [(CNContactContentDisplayViewController *)self actionProvider];
  addFavoriteAction = [actionProvider addFavoriteAction];

  if (addFavoriteAction == updateCopy)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    cardActionsGroup = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    actions = [cardActionsGroup actions];

    v9 = [actions countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(actions);
        }

        target = [*(*(&v28 + 1) + 8 * v12) target];
        actionProvider2 = [(CNContactContentDisplayViewController *)self actionProvider];
        addFavoriteAction2 = [actionProvider2 addFavoriteAction];

        if (target == addFavoriteAction2)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [actions countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      if (![(CNContactContentDisplayViewController *)self isContactBlocked])
      {
        actionProvider3 = [(CNContactContentDisplayViewController *)self actionProvider];
        addFavoriteAction3 = [actionProvider3 addFavoriteAction];
        canPerformAction = [addFavoriteAction3 canPerformAction];

        if ((canPerformAction & 1) == 0)
        {
          cardActionsGroup2 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
          target2 = [updateCopy target];
          [cardActionsGroup2 removeActionWithTarget:target2 selector:{objc_msgSend(updateCopy, "selector")}];
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_11:

      actionProvider4 = [(CNContactContentDisplayViewController *)self actionProvider];
      addFavoriteAction4 = [actionProvider4 addFavoriteAction];
      canPerformAction2 = [addFavoriteAction4 canPerformAction];

      if (canPerformAction2)
      {
        cardActionsGroup2 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
        target2 = [(CNContactContentDisplayViewController *)self actionProvider];
        addFavoriteAction5 = [target2 addFavoriteAction];
        v22 = CNContactsUIBundle();
        v23 = [v22 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
        [cardActionsGroup2 addAction:addFavoriteAction5 withTitle:v23];

LABEL_16:
        cardActionsGroup3 = [(CNContactContentDisplayViewController *)self cardActionsGroup];
        [(CNContactContentDisplayViewController *)self reloadCardGroup:cardActionsGroup3];
      }
    }
  }
}

- (void)action:(id)action pushViewController:(id)controller sender:(id)sender
{
  controllerCopy = controller;
  [(CNContactContentDisplayViewController *)self setBackgroundColorIfNeededForPresentedViewController:controllerCopy];
  navigationItem = [(CNContactContentDisplayViewController *)self navigationItem];
  prompt = [navigationItem prompt];
  navigationItem2 = [controllerCopy navigationItem];
  [navigationItem2 setPrompt:prompt];

  navigationController = [(CNContactContentDisplayViewController *)self navigationController];
  [navigationController pushViewController:controllerCopy animated:1];
}

- (void)action:(id)action dismissViewController:(id)controller sender:(id)sender
{
  actionCopy = action;
  senderCopy = sender;
  controllerCopy = controller;
  actionProvider = [(CNContactContentDisplayViewController *)self actionProvider];
  createNewContactAction = [actionProvider createNewContactAction];
  if (createNewContactAction != actionCopy)
  {
    actionProvider2 = [(CNContactContentDisplayViewController *)self actionProvider];
    addToExistingContactAction = [actionProvider2 addToExistingContactAction];
    if (addToExistingContactAction != actionCopy)
    {
      updateExistingContactAction = [(CNContactContentDisplayViewController *)self updateExistingContactAction];

      if (updateExistingContactAction != actionCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  delegate = [(CNContactContentDisplayViewController *)self delegate];
  if (delegate)
  {
    v16 = delegate;
    delegate2 = [(CNContactContentDisplayViewController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate3 = [(CNContactContentDisplayViewController *)self delegate];
      [delegate3 contactDisplayViewControllerIsDismissingEditingController:self];
    }
  }

LABEL_10:
  presentingDelegate = [(CNContactContentDisplayViewController *)self presentingDelegate];
  [presentingDelegate sender:senderCopy dismissViewController:controllerCopy];
}

- (void)action:(id)action presentViewController:(id)controller sender:(id)sender
{
  actionCopy = action;
  senderCopy = sender;
  controllerCopy = controller;
  actionProvider = [(CNContactContentDisplayViewController *)self actionProvider];
  createNewContactAction = [actionProvider createNewContactAction];
  if (createNewContactAction != actionCopy)
  {
    actionProvider2 = [(CNContactContentDisplayViewController *)self actionProvider];
    addToExistingContactAction = [actionProvider2 addToExistingContactAction];
    if (addToExistingContactAction != actionCopy)
    {
      updateExistingContactAction = [(CNContactContentDisplayViewController *)self updateExistingContactAction];

      if (updateExistingContactAction != actionCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  delegate = [(CNContactContentDisplayViewController *)self delegate];
  if (delegate)
  {
    v16 = delegate;
    delegate2 = [(CNContactContentDisplayViewController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate3 = [(CNContactContentDisplayViewController *)self delegate];
      [delegate3 contactDisplayViewControllerIsPresentingEditingController:self];
    }
  }

LABEL_10:
  presentingDelegate = [(CNContactContentDisplayViewController *)self presentingDelegate];
  [presentingDelegate sender:senderCopy presentViewController:controllerCopy];
}

- (void)action:(id)action prepareChildContactViewController:(id)controller sender:(id)sender
{
  controllerCopy = controller;
  actionCopy = action;
  delegate = [(CNContactContentDisplayViewController *)self delegate];
  [delegate contactDisplayViewController:self prepareChildContactViewController:controllerCopy forAction:actionCopy];
}

- (void)contactInlineActionsViewControllerDidDismissDisambiguationUI:(id)i
{
  delegate = [(CNContactContentDisplayViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactContentDisplayViewController *)self delegate];
    [delegate2 contactDisplayViewControllerDidDismissDisambiguationUI:self];
  }
}

- (void)contactInlineActionsViewControllerWillPresentDisambiguationUI:(id)i
{
  delegate = [(CNContactContentDisplayViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactContentDisplayViewController *)self delegate];
    [delegate2 contactDisplayViewControllerWillPresentDisambiguationUI:self];
  }
}

- (BOOL)contactInlineActionsViewController:(id)controller shouldPerformActionOfType:(id)type withContactProperty:(id)property
{
  propertyCopy = property;
  contact = [propertyCopy contact];
  v8 = [propertyCopy key];
  identifier = [propertyCopy identifier];

  LOBYTE(self) = [(CNContactContentDisplayViewController *)self contactDisplayViewController:self shouldPerformDefaultActionForContact:contact propertyKey:v8 propertyIdentifier:identifier];
  return self;
}

- (void)viewController:(id)controller presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  controllerCopy = controller;
  presentedViewController = [(CNContactContentDisplayViewController *)self presentedViewController];

  if (presentedViewController == controllerCopy)
  {
    [(CNContactContentDisplayViewController *)self presentationControllerWillDismiss:dismissCopy];
  }
}

- (BOOL)isPresentingModalViewController
{
  presentedViewController = [(CNContactContentDisplayViewController *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  if ([(CNContactContentDisplayViewController *)self isOutOfProcess])
  {
    delegate = [(CNContactContentDisplayViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      [(CNContactContentDisplayViewController *)self setIsPresentingFullscreenForOutOfProcess:0];
      delegate2 = [(CNContactContentDisplayViewController *)self delegate];
      [delegate2 contactDisplayViewControllerWillDismissFullscreen:self];
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__CNContactContentDisplayViewController_sender_dismissViewController_completionHandler___block_invoke;
  v13[3] = &unk_1E74E6DD0;
  v13[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [controllerCopy dismissViewControllerAnimated:1 completion:v13];
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

  view = [(CNContactContentDisplayViewController *)self view];
  superview = [view superview];
  backgroundColor3 = [superview backgroundColor];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  v15 = [backgroundColor3 isEqual:clearColor2];

  if ((v10 & 1) == 0 && (v15 & 1) == 0)
  {
    view2 = [(CNContactContentDisplayViewController *)self view];
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
  viewControllers = getSLComposeViewControllerClass_softClass_59566;
  v28 = getSLComposeViewControllerClass_softClass_59566;
  if (!getSLComposeViewControllerClass_softClass_59566)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __getSLComposeViewControllerClass_block_invoke_59567;
    v24[3] = &unk_1E74E7518;
    v24[4] = &v25;
    __getSLComposeViewControllerClass_block_invoke_59567(v24);
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

      if ([(CNContactContentDisplayViewController *)self isOutOfProcess]|| CNUIIsDDActionsService())
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

- (void)presentationControllerWillDismiss:(id)dismiss
{
  if ([(CNContactContentDisplayViewController *)self isOutOfProcess])
  {
    delegate = [(CNContactContentDisplayViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      [(CNContactContentDisplayViewController *)self setIsPresentingFullscreenForOutOfProcess:0];
      delegate2 = [(CNContactContentDisplayViewController *)self delegate];
      [delegate2 contactDisplayViewControllerWillDismissFullscreen:self];
    }
  }
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  if (style != 5)
  {
    if ([(CNContactContentDisplayViewController *)self isOutOfProcess])
    {
      delegate = [(CNContactContentDisplayViewController *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        presentedViewController = [controllerCopy presentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          [(CNContactContentDisplayViewController *)self setIsPresentingFullscreenForOutOfProcess:1];
          delegate2 = [(CNContactContentDisplayViewController *)self delegate];
          [delegate2 contactDisplayViewControllerWillPresentFullscreen:self];
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
  if ([(CNContactContentDisplayViewController *)self isOutOfProcess])
  {
    if ([(CNContactContentDisplayViewController *)self isPresentingModalViewController])
    {
      presentedViewController = [(CNContactContentDisplayViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        if ([(CNContactContentDisplayViewController *)self isPresentingFullscreenForOutOfProcess]&& ([(CNContactContentDisplayViewController *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
        {
          delegate = [(CNContactContentDisplayViewController *)self delegate];
          [delegate contactDisplayViewControllerWillPresentFullscreen:self];
        }

        else
        {
          if ([(CNContactContentDisplayViewController *)self isPresentingFullscreenForOutOfProcess])
          {
            return;
          }

          delegate2 = [(CNContactContentDisplayViewController *)self delegate];
          v8 = objc_opt_respondsToSelector();

          if ((v8 & 1) == 0)
          {
            return;
          }

          delegate = [(CNContactContentDisplayViewController *)self delegate];
          [delegate contactDisplayViewControllerWillDismissFullscreen:self];
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
  v17.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v17 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  presentedViewController = [(CNContactContentDisplayViewController *)self presentedViewController];
  popoverPresentationController = [presentedViewController popoverPresentationController];
  sourceView = [popoverPresentationController sourceView];

  if (sourceView)
  {
    superview = [sourceView superview];
    contactView = [(CNContactContentDisplayViewController *)self contactView];

    if (superview == contactView)
    {
      presentedViewController2 = [(CNContactContentDisplayViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __92__CNContactContentDisplayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
        v15[3] = &unk_1E74E6330;
        v15[4] = self;
        v16 = sourceView;
        [coordinatorCopy animateAlongsideTransition:0 completion:v15];
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

- (void)shouldPresentFullscreen:(BOOL)fullscreen
{
  fullscreenCopy = fullscreen;
  [(CNContactContentDisplayViewController *)self setIsPresentingFullscreenForOutOfProcess:?];
  delegate = [(CNContactContentDisplayViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CNContactContentDisplayViewController *)self delegate];
    [delegate2 contactDisplayViewController:self isPresentingFullscreen:fullscreenCopy];
  }
}

- (CGRect)centeredSourceRect:(CGRect)rect inContactView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  [viewCopy layoutMargins];
  v10 = v9;
  [viewCopy layoutMargins];
  v12 = width - (v10 + v11);
  [viewCopy layoutMargins];
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

- (void)sender:(id)sender presentViewController:(id)controller
{
  senderCopy = sender;
  controllerCopy = controller;
  [controllerCopy setModalPresentationStyle:{-[CNContactContentDisplayViewController _modalPresentationStyleForViewController:](self, "_modalPresentationStyleForViewController:", controllerCopy)}];
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
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  [(CNContactContentDisplayViewController *)self centeredSourceRect:contactView inContactView:v13, v15, v17, v19];
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
    supportedInterfaceOrientations2 = [(CNContactContentDisplayViewController *)self supportedInterfaceOrientations];

    if (supportedInterfaceOrientations != supportedInterfaceOrientations2)
    {
      [(CNContactContentDisplayViewController *)self _beginDisablingInterfaceAutorotation];
      self->_disablingRotation = 1;
    }
  }

LABEL_12:
  [(CNContactContentDisplayViewController *)self setBackgroundColorIfNeededForPresentedViewController:controllerCopy];
  [(CNContactContentDisplayViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:pathCopy])
  {
    v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 shouldPerformAccessoryAction])
    {
      [v7 performAccessoryAction];
    }
  }
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:pathCopy])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:pathCopy];
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

- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  if (sel_copy_ == action)
  {
    v8 = [view cellForRowAtIndexPath:path];
    [v8 action];
  }
}

- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  pathCopy = path;
  if ([(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:pathCopy])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = (sel_copy_ == action) & ~[(CNContactContentDisplayViewController *)self _indexPathIsActionItem:pathCopy];
  }

  return v9;
}

- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:pathCopy])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:pathCopy];
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

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  footerViewCopy = footerView;
  [footerViewCopy updateConstraintsIfNeeded];
  backgroundView = [footerViewCopy backgroundView];
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  sectionBackgroundColor = [contactView sectionBackgroundColor];
  if (sectionBackgroundColor)
  {
    runningInContactsAppOniPad = 1;
  }

  else
  {
    environment = [(CNContactContentDisplayViewController *)self environment];
    runningInContactsAppOniPad = [environment runningInContactsAppOniPad];
  }

  if (runningInContactsAppOniPad && !backgroundView)
  {
    v11 = objc_alloc(MEMORY[0x1E69DD250]);
    backgroundView = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  environment2 = [(CNContactContentDisplayViewController *)self environment];
  if ([environment2 runningInContactsAppOniPad])
  {
    contactView2 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    [backgroundView setBackgroundColor:contactView2];
  }

  else
  {
    contactView2 = [(CNContactContentDisplayViewController *)self contactView];
    sectionBackgroundColor2 = [contactView2 sectionBackgroundColor];
    [backgroundView setBackgroundColor:sectionBackgroundColor2];
  }

  [footerViewCopy setBackgroundView:backgroundView];
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  [(CNContactContentDisplayViewController *)self tableView:view willDisplayFooterView:headerViewCopy forSection:section];
  [headerViewCopy _cnui_applyContactStyle];
  v8 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:section];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = +[CNContactStyle currentStyle];
    backgroundColor = [v9 backgroundColor];

    if (backgroundColor)
    {
      v11 = +[CNContactStyle currentStyle];
      backgroundColor2 = [v11 backgroundColor];
      backgroundView = [headerViewCopy backgroundView];
      [backgroundView setBackgroundColor:backgroundColor2];

LABEL_7:
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    environment = [(CNContactContentDisplayViewController *)self environment];
    runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

    if (runningInContactsAppOniPad)
    {
      v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      backgroundColor2 = [headerViewCopy textLabel];
      [backgroundColor2 setFont:v11];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (BOOL)tableView:(id)view shouldHaveFullLengthBottomSeparatorForSection:(int64_t)section
{
  v5 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:section];
  environment = [(CNContactContentDisplayViewController *)self environment];
  runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

  if (runningInContactsAppOniPad)
  {
    goto LABEL_2;
  }

  cardMedicalIDGroup = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];

  cardMedicalIDGroup2 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];

  cardBlockContactGroup = [(CNContactContentDisplayViewController *)self cardBlockContactGroup];
  v12 = cardBlockContactGroup;
  if (v5 == cardBlockContactGroup)
  {

    goto LABEL_20;
  }

  cardShareLocationGroup = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];

  if (cardMedicalIDGroup)
  {
    v14 = v5 == cardMedicalIDGroup2;
  }

  else
  {
    v14 = 0;
  }

  v15 = !v14;
  isKindOfClass = 1;
  if (v5 != cardShareLocationGroup && v15)
  {
    if (cardMedicalIDGroup && [v5 isMemberOfClass:objc_opt_class()])
    {
      cardMedicalIDGroup3 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];
      actionItems = [cardMedicalIDGroup3 actionItems];
      if ([actionItems count])
      {
        cardMedicalIDGroup4 = [(CNContactContentDisplayViewController *)self cardMedicalIDGroup];
        addSpacerFromPreviousGroup = [cardMedicalIDGroup4 addSpacerFromPreviousGroup];

        if (!addSpacerFromPreviousGroup)
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

- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section
{
  environment = [(CNContactContentDisplayViewController *)self environment];
  runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

  if (runningInContactsAppOniPad)
  {
    v8 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:section];
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
      property = [v11 property];
      v22 = [property isEqualToString:*MEMORY[0x1E695C320]] ^ 1;
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

- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section
{
  v5 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:section];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[CNContactContentDisplayViewController contact](self, "contact"), v6 = objc_claimAutoreleasedReturnValue(), [v6 mainStoreLinkedContacts], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8 > 1))
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    cardShareLocationGroup = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];

    if (v5 == cardShareLocationGroup)
    {
      environment = [(CNContactContentDisplayViewController *)self environment];
      v9 = [environment runningInContactsAppOniPad] ^ 1;
    }

    else
    {
      LOBYTE(v9) = [v5 addSpacerFromPreviousGroup];
    }
  }

  return v9;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (((section == 0) & [(CNContactContentDisplayViewController *)self hasTableViewHeaderFirstSection]) != 0)
  {
    return 0;
  }

  else
  {
    return &stru_1F0CE7398;
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  hasTableViewHeaderFirstSection = [(CNContactContentDisplayViewController *)self hasTableViewHeaderFirstSection];
  if (section || !hasTableViewHeaderFirstSection)
  {
    v8 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:section];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[CNContactContentDisplayViewController contact](self, "contact"), v9 = objc_claimAutoreleasedReturnValue(), [v9 mainStoreLinkedContacts], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9, v11 >= 2))
    {
      title = [v8 title];
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

  return title;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if ([(CNContactContentDisplayViewController *)self shouldShowVerifiedFooterInSection:section])
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v8];

    contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    verifiedInfoMessage = [contactViewConfiguration verifiedInfoMessage];
    [v9 setAttributedString:verifiedInfoMessage];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldShowVerifiedFooterInSection:(int64_t)section
{
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  verifiedInfoMessage = [contactViewConfiguration verifiedInfoMessage];

  if (verifiedInfoMessage)
  {
    v8 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:section];
    cardActionsGroup = [(CNContactContentDisplayViewController *)self cardActionsGroup];
    if (v8 == cardActionsGroup || (-[CNContactContentDisplayViewController cardMedicalIDGroup](self, "cardMedicalIDGroup"), v3 = objc_claimAutoreleasedReturnValue(), v8 == v3) && ([v8 addSpacerFromPreviousGroup] & 1) == 0)
    {
      contactView = [(CNContactContentDisplayViewController *)self contactView];
      v10 = [(CNContactContentDisplayViewController *)self tableView:contactView shouldHaveFullLengthBottomSeparatorForSection:section];

      if (v8 == cardActionsGroup)
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

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:section];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[CNContactContentDisplayViewController contact](self, "contact"), v8 = objc_claimAutoreleasedReturnValue(), [v8 mainStoreLinkedContacts], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v11 = 16.0, v10 <= 1))
  {
    if ([viewCopy numberOfSections] - 1 == section)
    {
      contact = [(CNContactContentDisplayViewController *)self contact];
      phonemeData = [contact phonemeData];

      if (phonemeData)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 16.0;
      }
    }

    else if ([(CNContactContentDisplayViewController *)self shouldShowVerifiedFooterInSection:section])
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

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v6 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:section];
  title = [v6 title];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = +[CNContactStyle currentStyle];
  usesInsetPlatterStyle = [v9 usesInsetPlatterStyle];

  v11 = 0.0;
  if (usesInsetPlatterStyle)
  {
    v12 = (usesInsetPlatterStyle & isKindOfClass) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    if (((title != 0) & isKindOfClass) == 1 && (-[CNContactContentDisplayViewController contact](self, "contact"), v13 = objc_claimAutoreleasedReturnValue(), [v13 mainStoreLinkedContacts], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v13, v15 >= 2))
    {
      v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v16 _scaledValueForValue:44.0];
      v11 = v17 + 15.0;
    }

    else
    {
      cardShareLocationGroup = [(CNContactContentDisplayViewController *)self cardShareLocationGroup];

      if (v6 == cardShareLocationGroup)
      {
        v11 = 55.0;
      }

      else if (((section != 1) & [v6 addSpacerFromPreviousGroup]) != 0)
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:pathCopy])
  {
    v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
    if ([(CNContactContentDisplayViewController *)self _indexPathIsActionItem:pathCopy])
    {
      v8 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:pathCopy];
      actions = [v8 actions];
      v10 = [actions objectAtIndexedSubscript:0];

      [v10 performActionWithSender:v7];
      indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
      [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
    }

    else if (objc_opt_respondsToSelector())
    {
      if ([v7 shouldPerformDefaultAction])
      {
        allowsPropertyActions = 1;
      }

      else
      {
        contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
        allowsPropertyActions = [contactViewConfiguration allowsPropertyActions];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 isSuggested] & 1) == 0)
      {
        v14 = [(CNContactContentDisplayViewController *)self _itemAtIndexPath:pathCopy];
        contact = [v14 contact];
        property = [v14 property];
        labeledValue = [v14 labeledValue];
        identifier = [labeledValue identifier];
        allowsPropertyActions = [(CNContactContentDisplayViewController *)self contactDisplayViewController:self shouldPerformDefaultActionForContact:contact propertyKey:property propertyIdentifier:identifier];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CNContactContentDisplayViewController *)self _pickName];
      }

      if (allowsPropertyActions)
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

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  if ([(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:path, cell])
  {

    [(CNContactContentDisplayViewController *)self removeFirstSectionHeaderViewControllerFromHierarchy];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  if ([(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:path])
  {
    personHeaderViewController = [(CNContactContentDisplayViewController *)self personHeaderViewController];
    [personHeaderViewController didMoveToParentViewController:self];
  }

  objc_opt_class();
  v12 = cellCopy;
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
    environment = [(CNContactContentDisplayViewController *)self environment];
    [v10 setShowSeparator:{objc_msgSend(environment, "runningInContactsAppOniPad")}];
  }
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  section = [path section];
  cardActionsGroup = [(CNContactContentDisplayViewController *)self cardActionsGroup];
  v9 = [(CNContactContentDisplayViewController *)self sectionOfGroup:cardActionsGroup];

  if (section == v9)
  {
    v10 = 150.0;
  }

  else
  {
    [viewCopy estimatedRowHeight];
    v10 = v11;
  }

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(CNContactContentDisplayViewController *)self isTableViewHeaderFirstSectionIndexPath:pathCopy])
  {
    tableViewHeaderFirstSectionCell = [(CNContactContentDisplayViewController *)self tableViewHeaderFirstSectionCell];
  }

  else
  {
    if ([(CNContactContentDisplayViewController *)self _indexPathIsActionItem:pathCopy])
    {
      tableViewHeaderFirstSectionCell = [(CNContactContentDisplayViewController *)self _cellForIndexPath:pathCopy];
    }

    else
    {
      v8 = -[CNContactContentDisplayViewController _cardGroupAtTableViewSectionIndex:](self, "_cardGroupAtTableViewSectionIndex:", [pathCopy section]);
      if ([(CNContactContentDisplayViewController *)self isStandardGroup:v8])
      {
        tableViewHeaderFirstSectionCell = [(CNContactContentDisplayViewController *)self _cellForIndexPath:pathCopy];
      }

      else
      {
        tableViewHeaderFirstSectionCell = 0;
      }
    }

    [(CNContactContentDisplayViewController *)self _updateLabelWidthForCell:tableViewHeaderFirstSectionCell];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CNContactContentDisplayViewController *)self prepareCell:tableViewHeaderFirstSectionCell];
    }
  }

  environment = [(CNContactContentDisplayViewController *)self environment];
  runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

  if (runningInContactsAppOniPad)
  {
    v11 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    [tableViewHeaderFirstSectionCell setBackgroundColor:v11];
  }

  if (!tableViewHeaderFirstSectionCell)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactContentDisplayViewController.m" lineNumber:1881 description:@"We have no cell to return!"];
  }

  return tableViewHeaderFirstSectionCell;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  hasTableViewHeaderFirstSection = [(CNContactContentDisplayViewController *)self hasTableViewHeaderFirstSection];
  if (!section && hasTableViewHeaderFirstSection)
  {
    return 1;
  }

  v8 = [(CNContactContentDisplayViewController *)self _cardGroupAtTableViewSectionIndex:section];
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

- (BOOL)isStandardGroup:(id)group
{
  groupCopy = group;
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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  _currentGroups = [(CNContactContentDisplayViewController *)self _currentGroups];
  v5 = [_currentGroups count];
  v6 = v5 + [(CNContactContentDisplayViewController *)self hasTableViewHeaderFirstSection];

  return v6;
}

- (void)didChangeToShowTitle:(BOOL)title
{
  titleCopy = title;
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  [contactViewConfiguration setLayoutPositionallyAfterNavBar:titleCopy];

  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  contactViewConfiguration2 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  [contactHeaderView updateForShowingNavBar:{objc_msgSend(contactViewConfiguration2, "layoutPositionallyAfterNavBar")}];
}

- (void)updateWithContactViewConfiguration:(id)configuration
{
  v15 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = CNUILogContactCard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = configurationCopy;
    _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "display updateWithContactViewConfiguration: %@", &v13, 0xCu);
  }

  [(CNContactContentDisplayViewController *)self reloadDataIfNeeded];
  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  [contactHeaderView updateForShowingNavBar:{objc_msgSend(contactViewConfiguration, "layoutPositionallyAfterNavBar")}];

  contactHeaderView2 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  mutableContact = [(CNContactContentDisplayViewController *)self mutableContact];
  [contactHeaderView2 updateWithNewContact:mutableContact];

  shouldShowGemini = [(CNContactContentDisplayViewController *)self shouldShowGemini];
  contactHeaderView3 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView3 setShouldShowGemini:shouldShowGemini];

  [(CNContactContentDisplayViewController *)self updateEditNavigationItemsAnimated:0];
  applyContactStyle = [(CNContactContentDisplayViewController *)self applyContactStyle];
}

- (void)setupTableFooterView
{
  if ((-[CNContactContentDisplayViewController isEditing](self, "isEditing") & 1) != 0 || (-[CNContactContentDisplayViewController contact](self, "contact"), v3 = objc_claimAutoreleasedReturnValue(), [v3 phonemeData], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    contactView = [(CNContactContentDisplayViewController *)self contactView];
    [(CNContactViewFooterView *)contactView setTableFooterView:0];
  }

  else
  {
    objc_opt_class();
    contactView2 = [(CNContactContentDisplayViewController *)self contactView];
    contactView = [contactView2 tableFooterView];
    if (objc_opt_isKindOfClass())
    {
      v6 = contactView;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      contactView = objc_alloc_init(CNContactViewFooterView);
      contactView3 = [(CNContactContentDisplayViewController *)self contactView];
      [contactView3 setTableFooterView:contactView];
    }

    contact = [(CNContactContentDisplayViewController *)self contact];
    [(CNContactViewFooterView *)contactView setContact:contact];

    label = [(CNContactViewFooterView *)contactView label];
    view = [(CNContactContentDisplayViewController *)self view];
    [view bounds];
    v13 = v12;
    view2 = [(CNContactContentDisplayViewController *)self view];
    [view2 layoutMargins];
    v16 = v13 - v15;
    view3 = [(CNContactContentDisplayViewController *)self view];
    [view3 layoutMargins];
    [label sizeThatFits:{v16 - v18, 1.79769313e308}];

    [(CNContactViewFooterView *)contactView frame];
    [(CNContactViewFooterView *)contactView setFrame:?];
  }
}

- (CGSize)setupTableHeaderView
{
  if ([(CNContactContentDisplayViewController *)self shouldDisplayAvatarHeaderView])
  {
    if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
    {
      contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
      backgroundColor = [contactHeaderView backgroundColor];
      actionsViewController = [(CNContactContentDisplayViewController *)self actionsViewController];
      view = [actionsViewController view];
      [view setBackgroundColor:backgroundColor];

      actionsWrapperView = [(CNContactContentDisplayViewController *)self actionsWrapperView];
      goto LABEL_7;
    }
  }

  else
  {
    contactView = [(CNContactContentDisplayViewController *)self contactView];
    customHeaderView = [contactView customHeaderView];

    if (customHeaderView)
    {
      contactView2 = [(CNContactContentDisplayViewController *)self contactView];
      actionsWrapperView = [contactView2 customHeaderView];

      goto LABEL_7;
    }
  }

  actionsWrapperView = 0;
LABEL_7:
  contactView3 = [(CNContactContentDisplayViewController *)self contactView];
  tableHeaderView = [contactView3 tableHeaderView];
  needsUpdateConstraints = [tableHeaderView needsUpdateConstraints];

  if (actionsWrapperView)
  {
    [actionsWrapperView frame];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v15 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
  }

  contactView4 = [(CNContactContentDisplayViewController *)self contactView];
  [contactView4 setTableHeaderView:actionsWrapperView];

  if ((needsUpdateConstraints & 1) == 0)
  {
    contactView5 = [(CNContactContentDisplayViewController *)self contactView];
    tableHeaderView2 = [contactView5 tableHeaderView];
    needsUpdateConstraints2 = [tableHeaderView2 needsUpdateConstraints];

    if (needsUpdateConstraints2)
    {
      contactView6 = [(CNContactContentDisplayViewController *)self contactView];
      tableHeaderView3 = [contactView6 tableHeaderView];
      [tableHeaderView3 updateConstraints];
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
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  tableHeaderView = [contactView tableHeaderView];

  if (tableHeaderView)
  {
    [tableHeaderView frame];
    if (v4 != v10 || v6 != v9)
    {
      contactView2 = [(CNContactContentDisplayViewController *)self contactView];
      [contactView2 setTableHeaderView:tableHeaderView];
    }
  }

  [(CNContactContentDisplayViewController *)self setupTableFooterView];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v4 viewWillLayoutSubviews];
  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView calculateLabelSizesIfNeeded];

  [(CNContactContentDisplayViewController *)self updateOutOfProcessFullscreenPresentationIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v6 viewWillDisappear:disappear];
  siriContextProvider = [(CNContactContentDisplayViewController *)self siriContextProvider];
  [siriContextProvider setEnabled:0];

  [(CNContactContentDisplayViewController *)self updateWindowTitleForAppearing:0];
  shareLocationController = [(CNContactContentDisplayViewController *)self shareLocationController];
  [shareLocationController stopUpdatingFriends];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v6 viewDidAppear:appear];
  if (self->_needsRefetch)
  {
    [(CNContactContentDisplayViewController *)self _refetchContact];
    self->_needsRefetch = 0;
  }

  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  alwaysEditing = [contactViewConfiguration alwaysEditing];

  if ((alwaysEditing & 1) == 0)
  {
    [(CNContactContentDisplayViewController *)self becomeFirstResponder];
  }

  [(CNContactContentDisplayViewController *)self updateWindowTitleForAppearing:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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
    environment = [(CNContactContentDisplayViewController *)self environment];
    runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

    if (!runningInContactsAppOniPad)
    {
      goto LABEL_8;
    }

    v5 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
  }

  v8 = v5;
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  [contactView setBackgroundColor:v8];

LABEL_8:
  v18.receiver = self;
  v18.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v18 viewWillAppear:appearCopy];
  v10 = +[CNContactStyle currentStyle];
  backgroundColor = [v10 backgroundColor];

  if (backgroundColor)
  {
    v12 = +[CNContactStyle currentStyle];
    backgroundColor2 = [v12 backgroundColor];
    view = [(CNContactContentDisplayViewController *)self view];
    [view setBackgroundColor:backgroundColor2];
  }

  contactView2 = [(CNContactContentDisplayViewController *)self contactView];
  [contactView2 _cnui_applyContactStyle];

  if (![(CNContactContentDisplayViewController *)self reloadDataIfNeeded])
  {
    [(CNContactContentDisplayViewController *)self _setNeedsUpdateCachedLabelWidths];
  }

  [(CNContactContentDisplayViewController *)self updateEditNavigationItemsAnimated:0];
  siriContextProvider = [(CNContactContentDisplayViewController *)self siriContextProvider];
  [siriContextProvider setEnabled:1];

  shareLocationController = [(CNContactContentDisplayViewController *)self shareLocationController];
  [shareLocationController startUpdatingFriends];
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
  shouldDisplayAvatarHeaderView = [(CNContactContentDisplayViewController *)self shouldDisplayAvatarHeaderView];
  [(CNContactContentDisplayViewController *)self setupViewHierarchyIncludingAvatarHeader:shouldDisplayAvatarHeaderView];
  [(CNContactContentDisplayViewController *)self setupTableHeaderView];
  [(CNContactContentDisplayViewController *)self setupTableFooterView];
  v4 = MEMORY[0x1E696ACD8];
  activatedConstraints = [(CNContactContentDisplayViewController *)self activatedConstraints];
  [v4 deactivateConstraints:activatedConstraints];

  array = [MEMORY[0x1E695DF70] array];
  if (shouldDisplayAvatarHeaderView)
  {
    v6 = MEMORY[0x1E696ACD8];
    contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
    contactHeaderView2 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    [contactHeaderView2 maxHeight];
    v10 = [v6 constraintWithItem:contactHeaderView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v9];
    [(CNContactContentDisplayViewController *)self setHeaderHeightConstraint:v10];

    headerHeightConstraint = [(CNContactContentDisplayViewController *)self headerHeightConstraint];
    [array addObject:headerHeightConstraint];

    contactHeaderView3 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    topAnchor = [contactHeaderView3 topAnchor];
    view = [(CNContactContentDisplayViewController *)self view];
    topAnchor2 = [view topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v16];

    contactHeaderView4 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    leftAnchor = [contactHeaderView4 leftAnchor];
    view2 = [(CNContactContentDisplayViewController *)self view];
    leftAnchor2 = [view2 leftAnchor];
    v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [array addObject:v21];

    contactHeaderView5 = [(CNContactContentDisplayViewController *)self contactHeaderView];
    rightAnchor = [contactHeaderView5 rightAnchor];
    view3 = [(CNContactContentDisplayViewController *)self view];
    rightAnchor2 = [view3 rightAnchor];
    v26 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [array addObject:v26];

    contactView = [(CNContactContentDisplayViewController *)self contactView];
    topAnchor3 = [contactView topAnchor];
    view4 = [(CNContactContentDisplayViewController *)self view];
    topAnchor4 = [view4 topAnchor];
    v31 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [array addObject:v31];

    contactView2 = [(CNContactContentDisplayViewController *)self contactView];
    bottomAnchor = [contactView2 bottomAnchor];
    view5 = [(CNContactContentDisplayViewController *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v36];

    headerDropShadowView = [(CNContactContentDisplayViewController *)self headerDropShadowView];
    superview = [headerDropShadowView superview];

    if (superview)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v41 = v40;

      headerDropShadowView2 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      heightAnchor = [headerDropShadowView2 heightAnchor];
      v44 = [heightAnchor constraintEqualToConstant:1.0 / v41];
      [array addObject:v44];

      headerDropShadowView3 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      bottomAnchor3 = [headerDropShadowView3 bottomAnchor];
      headerDropShadowView4 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      superview2 = [headerDropShadowView4 superview];
      bottomAnchor4 = [superview2 bottomAnchor];
      v50 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [array addObject:v50];

      headerDropShadowView5 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      leftAnchor3 = [headerDropShadowView5 leftAnchor];
      headerDropShadowView6 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      superview3 = [headerDropShadowView6 superview];
      leftAnchor4 = [superview3 leftAnchor];
      v56 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
      [array addObject:v56];

      headerDropShadowView7 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      rightAnchor3 = [headerDropShadowView7 rightAnchor];
      headerDropShadowView8 = [(CNContactContentDisplayViewController *)self headerDropShadowView];
      superview4 = [headerDropShadowView8 superview];
      rightAnchor4 = [superview4 rightAnchor];
      v62 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
      [array addObject:v62];
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

    contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    allowsActionsModel = [contactViewConfiguration allowsActionsModel];

    if (allowsActionsModel)
    {
      view6 = [(CNContactContentDisplayViewController *)self view];
      leadingAnchor = [view6 leadingAnchor];
      actionsWrapperView = [(CNContactContentDisplayViewController *)self actionsWrapperView];
      leadingAnchor2 = [actionsWrapperView leadingAnchor];
      v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [array addObject:v73];

      view7 = [(CNContactContentDisplayViewController *)self view];
      trailingAnchor = [view7 trailingAnchor];
      actionsWrapperView2 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
      trailingAnchor2 = [actionsWrapperView2 trailingAnchor];
      v78 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [array addObject:v78];

      if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
      {
        actionsWrapperView3 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
        topAnchor5 = [actionsWrapperView3 topAnchor];
        contactHeaderView6 = [(CNContactContentDisplayViewController *)self contactHeaderView];
        bottomAnchor5 = [contactHeaderView6 bottomAnchor];
        v83 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5];
        [array addObject:v83];
      }

      actionsWrapperView4 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
      [actionsWrapperView4 setLayoutMargins:{v64, 8.0, v66, 8.0}];

      view8 = [(CNContactContentDisplayViewController *)self view];
      _cnui_contactStyle = [view8 _cnui_contactStyle];
      [_cnui_contactStyle sectionMaximumPlatterWidth];
      v88 = v87;
      v89 = *MEMORY[0x1E698B6F8];
      view9 = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
      [view9 setMinimumLayoutSize:{v88, v89}];
    }
  }

  contactView3 = [(CNContactContentDisplayViewController *)self contactView];
  leftAnchor5 = [contactView3 leftAnchor];
  view10 = [(CNContactContentDisplayViewController *)self view];
  leftAnchor6 = [view10 leftAnchor];
  v95 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
  [array addObject:v95];

  contactView4 = [(CNContactContentDisplayViewController *)self contactView];
  rightAnchor5 = [contactView4 rightAnchor];
  view11 = [(CNContactContentDisplayViewController *)self view];
  rightAnchor6 = [view11 rightAnchor];
  v100 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  [array addObject:v100];

  [(CNContactContentDisplayViewController *)self setActivatedConstraints:array];
  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (BOOL)shouldDisplayAvatarHeaderView
{
  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  v3 = contactHeaderView != 0;

  return v3;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v10 viewDidLoad];
  v3 = *MEMORY[0x1E6996568];
  initialPrompt = [(CNContactContentDisplayViewController *)self initialPrompt];
  LOBYTE(v3) = (*(v3 + 16))(v3, initialPrompt);

  if ((v3 & 1) == 0)
  {
    initialPrompt2 = [(CNContactContentDisplayViewController *)self initialPrompt];
    navigationItem = [(CNContactContentDisplayViewController *)self navigationItem];
    [navigationItem setPrompt:initialPrompt2];
  }

  if ([(CNContactContentDisplayViewController *)self shouldDrawNavigationBar])
  {
    navigationItem2 = [(CNContactContentDisplayViewController *)self navigationItem];
    [navigationItem2 _setBackgroundHidden:0];
  }

  [(CNContactContentDisplayViewController *)self reloadDataIfNeeded];
  v8 = objc_alloc_init(CNContactContentNavigationItemUpdater);
  [(CNContactContentDisplayViewController *)self setContactNavigationItemUpdater:v8];

  view = [(CNContactContentDisplayViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)setupViewHierarchyIncludingAvatarHeader:(BOOL)header
{
  headerCopy = header;
  v43[1] = *MEMORY[0x1E69E9840];
  if ([(CNContactContentDisplayViewController *)self isViewLoaded])
  {
    view = [(CNContactContentDisplayViewController *)self view];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
    v9 = contactHeaderView;
    if (headerCopy)
    {
      v43[0] = contactHeaderView;
      v10 = v43;
      v11 = array2;
    }

    else
    {
      v42 = contactHeaderView;
      v10 = &v42;
      v11 = array;
    }

    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v11 addObjectsFromArray:v12];

    if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
    {
      actionsWrapperView = [(CNContactContentDisplayViewController *)self actionsWrapperView];
      [array2 addObject:actionsWrapperView];

      view2 = [(CNContactContentDisplayViewController *)self view];
      _cnui_contactStyle = [view2 _cnui_contactStyle];
      usesOpaqueBackground = [_cnui_contactStyle usesOpaqueBackground];

      if (usesOpaqueBackground)
      {
        actionsWrapperView2 = [(CNContactContentDisplayViewController *)self actionsWrapperView];
        headerDropShadowView = [(CNContactContentDisplayViewController *)self headerDropShadowView];
        [actionsWrapperView2 addSubview:headerDropShadowView];
      }
    }

    contactView = [(CNContactContentDisplayViewController *)self contactView];
    [array2 addObject:contactView];

    contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    allowsActionsModel = [contactViewConfiguration allowsActionsModel];

    if ((allowsActionsModel & 1) == 0)
    {
      actionsViewController = [(CNContactContentDisplayViewController *)self actionsViewController];
      view3 = [actionsViewController view];
      [view3 removeFromSuperview];
    }

    contactView2 = [(CNContactContentDisplayViewController *)self contactView];
    panGestureRecognizer = [contactView2 panGestureRecognizer];
    view4 = [panGestureRecognizer view];
    view5 = [(CNContactContentDisplayViewController *)self view];

    if (view4 != view5)
    {
      contactView3 = [(CNContactContentDisplayViewController *)self contactView];
      panGestureRecognizer2 = [contactView3 panGestureRecognizer];
      view6 = [panGestureRecognizer2 view];
      contactView4 = [(CNContactContentDisplayViewController *)self contactView];
      panGestureRecognizer3 = [contactView4 panGestureRecognizer];
      [view6 removeGestureRecognizer:panGestureRecognizer3];

      view7 = [(CNContactContentDisplayViewController *)self view];
      contactView5 = [(CNContactContentDisplayViewController *)self contactView];
      panGestureRecognizer4 = [contactView5 panGestureRecognizer];
      [view7 addGestureRecognizer:panGestureRecognizer4];
    }

    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __81__CNContactContentDisplayViewController_setupViewHierarchyIncludingAvatarHeader___block_invoke;
    v40 = &unk_1E74E6C50;
    v41 = view;
    v36 = view;
    [array2 enumerateObjectsUsingBlock:&v37];
    [array enumerateObjectsUsingBlock:{&__block_literal_global_395, v37, v38, v39, v40}];
  }
}

- (void)loadContactViewControllerViews
{
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  contactView2 = [(CNContactContentDisplayViewController *)self contactView];
  v5 = objc_opt_class();
  v6 = [v5 cellIdentifierForClass:objc_opt_class()];
  v7 = [contactView dequeueReusableCellWithIdentifier:v6];
  [(CNContactContentDisplayViewController *)self setNoteCell:v7];

  view = [(CNContactContentDisplayViewController *)self view];
  contactView3 = [(CNContactContentDisplayViewController *)self contactView];
  [view addSubview:contactView3];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(CNContactContentDisplayViewController *)self setView:v3];

  [(CNContactContentDisplayViewController *)self loadContactViewControllerViews];
}

- (void)toggleEditing:(id)editing
{
  delegate = [(CNContactContentDisplayViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactContentDisplayViewController *)self delegate];
    [delegate2 contactDisplayViewController:self didChangeToEditMode:1];
  }
}

- (BOOL)saveWasAuthorized
{
  editAuthorizationManager = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  saveWasAuthorized = [editAuthorizationManager saveWasAuthorized];

  return saveWasAuthorized;
}

- (void)cancelAsyncLookups
{
  faceTimeIDSLookupToken = [(CNContactContentDisplayViewController *)self faceTimeIDSLookupToken];
  [faceTimeIDSLookupToken cancel];

  [(CNContactContentDisplayViewController *)self setFaceTimeIDSLookupToken:0];
  iMessageIDSLookupToken = [(CNContactContentDisplayViewController *)self iMessageIDSLookupToken];
  [iMessageIDSLookupToken cancel];

  [(CNContactContentDisplayViewController *)self setIMessageIDSLookupToken:0];
  medicalIDLookupToken = [(CNContactContentDisplayViewController *)self medicalIDLookupToken];
  [medicalIDLookupToken cancel];

  [(CNContactContentDisplayViewController *)self setMedicalIDLookupToken:0];
}

- (void)updateWindowTitleForAppearing:(BOOL)appearing
{
  if (appearing)
  {
    title = [(CNContactContentDisplayViewController *)self title];
    if (title)
    {
      title2 = title;
    }

    else
    {
      navigationController = [(CNContactContentDisplayViewController *)self navigationController];
      title2 = [navigationController title];

      if (!title2)
      {
        contactFormatter = [(CNContactContentDisplayViewController *)self contactFormatter];
        contact = [(CNContactContentDisplayViewController *)self contact];
        title2 = [contactFormatter stringFromContact:contact];
      }
    }

    view = [(CNContactContentDisplayViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    [windowScene setTitle:title2];
  }

  else
  {
    title2 = [(CNContactContentDisplayViewController *)self view];
    view = [title2 window];
    window = [view windowScene];
    [window setTitle:0];
  }
}

- (id)currentNavigationController
{
  navigationItemController = [(CNContactContentDisplayViewController *)self navigationItemController];
  navigationController = [navigationItemController navigationController];

  navigationBar = [navigationController navigationBar];
  backItem = [navigationBar backItem];
  if (backItem)
  {

LABEL_3:
    v3NavigationController2 = navigationController;
    goto LABEL_6;
  }

  v3NavigationController = [navigationController navigationController];
  navigationBar2 = [v3NavigationController navigationBar];
  backItem2 = [navigationBar2 backItem];

  if (!backItem2)
  {
    goto LABEL_3;
  }

  v3NavigationController2 = [navigationController navigationController];
LABEL_6:
  v10 = v3NavigationController2;

  return v10;
}

- (void)updateEditNavigationItemsAnimated:(BOOL)animated
{
  [(CNContactContentDisplayViewController *)self isOutOfProcess];
  currentNavigationController = [(CNContactContentDisplayViewController *)self currentNavigationController];
  navigationBar = [currentNavigationController navigationBar];
  backItem = [navigationBar backItem];
  v7 = backItem != 0;

  contactNavigationItemUpdater = [(CNContactContentDisplayViewController *)self contactNavigationItemUpdater];
  navigationItemController = [(CNContactContentDisplayViewController *)self navigationItemController];
  mode = [(CNContactContentDisplayViewController *)self mode];
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  allowsEditing = [contactViewConfiguration allowsEditing];
  editAuthorizationManager = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  shouldPromptForPasscodeAuthorization = [editAuthorizationManager shouldPromptForPasscodeAuthorization];
  ab_isInSheet = [(UIViewController *)self ab_isInSheet];
  LOBYTE(v21) = animated;
  BYTE2(v20) = 0;
  BYTE1(v20) = v7;
  LOBYTE(v20) = [(CNContactContentDisplayViewController *)self shouldDrawNavigationBar];
  v23 = [contactNavigationItemUpdater updateDisplayNavigationItemsForController:navigationItemController mode:mode actionTarget:self allowsEditing:allowsEditing editRequiresAuthorization:shouldPromptForPasscodeAuthorization isInSheet:ab_isInSheet isShowingNavBar:v20 shouldShowBackButton:0 shouldUsePlatterStyle:v21 platterBackBarButtonItem:? animated:?];

  -[CNContactContentDisplayViewController setEditKeyboardShortcutEnabled:](self, "setEditKeyboardShortcutEnabled:", [v23 enableEditShortcut]);
  -[CNContactContentDisplayViewController setCancelKeyboardShortcutEnabled:](self, "setCancelKeyboardShortcutEnabled:", [v23 enableCancelShortcut]);
  navigationItemDelegate = [(CNContactContentDisplayViewController *)self navigationItemDelegate];
  navigationItemController2 = [(CNContactContentDisplayViewController *)self navigationItemController];
  navigationItem = [navigationItemController2 navigationItem];
  doneButtonItem = [(CNContactContentDisplayViewController *)self doneButtonItem];
  [navigationItemDelegate contactNavigationItemProvider:self didUpdateNavigationItem:navigationItem doneButtonItem:doneButtonItem];
}

- (UINavigationItem)effectiveNavigationItem
{
  navigationItemController = [(CNContactContentDisplayViewController *)self navigationItemController];
  navigationItem = [navigationItemController navigationItem];

  return navigationItem;
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  if (edge == 4)
  {
    contactView = [(CNContactContentDisplayViewController *)self contactView];
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
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if (![contactViewConfiguration allowsAddingToAddressBook])
  {
    contactViewConfiguration2 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    if ([contactViewConfiguration2 allowsEditing])
    {
      hasBeenPersisted = [contactCopy hasBeenPersisted];

      if (hasBeenPersisted)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

LABEL_12:
    mEMORY[0x1E695CF48] = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
    goto LABEL_13;
  }

LABEL_3:
  if (mode > 5 || (v8 = 1 << mode, v9 = contactCopy, (v8 & 0x32) == 0))
  {
    v9 = 0;
  }

  contactViewCache = [(CNContactContentDisplayViewController *)self contactViewCache];
  mEMORY[0x1E695CF48] = [contactViewCache policyForContact:v9];

  if (!mEMORY[0x1E695CF48])
  {
    goto LABEL_12;
  }

LABEL_13:

  return mEMORY[0x1E695CF48];
}

- (id)indexPathOfPropertyItem:(id)item
{
  itemCopy = item;
  group = [itemCopy group];
  v6 = [(CNContactContentDisplayViewController *)self sectionOfGroup:group];
  displayItems = [group displayItems];
  v8 = [displayItems indexOfObject:itemCopy];

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
    delegate = [(CNContactContentDisplayViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(CNContactContentDisplayViewController *)self delegate];
      [(CNContactContentDisplayViewController *)self preferredContentSize];
      [delegate2 contactDisplayViewController:self didChangePreferredContentSize:?];
    }
  }
}

- (void)reloadCardGroup:(id)group
{
  groupCopy = group;
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  if ([(CNContactContentDisplayViewController *)self isViewLoaded])
  {
    if (![(CNContactContentDisplayViewController *)self needsReload])
    {
      v5 = [(CNContactContentDisplayViewController *)self sectionOfGroup:groupCopy];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = v5;
        [contactView beginUpdates];
        v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:v6];
        [contactView reloadSections:v7 withRowAnimation:0];

        [contactView endUpdates];
        [(CNContactContentDisplayViewController *)self updateHeaderHeightToMatchScrollViewState:contactView scrollDirection:2 animated:0];
        [(CNContactContentDisplayViewController *)self adjustPreferredContentSize];
      }
    }
  }
}

- (void)removeActionWithTarget:(id)target selector:(SEL)selector inGroup:(id)group
{
  targetCopy = target;
  groupCopy = group;
  [groupCopy removeActionWithTarget:targetCopy selector:selector];
  customActions = [(CNContactContentDisplayViewController *)self customActions];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __81__CNContactContentDisplayViewController_removeActionWithTarget_selector_inGroup___block_invoke;
  v17 = &unk_1E74E6BB8;
  v18 = targetCopy;
  v19 = groupCopy;
  selfCopy = self;
  selectorCopy = selector;
  v11 = groupCopy;
  v12 = targetCopy;
  v13 = [customActions _cn_filter:&v14];
  [(CNContactContentDisplayViewController *)self setCustomActions:v13, v14, v15, v16, v17];

  [(CNContactContentDisplayViewController *)self setNeedsReload];
}

- (void)addActionWithTitle:(id)title target:(id)target selector:(SEL)selector menuProvider:(id)provider inGroup:(id)group destructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  v31 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  providerCopy = provider;
  groupCopy = group;
  targetCopy = target;
  v18 = [[CNContactTargetActionWrapper alloc] initWithTarget:targetCopy action:selector];

  v19 = [CNCustomCardAction placementForGroup:groupCopy inContactContentViewController:self];
  if (v19)
  {
    v20 = v19;
    v21 = [CNCustomCardAction alloc];
    contact = [(CNContactContentDisplayViewController *)self contact];
    identifier = [contact identifier];
    v24 = [(CNCustomCardAction *)v21 initWithTitle:titleCopy targetActionWrapper:v18 contactIdentifier:identifier placement:v20 isDestructive:destructiveCopy menuProvider:providerCopy];

    customActions = [(CNContactContentDisplayViewController *)self customActions];
    v26 = [customActions arrayByAddingObject:v24];
    [(CNContactContentDisplayViewController *)self setCustomActions:v26];
  }

  else
  {
    v24 = CNUILogContactCard();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v29 = 138412290;
      v30 = titleCopy;
      _os_log_impl(&dword_199A75000, v24, OS_LOG_TYPE_INFO, "Found undefined placement for action with title %@", &v29, 0xCu);
    }
  }

  if (providerCopy)
  {
    v27 = [groupCopy addActionWithTitle:titleCopy menuProvider:providerCopy destructive:destructiveCopy];
  }

  else
  {
    v28 = [groupCopy addActionWithTitle:titleCopy target:v18 selector:sel_performActionWithSender_ destructive:destructiveCopy];
  }

  [(CNContactContentDisplayViewController *)self setNeedsReload];
}

- (int64_t)sectionOfGroup:(id)group
{
  groupCopy = group;
  _currentGroups = [(CNContactContentDisplayViewController *)self _currentGroups];
  v6 = _currentGroups;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (_currentGroups)
  {
    v8 = [_currentGroups indexOfObject:groupCopy];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(CNContactContentDisplayViewController *)self tableViewSectionIndexFromGroupIndex:v8];
    }
  }

  return v7;
}

- (id)cardGroupForProperty:(id)property
{
  propertyCopy = property;
  propertyGroups = [(CNContactContentDisplayViewController *)self propertyGroups];
  v6 = [propertyGroups objectForKeyedSubscript:propertyCopy];

  return v6;
}

- (void)reloadDataPreservingChanges:(BOOL)changes
{
  changesCopy = changes;
  v51 = *MEMORY[0x1E69E9840];
  if (![(CNContactContentDisplayViewController *)self isViewLoaded])
  {
    return;
  }

  [(CNContactContentDisplayViewController *)self isOutOfProcess];
  self->_needsReload = 0;
  contactStore = [(CNContactContentDisplayViewController *)self contactStore];

  if (!contactStore)
  {
    contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    contactStore2 = [contactViewConfiguration contactStore];

    if (contactStore2)
    {
      contactViewConfiguration2 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
      contactStore3 = [contactViewConfiguration2 contactStore];
    }

    else
    {
      originalContacts = [(CNContactContentDisplayViewController *)self originalContacts];
      contactViewConfiguration2 = [originalContacts _cn_filter:&__block_literal_global_59599];

      if ([contactViewConfiguration2 count])
      {
        v12 = 7;
      }

      else
      {
        v12 = 1;
      }

      managedConfiguration = [(CNContactContentDisplayViewController *)self managedConfiguration];

      if (managedConfiguration)
      {
        v14 = objc_alloc(MEMORY[0x1E695CE18]);
        environment = [(CNContactContentDisplayViewController *)self environment];
        cnEnvironment = [environment cnEnvironment];
        managedConfiguration2 = [(CNContactContentDisplayViewController *)self managedConfiguration];
        v17 = [v14 initWithEnvironment:cnEnvironment options:v12 managedConfiguration:managedConfiguration2];
        [(CNContactContentDisplayViewController *)self setContactStore:v17];

        goto LABEL_11;
      }

      contactStore3 = [MEMORY[0x1E695CE18] storeWithOptions:v12];
    }

    environment = contactStore3;
    [(CNContactContentDisplayViewController *)self setContactStore:contactStore3];
LABEL_11:
  }

  if (![(CNContactContentDisplayViewController *)self mode])
  {
    parentViewController = [(CNContactContentDisplayViewController *)self parentViewController];
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

  shadowCopyOfReadonlyContact = [(CNContactContentDisplayViewController *)self shadowCopyOfReadonlyContact];

  if (!shadowCopyOfReadonlyContact)
  {
    contact = [(CNContactContentDisplayViewController *)self contact];
    v23 = [(CNContactContentDisplayViewController *)self _policyForContact:contact mode:[(CNContactContentDisplayViewController *)self mode]];
    [(CNContactContentDisplayViewController *)self setPolicy:v23];
  }

  contact2 = [(CNContactContentDisplayViewController *)self contact];
  isUnified = [contact2 isUnified];

  if (isUnified)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    contact3 = [(CNContactContentDisplayViewController *)self contact];
    linkedContacts = [contact3 linkedContacts];

    v29 = [linkedContacts countByEnumeratingWithState:&v45 objects:v50 count:16];
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
            objc_enumerationMutation(linkedContacts);
          }

          v33 = *(*(&v45 + 1) + 8 * i);
          v34 = [(CNContactContentDisplayViewController *)self _policyForContact:v33 mode:[(CNContactContentDisplayViewController *)self mode]];
          if (v34)
          {
            identifier = [v33 identifier];
            [dictionary setObject:v34 forKey:identifier];
          }
        }

        v30 = [linkedContacts countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v30);
    }

    v36 = [dictionary copy];
    [(CNContactContentDisplayViewController *)self setLinkedPoliciesByContactIdentifier:v36];
  }

  iMessageIDSLookupToken = [(CNContactContentDisplayViewController *)self iMessageIDSLookupToken];
  [iMessageIDSLookupToken cancel];

  faceTimeIDSLookupToken = [(CNContactContentDisplayViewController *)self faceTimeIDSLookupToken];
  [faceTimeIDSLookupToken cancel];

  if (!self->_propertyGroups)
  {
    _loadPropertyGroups = [(CNContactContentDisplayViewController *)self _loadPropertyGroups];
    propertyGroups = self->_propertyGroups;
    self->_propertyGroups = _loadPropertyGroups;
  }

  if (([MEMORY[0x1E695CD58] quickActionsEnabled] & 1) == 0)
  {
    [(CNContactContentDisplayViewController *)self _reloadFaceTimeGroup];
  }

  [(CNContactContentDisplayViewController *)self _reloadGeminiGroupPreservingChanges:changesCopy];
  [(CNContactContentDisplayViewController *)self _reloadPropertyGroupsPreservingChanges:changesCopy];
  [(CNContactContentDisplayViewController *)self _reloadMedicalIDGroup];
  [(CNContactContentDisplayViewController *)self _reloadAlertGroups];
  [(CNContactContentDisplayViewController *)self setupActionsPreservingChanges:changesCopy];
  [(CNContactContentDisplayViewController *)self _reloadLinkedCardsGroup];
  _loadDisplayGroups = [(CNContactContentDisplayViewController *)self _loadDisplayGroups];
  [(CNContactContentDisplayViewController *)self setDisplayGroups:_loadDisplayGroups];

  [(CNContactContentDisplayViewController *)self _setNeedsUpdateCachedLabelWidths];
  [(CNContactContentDisplayViewController *)self _updateAvailableTransports];
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  [contactView reloadData];

  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView reloadDataPreservingChanges:changesCopy];

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __69__CNContactContentDisplayViewController_reloadDataPreservingChanges___block_invoke_380;
  v44[3] = &unk_1E74E6A88;
  v44[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v44];
  [(CNContactContentDisplayViewController *)self _updateUserActivity];
  [(CNContactContentDisplayViewController *)self adjustPreferredContentSize];
}

- (void)setPersonHeaderViewController:(id)controller
{
  controllerCopy = controller;
  personHeaderViewController = self->_personHeaderViewController;
  if (controllerCopy | personHeaderViewController)
  {
    v8 = controllerCopy;
    personHeaderViewController = [personHeaderViewController isEqual:controllerCopy];
    controllerCopy = v8;
    if ((personHeaderViewController & 1) == 0)
    {
      if (self->_personHeaderViewController)
      {
        [(CNContactContentDisplayViewController *)self removeFirstSectionHeaderViewControllerFromHierarchy];
      }

      objc_storeStrong(&self->_personHeaderViewController, controller);
      personHeaderViewController = [(CNContactContentDisplayViewController *)self isViewLoaded];
      controllerCopy = v8;
      if (personHeaderViewController)
      {
        contactView = [(CNContactContentDisplayViewController *)self contactView];
        [contactView reloadData];

        controllerCopy = v8;
      }
    }
  }

  MEMORY[0x1EEE66BB8](personHeaderViewController, controllerCopy);
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
  contact = [(CNContactContentDisplayViewController *)self contact];
  if (contact)
  {
    unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    contact2 = [(CNContactContentDisplayViewController *)self contact];
    v6 = [unifiedMeContactMonitor isMeContact:contact2];

    v7 = CNUILogContactCard();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        identifier = [contact identifier];
        *buf = 138543362;
        v23 = identifier;
        _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it the me card, identifier %{public}@", buf, 0xCu);
      }

      contactStore = [(CNContactContentDisplayViewController *)self contactStore];
      identifier3 = [objc_opt_class() descriptorForRequiredKeysForContact:contact];
      v31[0] = identifier3;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v21 = 0;
      v13 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v12 error:&v21];
      v14 = v21;
    }

    else
    {
      if (v8)
      {
        identifier2 = [contact identifier];
        *buf = 138543362;
        v23 = identifier2;
        _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it not the me card, identifier %{public}@", buf, 0xCu);
      }

      contactStore = [(CNContactContentDisplayViewController *)self contactStore];
      identifier3 = [contact identifier];
      v12 = [objc_opt_class() descriptorForRequiredKeysForContact:contact];
      v30 = v12;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
      v20 = 0;
      v13 = [contactStore unifiedContactWithIdentifier:identifier3 keysToFetch:v16 error:&v20];
      v14 = v20;
    }

    if (v14 || !v13)
    {
      v17 = CNUILogContactCard();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        identifier4 = [contact identifier];
        contactStore2 = [(CNContactContentDisplayViewController *)self contactStore];
        *buf = 138413058;
        v23 = identifier4;
        v24 = 2112;
        v25 = v14;
        v26 = 2112;
        v27 = contactStore2;
        v28 = 2112;
        v29 = contact;
        _os_log_error_impl(&dword_199A75000, v17, OS_LOG_TYPE_ERROR, "Error refetching contact with identifier %@, %@, store %@, full contact %@", buf, 0x2Au);
      }
    }

    else if (([v13 isEqual:contact] & 1) == 0)
    {
      [(CNContactContentDisplayViewController *)self setContact:v13];
    }
  }
}

- (void)contactStoreDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  defaultSchedulerProvider = [(CNUIContactsEnvironment *)self->_environment defaultSchedulerProvider];
  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__CNContactContentDisplayViewController_contactStoreDidChangeWithNotification___block_invoke;
  v8[3] = &unk_1E74E77C0;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  [mainThreadScheduler performBlock:v8];
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

- (void)adjustInsetsForKeyboardOverlap:(double)overlap
{
  [(CNContactContentDisplayViewController *)self setKeyboardVerticalOverlap:overlap];

  [(CNContactContentDisplayViewController *)self updateInsetsIfNeeded];
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

  view = [(CNContactContentDisplayViewController *)self view];
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
  [(CNContactContentDisplayViewController *)self adjustInsetsForKeyboardOverlap:CGRectGetHeight(v34)];
}

- (void)setContact:(id)contact
{
  v109[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = contactCopy;
  self->_needsRefetch = 0;
  if (self->_contact == contactCopy)
  {
    goto LABEL_40;
  }

  identifier = [(CNContact *)contactCopy identifier];
  identifier2 = [(CNContact *)self->_contact identifier];
  v8 = [identifier isEqualToString:identifier2];

  if ((v8 & 1) == 0)
  {
    [(CNContactContentDisplayViewController *)self setDidSetNewContact:1];
  }

  environment = [(CNContactContentDisplayViewController *)self environment];
  defaultSchedulerProvider = [environment defaultSchedulerProvider];

  [defaultSchedulerProvider suspendBackgroundScheduler];
  afterCACommitScheduler = [defaultSchedulerProvider afterCACommitScheduler];
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __52__CNContactContentDisplayViewController_setContact___block_invoke;
  v99[3] = &unk_1E74E6A88;
  v12 = defaultSchedulerProvider;
  v100 = v12;
  [afterCACommitScheduler performBlock:v99];

  contactViewCache = [(CNContactContentDisplayViewController *)self contactViewCache];
  [contactViewCache resetCache];

  LODWORD(afterCACommitScheduler) = [(CNContactContentDisplayViewController *)self isOutOfProcess];
  descriptorForRequiredKeys = [objc_opt_class() descriptorForRequiredKeys];
  v15 = descriptorForRequiredKeys;
  if (afterCACommitScheduler)
  {
    v109[0] = descriptorForRequiredKeys;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:1];
    v17 = [(CNContactContentDisplayViewController *)self _updateContact:v5 withMissingKeysFromRequiredKeys:v16];

    v5 = v17;
  }

  else
  {
    v108 = descriptorForRequiredKeys;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
    [v5 assertKeysAreAvailable:v16];
  }

  editAuthorizationManager = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  [editAuthorizationManager updateWithContact:v5];

  contactViewCache2 = [(CNContactContentDisplayViewController *)self contactViewCache];
  v20 = [contactViewCache2 policyForContact:v5];

  if ([v20 isReadonly])
  {
    v92 = v12;
    contactStore = [(CNContactContentDisplayViewController *)self contactStore];
    identifier3 = [v5 identifier];
    v23 = [objc_opt_class() descriptorForRequiredKeysForContact:v5];
    v107 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
    v98 = 0;
    v25 = [contactStore unifiedContactWithIdentifier:identifier3 keysToFetch:v24 error:&v98];
    v91 = v98;

    if (v25)
    {
      v26 = v25;

      contactViewCache3 = [(CNContactContentDisplayViewController *)self contactViewCache];
      v28 = [contactViewCache3 policyForContact:v26];

      v20 = v28;
      if ([v28 isReadonly])
      {
        v90 = v28;
        v29 = objc_alloc_init(MEMORY[0x1E695CF18]);
        availableKeyDescriptor = [v26 availableKeyDescriptor];
        v106 = availableKeyDescriptor;
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
                shadowCopyOfReadonlyContact = [(CNContactContentDisplayViewController *)self shadowCopyOfReadonlyContact];
                v41 = [v26 valueForKey:v39];
                [shadowCopyOfReadonlyContact setValue:v41 forKey:v39];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v94 objects:v105 count:16];
          }

          while (v36);
        }

        v42 = MEMORY[0x1E695DF70];
        shadowCopyOfReadonlyContact2 = [(CNContactContentDisplayViewController *)self shadowCopyOfReadonlyContact];
        v44 = [v42 arrayWithObject:shadowCopyOfReadonlyContact2];

        v45 = v91;
        if ([v26 isUnified])
        {
          linkedContacts = [v26 linkedContacts];
          [v44 addObjectsFromArray:linkedContacts];
        }

        else
        {
          [v44 addObject:v26];
        }

        v12 = v92;
        v5 = [MEMORY[0x1E695CD58] unifyContacts:v44];

        contactViewCache4 = [(CNContactContentDisplayViewController *)self contactViewCache];
        policyForDefaultContainer = [contactViewCache4 policyForDefaultContainer];
        [(CNContactContentDisplayViewController *)self setPolicy:policyForDefaultContainer];

        policy = [(CNContactContentDisplayViewController *)self policy];

        if (!policy || v91)
        {
          mEMORY[0x1E695CF48] = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
          [(CNContactContentDisplayViewController *)self setPolicy:mEMORY[0x1E695CF48]];
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
    identifier4 = [v5 identifier];
    mutableContact = self->_mutableContact;
    *buf = 138543618;
    v102 = identifier4;
    v103 = 2050;
    v104 = mutableContact;
    _os_log_impl(&dword_199A75000, v53, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] setting contact with identifier %{public}@, mutable contact %{public}p", buf, 0x16u);
  }

  customActions = [(CNContactContentDisplayViewController *)self customActions];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __52__CNContactContentDisplayViewController_setContact___block_invoke_368;
  v93[3] = &unk_1E74E6AF8;
  v93[4] = self;
  v57 = [customActions _cn_filter:v93];
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

  siriContextProvider = [(CNContactContentDisplayViewController *)self siriContextProvider];
  LODWORD(v57) = [siriContextProvider isEnabled];

  v74 = [CNSiriContactContextProvider alloc];
  contactStore2 = [(CNContactContentDisplayViewController *)self contactStore];
  v76 = [(CNSiriContactContextProvider *)v74 initWithContact:v5 store:contactStore2];
  [(CNContactContentDisplayViewController *)self setSiriContextProvider:v76];

  if (v57)
  {
    siriContextProvider2 = [(CNContactContentDisplayViewController *)self siriContextProvider];
    [siriContextProvider2 setEnabled:1];
  }

  [(CNContactContentDisplayViewController *)self setActionProvider:0];
  [(CNContactContentDisplayViewController *)self setCardFaceTimeGroup:0];
  [(CNContactContentDisplayViewController *)self setBlockAction:0];
  [(CNContactContentDisplayViewController *)self setIgnoreContactAction:0];
  [(CNContactContentDisplayViewController *)self setCardMedicalIDGroup:0];
  [(CNContactContentDisplayViewController *)self setMedicalIDAction:0];
  [(CNContactContentDisplayViewController *)self setEmergencyContactAction:0];
  geminiDataSource = [(CNContactContentDisplayViewController *)self geminiDataSource];
  [geminiDataSource setContact:v5];

  [(CNContactContentDisplayViewController *)self isOutOfProcess];
  editAuthorizationManager2 = [(CNContactContentDisplayViewController *)self editAuthorizationManager];
  shouldPromptForPasscodeAuthorization = [editAuthorizationManager2 shouldPromptForPasscodeAuthorization];
  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView setIsRestrictedContact:shouldPromptForPasscodeAuthorization];

  v82 = [MEMORY[0x1E695CE70] isWhitelistedContact:self->_mutableContact];
  contactHeaderView2 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView2 setIsDowntimeContact:v82];

  contactHeaderView3 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView3 updateWithNewContact:self->_mutableContact];

  [(CNContactContentDisplayViewController *)self updateEditNavigationItemsAnimated:0];
  [(CNContactContentDisplayViewController *)self setContactSupportsTTYCalls:0];
  shareLocationController = [(CNContactContentDisplayViewController *)self shareLocationController];
  [shareLocationController setContact:v5];

  actionsViewController = [(CNContactContentDisplayViewController *)self actionsViewController];
  [actionsViewController setContact:v5];

  [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:0];
  if ([(CNContactContentDisplayViewController *)self isViewLoaded])
  {
    contactView = [(CNContactContentDisplayViewController *)self contactView];
    [(CNContactContentDisplayViewController *)self scrollScrollViewAllTheWayUp:contactView];
  }

  v88 = +[CNUIDataCollector sharedCollector];
  contact = [(CNContactContentDisplayViewController *)self contact];
  [v88 logContactShown:contact];

  [(CNContactContentDisplayViewController *)self prepareContactDidAppearForPPT];
LABEL_40:
}

- (void)prepareCell:(id)cell
{
  cellCopy = cell;
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  [contactView applyCellAppearance:cellCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
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
LABEL_15:

    labelTextAttributes = actionTextAttributes;
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

    actionsDataSource = [(CNContactContentDisplayViewController *)self actionsDataSource];
    [v15 setActionsDataSource:actionsDataSource];

    contact = [(CNContactContentDisplayViewController *)self contact];
    [v15 setContact:contact];

    actionTextAttributes = [contactView valueTextAttributes];

    labelTextAttributes = v15;
    goto LABEL_15;
  }

LABEL_16:
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    view = [(CNContactContentDisplayViewController *)self view];
    tintColorOverride = [view tintColorOverride];
    suggestedLabelTextColor = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v5;
    if ([v26 supportsValueColorUsesLabelColor])
    {
      v27 = +[CNContactStyle currentStyle];
      tintColorOverride = [v27 textColor];
    }

    else
    {
      tintColorOverride = 0;
    }

    highlightedProperties = [(CNContactContentDisplayViewController *)self highlightedProperties];
    if ([highlightedProperties count])
    {
      highlightedProperties2 = [(CNContactContentDisplayViewController *)self highlightedProperties];
      propertyItem = [v26 propertyItem];
      v40 = highlightedProperties;
      [propertyItem contactProperty];
      v31 = v30 = v26;
      [v30 setHighlightedProperty:{objc_msgSend(highlightedProperties2, "containsObject:", v31)}];

      v26 = v30;
      highlightedProperties = v40;
    }

    else
    {
      [v26 setHighlightedProperty:0];
    }

    if ([v26 isSuggested])
    {
      v32 = +[CNContactStyle currentStyle];
      suggestedLabelTextColor = [v32 suggestedLabelTextColor];

      view2 = +[CNContactStyle currentStyle];
      suggestedValueTextColor = [view2 suggestedValueTextColor];
    }

    else
    {
      if ([v26 isHighlightedProperty] && -[CNContactContentDisplayViewController highlightedPropertyImportant](self, "highlightedPropertyImportant"))
      {
        [v26 setImportant:{-[CNContactContentDisplayViewController highlightedPropertyImportant](self, "highlightedPropertyImportant")}];
        suggestedValueTextColor = [MEMORY[0x1E69DC888] redColor];
        suggestedLabelTextColor = 0;
LABEL_49:

        tintColorOverride = suggestedValueTextColor;
        goto LABEL_50;
      }

      if (![v26 supportsTintColorValue])
      {
        suggestedLabelTextColor = 0;
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

        if (!suggestedLabelTextColor)
        {
LABEL_21:
          if (tintColorOverride)
          {
            v21 = [valueTextAttributes mutableCopy];
            [v21 setObject:tintColorOverride forKeyedSubscript:*MEMORY[0x1E69DB650]];

            valueTextAttributes = v21;
          }

          if (isKindOfClass)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        v38 = [labelTextAttributes mutableCopy];
        [v38 setObject:suggestedLabelTextColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
        view = labelTextAttributes;
        labelTextAttributes = v38;
LABEL_20:

        goto LABEL_21;
      }

      view2 = [(CNContactContentDisplayViewController *)self view];
      suggestedValueTextColor = [view2 tintColorOverride];

      suggestedLabelTextColor = 0;
    }

    tintColorOverride = view2;
    goto LABEL_49;
  }

  suggestedLabelTextColor = 0;
  if (isKindOfClass)
  {
    goto LABEL_25;
  }

LABEL_24:
  labelTextAttributes2 = [v7 labelTextAttributes];
  v23 = [labelTextAttributes2 isEqual:labelTextAttributes];

  if ((v23 & 1) == 0)
  {
LABEL_25:
    [v7 setLabelTextAttributes:labelTextAttributes];
  }

  valueTextAttributes2 = [v7 valueTextAttributes];
  v25 = [valueTextAttributes2 isEqual:valueTextAttributes];

  if ((v25 & 1) == 0)
  {
    [v7 setValueTextAttributes:valueTextAttributes];
  }

LABEL_29:
}

- (void)contentSizeCategoryDidChange:(id)change
{
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  [contactView updateFontSizes];

  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView updateFontSizes];

  [(CNContactView *)self->_contactView setTableHeaderView:0];
  [(CNContactInlineActionsViewController *)self->_actionsViewController willMoveToParentViewController:0];
  [(CNContactInlineActionsViewController *)self->_actionsViewController removeFromParentViewController];
  view = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
  [view removeFromSuperview];

  createActionsController = [(CNContactContentDisplayViewController *)self createActionsController];
  actionsViewController = self->_actionsViewController;
  self->_actionsViewController = createActionsController;

  [(CNContactInlineActionsViewController *)self->_actionsViewController setObjectViewControllerDelegate:self];
  [(CNContactInlineActionsViewController *)self->_actionsViewController setDelegate:self];
  [(CNContactContentDisplayViewController *)self addChildViewController:self->_actionsViewController];
  [(CNContactInlineActionsViewController *)self->_actionsViewController didMoveToParentViewController:self];
  actionsWrapperView = self->_actionsWrapperView;
  view2 = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
  [(CNContactActionsContainerView *)actionsWrapperView addArrangedSubview:view2];

  [(CNContactContentDisplayViewController *)self viewDidLayoutSubviews];
  [(CNContactContentDisplayViewController *)self reloadDataPreservingChanges:1];
  [(CNContactContentDisplayViewController *)self setupConstraints];
  applyContactStyle = [(CNContactContentDisplayViewController *)self applyContactStyle];
}

- (NSArray)cardActions
{
  cardActionsGroup = [(CNContactContentDisplayViewController *)self cardActionsGroup];
  actions = [cardActionsGroup actions];

  return actions;
}

- (BOOL)isOutOfProcess
{
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  isOutOfProcess = [contactViewConfiguration isOutOfProcess];

  return isOutOfProcess;
}

- (id)createActionsController
{
  v3 = [CNContactInlineActionsViewController alloc];
  actionsDataSource = self->_actionsDataSource;
  environment = [(CNContactContentDisplayViewController *)self environment];
  v6 = [(CNContactInlineActionsViewController *)v3 initWithActionListDataSource:actionsDataSource environment:environment];

  [(CNContactInlineActionsViewController *)v6 setDisplaysTitles:1];
  [(CNContactInlineActionsViewController *)v6 setDisplaysUnavailableActionTypes:1];
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  if ([contactViewConfiguration showsInlineActions])
  {
    isContactBlocked = [(CNContactContentDisplayViewController *)self isContactBlocked];

    if (!isContactBlocked)
    {
      allSupportedActionTypes = [MEMORY[0x1E6996BE8] allSupportedActionTypes];
      [(CNContactInlineActionsViewController *)v6 setSupportedActionTypes:allSupportedActionTypes];

      goto LABEL_6;
    }
  }

  else
  {
  }

  [(CNContactInlineActionsViewController *)v6 setSupportedActionTypes:MEMORY[0x1E695E0F0]];
LABEL_6:
  view = [(CNContactInlineActionsViewController *)v6 view];
  LODWORD(v11) = 1148846080;
  [view setContentCompressionResistancePriority:0 forAxis:v11];

  return v6;
}

- (BOOL)isHeaderViewPhotoProhibited
{
  prohibitedPropertyKeys = [(CNContactContentDisplayViewController *)self prohibitedPropertyKeys];
  if ([prohibitedPropertyKeys containsObject:*MEMORY[0x1E695C278]])
  {
    v4 = 1;
  }

  else
  {
    prohibitedPropertyKeys2 = [(CNContactContentDisplayViewController *)self prohibitedPropertyKeys];
    v4 = [prohibitedPropertyKeys2 containsObject:*MEMORY[0x1E695C400]];
  }

  return v4;
}

- (CNContactView)contactView
{
  contactView = self->_contactView;
  if (!contactView)
  {
    v4 = [CNContactView alloc];
    tableViewStyle = [objc_opt_class() tableViewStyle];
    contact = [(CNContactContentDisplayViewController *)self contact];
    v7 = [(CNContactView *)v4 initWithFrame:tableViewStyle style:contact contact:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
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
    isHeaderViewPhotoProhibited = [(CNContactContentDisplayViewController *)self isHeaderViewPhotoProhibited];
    mutableContact = [(CNContactContentDisplayViewController *)self mutableContact];
    contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    v7 = +[CNContactHeaderDisplayView contactHeaderViewWithContact:showingNavBar:monogramOnly:delegate:](CNContactHeaderDisplayView, "contactHeaderViewWithContact:showingNavBar:monogramOnly:delegate:", mutableContact, [contactViewConfiguration layoutPositionallyAfterNavBar], isHeaderViewPhotoProhibited, self);
    v8 = self->_contactHeaderView;
    self->_contactHeaderView = v7;

    [(CNContactHeaderView *)self->_contactHeaderView setAlwaysShowsMonogram:1];
    contactFormatter = [(CNContactContentDisplayViewController *)self contactFormatter];
    [(CNContactHeaderDisplayView *)self->_contactHeaderView setContactFormatter:contactFormatter];

    contactViewConfiguration2 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    alternateName = [contactViewConfiguration2 alternateName];
    [(CNContactHeaderDisplayView *)self->_contactHeaderView setAlternateName:alternateName];

    contactViewConfiguration3 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    message = [contactViewConfiguration3 message];
    [(CNContactHeaderDisplayView *)self->_contactHeaderView setMessage:message];

    contactViewConfiguration4 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    importantMessage = [contactViewConfiguration4 importantMessage];
    [(CNContactHeaderDisplayView *)self->_contactHeaderView setImportantMessage:importantMessage];

    presentingDelegate = [(CNContactContentDisplayViewController *)self presentingDelegate];
    [(CNContactHeaderView *)self->_contactHeaderView setPresenterDelegate:presentingDelegate];

    [(CNContactHeaderDisplayView *)self->_contactHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    contactViewConfiguration5 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
    -[CNContactHeaderDisplayView setAllowsPickerActions:](self->_contactHeaderView, "setAllowsPickerActions:", [contactViewConfiguration5 allowsDisplayModePickerActions]);

    applyContactStyle = [(CNContactContentDisplayViewController *)self applyContactStyle];
    contactHeaderView = self->_contactHeaderView;
  }

  return contactHeaderView;
}

- (void)contactViewConfigurationDidUpdate
{
  contactViewConfiguration = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  contactStore = [contactViewConfiguration contactStore];

  actionsDataSource = [(CNContactContentDisplayViewController *)self actionsDataSource];
  [actionsDataSource setContactStore:contactStore];

  contactViewCache = [(CNContactContentDisplayViewController *)self contactViewCache];
  [contactViewCache setContactStore:contactStore];

  v7 = CNUILogContactCard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_debug_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEBUG, "display contactViewConfigurationDidUpdate", v15, 2u);
  }

  [(CNContactContentDisplayViewController *)self reloadDataIfNeeded];
  contactHeaderView = [(CNContactContentDisplayViewController *)self contactHeaderView];
  contactViewConfiguration2 = [(CNContactContentDisplayViewController *)self contactViewConfiguration];
  [contactHeaderView updateForShowingNavBar:{objc_msgSend(contactViewConfiguration2, "layoutPositionallyAfterNavBar")}];

  contactHeaderView2 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  mutableContact = [(CNContactContentDisplayViewController *)self mutableContact];
  [contactHeaderView2 updateWithNewContact:mutableContact];

  shouldShowGemini = [(CNContactContentDisplayViewController *)self shouldShowGemini];
  contactHeaderView3 = [(CNContactContentDisplayViewController *)self contactHeaderView];
  [contactHeaderView3 setShouldShowGemini:shouldShowGemini];

  [(CNContactContentDisplayViewController *)self updateEditNavigationItemsAnimated:0];
  applyContactStyle = [(CNContactContentDisplayViewController *)self applyContactStyle];
}

- (void)dealloc
{
  v13[1] = *MEMORY[0x1E69E9840];
  [(CNContactView *)self->_contactView setDelegate:0];
  [(CNContactView *)self->_contactView setDataSource:0];
  [(CNContactHeaderView *)self->_contactHeaderView setDelegate:0];
  [(CNContactHeaderDisplayView *)self->_contactHeaderView didFinishUsing];
  headerHeightConstraint = [(CNContactContentDisplayViewController *)self headerHeightConstraint];

  if (headerHeightConstraint)
  {
    v4 = MEMORY[0x1E696ACD8];
    headerHeightConstraint2 = [(CNContactContentDisplayViewController *)self headerHeightConstraint];
    v13[0] = headerHeightConstraint2;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v4 deactivateConstraints:v6];
  }

  actionsDataSource = self->_actionsDataSource;
  self->_actionsDataSource = 0;

  actionProvider = self->_actionProvider;
  self->_actionProvider = 0;

  iMessageIDSLookupToken = [(CNContactContentDisplayViewController *)self iMessageIDSLookupToken];
  [iMessageIDSLookupToken cancel];

  faceTimeIDSLookupToken = [(CNContactContentDisplayViewController *)self faceTimeIDSLookupToken];
  [faceTimeIDSLookupToken cancel];

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v12.receiver = self;
  v12.super_class = CNContactContentDisplayViewController;
  [(CNContactContentDisplayViewController *)&v12 dealloc];
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
    v9[2] = __72__CNContactContentDisplayViewController_setForcesTransparentBackground___block_invoke;
    v9[3] = &unk_1E74E6A88;
    v9[4] = self;
    [mainThreadScheduler performBlock:v9];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (titleCopy || ([(CNContactContentDisplayViewController *)self title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    title = [(CNContactContentDisplayViewController *)self title];
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
      v8.super_class = CNContactContentDisplayViewController;
      [(CNContactContentDisplayViewController *)&v8 setTitle:titleCopy];
      [(CNContactContentDisplayViewController *)self didChangeToShowTitle:titleCopy != 0];
    }
  }

LABEL_6:
}

- (void)setContactStore:(id)store
{
  objc_storeStrong(&self->_contactStore, store);
  storeCopy = store;
  actionsDataSource = [(CNContactContentDisplayViewController *)self actionsDataSource];
  [actionsDataSource setContactStore:storeCopy];

  contactViewCache = [(CNContactContentDisplayViewController *)self contactViewCache];
  [contactViewCache setContactStore:storeCopy];
}

- (CNContactContentDisplayViewController)initWithContact:(id)contact contactViewConfiguration:(id)configuration
{
  contactCopy = contact;
  configurationCopy = configuration;
  v8 = [(CNContactContentDisplayViewController *)self initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(CNContactContentDisplayViewController *)v8 setContact:contactCopy];
    [(CNContactContentDisplayViewController *)v9 setContactViewConfiguration:configurationCopy];
    [(CNContactContentDisplayViewController *)v9 contactViewConfigurationDidUpdate];
  }

  return v9;
}

- (CNContactContentDisplayViewController)initWithEnvironment:(id)environment
{
  v54[1] = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  v53.receiver = self;
  v53.super_class = CNContactContentDisplayViewController;
  v6 = [(CNContactContentDisplayViewController *)&v53 initWithNibName:0 bundle:0];
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

  objc_storeWeak(&v6->_presentingDelegate, v6);
  mEMORY[0x1E695CD80] = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  contactFormatter = v6->_contactFormatter;
  v6->_contactFormatter = mEMORY[0x1E695CD80];

  v16 = +[CNContactView allCardProperties];
  displayedProperties = v6->_displayedProperties;
  v6->_displayedProperties = v16;

  v18 = objc_alloc(MEMORY[0x1E6996BE8]);
  actionDiscoveringEnvironment = [environmentCopy actionDiscoveringEnvironment];
  v20 = [v18 initWithDiscoveringEnvironment:actionDiscoveringEnvironment];
  actionsDataSource = v6->_actionsDataSource;
  v6->_actionsDataSource = v20;

  createActionsController = [(CNContactContentDisplayViewController *)v6 createActionsController];
  actionsViewController = v6->_actionsViewController;
  v6->_actionsViewController = createActionsController;

  [(CNContactInlineActionsViewController *)v6->_actionsViewController setObjectViewControllerDelegate:v6];
  [(CNContactInlineActionsViewController *)v6->_actionsViewController setDelegate:v6];
  [(CNContactContentDisplayViewController *)v6 addChildViewController:v6->_actionsViewController];
  [(CNContactInlineActionsViewController *)v6->_actionsViewController didMoveToParentViewController:v6];
  v24 = [CNContactActionsContainerView alloc];
  view = [(CNContactInlineActionsViewController *)v6->_actionsViewController view];
  v54[0] = view;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  v27 = [(CNContactActionsContainerView *)v24 initWithArrangedSubviews:v26];
  actionsWrapperView = v6->_actionsWrapperView;
  v6->_actionsWrapperView = v27;

  [(CNContactActionsContainerView *)v6->_actionsWrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = *MEMORY[0x1E698B6F8];
  view2 = [(CNContactInlineActionsViewController *)v6->_actionsViewController view];
  [view2 setMinimumLayoutSize:{v29, 35.0}];

  v31 = objc_opt_new();
  headerDropShadowView = v6->_headerDropShadowView;
  v6->_headerDropShadowView = v31;

  [(UIView *)v6->_headerDropShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
  environment = [(CNContactContentDisplayViewController *)v6 environment];
  if ([environment runningInContactsAppOniPad])
  {
    backgroundColor = [(UIView *)v6->_headerDropShadowView backgroundColor];
    [(UIView *)v6->_headerDropShadowView setBackgroundColor:backgroundColor];
  }

  else
  {
    backgroundColor = +[CNContactStyle currentStyle];
    contactHeaderDropShadowColor = [backgroundColor contactHeaderDropShadowColor];
    [(UIView *)v6->_headerDropShadowView setBackgroundColor:contactHeaderDropShadowColor];
  }

  inProcessActivityManager = [environmentCopy inProcessActivityManager];
  activityManager = v6->_activityManager;
  v6->_activityManager = inProcessActivityManager;

  array = [MEMORY[0x1E695DEC8] array];
  customActions = v6->_customActions;
  v6->_customActions = array;

  v40 = objc_alloc_init(CNUIContactStoreLinkedContactSaveExecutor);
  saveLinkedContactsExecutor = v6->_saveLinkedContactsExecutor;
  v6->_saveLinkedContactsExecutor = v40;

  [(CNContactContentDisplayViewController *)v6 setNeedsReloadLazy];
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

  [(CNContactContentDisplayViewController *)v6 setRestorationIdentifier:@"ContactCard"];
  [(CNContactContentDisplayViewController *)v6 setRestorationClass:objc_opt_class()];
  navigationItem = [(CNContactContentDisplayViewController *)v6 navigationItem];
  [navigationItem _setBackgroundHidden:1];

  navigationItem2 = [(CNContactContentDisplayViewController *)v6 navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:2];

  applyContactStyle = [(CNContactContentDisplayViewController *)v6 applyContactStyle];
  return v6;
}

- (CNContactContentDisplayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = [CNUIContactsEnvironment currentEnvironment:name];
  v6 = [(CNContactContentDisplayViewController *)self initWithEnvironment:v5];

  return v6;
}

+ (CNContactContentDisplayViewController)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder
{
  v26[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v6 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v7 = MEMORY[0x1E695CD58];
  v8 = +[CNContactContentViewController descriptorForRequiredKeys];
  v26[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v10 = [v7 contactWithStateRestorationCoder:coderCopy store:v6 keys:v9];

  if (v10)
  {
    v20 = v6;
    v11 = [[CNContactContentViewController alloc] initWithContact:v10];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    bOOLStateRestorationProperties = [self BOOLStateRestorationProperties];
    v13 = [bOOLStateRestorationProperties countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(bOOLStateRestorationProperties);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v17];
          if (v18)
          {
            [(CNContactContentViewController *)v11 setValue:v18 forKey:v17];
          }
        }

        v14 = [bOOLStateRestorationProperties countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (BOOL)actionModelIncludesTTY:(id)y
{
  allActions = [y allActions];
  v4 = [allActions _cn_any:&__block_literal_global_673];

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

+ (id)descriptorForRequiredKeysWithDescription:(id)description
{
  descriptionCopy = description;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__CNContactContentDisplayViewController_descriptorForRequiredKeysWithDescription___block_invoke;
  block[3] = &unk_1E74E6A88;
  v10 = descriptionCopy;
  v4 = descriptorForRequiredKeysWithDescription__cn_once_token_13_59654;
  v5 = descriptionCopy;
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
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentDisplayViewController descriptorForRequiredKeysForContact:]"];
  v10 = [v8 descriptorWithKeyDescriptors:v7 description:v9];

  return v10;
}

@end