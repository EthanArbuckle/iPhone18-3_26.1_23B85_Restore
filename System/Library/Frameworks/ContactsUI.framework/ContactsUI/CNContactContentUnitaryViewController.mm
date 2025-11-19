@interface CNContactContentUnitaryViewController
+ (BOOL)actionModelIncludesTTY:(id)a3;
+ (BOOL)enablesTransportButtons;
+ (BOOL)shouldShowGeminiForResult:(id)a3 contact:(id)a4;
+ (id)descriptorForRequiredKeys;
+ (id)descriptorForRequiredKeysForContact:(id)a3;
+ (id)descriptorForRequiredKeysWithDescription:(id)a3;
+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4;
+ (void)_telemetryForContact:(id)a3;
- (BOOL)_hasAtLeastOneVerifiedHandle;
- (BOOL)_indexPathIsActionItem:(id)a3 forTableView:(id)a4;
- (BOOL)_isGroupEmpty:(id)a3;
- (BOOL)_isUnavailableAuthorizationPropertyKey:(id)a3;
- (BOOL)_modelHasChanges;
- (BOOL)_modelIsEmpty;
- (BOOL)allowsEditing;
- (BOOL)contactHasAvailablePropertiesToFavorite:(id)a3 isPhoneAppAvailable:(BOOL)a4 isFaceTimeAppAvailable:(BOOL)a5;
- (BOOL)contactInlineActionsViewController:(id)a3 shouldPerformActionOfType:(id)a4 withContactProperty:(id)a5;
- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContact:(id)a4 propertyKey:(id)a5 propertyIdentifier:(id)a6;
- (BOOL)displayNavigationButtonsShouldUsePlatterStyle;
- (BOOL)editRequiresAuthorization;
- (BOOL)editingChangeRequiresAuthorization;
- (BOOL)hasExistingGroups;
- (BOOL)hasPendingChanges;
- (BOOL)hasPersonHeaderSectionForTableView:(id)a3;
- (BOOL)hasSharedProfileBannerSectionForTableView:(id)a3;
- (BOOL)isAcceptedIntroductionsDataSource;
- (BOOL)isContactProviderDataSource;
- (BOOL)isHeaderViewContactBlocked:(id)a3;
- (BOOL)isHeaderViewPhotoProhibited;
- (BOOL)isNicknameProhibited;
- (BOOL)isOrientationPhoneLandscape;
- (BOOL)isPadCompactHorizontalSize;
- (BOOL)isPadRegularHorizontalSize;
- (BOOL)isPersonHeaderIndexPath:(id)a3 forTableView:(id)a4;
- (BOOL)isPersonHeaderSectionForTableView:(id)a3 section:(int64_t)a4;
- (BOOL)isPresentingModalViewController;
- (BOOL)isScrollViewControllingHeaderResizeAnimation:(id)a3;
- (BOOL)isSharedProfileBannerSectionForTableView:(id)a3 section:(int64_t)a4;
- (BOOL)isSharedProfileBannerSectionIndexPath:(id)a3 forTableView:(id)a4;
- (BOOL)isStandardGroup:(id)a3;
- (BOOL)isSuggestedContact;
- (BOOL)multiplePhoneNumbersTiedToAppleID;
- (BOOL)performSave;
- (BOOL)reloadDataIfNeeded;
- (BOOL)saveChanges;
- (BOOL)saveWasAuthorized;
- (BOOL)shouldAddDefaultAppGroup;
- (BOOL)shouldAddFaceTimeGroup;
- (BOOL)shouldAddGameCenterActionGroup;
- (BOOL)shouldAddGameCenterGroup;
- (BOOL)shouldAddShareLocationGroup;
- (BOOL)shouldAllowContainerPicking;
- (BOOL)shouldDisplayAvatarHeaderView;
- (BOOL)shouldPerformDefaultActionForPropertyKey:(id)a3 propertyIdentifier:(id)a4;
- (BOOL)shouldReallyShowLinkedContactsForEditingState:(BOOL)a3;
- (BOOL)shouldSetBackgroundColorToMatchHeader;
- (BOOL)shouldShowGemini;
- (BOOL)shouldShowSharedProfileRow;
- (BOOL)shouldShowSwiftUIContactCard;
- (BOOL)shouldShowVerifiedFooterInSection:(int64_t)a3 inTableView:(id)a4;
- (BOOL)shouldUpdateSharedProfile;
- (BOOL)shouldUseSharedProfile;
- (BOOL)shouldUseStaticHeader;
- (BOOL)showsGroupMembership;
- (BOOL)supportsAction:(int64_t)a3;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canPerformAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldHaveFullLengthBottomSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldShowMenuForRowAtIndexPath:(id)a4;
- (CGRect)centeredSourceRect:(CGRect)a3 inContactView:(id)a4;
- (CGSize)requiredSizeForVisibleTableView;
- (CGSize)setupTableHeaderView;
- (CNContactCardActionsDelegate)actionsDelegate;
- (CNContactContentUnitaryViewController)initWithContact:(id)a3;
- (CNContactContentUnitaryViewController)initWithContact:(id)a3 prohibitedPropertyKeys:(id)a4;
- (CNContactContentUnitaryViewController)initWithEnvironment:(id)a3 isInlineContactCard:(BOOL)a4;
- (CNContactContentUnitaryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CNContactHeaderCollapsedView)displayFloatingCollapsedHeaderView;
- (CNContactHeaderDisplayView)displayHeaderView;
- (CNContactHeaderEditView)editingHeaderView;
- (CNContactHeaderStaticDisplayView)staticDisplayHeaderView;
- (CNContactView)displayContactView;
- (CNContactView)editingContactView;
- (CNContactViewControllerPPTDelegate)pptDelegate;
- (CNContactViewHostProtocol)delegate;
- (CNMutableContact)mutableContactForHeaderView;
- (CNShareLocationController)shareLocationController;
- (CNSharedProfileStateOracle)sharedProfileStateOracle;
- (Class)groupClassForProperty:(id)a3;
- (UIEdgeInsets)headerViewSafeAreaInsets;
- (UIEdgeInsets)insetsForContactTableView:(id)a3;
- (UIEdgeInsets)peripheryInsets;
- (UIEdgeInsets)scrollIndicatorInsetsForContactTableView:(id)a3 withContentInsets:(UIEdgeInsets)a4;
- (UIView)editingFloatingCollapsedHeaderView;
- (_TtC10ContactsUI32ContactCardSwiftUIViewController)displayContactCardViewController;
- (double)actionsBottomMargin;
- (double)actionsTopMargin;
- (double)desiredHeightForWidth:(double)a3;
- (double)editingFloatingHeaderHeight;
- (double)globalHeaderHeightForContentOffset:(double)a3 contentInset:(UIEdgeInsets)a4;
- (double)navigationBarHeight;
- (double)staticDisplayHeaderHeight;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)updateHeaderConstraintForGlobalHeaderHeight:(double)a3 direction:(int64_t)a4 animated:(BOOL)a5;
- (id)_addAddressingGrammarAction;
- (id)_addCreateNewContactAction;
- (id)_addFavoriteActionWithConferencing:(BOOL)a3 telephony:(BOOL)a4;
- (id)_addGroupsInArray:(id)a3 afterGroup:(id)a4;
- (id)_addLinkedCardAction;
- (id)_addNewFieldAction;
- (id)_addToExistingContactAction;
- (id)_addToGroupAction;
- (id)_allDisplayPropertyItemsFromGroups:(id)a3;
- (id)_cardGroupAtTableViewSectionIndex:(int64_t)a3 forTableView:(id)a4;
- (id)_cellForIndexPath:(id)a3 forTableView:(id)a4;
- (id)_cellIdentifierForTableView:(id)a3 indexPath:(id)a4;
- (id)_clearRecentsDataAction;
- (id)_currentGroupsForTableView:(id)a3;
- (id)_currentTopVisibleGroupInContactView:(id)a3;
- (id)_displayGroupsForKeys:(id)a3;
- (id)_faceTimeAction;
- (id)_itemAtIndexPath:(id)a3 forTableView:(id)a4;
- (id)_labelWidthKeyForGroup:(id)a3;
- (id)_linkedCardsAction;
- (id)_loadDisplayGroups;
- (id)_loadEditingGroupsPreservingChanges:(BOOL)a3;
- (id)_loadNameEditingGroups;
- (id)_loadPropertyGroups;
- (id)_menuItemsForQuickAction:(int64_t)a3;
- (id)_menuItemsFromActionsController:(id)a3;
- (id)_menuItemsFromNavigationItems:(id)a3 isNested:(BOOL)a4;
- (id)_phoneticNameForValue:(id)a3 currentPhoneticName:(id)a4 property:(id)a5;
- (id)_policyForContact:(id)a3 mode:(int64_t)a4;
- (id)_propertyGroupsForKeys:(id)a3;
- (id)_removeUnauthorizedKeysFromContact:(id)a3;
- (id)_selectContainersAction;
- (id)_sendMessageActionAllowingEmailIDs:(BOOL)a3;
- (id)_shareContactAction;
- (id)_sharedProfileSettingsAction;
- (id)_updateContact:(id)a3 withMissingKeysFromRequiredKeys:(id)a4;
- (id)_updateExistingContactAction;
- (id)action:(id)a3 cellForPropertyItem:(id)a4 sender:(id)a5;
- (id)alreadyPickedGroups;
- (id)applyContactStyle;
- (id)authorizationCheck;
- (id)cancelButtonItem;
- (id)cardActions;
- (id)cardGroupForProperty:(id)a3;
- (id)contactDelegate;
- (id)contactHeaderView;
- (id)contactView;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (id)createActionsController;
- (id)currentNavigationController;
- (id)customActionGroupsForPlacement:(int64_t)a3;
- (id)defaulTextColor;
- (id)defaultActionForActionType:(int64_t)a3;
- (id)doneButtonItem;
- (id)editButtonItem;
- (id)groupContext;
- (id)indexPathOfPropertyItem:(id)a3 editing:(BOOL)a4;
- (id)indexPathOfPropertyItem:(id)a3 inGroup:(id)a4 editing:(BOOL)a5;
- (id)initForInlineContactCardWithContact:(id)a3;
- (id)menuItemsForAction:(int64_t)a3;
- (id)navigationItemController;
- (id)originalContacts;
- (id)parentGroups;
- (id)personHeaderCellForTableView:(id)a3;
- (id)personHeaderView;
- (id)personHeaderViewDelegate;
- (id)platterBackBarButtonItem;
- (id)presentingDelegate;
- (id)saveDescriptionForCurrentState;
- (id)setupSharedProfileStateOracle;
- (id)sharedNavigationBar;
- (id)sharedProfileBannerSectionCellForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)_modalPresentationStyleForViewController:(id)a3;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3;
- (int64_t)additionalTopSectionsCountForTableView:(id)a3;
- (int64_t)customActionPlacementFromPlacement:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)sectionOfGroup:(id)a3 inTableView:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addDefaultAppGroupAnimated:(BOOL)a3;
- (void)_addFaceTimeGroupAnimated:(BOOL)a3;
- (void)_addGroup:(id)a3 afterGroup:(id)a4 forTableView:(id)a5 animated:(BOOL)a6;
- (void)_addMedicalIDGroupAnimated:(BOOL)a3 forTableView:(id)a4;
- (void)_addShareLocationGroupAnimated:(BOOL)a3;
- (void)_addedGroupWithName:(id)a3;
- (void)_debouncedReloadDataPreservingChanges:(BOOL)a3;
- (void)_didCompleteWithContact:(id)a3;
- (void)_handleCoalescedBlockListDidChange;
- (void)_lazyUpdateContactCardPropertyViewConfiguration;
- (void)_lookupKTHandlesIfNeeded;
- (void)_lookupStaticIdentity;
- (void)_notifyObservers;
- (void)_refetchContact;
- (void)_reloadAlertGroups;
- (void)_reloadContainerContextPreservingChanges:(BOOL)a3;
- (void)_reloadDefaultAppGroup;
- (void)_reloadFaceTimeGroup;
- (void)_reloadGameCenterGroup;
- (void)_reloadGameCenterGroupWithPreflight;
- (void)_reloadGameCenterGroupWithRefresh;
- (void)_reloadGeminiGroupPreservingChanges:(BOOL)a3;
- (void)_reloadGroupEditingContext;
- (void)_reloadGroupMembershipGroup;
- (void)_reloadLinkedCardsGroup;
- (void)_reloadMeCardSharedProfileGroup;
- (void)_reloadMedicalIDGroup;
- (void)_reloadNamePickingGroup;
- (void)_reloadPropertyGroupsPreservingChanges:(BOOL)a3;
- (void)_reloadSharedProfileGroup;
- (void)_reloadStaticIdentityGroup;
- (void)_retrieveActionsModelPreservingChanges:(BOOL)a3;
- (void)_saveChangesForGroups:(id)a3;
- (void)_scrollContactView:(id)a3 toVisibleGroup:(id)a4 animated:(BOOL)a5;
- (void)_setNeedsUpdateCachedLabelWidths;
- (void)_setupAcceptedContactActions;
- (void)_setupAcceptedContactsNameActions;
- (void)_setupAddToAddressBookActions;
- (void)_setupCardActions;
- (void)_setupContactBlockingActionPreservingChanges:(BOOL)a3 withUpdate:(BOOL)a4;
- (void)_setupContactBlockingReportingActionPreservingChanges:(BOOL)a3 withUpdate:(BOOL)a4;
- (void)_setupCustomActions;
- (void)_setupEditingCardActions;
- (void)_setupEditingLinkedContactsForKeys:(id)a3;
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
- (void)_updateLabelWidthForCellsInGroup:(id)a3 forTableView:(id)a4 reset:(BOOL)a5;
- (void)_updateLabelWidthsForAllVisibleCells;
- (void)_updatePhoneTransportButtonsForItems:(id)a3;
- (void)_updateTTYTransportButtonsForItems:(id)a3;
- (void)_updateUserActivity;
- (void)_validateGroup:(id)a3;
- (void)action:(id)a3 didUpdateWithMenu:(id)a4;
- (void)action:(id)a3 dismissViewController:(id)a4 sender:(id)a5;
- (void)action:(id)a3 prepareChildContactViewController:(id)a4 sender:(id)a5;
- (void)action:(id)a3 presentViewController:(id)a4 modalPresentationStyle:(int64_t)a5 sender:(id)a6;
- (void)action:(id)a3 presentViewController:(id)a4 sender:(id)a5;
- (void)action:(id)a3 pushViewController:(id)a4 sender:(id)a5;
- (void)actionDidFinish:(id)a3;
- (void)actionDidFinishFromSecondaryAction:(id)a3;
- (void)actionDidUpdate:(id)a3;
- (void)actionWasCanceled:(id)a3;
- (void)addActionWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 menuProvider:(id)a6 inGroup:(id)a7 destructive:(BOOL)a8;
- (void)addCardGroup:(id)a3 afterGroup:(id)a4;
- (void)addContactToGroup:(id)a3;
- (void)addEditingItem:(id)a3 atIndexPath:(id)a4 forTableView:(id)a5 shouldSetFocus:(BOOL)a6;
- (void)addGameCenterActionGroupAnimated:(BOOL)a3;
- (void)addGameCenterGroupAnimated:(BOOL)a3;
- (void)addLinkedContact:(id)a3;
- (void)addObserver:(id)a3;
- (void)addStaticIdentity:(id)a3;
- (void)adjustInsetsForKeyboardOverlap:(double)a3;
- (void)adjustPreferredContentSize;
- (void)alertDetailsNotVerified:(id)a3;
- (void)alertStaticIdentitySaveFailed:(id)a3;
- (void)applicationLeftForeground:(id)a3;
- (void)applyNavigationBarTintColorIfNeeded:(id)a3;
- (void)applyPlatterStyleToBarButtonItemsIfNeeded:(id)a3;
- (void)authorizeEditContactWithTargetGroup:(id)a3 completion:(id)a4;
- (void)authorizedAddContactToGroup:(id)a3;
- (void)authorizedRemoveContactFromGroup:(id)a3;
- (void)blockListDidChange:(id)a3;
- (void)cancelAsyncLookups;
- (void)cleanupRecentImageMetadata;
- (void)cleanupRecentMetadata;
- (void)cleanupRecentPosterMetadata;
- (void)clearMapsDataIfEdited;
- (void)completeAddAddressingGrammarAction:(id)a3;
- (void)contactGroupPickerDidCancel:(id)a3;
- (void)contactGroupPickerDidFinish:(id)a3 withGroup:(id)a4;
- (void)contactInlineActionsViewController:(id)a3 didPerformActionOfType:(id)a4 fromDisambiguation:(BOOL)a5;
- (void)contactInlineActionsViewControllerDidDismissDisambiguationUI:(id)a3;
- (void)contactInlineActionsViewControllerWillPresentDisambiguationUI:(id)a3;
- (void)contactStoreDidChangeWithNotification:(id)a3;
- (void)contactViewController:(id)a3 didDeleteContact:(id)a4;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)createCardEditingContactContainerGroupIfNeeded;
- (void)createCardEditingGeminiGroupIfNeeded;
- (void)createdNewContact:(id)a3;
- (void)dealloc;
- (void)didChangeToEditMode:(BOOL)a3;
- (void)didChangeToShowTitle:(BOOL)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didSelectActionItem:(id)a3 actionType:(int64_t)a4;
- (void)didSelectPreferredChannel:(id)a3;
- (void)editAuthorizationController:(id)a3 authorizationDidFinishWithResult:(int64_t)a4;
- (void)editCancel:(id)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)favoritesDidChangeWithNotification:(id)a3;
- (void)finishEditing:(id)a3;
- (void)finishSNaPEditing:(id)a3;
- (void)focusOnFirstEditingItemIfNeeded;
- (void)focusOnLastEditingItemInGroup:(id)a3;
- (void)geminiDataSourceDidUpdate:(id)a3;
- (void)headerPhotoDidUpdate;
- (void)headerView:(id)a3 didAcceptDropOfImageData:(id)a4;
- (void)headerView:(id)a3 didRequestToBlockContact:(BOOL)a4;
- (void)headerView:(id)a3 didSetBackgroundAsGradientColors:(id)a4;
- (void)headerView:(id)a3 didSetBackgroundAsPosterSnapshotImage:(id)a4;
- (void)headerView:(id)a3 didSetNameLabelColor:(id)a4;
- (void)headerView:(id)a3 didUpdateSensitiveContentOverride:(BOOL)a4;
- (void)headerViewDidChangeHeight:(id)a3;
- (void)headerViewDidPickPreferredChannel:(id)a3;
- (void)headerViewDidTapNameLabel:(id)a3;
- (void)initializeTableViewsForHeaderHeight;
- (void)keyboardDidShowNotification:(id)a3;
- (void)loadContactViewControllerViews;
- (void)loadDisplayModeContactCardVewController;
- (void)loadView;
- (void)performAction:(int64_t)a3 forContactIdentifier:(id)a4 sourceView:(id)a5;
- (void)performAuthorizedSetEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)performConfirmedCancel;
- (void)performCustomViewActionAtIndex:(int64_t)a3;
- (void)performCustomViewDisclosureAction;
- (void)performSaveToSharedProfile;
- (void)performWhenViewIsLaidOut:(id)a3;
- (void)popToPrevious:(id)a3;
- (void)prepareCell:(id)a3;
- (void)prepareContactDidAppearForPPT;
- (void)presentAvatarPosterEditor;
- (void)presentConfirmCancelAlertController;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)propertyCell:(id)a3 didDeleteLabel:(id)a4 forGroup:(id)a5;
- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewLabel:(id)a5;
- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewValue:(id)a5;
- (void)propertyCell:(id)a3 performActionForItem:(id)a4 withTransportType:(int64_t)a5;
- (void)propertyCellDidChangeLayout:(id)a3;
- (void)propertyItem:(id)a3 willChangeValue:(id)a4;
- (void)rebuildActionsViewControllers;
- (void)reloadCardActionsForBlockState:(BOOL)a3 preservingChanges:(BOOL)a4;
- (void)reloadCardGroup:(id)a3 forTableView:(id)a4;
- (void)reloadCardGroupsForFavoritesUpdateInTableView:(id)a3;
- (void)reloadDataPreservingChanges:(BOOL)a3;
- (void)reloadSections:(id)a3 forTableView:(id)a4;
- (void)reloadUnifiedContact;
- (void)removeActionWithTarget:(id)a3 selector:(SEL)a4 inGroup:(id)a5;
- (void)removeContactFromGroup:(id)a3;
- (void)removeEditingItem:(id)a3 atIndexPath:(id)a4 forTableView:(id)a5;
- (void)removeLinkedContact:(id)a3;
- (void)removePersonHeaderViewControllerFromHierarchy;
- (void)requestFavoritesUpdateWithGemini;
- (void)saveModelChangesToContact;
- (void)saveModelChangesToSharedProfileContact;
- (void)saveNewContactDraft;
- (void)scrollScrollViewAllTheWayUp:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (void)sender:(id)a3 presentViewController:(id)a4;
- (void)sender:(id)a3 presentViewController:(id)a4 modalPresentationStyle:(int64_t)a5;
- (void)setAllowsActions:(BOOL)a3;
- (void)setAllowsContactBlocking:(BOOL)a3;
- (void)setAllowsContactBlockingAndReporting:(BOOL)a3;
- (void)setAllowsDisplayModePickerActions:(BOOL)a3;
- (void)setAllowsEditPhoto:(BOOL)a3 preservingChanges:(BOOL)a4;
- (void)setAlternateName:(id)a3;
- (void)setBackgroundColorIfNeededForPresentedViewController:(id)a3;
- (void)setCancelKeyboardShortcutEnabled:(BOOL)a3;
- (void)setContact:(id)a3 shouldScrollToTop:(BOOL)a4;
- (void)setContactStore:(id)a3;
- (void)setContactViewBackgroundToMatchHeader;
- (void)setDisplayedProperties:(id)a3;
- (void)setEditKeyboardShortcutEnabled:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setForcesTransparentBackground:(BOOL)a3;
- (void)setImportantMessage:(id)a3;
- (void)setIsMailVIP:(BOOL)a3;
- (void)setMenuProviderForCell:(id)a3 forActionGroupItem:(id)a4;
- (void)setMessage:(id)a3;
- (void)setNameEditingGroups:(id)a3;
- (void)setPersonHeaderView:(id)a3;
- (void)setPersonHeaderViewController:(id)a3;
- (void)setSaveKeyboardShortcutEnabled:(BOOL)a3;
- (void)setSharedNavigationBar:(id)a3;
- (void)setShouldShowSharedProfileBanner:(BOOL)a3;
- (void)setShowContactBlockingFirst:(BOOL)a3;
- (void)setShowsInlineActions:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setUpBackGestureIfNeeded;
- (void)setUpFloatingActionsViewController;
- (void)setUsesBrandedCallHeaderFormat:(BOOL)a3;
- (void)setupActionsPreservingChanges:(BOOL)a3;
- (void)setupConstraints;
- (void)setupConstraintsIfNeeded;
- (void)setupContainerContextIfNeededForContact:(id)a3;
- (void)setupShareLocationActionReload:(BOOL)a3;
- (void)setupTableFooterView;
- (void)setupViewHierarchy;
- (void)setupViewHierarchyAndConstraints;
- (void)setupViewHierarchyIncludingAvatarHeader:(BOOL)a3 editing:(BOOL)a4;
- (void)setupWithOptions:(id)a3 readyBlock:(id)a4;
- (void)sharedProfileBannerView:(id)a3 didDismissWithUpdatedContact:(id)a4 forAction:(unint64_t)a5;
- (void)sharedProfileBannerView:(id)a3 didUpdateContact:(id)a4 forAction:(unint64_t)a5;
- (void)shouldPresentFullscreen:(BOOL)a3;
- (void)showEditAuthorizationPane:(id)a3 animated:(BOOL)a4;
- (void)showUpdateTermOfAddressAlertIfNeeded;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)toggleEditing:(id)a3;
- (void)updateActionsControllerByType;
- (void)updateCollapsedHeaderToMatchScrollViewState:(id)a3 scrollDirection:(int64_t)a4 animated:(BOOL)a5;
- (void)updateContact:(id)a3;
- (void)updateContactsViewWithBlock:(id)a3 completion:(id)a4;
- (void)updateDisplayCollapsedHeaderToMatchScrollViewState:(id)a3 scrollDirection:(int64_t)a4 animated:(BOOL)a5;
- (void)updateDoneButton;
- (void)updateEditNavigationItemsAnimated:(BOOL)a3 updateTintColor:(BOOL)a4;
- (void)updateEditPhotoButtonIfNeeded;
- (void)updateGameCenterGroupAndActionsForContact:(id)a3 relationshipResults:(id)a4;
- (void)updateHeaderHeightToMatchScrollViewState:(id)a3 scrollDirection:(int64_t)a4 animated:(BOOL)a5;
- (void)updateInsetsIfNeededForTableView:(id)a3 isEditing:(BOOL)a4;
- (void)updateOutOfProcessFullscreenPresentationIfNeeded;
- (void)updateStaticDisplayHeaderImageVisibility;
- (void)updateTableView:(id)a3 contentInsetsTo:(UIEdgeInsets)a4 withScrollIndicatorInsets:(UIEdgeInsets)a5;
- (void)updateUserActivityState:(id)a3;
- (void)updateViewConstraints;
- (void)updateWindowTitleForAppearing:(BOOL)a3;
- (void)updatedExistingContact:(id)a3;
- (void)viewController:(id)a3 presentationControllerWillDismiss:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNContactContentUnitaryViewController

+ (id)descriptorForRequiredKeys
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentUnitaryViewController descriptorForRequiredKeys]"];
  v4 = [a1 descriptorForRequiredKeysWithDescription:v3];

  return v4;
}

- (BOOL)shouldShowGemini
{
  v3 = [(CNContactContentUnitaryViewController *)self geminiDataSource];
  v4 = [v3 geminiResult];

  if (v4 && ![(CNContactContentUnitaryViewController *)self showingMeContact])
  {
    v6 = [(CNContactContentUnitaryViewController *)self contact];
    if ([v6 isSuggested])
    {
      v5 = 0;
    }

    else
    {
      v7 = [(CNContactContentUnitaryViewController *)self contact];
      if ([v7 isCoreRecentsAccepted])
      {
        v5 = 0;
      }

      else
      {
        v8 = [(CNContactContentUnitaryViewController *)self displayedProperties];
        if ([v8 containsObject:*MEMORY[0x1E695C330]])
        {
          v9 = [(CNContactContentUnitaryViewController *)self contact];
          v5 = [CNContactContentUnitaryViewController shouldShowGeminiForResult:v4 contact:v9];
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CNContactView)editingContactView
{
  editingContactView = self->_editingContactView;
  if (!editingContactView)
  {
    v4 = [CNContactView alloc];
    v5 = [(CNContactContentUnitaryViewController *)self contact];
    v6 = [(CNContactView *)v4 initWithFrame:v5 contact:0.0, 0.0, 320.0, 200.0];
    v7 = self->_editingContactView;
    self->_editingContactView = v6;

    [(CNContactView *)self->_editingContactView setEditing:1];
    [(CNContactView *)self->_editingContactView setDataSource:self];
    [(CNContactView *)self->_editingContactView setDelegate:self];
    [(CNContactView *)self->_editingContactView _setHeaderAndFooterViewsFloat:0];
    [(CNContactView *)self->_editingContactView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactView *)self->_editingContactView setKeyboardDismissMode:1];
    editingContactView = self->_editingContactView;
  }

  return editingContactView;
}

- (BOOL)shouldUseStaticHeader
{
  if ([(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:28];

  return v5;
}

- (CNContactHeaderStaticDisplayView)staticDisplayHeaderView
{
  staticDisplayHeaderView = self->_staticDisplayHeaderView;
  if (!staticDisplayHeaderView)
  {
    v4 = [(CNContactContentUnitaryViewController *)self isHeaderViewPhotoProhibited];
    v5 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v6 = [CNContactHeaderStaticDisplayView contactHeaderViewWithContact:v5 showingNavBar:[(CNContactContentUnitaryViewController *)self layoutPositionallyAfterNavBar] monogramOnly:v4 delegate:self];
    v7 = self->_staticDisplayHeaderView;
    self->_staticDisplayHeaderView = v6;

    v8 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setActionsWrapperView:v8];

    [(CNContactHeaderView *)self->_staticDisplayHeaderView setAlwaysShowsMonogram:1];
    v9 = [(CNContactContentUnitaryViewController *)self contactFormatter];
    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setContactFormatter:v9];

    v10 = [(CNContactContentUnitaryViewController *)self alternateName];
    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setAlternateName:v10];

    v11 = [(CNContactContentUnitaryViewController *)self message];
    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setMessage:v11];

    v12 = [(CNContactContentUnitaryViewController *)self importantMessage];
    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setImportantMessage:v12];

    v13 = [(CNContactContentUnitaryViewController *)self presentingDelegate];
    [(CNContactHeaderView *)self->_staticDisplayHeaderView setPresenterDelegate:v13];

    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setAllowsPickerActions:[(CNContactContentUnitaryViewController *)self allowsDisplayModePickerActions]];
    v14 = [(CNContactContentUnitaryViewController *)self applyContactStyle];
    staticDisplayHeaderView = self->_staticDisplayHeaderView;
  }

  return staticDisplayHeaderView;
}

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

- (CNContactCardActionsDelegate)actionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsDelegate);

  return WeakRetained;
}

- (id)personHeaderViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_personHeaderViewDelegate);

  return WeakRetained;
}

- (id)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (id)contactDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactDelegate);

  return WeakRetained;
}

- (CNContactViewControllerPPTDelegate)pptDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pptDelegate);

  return WeakRetained;
}

- (CNContactViewHostProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)customActionPlacementFromPlacement:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (id)customActionGroupsForPlacement:(int64_t)a3
{
  v4 = [(CNContactContentUnitaryViewController *)self customActionCardGroupsByPlacement];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 allObjects];
  v8 = [v7 _cn_map:&__block_literal_global_1116];

  return v8;
}

id __72__CNContactContentUnitaryViewController_customActionGroupsForPlacement___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 _cn_map:&__block_literal_global_1119];

  v4 = [objc_alloc(MEMORY[0x1E6996AD8]) initWithCustomActions:v3];

  return v4;
}

id __72__CNContactContentUnitaryViewController_customActionGroupsForPlacement___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E6996AD0]);
  v4 = [v2 title];
  v5 = [v2 contact];
  v6 = [v5 identifier];
  v7 = [v2 isDestructive];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__CNContactContentUnitaryViewController_customActionGroupsForPlacement___block_invoke_3;
  v11[3] = &unk_1E74E73E8;
  v12 = v2;
  v8 = v2;
  v9 = [v3 initWithTitle:v4 contactIdentifier:v6 isDestructive:v7 actionBlock:v11];

  return v9;
}

- (void)didSelectPreferredChannel:(id)a3
{
  v27 = a3;
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];
  if (v7)
  {
    v3 = [MEMORY[0x1E69966E8] currentEnvironment];
    v4 = [v3 featureFlags];
    if ([v4 isFeatureEnabled:15])
    {

LABEL_6:
      v10 = [(CNContactContentUnitaryViewController *)self contact];
      [v10 setSelectedChannel:v27];

      if ([v27 hasPrefix:@"uuid:"])
      {
        v11 = [v27 substringFromIndex:5];

        v27 = v11;
      }

      v12 = [(CNContactContentUnitaryViewController *)self geminiDataSource];
      [v12 setSelectedChannelIdentifier:v27];
      goto LABEL_15;
    }
  }

  v8 = [(CNContactContentUnitaryViewController *)self contact];
  v9 = [v8 isUnknown];

  if (v7)
  {

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_6;
    }
  }

  v13 = [(CNContactContentUnitaryViewController *)self contact];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v15 = [(CNContactContentUnitaryViewController *)self contact];
  v12 = v15;
  if ((isKindOfClass & 1) == 0)
  {
    v16 = [v15 mutableCopy];

    v12 = v16;
  }

  [v12 setPreferredChannel:v27];
  v17 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v17 setIgnoresGuardianRestrictions:{-[CNContactContentUnitaryViewController saveWasAuthorized](self, "saveWasAuthorized")}];
  v18 = [(CNContactContentUnitaryViewController *)self issuedSaveRequestIdentifiers];
  v19 = [v17 saveRequestIdentifier];
  [v18 addObject:v19];

  [v17 updateContact:v12];
  v20 = [(CNContactContentUnitaryViewController *)self contactStore];
  [v20 executeSaveRequest:v17 error:0];

  [(CNContactContentUnitaryViewController *)self setContact:v12];
  [(CNContactContentUnitaryViewController *)self requestFavoritesUpdateWithGemini];
  v21 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
  [v21 setForceReload:1];

  v22 = [(CNContactContentUnitaryViewController *)self contact];
  v23 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
  [v23 setContact:v22];

  if ([(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    v24 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v25 = [(CNContactContentUnitaryViewController *)self geminiDataSource];
    [v25 setContact:v24];

    v26 = [(CNContactContentUnitaryViewController *)self geminiDataSource];
    [v26 setSelectedChannelIdentifier:v27];
  }

LABEL_15:
}

- (void)_lazyUpdateContactCardPropertyViewConfiguration
{
  [(NSTimer *)self->_updateContactCardPropertyViewConfigurationTimer invalidate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__CNContactContentUnitaryViewController__lazyUpdateContactCardPropertyViewConfiguration__block_invoke;
  v5[3] = &unk_1E74E7380;
  v5[4] = self;
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v5 block:0.2];
  updateContactCardPropertyViewConfigurationTimer = self->_updateContactCardPropertyViewConfigurationTimer;
  self->_updateContactCardPropertyViewConfigurationTimer = v3;
}

void __88__CNContactContentUnitaryViewController__lazyUpdateContactCardPropertyViewConfiguration__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__CNContactContentUnitaryViewController__lazyUpdateContactCardPropertyViewConfiguration__block_invoke_2;
  block[3] = &unk_1E74E6A88;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __88__CNContactContentUnitaryViewController__lazyUpdateContactCardPropertyViewConfiguration__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingContactCardPropertyViewConfiguration];
  v4 = [v2 copy];

  v3 = [*(a1 + 32) displayContactCardViewController];
  [v3 setPropertyViewConfiguration:v4];
}

- (void)performCustomViewDisclosureAction
{
  v3 = [(CNContactContentUnitaryViewController *)self customViewConfiguration];
  v2 = [v3 trailingDisclosureAction];
  [v2 performActionWithSender:0];
}

- (void)performCustomViewActionAtIndex:(int64_t)a3
{
  v6 = [(CNContactContentUnitaryViewController *)self customViewConfiguration];
  v4 = [v6 actions];
  v5 = [v4 objectAtIndex:a3];
  [v5 performActionWithSender:0];
}

- (void)_notifyObservers
{
  [(NSTimer *)self->_notifyObserversTimer invalidate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__CNContactContentUnitaryViewController__notifyObservers__block_invoke;
  v5[3] = &unk_1E74E7380;
  v5[4] = self;
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v5 block:0.2];
  notifyObserversTimer = self->_notifyObserversTimer;
  self->_notifyObserversTimer = v3;
}

void __57__CNContactContentUnitaryViewController__notifyObservers__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CNContactContentUnitaryViewController__notifyObservers__block_invoke_2;
  block[3] = &unk_1E74E6A88;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __57__CNContactContentUnitaryViewController__notifyObservers__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(*(a1 + 32) + 1392) allObjects];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) actionsUpdated];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (BOOL)shouldPerformDefaultActionForPropertyKey:(id)a3 propertyIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNContactContentUnitaryViewController *)self contact];
  v9 = [v8 isSuggested];

  if (v9)
  {
    v10 = [(CNContactContentUnitaryViewController *)self propertyGroups];
    v11 = [v10 objectForKeyedSubscript:v7];

    v12 = [v11 propertyItems];
    v7 = [v12 firstObject];

    v13 = [CNPropertySuggestionAction alloc];
    v14 = [(CNContactContentUnitaryViewController *)self contact];
    v15 = [(CNPropertyAction *)v13 initWithContact:v14 propertyItem:v7];

    [(CNContactAction *)v15 setDelegate:self];
    [(CNPropertySuggestionAction *)v15 performActionForItem:v7 sender:0];

    v16 = 0;
  }

  else
  {
    v11 = [(CNContactContentUnitaryViewController *)self contact];
    v16 = [(CNContactContentUnitaryViewController *)self contactViewController:self shouldPerformDefaultActionForContact:v11 propertyKey:v7 propertyIdentifier:v6];
  }

  return v16;
}

- (void)didSelectActionItem:(id)a3 actionType:(int64_t)a4
{
  v6 = a3;
  v13 = v6;
  if (a4 <= 10)
  {
    if (a4)
    {
      if (a4 != 2)
      {
        if (a4 != 4)
        {
          goto LABEL_17;
        }

        v7 = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
        objc_opt_class();
        v8 = [v13 contactProperty];
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        [v7 showRelationshipPickerForContactProperty:v10 sender:0];

        goto LABEL_16;
      }

      v11 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
    }

    else
    {
      v11 = [(CNContactContentUnitaryViewController *)self sendMessageAction];
    }

    v7 = v11;
    [v11 didSelectActionItem:v13];
LABEL_16:

    goto LABEL_17;
  }

  if ((a4 - 15) < 5)
  {
    [(CNContactInlineActionsViewController *)self->_actionsViewController didSelectAction:v6];
    goto LABEL_17;
  }

  if (a4 == 11)
  {
    v7 = [(CNContactContentUnitaryViewController *)self gameCenterAddFriendAction];
    v12 = [v13 contact];
    [v7 addContactAsFriend:v12];

    goto LABEL_16;
  }

LABEL_17:
}

- (id)defaultActionForActionType:(int64_t)a3
{
  v4 = quickActionTypeToString();
  if (v4)
  {
    v5 = [(CNContactContentUnitaryViewController *)self actionsControllerByType];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = [v6 defaultActionForActionType:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_menuItemsFromNavigationItems:(id)a3 isNested:(BOOL)a4
{
  v6 = a3;
  if ([v6 count] == 1)
  {
    while (1)
    {
      v7 = [v6 firstObject];
      v8 = [v7 items];
      if (![v8 count])
      {
        break;
      }

      if (a4)
      {
        v9 = [v6 firstObject];
        v10 = [v9 identifier];
        v11 = [v10 length];

        if (v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v12 = [v6 firstObject];
      v13 = [v12 items];

      v6 = v13;
      if ([v13 count] != 1)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_10:
  v13 = v6;
LABEL_11:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__CNContactContentUnitaryViewController__menuItemsFromNavigationItems_isNested___block_invoke;
  v16[3] = &unk_1E74E7358;
  v16[4] = self;
  v14 = [v13 _cn_map:v16];

  return v14;
}

id __80__CNContactContentUnitaryViewController__menuItemsFromNavigationItems_isNested___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 items];
  if ([v4 count])
  {
    v5 = objc_alloc(MEMORY[0x1E6996AC8]);
    v6 = [v3 title];
    v7 = [v3 subtitle];
    v8 = MEMORY[0x1E6996C08];
    v9 = [v3 identifier];
    v10 = [v8 symbolOulinedImageNameForActionType:v9];
    v11 = [v3 shouldDisplayInline];
    v12 = [*(a1 + 32) _menuItemsFromNavigationItems:v4 isNested:1];
    v13 = [v5 initWithTitle:v6 subtitle:v7 imageName:v10 shouldDisplayInline:v11 menuItems:v12];
  }

  else
  {
    objc_opt_class();
    v6 = [v3 content];
    if (objc_opt_isKindOfClass())
    {
      v14 = v6;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (!v15)
    {
      v16 = objc_alloc(MEMORY[0x1E6996BE0]);
      objc_opt_class();
      v17 = [v3 content];
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v6 = [v16 initWithType:&stru_1F0CE7398 contactProperty:v18 bundleIdentifier:&stru_1F0CE7398 group:0 options:0];
    }

    v19 = objc_alloc(MEMORY[0x1E6996AC8]);
    v7 = [v3 title];
    v9 = [v3 subtitle];
    v20 = MEMORY[0x1E6996C08];
    v10 = [v3 identifier];
    v12 = [v20 symbolOulinedImageNameForActionType:v10];
    v13 = [v19 initWithTitle:v7 subtitle:v9 imageName:v12 shouldDisplayInline:objc_msgSend(v3 actionItem:{"shouldDisplayInline"), v6}];
  }

  v21 = v13;

  return v21;
}

- (id)_menuItemsFromActionsController:(id)a3
{
  v4 = a3;
  v5 = [v4 displayedController];
  v6 = [v5 items];

  if ([v6 count])
  {
    v7 = [(CNContactContentUnitaryViewController *)self _menuItemsFromNavigationItems:v6 isNested:0];
  }

  else
  {
    [v4 retrieveModels];
    v7 = 0;
  }

  return v7;
}

- (id)_menuItemsForQuickAction:(int64_t)a3
{
  v4 = quickActionTypeToString();
  v5 = [(CNContactContentUnitaryViewController *)self actionsControllerByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(CNContactContentUnitaryViewController *)self _menuItemsFromActionsController:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)menuItemsForAction:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 10)
  {
    if (a3)
    {
      if (a3 != 2)
      {
        if (a3 != 4)
        {
          goto LABEL_12;
        }

        v5 = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
        v6 = [v5 navigationListItems];
        v7 = [(CNContactContentUnitaryViewController *)self _menuItemsFromNavigationItems:v6 isNested:0];
        goto LABEL_11;
      }

      v8 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
    }

    else
    {
      v8 = [(CNContactContentUnitaryViewController *)self sendMessageAction];
    }

    v5 = v8;
    v6 = [v8 actionsController];
    v7 = [(CNContactContentUnitaryViewController *)self _menuItemsFromActionsController:v6];
LABEL_11:
    v4 = v7;

    goto LABEL_12;
  }

  if ((a3 - 15) >= 5)
  {
    if (a3 == 11)
    {
      v10 = [(CNContactContentUnitaryViewController *)self gameCenterAddFriendAction];
      v4 = [v10 contactCardActionMenuItems];
    }
  }

  else
  {
    v4 = [(CNContactContentUnitaryViewController *)self _menuItemsForQuickAction:?];
  }

LABEL_12:

  return v4;
}

- (id)parentGroups
{
  v2 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
  v3 = [v2 parentGroups];

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  [(NSHashTable *)self->_actionsObservers addObject:v4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CNContactContentUnitaryViewController_addObserver___block_invoke;
  block[3] = &unk_1E74E6A88;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)performAction:(int64_t)a3 forContactIdentifier:(id)a4 sourceView:(id)a5
{
  v8 = a4;
  v9 = a5;
  switch(a3)
  {
    case 0:
      v22 = [(CNContactContentUnitaryViewController *)self sendMessageAction];
      v23 = [v22 shouldPresentDisambiguationMenu];

      if ((v23 & 1) == 0)
      {
        v10 = [(CNContactContentUnitaryViewController *)self sendMessageAction];
        goto LABEL_24;
      }

      break;
    case 1:
      v10 = [(CNContactContentUnitaryViewController *)self shareContactAction];
      goto LABEL_24;
    case 3:
      v10 = [(CNContactContentUnitaryViewController *)self addToGroupAction];
      goto LABEL_24;
    case 4:
    case 25:
      v10 = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
      goto LABEL_24;
    case 5:
      v10 = [(CNContactContentUnitaryViewController *)self medicalIDAction];
      goto LABEL_24;
    case 6:
    case 20:
      v10 = [(CNContactContentUnitaryViewController *)self blockAction];
      goto LABEL_24;
    case 7:
      if (v8)
      {
        v24 = [(CNContactContentUnitaryViewController *)self cardLinkedCardsGroup];
        v25 = [v24 displayItems];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __87__CNContactContentUnitaryViewController_performAction_forContactIdentifier_sourceView___block_invoke;
        v28[3] = &unk_1E74E7330;
        v29 = v8;
        v26 = [v25 _cn_firstObjectPassingTest:v28];

        if (v26)
        {
          v27 = [(CNContactContentUnitaryViewController *)self linkedCardsAction];
          [v27 performActionForItem:v26 sender:v9];
        }
      }

      break;
    case 8:
      v10 = [(CNContactContentUnitaryViewController *)self createNewContactAction];
      goto LABEL_24;
    case 9:
      v10 = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
      goto LABEL_24;
    case 10:
      if ([(CNContactContentUnitaryViewController *)self showingMeContact]&& [(CNContactContentUnitaryViewController *)self multiplePhoneNumbersTiedToAppleID])
      {
        v16 = [(CNContactContentUnitaryViewController *)self onboardingController];

        if (!v16)
        {
          v17 = [CNSharedProfileOnboardingController alloc];
          v18 = [(CNContactContentUnitaryViewController *)self contactStore];
          v19 = [(CNSharedProfileOnboardingController *)v17 initWithContactStore:v18];
          [(CNContactContentUnitaryViewController *)self setOnboardingController:v19];

          v20 = [(CNContactContentUnitaryViewController *)self onboardingController];
          [v20 setDelegate:self];
        }

        v21 = [(CNContactContentUnitaryViewController *)self onboardingController];
        [v21 startVisualIdentityOnboardingForMultipleDevicesFromViewController:self];
      }

      else
      {
        [(CNContactContentUnitaryViewController *)self presentAvatarPosterEditor];
      }

      break;
    case 11:
      v10 = [(CNContactContentUnitaryViewController *)self gameCenterAddFriendAction];
      goto LABEL_24;
    case 13:
      v11 = [(CNContactContentUnitaryViewController *)self gameCenterPlayerViewWrapper];
      v12 = [v11 relationshipResult];
      v13 = [v12 relatedPlayer];
      v14 = [v13 playerID];
      [CNGameCenterCell presentPlayerProfile:v14];

      goto LABEL_26;
    case 14:
      v10 = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];
      goto LABEL_24;
    case 21:
    case 22:
      v10 = [(CNContactContentUnitaryViewController *)self blockReportAction];
      goto LABEL_24;
    case 23:
      v10 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
LABEL_24:
      v11 = v10;
      v15 = v9;
      goto LABEL_25;
    case 24:
      v10 = [(CNContactContentUnitaryViewController *)self editNameAction];
      goto LABEL_9;
    case 27:
      v10 = [(CNContactContentUnitaryViewController *)self addNameAction];
LABEL_9:
      v11 = v10;
      v15 = 0;
LABEL_25:
      [v10 performActionWithSender:v15];
LABEL_26:

      break;
    default:
      break;
  }
}

uint64_t __87__CNContactContentUnitaryViewController_performAction_forContactIdentifier_sourceView___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contact];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (BOOL)multiplePhoneNumbersTiedToAppleID
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  if ([v3 isFeatureEnabled:26])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v4 = getIMNicknameControllerClass_softClass_64536;
    v12 = getIMNicknameControllerClass_softClass_64536;
    if (!getIMNicknameControllerClass_softClass_64536)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __getIMNicknameControllerClass_block_invoke_64537;
      v8[3] = &unk_1E74E7518;
      v8[4] = &v9;
      __getIMNicknameControllerClass_block_invoke_64537(v8);
      v4 = v10[3];
    }

    v5 = v4;
    _Block_object_dispose(&v9, 8);
    v6 = [v4 multiplePhoneNumbersTiedToAppleID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsAction:(int64_t)a3
{
  v4 = 1;
  switch(a3)
  {
    case 0:
      v5 = [(CNContactContentUnitaryViewController *)self sendMessageAction];
      goto LABEL_35;
    case 1:
      v5 = [(CNContactContentUnitaryViewController *)self shareContactAction];
      goto LABEL_35;
    case 2:
      v5 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
      goto LABEL_35;
    case 3:
      v5 = [(CNContactContentUnitaryViewController *)self addToGroupAction];
      goto LABEL_35;
    case 4:
      v11 = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
      v12 = [v11 addingToEmergency];

      return v12;
    case 5:
      v5 = [(CNContactContentUnitaryViewController *)self medicalIDAction];
      goto LABEL_35;
    case 6:
      v8 = [(CNContactContentUnitaryViewController *)self blockAction];
      if (!v8)
      {
        goto LABEL_32;
      }

      v10 = [(CNContactContentUnitaryViewController *)self blockAction];
      goto LABEL_21;
    case 7:
      v5 = [(CNContactContentUnitaryViewController *)self linkedCardsAction];
      goto LABEL_35;
    case 8:
      v5 = [(CNContactContentUnitaryViewController *)self createNewContactAction];
      goto LABEL_35;
    case 9:
      v5 = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
      goto LABEL_35;
    case 10:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
      return v4;
    case 11:
      return self->_gameCenterFriendStatus == 3;
    case 12:
      return self->_gameCenterFriendStatus == 2;
    case 13:
      return self->_gameCenterFriendStatus == 1;
    case 14:
      v6 = 2168;
      return *(&self->super.super.super.super.isa + v6) != 0;
    case 20:
      v8 = [(CNContactContentUnitaryViewController *)self blockAction];
      if (!v8)
      {
        goto LABEL_32;
      }

      v9 = [(CNContactContentUnitaryViewController *)self blockAction];
      goto LABEL_30;
    case 21:
      v8 = [(CNContactContentUnitaryViewController *)self blockReportAction];
      if (!v8)
      {
        goto LABEL_32;
      }

      v10 = [(CNContactContentUnitaryViewController *)self blockReportAction];
LABEL_21:
      v14 = v10;
      v15 = [v10 isContactBlockedPreservingChanges:1];
      goto LABEL_24;
    case 22:
      v8 = [(CNContactContentUnitaryViewController *)self blockReportAction];
      if (!v8)
      {
        goto LABEL_32;
      }

      v9 = [(CNContactContentUnitaryViewController *)self blockReportAction];
LABEL_30:
      v14 = v9;
      v4 = [v9 isContactBlockedPreservingChanges:1];
      goto LABEL_31;
    case 23:
      v5 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
LABEL_35:
      v4 = v5 != 0;

      return v4;
    case 24:
      v6 = 2488;
      return *(&self->super.super.super.super.isa + v6) != 0;
    case 25:
      v8 = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
      if (v8)
      {
        v14 = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
        v15 = [v14 addingToEmergency];
LABEL_24:
        v4 = v15 ^ 1;
LABEL_31:
      }

      else
      {
LABEL_32:
        v4 = 0;
      }

      return v4;
    case 27:
      v6 = 2480;
      return *(&self->super.super.super.super.isa + v6) != 0;
    default:
      return 0;
  }
}

- (_TtC10ContactsUI32ContactCardSwiftUIViewController)displayContactCardViewController
{
  if (!self->_displayContactCardViewController && [(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard])
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    actionsObservers = self->_actionsObservers;
    self->_actionsObservers = v3;

    v5 = [(CNContactContentUnitaryViewController *)self pendingContactCardPropertyViewConfiguration];
    v6 = [v5 copy];

    v7 = [_TtC10ContactsUI32ContactCardSwiftUIViewController alloc];
    v8 = [(CNContactContentUnitaryViewController *)self contact];
    v9 = [(CNContactContentUnitaryViewController *)self contactStore];
    v10 = [(CNContactContentUnitaryViewController *)self customViewConfiguration];
    v11 = [(CNContactContentUnitaryViewController *)self isInlineContactCard];
    v12 = [(CNContactContentUnitaryViewController *)self geminiDataSource];
    v13 = [v12 geminiManager];
    v14 = [(ContactCardSwiftUIViewController *)v7 initWithContact:v8 contactStore:v9 actionsProvider:self customViewConfiguration:v10 propertyViewConfiguration:v6 isInlineContactCard:v11 geminiManager:v13];
    displayContactCardViewController = self->_displayContactCardViewController;
    self->_displayContactCardViewController = v14;

    v16 = [(ContactCardSwiftUIViewController *)self->_displayContactCardViewController view];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v17 = self->_displayContactCardViewController;

  return v17;
}

- (void)loadDisplayModeContactCardVewController
{
  if ([(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard])
  {
    v3 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
    [(CNContactContentUnitaryViewController *)self addChildViewController:v3];

    v4 = [(CNContactContentUnitaryViewController *)self view];
    v5 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
    v6 = [v5 view];
    [v4 addSubview:v6];

    v7 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
    [v7 didMoveToParentViewController:self];
  }
}

- (BOOL)shouldShowSwiftUIContactCard
{
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0)
  {
    return 0;
  }

  return [(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard];
}

- (void)_lookupKTHandlesIfNeeded
{
  v2 = self;
  v62 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactContentUnitaryViewController *)self cachedVerifiedHandles];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    [(CNContactContentUnitaryViewController *)v2 setCachedVerifiedHandles:v4];

    if (![(CNContactContentUnitaryViewController *)v2 didFindStaticIdentity]|| ([(CNContactContentUnitaryViewController *)v2 cachedStaticIdentity], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v6 = *MEMORY[0x1E695C208];
      v58[0] = *MEMORY[0x1E695C330];
      v58[1] = v6;
      obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
      v7 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (!v7)
      {
        goto LABEL_28;
      }

      v8 = v7;
      v9 = *v50;
      v39 = *v50;
      while (1)
      {
        v10 = 0;
        v40 = v8;
        do
        {
          if (*v50 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v49 + 1) + 8 * v10);
          v12 = [(CNContactContentUnitaryViewController *)v2 propertyGroups];
          v13 = [v12 objectForKeyedSubscript:v11];

          v14 = [v13 displayItems];
          v15 = [v14 count];

          if (v15)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v16 = [v13 displayItems];
            v17 = [v16 countByEnumeratingWithState:&v45 objects:v57 count:16];
            if (!v17)
            {
              goto LABEL_25;
            }

            v18 = v17;
            v42 = v13;
            v43 = v10;
            v44 = 0;
            v19 = *v46;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v46 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v45 + 1) + 8 * i);
                v22 = [v21 labeledValue];
                v23 = [v22 value];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [MEMORY[0x1E6996AE8] idsIDForPhoneNumber:v23];
                }

                else
                {
                  [MEMORY[0x1E6996AE8] idsIDForEmail:v23];
                }
                v24 = ;
                if (v24)
                {
                  [(CNContactContentUnitaryViewController *)v2 cachedStaticIdentity];
                  v26 = v25 = v2;
                  v27 = [v26 isHandleInStore:v24];

                  v2 = v25;
                  if (v27)
                  {
                    v28 = [(CNContactContentUnitaryViewController *)v25 cachedVerifiedHandles];
                    v29 = [v21 displayValue];
                    [v28 addObject:v29];

                    v44 = 1;
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v45 objects:v57 count:16];
            }

            while (v18);

            v9 = v39;
            v8 = v40;
            v13 = v42;
            v10 = v43;
            if (v44)
            {
              v16 = [(CNContactContentUnitaryViewController *)v2 contactView];
              [(CNContactContentUnitaryViewController *)v2 reloadCardGroup:v42 forTableView:v16];
LABEL_25:
            }
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (!v8)
        {
          goto LABEL_28;
        }
      }
    }

    [(CNContactContentUnitaryViewController *)v2 setDidFindStaticIdentity:0];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v30 = *MEMORY[0x1E695C208];
    v60[0] = *MEMORY[0x1E695C330];
    v60[1] = v30;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
    v31 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v54;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v54 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v53 + 1) + 8 * j);
          v36 = [(CNContactContentUnitaryViewController *)v2 propertyGroups];
          v37 = [v36 objectForKeyedSubscript:v35];

          v38 = [(CNContactContentUnitaryViewController *)v2 contactView];
          [(CNContactContentUnitaryViewController *)v2 reloadCardGroup:v37 forTableView:v38];
        }

        v32 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v32);
    }

LABEL_28:
  }
}

- (BOOL)_hasAtLeastOneVerifiedHandle
{
  [(CNContactContentUnitaryViewController *)self cachedStaticIdentity];

  v3 = [(CNContactContentUnitaryViewController *)self cardGroupForProperty:*MEMORY[0x1E695C208]];
  v4 = [v3 displayItems];

  if (v4 && ([v3 displayItems], v5 = objc_claimAutoreleasedReturnValue(), v13[0] = MEMORY[0x1E69E9820], v13[1] = 3221225472, v13[2] = __69__CNContactContentUnitaryViewController__hasAtLeastOneVerifiedHandle__block_invoke, v13[3] = &unk_1E74E7108, v13[4] = self, v6 = objc_msgSend(v5, "_cn_any:", v13), v5, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CNContactContentUnitaryViewController *)self cardGroupForProperty:*MEMORY[0x1E695C330]];
    v9 = [v8 displayItems];

    if (v9)
    {
      v10 = [v8 displayItems];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69__CNContactContentUnitaryViewController__hasAtLeastOneVerifiedHandle__block_invoke_2;
      v12[3] = &unk_1E74E7108;
      v12[4] = self;
      v7 = [v10 _cn_any:v12];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

uint64_t __69__CNContactContentUnitaryViewController__hasAtLeastOneVerifiedHandle__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6996AE8];
  v4 = [a2 labeledValue];
  v5 = [v4 value];
  v6 = [v3 idsIDForEmail:v5];

  v7 = [*(a1 + 32) cachedStaticIdentity];
  v8 = [v7 isHandleInStore:v6];

  return v8;
}

uint64_t __69__CNContactContentUnitaryViewController__hasAtLeastOneVerifiedHandle__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6996AE8];
  v4 = [a2 labeledValue];
  v5 = [v4 value];
  v6 = [v3 idsIDForPhoneNumber:v5];

  v7 = [*(a1 + 32) cachedStaticIdentity];
  v8 = [v7 isHandleInStore:v6];

  return v8;
}

- (void)alertDetailsNotVerified:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DC650];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"STATIC_IDENTITY_DETAILS_NOT_VERIFIED_ALERT" value:&stru_1F0CE7398 table:@"Localized-NARWHAL"];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"STATIC_IDENTITY_DETAILS_NOT_VERIFIED_MESSAGE" value:&stru_1F0CE7398 table:@"Localized-NARWHAL"];
  v10 = [v5 alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = MEMORY[0x1E69DC648];
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __65__CNContactContentUnitaryViewController_alertDetailsNotVerified___block_invoke;
  v19 = &unk_1E74E7308;
  v20 = self;
  v21 = v4;
  v14 = v4;
  v15 = [v11 actionWithTitle:v13 style:0 handler:&v16];
  [v10 addAction:{v15, v16, v17, v18, v19, v20}];

  [(CNContactContentUnitaryViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)alertStaticIdentitySaveFailed:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DC650];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"STATIC_IDENTITY_INVALID_ACCOUNT_KEY_ALERT" value:&stru_1F0CE7398 table:@"Localized-NARWHAL"];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"STATIC_IDENTITY_INVALID_ACCOUNT_KEY_MESSAGE" value:&stru_1F0CE7398 table:@"Localized-NARWHAL"];
  v10 = [v5 alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69DC648];
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__CNContactContentUnitaryViewController_alertStaticIdentitySaveFailed___block_invoke;
  v16[3] = &unk_1E74E72E0;
  objc_copyWeak(&v18, &location);
  v14 = v4;
  v17 = v14;
  v15 = [v11 actionWithTitle:v13 style:0 handler:v16];
  [v10 addAction:v15];

  [(CNContactContentUnitaryViewController *)self presentViewController:v10 animated:1 completion:0];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __71__CNContactContentUnitaryViewController_alertStaticIdentitySaveFailed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCachedStaticIdentity:0];
  [WeakRetained setCachedVerifiedHandles:0];
  [WeakRetained finishEditing:*(a1 + 32)];
}

- (id)defaulTextColor
{
  v2 = *MEMORY[0x1E6996540];
  v3 = [(CNContactContentUnitaryViewController *)self contact];
  v4 = [v3 wallpaper];
  v5 = [v4 posterArchiveData];
  if ((*(v2 + 16))(v2, v5))
  {
    +[CNUIColorRepository contactCardStaticAvatarHeaderDefaultTextColor];
  }

  else
  {
    +[CNUIColorRepository contactCardStaticHeaderDefaultTintColor];
  }
  v6 = ;

  return v6;
}

- (void)setContactViewBackgroundToMatchHeader
{
  if ([(CNContactContentUnitaryViewController *)self shouldSetBackgroundColorToMatchHeader])
  {
    v26 = [(CNContactContentUnitaryViewController *)self headerViewBackgroundColors];
    v3 = [(CNContactContentUnitaryViewController *)self headerViewBackgroundColors];
    v4 = [v3 count];

    if (v4 == 1)
    {
      v5 = [(CNContactContentUnitaryViewController *)self headerViewBackgroundColors];
      v6 = [v5 firstObject];
      v7 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundView];
      [v7 setBackgroundColor:v6];

      v8 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundGradientLayer];
      [v8 setColors:0];
    }

    else
    {
      v9 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundView];
      [v9 setBackgroundColor:0];

      v10 = [(CNContactContentUnitaryViewController *)self contactView];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundGradientLayer];
      [v19 setFrame:{v12, v14, v16, v18}];

      v20 = [v26 _cn_map:&__block_literal_global_1077];
      v21 = [v20 _cn_reversed];
      v22 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundGradientLayer];
      [v22 setColors:v21];

      v23 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundGradientLayer];
      [v23 setStartPoint:{0.0, 0.5}];

      v8 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundGradientLayer];
      [v8 setEndPoint:{1.0, 0.5}];
    }

    displayFloatingCollapsedHeaderView = self->_displayFloatingCollapsedHeaderView;
    v25 = [(CNContactContentUnitaryViewController *)self headerViewBackgroundColors];
    [(CNContactHeaderCollapsedView *)displayFloatingCollapsedHeaderView updateBackgroundWithGradientColors:v25 horizontal:1];
  }
}

uint64_t __78__CNContactContentUnitaryViewController_setContactViewBackgroundToMatchHeader__block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

- (BOOL)shouldSetBackgroundColorToMatchHeader
{
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]&& [(CNContactContentUnitaryViewController *)self isOrientationPhoneLandscape])
  {
    v3 = *MEMORY[0x1E6996530];
    v4 = [(CNContactContentUnitaryViewController *)self headerViewBackgroundColors];
    if ((*(v3 + 16))(v3, v4))
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [(CNContactContentUnitaryViewController *)self isEditing]^ 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)applyContactStyle
{
  v79[2] = *MEMORY[0x1E69E9840];
  v3 = +[CNContactStyle currentStyle];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    [(CAGradientLayer *)self->_contactViewBackgroundGradientLayer setColors:0];
    [(UIView *)self->_contactViewBackgroundView setBackgroundColor:0];
  }

  if ([(CNContactContentUnitaryViewController *)self shouldSetBackgroundColorToMatchHeader])
  {
    [(CNContactContentUnitaryViewController *)self setContactViewBackgroundToMatchHeader];
    goto LABEL_10;
  }

  if ([(CNContactContentUnitaryViewController *)self forcesTransparentBackground])
  {
    v4 = +[CNUIColorRepository transparentBackgroundColor];
  }

  else
  {
    v5 = [v3 backgroundColor];

    if (!v5)
    {
      goto LABEL_10;
    }

    v4 = [v3 backgroundColor];
  }

  v6 = v4;
  v7 = [(CNContactContentUnitaryViewController *)self contactView];
  [v7 setBackgroundColor:v6];

LABEL_10:
  v8 = [v3 sectionBackgroundColor];
  v9 = [(CNContactContentUnitaryViewController *)self contactView];
  [v9 setSectionBackgroundColor:v8];

  v10 = [v3 separatorColor];
  v11 = [(CNContactContentUnitaryViewController *)self contactView];
  [v11 setSeparatorColor:v10];

  v12 = [v3 selectedCellBackgroundColor];
  v13 = [(CNContactContentUnitaryViewController *)self contactView];
  [v13 setSelectedCellBackgroundColor:v12];

  v14 = MEMORY[0x1E695DF90];
  v15 = [(CNContactContentUnitaryViewController *)self contactView];
  v16 = [v15 valueTextAttributes];
  v17 = [v14 dictionaryWithDictionary:v16];

  v18 = *MEMORY[0x1E69DB650];
  v78[0] = *MEMORY[0x1E69DB650];
  v19 = [v3 textColor];
  v78[1] = @"ABNotesTextColorAttributeName";
  v79[0] = v19;
  v20 = [v3 notesTextColor];
  v79[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
  [v17 addEntriesFromDictionary:v21];

  v22 = [(CNContactContentUnitaryViewController *)self contactView];
  [v22 setValueTextAttributes:v17];

  if ([(CNContactContentUnitaryViewController *)self forcesTransparentBackground])
  {
    v23 = +[CNUIColorRepository transparentBackgroundColor];
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setBackgroundColor:v23];

    v24 = +[CNUIColorRepository transparentBackgroundColor];
    [(CNContactHeaderEditView *)self->_editingHeaderView setBackgroundColor:v24];

    v25 = +[CNUIColorRepository transparentBackgroundColor];
    [(UIView *)self->_editingFloatingCollapsedHeaderView setBackgroundColor:v25];

    v26 = +[CNUIColorRepository transparentBackgroundColor];
  }

  else
  {
    v27 = [(CNContactContentUnitaryViewController *)self environment];
    v28 = [v27 runningInContactsAppOniPad];

    if (v28)
    {
      v29 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
      [(CNContactHeaderDisplayView *)self->_displayHeaderView setBackgroundColor:v29];

      v30 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
      [(CNContactHeaderEditView *)self->_editingHeaderView setBackgroundColor:v30];

      v31 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
      [(UIView *)self->_editingFloatingCollapsedHeaderView setBackgroundColor:v31];

      +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    }

    else
    {
      v32 = [v3 contactHeaderBackgroundColor];
      [(CNContactHeaderDisplayView *)self->_displayHeaderView setBackgroundColor:v32];

      v33 = [v3 contactHeaderBackgroundColor];
      [(CNContactHeaderEditView *)self->_editingHeaderView setBackgroundColor:v33];

      v34 = [v3 contactHeaderBackgroundColor];
      [(UIView *)self->_editingFloatingCollapsedHeaderView setBackgroundColor:v34];

      [v3 contactHeaderBackgroundColor];
    }
    v26 = ;
  }

  [(CNContactActionsContainerView *)self->_actionsWrapperView setBackgroundColor:v26];

  v35 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v36 = [(CNContactContentUnitaryViewController *)self shouldUseStaticHeader];
  if (!v36 || !v35)
  {
    if (!v36)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ([(CNContactContentUnitaryViewController *)self isOrientationPhoneLandscape])
  {
LABEL_21:
    v37 = +[CNUIColorRepository transparentBackgroundColor];
    [(CNContactActionsContainerView *)self->_actionsWrapperView setBackgroundColor:v37];

    v38 = +[CNUIColorRepository transparentBackgroundColor];
    [(CNContactActionsContainerView *)self->_floatingActionsWrapperView setBackgroundColor:v38];
  }

LABEL_22:
  editingHeaderView = self->_editingHeaderView;
  v76 = v18;
  v40 = [v3 textColor];
  v77 = v40;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  [editingHeaderView cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v41];

  displayHeaderView = self->_displayHeaderView;
  v74 = v18;
  v43 = [v3 taglineTextColor];
  v75 = v43;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  [displayHeaderView cn_updateDictionaryForKey:@"taglineTextAttributes" withChanges:v44];

  if (v35 & 1 | ![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v45 = [(CNContactContentUnitaryViewController *)self actionsViewController];
    [v45 setViewStyle:{objc_msgSend(v3, "topActionsViewStyle")}];
  }

  else
  {
    v46 = [(CNContactContentUnitaryViewController *)self floatingActionsViewController];
    [v46 setViewStyle:10];

    v47 = [(CNContactContentUnitaryViewController *)self floatingActionsViewController];
    v48 = [v47 actionsView];
    [v48 setEnableVisualEffectViewCaptureView:0];

    v49 = [(CNContactContentUnitaryViewController *)self actionsViewController];
    [v49 setViewStyle:10];

    v45 = +[CNUIColorRepository contactCardStaticHeaderDefaultTintColor];
    [(CNContactInlineActionsViewController *)self->_actionsViewController setPosterTintColor:v45];
    [(CNContactInlineActionsViewController *)self->_floatingActionsViewController setPosterTintColor:v45];
  }

  v50 = [v3 usesOpaqueBackground];
  v51 = [(CNContactContentUnitaryViewController *)self actionsViewController];
  v52 = [v51 view];
  v53 = [v52 layer];
  v54 = v53;
  if (v50)
  {
    [v53 setShadowRadius:8.0];

    v55 = [(CNContactContentUnitaryViewController *)self actionsViewController];
    v56 = [v55 view];
    v57 = [v56 layer];
    [v57 setShadowOffset:{0.0, 2.0}];

    v58 = [(CNContactContentUnitaryViewController *)self actionsViewController];
    v59 = [v58 view];
    v60 = [v59 layer];
    v61 = 1025758986;
    LODWORD(v62) = 1025758986;
    [v60 setShadowOpacity:v62];

    if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      goto LABEL_30;
    }

    v63 = [(CNContactContentUnitaryViewController *)self floatingActionsViewController];
    v64 = [v63 view];
    v65 = [v64 layer];
    [v65 setShadowRadius:8.0];

    v66 = [(CNContactContentUnitaryViewController *)self floatingActionsViewController];
    v67 = [v66 view];
    v68 = [v67 layer];
    [v68 setShadowOffset:{0.0, 2.0}];
  }

  else
  {
    v61 = 0;
    [v53 setShadowOpacity:0.0];

    if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      goto LABEL_30;
    }
  }

  v69 = [(CNContactContentUnitaryViewController *)self floatingActionsViewController];
  v70 = [v69 view];
  v71 = [v70 layer];
  LODWORD(v72) = v61;
  [v71 setShadowOpacity:v72];

LABEL_30:

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
  [(CNContactContentUnitaryViewController *)self keyboardVerticalOverlap];
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
  if ([(CNContactContentViewController *)self hideHeaderView])
  {
    goto LABEL_2;
  }

  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v12 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [v12 minHeight];
    v11 = v13;

    v14 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [v14 maxHeight];
    v10 = v15;

    if (v10 == 0.0)
    {
LABEL_2:
      v5 = *MEMORY[0x1E69DDCE0];
      v6 = *(MEMORY[0x1E69DDCE0] + 8);
      v8 = *(MEMORY[0x1E69DDCE0] + 16);
      v7 = *(MEMORY[0x1E69DDCE0] + 24);
      goto LABEL_30;
    }

    if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0 && (-[CNContactContentUnitaryViewController isEditing](self, "isEditing") & 1) == 0)
    {
      v16 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [v16 frame];
      v9 = v17;
    }
  }

  [v4 _systemContentInset];
  v5 = v9 + v10 - v18;
  [v4 bounds];
  v20 = v10 - v11 + v19;
  [v4 _systemContentInset];
  v22 = v20 - v21 - v5;
  [v4 _systemContentInset];
  v24 = v23;
  [(CNContactContentUnitaryViewController *)self keyboardVerticalOverlap];
  if (v24 >= v25)
  {
    v25 = v24;
  }

  v26 = v22 - v25;
  [v4 contentSize];
  if (v26 - v27 >= 0.0)
  {
    v28 = v26 - v27;
  }

  else
  {
    v28 = 0.0;
  }

  [v4 contentInset];
  v6 = v29;
  v7 = v30;
  [(CNContactContentUnitaryViewController *)self keyboardVerticalOverlap];
  if (v31 <= 0.0)
  {
    v48 = [MEMORY[0x1E69966E8] currentEnvironment];
    v49 = [v48 featureFlags];
    v50 = [v49 isFeatureEnabled:29];

    if (v50)
    {
      if (([(CNContactContentUnitaryViewController *)self isViewLoaded]& 1) != 0)
      {
        v51 = [(CNContactContentUnitaryViewController *)self view];
        [v51 safeAreaInsets];
        v53 = v52;
      }

      else
      {
        v51 = [(CNContactContentUnitaryViewController *)self parentViewController];
        v59 = [v51 view];
        [v59 safeAreaInsets];
        v53 = v60;
      }

      [v4 _systemContentInset];
      v55 = v53 - v61;
    }

    else
    {
      [v4 _systemContentInset];
      v55 = -v54;
    }

    goto LABEL_27;
  }

  v32 = [(CNContactContentUnitaryViewController *)self view];
  v33 = [v32 window];
  if (v33)
  {
    v34 = v33;
    v35 = [(CNContactContentUnitaryViewController *)self view];
    v36 = [v35 window];
    [v36 bounds];
    v38 = v37;
    [v4 bounds];
    v40 = v39;

    v41 = 0.0;
    if (v38 <= v40)
    {
      goto LABEL_24;
    }

    v42 = [(CNContactContentUnitaryViewController *)self view];
    v43 = [v42 window];
    [v43 bounds];
    v45 = v44;
    [v4 bounds];
    v41 = v45 - v46;

    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      goto LABEL_24;
    }

    v32 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [v32 minTitleOffset];
    v41 = v41 - v47;
  }

  else
  {
    v41 = 0.0;
  }

LABEL_24:
  [(CNContactContentUnitaryViewController *)self keyboardVerticalOverlap];
  v57 = v56;
  [v4 _systemContentInset];
  v55 = v41 + v57 - v58;
LABEL_27:
  if (v28 >= v55)
  {
    v8 = v28;
  }

  else
  {
    v8 = v55;
  }

LABEL_30:

  v62 = v5;
  v63 = v6;
  v64 = v8;
  v65 = v7;
  result.right = v65;
  result.bottom = v64;
  result.left = v63;
  result.top = v62;
  return result;
}

- (void)initializeTableViewsForHeaderHeight
{
  v39 = [(CNContactContentUnitaryViewController *)self contactView];
  [v39 layoutIfNeeded];
  v3 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
  [v3 setNeedsLayout];

  v4 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
  [v4 layoutIfNeeded];

  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v5 = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
    [v5 setNeedsLayout];

    v6 = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
    [v6 layoutIfNeeded];

    v7 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    [v7 calculateLabelSizesIfNeeded];
  }

  v8 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  [v8 calculateLabelSizesIfNeeded];

  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    v9 = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
    [v9 constant];
    v11 = v10;
    v12 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [v12 minHeight];
    if (v11 > v13)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    v15 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    [v15 setAlpha:v14];

    if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      goto LABEL_17;
    }

    [(CNContactContentUnitaryViewController *)self editingFloatingHeaderHeight];
    v17 = v16;
    v18 = [(CNContactContentUnitaryViewController *)self editingFloatingHeaderHeightConstraint];
    [v18 constant];
    v20 = v19;

    if (v20 != v17)
    {
      v21 = [(CNContactContentUnitaryViewController *)self editingFloatingHeaderHeightConstraint];
      [v21 setConstant:v17];
    }

    v22 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [v22 maxHeight];
    v24 = v23;
  }

  else
  {
    v25 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    [v25 setAlpha:1.0];

    if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      goto LABEL_17;
    }

    v26 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    [v26 maxHeight];
    v28 = v27;

    v29 = [(CNContactContentUnitaryViewController *)self floatingHeaderHeightConstraint];
    [v29 constant];
    v31 = v30;

    if (v31 != v28)
    {
      v32 = [(CNContactContentUnitaryViewController *)self floatingHeaderHeightConstraint];
      [v32 setConstant:v28];
    }

    [(CNContactContentUnitaryViewController *)self staticDisplayHeaderHeight];
    v24 = v33;
  }

  v34 = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
  [v34 constant];
  v36 = v35;

  if (v36 != v24)
  {
    v37 = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
    [v37 setConstant:v24];
  }

LABEL_17:
  v38 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  [v38 layoutIfNeeded];

  [(CNContactContentUnitaryViewController *)self updateInsetsIfNeededForTableView:v39 isEditing:[(CNContactContentUnitaryViewController *)self isEditing]];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    [(CNContactContentUnitaryViewController *)self updateCollapsedHeaderToMatchScrollViewState:v39 scrollDirection:2 animated:0];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self updateHeaderHeightToMatchScrollViewState:v39 scrollDirection:2 animated:0];
  }
}

- (void)updateInsetsIfNeededForTableView:(id)a3 isEditing:(BOOL)a4
{
  v44 = a3;
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    [(CNContactContentUnitaryViewController *)self keyboardVerticalOverlap];
    if (v5 <= 0.0 || (-[CNContactContentUnitaryViewController view](self, "view"), v6 = objc_claimAutoreleasedReturnValue(), [v6 bounds], v8 = v7, v6, v8 <= 0.0))
    {
      v15 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
      v16 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
      [v16 maxHeight];
      v19 = v15;
      v18 = 0;
    }

    else
    {
      v9 = [(CNContactContentUnitaryViewController *)self view];
      [v9 bounds];
      v11 = v10;
      [(CNContactContentUnitaryViewController *)self keyboardVerticalOverlap];
      v13 = v11 - v12 + -64.0;

      v14 = fmax(v13, 0.0);
      v15 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
      v16 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
      [v16 maxHeight];
      v18 = v14 <= v17;
      v19 = v15;
      v20 = v14;
    }

    [v19 setConstrainedMaxHeight:v18 enabled:v20];
  }

  [v44 contentInset];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(CNContactContentUnitaryViewController *)self insetsForContactTableView:v44];
  if (v30 != v24 || v29 != v22 || v32 != v28 || v31 != v26)
  {
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    [(CNContactContentUnitaryViewController *)self scrollIndicatorInsetsForContactTableView:v44 withContentInsets:?];
    [(CNContactContentUnitaryViewController *)self updateTableView:v44 contentInsetsTo:v36 withScrollIndicatorInsets:v37, v38, v39, v40, v41, v42, v43];
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
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CNContactContentUnitaryViewController *)self contactView];
    v5 = v6 == v4;
  }

  return v5;
}

- (double)updateHeaderConstraintForGlobalHeaderHeight:(double)a3 direction:(int64_t)a4 animated:(BOOL)a5
{
  v8 = [(CNContactContentUnitaryViewController *)self shouldUseStaticHeader:a4];
  result = 0.0;
  if (!v8)
  {
    v10 = 0.0;
    if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0 && (-[CNContactContentUnitaryViewController isEditing](self, "isEditing") & 1) == 0)
    {
      v11 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [v11 frame];
      v10 = v12;
    }

    v13 = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
    [v13 constant];
    v15 = v14;

    if (a3 - v10 != v15 && (a4 || a3 - v10 > v15))
    {
      v16 = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
      [v16 setConstant:a3 - v10];

      return a3;
    }

    else
    {
      return v10 + v15;
    }
  }

  return result;
}

- (void)updateHeaderHeightToMatchScrollViewState:(id)a3 scrollDirection:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v19 = a3;
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    [v19 contentOffset];
    v9 = v8;
    [v19 contentInset];
    [(CNContactContentUnitaryViewController *)self globalHeaderHeightForContentOffset:v9 contentInset:v10, v11, v12, v13];
    [(CNContactContentUnitaryViewController *)self updateHeaderConstraintForGlobalHeaderHeight:a4 direction:v5 animated:?];
    v15 = v14;
    objc_opt_class();
    v16 = v19;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    [v18 setMaskingInset:v15];
  }
}

- (double)globalHeaderHeightForContentOffset:(double)a3 contentInset:(UIEdgeInsets)a4
{
  top = a4.top;
  v7 = 0.0;
  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0 && (-[CNContactContentUnitaryViewController isEditing](self, "isEditing") & 1) == 0)
  {
    v8 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
    [v8 frame];
    v7 = v9;
  }

  v10 = [(CNContactContentUnitaryViewController *)self contactView];
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

  v14 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
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

- (void)updateDisplayCollapsedHeaderToMatchScrollViewState:(id)a3 scrollDirection:(int64_t)a4 animated:(BOOL)a5
{
  v25 = a3;
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]&& ([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    v6 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    [v6 frame];
    v8 = v7;
    v9 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    [v9 frame];
    v11 = v8 - v10;

    if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
    {
      v12 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [v12 frame];
      v14 = v13;
    }

    else
    {
      v12 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
      [v12 bottomMargin];
      v14 = v15;
    }

    v16 = v11 - v14;
    [v25 contentOffset];
    v18 = v17;
    v19 = v17 >= v16;
    v20 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    v21 = [v20 isHidden];

    if (((v19 ^ v21) & 1) == 0)
    {
      v22 = (v18 >= v16) & ~[(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard];
      v23 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [v23 setHidden:v22 ^ 1];

      v24 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [v24 showLabelAndAvatar:v22 animated:1];
    }
  }
}

- (void)updateCollapsedHeaderToMatchScrollViewState:(id)a3 scrollDirection:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]&& ([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    [(CNContactContentUnitaryViewController *)self updateDisplayCollapsedHeaderToMatchScrollViewState:v8 scrollDirection:a4 animated:v5];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v25 = a3;
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v8 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [v8 minHeight];
    v10 = v9;

    v11 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [v11 maxHeight];
    v13 = v12;

    if ([(CNContactContentUnitaryViewController *)self isScrollViewControllingHeaderResizeAnimation:v25])
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
}

- (void)scrollViewDidScroll:(id)a3
{
  v6 = a3;
  if ([(CNContactContentUnitaryViewController *)self isScrollViewControllingHeaderResizeAnimation:?])
  {
    [v6 _verticalVelocity];
    [(CNContactContentUnitaryViewController *)self updateHeaderHeightToMatchScrollViewState:v6 scrollDirection:v4 >= 0.0 animated:1];
  }

  else if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v5 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    [v6 contentOffset];
    [v5 updatePosterImageViewForScrollOffset:?];

    [(CNContactContentUnitaryViewController *)self updateCollapsedHeaderToMatchScrollViewState:v6 scrollDirection:2 animated:0];
  }
}

- (void)setEditKeyboardShortcutEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self editCommand];

  if (v3)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"l" modifierFlags:0x100000 action:sel_toggleEditing_];
      [(CNContactContentUnitaryViewController *)self setEditCommand:v6];

      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"EDIT_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
      v9 = [(CNContactContentUnitaryViewController *)self editCommand];
      [v9 setDiscoverabilityTitle:v8];

      v11 = [(CNContactContentUnitaryViewController *)self editCommand];
      [(CNContactContentUnitaryViewController *)self addKeyCommand:v11];
    }
  }

  else if (v5)
  {
    v10 = [(CNContactContentUnitaryViewController *)self editCommand];
    [(CNContactContentUnitaryViewController *)self removeKeyCommand:v10];

    [(CNContactContentUnitaryViewController *)self setEditCommand:0];
  }
}

- (void)setCancelKeyboardShortcutEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self cancelCommand];

  if (v3)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_editCancel_];
      [(CNContactContentUnitaryViewController *)self setCancelCommand:v6];

      v8 = [(CNContactContentUnitaryViewController *)self cancelCommand];
      [(CNContactContentUnitaryViewController *)self addKeyCommand:v8];
    }
  }

  else if (v5)
  {
    v7 = [(CNContactContentUnitaryViewController *)self cancelCommand];
    [(CNContactContentUnitaryViewController *)self removeKeyCommand:v7];

    [(CNContactContentUnitaryViewController *)self setCancelCommand:0];
  }
}

- (void)setSaveKeyboardShortcutEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self saveCommand];

  if (v3)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"s" modifierFlags:0x100000 action:sel_toggleEditing_];
      [(CNContactContentUnitaryViewController *)self setSaveCommand:v6];

      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"SAVE_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
      v9 = [(CNContactContentUnitaryViewController *)self saveCommand];
      [v9 setDiscoverabilityTitle:v8];

      v11 = [(CNContactContentUnitaryViewController *)self saveCommand];
      [(CNContactContentUnitaryViewController *)self addKeyCommand:v11];
    }
  }

  else if (v5)
  {
    v10 = [(CNContactContentUnitaryViewController *)self saveCommand];
    [(CNContactContentUnitaryViewController *)self removeKeyCommand:v10];

    [(CNContactContentUnitaryViewController *)self setSaveCommand:0];
  }
}

- (void)updateUserActivityState:(id)a3
{
  v4 = a3;
  v6 = [(CNContactContentUnitaryViewController *)self activityManager];
  v5 = [(CNContactContentUnitaryViewController *)self contact];
  [v6 updateUserActivityState:v4 withContentsOfContact:v5];
}

- (void)_updateUserActivity
{
  v21 = *MEMORY[0x1E69E9840];
  if ((CNUIIsContacts() || CNUIIsMobilePhone()) && ([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
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

    v6 = [(CNContactContentUnitaryViewController *)self activityManager];
    v7 = [(CNContactContentUnitaryViewController *)self contact];
    v8 = [v6 makeActivityAdvertisingViewingOfContact:v7];

    v9 = [(CNContactContentUnitaryViewController *)self userActivity];
    v10 = v9;
    if (v8)
    {

      if (!v10)
      {
        [(CNContactContentUnitaryViewController *)self setUserActivity:v8];
        v11 = [(CNContactContentUnitaryViewController *)self userActivity];
        [v11 becomeCurrent];

        v12 = CNUILogContactCard();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [(CNContactContentUnitaryViewController *)self userActivity];
          v17 = 138412546;
          v18 = self;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_INFO, "Activity continuity -  %@ created %@", &v17, 0x16u);
        }
      }

      v14 = [(CNContactContentUnitaryViewController *)self userActivity];
      [v14 setNeedsSave:1];
    }

    else
    {
      [v9 resignCurrent];

      v15 = CNUILogContactCard();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [(CNContactContentUnitaryViewController *)self userActivity];
        v17 = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_INFO, "Activity continuity -  %@ removed %@", &v17, 0x16u);
      }

      [(CNContactContentUnitaryViewController *)self setUserActivity:0];
    }
  }
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v18 encodeRestorableStateWithCoder:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = +[CNContactContentUnitaryViewController BOOLStateRestorationProperties];
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
        v11 = [(CNContactContentUnitaryViewController *)self valueForKey:v10];
        if (v11)
        {
          [v4 encodeObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [(CNContactContentUnitaryViewController *)self contact];
  v13 = [v12 identifier];

  if (v13)
  {
    [v4 encodeObject:v13 forKey:@"Identifier"];
  }
}

- (void)_addedGroupWithName:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CNContactView nameProperties];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v8 = [(CNContactContentUnitaryViewController *)self contactStore];
    v9 = [(CNContactContentUnitaryViewController *)self policy];
    v10 = [(CNContactContentUnitaryViewController *)self linkedPoliciesByContactIdentifier];
    v11 = [(CNCardPropertyGroup *)CNCardPropertyNameGroup groupForProperty:v4 contact:v7 store:v8 policy:v9 linkedPolicies:v10];

    v12 = +[CNContactView nameProperties];
    v41 = v11;
    v13 = [v11 property];
    v14 = [v12 indexOfObject:v13];

    v42 = self;
    v15 = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
    v16 = [v15 groups];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
    v43 = v4;
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v45;
LABEL_4:
      v22 = 0;
      v40 = v20 + v19;
      while (1)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v44 + 1) + 8 * v22);
        v24 = +[CNContactView nameProperties];
        v25 = [v23 property];
        v26 = [v24 indexOfObject:v25];

        if (v26 >= v14)
        {
          break;
        }

        ++v20;
        if (v19 == ++v22)
        {
          v19 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
          v20 = v40;
          if (v19)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v20 = 0;
    }

    v28 = [(CNContactContentUnitaryViewController *)v42 nameEditingGroups];
    v29 = [v28 mutableCopy];

    [v29 insertObject:v41 atIndex:v20];
    v30 = [v29 copy];
    [(CNContactContentUnitaryViewController *)v42 setNameEditingGroups:v30];

    v31 = [(CNContactContentUnitaryViewController *)v42 contactView];
    [v31 reloadData];

    v32 = [(CNContactContentUnitaryViewController *)v42 aggregatedNameGroups];
    v33 = [(CNContactContentUnitaryViewController *)v42 contactView];
    v34 = [(CNContactContentUnitaryViewController *)v42 sectionOfGroup:v32 inTableView:v33];

    v35 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v34];
    v36 = [(CNContactContentUnitaryViewController *)v42 contactView];
    v37 = [v36 cellForRowAtIndexPath:v35];

    v38 = [v37 firstResponderItem];
    [v38 becomeFirstResponder];

    v39 = [(CNContactContentUnitaryViewController *)v42 contactView];
    [v39 scrollToRowAtIndexPath:v35 atScrollPosition:2 animated:0];

    v4 = v43;
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E695C1C0]])
  {
    v27 = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
    [v27 performActionWithSender:0];
  }
}

- (BOOL)_indexPathIsActionItem:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v6 section], v7);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:v6 forTableView:v7];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
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
  v8 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v6 section], v7);
  v9 = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
  v10 = v9;
  if (v8 == v9)
  {
    v11 = [v6 row];
    v12 = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
    v13 = [v12 groups];
    v14 = [v13 count];

    if (v11 < v14)
    {
      v15 = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
      v16 = [v15 groups];
      v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
      v18 = [v17 editingItems];
      v19 = [v18 firstObject];

      goto LABEL_14;
    }
  }

  else
  {
  }

  if ([(CNContactContentUnitaryViewController *)self isStandardGroup:v8])
  {
    if (self->_editingContactView == v7)
    {
      [v8 editingItems];
    }

    else
    {
      [v8 displayItems];
    }
    v20 = ;
  }

  else
  {
    if (![(CNContactContentUnitaryViewController *)self _indexPathIsActionItem:v6 forTableView:v7])
    {
      v19 = 0;
      goto LABEL_15;
    }

    v20 = [v8 actionItems];
  }

  v15 = v20;
  v19 = [v20 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
LABEL_14:

LABEL_15:

  return v19;
}

- (id)_cardGroupAtTableViewSectionIndex:(int64_t)a3 forTableView:(id)a4
{
  v6 = a4;
  v7 = [(CNContactContentUnitaryViewController *)self groupIndexFromTableViewSectionIndex:a3 forTableView:v6];
  v8 = [(CNContactContentUnitaryViewController *)self _currentGroupsForTableView:v6];

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

- (id)_currentGroupsForTableView:(id)a3
{
  if (self->_editingContactView == a3)
  {
    [(CNContactContentUnitaryViewController *)self editingGroups];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self displayGroups];
  }
  v3 = ;

  return v3;
}

- (void)_saveChangesForGroups:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_opt_class();
        if ([v10 isSubclassOfClass:objc_opt_class()])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[CNContactContentUnitaryViewController setDidEditPronouns:](self, "setDidEditPronouns:", [v9 modified]);
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        [v9 saveChanges];
LABEL_11:
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
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
      v18 = [(CNContactContentUnitaryViewController *)v19 contactView];
      [(CNContactContentUnitaryViewController *)v19 reloadCardGroup:v4 forTableView:v18];
    }
  }
}

- (BOOL)_modelIsEmpty
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(CNContactContentUnitaryViewController *)self editingGroups];
  v5 = [v3 arrayWithArray:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![(CNContactContentUnitaryViewController *)self _isGroupEmpty:*(*(&v15 + 1) + 8 * i), v15])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  if (self->_editingHeaderView)
  {
    v12 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
    v13 = [v12 hasPhoto];

    v11 &= v13 ^ 1;
  }

  return v11;
}

- (BOOL)_isGroupEmpty:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0)
    {
      [v5 editingItems];
    }

    else
    {
      [v5 propertyItems];
    }
    v20 = ;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v20;
    v21 = [v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v30 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v7 = [v25 normalizedValue];
            if (v7)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 length])
              {
                v6 = v19;
                goto LABEL_45;
              }
            }
          }
        }

        v22 = [v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v18 = 1;
    v6 = v19;
    goto LABEL_46;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = [v4 groups];
    v29 = [v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (!v29)
    {
      v18 = 1;
      goto LABEL_47;
    }

    v7 = 0;
    v8 = *v39;
    v27 = *v39;
    v28 = self;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v38 + 1) + 8 * j);
        if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0)
        {
          [v10 editingItems];
        }

        else
        {
          [v10 propertyItems];
        }
        v11 = ;

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v7 = v11;
        v12 = [v7 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v35;
          while (2)
          {
            for (k = 0; k != v13; ++k)
            {
              if (*v35 != v14)
              {
                objc_enumerationMutation(v7);
              }

              v16 = *(*(&v34 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                v17 = [v16 normalizedValue];
                if (v17)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || [v17 length])
                  {

                    v19 = v7;
LABEL_45:

                    v18 = 0;
                    goto LABEL_46;
                  }
                }
              }
            }

            v13 = [v7 countByEnumeratingWithState:&v34 objects:v43 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        self = v28;
        v8 = v27;
      }

      v18 = 1;
      v29 = [v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v29);
    v19 = v7;
LABEL_46:

LABEL_47:
    goto LABEL_48;
  }

  v18 = 1;
LABEL_48:

  return v18;
}

- (BOOL)_modelHasChanges
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(CNContactContentUnitaryViewController *)self editingGroups];
  v5 = [v3 arrayWithArray:v4];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        if ([v11 modified])
        {
          v12 = 1;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  if (self->_editingHeaderView)
  {
    v13 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
    v14 = [v13 photoIsModified];

    v15 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
    v12 |= v14 | [v15 wallpaperIsModified];
  }

  v16 = [(CNContactContentUnitaryViewController *)self editingLinkedContacts];

  v17 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
  if (v17)
  {
    v18 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
    v19 = [v18 addedGroups];
    if ([v19 count])
    {
      v20 = 1;
    }

    else
    {
      v21 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
      v22 = [v21 removedGroups];
      v20 = [v22 count] != 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v23 = [(CNContactContentUnitaryViewController *)self containerContext];
  v24 = [v23 addedContainers];
  v25 = [v24 count];

  v26 = [(CNContactContentUnitaryViewController *)self mode];
  v27 = [(CNContactContentUnitaryViewController *)self mode]== 4 || [(CNContactContentUnitaryViewController *)self mode]== 5;
  v28 = [(CNContactContentUnitaryViewController *)self contact];
  if ([v28 hasNonPersistedData])
  {
    v29 = [(CNContactContentUnitaryViewController *)self shadowCopyOfReadonlyContact];
    v30 = v29 == 0;
  }

  else
  {
    v30 = 0;
  }

  if (v16)
  {
    v31 = 1;
  }

  else
  {
    v31 = v12;
  }

  v32 = v20 | v31;
  if (v25)
  {
    v32 = 1;
  }

  if (v26 == 3)
  {
    v33 = 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
  v35 = [v34 didChange];

  v36 = *MEMORY[0x1E6996530];
  v37 = [(CNContactContentUnitaryViewController *)self deletedEditingGroups];
  v38 = (*(v36 + 16))(v36, v37);

  return v33 | (v27 || v30) | v35 | v38 ^ 1;
}

- (id)_loadNameEditingGroups
{
  v44 = *MEMORY[0x1E69E9840];
  v31 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = [(CNContactContentUnitaryViewController *)self contact];
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
        v10 = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
        v11 = [v10 containsObject:v9];

        if ((v11 & 1) == 0)
        {
          v12 = [(CNContactContentUnitaryViewController *)self contact];
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
            v19 = [(CNContactContentUnitaryViewController *)self mutableContact];
            v20 = [(CNContactContentUnitaryViewController *)self contactStore];
            v21 = [(CNContactContentUnitaryViewController *)self policy];
            v22 = [(CNContactContentUnitaryViewController *)self linkedPoliciesByContactIdentifier];
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
  v49 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  if (!a3)
  {
    v6 = [(CNContactContentUnitaryViewController *)self _loadNameEditingGroups];
    [(CNContactContentUnitaryViewController *)self setNameEditingGroups:v6];
  }

  v7 = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
  [v5 addObject:v7];

  v8 = [(CNContactContentUnitaryViewController *)self shouldShowGemini];
  [(CNContactContentUnitaryViewController *)self createCardEditingGeminiGroupIfNeeded];
  v9 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
  [v9 setShouldShowGemini:v8];

  if ([(CNContactContentUnitaryViewController *)self shouldShowGemini])
  {
    v10 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
    [v5 _cn_addNonNilObject:v10];
  }

  v42 = v5;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = +[CNContactView allCardProperties];
  v11 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
    v14 = *MEMORY[0x1E695C3C8];
    v15 = *MEMORY[0x1E6996530];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        if (![v17 isEqualToString:v14] || !-[CNContactContentUnitaryViewController showingMeContact](self, "showingMeContact"))
        {
          v18 = self;
          v19 = [(CNContactContentUnitaryViewController *)self propertyGroups];
          v20 = [v19 objectForKeyedSubscript:v17];

          if (!v20)
          {
            goto LABEL_19;
          }

          v21 = [v20 editingItems];
          v22 = (*(v15 + 16))(v15, v21);

          if (v22)
          {
            goto LABEL_19;
          }

          v23 = +[CNContactView addFieldCardProperties];
          if ([v23 containsObject:v17])
          {
            v24 = [v20 valueEditingItemsCount];

            if (!v24)
            {
              goto LABEL_19;
            }
          }

          else
          {
          }

          [v42 addObject:v20];
LABEL_19:

          self = v18;
          continue;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v12);
  }

  v25 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
  [v42 _cn_addNonNilObject:v25];

  v26 = [(CNContactContentUnitaryViewController *)self cardEditingActionsGroup];
  v27 = [v26 actions];
  v28 = [v27 count];

  if (v28)
  {
    v29 = [(CNContactContentUnitaryViewController *)self cardEditingActionsGroup];
    [v42 addObject:v29];
  }

  v30 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
  v31 = [v30 actionItems];
  v32 = [v31 count];

  if (v32)
  {
    v33 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
    [v42 _cn_addNonNilObject:v33];
  }

  [(CNContactContentUnitaryViewController *)self createCardEditingContactContainerGroupIfNeeded];
  v34 = [(CNContactContentUnitaryViewController *)self cardEditingContactContainerGroup];
  [v42 _cn_addNonNilObject:v34];

  v35 = [(CNContactContentUnitaryViewController *)self cardLinkedCardsGroup];
  [v42 _cn_addNonNilObject:v35];

  v36 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
  [v42 _cn_addNonNilObject:v36];

  v37 = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
  v38 = [v37 actions];
  v39 = [v38 count];

  if (v39)
  {
    v40 = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
    [v42 addObject:v40];
  }

  return v42;
}

- (void)createCardEditingContactContainerGroupIfNeeded
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:13];

  if (v5)
  {
    if ([(CNContactContentUnitaryViewController *)self shouldAllowContainerPicking]&& ([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0)
    {
      v6 = [CNCardContactContainerGroup alloc];
      v7 = [(CNContactContentUnitaryViewController *)self mutableContact];
      v8 = [(CNCardGroup *)v6 initWithContact:v7];
      [(CNContactContentUnitaryViewController *)self setCardEditingContactContainerGroup:v8];

      v11 = [(CNContactContentUnitaryViewController *)self containerContext];
      v9 = [v11 selectedContainers];
      v10 = [(CNContactContentUnitaryViewController *)self cardEditingContactContainerGroup];
      [v10 setContainers:v9];
    }

    else
    {

      [(CNContactContentUnitaryViewController *)self setCardEditingContactContainerGroup:0];
    }
  }
}

- (void)createCardEditingGeminiGroupIfNeeded
{
  v3 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];

  if (!v3)
  {
    v4 = [(CNContactContentUnitaryViewController *)self propertyGroups];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695C370]];
    [(CNContactContentUnitaryViewController *)self setCardEditingGeminiGroup:v5];

    v6 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
    v7 = [v6 propertyItems];
    v10 = [v7 objectAtIndexedSubscript:0];

    v8 = [(CNContactContentUnitaryViewController *)self geminiDataSource];
    v9 = [v8 geminiResult];
    [v10 setGeminiResult:v9];

    [v10 setDelegate:self];
  }
}

- (void)_reloadGeminiGroupPreservingChanges:(BOOL)a3
{
  if (![(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard]&& !a3)
  {
    [(CNContactContentUnitaryViewController *)self setCardEditingGeminiGroup:0];
    v6 = [(CNContactContentUnitaryViewController *)self geminiDataSource];
    [v6 resetDataSource];
    v5 = [(CNContactContentUnitaryViewController *)self contact];
    [v6 setContact:v5];
  }
}

- (id)_loadDisplayGroups
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(CNContactContentUnitaryViewController *)self cardTopGroup];
  v6 = [v5 actions];
  v7 = [v6 count];

  v8 = v4;
  if (v7)
  {
    v9 = [(CNContactContentUnitaryViewController *)self cardTopGroup];
    [v4 addObject:v9];
  }

  if ([(CNContactContentUnitaryViewController *)self allowsNamePicking])
  {
    v10 = [(CNContactContentUnitaryViewController *)self namePickingGroup];
    [v4 addObject:v10];
  }

  v11 = [(CNContactContentUnitaryViewController *)self cardTopGroup];
  v12 = [(CNContactContentUnitaryViewController *)self _addGroupsInArray:v4 afterGroup:v11];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v13 = [(CNContactContentUnitaryViewController *)self displayedProperties];
  v14 = [v13 countByEnumeratingWithState:&v83 objects:v88 count:16];
  v74 = v4;
  if (v14)
  {
    v15 = v14;
    v16 = *v84;
    v78 = *MEMORY[0x1E695C1C0];
    v76 = *v84;
    v77 = *MEMORY[0x1E695C3C8];
    v2 = 0x1E74DE000;
    v75 = v13;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v84 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v83 + 1) + 8 * i);
        if (([v18 isEqualToString:v78] & 1) == 0)
        {
          if (![v18 isEqualToString:v77])
          {
            goto LABEL_16;
          }

          v19 = [(CNContactContentUnitaryViewController *)self displayContactView];
          v20 = [(CNContactContentUnitaryViewController *)self hasSharedProfileBannerSectionForTableView:v19];

          if (!v20)
          {
            if ([(CNContactContentUnitaryViewController *)self shouldShowSharedProfileRow])
            {
              if ([(CNContactContentUnitaryViewController *)self showingMeContact])
              {
                v21 = [(CNContactContentUnitaryViewController *)self meCardSharedProfileGroup];
                [v8 _cn_addNonNilObject:v21];
LABEL_30:

                continue;
              }

LABEL_16:
              v22 = [(CNContactContentUnitaryViewController *)self propertyGroups];
              v21 = [v22 objectForKeyedSubscript:v18];

              v23 = [v21 displayItems];
              if ([v23 count])
              {
                v24 = [(CNContactContentViewController *)self primaryProperty];
                v25 = [v21 property];
                v26 = [v24 isEqualToString:v25];

                v13 = v75;
                if ((v26 & 1) == 0)
                {
                  [v8 addObject:v21];
                  v81 = 0u;
                  v82 = 0u;
                  v79 = 0u;
                  v80 = 0u;
                  v23 = [v21 displayItems];
                  v27 = [v23 countByEnumeratingWithState:&v79 objects:v87 count:16];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = *v80;
                    do
                    {
                      for (j = 0; j != v28; ++j)
                      {
                        if (*v80 != v29)
                        {
                          objc_enumerationMutation(v23);
                        }

                        v31 = *(*(&v79 + 1) + 8 * j);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [v31 setDelegate:self];
                        }
                      }

                      v28 = [v23 countByEnumeratingWithState:&v79 objects:v87 count:16];
                    }

                    while (v28);
                    v8 = v74;
                    v13 = v75;
                  }

                  goto LABEL_28;
                }
              }

              else
              {
LABEL_28:
              }

              v32 = [(CNContactContentUnitaryViewController *)self _addGroupsInArray:v8 afterGroup:v21];
              v16 = v76;
              goto LABEL_30;
            }
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v83 objects:v88 count:16];
    }

    while (v15);
  }

  v33 = [(CNContactContentUnitaryViewController *)self cardBottomGroup];
  v34 = [v33 actions];
  v35 = v8;
  v36 = [v34 count];

  if (v36)
  {
    v37 = [(CNContactContentUnitaryViewController *)self cardBottomGroup];
    [v35 addObject:v37];
  }

  v38 = [(CNContactContentUnitaryViewController *)self cardBottomGroup];
  v39 = [(CNContactContentUnitaryViewController *)self _addGroupsInArray:v35 afterGroup:v38];

  if (![(CNContactContentUnitaryViewController *)self hideCardActions])
  {
    v40 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    v41 = [v40 actions];
    v42 = [v41 count];

    if (v42)
    {
      v43 = [(CNContactContentUnitaryViewController *)self cardBottomGroup];
      v44 = [v43 actions];
      if (![v44 count])
      {
        if (v39)
        {
          v2 = [v39 actions];
          if ([v2 count])
          {
            goto LABEL_42;
          }
        }

        v45 = [(CNContactContentViewController *)self primaryProperty];
        if (!v45)
        {
          v72 = [(CNContactContentUnitaryViewController *)self contact];
          v73 = [v72 isSuggested];

          if (v39)
          {
          }

          if ((v73 & 1) == 0)
          {
            v46 = 0;
            goto LABEL_45;
          }

LABEL_44:
          v46 = 1;
LABEL_45:
          v47 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
          [v47 setAddSpacerFromPreviousGroup:v46];

          v48 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
          [v74 addObject:v48];

          goto LABEL_46;
        }

        if (v39)
        {
LABEL_42:
        }
      }

      goto LABEL_44;
    }
  }

LABEL_46:
  v49 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
  if (v49)
  {
    v50 = v49;
    v51 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
    v52 = [v51 actionItems];
    v53 = [v52 count];

    if (v53)
    {
      v54 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
      [v74 addObject:v54];
    }
  }

  if (![(CNContactContentUnitaryViewController *)self hideCardActions])
  {
    v55 = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
    v56 = [v55 actionItems];
    if ([v56 count])
    {
      v57 = [(CNContactContentUnitaryViewController *)self isContactBlocked];

      if (v57)
      {
        goto LABEL_55;
      }

      v55 = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
      [v74 addObject:v55];
    }

    else
    {
    }
  }

LABEL_55:
  v58 = [(CNContactContentUnitaryViewController *)self cardFooterGroup];
  v59 = [v58 actions];
  v60 = [v59 count];

  if (v60)
  {
    v61 = [(CNContactContentUnitaryViewController *)self cardFooterGroup];
    [v74 addObject:v61];
  }

  if ([(CNContactContentUnitaryViewController *)self isSuggestedContact]|| [(CNContactContentUnitaryViewController *)self allowsContactBlocking]|| [(CNContactContentUnitaryViewController *)self allowsContactBlockingAndReporting])
  {
    v62 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
    v63 = [v62 actions];
    v64 = [v63 count];

    if (v64)
    {
      v65 = [(CNContactContentUnitaryViewController *)self showContactBlockingFirst];
      v66 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      v67 = v66;
      if (v65)
      {
        [v66 setAddSpacerFromPreviousGroup:0];

        v67 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
        [v74 insertObject:v67 atIndex:0];
      }

      else
      {
        [v74 addObject:v66];
      }
    }
  }

  v68 = [(CNContactContentUnitaryViewController *)self cardLinkedCardsGroup];

  if (v68)
  {
    v69 = [(CNContactContentUnitaryViewController *)self cardLinkedCardsGroup];
    [v74 addObject:v69];
  }

  if ([(CNContactContentUnitaryViewController *)self showsGroupMembership])
  {
    v70 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
    [v74 _cn_addNonNilObject:v70];
  }

  return v74;
}

- (id)_addGroupsInArray:(id)a3 afterGroup:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CNContactContentUnitaryViewController *)self groupsAfterGroup];
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
    if ([(CNContactContentUnitaryViewController *)self isEditing])
    {
      v6 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];

      if (!v6)
      {
        v7 = [CNCardStaticIdentityGroup alloc];
        v8 = [(CNContactContentUnitaryViewController *)self mutableContact];
        v9 = [(CNCardStaticIdentityGroup *)v7 initWithContact:v8];
        [(CNContactContentUnitaryViewController *)self setCardStaticIdentityGroup:v9];
      }

      v10 = [(CNContactContentUnitaryViewController *)self cachedStaticIdentity];

      if (v10)
      {
        v13 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
        v11 = [(CNContactContentUnitaryViewController *)self cachedStaticIdentity];
        v12 = [v11 verificationCode];
        [v13 addIdentity:v12 isNew:0];
      }
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self setCardStaticIdentityGroup:0];
      if ([(CNContactContentUnitaryViewController *)self didLookUpStaticIdentity])
      {

        [(CNContactContentUnitaryViewController *)self _lookupKTHandlesIfNeeded];
      }

      else
      {

        [(CNContactContentUnitaryViewController *)self _lookupStaticIdentity];
      }
    }
  }
}

- (void)_lookupStaticIdentity
{
  objc_initWeak(&location, self);
  v3 = [(CNContactContentUnitaryViewController *)self ktWorkQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__CNContactContentUnitaryViewController__lookupStaticIdentity__block_invoke;
  v4[3] = &unk_1E74E6C98;
  objc_copyWeak(&v5, &location);
  [v3 performBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __62__CNContactContentUnitaryViewController__lookupStaticIdentity__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_alloc(MEMORY[0x1E6996BC8]);
  v3 = [WeakRetained contact];
  v4 = [v2 initWithContact:v3];

  [WeakRetained setCachedStaticIdentity:v4];
  [WeakRetained setCachedVerifiedHandles:0];
  [WeakRetained setDidLookUpStaticIdentity:1];
  if (v4)
  {
    [WeakRetained setDidFindStaticIdentity:1];
  }

  v5 = [WeakRetained mainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CNContactContentUnitaryViewController__lookupStaticIdentity__block_invoke_2;
  v7[3] = &unk_1E74E77C0;
  v7[4] = WeakRetained;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

uint64_t __62__CNContactContentUnitaryViewController__lookupStaticIdentity__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHadAtLeastOneVerifiedHandle:{objc_msgSend(*(a1 + 32), "_hasAtLeastOneVerifiedHandle")}];
  if ([*(a1 + 32) isEditing] && *(a1 + 40))
  {
    v2 = [*(a1 + 32) cardStaticIdentityGroup];
    v3 = [*(a1 + 40) verificationCode];
    [v2 addIdentity:v3 isNew:0];

    v4 = *(a1 + 32);
    v5 = [v4 cardStaticIdentityGroup];
    v6 = [*(a1 + 32) contactView];
    [v4 reloadCardGroup:v5 forTableView:v6];
  }

  v7 = *(a1 + 32);

  return [v7 _lookupKTHandlesIfNeeded];
}

- (void)_reloadGroupEditingContext
{
  v3 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];

  if (v3)
  {
    v4 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
    v6 = [v4 parentGroups];

    v5 = [[CNUIGroupEditingContext alloc] initWithOriginalGroups:v6];
    [(CNContactContentUnitaryViewController *)self setGroupEditingContext:v5];
  }
}

- (BOOL)hasExistingGroups
{
  v2 = [(CNContactContentUnitaryViewController *)self contactStore];
  v3 = [v2 hasGroups];

  return v3;
}

- (void)_reloadGroupMembershipGroup
{
  if (![(CNContactContentUnitaryViewController *)self showsGroupMembership])
  {
    return;
  }

  v3 = [(CNContactContentUnitaryViewController *)self contact];
  if ([v3 isSuggested])
  {
    goto LABEL_5;
  }

  v4 = [(CNContactContentUnitaryViewController *)self contact];
  if ([v4 isCoreRecentsAccepted])
  {

LABEL_5:
    goto LABEL_6;
  }

  v7 = [(CNContactContentUnitaryViewController *)self hasExistingGroups];

  if (v7)
  {
    if (!self->_addToGroupAction)
    {
      v8 = [(CNContactContentUnitaryViewController *)self _addToGroupAction];
      addToGroupAction = self->_addToGroupAction;
      self->_addToGroupAction = v8;
    }

    v10 = [CNCardGroupMembershipGroup alloc];
    v11 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v12 = [(CNCardGroup *)v10 initWithContact:v11];
    [(CNContactContentUnitaryViewController *)self setCardGroupMembershipGroup:v12];

    v13 = [(CNContactContentUnitaryViewController *)self groupsAndContainersSaveManager];
    v14 = [(CNContactContentUnitaryViewController *)self contact];
    v27 = [v13 parentGroupsForContact:v14];

    v15 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
    [v15 setParentGroups:v27];

    v16 = [(CNContactContentUnitaryViewController *)self addToGroupAction];
    [v16 setContactParentGroups:v27];

    if ([(CNContactContentUnitaryViewController *)self allowsEditing])
    {
      v17 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
      v18 = [(CNContactContentUnitaryViewController *)self addToGroupAction];
      v19 = CNContactsUIBundle();
      v20 = [v19 localizedStringForKey:@"ADD_TO_LIST_TABLE_CELL_TITLE_DISPLAY_MODE" value:&stru_1F0CE7398 table:@"Localized"];
      [v17 addAction:v18 withTitle:v20];

      v21 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
      if (v21)
      {
      }

      else if ([(CNContactContentUnitaryViewController *)self isEditing])
      {
        [(CNContactContentUnitaryViewController *)self _reloadGroupEditingContext];
      }

      v22 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
      v23 = [v22 groupsToDisplayForEditing];
      v24 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
      [v24 setGroupsToDisplayForEditing:v23];
    }

    if ([(CNContactContentUnitaryViewController *)self isEditing])
    {
      v25 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
      v26 = [v25 groupsToDisplayForEditing];
      [(CNContactAddToGroupAction *)self->_addToGroupAction setContactParentGroups:v26];
    }

    else
    {
      [(CNContactAddToGroupAction *)self->_addToGroupAction setContactParentGroups:v27];
    }

    v6 = v27;
    goto LABEL_7;
  }

LABEL_6:
  cardGroupMembershipGroup = self->_cardGroupMembershipGroup;
  self->_cardGroupMembershipGroup = 0;

  v6 = self->_addToGroupAction;
  self->_addToGroupAction = 0;
LABEL_7:
}

- (void)_reloadLinkedCardsGroup
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(CNContactContentUnitaryViewController *)self shouldReallyShowLinkedContactsForEditingState:[(CNContactContentUnitaryViewController *)self isEditing]])
  {
    if (!self->_linkedCardsAction)
    {
      v3 = [(CNContactContentUnitaryViewController *)self _linkedCardsAction];
      linkedCardsAction = self->_linkedCardsAction;
      self->_linkedCardsAction = v3;
    }

    addLinkedCardAction = self->_addLinkedCardAction;
    if (!addLinkedCardAction)
    {
      v6 = [(CNContactContentUnitaryViewController *)self _addLinkedCardAction];
      v7 = self->_addLinkedCardAction;
      self->_addLinkedCardAction = v6;

      addLinkedCardAction = self->_addLinkedCardAction;
    }

    [(CNContactAddLinkedCardAction *)addLinkedCardAction setEditingLinkedContacts:self->_editingLinkedContacts];
    v8 = [CNCardLinkedCardsGroup alloc];
    v9 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v10 = [(CNCardGroup *)v8 initWithContact:v9];
    [(CNContactContentUnitaryViewController *)self setCardLinkedCardsGroup:v10];

    v11 = [MEMORY[0x1E695DF70] array];
    editingLinkedContacts = self->_editingLinkedContacts;
    if (editingLinkedContacts)
    {
      v13 = editingLinkedContacts;
    }

    else
    {
      v14 = [(CNContactContentUnitaryViewController *)self contact];
      v13 = [v14 mainStoreLinkedContacts];
    }

    v15 = [(CNContactContentUnitaryViewController *)self shadowCopyOfReadonlyContact];

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
          for (i = 0; i != v18; ++i)
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [v11 addObject:{*(*(&v22 + 1) + 8 * i), v22}];
          }

          v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v18);
      }
    }

    if ([v11 count] > 1 || -[CNContactContentUnitaryViewController isEditing](self, "isEditing"))
    {
      v21 = [(CNContactContentUnitaryViewController *)self cardLinkedCardsGroup];
      [v21 setLinkedContacts:v11];
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self setCardLinkedCardsGroup:0];
    }
  }

  else
  {

    [(CNContactContentUnitaryViewController *)self setCardLinkedCardsGroup:0];
  }
}

- (BOOL)shouldReallyShowLinkedContactsForEditingState:(BOOL)a3
{
  v4 = a3;
  if ([(CNContactContentViewController *)self shouldShowLinkedContacts])
  {
    v6 = [(CNContactContentUnitaryViewController *)self contact];
    v7 = [v6 mainStoreLinkedContacts];
    v8 = [v7 count];
    if (v8 < 2)
    {
      if (!v4)
      {
        LOBYTE(v9) = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v3 = [(CNContactContentUnitaryViewController *)self shadowCopyOfReadonlyContact];
      if (v3 && !v4)
      {
        LOBYTE(v9) = 0;
        goto LABEL_9;
      }
    }

    v10 = [(CNContactContentUnitaryViewController *)self contact];
    v9 = [v10 isSuggestedMe] ^ 1;

    if (v8 < 2)
    {
LABEL_11:

      return v9;
    }

LABEL_9:

    goto LABEL_11;
  }

  LOBYTE(v9) = 0;
  return v9;
}

- (void)_reloadContainerContextPreservingChanges:(BOOL)a3
{
  v5 = [(CNContactContentUnitaryViewController *)self containerContext];

  if (v5)
  {
    if (!a3)
    {
      v6 = [(CNContactContentUnitaryViewController *)self containerContext];
      [v6 resetToInitialState];

      v7 = [(CNContactContentViewController *)self parentContainer];

      if (v7)
      {
        v9 = [(CNContactContentUnitaryViewController *)self containerContext];
        v8 = [(CNContactContentViewController *)self parentContainer];
        [v9 addContainer:v8];
      }
    }
  }
}

- (void)_reloadAlertGroups
{
  v3 = [(CNContactContentUnitaryViewController *)self propertyGroups];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695C1E0]];
  [v4 setAllowsDisplayModePickerActions:{-[CNContactContentUnitaryViewController allowsDisplayModePickerActions](self, "allowsDisplayModePickerActions")}];

  v6 = [(CNContactContentUnitaryViewController *)self propertyGroups];
  v5 = [v6 objectForKeyedSubscript:*MEMORY[0x1E695C3F8]];
  [v5 setAllowsDisplayModePickerActions:{-[CNContactContentUnitaryViewController allowsDisplayModePickerActions](self, "allowsDisplayModePickerActions")}];
}

- (void)_reloadMedicalIDGroup
{
  v3 = [(CNContactContentUnitaryViewController *)self environment];
  v4 = [v3 healthStoreManager];

  v5 = [(CNContactContentUnitaryViewController *)self medicalIDLookupToken];
  [v5 cancel];

  [(CNContactContentUnitaryViewController *)self setMedicalIDLookupToken:0];
  [(CNContactContentUnitaryViewController *)self setMedicalIDRegistrationToken:0];
  [(CNContactContentUnitaryViewController *)self setCardMedicalIDGroup:0];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self displayHeaderView];
  }
  v6 = ;
  [v6 setIsEmergencyContact:0];

  if ([(CNContactContentUnitaryViewController *)self allowsActions]&& [(CNContactContentUnitaryViewController *)self allowsCardActions])
  {
    v7 = [(CNContactContentUnitaryViewController *)self contact];
    if ([v7 isCoreRecentsAccepted])
    {
    }

    else
    {
      v8 = [(CNContactContentUnitaryViewController *)self isContactBlocked];

      if (!v8)
      {
        objc_initWeak(&location, self);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __62__CNContactContentUnitaryViewController__reloadMedicalIDGroup__block_invoke;
        v21[3] = &unk_1E74E7268;
        objc_copyWeak(&v23, &location);
        v9 = v4;
        v22 = v9;
        v10 = [v9 registerMedicalIDDataHandler:v21];
        [(CNContactContentUnitaryViewController *)self setMedicalIDRegistrationToken:v10];
        v11 = MEMORY[0x1E6996668];
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __62__CNContactContentUnitaryViewController__reloadMedicalIDGroup__block_invoke_4;
        v17 = &unk_1E74E7290;
        objc_copyWeak(&v20, &location);
        v18 = v9;
        v12 = v10;
        v19 = v12;
        v13 = [v11 tokenWithCancelationBlock:&v14];
        [(CNContactContentUnitaryViewController *)self setMedicalIDLookupToken:v13, v14, v15, v16, v17];

        objc_destroyWeak(&v20);
        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);
        goto LABEL_10;
      }
    }
  }

  [(CNContactContentUnitaryViewController *)self setCardMedicalIDGroup:0];
  [(CNContactContentUnitaryViewController *)self setMedicalIDAction:0];
  [(CNContactContentUnitaryViewController *)self setEmergencyContactAction:0];
  [(CNContactContentUnitaryViewController *)self setEmergencyNumberIdentifier:0];
LABEL_10:
}

void __62__CNContactContentUnitaryViewController__reloadMedicalIDGroup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained environment];
  v9 = [v8 defaultSchedulerProvider];
  v10 = [v9 mainThreadScheduler];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CNContactContentUnitaryViewController__reloadMedicalIDGroup__block_invoke_2;
  v13[3] = &unk_1E74E7240;
  v14 = v6;
  v15 = WeakRetained;
  v16 = *(a1 + 32);
  v17 = v5;
  v11 = v5;
  v12 = v6;
  [v10 performBlock:v13];
}

void __62__CNContactContentUnitaryViewController__reloadMedicalIDGroup__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setMedicalIDRegistrationToken:0];
  [*(a1 + 32) unregisterHandlerForToken:*(a1 + 40)];
}

void __62__CNContactContentUnitaryViewController__reloadMedicalIDGroup__block_invoke_2(uint64_t a1)
{
  v85[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) medicalIDRegistrationToken];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) contact];
    v5 = [v4 phoneNumbers];
    v6 = [v5 count];

    if (([*(a1 + 40) showingMeContact] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEditing") & 1) == 0 && v6)
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

      v12 = [*(a1 + 40) showingMeContact];
      v13 = *(a1 + 40);
      if (v12)
      {
        v14 = [v13 medicalIDAction];

        if (!v14)
        {
          v15 = [CNMedicalIDAction alloc];
          v16 = [*(a1 + 40) contact];
          v17 = [(CNPropertyAction *)v15 initWithContact:v16];
          [*(a1 + 40) setMedicalIDAction:v17];

          v18 = *(a1 + 48);
          v19 = [*(a1 + 40) medicalIDAction];
          [v19 setHealthStoreManager:v18];

          v20 = *(a1 + 40);
          v21 = [v20 medicalIDAction];
          [v21 setDelegate:v20];

          v22 = [*(a1 + 40) medicalIDAction];
          [v22 setShowBackgroundPlatter:0];

          [*(a1 + 40) _notifyObservers];
        }

        v23 = [*(a1 + 40) cardMedicalIDGroup];
        [v23 setAddSpacerFromPreviousGroup:1];

        v24 = [*(a1 + 40) shouldUseStaticHeader];
        v25 = *(a1 + 40);
        if (v24)
        {
          [v25 staticDisplayHeaderView];
        }

        else
        {
          [v25 displayHeaderView];
        }
        v35 = ;
        [v35 setIsEmergencyContact:0];

        if (*(a1 + 56))
        {
          v36 = [*(a1 + 40) isEditing];
          v37 = CNContactsUIBundle();
          v38 = v37;
          if (v36)
          {
            v39 = [v37 localizedStringForKey:@"CARD_ACTION_EDIT_MEDICAL_ID" value:&stru_1F0CE7398 table:@"Localized"];
            v40 = 3;
          }

          else
          {
            v39 = [v37 localizedStringForKey:@"CARD_ACTION_SHOW_MEDICAL_ID" value:&stru_1F0CE7398 table:@"Localized"];
            v40 = 2;
          }
        }

        else
        {
          v38 = CNContactsUIBundle();
          v39 = [v38 localizedStringForKey:@"CARD_ACTION_CREATE_MEDICAL_ID" value:&stru_1F0CE7398 table:@"Localized"];
          v40 = 1;
        }

        v41 = [*(a1 + 40) medicalIDAction];
        [v41 setMedicalIDActionType:v40];

        v42 = [*(a1 + 40) cardMedicalIDGroup];
        v43 = [*(a1 + 40) medicalIDAction];
        v44 = +[CNUIColorRepository contactListEmergencyContactAddTextColor];
        v45 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
        [v42 addAction:v43 withTitle:v39 color:v44 glyphColor:v45 transportType:6];

        v26 = 0;
        goto LABEL_39;
      }

      v26 = 0;
      if (([v13 isEditing] & 1) != 0 || !v6)
      {
        goto LABEL_39;
      }

      v27 = *(a1 + 40);
      v85[0] = *MEMORY[0x1E695C330];
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
      v29 = [v27 _propertyGroupsForKeys:v28];

      v30 = [*(a1 + 40) _allDisplayPropertyItemsFromGroups:v29];
      v31 = [*(a1 + 40) emergencyContactAction];

      if (v31)
      {
        v32 = [*(a1 + 40) contact];
        v33 = [*(a1 + 40) emergencyContactAction];
        [v33 setContact:v32];

        v34 = [*(a1 + 40) emergencyContactAction];
        [v34 setPropertyItems:v30];
      }

      else
      {
        v46 = [CNEmergencyContactAction alloc];
        v47 = [*(a1 + 40) contact];
        v48 = [(CNEmergencyContactAction *)v46 initWithContact:v47 healthStoreManager:*(a1 + 48) propertyItems:v30];
        [*(a1 + 40) setEmergencyContactAction:v48];

        v49 = *(a1 + 40);
        v34 = [v49 emergencyContactAction];
        [v34 setDelegate:v49];
      }

      v50 = [*(a1 + 56) emergencyContacts];
      v51 = [*(a1 + 40) contact];
      v52 = [CNHealthStoreManager emergencyContactMatchingContact:v51];
      v53 = [v50 _cn_firstObjectPassingTest:v52];

      v54 = CNContactsUIBundle();
      v55 = v54;
      if (v53)
      {
        v56 = [v54 localizedStringForKey:@"CARD_ACTION_EMERGENCY_REMOVE" value:&stru_1F0CE7398 table:@"Localized"];

        v26 = [v53 phoneNumberContactIdentifier];
        if (v31)
        {
LABEL_27:
          v57 = [*(a1 + 40) emergencyContactAction];
          v58 = (v53 != 0) ^ [v57 addingToEmergency] ^ 1;

LABEL_30:
          v59 = [*(a1 + 40) emergencyContactAction];
          [v59 setAddingToEmergency:v53 == 0];

          v60 = [*(a1 + 40) shouldUseStaticHeader];
          v61 = *(a1 + 40);
          if (v60)
          {
            [v61 staticDisplayHeaderView];
          }

          else
          {
            [v61 displayHeaderView];
          }
          v62 = ;
          [v62 setIsEmergencyContact:v53 != 0];

          v63 = [*(a1 + 40) contactStore];
          v64 = [*(a1 + 40) emergencyContactAction];
          [v64 setContactStore:v63];

          if (v58)
          {
            [*(a1 + 40) _notifyObservers];
          }

          if (v53)
          {
            +[CNUIColorRepository contactListEmergencyContactGlyphColor];
          }

          else
          {
            +[CNUIColorRepository contactListEmergencyContactAddTextColor];
          }
          v65 = ;
          v66 = [*(a1 + 40) cardMedicalIDGroup];
          v67 = [*(a1 + 40) emergencyContactAction];
          [v66 addAction:v67 withTitle:v56 color:v65 transportType:0];

LABEL_39:
          v68 = [*(a1 + 40) contactView];
          v69 = [*(a1 + 40) editingContactView];
          v70 = *(a1 + 40);
          if (v68 == v69)
          {
            [v70 editingGroups];
          }

          else
          {
            [v70 displayGroups];
          }
          v71 = ;

          v72 = MEMORY[0x1E69DD250];
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = __62__CNContactContentUnitaryViewController__reloadMedicalIDGroup__block_invoke_3;
          v81[3] = &unk_1E74E6EE8;
          v73 = v71;
          v74 = *(a1 + 40);
          v82 = v73;
          v83 = v74;
          v75 = v68;
          v84 = v75;
          [v72 performWithoutAnimation:v81];
          v76 = [*(a1 + 40) emergencyNumberIdentifier];
          if (v26 != v76)
          {
            v77 = [*(a1 + 40) emergencyNumberIdentifier];
            v78 = [v26 isEqualToString:v77];

            if (v78)
            {
LABEL_46:

              return;
            }

            [*(a1 + 40) setEmergencyNumberIdentifier:v26];
            v79 = *(a1 + 40);
            v76 = [v79 propertyGroups];
            v80 = [v76 objectForKeyedSubscript:*MEMORY[0x1E695C330]];
            [v79 reloadCardGroup:v80 forTableView:v75];
          }

          goto LABEL_46;
        }
      }

      else
      {
        v56 = [v54 localizedStringForKey:@"CARD_ACTION_EMERGENCY_ADD" value:&stru_1F0CE7398 table:@"Localized"];

        v26 = 0;
        if (v31)
        {
          goto LABEL_27;
        }
      }

      v58 = 1;
      goto LABEL_30;
    }
  }
}

void __62__CNContactContentUnitaryViewController__reloadMedicalIDGroup__block_invoke_3(uint64_t a1)
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
  if (self->_editingContactView == v6)
  {
    v7 = [(CNContactContentUnitaryViewController *)self editingGroups];
    v8 = aBlock;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v9 = __81__CNContactContentUnitaryViewController__addMedicalIDGroupAnimated_forTableView___block_invoke;
  }

  else
  {
    v7 = [(CNContactContentUnitaryViewController *)self displayGroups];
    v8 = &v14;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v9 = __81__CNContactContentUnitaryViewController__addMedicalIDGroupAnimated_forTableView___block_invoke_2;
  }

  v8[2] = v9;
  v8[3] = &unk_1E74E7218;
  v8[4] = self;
  v10 = _Block_copy(v8);
  v11 = [v7 indexOfObjectPassingTest:v10];
  if (v11)
  {
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v7 lastObject];
    }

    else
    {
      [v7 objectAtIndexedSubscript:v11 - 1];
    }
    v12 = ;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup:v14];
  [(CNContactContentUnitaryViewController *)self _addGroup:v13 afterGroup:v12 forTableView:v6 animated:v4];
}

BOOL __81__CNContactContentUnitaryViewController__addMedicalIDGroupAnimated_forTableView___block_invoke(uint64_t a1, void *a2)
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

BOOL __81__CNContactContentUnitaryViewController__addMedicalIDGroupAnimated_forTableView___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) cardGameCenterActionGroup];
  if (v4 == v3)
  {
    v9 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) cardShareLocationGroup];
    if (v5 == v3)
    {
      v9 = 1;
    }

    else
    {
      v6 = [*(a1 + 32) cardFooterGroup];
      if (v6 == v3)
      {
        v9 = 1;
      }

      else
      {
        v7 = [*(a1 + 32) cardBlockContactGroup];
        if (v7 == v3)
        {
          v9 = 1;
        }

        else
        {
          v8 = [*(a1 + 32) cardLinkedCardsGroup];
          v9 = v8 == v3;
        }
      }
    }
  }

  return v9;
}

- (void)_addGroup:(id)a3 afterGroup:(id)a4 forTableView:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    [(CNContactContentUnitaryViewController *)self addCardGroup:v10 afterGroup:v11];
  }

  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0)
  {
    [(CNContactContentUnitaryViewController *)self editingGroups];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self displayGroups];
  }
  v13 = ;
  v14 = v13;
  if (v11 && (v15 = [v13 indexOfObject:v11], v15 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v14 count];
  if (v17 == [v12 numberOfSections])
  {
    [v12 beginUpdates];
    [v14 insertObject:v10 atIndex:v16];
    v18 = [(CNContactContentUnitaryViewController *)self tableViewSectionIndexFromGroupIndex:v16 forTableView:v12];
    v19 = [MEMORY[0x1E696AC90] indexSetWithIndex:v18];
    if (v6)
    {
      v20 = 6;
    }

    else
    {
      v20 = 5;
    }

    [v12 insertSections:v19 withRowAnimation:v20];

    [v12 endUpdates];
  }

  else
  {
    v21 = CNUILogContactCard();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v10;
      _os_log_impl(&dword_199A75000, v21, OS_LOG_TYPE_INFO, "Invalid number of sections detected when adding group %@", &v22, 0xCu);
    }

    [v14 insertObject:v10 atIndex:v16];
    [v12 reloadData];
  }

  [(CNContactContentUnitaryViewController *)self adjustPreferredContentSize];
}

- (void)_reloadMeCardSharedProfileGroup
{
  v3 = [(CNContactContentUnitaryViewController *)self meCardSharedProfileGroup];

  if (!v3)
  {
    v4 = [CNMeCardSharedProfileGroup alloc];
    v5 = [(CNContactContentUnitaryViewController *)self contact];
    v6 = [(CNCardGroup *)v4 initWithContact:v5];
    [(CNContactContentUnitaryViewController *)self setMeCardSharedProfileGroup:v6];

    v8 = [(CNContactContentUnitaryViewController *)self _sharedProfileSettingsAction];
    v7 = [(CNContactContentUnitaryViewController *)self meCardSharedProfileGroup];
    [v7 setSharedProfileSettingsAction:v8];
  }
}

- (void)_reloadSharedProfileGroup
{
  v3 = [(CNContactContentUnitaryViewController *)self cardSharedProfileGroup];
  if (!v3)
  {
    if ([(CNContactContentUnitaryViewController *)self isContactBlocked])
    {
      return;
    }

    v4 = [CNCardSharedProfileGroup alloc];
    v6 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v5 = [(CNCardGroup *)v4 initWithContact:v6];
    [(CNContactContentUnitaryViewController *)self setCardSharedProfileGroup:v5];

    v3 = v6;
  }
}

- (void)_reloadNamePickingGroup
{
  v3 = [(CNContactContentUnitaryViewController *)self namePickingGroup];

  if (!v3)
  {
    v4 = [CNCardNamePickingGroup alloc];
    v6 = [(CNContactContentUnitaryViewController *)self contact];
    v5 = [(CNCardGroup *)v4 initWithContact:v6];
    [(CNContactContentUnitaryViewController *)self setNamePickingGroup:v5];
  }
}

- (BOOL)shouldAddGameCenterActionGroup
{
  v3 = [(CNContactContentUnitaryViewController *)self shouldShowGameCenter];
  if (v3)
  {
    if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0 && ([(CNContactContentUnitaryViewController *)self displayGroups], v4 = objc_claimAutoreleasedReturnValue(), v4, v4) && ([(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = [(CNContactContentUnitaryViewController *)self displayGroups];
      v7 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
      v8 = [v6 _cn_containsObject:v7];

      LOBYTE(v3) = v8 ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)shouldAddGameCenterGroup
{
  v3 = [(CNContactContentUnitaryViewController *)self shouldShowGameCenter];
  if (v3)
  {
    if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0 && ([(CNContactContentUnitaryViewController *)self displayGroups], v4 = objc_claimAutoreleasedReturnValue(), v4, v4) && ([(CNContactContentUnitaryViewController *)self gameCenterGroup], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = [(CNContactContentUnitaryViewController *)self displayGroups];
      v7 = [(CNContactContentUnitaryViewController *)self gameCenterGroup];
      v8 = [v6 _cn_containsObject:v7];

      LOBYTE(v3) = v8 ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)addGameCenterGroupAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactContentUnitaryViewController *)self shouldShowGameCenter]&& [(CNContactContentUnitaryViewController *)self shouldAddGameCenterGroup])
  {
    v5 = [(CNContactContentUnitaryViewController *)self displayGroups];
    v6 = [v5 _cn_indexOfFirstObjectPassingTest:&__block_literal_global_997];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(CNContactContentUnitaryViewController *)self displayGroups];
      v6 = [v7 _cn_indexOfFirstObjectPassingTest:&__block_literal_global_999];
    }

    v11 = 0;
    if (v6 && v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(CNContactContentUnitaryViewController *)self displayGroups];
      v11 = [v8 objectAtIndexedSubscript:v6 - 1];
    }

    v9 = [(CNContactContentUnitaryViewController *)self gameCenterGroup];
    v10 = [(CNContactContentUnitaryViewController *)self displayContactView];
    [(CNContactContentUnitaryViewController *)self _addGroup:v9 afterGroup:v11 forTableView:v10 animated:v3];
  }
}

BOOL __68__CNContactContentUnitaryViewController_addGameCenterGroupAnimated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

uint64_t __68__CNContactContentUnitaryViewController_addGameCenterGroupAnimated___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 property];
    v7 = [v6 isEqualToString:*MEMORY[0x1E695C320]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addGameCenterActionGroupAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactContentUnitaryViewController *)self shouldShowGameCenter])
  {
    if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
    {
      v5 = [(CNContactContentUnitaryViewController *)self displayGroups];

      if (v5)
      {
        v6 = [(CNContactContentUnitaryViewController *)self displayGroups];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __74__CNContactContentUnitaryViewController_addGameCenterActionGroupAnimated___block_invoke;
        v13[3] = &unk_1E74E6B20;
        v13[4] = self;
        v7 = [v6 _cn_indexOfFirstObjectPassingTest:v13];

        if (v7 && v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = [(CNContactContentUnitaryViewController *)self displayGroups];
          v9 = [v8 objectAtIndexedSubscript:v7 - 1];
        }

        else
        {
          v8 = [(CNContactContentUnitaryViewController *)self displayGroups];
          v9 = [v8 lastObject];
        }

        v10 = v9;

        v11 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
        v12 = [(CNContactContentUnitaryViewController *)self displayContactView];
        [(CNContactContentUnitaryViewController *)self _addGroup:v11 afterGroup:v10 forTableView:v12 animated:v3];
      }
    }
  }
}

BOOL __74__CNContactContentUnitaryViewController_addGameCenterActionGroupAnimated___block_invoke(uint64_t a1, void *a2)
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
        v8 = v7 != 0;
      }
    }
  }

  return v8;
}

- (void)updateGameCenterGroupAndActionsForContact:(id)a3 relationshipResults:(id)a4
{
  v43 = a3;
  v6 = a4;
  if ([(CNContactContentUnitaryViewController *)self shouldShowGameCenter])
  {
    if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
    {
      v7 = [(CNContactContentUnitaryViewController *)self mutableContact];
      v8 = [v43 isEqual:v7];

      if (v8)
      {
        if ([CNCardGameCenterGroup relationshipResultsContainsFriend:v6])
        {
          v9 = [(CNContactContentUnitaryViewController *)self gameCenterGroup];

          if (v9)
          {
            v10 = [(CNContactContentUnitaryViewController *)self gameCenterGroup];
            [v10 setRelationshipResults:v6];
          }

          else
          {
            v34 = [CNCardGameCenterGroup alloc];
            v35 = [(CNContactContentUnitaryViewController *)self mutableContact];
            v36 = [(CNCardGameCenterGroup *)v34 initWithContact:v35 relationshipResults:v6];
            [(CNContactContentUnitaryViewController *)self setGameCenterGroup:v36];

            [(CNContactContentUnitaryViewController *)self addGameCenterGroupAnimated:1];
          }

          self->_gameCenterFriendStatus = 1;
          v37 = objc_alloc(MEMORY[0x1E6996B58]);
          v38 = [(CNContactContentUnitaryViewController *)self gameCenterGroup];
          v39 = [v38 relationshipResults];
          v40 = [v39 firstObject];
          v41 = [v37 initWithRelationshipResult:v40];
          gameCenterPlayerViewWrapper = self->_gameCenterPlayerViewWrapper;
          self->_gameCenterPlayerViewWrapper = v41;
        }

        else if (_os_feature_enabled_impl() && (-[CNContactContentUnitaryViewController gameCenterManager](self, "gameCenterManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 hasSentInvite], v11, v12))
        {
          v13 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];

          if (!v13)
          {
            v14 = [CNCardGroup alloc];
            v15 = [(CNContactContentUnitaryViewController *)self mutableContact];
            v16 = [(CNCardGroup *)v14 initWithContact:v15];
            [(CNContactContentUnitaryViewController *)self setCardGameCenterActionGroup:v16];
          }

          v17 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
          [v17 removeAllActions];

          v18 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
          v19 = CNContactsUIBundle();
          v20 = [v19 localizedStringForKey:@"GAME_CENTER_ACTION_SENT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
          v21 = [v18 addActionWithTitle:v20 target:self selector:sel__didTapGameCenterSentActionButton_NoOp];

          v22 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
          [v22 setDisplaysDropdownMenu:0];

          if ([(CNContactContentUnitaryViewController *)self shouldAddGameCenterActionGroup])
          {
            [(CNContactContentUnitaryViewController *)self addGameCenterActionGroupAnimated:1];
          }

          v23 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
          v24 = [(CNContactContentUnitaryViewController *)self displayContactView];
          [(CNContactContentUnitaryViewController *)self reloadCardGroup:v23 forTableView:v24];

          v25 = [(CNContactContentUnitaryViewController *)self displayContactView];
          [v25 reloadData];

          self->_gameCenterFriendStatus = 2;
        }

        else if ([CNCardGameCenterGroup shouldShowAddFriendActionForRelationshipResults:v6])
        {
          v26 = [CNCardGroup alloc];
          v27 = [(CNContactContentUnitaryViewController *)self mutableContact];
          v28 = [(CNCardGroup *)v26 initWithContact:v27];
          [(CNContactContentUnitaryViewController *)self setCardGameCenterActionGroup:v28];

          v29 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
          [v29 setDisplaysDropdownMenu:1];

          v30 = [(CNContactContentUnitaryViewController *)self mutableContact];
          v31 = [CNCardGameCenterGroup actionForRelationshipResults:v6 forContact:v30];

          if (!v31)
          {
            goto LABEL_20;
          }

          [v31 setDelegate:self];
          [(CNContactContentUnitaryViewController *)self setGameCenterAddFriendAction:v31];
          v32 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
          v33 = [v31 title];
          [v32 addAction:v31 withTitle:v33];

          [(CNContactContentUnitaryViewController *)self addGameCenterActionGroupAnimated:0];
          self->_gameCenterFriendStatus = 3;
        }

        [(CNContactContentUnitaryViewController *)self _notifyObservers];
      }
    }
  }

LABEL_20:
}

- (void)_reloadGameCenterGroupWithRefresh
{
  if ([(CNContactContentUnitaryViewController *)self shouldShowGameCenter])
  {
    [(CNContactContentUnitaryViewController *)self setRequiresGameCenterRefresh:0];
    v3 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
    v4 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __74__CNContactContentUnitaryViewController__reloadGameCenterGroupWithRefresh__block_invoke;
    v5[3] = &unk_1E74E71D0;
    v5[4] = self;
    [v3 refreshGameCenterRelationshipsForContact:v4 completionHandler:v5];
  }
}

void __74__CNContactContentUnitaryViewController__reloadGameCenterGroupWithRefresh__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) environment];
  v8 = [v7 defaultSchedulerProvider];
  v9 = [v8 mainThreadScheduler];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CNContactContentUnitaryViewController__reloadGameCenterGroupWithRefresh__block_invoke_2;
  v12[3] = &unk_1E74E6EE8;
  v12[4] = *(a1 + 32);
  v13 = v6;
  v14 = v5;
  v10 = v5;
  v11 = v6;
  [v9 performBlock:v12];
}

- (void)_reloadGameCenterGroupWithPreflight
{
  if ([(CNContactContentUnitaryViewController *)self shouldShowGameCenter])
  {
    v3 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
    v4 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __76__CNContactContentUnitaryViewController__reloadGameCenterGroupWithPreflight__block_invoke;
    v5[3] = &unk_1E74E71D0;
    v5[4] = self;
    [v3 getGameCenterRelationshipsForContact:v4 completionHandler:v5];
  }
}

void __76__CNContactContentUnitaryViewController__reloadGameCenterGroupWithPreflight__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) environment];
  v8 = [v7 defaultSchedulerProvider];
  v9 = [v8 mainThreadScheduler];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__CNContactContentUnitaryViewController__reloadGameCenterGroupWithPreflight__block_invoke_2;
  v12[3] = &unk_1E74E6EE8;
  v12[4] = *(a1 + 32);
  v13 = v6;
  v14 = v5;
  v10 = v5;
  v11 = v6;
  [v9 performBlock:v12];
}

- (void)_reloadGameCenterGroup
{
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0 && [(CNContactContentUnitaryViewController *)self shouldShowGameCenter])
  {
    v3 = [(CNContactContentUnitaryViewController *)self gameCenterManager];

    if (!v3)
    {
      v4 = objc_alloc_init(CNCardGameCenterManager);
      [(CNContactContentUnitaryViewController *)self setGameCenterManager:v4];
    }

    v5 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
    v16 = [v5 contact];

    if (v16)
    {
      v6 = [v16 identifier];
      v7 = [(CNContactContentUnitaryViewController *)self mutableContact];
      v8 = [v7 identifier];
      v9 = [v6 isEqualToString:v8];

      if ((v9 & 1) == 0)
      {
        v10 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
        [v10 setHasSentInvite:0];
      }
    }

    v11 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v12 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
    [v12 setContact:v11];

    v13 = [(CNContactContentUnitaryViewController *)self environment];
    v14 = [v13 recentsManager];
    v15 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
    [v15 setRecentsManager:v14];

    if ([(CNContactContentUnitaryViewController *)self requiresGameCenterRefresh])
    {
      [(CNContactContentUnitaryViewController *)self _reloadGameCenterGroupWithRefresh];
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self _reloadGameCenterGroupWithPreflight];
    }
  }
}

- (BOOL)shouldAddShareLocationGroup
{
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0)
  {
    return 0;
  }

  if ([(CNContactContentUnitaryViewController *)self isContactBlocked])
  {
    return 0;
  }

  v3 = [(CNContactContentUnitaryViewController *)self displayGroups];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CNContactContentUnitaryViewController *)self displayGroups];
  v6 = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
  v7 = [v5 _cn_containsObject:v6];

  return v7 ^ 1;
}

- (void)_addShareLocationGroupAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactContentUnitaryViewController *)self shouldAddShareLocationGroup])
  {
    if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
    {
      v5 = [(CNContactContentUnitaryViewController *)self displayGroups];

      if (v5)
      {
        v6 = [(CNContactContentUnitaryViewController *)self displayGroups];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __72__CNContactContentUnitaryViewController__addShareLocationGroupAnimated___block_invoke;
        v13[3] = &unk_1E74E6B20;
        v13[4] = self;
        v7 = [v6 _cn_indexOfFirstObjectPassingTest:v13];

        if (v7 && v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = [(CNContactContentUnitaryViewController *)self displayGroups];
          v9 = [v8 objectAtIndexedSubscript:v7 - 1];
        }

        else
        {
          v8 = [(CNContactContentUnitaryViewController *)self displayGroups];
          v9 = [v8 lastObject];
        }

        v10 = v9;

        v11 = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
        v12 = [(CNContactContentUnitaryViewController *)self displayContactView];
        [(CNContactContentUnitaryViewController *)self _addGroup:v11 afterGroup:v10 forTableView:v12 animated:v3];
      }
    }
  }
}

BOOL __72__CNContactContentUnitaryViewController__addShareLocationGroupAnimated___block_invoke(uint64_t a1, void *a2)
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

- (BOOL)shouldAddDefaultAppGroup
{
  if ([(CNContactContentUnitaryViewController *)self isContactBlocked])
  {
    return 0;
  }

  if (![(CNContactContentUnitaryViewController *)self canDisplayDefaultAppGroup])
  {
    return 0;
  }

  v3 = [(CNContactContentUnitaryViewController *)self displayGroups];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CNContactContentUnitaryViewController *)self cardDefaultAppGroup];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CNContactContentUnitaryViewController *)self displayGroups];
  v6 = [(CNContactContentUnitaryViewController *)self cardDefaultAppGroup];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    return 0;
  }

  v10 = [(CNContactContentUnitaryViewController *)self cardDefaultAppGroup];
  v11 = [v10 contact];

  v12 = [(CNContactContentUnitaryViewController *)self displayGroups];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__CNContactContentUnitaryViewController_shouldAddDefaultAppGroup__block_invoke;
  v14[3] = &unk_1E74E71A8;
  v15 = v11;
  v13 = v11;
  LOBYTE(v11) = [v12 _cn_any:v14];

  v8 = v11 ^ 1;
  return v8;
}

uint64_t __65__CNContactContentUnitaryViewController_shouldAddDefaultAppGroup__block_invoke(uint64_t a1, void *a2)
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

- (void)_addDefaultAppGroupAnimated:(BOOL)a3
{
  v3 = a3;
  v11[2] = *MEMORY[0x1E69E9840];
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    if ([(CNContactContentUnitaryViewController *)self shouldAddDefaultAppGroup])
    {
      v5 = *MEMORY[0x1E695C208];
      v11[0] = *MEMORY[0x1E695C330];
      v11[1] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
      v7 = [(CNContactContentUnitaryViewController *)self _displayGroupsForKeys:v6];

      v8 = [v7 firstObject];
      v9 = [(CNContactContentUnitaryViewController *)self cardDefaultAppGroup];
      v10 = [(CNContactContentUnitaryViewController *)self displayContactView];
      [(CNContactContentUnitaryViewController *)self _addGroup:v9 afterGroup:v8 forTableView:v10 animated:v3];
    }
  }
}

- (void)_reloadDefaultAppGroup
{
  if ([(CNContactContentUnitaryViewController *)self shouldAddDefaultAppGroup])
  {
    v16 = +[CNCapabilitiesManager defaultCapabilitiesManager];
    v3 = [v16 isDefaultPhoneCallAppThirdParty];
    v4 = v16;
    if (v3)
    {
      v5 = [v16 defaultPhoneCallAppBundleIdentifier];
      v6 = +[CNUIContactsEnvironment currentEnvironment];
      v7 = [v6 actionDiscoveringEnvironment];
      v8 = [v7 callProviderManager];

      v9 = [v8 thirdPartyCallProviderWithBundleIdentifier:v5];
      v10 = [(CNContactContentUnitaryViewController *)self contact];
      v11 = [v9 doesContactHaveSupportedHandles:v10];

      if (v11)
      {
        [(CNContactContentUnitaryViewController *)self setDefaultAppProvider:v9];
        v12 = [(CNContactContentUnitaryViewController *)self cardDefaultAppGroup];

        if (!v12)
        {
          v13 = [CNCardDefaultAppGroup alloc];
          v14 = [(CNContactContentUnitaryViewController *)self mutableContact];
          v15 = [(CNCardGroup *)v13 initWithContact:v14];
          [(CNContactContentUnitaryViewController *)self setCardDefaultAppGroup:v15];
        }
      }

      v4 = v16;
    }

    MEMORY[0x1EEE66BB8](v3, v4);
  }
}

- (BOOL)shouldAddFaceTimeGroup
{
  if ([(CNContactContentUnitaryViewController *)self isContactBlocked])
  {
    return 0;
  }

  v3 = [(CNContactContentUnitaryViewController *)self displayGroups];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CNContactContentUnitaryViewController *)self cardFaceTimeGroup];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CNContactContentUnitaryViewController *)self displayGroups];
  v6 = [(CNContactContentUnitaryViewController *)self cardFaceTimeGroup];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    return 0;
  }

  v10 = [(CNContactContentUnitaryViewController *)self cardFaceTimeGroup];
  v11 = [v10 contact];

  v12 = [(CNContactContentUnitaryViewController *)self displayGroups];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CNContactContentUnitaryViewController_shouldAddFaceTimeGroup__block_invoke;
  v14[3] = &unk_1E74E71A8;
  v15 = v11;
  v13 = v11;
  LOBYTE(v11) = [v12 _cn_any:v14];

  v8 = v11 ^ 1;
  return v8;
}

uint64_t __63__CNContactContentUnitaryViewController_shouldAddFaceTimeGroup__block_invoke(uint64_t a1, void *a2)
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
  v11[2] = *MEMORY[0x1E69E9840];
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    if ([(CNContactContentUnitaryViewController *)self shouldAddFaceTimeGroup])
    {
      v5 = *MEMORY[0x1E695C208];
      v11[0] = *MEMORY[0x1E695C330];
      v11[1] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
      v7 = [(CNContactContentUnitaryViewController *)self _displayGroupsForKeys:v6];

      v8 = [v7 firstObject];
      v9 = [(CNContactContentUnitaryViewController *)self cardFaceTimeGroup];
      v10 = [(CNContactContentUnitaryViewController *)self displayContactView];
      [(CNContactContentUnitaryViewController *)self _addGroup:v9 afterGroup:v8 forTableView:v10 animated:v3];
    }
  }
}

- (void)_reloadFaceTimeGroup
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  v4 = [v3 isConferencingAvailable];
  v5 = [v3 isFaceTimeAppAvailable];
  if ([(CNContactContentUnitaryViewController *)self canDisplayDefaultAppGroup])
  {
    v6 = [v3 isDefaultPhoneCallAppThirdParty] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  if ((v5 & v4) == 1 && v6 != 0)
  {
    v8 = *MEMORY[0x1E695C208];
    v27[0] = *MEMORY[0x1E695C330];
    v27[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v10 = [(CNContactContentUnitaryViewController *)self _propertyGroupsForKeys:v9];

    v11 = [(CNContactContentUnitaryViewController *)self _allDisplayPropertyItemsFromGroups:v10];
    if (![(CNContactContentUnitaryViewController *)self allowsActions]|| ![(CNContactContentUnitaryViewController *)self allowsConferencing])
    {
      goto LABEL_18;
    }

    v12 = [(CNContactContentUnitaryViewController *)self contact];
    if (([v12 isSuggested] & 1) == 0)
    {
      v13 = [(CNContactContentUnitaryViewController *)self contact];
      if (([v13 isCoreRecentsAccepted] & 1) != 0 || -[CNContactContentUnitaryViewController isContactBlocked](self, "isContactBlocked") || !objc_msgSend(v11, "count"))
      {
      }

      else
      {
        v14 = [(CNContactContentViewController *)self primaryProperty];
        v15 = v14 == 0;

        if (!v15)
        {
LABEL_18:

          goto LABEL_19;
        }

        v16 = [v11 _cn_filter:&__block_literal_global_3_58876];
        v12 = [v16 _cn_map:&__block_literal_global_58871];

        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __61__CNContactContentUnitaryViewController__reloadFaceTimeGroup__block_invoke;
        aBlock[3] = &unk_1E74E7180;
        objc_copyWeak(&v25, &location);
        v23 = _Block_copy(aBlock);
        v17 = MEMORY[0x1E6996B68];
        v18 = [(CNContactContentUnitaryViewController *)self environment];
        v19 = [v18 idsAvailabilityProvider];
        v20 = [(CNContactContentUnitaryViewController *)self environment];
        v21 = [v20 defaultSchedulerProvider];
        v22 = [v17 validateHandlesForFaceTime:v12 availabilityProvider:v19 schedulerProvider:v21 handler:v23];
        [(CNContactContentUnitaryViewController *)self setFaceTimeIDSLookupToken:v22];

        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }
    }

    goto LABEL_18;
  }

LABEL_19:
}

void __61__CNContactContentUnitaryViewController__reloadFaceTimeGroup__block_invoke(uint64_t a1, void *a2)
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
  v4 = [(CNContactContentUnitaryViewController *)self propertyGroups];
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

- (BOOL)_isUnavailableAuthorizationPropertyKey:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self contact];
  v6 = [v5 isKeyAvailable:v4];

  if ((v6 & 1) != 0 || ([MEMORY[0x1E695CD08] allAuthorizationKeysVector], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsKey:", v4), v7, !v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = CNUILogContactCard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "Property %@ will not be displayed as it is unavailable and requires authorization", &v12, 0xCu);
    }

    v10 = 1;
  }

  return v10;
}

- (id)_loadPropertyGroups
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CNContactContentUnitaryViewController__loadPropertyGroups__block_invoke;
  aBlock[3] = &unk_1E74E7158;
  aBlock[4] = self;
  v18 = v3;
  v24 = v18;
  v4 = _Block_copy(aBlock);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = +[CNContactView allCardProperties];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = *MEMORY[0x1E695C200];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 isEqualToString:{v9, v18}])
        {
          v12 = MEMORY[0x1E695CE70];
          v13 = [(CNContactContentUnitaryViewController *)self contact];
          LODWORD(v12) = [v12 isWhitelistedContact:v13];

          if (!v12)
          {
            continue;
          }
        }

        v14 = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
        v15 = [v14 containsObject:v11];

        if ((v15 & 1) == 0 && ![(CNContactContentUnitaryViewController *)self _isUnavailableAuthorizationPropertyKey:v11])
        {
          v4[2](v4, v11);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v4[2](v4, *MEMORY[0x1E695C370]);
  v16 = v18;

  return v18;
}

void __60__CNContactContentUnitaryViewController__loadPropertyGroups__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) policy];
  v4 = [v3 _cnui_maximumNumberOfValuesForProperty:v11];

  if (v4)
  {
    v5 = [*(a1 + 32) groupClassForProperty:v11];
    v6 = [*(a1 + 32) mutableContact];
    v7 = [*(a1 + 32) contactStore];
    v8 = [*(a1 + 32) policy];
    v9 = [*(a1 + 32) linkedPoliciesByContactIdentifier];
    v10 = [v5 groupForProperty:v11 contact:v6 store:v7 policy:v8 linkedPolicies:v9];

    [*(a1 + 40) setObject:v10 forKeyedSubscript:v11];
  }
}

- (Class)groupClassForProperty:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:*MEMORY[0x1E695C1E0]] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C3F8]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C370]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C200]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C1C0]) & 1) == 0)
  {
    [v3 isEqualToString:*MEMORY[0x1E695C3C8]];
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
          [v10 setAllowsTTY:{-[CNContactContentUnitaryViewController contactSupportsTTYCalls](self, "contactSupportsTTYCalls")}];
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
    aBlock[2] = __81__CNContactContentUnitaryViewController__updateIMessageTransportButtonsForItems___block_invoke;
    aBlock[3] = &unk_1E74E7130;
    v31 = v17;
    v32 = v27;
    v18 = v17;
    v19 = _Block_copy(aBlock);
    v20 = MEMORY[0x1E6996B68];
    v21 = [(CNContactContentUnitaryViewController *)v26 environment];
    v22 = [v21 idsAvailabilityProvider];
    v23 = [(CNContactContentUnitaryViewController *)v26 environment];
    v24 = [v23 defaultSchedulerProvider];
    v25 = [v20 validateHandlesForIMessage:v18 availabilityProvider:v22 schedulerProvider:v24 handler:v19];
    [(CNContactContentUnitaryViewController *)v26 setIMessageIDSLookupToken:v25];
  }
}

void __81__CNContactContentUnitaryViewController__updateIMessageTransportButtonsForItems___block_invoke(uint64_t a1, void *a2)
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
    v17[2] = __81__CNContactContentUnitaryViewController__updateIMessageTransportButtonsForItems___block_invoke_2;
    v17[3] = &unk_1E74E70E0;
    v18 = v6;
    v8 = [v7 _cn_firstObjectPassingTest:v17];
    v9 = *(a1 + 40);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __81__CNContactContentUnitaryViewController__updateIMessageTransportButtonsForItems___block_invoke_3;
    v15 = &unk_1E74E7108;
    v16 = v8;
    v10 = v8;
    v11 = [v9 _cn_firstObjectPassingTest:&v12];
    [v11 setAllowsIMessage:{objc_msgSend(v3, "isAvailable", v12, v13, v14, v15)}];
  }
}

uint64_t __81__CNContactContentUnitaryViewController__updateIMessageTransportButtonsForItems___block_invoke_3(uint64_t a1, void *a2)
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
    [(CNContactContentUnitaryViewController *)self _updateIMessageTransportButtonsForItems:v5];
  }

  if ([v4 isPhoneAppAvailable])
  {
    [(CNContactContentUnitaryViewController *)self _updatePhoneTransportButtonsForItems:v5];
  }

  if ([v4 isMailAppAvailable])
  {
    [(CNContactContentUnitaryViewController *)self _updateEmailTransportButtonsForItems:v5];
  }

  [(CNContactContentUnitaryViewController *)self _updateTTYTransportButtonsForItems:v5];
}

- (void)_updateAvailableTransports
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    v3 = *MEMORY[0x1E695C208];
    v7[0] = *MEMORY[0x1E695C330];
    v7[1] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
    v5 = [(CNContactContentUnitaryViewController *)self _propertyGroupsForKeys:v4];

    v6 = [(CNContactContentUnitaryViewController *)self _allDisplayPropertyItemsFromGroups:v5];
    [(CNContactContentUnitaryViewController *)self _updateAvailableTransportsForItems:v6];
  }
}

- (id)_addAddressingGrammarAction
{
  v3 = [CNContactAddAddressingGrammarAction alloc];
  v4 = [(CNContactContentUnitaryViewController *)self mutableContact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  [(CNContactAction *)v5 setDelegate:self];

  return v5;
}

- (id)_allDisplayPropertyItemsFromGroups:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 displayItems];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v4 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_clearRecentsDataAction
{
  v3 = [(CNContactContentUnitaryViewController *)self recentsData];

  if (v3 && ![(CNContactContentUnitaryViewController *)self isSuggestedContact])
  {
    v5 = [CNContactClearRecentsDataAction alloc];
    v6 = [(CNContactContentUnitaryViewController *)self recentsData];
    v7 = [(CNContactContentUnitaryViewController *)self environment];
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
  v3 = [(CNContactContentUnitaryViewController *)self contactFormatter];
  v4 = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [v3 stringFromContact:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:v5];
    v7 = objc_alloc(MEMORY[0x1E695CD78]);
    v8 = [(CNContactContentUnitaryViewController *)self contactFormatter];
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
    v23 = __Block_byref_object_copy__64581;
    v24 = __Block_byref_object_dispose__64582;
    v25 = 0;
    v12 = [(CNContactContentUnitaryViewController *)self contactStore];
    v18[4] = &v20;
    v19 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__CNContactContentUnitaryViewController__updateExistingContactAction__block_invoke;
    v18[3] = &unk_1E74E6F60;
    [v12 enumerateContactsWithFetchRequest:v11 error:&v19 usingBlock:v18];
    v13 = v19;

    if (v21[5])
    {
      v14 = [CNContactUpdateExistingContactAction alloc];
      v15 = [(CNContactContentUnitaryViewController *)self contact];
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

void __69__CNContactContentUnitaryViewController__updateExistingContactAction__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
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
    v5 = [(CNContactContentUnitaryViewController *)self environment];
    v6 = [v5 idsAvailabilityProvider];
    v7 = [(CNShareLocationController *)v4 initWithIDSAvailabilityProvider:v6];
    v8 = self->_shareLocationController;
    self->_shareLocationController = v7;

    [(CNShareLocationController *)self->_shareLocationController setShareLocationDelegate:self];
    shareLocationController = self->_shareLocationController;
  }

  return shareLocationController;
}

- (id)_sharedProfileSettingsAction
{
  v3 = [CNContactSharedProfileSettingsAction alloc];
  v4 = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  [(CNContactAction *)v5 setDelegate:self];
  v6 = [(CNContactContentUnitaryViewController *)self contactStore];
  [(CNContactSharedProfileSettingsAction *)v5 setContactStore:v6];

  return v5;
}

- (id)_addToExistingContactAction
{
  v3 = [CNContactAddToExistingContactAction alloc];
  v4 = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  [(CNContactAction *)v5 setDelegate:self];

  return v5;
}

- (id)_addCreateNewContactAction
{
  v3 = [CNContactCreateNewContactAction alloc];
  v4 = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  [(CNContactAction *)v5 setDelegate:self];
  [(CNContactCreateNewContactAction *)v5 setPresentingViewController:self];

  return v5;
}

- (id)_addNewFieldAction
{
  v3 = [CNContactAddNewFieldAction alloc];
  v4 = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  v6 = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
  [(CNContactAddNewFieldAction *)v5 setProhibitedPropertyKeys:v6];

  [(CNContactAction *)v5 setDelegate:self];
  [(CNContactAddNewFieldAction *)v5 setGroupPickerDelegate:self];

  return v5;
}

- (id)_addFavoriteActionWithConferencing:(BOOL)a3 telephony:(BOOL)a4
{
  v16[4] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695C208];
  v16[0] = *MEMORY[0x1E695C330];
  v16[1] = v5;
  v6 = *MEMORY[0x1E695C2B0];
  v16[2] = *MEMORY[0x1E695C3D0];
  v16[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  v8 = [(CNContactContentUnitaryViewController *)self _propertyGroupsForKeys:v7];

  v9 = [(CNContactContentUnitaryViewController *)self _allDisplayPropertyItemsFromGroups:v8];
  v10 = [CNContactAddFavoriteAction alloc];
  v11 = [(CNContactContentUnitaryViewController *)self contact];
  v12 = [(CNContactContentUnitaryViewController *)self environment];
  v13 = [v12 inProcessFavorites];
  v14 = [(CNContactAddFavoriteAction *)v10 initWithContact:v11 propertyItems:v9 favorites:v13];

  [(CNContactAction *)v14 setDelegate:self];

  return v14;
}

- (id)_shareContactAction
{
  v3 = [(CNContactContentUnitaryViewController *)self contact];
  v4 = [v3 mainStoreLinkedContacts];
  if ([v3 isUnified])
  {
    v5 = [v3 linkedContacts];
    v6 = [v5 isEqual:v4];

    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x1E695CD58] unifyContacts:v4];

      v3 = v7;
    }
  }

  v8 = [(CNContactAction *)[CNContactShareContactAction alloc] initWithContact:v3];
  if ([(CNContactShareContactAction *)v8 canPerformAction])
  {
    [(CNContactAction *)v8 setDelegate:self];
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)_selectContainersAction
{
  v3 = objc_alloc_init(CNContactSelectContainersAction);
  [(CNContactAction *)v3 setDelegate:self];

  return v3;
}

- (id)_addToGroupAction
{
  v3 = [CNContactAddToGroupAction alloc];
  v4 = [(CNContactContentUnitaryViewController *)self mutableContact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  v6 = [(CNContactContentUnitaryViewController *)self contactStore];
  [(CNContactAddToGroupAction *)v5 setContactStore:v6];

  [(CNContactAction *)v5 setDelegate:self];
  v7 = [(CNContactContentUnitaryViewController *)self managedConfiguration];
  [(CNContactAddToGroupAction *)v5 setManagedConfiguration:v7];

  return v5;
}

- (id)_addLinkedCardAction
{
  v3 = [CNContactAddLinkedCardAction alloc];
  v4 = [(CNContactContentUnitaryViewController *)self mutableContact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  [(CNContactAction *)v5 setDelegate:self];

  return v5;
}

- (id)_linkedCardsAction
{
  v3 = [CNPropertyLinkedCardsAction alloc];
  v4 = [(CNContactContentUnitaryViewController *)self mutableContact];
  v5 = [(CNPropertyLinkedCardsAction *)v3 initWithContact:v4];

  [(CNContactAction *)v5 setDelegate:self];
  [(CNPropertyLinkedCardsAction *)v5 setContactDelegate:self];

  return v5;
}

- (id)_faceTimeAction
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695C208];
  v11[0] = *MEMORY[0x1E695C330];
  v11[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v5 = [(CNContactContentUnitaryViewController *)self _propertyGroupsForKeys:v4];

  v6 = [(CNContactContentUnitaryViewController *)self _allDisplayPropertyItemsFromGroups:v5];
  v7 = [CNPropertyFaceTimeAction alloc];
  v8 = [(CNContactContentUnitaryViewController *)self contact];
  v9 = [(CNPropertyFaceTimeAction *)v7 initWithContact:v8 propertyItems:v6];

  [(CNContactAction *)v9 setDelegate:self];

  return v9;
}

- (id)_sendMessageActionAllowingEmailIDs:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *MEMORY[0x1E695C208];
    v17 = *MEMORY[0x1E695C330];
    v18 = v4;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v17;
    v7 = 2;
  }

  else
  {
    v16 = *MEMORY[0x1E695C330];
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v16;
    v7 = 1;
  }

  v8 = [v5 arrayWithObjects:v6 count:{v7, v16, v17, v18, v19}];
  v9 = [(CNContactContentUnitaryViewController *)self _propertyGroupsForKeys:v8];

  v10 = [(CNContactContentUnitaryViewController *)self _allDisplayPropertyItemsFromGroups:v9];
  v11 = [CNPropertySendMessageAction alloc];
  v12 = [(CNContactContentUnitaryViewController *)self contact];
  v13 = [(CNContactContentUnitaryViewController *)self actionsDataSource];
  v14 = [(CNPropertySendMessageAction *)v11 initWithContact:v12 propertyItems:v10 actionDataSource:v13];

  [(CNContactAction *)v14 setDelegate:self];

  return v14;
}

- (id)_displayGroupsForKeys:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6996530];
  v6 = [(CNContactContentUnitaryViewController *)self displayGroups];
  LODWORD(v5) = (*(v5 + 16))(v5, v6);

  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  else
  {
    v8 = [(CNContactContentUnitaryViewController *)self _propertyGroupsForKeys:v4];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__CNContactContentUnitaryViewController__displayGroupsForKeys___block_invoke;
    v10[3] = &unk_1E74E6E48;
    v10[4] = self;
    v7 = [v8 _cn_filter:v10];
  }

  return v7;
}

uint64_t __63__CNContactContentUnitaryViewController__displayGroupsForKeys___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 displayGroups];
  v5 = [v4 containsObject:v3];

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
        v12 = [(CNContactContentUnitaryViewController *)self propertyGroups];
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

- (void)_setupCustomActions
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(CNContactContentUnitaryViewController *)self allowsEditInApp])
  {
    v3 = [(CNContactContentUnitaryViewController *)self contact];
    v4 = [v3 isSuggested];

    if ((v4 & 1) == 0)
    {
      v5 = [CNEditInAppAction alloc];
      v6 = [(CNContactContentUnitaryViewController *)self contact];
      v7 = [(CNContactContentUnitaryViewController *)self activityManager];
      v8 = [(CNEditInAppAction *)v5 initWithContact:v6 activityManager:v7];

      v9 = [(CNContactContentUnitaryViewController *)self cardFooterGroup];
      v10 = [(CNEditInAppAction *)v8 title];
      [v9 addAction:v8 withTitle:v10];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [(CNContactContentUnitaryViewController *)self customActions];
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

- (void)_setupEditingCardActions
{
  v3 = [(CNContactContentUnitaryViewController *)self policy];
  v4 = [v3 isReadonly];

  if (v4)
  {
    return;
  }

  [(CNContactContentUnitaryViewController *)self _setupSuggestionActions];
  [(CNContactContentUnitaryViewController *)self _setupAcceptedContactActions];
  v5 = [(CNContactContentUnitaryViewController *)self alreadyPickedGroups];
  v6 = [(CNContactContentUnitaryViewController *)self policy];
  v7 = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
  v8 = [(CNContactContentUnitaryViewController *)self contact];
  v9 = [CNContactPropertyGroupPickerViewController propertiesLeftToPickWithPickedGroups:v5 policy:v6 prohibitedPropertyKeys:v7 contact:v8];

  if (v9)
  {
    v10 = [(CNContactContentUnitaryViewController *)self _addNewFieldAction];
    [(CNContactContentUnitaryViewController *)self setAddNewFieldAction:v10];

    v11 = [(CNContactContentUnitaryViewController *)self cardEditingActionsGroup];
    v12 = [(CNContactContentUnitaryViewController *)self addNewFieldAction];
    v13 = CNContactsUIBundle();
    v14 = [v13 localizedStringForKey:@"ADD_MORE_PROPERTIES" value:&stru_1F0CE7398 table:@"Localized"];
    [v11 addAction:v12 withTitle:v14];
  }

  v15 = [(CNContactContentUnitaryViewController *)self contact];
  v16 = [v15 isSuggestedMe];

  if (v16)
  {
    v17 = [CNContactIgnoreDonatedInformationAction alloc];
    v18 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v19 = objc_alloc_init(MEMORY[0x1E6996448]);
    v20 = [(CNContactContentUnitaryViewController *)self environment];
    v21 = [v20 componentsFactory];
    v22 = [(CNContactIgnoreDonatedInformationAction *)v17 initWithContact:v18 donationStore:v19 componentsFactory:v21];
    [(CNContactContentUnitaryViewController *)self setIgnoreContactAction:v22];

    v23 = [(CNContactContentUnitaryViewController *)self ignoreContactAction];
    [v23 setDelegate:self];

    v24 = [(CNContactContentUnitaryViewController *)self ignoreContactAction];
    [v24 setDestructive:1];

    v25 = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
    v26 = [(CNContactContentUnitaryViewController *)self ignoreContactAction];
    v27 = CNContactsUIBundle();
    v28 = v27;
    v29 = @"CARD_ACTION_IGNORE_CARD";
  }

  else
  {
    v25 = [(CNContactContentUnitaryViewController *)self contact];
    if (([v25 isUnknown] & 1) != 0 || -[CNContactContentViewController editingProposedInformation](self, "editingProposedInformation"))
    {
      goto LABEL_9;
    }

    if ([(CNContactContentViewController *)self allowsDeletion])
    {
    }

    else
    {
      v34 = [(CNContactContentUnitaryViewController *)self saveWasAuthorized];

      if (!v34)
      {
        goto LABEL_10;
      }
    }

    v35 = [CNContactDeleteContactAction alloc];
    v36 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v37 = [(CNContactContentUnitaryViewController *)self environment];
    v38 = [v37 recentsManager];
    v39 = [(CNContactContentUnitaryViewController *)self environment];
    v40 = [v39 componentsFactory];
    v41 = [(CNContactDeleteContactAction *)v35 initWithContact:v36 recentsManager:v38 componentsFactory:v40];
    [(CNContactContentUnitaryViewController *)self setDeleteContactAction:v41];

    v42 = [(CNContactContentUnitaryViewController *)self deleteContactAction];
    [v42 setDelegate:self];

    v43 = [(CNContactContentUnitaryViewController *)self deleteContactAction];
    [v43 setDestructive:1];

    v25 = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
    v26 = [(CNContactContentUnitaryViewController *)self deleteContactAction];
    v27 = CNContactsUIBundle();
    v28 = v27;
    v29 = @"CARD_ACTION_DELETE_CARD";
  }

  v30 = [v27 localizedStringForKey:v29 value:&stru_1F0CE7398 table:@"Localized"];
  [v25 addAction:v26 withTitle:v30];

LABEL_9:
LABEL_10:
  if ([(CNContactContentUnitaryViewController *)self shouldAllowContainerPicking])
  {
    v31 = [(CNContactContentUnitaryViewController *)self _selectContainersAction];
    [(CNContactContentUnitaryViewController *)self setSelectContainersAction:v31];

    v32 = [(CNContactContentUnitaryViewController *)self selectContainersAction];
    [v32 setDelegate:self];
  }

  if (self->_addAddressingGrammarAction)
  {
    v44 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v33 = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
    [v33 setContact:v44];
  }

  else
  {
    v44 = [(CNContactContentUnitaryViewController *)self _addAddressingGrammarAction];
    [(CNContactContentUnitaryViewController *)self setAddAddressingGrammarAction:?];
  }
}

- (void)_setupAddToAddressBookActions
{
  v47 = [(CNContactContentUnitaryViewController *)self contact];
  if ([v47 isUnknown])
  {
    v3 = [(CNContactContentUnitaryViewController *)self allowsAddingToAddressBook];

    if (!v3)
    {
      return;
    }

    v4 = [(CNContactContentUnitaryViewController *)self _addCreateNewContactAction];
    [(CNContactContentUnitaryViewController *)self setCreateNewContactAction:v4];

    v5 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    v6 = [(CNContactContentUnitaryViewController *)self createNewContactAction];
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"UNKNOWN_CARD_CREATE_NEW_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    [v5 addAction:v6 withTitle:v8];

    v9 = [(CNContactContentUnitaryViewController *)self _addToExistingContactAction];
    [(CNContactContentUnitaryViewController *)self setAddToExistingContactAction:v9];

    v10 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    v11 = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:@"UNKNOWN_CARD_ADD_TO_EXISTING_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    [v10 addAction:v11 withTitle:v13];

    v47 = [(CNContactContentUnitaryViewController *)self _updateExistingContactAction];
    if (v47)
    {
      [(CNContactContentUnitaryViewController *)self setUpdateExistingContactAction:v47];
      v14 = MEMORY[0x1E696AEC0];
      v15 = CNContactsUIBundle();
      v16 = [v15 localizedStringForKey:@"UNKNOWN_CARD_ADD_UPDATE_CONTACT-%@" value:&stru_1F0CE7398 table:@"Localized"];
      v17 = [(CNContactContentUnitaryViewController *)self contactFormatter];
      v18 = [v47 existingContact];
      v19 = [v17 stringFromContact:v18];
      v20 = [v14 stringWithFormat:v16, v19];

      v21 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
      [v21 addAction:v47 withTitle:v20];
    }

    v22 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];

    if (v22)
    {
      v23 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      v24 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
      v25 = CNContactsUIBundle();
      v26 = [v25 localizedStringForKey:@"SUGGESTION_IGNORE_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
      v27 = +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
      [v23 addAction:v24 withTitle:v26 color:v27 transportType:0];
    }

    v28 = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];

    if (v28)
    {
      v29 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      v30 = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];
      v31 = CNContactsUIBundle();
      v32 = [v31 localizedStringForKey:@"CARD_ACTION_DELETE_ACCEPTED" value:&stru_1F0CE7398 table:@"Localized"];
      v33 = +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
      [v29 addAction:v30 withTitle:v32 color:v33 transportType:0];
    }

    v34 = [(CNContactContentUnitaryViewController *)self contact];
    v35 = [v34 isCoreRecentsAccepted];

    if (v35)
    {
      v36 = objc_alloc_init(MEMORY[0x1E695CD80]);
      v37 = [(CNContactContentUnitaryViewController *)self contact];
      v38 = [v36 stringFromContact:v37];

      LODWORD(v37) = (*(*MEMORY[0x1E6996568] + 16))();
      v39 = CNContactsUIBundle();
      v40 = v39;
      if (v37)
      {
        v41 = [v39 localizedStringForKey:@"CARD_ACTION_ACCEPTED_CONTACTS_ADD_NAME" value:&stru_1F0CE7398 table:@"Localized"];

        v42 = [(CNContactContentUnitaryViewController *)self addNameAction];

        if (v42)
        {
          v43 = [(CNContactContentUnitaryViewController *)self cardTopGroup];
          v44 = [(CNContactContentUnitaryViewController *)self addNameAction];
LABEL_16:
          v46 = v44;
          [v43 addAction:v44 withTitle:v41];
        }
      }

      else
      {
        v41 = [v39 localizedStringForKey:@"CARD_ACTION_ACCEPTED_CONTACTS_EDIT_NAME" value:&stru_1F0CE7398 table:@"Localized"];

        v45 = [(CNContactContentUnitaryViewController *)self editNameAction];

        if (v45)
        {
          v43 = [(CNContactContentUnitaryViewController *)self cardTopGroup];
          v44 = [(CNContactContentUnitaryViewController *)self editNameAction];
          goto LABEL_16;
        }
      }
    }
  }
}

- (void)_setupAcceptedContactsNameActions
{
  v3 = [(CNContactContentUnitaryViewController *)self originalContacts];
  v12 = [v3 _cn_filter:&__block_literal_global_920];

  if ([v12 count] == 1)
  {
    v4 = [CNContactAcceptedContactNameAction alloc];
    v5 = [v12 firstObject];
    v6 = [(CNContactAction *)v4 initWithContact:v5];
    [(CNContactContentUnitaryViewController *)self setAddNameAction:v6];

    v7 = [(CNContactContentUnitaryViewController *)self addNameAction];
    [v7 setDelegate:self];

    v8 = [CNContactAcceptedContactNameAction alloc];
    v9 = [v12 firstObject];
    v10 = [(CNContactAction *)v8 initWithContact:v9];
    [(CNContactContentUnitaryViewController *)self setEditNameAction:v10];

    v11 = [(CNContactContentUnitaryViewController *)self editNameAction];
    [v11 setDelegate:self];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self setAddNameAction:0];
    [(CNContactContentUnitaryViewController *)self setEditNameAction:0];
  }
}

uint64_t __74__CNContactContentUnitaryViewController__setupAcceptedContactsNameActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 phoneNumbers];
  v4 = [v3 count];
  v5 = [v2 emailAddresses];
  v6 = [v5 count];

  if ([v2 isCoreRecentsAccepted])
  {
    v7 = 1;
  }

  else if ([v2 isUnknown])
  {
    v7 = (v6 + v4 == 1) & ~[v2 isSuggested];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setupAcceptedContactActions
{
  v3 = [(CNContactContentUnitaryViewController *)self originalContacts];
  v8 = [v3 _cn_filter:&__block_literal_global_917];

  if ([v8 count] == 1)
  {
    v4 = [CNContactDeleteAcceptedAction alloc];
    v5 = [v8 firstObject];
    v6 = [(CNContactAction *)v4 initWithContact:v5];
    [(CNContactContentUnitaryViewController *)self setDeleteAcceptedAction:v6];

    v7 = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];
    [v7 setDelegate:self];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self setDeleteAcceptedAction:0];
  }
}

- (void)_setupSuggestionActions
{
  v3 = [(CNContactContentUnitaryViewController *)self originalContacts];
  v8 = [v3 _cn_filter:&__block_literal_global_914];

  if ([v8 count] == 1)
  {
    v4 = [CNContactSuggestionAction alloc];
    v5 = [v8 firstObject];
    v6 = [(CNContactAction *)v4 initWithContact:v5];
    [(CNContactContentUnitaryViewController *)self setSuggestedContactAction:v6];

    v7 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
    [v7 setDelegate:self];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self setSuggestedContactAction:0];
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

  if ([(CNContactContentUnitaryViewController *)self isContactBlocked]!= v5)
  {
    [(CNContactContentUnitaryViewController *)self setIsContactBlocked:v5];
    v8 = [(CNContactContentUnitaryViewController *)self actionsViewController];
    v9 = [v8 supportedActionTypes];
    v10 = [v9 count];

    if (v10)
    {
      if ([(CNContactContentUnitaryViewController *)self isContactBlocked])
      {
        [MEMORY[0x1E6996BE8] allSupportedActionTypesForBlockedContact];
      }

      else
      {
        [MEMORY[0x1E6996BE8] allSupportedActionTypes];
      }
      v11 = ;
      v12 = [(CNContactContentUnitaryViewController *)self actionsViewController];
      [v12 setSupportedActionTypes:v11];
    }

    [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:v4];
  }
}

- (void)_setupContactBlockingReportingActionPreservingChanges:(BOOL)a3 withUpdate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CNContactContentUnitaryViewController *)self allowsContactBlockingAndReporting]&& ![(CNContactContentUnitaryViewController *)self showingMeContact])
  {
    v7 = [(CNContactContentUnitaryViewController *)self blockReportAction];

    v8 = [(CNContactContentUnitaryViewController *)self blockReportAction];

    if (!v8)
    {
      v9 = [CNContactToggleBlockReportCallerAction alloc];
      v10 = [(CNContactContentUnitaryViewController *)self contact];
      v11 = [(CNContactAction *)v9 initWithContact:v10];
      [(CNContactContentUnitaryViewController *)self setBlockReportAction:v11];

      v12 = [(CNContactContentUnitaryViewController *)self blockReportAction];
      [v12 setDelegate:self];

      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 addObserver:self selector:sel_blockListDidChange_ name:*MEMORY[0x1E6995900] object:0];

      [(CNContactContentUnitaryViewController *)self _notifyObservers];
    }

    v14 = [(CNContactContentUnitaryViewController *)self blockReportAction];
    v15 = [v14 isContactBlockedPreservingChanges:v5];

    if (v7)
    {
      v16 = CNContactsUIBundle();
      v17 = v16;
      if (v15)
      {
        v18 = @"BLOCK_CALLER";
      }

      else
      {
        v18 = @"UNBLOCK_CALLER";
      }

      v19 = [v16 localizedStringForKey:v18 value:&stru_1F0CE7398 table:@"Localized"];

      v20 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      [v20 removeActionWithTitle:v19];
    }

    v21 = CNContactsUIBundle();
    v22 = v21;
    if (v15)
    {
      v23 = @"UNBLOCK_CALLER";
    }

    else
    {
      v23 = @"BLOCK_CALLER";
    }

    v44 = [v21 localizedStringForKey:v23 value:&stru_1F0CE7398 table:@"Localized"];

    v24 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
    [v24 removeActionWithTitle:v44];

    v25 = +[CNUIColorRepository contactsApplicationTintColor];
    v26 = v25;
    if (v15)
    {
      v27 = v25;
    }

    else
    {
      v27 = +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
    }

    v28 = v27;
    v29 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
    v30 = [(CNContactContentUnitaryViewController *)self blockReportAction];
    [v29 addAction:v30 withTitle:v44 color:v28 transportType:0];

    if (v4)
    {
      v31 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      v32 = [(CNContactContentUnitaryViewController *)self displayContactView];
      v33 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:v31 inTableView:v32];

      if (v33 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = [(CNContactContentUnitaryViewController *)self displayContactView];
        [v34 contentOffset];
        v36 = v35;
        v38 = v37;

        v39 = [(CNContactContentUnitaryViewController *)self contactView];
        [v39 beginUpdates];

        v40 = [(CNContactContentUnitaryViewController *)self contactView];
        v41 = [MEMORY[0x1E696AC90] indexSetWithIndex:v33];
        [v40 reloadSections:v41 withRowAnimation:0];

        v42 = [(CNContactContentUnitaryViewController *)self contactView];
        [v42 endUpdates];

        v43 = [(CNContactContentUnitaryViewController *)self contactView];
        [v43 setContentOffset:{v36, v38}];

        [(CNContactContentUnitaryViewController *)self adjustPreferredContentSize];
      }
    }

    [(CNContactContentUnitaryViewController *)self reloadCardActionsForBlockState:v15 preservingChanges:v5];
  }
}

- (void)_setupContactBlockingActionPreservingChanges:(BOOL)a3 withUpdate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CNContactContentUnitaryViewController *)self allowsContactBlocking]&& ![(CNContactContentUnitaryViewController *)self showingMeContact])
  {
    v7 = [(CNContactContentUnitaryViewController *)self blockAction];

    v8 = [(CNContactContentUnitaryViewController *)self blockAction];

    if (!v8)
    {
      v9 = [CNContactToggleBlockCallerAction alloc];
      v10 = [(CNContactContentUnitaryViewController *)self contact];
      v11 = [(CNContactAction *)v9 initWithContact:v10];
      [(CNContactContentUnitaryViewController *)self setBlockAction:v11];

      v12 = [(CNContactContentUnitaryViewController *)self blockAction];
      [v12 setDelegate:self];

      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 addObserver:self selector:sel_blockListDidChange_ name:*MEMORY[0x1E6995900] object:0];

      [(CNContactContentUnitaryViewController *)self _notifyObservers];
    }

    v14 = [(CNContactContentUnitaryViewController *)self blockAction];
    v15 = [v14 isContactBlockedPreservingChanges:v5];

    if (v7)
    {
      v16 = CNContactsUIBundle();
      v17 = v16;
      if (v15)
      {
        v18 = @"BLOCK_THIS_CALLER";
      }

      else
      {
        v18 = @"UNBLOCK_THIS_CALLER";
      }

      v19 = [v16 localizedStringForKey:v18 value:&stru_1F0CE7398 table:@"Localized"];

      v20 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      [v20 removeActionWithTitle:v19];
    }

    v21 = CNContactsUIBundle();
    v22 = v21;
    if (v15)
    {
      v23 = @"UNBLOCK_THIS_CALLER";
    }

    else
    {
      v23 = @"BLOCK_THIS_CALLER";
    }

    v44 = [v21 localizedStringForKey:v23 value:&stru_1F0CE7398 table:@"Localized"];

    v24 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
    [v24 removeActionWithTitle:v44];

    v25 = +[CNUIColorRepository contactsApplicationTintColor];
    v26 = v25;
    if (v15)
    {
      v27 = v25;
    }

    else
    {
      v27 = +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
    }

    v28 = v27;
    v29 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
    v30 = [(CNContactContentUnitaryViewController *)self blockAction];
    [v29 addAction:v30 withTitle:v44 color:v28 transportType:0];

    if (v4)
    {
      v31 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      v32 = [(CNContactContentUnitaryViewController *)self displayContactView];
      v33 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:v31 inTableView:v32];

      if (v33 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = [(CNContactContentUnitaryViewController *)self displayContactView];
        [v34 contentOffset];
        v36 = v35;
        v38 = v37;

        v39 = [(CNContactContentUnitaryViewController *)self contactView];
        [v39 beginUpdates];

        v40 = [(CNContactContentUnitaryViewController *)self contactView];
        v41 = [MEMORY[0x1E696AC90] indexSetWithIndex:v33];
        [v40 reloadSections:v41 withRowAnimation:0];

        v42 = [(CNContactContentUnitaryViewController *)self contactView];
        [v42 endUpdates];

        v43 = [(CNContactContentUnitaryViewController *)self contactView];
        [v43 setContentOffset:{v36, v38}];

        [(CNContactContentUnitaryViewController *)self adjustPreferredContentSize];
      }
    }

    [(CNContactContentUnitaryViewController *)self reloadCardActionsForBlockState:v15 preservingChanges:v5];
  }
}

- (void)setupShareLocationActionReload:(BOOL)a3
{
  if (![(CNContactContentUnitaryViewController *)self showingMeContact]&& ![(CNContactContentUnitaryViewController *)self isContactBlocked]&& !CNUIIsMessages())
  {
    v5 = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
    [v5 setDisplaysDropdownMenu:1];

    v6 = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
    v7 = [(CNContactContentUnitaryViewController *)self shareLocationController];
    [v6 removeActionWithTarget:v7 selector:sel_perform_];

    objc_initWeak(&location, self);
    v8 = [(CNContactContentUnitaryViewController *)self shareLocationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__CNContactContentUnitaryViewController_setupShareLocationActionReload___block_invoke;
    v9[3] = &unk_1E74E7098;
    objc_copyWeak(&v10, &location);
    v11 = a3;
    [v8 canShareWithCompletion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __72__CNContactContentUnitaryViewController_setupShareLocationActionReload___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__64581;
  v15[4] = __Block_byref_object_dispose__64582;
  v16 = 0;
  if (a2)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy__64581;
    v13[4] = __Block_byref_object_dispose__64582;
    v5 = CNContactsUIBundle();
    v14 = [v5 localizedStringForKey:@"SHARE_LOCATION_LABEL_TEXT" value:&stru_1F0CE7398 table:@"Localized"];

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    objc_initWeak(&location, WeakRetained);
    v6 = [WeakRetained shareLocationController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__CNContactContentUnitaryViewController_setupShareLocationActionReload___block_invoke_2;
    v7[3] = &unk_1E74E7070;
    objc_copyWeak(&v8, &location);
    v7[4] = v13;
    v7[5] = v11;
    v7[6] = v15;
    v9 = *(a1 + 40);
    [v6 isSharingWithCompletion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    _Block_object_dispose(v11, 8);
    _Block_object_dispose(v13, 8);
  }

  _Block_object_dispose(v15, 8);
}

void __72__CNContactContentUnitaryViewController_setupShareLocationActionReload___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__CNContactContentUnitaryViewController_setupShareLocationActionReload___block_invoke_3;
  block[3] = &unk_1E74E7048;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  block[4] = WeakRetained;
  v9 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72__CNContactContentUnitaryViewController_setupShareLocationActionReload___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = CNContactsUIBundle();
    v3 = [v2 localizedStringForKey:@"SHARE_LOCATION_STOP_SHARING_LABEL_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [*(a1 + 32) shareLocationController];
  v8 = [CNContactAction contactActionWithTitle:v6 target:v7 selector:sel_perform_ destructive:*(*(*(a1 + 48) + 8) + 24)];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) cardShareLocationGroup];
  [v11 addAction:*(*(*(a1 + 56) + 8) + 40) withTitle:*(*(*(a1 + 40) + 8) + 40)];

  if ([*(a1 + 32) shouldAddShareLocationGroup])
  {
    [*(a1 + 32) _addShareLocationGroupAnimated:1];
  }

  if (*(a1 + 65) == 1)
  {
    v12 = *(a1 + 32);
    v14 = [v12 cardShareLocationGroup];
    v13 = [*(a1 + 32) contactView];
    [v12 reloadCardGroup:v14 forTableView:v13];
  }
}

- (BOOL)contactHasAvailablePropertiesToFavorite:(id)a3 isPhoneAppAvailable:(BOOL)a4 isFaceTimeAppAvailable:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [v8 phoneNumbers];
  v10 = [(CNContactContentUnitaryViewController *)self labeledValuesHasNonSuggestion:v9];

  if (v6 && v10 || ([v8 emailAddresses], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[CNContactContentUnitaryViewController labeledValuesHasNonSuggestion:](self, "labeledValuesHasNonSuggestion:", v11), v11, v5) && (v10 || v12) || (objc_msgSend(v8, "socialProfiles"), v13 = objc_claimAutoreleasedReturnValue(), v14 = -[CNContactContentUnitaryViewController labeledValuesHasNonSuggestion:](self, "labeledValuesHasNonSuggestion:", v13), v13, v14))
  {
    v15 = 1;
  }

  else
  {
    v17 = [v8 instantMessageAddresses];
    v15 = [(CNContactContentUnitaryViewController *)self labeledValuesHasNonSuggestion:v17];
  }

  return v15;
}

- (void)_setupCardActions
{
  if (![(CNContactContentUnitaryViewController *)self allowsActions])
  {
    return;
  }

  v3 = [(CNContactContentUnitaryViewController *)self actionProvider];
  [v3 buildCommunicationLimitsActions];

  v79 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  v76 = [v79 hasCellularTelephonyCapability];
  v4 = [v79 areFavoritesAvailable];
  v5 = [v79 isMMSConfigured];
  v6 = [v79 isMadridConfigured];
  v77 = [v79 isConferencingAvailable];
  v7 = [v79 isMessagesAppAvailable];
  v75 = [v79 isPhoneAppAvailable];
  v78 = [v79 isFaceTimeAppAvailable];
  if ([(CNContactContentUnitaryViewController *)self canDisplayDefaultAppGroup])
  {
    v8 = [v79 isDefaultPhoneCallAppThirdParty] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(CNContactContentUnitaryViewController *)self contact];
  v10 = [v9 phoneNumbers];
  v11 = [v10 count];

  v12 = [(CNContactContentUnitaryViewController *)self contact];
  v13 = [v12 emailAddresses];
  v14 = [v13 count];

  if (([MEMORY[0x1E695CD58] quickActionsEnabled] & 1) == 0)
  {
    if (v7 && ![(CNContactContentUnitaryViewController *)self isContactBlocked]&& (((v11 != 0) & (v76 | v6)) != 0 || ((v14 != 0) & (v5 | v6)) != 0) && ![(CNContactContentUnitaryViewController *)self isInlineContactCard])
    {
      v74 = [(CNContactContentUnitaryViewController *)self _sendMessageActionAllowingEmailIDs:(v5 | v6) & 1];
      [(CNContactContentUnitaryViewController *)self setSendMessageAction:v74];
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self setSendMessageAction:0];
    }
  }

  v15 = [(CNContactContentUnitaryViewController *)self faceTimeAction];
  if (v15)
  {
    goto LABEL_18;
  }

  if ((v77 & ~[(CNContactContentUnitaryViewController *)self isContactBlocked]& ((v11 | v14) != 0) & v78) != 1)
  {
    v15 = 0;
    goto LABEL_18;
  }

  if (v8)
  {
    v15 = [(CNContactContentUnitaryViewController *)self _faceTimeAction];
    [(CNContactContentUnitaryViewController *)self setFaceTimeAction:v15];
LABEL_18:
  }

  [(CNContactContentUnitaryViewController *)self setShareContactAction:0];
  v16 = [(CNContactContentUnitaryViewController *)self isHeaderViewPhotoProhibited];
  if ([(CNContactContentUnitaryViewController *)self allowsSharing])
  {
    v17 = [(CNContactContentUnitaryViewController *)self contact];
    v18 = [v17 isSuggested] | v16;

    if ((v18 & 1) == 0)
    {
      v19 = [(CNContactContentUnitaryViewController *)self _shareContactAction];
      [(CNContactContentUnitaryViewController *)self setShareContactAction:v19];
    }
  }

  if (!v4)
  {
    goto LABEL_26;
  }

  v20 = [(CNContactContentUnitaryViewController *)self contact];
  if (([v20 isUnknown] & 1) != 0 || -[CNContactContentUnitaryViewController isContactBlocked](self, "isContactBlocked"))
  {

LABEL_26:
    [(CNContactContentUnitaryViewController *)self setAddFavoriteAction:0];
    goto LABEL_27;
  }

  v71 = [(CNContactContentUnitaryViewController *)self contact];
  v72 = [(CNContactContentUnitaryViewController *)self contactHasAvailablePropertiesToFavorite:v71 isPhoneAppAvailable:v75 isFaceTimeAppAvailable:v78];

  if (!v72)
  {
    goto LABEL_26;
  }

  v73 = [(CNContactContentUnitaryViewController *)self _addFavoriteActionWithConferencing:v78 & v77 telephony:v75 & v76];
  [(CNContactContentUnitaryViewController *)self setAddFavoriteAction:v73];

LABEL_27:
  if ([(CNContactContentUnitaryViewController *)self allowsCardActions])
  {
    v21 = [(CNContactContentUnitaryViewController *)self contact];
    if ([v21 isSuggested])
    {
LABEL_48:

      goto LABEL_49;
    }

    v22 = [(CNContactContentUnitaryViewController *)self contact];
    v23 = [v22 isCoreRecentsAccepted];

    if ((v23 & 1) == 0)
    {
      if ([(CNContactContentUnitaryViewController *)self allowsSendMessage])
      {
        v24 = [(CNContactContentUnitaryViewController *)self sendMessageAction];
        if (v24)
        {
          v25 = v24;
          v26 = [(CNContactContentViewController *)self primaryProperty];

          if (!v26)
          {
            v27 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
            v28 = [(CNContactContentUnitaryViewController *)self sendMessageAction];
            v29 = CNContactsUIBundle();
            v30 = [v29 localizedStringForKey:@"PHONE_ACTION_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
            [v27 addAction:v28 withTitle:v30];
          }
        }
      }

      v31 = [(CNContactContentUnitaryViewController *)self shareContactAction];

      if (v31)
      {
        v32 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
        v33 = [(CNContactContentUnitaryViewController *)self shareContactAction];
        v34 = CNContactsUIBundle();
        v35 = [v34 localizedStringForKey:@"SHARE_CONTACT_ACTION_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
        [v32 addAction:v33 withTitle:v35];
      }

      v36 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
      if (v36)
      {
        v37 = v36;
        v38 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
        v39 = [v38 canPerformAction];

        if (v39)
        {
          v40 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
          v41 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
          v42 = CNContactsUIBundle();
          v43 = [v42 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
          [v40 addAction:v41 withTitle:v43];
        }
      }

      v44 = [(CNContactContentUnitaryViewController *)self actionProvider];
      v21 = [v44 shareWithFamilyAction];

      if (v21 && [v21 canPerformAction])
      {
        [v21 setDelegate:self];
        v45 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
        v46 = [v21 title];
        [v45 addAction:v21 withTitle:v46];
      }

      v47 = [(CNContactContentUnitaryViewController *)self actionProvider];
      v48 = [v47 stopSharingWithFamilyAction];
      [(CNContactContentUnitaryViewController *)self setStopSharingWithFamilyAction:v48];

      v49 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
      [v49 setDelegate:self];

      if ([(CNContactContentViewController *)self ignoresParentalRestrictions])
      {
        v50 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
        v51 = [v50 canPerformAction];

        if (v51)
        {
          v52 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
          v53 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
          v54 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
          v55 = [v54 title];
          v56 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
          [v52 addAction:v53 withTitle:v55 wrapTitle:{objc_msgSend(v56, "wrapTitle")}];
        }
      }

      v57 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
      v58 = [v57 canPerformAction];

      if (v58)
      {
        v59 = [(CNContactContentUnitaryViewController *)self cardEditingActionsGroup];
        v60 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
        v61 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
        v62 = [v61 title];
        v63 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
        [v59 addAction:v60 withTitle:v62 wrapTitle:{objc_msgSend(v63, "wrapTitle")}];
      }

      [(CNContactContentUnitaryViewController *)self setupShareLocationActionReload:0];
      goto LABEL_48;
    }
  }

LABEL_49:
  v64 = [(CNContactContentUnitaryViewController *)self _clearRecentsDataAction];
  [(CNContactContentUnitaryViewController *)self setClearRecentsDataAction:v64];

  v65 = [(CNContactContentUnitaryViewController *)self clearRecentsDataAction];

  if (v65)
  {
    v66 = [(CNContactContentUnitaryViewController *)self clearRecentsDataAction];
    [v66 setDelegate:self];

    v67 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    v68 = [(CNContactContentUnitaryViewController *)self clearRecentsDataAction];
    v69 = CNContactsUIBundle();
    v70 = [v69 localizedStringForKey:@"CLEAR_RECENTS" value:&stru_1F0CE7398 table:@"Localized"];
    [v67 addAction:v68 withTitle:v70];
  }

  [(CNContactContentUnitaryViewController *)self _notifyObservers];
}

- (void)_retrieveActionsModelPreservingChanges:(BOOL)a3
{
  v5 = [(CNContactContentUnitaryViewController *)self contact];

  if (v5 && ![(CNContactContentUnitaryViewController *)self isInlineContactCard]&& !a3)
  {
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x1E6996BE8] allActionTypes];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__CNContactContentUnitaryViewController__retrieveActionsModelPreservingChanges___block_invoke;
    v7[3] = &unk_1E74E7000;
    v7[4] = self;
    objc_copyWeak(&v8, &location);
    [v6 enumerateObjectsUsingBlock:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __80__CNContactContentUnitaryViewController__retrieveActionsModelPreservingChanges___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actionsDataSource];
  v5 = [*(a1 + 32) contact];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__CNContactContentUnitaryViewController__retrieveActionsModelPreservingChanges___block_invoke_2;
  v8[3] = &unk_1E74E6FD8;
  v6 = v3;
  v9 = v6;
  objc_copyWeak(&v10, (a1 + 40));
  v7 = [v4 consumer:0 actionModelsForContact:v5 actionType:v6 handler:v8];

  objc_destroyWeak(&v10);
}

void __80__CNContactContentUnitaryViewController__retrieveActionsModelPreservingChanges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqual:*MEMORY[0x1E695C150]])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __80__CNContactContentUnitaryViewController__retrieveActionsModelPreservingChanges___block_invoke_3;
    v4[3] = &unk_1E74E6D30;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);

    objc_destroyWeak(&v6);
  }
}

void __80__CNContactContentUnitaryViewController__retrieveActionsModelPreservingChanges___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setContactSupportsTTYCalls:{objc_msgSend(objc_opt_class(), "actionModelIncludesTTY:", *(a1 + 32))}];
  [WeakRetained _updateAvailableTransports];
}

- (void)setAllowsActions:(BOOL)a3
{
  if (self->_allowsActions != a3)
  {
    self->_allowsActions = a3;
    [(CNContactContentUnitaryViewController *)self setNeedsReload];
  }
}

- (void)setupActionsPreservingChanges:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self actionProvider];
  [v5 buildStaticIdentityActions];

  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0 || [(CNContactContentViewController *)self alwaysEditing])
  {

    [(CNContactContentUnitaryViewController *)self _setupEditingCardActions];
  }

  else
  {
    v6 = [(CNCardGroup *)self->_cardActionsGroup actions];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [CNCardGroup alloc];
      v9 = [(CNContactContentUnitaryViewController *)self mutableContact];
      v10 = [(CNCardGroup *)v8 initWithContact:v9];
      cardActionsGroup = self->_cardActionsGroup;
      self->_cardActionsGroup = v10;
    }

    v12 = [(CNCardGroup *)self->_cardShareLocationGroup actions];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [CNCardGroup alloc];
      v15 = [(CNContactContentUnitaryViewController *)self mutableContact];
      v16 = [(CNCardGroup *)v14 initWithContact:v15];
      cardShareLocationGroup = self->_cardShareLocationGroup;
      self->_cardShareLocationGroup = v16;
    }

    [(CNContactContentUnitaryViewController *)self _retrieveActionsModelPreservingChanges:v3];
    [(CNContactContentUnitaryViewController *)self _setupCardActions];
    [(CNContactContentUnitaryViewController *)self _setupContactBlockingActionPreservingChanges:v3 withUpdate:v3 ^ 1];
    [(CNContactContentUnitaryViewController *)self _setupContactBlockingReportingActionPreservingChanges:v3 withUpdate:v3 ^ 1];
    [(CNContactContentUnitaryViewController *)self _setupSuggestionActions];
    [(CNContactContentUnitaryViewController *)self _setupAcceptedContactActions];
    [(CNContactContentUnitaryViewController *)self _setupAcceptedContactsNameActions];
    [(CNContactContentUnitaryViewController *)self _setupAddToAddressBookActions];

    [(CNContactContentUnitaryViewController *)self _setupCustomActions];
  }
}

- (void)_handleCoalescedBlockListDidChange
{
  if ([(CNContactContentUnitaryViewController *)self shouldIgnoreBlockListChange])
  {

    [(CNContactContentUnitaryViewController *)self setShouldIgnoreBlockListChange:0];
  }

  else
  {

    [(CNContactContentUnitaryViewController *)self _setupContactBlockingActionPreservingChanges:0 withUpdate:1];
  }
}

- (void)blockListDidChange:(id)a3
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleCoalescedBlockListDidChange object:0];

  [(CNContactContentUnitaryViewController *)self performSelector:sel__handleCoalescedBlockListDidChange withObject:0 afterDelay:0.1];
}

- (void)updateContactsViewWithBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  ++self->_animating;
  v8 = [(CNContactContentUnitaryViewController *)self contactView];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__CNContactContentUnitaryViewController_updateContactsViewWithBlock_completion___block_invoke;
  v13[3] = &unk_1E74E6F88;
  v14 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__CNContactContentUnitaryViewController_updateContactsViewWithBlock_completion___block_invoke_2;
  v11[3] = &unk_1E74E6FB0;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBatchUpdates:v13 completion:v11];
}

uint64_t __80__CNContactContentUnitaryViewController_updateContactsViewWithBlock_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  --*(*(a1 + 32) + 1356);
  v3 = *(a1 + 32);

  return [v3 reloadDataIfNeeded];
}

- (CGSize)requiredSizeForVisibleTableView
{
  v3 = [(CNContactContentUnitaryViewController *)self displayContactView];
  [v3 contentSize];
  v5 = v4;
  [v3 contentInset];
  v7 = v6;
  v8 = [(CNContactContentUnitaryViewController *)self displayContactView];
  if (![(CNContactContentUnitaryViewController *)self hasPersonHeaderSectionForTableView:v8])
  {

    goto LABEL_5;
  }

  v9 = [(UIViewController *)self ab_isInPopover];

  if (!v9)
  {
LABEL_5:
    *&v10 = 0.0;
    goto LABEL_6;
  }

  *&v10 = 400.0;
LABEL_6:

  v11 = *&v10;
  v12 = v5 + v7;
  result.height = v12;
  result.width = v11;
  return result;
}

- (double)desiredHeightForWidth:(double)a3
{
  v4 = [(CNContactContentUnitaryViewController *)self view];
  [v4 frame];
  [v4 setFrame:?];
  [(CNContactContentUnitaryViewController *)self reloadDataIfNeeded];
  v5 = [(CNContactContentUnitaryViewController *)self contactView];
  v6 = [v5 visibleCells];

  v7 = [(CNContactContentUnitaryViewController *)self view];
  [v7 layoutIfNeeded];

  v8 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  [v8 setNeedsLayout];

  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v9 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    [v9 setNeedsLayout];
  }

  [(CNContactContentUnitaryViewController *)self requiredSizeForVisibleTableView];
  v11 = v10;
  v12 = [v4 superview];
  [v12 frame];
  [v4 setFrame:?];

  return v11;
}

- (void)cleanupRecentPosterMetadata
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CE00]);
  v4 = MEMORY[0x1E695CDF0];
  v5 = [(CNContactContentUnitaryViewController *)self contact];
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
      v11 = [(CNContactContentUnitaryViewController *)self contact];
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
  v5 = [(CNContactContentUnitaryViewController *)self contact];
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
      v11 = [(CNContactContentUnitaryViewController *)self contact];
      v12 = [v11 identifier];
      *buf = 138412290;
      v15 = v12;
      _os_log_debug_impl(&dword_199A75000, v10, OS_LOG_TYPE_DEBUG, "Failed to delete recent image metadata for contact: %@", buf, 0xCu);
    }
  }
}

- (void)cleanupRecentMetadata
{
  [(CNContactContentUnitaryViewController *)self cleanupRecentImageMetadata];

  [(CNContactContentUnitaryViewController *)self cleanupRecentPosterMetadata];
}

- (void)reloadUnifiedContact
{
  v3 = [(CNContactContentUnitaryViewController *)self contact];
  v4 = objc_opt_class();

  v5 = [(CNContactContentUnitaryViewController *)self contact];
  v8 = [v5 linkedContacts];

  v6 = v8;
  if (v8)
  {
    v7 = [v4 unifyContacts:v8];
    [(CNContactContentUnitaryViewController *)self setContact:v7];

    v6 = v8;
  }
}

- (void)addStaticIdentity:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
    [v5 addIdentity:v4 isNew:1];

    v7 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
    v6 = [(CNContactContentUnitaryViewController *)self contactView];
    [(CNContactContentUnitaryViewController *)self reloadCardGroup:v7 forTableView:v6];
  }
}

- (void)removeLinkedContact:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(CNContactContentUnitaryViewController *)self contact];
    v6 = [v5 mainStoreLinkedContacts];
    v7 = [v6 containsObject:v4];

    v8 = [(CNContactContentUnitaryViewController *)self editingLinkedContacts];
    v9 = [v8 containsObject:v4];

    if ((v7 & 1) != 0 || v9)
    {
      v10 = [v4 availableKeyDescriptor];
      v14[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [(CNContactContentUnitaryViewController *)self _setupEditingLinkedContactsForKeys:v11];

      v12 = [(CNContactContentUnitaryViewController *)self editingLinkedContacts];
      [v12 removeObject:v4];

      [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
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
    v5 = [(CNContactContentUnitaryViewController *)self contact];
    v6 = v5;
    if (v5 == v4)
    {
    }

    else
    {
      v7 = [(CNContactContentUnitaryViewController *)self contact];
      v8 = [v7 mainStoreLinkedContacts];
      v9 = [v8 containsObject:v4];

      if ((v9 & 1) == 0)
      {
        v10 = [v4 availableKeyDescriptor];
        v14[0] = v10;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        [(CNContactContentUnitaryViewController *)self _setupEditingLinkedContactsForKeys:v11];

        v12 = [(CNContactContentUnitaryViewController *)self editingLinkedContacts];
        [v12 addObject:v4];

        [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
        v13 = +[CNUIDataCollector sharedCollector];
        [v13 logContactActionType:CNUIContactActionTypeLink attributes:0];
      }
    }
  }
}

- (void)_setupEditingLinkedContactsForKeys:(id)a3
{
  v13 = a3;
  v4 = [(CNContactContentUnitaryViewController *)self editingLinkedContacts];

  v5 = v13;
  if (!v4)
  {
    v6 = [(CNContactContentUnitaryViewController *)self contact];
    v7 = [v6 isUnified];

    if (v7)
    {
      v8 = [(CNContactContentUnitaryViewController *)self contact];
      v9 = [v8 mainStoreLinkedContacts];
      v10 = [v9 mutableCopy];
    }

    else
    {
      v11 = MEMORY[0x1E695DF70];
      v8 = [(CNContactContentUnitaryViewController *)self contact];
      v9 = [v8 copyWithPropertyKeys:v13];
      v10 = [v11 arrayWithObject:v9];
    }

    v12 = v10;
    [(CNContactContentUnitaryViewController *)self setEditingLinkedContacts:v10];

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
    v5 = [(CNContactContentUnitaryViewController *)self contact];
  }

  v6 = v5;
  [(CNContactContentUnitaryViewController *)self setContact:v5];
  [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:v6];
}

- (void)createdNewContact:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CNContactContentViewController *)self setPrimaryProperty:0];
    [(CNContactContentUnitaryViewController *)self setContact:v4];
    [(CNContactContentUnitaryViewController *)self setMode:1];
    [(CNContactContentUnitaryViewController *)self setAllowsEditing:1];
    [(CNContactContentUnitaryViewController *)self setAllowsAddingToAddressBook:0];
    [(CNContactContentUnitaryViewController *)self setAllowsAddToFavorites:1];
  }

  [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:v4];
}

- (void)_didCompleteWithContact:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v19 = [(CNContactContentUnitaryViewController *)self _removeUnauthorizedKeysFromContact:v4];

    if (self->_contact != &self->_mutableContact->super)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v19 copy];

        v19 = v6;
      }
    }

    v7 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
    [v7 confirmSuggestion];
  }

  else
  {
    v19 = 0;
  }

  if ([(CNContactContentUnitaryViewController *)self mode]== 3)
  {
    v8 = [(CNContactContentUnitaryViewController *)self originalContacts];
    v9 = [v8 count];

    if (v9 == 1)
    {
      if (v19)
      {
        v10 = +[CNUIDataCollector sharedCollector];
        v11 = [(CNContactContentUnitaryViewController *)self originalContacts];
        v12 = [v11 objectAtIndexedSubscript:0];
        [v10 logContactCreated:v19 originalContact:v12];
      }
    }
  }

  v13 = [(CNContactContentUnitaryViewController *)self contactDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(CNContactContentUnitaryViewController *)self contactDelegate];
    [v15 contactViewController:self didCompleteWithContact:v19];
  }

  v16 = [(CNContactContentUnitaryViewController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(CNContactContentUnitaryViewController *)self delegate];
    [v18 didCompleteWithContact:v19];
  }
}

- (id)_removeUnauthorizedKeysFromContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self missingRequiredKeys];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 mutableCopy];
    v8 = [(CNContactContentUnitaryViewController *)self missingRequiredKeys];
    [v7 removeKeys:v8];

    [v7 setFrozenSelfAsSnapshot];
    v4 = v7;
  }

  return v4;
}

- (id)_updateContact:(id)a3 withMissingKeysFromRequiredKeys:(id)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
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
    v12 = [v6 identifier];

    if (v12)
    {
      v13 = [v8 second];
      [(CNContactContentUnitaryViewController *)self setMissingRequiredKeys:v13];

      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__64581;
      v29 = __Block_byref_object_dispose__64582;
      v30 = 0;
      v14 = objc_alloc(MEMORY[0x1E695CD78]);
      v15 = [(CNContactContentUnitaryViewController *)self missingRequiredKeys];
      v16 = [v14 initWithKeysToFetch:v15];

      v17 = MEMORY[0x1E695CD58];
      v18 = [v6 identifier];
      v31[0] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v20 = [v17 predicateForContactsWithIdentifiers:v19];
      [v16 setPredicate:v20];

      [v16 setUnifyResults:{objc_msgSend(v6, "isUnified")}];
      v21 = [(CNContactContentUnitaryViewController *)self contactStore];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __88__CNContactContentUnitaryViewController__updateContact_withMissingKeysFromRequiredKeys___block_invoke;
      v24[3] = &unk_1E74E6F60;
      v24[4] = &v25;
      [v21 enumerateContactsWithFetchRequest:v16 error:0 usingBlock:v24];

      v22 = [v6 mutableCopy];
      [v22 overwriteStateFromContact:v26[5]];
      v11 = [v22 freeze];

      _Block_object_dispose(&v25, 8);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)focusOnLastEditingItemInGroup:(id)a3
{
  v10 = [a3 lastEditingItem];
  v4 = [(CNContactContentUnitaryViewController *)self indexPathOfEditingPropertyItem:v10];
  objc_opt_class();
  v5 = [(CNContactContentUnitaryViewController *)self contactView];
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
  if ([(CNContactContentUnitaryViewController *)self isEditing]&& [(CNContactContentUnitaryViewController *)self mode]== 3 && ![(CNContactContentUnitaryViewController *)self didSetFirstResponder])
  {
    [(CNContactContentUnitaryViewController *)self setDidSetFirstResponder:1];
    v3 = [(CNContactContentUnitaryViewController *)self nameEditingGroups];
    v13 = [v3 firstObject];

    v4 = [v13 editingItems];
    v5 = [v4 firstObject];

    v6 = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
    v7 = [(CNContactContentUnitaryViewController *)self indexPathOfPropertyItem:v5 inGroup:v6 editing:1];

    objc_opt_class();
    v8 = [(CNContactContentUnitaryViewController *)self contactView];
    v9 = [v8 cellForRowAtIndexPath:v7];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 firstResponderItem];

    [v12 becomeFirstResponder];
  }
}

- (void)removeEditingItem:(id)a3 atIndexPath:(id)a4 forTableView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v9 section], v10);
  v12 = [v11 canAddEditingItem];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__CNContactContentUnitaryViewController_removeEditingItem_atIndexPath_forTableView___block_invoke;
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
  [(CNContactContentUnitaryViewController *)self updateContactsViewWithBlock:v16 completion:0];
}

void __84__CNContactContentUnitaryViewController_removeEditingItem_atIndexPath_forTableView___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) removeEditingItem:*(a1 + 40)];
  [*(a1 + 48) _updateLabelWidthForCellsInGroup:*(a1 + 32) forTableView:*(a1 + 56) reset:1];
  v2 = [*(a1 + 32) isMultiValue];
  v3 = *(a1 + 32);
  if (!v2)
  {
    v5 = [v3 propertyItems];
    v6 = [v5 count];

    v7 = *(a1 + 56);
    if (v6 < 2)
    {
      v25 = *(a1 + 64);
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      [v7 reloadRowsAtIndexPaths:v8 withRowAnimation:100];
    }

    else
    {
      v26 = *(a1 + 64);
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      [v7 deleteRowsAtIndexPaths:v8 withRowAnimation:2];
    }

    goto LABEL_14;
  }

  v4 = [v3 editingItems];
  if ([v4 count])
  {
  }

  else
  {
    v9 = [*(a1 + 32) canAddEditingItem];

    if ((v9 & 1) == 0)
    {
      v18 = [*(a1 + 48) contactView];
      v19 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(*(a1 + 64), "section")}];
      [v18 deleteSections:v19 withRowAnimation:2];

      v20 = [*(a1 + 48) _loadEditingGroupsPreservingChanges:1];
      [*(a1 + 48) setEditingGroups:v20];

      v21 = [*(a1 + 48) deletedEditingGroups];
      v22 = [v21 arrayByAddingObject:*(a1 + 32)];
      [*(a1 + 48) setDeletedEditingGroups:v22];

      goto LABEL_11;
    }
  }

  v10 = [*(a1 + 48) contactView];
  v28[0] = *(a1 + 64);
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v10 deleteRowsAtIndexPaths:v11 withRowAnimation:2];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__CNContactContentUnitaryViewController_removeEditingItem_atIndexPath_forTableView___block_invoke_2;
  block[3] = &unk_1E74E77C0;
  block[4] = *(a1 + 48);
  v24 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v12 = [*(a1 + 32) property];
  LODWORD(v11) = [v12 isEqualToString:*MEMORY[0x1E695C1C0]];

  if (v11)
  {
    v13 = [*(a1 + 48) contactView];
    [v13 reloadData];
  }

LABEL_11:
  if ((*(a1 + 72) & 1) == 0 && [*(a1 + 32) canAddEditingItem])
  {
    v14 = MEMORY[0x1E696AC88];
    v15 = [*(a1 + 32) editingItems];
    v8 = [v14 indexPathForRow:objc_msgSend(v15 inSection:{"count") - 1, objc_msgSend(*(a1 + 64), "section")}];

    v16 = *(a1 + 56);
    v27 = v8;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    [v16 insertRowsAtIndexPaths:v17 withRowAnimation:100];

LABEL_14:
  }
}

void __84__CNContactContentUnitaryViewController_removeEditingItem_atIndexPath_forTableView___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) contactView];
  v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
  [v3 _reloadSectionHeaderFooters:v2 withRowAnimation:0];
}

- (void)addEditingItem:(id)a3 atIndexPath:(id)a4 forTableView:(id)a5 shouldSetFocus:(BOOL)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v10 section], v11);
  v14 = [v13 addEditingItem:v12];

  if (v14)
  {
    [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCellsInGroup:v13 forTableView:v11 reset:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __96__CNContactContentUnitaryViewController_addEditingItem_atIndexPath_forTableView_shouldSetFocus___block_invoke;
    v17[3] = &unk_1E74E6EE8;
    v17[4] = v13;
    v17[5] = self;
    v18 = v10;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __96__CNContactContentUnitaryViewController_addEditingItem_atIndexPath_forTableView_shouldSetFocus___block_invoke_2;
    v15[3] = &unk_1E74E6F10;
    v16 = a6;
    v15[4] = self;
    v15[5] = v13;
    [(CNContactContentUnitaryViewController *)self updateContactsViewWithBlock:v17 completion:v15];
  }
}

void __96__CNContactContentUnitaryViewController_addEditingItem_atIndexPath_forTableView_shouldSetFocus___block_invoke(id *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (![a1[4] isMultiValue])
  {
    v3 = [a1[5] contactView];
    v11 = a1[6];
    v8 = MEMORY[0x1E695DEC8];
    v9 = &v11;
LABEL_7:
    v10 = [v8 arrayWithObjects:v9 count:{1, v11, v12}];
    [v3 reloadRowsAtIndexPaths:v10 withRowAnimation:100];

    goto LABEL_8;
  }

  v2 = [a1[4] canAddEditingItem];
  v3 = [a1[5] contactView];
  if (!v2)
  {
    v12 = a1[6];
    v8 = MEMORY[0x1E695DEC8];
    v9 = &v12;
    goto LABEL_7;
  }

  v13[0] = a1[6];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v3 insertRowsAtIndexPaths:v4 withRowAnimation:6];

  v5 = [a1[5] contactView];
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(a1[6], "section")}];
  [v5 _reloadSectionHeaderFooters:v6 withRowAnimation:0];

  v7 = [a1[4] property];
  LODWORD(v6) = [v7 isEqualToString:*MEMORY[0x1E695C1C0]];

  if (!v6)
  {
    return;
  }

  v3 = [a1[5] contactView];
  [v3 reloadData];
LABEL_8:
}

uint64_t __96__CNContactContentUnitaryViewController_addEditingItem_atIndexPath_forTableView_shouldSetFocus___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    if (*(result + 48) == 1)
    {
      return [*(result + 32) focusOnLastEditingItemInGroup:*(result + 40)];
    }
  }

  return result;
}

- (void)_updateLabelWidthsForAllVisibleCells
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactContentUnitaryViewController *)self contactView];
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

        [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCell:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [v3 setContentOffset:{v5, v7}];
  [(CNContactContentUnitaryViewController *)self adjustPreferredContentSize];
}

- (void)_updateLabelWidthForCellsInGroup:(id)a3 forTableView:(id)a4 reset:(BOOL)a5
{
  v5 = a5;
  v16 = a3;
  v8 = a4;
  if (v5)
  {
    v9 = [(CNContactContentUnitaryViewController *)self _labelWidthKeyForGroup:v16];
    v10 = [(CNContactContentUnitaryViewController *)self cachedLabelWidths];
    [v10 removeObjectForKey:v9];
  }

  [(CNContactContentUnitaryViewController *)self _updateCachedLabelWidthsForGroup:v16];
  v11 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:v16 inTableView:v8];
  v12 = [v16 editingItems];
  if ([v12 count])
  {
    v13 = 0;
    do
    {
      v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:v11];
      v15 = [v8 cellForRowAtIndexPath:v14];
      [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCell:v15];

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
      v10 = [(CNContactContentUnitaryViewController *)self _labelWidthKeyForItem:v8];
    }

    else
    {
      v11 = [v8 group];
      v10 = [(CNContactContentUnitaryViewController *)self _labelWidthKeyForGroup:v11];
    }

    v12 = [(CNContactContentUnitaryViewController *)self cachedLabelWidths];
    v13 = [v12 objectForKey:v10];
    [v13 floatValue];
    [v6 setLabelWidth:v14];

    v5 = v15;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v5);
}

- (void)_updateCachedLabelWidthsIfNeeded
{
  v3 = [(CNContactContentUnitaryViewController *)self cachedLabelWidths];

  if (!v3)
  {
    if (self->_editingContactView || (-[CNContactContentUnitaryViewController traitCollection](self, "traitCollection"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 userInterfaceIdiom], v4, v5 == 3))
    {

      [(CNContactContentUnitaryViewController *)self _updateCachedLabelWidths];
    }
  }
}

- (void)_setNeedsUpdateCachedLabelWidths
{
  [(CNContactContentUnitaryViewController *)self setCachedLabelWidths:0];
  if ([(CNContactContentUnitaryViewController *)self isViewLoaded])
  {
    v3 = [(CNContactContentUnitaryViewController *)self view];
    [v3 setNeedsLayout];
  }
}

- (void)_updateCachedLabelWidths
{
  v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  [(CNContactContentUnitaryViewController *)self setCachedLabelWidths:v3];

  v4 = [(CNContactContentUnitaryViewController *)self editingGroups];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(CNContactContentUnitaryViewController *)self editingGroups];
      v8 = [v7 objectAtIndexedSubscript:v6];

      [(CNContactContentUnitaryViewController *)self _updateCachedLabelWidthsForGroup:v8];
      ++v6;
      v9 = [(CNContactContentUnitaryViewController *)self editingGroups];
      v10 = [v9 count];
    }

    while (v6 < v10);
  }

  [(CNContactContentUnitaryViewController *)self _updateLabelWidthsForAllVisibleCells];
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

        [(CNContactContentUnitaryViewController *)self _updateCachedLabelWidthsForItem:*(*(&v9 + 1) + 8 * v8++)];
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
    v8 = [(CNContactContentUnitaryViewController *)self contactView];
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

    v13 = [(CNContactContentUnitaryViewController *)self contactView];
    [v13 frame];
    Width = CGRectGetWidth(v39);
    if (v7)
    {
      v15 = [(CNContactContentUnitaryViewController *)self contactView];
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
    v20 = [(CNContactContentUnitaryViewController *)self contactView];
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
    v27 = [(CNContactContentUnitaryViewController *)self _labelWidthKeyForGroup:v26];
    v28 = [(CNContactContentUnitaryViewController *)self _labelWidthKeyForItem:v6];
    v29 = [(CNContactContentUnitaryViewController *)self cachedLabelWidths];
    v30 = [v29 objectForKey:v27];
    [v30 floatValue];
    v32 = v31;

    if (v25 > 0.0)
    {
      v33 = [(CNContactContentUnitaryViewController *)self cachedLabelWidths];
      v34 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      [v33 setObject:v34 forKey:v28];

      if (v25 > v32)
      {
        v35 = [(CNContactContentUnitaryViewController *)self cachedLabelWidths];
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

- (void)removePersonHeaderViewControllerFromHierarchy
{
  v3 = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
  v4 = [v3 parentViewController];

  if (v4)
  {
    v5 = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
    [v5 willMoveToParentViewController:0];

    v6 = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
    v7 = [v6 isViewLoaded];

    if (v7)
    {
      v8 = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
      v9 = [v8 view];
      [v9 removeFromSuperview];
    }

    v10 = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
    [v10 removeFromParentViewController];
  }
}

- (BOOL)isPersonHeaderIndexPath:(id)a3 forTableView:(id)a4
{
  v6 = a4;
  LOBYTE(a3) = -[CNContactContentUnitaryViewController isPersonHeaderSectionForTableView:section:](self, "isPersonHeaderSectionForTableView:section:", v6, [a3 section]);

  return a3;
}

- (id)personHeaderCellForTableView:(id)a3
{
  v64[4] = *MEMORY[0x1E69E9840];
  v4 = [a3 dequeueReusableCellWithIdentifier:@"PersonHeaderCellIdentifier"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"PersonHeaderCellIdentifier"];
    [v4 setSelectionStyle:0];
    [v4 setSeparatorStyle:0];
    [v4 _cnui_applyContactStyle];
  }

  v5 = self;
  v6 = [(CNContactContentUnitaryViewController *)v5 personHeaderViewController];
  v7 = [v6 parentViewController];

  if (v7 != v5)
  {
    [(CNContactContentUnitaryViewController *)v5 removePersonHeaderViewControllerFromHierarchy];
    v8 = [(CNContactContentUnitaryViewController *)v5 personHeaderViewController];
    [(CNContactContentUnitaryViewController *)v5 addChildViewController:v8];

    v9 = [(CNContactContentUnitaryViewController *)v5 personHeaderViewController];
    v10 = [v9 view];

    v11 = [v4 contentView];
    [v11 addSubview:v10];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v4 contentView];
    v13 = [v12 layoutMarginsGuide];

    v14 = [(CNContactContentUnitaryViewController *)v5 personHeaderViewDelegate];
    v61 = v13;
    v62 = v10;
    if (v14 && (v15 = v14, [(CNContactContentUnitaryViewController *)v5 personHeaderViewDelegate], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_respondsToSelector(), v16, v15, (v17 & 1) != 0))
    {
      v18 = [(CNContactContentUnitaryViewController *)v5 personHeaderViewDelegate];
      v19 = [(CNContactContentUnitaryViewController *)v5 personHeaderViewController];
      [v18 contentInsetsForCustomHeaderViewController:v19];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v51 = MEMORY[0x1E696ACD8];
      v50 = [v10 topAnchor];
      v60 = [v4 contentView];
      v59 = [v60 topAnchor];
      v58 = [v50 constraintEqualToAnchor:v21 constant:?];
      v64[0] = v58;
      v28 = [v10 bottomAnchor];
      v56 = [v4 contentView];
      [v56 bottomAnchor];
      v55 = v57 = v28;
      v54 = [v28 constraintEqualToAnchor:-v25 constant:?];
      v64[1] = v54;
      v29 = [v10 leadingAnchor];
      v30 = [v4 contentView];
      v31 = [v30 leadingAnchor];
      v53 = v29;
      v32 = [v29 constraintEqualToAnchor:v31 constant:v23];
      v64[2] = v32;
      v33 = [v10 trailingAnchor];
      v34 = [v4 contentView];
      v35 = [v34 trailingAnchor];
      v36 = [v33 constraintEqualToAnchor:v35 constant:-v27];
      v64[3] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
      [v51 activateConstraints:v37];

      v38 = v50;
    }

    else
    {
      v52 = MEMORY[0x1E696ACD8];
      v38 = [v10 topAnchor];
      v60 = [v4 contentView];
      v59 = [v60 topAnchor];
      v58 = [v38 constraintEqualToAnchor:?];
      v63[0] = v58;
      v39 = [v10 bottomAnchor];
      v56 = [v4 contentView];
      [v56 bottomAnchor];
      v55 = v57 = v39;
      v54 = [v39 constraintEqualToAnchor:?];
      v63[1] = v54;
      v40 = [v10 leadingAnchor];
      v30 = [v13 leadingAnchor];
      v53 = v40;
      v31 = [v40 constraintEqualToAnchor:v30];
      v63[2] = v31;
      v32 = [v10 trailingAnchor];
      v33 = [v13 trailingAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];
      v63[3] = v34;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:4];
      [v52 activateConstraints:v35];
    }

    v41 = [(CNContactContentUnitaryViewController *)v5 personHeaderViewDelegate];
    if (v41)
    {
      v42 = v41;
      v43 = [(CNContactContentUnitaryViewController *)v5 personHeaderViewDelegate];
      v44 = objc_opt_respondsToSelector();

      if (v44)
      {
        v45 = [(CNContactContentUnitaryViewController *)v5 personHeaderViewDelegate];
        v46 = [(CNContactContentUnitaryViewController *)v5 personHeaderViewController];
        v47 = [v45 backgroundColorForCustomHeaderViewController:v46];

        if (v47)
        {
          v48 = [v4 contentView];
          [v48 setBackgroundColor:v47];

          [v4 setBackgroundColor:v47];
        }
      }
    }
  }

  return v4;
}

- (BOOL)isPersonHeaderSectionForTableView:(id)a3 section:(int64_t)a4
{
  v6 = a3;
  if ([(CNContactContentUnitaryViewController *)self hasPersonHeaderSectionForTableView:v6])
  {
    if ([(CNContactContentUnitaryViewController *)self hasSharedProfileBannerSectionForTableView:v6])
    {
      v7 = a4 == 1;
    }

    else
    {
      v7 = a4 == 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasPersonHeaderSectionForTableView:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
  if (v5)
  {
    v6 = [(CNContactContentUnitaryViewController *)self displayContactView];
    v7 = v6 == v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)presentAvatarPosterEditor
{
  v3 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
  [v3 editButtonTappedWhileEditing:{-[CNContactContentUnitaryViewController isEditing](self, "isEditing")}];

  if ([(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard])
  {

    [(CNContactContentUnitaryViewController *)self setIsShowingSNaPEditFlow:1];
  }

  else
  {
    v4 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__CNContactContentUnitaryViewController_presentAvatarPosterEditor__block_invoke;
    block[3] = &unk_1E74E6A88;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }
}

- (void)sharedProfileBannerView:(id)a3 didDismissWithUpdatedContact:(id)a4 forAction:(unint64_t)a5
{
  v7 = a4;
  v8 = [(CNContactContentUnitaryViewController *)self displayContactView];
  v9 = [(CNContactContentUnitaryViewController *)self hasSharedProfileBannerSectionForTableView:v8];

  [(CNContactContentUnitaryViewController *)self setTappedSharedProfileBannerAction:0];
  [(CNContactContentUnitaryViewController *)self setDismissedSharedProfileBannerAction:a5];
  v10 = [(CNContactContentUnitaryViewController *)self displayContactView];
  v11 = [(CNContactContentUnitaryViewController *)self hasSharedProfileBannerSectionForTableView:v10];

  if (v9 && !v11)
  {
    v12 = [(CNContactContentUnitaryViewController *)self contactView];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __104__CNContactContentUnitaryViewController_sharedProfileBannerView_didDismissWithUpdatedContact_forAction___block_invoke;
    v15[3] = &unk_1E74E6A88;
    v15[4] = self;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __104__CNContactContentUnitaryViewController_sharedProfileBannerView_didDismissWithUpdatedContact_forAction___block_invoke_2;
    v13[3] = &unk_1E74E6EC0;
    v13[4] = self;
    v14 = v7;
    [v12 performBatchUpdates:v15 completion:v13];
  }
}

void __104__CNContactContentUnitaryViewController_sharedProfileBannerView_didDismissWithUpdatedContact_forAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactView];
  v1 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v2 deleteSections:v1 withRowAnimation:2];
}

- (void)sharedProfileBannerView:(id)a3 didUpdateContact:(id)a4 forAction:(unint64_t)a5
{
  v7 = a4;
  [(CNContactContentUnitaryViewController *)self setTappedSharedProfileBannerAction:a5];
  [(CNContactContentUnitaryViewController *)self setDismissedSharedProfileBannerAction:0];
  [(CNContactContentUnitaryViewController *)self setContact:v7];
}

void *__74__CNContactContentUnitaryViewController_bannerActionTypeForEffectiveState__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[283])
  {
    return [result setupSharedProfileStateOracle];
  }

  return result;
}

- (id)setupSharedProfileStateOracle
{
  v3 = objc_alloc(MEMORY[0x1E695CF98]);
  v4 = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [(CNContactContentUnitaryViewController *)self contactStore];
  v6 = [v3 initWithContact:v4 contactStore:v5];
  sharedProfileStateOracle = self->_sharedProfileStateOracle;
  self->_sharedProfileStateOracle = v6;

  if ([(CNContactContentUnitaryViewController *)self shouldShowSharedProfileBanner])
  {
    self->_bannerActionTypeForEffectiveState = [(CNSharedProfileStateOracle *)self->_sharedProfileStateOracle bannerActionTypeForEffectiveState];
  }

  v8 = self->_sharedProfileStateOracle;

  return v8;
}

- (CNSharedProfileStateOracle)sharedProfileStateOracle
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)sharedProfileBannerSectionCellForTableView:(id)a3
{
  v4 = [(CNContactContentUnitaryViewController *)self contactView];
  v5 = +[CNContactView cellIdentifierForSharedProfileBanner];
  v6 = [v4 dequeueReusableCellWithIdentifier:v5];

  [v6 setSelectionStyle:0];
  [v6 setSeparatorStyle:0];
  [v6 _cnui_applyContactStyle];
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

  [v9 setDelegate:self];
  [(CNContactContentUnitaryViewController *)self prepareCell:v9];
  v10 = [(CNContactContentUnitaryViewController *)self sharedProfileStateOracle];
  [v9 setUpWithSharedProfileStateOracle:v10 tappedAction:-[CNContactContentUnitaryViewController tappedSharedProfileBannerAction](self hasPerformedAnimation:{"tappedSharedProfileBannerAction"), -[CNContactContentUnitaryViewController hasPerformedSharedProfileBannerAnimation](self, "hasPerformedSharedProfileBannerAnimation")}];

  [(CNContactContentUnitaryViewController *)self setHasPerformedSharedProfileBannerAnimation:1];

  return v7;
}

- (BOOL)isSharedProfileBannerSectionIndexPath:(id)a3 forTableView:(id)a4
{
  v6 = a4;
  LOBYTE(a3) = -[CNContactContentUnitaryViewController isSharedProfileBannerSectionForTableView:section:](self, "isSharedProfileBannerSectionForTableView:section:", v6, [a3 section]);

  return a3;
}

- (BOOL)isSharedProfileBannerSectionForTableView:(id)a3 section:(int64_t)a4
{
  result = [(CNContactContentUnitaryViewController *)self hasSharedProfileBannerSectionForTableView:a3];
  if (a4)
  {
    return 0;
  }

  return result;
}

- (BOOL)hasSharedProfileBannerSectionForTableView:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 featureFlags];
  v7 = [v6 isFeatureEnabled:27];

  if (v7 && [(CNContactContentUnitaryViewController *)self shouldShowSharedProfileBanner]&& ([(CNContactContentUnitaryViewController *)self displayContactView], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == v4) && ![(CNContactContentUnitaryViewController *)self dismissedSharedProfileBannerAction])
  {
    v11 = [(CNContactContentUnitaryViewController *)self bannerActionTypeForEffectiveState];
    v9 = (v11 | [(CNContactContentUnitaryViewController *)self tappedSharedProfileBannerAction]) != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setShouldShowSharedProfileBanner:(BOOL)a3
{
  if (self->_shouldShowSharedProfileBanner != a3)
  {
    self->_shouldShowSharedProfileBanner = a3;
    v4 = [(CNContactContentUnitaryViewController *)self contactView];
    [v4 reloadData];
  }
}

- (BOOL)shouldShowSharedProfileRow
{
  if (![(CNContactContentUnitaryViewController *)self showsSharedProfile])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:27];

  if (!v5 || [(CNContactContentUnitaryViewController *)self mode]== 2)
  {
    return 0;
  }

  return [(CNContactContentUnitaryViewController *)self showContactPhotoPosterCell];
}

- (int64_t)additionalTopSectionsCountForTableView:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self hasSharedProfileBannerSectionForTableView:v4];
  LODWORD(self) = [(CNContactContentUnitaryViewController *)self hasPersonHeaderSectionForTableView:v4];

  return self + v5;
}

- (void)geminiDataSourceDidUpdate:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 geminiResult];
  v6 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
  v7 = [v6 editingItems];
  v8 = [v7 firstObject];

  [v8 geminiDataSourceDidUpdate:v4];
  v9 = [(CNContactContentUnitaryViewController *)self indexPathOfEditingPropertyItem:v8];
  v10 = [(CNContactContentUnitaryViewController *)self shouldShowGemini];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v11 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    [v11 updateGeminiResult:v5];

    [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
  }

  else
  {
    v12 = [(CNContactContentUnitaryViewController *)self displayHeaderView];
    [v12 updateGeminiResult:v5];

    [(CNContactContentUnitaryViewController *)self displayHeaderView];
  }
  v13 = ;
  [v13 setShouldShowGemini:v10];

  v14 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
  [v14 setGeminiResult:v5];

  v15 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
  [v15 setShouldShowGemini:v10];

  v16 = [(CNContactContentUnitaryViewController *)self editingContactView];
  v17 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
  if (v17)
  {
    v18 = v17;
    v19 = [(CNContactContentUnitaryViewController *)self isEditing];

    if (v19)
    {
      if (v9)
      {
        if (v10)
        {
          v28[0] = v9;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
          [v16 reloadRowsAtIndexPaths:v20 withRowAnimation:100];
        }

        else
        {
          v25 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
          v26 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:v25 inTableView:v16];

          v27 = [(CNContactContentUnitaryViewController *)self editingGroups];
          [v27 removeObjectAtIndex:v26];

          v20 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v9, "indexAtPosition:", 0)}];
          [v16 deleteSections:v20 withRowAnimation:3];
        }

        goto LABEL_13;
      }

      if (v10)
      {
        v21 = [(CNContactContentUnitaryViewController *)self editingGroups];
        v22 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
        [v21 insertObject:v22 atIndex:0];

        v23 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
        v24 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:v23 inTableView:v16];

        if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = [MEMORY[0x1E696AC90] indexSetWithIndex:v24];
          [v16 insertSections:v20 withRowAnimation:3];
LABEL_13:
        }
      }
    }
  }
}

- (void)setMenuProviderForCell:(id)a3 forActionGroupItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 || (-[CNContactContentUnitaryViewController cardShareLocationGroup](self, "cardShareLocationGroup"), v8 = objc_claimAutoreleasedReturnValue(), [v8 actions], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "actions"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToArray:", v10), v10, v9, v8, !v11))
  {
    v13 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
    v14 = [v13 actions];
    v15 = [v7 actions];
    if ([v14 isEqualToArray:v15])
    {
      v16 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
      v17 = [v16 shouldActionDisplayDropdownMenu];

      if (v17)
      {
        v18 = [v7 actions];
        v19 = [v18 firstObject];

        v20 = [v19 target];

        if (!v20)
        {
LABEL_22:

          goto LABEL_23;
        }

        v21 = [v19 target];
        v22 = [v21 addFriendsMenuProvider];

        if (v22)
        {
          [v6 setMenuProvider:v22];
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
    }

    v23 = [v7 actions];
    v24 = [v23 firstObject];

    objc_opt_class();
    v19 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = v19;
    }

    else
    {
      v25 = 0;
    }

    v22 = v25;

    if (v22)
    {
      v26 = [v22 menuProvider];
      [v6 setMenuProvider:v26];
    }

    else
    {
      v27 = [v19 target];
      if ([v27 conformsToProtocol:&unk_1F0D822B0])
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v26 = v28;

      if (v26)
      {
        v29 = [v6 contextMenuInteraction];
        v30 = [v26 menuProviderForContextMenuInteraction:v29];
        [v6 setMenuProvider:v30];
      }
    }

    goto LABEL_21;
  }

  v12 = [(CNContactContentUnitaryViewController *)self shareLocationController];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __83__CNContactContentUnitaryViewController_setMenuProviderForCell_forActionGroupItem___block_invoke;
  v31[3] = &unk_1E74E6E70;
  v32 = v6;
  [v12 actionsMenuProviderWithCompletion:v31];

LABEL_23:
}

void __83__CNContactContentUnitaryViewController_setMenuProviderForCell_forActionGroupItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__CNContactContentUnitaryViewController_setMenuProviderForCell_forActionGroupItem___block_invoke_2;
  v5[3] = &unk_1E74E6DD0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (id)_cellForIndexPath:(id)a3 forTableView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:v7 forTableView:v8];
  v10 = [(CNContactContentUnitaryViewController *)self _cellIdentifierForTableView:v8 indexPath:v7];
  v11 = [(CNContactContentUnitaryViewController *)self noteCell];
  if (v11 && (v12 = v11, -[CNContactContentUnitaryViewController contactView](self, "contactView"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_class(), [v14 cellIdentifierForClass:objc_opt_class()], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v10, "isEqualToString:", v15), v15, v13, v12, v16))
  {
    v17 = [(CNContactContentUnitaryViewController *)self noteCell];
    [(CNContactContentUnitaryViewController *)self setNoteCell:0];
  }

  else
  {
    v18 = [(CNContactContentUnitaryViewController *)self contactView];
    v17 = [v18 dequeueReusableCellWithIdentifier:v10];
  }

  if (!v17)
  {
    v72 = [MEMORY[0x1E696AAA8] currentHandler];
    [v72 handleFailureInMethod:a2 object:self file:@"CNContactContentUnitaryViewController.m" lineNumber:6694 description:{@"We couldn’t create a cell with identifier: %@ indexPath: %@", v10, v7}];
  }

  v73 = v10;
  if ([(CNContactContentUnitaryViewController *)self mode]== 5)
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
      v22 = [(CNContactContentUnitaryViewController *)self highlightedProperties];
      if ([v22 count])
      {
        v23 = [(CNContactContentUnitaryViewController *)self highlightedProperties];
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
    v26 = [(CNContactContentUnitaryViewController *)self presentingDelegate];
    [v17 setPresentingDelegate:v26];
  }

  if (objc_opt_respondsToSelector())
  {
    v27 = [(CNContactContentUnitaryViewController *)self displayContactView];
    v28 = v27;
    if (v27 == v8)
    {
      v29 = [(CNContactContentUnitaryViewController *)self contactView];
      v30 = objc_opt_class();
      v31 = [v30 cellIdentifierForClass:objc_opt_class()];
      v32 = [v73 isEqualToString:v31];

      if (v32)
      {
        if ([(CNContactContentUnitaryViewController *)self allowsEditing])
        {
          v33 = [(CNContactContentUnitaryViewController *)self editRequiresAuthorization]^ 1;
        }

        else
        {
          v33 = 0;
        }

        goto LABEL_31;
      }
    }

    else
    {
    }

    v33 = [(CNContactContentUnitaryViewController *)self allowsEditing];
LABEL_31:
    [v17 setAllowsEditing:v33];
  }

  if (objc_opt_respondsToSelector())
  {
    [v17 setAllowsActions:{-[CNContactContentUnitaryViewController allowsActions](self, "allowsActions")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v34 = v17;
    [v34 setVIP:{-[CNContactContentUnitaryViewController isMailVIP](self, "isMailVIP")}];
  }

  v35 = [MEMORY[0x1E69966E8] currentEnvironment];
  v36 = [v35 featureFlags];
  v37 = [v36 isFeatureEnabled:21];

  if (v37 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v38 = v17;
    objc_opt_class();
    v39 = v9;
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;

    v42 = [(CNContactContentUnitaryViewController *)self cachedVerifiedHandles];
    if (v42)
    {
      v43 = [(CNContactContentUnitaryViewController *)self cachedVerifiedHandles];
      v44 = [v41 displayValue];
      [v38 setStaticIdentityVerified:{objc_msgSend(v43, "containsObject:", v44)}];
    }

    else
    {
      [v38 setStaticIdentityVerified:0];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v45 = v17;
    v46 = [(CNContactContentUnitaryViewController *)self emergencyNumberIdentifier];
    v47 = [v45 propertyItem];
    v48 = [v47 contactProperty];
    v49 = [v48 identifier];
    [v45 setEmergencyPhoneNumber:{objc_msgSend(v46, "isEqualToString:", v49)}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v50 = v9;
    if (objc_opt_isKindOfClass())
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;

    objc_opt_class();
    v53 = v17;
    if (objc_opt_isKindOfClass())
    {
      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    v55 = v54;

    [(CNContactContentUnitaryViewController *)self setMenuProviderForCell:v55 forActionGroupItem:v52];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v56 = v17;
    if (objc_opt_isKindOfClass())
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v58 = v57;

    [v58 setShowsGameCenterLabel:{objc_msgSend(v7, "row") == 0}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v59 = v9;
    if (objc_opt_isKindOfClass())
    {
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    v61 = v60;

    v62 = [(CNContactContentUnitaryViewController *)self sharedProfileStateOracle];
    [v61 setSharedProfileStateOracle:v62];

    objc_opt_class();
    v63 = v17;
    if (objc_opt_isKindOfClass())
    {
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    v65 = v64;

    v66 = [(CNContactContentUnitaryViewController *)self sharedProfileStateOracle];
    [v65 setSharedProfileStateOracle:v66];

    [v65 setActionDelegate:self];
    [v65 setAllowsEditing:{-[CNContactContentUnitaryViewController allowsEditing](self, "allowsEditing")}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v67 = v17;
    if (objc_opt_isKindOfClass())
    {
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    v69 = v68;

    v70 = [(CNContactContentUnitaryViewController *)self mutableContactForHeaderView];
    [v69 setMeContact:v70];
  }

  return v17;
}

- (id)_cellIdentifierForTableView:(id)a3 indexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:v8 forTableView:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    if (![(CNContactContentUnitaryViewController *)self isEditing])
    {
      v14 = [v10 property];
      v12 = [CNContactView cellIdentifierForProperty:v14];

      goto LABEL_9;
    }

    v11 = [CNContactView cellIdentifierForEditingPropertyItem:v10];
LABEL_4:
    v12 = v11;
LABEL_9:

LABEL_10:
    if (v12)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = +[CNContactView cellIdentifierForPropertyPlaceholder];
LABEL_7:
    v12 = v13;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v8 section], v7);
    if ([v10 useSplitActions])
    {
      v11 = +[CNContactView cellIdentifierForSplitActions];
    }

    else
    {
      if ([v10 displaysDropdownMenu])
      {
        +[CNContactView cellIdentifierForDropdownMenuActions];
      }

      else
      {
        +[CNContactView cellIdentifierForActions];
      }
      v11 = ;
    }

    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = +[CNContactView cellIdentifierForFaceTimeGroup];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = +[CNContactView cellIdentifierForDefaultAppGroup];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(CNContactContentUnitaryViewController *)self isEditing])
    {
      +[CNContactView cellIdentifierForLinkedCardsEditingGroup];
    }

    else
    {
      +[CNContactView cellIdentifierForLinkedCardsGroup];
    }

    v13 = LABEL_28:;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = +[CNContactView cellIdentifierForLinkedCardsPlaceholderGroup];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(CNContactContentUnitaryViewController *)self isEditing])
    {
      +[CNContactView cellIdentifierForGroupMembershipEditingGroup];
    }

    else
    {
      +[CNContactView cellIdentifierForGroupMembershipGroup];
    }

    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = +[CNContactView cellIdentifierForGroupMembershipPlaceholderGroup];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = +[CNContactView cellIdentifierForStaticIdentityPlaceholderGroup];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = +[CNContactView cellIdentifierForStaticIdentityEditingGroup];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(CNContactContentUnitaryViewController *)self isEditing])
    {
      v13 = +[CNContactView cellIdentifierForContactContainerEditingGroup];
      goto LABEL_7;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = +[CNContactView cellIdentifierForGameCenterGroup];
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = +[CNContactView cellIdentifierForMeCardSharedProfileGroup];
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = +[CNContactView cellIdentifierForCardNamePickingGroup];
      goto LABEL_7;
    }
  }

LABEL_51:
  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"CNContactContentUnitaryViewController.m" lineNumber:6671 description:{@"Unknown group item: %@", v9}];

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_scrollContactView:(id)a3 toVisibleGroup:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v18 = a3;
  v8 = a4;
  [v18 _effectiveContentInset];
  [v18 setContentOffset:{0.0, -v9}];
  if (v8)
  {
    v10 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:v8 inTableView:v18];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10;
      v12 = [v8 displayItems];
      v13 = ([v12 count] >> 1);

      v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:v11];
      v15 = [v18 numberOfSections];
      if (v15 > [v14 section])
      {
        v16 = [v18 numberOfRowsInSection:{objc_msgSend(v14, "section")}];
        if (v16 > [v14 row])
        {
LABEL_7:
          if (!v14)
          {
            goto LABEL_10;
          }

          [v18 scrollToRowAtIndexPath:v14 atScrollPosition:2 animated:v5];
          goto LABEL_9;
        }

        if ([v18 numberOfRowsInSection:{objc_msgSend(v14, "section")}] >= 1)
        {
          v17 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v11];

          v14 = v17;
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
      v18 = [(CNContactContentUnitaryViewController *)self cardGroupForProperty:v21];

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

  [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:0, v2, v3];
  return 1;
}

- (BOOL)isSuggestedContact
{
  v2 = [(CNContactContentUnitaryViewController *)self contact];
  v3 = [v2 isSuggested];

  return v3;
}

- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContact:(id)a4 propertyKey:(id)a5 propertyIdentifier:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(CNContactContentUnitaryViewController *)self contactDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(CNContactContentUnitaryViewController *)self contactDelegate];
    v15 = [v14 contactViewController:self shouldPerformDefaultActionForContact:v9 propertyKey:v10 propertyIdentifier:v11];
  }

  else
  {
    v15 = 1;
  }

  v16 = [(CNContactContentUnitaryViewController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(CNContactContentUnitaryViewController *)self _removeUnauthorizedKeysFromContact:v9];

    v19 = [(CNContactContentUnitaryViewController *)self delegate];
    v15 = [v19 shouldPerformDefaultActionForContact:v18 propertyKey:v10 propertyIdentifier:v11];

    v9 = v18;
  }

  return v15;
}

- (void)contactViewController:(id)a3 didDeleteContact:(id)a4
{
  v16 = a4;
  v5 = [(CNContactContentUnitaryViewController *)self contact];
  v6 = [v5 mainStoreLinkedContacts];
  v7 = [v6 containsObject:v16];

  if (v7)
  {
    [(CNContactContentUnitaryViewController *)self removeLinkedContact:v16];
    v9 = [(CNContactContentUnitaryViewController *)self saveLinkedContactsExecutor];
    v10 = [(CNContactContentUnitaryViewController *)self saveDescriptionForCurrentState];
    v11 = [v9 executeSaveWithConfiguration:v10 saveDelegate:self];

    [(CNContactContentUnitaryViewController *)self setEditingLinkedContacts:0];
    v12 = [(CNContactContentUnitaryViewController *)self issuedSaveRequestIdentifiers];
    v13 = [v11 identifiersOfIssuedSaveRequests];
    [v12 addObjectsFromArray:v13];

    v14 = [v11 contact];

    if (v14)
    {
      v15 = [v11 contact];
      [(CNContactContentUnitaryViewController *)self setContact:v15];
    }
  }

  MEMORY[0x1EEE66BE0](v8);
}

- (void)headerViewDidTapNameLabel:(id)a3
{
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0 && [(CNContactContentUnitaryViewController *)self allowsNamePicking])
  {

    [(CNContactContentUnitaryViewController *)self _pickName];
  }
}

- (void)headerView:(id)a3 didSetNameLabelColor:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->_staticDisplayHeaderView == v8)
  {
    v7 = &OBJC_IVAR___CNContactContentUnitaryViewController__actionsViewController;
  }

  else
  {
    if (self->_displayFloatingCollapsedHeaderView != v8)
    {
      goto LABEL_6;
    }

    v7 = &OBJC_IVAR___CNContactContentUnitaryViewController__floatingActionsViewController;
  }

  [*(&self->super.super.super.super.isa + *v7) setPosterTintColor:v6];
LABEL_6:
}

- (void)headerView:(id)a3 didSetBackgroundAsGradientColors:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_staticDisplayHeaderView == a3)
  {
    v8 = v6;
    [(CNContactContentUnitaryViewController *)self setHeaderViewBackgroundColors:v6];
    if ([(CNContactContentUnitaryViewController *)self shouldSetBackgroundColorToMatchHeader])
    {
      v6 = [(CNContactContentUnitaryViewController *)self setContactViewBackgroundToMatchHeader];
    }

    else
    {
      v6 = [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView updateBackgroundWithGradientColors:v8 horizontal:0];
    }

    v7 = v8;
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)headerView:(id)a3 didSetBackgroundAsPosterSnapshotImage:(id)a4
{
  if (self->_staticDisplayHeaderView == a3)
  {
    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView updateBackgroundWithPosterSnapshotImage:a4];
  }
}

- (BOOL)isPadCompactHorizontalSize
{
  v2 = [(CNContactContentUnitaryViewController *)self traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return v5 == 1 && v3 == 1;
}

- (BOOL)isPadRegularHorizontalSize
{
  v2 = [(CNContactContentUnitaryViewController *)self traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return v5 == 1 && v3 != 1;
}

- (BOOL)isOrientationPhoneLandscape
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(CNContactContentUnitaryViewController *)self interfaceOrientation]- 3;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 >= 2;
  }

  return !v6;
}

- (BOOL)isHeaderViewContactBlocked:(id)a3
{
  v4 = [(CNContactContentUnitaryViewController *)self blockAction];

  if (!v4)
  {
    v5 = [CNContactToggleBlockCallerAction alloc];
    v6 = [(CNContactContentUnitaryViewController *)self contact];
    v7 = [(CNContactAction *)v5 initWithContact:v6];
    [(CNContactContentUnitaryViewController *)self setBlockAction:v7];

    v8 = [(CNContactContentUnitaryViewController *)self blockAction];
    [v8 setDelegate:self];
  }

  v9 = [(CNContactContentUnitaryViewController *)self blockAction];
  v10 = [v9 isContactBlockedPreservingChanges:1];

  return v10 ^ 1;
}

- (void)headerView:(id)a3 didRequestToBlockContact:(BOOL)a4
{
  v5 = [(CNContactContentUnitaryViewController *)self blockAction:a3];

  if (!v5)
  {
    v6 = [CNContactToggleBlockCallerAction alloc];
    v7 = [(CNContactContentUnitaryViewController *)self contact];
    v8 = [(CNContactAction *)v6 initWithContact:v7];
    [(CNContactContentUnitaryViewController *)self setBlockAction:v8];

    v9 = [(CNContactContentUnitaryViewController *)self blockAction];
    [v9 setDelegate:self];
  }

  v10 = [(CNContactContentUnitaryViewController *)self blockAction];
  [v10 performActionWithSender:self];
}

- (void)headerView:(id)a3 didUpdateSensitiveContentOverride:(BOOL)a4
{
  if (a4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(CNContactContentUnitaryViewController *)self contact];
  v7 = [v6 sensitiveContentConfiguration];
  v8 = [v7 override];

  if (v8 != v5)
  {
    v9 = [(CNContactContentUnitaryViewController *)self contact];
    v17 = [v9 mutableCopy];

    v10 = [v17 sensitiveContentConfiguration];

    if (v10)
    {
      v11 = [v17 sensitiveContentConfiguration];
      v12 = [v11 updatedWithOverride:v5];
      [v17 setSensitiveContentConfiguration:v12];
    }

    else
    {
      v11 = [MEMORY[0x1E695CF90] configurationWithOverride:v5];
      [v17 setSensitiveContentConfiguration:v11];
    }

    v13 = objc_alloc_init(MEMORY[0x1E695CF88]);
    [v13 setIgnoresGuardianRestrictions:{-[CNContactContentUnitaryViewController saveWasAuthorized](self, "saveWasAuthorized")}];
    v14 = [(CNContactContentUnitaryViewController *)self issuedSaveRequestIdentifiers];
    v15 = [v13 saveRequestIdentifier];
    [v14 addObject:v15];

    [v13 updateContact:v17];
    v16 = [(CNContactContentUnitaryViewController *)self contactStore];
    [v16 executeSaveRequest:v13 error:0];

    [(CNContactContentUnitaryViewController *)self setContact:v17];
  }
}

- (double)navigationBarHeight
{
  v2 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
  v3 = [v2 navigationBar];
  [v3 frame];
  v5 = v4;

  return v5;
}

- (UIEdgeInsets)headerViewSafeAreaInsets
{
  v3 = [(CNContactContentUnitaryViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [(CNContactContentUnitaryViewController *)self navigationBarHeight];
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
  v5 = [(CNContactContentUnitaryViewController *)self contactHeaderView];

  if (v5 == v4)
  {

    [(CNContactContentUnitaryViewController *)self setupViewHierarchyAndConstraints];
  }
}

- (BOOL)isNicknameProhibited
{
  v2 = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
  v3 = [v2 containsObject:*MEMORY[0x1E695C310]];

  return v3;
}

- (void)requestFavoritesUpdateWithGemini
{
  v3 = [(CNContactContentUnitaryViewController *)self environment];
  v4 = [v3 inProcessFavorites];
  v5 = [(CNContactContentUnitaryViewController *)self contact];
  v6 = [v4 entriesForContact:v5];

  if (v6)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.contacts.clientDidDisplayFavorites", 0, 0, 0);
  }
}

- (void)headerViewDidPickPreferredChannel:(id)a3
{
  v8 = a3;
  v4 = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [v4 preferredChannel];
  v6 = [v5 isEqualToString:v8];

  if ((v6 & 1) == 0)
  {
    [(CNContactContentUnitaryViewController *)self didSelectPreferredChannel:v8];
    v7 = [(CNContactContentUnitaryViewController *)self displayContactView];
    [(CNContactContentUnitaryViewController *)self updateInsetsIfNeededForTableView:v7 isEditing:0];
  }
}

- (void)headerView:(id)a3 didAcceptDropOfImageData:(id)a4
{
  v5 = a4;
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    [(CNContactContentUnitaryViewController *)self toggleEditing];
  }

  [(CNContactHeaderEditView *)self->_editingHeaderView presentAvatarPickerWithImageData:v5];
}

- (void)headerPhotoDidUpdate
{
  [(CNContactContentUnitaryViewController *)self updateDoneButton];
  [(CNContactHeaderEditView *)self->_editingHeaderView updateEditButtonTitle];
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    v3 = [(CNContactContentUnitaryViewController *)self editingContactView];
    [(CNContactContentUnitaryViewController *)self scrollScrollViewAllTheWayUp:v3];
  }
}

- (void)contactGroupPickerDidFinish:(id)a3 withGroup:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(CNContactContentUnitaryViewController *)self presentingDelegate];
  [v7 sender:self dismissViewController:v6];

  [(CNContactContentUnitaryViewController *)self _addedGroupWithName:v8];
}

- (void)contactGroupPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self presentingDelegate];
  [v5 sender:self dismissViewController:v4];
}

- (id)alreadyPickedGroups
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(CNContactContentUnitaryViewController *)self editingGroups];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v9 = [v8 groups];
          v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v18;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v18 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [*(*(&v17 + 1) + 8 * j) property];
                [v3 addObject:v14];
              }

              v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v11);
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v9 = [v8 property];
          [v3 addObject:v9];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
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
    v10 = [(CNContactContentUnitaryViewController *)self nameEditingGroups];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __70__CNContactContentUnitaryViewController_propertyItem_willChangeValue___block_invoke;
    v54[3] = &unk_1E74E6E48;
    v11 = v9;
    v55 = v11;
    v12 = [v10 _cn_firstObjectPassingTest:v54];

    v13 = [v12 editingItems];
    v14 = [v13 firstObject];
    v15 = [v14 labeledValue];
    v16 = [v15 value];

    v17 = [(CNContactContentUnitaryViewController *)self _phoneticNameForValue:v7 currentPhoneticName:v16 property:v11];
    v44 = v16;
    if (![v7 length])
    {
      v18 = [v6 labeledValue];
      v19 = [v18 value];
      v20 = v11;
      v21 = v19;
      v22 = v16;
      v23 = v20;
      v24 = [(CNContactContentUnitaryViewController *)self _phoneticNameForValue:v19 currentPhoneticName:v22 property:?];

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
      v30 = [(CNContactContentUnitaryViewController *)self contactView];
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

uint64_t __70__CNContactContentUnitaryViewController_propertyItem_willChangeValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 property];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)propertyCellDidChangeLayout:(id)a3
{
  v6 = a3;
  v4 = [(CNContactContentUnitaryViewController *)self contactView];
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
        v9 = [(CNContactContentUnitaryViewController *)self contactView];
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

  v17 = [(CNContactContentUnitaryViewController *)self contactView];
  [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCellsInGroup:v21 forTableView:v17 reset:1];

  [(CNContactContentUnitaryViewController *)self updateDoneButton];
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
        v10 = [(CNContactContentUnitaryViewController *)self linkedCardsAction];
        goto LABEL_9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [(CNContactContentUnitaryViewController *)self addLinkedCardAction];
LABEL_16:
        v12 = v13;
        [v13 performActionWithSender:v8];
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [(CNContactContentUnitaryViewController *)self addToGroupAction];
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(CNContactContentUnitaryViewController *)self actionProvider];
        v14 = [v12 staticIdentityAction];
        [v14 performActionForItem:v9 sender:v8];
LABEL_21:

        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(CNContactContentUnitaryViewController *)self actionProvider];
        v14 = [v12 addStaticIdentityAction];
        [v14 performActionWithSender:v8];
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [(CNContactContentUnitaryViewController *)self selectContainersAction];
        v16 = [(CNContactContentUnitaryViewController *)self containerContext];
        [(CNPropertySuggestionAction *)v15 performActionWithContainerContext:v16];
      }

      else
      {
        if ([v8 isSuggested])
        {
          v17 = [CNPropertySuggestionAction alloc];
          v18 = [(CNContactContentUnitaryViewController *)self contact];
          v15 = [(CNPropertyAction *)v17 initWithContact:v18 propertyItem:v9];

          [(CNContactAction *)v15 setDelegate:self];
        }

        else
        {
          if (a5 == 7)
          {
            v15 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
            v19 = MEMORY[0x1E69DC648];
            v20 = CNContactsUIBundle();
            v21 = [v20 localizedStringForKey:@"PHONE_ACTION_TTY_CALL" value:&stru_1F0CE7398 table:@"Localized"];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __93__CNContactContentUnitaryViewController_propertyCell_performActionForItem_withTransportType___block_invoke;
            v43[3] = &unk_1E74E6E20;
            v43[4] = self;
            v22 = v9;
            v44 = v22;
            v23 = v8;
            v45 = v23;
            v24 = [v19 actionWithTitle:v21 style:0 handler:v43];
            [(CNPropertySuggestionAction *)v15 addAction:v24];

            v25 = MEMORY[0x1E69DC648];
            v26 = CNContactsUIBundle();
            v27 = [v26 localizedStringForKey:@"PHONE_ACTION_TTY_RELAY_CALL" value:&stru_1F0CE7398 table:@"Localized"];
            v36 = MEMORY[0x1E69E9820];
            v37 = 3221225472;
            v38 = __93__CNContactContentUnitaryViewController_propertyCell_performActionForItem_withTransportType___block_invoke_2;
            v39 = &unk_1E74E6E20;
            v40 = self;
            v41 = v22;
            v28 = v23;
            v42 = v28;
            v29 = [v25 actionWithTitle:v27 style:0 handler:&v36];
            [(CNPropertySuggestionAction *)v15 addAction:v29, v36, v37, v38, v39, v40];

            v30 = MEMORY[0x1E69DC648];
            v31 = CNContactsUIBundle();
            v32 = [v31 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
            v33 = [v30 actionWithTitle:v32 style:1 handler:0];
            [(CNPropertySuggestionAction *)v15 addAction:v33];

            [(CNContactContentUnitaryViewController *)self sender:v28 presentViewController:v15];
            goto LABEL_29;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [CNPropertyAction performDefaultActionForItem:v9 sender:v8];
            goto LABEL_11;
          }

          v34 = [CNPropertyPostalAddressAction alloc];
          v35 = [(CNContactContentUnitaryViewController *)self contact];
          v15 = [(CNPropertyAction *)v34 initWithContact:v35 propertyItem:v9];
        }

        [(CNPropertySuggestionAction *)v15 performActionForItem:v9 sender:v8];
      }

LABEL_29:

      goto LABEL_11;
    }

LABEL_6:
    v11 = [(CNContactContentUnitaryViewController *)self faceTimeAction];
    [v11 setType:a5];

    v10 = [(CNContactContentUnitaryViewController *)self faceTimeAction];
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

  v10 = [(CNContactContentUnitaryViewController *)self sendMessageAction];
LABEL_9:
  v12 = v10;
  [v10 performActionForItem:v9 sender:v8];
LABEL_10:

LABEL_11:
}

void __93__CNContactContentUnitaryViewController_propertyCell_performActionForItem_withTransportType___block_invoke(uint64_t a1)
{
  v2 = [CNPropertyTTYAction alloc];
  v3 = [*(a1 + 32) contact];
  v4 = [(CNPropertyAction *)v2 initWithContact:v3 propertyItem:*(a1 + 40)];

  [(CNContactAction *)v4 setDelegate:*(a1 + 32)];
  [(CNPropertyTTYAction *)v4 performActionForItem:*(a1 + 40) sender:*(a1 + 48)];
}

void __93__CNContactContentUnitaryViewController_propertyCell_performActionForItem_withTransportType___block_invoke_2(uint64_t a1)
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
  v10 = [(CNContactContentUnitaryViewController *)self contactView];
  [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCellsInGroup:v9 forTableView:v10 reset:1];

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

  v16 = [(CNContactContentUnitaryViewController *)self propertyGroups];
  v17 = [v16 objectForKeyedSubscript:v12];
  [(CNContactContentUnitaryViewController *)self _validateGroup:v17];

  v18 = [(CNContactContentUnitaryViewController *)self propertyGroups];
  v19 = [v18 objectForKeyedSubscript:v13];
  [(CNContactContentUnitaryViewController *)self _validateGroup:v19];

LABEL_7:
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    v20 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
    [v20 updateContactWithEditedPropertyItem:v8];
  }

  [(CNContactContentUnitaryViewController *)self updateDoneButton];
}

- (void)propertyCell:(id)a3 didUpdateItem:(id)a4 withNewLabel:(id)a5
{
  v8 = a4;
  v9 = a3;
  [v8 updateLabeledValueWithLabel:a5];
  [v9 updateWithPropertyItem:v8];

  v10 = [v8 group];

  v11 = [(CNContactContentUnitaryViewController *)self contactView];
  [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCellsInGroup:v10 forTableView:v11 reset:1];

  [(CNContactContentUnitaryViewController *)self updateDoneButton];
}

- (void)action:(id)a3 didUpdateWithMenu:(id)a4
{
  if ([a4 count])
  {

    [(CNContactContentUnitaryViewController *)self _notifyObservers];
  }
}

- (void)actionWasCanceled:(id)a3
{
  v6 = [(CNContactContentUnitaryViewController *)self contactView];
  v4 = [(CNContactContentUnitaryViewController *)self contactView];
  v5 = [v4 indexPathForSelectedRow];
  [v6 deselectRowAtIndexPath:v5 animated:1];
}

- (void)completeAddAddressingGrammarAction:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 selectedAddressingGrammar];
  if (((*(*MEMORY[0x1E6996528] + 16))() & 1) == 0)
  {
    objc_opt_class();
    v6 = *MEMORY[0x1E695C1C0];
    v7 = [(CNContactContentUnitaryViewController *)self cardGroupForProperty:*MEMORY[0x1E695C1C0]];
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
      v10 = [v4 indexPath];
      v11 = [(CNContactContentUnitaryViewController *)self editingGroups];
      v12 = [v11 containsObject:v9];

      if ((v12 & 1) == 0)
      {
        v39 = v12;
        v40 = v10;
        v41 = v9;
        v43 = v5;
        v13 = +[CNContactView allCardProperties];
        v14 = [v13 indexOfObject:v6];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = self;
        v15 = [(CNContactContentUnitaryViewController *)self editingGroups];
        v16 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v45;
          while (2)
          {
            v20 = 0;
            v21 = v18;
            v38 = v18 + v17;
            do
            {
              if (*v45 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v22 = *(*(&v44 + 1) + 8 * v20);
              v23 = +[CNContactView allCardProperties];
              v24 = [v22 property];
              v25 = [v23 indexOfObject:v24];

              if (v25 != 0x7FFFFFFFFFFFFFFFLL && v25 >= v14)
              {
                v18 = v21;
                goto LABEL_21;
              }

              ++v21;
              ++v20;
            }

            while (v17 != v20);
            v17 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
            v18 = v38;
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_21:

        self = v42;
        v27 = [(CNContactContentUnitaryViewController *)v42 editingGroups];
        v28 = [v27 mutableCopy];

        v9 = v41;
        [v28 insertObject:v41 atIndex:v18];
        v29 = [v28 copy];
        [(CNContactContentUnitaryViewController *)v42 setEditingGroups:v29];

        v30 = [(CNContactContentUnitaryViewController *)v42 contactView];
        [v30 reloadData];

        v31 = [(CNContactContentUnitaryViewController *)v42 contactView];
        v32 = [(CNContactContentUnitaryViewController *)v42 sectionOfGroup:v41 inTableView:v31];

        v10 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v32];

        v5 = v43;
        v12 = v39;
      }

      if (v10)
      {
        v33 = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
        v34 = [v33 selectedAddressingGrammar];
        v35 = [v9 newEditingItemWithValue:v34];

        if (v35)
        {
          v36 = [(CNContactContentUnitaryViewController *)self contactView];
          [(CNContactContentUnitaryViewController *)self addEditingItem:v35 atIndexPath:v10 forTableView:v36 shouldSetFocus:0];

          if ((v12 & 1) == 0)
          {
            v37 = [(CNContactContentUnitaryViewController *)self contactView];
            [v37 scrollToRowAtIndexPath:v10 atScrollPosition:2 animated:1];
          }
        }
      }
    }
  }
}

- (void)actionDidFinishFromSecondaryAction:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self blockReportAction];

  if (v5 == v4)
  {
    [(CNContactContentUnitaryViewController *)self setShouldIgnoreBlockListChange:1];
    [(CNContactContentUnitaryViewController *)self _setupContactBlockingReportingActionPreservingChanges:1 withUpdate:1];
    v6 = [(CNContactContentUnitaryViewController *)self delegate];
    v7 = [(CNContactContentUnitaryViewController *)self contact];
    [v6 didTapBlockAndReportForContact:v7];

    v8 = [(CNContactContentUnitaryViewController *)self actionsDelegate];
    v9 = [(CNContactContentUnitaryViewController *)self contact];
    [v8 didTapAction:2048 forContact:v9];
  }

  [(CNContactContentUnitaryViewController *)self updateEditNavigationItemsAnimated:1];
}

- (void)actionDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self contactView];
  v6 = [(CNContactContentUnitaryViewController *)self contactView];
  v7 = [v6 indexPathForSelectedRow];
  [v5 deselectRowAtIndexPath:v7 animated:1];

  v8 = [(CNContactContentUnitaryViewController *)self deleteContactAction];
  v9 = v8;
  if (v8 == v4)
  {

    goto LABEL_13;
  }

  v10 = [(CNContactContentUnitaryViewController *)self ignoreContactAction];

  if (v10 == v4)
  {
LABEL_13:
    v19 = [(CNContactContentUnitaryViewController *)self contactDelegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = [(CNContactContentUnitaryViewController *)self contactDelegate];
      v22 = [(CNContactContentUnitaryViewController *)self contact];
      [v21 contactViewController:self didDeleteContact:v22];
    }

    v23 = [(CNContactContentUnitaryViewController *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }

    v25 = [(CNContactContentUnitaryViewController *)self delegate];
    v26 = [(CNContactContentUnitaryViewController *)self contact];
    [v25 didDeleteContact:v26];
    goto LABEL_17;
  }

  v11 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];

  if (v11 == v4)
  {
    v29 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
    v30 = [v29 canPerformAction];

    if ((v30 & 1) == 0)
    {
      v31 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
      v32 = CNContactsUIBundle();
      v33 = [v32 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
      [v31 removeActionWithTitle:v33];
    }

    v27 = [(CNContactContentUnitaryViewController *)self contactView];
    [(CNContactContentUnitaryViewController *)self reloadCardGroupsForFavoritesUpdateInTableView:v27];
    goto LABEL_28;
  }

  v12 = [(CNContactContentUnitaryViewController *)self createNewContactAction];

  if (v12 == v4)
  {
    v27 = [(CNContactContentUnitaryViewController *)self createNewContactAction];
    v34 = [v27 createdContact];
    [(CNContactContentUnitaryViewController *)self createdNewContact:v34];
    goto LABEL_27;
  }

  v13 = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];

  if (v13 == v4)
  {
    v27 = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
    v35 = [v27 chosenContact];
LABEL_26:
    v34 = v35;
    [(CNContactContentUnitaryViewController *)self updatedExistingContact:v35];
    goto LABEL_27;
  }

  v14 = [(CNContactContentUnitaryViewController *)self updateExistingContactAction];

  if (v14 == v4)
  {
    v27 = [(CNContactContentUnitaryViewController *)self updateExistingContactAction];
    v35 = [v27 existingContact];
    goto LABEL_26;
  }

  v15 = [(CNContactContentUnitaryViewController *)self addLinkedCardAction];

  if (v15 == v4)
  {
    v27 = [(CNContactContentUnitaryViewController *)self addLinkedCardAction];
    v34 = [v27 chosenContact];
    [(CNContactContentUnitaryViewController *)self addLinkedContact:v34];
    goto LABEL_27;
  }

  v16 = [(CNContactContentUnitaryViewController *)self addToGroupAction];

  if (v16 == v4)
  {
    v27 = [(CNContactContentUnitaryViewController *)self addToGroupAction];
    v34 = [v27 selectedGroup];
    [(CNContactContentUnitaryViewController *)self addContactToGroup:v34];
    goto LABEL_27;
  }

  v17 = [(CNContactContentUnitaryViewController *)self actionProvider];
  v18 = [v17 addStaticIdentityAction];

  if (v18 == v4)
  {
    v27 = [(CNContactContentUnitaryViewController *)self actionProvider];
    v34 = [v27 addStaticIdentityAction];
    v36 = [v34 chosenIdentity];
    [(CNContactContentUnitaryViewController *)self addStaticIdentity:v36];
LABEL_33:

    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CNContactContentUnitaryViewController *)self reloadUnifiedContact];
    goto LABEL_29;
  }

  v37 = [(CNContactContentUnitaryViewController *)self blockAction];

  if (v37 == v4)
  {
    [(CNContactContentUnitaryViewController *)self setShouldIgnoreBlockListChange:1];
    [(CNContactContentUnitaryViewController *)self _setupContactBlockingActionPreservingChanges:1 withUpdate:1];
    goto LABEL_29;
  }

  v38 = [(CNContactContentUnitaryViewController *)self blockReportAction];

  if (v38 == v4)
  {
    [(CNContactContentUnitaryViewController *)self setShouldIgnoreBlockListChange:1];
    [(CNContactContentUnitaryViewController *)self _setupContactBlockingReportingActionPreservingChanges:1 withUpdate:1];
    goto LABEL_29;
  }

  v39 = [(CNContactContentUnitaryViewController *)self actionProvider];
  v40 = [v39 shareWithFamilyAction];

  if (v40 == v4)
  {
    [(CNContactContentUnitaryViewController *)self updateContact:v4];
    goto LABEL_29;
  }

  v41 = [(CNContactContentUnitaryViewController *)self actionProvider];
  v42 = [v41 stopSharingWithFamilyAction];

  if (v42 != v4)
  {
    v43 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];

    if (v43 == v4)
    {
      v56 = [(CNContactContentUnitaryViewController *)self contactDelegate];
      v57 = objc_opt_respondsToSelector();

      if (v57)
      {
        v58 = [(CNContactContentUnitaryViewController *)self contactDelegate];
        v59 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
        v60 = [v59 contact];
        [v58 contactViewController:self didDeleteContact:v60];
      }

      v61 = [(CNContactContentUnitaryViewController *)self delegate];

      if (!v61)
      {
        goto LABEL_19;
      }

      v25 = [(CNContactContentUnitaryViewController *)self delegate];
      v62 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
    }

    else
    {
      v44 = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];

      if (v44 != v4)
      {
        v45 = [(CNContactContentUnitaryViewController *)self clearRecentsDataAction];

        if (v45 == v4)
        {
          v27 = [(CNContactContentUnitaryViewController *)self delegate];
          [v27 didExecuteClearRecentsDataAction];
          goto LABEL_28;
        }

        v46 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];

        if (v46 == v4)
        {
          v27 = [(CNContactContentUnitaryViewController *)self delegate];
          [v27 didExecuteDeleteFromDowntimeWhitelistAction];
          goto LABEL_28;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v4;
          v47 = [v27 propertyItem];
          v34 = [v47 group];

          v48 = [v27 selectedChoice];
          if (v48 == 2)
          {
            [v27 reject];
            [v34 reloadDataPreservingChanges:0];
            goto LABEL_27;
          }

          if (v48 == 1)
          {
            v49 = [v27 propertyItem];
            v36 = [(CNContactContentUnitaryViewController *)self indexPathOfDisplayedPropertyItem:v49];

            v50 = [(CNContactContentUnitaryViewController *)self contactView];
            [v50 selectRowAtIndexPath:v36 animated:0 scrollPosition:0];

            v51 = dispatch_time(0, 500000000);
            v75 = MEMORY[0x1E69E9820];
            v76 = 3221225472;
            v77 = __57__CNContactContentUnitaryViewController_actionDidFinish___block_invoke;
            v78 = &unk_1E74E77C0;
            v79 = v27;
            v80 = v34;
            dispatch_after(v51, MEMORY[0x1E69E96A0], &v75);

            goto LABEL_33;
          }

LABEL_27:

          goto LABEL_28;
        }

        v70 = [(CNContactContentUnitaryViewController *)self selectContainersAction];

        if (v70 == v4)
        {
          [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
          goto LABEL_29;
        }

        v71 = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];

        if (v71 == v4)
        {
          v27 = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
          [(CNContactContentUnitaryViewController *)self completeAddAddressingGrammarAction:v27];
          goto LABEL_28;
        }

        v72 = [(CNContactContentUnitaryViewController *)self gameCenterAddFriendAction];

        if (v72 == v4)
        {
          v74 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
          [v74 setHasSentInvite:1];

          [(CNContactContentUnitaryViewController *)self _reloadGameCenterGroup];
          goto LABEL_29;
        }

        v25 = [(CNContactContentUnitaryViewController *)self editNameAction];
        if (v25 != v4)
        {
          v73 = [(CNContactContentUnitaryViewController *)self addNameAction];

          if (v73 != v4)
          {
            goto LABEL_29;
          }

          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v63 = [(CNContactContentUnitaryViewController *)self contactDelegate];
      v64 = objc_opt_respondsToSelector();

      if (v64)
      {
        v65 = [(CNContactContentUnitaryViewController *)self contactDelegate];
        v66 = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];
        v67 = [v66 contact];
        [v65 contactViewController:self didDeleteContact:v67];
      }

      v68 = [(CNContactContentUnitaryViewController *)self delegate];

      if (!v68)
      {
        goto LABEL_19;
      }

      v25 = [(CNContactContentUnitaryViewController *)self delegate];
      v62 = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];
    }

    v26 = v62;
    v69 = [v62 contact];
    [v25 didDeleteContact:v69];

LABEL_17:
LABEL_18:

LABEL_19:
    v27 = [(CNContactContentUnitaryViewController *)self navigationController];
    v28 = [v27 popViewControllerAnimated:1];
LABEL_28:

    goto LABEL_29;
  }

  v52 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
  v53 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
  v54 = [v53 title];
  [v52 removeActionWithTitle:v54];

  [(CNContactContentUnitaryViewController *)self setStopSharingWithFamilyAction:0];
  v55 = [(CNContactContentUnitaryViewController *)self delegate];
  [v55 didExecuteDeleteFromDowntimeWhitelistAction];

  if (![(CNContactContentViewController *)self ignoresParentalRestrictions]&& [(CNContactContentUnitaryViewController *)self isEditing])
  {
    [(CNContactContentUnitaryViewController *)self setEditing:0 animated:1];
    [(CNContactContentUnitaryViewController *)self saveChanges];
  }

LABEL_29:
  [(CNContactContentUnitaryViewController *)self updateEditNavigationItemsAnimated:1, v75, v76, v77, v78];
}

uint64_t __57__CNContactContentUnitaryViewController_actionDidFinish___block_invoke(uint64_t a1)
{
  [*(a1 + 32) confirm];
  v2 = *(a1 + 40);

  return [v2 reloadDataPreservingChanges:0];
}

- (void)actionDidUpdate:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];

  if (v5 == v4)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    v10 = [v9 actions];

    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v27 + 1) + 8 * v14) target];
        v16 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];

        if (v15 == v16)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v12)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v25 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
      v26 = [v25 canPerformAction];

      if (v26)
      {
        goto LABEL_21;
      }

      v19 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
      v20 = [v4 target];
      [v19 removeActionWithTarget:v20 selector:{objc_msgSend(v4, "selector")}];
    }

    else
    {
LABEL_13:

      v17 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
      v18 = [v17 canPerformAction];

      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
      v20 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
      v21 = CNContactsUIBundle();
      v22 = [v21 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
      [v19 addAction:v20 withTitle:v22];
    }

    v23 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    v24 = [(CNContactContentUnitaryViewController *)self contactView];
    [(CNContactContentUnitaryViewController *)self reloadCardGroup:v23 forTableView:v24];
    goto LABEL_20;
  }

  v6 = [(CNContactContentUnitaryViewController *)self addNameAction];

  if (v6 == v4)
  {
    v8 = [(CNContactContentUnitaryViewController *)self addNameAction];
    goto LABEL_16;
  }

  v7 = [(CNContactContentUnitaryViewController *)self editNameAction];

  if (v7 == v4)
  {
    v8 = [(CNContactContentUnitaryViewController *)self editNameAction];
LABEL_16:
    v23 = v8;
    v24 = [v8 contact];
    [(CNContactContentUnitaryViewController *)self updateWithNewContact:v24];
LABEL_20:
  }

LABEL_21:
}

- (void)action:(id)a3 pushViewController:(id)a4 sender:(id)a5
{
  v6 = a4;
  [(CNContactContentUnitaryViewController *)self setBackgroundColorIfNeededForPresentedViewController:v6];
  v7 = [(CNContactContentUnitaryViewController *)self navigationItem];
  v8 = [v7 prompt];
  v9 = [v6 navigationItem];
  [v9 setPrompt:v8];

  v10 = [(CNContactContentUnitaryViewController *)self navigationController];
  [v10 pushViewController:v6 animated:1];
}

- (void)action:(id)a3 dismissViewController:(id)a4 sender:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(CNContactContentUnitaryViewController *)self createNewContactAction];
  if (v11 != v8)
  {
    v12 = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
    v13 = v12;
    if (v12 != v8)
    {
      v14 = [(CNContactContentUnitaryViewController *)self updateExistingContactAction];

      if (v14 != v8)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v15 = [(CNContactContentUnitaryViewController *)self delegate];
  if (v15)
  {
    v16 = v15;
    v17 = [(CNContactContentUnitaryViewController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [(CNContactContentUnitaryViewController *)self delegate];
      [v19 isPresentingEditingController:0];
    }
  }

LABEL_10:
  v20 = [(CNContactContentUnitaryViewController *)self presentingDelegate];
  [v20 sender:v9 dismissViewController:v10];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CNContactContentUnitaryViewController_action_dismissViewController_sender___block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__CNContactContentUnitaryViewController_action_dismissViewController_sender___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 1392);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 dismissViewController];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)action:(id)a3 presentViewController:(id)a4 modalPresentationStyle:(int64_t)a5 sender:(id)a6
{
  v21 = a3;
  v10 = a6;
  v11 = a4;
  v12 = [(CNContactContentUnitaryViewController *)self createNewContactAction];
  if (v12 != v21)
  {
    v13 = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
    if (v13 != v21)
    {
      v14 = [(CNContactContentUnitaryViewController *)self updateExistingContactAction];

      if (v14 != v21)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v15 = [(CNContactContentUnitaryViewController *)self delegate];
  if (v15)
  {
    v16 = v15;
    v17 = [(CNContactContentUnitaryViewController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [(CNContactContentUnitaryViewController *)self delegate];
      [v19 isPresentingEditingController:1];
    }
  }

LABEL_10:
  v20 = [(CNContactContentUnitaryViewController *)self presentingDelegate];
  [v20 sender:v10 presentViewController:v11 modalPresentationStyle:a5];
}

- (void)action:(id)a3 presentViewController:(id)a4 sender:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard]|| ![(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    v23 = CNUILogContactCard();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138412802;
      v46 = v25;
      v47 = 2112;
      v48 = v27;
      v49 = 2112;
      v50 = v10;
      _os_log_impl(&dword_199A75000, v23, OS_LOG_TYPE_DEFAULT, "Presenting view controller for action: %@ viewController: %@ sender: %@", buf, 0x20u);
    }

    v28 = [(CNContactContentUnitaryViewController *)self createNewContactAction];
    if (v28 != v8)
    {
      v29 = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
      v30 = v29;
      if (v29 != v8)
      {
        v31 = [(CNContactContentUnitaryViewController *)self updateExistingContactAction];

        if (v31 != v8)
        {
LABEL_29:
          v38 = CNUILogContactCard();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_199A75000, v38, OS_LOG_TYPE_DEFAULT, "Using default modal presentation for non-visionOS platform", buf, 2u);
          }

          v22 = [(CNContactContentUnitaryViewController *)self presentingDelegate];
          [v22 sender:v10 presentViewController:v9];
          goto LABEL_32;
        }

LABEL_24:
        v32 = CNUILogContactCard();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_199A75000, v32, OS_LOG_TYPE_DEFAULT, "Notifying delegate about presenting editing controller", buf, 2u);
        }

        v33 = [(CNContactContentUnitaryViewController *)self delegate];
        if (v33)
        {
          v34 = v33;
          v35 = [(CNContactContentUnitaryViewController *)self delegate];
          v36 = objc_opt_respondsToSelector();

          if (v36)
          {
            v37 = [(CNContactContentUnitaryViewController *)self delegate];
            [v37 isPresentingEditingController:1];
          }
        }

        goto LABEL_29;
      }
    }

    goto LABEL_24;
  }

  v11 = [(CNContactContentUnitaryViewController *)self shareContactAction];

  if (v11 == v8)
  {
    v39 = 1;
  }

  else
  {
    v12 = [(CNContactContentUnitaryViewController *)self blockAction];

    if (v12 == v8)
    {
      v39 = 6;
    }

    else
    {
      v13 = [(CNContactContentUnitaryViewController *)self emergencyContactAction];

      if (v13 == v8)
      {
        v40 = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
        if ([v40 addingToEmergency])
        {
          v39 = 4;
        }

        else
        {
          v39 = 25;
        }
      }

      else
      {
        v14 = [(CNContactContentUnitaryViewController *)self medicalIDAction];

        if (v14 == v8)
        {
          v39 = 5;
        }

        else
        {
          v15 = [(CNContactContentUnitaryViewController *)self addNameAction];

          if (v15 == v8)
          {
            v39 = 27;
          }

          else
          {
            v16 = [(CNContactContentUnitaryViewController *)self editNameAction];

            if (v16 == v8)
            {
              v39 = 24;
            }

            else
            {
              v17 = [(CNContactContentUnitaryViewController *)self addToGroupAction];

              if (v17 == v8)
              {
                v39 = 3;
              }

              else
              {
                v18 = [(CNContactContentUnitaryViewController *)self createNewContactAction];

                if (v18 == v8)
                {
                  v39 = 8;
                }

                else
                {
                  v19 = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];

                  if (v19 == v8)
                  {
                    v39 = 9;
                  }

                  else
                  {
                    v20 = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];

                    if (v20 == v8)
                    {
                      v39 = 14;
                    }

                    else
                    {
                      v21 = [(CNContactContentUnitaryViewController *)self blockReportAction];

                      if (v21 != v8)
                      {
                        v22 = CNUILogContactCard();
                        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412290;
                          v46 = v8;
                          _os_log_debug_impl(&dword_199A75000, v22, OS_LOG_TYPE_DEBUG, "Unknown action type for SwiftUI contact card presentation: %@", buf, 0xCu);
                        }

LABEL_32:

                        goto LABEL_50;
                      }

                      v39 = 21;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v41 = CNUILogContactCard();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v46 = v39;
    _os_log_impl(&dword_199A75000, v41, OS_LOG_TYPE_DEFAULT, "Presenting view controller for SwiftUI contact card action type: %lu", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CNContactContentUnitaryViewController_action_presentViewController_sender___block_invoke;
  block[3] = &unk_1E74E6DF8;
  block[4] = self;
  v43 = v9;
  v44 = v39;
  dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_50:
}

void __77__CNContactContentUnitaryViewController_action_presentViewController_sender___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 1392);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 presentViewController:a1[5] forActionType:{a1[6], v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)action:(id)a3 cellForPropertyItem:(id)a4 sender:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
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
      [(objc_class *)v10 setAllowsActions:[(CNContactContentUnitaryViewController *)self allowsActions]];
    }

    v15[0] = v6;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(CNContactContentUnitaryViewController *)self _updateAvailableTransportsForItems:v13];

    [(CNContactContentUnitaryViewController *)self prepareCell:v10];
  }

  return v10;
}

- (void)action:(id)a3 prepareChildContactViewController:(id)a4 sender:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(CNContactContentUnitaryViewController *)self createNewContactAction];

  v10 = &unk_1F0D4BAC0;
  if (v9 == v7)
  {
    v10 = [&unk_1F0D4BAC0 arrayByExcludingObjectsInArray:&unk_1F0D4BAD8];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [(CNContactContentUnitaryViewController *)self valueForKey:v16, v25];
        if (v17)
        {
          [v8 setValue:v17 forKey:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    [v8 setAllowsSettingLinkedContactsAsPreferred:0];
  }

  [v8 setAllowsAddToFavorites:{0, v25}];
  [v8 setAllowsAddingToAddressBook:0];
  [v8 setShouldShowLinkedContacts:0];
  v18 = [(CNContactContentViewController *)self parentGroup];
  [v8 setParentGroup:v18];

  v19 = [(CNContactContentUnitaryViewController *)self linkedCardsAction];
  if (v19 == v7)
  {
    goto LABEL_17;
  }

  v20 = [(CNContactContentUnitaryViewController *)self addToGroupAction];

  if (v20 != v7)
  {
    v19 = [(CNContactContentViewController *)self parentContainer];
    [v8 setParentContainer:v19];
LABEL_17:
  }

  v21 = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
  [v8 setProhibitedPropertyKeys:v21];

  v22 = [v8 contactView];
  v23 = [(CNContactContentUnitaryViewController *)self contactView];
  v24 = [(CNContactContentUnitaryViewController *)self environment];
  [v22 setAttributesFromContactView:v23 runningInContactsAppOniPad:{objc_msgSend(v24, "runningInContactsAppOniPad")}];
}

- (void)contactInlineActionsViewController:(id)a3 didPerformActionOfType:(id)a4 fromDisambiguation:(BOOL)a5
{
  if (a5)
  {
    [(CNContactContentUnitaryViewController *)self updateActionsControllerByType:a3];
  }
}

- (void)contactInlineActionsViewControllerDidDismissDisambiguationUI:(id)a3
{
  v4 = [(CNContactContentUnitaryViewController *)self contactDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactContentUnitaryViewController *)self contactDelegate];
    [v6 contactViewControllerDidDismissDisambiguationUI:self];
  }
}

- (void)contactInlineActionsViewControllerWillPresentDisambiguationUI:(id)a3
{
  v4 = [(CNContactContentUnitaryViewController *)self contactDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactContentUnitaryViewController *)self contactDelegate];
    [v6 contactViewControllerWillPresentDisambiguationUI:self];
  }
}

- (BOOL)contactInlineActionsViewController:(id)a3 shouldPerformActionOfType:(id)a4 withContactProperty:(id)a5
{
  v6 = a5;
  v7 = [v6 contact];
  v8 = [v6 key];
  v9 = [v6 identifier];

  LOBYTE(self) = [(CNContactContentUnitaryViewController *)self contactViewController:self shouldPerformDefaultActionForContact:v7 propertyKey:v8 propertyIdentifier:v9];
  return self;
}

- (void)viewController:(id)a3 presentationControllerWillDismiss:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(CNContactContentUnitaryViewController *)self presentedViewController];

  if (v7 == v6)
  {
    [(CNContactContentUnitaryViewController *)self presentationControllerWillDismiss:v8];
  }
}

- (BOOL)isPresentingModalViewController
{
  v2 = [(CNContactContentUnitaryViewController *)self presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CNContactContentUnitaryViewController *)self isOutOfProcess])
  {
    v11 = [(CNContactContentUnitaryViewController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      [(CNContactContentUnitaryViewController *)self shouldPresentFullscreen:0];
    }
  }

  if ([(CNContactContentUnitaryViewController *)self isShowingSNaPEditFlow])
  {
    [(CNContactContentUnitaryViewController *)self finishSNaPEditing:v8];
    [(CNContactContentUnitaryViewController *)self setIsShowingSNaPEditFlow:0];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__CNContactContentUnitaryViewController_sender_dismissViewController_completionHandler___block_invoke;
  v14[3] = &unk_1E74E6DD0;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v9 dismissViewControllerAnimated:1 completion:v14];
}

uint64_t __88__CNContactContentUnitaryViewController_sender_dismissViewController_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1354] == 1)
  {
    [v2 _endDisablingInterfaceAutorotation];
    *(*(a1 + 32) + 1354) = 0;
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
  v21 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = +[CNContactStyle currentStyle];
  v6 = [v5 backgroundColor];
  if (v6)
  {
    v7 = +[CNContactStyle currentStyle];
    v8 = [v7 backgroundColor];
    v9 = [MEMORY[0x1E69DC888] clearColor];
    v10 = [v8 isEqual:v9];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [(CNContactContentUnitaryViewController *)self view];
  v13 = [v12 superview];
  v14 = [v13 backgroundColor];
  v15 = [MEMORY[0x1E69DC888] clearColor];
  v16 = [v14 isEqual:v15];

  if (((v11 | v16 | isKindOfClass) & 1) == 0)
  {
    v17 = [(CNContactContentUnitaryViewController *)self view];
    v18 = [v17 superview];
    v19 = [v18 backgroundColor];
    v20 = [v21 view];
    [v20 setBackgroundColor:v19];
  }
}

- (int64_t)_modalPresentationStyleForViewController:(id)a3
{
  v4 = a3;
  if (NSClassFromString(&cfstr_Qlpreviewcontr.isa) && (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v4 modalPresentationStyle])
  {
    v5 = 0;
    goto LABEL_58;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [v4 view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
LABEL_9:
      v5 = 7;
      goto LABEL_58;
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v8 = getSLComposeViewControllerClass_softClass_64672;
    v39 = getSLComposeViewControllerClass_softClass_64672;
    if (!getSLComposeViewControllerClass_softClass_64672)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __getSLComposeViewControllerClass_block_invoke_64673;
      v35[3] = &unk_1E74E7518;
      v35[4] = &v36;
      __getSLComposeViewControllerClass_block_invoke_64673(v35);
      v8 = v37[3];
    }

    v9 = v8;
    _Block_object_dispose(&v36, 8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 5;
      goto LABEL_58;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v4 viewControllers];
      v11 = [v10 firstObject];
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();

      if (v12)
      {
        v13 = +[CNContactStyle currentStyle];
        if ([v13 shouldPresentInCurrentContext])
        {
          v5 = 6;
        }

        else
        {
          v5 = -2;
        }

LABEL_57:

        goto LABEL_58;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v4 viewControllers];
      v15 = [v14 firstObject];
      objc_opt_class();
      v16 = objc_opt_isKindOfClass();

      if (v16)
      {
        v13 = +[CNContactStyle currentStyle];
        if ([v13 shouldPresentInCurrentContext])
        {
          v5 = 3;
        }

        else
        {
          v27 = [MEMORY[0x1E69DC938] currentDevice];
          v28 = [v27 userInterfaceIdiom];

          if ((v28 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            v5 = 2;
          }

          else
          {
            v5 = -2;
          }
        }

        goto LABEL_57;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v4 viewControllers];
      v13 = [v17 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = 1;
      }

      else
      {
        objc_opt_class();
        v18 = objc_opt_isKindOfClass();
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v19 = 1;
LABEL_30:
        if (-[UIViewController ab_isInPopover](self, "ab_isInPopover") || CNUIIsFaceTime() && ([MEMORY[0x1E69DC938] currentDevice], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "userInterfaceIdiom"), v20, (v21 & 0xFFFFFFFFFFFFFFFBLL) == 1))
        {
          v5 = 2;
        }

        else if ((-[CNContactContentUnitaryViewController isOutOfProcess](self, "isOutOfProcess") || CNUIIsDDActionsService()) && ([MEMORY[0x1E69DC938] currentDevice], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "userInterfaceIdiom"), v22, (v23 & 0xFFFFFFFFFFFFFFFBLL) == 1) || (v19 & 1) != 0 && (objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "userInterfaceIdiom"), v24, (v25 & 0xFFFFFFFFFFFFFFFBLL) != 1))
        {
          v5 = 0;
        }

        else
        {
          v26 = +[CNContactStyle currentStyle];
          if ([v26 shouldPresentInCurrentContext])
          {
            v5 = 3;
          }

          else
          {
            v31 = [MEMORY[0x1E69DC938] currentDevice];
            v32 = [v31 userInterfaceIdiom];

            if ((v32 & 0xFFFFFFFFFFFFFFFBLL) == 1)
            {
              v5 = 2;
            }

            else
            {
              v5 = -2;
            }
          }
        }

        goto LABEL_57;
      }

      objc_opt_class();
      v29 = objc_opt_isKindOfClass();
      v19 = v29;
      if ((v18 | v29))
      {
        goto LABEL_30;
      }
    }

    if (![(UIViewController *)self ab_isInPopover]&& ![(UIViewController *)self ab_isInSheet])
    {
      v30 = +[CNContactStyle currentStyle];
      if (([v30 shouldPresentInCurrentContext] & 1) != 0 || CNUIIsDDActionsService())
      {
      }

      else
      {
        v34 = _CFMZEnabled();

        if (!v34)
        {
          goto LABEL_9;
        }
      }
    }

    v5 = 3;
    goto LABEL_58;
  }

  v5 = [v4 modalPresentationStyle];
LABEL_58:

  return v5;
}

- (void)performConfirmedCancel
{
  [(CNContactContentUnitaryViewController *)self cancelAsyncLookups];
  v3 = [(CNContactContentUnitaryViewController *)self contact];
  if ([v3 isUnknown])
  {
    v4 = [(CNContactContentUnitaryViewController *)self shadowCopyOfReadonlyContact];
    if (!v4)
    {

      goto LABEL_8;
    }

    v5 = v4;
    v6 = [(CNContactContentViewController *)self alwaysEditing];

    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v7 = [(CNContactContentViewController *)self alwaysEditing];

  if (!v7)
  {
LABEL_6:
    [(CNContactContentUnitaryViewController *)self setEditing:0 animated:1];
  }

LABEL_8:
  [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:0];
  if ([(CNContactContentUnitaryViewController *)self mode]== 3)
  {
    v8 = [(CNContactContentUnitaryViewController *)self contact];
    v9 = [v8 identifier];

    if (v9)
    {
      [(CNContactContentUnitaryViewController *)self cleanupRecentMetadata];
    }
  }

  v10 = [(CNContactContentUnitaryViewController *)self view];
  [v10 endEditing:1];

  [(CNContactContentUnitaryViewController *)self setEditingLinkedContacts:0];
  v11 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
  [v11 clearDisplay];

  [(CNContactContentUnitaryViewController *)self setGroupEditingContext:0];
  [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:0];
  v12 = [(CNContactContentUnitaryViewController *)self editingContactView];
  [v12 reloadData];

  if ([(CNContactContentUnitaryViewController *)self supportsDrafts])
  {

    +[CNUIDraftSupport deleteDrafts];
  }
}

- (void)presentationControllerWillDismiss:(id)a3
{
  if ([(CNContactContentUnitaryViewController *)self isOutOfProcess])
  {

    [(CNContactContentUnitaryViewController *)self shouldPresentFullscreen:0];
  }
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v13 = a3;
  v8 = a5;
  if (a4 != 5)
  {
    if ([(CNContactContentUnitaryViewController *)self isOutOfProcess])
    {
      v9 = [(CNContactContentUnitaryViewController *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [v13 presentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          [(CNContactContentUnitaryViewController *)self shouldPresentFullscreen:1];
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
  if ([(CNContactContentUnitaryViewController *)self isOutOfProcess]&& [(CNContactContentUnitaryViewController *)self isPresentingModalViewController])
  {
    v6 = [(CNContactContentUnitaryViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [(CNContactContentUnitaryViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v5 = [(CNContactContentUnitaryViewController *)self isPresentingFullscreenForOutOfProcess];

        [(CNContactContentUnitaryViewController *)self shouldPresentFullscreen:v5];
      }
    }

    else
    {
    }
  }
}

- (void)updateStaticDisplayHeaderImageVisibility
{
  v3 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  staticDisplayHeaderView = self->_staticDisplayHeaderView;

  if (v3 == staticDisplayHeaderView)
  {
    v5 = self->_staticDisplayHeaderView;

    [(CNContactHeaderStaticDisplayView *)v5 updateImageViewVisiblity];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v21 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(CNContactContentUnitaryViewController *)self presentedViewController];
  v9 = [v8 popoverPresentationController];
  v10 = [v9 sourceView];

  if (v10)
  {
    v11 = [v10 superview];
    v12 = [(CNContactContentUnitaryViewController *)self contactView];
    v13 = v11 == v12;
  }

  else
  {
    v13 = 0;
  }

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__CNContactContentUnitaryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v18[3] = &unk_1E74E6D80;
  objc_copyWeak(&v19, &location);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__CNContactContentUnitaryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v15[3] = &unk_1E74E6DA8;
  v17 = v13;
  v15[4] = self;
  v14 = v10;
  v16 = v14;
  [v7 animateAlongsideTransition:v18 completion:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __92__CNContactContentUnitaryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained shouldUseStaticHeader])
  {
    if (([WeakRetained hasSetupViewHierarchy] & 1) == 0)
    {
      [WeakRetained setupViewHierarchy];
    }

    [WeakRetained setupConstraints];
    [WeakRetained updateStaticDisplayHeaderImageVisibility];
    v1 = [WeakRetained applyContactStyle];
  }

  if ([WeakRetained displayNavigationButtonsShouldUsePlatterStyle])
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    v3 = [v2 userInterfaceIdiom] == 0;

    [WeakRetained updateEditNavigationItemsAnimated:1 updateTintColor:v3];
  }
}

void __92__CNContactContentUnitaryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v4 = [*(a1 + 32) contactView];
      [*(a1 + 40) frame];
      [v4 scrollRectToVisible:0 animated:?];
    }
  }
}

- (void)shouldPresentFullscreen:(BOOL)a3
{
  v3 = a3;
  [(CNContactContentUnitaryViewController *)self setIsPresentingFullscreenForOutOfProcess:?];
  v5 = [(CNContactContentUnitaryViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNContactContentUnitaryViewController *)self delegate];
    [v7 isPresentingFullscreen:v3];
  }
}

- (CGRect)centeredSourceRect:(CGRect)a3 inContactView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(CNContactContentUnitaryViewController *)self contactView];
  v11 = [v10 isEditing];

  if ((v11 & 1) == 0)
  {
    [v9 layoutMargins];
    v13 = v12;
    [v9 layoutMargins];
    width = width - (v13 + v14);
    [v9 layoutMargins];
    v16 = v15;
    v17 = +[CNContactStyle currentStyle];
    [v17 sectionContentInset];
    x = x + v16 - v18;
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)sender:(id)a3 presentViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CNContactContentUnitaryViewController *)self sender:v7 presentViewController:v6 modalPresentationStyle:[(CNContactContentUnitaryViewController *)self _modalPresentationStyleForViewController:v6]];
}

- (void)sender:(id)a3 presentViewController:(id)a4 modalPresentationStyle:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CNContactContentUnitaryViewController *)self splitViewController];
  if (v10)
  {
    v11 = v10;
    v12 = [(CNContactContentUnitaryViewController *)self splitViewController];
    v13 = [v12 firstResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [(CNContactContentUnitaryViewController *)self splitViewController];
      v16 = [v15 view];
      [v16 endEditing:1];
    }
  }

  [v9 setModalPresentationStyle:a5];
  v17 = +[CNContactStyle currentStyle];
  [v9 setModalTransitionStyle:{objc_msgSend(v17, "modalTransitionStyle")}];

  objc_opt_class();
  v46 = v8;
  if (objc_opt_isKindOfClass())
  {
    v18 = v46;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = [v9 popoverPresentationController];
  [v20 setSourceView:v19];

  [v19 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(CNContactContentUnitaryViewController *)self contactView];
  [(CNContactContentUnitaryViewController *)self centeredSourceRect:v29 inContactView:v22, v24, v26, v28];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [v9 popoverPresentationController];
  [v38 setSourceRect:{v31, v33, v35, v37}];

  v39 = [v9 popoverPresentationController];
  [v39 setPermittedArrowDirections:15];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = [v9 presentationController];
    [v40 setDelegate:self];
  }

  objc_opt_class();
  v41 = objc_opt_isKindOfClass();
  if (!self->_disablingRotation && (v41 & 1) == 0)
  {
    v42 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v42 userInterfaceIdiom])
    {
LABEL_15:

      goto LABEL_16;
    }

    v43 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v43 _referenceBounds];
    if (CGRectGetHeight(v48) <= 667.0 || [v9 modalPresentationStyle])
    {

      goto LABEL_15;
    }

    v44 = [v9 supportedInterfaceOrientations];
    v45 = [(CNContactContentUnitaryViewController *)self supportedInterfaceOrientations];

    if (v44 != v45)
    {
      [(CNContactContentUnitaryViewController *)self _beginDisablingInterfaceAutorotation];
      self->_disablingRotation = 1;
    }
  }

LABEL_16:
  [(CNContactContentUnitaryViewController *)self setBackgroundColorIfNeededForPresentedViewController:v9];
  [(CNContactContentUnitaryViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:v6 forTableView:v8]&& ![(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:v6 forTableView:v8])
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
  v6 = a3;
  v7 = a4;
  if ([(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:v7 forTableView:v6]|| [(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:v7 forTableView:v6])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:v7 forTableView:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = CNContactsUIBundle();
      v11 = v10;
      v12 = @"UNLINK";
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v10 = CNContactsUIBundle();
      v11 = v10;
      if (isKindOfClass)
      {
        v12 = @"LIST_SWIPE_ACTION_REMOVE_FROM_GROUP";
      }

      else
      {
        v12 = @"DELETE";
      }
    }

    v8 = [v10 localizedStringForKey:v12 value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v8;
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
  v9 = a3;
  v10 = a5;
  v11 = !-[CNContactContentUnitaryViewController isPersonHeaderIndexPath:forTableView:](self, "isPersonHeaderIndexPath:forTableView:", v10, v9) && !-[CNContactContentUnitaryViewController isSharedProfileBannerSectionIndexPath:forTableView:](self, "isSharedProfileBannerSectionIndexPath:forTableView:", v10, v9) && ([v9 isEditing] & 1) == 0 && !-[CNContactContentUnitaryViewController _indexPathIsActionItem:forTableView:](self, "_indexPathIsActionItem:forTableView:", v10, v9) && sel_copy_ == a4;

  return v11;
}

- (BOOL)tableView:(id)a3 shouldShowMenuForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:v7 forTableView:v6]|| [(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:v7 forTableView:v6])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:v7 forTableView:v6];
    v10 = [(CNContactContentUnitaryViewController *)self isEditing];
    v8 = 0;
    if ((v10 & 1) == 0 && v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v8 = objc_opt_isKindOfClass() ^ 1;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8 & 1;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:v7 forTableView:v6]&& ![(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:v7 forTableView:v6])
  {
    v9 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:v7 forTableView:v6];
    if ([(CNContactContentUnitaryViewController *)self isEditing])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        if ([v10 isReadonly] & 1) != 0 || !objc_msgSend(v10, "canRemove") || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v8 = 0;
        }

        else
        {
          objc_opt_class();
          v8 = (objc_opt_isKindOfClass() & 1) == 0;
        }

        goto LABEL_16;
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
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v8 = 1;
              goto LABEL_16;
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
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    v8 = objc_opt_isKindOfClass() & 1;
                    goto LABEL_16;
                  }
                }
              }
            }
          }
        }
      }

      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  v8 = 0;
LABEL_17:

  return v8;
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v5 = [(CNContactContentUnitaryViewController *)self _cellIdentifierForTableView:a3 indexPath:a4];
  v6 = [(CNContactContentUnitaryViewController *)self contactView];
  v7 = [objc_opt_class() classForCellIdentifier:v5];

  LOBYTE(v6) = [v7 shouldIndentWhileEditing];
  return v6;
}

- (id)groupContext
{
  v3 = [(CNContactContentUnitaryViewController *)self groupEditingContext];

  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *MEMORY[0x1E6996530];
  v5 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
  v6 = [v5 addedGroups];
  if ((*(v4 + 16))(v4, v6))
  {
    v7 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
    v8 = [v7 removedGroups];
    v9 = (*(v4 + 16))(v4, v8);

    if (v9)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v11 = [(CNContactContentUnitaryViewController *)self groupsAndContainersSaveManager];
  v12 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
  v13 = [v12 addedGroups];
  v14 = [v11 groupsByContainerDictForContainers:0 groups:v13];

  v15 = [CNUIGroupContext alloc];
  v16 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
  v17 = [v16 removedGroups];
  v10 = [(CNUIGroupContext *)v15 initWithAddedGroupsByContainerDict:v14 removedGroups:v17];

LABEL_7:

  return v10;
}

- (void)authorizeEditContactWithTargetGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (-[CNContactContentUnitaryViewController saveWasAuthorized](self, "saveWasAuthorized") || (-[CNContactContentUnitaryViewController groupsAndContainersSaveManager](self, "groupsAndContainersSaveManager"), v8 = objc_claimAutoreleasedReturnValue(), -[CNContactContentUnitaryViewController contact](self, "contact"), v9 = objc_claimAutoreleasedReturnValue(), [v6 identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isAuthorizedToEditContact:withTargetGroupWithIdentifier:ignoresParentalRestrictions:", v9, v10, -[CNContactContentUnitaryViewController saveWasAuthorized](self, "saveWasAuthorized")), v10, v9, v8, (v11 & 1) != 0))
    {
      v7[2](v7);
    }

    else
    {
      objc_initWeak(&location, self);
      v12 = [(CNContactContentUnitaryViewController *)self groupsAndContainersSaveManager];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __88__CNContactContentUnitaryViewController_authorizeEditContactWithTargetGroup_completion___block_invoke;
      v13[3] = &unk_1E74E6D58;
      objc_copyWeak(&v15, &location);
      v14 = v7;
      [v12 authorizeForViewController:self sender:self animated:1 completionBlock:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __88__CNContactContentUnitaryViewController_authorizeEditContactWithTargetGroup_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setEditAuthorizationResult:a2];
  if (a2 == 2)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)authorizedAddContactToGroup:(id)a3
{
  v4 = a3;
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    v5 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
    [v5 addGroup:v4];

    [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
  }

  else
  {
    v6 = [(CNContactContentUnitaryViewController *)self groupsAndContainersSaveManager];
    v7 = [(CNContactContentUnitaryViewController *)self contact];
    v8 = [v6 addContact:v7 toGroup:v4 moveWasAuthorized:1];

    if ([(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard])
    {
      v9 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      [v9 setForceReload:1];
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__CNContactContentUnitaryViewController_authorizedAddContactToGroup___block_invoke;
      aBlock[3] = &unk_1E74E6A88;
      aBlock[4] = self;
      v10 = _Block_copy(aBlock);
      [(CNContactContentUnitaryViewController *)self performWhenViewIsLaidOut:v10];
    }
  }
}

void __69__CNContactContentUnitaryViewController_authorizedAddContactToGroup___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 contactView];
  v3 = [*(a1 + 32) cardGroupMembershipGroup];
  [v2 _scrollContactView:v4 toVisibleGroup:v3 animated:0];
}

- (void)addContactToGroup:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CNContactContentUnitaryViewController_addContactToGroup___block_invoke;
  v6[3] = &unk_1E74E6D30;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(CNContactContentUnitaryViewController *)self authorizeEditContactWithTargetGroup:v5 completion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __59__CNContactContentUnitaryViewController_addContactToGroup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained authorizedAddContactToGroup:*(a1 + 32)];
}

- (void)authorizedRemoveContactFromGroup:(id)a3
{
  v4 = a3;
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    v5 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
    [v5 removeGroup:v4];

    [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
  }

  else
  {
    v6 = [(CNContactContentUnitaryViewController *)self groupsAndContainersSaveManager];
    v7 = [(CNContactContentUnitaryViewController *)self contact];
    [v6 removeContact:v7 fromGroup:v4 ignoresGuardianRestrictions:1];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__CNContactContentUnitaryViewController_authorizedRemoveContactFromGroup___block_invoke;
    aBlock[3] = &unk_1E74E6A88;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    [(CNContactContentUnitaryViewController *)self performWhenViewIsLaidOut:v8];
  }
}

void __74__CNContactContentUnitaryViewController_authorizedRemoveContactFromGroup___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 contactView];
  v3 = [*(a1 + 32) cardGroupMembershipGroup];
  [v2 _scrollContactView:v4 toVisibleGroup:v3 animated:0];
}

- (void)removeContactFromGroup:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__CNContactContentUnitaryViewController_removeContactFromGroup___block_invoke;
  v6[3] = &unk_1E74E6D30;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(CNContactContentUnitaryViewController *)self authorizeEditContactWithTargetGroup:v5 completion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __64__CNContactContentUnitaryViewController_removeContactFromGroup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained authorizedRemoveContactFromGroup:*(a1 + 32)];
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNContactContentUnitaryViewController *)self environment];
  v9 = [v8 runningInContactsAppOniPad];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:v7 forTableView:v6];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(CNContactContentUnitaryViewController *)self allowsEditing])
    {
      v12 = v11;
      v13 = [v12 group];
      if (v13)
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v15 = CNContactsUIBundle();
        v16 = [v15 localizedStringForKey:@"LIST_SWIPE_ACTION_REMOVE_FROM_GROUP" value:&stru_1F0CE7398 table:@"Localized"];

        objc_initWeak(&location, self);
        v17 = MEMORY[0x1E69DC8E8];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __102__CNContactContentUnitaryViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
        v20[3] = &unk_1E74E6D08;
        objc_copyWeak(&v22, &location);
        v21 = v13;
        v18 = [v17 contextualActionWithStyle:1 title:v16 handler:v20];
        [v14 addObject:v18];
        v10 = [MEMORY[0x1E69DCFC0] configurationWithActions:v14];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void __102__CNContactContentUnitaryViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeContactFromGroup:*(a1 + 32)];
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v23 = a3;
  v7 = a4;
  [v7 updateConstraintsIfNeeded];
  v8 = [v7 backgroundView];
  v9 = [(CNContactContentUnitaryViewController *)self contactView];
  v10 = [v9 sectionBackgroundColor];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = [(CNContactContentUnitaryViewController *)self environment];
    v11 = [v12 runningInContactsAppOniPad];
  }

  if (v11 && !v8)
  {
    v13 = objc_alloc(MEMORY[0x1E69DD250]);
    v8 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  v14 = [MEMORY[0x1E69966E8] currentEnvironment];
  v15 = [v14 featureFlags];
  v16 = [v15 isFeatureEnabled:29];

  if (v16)
  {
    v17 = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [v7 setBackgroundConfiguration:v17];

    goto LABEL_16;
  }

  v18 = [(CNContactContentUnitaryViewController *)self environment];
  v19 = [v18 runningInContactsAppOniPad];
  if (v19 && ([(CNContactContentUnitaryViewController *)self displayContactView], v15 = objc_claimAutoreleasedReturnValue(), v15 == v23))
  {
    v22 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    [v8 setBackgroundColor:v22];
  }

  else
  {
    v20 = [(CNContactContentUnitaryViewController *)self contactView];
    v21 = [v20 sectionBackgroundColor];
    [v8 setBackgroundColor:v21];

    if (!v19)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  [v7 setBackgroundView:v8];
LABEL_16:
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v22 = a3;
  v8 = a4;
  [(CNContactContentUnitaryViewController *)self tableView:v22 willDisplayFooterView:v8 forSection:a5];
  [v8 _cnui_applyContactStyle];
  v9 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:a5 forTableView:v22];
  v10 = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
  if (v9 == v10 && ([(CNContactContentUnitaryViewController *)self ignoreContactAction], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    v19 = [(CNContactContentUnitaryViewController *)self contactView];
    v20 = [v19 sectionBackgroundColor];

    if (v20)
    {
      v13 = [(CNContactContentUnitaryViewController *)self contactView];
      v14 = [v13 sectionBackgroundColor];
      goto LABEL_15;
    }
  }

  else
  {
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = +[CNContactStyle currentStyle];
      v12 = [v11 backgroundColor];

      if (v12)
      {
        v13 = +[CNContactStyle currentStyle];
        v14 = [v13 backgroundColor];
LABEL_15:
        v16 = v14;
        v21 = [v8 backgroundView];
        [v21 setBackgroundColor:v16];

        goto LABEL_16;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v13 = [(CNContactContentUnitaryViewController *)self environment];
    if (![v13 runningInContactsAppOniPad])
    {
LABEL_17:

      goto LABEL_18;
    }

    v15 = [(CNContactContentUnitaryViewController *)self displayContactView];

    if (v15 != v22)
    {
      goto LABEL_18;
    }

    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    v16 = [v8 textLabel];
    [v16 setFont:v13];
LABEL_16:

    goto LABEL_17;
  }

LABEL_18:
}

- (BOOL)tableView:(id)a3 shouldHaveFullLengthBottomSeparatorForSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:v6];
  v8 = [(CNContactContentUnitaryViewController *)self displayContactView];
  v9 = v8;
  if (v8 != v6)
  {

LABEL_4:
    v12 = [(CNContactContentUnitaryViewController *)self editingContactView];

    if (v12 != v6)
    {
LABEL_5:
      isKindOfClass = 0;
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [(CNContactContentUnitaryViewController *)self nameEditingGroups];
      v15 = [v14 indexOfObject:v7];
      v16 = [(CNContactContentUnitaryViewController *)self nameEditingGroups];
      isKindOfClass = v15 == [v16 count] - 1;

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v10 = [(CNContactContentUnitaryViewController *)self environment];
  v11 = [v10 runningInContactsAppOniPad];

  if (v11)
  {
    goto LABEL_4;
  }

  v17 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];

  v18 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];

  v19 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
  v20 = v19;
  if (v7 == v19)
  {

    goto LABEL_26;
  }

  v21 = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];

  if (v17)
  {
    v22 = v7 == v18;
  }

  else
  {
    v22 = 0;
  }

  v23 = !v22;
  isKindOfClass = 1;
  if (v7 != v21 && v23)
  {
    if (v17 && [v7 isMemberOfClass:objc_opt_class()])
    {
      v24 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
      v25 = [v24 actionItems];
      if ([v25 count])
      {
        v26 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
        v27 = [v26 addSpacerFromPreviousGroup];

        if (!v27)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }
    }

    if (([v7 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        goto LABEL_27;
      }
    }

LABEL_26:
    isKindOfClass = 1;
  }

LABEL_27:

  return isKindOfClass & 1;
}

- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNContactContentUnitaryViewController *)self editingContactView];

  if (v7 == v6)
  {
    isKindOfClass = 1;
  }

  else
  {
    v8 = [(CNContactContentUnitaryViewController *)self displayContactView];
    if (v8 != v6)
    {
      isKindOfClass = 0;
LABEL_30:

      goto LABEL_31;
    }

    v10 = [(CNContactContentUnitaryViewController *)self environment];
    v11 = [v10 runningInContactsAppOniPad];

    if (v11)
    {
      v12 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:v6];
      objc_opt_class();
      v13 = v12;
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      objc_opt_class();
      v16 = v13;
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      objc_opt_class();
      v19 = v16;
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      objc_opt_class();
      v22 = v19;
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      objc_opt_class();
      v25 = v22;
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      objc_opt_class();
      v8 = v25;
      if (objc_opt_isKindOfClass())
      {
        v28 = v8;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;

      if (v15)
      {
        isKindOfClass = 1;
      }

      else if (v18 | v21)
      {
        isKindOfClass = 0;
      }

      else
      {
        isKindOfClass = 1;
        if (!v24 && !v27 && !v29)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
          }
        }
      }

      goto LABEL_30;
    }

    isKindOfClass = 0;
  }

LABEL_31:

  return isKindOfClass & 1;
}

- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4
{
  v5 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:a3];
  if (![(CNContactContentUnitaryViewController *)self isEditing])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(CNContactContentUnitaryViewController *)self contact];
      v10 = [v9 mainStoreLinkedContacts];
      if ([v10 count] >= 2)
      {
        goto LABEL_12;
      }

      v11 = [(CNContactContentUnitaryViewController *)self isEditing];

      if (v11)
      {
        goto LABEL_14;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_14;
    }

    v9 = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
    if (v5 == v9)
    {
LABEL_13:

      goto LABEL_14;
    }

    v10 = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
    if (v5 != v10)
    {
      v12 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];

      if (v5 != v12)
      {
        v8 = [v5 addSpacerFromPreviousGroup];
        goto LABEL_15;
      }

LABEL_14:
      v8 = 1;
      goto LABEL_15;
    }

LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = [(CNContactContentUnitaryViewController *)self nameEditingGroups];
  v7 = [v6 firstObject];
  v8 = v5 == v7;

LABEL_15:
  return v8;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:v6];
  if (-[CNContactContentUnitaryViewController isSharedProfileBannerSectionForTableView:section:](self, "isSharedProfileBannerSectionForTableView:section:", v6, a4) || -[CNContactContentUnitaryViewController isPersonHeaderSectionForTableView:section:](self, "isPersonHeaderSectionForTableView:section:", v6, a4) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (-[CNContactContentUnitaryViewController nameEditingGroups](self, "nameEditingGroups"), v8 = objc_claimAutoreleasedReturnValue(), [v8 lastObject], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7 != v9))
  {
    v10 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v12 = v7;
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if ([v14 valueEditingItemsCount] >= 2)
      {
        v15 = CNContactsUIBundle();
        v10 = [v15 localizedStringForKey:@"ADDRESSING_GRAMMAR_CARD_GROUP_FOOTER" value:&stru_1F0CE7398 table:@"Localized"];
      }

      else
      {
        v10 = &stru_1F0CE7398;
      }
    }

    else
    {
      v10 = &stru_1F0CE7398;
    }
  }

  return v10;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionForTableView:v6 section:a4]|| [(CNContactContentUnitaryViewController *)self isPersonHeaderSectionForTableView:v6 section:a4])
  {
    v7 = 0;
    goto LABEL_16;
  }

  v8 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(CNContactContentUnitaryViewController *)self contact];
    v10 = [v9 mainStoreLinkedContacts];
    if ([v10 count] >= 2)
    {

      goto LABEL_9;
    }

    v11 = [(CNContactContentUnitaryViewController *)self isEditing];

    if (v11)
    {
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
    v13 = v12;
    if (v8 == v12)
    {
      v14 = [(CNContactContentUnitaryViewController *)self ignoreContactAction];

      if (v14)
      {
        v7 = &stru_1F0CE7398;
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

    goto LABEL_15;
  }

LABEL_9:
  v7 = [v8 title];
LABEL_15:

LABEL_16:

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(CNContactContentUnitaryViewController *)self shouldShowVerifiedFooterInSection:a4 inTableView:v6])
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v8];

    v10 = [(CNContactContentViewController *)self verifiedInfoMessage];
    [v9 setAttributedString:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldShowVerifiedFooterInSection:(int64_t)a3 inTableView:(id)a4
{
  v6 = a4;
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0 || ([(CNContactContentViewController *)self verifiedInfoMessage], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v11 = 0;
  }

  else
  {
    v8 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:a3 forTableView:v6];
    v9 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    if (v8 == v9)
    {
      v11 = [(CNContactContentUnitaryViewController *)self tableView:v6 shouldHaveFullLengthBottomSeparatorForSection:a3];
    }

    else
    {
      v10 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
      v11 = v8 == v10 && ([v8 addSpacerFromPreviousGroup] & 1) == 0 && -[CNContactContentUnitaryViewController tableView:shouldHaveFullLengthBottomSeparatorForSection:](self, "tableView:shouldHaveFullLengthBottomSeparatorForSection:", v6, a3);
    }
  }

  return v11;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (!a4 && self->_editingContactView == v6)
  {
    v9 = *MEMORY[0x1E6996568];
    v10 = [(CNContactContentViewController *)self warningMessage];
    LOBYTE(v9) = (*(v9 + 16))(v9, v10);

    if (v9)
    {
      v8 = 0;
    }

    else
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v8 = [(CNContactView *)v7 dequeueReusableHeaderFooterViewWithIdentifier:v12];

      v13 = *MEMORY[0x1E6996530];
      v14 = [(CNContactContentUnitaryViewController *)self mutableContact];
      v15 = [v14 phoneNumbers];
      [v8 setShouldDisplayWarningIcon:{(*(v13 + 16))(v13, v15)}];

      v16 = [v8 warningText];
      v17 = [(CNContactContentViewController *)self warningMessage];
      LOBYTE(v15) = [v16 isEqual:v17];

      if ((v15 & 1) == 0)
      {
        v18 = [(CNContactContentViewController *)self warningMessage];
        [v8 setWarningText:v18];
      }
    }
  }

  return v8;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:v6];
  if (self->_editingContactView == v6)
  {
    v12 = [(CNContactContentUnitaryViewController *)self editingGroups];
    v13 = [v12 lastObject];

    if (v7 == v13)
    {
      v11 = 35.0;
    }

    else
    {
      objc_opt_class();
      v11 = 0.0;
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v14 = v7;
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if ([v16 valueEditingItemsCount] <= 1)
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

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(CNContactContentUnitaryViewController *)self contact];
      v9 = [v8 mainStoreLinkedContacts];
      if ([v9 count] <= 1)
      {
      }

      else
      {
        v10 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];

        if (!v10)
        {
          v11 = 16.0;
          goto LABEL_24;
        }
      }
    }

    if ([(CNContactView *)v6 numberOfSections]- 1 == a4)
    {
      v17 = [(CNContactContentUnitaryViewController *)self contact];
      v18 = [v17 phonemeData];

      if (v18)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 16.0;
      }
    }

    else if ([(CNContactContentUnitaryViewController *)self shouldShowVerifiedFooterInSection:a4 inTableView:v6])
    {
      v11 = *MEMORY[0x1E69DE3D0];
    }

    else
    {
      v11 = 0.0;
    }
  }

LABEL_24:

  return v11;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:v6];
  v8 = [v7 title];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass() ^ 1;
  }

  v12 = +[CNContactStyle currentStyle];
  v13 = [v12 usesInsetPlatterStyle];

  editingContactView = self->_editingContactView;
  v15 = 0.0;
  if (!v13 || (editingContactView != v6 ? (v16 = (v13 & (isKindOfClass | v10)) == 0) : (v16 = 0), !v16))
  {
    if (editingContactView == v6)
    {
      if (v8)
      {
        goto LABEL_21;
      }

      v26 = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];

      if (v7 == v26)
      {
        v15 = 12.0;
      }

      else
      {
        v15 = 16.0;
      }

      if (!((v7 == v26) | v11 & 1))
      {
        v27 = [(CNContactContentUnitaryViewController *)self nameEditingGroups];
        v28 = [v27 containsObject:v7];

        v15 = 16.0;
        if (v28)
        {
          v15 = 0.0;
          if (!a4)
          {
            v29 = *MEMORY[0x1E6996568];
            v30 = [(CNContactContentViewController *)self warningMessage];
            LOBYTE(v29) = (*(v29 + 16))(v29, v30);

            if (v29)
            {
              v15 = 0.0;
            }

            else
            {
              v15 = *MEMORY[0x1E69DE3D0];
            }
          }
        }
      }
    }

    else
    {
      if (v8)
      {
        if (isKindOfClass)
        {
          v17 = [(CNContactContentUnitaryViewController *)self contact];
          v18 = [v17 mainStoreLinkedContacts];
          v19 = [v18 count];

          if (v19 >= 2)
          {
            goto LABEL_21;
          }
        }

        if (v10)
        {
          v20 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
          v21 = [v20 parentGroups];
          v22 = [v21 count];

          if (!v22)
          {
            v15 = 55.0;
            goto LABEL_32;
          }

LABEL_21:
          v24 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
          [v24 _scaledValueForValue:44.0];
          v15 = v25 + 15.0;

          goto LABEL_32;
        }
      }

      v23 = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];

      if (v7 == v23)
      {
        v15 = 55.0;
      }

      else if (((a4 != 1) & [v7 addSpacerFromPreviousGroup]) != 0)
      {
        v15 = 55.0;
      }

      else
      {
        v15 = 0.0;
      }
    }
  }

LABEL_32:

  return v15;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 section];
  v12 = v9;
  if (v11 == [v10 section])
  {
    objc_opt_class();
    v13 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v9 section], v8);
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = [v10 row];
    v17 = [v15 valueEditingItemsCount];

    if (v16 >= v17)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }
  }

  v18 = v12;

  return v12;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  objc_opt_class();
  v11 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v9 section], v10);

  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v15 = v12;

  v13 = [v9 row];
  v14 = [v8 row];

  [v15 moveEditingItemFromIndex:v13 toIndex:v14];
  [(CNContactContentUnitaryViewController *)self updateDoneButton];
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v6 = a4;
  if (self->_editingContactView == a3)
  {
    v8 = a3;
    objc_opt_class();
    v9 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v6 section], v8);

    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      objc_opt_class();
      v12 = [v11 editingItems];
      v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      v7 = v15 && [v15 canReorder] && objc_msgSend(v11, "valueEditingItemsCount") > 1;
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v28 = a3;
  v6 = a4;
  if (![(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:v6 forTableView:v28]&& ![(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:v6 forTableView:v28])
  {
    v7 = [v28 cellForRowAtIndexPath:v6];
    if ([(CNContactContentUnitaryViewController *)self _indexPathIsActionItem:v6 forTableView:v28])
    {
      v8 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:v6 forTableView:v28];
      v9 = [v8 actions];
      v10 = [v9 objectAtIndexedSubscript:0];

      [v10 performActionWithSender:v7];
      v11 = [v28 indexPathForSelectedRow];
      [v28 deselectRowAtIndexPath:v11 animated:1];
    }

    else if (objc_opt_respondsToSelector())
    {
      if (-[CNContactContentUnitaryViewController isEditing](self, "isEditing") && [v7 isMemberOfClass:objc_opt_class()])
      {
        [v28 deselectRowAtIndexPath:v6 animated:1];
        objc_opt_class();
        v12 = v7;
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
        v15 = [v14 cardGroupItem];
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        v18 = [v17 property];
        v19 = [v18 isEqualToString:*MEMORY[0x1E695C1C0]];

        if (v19)
        {
          v20 = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
          [v20 setIndexPath:v6];

          v21 = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
          [v21 performActionWithSender:v14];
        }

        else
        {
          [(CNContactContentUnitaryViewController *)self addEditingItemAtIndexPath:v6 forTableView:v28];
        }
      }

      else
      {
        v22 = ([v7 shouldPerformDefaultAction] & 1) != 0 || -[CNContactContentViewController allowsPropertyActions](self, "allowsPropertyActions");
        if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 isSuggested] & 1) == 0)
          {
            v23 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:v6 forTableView:v28];
            v24 = [v23 contact];
            v25 = [v23 property];
            v26 = [v23 labeledValue];
            v27 = [v26 identifier];
            v22 = [(CNContactContentUnitaryViewController *)self contactViewController:self shouldPerformDefaultActionForContact:v24 propertyKey:v25 propertyIdentifier:v27];
          }
        }

        if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(CNContactContentUnitaryViewController *)self _pickName];
          }
        }

        if (v22)
        {
          [v7 performDefaultAction];
        }

        [v28 deselectRowAtIndexPath:v6 animated:1];
      }
    }
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cellForRowAtIndexPath:v7];
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

  if (v11 && (([v11 forceSuggested] & 1) != 0 || !objc_msgSend(v11, "allowsCellSelection")))
  {
    v16 = 0;
  }

  else
  {
    v12 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v7 section], v6);
    v13 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
    if ([v12 isEqual:v13])
    {
      v14 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
      v15 = [v14 hasSentInvite];

      v16 = v15 ^ 1;
    }

    else
    {

      v16 = 1;
    }
  }

  return v16 & 1;
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  if ([(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:a5 forTableView:a3])
  {

    [(CNContactContentUnitaryViewController *)self removePersonHeaderViewControllerFromHierarchy];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:v9 forTableView:v23])
  {
    v10 = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
    [v10 didMoveToParentViewController:self];
  }

  objc_opt_class();
  v11 = v8;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  objc_opt_class();
  v14 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v9 section], v23);
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v13)
  {
    v17 = [v9 row];
    v18 = [v23 numberOfRowsInSection:{objc_msgSend(v9, "section")}];
    if (v16 && v17 < v18 - 1 && ([(CNContactContentUnitaryViewController *)self displayContactView], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 == v23))
    {
      v22 = [(CNContactContentUnitaryViewController *)self environment];
      [v13 setShowSeparator:{objc_msgSend(v22, "runningInContactsAppOniPad")}];
    }

    else
    {
      [v13 setShowSeparator:1];
    }
  }

  v20 = [(CNContactContentUnitaryViewController *)self editingContactView];

  if (v20 == v23)
  {
    v21 = [(CNContactContentUnitaryViewController *)self editingContactView];
    [v21 separatorInsetForCell:v11];
    [v11 setSeparatorInset:?];
  }
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [a4 section];
  v8 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
  v9 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:v8 inTableView:v6];

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

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v23 = a3;
  v8 = a5;
  if (![(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:v8 forTableView:v23]&& ![(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:v8 forTableView:v23])
  {
    v9 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v8 section], v23);
    v10 = [v9 editingItems];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];

    if (a4 != 2)
    {
      if (a4 != 1)
      {
LABEL_17:
        [(CNContactContentUnitaryViewController *)self updateDoneButton];

        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 contact];
        [(CNContactContentUnitaryViewController *)self removeLinkedContact:v12];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(CNContactContentUnitaryViewController *)self removeEditingItem:v11 atIndexPath:v8 forTableView:v23];
          goto LABEL_17;
        }

        v12 = [v11 group];
        if (v12)
        {
          [(CNContactContentUnitaryViewController *)self removeContactFromGroup:v12];
        }
      }

LABEL_16:

      goto LABEL_17;
    }

    v12 = [v23 cellForRowAtIndexPath:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(CNContactContentUnitaryViewController *)self addLinkedCardAction];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = [v11 property];
          v17 = [v16 isEqualToString:*MEMORY[0x1E695C1C0]];

          if (v17)
          {
            objc_opt_class();
            v18 = [v23 cellForRowAtIndexPath:v8];
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            v20 = v19;

            v21 = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
            [v21 setIndexPath:v8];

            v22 = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
            [v22 performActionWithSender:v20];
          }

          else
          {
            [(CNContactContentUnitaryViewController *)self addEditingItemAtIndexPath:v8 forTableView:v23];
          }

          goto LABEL_16;
        }

        v14 = [(CNContactContentUnitaryViewController *)self actionProvider];
        v15 = [v14 addStaticIdentityAction];
        [v15 performActionWithSender:v12];

        goto LABEL_15;
      }

      v13 = [(CNContactContentUnitaryViewController *)self addToGroupAction];
    }

    v14 = v13;
    [v13 performActionWithSender:v12];
LABEL_15:

    goto LABEL_16;
  }

LABEL_18:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:v8 forTableView:v7])
  {
    v9 = [(CNContactContentUnitaryViewController *)self personHeaderCellForTableView:v7];
LABEL_5:
    v10 = v9;
    goto LABEL_21;
  }

  if ([(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:v8 forTableView:v7])
  {
    v9 = [(CNContactContentUnitaryViewController *)self sharedProfileBannerSectionCellForTableView:v7];
    goto LABEL_5;
  }

  v11 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [v8 section], v7);
  if ([(CNContactContentUnitaryViewController *)self _indexPathIsActionItem:v8 forTableView:v7]|| [(CNContactContentUnitaryViewController *)self isStandardGroup:v11])
  {
    v10 = [(CNContactContentUnitaryViewController *)self _cellForIndexPath:v8 forTableView:v7];
  }

  else
  {
    v10 = 0;
  }

  [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCell:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CNContactContentUnitaryViewController *)self prepareCell:v10];
  }

  v12 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
  if (![v11 isEqual:v12])
  {
    goto LABEL_19;
  }

  v13 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
  v14 = [v13 hasSentInvite];

  if (v14)
  {
    objc_opt_class();
    v15 = v10;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v12 = v16;

    if (v12)
    {
      v17 = [v12 labelTextAttributes];
      v18 = [v17 mutableCopy];

      v19 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69DB650]];

      [v12 setLabelTextAttributes:v18];
    }

LABEL_19:
  }

LABEL_21:
  v20 = [(CNContactContentUnitaryViewController *)self displayContactView];
  if (v20 == v7)
  {
    v21 = [(CNContactContentUnitaryViewController *)self environment];
    v22 = [v21 runningInContactsAppOniPad];

    if (!v22)
    {
      goto LABEL_25;
    }

    v20 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    [v10 setBackgroundColor:v20];
  }

LABEL_25:
  if (!v10)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"CNContactContentUnitaryViewController.m" lineNumber:4538 description:@"We have no cell to return!"];
  }

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if ([(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionForTableView:v6 section:a4]|| [(CNContactContentUnitaryViewController *)self isPersonHeaderSectionForTableView:v6 section:a4])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:a4 forTableView:v6];
    v9 = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];

    if (v8 == v9)
    {
      v11 = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
      v12 = [v11 groups];
      v7 = [v12 count];
    }

    else
    {
      if ([(CNContactContentUnitaryViewController *)self isStandardGroup:v8])
      {
        if (self->_editingContactView == v6)
        {
          [v8 editingItems];
        }

        else
        {
          [v8 displayItems];
        }
        v10 = ;
      }

      else
      {
        v10 = [v8 actionItems];
      }

      v11 = v10;
      v7 = [v10 count];
    }
  }

  return v7;
}

- (BOOL)isStandardGroup:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
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
  v4 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self _currentGroupsForTableView:v4];
  v6 = [v5 count];
  v7 = [(CNContactContentUnitaryViewController *)self additionalTopSectionsCountForTableView:v4];

  return v7 + v6;
}

- (void)didChangeToShowTitle:(BOOL)a3
{
  [(CNContactContentUnitaryViewController *)self setLayoutPositionallyAfterNavBar:a3];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v4 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    [v4 updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];

    [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self displayHeaderView];
  }
  v5 = ;
  [v5 updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];

  v6 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
  [v6 updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];
}

- (void)didChangeToEditMode:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactContentUnitaryViewController *)self isEditing]!= a3)
  {

    [(CNContactContentUnitaryViewController *)self setEditing:v3 animated:0];
  }
}

- (void)setupWithOptions:(id)a3 readyBlock:(id)a4
{
  v119 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CNUILogContactCard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_debug_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEBUG, "setupWithOptions: %@", &buf, 0xCu);
  }

  v9 = [v6 objectForKeyedSubscript:@"Properties"];
  if ([(CNContactContentUnitaryViewController *)self isOutOfProcess])
  {
    [(CNContactContentUnitaryViewController *)self setOutOfProcessSetupComplete:0];
    if ([MEMORY[0x1E695CD58] suggestionsEnabled])
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    v11 = [(CNContactContentUnitaryViewController *)self managedConfiguration];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E695CE18]);
      v13 = [(CNContactContentUnitaryViewController *)self environment];
      v14 = [v13 cnEnvironment];
      v15 = [(CNContactContentUnitaryViewController *)self managedConfiguration];
      v16 = [v12 initWithEnvironment:v14 options:v10 managedConfiguration:v15];
      [(CNContactContentUnitaryViewController *)self setContactStore:v16];
    }

    else
    {
      v13 = [MEMORY[0x1E695CE18] storeWithOptions:v10];
      [(CNContactContentUnitaryViewController *)self setContactStore:v13];
    }
  }

  v17 = [v9 objectForKeyedSubscript:@"showContactPhotoPosterCell"];
  -[CNContactContentUnitaryViewController setShowContactPhotoPosterCell:](self, "setShowContactPhotoPosterCell:", [v17 BOOLValue]);

  v18 = [v9 objectForKeyedSubscript:@"runningPPT"];
  -[CNContactContentUnitaryViewController setRunningPPT:](self, "setRunningPPT:", [v18 BOOLValue]);

  v19 = [v9 objectForKeyedSubscript:@"showingMeContact"];
  -[CNContactContentUnitaryViewController setShowingMeContact:](self, "setShowingMeContact:", [v19 BOOLValue]);

  v20 = [v6 objectForKeyedSubscript:@"ignoresParentalRestrictions"];
  -[CNContactContentViewController setIgnoresParentalRestrictions:](self, "setIgnoresParentalRestrictions:", [v20 BOOLValue]);

  v21 = [v6 objectForKeyedSubscript:@"prohibitedPropertyKeys"];
  [(CNContactContentUnitaryViewController *)self setProhibitedPropertyKeys:v21];

  v22 = [v9 objectForKeyedSubscript:@"warningMessage"];
  [(CNContactContentViewController *)self setWarningMessage:v22];

  *&buf = @"allowsDeletion";
  *(&buf + 1) = @"allowsCardActions";
  v76 = @"alwaysEditing";
  v77 = @"personHeaderView";
  v78 = @"allowsActions";
  v79 = @"verifiedInfoMessage";
  v80 = @"allowsEditInApp";
  v81 = @"shouldShowLinkedContacts";
  v82 = @"parentContainer";
  v83 = @"layoutPositionallyAfterNavBar";
  v72 = 0u;
  v73 = 0u;
  v84 = @"mode";
  v85 = @"allowsDisplayModePickerActions";
  v86 = @"allowsAddToFavorites";
  v87 = @"ignoresParentalRestrictions";
  v88 = @"parentGroup";
  v89 = @"primaryProperty";
  v90 = @"allowsAddingToAddressBook";
  v91 = @"alternateName";
  v92 = @"allowsEditPhoto";
  v93 = @"allowsNamePicking";
  v94 = @"showsInlineActions";
  v95 = @"showsSharedProfile";
  v96 = @"showsGroupMembership";
  v97 = @"displayedProperties";
  v98 = @"editingProposedInformation";
  v99 = @"originalContacts";
  v100 = @"allowsContactBlocking";
  v101 = @"allowsContactBlockingAndReporting";
  v102 = @"allowsSharing";
  v103 = @"highlightedProperties";
  v70 = 0u;
  v71 = 0u;
  v104 = @"allowsConferencing";
  v105 = @"recentsData";
  v106 = @"showingMeContact";
  v107 = @"runningPPT";
  v108 = @"importantMessage";
  v109 = @"allowsEditing";
  v110 = @"personHeaderViewController";
  v111 = @"personHeaderViewDelegate";
  v112 = @"shouldDrawNavigationBar";
  v113 = @"forcesTransparentBackground";
  v114 = @"usesBrandedCallHeaderFormat";
  v115 = @"shouldShowSharedProfileBanner";
  v116 = @"message";
  v117 = @"contact";
  v118 = @"allowsSwipeToPop";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&buf count:45];
  v24 = [v23 countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v71;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v71 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v70 + 1) + 8 * i);
        v29 = [v9 objectForKeyedSubscript:v28];
        if (v29)
        {
          [(CNContactContentUnitaryViewController *)self setValue:v29 forKey:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v25);
  }

  if ([(CNContactContentUnitaryViewController *)self isHeaderViewPhotoProhibited])
  {
    [(CNContactContentUnitaryViewController *)self setAllowsEditPhoto:0];
  }

  v30 = [v9 objectForKeyedSubscript:@"forcesTransparentBackground"];
  self->_forcesTransparentBackground = [v30 BOOLValue];

  v31 = [v9 objectForKeyedSubscript:@"usesBrandedCallHeaderFormat"];
  -[CNContactContentUnitaryViewController setUsesBrandedCallHeaderFormat:](self, "setUsesBrandedCallHeaderFormat:", [v31 BOOLValue]);

  v32 = [v9 objectForKeyedSubscript:@"highlightedPropertyImportant"];
  -[CNContactContentUnitaryViewController setHighlightedPropertyImportant:](self, "setHighlightedPropertyImportant:", [v32 BOOLValue]);

  v33 = [v9 objectForKeyedSubscript:@"shouldShowSharedProfileBanner"];
  -[CNContactContentUnitaryViewController setShouldShowSharedProfileBanner:](self, "setShouldShowSharedProfileBanner:", [v33 BOOLValue]);

  if (-[CNContactContentViewController alwaysEditing](self, "alwaysEditing") || ([v9 objectForKeyedSubscript:@"isEditing"], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "BOOLValue"), v34, v35))
  {
    [(CNContactContentUnitaryViewController *)self setEditing:1 animated:0];
  }

  v36 = [v9 objectForKeyedSubscript:@"mainScreenPeripheryInsets"];
  if ([(CNContactContentUnitaryViewController *)self isOutOfProcess]&& ((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
    self->_peripheryInsets = UIEdgeInsetsFromString(v36);
  }

  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    v37 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];

    if (v37)
    {
      v38 = [v9 objectForKeyedSubscript:@"staticIdentity"];
      v39 = v38;
      if (v38 && [v38 length])
      {
        [(CNContactContentUnitaryViewController *)self addStaticIdentity:v39];
        [(CNContactContentUnitaryViewController *)self setDidLookUpStaticIdentity:1];
        v40 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
        [v40 addIdentity:v39 isNew:0];

        v41 = dispatch_time(0, 400000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __69__CNContactContentUnitaryViewController_setupWithOptions_readyBlock___block_invoke;
        block[3] = &unk_1E74E6A88;
        block[4] = self;
        dispatch_after(v41, MEMORY[0x1E69E96A0], block);
      }
    }

    if (![(CNContactContentUnitaryViewController *)self didLookUpStaticIdentity])
    {
      [(CNContactContentUnitaryViewController *)self _lookupStaticIdentity];
    }
  }

  if ([(CNContactContentUnitaryViewController *)self isOutOfProcess])
  {
    [(CNContactContentUnitaryViewController *)self setOutOfProcessSetupComplete:1];
    [(CNContactContentUnitaryViewController *)self setNeedsReloadLazy];
    [(CNContactContentUnitaryViewController *)self reloadDataIfNeeded];
    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      v42 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
      [v42 updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];

      v43 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
      v44 = [(CNContactContentUnitaryViewController *)self mutableContactForHeaderView];
      [v43 updateWithNewContact:v44];

      v45 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [v45 updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];

      [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    }

    else
    {
      v46 = [(CNContactContentUnitaryViewController *)self displayHeaderView];
      [v46 updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];

      [(CNContactContentUnitaryViewController *)self displayHeaderView];
    }
    v47 = ;
    v48 = [(CNContactContentUnitaryViewController *)self mutableContactForHeaderView];
    [v47 updateWithNewContact:v48];

    v49 = [(CNContactContentUnitaryViewController *)self shouldShowGemini];
    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self displayHeaderView];
    }
    v50 = ;
    [v50 setShouldShowGemini:v49];

    [(CNContactContentUnitaryViewController *)self createCardEditingGeminiGroupIfNeeded];
    v51 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
    [v51 setShouldShowGemini:v49];

    if (self->_editingHeaderView)
    {
      v52 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
      [v52 updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];

      v53 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
      v54 = [(CNContactContentUnitaryViewController *)self mutableContactForHeaderView];
      [v53 updateWithNewContact:v54];
    }

    [(CNContactContentUnitaryViewController *)self updateEditNavigationItemsAnimated:0];
    v55 = [(CNContactContentUnitaryViewController *)self applyContactStyle];
  }

  if (v7)
  {
    v7[2](v7, 0);
  }

  if ([(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard])
  {
    v56 = [(CNContactContentUnitaryViewController *)self customViewConfiguration];
    v57 = [v9 objectForKeyedSubscript:@"customViewConfiguration"];

    if (v56 != v57)
    {
      v58 = [v9 objectForKeyedSubscript:@"customViewConfiguration"];
      [(CNContactContentUnitaryViewController *)self setCustomViewConfiguration:v58];

      v59 = [(CNContactContentUnitaryViewController *)self customViewConfiguration];
      v60 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      [v60 setCustomViewConfiguration:v59];

      v61 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      [v61 setForceReload:1];

      v62 = [(CNContactContentUnitaryViewController *)self contact];
      v63 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      [v63 setContact:v62];
    }

    v64 = [(CNContactContentUnitaryViewController *)self highlightedProperties];
    v65 = [v64 _cn_compactMap:&__block_literal_global_581];
    v66 = [(CNContactContentUnitaryViewController *)self pendingContactCardPropertyViewConfiguration];
    [v66 setHighlightedLabeledValueIdentifiers:v65];

    v67 = [(CNContactContentUnitaryViewController *)self highlightedPropertyImportant];
    v68 = [(CNContactContentUnitaryViewController *)self pendingContactCardPropertyViewConfiguration];
    [v68 setShouldColorEmphasizeHighlightedProperties:v67];

    [(CNContactContentUnitaryViewController *)self _lazyUpdateContactCardPropertyViewConfiguration];
  }
}

void __69__CNContactContentUnitaryViewController_setupWithOptions_readyBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 editingContactView];
  v3 = [*(a1 + 32) cardStaticIdentityGroup];
  [v2 _scrollContactView:v4 toVisibleGroup:v3 animated:1];
}

- (void)updateEditPhotoButtonIfNeeded
{
  if ([(CNContactContentUnitaryViewController *)self isHeaderViewPhotoProhibited])
  {
    if (![(CNContactContentUnitaryViewController *)self allowsEditPhoto])
    {
      return;
    }

    v3 = 0;
  }

  else
  {
    v4 = [(CNContactContentUnitaryViewController *)self view];
    v5 = [(CNContactContentUnitaryViewController *)self traitCollection];
    v3 = [(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController canShowPhotoPickerForView:v4 withTraitCollection:v5];

    if (v3 == [(CNContactContentUnitaryViewController *)self allowsEditPhoto])
    {
      return;
    }
  }

  [(CNContactContentUnitaryViewController *)self setAllowsEditPhoto:v3 preservingChanges:1];
}

- (void)setupTableFooterView
{
  if ((-[CNContactContentUnitaryViewController isEditing](self, "isEditing") & 1) != 0 || (-[CNContactContentUnitaryViewController contact](self, "contact"), v3 = objc_claimAutoreleasedReturnValue(), [v3 phonemeData], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v19 = [(CNContactContentUnitaryViewController *)self contactView];
    [(CNContactViewFooterView *)v19 setTableFooterView:0];
  }

  else
  {
    objc_opt_class();
    v5 = [(CNContactContentUnitaryViewController *)self contactView];
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
      v8 = [(CNContactContentUnitaryViewController *)self contactView];
      [v8 setTableFooterView:v19];
    }

    v9 = [(CNContactContentUnitaryViewController *)self contact];
    [(CNContactViewFooterView *)v19 setContact:v9];

    v10 = [(CNContactViewFooterView *)v19 label];
    v11 = [(CNContactContentUnitaryViewController *)self view];
    [v11 bounds];
    v13 = v12;
    v14 = [(CNContactContentUnitaryViewController *)self view];
    [v14 layoutMargins];
    v16 = v13 - v15;
    v17 = [(CNContactContentUnitaryViewController *)self view];
    [v17 layoutMargins];
    [v10 sizeThatFits:{v16 - v18, 1.79769313e308}];

    [(CNContactViewFooterView *)v19 frame];
    [(CNContactViewFooterView *)v19 setFrame:?];
  }
}

- (CGSize)setupTableHeaderView
{
  if ([(CNContactContentUnitaryViewController *)self shouldDisplayAvatarHeaderView])
  {
    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      v3 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
LABEL_4:
      v4 = v3;
      goto LABEL_11;
    }

    if ((-[CNContactContentUnitaryViewController isEditing](self, "isEditing") & 1) == 0 && [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
    {
      v8 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
      v9 = [v8 backgroundColor];
      v10 = [(CNContactContentUnitaryViewController *)self actionsViewController];
      v11 = [v10 view];
      [v11 setBackgroundColor:v9];

      v3 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      goto LABEL_4;
    }
  }

  else
  {
    v5 = [(CNContactContentUnitaryViewController *)self contactView];
    v6 = [v5 customHeaderView];

    if (v6)
    {
      v7 = [(CNContactContentUnitaryViewController *)self contactView];
      v4 = [v7 customHeaderView];

      goto LABEL_11;
    }
  }

  v4 = 0;
LABEL_11:
  v12 = [(CNContactContentUnitaryViewController *)self contactView];
  v13 = [v12 tableHeaderView];
  v14 = [v13 needsUpdateConstraints];

  if (v4)
  {
    [v4 frame];
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v16 = *MEMORY[0x1E695F060];
    v18 = *(MEMORY[0x1E695F060] + 8);
  }

  v19 = [(CNContactContentUnitaryViewController *)self contactView];
  [v19 setTableHeaderView:v4];

  if ((v14 & 1) == 0)
  {
    v20 = [(CNContactContentUnitaryViewController *)self contactView];
    v21 = [v20 tableHeaderView];
    v22 = [v21 needsUpdateConstraints];

    if (v22)
    {
      v23 = [(CNContactContentUnitaryViewController *)self contactView];
      v24 = [v23 tableHeaderView];
      [v24 updateConstraints];
    }
  }

  v25 = v16;
  v26 = v18;
  result.height = v26;
  result.width = v25;
  return result;
}

- (void)performWhenViewIsLaidOut:(id)a3
{
  v4 = a3;
  v8 = [(CNContactContentUnitaryViewController *)self pendingLayoutBlocks];
  v5 = [v4 copy];

  v6 = _Block_copy(v5);
  v7 = [v8 arrayByAddingObject:v6];
  [(CNContactContentUnitaryViewController *)self setPendingLayoutBlocks:v7];
}

- (void)viewDidLayoutSubviews
{
  v33.receiver = self;
  v33.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v33 viewDidLayoutSubviews];
  [(CNContactContentUnitaryViewController *)self _updateCachedLabelWidthsIfNeeded];
  [(CNContactContentUnitaryViewController *)self setupTableHeaderView];
  v4 = v3;
  v6 = v5;
  [(CNContactContentUnitaryViewController *)self initializeTableViewsForHeaderHeight];
  [(CNContactContentUnitaryViewController *)self adjustPreferredContentSize];
  v7 = [(CNContactContentUnitaryViewController *)self contactView];
  v8 = [v7 tableHeaderView];

  if (v8)
  {
    [v8 frame];
    if (v4 != v10 || v6 != v9)
    {
      v11 = [(CNContactContentUnitaryViewController *)self contactView];
      [v11 setTableHeaderView:v8];
    }
  }

  [(CNContactContentUnitaryViewController *)self setupTableFooterView];
  [(CNContactContentUnitaryViewController *)self focusOnFirstEditingItemIfNeeded];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v12 = [(CNContactContentUnitaryViewController *)self displayContactView];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundGradientLayer];
    [v21 setFrame:{v14, v16, v18, v20}];

    v22 = [(CNContactContentUnitaryViewController *)self displayContactView];
    [v22 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundView];
    [v31 setFrame:{v24, v26, v28, v30}];
  }

  v32 = [(CNContactContentUnitaryViewController *)self pendingLayoutBlocks];
  [v32 enumerateObjectsUsingBlock:&__block_literal_global_573];

  [(CNContactContentUnitaryViewController *)self setPendingLayoutBlocks:MEMORY[0x1E695E0F0]];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v8 viewWillLayoutSubviews];
  v3 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  [v3 calculateLabelSizesIfNeeded];

  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v4 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    [v4 calculateLabelSizesIfNeeded];
  }

  [(CNContactContentUnitaryViewController *)self updateOutOfProcessFullscreenPresentationIfNeeded];
  [(CNContactContentUnitaryViewController *)self updateEditPhotoButtonIfNeeded];
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    v5 = [(CNContactContentUnitaryViewController *)self contactView];
    v6 = [v5 isEditing];

    if (v6)
    {
      v7 = [(CNContactContentUnitaryViewController *)self contactView];
      [v7 setEditing:0 animated:0];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v4 viewDidDisappear:a3];
  [(NSHashTable *)self->_actionsObservers removeAllObjects];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v16 viewWillDisappear:a3];
  v4 = [(CNContactContentUnitaryViewController *)self siriContextProvider];
  [v4 setEnabled:0];

  [(CNContactContentUnitaryViewController *)self updateWindowTitleForAppearing:0];
  v5 = [(CNContactContentUnitaryViewController *)self shareLocationController];
  [v5 stopUpdatingFriends];

  if ([(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle])
  {
    v6 = [MEMORY[0x1E69DC888] tintColor];
    v7 = [(CNContactContentUnitaryViewController *)self navigationItemController];
    v8 = [v7 navigationItem];
    v9 = [v8 navigationBar];
    [v9 setTintColor:v6];

    previousBackGestureDelegate = self->_previousBackGestureDelegate;
    v11 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
    v12 = [v11 interactivePopGestureRecognizer];
    [v12 setDelegate:previousBackGestureDelegate];
  }

  else if ([(CNContactContentUnitaryViewController *)self allowsSwipeToPop])
  {
    return;
  }

  previousInteractivePopGestureEnabled = self->_previousInteractivePopGestureEnabled;
  v14 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
  v15 = [v14 interactivePopGestureRecognizer];
  [v15 setEnabled:previousInteractivePopGestureEnabled];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v4 viewIsAppearing:a3];
  [(CNContactContentUnitaryViewController *)self updateEditNavigationItemsAnimated:0];
}

- (void)prepareContactDidAppearForPPT
{
  if ([(CNContactContentUnitaryViewController *)self runningPPT])
  {
    objc_initWeak(&location, self);
    v3 = *MEMORY[0x1E69DDA98];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __70__CNContactContentUnitaryViewController_prepareContactDidAppearForPPT__block_invoke;
    v4[3] = &unk_1E74E6C98;
    objc_copyWeak(&v5, &location);
    [v3 installCACommitCompletionBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __70__CNContactContentUnitaryViewController_prepareContactDidAppearForPPT__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pptDelegate];
  [v1 viewDidAppearForContactViewController:WeakRetained];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v4 didMoveToParentViewController:a3];
  [(CNContactContentUnitaryViewController *)self updateEditNavigationItemsAnimated:0];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v13.receiver = self;
  v13.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v13 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (![(CNContactContentUnitaryViewController *)self isOutOfProcess])
  {
    p_peripheryInsets = &self->_peripheryInsets;
    v6 = [(CNContactContentUnitaryViewController *)self view];
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
  v4.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v4 viewDidAppear:a3];
  [(CNContactContentUnitaryViewController *)self setUpBackGestureIfNeeded];
  if (self->_needsRefetch && ([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    [(CNContactContentUnitaryViewController *)self _refetchContact];
    self->_needsRefetch = 0;
  }

  if (![(CNContactContentViewController *)self alwaysEditing])
  {
    [(CNContactContentUnitaryViewController *)self becomeFirstResponder];
  }

  [(CNContactContentUnitaryViewController *)self updateWindowTitleForAppearing:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactContentUnitaryViewController *)self forcesTransparentBackground])
  {
    v5 = +[CNUIColorRepository transparentBackgroundColor];
LABEL_5:
    v6 = v5;
    v7 = [(CNContactContentUnitaryViewController *)self contactView];
LABEL_6:
    v8 = v7;
    [v7 setBackgroundColor:v6];

    goto LABEL_7;
  }

  if ([(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
  {
    v5 = +[CNUIColorRepository popoverBackgroundColor];
    goto LABEL_5;
  }

  v18 = [(CNContactContentUnitaryViewController *)self environment];
  v19 = [v18 runningInContactsAppOniPad];

  if (v19)
  {
    v6 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    v7 = [(CNContactContentUnitaryViewController *)self displayContactView];
    goto LABEL_6;
  }

LABEL_7:
  v20.receiver = self;
  v20.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v20 viewWillAppear:v3];
  [(CNContactContentUnitaryViewController *)self setDismissedSharedProfileBannerAction:0];
  [(CNContactContentUnitaryViewController *)self setTappedSharedProfileBannerAction:0];
  v9 = +[CNContactStyle currentStyle];
  v10 = [v9 backgroundColor];

  if (v10)
  {
    v11 = +[CNContactStyle currentStyle];
    v12 = [v11 backgroundColor];
    v13 = [(CNContactContentUnitaryViewController *)self view];
    [v13 setBackgroundColor:v12];
  }

  v14 = [(CNContactContentUnitaryViewController *)self contactView];
  [v14 _cnui_applyContactStyle];

  v15 = [(CNContactContentUnitaryViewController *)self applyContactStyle];
  if (![(CNContactContentUnitaryViewController *)self reloadDataIfNeeded])
  {
    [(CNContactContentUnitaryViewController *)self _setNeedsUpdateCachedLabelWidths];
  }

  [(CNContactContentUnitaryViewController *)self updateEditNavigationItemsAnimated:0];
  v16 = [(CNContactContentUnitaryViewController *)self siriContextProvider];
  [v16 setEnabled:1];

  v17 = [(CNContactContentUnitaryViewController *)self shareLocationController];
  [v17 startUpdatingFriends];

  [*MEMORY[0x1E69DDA98] setNetworkActivityIndicatorVisible:0];
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v3 updateViewConstraints];
  [(CNContactContentUnitaryViewController *)self setupConstraintsIfNeeded];
}

- (double)actionsBottomMargin
{
  v3 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]|| v3)
  {
    v5 = +[CNContactStyle currentStyle];
    if ([v5 usesInsetPlatterStyle])
    {
      v4 = 16.0;
    }

    else
    {
      v4 = 15.0;
    }
  }

  else if ([(CNContactContentUnitaryViewController *)self isPadRegularHorizontalSize])
  {
    return 36.0;
  }

  else if ([(CNContactContentUnitaryViewController *)self isOrientationPhoneLandscape])
  {
    return 9.0;
  }

  else
  {
    return 17.0;
  }

  return v4;
}

- (double)actionsTopMargin
{
  v3 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]|| v3)
  {
    v5 = +[CNContactStyle currentStyle];
    if ([v5 usesInsetPlatterStyle])
    {
      v4 = 20.0;
    }

    else
    {
      v4 = 10.0;
    }
  }

  else
  {
    v4 = 14.0;
    if (![(CNContactContentUnitaryViewController *)self isPadRegularHorizontalSize])
    {
      if ([(CNContactContentUnitaryViewController *)self isOrientationPhoneLandscape])
      {
        return 14.0;
      }

      else
      {
        return 17.0;
      }
    }
  }

  return v4;
}

- (double)editingFloatingHeaderHeight
{
  v2 = [(CNContactContentUnitaryViewController *)self view];
  [v2 safeAreaInsets];
  v4 = v3;

  result = 44.0;
  if (v4 >= 44.0)
  {
    return v4;
  }

  return result;
}

- (double)staticDisplayHeaderHeight
{
  v3 = 0.0;
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]&& ([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    v4 = [(CNContactContentUnitaryViewController *)self isPadRegularHorizontalSize];
    v5 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    [v5 minHeight];
    v3 = v6;

    v7 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    v8 = v3;
    if (([v7 shouldUseFixedHeight] & 1) == 0)
    {
      if (v4)
      {
        v9 = 0.525;
      }

      else
      {
        v9 = 0.66;
      }

      v10 = [(CNContactContentUnitaryViewController *)self view];
      [v10 frame];
      v8 = v9 * v11;
    }

    if (v3 < v8)
    {
      v3 = v8;
    }

    if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
    {
      v12 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [v12 frame];
      v3 = v3 + v13;
    }
  }

  return v3;
}

- (void)setupConstraints
{
  v3 = [(CNContactContentUnitaryViewController *)self isEditing];
  v4 = [(CNContactContentUnitaryViewController *)self shouldDisplayAvatarHeaderView];
  [(CNContactContentUnitaryViewController *)self setHasEditingConstraints:v3];
  [(CNContactContentUnitaryViewController *)self setHasAvatarConstraints:v4];
  v5 = MEMORY[0x1E696ACD8];
  v6 = [(CNContactContentUnitaryViewController *)self activatedConstraints];
  [v5 deactivateConstraints:v6];

  v207 = [MEMORY[0x1E695DF70] array];
  if (!v4)
  {
    goto LABEL_37;
  }

  if ((v3 & 1) == 0)
  {
    v7 = 0.0;
    v8 = 0.0;
    if (![(CNContactContentViewController *)self isSiri])
    {
      [(CNContactContentUnitaryViewController *)self actionsTopMargin];
      v8 = v9;
    }

    [(CNContactContentUnitaryViewController *)self actionsBottomMargin];
    v11 = v10;
    if (![(CNContactContentViewController *)self isSiri])
    {
      v7 = 8.0;
    }

    if ([(CNContactContentUnitaryViewController *)self allowsActionsModel])
    {
      if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
      {
        v12 = [(CNContactContentUnitaryViewController *)self view];
        v13 = [v12 leadingAnchor];
        v14 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
        v15 = [v14 leadingAnchor];
        v16 = [v13 constraintEqualToAnchor:v15];
        [v207 addObject:v16];

        v17 = [(CNContactContentUnitaryViewController *)self view];
        v18 = [v17 trailingAnchor];
        v19 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
        v20 = [v19 trailingAnchor];
        v21 = [v18 constraintEqualToAnchor:v20];
        [v207 addObject:v21];

        if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
        {
          v22 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
          v23 = [v22 topAnchor];
          v24 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
          v25 = [v24 bottomAnchor];
          v26 = [v23 constraintEqualToAnchor:v25];
          [v207 addObject:v26];
        }
      }

      v27 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [v27 setLayoutMargins:{v8, v7, v11, v7}];

      v28 = [(CNContactContentUnitaryViewController *)self view];
      v29 = [v28 _cnui_contactStyle];
      [v29 sectionMaximumPlatterWidth];
      v31 = v30;
      v32 = *MEMORY[0x1E698B6F8];
      v33 = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
      [v33 setMinimumLayoutSize:{v31, v32}];

      v34 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [v34 setNeedsLayout];

      v35 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [v35 layoutIfNeeded];

      if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
      {
        v36 = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
        [v36 setLayoutMargins:{v8, v7, v11, v7}];

        v37 = [(CNContactContentUnitaryViewController *)self view];
        v38 = [v37 _cnui_contactStyle];
        [v38 sectionMaximumPlatterWidth];
        v40 = v39;
        v41 = [(CNContactInlineActionsViewController *)self->_floatingActionsViewController view];
        [v41 setMinimumLayoutSize:{v40, v32}];

        v42 = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
        [v42 setNeedsLayout];

        v43 = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
        [v43 layoutIfNeeded];
      }
    }

    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      v44 = MEMORY[0x1E696ACD8];
      v45 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      v46 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [v46 maxHeight];
      v48 = [v44 constraintWithItem:v45 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v47];
      [(CNContactContentUnitaryViewController *)self setFloatingHeaderHeightConstraint:v48];

      v49 = [(CNContactContentUnitaryViewController *)self floatingHeaderHeightConstraint];
      [v207 addObject:v49];

      v50 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      v51 = [v50 leftAnchor];
      v52 = [(CNContactContentUnitaryViewController *)self view];
      v53 = [v52 leftAnchor];
      v54 = [v51 constraintEqualToAnchor:v53];
      [v207 addObject:v54];

      v55 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      v56 = [v55 rightAnchor];
      v57 = [(CNContactContentUnitaryViewController *)self view];
      v58 = [v57 rightAnchor];
      v59 = [v56 constraintEqualToAnchor:v58];
      [v207 addObject:v59];

      v60 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      v61 = [v60 topAnchor];
      v62 = [(CNContactContentUnitaryViewController *)self view];
      v63 = [v62 topAnchor];
      v64 = [v61 constraintEqualToAnchor:v63];
      [v207 addObject:v64];
    }
  }

  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]&& [(CNContactContentUnitaryViewController *)self isEditing]&& ![(CNContactContentUnitaryViewController *)self shouldDrawNavigationBar])
  {
    v65 = [(CNContactContentUnitaryViewController *)self editingFloatingCollapsedHeaderView];
    v66 = [v65 leftAnchor];
    v67 = [(CNContactContentUnitaryViewController *)self view];
    v68 = [v67 leftAnchor];
    v69 = [v66 constraintEqualToAnchor:v68];
    [v207 addObject:v69];

    v70 = [(CNContactContentUnitaryViewController *)self editingFloatingCollapsedHeaderView];
    v71 = [v70 rightAnchor];
    v72 = [(CNContactContentUnitaryViewController *)self view];
    v73 = [v72 rightAnchor];
    v74 = [v71 constraintEqualToAnchor:v73];
    [v207 addObject:v74];

    v75 = [(CNContactContentUnitaryViewController *)self editingFloatingCollapsedHeaderView];
    v76 = [v75 topAnchor];
    v77 = [(CNContactContentUnitaryViewController *)self view];
    v78 = [v77 topAnchor];
    v79 = [v76 constraintEqualToAnchor:v78];
    [v207 addObject:v79];

    v80 = [(CNContactContentUnitaryViewController *)self editingFloatingCollapsedHeaderView];
    v81 = [v80 heightAnchor];
    [(CNContactContentUnitaryViewController *)self editingFloatingHeaderHeight];
    v82 = [v81 constraintEqualToConstant:?];
    [(CNContactContentUnitaryViewController *)self setEditingFloatingHeaderHeightConstraint:v82];

    v83 = [(CNContactContentUnitaryViewController *)self editingFloatingHeaderHeightConstraint];
    [v207 addObject:v83];
  }

  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]&& ([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    v85 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    v86 = [v85 heightAnchor];
    [(CNContactContentUnitaryViewController *)self staticDisplayHeaderHeight];
    v88 = [v86 constraintEqualToConstant:?];
  }

  else
  {
    v84 = MEMORY[0x1E696ACD8];
    v85 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    v86 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [v86 maxHeight];
    v88 = [v84 constraintWithItem:v85 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v87];
  }

  v89 = v88;
  [(CNContactContentUnitaryViewController *)self setHeaderHeightConstraint:v88];

  v90 = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
  [v207 addObject:v90];

  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v91 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    v92 = [v91 topAnchor];
    v93 = [(CNContactContentUnitaryViewController *)self view];
    v94 = [v93 topAnchor];
    v95 = [v92 constraintEqualToAnchor:v94];
    [v207 addObject:v95];
  }

  v96 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  v97 = [v96 leftAnchor];
  v98 = [(CNContactContentUnitaryViewController *)self view];
  v99 = [v98 leftAnchor];
  v100 = [v97 constraintEqualToAnchor:v99];
  [v207 addObject:v100];

  v101 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  v102 = [v101 rightAnchor];
  v103 = [(CNContactContentUnitaryViewController *)self view];
  v104 = [v103 rightAnchor];
  v105 = [v102 constraintEqualToAnchor:v104];
  [v207 addObject:v105];

  v106 = [MEMORY[0x1E69966E8] currentEnvironment];
  v107 = [v106 featureFlags];
  LODWORD(v103) = [v107 isFeatureEnabled:29];

  if (!v103)
  {
    v110 = [(CNContactContentUnitaryViewController *)self contactView];
    v111 = [v110 topAnchor];
    goto LABEL_29;
  }

  v108 = [(CNContactContentUnitaryViewController *)self traitCollection];
  v109 = [v108 _splitViewControllerContext];

  v110 = [(CNContactContentUnitaryViewController *)self contactView];
  v111 = [v110 topAnchor];
  if (!v109)
  {
LABEL_29:
    v120 = [(CNContactContentUnitaryViewController *)self view];
    v121 = [v120 topAnchor];
    v122 = [v111 constraintEqualToAnchor:v121];
    [v207 addObject:v122];

    v115 = [(CNContactContentUnitaryViewController *)self contactView];
    v116 = [v115 bottomAnchor];
    v117 = [(CNContactContentUnitaryViewController *)self view];
    v118 = [v117 bottomAnchor];
    v119 = [v116 constraintEqualToAnchor:v118];
    goto LABEL_30;
  }

  v112 = [(CNContactContentUnitaryViewController *)self safeAreaLayoutGuide];
  v113 = [v112 topAnchor];
  v114 = [v111 constraintEqualToAnchor:v113];
  [v207 addObject:v114];

  v115 = [(CNContactContentUnitaryViewController *)self contactView];
  v116 = [v115 bottomAnchor];
  v117 = [(CNContactContentUnitaryViewController *)self view];
  v118 = [v117 bottomAnchor];
  v119 = [v116 constraintEqualToAnchor:v118 constant:-10.0];
LABEL_30:
  v123 = v119;
  [v207 addObject:v119];

  if ([(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard])
  {
    v124 = [(CNContactContentUnitaryViewController *)self traitCollection];
    v125 = [v124 _splitViewControllerContext];

    v126 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
    v127 = [v126 view];
    v128 = [v127 topAnchor];
    if (v125)
    {
      v129 = [(CNContactContentUnitaryViewController *)self safeAreaLayoutGuide];
      v130 = [v129 topAnchor];
      v131 = [v128 constraintEqualToAnchor:v130];
      [v207 addObject:v131];

      v132 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      v133 = [v132 view];
      v134 = [v133 bottomAnchor];
      v135 = [(CNContactContentUnitaryViewController *)self view];
      v136 = [v135 bottomAnchor];
      [v134 constraintEqualToAnchor:v136 constant:-10.0];
    }

    else
    {
      v137 = [(CNContactContentUnitaryViewController *)self view];
      v138 = [v137 topAnchor];
      v139 = [v128 constraintEqualToAnchor:v138];
      [v207 addObject:v139];

      v132 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      v133 = [v132 view];
      v134 = [v133 bottomAnchor];
      v135 = [(CNContactContentUnitaryViewController *)self view];
      v136 = [v135 bottomAnchor];
      [v134 constraintEqualToAnchor:v136];
    }
    v140 = ;
    [v207 addObject:v140];
  }

  v141 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
  v142 = [v141 superview];

  if (v142)
  {
    v143 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v143 scale];
    v145 = v144;

    v146 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    v147 = [v146 heightAnchor];
    v148 = [v147 constraintEqualToConstant:1.0 / v145];
    [v207 addObject:v148];

    v149 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    v150 = [v149 bottomAnchor];
    v151 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    v152 = [v151 superview];
    v153 = [v152 bottomAnchor];
    v154 = [v150 constraintEqualToAnchor:v153];
    [v207 addObject:v154];

    v155 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    v156 = [v155 leftAnchor];
    v157 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    v158 = [v157 superview];
    v159 = [v158 leftAnchor];
    v160 = [v156 constraintEqualToAnchor:v159];
    [v207 addObject:v160];

    v161 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    v162 = [v161 rightAnchor];
    v163 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    v164 = [v163 superview];
    v165 = [v164 rightAnchor];
    v166 = [v162 constraintEqualToAnchor:v165];
    [v207 addObject:v166];
  }

LABEL_37:
  v167 = [MEMORY[0x1E69966E8] currentEnvironment];
  v168 = [v167 featureFlags];
  v169 = [v168 isFeatureEnabled:29];

  if (v169)
  {
    v170 = [(CNContactContentUnitaryViewController *)self traitCollection];
    v171 = [v170 _splitViewControllerContext];

    v172 = [(CNContactContentUnitaryViewController *)self contactView];
    v173 = [v172 leadingAnchor];
    v174 = [(CNContactContentUnitaryViewController *)self view];
    v175 = [v174 leadingAnchor];
    if (v171)
    {
      v176 = [v173 constraintEqualToAnchor:v175 constant:5.0];
      [v207 addObject:v176];

      v177 = [(CNContactContentUnitaryViewController *)self contactView];
      v178 = [v177 trailingAnchor];
      v179 = [(CNContactContentUnitaryViewController *)self view];
      v180 = [v179 trailingAnchor];
      v181 = [v178 constraintEqualToAnchor:v180 constant:-10.0];
      goto LABEL_42;
    }
  }

  else
  {
    v172 = [(CNContactContentUnitaryViewController *)self contactView];
    v173 = [v172 leadingAnchor];
    v174 = [(CNContactContentUnitaryViewController *)self view];
    v175 = [v174 leadingAnchor];
  }

  v182 = [v173 constraintEqualToAnchor:v175];
  [v207 addObject:v182];

  v177 = [(CNContactContentUnitaryViewController *)self contactView];
  v178 = [v177 trailingAnchor];
  v179 = [(CNContactContentUnitaryViewController *)self view];
  v180 = [v179 trailingAnchor];
  v181 = [v178 constraintEqualToAnchor:v180];
LABEL_42:
  v183 = v181;
  [v207 addObject:v181];

  if ([(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard])
  {
    v184 = [(CNContactContentUnitaryViewController *)self traitCollection];
    v185 = [v184 _splitViewControllerContext];

    v186 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
    v187 = [v186 view];
    v188 = [v187 leadingAnchor];
    v189 = [(CNContactContentUnitaryViewController *)self view];
    v190 = [v189 leadingAnchor];
    if (v185)
    {
      v191 = [v188 constraintEqualToAnchor:v190 constant:5.0];
      [v207 addObject:v191];

      v192 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      v193 = [v192 view];
      v194 = [v193 trailingAnchor];
      v195 = [(CNContactContentUnitaryViewController *)self view];
      v196 = [v195 trailingAnchor];
      [v194 constraintEqualToAnchor:v196 constant:-10.0];
    }

    else
    {
      v197 = [v188 constraintEqualToAnchor:v190];
      [v207 addObject:v197];

      v192 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      v193 = [v192 view];
      v194 = [v193 trailingAnchor];
      v195 = [(CNContactContentUnitaryViewController *)self view];
      v196 = [v195 trailingAnchor];
      [v194 constraintEqualToAnchor:v196];
    }
    v198 = ;
    [v207 addObject:v198];
  }

  [(CNContactContentUnitaryViewController *)self setActivatedConstraints:v207];
  [MEMORY[0x1E696ACD8] activateConstraints:v207];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v199 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [v199 updateConstraints];

    if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
    {
      v200 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [v200 updateConstraints];
    }
  }

  v201 = [MEMORY[0x1E69966E8] currentEnvironment];
  v202 = [v201 featureFlags];
  v203 = [v202 isFeatureEnabled:29];

  if (v203)
  {
    if ([(CNContactContentUnitaryViewController *)self isPadRegularHorizontalSize])
    {
      v204 = 26.0;
    }

    else
    {
      v204 = 0.0;
    }

    v205 = [(CNContactContentUnitaryViewController *)self contactView];
    v206 = [v205 layer];
    [v206 setCornerRadius:v204];
  }
}

- (void)setupViewHierarchyAndConstraints
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ([(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    v3 = MEMORY[0x1E696ACD8];
    v4 = [(CNContactContentUnitaryViewController *)self view];
    v5 = [v4 widthAnchor];
    v6 = [v5 constraintEqualToConstant:0.0];
    v11[0] = v6;
    v7 = [(CNContactContentUnitaryViewController *)self view];
    v8 = [v7 heightAnchor];
    v9 = [v8 constraintEqualToConstant:0.0];
    v11[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [v3 activateConstraints:v10];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self setupViewHierarchy];

    [(CNContactContentUnitaryViewController *)self setupConstraints];
  }
}

- (void)setupViewHierarchy
{
  [(CNContactContentUnitaryViewController *)self setupViewHierarchyIncludingAvatarHeader:[(CNContactContentUnitaryViewController *)self shouldDisplayAvatarHeaderView] editing:[(CNContactContentUnitaryViewController *)self isEditing]];
  [(CNContactContentUnitaryViewController *)self setupTableHeaderView];
  [(CNContactContentUnitaryViewController *)self setupTableFooterView];

  [(CNContactContentUnitaryViewController *)self setHasSetupViewHierarchy:1];
}

- (void)setupConstraintsIfNeeded
{
  v3 = [(CNContactContentUnitaryViewController *)self isEditing];
  v4 = [(CNContactContentUnitaryViewController *)self shouldDisplayAvatarHeaderView];
  v5 = [(CNContactContentUnitaryViewController *)self activatedConstraints];
  if ([v5 count] && v3 == -[CNContactContentUnitaryViewController hasEditingConstraints](self, "hasEditingConstraints"))
  {
    v6 = [(CNContactContentUnitaryViewController *)self hasAvatarConstraints];

    if (v4 == v6)
    {
      return;
    }
  }

  else
  {
  }

  [(CNContactContentUnitaryViewController *)self setupViewHierarchyAndConstraints];
}

- (BOOL)shouldDisplayAvatarHeaderView
{
  v2 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  v3 = v2 != 0;

  return v3;
}

- (id)currentNavigationController
{
  v2 = [(CNContactContentUnitaryViewController *)self navigationItemController];
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

- (id)platterBackBarButtonItem
{
  v3 = [(CNContactContentUnitaryViewController *)self traitCollection];
  v4 = [v3 layoutDirection] == 1;

  v5 = [[CNPlatterBackBarButtonItem alloc] initWithTarget:self action:sel_popToPrevious_ isRTL:v4];

  return v5;
}

- (void)setUpBackGestureIfNeeded
{
  if ([(CNContactContentUnitaryViewController *)self allowsSwipeToPop])
  {
    v3 = [MEMORY[0x1E69966E8] currentEnvironment];
    v4 = [v3 featureFlags];
    if ([v4 isFeatureEnabled:11])
    {
    }

    else
    {
      v8 = [(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle];

      if (!v8)
      {
        return;
      }
    }

    v9 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
    v10 = [v9 interactivePopGestureRecognizer];
    v11 = [v10 delegate];
    v12 = v11;
    if (v11 == self)
    {
    }

    else
    {
      v13 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
      v14 = [v13 interactivePopGestureRecognizer];
      v15 = [v14 delegate];

      if (!v15)
      {
LABEL_11:
        v20 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
        v7 = [v20 interactivePopGestureRecognizer];
        [v7 setDelegate:self];
        goto LABEL_12;
      }

      v16 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
      v17 = [v16 interactivePopGestureRecognizer];
      v18 = [v17 delegate];
      previousBackGestureDelegate = self->_previousBackGestureDelegate;
      self->_previousBackGestureDelegate = v18;

      v9 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
      v10 = [v9 interactivePopGestureRecognizer];
      self->_previousInteractivePopGestureEnabled = [v10 isEnabled];
    }

    goto LABEL_11;
  }

  v5 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
  v6 = [v5 interactivePopGestureRecognizer];
  self->_previousInteractivePopGestureEnabled = [v6 isEnabled];

  v20 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
  v7 = [v20 interactivePopGestureRecognizer];
  [v7 setEnabled:0];
LABEL_12:
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v9 viewDidLoad];
  v3 = *MEMORY[0x1E6996568];
  v4 = [(CNContactContentUnitaryViewController *)self initialPrompt];
  LOBYTE(v3) = (*(v3 + 16))(v3, v4);

  if ((v3 & 1) == 0)
  {
    v5 = [(CNContactContentUnitaryViewController *)self initialPrompt];
    v6 = [(CNContactContentUnitaryViewController *)self navigationItem];
    [v6 setPrompt:v5];
  }

  if ([(CNContactContentUnitaryViewController *)self shouldDrawNavigationBar])
  {
    v7 = [(CNContactContentUnitaryViewController *)self navigationItem];
    [v7 _setBackgroundHidden:0];
  }

  [(CNContactContentUnitaryViewController *)self reloadDataIfNeeded];
  v8 = [(CNContactContentUnitaryViewController *)self view];
  [v8 setNeedsUpdateConstraints];
}

- (void)setupViewHierarchyIncludingAvatarHeader:(BOOL)a3 editing:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v65[1] = *MEMORY[0x1E69E9840];
  if (![(CNContactContentUnitaryViewController *)self isViewLoaded])
  {
    return;
  }

  v7 = [(CNContactContentUnitaryViewController *)self view];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v10 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    v11 = v10;
    if (v5)
    {
      v65[0] = v10;
      v12 = v65;
      v13 = v9;
    }

    else
    {
      v64 = v10;
      v12 = &v64;
      v13 = v8;
    }

    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v13 addObjectsFromArray:v14];
  }

  v15 = [(CNContactContentUnitaryViewController *)self shouldUseStaticHeader];
  if (!v4)
  {
    if (v15)
    {
      v19 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [v9 addObject:v19];

      if ([(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard])
      {
        v20 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
        [v20 setHidden:1];
      }

      if (self->_editingFloatingCollapsedHeaderView)
      {
        v21 = [(CNContactContentUnitaryViewController *)self editingFloatingCollapsedHeaderView];
LABEL_32:
        v37 = v21;
        [v8 addObject:v21];
      }
    }

    else
    {
      if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
      {
        v29 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
        [v9 addObject:v29];

        v30 = [(CNContactContentUnitaryViewController *)self view];
        v31 = [v30 _cnui_contactStyle];
        v32 = [v31 usesOpaqueBackground];

        if (v32)
        {
          v33 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
          v34 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
          [v33 addSubview:v34];
        }
      }

      if (![(CNContactContentUnitaryViewController *)self allowsActionsModel])
      {
        v35 = [(CNContactContentUnitaryViewController *)self actionsViewController];
        v36 = [v35 view];
        [v36 removeFromSuperview];
      }

      if (self->_editingHeaderView)
      {
        v21 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
        goto LABEL_32;
      }
    }

    v38 = [(CNContactContentUnitaryViewController *)self displayContactView];
    [v9 addObject:v38];

    if ([(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard])
    {
      v39 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      v40 = [v39 view];
      [v9 addObject:v40];

      v41 = [(CNContactContentUnitaryViewController *)self displayContactView];
      [v41 setHidden:1];
    }

    v26 = v8;
    if (!self->_editingContactView)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v15)
  {
    if (self->_displayFloatingCollapsedHeaderView)
    {
      v16 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [v8 addObject:v16];
    }

    if ([(CNContactContentUnitaryViewController *)self shouldDrawNavigationBar])
    {
      goto LABEL_23;
    }

    v17 = [(CNContactContentUnitaryViewController *)self editingFloatingCollapsedHeaderView];
    v18 = v9;
  }

  else
  {
    if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
    {
      v22 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [v8 addObject:v22];
    }

    if (!self->_displayHeaderView)
    {
      goto LABEL_23;
    }

    v17 = [(CNContactContentUnitaryViewController *)self displayHeaderView];
    v18 = v8;
  }

  [v18 addObject:v17];

LABEL_23:
  v23 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
  v24 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
  [v23 addSubview:v24];

  v25 = [(CNContactContentUnitaryViewController *)self displayContactView];
  [v8 addObject:v25];

  v26 = v9;
  if ([(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard])
  {
    v27 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
    v28 = [v27 view];
    [v8 addObject:v28];

    v26 = v9;
  }

LABEL_36:
  v42 = [(CNContactContentUnitaryViewController *)self editingContactView];
  [v26 addObject:v42];

LABEL_37:
  if ([(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v43 = [(CNContactContentUnitaryViewController *)self view];
    v44 = [v43 subviews];

    v45 = [v44 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v60;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v60 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [*(*(&v59 + 1) + 8 * i) removeFromSuperview];
        }

        v46 = [v44 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v46);
    }
  }

  else
  {
    v49 = [(CNContactContentUnitaryViewController *)self contactView];
    v50 = [v49 panGestureRecognizer];
    v51 = [v50 view];
    v52 = [(CNContactContentUnitaryViewController *)self contactView];
    v53 = [v52 panGestureRecognizer];
    [v51 removeGestureRecognizer:v53];

    v54 = [(CNContactContentUnitaryViewController *)self view];
    v55 = [(CNContactContentUnitaryViewController *)self contactView];
    v56 = [v55 panGestureRecognizer];
    [v54 addGestureRecognizer:v56];

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __89__CNContactContentUnitaryViewController_setupViewHierarchyIncludingAvatarHeader_editing___block_invoke;
    v57[3] = &unk_1E74E6C50;
    v58 = v7;
    [v9 enumerateObjectsUsingBlock:v57];
    [v8 enumerateObjectsUsingBlock:&__block_literal_global_545];
    v44 = v58;
  }
}

- (void)loadContactViewControllerViews
{
  v3 = [(CNContactContentUnitaryViewController *)self contactView];
  v4 = [(CNContactContentUnitaryViewController *)self contactView];
  v5 = objc_opt_class();
  v6 = [v5 cellIdentifierForClass:objc_opt_class()];
  v7 = [v3 dequeueReusableCellWithIdentifier:v6];
  [(CNContactContentUnitaryViewController *)self setNoteCell:v7];

  v9 = [(CNContactContentUnitaryViewController *)self view];
  v8 = [(CNContactContentUnitaryViewController *)self contactView];
  [v9 addSubview:v8];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(CNContactContentUnitaryViewController *)self setView:v3];

  if ([(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    v8 = [MEMORY[0x1E69DC888] clearColor];
    v4 = v8;
    v5 = [v8 CGColor];
    v6 = [(CNContactContentUnitaryViewController *)self view];
    v7 = [v6 layer];
    [v7 setBackgroundColor:v5];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self loadContactViewControllerViews];

    [(CNContactContentUnitaryViewController *)self loadDisplayModeContactCardVewController];
  }
}

- (void)performAuthorizedSetEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = CNUILogContactCard();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v9 = "[CNContactContentViewController] Entering Edit Mode";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v9 = "[CNContactContentViewController] Leaving Edit Mode";
  }

  _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
LABEL_7:

  if ([(CNContactContentUnitaryViewController *)self shouldAllowContainerPicking])
  {
    v10 = [(CNContactContentUnitaryViewController *)self contact];
    [(CNContactContentUnitaryViewController *)self setupContainerContextIfNeededForContact:v10];
  }

  if (v5)
  {
    if ([(CNContactContentUnitaryViewController *)self didSetNewContact])
    {
      [(CNContactContentUnitaryViewController *)self setDidSetNewContact:0];
      editingContactView = self->_editingContactView;
      self->_editingContactView = 0;
    }

    [(CNContactContentUnitaryViewController *)self setDidEditPronouns:0];
    v12 = [(CNContactContentUnitaryViewController *)self displayContactView];
    v13 = [(CNContactContentUnitaryViewController *)self editingContactView];
  }

  else
  {
    v12 = [(CNContactContentUnitaryViewController *)self editingContactView];
    v13 = [(CNContactContentUnitaryViewController *)self displayContactView];
  }

  v14 = v13;
  [(CNContactContentUnitaryViewController *)self updateInsetsIfNeededForTableView:v13 isEditing:v5];
  [v12 _stopScrollingAndZoomingAnimations];
  v15 = [(CNContactContentUnitaryViewController *)self _currentTopVisibleGroupInContactView:v12];
  v16 = [(CNContactContentUnitaryViewController *)self environment];
  [v14 setAttributesFromContactView:v12 runningInContactsAppOniPad:{objc_msgSend(v16, "runningInContactsAppOniPad")}];

  v32.receiver = self;
  v32.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v32 setEditing:v5 animated:v4];
  v17 = [MEMORY[0x1E69966E8] currentEnvironment];
  v18 = [v17 featureFlags];
  -[CNContactContentUnitaryViewController updateEditNavigationItemsAnimated:](self, "updateEditNavigationItemsAnimated:", v4 & ~[v18 isFeatureEnabled:29]);

  v19 = [(CNContactContentUnitaryViewController *)self contactView];
  v20 = [(CNContactContentUnitaryViewController *)self contactView];
  v21 = objc_opt_class();
  v22 = [v21 cellIdentifierForClass:objc_opt_class()];
  v23 = [v19 dequeueReusableCellWithIdentifier:v22];
  [(CNContactContentUnitaryViewController *)self setNoteCell:v23];

  [v14 reloadData];
  [(CNContactContentUnitaryViewController *)self _scrollContactView:v14 toVisibleGroup:v15 animated:0];
  v24 = MEMORY[0x1E69DD250];
  v25 = [(CNContactContentUnitaryViewController *)self view];
  if (v4)
  {
    v22 = [MEMORY[0x1E69966E8] currentEnvironment];
    v23 = [v22 featureFlags];
    v26 = [v23 isFeatureEnabled:29];
    v27 = 0.25;
    if (v26)
    {
      v27 = 0.0;
    }
  }

  else
  {
    v27 = 0.0;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __78__CNContactContentUnitaryViewController_performAuthorizedSetEditing_animated___block_invoke;
  v31[3] = &unk_1E74E6A88;
  v31[4] = self;
  [v24 transitionWithView:v25 duration:5242880 options:v31 animations:0 completion:v27];
  if (v4)
  {
  }

  v28 = [(CNContactContentUnitaryViewController *)self contactDelegate];
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = [(CNContactContentUnitaryViewController *)self contactDelegate];
    [v30 contactViewController:self didChangeToEditMode:v5];
  }
}

- (void)editAuthorizationController:(id)a3 authorizationDidFinishWithResult:(int64_t)a4
{
  [(CNContactContentUnitaryViewController *)self setEditAuthorizationController:0];
  [(CNContactContentUnitaryViewController *)self setEditAuthorizationResult:a4];
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      [(CNContactContentUnitaryViewController *)self performAuthorizedSetEditing:1 animated:1];

      [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
    }
  }

  else
  {
    v6 = [(CNContactContentUnitaryViewController *)self delegate];
    [v6 didCompleteWithContact:0];
  }
}

- (void)showEditAuthorizationPane:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CNUIEditAuthorizationController);
  [(CNContactContentUnitaryViewController *)self setEditAuthorizationController:v7];

  v8 = [(CNContactContentUnitaryViewController *)self editAuthorizationController];
  [v8 setDelegate:self];

  v9 = [(CNContactContentUnitaryViewController *)self editAuthorizationController];
  [v9 setSender:v6];

  v10 = [(CNContactContentUnitaryViewController *)self editAuthorizationController];
  [v10 setAnimated:v4];

  v11 = [(CNContactContentUnitaryViewController *)self editAuthorizationController];
  [v11 setGuardedViewController:self];

  v12 = [(CNContactContentUnitaryViewController *)self editAuthorizationController];
  [v12 presentAuthorizationUI];
}

- (BOOL)editRequiresAuthorization
{
  v3 = objc_alloc(MEMORY[0x1E6996B08]);
  v4 = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [(CNContactContentViewController *)self parentContainer];
  v6 = [(CNContactContentViewController *)self ignoresParentalRestrictions];
  v7 = [(CNContactContentUnitaryViewController *)self contactViewCache];
  v8 = [v3 initWithContact:v4 parentContainer:v5 ignoresParentalRestrictions:v6 linkedParentContainerProvider:v7];

  LOBYTE(v7) = [v8 shouldPromptForPasscodeAuthorization];
  return v7;
}

- (BOOL)editingChangeRequiresAuthorization
{
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0)
  {
    return 0;
  }

  return [(CNContactContentUnitaryViewController *)self editRequiresAuthorization];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CNContactContentUnitaryViewController *)self isEditing]!= a3)
  {
    if ([(CNContactContentUnitaryViewController *)self editingChangeRequiresAuthorization])
    {
      v8 = [(CNContactContentUnitaryViewController *)self navigationItem];
      v7 = [v8 rightBarButtonItem];
      [(CNContactContentUnitaryViewController *)self showEditAuthorizationPane:v7 animated:v4];
    }

    else
    {

      [(CNContactContentUnitaryViewController *)self performAuthorizedSetEditing:v5 animated:v4];
    }
  }
}

- (void)showUpdateTermOfAddressAlertIfNeeded
{
  if ([(CNContactContentUnitaryViewController *)self didEditPronouns])
  {
    [(CNContactContentUnitaryViewController *)self setDidEditPronouns:0];
    if ([(CNContactContentUnitaryViewController *)self showingMeContact])
    {
      if ([MEMORY[0x1E696B0E8] canSelectUserInflection])
      {
        v3 = MEMORY[0x1E69DC650];
        v4 = CNContactsUIBundle();
        v5 = [v4 localizedStringForKey:@"ADDRESSING_GRAMMAR_UPDATE_SETTINGS_ALERT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
        v6 = CNContactsUIBundle();
        v7 = [v6 localizedStringForKey:@"ADDRESSING_GRAMMAR_UPDATE_SETTINGS_ALERT_MESSAGE" value:&stru_1F0CE7398 table:@"Localized"];
        v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

        v9 = MEMORY[0x1E69DC648];
        v10 = CNContactsUIBundle();
        v11 = [v10 localizedStringForKey:@"ADDRESSING_GRAMMAR_UPDATE_SETTINGS_ALERT_CANCEL_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __77__CNContactContentUnitaryViewController_showUpdateTermOfAddressAlertIfNeeded__block_invoke;
        v24[3] = &unk_1E74E6C28;
        v12 = v8;
        v25 = v12;
        v13 = [v9 actionWithTitle:v11 style:1 handler:v24];
        [v12 addAction:v13];

        v14 = MEMORY[0x1E69DC648];
        v15 = CNContactsUIBundle();
        v16 = [v15 localizedStringForKey:@"ADDRESSING_GRAMMAR_UPDATE_SETTINGS_ALERT_UPDATE_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
        v19 = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __77__CNContactContentUnitaryViewController_showUpdateTermOfAddressAlertIfNeeded__block_invoke_2;
        v22 = &unk_1E74E6C28;
        v23 = v12;
        v17 = v12;
        v18 = [v14 actionWithTitle:v16 style:0 handler:&v19];
        [v17 addAction:{v18, v19, v20, v21, v22}];

        [(CNContactContentUnitaryViewController *)self presentViewController:v17 animated:1 completion:0];
      }
    }
  }
}

void __77__CNContactContentUnitaryViewController_showUpdateTermOfAddressAlertIfNeeded__block_invoke_3()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=INTERNATIONAL"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

- (void)finishSNaPEditing:(id)a3
{
  v4 = a3;
  [(CNContactContentUnitaryViewController *)self cancelAsyncLookups];
  if (![(CNContactContentUnitaryViewController *)self _modelHasChanges])
  {
    [(CNContactContentUnitaryViewController *)self editCancel:v4];
    goto LABEL_14;
  }

  v5 = [(CNContactContentUnitaryViewController *)self presentingViewController];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [(CNContactContentUnitaryViewController *)self parentViewController];
  objc_getClass("ABNewPersonViewController");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [(CNContactContentUnitaryViewController *)self mode];

    if (v8 == 3)
    {
      goto LABEL_8;
    }

LABEL_7:
    [(CNContactContentUnitaryViewController *)self setEditing:0 animated:1];
    goto LABEL_8;
  }

LABEL_8:
  v9 = CNUILogContactCard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] Done SNaP editing, will save changes", v13, 2u);
  }

  v10 = [(CNContactContentUnitaryViewController *)self saveChanges];
  [(CNContactContentViewController *)self setAlwaysEditing:0];
  if (v10)
  {
    v11 = [(CNContactContentUnitaryViewController *)self mutableContact];
    [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:v11];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:0];
  }

  [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:0];
  v12 = [(CNContactContentUnitaryViewController *)self editingContactView];
  [v12 reloadData];

LABEL_14:
}

- (void)finishEditing:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self isEditing];
  [(CNContactContentUnitaryViewController *)self cancelAsyncLookups];
  v6 = [(CNContactContentUnitaryViewController *)self contactView];
  [v6 endEditing:1];

  v7 = [(CNContactContentUnitaryViewController *)self splitViewController];
  if (v7)
  {
    v8 = v7;
    v9 = [(CNContactContentUnitaryViewController *)self splitViewController];
    v10 = [v9 firstResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [(CNContactContentUnitaryViewController *)self splitViewController];
      v13 = [v12 view];
      [v13 endEditing:1];
    }
  }

  if (v5 && ![(CNContactContentUnitaryViewController *)self _modelHasChanges])
  {
    [(CNContactContentUnitaryViewController *)self editCancel:v4];
    goto LABEL_22;
  }

  v14 = [(CNContactContentUnitaryViewController *)self presentingViewController];
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [(CNContactContentUnitaryViewController *)self parentViewController];
  objc_getClass("ABNewPersonViewController");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [(CNContactContentUnitaryViewController *)self mode];

    if (v17 == 3)
    {
      goto LABEL_12;
    }

LABEL_11:
    [(CNContactContentUnitaryViewController *)self setEditing:v5 ^ 1u animated:1];
    goto LABEL_12;
  }

LABEL_12:
  if (!v5)
  {
    [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:0];
    v23 = [(CNContactContentUnitaryViewController *)self editingContactView];
    [v23 reloadData];

    goto LABEL_25;
  }

  v18 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
  v19 = [v18 modified];

  if (v19)
  {
    [(CNContactContentUnitaryViewController *)self requestFavoritesUpdateWithGemini];
  }

  v20 = CNUILogContactCard();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_199A75000, v20, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] Done editing, will save changes", v25, 2u);
  }

  v21 = [(CNContactContentUnitaryViewController *)self saveChanges];
  [(CNContactContentViewController *)self setAlwaysEditing:0];
  if (v21)
  {
    v22 = [(CNContactContentUnitaryViewController *)self mutableContact];
    [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:v22];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:0];
  }

  [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:0];
  v24 = [(CNContactContentUnitaryViewController *)self editingContactView];
  [v24 reloadData];

LABEL_22:
  [(CNContactContentUnitaryViewController *)self resetEditAuthorizationState];
  [(CNContactContentUnitaryViewController *)self setRequiresGameCenterRefresh:1];
  if ([(CNContactContentUnitaryViewController *)self supportsDrafts])
  {
    +[CNUIDraftSupport deleteDrafts];
  }

  [(CNContactContentUnitaryViewController *)self showUpdateTermOfAddressAlertIfNeeded];
LABEL_25:
}

- (void)toggleEditing:(id)a3
{
  v11 = a3;
  if (![(CNContactContentUnitaryViewController *)self isEditing])
  {
    goto LABEL_7;
  }

  v4 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
  v5 = [v4 didChange];

  if (v5)
  {
    v6 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
    v7 = [v6 saveChangesToKTStore];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x1E6996BC8]);
      v9 = [(CNContactContentUnitaryViewController *)self contact];
      v10 = [v8 initWithContact:v9];
      [(CNContactContentUnitaryViewController *)self setCachedStaticIdentity:v10];

      [(CNContactContentUnitaryViewController *)self setCachedVerifiedHandles:0];
LABEL_7:
      [(CNContactContentUnitaryViewController *)self finishEditing:v11];
      goto LABEL_8;
    }

    [(CNContactContentUnitaryViewController *)self alertStaticIdentitySaveFailed:v11];
  }

  else
  {
    if (![(CNContactContentUnitaryViewController *)self hadAtLeastOneVerifiedHandle]|| [(CNContactContentUnitaryViewController *)self _hasAtLeastOneVerifiedHandle])
    {
      goto LABEL_7;
    }

    [(CNContactContentUnitaryViewController *)self alertDetailsNotVerified:v11];
  }

LABEL_8:
}

- (BOOL)isAcceptedIntroductionsDataSource
{
  v2 = [(CNContactContentViewController *)self parentContainer];
  v3 = [v2 type] == 1004;

  return v3;
}

- (BOOL)isContactProviderDataSource
{
  v2 = [(CNContactContentViewController *)self parentContainer];
  v3 = [v2 type] == 1003;

  return v3;
}

- (BOOL)showsGroupMembership
{
  if (!self->_showsGroupMembership)
  {
    return 0;
  }

  if ([(CNContactContentUnitaryViewController *)self isContactProviderDataSource])
  {
    return 0;
  }

  return ![(CNContactContentUnitaryViewController *)self isAcceptedIntroductionsDataSource];
}

- (BOOL)allowsEditing
{
  if (self->_allowsEditing)
  {
    return ![(CNContactContentUnitaryViewController *)self isContactProviderDataSource:v2];
  }

  else
  {
    return 0;
  }
}

- (void)updateContact:(id)a3
{
  if ([(CNContactContentUnitaryViewController *)self saveChanges])
  {
    v4 = [(CNContactContentUnitaryViewController *)self mutableContact];
    [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:v4];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:0];
  }

  [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:0];
}

- (id)authorizationCheck
{
  v3 = objc_alloc(MEMORY[0x1E6996B08]);
  v4 = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [(CNContactContentViewController *)self parentContainer];
  v6 = [(CNContactContentViewController *)self ignoresParentalRestrictions];
  v7 = [(CNContactContentUnitaryViewController *)self contactViewCache];
  v8 = [v3 initWithContact:v4 parentContainer:v5 ignoresParentalRestrictions:v6 linkedParentContainerProvider:v7];

  return v8;
}

- (BOOL)saveWasAuthorized
{
  v2 = self;
  v3 = [(CNContactContentUnitaryViewController *)self authorizationCheck];
  LOBYTE(v2) = [v3 shouldBypassRestrictionsGivenAuthorizationResult:{-[CNContactContentUnitaryViewController editAuthorizationResult](v2, "editAuthorizationResult")}];

  return v2;
}

- (id)saveDescriptionForCurrentState
{
  v3 = [CNUIContactSaveConfiguration alloc];
  v4 = [(CNContactContentUnitaryViewController *)self contact];
  v17 = [(CNContactContentUnitaryViewController *)self mutableContact];
  v16 = [(CNContactContentUnitaryViewController *)self originalContacts];
  v5 = [(CNContactContentUnitaryViewController *)self shadowCopyOfReadonlyContact];
  v15 = [(CNContactContentUnitaryViewController *)self editingLinkedContacts];
  v6 = [(CNContactContentUnitaryViewController *)self contactStore];
  v7 = [(CNContactContentViewController *)self parentGroup];
  v8 = [(CNContactContentViewController *)self parentContainer];
  v9 = [(CNContactContentUnitaryViewController *)self containerContext];
  v10 = [(CNContactContentUnitaryViewController *)self groupContext];
  v11 = [(CNContactContentViewController *)self ignoresParentalRestrictions];
  BYTE1(v13) = [(CNContactContentUnitaryViewController *)self saveWasAuthorized];
  LOBYTE(v13) = v11;
  v14 = [(CNUIContactSaveConfiguration *)v3 initWithContact:v4 mutableContact:v17 originalContacts:v16 shadowCopyOfReadonlyContact:v5 editingLinkedContacts:v15 contactStore:v6 parentGroup:v7 parentContainer:v8 containerContext:v9 groupContext:v10 ignoresParentalRestrictions:v13 saveWasAuthorized:?];

  return v14;
}

- (BOOL)performSave
{
  v3 = [(CNContactContentUnitaryViewController *)self saveContactExecutor];
  v4 = [(CNContactContentUnitaryViewController *)self saveDescriptionForCurrentState];
  v5 = [v3 executeSaveWithConfiguration:v4 saveDelegate:self];

  v6 = [MEMORY[0x1E695DF70] array];
  [(CNContactContentUnitaryViewController *)self setIssuedSaveRequestIdentifiers:v6];

  if ([v5 success])
  {
    [(CNContactContentUnitaryViewController *)self setShadowCopyOfReadonlyContact:0];
    v7 = _LargeDatabasesSignpostLogQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__CNContactContentUnitaryViewController_performSave__block_invoke;
    block[3] = &unk_1E74E6A88;
    v14 = v5;
    dispatch_async(v7, block);
  }

  v8 = [(CNContactContentUnitaryViewController *)self issuedSaveRequestIdentifiers];
  v9 = [v5 identifiersOfIssuedSaveRequests];
  [v8 addObjectsFromArray:v9];

  [(CNContactContentUnitaryViewController *)self setEditingLinkedContacts:0];
  [(CNContactContentUnitaryViewController *)self setGroupEditingContext:0];
  v10 = [v5 contact];
  [(CNContactContentUnitaryViewController *)self setContact:v10];

  v11 = [v5 success];
  return v11;
}

void __52__CNContactContentUnitaryViewController_performSave__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contact];
  [CNContactContentUnitaryViewController _telemetryForContact:v1];
}

- (void)saveModelChangesToContact
{
  v3 = [(CNContactContentUnitaryViewController *)self editingGroups];
  [(CNContactContentUnitaryViewController *)self _saveChangesForGroups:v3];

  v4 = [(CNContactContentUnitaryViewController *)self deletedEditingGroups];
  [(CNContactContentUnitaryViewController *)self _saveChangesForGroups:v4];

  v5 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
  [v5 saveContactPhoto];

  v6 = [(CNContactContentUnitaryViewController *)self contact];
  v7 = [v6 givenName];
  v8 = [(CNContactContentUnitaryViewController *)self mutableContact];
  v9 = [v8 givenName];
  if ([v7 isEqualToString:v9])
  {
    v10 = [(CNContactContentUnitaryViewController *)self contact];
    v11 = [v10 familyName];
    v12 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v13 = [v12 familyName];
    v14 = [v11 isEqualToString:v13];

    if (v14)
    {
      return;
    }
  }

  else
  {
  }

  v15 = [(CNContactContentUnitaryViewController *)self mutableContact];
  [v15 setPhonemeData:0];
}

- (void)performSaveToSharedProfile
{
  if ([(CNContactContentUnitaryViewController *)self shouldUpdateSharedProfile])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__CNContactContentUnitaryViewController_performSaveToSharedProfile__block_invoke;
    aBlock[3] = &unk_1E74E6A88;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    v4 = [(CNContactContentUnitaryViewController *)self editingNicknameContact];
    v5 = [v4 wallpaper];
    if (v5)
    {
      v6 = v5;
      v7 = [(CNContactContentUnitaryViewController *)self editingNicknameContact];
      v8 = [v7 watchWallpaperImageData];

      if (!v8)
      {
        v9 = [(CNContactContentUnitaryViewController *)self editingNicknameContact];
        v10 = [v9 wallpaper];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __67__CNContactContentUnitaryViewController_performSaveToSharedProfile__block_invoke_507;
        v11[3] = &unk_1E74E6C00;
        v11[4] = self;
        v12 = v3;
        [v10 snapshotImageDataForWatchWithCompletion:v11];

LABEL_10:
        return;
      }
    }

    else
    {
    }

    v3[2](v3);
    goto LABEL_10;
  }

  [(CNContactContentUnitaryViewController *)self setSavingPersonalSharedProfile:0];
}

void __67__CNContactContentUnitaryViewController_performSaveToSharedProfile__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 nicknameProvider];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__CNContactContentUnitaryViewController_performSaveToSharedProfile__block_invoke_2;
  v4[3] = &unk_1E74E6AD0;
  v4[4] = *(a1 + 32);
  [v3 fetchPersonalNicknameAsContactWithCompletion:v4];
}

void __67__CNContactContentUnitaryViewController_performSaveToSharedProfile__block_invoke_507(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 editingNicknameContact];
  v6 = [v5 mutableCopy];

  [v6 setWatchWallpaperImageData:v4];
  [*(a1 + 32) setEditingNicknameContact:v6];
  (*(*(a1 + 40) + 16))();
}

void __67__CNContactContentUnitaryViewController_performSaveToSharedProfile__block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CNUILogContactCard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v3;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] Personal nickname contact fetched from IMNicknameProvider: %@", &v22, 0xCu);
  }

  v5 = [v3 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [*(a1 + 32) editingNicknameContact];
    v7 = [v8 mutableCopy];
  }

  if (v3)
  {
    v9 = [*(a1 + 32) editingNicknameContact];
    v10 = [v9 thumbnailImageData];

    if (v10)
    {
      [v7 setImageData:v10];
      [v7 setThumbnailImageData:v10];
      [v7 setCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }

    else
    {
      v11 = [*(a1 + 32) editingNicknameContact];
      v12 = [v11 imageData];
      [v7 setImageData:v12];

      [v7 setThumbnailImageData:0];
      v13 = [*(a1 + 32) editingNicknameContact];
      [v13 cropRect];
      [v7 setCropRect:?];
    }

    v14 = [*(a1 + 32) editingNicknameContact];
    v15 = [v14 wallpaper];
    [v7 setWallpaper:v15];

    v16 = [*(a1 + 32) editingNicknameContact];
    v17 = [v16 watchWallpaperImageData];
    [v7 setWatchWallpaperImageData:v17];
  }

  v18 = CNUILogContactCard();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_199A75000, v18, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] Saving personal photo and poster changes to Shared Name & Photo", &v22, 2u);
  }

  v19 = [MEMORY[0x1E69966E8] currentEnvironment];
  v20 = [v19 nicknameProvider];
  v21 = [v7 freeze];
  [v20 setPersonalNicknameWithContact:v21];

  [*(a1 + 32) setEditingNicknameContact:0];
  [*(a1 + 32) setSavingPersonalSharedProfile:0];
}

- (void)saveModelChangesToSharedProfileContact
{
  v3 = [(CNMutableContact *)self->_mutableContact copy];
  [(CNContactContentUnitaryViewController *)self setEditingNicknameContact:v3];

  [(CNContactContentUnitaryViewController *)self setSavingPersonalSharedProfile:1];
}

- (BOOL)shouldUseSharedProfile
{
  v3 = [(CNContactContentUnitaryViewController *)self showingMeContact];
  if (v3)
  {
    v4 = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    v5 = [(CNContactContentUnitaryViewController *)self contact];
    v6 = [v4 isMeContact:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)shouldUpdateSharedProfile
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  if ([v4 isFeatureEnabled:27])
  {
    v5 = [(CNContactContentUnitaryViewController *)self shouldUseSharedProfile];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)saveChanges
{
  if (self->_saving)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    self->_saving = 1;
    [(CNContactContentUnitaryViewController *)self saveModelChangesToContact];
    if ([(CNContactContentUnitaryViewController *)self shouldUpdateSharedProfile])
    {
      [(CNContactContentUnitaryViewController *)self saveModelChangesToSharedProfileContact];
    }

    v4 = CNUILogContactCard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] performing save…", v6, 2u);
    }

    v2 = [(CNContactContentUnitaryViewController *)self performSave];
    self->_saving = 0;
    if (v2)
    {
      if ([(CNContactContentUnitaryViewController *)self shouldUpdateSharedProfile])
      {
        [(CNContactContentUnitaryViewController *)self performSaveToSharedProfile];
      }

      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

- (void)clearMapsDataIfEdited
{
  if ([(CNContactContentUnitaryViewController *)self _modelHasChanges])
  {
    v3 = [(CNContactContentUnitaryViewController *)self mutableContact];
    [v3 setMapsData:0];
  }
}

- (void)presentConfirmCancelAlertController
{
  v2 = [(CNContactContentUnitaryViewController *)self delegate];
  [v2 presentCancelConfirmationAlert];
}

- (void)popToPrevious:(id)a3
{
  v4 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)editCancel:(id)a3
{
  if ([(CNContactContentUnitaryViewController *)self hasPendingChanges])
  {
    if ([(CNContactContentUnitaryViewController *)self isOutOfProcess])
    {
      v4 = [(CNContactContentUnitaryViewController *)self contactView];
      [v4 endEditing:1];
    }

    [(CNContactContentUnitaryViewController *)self presentConfirmCancelAlertController];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self performConfirmedCancel];
  }

  if (self->_needsRefetch)
  {

    [(CNContactContentUnitaryViewController *)self _refetchContact];
  }
}

- (void)cancelAsyncLookups
{
  v3 = [(CNContactContentUnitaryViewController *)self faceTimeIDSLookupToken];
  [v3 cancel];

  [(CNContactContentUnitaryViewController *)self setFaceTimeIDSLookupToken:0];
  v4 = [(CNContactContentUnitaryViewController *)self iMessageIDSLookupToken];
  [v4 cancel];

  [(CNContactContentUnitaryViewController *)self setIMessageIDSLookupToken:0];
  v5 = [(CNContactContentUnitaryViewController *)self medicalIDLookupToken];
  [v5 cancel];

  [(CNContactContentUnitaryViewController *)self setMedicalIDLookupToken:0];
}

- (BOOL)hasPendingChanges
{
  if ([(CNContactContentUnitaryViewController *)self _modelIsEmpty]|| ![(CNContactContentUnitaryViewController *)self _modelHasChanges])
  {
    return 0;
  }

  return [(CNContactContentUnitaryViewController *)self isEditing];
}

- (void)updateDoneButton
{
  if ([(CNContactContentUnitaryViewController *)self isOutOfProcess]&& ![(CNContactContentUnitaryViewController *)self outOfProcessSetupComplete])
  {
    return;
  }

  v21 = [(CNContactContentUnitaryViewController *)self navigationItemController];
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    v3 = [(CNContactContentUnitaryViewController *)self hasPendingChanges];
    v4 = [(CNContactContentUnitaryViewController *)self doneButtonItem];
    [v4 setEnabled:v3];

    if ([(CNContactContentUnitaryViewController *)self mode]!= 4)
    {
LABEL_13:
      v12 = 1;
      goto LABEL_14;
    }

    v5 = CNContactsUIBundle();
    v6 = [v5 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
    v7 = [(CNContactContentUnitaryViewController *)self doneButtonItem];
    [v7 setTitle:v6];

LABEL_12:
    goto LABEL_13;
  }

  if ([(CNContactContentUnitaryViewController *)self allowsEditing])
  {
    v5 = [(CNContactContentUnitaryViewController *)self editButtonItem];
    [v5 setEnabled:1];
LABEL_11:
    v3 = 0;
    goto LABEL_12;
  }

  if ([(CNContactContentUnitaryViewController *)self mode]== 5)
  {
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
    v10 = [(CNContactContentUnitaryViewController *)self editButtonItem];
    [v10 setTitle:v9];

    v5 = CNContactsUIBundle();
    v11 = [v5 localizedStringForKey:@"REVIEW" value:&stru_1F0CE7398 table:@"Localized"];
    [v21 setTitle:v11];

    goto LABEL_11;
  }

  v3 = 0;
  v12 = 0;
LABEL_14:
  [(CNContactContentUnitaryViewController *)self setSaveKeyboardShortcutEnabled:v3];
  v13 = [(CNContactContentUnitaryViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v12 && (v14 & 1) != 0)
  {
    v15 = [(CNContactContentUnitaryViewController *)self delegate];
    v16 = [(CNContactContentUnitaryViewController *)self isEditing];
    v17 = [(CNContactContentUnitaryViewController *)self doneButtonItem];
    v18 = [v17 isEnabled];
    v19 = [(CNContactContentUnitaryViewController *)self doneButtonItem];
    v20 = [v19 title];
    [v15 updateEditing:v16 doneButtonEnabled:v18 doneButtonText:v20];
  }
}

- (id)cancelButtonItem
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (v5)
  {
    v6 = [(CNContactContentUnitaryViewController *)self sharedNavigationBar];
    v7 = [v6 doneButton];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_editCancel_];
  }

  return v7;
}

- (id)doneButtonItem
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (v5)
  {
    v6 = [(CNContactContentUnitaryViewController *)self sharedNavigationBar];
    v7 = [v6 doneButton];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CNContactContentUnitaryViewController;
    v7 = [(CNContactContentUnitaryViewController *)&v9 editButtonItem];
  }

  return v7;
}

- (id)editButtonItem
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (v5)
  {
    v6 = [(CNContactContentUnitaryViewController *)self sharedNavigationBar];
    v7 = [v6 editButton];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CNContactContentUnitaryViewController;
    v7 = [(CNContactContentUnitaryViewController *)&v9 editButtonItem];
  }

  return v7;
}

- (void)updateWindowTitleForAppearing:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CNContactContentUnitaryViewController *)self title];
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v7 = [(CNContactContentUnitaryViewController *)self navigationController];
      v11 = [v7 title];

      if (!v11)
      {
        v8 = [(CNContactContentUnitaryViewController *)self contactFormatter];
        v9 = [(CNContactContentUnitaryViewController *)self contact];
        v11 = [v8 stringFromContact:v9];
      }
    }

    v5 = [(CNContactContentUnitaryViewController *)self view];
    v6 = [v5 window];
    v10 = [v6 windowScene];
    [v10 setTitle:v11];
  }

  else
  {
    v11 = [(CNContactContentUnitaryViewController *)self view];
    v5 = [v11 window];
    v6 = [v5 windowScene];
    [v6 setTitle:0];
  }
}

- (void)applyNavigationBarTintColorIfNeeded:(id)a3
{
  v4 = a3;
  if ([(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle])
  {
    if ([(CNContactContentUnitaryViewController *)self _appearState]== 3 || ![(CNContactContentUnitaryViewController *)self _appearState])
    {
      v5 = CNUILogContactCard();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "Not updating navigation bar tint color, view controller is being dismissed", v8, 2u);
      }
    }

    else
    {
      if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0)
      {
        [MEMORY[0x1E69DC888] tintColor];
      }

      else
      {
        +[CNUIColorRepository contactCardStaticHeaderDefaultTintColor];
      }
      v5 = ;
      v6 = [v4 navigationItem];
      v7 = [v6 navigationBar];
      [v7 setTintColor:v5];
    }
  }
}

- (void)applyPlatterStyleToBarButtonItemsIfNeeded:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0)
          {
            [(CNContactContentUnitaryViewController *)self transparentPlatterImage];
          }

          else
          {
            [(CNContactContentUnitaryViewController *)self buttonPlatterImage];
          }
          v11 = ;
          [v10 setBackgroundImage:v11 forState:0 barMetrics:0];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)displayNavigationButtonsShouldUsePlatterStyle
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E69966E8] currentEnvironment];
    v8 = [v7 featureFlags];
    if ([v8 isFeatureEnabled:27])
    {
      v6 = ![(CNContactContentUnitaryViewController *)self shouldDrawNavigationBar];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)updateEditNavigationItemsAnimated:(BOOL)a3 updateTintColor:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v95[1] = *MEMORY[0x1E69E9840];
  if ([(CNContactContentUnitaryViewController *)self isOutOfProcess]&& ![(CNContactContentUnitaryViewController *)self outOfProcessSetupComplete])
  {
    return;
  }

  v7 = [(CNContactContentUnitaryViewController *)self navigationItemController];
  v8 = [(CNContactContentUnitaryViewController *)v7 navigationItem];
  v9 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
  v10 = [v9 navigationBar];
  v11 = [v10 backItem];

  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0 || [(CNContactContentUnitaryViewController *)self allowsEditing])
  {
    if ([(CNContactContentUnitaryViewController *)self isEditing])
    {
      v12 = [(CNContactContentUnitaryViewController *)self preEditLeftBarButtonItems];

      if (!v12)
      {
        v13 = [v8 leftBarButtonItems];
        v14 = [v13 _cn_filter:&__block_literal_global_472];

        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = MEMORY[0x1E695E0F0];
        }

        [(CNContactContentUnitaryViewController *)self setPreEditLeftBarButtonItems:v15];
      }

      v16 = [(CNContactContentUnitaryViewController *)self cancelButtonItem];
      v95[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:1];

      [(CNContactContentUnitaryViewController *)self setCancelKeyboardShortcutEnabled:1];
LABEL_17:
      [(CNContactContentUnitaryViewController *)self setEditKeyboardShortcutEnabled:1];
      [(CNContactContentUnitaryViewController *)self updateDoneButton];
      if (v7 != self)
      {
        [(CNContactContentUnitaryViewController *)v7 setEditing:[(CNContactContentUnitaryViewController *)self isEditing]];
      }

      v23 = [MEMORY[0x1E69966E8] currentEnvironment];
      v24 = [v23 featureFlags];
      v25 = [v24 isFeatureEnabled:29];

      if (v25)
      {
        [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar setMode:[(CNContactContentUnitaryViewController *)self isEditing]];
        sharedNavigationBar = self->_sharedNavigationBar;
        v27 = [(CNContactContentUnitaryViewController *)self traitCollection];
        v28 = [(CNContactViewSharedNavigationBar *)sharedNavigationBar rightButtonItemsForTraitCollection:v27];

        v29 = self->_sharedNavigationBar;
        v30 = [(CNContactContentUnitaryViewController *)self traitCollection];
        v31 = [(CNContactViewSharedNavigationBar *)v29 leftButtonItemsForTraitCollection:v30];

        v17 = v31;
      }

      else
      {
        v32 = [(CNContactContentUnitaryViewController *)self editButtonItem];
        [v32 setTarget:self];

        v33 = [(CNContactContentUnitaryViewController *)self editButtonItem];
        [v33 setAction:sel_toggleEditing_];

        v28 = [(CNContactContentUnitaryViewController *)self editButtonItem];

        if (!v28)
        {
LABEL_24:
          if (!v4)
          {
            goto LABEL_44;
          }

          v34 = [(CNContactContentUnitaryViewController *)self navigationItemController];
          [(CNContactContentUnitaryViewController *)self applyNavigationBarTintColorIfNeeded:v34];
          goto LABEL_43;
        }

        v30 = [(CNContactContentUnitaryViewController *)self editButtonItem];
        v92 = v30;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
      }

      goto LABEL_24;
    }

    [(CNContactContentUnitaryViewController *)self setCancelKeyboardShortcutEnabled:0];
    v18 = [v8 backBarButtonItem];

    if (v18)
    {
      v19 = [v8 backBarButtonItem];
      v94 = v19;
      v20 = MEMORY[0x1E695DEC8];
      v21 = &v94;
    }

    else
    {
      if (!v11 || ![(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle])
      {
        v48 = [(CNContactContentUnitaryViewController *)self preEditLeftBarButtonItems];

        if (v48)
        {
          v17 = [(CNContactContentUnitaryViewController *)self preEditLeftBarButtonItems];
          goto LABEL_16;
        }

        if (v11 || ![(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle])
        {
          v17 = 0;
          goto LABEL_16;
        }

        v19 = [v8 leftBarButtonItems];
        v22 = [v19 _cn_filter:&__block_literal_global_475];
LABEL_15:
        v17 = v22;

LABEL_16:
        [(CNContactContentUnitaryViewController *)self setPreEditLeftBarButtonItems:0];
        goto LABEL_17;
      }

      v19 = [(CNContactContentUnitaryViewController *)self platterBackBarButtonItem];
      v93 = v19;
      v20 = MEMORY[0x1E695DEC8];
      v21 = &v93;
    }

    v22 = [v20 arrayWithObjects:v21 count:1];
    goto LABEL_15;
  }

  if ([(CNContactContentUnitaryViewController *)self mode]== 5)
  {
    v35 = [MEMORY[0x1E69966E8] currentEnvironment];
    v36 = [v35 featureFlags];
    v37 = [v36 isFeatureEnabled:29];

    if (v37)
    {
      v38 = objc_alloc(MEMORY[0x1E69DC708]);
      v39 = CNContactsUIBundle();
      v40 = [v39 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
      v34 = [v38 initWithTitle:v40 style:2 target:self action:sel_updateContact_];
    }

    else
    {
      v49 = [(CNContactContentUnitaryViewController *)v7 editButtonItem];
      [v49 setStyle:2];

      v50 = [(CNContactContentUnitaryViewController *)v7 editButtonItem];
      [v50 setTarget:self];

      v51 = [(CNContactContentUnitaryViewController *)v7 editButtonItem];
      [v51 setAction:sel_updateContact_];

      v52 = CNContactsUIBundle();
      v53 = [v52 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
      v54 = [(CNContactContentUnitaryViewController *)v7 editButtonItem];
      [v54 setTitle:v53];

      v34 = [(CNContactContentUnitaryViewController *)v7 editButtonItem];
    }

    v91 = v34;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
    v55 = [(CNContactContentUnitaryViewController *)self cancelButtonItem];
    v90 = v55;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];

    [(CNContactContentUnitaryViewController *)self setCancelKeyboardShortcutEnabled:1];
    [(CNContactContentUnitaryViewController *)self setEditKeyboardShortcutEnabled:1];
    goto LABEL_43;
  }

  v41 = [v8 rightBarButtonItems];
  v42 = [v41 firstObject];
  v43 = [(CNContactContentUnitaryViewController *)v7 editButtonItem];

  if (v42 == v43)
  {
    v28 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v28 = 0;
  }

  [(CNContactContentUnitaryViewController *)self setCancelKeyboardShortcutEnabled:0];
  [(CNContactContentUnitaryViewController *)self setEditKeyboardShortcutEnabled:0];
  v44 = [v8 backBarButtonItem];

  if (v44)
  {
    v34 = [v8 backBarButtonItem];
    v89 = v34;
    v45 = MEMORY[0x1E695DEC8];
    v46 = &v89;
LABEL_37:
    v47 = [v45 arrayWithObjects:v46 count:1];
LABEL_38:
    v17 = v47;
LABEL_43:

    goto LABEL_44;
  }

  v85 = [(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle];
  if (v11)
  {
    if (v85)
    {
      v34 = [(CNContactContentUnitaryViewController *)self platterBackBarButtonItem];
      v88 = v34;
      v45 = MEMORY[0x1E695DEC8];
      v46 = &v88;
      goto LABEL_37;
    }
  }

  else if (v85)
  {
    v34 = [v8 leftBarButtonItems];
    v47 = [v34 _cn_filter:&__block_literal_global_489];
    goto LABEL_38;
  }

  v17 = 0;
LABEL_44:
  v86 = v7;
  if ([(UIViewController *)self ab_isInSheet])
  {
    v56 = [v8 rightBarButtonItems];
    v57 = [v8 leftBarButtonItems];
    v58 = [(CNContactContentUnitaryViewController *)self extraRightBarButtonItems];

    if (!v58)
    {
      if ([v56 count])
      {
        v59 = self;
        v60 = v56;
      }

      else
      {
        v60 = MEMORY[0x1E695E0F0];
        v59 = self;
      }

      [(CNContactContentUnitaryViewController *)v59 setExtraRightBarButtonItems:v60, v7, v88, v89];
    }

    v61 = [(CNContactContentUnitaryViewController *)self extraRightBarButtonItems];
    if ([v61 count])
    {
      v62 = [v28 count];

      if (v62)
      {
        v7 = v86;
        goto LABEL_55;
      }

      [(CNContactContentUnitaryViewController *)self extraRightBarButtonItems];
      v28 = v61 = v28;
      v7 = v86;
    }

LABEL_55:
    v63 = [(CNContactContentUnitaryViewController *)self extraLeftBarButtonItems];

    if (!v63)
    {
      if ([v57 count])
      {
        v64 = self;
        v65 = v57;
      }

      else
      {
        v65 = MEMORY[0x1E695E0F0];
        v64 = self;
      }

      [(CNContactContentUnitaryViewController *)v64 setExtraLeftBarButtonItems:v65];
    }

    v66 = [(CNContactContentUnitaryViewController *)self extraLeftBarButtonItems];
    if ([v66 count])
    {
      v67 = [v17 count];

      if (v67)
      {
        v7 = v86;
LABEL_65:

        goto LABEL_66;
      }

      [(CNContactContentUnitaryViewController *)self extraLeftBarButtonItems];
      v17 = v66 = v17;
      v7 = v86;
    }

    goto LABEL_65;
  }

LABEL_66:
  if (v17)
  {
    [v8 setLeftBarButtonItems:v17 animated:v5];
  }

  v68 = *MEMORY[0x1E6996530];
  v69 = [v8 leftBarButtonItems];
  v70 = (*(v68 + 16))(v68, v69);

  if ((v70 & 1) == 0)
  {
    v69 = [v8 leftBarButtonItems];
    [(CNContactContentUnitaryViewController *)self applyPlatterStyleToBarButtonItemsIfNeeded:v69];
  }

  if (v28)
  {
    [v8 setRightBarButtonItems:v28 animated:v5];
  }

  v71 = [v8 rightBarButtonItems];
  v72 = (*(v68 + 16))(v68, v71);

  if ((v72 & 1) == 0)
  {
    v73 = [v8 rightBarButtonItems];
    [(CNContactContentUnitaryViewController *)self applyPlatterStyleToBarButtonItemsIfNeeded:v73];
  }

  v74 = [(CNContactContentUnitaryViewController *)self delegate];
  v75 = objc_opt_respondsToSelector();

  if (v28 && (v75 & 1) != 0)
  {
    v76 = [(CNContactContentUnitaryViewController *)self delegate];
    v74 = [(CNContactContentUnitaryViewController *)self isEditing];
    v69 = [(CNContactContentUnitaryViewController *)self doneButtonItem];
    v77 = [v69 isEnabled];
    v78 = [(CNContactContentUnitaryViewController *)self doneButtonItem];
    v79 = [v78 title];
    [v76 updateEditing:v74 doneButtonEnabled:v77 doneButtonText:v79];

    v7 = v87;
  }

  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    v80 = [(CNContactContentUnitaryViewController *)self layoutPositionallyAfterNavBar];
    if (v80)
    {
      v81 = 0;
      v82 = 1;
    }

    else
    {
      v83 = [v8 title];
      if (v83)
      {
        v74 = v83;
        v81 = 0;
        v82 = 1;
      }

      else
      {
        v69 = [v8 titleView];
        v74 = 0;
        if (v69)
        {
          v81 = 1;
          v82 = 1;
        }

        else
        {
          v82 = [v8 _backgroundHidden] ^ 1;
          v81 = 1;
        }
      }
    }

    v84 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
    [v84 setShouldShowBelowNavigationTitle:v82];

    if (v81)
    {
    }

    v7 = v87;
    if (!v80)
    {
    }
  }
}

BOOL __91__CNContactContentUnitaryViewController_updateEditNavigationItemsAnimated_updateTintColor___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

BOOL __91__CNContactContentUnitaryViewController_updateEditNavigationItemsAnimated_updateTintColor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

BOOL __91__CNContactContentUnitaryViewController_updateEditNavigationItemsAnimated_updateTintColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)setSharedNavigationBar:(id)a3
{
  v4 = a3;
  v5 = [(CNContactViewSharedNavigationBar *)v4 cancelButton];
  [v5 setTarget:self];

  v6 = [(CNContactViewSharedNavigationBar *)v4 cancelButton];
  [v6 setAction:sel_editCancel_];

  v7 = [(CNContactViewSharedNavigationBar *)v4 doneButton];
  [v7 setTarget:self];

  v8 = [(CNContactViewSharedNavigationBar *)v4 doneButton];
  [v8 setAction:sel_toggleEditing_];

  v9 = [(CNContactViewSharedNavigationBar *)v4 editButton];
  [v9 setTarget:self];

  v10 = [(CNContactViewSharedNavigationBar *)v4 editButton];
  [v10 setAction:sel_toggleEditing_];

  sharedNavigationBar = self->_sharedNavigationBar;
  self->_sharedNavigationBar = v4;
}

- (id)sharedNavigationBar
{
  sharedNavigationBar = self->_sharedNavigationBar;
  if (!sharedNavigationBar)
  {
    v4 = objc_alloc_init(CNContactViewSharedNavigationBar);
    v5 = self->_sharedNavigationBar;
    self->_sharedNavigationBar = v4;

    v6 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar cancelButton];
    [v6 setTarget:self];

    v7 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar cancelButton];
    [v7 setAction:sel_editCancel_];

    v8 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar doneButton];
    [v8 setTarget:self];

    v9 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar doneButton];
    [v9 setAction:sel_toggleEditing_];

    v10 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar editButton];
    [v10 setTarget:self];

    v11 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar editButton];
    [v11 setAction:sel_toggleEditing_];

    v12 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar cancelButton];
    [v12 setTarget:self];

    v13 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar cancelButton];
    [v13 setAction:sel_editCancel_];

    sharedNavigationBar = self->_sharedNavigationBar;
  }

  return sharedNavigationBar;
}

- (id)navigationItemController
{
  v2 = self;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    while (1)
    {
      v5 = [(CNContactContentUnitaryViewController *)v4 parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      v7 = [(CNContactContentUnitaryViewController *)v4 parentViewController];

      v4 = v7;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v4 = v3;
  }

  return v4;
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  if (a3 == 4)
  {
    v5 = [(CNContactContentUnitaryViewController *)self contactView];
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
  if (!-[CNContactContentUnitaryViewController allowsAddingToAddressBook](self, "allowsAddingToAddressBook") && (!-[CNContactContentUnitaryViewController allowsEditing](self, "allowsEditing") || ![v6 hasBeenPersisted]))
  {
    goto LABEL_9;
  }

  if (a4 > 5 || (v7 = 1 << a4, v8 = v6, (v7 & 0x32) == 0))
  {
    v8 = 0;
  }

  v9 = [(CNContactContentUnitaryViewController *)self contactViewCache];
  v10 = [v9 policyForContact:v8];

  if (!v10)
  {
LABEL_9:
    v10 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
  }

  return v10;
}

- (id)indexPathOfPropertyItem:(id)a3 inGroup:(id)a4 editing:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = [(CNContactContentUnitaryViewController *)self editingContactView];
    v11 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:v9 inTableView:v10];
    [v9 editingItems];
  }

  else
  {
    v10 = [(CNContactContentUnitaryViewController *)self displayContactView];
    v11 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:v9 inTableView:v10];
    [v9 displayItems];
  }
  v12 = ;
  v13 = [v12 indexOfObject:v8];
  v14 = 0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:v11];
  }

  return v14;
}

- (id)indexPathOfPropertyItem:(id)a3 editing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 group];
  v8 = [(CNContactContentUnitaryViewController *)self indexPathOfPropertyItem:v6 inGroup:v7 editing:v4];

  return v8;
}

- (void)adjustPreferredContentSize
{
  [(CNContactContentUnitaryViewController *)self requiredSizeForVisibleTableView];
  v4 = v3;
  v6 = v5;
  [(CNContactContentUnitaryViewController *)self preferredContentSize];
  if (v4 != v8 || v6 != v7)
  {
    [(CNContactContentUnitaryViewController *)self setPreferredContentSize:v4, v6];
    v10 = [(CNContactContentUnitaryViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(CNContactContentUnitaryViewController *)self delegate];
      [(CNContactContentUnitaryViewController *)self preferredContentSize];
      [v12 didChangePreferredContentSize:?];
    }
  }
}

- (void)reloadCardGroupsForFavoritesUpdateInTableView:(id)a3
{
  v21[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNContactContentUnitaryViewController *)self isViewLoaded]&& ![(CNContactContentUnitaryViewController *)self needsReload])
  {
    v5 = [(CNContactContentUnitaryViewController *)self cardGroupForProperty:*MEMORY[0x1E695C208]];
    v6 = [(CNContactContentUnitaryViewController *)self cardGroupForProperty:*MEMORY[0x1E695C330]];
    v21[0] = v5;
    v21[1] = v6;
    v7 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    v21[2] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];

    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:*(*(&v16 + 1) + 8 * v14) inTableView:v4, v16];
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v9 addIndex:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    [(CNContactContentUnitaryViewController *)self reloadSections:v9 forTableView:v4];
  }
}

- (void)reloadSections:(id)a3 forTableView:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 beginUpdates];
  [v6 reloadSections:v7 withRowAnimation:0];

  [v6 endUpdates];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    [(CNContactContentUnitaryViewController *)self updateCollapsedHeaderToMatchScrollViewState:v6 scrollDirection:2 animated:0];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self updateHeaderHeightToMatchScrollViewState:v6 scrollDirection:2 animated:0];
  }

  [(CNContactContentUnitaryViewController *)self adjustPreferredContentSize];
}

- (void)reloadCardGroup:(id)a3 forTableView:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(CNContactContentUnitaryViewController *)self isViewLoaded])
  {
    if (![(CNContactContentUnitaryViewController *)self needsReload])
    {
      v7 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:v9 inTableView:v6];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:v7];
        [(CNContactContentUnitaryViewController *)self reloadSections:v8 forTableView:v6];
      }
    }
  }
}

- (void)removeActionWithTarget:(id)a3 selector:(SEL)a4 inGroup:(id)a5
{
  v8 = a3;
  v9 = a5;
  [v9 removeActionWithTarget:v8 selector:a4];
  v10 = [(CNContactContentUnitaryViewController *)self customActions];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __81__CNContactContentUnitaryViewController_removeActionWithTarget_selector_inGroup___block_invoke;
  v17 = &unk_1E74E6BB8;
  v18 = v8;
  v19 = v9;
  v20 = self;
  v21 = a4;
  v11 = v9;
  v12 = v8;
  v13 = [v10 _cn_filter:&v14];
  [(CNContactContentUnitaryViewController *)self setCustomActions:v13, v14, v15, v16, v17];

  [(CNContactContentUnitaryViewController *)self setNeedsReload];
  [(CNContactContentUnitaryViewController *)self _notifyObservers];
}

- (void)addActionWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 menuProvider:(id)a6 inGroup:(id)a7 destructive:(BOOL)a8
{
  v8 = a8;
  v40 = *MEMORY[0x1E69E9840];
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
    [(CNContactContentUnitaryViewController *)self contact];
    v23 = v22 = v8;
    v24 = [v23 identifier];
    v37 = v22;
    v25 = [(CNCustomCardAction *)v21 initWithTitle:v14 targetActionWrapper:v18 contactIdentifier:v24 placement:v20 isDestructive:v22 menuProvider:v15];

    v26 = [(CNContactContentUnitaryViewController *)self customActions];
    v27 = [v26 arrayByAddingObject:v25];
    [(CNContactContentUnitaryViewController *)self setCustomActions:v27];

    v28 = [(CNContactContentUnitaryViewController *)self customActionPlacementFromPlacement:v20];
    v29 = [(CNContactContentUnitaryViewController *)self customActionCardGroupsByPlacement];
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
    v31 = [v29 objectForKey:v30];

    if (v31)
    {
      [v31 addObject:v16];
    }

    else
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [v31 addObject:v16];
      v34 = [(CNContactContentUnitaryViewController *)self customActionCardGroupsByPlacement];
      v35 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
      [v34 setObject:v31 forKeyedSubscript:v35];
    }

    [(CNContactContentUnitaryViewController *)self _notifyObservers];

    v8 = v37;
    if (v15)
    {
LABEL_10:
      v36 = [v16 addActionWithTitle:v14 menuProvider:v15 destructive:v8];
      goto LABEL_11;
    }
  }

  else
  {
    v32 = CNUILogContactCard();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v14;
      _os_log_impl(&dword_199A75000, v32, OS_LOG_TYPE_INFO, "Found undefined placement for action with title %@", buf, 0xCu);
    }

    if (v15)
    {
      goto LABEL_10;
    }
  }

  v33 = [v16 addActionWithTitle:v14 target:v18 selector:sel_performActionWithSender_ destructive:v8];
LABEL_11:
  [(CNContactContentUnitaryViewController *)self setNeedsReload];
}

- (void)addCardGroup:(id)a3 afterGroup:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CNContactContentUnitaryViewController *)self groupsAfterGroup];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(CNContactContentUnitaryViewController *)self groupsAfterGroup];
    v10 = [v9 objectForKeyedSubscript:v6];
    [v10 addObject:v11];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithObject:v11];
    v10 = [(CNContactContentUnitaryViewController *)self groupsAfterGroup];
    [v10 setObject:v9 forKeyedSubscript:v6];
  }
}

- (int64_t)sectionOfGroup:(id)a3 inTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNContactContentUnitaryViewController *)self _currentGroupsForTableView:v7];
  v9 = v8;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v11 = [v8 indexOfObject:v6];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(CNContactContentUnitaryViewController *)self tableViewSectionIndexFromGroupIndex:v11 forTableView:v7];
    }
  }

  return v10;
}

- (id)cardGroupForProperty:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self propertyGroups];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)reloadDataPreservingChanges:(BOOL)a3
{
  v3 = a3;
  v62 = *MEMORY[0x1E69E9840];
  if ([(CNContactContentUnitaryViewController *)self isInlineContactCard]|| [(CNContactContentUnitaryViewController *)self isViewLoaded]&& (![(CNContactContentUnitaryViewController *)self isOutOfProcess]|| [(CNContactContentUnitaryViewController *)self outOfProcessSetupComplete]))
  {
    self->_needsReload = 0;
    v5 = [(CNContactContentUnitaryViewController *)self contactStore];

    if (!v5)
    {
      v6 = [(CNContactContentUnitaryViewController *)self originalContacts];
      v7 = [v6 _cn_filter:&__block_literal_global_451];

      v8 = [v7 count];
      v9 = [MEMORY[0x1E69966E8] currentEnvironment];
      v10 = [v9 featureFlags];
      v11 = [v10 isFeatureEnabled:19];

      v12 = 7;
      if (!v8)
      {
        v12 = 1;
      }

      if (v11)
      {
        v13 = v12 | 0x20;
      }

      else
      {
        v13 = v12;
      }

      v14 = [(CNContactContentUnitaryViewController *)self managedConfiguration];

      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x1E695CE18]);
        v16 = [(CNContactContentUnitaryViewController *)self environment];
        v17 = [v16 cnEnvironment];
        v18 = [(CNContactContentUnitaryViewController *)self managedConfiguration];
        v19 = [v15 initWithEnvironment:v17 options:v13 managedConfiguration:v18];
        [(CNContactContentUnitaryViewController *)self setContactStore:v19];
      }

      else
      {
        v16 = [MEMORY[0x1E695CE18] storeWithOptions:v13];
        [(CNContactContentUnitaryViewController *)self setContactStore:v16];
      }
    }

    if (![(CNContactContentUnitaryViewController *)self mode])
    {
      v20 = [(CNContactContentUnitaryViewController *)self parentViewController];
      objc_getClass("ABNewPersonViewController");
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(CNContactContentUnitaryViewController *)self setMode:3];
      }
    }

    if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] != 3)
    {
      v22 = CNUILogContactCard();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_199A75000, v22, OS_LOG_TYPE_ERROR, "CNContactContentViewController does not have authorization to access contacts.", buf, 2u);
      }
    }

    v23 = [(CNContactContentUnitaryViewController *)self shadowCopyOfReadonlyContact];

    if (!v23)
    {
      v24 = [(CNContactContentUnitaryViewController *)self contact];
      v25 = [(CNContactContentUnitaryViewController *)self _policyForContact:v24 mode:[(CNContactContentUnitaryViewController *)self mode]];
      [(CNContactContentUnitaryViewController *)self setPolicy:v25];
    }

    v26 = [(CNContactContentUnitaryViewController *)self contact];
    v27 = [v26 isUnified];

    if (v27)
    {
      v28 = [MEMORY[0x1E695DF90] dictionary];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v29 = [(CNContactContentUnitaryViewController *)self contact];
      v30 = [v29 linkedContacts];

      v31 = [v30 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v57;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v57 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v56 + 1) + 8 * i);
            v36 = [(CNContactContentUnitaryViewController *)self _policyForContact:v35 mode:[(CNContactContentUnitaryViewController *)self mode]];
            if (v36)
            {
              v37 = [v35 identifier];
              [v28 setObject:v36 forKey:v37];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v32);
      }

      v38 = [v28 copy];
      [(CNContactContentUnitaryViewController *)self setLinkedPoliciesByContactIdentifier:v38];
    }

    v39 = [(CNContactContentUnitaryViewController *)self iMessageIDSLookupToken];
    [v39 cancel];

    v40 = [(CNContactContentUnitaryViewController *)self faceTimeIDSLookupToken];
    [v40 cancel];

    v41 = +[CNCapabilitiesManager defaultCapabilitiesManager];
    [v41 resetCache];

    if (!self->_propertyGroups)
    {
      v42 = [(CNContactContentUnitaryViewController *)self _loadPropertyGroups];
      propertyGroups = self->_propertyGroups;
      self->_propertyGroups = v42;
    }

    [(CNContactContentUnitaryViewController *)self _reloadStaticIdentityGroup];
    [(CNContactContentUnitaryViewController *)self _reloadGeminiGroupPreservingChanges:v3];
    [(CNContactContentUnitaryViewController *)self _reloadLinkedCardsGroup];
    [(CNContactContentUnitaryViewController *)self _reloadGroupMembershipGroup];
    [(CNContactContentUnitaryViewController *)self _reloadPropertyGroupsPreservingChanges:v3];
    [(CNContactContentUnitaryViewController *)self _reloadMedicalIDGroup];
    [(CNContactContentUnitaryViewController *)self _reloadAlertGroups];
    [(CNContactContentUnitaryViewController *)self _reloadGameCenterGroup];
    [(CNContactContentUnitaryViewController *)self _reloadNamePickingGroup];
    [(CNContactContentUnitaryViewController *)self _reloadSharedProfileGroup];
    [(CNContactContentUnitaryViewController *)self _reloadMeCardSharedProfileGroup];
    [(CNContactContentUnitaryViewController *)self _reloadContainerContextPreservingChanges:v3];
    [(CNContactContentUnitaryViewController *)self setupActionsPreservingChanges:v3];
    v44 = [MEMORY[0x1E695DF90] dictionary];
    [(CNContactContentUnitaryViewController *)self setGroupsAfterGroup:v44];

    v45 = [(CNContactContentUnitaryViewController *)self _loadDisplayGroups];
    [(CNContactContentUnitaryViewController *)self setDisplayGroups:v45];

    v46 = [(CNContactContentUnitaryViewController *)self _loadEditingGroupsPreservingChanges:v3];
    [(CNContactContentUnitaryViewController *)self setEditingGroups:v46];

    if (!v3)
    {
      v47 = [MEMORY[0x1E695DEC8] array];
      [(CNContactContentUnitaryViewController *)self setDeletedEditingGroups:v47];
    }

    [(CNContactContentUnitaryViewController *)self _setNeedsUpdateCachedLabelWidths];
    [(CNContactContentUnitaryViewController *)self _updateAvailableTransports];
    v48 = [(CNContactContentUnitaryViewController *)self contactView];
    [v48 reloadData];

    v49 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [v49 reloadDataPreservingChanges:v3];

    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      v50 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [v50 reloadDataPreservingChanges:v3];
    }

    if (([MEMORY[0x1E695CD58] quickActionsEnabled] & 1) == 0 && !-[CNContactContentUnitaryViewController isInlineContactCard](self, "isInlineContactCard"))
    {
      [(CNContactContentUnitaryViewController *)self _reloadFaceTimeGroup];
      [(CNContactContentUnitaryViewController *)self _reloadDefaultAppGroup];
    }

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __69__CNContactContentUnitaryViewController_reloadDataPreservingChanges___block_invoke_455;
    v55[3] = &unk_1E74E6A88;
    v55[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v55];
    [(CNContactContentUnitaryViewController *)self _updateUserActivity];
    [(CNContactContentUnitaryViewController *)self adjustPreferredContentSize];
    v51 = [(CNContactContentUnitaryViewController *)self view];
    v52 = [(CNContactContentUnitaryViewController *)self contact];
    [v51 provideOnscreenContactToAppItents:v52];

    if ([(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard])
    {
      v53 = [(CNContactContentUnitaryViewController *)self contact];
      v54 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      [v54 setContact:v53];
    }
  }
}

uint64_t __69__CNContactContentUnitaryViewController_reloadDataPreservingChanges___block_invoke_455(uint64_t a1)
{
  [*(a1 + 32) _addFaceTimeGroupAnimated:0];
  v2 = *(a1 + 32);

  return [v2 _addDefaultAppGroupAnimated:0];
}

- (void)_debouncedReloadDataPreservingChanges:(BOOL)a3
{
  [(NSTimer *)self->_reloadDataPreservingChangesTimer invalidate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__CNContactContentUnitaryViewController__debouncedReloadDataPreservingChanges___block_invoke;
  v7[3] = &unk_1E74E6B70;
  v7[4] = self;
  v8 = a3;
  v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v7 block:0.2];
  reloadDataPreservingChangesTimer = self->_reloadDataPreservingChangesTimer;
  self->_reloadDataPreservingChangesTimer = v5;
}

void __79__CNContactContentUnitaryViewController__debouncedReloadDataPreservingChanges___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CNContactContentUnitaryViewController__debouncedReloadDataPreservingChanges___block_invoke_2;
  block[3] = &unk_1E74E6B48;
  objc_copyWeak(&v3, &location);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __79__CNContactContentUnitaryViewController__debouncedReloadDataPreservingChanges___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained reloadDataPreservingChanges:*(a1 + 40)];
    v3 = v4[179];
    v4[179] = 0;

    WeakRetained = v4;
  }
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
        [(CNContactContentUnitaryViewController *)self removePersonHeaderViewControllerFromHierarchy];
      }

      objc_storeStrong(&self->_personHeaderViewController, a3);
      personHeaderViewController = [(CNContactContentUnitaryViewController *)self isViewLoaded];
      v5 = v8;
      if (personHeaderViewController)
      {
        v7 = [(CNContactContentUnitaryViewController *)self contactView];
        [v7 reloadData];

        v5 = v8;
      }
    }
  }

  MEMORY[0x1EEE66BB8](personHeaderViewController, v5);
}

- (id)personHeaderView
{
  v2 = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
  v3 = [v2 view];
  v4 = [v3 subviews];
  v5 = [v4 firstObject];

  return v5;
}

- (void)setPersonHeaderView:(id)a3
{
  firstValue = a3;
  if (firstValue)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v5 = [v4 view];
    [v5 addSubview:firstValue];

    v6 = [MEMORY[0x1E695DF70] array];
    v7 = _NSDictionaryOfVariableBindings(&cfstr_Personheadervi.isa, firstValue, 0);
    [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[personHeaderView]|" options:0 metrics:0 views:v7];
    [v6 addObjectsFromArray:v8];

    v9 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[personHeaderView]|" options:0 metrics:0 views:v7];
    [v6 addObjectsFromArray:v9];

    [MEMORY[0x1E696ACD8] activateConstraints:v6];
    [(CNContactContentUnitaryViewController *)self setPersonHeaderViewController:v4];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self setPersonHeaderViewController:0];
  }
}

- (id)originalContacts
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
  v46[1] = *MEMORY[0x1E69E9840];
  self->_needsRefetch = 0;
  v3 = [(CNContactContentUnitaryViewController *)self contact];
  v4 = [(CNContactContentViewController *)self parentContainer];
  if (v3)
  {
    v5 = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    v6 = [(CNContactContentUnitaryViewController *)self contact];
    v7 = [v5 isMeContact:v6];

    v8 = CNUILogContactCard();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v3 identifier];
        *buf = 138543362;
        v38 = v10;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it the me card, identifier %{public}@", buf, 0xCu);
      }

      v11 = [(CNContactContentUnitaryViewController *)self contactStore];
      v12 = [objc_opt_class() descriptorForRequiredKeysForContact:v3];
      v46[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
      v36 = 0;
      v14 = [v11 _crossPlatformUnifiedMeContactWithKeysToFetch:v13 error:&v36];
      v15 = v36;
    }

    else
    {
      if (v9)
      {
        v16 = [v3 identifier];
        *buf = 138543362;
        v38 = v16;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it not the me card, identifier %{public}@", buf, 0xCu);
      }

      v11 = [(CNContactContentUnitaryViewController *)self contactStore];
      v12 = [v3 identifier];
      v13 = [objc_opt_class() descriptorForRequiredKeysForContact:v3];
      v45 = v13;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
      v35 = 0;
      v14 = [v11 unifiedContactWithIdentifier:v12 keysToFetch:v17 error:&v35];
      v15 = v35;
    }

    v18 = [(CNContactContentUnitaryViewController *)self contactViewCache];
    v19 = [v18 containerForContact:v14];

    if (v15 || !v14)
    {
      v31 = CNUILogContactCard();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = [v3 identifier];
        v33 = [(CNContactContentUnitaryViewController *)self contactStore];
        *buf = 138413058;
        v38 = v32;
        v39 = 2112;
        v40 = v15;
        v41 = 2112;
        v42 = v33;
        v43 = 2112;
        v44 = v3;
        _os_log_error_impl(&dword_199A75000, v31, OS_LOG_TYPE_ERROR, "Error refetching contact with identifier %@, %@, store %@, full contact %@", buf, 0x2Au);
      }
    }

    else
    {
      v20 = [MEMORY[0x1E695CD00] contactCardIgnorableContactChangeProperties];
      v21 = [v14 isEquivalent:v3 ignoringProperties:v20] ^ 1;

      v22 = [v19 identifier];
      v34 = v4;
      v23 = [v4 identifier];
      v24 = [v22 isEqual:v23];

      if ((v21 & 1) != 0 || !v24 || (-[CNContactContentUnitaryViewController cardGroupMembershipGroup](self, "cardGroupMembershipGroup"), v25 = objc_claimAutoreleasedReturnValue(), v25, v25) && (-[CNContactContentUnitaryViewController groupsAndContainersSaveManager](self, "groupsAndContainersSaveManager"), v26 = objc_claimAutoreleasedReturnValue(), [v26 parentGroupsForContact:v14], v27 = objc_claimAutoreleasedReturnValue(), v26, -[CNContactContentUnitaryViewController cardGroupMembershipGroup](self, "cardGroupMembershipGroup"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "parentGroups"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v27, "isEqualToArray:", v29), v29, v28, v27, (v30 & 1) == 0))
      {
        [(CNContactContentUnitaryViewController *)self setContact:v14 shouldScrollToTop:v21];
      }

      else
      {
        objc_storeStrong(&self->_contact, v14);
      }

      v4 = v34;
    }
  }
}

- (void)applicationLeftForeground:(id)a3
{
  if ([(CNContactContentUnitaryViewController *)self isEditing]&& [(CNContactContentUnitaryViewController *)self hasPendingChanges]&& [(CNContactContentUnitaryViewController *)self mode]== 3)
  {

    [(CNContactContentUnitaryViewController *)self saveNewContactDraft];
  }
}

- (void)saveNewContactDraft
{
  [(CNContactContentUnitaryViewController *)self saveModelChangesToContact];
  [CNUIDraftSupport saveNewContactDraft:self->_mutableContact];

  [(CNContactContentUnitaryViewController *)self _refetchContact];
}

- (void)favoritesDidChangeWithNotification:(id)a3
{
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    v4 = [(CNContactContentUnitaryViewController *)self contactView];
    [(CNContactContentUnitaryViewController *)self reloadCardGroupsForFavoritesUpdateInTableView:v4];
  }
}

- (void)contactStoreDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = [(CNUIContactsEnvironment *)self->_environment defaultSchedulerProvider];
  v6 = [v5 mainThreadScheduler];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__CNContactContentUnitaryViewController_contactStoreDidChangeWithNotification___block_invoke;
  v8[3] = &unk_1E74E77C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 performBlock:v8];
}

void __79__CNContactContentUnitaryViewController_contactStoreDidChangeWithNotification___block_invoke(uint64_t a1)
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
        if ((v13[1355] & 1) == 0)
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

    *(*(a1 + 32) + 1353) = 1;
  }

LABEL_14:
}

- (void)adjustInsetsForKeyboardOverlap:(double)a3
{
  [(CNContactContentUnitaryViewController *)self setKeyboardVerticalOverlap:a3];
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    [(CNContactContentUnitaryViewController *)self editingContactView];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self displayContactView];
  }
  v4 = ;
  [(CNContactContentUnitaryViewController *)self updateInsetsIfNeededForTableView:v4 isEditing:[(CNContactContentUnitaryViewController *)self isEditing]];
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

  v31 = [(CNContactContentUnitaryViewController *)self view];
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
  [(CNContactContentUnitaryViewController *)self adjustInsetsForKeyboardOverlap:CGRectGetHeight(v34)];
}

- (void)updateActionsControllerByType
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [MEMORY[0x1E6996BE8] allSupportedActionTypes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(CNContactContentUnitaryViewController *)self actionsViewController];
        v11 = [v10 retrieveModelsForType:v9];
        [v3 setObject:v11 forKeyedSubscript:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(CNContactContentUnitaryViewController *)self setActionsControllerByType:v3];
}

- (void)setContact:(id)a3 shouldScrollToTop:(BOOL)a4
{
  v4 = a4;
  v179[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  self->_needsRefetch = 0;
  if (self->_contact == v6)
  {
    goto LABEL_68;
  }

  v151 = v4;
  v8 = [(CNContact *)v6 identifier];
  v9 = [(CNContact *)self->_contact identifier];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    [(CNContactContentUnitaryViewController *)self setDidSetNewContact:1];
    addToGroupAction = self->_addToGroupAction;
    self->_addToGroupAction = 0;

    addAddressingGrammarAction = self->_addAddressingGrammarAction;
    self->_addAddressingGrammarAction = 0;

    [(CNContactContentUnitaryViewController *)self setEmergencyContactAction:0];
    [(CNContactContentUnitaryViewController *)self setBannerActionTypeForEffectiveState:0];
    [(CNContactContentUnitaryViewController *)self setTappedSharedProfileBannerAction:0];
    [(CNContactContentUnitaryViewController *)self setDismissedSharedProfileBannerAction:0];
    [(CNContactContentUnitaryViewController *)self setHasPerformedSharedProfileBannerAnimation:0];
    [(CNContactContentUnitaryViewController *)self setDidEditPronouns:0];
  }

  v13 = [(CNContactContentUnitaryViewController *)self environment];
  v14 = [v13 defaultSchedulerProvider];

  [v14 suspendBackgroundScheduler];
  v15 = [v14 afterCACommitScheduler];
  v168[0] = MEMORY[0x1E69E9820];
  v168[1] = 3221225472;
  v168[2] = __70__CNContactContentUnitaryViewController_setContact_shouldScrollToTop___block_invoke;
  v168[3] = &unk_1E74E6A88;
  v150 = v14;
  v169 = v150;
  [v15 performBlock:v168];

  v16 = [(CNContactContentUnitaryViewController *)self contactViewCache];
  [v16 resetCache];

  LODWORD(v15) = [(CNContactContentUnitaryViewController *)self isOutOfProcess];
  v17 = [objc_opt_class() descriptorForRequiredKeys];
  v18 = v17;
  if (v15)
  {
    v179[0] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:1];
    v20 = [(CNContactContentUnitaryViewController *)self _updateContact:v7 withMissingKeysFromRequiredKeys:v19];

    v7 = v20;
  }

  else
  {
    v178 = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v178 count:1];
    [v7 assertKeysAreAvailable:v19];
  }

  [(CNContactContentUnitaryViewController *)self resetEditAuthorizationState];
  v21 = [(CNContactContentViewController *)self parentContainer];
  if (!v21)
  {
LABEL_10:
    v22 = [(CNContactContentUnitaryViewController *)self contactViewCache];
    v26 = [v22 containerForContact:v7];
    [(CNContactContentViewController *)self setParentContainer:v26];

    goto LABEL_11;
  }

  v22 = v21;
  v23 = [(CNContactContentViewController *)self parentContainer];
  if (v23)
  {
    v24 = v23;
    v25 = [v7 hasBeenPersisted];

    if (!v25)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
  [(CNContactContentUnitaryViewController *)self setContainerContext:0];
  v27 = [(CNContactContentUnitaryViewController *)self contactViewCache];
  v28 = [v27 policyForContact:v7];

  v29 = [(CNContactContentViewController *)self parentContainer];
  v30 = [v29 type];

  v31 = [(CNContactContentViewController *)self parentContainer];
  v32 = [v31 type];

  v152 = v28;
  v156 = self;
  if ([v28 isReadonly] && v30 != 1003 && v32 != 1004)
  {
    v33 = [(CNContactContentUnitaryViewController *)self contactStore];
    v34 = [v7 identifier];
    [objc_opt_class() descriptorForRequiredKeysForContact:v7];
    v36 = v35 = v7;
    v177 = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v177 count:1];
    v167 = 0;
    v38 = [v33 unifiedContactWithIdentifier:v34 keysToFetch:v37 error:&v167];
    v39 = v167;

    if (v38)
    {
      v40 = v38;

      v41 = [(CNContactContentUnitaryViewController *)self contactViewCache];
      v42 = [v41 policyForContact:v40];

      if ([v42 isReadonly])
      {
        obj = v39;
        v43 = self;
        v44 = objc_alloc_init(MEMORY[0x1E695CF18]);
        v45 = [v40 availableKeyDescriptor];
        v176 = v45;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v176 count:1];
        v47 = [v44 copyWithPropertyKeys:v46];
        v48 = [v47 mutableCopy];
        [(CNContactContentUnitaryViewController *)v43 setShadowCopyOfReadonlyContact:v48];

        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        v49 = +[CNContactView nameProperties];
        v50 = [v49 countByEnumeratingWithState:&v163 objects:v175 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v164;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v164 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v163 + 1) + 8 * i);
              if ([v40 isKeyAvailable:v54])
              {
                v55 = [(CNContactContentUnitaryViewController *)v156 shadowCopyOfReadonlyContact];
                v56 = [v40 valueForKey:v54];
                [v55 setValue:v56 forKey:v54];
              }
            }

            v51 = [v49 countByEnumeratingWithState:&v163 objects:v175 count:16];
          }

          while (v51);
        }

        v57 = MEMORY[0x1E695DF70];
        self = v156;
        v58 = [(CNContactContentUnitaryViewController *)v156 shadowCopyOfReadonlyContact];
        v59 = [v57 arrayWithObject:v58];

        if ([v40 isUnified])
        {
          v60 = [v40 linkedContacts];
          [v59 addObjectsFromArray:v60];
        }

        else
        {
          [v59 addObject:v40];
        }

        v39 = obj;
        v7 = [MEMORY[0x1E695CD58] unifyContacts:v59];

        v61 = [(CNContactContentUnitaryViewController *)v156 contactViewCache];
        v62 = [v61 policyForDefaultContainer];
        [(CNContactContentUnitaryViewController *)v156 setPolicy:v62];

        v63 = [(CNContactContentUnitaryViewController *)v156 policy];

        if (!v63 || obj)
        {
          v64 = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
          [(CNContactContentUnitaryViewController *)v156 setPolicy:v64];
        }
      }

      else
      {
        v7 = v40;
      }
    }

    else
    {
      v42 = v28;
      v7 = v35;
    }

    v152 = v42;
  }

  objc_storeStrong(&self->_contact, v7);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v66 = v7;
  if ((isKindOfClass & 1) == 0)
  {
    v66 = [v7 mutableCopy];
  }

  objc_storeStrong(&self->_mutableContact, v66);
  if ((isKindOfClass & 1) == 0)
  {
  }

  v67 = CNUILogContactCard();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v68 = [v7 identifier];
    mutableContact = self->_mutableContact;
    *buf = 138543618;
    v172 = v68;
    v173 = 2050;
    v174 = mutableContact;
    _os_log_impl(&dword_199A75000, v67, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] setting contact with identifier %{public}@, mutable contact %{public}p", buf, 0x16u);
  }

  v149 = v7;

  v70 = [CNContactActionProvider alloc];
  v71 = self->_mutableContact;
  v72 = [(CNContactContentViewController *)self parentContainer];
  v73 = [(CNContactContentUnitaryViewController *)self contactViewCache];
  v74 = [v73 contactStore];
  v75 = [(CNContactActionProvider *)v70 initWithContact:v71 inContainer:v72 contactStore:v74];
  [(CNContactContentUnitaryViewController *)self setActionProvider:v75];

  v76 = [(CNContactContentUnitaryViewController *)self actionProvider];
  [v76 setActionDelegate:self];

  v77 = [(CNContactContentUnitaryViewController *)self customActions];
  v162[0] = MEMORY[0x1E69E9820];
  v162[1] = 3221225472;
  v162[2] = __70__CNContactContentUnitaryViewController_setContact_shouldScrollToTop___block_invoke_425;
  v162[3] = &unk_1E74E6AF8;
  v162[4] = self;
  v78 = [v77 _cn_filter:v162];
  [(CNContactContentUnitaryViewController *)self setCustomActions:v78];

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v79 = [(CNContactContentUnitaryViewController *)self customActionCardGroupsByPlacement];
  v80 = [v79 allKeys];

  obja = v80;
  v81 = [v80 countByEnumeratingWithState:&v158 objects:v170 count:16];
  if (v81)
  {
    v82 = v81;
    v155 = *v159;
    do
    {
      for (j = 0; j != v82; ++j)
      {
        if (*v159 != v155)
        {
          objc_enumerationMutation(obja);
        }

        v84 = *(*(&v158 + 1) + 8 * j);
        v85 = MEMORY[0x1E695DFA8];
        v86 = [(CNContactContentUnitaryViewController *)v156 customActionCardGroupsByPlacement];
        v87 = [v86 objectForKeyedSubscript:v84];
        v157[0] = MEMORY[0x1E69E9820];
        v157[1] = 3221225472;
        v157[2] = __70__CNContactContentUnitaryViewController_setContact_shouldScrollToTop___block_invoke_2;
        v157[3] = &unk_1E74E6B20;
        v157[4] = v156;
        v88 = [v87 _cn_filter:v157];
        v89 = [v85 setWithSet:v88];

        v90 = [v89 count];
        v91 = [(CNContactContentUnitaryViewController *)v156 customActionCardGroupsByPlacement];
        v92 = v91;
        if (v90)
        {
          [v91 setObject:v89 forKeyedSubscript:v84];
        }

        else
        {
          [v91 removeObjectForKey:v84];
        }
      }

      v82 = [obja countByEnumeratingWithState:&v158 objects:v170 count:16];
    }

    while (v82);
  }

  v93 = [MEMORY[0x1E695DF90] dictionary];
  [(CNContactContentUnitaryViewController *)v156 setGroupsAfterGroup:v93];

  v94 = [[CNCardGroup alloc] initWithContact:v156->_mutableContact];
  cardTopGroup = v156->_cardTopGroup;
  v156->_cardTopGroup = v94;

  v96 = [[CNCardGroup alloc] initWithContact:v156->_mutableContact];
  cardBottomGroup = v156->_cardBottomGroup;
  v156->_cardBottomGroup = v96;

  [(CNCardGroup *)v156->_cardBottomGroup setAddSpacerFromPreviousGroup:1];
  v98 = [[CNCardGroup alloc] initWithContact:v156->_mutableContact];
  cardActionsGroup = v156->_cardActionsGroup;
  v156->_cardActionsGroup = v98;

  v100 = [[CNCardGroup alloc] initWithContact:v156->_mutableContact];
  cardShareLocationGroup = v156->_cardShareLocationGroup;
  v156->_cardShareLocationGroup = v100;

  v102 = [[CNCardGroup alloc] initWithContact:v156->_mutableContact];
  cardBlockContactGroup = v156->_cardBlockContactGroup;
  v156->_cardBlockContactGroup = v102;

  [(CNCardGroup *)v156->_cardBlockContactGroup setAddSpacerFromPreviousGroup:1];
  v104 = [[CNCardGroup alloc] initWithContact:v156->_mutableContact];
  cardFooterGroup = v156->_cardFooterGroup;
  v156->_cardFooterGroup = v104;

  [(CNCardGroup *)v156->_cardFooterGroup setAddSpacerFromPreviousGroup:1];
  v106 = [[CNCardGroup alloc] initWithContact:v156->_mutableContact];
  cardEditingActionsGroup = v156->_cardEditingActionsGroup;
  v156->_cardEditingActionsGroup = v106;

  v108 = [[CNCardGroup alloc] initWithContact:v156->_mutableContact];
  cardEditingDeleteContactGroup = v156->_cardEditingDeleteContactGroup;
  v156->_cardEditingDeleteContactGroup = v108;

  propertyGroups = v156->_propertyGroups;
  v156->_propertyGroups = 0;

  v111 = [(CNContactContentUnitaryViewController *)v156 siriContextProvider];
  v112 = [v111 isEnabled];

  v113 = [CNSiriContactContextProvider alloc];
  v114 = [(CNContactContentUnitaryViewController *)v156 contactStore];
  v7 = v149;
  v115 = [(CNSiriContactContextProvider *)v113 initWithContact:v149 store:v114];
  [(CNContactContentUnitaryViewController *)v156 setSiriContextProvider:v115];

  if (v112)
  {
    v116 = [(CNContactContentUnitaryViewController *)v156 siriContextProvider];
    [v116 setEnabled:1];
  }

  linkedCardsAction = v156->_linkedCardsAction;
  v156->_linkedCardsAction = 0;

  addLinkedCardAction = v156->_addLinkedCardAction;
  v156->_addLinkedCardAction = 0;

  [(CNContactContentUnitaryViewController *)v156 setCardFaceTimeGroup:0];
  [(CNContactContentUnitaryViewController *)v156 setFaceTimeAction:0];
  [(CNContactContentUnitaryViewController *)v156 setCardDefaultAppGroup:0];
  [(CNContactContentUnitaryViewController *)v156 setSendMessageAction:0];
  [(CNContactContentUnitaryViewController *)v156 setBlockAction:0];
  [(CNContactContentUnitaryViewController *)v156 setBlockReportAction:0];
  [(CNContactContentUnitaryViewController *)v156 setAddFavoriteAction:0];
  [(CNContactContentUnitaryViewController *)v156 setCreateReminderAction:0];
  [(CNContactContentUnitaryViewController *)v156 setShareContactAction:0];
  [(CNContactContentUnitaryViewController *)v156 setIgnoreContactAction:0];
  [(CNContactContentUnitaryViewController *)v156 setCardMedicalIDGroup:0];
  [(CNContactContentUnitaryViewController *)v156 setMedicalIDAction:0];
  [(CNContactContentUnitaryViewController *)v156 setGameCenterGroup:0];
  [(CNContactContentUnitaryViewController *)v156 setCardGameCenterActionGroup:0];
  [(CNContactContentUnitaryViewController *)v156 setGameCenterAddFriendAction:0];
  v156->_gameCenterFriendStatus = 0;
  [(CNContactContentUnitaryViewController *)v156 setNamePickingGroup:0];
  [(CNContactContentUnitaryViewController *)v156 setCardSharedProfileGroup:0];
  [(CNContactContentUnitaryViewController *)v156 setMeCardSharedProfileGroup:0];
  [(CNContactContentUnitaryViewController *)v156 setCardEditingGeminiGroup:0];
  cardStaticIdentityGroup = v156->_cardStaticIdentityGroup;
  v156->_cardStaticIdentityGroup = 0;

  v156->_didLookUpStaticIdentity = 0;
  cachedStaticIdentity = v156->_cachedStaticIdentity;
  v156->_cachedStaticIdentity = 0;

  v156->_didFindStaticIdentity = 0;
  cachedVerifiedHandles = v156->_cachedVerifiedHandles;
  v156->_cachedVerifiedHandles = 0;

  mutableContactForHeaderView = v156->_mutableContactForHeaderView;
  v156->_mutableContactForHeaderView = 0;

  sharedProfileStateOracle = v156->_sharedProfileStateOracle;
  v156->_sharedProfileStateOracle = 0;

  if (![(CNContactContentUnitaryViewController *)v156 isOutOfProcess]|| [(CNContactContentUnitaryViewController *)v156 outOfProcessSetupComplete])
  {
    if (v156->_editingHeaderView)
    {
      v124 = [(CNContactContentUnitaryViewController *)v156 editingHeaderView];
      v125 = [(CNContactContentUnitaryViewController *)v156 mutableContactForHeaderView];
      [v124 updateWithNewContact:v125];
    }

    v126 = [(CNContactContentUnitaryViewController *)v156 shouldUseStaticHeader];
    v127 = [(CNContactContentUnitaryViewController *)v156 authorizationCheck];
    v128 = [v127 shouldPromptForPasscodeAuthorization];
    if (v126)
    {
      v129 = [(CNContactContentUnitaryViewController *)v156 staticDisplayHeaderView];
      [v129 setIsRestrictedContact:v128];

      v130 = MEMORY[0x1E695CE70];
      v131 = [(CNContactContentUnitaryViewController *)v156 mutableContactForHeaderView];
      v132 = [v130 isWhitelistedContact:v131];
      v133 = [(CNContactContentUnitaryViewController *)v156 staticDisplayHeaderView];
      [v133 setIsDowntimeContact:v132];

      v134 = [(CNContactContentUnitaryViewController *)v156 staticDisplayHeaderView];
      v135 = [(CNContactContentUnitaryViewController *)v156 mutableContactForHeaderView];
      [v134 updateWithNewContact:v135];

      [(CNContactContentUnitaryViewController *)v156 displayFloatingCollapsedHeaderView];
    }

    else
    {
      v136 = [(CNContactContentUnitaryViewController *)v156 displayHeaderView];
      [v136 setIsRestrictedContact:v128];

      v137 = MEMORY[0x1E695CE70];
      v138 = [(CNContactContentUnitaryViewController *)v156 mutableContactForHeaderView];
      v139 = [v137 isWhitelistedContact:v138];
      v140 = [(CNContactContentUnitaryViewController *)v156 displayHeaderView];
      [v140 setIsDowntimeContact:v139];

      [(CNContactContentUnitaryViewController *)v156 displayHeaderView];
    }
    v141 = ;
    v142 = [(CNContactContentUnitaryViewController *)v156 mutableContactForHeaderView];
    [v141 updateWithNewContact:v142];

    [(CNContactContentUnitaryViewController *)v156 updateEditNavigationItemsAnimated:0];
  }

  [(CNContactContentUnitaryViewController *)v156 setContactSupportsTTYCalls:0];
  v143 = [(CNContactContentUnitaryViewController *)v156 shareLocationController];
  [v143 setContact:v149];

  v144 = [(CNContactContentUnitaryViewController *)v156 actionsViewController];
  [v144 setContact:v149];

  if ([(CNContactContentUnitaryViewController *)v156 shouldUseStaticHeader])
  {
    v145 = [(CNContactContentUnitaryViewController *)v156 floatingActionsViewController];
    [v145 setContact:v149];
  }

  [(CNContactContentUnitaryViewController *)v156 reloadDataPreservingChanges:0];
  if ([(CNContactContentUnitaryViewController *)v156 isViewLoaded]&& v151)
  {
    v146 = [(CNContactContentUnitaryViewController *)v156 displayContactView];
    [(CNContactContentUnitaryViewController *)v156 scrollScrollViewAllTheWayUp:v146];
  }

  v147 = +[CNUIDataCollector sharedCollector];
  v148 = [(CNContactContentUnitaryViewController *)v156 contact];
  [v147 logContactShown:v148];

  [(CNContactContentUnitaryViewController *)v156 prepareContactDidAppearForPPT];
  [(CNContactContentUnitaryViewController *)v156 updateActionsControllerByType];

LABEL_68:
}

BOOL __70__CNContactContentUnitaryViewController_setContact_shouldScrollToTop___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 actions];
  v5 = [v4 copy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        objc_opt_class();
        v12 = v11;
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        if (v14 && ([v14 isValidForContact:{*(*(a1 + 32) + 1672), v19}] & 1) == 0)
        {
          v15 = [v14 title];
          [v3 removeActionWithTitle:v15];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [v3 actions];
  v17 = [v16 count] != 0;

  return v17;
}

- (void)setupContainerContextIfNeededForContact:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNContactContentUnitaryViewController *)self shouldAllowContainerPicking])
  {
    v5 = [(CNContactContentUnitaryViewController *)self containerContext];

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
              v14 = [(CNContactContentUnitaryViewController *)self contactViewCache];
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

      v17 = [(CNContactContentViewController *)self parentContainer];

      if (v17 && v6)
      {
        v18 = [(CNContactContentViewController *)self parentContainer];
        [v7 setObject:v18 forKeyedSubscript:v6];
      }

      v19 = [[CNUIContainerContext alloc] initWithContainers:v7];
      v20 = [(CNContactContentViewController *)self parentContainer];

      if (v20 && !v6)
      {
        v21 = [(CNContactContentViewController *)self parentContainer];
        [(CNUIContainerContext *)v19 addContainer:v21];
      }

      [(CNContactContentUnitaryViewController *)self setContainerContext:v19];
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
    v6 = [(CNContactContentViewController *)self parentContainer];
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
  v51 = a3;
  v4 = [(CNContactContentUnitaryViewController *)self contactView];
  [v4 applyCellAppearance:v51];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_40;
  }

  objc_opt_class();
  v5 = v51;
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
LABEL_21:

    v9 = v12;
    goto LABEL_22;
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

LABEL_20:
    v19 = [(CNContactContentUnitaryViewController *)self actionsDataSource];
    [v15 setActionsDataSource:v19];

    v20 = [(CNContactContentUnitaryViewController *)self contact];
    [v15 setContact:v20];

    v12 = [v4 valueTextAttributes];

    v9 = v15;
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v16 = v5;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v15 = v17;

    v18 = [(CNContactContentUnitaryViewController *)self defaultAppProvider];
    [v15 setDefaultAppProvider:v18];

    goto LABEL_20;
  }

LABEL_22:
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v21 = [v4 valueTextAttributes];

    v9 = v21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v22 = [(CNContactContentUnitaryViewController *)self view];
    v23 = [v22 tintColorOverride];
    v24 = 0;
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v5;
    if ([v34 supportsValueColorUsesLabelColor])
    {
      v35 = +[CNContactStyle currentStyle];
      v23 = [v35 textColor];
    }

    else
    {
      v23 = 0;
    }

    v36 = [(CNContactContentUnitaryViewController *)self highlightedProperties];
    if ([v36 count])
    {
      v37 = [(CNContactContentUnitaryViewController *)self highlightedProperties];
      v49 = [v34 propertyItem];
      v50 = v36;
      [v49 contactProperty];
      v39 = v38 = v34;
      [v38 setHighlightedProperty:{objc_msgSend(v37, "containsObject:", v39)}];

      v34 = v38;
      v36 = v50;
    }

    else
    {
      [v34 setHighlightedProperty:0];
    }

    if ([v34 isSuggested])
    {
      v40 = +[CNContactStyle currentStyle];
      v24 = [v40 suggestedLabelTextColor];

      v41 = +[CNContactStyle currentStyle];
      v42 = [v41 suggestedValueTextColor];
    }

    else
    {
      if ([v34 isHighlightedProperty] && -[CNContactContentUnitaryViewController highlightedPropertyImportant](self, "highlightedPropertyImportant"))
      {
        [v34 setImportant:{-[CNContactContentUnitaryViewController highlightedPropertyImportant](self, "highlightedPropertyImportant")}];
        v42 = [MEMORY[0x1E69DC888] redColor];
        v24 = 0;
        goto LABEL_60;
      }

      if ((-[CNContactContentUnitaryViewController isEditing](self, "isEditing") & 1) != 0 || ![v34 supportsTintColorValue])
      {
        v24 = 0;
LABEL_68:
        if ([v34 isHighlightedProperty])
        {
          if (([v34 isImportant] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              v43 = v34;
              if (objc_opt_isKindOfClass())
              {
                v44 = v43;
              }

              else
              {
                v44 = 0;
              }

              v45 = v44;

              [v45 setShouldShowBadge:1];
            }
          }
        }

        if ([v34 supportsCaseSensitiveFormat])
        {
          v46 = [v10 mutableCopy];
          v47 = [MEMORY[0x1E69DB878] cnui_bodyFontWithCaseSensitiveAttributes];
          [v46 setObject:v47 forKeyedSubscript:*MEMORY[0x1E69DB648]];

          v10 = v46;
        }

        if (!v24)
        {
LABEL_32:
          if (v23)
          {
            v25 = [v10 mutableCopy];
            [v25 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69DB650]];

            v10 = v25;
          }

          if (isKindOfClass)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v48 = [v9 mutableCopy];
        [v48 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69DB650]];
        v22 = v9;
        v9 = v48;
LABEL_31:

        goto LABEL_32;
      }

      v41 = [(CNContactContentUnitaryViewController *)self view];
      v42 = [v41 tintColorOverride];

      v24 = 0;
    }

    v23 = v41;
LABEL_60:

    v23 = v42;
    goto LABEL_68;
  }

  v24 = 0;
  if (isKindOfClass)
  {
    goto LABEL_36;
  }

LABEL_35:
  v26 = [v7 labelTextAttributes];
  v27 = [v26 isEqual:v9];

  if ((v27 & 1) == 0)
  {
LABEL_36:
    [v7 setLabelTextAttributes:v9];
  }

  v28 = [v7 valueTextAttributes];
  v29 = [v28 isEqual:v10];

  if ((v29 & 1) == 0)
  {
    [v7 setValueTextAttributes:v10];
  }

LABEL_40:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v30 = v51;
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    v33 = [v4 labelTextAttributes];
    [v32 setLabelTextAttributes:v33];
  }
}

- (void)setImportantMessage:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_importantMessage] & 1) == 0)
  {
    objc_storeStrong(&self->_importantMessage, a3);
    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self displayHeaderView];
    }
    v5 = ;
    [v5 setImportantMessage:v6];
  }
}

- (void)setMessage:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_message] & 1) == 0)
  {
    objc_storeStrong(&self->_message, a3);
    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self displayHeaderView];
    }
    v5 = ;
    [v5 setMessage:v6];
  }
}

- (void)setUpFloatingActionsViewController
{
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v3 = [(CNContactContentUnitaryViewController *)self createActionsController];
    floatingActionsViewController = self->_floatingActionsViewController;
    self->_floatingActionsViewController = v3;

    [(CNContactInlineActionsViewController *)self->_floatingActionsViewController setObjectViewControllerDelegate:self];
    [(CNContactInlineActionsViewController *)self->_floatingActionsViewController setDelegate:self];
    v5 = [(CNContactContentUnitaryViewController *)self contact];
    [(CNContactInlineActionsViewController *)self->_floatingActionsViewController setContact:v5];

    [(CNContactContentUnitaryViewController *)self addChildViewController:self->_floatingActionsViewController];
    [(CNContactInlineActionsViewController *)self->_floatingActionsViewController didMoveToParentViewController:self];
    floatingActionsWrapperView = self->_floatingActionsWrapperView;
    v7 = [(CNContactInlineActionsViewController *)self->_floatingActionsViewController view];
    [(CNContactActionsContainerView *)floatingActionsWrapperView addArrangedSubview:v7];
  }
}

- (void)rebuildActionsViewControllers
{
  [(CNContactInlineActionsViewController *)self->_actionsViewController willMoveToParentViewController:0];
  [(CNContactInlineActionsViewController *)self->_actionsViewController removeFromParentViewController];
  v3 = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
  [v3 removeFromSuperview];

  if (![(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    v4 = [(CNContactContentUnitaryViewController *)self createActionsController];
    actionsViewController = self->_actionsViewController;
    self->_actionsViewController = v4;

    [(CNContactInlineActionsViewController *)self->_actionsViewController setObjectViewControllerDelegate:self];
    [(CNContactInlineActionsViewController *)self->_actionsViewController setDelegate:self];
    v6 = [(CNContactContentUnitaryViewController *)self contact];
    [(CNContactInlineActionsViewController *)self->_actionsViewController setContact:v6];

    [(CNContactContentUnitaryViewController *)self addChildViewController:self->_actionsViewController];
    [(CNContactInlineActionsViewController *)self->_actionsViewController didMoveToParentViewController:self];
    actionsWrapperView = self->_actionsWrapperView;
    v8 = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
    [(CNContactActionsContainerView *)actionsWrapperView addArrangedSubview:v8];

    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      [(CNContactInlineActionsViewController *)self->_floatingActionsViewController willMoveToParentViewController:0];
      [(CNContactInlineActionsViewController *)self->_floatingActionsViewController removeFromParentViewController];
      v9 = [(CNContactInlineActionsViewController *)self->_floatingActionsViewController view];
      [v9 removeFromSuperview];

      if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
      {

        [(CNContactContentUnitaryViewController *)self setUpFloatingActionsViewController];
      }
    }
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v5 = [(CNContactContentUnitaryViewController *)self displayContactView];
  [v5 updateFontSizes];

  [(CNContactView *)self->_editingContactView updateFontSizes];
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v8 = [(CNContactContentUnitaryViewController *)self displayHeaderView];
    [v8 updateFontSizes];
LABEL_7:

    goto LABEL_8;
  }

  v6 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
  [v6 updateFontSizes];

  v7 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
  [v7 updateFontSizes];

  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
  }

  v9 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
  [v9 setActionsWrapperView:v8];

  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v10 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
  [v10 updateFontSizes];

  [(CNContactView *)self->_displayContactView setTableHeaderView:0];
  [(CNContactContentUnitaryViewController *)self rebuildActionsViewControllers];
  [(CNContactContentUnitaryViewController *)self viewDidLayoutSubviews];
  [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
  [(CNContactContentUnitaryViewController *)self setupViewHierarchyAndConstraints];
  v11 = [(CNContactContentUnitaryViewController *)self applyContactStyle];
}

- (id)cardActions
{
  v2 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
  v3 = [v2 actions];

  return v3;
}

- (void)setShowsInlineActions:(BOOL)a3
{
  if (self->_showsInlineActions != a3)
  {
    self->_showsInlineActions = a3;
    if (self->_actionsViewController)
    {
      [(CNContactContentUnitaryViewController *)self rebuildActionsViewControllers];
    }

    if (!a3)
    {

      [(CNContactContentUnitaryViewController *)self _notifyObservers];
    }
  }
}

- (void)setAllowsEditPhoto:(BOOL)a3 preservingChanges:(BOOL)a4
{
  if (self->_allowsEditPhoto != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_allowsEditPhoto = a3;
    v7 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
    [v7 setAllowsEditPhoto:v6 preservingChanges:v5];
  }
}

- (void)setAllowsDisplayModePickerActions:(BOOL)a3
{
  if (self->_allowsDisplayModePickerActions != a3)
  {
    v4 = a3;
    self->_allowsDisplayModePickerActions = a3;
    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self displayHeaderView];
    }
    v6 = ;
    [v6 setAllowsPickerActions:v4];

    [(CNContactContentUnitaryViewController *)self _reloadAlertGroups];
  }
}

- (void)setAlternateName:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_alternateName, a3);
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v5 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    [v5 setAlternateName:v7];

    [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self displayHeaderView];
  }
  v6 = ;
  [v6 setAlternateName:v7];
}

- (void)setShowContactBlockingFirst:(BOOL)a3
{
  if (self->_showContactBlockingFirst != a3)
  {
    self->_showContactBlockingFirst = a3;
    [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
  }
}

- (void)setIsMailVIP:(BOOL)a3
{
  v3 = a3;
  self->_isMailVIP = a3;
  v5 = [(CNContactContentUnitaryViewController *)self pendingContactCardPropertyViewConfiguration];
  v6 = [v5 isMailVIP];

  if (v6 != v3)
  {
    v7 = [(CNContactContentUnitaryViewController *)self pendingContactCardPropertyViewConfiguration];
    [v7 setIsMailVIP:v3];

    [(CNContactContentUnitaryViewController *)self _lazyUpdateContactCardPropertyViewConfiguration];
  }

  v11 = [(CNContactContentUnitaryViewController *)self contactView];
  v8 = [(CNContactContentUnitaryViewController *)self cardGroupForProperty:*MEMORY[0x1E695C208]];
  v9 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:v8 inTableView:v11];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndex:v9];
    [v11 reloadSections:v10 withRowAnimation:100];
  }
}

- (void)setDisplayedProperties:(id)a3
{
  v5 = a3;
  if (self->_displayedProperties != v5)
  {
    v11 = v5;
    if ([(NSArray *)v5 count])
    {
      v6 = [(NSArray *)v11 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        [v8 handleFailureInMethod:a2 object:self file:@"CNContactContentUnitaryViewController.m" lineNumber:1435 description:{@"Properties should be strings, are you still using old AB properties?"}];
      }
    }

    if (v11)
    {
      v9 = [(NSArray *)v11 copy];
    }

    else
    {
      v9 = +[CNContactView allCardProperties];
    }

    displayedProperties = self->_displayedProperties;
    self->_displayedProperties = v9;

    [(CNContactContentUnitaryViewController *)self setNeedsReloadLazy];
    v5 = v11;
  }
}

- (id)createActionsController
{
  if ([(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    v3 = 0;
  }

  else
  {
    v4 = [CNContactInlineActionsViewController alloc];
    actionsDataSource = self->_actionsDataSource;
    v6 = [(CNContactContentUnitaryViewController *)self environment];
    v3 = [(CNContactInlineActionsViewController *)v4 initWithActionListDataSource:actionsDataSource environment:v6];

    [(CNContactInlineActionsViewController *)v3 setDisplaysTitles:1];
    [(CNContactInlineActionsViewController *)v3 setDisplaysUnavailableActionTypes:1];
    if ([(CNContactContentUnitaryViewController *)self showsInlineActions])
    {
      if ([(CNContactContentUnitaryViewController *)self isContactBlocked])
      {
        [MEMORY[0x1E6996BE8] allSupportedActionTypesForBlockedContact];
      }

      else
      {
        [MEMORY[0x1E6996BE8] allSupportedActionTypes];
      }
      v7 = ;
      [(CNContactInlineActionsViewController *)v3 setSupportedActionTypes:v7];
    }

    else
    {
      [(CNContactInlineActionsViewController *)v3 setSupportedActionTypes:MEMORY[0x1E695E0F0]];
    }

    v8 = [(CNContactInlineActionsViewController *)v3 view];
    LODWORD(v9) = 1148846080;
    [v8 setContentCompressionResistancePriority:0 forAxis:v9];
  }

  return v3;
}

- (BOOL)isHeaderViewPhotoProhibited
{
  v3 = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
  if ([v3 containsObject:*MEMORY[0x1E695C278]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
    v4 = [v5 containsObject:*MEMORY[0x1E695C400]];
  }

  return v4;
}

- (CNContactView)displayContactView
{
  if (!self->_displayContactView)
  {
    v3 = [CNContactView alloc];
    v4 = [objc_opt_class() tableViewStyle];
    v5 = [(CNContactContentUnitaryViewController *)self contact];
    v6 = [(CNContactView *)v3 initWithFrame:v4 style:v5 contact:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    displayContactView = self->_displayContactView;
    self->_displayContactView = v6;

    [(CNContactView *)self->_displayContactView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactView *)self->_displayContactView setDataSource:self];
    [(CNContactView *)self->_displayContactView setDelegate:self];
    [(CNContactView *)self->_displayContactView _setHeaderAndFooterViewsFloat:0];
    v8 = [(CNContactContentUnitaryViewController *)self environment];
    if ([v8 runningInContactsAppOniPad])
    {
    }

    else
    {
      v9 = [(CNContactContentUnitaryViewController *)self traitCollection];
      v10 = [v9 userInterfaceIdiom];

      if (v10 != 3)
      {
        goto LABEL_6;
      }
    }

    [(CNContactView *)self->_displayContactView setSectionHeaderHeight:0.0];
  }

LABEL_6:
  v11 = self->_displayContactView;

  return v11;
}

- (CNContactHeaderEditView)editingHeaderView
{
  editingHeaderView = self->_editingHeaderView;
  if (!editingHeaderView)
  {
    v4 = [(CNContactContentUnitaryViewController *)self isHeaderViewPhotoProhibited];
    v5 = [(CNContactContentUnitaryViewController *)self shouldDrawNavigationBar]|| [(CNContactContentUnitaryViewController *)self layoutPositionallyAfterNavBar];
    v6 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v7 = [CNContactHeaderEditView contactHeaderViewWithContact:v6 shouldAllowTakePhotoAction:1 showingNavBar:v5 monogramOnly:v4 isOutOfProcess:[(CNContactContentUnitaryViewController *)self isOutOfProcess] delegate:self];
    v8 = self->_editingHeaderView;
    self->_editingHeaderView = v7;

    v9 = [(CNContactContentUnitaryViewController *)self presentingDelegate];
    [(CNContactHeaderEditView *)self->_editingHeaderView setPresenterDelegate:v9];

    v10 = +[CNContactStyle currentStyle];
    v11 = [v10 contactHeaderBackgroundColor];
    [(CNContactHeaderEditView *)self->_editingHeaderView setBackgroundColor:v11];

    [(CNContactHeaderEditView *)self->_editingHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactHeaderEditView *)self->_editingHeaderView setAllowsEditPhoto:[(CNContactContentUnitaryViewController *)self allowsEditPhoto]& !v4];
    v12 = [(CNContactContentUnitaryViewController *)self applyContactStyle];
    editingHeaderView = self->_editingHeaderView;
  }

  return editingHeaderView;
}

- (UIView)editingFloatingCollapsedHeaderView
{
  editingFloatingCollapsedHeaderView = self->_editingFloatingCollapsedHeaderView;
  if (!editingFloatingCollapsedHeaderView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_editingFloatingCollapsedHeaderView;
    self->_editingFloatingCollapsedHeaderView = v4;

    [(UIView *)self->_editingFloatingCollapsedHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(CNContactContentUnitaryViewController *)self applyContactStyle];
    editingFloatingCollapsedHeaderView = self->_editingFloatingCollapsedHeaderView;
  }

  return editingFloatingCollapsedHeaderView;
}

- (CNContactHeaderCollapsedView)displayFloatingCollapsedHeaderView
{
  displayFloatingCollapsedHeaderView = self->_displayFloatingCollapsedHeaderView;
  if (!displayFloatingCollapsedHeaderView)
  {
    v4 = [(CNContactContentUnitaryViewController *)self isHeaderViewPhotoProhibited];
    v5 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v6 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v7 = [CNContactHeaderCollapsedView collapsedContactHeaderViewWithContact:v6 showingNavBar:[(CNContactContentUnitaryViewController *)self layoutPositionallyAfterNavBar] monogramOnly:v4 delegate:self];
    v8 = self->_displayFloatingCollapsedHeaderView;
    self->_displayFloatingCollapsedHeaderView = v7;

    if (v5)
    {
      [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setActionsWrapperView:0];
    }

    else
    {
      v9 = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
      [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setActionsWrapperView:v9];
    }

    [(CNContactHeaderView *)self->_displayFloatingCollapsedHeaderView setAlwaysShowsMonogram:1];
    v10 = [(CNContactContentUnitaryViewController *)self contactFormatter];
    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setContactFormatter:v10];

    v11 = [(CNContactContentUnitaryViewController *)self alternateName];
    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setAlternateName:v11];

    v12 = [(CNContactContentUnitaryViewController *)self presentingDelegate];
    [(CNContactHeaderView *)self->_displayFloatingCollapsedHeaderView setPresenterDelegate:v12];

    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setHidden:1];
    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView showLabelAndAvatar:0 animated:0];
    v13 = [MEMORY[0x1E69DC888] lightGrayColor];
    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setBackgroundColor:v13];

    v14 = [(CNContactContentUnitaryViewController *)self applyContactStyle];
    displayFloatingCollapsedHeaderView = self->_displayFloatingCollapsedHeaderView;
  }

  return displayFloatingCollapsedHeaderView;
}

- (CNContactHeaderDisplayView)displayHeaderView
{
  displayHeaderView = self->_displayHeaderView;
  if (!displayHeaderView)
  {
    v4 = [(CNContactContentUnitaryViewController *)self isHeaderViewPhotoProhibited];
    v5 = [(CNContactContentUnitaryViewController *)self mutableContact];
    v6 = [CNContactHeaderDisplayView contactHeaderViewWithContact:v5 showingNavBar:[(CNContactContentUnitaryViewController *)self layoutPositionallyAfterNavBar] monogramOnly:v4 delegate:self];
    v7 = self->_displayHeaderView;
    self->_displayHeaderView = v6;

    [(CNContactHeaderView *)self->_displayHeaderView setAlwaysShowsMonogram:1];
    v8 = [(CNContactContentUnitaryViewController *)self contactFormatter];
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setContactFormatter:v8];

    v9 = [(CNContactContentUnitaryViewController *)self alternateName];
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setAlternateName:v9];

    v10 = [(CNContactContentUnitaryViewController *)self message];
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setMessage:v10];

    v11 = [(CNContactContentUnitaryViewController *)self importantMessage];
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setImportantMessage:v11];

    v12 = [(CNContactContentUnitaryViewController *)self presentingDelegate];
    [(CNContactHeaderView *)self->_displayHeaderView setPresenterDelegate:v12];

    [(CNContactHeaderDisplayView *)self->_displayHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setAllowsPickerActions:[(CNContactContentUnitaryViewController *)self allowsDisplayModePickerActions]];
    [(CNContactHeaderEditView *)self->_editingHeaderView setAllowsEditPhoto:v4 ^ 1];
    v13 = [(CNContactContentUnitaryViewController *)self applyContactStyle];
    displayHeaderView = self->_displayHeaderView;
  }

  return displayHeaderView;
}

- (id)contactHeaderView
{
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    v3 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
  }

  else if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v3 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
  }

  else
  {
    v4 = [(CNContactContentViewController *)self hideHeaderView]|| [(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard];
    v5 = [(CNContactContentUnitaryViewController *)self displayHeaderView];
    [v5 setHidden:v4];

    v3 = [(CNContactContentUnitaryViewController *)self displayHeaderView];
  }

  return v3;
}

- (CNMutableContact)mutableContactForHeaderView
{
  v2 = self;
  if (!-[CNContactContentUnitaryViewController shouldUseSharedProfile](self, "shouldUseSharedProfile") || ([MEMORY[0x1E69966E8] currentEnvironment], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "featureFlags"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isFeatureEnabled:", 27), v4, v3, !v5) || -[CNContactContentUnitaryViewController savingPersonalSharedProfile](v2, "savingPersonalSharedProfile") || (objc_msgSend(MEMORY[0x1E69966E8], "currentEnvironment"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "nicknameProvider"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isNicknameSharingEnabled"), v7, v6, !v8))
  {
    p_mutableContact = &v2->_mutableContact;
    goto LABEL_11;
  }

  p_mutableContact = &v2->_mutableContactForHeaderView;
  mutableContactForHeaderView = v2->_mutableContactForHeaderView;
  if (mutableContactForHeaderView)
  {
LABEL_12:
    v2 = mutableContactForHeaderView;
    goto LABEL_13;
  }

  v11 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v12 = [MEMORY[0x1E69966E8] currentEnvironment];
  v13 = [v12 nicknameProvider];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__CNContactContentUnitaryViewController_mutableContactForHeaderView__block_invoke;
  v26[3] = &unk_1E74E6AD0;
  v14 = v11;
  v27 = v14;
  [v13 fetchPersonalNicknameAsContactWithCompletion:v26];

  v15 = *MEMORY[0x1E6996590];
  v16 = [v14 future];
  v17 = [v16 resultWithTimeout:0 error:0.2];
  v18 = (*(v15 + 16))(v15, v17);

  if (v18)
  {
    v19 = CNUILogContactCard();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEFAULT, "Personal nickname fetched from IMNicknameProvider, me card will show shared profile photo and poster", v25, 2u);
    }

    v20 = [v18 imageData];
    [(CNMutableContact *)v2->_mutableContact setImageData:v20];

    v21 = [v18 thumbnailImageData];
    [(CNMutableContact *)v2->_mutableContact setThumbnailImageData:v21];

    [(CNMutableContact *)v2->_mutableContact setCropRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v22 = [v18 wallpaper];
    [(CNMutableContact *)v2->_mutableContact setWallpaper:v22];

    v23 = [v18 watchWallpaperImageData];
    [(CNMutableContact *)v2->_mutableContact setWatchWallpaperImageData:v23];

    objc_storeStrong(&v2->_mutableContactForHeaderView, v2->_mutableContact);
  }

  else
  {
    objc_storeStrong(&v2->_mutableContactForHeaderView, v2->_mutableContact);
    v2 = *p_mutableContact;
  }

  if (v18)
  {
LABEL_11:
    mutableContactForHeaderView = *p_mutableContact;
    goto LABEL_12;
  }

LABEL_13:

  return v2;
}

void __68__CNContactContentUnitaryViewController_mutableContactForHeaderView__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*MEMORY[0x1E6996588] + 16))();
  [v1 finishWithResult:v2 error:0];
}

- (id)contactView
{
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    [(CNContactContentUnitaryViewController *)self editingContactView];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self displayContactView];
  }
  v3 = ;

  return v3;
}

- (void)dealloc
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(CNContactView *)self->_displayContactView setDelegate:0];
  [(CNContactView *)self->_editingContactView setDelegate:0];
  [(CNContactView *)self->_displayContactView setDataSource:0];
  [(CNContactView *)self->_editingContactView setDataSource:0];
  [(CNContactHeaderView *)self->_displayHeaderView setDelegate:0];
  [(CNContactHeaderDisplayView *)self->_displayHeaderView didFinishUsing];
  [(CNContactHeaderView *)self->_staticDisplayHeaderView setDelegate:0];
  [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView didFinishUsing];
  [(CNContactHeaderView *)self->_displayFloatingCollapsedHeaderView setDelegate:0];
  [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView didFinishUsing];
  [(CNContactHeaderView *)self->_editingHeaderView setDelegate:0];
  [(CNContactHeaderEditView *)self->_editingHeaderView didFinishUsing];
  v3 = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v5 = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v4 deactivateConstraints:v6];
  }

  actionsDataSource = self->_actionsDataSource;
  self->_actionsDataSource = 0;

  [(CNContactAction *)self->_addFavoriteAction setDelegate:0];
  v8 = [(CNContactContentUnitaryViewController *)self iMessageIDSLookupToken];
  [v8 cancel];

  v9 = [(CNContactContentUnitaryViewController *)self faceTimeIDSLookupToken];
  [v9 cancel];

  v10 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v10 removeObserver:self];

  v11.receiver = self;
  v11.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v11 dealloc];
}

- (void)setAllowsContactBlockingAndReporting:(BOOL)a3
{
  v3 = a3;
  allowsContactBlockingAndReporting = self->_allowsContactBlockingAndReporting;
  self->_allowsContactBlockingAndReporting = a3;
  v6 = [(CNContactContentUnitaryViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNContactContentUnitaryViewController *)self delegate];
    [v8 didSetAction:2048 allowed:v3];
  }

  if (allowsContactBlockingAndReporting != v3)
  {

    [(CNContactContentUnitaryViewController *)self _debouncedReloadDataPreservingChanges:1];
  }
}

- (void)setAllowsContactBlocking:(BOOL)a3
{
  v3 = a3;
  allowsContactBlocking = self->_allowsContactBlocking;
  self->_allowsContactBlocking = a3;
  v6 = [(CNContactContentUnitaryViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNContactContentUnitaryViewController *)self delegate];
    [v8 didSetAction:128 allowed:v3];
  }

  if (allowsContactBlocking != v3)
  {

    [(CNContactContentUnitaryViewController *)self _debouncedReloadDataPreservingChanges:1];
  }
}

- (void)setUsesBrandedCallHeaderFormat:(BOOL)a3
{
  v3 = a3;
  if (self->_usesBrandedCallHeaderFormat != a3 || [(CNContactHeaderDisplayView *)self->_displayHeaderView usesBrandedCallFormat]!= a3 || [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView usesBrandedCallFormat]!= v3)
  {
    self->_usesBrandedCallHeaderFormat = v3;
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setUsesBrandedCallFormat:v3];
    staticDisplayHeaderView = self->_staticDisplayHeaderView;

    [(CNContactHeaderStaticDisplayView *)staticDisplayHeaderView setUsesBrandedCallFormat:v3];
  }
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
    v9[2] = __72__CNContactContentUnitaryViewController_setForcesTransparentBackground___block_invoke;
    v9[3] = &unk_1E74E6A88;
    v9[4] = self;
    [v8 performBlock:v9];
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (v5 || ([(CNContactContentUnitaryViewController *)self title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(CNContactContentUnitaryViewController *)self title];
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
      v8.super_class = CNContactContentUnitaryViewController;
      [(CNContactContentUnitaryViewController *)&v8 setTitle:v5];
      [(CNContactContentUnitaryViewController *)self didChangeToShowTitle:v5 != 0];
    }
  }

LABEL_6:
}

- (void)setContactStore:(id)a3
{
  objc_storeStrong(&self->_contactStore, a3);
  v5 = a3;
  v6 = [(CNContactContentUnitaryViewController *)self actionsDataSource];
  [v6 setContactStore:v5];

  v7 = [(CNContactContentUnitaryViewController *)self contactViewCache];
  [v7 setContactStore:v5];

  v8 = [[CNUIGroupsAndContainersSaveManager alloc] initWithContactStore:v5];
  [(CNContactContentUnitaryViewController *)self setGroupsAndContainersSaveManager:v8];
}

- (void)setNameEditingGroups:(id)a3
{
  v4 = a3;
  [(CNAggregatedPropertyNameGroups *)self->_aggregatedNameGroups setGroups:v4];
  v6 = NSStringFromSelector(sel_nameEditingGroups);
  [(CNContactContentUnitaryViewController *)self willChangeValueForKey:v6];
  nameEditingGroups = self->_nameEditingGroups;
  self->_nameEditingGroups = v4;

  [(CNContactContentUnitaryViewController *)self didChangeValueForKey:v6];
}

- (CNContactContentUnitaryViewController)initWithContact:(id)a3 prohibitedPropertyKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNContactContentUnitaryViewController *)self initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(CNContactContentUnitaryViewController *)v8 setProhibitedPropertyKeys:v7];
    [(CNContactContentUnitaryViewController *)v9 setContact:v6];
    v10 = v9;
  }

  return v9;
}

- (id)initForInlineContactCardWithContact:(id)a3
{
  v4 = a3;
  v5 = +[CNUIContactsEnvironment currentEnvironment];
  v6 = [(CNContactContentUnitaryViewController *)self initWithEnvironment:v5 isInlineContactCard:1];

  if (v6)
  {
    [(CNContactContentViewController *)v6 setShouldShowLinkedContacts:1];
    [(CNContactContentUnitaryViewController *)v6 setContact:v4];
  }

  return v6;
}

- (CNContactContentUnitaryViewController)initWithContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentUnitaryViewController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(CNContactContentUnitaryViewController *)v5 setContact:v4];
  }

  return v6;
}

- (CNContactContentUnitaryViewController)initWithEnvironment:(id)a3 isInlineContactCard:(BOOL)a4
{
  v107[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v104.receiver = self;
  v104.super_class = CNContactContentUnitaryViewController;
  v8 = [(CNContactContentViewController *)&v104 initWithEnvironment:v7];
  objc_storeStrong(&v8->_environment, a3);
  v9 = objc_alloc_init(CNContactViewCache);
  contactViewCache = v8->_contactViewCache;
  v8->_contactViewCache = v9;

  if ([MEMORY[0x1E695CEB0] deviceSupportsGemini])
  {
    v11 = objc_alloc(MEMORY[0x1E6996B60]);
    v12 = +[CNUIContactsEnvironment currentEnvironment];
    v13 = [v12 geminiManager];
    v14 = [v11 initWithGeminiManager:v13];
    geminiDataSource = v8->_geminiDataSource;
    v8->_geminiDataSource = v14;

    [(CNUIGeminiDataSource *)v8->_geminiDataSource setDelegate:v8];
  }

  v16 = +[CNUIContactsEnvironment currentEnvironment];
  v17 = [v16 defaultSchedulerProvider];
  v18 = [v17 mainThreadScheduler];
  mainThreadScheduler = v8->_mainThreadScheduler;
  v8->_mainThreadScheduler = v18;

  v20 = +[CNUIContactsEnvironment currentEnvironment];
  v21 = [v20 defaultSchedulerProvider];
  v22 = [v21 newSerialSchedulerWithName:@"com.apple.ContactsUI.ktWorkQueue"];
  ktWorkQueue = v8->_ktWorkQueue;
  v8->_ktWorkQueue = v22;

  v24 = *(MEMORY[0x1E69DDCE0] + 16);
  *&v8->_peripheryInsets.top = *MEMORY[0x1E69DDCE0];
  *&v8->_peripheryInsets.bottom = v24;
  objc_storeWeak(&v8->_presentingDelegate, v8);
  v8->_allowsEditing = 1;
  v8->_allowsActions = 1;
  v8->_allowsCardActions = 1;
  v8->_allowsConferencing = 1;
  v8->_allowsSharing = 1;
  v8->_allowsAddToFavorites = 1;
  v8->_allowsContactBlocking = 0;
  v8->_allowsContactBlockingAndReporting = 0;
  v8->_allowsAddingToAddressBook = 1;
  v8->_allowsSendMessage = 1;
  v8->_allowsSettingLinkedContactsAsPreferred = 1;
  v8->_allowsActionsModel = 1;
  v8->_allowsDisplayModePickerActions = 1;
  v8->_allowsEditPhoto = 1;
  v8->_allowsSwipeToPop = 1;
  v8->_showsInlineActions = 1;
  v8->_showsSharedProfile = 1;
  v8->_showsGroupMembership = 1;
  v8->_hideCardActions = 0;
  v8->_isMailVIP = 0;
  v8->_showContactBlockingFirst = 0;
  v8->_canDisplayDefaultAppGroup = 0;
  v25 = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  contactFormatter = v8->_contactFormatter;
  v8->_contactFormatter = v25;

  v27 = +[CNContactView allCardProperties];
  displayedProperties = v8->_displayedProperties;
  v8->_displayedProperties = v27;

  v8->_isInlineContactCard = a4;
  v29 = [(CNContactContentUnitaryViewController *)v8 traitCollection];
  v30 = [v29 userInterfaceIdiom];

  if (v30 == 3)
  {
    v8->_supportsSwiftUIContactCard = 0;
  }

  else
  {
    v31 = [MEMORY[0x1E69966E8] currentEnvironment];
    v32 = [v31 featureFlags];
    v8->_supportsSwiftUIContactCard = [v32 isFeatureEnabled:11];
  }

  v8->_isShowingSNaPEditFlow = 0;
  v33 = MEMORY[0x1E698B6F8];
  if (!v8->_isInlineContactCard)
  {
    v34 = objc_alloc(MEMORY[0x1E6996BE8]);
    v35 = [v7 actionDiscoveringEnvironment];
    v36 = [v34 initWithDiscoveringEnvironment:v35];
    actionsDataSource = v8->_actionsDataSource;
    v8->_actionsDataSource = v36;

    v38 = [(CNContactContentUnitaryViewController *)v8 createActionsController];
    actionsViewController = v8->_actionsViewController;
    v8->_actionsViewController = v38;

    [(CNContactInlineActionsViewController *)v8->_actionsViewController setObjectViewControllerDelegate:v8];
    [(CNContactInlineActionsViewController *)v8->_actionsViewController setDelegate:v8];
    [(CNContactContentUnitaryViewController *)v8 addChildViewController:v8->_actionsViewController];
    [(CNContactInlineActionsViewController *)v8->_actionsViewController didMoveToParentViewController:v8];
    v40 = [CNContactActionsContainerView alloc];
    v41 = [(CNContactInlineActionsViewController *)v8->_actionsViewController view];
    v107[0] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:1];
    v43 = [(CNContactActionsContainerView *)v40 initWithArrangedSubviews:v42];
    actionsWrapperView = v8->_actionsWrapperView;
    v8->_actionsWrapperView = v43;

    [(CNContactActionsContainerView *)v8->_actionsWrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = *v33;
    v46 = [(CNContactInlineActionsViewController *)v8->_actionsViewController view];
    [v46 setMinimumLayoutSize:{v45, 35.0}];
  }

  if ([(CNContactContentUnitaryViewController *)v8 shouldUseStaticHeader])
  {
    v47 = [(CNContactContentUnitaryViewController *)v8 createActionsController];
    floatingActionsViewController = v8->_floatingActionsViewController;
    v8->_floatingActionsViewController = v47;

    [(CNContactInlineActionsViewController *)v8->_floatingActionsViewController setObjectViewControllerDelegate:v8];
    [(CNContactInlineActionsViewController *)v8->_floatingActionsViewController setDelegate:v8];
    [(CNContactContentUnitaryViewController *)v8 addChildViewController:v8->_floatingActionsViewController];
    [(CNContactInlineActionsViewController *)v8->_floatingActionsViewController didMoveToParentViewController:v8];
    v49 = [CNContactActionsContainerView alloc];
    v50 = [(CNContactInlineActionsViewController *)v8->_floatingActionsViewController view];
    v106 = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
    v52 = [(CNContactActionsContainerView *)v49 initWithArrangedSubviews:v51];
    floatingActionsWrapperView = v8->_floatingActionsWrapperView;
    v8->_floatingActionsWrapperView = v52;

    [(CNContactActionsContainerView *)v8->_floatingActionsWrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
    v54 = +[CNUIColorRepository transparentBackgroundColor];
    [(CNContactActionsContainerView *)v8->_floatingActionsWrapperView setBackgroundColor:v54];

    v55 = *v33;
    v56 = [(CNContactInlineActionsViewController *)v8->_floatingActionsViewController view];
    [v56 setMinimumLayoutSize:{v55, 35.0}];

    v57 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v58 = [MEMORY[0x1E6979380] layer];
    v59 = [(UIView *)v57 layer];
    [v59 addSublayer:v58];

    contactViewBackgroundView = v8->_contactViewBackgroundView;
    v8->_contactViewBackgroundView = v57;
    v61 = v57;

    contactViewBackgroundGradientLayer = v8->_contactViewBackgroundGradientLayer;
    v8->_contactViewBackgroundGradientLayer = v58;

    v63 = [(CNContactContentUnitaryViewController *)v8 displayContactView];
    [v63 setBackgroundView:v61];
  }

  v64 = objc_opt_new();
  headerDropShadowView = v8->_headerDropShadowView;
  v8->_headerDropShadowView = v64;

  [(UIView *)v8->_headerDropShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
  v66 = [(CNContactContentUnitaryViewController *)v8 environment];
  if ([v66 runningInContactsAppOniPad])
  {
    v67 = [(UIView *)v8->_headerDropShadowView backgroundColor];
    [(UIView *)v8->_headerDropShadowView setBackgroundColor:v67];
  }

  else
  {
    v67 = +[CNContactStyle currentStyle];
    v68 = [v67 contactHeaderDropShadowColor];
    [(UIView *)v8->_headerDropShadowView setBackgroundColor:v68];
  }

  v69 = [v7 inProcessActivityManager];
  activityManager = v8->_activityManager;
  v8->_activityManager = v69;

  v71 = [MEMORY[0x1E695DEC8] array];
  customActions = v8->_customActions;
  v8->_customActions = v71;

  v73 = [MEMORY[0x1E695DF90] dictionary];
  customActionCardGroupsByPlacement = v8->_customActionCardGroupsByPlacement;
  v8->_customActionCardGroupsByPlacement = v73;

  v75 = objc_alloc_init(MEMORY[0x1E6996AE0]);
  contactCardPropertyViewConfiguration = v8->_contactCardPropertyViewConfiguration;
  v8->_contactCardPropertyViewConfiguration = v75;

  v77 = objc_alloc_init(MEMORY[0x1E6996AE0]);
  pendingContactCardPropertyViewConfiguration = v8->_pendingContactCardPropertyViewConfiguration;
  v8->_pendingContactCardPropertyViewConfiguration = v77;

  v79 = objc_alloc_init(CNUIContactStoreSaveExecutor);
  saveContactExecutor = v8->_saveContactExecutor;
  v8->_saveContactExecutor = v79;

  v81 = objc_alloc_init(CNUIContactStoreLinkedContactSaveExecutor);
  saveLinkedContactsExecutor = v8->_saveLinkedContactsExecutor;
  v8->_saveLinkedContactsExecutor = v81;

  previousBackGestureDelegate = v8->_previousBackGestureDelegate;
  v8->_previousBackGestureDelegate = 0;

  pendingLayoutBlocks = v8->_pendingLayoutBlocks;
  v8->_pendingLayoutBlocks = MEMORY[0x1E695E0F0];

  v85 = objc_alloc_init(CNAggregatedPropertyNameGroups);
  aggregatedNameGroups = v8->_aggregatedNameGroups;
  v8->_aggregatedNameGroups = v85;

  [(CNContactContentUnitaryViewController *)v8 setNeedsReloadLazy];
  v87 = [MEMORY[0x1E696AD88] defaultCenter];
  [v87 addObserver:v8 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  v88 = [MEMORY[0x1E696AD88] defaultCenter];
  [v88 addObserver:v8 selector:sel_localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

  v89 = [MEMORY[0x1E696AD88] defaultCenter];
  [v89 addObserver:v8 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E695C3D8] object:0];

  v90 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v90 addObserver:v8 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E6996440] object:0 suspensionBehavior:4];

  v91 = [MEMORY[0x1E696AD88] defaultCenter];
  [v91 addObserver:v8 selector:sel_keyboardDidShowNotification_ name:*MEMORY[0x1E69DDF78] object:0];

  v92 = [MEMORY[0x1E696AD88] defaultCenter];
  [v92 addObserver:v8 selector:sel_keyboardWillHideNotification_ name:*MEMORY[0x1E69DE078] object:0];

  v105 = objc_opt_class();
  v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  v94 = [(CNContactContentUnitaryViewController *)v8 registerForTraitChanges:v93 withHandler:&__block_literal_global_64801];

  v95 = [MEMORY[0x1E696AD88] defaultCenter];
  [v95 addObserver:v8 selector:sel_favoritesDidChangeWithNotification_ name:*MEMORY[0x1E695C458] object:0];

  v96 = [MEMORY[0x1E69966E8] currentEnvironment];
  v97 = [v96 featureFlags];
  v8->_supportsDrafts = [v97 isFeatureEnabled:31];

  if ([(CNContactContentUnitaryViewController *)v8 supportsDrafts])
  {
    v98 = [MEMORY[0x1E696AD88] defaultCenter];
    [v98 addObserver:v8 selector:sel_applicationLeftForeground_ name:*MEMORY[0x1E69DDBC8] object:0];

    v99 = [MEMORY[0x1E696AD88] defaultCenter];
    [v99 addObserver:v8 selector:sel_applicationLeftForeground_ name:*MEMORY[0x1E69DDBD0] object:0];
  }

  [(CNContactContentUnitaryViewController *)v8 setRestorationIdentifier:@"ContactCard"];
  [(CNContactContentUnitaryViewController *)v8 setRestorationClass:objc_opt_class()];
  v100 = [(CNContactContentUnitaryViewController *)v8 navigationItem];
  [v100 _setBackgroundHidden:1];

  v101 = [(CNContactContentUnitaryViewController *)v8 navigationItem];
  [v101 setLargeTitleDisplayMode:2];

  v102 = [(CNContactContentUnitaryViewController *)v8 applyContactStyle];
  return v8;
}

- (CNContactContentUnitaryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = [CNUIContactsEnvironment currentEnvironment:a3];
  v6 = [(CNContactContentUnitaryViewController *)self initWithEnvironment:v5];

  return v6;
}

+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4
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
  v4 = [v3 _cn_any:&__block_literal_global_974];

  return v4;
}

uint64_t __64__CNContactContentUnitaryViewController_actionModelIncludesTTY___block_invoke(uint64_t a1, void *a2)
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
  if (enablesTransportButtons_s_onceToken_64824 != -1)
  {
    dispatch_once(&enablesTransportButtons_s_onceToken_64824, &__block_literal_global_416);
  }

  return enablesTransportButtons_s_enableTransportButtons_64825;
}

uint64_t __64__CNContactContentUnitaryViewController_enablesTransportButtons__block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"CNEnableTransportButtons", *MEMORY[0x1E695E890], 0);
  enablesTransportButtons_s_enableTransportButtons_64825 = result != 0;
  return result;
}

+ (id)descriptorForRequiredKeysWithDescription:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__CNContactContentUnitaryViewController_descriptorForRequiredKeysWithDescription___block_invoke;
  block[3] = &unk_1E74E6A88;
  v10 = v3;
  v4 = descriptorForRequiredKeysWithDescription__cn_once_token_13_64827;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&descriptorForRequiredKeysWithDescription__cn_once_token_13_64827, block);
  }

  v6 = descriptorForRequiredKeysWithDescription__cn_once_object_13_64828;
  v7 = descriptorForRequiredKeysWithDescription__cn_once_object_13_64828;

  return v6;
}

void __82__CNContactContentUnitaryViewController_descriptorForRequiredKeysWithDescription___block_invoke(uint64_t a1)
{
  v13[57] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CEB0] descriptorForRequiredKeys];
  v3 = *MEMORY[0x1E695C200];
  v13[53] = v2;
  v13[54] = v3;
  v4 = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  v5 = [v4 descriptorForRequiredKeys];
  v13[55] = v5;
  v6 = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  v7 = [CNContactHeaderDisplayView descriptorForRequiredKeysForContactFormatter:v6];
  v13[56] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:57];

  v9 = +[CNSiriContactContextProvider descriptorForRequiredKeys];
  if (v9)
  {
    v10 = [v8 arrayByAddingObject:v9];

    v8 = v10;
  }

  v11 = [MEMORY[0x1E695CD58] descriptorWithKeyDescriptors:v8 description:*(a1 + 32)];

  v12 = descriptorForRequiredKeysWithDescription__cn_once_object_13_64828;
  descriptorForRequiredKeysWithDescription__cn_once_object_13_64828 = v11;
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
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentUnitaryViewController descriptorForRequiredKeysForContact:]"];
  v10 = [v8 descriptorWithKeyDescriptors:v7 description:v9];

  return v10;
}

@end