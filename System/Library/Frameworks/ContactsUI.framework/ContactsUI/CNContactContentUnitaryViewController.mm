@interface CNContactContentUnitaryViewController
+ (BOOL)actionModelIncludesTTY:(id)y;
+ (BOOL)enablesTransportButtons;
+ (BOOL)shouldShowGeminiForResult:(id)result contact:(id)contact;
+ (id)descriptorForRequiredKeys;
+ (id)descriptorForRequiredKeysForContact:(id)contact;
+ (id)descriptorForRequiredKeysWithDescription:(id)description;
+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder;
+ (void)_telemetryForContact:(id)contact;
- (BOOL)_hasAtLeastOneVerifiedHandle;
- (BOOL)_indexPathIsActionItem:(id)item forTableView:(id)view;
- (BOOL)_isGroupEmpty:(id)empty;
- (BOOL)_isUnavailableAuthorizationPropertyKey:(id)key;
- (BOOL)_modelHasChanges;
- (BOOL)_modelIsEmpty;
- (BOOL)allowsEditing;
- (BOOL)contactHasAvailablePropertiesToFavorite:(id)favorite isPhoneAppAvailable:(BOOL)available isFaceTimeAppAvailable:(BOOL)appAvailable;
- (BOOL)contactInlineActionsViewController:(id)controller shouldPerformActionOfType:(id)type withContactProperty:(id)property;
- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier;
- (BOOL)displayNavigationButtonsShouldUsePlatterStyle;
- (BOOL)editRequiresAuthorization;
- (BOOL)editingChangeRequiresAuthorization;
- (BOOL)hasExistingGroups;
- (BOOL)hasPendingChanges;
- (BOOL)hasPersonHeaderSectionForTableView:(id)view;
- (BOOL)hasSharedProfileBannerSectionForTableView:(id)view;
- (BOOL)isAcceptedIntroductionsDataSource;
- (BOOL)isContactProviderDataSource;
- (BOOL)isHeaderViewContactBlocked:(id)blocked;
- (BOOL)isHeaderViewPhotoProhibited;
- (BOOL)isNicknameProhibited;
- (BOOL)isOrientationPhoneLandscape;
- (BOOL)isPadCompactHorizontalSize;
- (BOOL)isPadRegularHorizontalSize;
- (BOOL)isPersonHeaderIndexPath:(id)path forTableView:(id)view;
- (BOOL)isPersonHeaderSectionForTableView:(id)view section:(int64_t)section;
- (BOOL)isPresentingModalViewController;
- (BOOL)isScrollViewControllingHeaderResizeAnimation:(id)animation;
- (BOOL)isSharedProfileBannerSectionForTableView:(id)view section:(int64_t)section;
- (BOOL)isSharedProfileBannerSectionIndexPath:(id)path forTableView:(id)view;
- (BOOL)isStandardGroup:(id)group;
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
- (BOOL)shouldPerformDefaultActionForPropertyKey:(id)key propertyIdentifier:(id)identifier;
- (BOOL)shouldReallyShowLinkedContactsForEditingState:(BOOL)state;
- (BOOL)shouldSetBackgroundColorToMatchHeader;
- (BOOL)shouldShowGemini;
- (BOOL)shouldShowSharedProfileRow;
- (BOOL)shouldShowSwiftUIContactCard;
- (BOOL)shouldShowVerifiedFooterInSection:(int64_t)section inTableView:(id)view;
- (BOOL)shouldUpdateSharedProfile;
- (BOOL)shouldUseSharedProfile;
- (BOOL)shouldUseStaticHeader;
- (BOOL)showsGroupMembership;
- (BOOL)supportsAction:(int64_t)action;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHaveFullLengthBottomSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path;
- (CGRect)centeredSourceRect:(CGRect)rect inContactView:(id)view;
- (CGSize)requiredSizeForVisibleTableView;
- (CGSize)setupTableHeaderView;
- (CNContactCardActionsDelegate)actionsDelegate;
- (CNContactContentUnitaryViewController)initWithContact:(id)contact;
- (CNContactContentUnitaryViewController)initWithContact:(id)contact prohibitedPropertyKeys:(id)keys;
- (CNContactContentUnitaryViewController)initWithEnvironment:(id)environment isInlineContactCard:(BOOL)card;
- (CNContactContentUnitaryViewController)initWithNibName:(id)name bundle:(id)bundle;
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
- (Class)groupClassForProperty:(id)property;
- (UIEdgeInsets)headerViewSafeAreaInsets;
- (UIEdgeInsets)insetsForContactTableView:(id)view;
- (UIEdgeInsets)peripheryInsets;
- (UIEdgeInsets)scrollIndicatorInsetsForContactTableView:(id)view withContentInsets:(UIEdgeInsets)insets;
- (UIView)editingFloatingCollapsedHeaderView;
- (_TtC10ContactsUI32ContactCardSwiftUIViewController)displayContactCardViewController;
- (double)actionsBottomMargin;
- (double)actionsTopMargin;
- (double)desiredHeightForWidth:(double)width;
- (double)editingFloatingHeaderHeight;
- (double)globalHeaderHeightForContentOffset:(double)offset contentInset:(UIEdgeInsets)inset;
- (double)navigationBarHeight;
- (double)staticDisplayHeaderHeight;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)updateHeaderConstraintForGlobalHeaderHeight:(double)height direction:(int64_t)direction animated:(BOOL)animated;
- (id)_addAddressingGrammarAction;
- (id)_addCreateNewContactAction;
- (id)_addFavoriteActionWithConferencing:(BOOL)conferencing telephony:(BOOL)telephony;
- (id)_addGroupsInArray:(id)array afterGroup:(id)group;
- (id)_addLinkedCardAction;
- (id)_addNewFieldAction;
- (id)_addToExistingContactAction;
- (id)_addToGroupAction;
- (id)_allDisplayPropertyItemsFromGroups:(id)groups;
- (id)_cardGroupAtTableViewSectionIndex:(int64_t)index forTableView:(id)view;
- (id)_cellForIndexPath:(id)path forTableView:(id)view;
- (id)_cellIdentifierForTableView:(id)view indexPath:(id)path;
- (id)_clearRecentsDataAction;
- (id)_currentGroupsForTableView:(id)view;
- (id)_currentTopVisibleGroupInContactView:(id)view;
- (id)_displayGroupsForKeys:(id)keys;
- (id)_faceTimeAction;
- (id)_itemAtIndexPath:(id)path forTableView:(id)view;
- (id)_labelWidthKeyForGroup:(id)group;
- (id)_linkedCardsAction;
- (id)_loadDisplayGroups;
- (id)_loadEditingGroupsPreservingChanges:(BOOL)changes;
- (id)_loadNameEditingGroups;
- (id)_loadPropertyGroups;
- (id)_menuItemsForQuickAction:(int64_t)action;
- (id)_menuItemsFromActionsController:(id)controller;
- (id)_menuItemsFromNavigationItems:(id)items isNested:(BOOL)nested;
- (id)_phoneticNameForValue:(id)value currentPhoneticName:(id)name property:(id)property;
- (id)_policyForContact:(id)contact mode:(int64_t)mode;
- (id)_propertyGroupsForKeys:(id)keys;
- (id)_removeUnauthorizedKeysFromContact:(id)contact;
- (id)_selectContainersAction;
- (id)_sendMessageActionAllowingEmailIDs:(BOOL)ds;
- (id)_shareContactAction;
- (id)_sharedProfileSettingsAction;
- (id)_updateContact:(id)contact withMissingKeysFromRequiredKeys:(id)keys;
- (id)_updateExistingContactAction;
- (id)action:(id)action cellForPropertyItem:(id)item sender:(id)sender;
- (id)alreadyPickedGroups;
- (id)applyContactStyle;
- (id)authorizationCheck;
- (id)cancelButtonItem;
- (id)cardActions;
- (id)cardGroupForProperty:(id)property;
- (id)contactDelegate;
- (id)contactHeaderView;
- (id)contactView;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (id)createActionsController;
- (id)currentNavigationController;
- (id)customActionGroupsForPlacement:(int64_t)placement;
- (id)defaulTextColor;
- (id)defaultActionForActionType:(int64_t)type;
- (id)doneButtonItem;
- (id)editButtonItem;
- (id)groupContext;
- (id)indexPathOfPropertyItem:(id)item editing:(BOOL)editing;
- (id)indexPathOfPropertyItem:(id)item inGroup:(id)group editing:(BOOL)editing;
- (id)initForInlineContactCardWithContact:(id)contact;
- (id)menuItemsForAction:(int64_t)action;
- (id)navigationItemController;
- (id)originalContacts;
- (id)parentGroups;
- (id)personHeaderCellForTableView:(id)view;
- (id)personHeaderView;
- (id)personHeaderViewDelegate;
- (id)platterBackBarButtonItem;
- (id)presentingDelegate;
- (id)saveDescriptionForCurrentState;
- (id)setupSharedProfileStateOracle;
- (id)sharedNavigationBar;
- (id)sharedProfileBannerSectionCellForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_modalPresentationStyleForViewController:(id)controller;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (int64_t)additionalTopSectionsCountForTableView:(id)view;
- (int64_t)customActionPlacementFromPlacement:(int64_t)placement;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)sectionOfGroup:(id)group inTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addDefaultAppGroupAnimated:(BOOL)animated;
- (void)_addFaceTimeGroupAnimated:(BOOL)animated;
- (void)_addGroup:(id)group afterGroup:(id)afterGroup forTableView:(id)view animated:(BOOL)animated;
- (void)_addMedicalIDGroupAnimated:(BOOL)animated forTableView:(id)view;
- (void)_addShareLocationGroupAnimated:(BOOL)animated;
- (void)_addedGroupWithName:(id)name;
- (void)_debouncedReloadDataPreservingChanges:(BOOL)changes;
- (void)_didCompleteWithContact:(id)contact;
- (void)_handleCoalescedBlockListDidChange;
- (void)_lazyUpdateContactCardPropertyViewConfiguration;
- (void)_lookupKTHandlesIfNeeded;
- (void)_lookupStaticIdentity;
- (void)_notifyObservers;
- (void)_refetchContact;
- (void)_reloadAlertGroups;
- (void)_reloadContainerContextPreservingChanges:(BOOL)changes;
- (void)_reloadDefaultAppGroup;
- (void)_reloadFaceTimeGroup;
- (void)_reloadGameCenterGroup;
- (void)_reloadGameCenterGroupWithPreflight;
- (void)_reloadGameCenterGroupWithRefresh;
- (void)_reloadGeminiGroupPreservingChanges:(BOOL)changes;
- (void)_reloadGroupEditingContext;
- (void)_reloadGroupMembershipGroup;
- (void)_reloadLinkedCardsGroup;
- (void)_reloadMeCardSharedProfileGroup;
- (void)_reloadMedicalIDGroup;
- (void)_reloadNamePickingGroup;
- (void)_reloadPropertyGroupsPreservingChanges:(BOOL)changes;
- (void)_reloadSharedProfileGroup;
- (void)_reloadStaticIdentityGroup;
- (void)_retrieveActionsModelPreservingChanges:(BOOL)changes;
- (void)_saveChangesForGroups:(id)groups;
- (void)_scrollContactView:(id)view toVisibleGroup:(id)group animated:(BOOL)animated;
- (void)_setNeedsUpdateCachedLabelWidths;
- (void)_setupAcceptedContactActions;
- (void)_setupAcceptedContactsNameActions;
- (void)_setupAddToAddressBookActions;
- (void)_setupCardActions;
- (void)_setupContactBlockingActionPreservingChanges:(BOOL)changes withUpdate:(BOOL)update;
- (void)_setupContactBlockingReportingActionPreservingChanges:(BOOL)changes withUpdate:(BOOL)update;
- (void)_setupCustomActions;
- (void)_setupEditingCardActions;
- (void)_setupEditingLinkedContactsForKeys:(id)keys;
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
- (void)_updateLabelWidthForCellsInGroup:(id)group forTableView:(id)view reset:(BOOL)reset;
- (void)_updateLabelWidthsForAllVisibleCells;
- (void)_updatePhoneTransportButtonsForItems:(id)items;
- (void)_updateTTYTransportButtonsForItems:(id)items;
- (void)_updateUserActivity;
- (void)_validateGroup:(id)group;
- (void)action:(id)action didUpdateWithMenu:(id)menu;
- (void)action:(id)action dismissViewController:(id)controller sender:(id)sender;
- (void)action:(id)action prepareChildContactViewController:(id)controller sender:(id)sender;
- (void)action:(id)action presentViewController:(id)controller modalPresentationStyle:(int64_t)style sender:(id)sender;
- (void)action:(id)action presentViewController:(id)controller sender:(id)sender;
- (void)action:(id)action pushViewController:(id)controller sender:(id)sender;
- (void)actionDidFinish:(id)finish;
- (void)actionDidFinishFromSecondaryAction:(id)action;
- (void)actionDidUpdate:(id)update;
- (void)actionWasCanceled:(id)canceled;
- (void)addActionWithTitle:(id)title target:(id)target selector:(SEL)selector menuProvider:(id)provider inGroup:(id)group destructive:(BOOL)destructive;
- (void)addCardGroup:(id)group afterGroup:(id)afterGroup;
- (void)addContactToGroup:(id)group;
- (void)addEditingItem:(id)item atIndexPath:(id)path forTableView:(id)view shouldSetFocus:(BOOL)focus;
- (void)addGameCenterActionGroupAnimated:(BOOL)animated;
- (void)addGameCenterGroupAnimated:(BOOL)animated;
- (void)addLinkedContact:(id)contact;
- (void)addObserver:(id)observer;
- (void)addStaticIdentity:(id)identity;
- (void)adjustInsetsForKeyboardOverlap:(double)overlap;
- (void)adjustPreferredContentSize;
- (void)alertDetailsNotVerified:(id)verified;
- (void)alertStaticIdentitySaveFailed:(id)failed;
- (void)applicationLeftForeground:(id)foreground;
- (void)applyNavigationBarTintColorIfNeeded:(id)needed;
- (void)applyPlatterStyleToBarButtonItemsIfNeeded:(id)needed;
- (void)authorizeEditContactWithTargetGroup:(id)group completion:(id)completion;
- (void)authorizedAddContactToGroup:(id)group;
- (void)authorizedRemoveContactFromGroup:(id)group;
- (void)blockListDidChange:(id)change;
- (void)cancelAsyncLookups;
- (void)cleanupRecentImageMetadata;
- (void)cleanupRecentMetadata;
- (void)cleanupRecentPosterMetadata;
- (void)clearMapsDataIfEdited;
- (void)completeAddAddressingGrammarAction:(id)action;
- (void)contactGroupPickerDidCancel:(id)cancel;
- (void)contactGroupPickerDidFinish:(id)finish withGroup:(id)group;
- (void)contactInlineActionsViewController:(id)controller didPerformActionOfType:(id)type fromDisambiguation:(BOOL)disambiguation;
- (void)contactInlineActionsViewControllerDidDismissDisambiguationUI:(id)i;
- (void)contactInlineActionsViewControllerWillPresentDisambiguationUI:(id)i;
- (void)contactStoreDidChangeWithNotification:(id)notification;
- (void)contactViewController:(id)controller didDeleteContact:(id)contact;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)createCardEditingContactContainerGroupIfNeeded;
- (void)createCardEditingGeminiGroupIfNeeded;
- (void)createdNewContact:(id)contact;
- (void)dealloc;
- (void)didChangeToEditMode:(BOOL)mode;
- (void)didChangeToShowTitle:(BOOL)title;
- (void)didMoveToParentViewController:(id)controller;
- (void)didSelectActionItem:(id)item actionType:(int64_t)type;
- (void)didSelectPreferredChannel:(id)channel;
- (void)editAuthorizationController:(id)controller authorizationDidFinishWithResult:(int64_t)result;
- (void)editCancel:(id)cancel;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)favoritesDidChangeWithNotification:(id)notification;
- (void)finishEditing:(id)editing;
- (void)finishSNaPEditing:(id)editing;
- (void)focusOnFirstEditingItemIfNeeded;
- (void)focusOnLastEditingItemInGroup:(id)group;
- (void)geminiDataSourceDidUpdate:(id)update;
- (void)headerPhotoDidUpdate;
- (void)headerView:(id)view didAcceptDropOfImageData:(id)data;
- (void)headerView:(id)view didRequestToBlockContact:(BOOL)contact;
- (void)headerView:(id)view didSetBackgroundAsGradientColors:(id)colors;
- (void)headerView:(id)view didSetBackgroundAsPosterSnapshotImage:(id)image;
- (void)headerView:(id)view didSetNameLabelColor:(id)color;
- (void)headerView:(id)view didUpdateSensitiveContentOverride:(BOOL)override;
- (void)headerViewDidChangeHeight:(id)height;
- (void)headerViewDidPickPreferredChannel:(id)channel;
- (void)headerViewDidTapNameLabel:(id)label;
- (void)initializeTableViewsForHeaderHeight;
- (void)keyboardDidShowNotification:(id)notification;
- (void)loadContactViewControllerViews;
- (void)loadDisplayModeContactCardVewController;
- (void)loadView;
- (void)performAction:(int64_t)action forContactIdentifier:(id)identifier sourceView:(id)view;
- (void)performAuthorizedSetEditing:(BOOL)editing animated:(BOOL)animated;
- (void)performConfirmedCancel;
- (void)performCustomViewActionAtIndex:(int64_t)index;
- (void)performCustomViewDisclosureAction;
- (void)performSaveToSharedProfile;
- (void)performWhenViewIsLaidOut:(id)out;
- (void)popToPrevious:(id)previous;
- (void)prepareCell:(id)cell;
- (void)prepareContactDidAppearForPPT;
- (void)presentAvatarPosterEditor;
- (void)presentConfirmCancelAlertController;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)propertyCell:(id)cell didDeleteLabel:(id)label forGroup:(id)group;
- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewLabel:(id)label;
- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewValue:(id)value;
- (void)propertyCell:(id)cell performActionForItem:(id)item withTransportType:(int64_t)type;
- (void)propertyCellDidChangeLayout:(id)layout;
- (void)propertyItem:(id)item willChangeValue:(id)value;
- (void)rebuildActionsViewControllers;
- (void)reloadCardActionsForBlockState:(BOOL)state preservingChanges:(BOOL)changes;
- (void)reloadCardGroup:(id)group forTableView:(id)view;
- (void)reloadCardGroupsForFavoritesUpdateInTableView:(id)view;
- (void)reloadDataPreservingChanges:(BOOL)changes;
- (void)reloadSections:(id)sections forTableView:(id)view;
- (void)reloadUnifiedContact;
- (void)removeActionWithTarget:(id)target selector:(SEL)selector inGroup:(id)group;
- (void)removeContactFromGroup:(id)group;
- (void)removeEditingItem:(id)item atIndexPath:(id)path forTableView:(id)view;
- (void)removeLinkedContact:(id)contact;
- (void)removePersonHeaderViewControllerFromHierarchy;
- (void)requestFavoritesUpdateWithGemini;
- (void)saveModelChangesToContact;
- (void)saveModelChangesToSharedProfileContact;
- (void)saveNewContactDraft;
- (void)scrollScrollViewAllTheWayUp:(id)up;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler;
- (void)sender:(id)sender presentViewController:(id)controller;
- (void)sender:(id)sender presentViewController:(id)controller modalPresentationStyle:(int64_t)style;
- (void)setAllowsActions:(BOOL)actions;
- (void)setAllowsContactBlocking:(BOOL)blocking;
- (void)setAllowsContactBlockingAndReporting:(BOOL)reporting;
- (void)setAllowsDisplayModePickerActions:(BOOL)actions;
- (void)setAllowsEditPhoto:(BOOL)photo preservingChanges:(BOOL)changes;
- (void)setAlternateName:(id)name;
- (void)setBackgroundColorIfNeededForPresentedViewController:(id)controller;
- (void)setCancelKeyboardShortcutEnabled:(BOOL)enabled;
- (void)setContact:(id)contact shouldScrollToTop:(BOOL)top;
- (void)setContactStore:(id)store;
- (void)setContactViewBackgroundToMatchHeader;
- (void)setDisplayedProperties:(id)properties;
- (void)setEditKeyboardShortcutEnabled:(BOOL)enabled;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setForcesTransparentBackground:(BOOL)background;
- (void)setImportantMessage:(id)message;
- (void)setIsMailVIP:(BOOL)p;
- (void)setMenuProviderForCell:(id)cell forActionGroupItem:(id)item;
- (void)setMessage:(id)message;
- (void)setNameEditingGroups:(id)groups;
- (void)setPersonHeaderView:(id)view;
- (void)setPersonHeaderViewController:(id)controller;
- (void)setSaveKeyboardShortcutEnabled:(BOOL)enabled;
- (void)setSharedNavigationBar:(id)bar;
- (void)setShouldShowSharedProfileBanner:(BOOL)banner;
- (void)setShowContactBlockingFirst:(BOOL)first;
- (void)setShowsInlineActions:(BOOL)actions;
- (void)setTitle:(id)title;
- (void)setUpBackGestureIfNeeded;
- (void)setUpFloatingActionsViewController;
- (void)setUsesBrandedCallHeaderFormat:(BOOL)format;
- (void)setupActionsPreservingChanges:(BOOL)changes;
- (void)setupConstraints;
- (void)setupConstraintsIfNeeded;
- (void)setupContainerContextIfNeededForContact:(id)contact;
- (void)setupShareLocationActionReload:(BOOL)reload;
- (void)setupTableFooterView;
- (void)setupViewHierarchy;
- (void)setupViewHierarchyAndConstraints;
- (void)setupViewHierarchyIncludingAvatarHeader:(BOOL)header editing:(BOOL)editing;
- (void)setupWithOptions:(id)options readyBlock:(id)block;
- (void)sharedProfileBannerView:(id)view didDismissWithUpdatedContact:(id)contact forAction:(unint64_t)action;
- (void)sharedProfileBannerView:(id)view didUpdateContact:(id)contact forAction:(unint64_t)action;
- (void)shouldPresentFullscreen:(BOOL)fullscreen;
- (void)showEditAuthorizationPane:(id)pane animated:(BOOL)animated;
- (void)showUpdateTermOfAddressAlertIfNeeded;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)toggleEditing:(id)editing;
- (void)updateActionsControllerByType;
- (void)updateCollapsedHeaderToMatchScrollViewState:(id)state scrollDirection:(int64_t)direction animated:(BOOL)animated;
- (void)updateContact:(id)contact;
- (void)updateContactsViewWithBlock:(id)block completion:(id)completion;
- (void)updateDisplayCollapsedHeaderToMatchScrollViewState:(id)state scrollDirection:(int64_t)direction animated:(BOOL)animated;
- (void)updateDoneButton;
- (void)updateEditNavigationItemsAnimated:(BOOL)animated updateTintColor:(BOOL)color;
- (void)updateEditPhotoButtonIfNeeded;
- (void)updateGameCenterGroupAndActionsForContact:(id)contact relationshipResults:(id)results;
- (void)updateHeaderHeightToMatchScrollViewState:(id)state scrollDirection:(int64_t)direction animated:(BOOL)animated;
- (void)updateInsetsIfNeededForTableView:(id)view isEditing:(BOOL)editing;
- (void)updateOutOfProcessFullscreenPresentationIfNeeded;
- (void)updateStaticDisplayHeaderImageVisibility;
- (void)updateTableView:(id)view contentInsetsTo:(UIEdgeInsets)to withScrollIndicatorInsets:(UIEdgeInsets)insets;
- (void)updateUserActivityState:(id)state;
- (void)updateViewConstraints;
- (void)updateWindowTitleForAppearing:(BOOL)appearing;
- (void)updatedExistingContact:(id)contact;
- (void)viewController:(id)controller presentationControllerWillDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CNContactContentUnitaryViewController

+ (id)descriptorForRequiredKeys
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentUnitaryViewController descriptorForRequiredKeys]"];
  v4 = [self descriptorForRequiredKeysWithDescription:v3];

  return v4;
}

- (BOOL)shouldShowGemini
{
  geminiDataSource = [(CNContactContentUnitaryViewController *)self geminiDataSource];
  geminiResult = [geminiDataSource geminiResult];

  if (geminiResult && ![(CNContactContentUnitaryViewController *)self showingMeContact])
  {
    contact = [(CNContactContentUnitaryViewController *)self contact];
    if ([contact isSuggested])
    {
      v5 = 0;
    }

    else
    {
      contact2 = [(CNContactContentUnitaryViewController *)self contact];
      if ([contact2 isCoreRecentsAccepted])
      {
        v5 = 0;
      }

      else
      {
        displayedProperties = [(CNContactContentUnitaryViewController *)self displayedProperties];
        if ([displayedProperties containsObject:*MEMORY[0x1E695C330]])
        {
          contact3 = [(CNContactContentUnitaryViewController *)self contact];
          v5 = [CNContactContentUnitaryViewController shouldShowGeminiForResult:geminiResult contact:contact3];
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
    contact = [(CNContactContentUnitaryViewController *)self contact];
    v6 = [(CNContactView *)v4 initWithFrame:contact contact:0.0, 0.0, 320.0, 200.0];
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

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:28];

  return v5;
}

- (CNContactHeaderStaticDisplayView)staticDisplayHeaderView
{
  staticDisplayHeaderView = self->_staticDisplayHeaderView;
  if (!staticDisplayHeaderView)
  {
    isHeaderViewPhotoProhibited = [(CNContactContentUnitaryViewController *)self isHeaderViewPhotoProhibited];
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    v6 = [CNContactHeaderStaticDisplayView contactHeaderViewWithContact:mutableContact showingNavBar:[(CNContactContentUnitaryViewController *)self layoutPositionallyAfterNavBar] monogramOnly:isHeaderViewPhotoProhibited delegate:self];
    v7 = self->_staticDisplayHeaderView;
    self->_staticDisplayHeaderView = v6;

    actionsWrapperView = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setActionsWrapperView:actionsWrapperView];

    [(CNContactHeaderView *)self->_staticDisplayHeaderView setAlwaysShowsMonogram:1];
    contactFormatter = [(CNContactContentUnitaryViewController *)self contactFormatter];
    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setContactFormatter:contactFormatter];

    alternateName = [(CNContactContentUnitaryViewController *)self alternateName];
    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setAlternateName:alternateName];

    message = [(CNContactContentUnitaryViewController *)self message];
    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setMessage:message];

    importantMessage = [(CNContactContentUnitaryViewController *)self importantMessage];
    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setImportantMessage:importantMessage];

    presentingDelegate = [(CNContactContentUnitaryViewController *)self presentingDelegate];
    [(CNContactHeaderView *)self->_staticDisplayHeaderView setPresenterDelegate:presentingDelegate];

    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView setAllowsPickerActions:[(CNContactContentUnitaryViewController *)self allowsDisplayModePickerActions]];
    applyContactStyle = [(CNContactContentUnitaryViewController *)self applyContactStyle];
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

- (int64_t)customActionPlacementFromPlacement:(int64_t)placement
{
  if ((placement - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return placement;
  }
}

- (id)customActionGroupsForPlacement:(int64_t)placement
{
  customActionCardGroupsByPlacement = [(CNContactContentUnitaryViewController *)self customActionCardGroupsByPlacement];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:placement];
  v6 = [customActionCardGroupsByPlacement objectForKeyedSubscript:v5];
  allObjects = [v6 allObjects];
  v8 = [allObjects _cn_map:&__block_literal_global_1116];

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

- (void)didSelectPreferredChannel:(id)channel
{
  channelCopy = channel;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  if (userInterfaceIdiom)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    if ([featureFlags isFeatureEnabled:15])
    {

LABEL_6:
      contact = [(CNContactContentUnitaryViewController *)self contact];
      [contact setSelectedChannel:channelCopy];

      if ([channelCopy hasPrefix:@"uuid:"])
      {
        v11 = [channelCopy substringFromIndex:5];

        channelCopy = v11;
      }

      geminiDataSource = [(CNContactContentUnitaryViewController *)self geminiDataSource];
      [geminiDataSource setSelectedChannelIdentifier:channelCopy];
      goto LABEL_15;
    }
  }

  contact2 = [(CNContactContentUnitaryViewController *)self contact];
  isUnknown = [contact2 isUnknown];

  if (userInterfaceIdiom)
  {

    if (isUnknown)
    {
      goto LABEL_6;
    }
  }

  else
  {

    if (isUnknown)
    {
      goto LABEL_6;
    }
  }

  contact3 = [(CNContactContentUnitaryViewController *)self contact];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  contact4 = [(CNContactContentUnitaryViewController *)self contact];
  geminiDataSource = contact4;
  if ((isKindOfClass & 1) == 0)
  {
    v16 = [contact4 mutableCopy];

    geminiDataSource = v16;
  }

  [geminiDataSource setPreferredChannel:channelCopy];
  v17 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v17 setIgnoresGuardianRestrictions:{-[CNContactContentUnitaryViewController saveWasAuthorized](self, "saveWasAuthorized")}];
  issuedSaveRequestIdentifiers = [(CNContactContentUnitaryViewController *)self issuedSaveRequestIdentifiers];
  saveRequestIdentifier = [v17 saveRequestIdentifier];
  [issuedSaveRequestIdentifiers addObject:saveRequestIdentifier];

  [v17 updateContact:geminiDataSource];
  contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
  [contactStore executeSaveRequest:v17 error:0];

  [(CNContactContentUnitaryViewController *)self setContact:geminiDataSource];
  [(CNContactContentUnitaryViewController *)self requestFavoritesUpdateWithGemini];
  displayContactCardViewController = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
  [displayContactCardViewController setForceReload:1];

  contact5 = [(CNContactContentUnitaryViewController *)self contact];
  displayContactCardViewController2 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
  [displayContactCardViewController2 setContact:contact5];

  if ([(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    geminiDataSource2 = [(CNContactContentUnitaryViewController *)self geminiDataSource];
    [geminiDataSource2 setContact:mutableContact];

    geminiDataSource3 = [(CNContactContentUnitaryViewController *)self geminiDataSource];
    [geminiDataSource3 setSelectedChannelIdentifier:channelCopy];
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
  customViewConfiguration = [(CNContactContentUnitaryViewController *)self customViewConfiguration];
  trailingDisclosureAction = [customViewConfiguration trailingDisclosureAction];
  [trailingDisclosureAction performActionWithSender:0];
}

- (void)performCustomViewActionAtIndex:(int64_t)index
{
  customViewConfiguration = [(CNContactContentUnitaryViewController *)self customViewConfiguration];
  actions = [customViewConfiguration actions];
  v5 = [actions objectAtIndex:index];
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

- (BOOL)shouldPerformDefaultActionForPropertyKey:(id)key propertyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyCopy = key;
  contact = [(CNContactContentUnitaryViewController *)self contact];
  isSuggested = [contact isSuggested];

  if (isSuggested)
  {
    propertyGroups = [(CNContactContentUnitaryViewController *)self propertyGroups];
    contact3 = [propertyGroups objectForKeyedSubscript:keyCopy];

    propertyItems = [contact3 propertyItems];
    keyCopy = [propertyItems firstObject];

    v13 = [CNPropertySuggestionAction alloc];
    contact2 = [(CNContactContentUnitaryViewController *)self contact];
    v15 = [(CNPropertyAction *)v13 initWithContact:contact2 propertyItem:keyCopy];

    [(CNContactAction *)v15 setDelegate:self];
    [(CNPropertySuggestionAction *)v15 performActionForItem:keyCopy sender:0];

    v16 = 0;
  }

  else
  {
    contact3 = [(CNContactContentUnitaryViewController *)self contact];
    v16 = [(CNContactContentUnitaryViewController *)self contactViewController:self shouldPerformDefaultActionForContact:contact3 propertyKey:keyCopy propertyIdentifier:identifierCopy];
  }

  return v16;
}

- (void)didSelectActionItem:(id)item actionType:(int64_t)type
{
  itemCopy = item;
  v13 = itemCopy;
  if (type <= 10)
  {
    if (type)
    {
      if (type != 2)
      {
        if (type != 4)
        {
          goto LABEL_17;
        }

        emergencyContactAction = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
        objc_opt_class();
        contactProperty = [v13 contactProperty];
        if (objc_opt_isKindOfClass())
        {
          v9 = contactProperty;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        [emergencyContactAction showRelationshipPickerForContactProperty:v10 sender:0];

        goto LABEL_16;
      }

      addFavoriteAction = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
    }

    else
    {
      addFavoriteAction = [(CNContactContentUnitaryViewController *)self sendMessageAction];
    }

    emergencyContactAction = addFavoriteAction;
    [addFavoriteAction didSelectActionItem:v13];
LABEL_16:

    goto LABEL_17;
  }

  if ((type - 15) < 5)
  {
    [(CNContactInlineActionsViewController *)self->_actionsViewController didSelectAction:itemCopy];
    goto LABEL_17;
  }

  if (type == 11)
  {
    emergencyContactAction = [(CNContactContentUnitaryViewController *)self gameCenterAddFriendAction];
    contact = [v13 contact];
    [emergencyContactAction addContactAsFriend:contact];

    goto LABEL_16;
  }

LABEL_17:
}

- (id)defaultActionForActionType:(int64_t)type
{
  v4 = quickActionTypeToString();
  if (v4)
  {
    actionsControllerByType = [(CNContactContentUnitaryViewController *)self actionsControllerByType];
    v6 = [actionsControllerByType objectForKeyedSubscript:v4];
    v7 = [v6 defaultActionForActionType:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_menuItemsFromNavigationItems:(id)items isNested:(BOOL)nested
{
  itemsCopy = items;
  if ([itemsCopy count] == 1)
  {
    while (1)
    {
      firstObject = [itemsCopy firstObject];
      items = [firstObject items];
      if (![items count])
      {
        break;
      }

      if (nested)
      {
        firstObject2 = [itemsCopy firstObject];
        identifier = [firstObject2 identifier];
        v11 = [identifier length];

        if (v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      firstObject3 = [itemsCopy firstObject];
      items2 = [firstObject3 items];

      itemsCopy = items2;
      if ([items2 count] != 1)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_10:
  items2 = itemsCopy;
LABEL_11:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__CNContactContentUnitaryViewController__menuItemsFromNavigationItems_isNested___block_invoke;
  v16[3] = &unk_1E74E7358;
  v16[4] = self;
  v14 = [items2 _cn_map:v16];

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

- (id)_menuItemsFromActionsController:(id)controller
{
  controllerCopy = controller;
  displayedController = [controllerCopy displayedController];
  items = [displayedController items];

  if ([items count])
  {
    v7 = [(CNContactContentUnitaryViewController *)self _menuItemsFromNavigationItems:items isNested:0];
  }

  else
  {
    [controllerCopy retrieveModels];
    v7 = 0;
  }

  return v7;
}

- (id)_menuItemsForQuickAction:(int64_t)action
{
  v4 = quickActionTypeToString();
  actionsControllerByType = [(CNContactContentUnitaryViewController *)self actionsControllerByType];
  v6 = [actionsControllerByType objectForKeyedSubscript:v4];

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

- (id)menuItemsForAction:(int64_t)action
{
  contactCardActionMenuItems = 0;
  if (action <= 10)
  {
    if (action)
    {
      if (action != 2)
      {
        if (action != 4)
        {
          goto LABEL_12;
        }

        emergencyContactAction = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
        navigationListItems = [emergencyContactAction navigationListItems];
        v7 = [(CNContactContentUnitaryViewController *)self _menuItemsFromNavigationItems:navigationListItems isNested:0];
        goto LABEL_11;
      }

      addFavoriteAction = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
    }

    else
    {
      addFavoriteAction = [(CNContactContentUnitaryViewController *)self sendMessageAction];
    }

    emergencyContactAction = addFavoriteAction;
    navigationListItems = [addFavoriteAction actionsController];
    v7 = [(CNContactContentUnitaryViewController *)self _menuItemsFromActionsController:navigationListItems];
LABEL_11:
    contactCardActionMenuItems = v7;

    goto LABEL_12;
  }

  if ((action - 15) >= 5)
  {
    if (action == 11)
    {
      gameCenterAddFriendAction = [(CNContactContentUnitaryViewController *)self gameCenterAddFriendAction];
      contactCardActionMenuItems = [gameCenterAddFriendAction contactCardActionMenuItems];
    }
  }

  else
  {
    contactCardActionMenuItems = [(CNContactContentUnitaryViewController *)self _menuItemsForQuickAction:?];
  }

LABEL_12:

  return contactCardActionMenuItems;
}

- (id)parentGroups
{
  cardGroupMembershipGroup = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
  parentGroups = [cardGroupMembershipGroup parentGroups];

  return parentGroups;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  [(NSHashTable *)self->_actionsObservers addObject:observerCopy];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CNContactContentUnitaryViewController_addObserver___block_invoke;
  block[3] = &unk_1E74E6A88;
  v7 = observerCopy;
  v5 = observerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)performAction:(int64_t)action forContactIdentifier:(id)identifier sourceView:(id)view
{
  identifierCopy = identifier;
  viewCopy = view;
  switch(action)
  {
    case 0:
      sendMessageAction = [(CNContactContentUnitaryViewController *)self sendMessageAction];
      shouldPresentDisambiguationMenu = [sendMessageAction shouldPresentDisambiguationMenu];

      if ((shouldPresentDisambiguationMenu & 1) == 0)
      {
        sendMessageAction2 = [(CNContactContentUnitaryViewController *)self sendMessageAction];
        goto LABEL_24;
      }

      break;
    case 1:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self shareContactAction];
      goto LABEL_24;
    case 3:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self addToGroupAction];
      goto LABEL_24;
    case 4:
    case 25:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
      goto LABEL_24;
    case 5:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self medicalIDAction];
      goto LABEL_24;
    case 6:
    case 20:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self blockAction];
      goto LABEL_24;
    case 7:
      if (identifierCopy)
      {
        cardLinkedCardsGroup = [(CNContactContentUnitaryViewController *)self cardLinkedCardsGroup];
        displayItems = [cardLinkedCardsGroup displayItems];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __87__CNContactContentUnitaryViewController_performAction_forContactIdentifier_sourceView___block_invoke;
        v28[3] = &unk_1E74E7330;
        v29 = identifierCopy;
        v26 = [displayItems _cn_firstObjectPassingTest:v28];

        if (v26)
        {
          linkedCardsAction = [(CNContactContentUnitaryViewController *)self linkedCardsAction];
          [linkedCardsAction performActionForItem:v26 sender:viewCopy];
        }
      }

      break;
    case 8:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self createNewContactAction];
      goto LABEL_24;
    case 9:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
      goto LABEL_24;
    case 10:
      if ([(CNContactContentUnitaryViewController *)self showingMeContact]&& [(CNContactContentUnitaryViewController *)self multiplePhoneNumbersTiedToAppleID])
      {
        onboardingController = [(CNContactContentUnitaryViewController *)self onboardingController];

        if (!onboardingController)
        {
          v17 = [CNSharedProfileOnboardingController alloc];
          contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
          v19 = [(CNSharedProfileOnboardingController *)v17 initWithContactStore:contactStore];
          [(CNContactContentUnitaryViewController *)self setOnboardingController:v19];

          onboardingController2 = [(CNContactContentUnitaryViewController *)self onboardingController];
          [onboardingController2 setDelegate:self];
        }

        onboardingController3 = [(CNContactContentUnitaryViewController *)self onboardingController];
        [onboardingController3 startVisualIdentityOnboardingForMultipleDevicesFromViewController:self];
      }

      else
      {
        [(CNContactContentUnitaryViewController *)self presentAvatarPosterEditor];
      }

      break;
    case 11:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self gameCenterAddFriendAction];
      goto LABEL_24;
    case 13:
      gameCenterPlayerViewWrapper = [(CNContactContentUnitaryViewController *)self gameCenterPlayerViewWrapper];
      relationshipResult = [gameCenterPlayerViewWrapper relationshipResult];
      relatedPlayer = [relationshipResult relatedPlayer];
      playerID = [relatedPlayer playerID];
      [CNGameCenterCell presentPlayerProfile:playerID];

      goto LABEL_26;
    case 14:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];
      goto LABEL_24;
    case 21:
    case 22:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self blockReportAction];
      goto LABEL_24;
    case 23:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
LABEL_24:
      gameCenterPlayerViewWrapper = sendMessageAction2;
      v15 = viewCopy;
      goto LABEL_25;
    case 24:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self editNameAction];
      goto LABEL_9;
    case 27:
      sendMessageAction2 = [(CNContactContentUnitaryViewController *)self addNameAction];
LABEL_9:
      gameCenterPlayerViewWrapper = sendMessageAction2;
      v15 = 0;
LABEL_25:
      [sendMessageAction2 performActionWithSender:v15];
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:26])
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
    multiplePhoneNumbersTiedToAppleID = [v4 multiplePhoneNumbersTiedToAppleID];
  }

  else
  {
    multiplePhoneNumbersTiedToAppleID = 0;
  }

  return multiplePhoneNumbersTiedToAppleID;
}

- (BOOL)supportsAction:(int64_t)action
{
  v4 = 1;
  switch(action)
  {
    case 0:
      sendMessageAction = [(CNContactContentUnitaryViewController *)self sendMessageAction];
      goto LABEL_35;
    case 1:
      sendMessageAction = [(CNContactContentUnitaryViewController *)self shareContactAction];
      goto LABEL_35;
    case 2:
      sendMessageAction = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
      goto LABEL_35;
    case 3:
      sendMessageAction = [(CNContactContentUnitaryViewController *)self addToGroupAction];
      goto LABEL_35;
    case 4:
      emergencyContactAction = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
      addingToEmergency = [emergencyContactAction addingToEmergency];

      return addingToEmergency;
    case 5:
      sendMessageAction = [(CNContactContentUnitaryViewController *)self medicalIDAction];
      goto LABEL_35;
    case 6:
      blockAction = [(CNContactContentUnitaryViewController *)self blockAction];
      if (!blockAction)
      {
        goto LABEL_32;
      }

      blockAction2 = [(CNContactContentUnitaryViewController *)self blockAction];
      goto LABEL_21;
    case 7:
      sendMessageAction = [(CNContactContentUnitaryViewController *)self linkedCardsAction];
      goto LABEL_35;
    case 8:
      sendMessageAction = [(CNContactContentUnitaryViewController *)self createNewContactAction];
      goto LABEL_35;
    case 9:
      sendMessageAction = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
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
      blockAction = [(CNContactContentUnitaryViewController *)self blockAction];
      if (!blockAction)
      {
        goto LABEL_32;
      }

      blockAction3 = [(CNContactContentUnitaryViewController *)self blockAction];
      goto LABEL_30;
    case 21:
      blockAction = [(CNContactContentUnitaryViewController *)self blockReportAction];
      if (!blockAction)
      {
        goto LABEL_32;
      }

      blockAction2 = [(CNContactContentUnitaryViewController *)self blockReportAction];
LABEL_21:
      emergencyContactAction2 = blockAction2;
      addingToEmergency2 = [blockAction2 isContactBlockedPreservingChanges:1];
      goto LABEL_24;
    case 22:
      blockAction = [(CNContactContentUnitaryViewController *)self blockReportAction];
      if (!blockAction)
      {
        goto LABEL_32;
      }

      blockAction3 = [(CNContactContentUnitaryViewController *)self blockReportAction];
LABEL_30:
      emergencyContactAction2 = blockAction3;
      v4 = [blockAction3 isContactBlockedPreservingChanges:1];
      goto LABEL_31;
    case 23:
      sendMessageAction = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
LABEL_35:
      v4 = sendMessageAction != 0;

      return v4;
    case 24:
      v6 = 2488;
      return *(&self->super.super.super.super.isa + v6) != 0;
    case 25:
      blockAction = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
      if (blockAction)
      {
        emergencyContactAction2 = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
        addingToEmergency2 = [emergencyContactAction2 addingToEmergency];
LABEL_24:
        v4 = addingToEmergency2 ^ 1;
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
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    actionsObservers = self->_actionsObservers;
    self->_actionsObservers = weakObjectsHashTable;

    pendingContactCardPropertyViewConfiguration = [(CNContactContentUnitaryViewController *)self pendingContactCardPropertyViewConfiguration];
    v6 = [pendingContactCardPropertyViewConfiguration copy];

    v7 = [_TtC10ContactsUI32ContactCardSwiftUIViewController alloc];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
    customViewConfiguration = [(CNContactContentUnitaryViewController *)self customViewConfiguration];
    isInlineContactCard = [(CNContactContentUnitaryViewController *)self isInlineContactCard];
    geminiDataSource = [(CNContactContentUnitaryViewController *)self geminiDataSource];
    geminiManager = [geminiDataSource geminiManager];
    v14 = [(ContactCardSwiftUIViewController *)v7 initWithContact:contact contactStore:contactStore actionsProvider:self customViewConfiguration:customViewConfiguration propertyViewConfiguration:v6 isInlineContactCard:isInlineContactCard geminiManager:geminiManager];
    displayContactCardViewController = self->_displayContactCardViewController;
    self->_displayContactCardViewController = v14;

    view = [(ContactCardSwiftUIViewController *)self->_displayContactCardViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v17 = self->_displayContactCardViewController;

  return v17;
}

- (void)loadDisplayModeContactCardVewController
{
  if ([(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard])
  {
    displayContactCardViewController = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
    [(CNContactContentUnitaryViewController *)self addChildViewController:displayContactCardViewController];

    view = [(CNContactContentUnitaryViewController *)self view];
    displayContactCardViewController2 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
    view2 = [displayContactCardViewController2 view];
    [view addSubview:view2];

    displayContactCardViewController3 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
    [displayContactCardViewController3 didMoveToParentViewController:self];
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
  selfCopy = self;
  v62 = *MEMORY[0x1E69E9840];
  cachedVerifiedHandles = [(CNContactContentUnitaryViewController *)self cachedVerifiedHandles];

  if (!cachedVerifiedHandles)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    [(CNContactContentUnitaryViewController *)selfCopy setCachedVerifiedHandles:v4];

    if (![(CNContactContentUnitaryViewController *)selfCopy didFindStaticIdentity]|| ([(CNContactContentUnitaryViewController *)selfCopy cachedStaticIdentity], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
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
          propertyGroups = [(CNContactContentUnitaryViewController *)selfCopy propertyGroups];
          v13 = [propertyGroups objectForKeyedSubscript:v11];

          displayItems = [v13 displayItems];
          v15 = [displayItems count];

          if (v15)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            displayItems2 = [v13 displayItems];
            v17 = [displayItems2 countByEnumeratingWithState:&v45 objects:v57 count:16];
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
                  objc_enumerationMutation(displayItems2);
                }

                v21 = *(*(&v45 + 1) + 8 * i);
                labeledValue = [v21 labeledValue];
                value = [labeledValue value];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [MEMORY[0x1E6996AE8] idsIDForPhoneNumber:value];
                }

                else
                {
                  [MEMORY[0x1E6996AE8] idsIDForEmail:value];
                }
                v24 = ;
                if (v24)
                {
                  [(CNContactContentUnitaryViewController *)selfCopy cachedStaticIdentity];
                  v26 = v25 = selfCopy;
                  v27 = [v26 isHandleInStore:v24];

                  selfCopy = v25;
                  if (v27)
                  {
                    cachedVerifiedHandles2 = [(CNContactContentUnitaryViewController *)v25 cachedVerifiedHandles];
                    displayValue = [v21 displayValue];
                    [cachedVerifiedHandles2 addObject:displayValue];

                    v44 = 1;
                  }
                }
              }

              v18 = [displayItems2 countByEnumeratingWithState:&v45 objects:v57 count:16];
            }

            while (v18);

            v9 = v39;
            v8 = v40;
            v13 = v42;
            v10 = v43;
            if (v44)
            {
              displayItems2 = [(CNContactContentUnitaryViewController *)selfCopy contactView];
              [(CNContactContentUnitaryViewController *)selfCopy reloadCardGroup:v42 forTableView:displayItems2];
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

    [(CNContactContentUnitaryViewController *)selfCopy setDidFindStaticIdentity:0];
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
          propertyGroups2 = [(CNContactContentUnitaryViewController *)selfCopy propertyGroups];
          v37 = [propertyGroups2 objectForKeyedSubscript:v35];

          contactView = [(CNContactContentUnitaryViewController *)selfCopy contactView];
          [(CNContactContentUnitaryViewController *)selfCopy reloadCardGroup:v37 forTableView:contactView];
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
  displayItems = [v3 displayItems];

  if (displayItems && ([v3 displayItems], v5 = objc_claimAutoreleasedReturnValue(), v13[0] = MEMORY[0x1E69E9820], v13[1] = 3221225472, v13[2] = __69__CNContactContentUnitaryViewController__hasAtLeastOneVerifiedHandle__block_invoke, v13[3] = &unk_1E74E7108, v13[4] = self, v6 = objc_msgSend(v5, "_cn_any:", v13), v5, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CNContactContentUnitaryViewController *)self cardGroupForProperty:*MEMORY[0x1E695C330]];
    displayItems2 = [v8 displayItems];

    if (displayItems2)
    {
      displayItems3 = [v8 displayItems];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69__CNContactContentUnitaryViewController__hasAtLeastOneVerifiedHandle__block_invoke_2;
      v12[3] = &unk_1E74E7108;
      v12[4] = self;
      v7 = [displayItems3 _cn_any:v12];
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

- (void)alertDetailsNotVerified:(id)verified
{
  verifiedCopy = verified;
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
  selfCopy = self;
  v21 = verifiedCopy;
  v14 = verifiedCopy;
  v15 = [v11 actionWithTitle:v13 style:0 handler:&v16];
  [v10 addAction:{v15, v16, v17, v18, v19, selfCopy}];

  [(CNContactContentUnitaryViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)alertStaticIdentitySaveFailed:(id)failed
{
  failedCopy = failed;
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
  v14 = failedCopy;
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
  contact = [(CNContactContentUnitaryViewController *)self contact];
  wallpaper = [contact wallpaper];
  posterArchiveData = [wallpaper posterArchiveData];
  if ((*(v2 + 16))(v2, posterArchiveData))
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
    headerViewBackgroundColors = [(CNContactContentUnitaryViewController *)self headerViewBackgroundColors];
    headerViewBackgroundColors2 = [(CNContactContentUnitaryViewController *)self headerViewBackgroundColors];
    v4 = [headerViewBackgroundColors2 count];

    if (v4 == 1)
    {
      headerViewBackgroundColors3 = [(CNContactContentUnitaryViewController *)self headerViewBackgroundColors];
      firstObject = [headerViewBackgroundColors3 firstObject];
      contactViewBackgroundView = [(CNContactContentUnitaryViewController *)self contactViewBackgroundView];
      [contactViewBackgroundView setBackgroundColor:firstObject];

      contactViewBackgroundGradientLayer = [(CNContactContentUnitaryViewController *)self contactViewBackgroundGradientLayer];
      [contactViewBackgroundGradientLayer setColors:0];
    }

    else
    {
      contactViewBackgroundView2 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundView];
      [contactViewBackgroundView2 setBackgroundColor:0];

      contactView = [(CNContactContentUnitaryViewController *)self contactView];
      [contactView bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      contactViewBackgroundGradientLayer2 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundGradientLayer];
      [contactViewBackgroundGradientLayer2 setFrame:{v12, v14, v16, v18}];

      v20 = [headerViewBackgroundColors _cn_map:&__block_literal_global_1077];
      _cn_reversed = [v20 _cn_reversed];
      contactViewBackgroundGradientLayer3 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundGradientLayer];
      [contactViewBackgroundGradientLayer3 setColors:_cn_reversed];

      contactViewBackgroundGradientLayer4 = [(CNContactContentUnitaryViewController *)self contactViewBackgroundGradientLayer];
      [contactViewBackgroundGradientLayer4 setStartPoint:{0.0, 0.5}];

      contactViewBackgroundGradientLayer = [(CNContactContentUnitaryViewController *)self contactViewBackgroundGradientLayer];
      [contactViewBackgroundGradientLayer setEndPoint:{1.0, 0.5}];
    }

    displayFloatingCollapsedHeaderView = self->_displayFloatingCollapsedHeaderView;
    headerViewBackgroundColors4 = [(CNContactContentUnitaryViewController *)self headerViewBackgroundColors];
    [(CNContactHeaderCollapsedView *)displayFloatingCollapsedHeaderView updateBackgroundWithGradientColors:headerViewBackgroundColors4 horizontal:1];
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
    headerViewBackgroundColors = [(CNContactContentUnitaryViewController *)self headerViewBackgroundColors];
    if ((*(v3 + 16))(v3, headerViewBackgroundColors))
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
    backgroundColor2 = +[CNUIColorRepository transparentBackgroundColor];
  }

  else
  {
    backgroundColor = [v3 backgroundColor];

    if (!backgroundColor)
    {
      goto LABEL_10;
    }

    backgroundColor2 = [v3 backgroundColor];
  }

  v6 = backgroundColor2;
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView setBackgroundColor:v6];

LABEL_10:
  sectionBackgroundColor = [v3 sectionBackgroundColor];
  contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView2 setSectionBackgroundColor:sectionBackgroundColor];

  separatorColor = [v3 separatorColor];
  contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView3 setSeparatorColor:separatorColor];

  selectedCellBackgroundColor = [v3 selectedCellBackgroundColor];
  contactView4 = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView4 setSelectedCellBackgroundColor:selectedCellBackgroundColor];

  v14 = MEMORY[0x1E695DF90];
  contactView5 = [(CNContactContentUnitaryViewController *)self contactView];
  valueTextAttributes = [contactView5 valueTextAttributes];
  v17 = [v14 dictionaryWithDictionary:valueTextAttributes];

  v18 = *MEMORY[0x1E69DB650];
  v78[0] = *MEMORY[0x1E69DB650];
  textColor = [v3 textColor];
  v78[1] = @"ABNotesTextColorAttributeName";
  v79[0] = textColor;
  notesTextColor = [v3 notesTextColor];
  v79[1] = notesTextColor;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
  [v17 addEntriesFromDictionary:v21];

  contactView6 = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView6 setValueTextAttributes:v17];

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
    environment = [(CNContactContentUnitaryViewController *)self environment];
    runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

    if (runningInContactsAppOniPad)
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
      contactHeaderBackgroundColor = [v3 contactHeaderBackgroundColor];
      [(CNContactHeaderDisplayView *)self->_displayHeaderView setBackgroundColor:contactHeaderBackgroundColor];

      contactHeaderBackgroundColor2 = [v3 contactHeaderBackgroundColor];
      [(CNContactHeaderEditView *)self->_editingHeaderView setBackgroundColor:contactHeaderBackgroundColor2];

      contactHeaderBackgroundColor3 = [v3 contactHeaderBackgroundColor];
      [(UIView *)self->_editingFloatingCollapsedHeaderView setBackgroundColor:contactHeaderBackgroundColor3];

      [v3 contactHeaderBackgroundColor];
    }
    v26 = ;
  }

  [(CNContactActionsContainerView *)self->_actionsWrapperView setBackgroundColor:v26];

  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  shouldUseStaticHeader = [(CNContactContentUnitaryViewController *)self shouldUseStaticHeader];
  if (!shouldUseStaticHeader || !ab_preferredContentSizeCategoryIsAccessibilityCategory)
  {
    if (!shouldUseStaticHeader)
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
  textColor2 = [v3 textColor];
  v77 = textColor2;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  [editingHeaderView cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v41];

  displayHeaderView = self->_displayHeaderView;
  v74 = v18;
  taglineTextColor = [v3 taglineTextColor];
  v75 = taglineTextColor;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  [displayHeaderView cn_updateDictionaryForKey:@"taglineTextAttributes" withChanges:v44];

  if (ab_preferredContentSizeCategoryIsAccessibilityCategory & 1 | ![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    actionsViewController = [(CNContactContentUnitaryViewController *)self actionsViewController];
    [actionsViewController setViewStyle:{objc_msgSend(v3, "topActionsViewStyle")}];
  }

  else
  {
    floatingActionsViewController = [(CNContactContentUnitaryViewController *)self floatingActionsViewController];
    [floatingActionsViewController setViewStyle:10];

    floatingActionsViewController2 = [(CNContactContentUnitaryViewController *)self floatingActionsViewController];
    actionsView = [floatingActionsViewController2 actionsView];
    [actionsView setEnableVisualEffectViewCaptureView:0];

    actionsViewController2 = [(CNContactContentUnitaryViewController *)self actionsViewController];
    [actionsViewController2 setViewStyle:10];

    actionsViewController = +[CNUIColorRepository contactCardStaticHeaderDefaultTintColor];
    [(CNContactInlineActionsViewController *)self->_actionsViewController setPosterTintColor:actionsViewController];
    [(CNContactInlineActionsViewController *)self->_floatingActionsViewController setPosterTintColor:actionsViewController];
  }

  usesOpaqueBackground = [v3 usesOpaqueBackground];
  actionsViewController3 = [(CNContactContentUnitaryViewController *)self actionsViewController];
  view = [actionsViewController3 view];
  layer = [view layer];
  v54 = layer;
  if (usesOpaqueBackground)
  {
    [layer setShadowRadius:8.0];

    actionsViewController4 = [(CNContactContentUnitaryViewController *)self actionsViewController];
    view2 = [actionsViewController4 view];
    layer2 = [view2 layer];
    [layer2 setShadowOffset:{0.0, 2.0}];

    actionsViewController5 = [(CNContactContentUnitaryViewController *)self actionsViewController];
    view3 = [actionsViewController5 view];
    layer3 = [view3 layer];
    v61 = 1025758986;
    LODWORD(v62) = 1025758986;
    [layer3 setShadowOpacity:v62];

    if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      goto LABEL_30;
    }

    floatingActionsViewController3 = [(CNContactContentUnitaryViewController *)self floatingActionsViewController];
    view4 = [floatingActionsViewController3 view];
    layer4 = [view4 layer];
    [layer4 setShadowRadius:8.0];

    floatingActionsViewController4 = [(CNContactContentUnitaryViewController *)self floatingActionsViewController];
    view5 = [floatingActionsViewController4 view];
    layer5 = [view5 layer];
    [layer5 setShadowOffset:{0.0, 2.0}];
  }

  else
  {
    v61 = 0;
    [layer setShadowOpacity:0.0];

    if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      goto LABEL_30;
    }
  }

  floatingActionsViewController5 = [(CNContactContentUnitaryViewController *)self floatingActionsViewController];
  view6 = [floatingActionsViewController5 view];
  layer6 = [view6 layer];
  LODWORD(v72) = v61;
  [layer6 setShadowOpacity:v72];

LABEL_30:

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
  [(CNContactContentUnitaryViewController *)self keyboardVerticalOverlap];
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
  if ([(CNContactContentViewController *)self hideHeaderView])
  {
    goto LABEL_2;
  }

  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [contactHeaderView minHeight];
    v11 = v13;

    contactHeaderView2 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [contactHeaderView2 maxHeight];
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
      actionsWrapperView = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [actionsWrapperView frame];
      v9 = v17;
    }
  }

  [viewCopy _systemContentInset];
  v5 = v9 + v10 - v18;
  [viewCopy bounds];
  v20 = v10 - v11 + v19;
  [viewCopy _systemContentInset];
  v22 = v20 - v21 - v5;
  [viewCopy _systemContentInset];
  v24 = v23;
  [(CNContactContentUnitaryViewController *)self keyboardVerticalOverlap];
  if (v24 >= v25)
  {
    v25 = v24;
  }

  v26 = v22 - v25;
  [viewCopy contentSize];
  if (v26 - v27 >= 0.0)
  {
    v28 = v26 - v27;
  }

  else
  {
    v28 = 0.0;
  }

  [viewCopy contentInset];
  v6 = v29;
  v7 = v30;
  [(CNContactContentUnitaryViewController *)self keyboardVerticalOverlap];
  if (v31 <= 0.0)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v50 = [featureFlags isFeatureEnabled:29];

    if (v50)
    {
      if (([(CNContactContentUnitaryViewController *)self isViewLoaded]& 1) != 0)
      {
        view = [(CNContactContentUnitaryViewController *)self view];
        [view safeAreaInsets];
        v53 = v52;
      }

      else
      {
        view = [(CNContactContentUnitaryViewController *)self parentViewController];
        v51View = [view view];
        [v51View safeAreaInsets];
        v53 = v60;
      }

      [viewCopy _systemContentInset];
      v55 = v53 - v61;
    }

    else
    {
      [viewCopy _systemContentInset];
      v55 = -v54;
    }

    goto LABEL_27;
  }

  view2 = [(CNContactContentUnitaryViewController *)self view];
  window = [view2 window];
  if (window)
  {
    v34 = window;
    view3 = [(CNContactContentUnitaryViewController *)self view];
    window2 = [view3 window];
    [window2 bounds];
    v38 = v37;
    [viewCopy bounds];
    v40 = v39;

    v41 = 0.0;
    if (v38 <= v40)
    {
      goto LABEL_24;
    }

    view4 = [(CNContactContentUnitaryViewController *)self view];
    window3 = [view4 window];
    [window3 bounds];
    v45 = v44;
    [viewCopy bounds];
    v41 = v45 - v46;

    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      goto LABEL_24;
    }

    view2 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [view2 minTitleOffset];
    v41 = v41 - v47;
  }

  else
  {
    v41 = 0.0;
  }

LABEL_24:
  [(CNContactContentUnitaryViewController *)self keyboardVerticalOverlap];
  v57 = v56;
  [viewCopy _systemContentInset];
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
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView layoutIfNeeded];
  actionsWrapperView = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
  [actionsWrapperView setNeedsLayout];

  actionsWrapperView2 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
  [actionsWrapperView2 layoutIfNeeded];

  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    floatingActionsWrapperView = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
    [floatingActionsWrapperView setNeedsLayout];

    floatingActionsWrapperView2 = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
    [floatingActionsWrapperView2 layoutIfNeeded];

    displayFloatingCollapsedHeaderView = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    [displayFloatingCollapsedHeaderView calculateLabelSizesIfNeeded];
  }

  contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  [contactHeaderView calculateLabelSizesIfNeeded];

  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    headerHeightConstraint = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
    [headerHeightConstraint constant];
    v11 = v10;
    contactHeaderView2 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [contactHeaderView2 minHeight];
    if (v11 > v13)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    headerDropShadowView = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    [headerDropShadowView setAlpha:v14];

    if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      goto LABEL_17;
    }

    [(CNContactContentUnitaryViewController *)self editingFloatingHeaderHeight];
    v17 = v16;
    editingFloatingHeaderHeightConstraint = [(CNContactContentUnitaryViewController *)self editingFloatingHeaderHeightConstraint];
    [editingFloatingHeaderHeightConstraint constant];
    v20 = v19;

    if (v20 != v17)
    {
      editingFloatingHeaderHeightConstraint2 = [(CNContactContentUnitaryViewController *)self editingFloatingHeaderHeightConstraint];
      [editingFloatingHeaderHeightConstraint2 setConstant:v17];
    }

    contactHeaderView3 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [contactHeaderView3 maxHeight];
    v24 = v23;
  }

  else
  {
    headerDropShadowView2 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    [headerDropShadowView2 setAlpha:1.0];

    if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      goto LABEL_17;
    }

    displayFloatingCollapsedHeaderView2 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    [displayFloatingCollapsedHeaderView2 maxHeight];
    v28 = v27;

    floatingHeaderHeightConstraint = [(CNContactContentUnitaryViewController *)self floatingHeaderHeightConstraint];
    [floatingHeaderHeightConstraint constant];
    v31 = v30;

    if (v31 != v28)
    {
      floatingHeaderHeightConstraint2 = [(CNContactContentUnitaryViewController *)self floatingHeaderHeightConstraint];
      [floatingHeaderHeightConstraint2 setConstant:v28];
    }

    [(CNContactContentUnitaryViewController *)self staticDisplayHeaderHeight];
    v24 = v33;
  }

  headerHeightConstraint2 = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
  [headerHeightConstraint2 constant];
  v36 = v35;

  if (v36 != v24)
  {
    headerHeightConstraint3 = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
    [headerHeightConstraint3 setConstant:v24];
  }

LABEL_17:
  contactHeaderView4 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  [contactHeaderView4 layoutIfNeeded];

  [(CNContactContentUnitaryViewController *)self updateInsetsIfNeededForTableView:contactView isEditing:[(CNContactContentUnitaryViewController *)self isEditing]];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    [(CNContactContentUnitaryViewController *)self updateCollapsedHeaderToMatchScrollViewState:contactView scrollDirection:2 animated:0];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self updateHeaderHeightToMatchScrollViewState:contactView scrollDirection:2 animated:0];
  }
}

- (void)updateInsetsIfNeededForTableView:(id)view isEditing:(BOOL)editing
{
  viewCopy = view;
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    [(CNContactContentUnitaryViewController *)self keyboardVerticalOverlap];
    if (v5 <= 0.0 || (-[CNContactContentUnitaryViewController view](self, "view"), v6 = objc_claimAutoreleasedReturnValue(), [v6 bounds], v8 = v7, v6, v8 <= 0.0))
    {
      contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
      contactHeaderView2 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
      [contactHeaderView2 maxHeight];
      v19 = contactHeaderView;
      v18 = 0;
    }

    else
    {
      view = [(CNContactContentUnitaryViewController *)self view];
      [view bounds];
      v11 = v10;
      [(CNContactContentUnitaryViewController *)self keyboardVerticalOverlap];
      v13 = v11 - v12 + -64.0;

      v14 = fmax(v13, 0.0);
      contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
      contactHeaderView2 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
      [contactHeaderView2 maxHeight];
      v18 = v14 <= v17;
      v19 = contactHeaderView;
      v20 = v14;
    }

    [v19 setConstrainedMaxHeight:v18 enabled:v20];
  }

  [viewCopy contentInset];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(CNContactContentUnitaryViewController *)self insetsForContactTableView:viewCopy];
  if (v30 != v24 || v29 != v22 || v32 != v28 || v31 != v26)
  {
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    [(CNContactContentUnitaryViewController *)self scrollIndicatorInsetsForContactTableView:viewCopy withContentInsets:?];
    [(CNContactContentUnitaryViewController *)self updateTableView:viewCopy contentInsetsTo:v36 withScrollIndicatorInsets:v37, v38, v39, v40, v41, v42, v43];
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
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    v5 = 0;
  }

  else
  {
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    v5 = contactView == animationCopy;
  }

  return v5;
}

- (double)updateHeaderConstraintForGlobalHeaderHeight:(double)height direction:(int64_t)direction animated:(BOOL)animated
{
  v8 = [(CNContactContentUnitaryViewController *)self shouldUseStaticHeader:direction];
  result = 0.0;
  if (!v8)
  {
    v10 = 0.0;
    if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0 && (-[CNContactContentUnitaryViewController isEditing](self, "isEditing") & 1) == 0)
    {
      actionsWrapperView = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [actionsWrapperView frame];
      v10 = v12;
    }

    headerHeightConstraint = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
    [headerHeightConstraint constant];
    v15 = v14;

    if (height - v10 != v15 && (direction || height - v10 > v15))
    {
      headerHeightConstraint2 = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
      [headerHeightConstraint2 setConstant:height - v10];

      return height;
    }

    else
    {
      return v10 + v15;
    }
  }

  return result;
}

- (void)updateHeaderHeightToMatchScrollViewState:(id)state scrollDirection:(int64_t)direction animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    [stateCopy contentOffset];
    v9 = v8;
    [stateCopy contentInset];
    [(CNContactContentUnitaryViewController *)self globalHeaderHeightForContentOffset:v9 contentInset:v10, v11, v12, v13];
    [(CNContactContentUnitaryViewController *)self updateHeaderConstraintForGlobalHeaderHeight:direction direction:animatedCopy animated:?];
    v15 = v14;
    objc_opt_class();
    v16 = stateCopy;
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

- (double)globalHeaderHeightForContentOffset:(double)offset contentInset:(UIEdgeInsets)inset
{
  top = inset.top;
  v7 = 0.0;
  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0 && (-[CNContactContentUnitaryViewController isEditing](self, "isEditing") & 1) == 0)
  {
    actionsWrapperView = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
    [actionsWrapperView frame];
    v7 = v9;
  }

  contactView = [(CNContactContentUnitaryViewController *)self contactView];
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

  contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
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

- (void)updateDisplayCollapsedHeaderToMatchScrollViewState:(id)state scrollDirection:(int64_t)direction animated:(BOOL)animated
{
  stateCopy = state;
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]&& ([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    staticDisplayHeaderView = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    [staticDisplayHeaderView frame];
    v8 = v7;
    displayFloatingCollapsedHeaderView = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    [displayFloatingCollapsedHeaderView frame];
    v11 = v8 - v10;

    if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
    {
      actionsWrapperView = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [actionsWrapperView frame];
      v14 = v13;
    }

    else
    {
      actionsWrapperView = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
      [actionsWrapperView bottomMargin];
      v14 = v15;
    }

    v16 = v11 - v14;
    [stateCopy contentOffset];
    v18 = v17;
    v19 = v17 >= v16;
    displayFloatingCollapsedHeaderView2 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    isHidden = [displayFloatingCollapsedHeaderView2 isHidden];

    if (((v19 ^ isHidden) & 1) == 0)
    {
      v22 = (v18 >= v16) & ~[(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard];
      displayFloatingCollapsedHeaderView3 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [displayFloatingCollapsedHeaderView3 setHidden:v22 ^ 1];

      displayFloatingCollapsedHeaderView4 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [displayFloatingCollapsedHeaderView4 showLabelAndAvatar:v22 animated:1];
    }
  }
}

- (void)updateCollapsedHeaderToMatchScrollViewState:(id)state scrollDirection:(int64_t)direction animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]&& ([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    [(CNContactContentUnitaryViewController *)self updateDisplayCollapsedHeaderToMatchScrollViewState:stateCopy scrollDirection:direction animated:animatedCopy];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  draggingCopy = dragging;
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [contactHeaderView minHeight];
    v10 = v9;

    contactHeaderView2 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [contactHeaderView2 maxHeight];
    v13 = v12;

    if ([(CNContactContentUnitaryViewController *)self isScrollViewControllingHeaderResizeAnimation:draggingCopy])
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
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(CNContactContentUnitaryViewController *)self isScrollViewControllingHeaderResizeAnimation:?])
  {
    [scrollCopy _verticalVelocity];
    [(CNContactContentUnitaryViewController *)self updateHeaderHeightToMatchScrollViewState:scrollCopy scrollDirection:v4 >= 0.0 animated:1];
  }

  else if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    staticDisplayHeaderView = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    [scrollCopy contentOffset];
    [staticDisplayHeaderView updatePosterImageViewForScrollOffset:?];

    [(CNContactContentUnitaryViewController *)self updateCollapsedHeaderToMatchScrollViewState:scrollCopy scrollDirection:2 animated:0];
  }
}

- (void)setEditKeyboardShortcutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  editCommand = [(CNContactContentUnitaryViewController *)self editCommand];

  if (enabledCopy)
  {
    if (!editCommand)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"l" modifierFlags:0x100000 action:sel_toggleEditing_];
      [(CNContactContentUnitaryViewController *)self setEditCommand:v6];

      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"EDIT_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
      editCommand2 = [(CNContactContentUnitaryViewController *)self editCommand];
      [editCommand2 setDiscoverabilityTitle:v8];

      editCommand3 = [(CNContactContentUnitaryViewController *)self editCommand];
      [(CNContactContentUnitaryViewController *)self addKeyCommand:editCommand3];
    }
  }

  else if (editCommand)
  {
    editCommand4 = [(CNContactContentUnitaryViewController *)self editCommand];
    [(CNContactContentUnitaryViewController *)self removeKeyCommand:editCommand4];

    [(CNContactContentUnitaryViewController *)self setEditCommand:0];
  }
}

- (void)setCancelKeyboardShortcutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  cancelCommand = [(CNContactContentUnitaryViewController *)self cancelCommand];

  if (enabledCopy)
  {
    if (!cancelCommand)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_editCancel_];
      [(CNContactContentUnitaryViewController *)self setCancelCommand:v6];

      cancelCommand2 = [(CNContactContentUnitaryViewController *)self cancelCommand];
      [(CNContactContentUnitaryViewController *)self addKeyCommand:cancelCommand2];
    }
  }

  else if (cancelCommand)
  {
    cancelCommand3 = [(CNContactContentUnitaryViewController *)self cancelCommand];
    [(CNContactContentUnitaryViewController *)self removeKeyCommand:cancelCommand3];

    [(CNContactContentUnitaryViewController *)self setCancelCommand:0];
  }
}

- (void)setSaveKeyboardShortcutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  saveCommand = [(CNContactContentUnitaryViewController *)self saveCommand];

  if (enabledCopy)
  {
    if (!saveCommand)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"s" modifierFlags:0x100000 action:sel_toggleEditing_];
      [(CNContactContentUnitaryViewController *)self setSaveCommand:v6];

      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"SAVE_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
      saveCommand2 = [(CNContactContentUnitaryViewController *)self saveCommand];
      [saveCommand2 setDiscoverabilityTitle:v8];

      saveCommand3 = [(CNContactContentUnitaryViewController *)self saveCommand];
      [(CNContactContentUnitaryViewController *)self addKeyCommand:saveCommand3];
    }
  }

  else if (saveCommand)
  {
    saveCommand4 = [(CNContactContentUnitaryViewController *)self saveCommand];
    [(CNContactContentUnitaryViewController *)self removeKeyCommand:saveCommand4];

    [(CNContactContentUnitaryViewController *)self setSaveCommand:0];
  }
}

- (void)updateUserActivityState:(id)state
{
  stateCopy = state;
  activityManager = [(CNContactContentUnitaryViewController *)self activityManager];
  contact = [(CNContactContentUnitaryViewController *)self contact];
  [activityManager updateUserActivityState:stateCopy withContentsOfContact:contact];
}

- (void)_updateUserActivity
{
  v21 = *MEMORY[0x1E69E9840];
  if ((CNUIIsContacts() || CNUIIsMobilePhone()) && ([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
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

    activityManager = [(CNContactContentUnitaryViewController *)self activityManager];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    v8 = [activityManager makeActivityAdvertisingViewingOfContact:contact];

    userActivity = [(CNContactContentUnitaryViewController *)self userActivity];
    v10 = userActivity;
    if (v8)
    {

      if (!v10)
      {
        [(CNContactContentUnitaryViewController *)self setUserActivity:v8];
        userActivity2 = [(CNContactContentUnitaryViewController *)self userActivity];
        [userActivity2 becomeCurrent];

        v12 = CNUILogContactCard();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          userActivity3 = [(CNContactContentUnitaryViewController *)self userActivity];
          v17 = 138412546;
          selfCopy2 = self;
          v19 = 2112;
          v20 = userActivity3;
          _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_INFO, "Activity continuity -  %@ created %@", &v17, 0x16u);
        }
      }

      userActivity4 = [(CNContactContentUnitaryViewController *)self userActivity];
      [userActivity4 setNeedsSave:1];
    }

    else
    {
      [userActivity resignCurrent];

      v15 = CNUILogContactCard();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        userActivity5 = [(CNContactContentUnitaryViewController *)self userActivity];
        v17 = 138412546;
        selfCopy2 = self;
        v19 = 2112;
        v20 = userActivity5;
        _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_INFO, "Activity continuity -  %@ removed %@", &v17, 0x16u);
      }

      [(CNContactContentUnitaryViewController *)self setUserActivity:0];
    }
  }
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v18 encodeRestorableStateWithCoder:coderCopy];
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
          [coderCopy encodeObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  contact = [(CNContactContentUnitaryViewController *)self contact];
  identifier = [contact identifier];

  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"Identifier"];
  }
}

- (void)_addedGroupWithName:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = +[CNContactView nameProperties];
  v6 = [v5 containsObject:nameCopy];

  if (v6)
  {
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
    policy = [(CNContactContentUnitaryViewController *)self policy];
    linkedPoliciesByContactIdentifier = [(CNContactContentUnitaryViewController *)self linkedPoliciesByContactIdentifier];
    v11 = [(CNCardPropertyGroup *)CNCardPropertyNameGroup groupForProperty:nameCopy contact:mutableContact store:contactStore policy:policy linkedPolicies:linkedPoliciesByContactIdentifier];

    v12 = +[CNContactView nameProperties];
    v41 = v11;
    property = [v11 property];
    v14 = [v12 indexOfObject:property];

    selfCopy = self;
    aggregatedNameGroups = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
    groups = [aggregatedNameGroups groups];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = groups;
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
    v43 = nameCopy;
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
        property2 = [v23 property];
        v26 = [v24 indexOfObject:property2];

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

    nameEditingGroups = [(CNContactContentUnitaryViewController *)selfCopy nameEditingGroups];
    v29 = [nameEditingGroups mutableCopy];

    [v29 insertObject:v41 atIndex:v20];
    v30 = [v29 copy];
    [(CNContactContentUnitaryViewController *)selfCopy setNameEditingGroups:v30];

    contactView = [(CNContactContentUnitaryViewController *)selfCopy contactView];
    [contactView reloadData];

    aggregatedNameGroups2 = [(CNContactContentUnitaryViewController *)selfCopy aggregatedNameGroups];
    contactView2 = [(CNContactContentUnitaryViewController *)selfCopy contactView];
    v34 = [(CNContactContentUnitaryViewController *)selfCopy sectionOfGroup:aggregatedNameGroups2 inTableView:contactView2];

    v35 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v34];
    contactView3 = [(CNContactContentUnitaryViewController *)selfCopy contactView];
    v37 = [contactView3 cellForRowAtIndexPath:v35];

    firstResponderItem = [v37 firstResponderItem];
    [firstResponderItem becomeFirstResponder];

    contactView4 = [(CNContactContentUnitaryViewController *)selfCopy contactView];
    [contactView4 scrollToRowAtIndexPath:v35 atScrollPosition:2 animated:0];

    nameCopy = v43;
  }

  else if ([nameCopy isEqualToString:*MEMORY[0x1E695C1C0]])
  {
    addAddressingGrammarAction = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
    [addAddressingGrammarAction performActionWithSender:0];
  }
}

- (BOOL)_indexPathIsActionItem:(id)item forTableView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  v8 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [itemCopy section], viewCopy);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:itemCopy forTableView:viewCopy];
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

- (id)_itemAtIndexPath:(id)path forTableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
  aggregatedNameGroups = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
  v10 = aggregatedNameGroups;
  if (v8 == aggregatedNameGroups)
  {
    v11 = [pathCopy row];
    aggregatedNameGroups2 = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
    groups = [aggregatedNameGroups2 groups];
    v14 = [groups count];

    if (v11 < v14)
    {
      aggregatedNameGroups3 = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
      groups2 = [aggregatedNameGroups3 groups];
      v17 = [groups2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      editingItems = [v17 editingItems];
      firstObject = [editingItems firstObject];

      goto LABEL_14;
    }
  }

  else
  {
  }

  if ([(CNContactContentUnitaryViewController *)self isStandardGroup:v8])
  {
    if (self->_editingContactView == viewCopy)
    {
      [v8 editingItems];
    }

    else
    {
      [v8 displayItems];
    }
    actionItems = ;
  }

  else
  {
    if (![(CNContactContentUnitaryViewController *)self _indexPathIsActionItem:pathCopy forTableView:viewCopy])
    {
      firstObject = 0;
      goto LABEL_15;
    }

    actionItems = [v8 actionItems];
  }

  aggregatedNameGroups3 = actionItems;
  firstObject = [actionItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
LABEL_14:

LABEL_15:

  return firstObject;
}

- (id)_cardGroupAtTableViewSectionIndex:(int64_t)index forTableView:(id)view
{
  viewCopy = view;
  v7 = [(CNContactContentUnitaryViewController *)self groupIndexFromTableViewSectionIndex:index forTableView:viewCopy];
  v8 = [(CNContactContentUnitaryViewController *)self _currentGroupsForTableView:viewCopy];

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

- (id)_currentGroupsForTableView:(id)view
{
  if (self->_editingContactView == view)
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

- (void)_saveChangesForGroups:(id)groups
{
  v16 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [groupsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(groupsCopy);
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
      v6 = [groupsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
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
      contactView = [(CNContactContentUnitaryViewController *)selfCopy contactView];
      [(CNContactContentUnitaryViewController *)selfCopy reloadCardGroup:groupCopy forTableView:contactView];
    }
  }
}

- (BOOL)_modelIsEmpty
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  editingGroups = [(CNContactContentUnitaryViewController *)self editingGroups];
  v5 = [v3 arrayWithArray:editingGroups];

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
    editingHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
    hasPhoto = [editingHeaderView hasPhoto];

    v11 &= hasPhoto ^ 1;
  }

  return v11;
}

- (BOOL)_isGroupEmpty:(id)empty
{
  v45 = *MEMORY[0x1E69E9840];
  emptyCopy = empty;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = emptyCopy;
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
            normalizedValue = [v25 normalizedValue];
            if (normalizedValue)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || [normalizedValue length])
              {
                groups = v19;
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
    groups = v19;
    goto LABEL_46;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    groups = [emptyCopy groups];
    v29 = [groups countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (!v29)
    {
      v18 = 1;
      goto LABEL_47;
    }

    normalizedValue = 0;
    v8 = *v39;
    v27 = *v39;
    selfCopy = self;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(groups);
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
        normalizedValue = v11;
        v12 = [normalizedValue countByEnumeratingWithState:&v34 objects:v43 count:16];
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
                objc_enumerationMutation(normalizedValue);
              }

              v16 = *(*(&v34 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                normalizedValue2 = [v16 normalizedValue];
                if (normalizedValue2)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || [normalizedValue2 length])
                  {

                    v19 = normalizedValue;
LABEL_45:

                    v18 = 0;
                    goto LABEL_46;
                  }
                }
              }
            }

            v13 = [normalizedValue countByEnumeratingWithState:&v34 objects:v43 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        self = selfCopy;
        v8 = v27;
      }

      v18 = 1;
      v29 = [groups countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v29);
    v19 = normalizedValue;
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
  editingGroups = [(CNContactContentUnitaryViewController *)self editingGroups];
  v5 = [v3 arrayWithArray:editingGroups];

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
    editingHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
    photoIsModified = [editingHeaderView photoIsModified];

    editingHeaderView2 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
    v12 |= photoIsModified | [editingHeaderView2 wallpaperIsModified];
  }

  editingLinkedContacts = [(CNContactContentUnitaryViewController *)self editingLinkedContacts];

  groupEditingContext = [(CNContactContentUnitaryViewController *)self groupEditingContext];
  if (groupEditingContext)
  {
    groupEditingContext2 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
    addedGroups = [groupEditingContext2 addedGroups];
    if ([addedGroups count])
    {
      v20 = 1;
    }

    else
    {
      groupEditingContext3 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
      removedGroups = [groupEditingContext3 removedGroups];
      v20 = [removedGroups count] != 0;
    }
  }

  else
  {
    v20 = 0;
  }

  containerContext = [(CNContactContentUnitaryViewController *)self containerContext];
  addedContainers = [containerContext addedContainers];
  v25 = [addedContainers count];

  mode = [(CNContactContentUnitaryViewController *)self mode];
  v27 = [(CNContactContentUnitaryViewController *)self mode]== 4 || [(CNContactContentUnitaryViewController *)self mode]== 5;
  contact = [(CNContactContentUnitaryViewController *)self contact];
  if ([contact hasNonPersistedData])
  {
    shadowCopyOfReadonlyContact = [(CNContactContentUnitaryViewController *)self shadowCopyOfReadonlyContact];
    v30 = shadowCopyOfReadonlyContact == 0;
  }

  else
  {
    v30 = 0;
  }

  if (editingLinkedContacts)
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

  if (mode == 3)
  {
    v33 = 1;
  }

  else
  {
    v33 = v32;
  }

  cardStaticIdentityGroup = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
  didChange = [cardStaticIdentityGroup didChange];

  v36 = *MEMORY[0x1E6996530];
  deletedEditingGroups = [(CNContactContentUnitaryViewController *)self deletedEditingGroups];
  v38 = (*(v36 + 16))(v36, deletedEditingGroups);

  return v33 | (v27 || v30) | didChange | v38 ^ 1;
}

- (id)_loadNameEditingGroups
{
  v44 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  contact = [(CNContactContentUnitaryViewController *)self contact];
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
        prohibitedPropertyKeys = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
        v11 = [prohibitedPropertyKeys containsObject:v9];

        if ((v11 & 1) == 0)
        {
          contact2 = [(CNContactContentUnitaryViewController *)self contact];
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
            mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
            contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
            policy = [(CNContactContentUnitaryViewController *)self policy];
            linkedPoliciesByContactIdentifier = [(CNContactContentUnitaryViewController *)self linkedPoliciesByContactIdentifier];
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
  v49 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (!changes)
  {
    _loadNameEditingGroups = [(CNContactContentUnitaryViewController *)self _loadNameEditingGroups];
    [(CNContactContentUnitaryViewController *)self setNameEditingGroups:_loadNameEditingGroups];
  }

  aggregatedNameGroups = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
  [array addObject:aggregatedNameGroups];

  shouldShowGemini = [(CNContactContentUnitaryViewController *)self shouldShowGemini];
  [(CNContactContentUnitaryViewController *)self createCardEditingGeminiGroupIfNeeded];
  cardEditingGeminiGroup = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
  [cardEditingGeminiGroup setShouldShowGemini:shouldShowGemini];

  if ([(CNContactContentUnitaryViewController *)self shouldShowGemini])
  {
    cardEditingGeminiGroup2 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
    [array _cn_addNonNilObject:cardEditingGeminiGroup2];
  }

  v42 = array;
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
          selfCopy = self;
          propertyGroups = [(CNContactContentUnitaryViewController *)self propertyGroups];
          v20 = [propertyGroups objectForKeyedSubscript:v17];

          if (!v20)
          {
            goto LABEL_19;
          }

          editingItems = [v20 editingItems];
          v22 = (*(v15 + 16))(v15, editingItems);

          if (v22)
          {
            goto LABEL_19;
          }

          v23 = +[CNContactView addFieldCardProperties];
          if ([v23 containsObject:v17])
          {
            valueEditingItemsCount = [v20 valueEditingItemsCount];

            if (!valueEditingItemsCount)
            {
              goto LABEL_19;
            }
          }

          else
          {
          }

          [v42 addObject:v20];
LABEL_19:

          self = selfCopy;
          continue;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v12);
  }

  cardStaticIdentityGroup = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
  [v42 _cn_addNonNilObject:cardStaticIdentityGroup];

  cardEditingActionsGroup = [(CNContactContentUnitaryViewController *)self cardEditingActionsGroup];
  actions = [cardEditingActionsGroup actions];
  v28 = [actions count];

  if (v28)
  {
    cardEditingActionsGroup2 = [(CNContactContentUnitaryViewController *)self cardEditingActionsGroup];
    [v42 addObject:cardEditingActionsGroup2];
  }

  cardMedicalIDGroup = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
  actionItems = [cardMedicalIDGroup actionItems];
  v32 = [actionItems count];

  if (v32)
  {
    cardMedicalIDGroup2 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
    [v42 _cn_addNonNilObject:cardMedicalIDGroup2];
  }

  [(CNContactContentUnitaryViewController *)self createCardEditingContactContainerGroupIfNeeded];
  cardEditingContactContainerGroup = [(CNContactContentUnitaryViewController *)self cardEditingContactContainerGroup];
  [v42 _cn_addNonNilObject:cardEditingContactContainerGroup];

  cardLinkedCardsGroup = [(CNContactContentUnitaryViewController *)self cardLinkedCardsGroup];
  [v42 _cn_addNonNilObject:cardLinkedCardsGroup];

  cardGroupMembershipGroup = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
  [v42 _cn_addNonNilObject:cardGroupMembershipGroup];

  cardEditingDeleteContactGroup = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
  actions2 = [cardEditingDeleteContactGroup actions];
  v39 = [actions2 count];

  if (v39)
  {
    cardEditingDeleteContactGroup2 = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
    [v42 addObject:cardEditingDeleteContactGroup2];
  }

  return v42;
}

- (void)createCardEditingContactContainerGroupIfNeeded
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:13];

  if (v5)
  {
    if ([(CNContactContentUnitaryViewController *)self shouldAllowContainerPicking]&& ([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0)
    {
      v6 = [CNCardContactContainerGroup alloc];
      mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
      v8 = [(CNCardGroup *)v6 initWithContact:mutableContact];
      [(CNContactContentUnitaryViewController *)self setCardEditingContactContainerGroup:v8];

      containerContext = [(CNContactContentUnitaryViewController *)self containerContext];
      selectedContainers = [containerContext selectedContainers];
      cardEditingContactContainerGroup = [(CNContactContentUnitaryViewController *)self cardEditingContactContainerGroup];
      [cardEditingContactContainerGroup setContainers:selectedContainers];
    }

    else
    {

      [(CNContactContentUnitaryViewController *)self setCardEditingContactContainerGroup:0];
    }
  }
}

- (void)createCardEditingGeminiGroupIfNeeded
{
  cardEditingGeminiGroup = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];

  if (!cardEditingGeminiGroup)
  {
    propertyGroups = [(CNContactContentUnitaryViewController *)self propertyGroups];
    v5 = [propertyGroups objectForKeyedSubscript:*MEMORY[0x1E695C370]];
    [(CNContactContentUnitaryViewController *)self setCardEditingGeminiGroup:v5];

    cardEditingGeminiGroup2 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
    propertyItems = [cardEditingGeminiGroup2 propertyItems];
    v10 = [propertyItems objectAtIndexedSubscript:0];

    geminiDataSource = [(CNContactContentUnitaryViewController *)self geminiDataSource];
    geminiResult = [geminiDataSource geminiResult];
    [v10 setGeminiResult:geminiResult];

    [v10 setDelegate:self];
  }
}

- (void)_reloadGeminiGroupPreservingChanges:(BOOL)changes
{
  if (![(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard]&& !changes)
  {
    [(CNContactContentUnitaryViewController *)self setCardEditingGeminiGroup:0];
    geminiDataSource = [(CNContactContentUnitaryViewController *)self geminiDataSource];
    [geminiDataSource resetDataSource];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    [geminiDataSource setContact:contact];
  }
}

- (id)_loadDisplayGroups
{
  v89 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  cardTopGroup = [(CNContactContentUnitaryViewController *)self cardTopGroup];
  actions = [cardTopGroup actions];
  v7 = [actions count];

  v8 = array;
  if (v7)
  {
    cardTopGroup2 = [(CNContactContentUnitaryViewController *)self cardTopGroup];
    [array addObject:cardTopGroup2];
  }

  if ([(CNContactContentUnitaryViewController *)self allowsNamePicking])
  {
    namePickingGroup = [(CNContactContentUnitaryViewController *)self namePickingGroup];
    [array addObject:namePickingGroup];
  }

  cardTopGroup3 = [(CNContactContentUnitaryViewController *)self cardTopGroup];
  v12 = [(CNContactContentUnitaryViewController *)self _addGroupsInArray:array afterGroup:cardTopGroup3];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  displayedProperties = [(CNContactContentUnitaryViewController *)self displayedProperties];
  v14 = [displayedProperties countByEnumeratingWithState:&v83 objects:v88 count:16];
  v74 = array;
  if (v14)
  {
    v15 = v14;
    v16 = *v84;
    v78 = *MEMORY[0x1E695C1C0];
    v76 = *v84;
    v77 = *MEMORY[0x1E695C3C8];
    actions5 = 0x1E74DE000;
    v75 = displayedProperties;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v84 != v16)
        {
          objc_enumerationMutation(displayedProperties);
        }

        v18 = *(*(&v83 + 1) + 8 * i);
        if (([v18 isEqualToString:v78] & 1) == 0)
        {
          if (![v18 isEqualToString:v77])
          {
            goto LABEL_16;
          }

          displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
          v20 = [(CNContactContentUnitaryViewController *)self hasSharedProfileBannerSectionForTableView:displayContactView];

          if (!v20)
          {
            if ([(CNContactContentUnitaryViewController *)self shouldShowSharedProfileRow])
            {
              if ([(CNContactContentUnitaryViewController *)self showingMeContact])
              {
                meCardSharedProfileGroup = [(CNContactContentUnitaryViewController *)self meCardSharedProfileGroup];
                [v8 _cn_addNonNilObject:meCardSharedProfileGroup];
LABEL_30:

                continue;
              }

LABEL_16:
              propertyGroups = [(CNContactContentUnitaryViewController *)self propertyGroups];
              meCardSharedProfileGroup = [propertyGroups objectForKeyedSubscript:v18];

              displayItems = [meCardSharedProfileGroup displayItems];
              if ([displayItems count])
              {
                primaryProperty = [(CNContactContentViewController *)self primaryProperty];
                property = [meCardSharedProfileGroup property];
                v26 = [primaryProperty isEqualToString:property];

                displayedProperties = v75;
                if ((v26 & 1) == 0)
                {
                  [v8 addObject:meCardSharedProfileGroup];
                  v81 = 0u;
                  v82 = 0u;
                  v79 = 0u;
                  v80 = 0u;
                  displayItems = [meCardSharedProfileGroup displayItems];
                  v27 = [displayItems countByEnumeratingWithState:&v79 objects:v87 count:16];
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
                          objc_enumerationMutation(displayItems);
                        }

                        v31 = *(*(&v79 + 1) + 8 * j);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [v31 setDelegate:self];
                        }
                      }

                      v28 = [displayItems countByEnumeratingWithState:&v79 objects:v87 count:16];
                    }

                    while (v28);
                    v8 = v74;
                    displayedProperties = v75;
                  }

                  goto LABEL_28;
                }
              }

              else
              {
LABEL_28:
              }

              v32 = [(CNContactContentUnitaryViewController *)self _addGroupsInArray:v8 afterGroup:meCardSharedProfileGroup];
              v16 = v76;
              goto LABEL_30;
            }
          }
        }
      }

      v15 = [displayedProperties countByEnumeratingWithState:&v83 objects:v88 count:16];
    }

    while (v15);
  }

  cardBottomGroup = [(CNContactContentUnitaryViewController *)self cardBottomGroup];
  actions2 = [cardBottomGroup actions];
  v35 = v8;
  v36 = [actions2 count];

  if (v36)
  {
    cardBottomGroup2 = [(CNContactContentUnitaryViewController *)self cardBottomGroup];
    [v35 addObject:cardBottomGroup2];
  }

  cardBottomGroup3 = [(CNContactContentUnitaryViewController *)self cardBottomGroup];
  v39 = [(CNContactContentUnitaryViewController *)self _addGroupsInArray:v35 afterGroup:cardBottomGroup3];

  if (![(CNContactContentUnitaryViewController *)self hideCardActions])
  {
    cardActionsGroup = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    actions3 = [cardActionsGroup actions];
    v42 = [actions3 count];

    if (v42)
    {
      cardBottomGroup4 = [(CNContactContentUnitaryViewController *)self cardBottomGroup];
      actions4 = [cardBottomGroup4 actions];
      if (![actions4 count])
      {
        if (v39)
        {
          actions5 = [v39 actions];
          if ([actions5 count])
          {
            goto LABEL_42;
          }
        }

        primaryProperty2 = [(CNContactContentViewController *)self primaryProperty];
        if (!primaryProperty2)
        {
          contact = [(CNContactContentUnitaryViewController *)self contact];
          isSuggested = [contact isSuggested];

          if (v39)
          {
          }

          if ((isSuggested & 1) == 0)
          {
            v46 = 0;
            goto LABEL_45;
          }

LABEL_44:
          v46 = 1;
LABEL_45:
          cardActionsGroup2 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
          [cardActionsGroup2 setAddSpacerFromPreviousGroup:v46];

          cardActionsGroup3 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
          [v74 addObject:cardActionsGroup3];

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
  cardMedicalIDGroup = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
  if (cardMedicalIDGroup)
  {
    v50 = cardMedicalIDGroup;
    cardMedicalIDGroup2 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
    actionItems = [cardMedicalIDGroup2 actionItems];
    v53 = [actionItems count];

    if (v53)
    {
      cardMedicalIDGroup3 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
      [v74 addObject:cardMedicalIDGroup3];
    }
  }

  if (![(CNContactContentUnitaryViewController *)self hideCardActions])
  {
    cardShareLocationGroup = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
    actionItems2 = [cardShareLocationGroup actionItems];
    if ([actionItems2 count])
    {
      isContactBlocked = [(CNContactContentUnitaryViewController *)self isContactBlocked];

      if (isContactBlocked)
      {
        goto LABEL_55;
      }

      cardShareLocationGroup = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
      [v74 addObject:cardShareLocationGroup];
    }

    else
    {
    }
  }

LABEL_55:
  cardFooterGroup = [(CNContactContentUnitaryViewController *)self cardFooterGroup];
  actions6 = [cardFooterGroup actions];
  v60 = [actions6 count];

  if (v60)
  {
    cardFooterGroup2 = [(CNContactContentUnitaryViewController *)self cardFooterGroup];
    [v74 addObject:cardFooterGroup2];
  }

  if ([(CNContactContentUnitaryViewController *)self isSuggestedContact]|| [(CNContactContentUnitaryViewController *)self allowsContactBlocking]|| [(CNContactContentUnitaryViewController *)self allowsContactBlockingAndReporting])
  {
    cardBlockContactGroup = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
    actions7 = [cardBlockContactGroup actions];
    v64 = [actions7 count];

    if (v64)
    {
      showContactBlockingFirst = [(CNContactContentUnitaryViewController *)self showContactBlockingFirst];
      cardBlockContactGroup2 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      cardBlockContactGroup3 = cardBlockContactGroup2;
      if (showContactBlockingFirst)
      {
        [cardBlockContactGroup2 setAddSpacerFromPreviousGroup:0];

        cardBlockContactGroup3 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
        [v74 insertObject:cardBlockContactGroup3 atIndex:0];
      }

      else
      {
        [v74 addObject:cardBlockContactGroup2];
      }
    }
  }

  cardLinkedCardsGroup = [(CNContactContentUnitaryViewController *)self cardLinkedCardsGroup];

  if (cardLinkedCardsGroup)
  {
    cardLinkedCardsGroup2 = [(CNContactContentUnitaryViewController *)self cardLinkedCardsGroup];
    [v74 addObject:cardLinkedCardsGroup2];
  }

  if ([(CNContactContentUnitaryViewController *)self showsGroupMembership])
  {
    cardGroupMembershipGroup = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
    [v74 _cn_addNonNilObject:cardGroupMembershipGroup];
  }

  return v74;
}

- (id)_addGroupsInArray:(id)array afterGroup:(id)group
{
  v22 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  groupCopy = group;
  groupsAfterGroup = [(CNContactContentUnitaryViewController *)self groupsAfterGroup];
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
    if ([(CNContactContentUnitaryViewController *)self isEditing])
    {
      cardStaticIdentityGroup = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];

      if (!cardStaticIdentityGroup)
      {
        v7 = [CNCardStaticIdentityGroup alloc];
        mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
        v9 = [(CNCardStaticIdentityGroup *)v7 initWithContact:mutableContact];
        [(CNContactContentUnitaryViewController *)self setCardStaticIdentityGroup:v9];
      }

      cachedStaticIdentity = [(CNContactContentUnitaryViewController *)self cachedStaticIdentity];

      if (cachedStaticIdentity)
      {
        cardStaticIdentityGroup2 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
        cachedStaticIdentity2 = [(CNContactContentUnitaryViewController *)self cachedStaticIdentity];
        verificationCode = [cachedStaticIdentity2 verificationCode];
        [cardStaticIdentityGroup2 addIdentity:verificationCode isNew:0];
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
  ktWorkQueue = [(CNContactContentUnitaryViewController *)self ktWorkQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__CNContactContentUnitaryViewController__lookupStaticIdentity__block_invoke;
  v4[3] = &unk_1E74E6C98;
  objc_copyWeak(&v5, &location);
  [ktWorkQueue performBlock:v4];

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
  cardGroupMembershipGroup = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];

  if (cardGroupMembershipGroup)
  {
    cardGroupMembershipGroup2 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
    parentGroups = [cardGroupMembershipGroup2 parentGroups];

    v5 = [[CNUIGroupEditingContext alloc] initWithOriginalGroups:parentGroups];
    [(CNContactContentUnitaryViewController *)self setGroupEditingContext:v5];
  }
}

- (BOOL)hasExistingGroups
{
  contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
  hasGroups = [contactStore hasGroups];

  return hasGroups;
}

- (void)_reloadGroupMembershipGroup
{
  if (![(CNContactContentUnitaryViewController *)self showsGroupMembership])
  {
    return;
  }

  contact = [(CNContactContentUnitaryViewController *)self contact];
  if ([contact isSuggested])
  {
    goto LABEL_5;
  }

  contact2 = [(CNContactContentUnitaryViewController *)self contact];
  if ([contact2 isCoreRecentsAccepted])
  {

LABEL_5:
    goto LABEL_6;
  }

  hasExistingGroups = [(CNContactContentUnitaryViewController *)self hasExistingGroups];

  if (hasExistingGroups)
  {
    if (!self->_addToGroupAction)
    {
      _addToGroupAction = [(CNContactContentUnitaryViewController *)self _addToGroupAction];
      addToGroupAction = self->_addToGroupAction;
      self->_addToGroupAction = _addToGroupAction;
    }

    v10 = [CNCardGroupMembershipGroup alloc];
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    v12 = [(CNCardGroup *)v10 initWithContact:mutableContact];
    [(CNContactContentUnitaryViewController *)self setCardGroupMembershipGroup:v12];

    groupsAndContainersSaveManager = [(CNContactContentUnitaryViewController *)self groupsAndContainersSaveManager];
    contact3 = [(CNContactContentUnitaryViewController *)self contact];
    v27 = [groupsAndContainersSaveManager parentGroupsForContact:contact3];

    cardGroupMembershipGroup = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
    [cardGroupMembershipGroup setParentGroups:v27];

    addToGroupAction = [(CNContactContentUnitaryViewController *)self addToGroupAction];
    [addToGroupAction setContactParentGroups:v27];

    if ([(CNContactContentUnitaryViewController *)self allowsEditing])
    {
      cardGroupMembershipGroup2 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
      addToGroupAction2 = [(CNContactContentUnitaryViewController *)self addToGroupAction];
      v19 = CNContactsUIBundle();
      v20 = [v19 localizedStringForKey:@"ADD_TO_LIST_TABLE_CELL_TITLE_DISPLAY_MODE" value:&stru_1F0CE7398 table:@"Localized"];
      [cardGroupMembershipGroup2 addAction:addToGroupAction2 withTitle:v20];

      groupEditingContext = [(CNContactContentUnitaryViewController *)self groupEditingContext];
      if (groupEditingContext)
      {
      }

      else if ([(CNContactContentUnitaryViewController *)self isEditing])
      {
        [(CNContactContentUnitaryViewController *)self _reloadGroupEditingContext];
      }

      groupEditingContext2 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
      groupsToDisplayForEditing = [groupEditingContext2 groupsToDisplayForEditing];
      cardGroupMembershipGroup3 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
      [cardGroupMembershipGroup3 setGroupsToDisplayForEditing:groupsToDisplayForEditing];
    }

    if ([(CNContactContentUnitaryViewController *)self isEditing])
    {
      cardGroupMembershipGroup4 = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
      groupsToDisplayForEditing2 = [cardGroupMembershipGroup4 groupsToDisplayForEditing];
      [(CNContactAddToGroupAction *)self->_addToGroupAction setContactParentGroups:groupsToDisplayForEditing2];
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
      _linkedCardsAction = [(CNContactContentUnitaryViewController *)self _linkedCardsAction];
      linkedCardsAction = self->_linkedCardsAction;
      self->_linkedCardsAction = _linkedCardsAction;
    }

    addLinkedCardAction = self->_addLinkedCardAction;
    if (!addLinkedCardAction)
    {
      _addLinkedCardAction = [(CNContactContentUnitaryViewController *)self _addLinkedCardAction];
      v7 = self->_addLinkedCardAction;
      self->_addLinkedCardAction = _addLinkedCardAction;

      addLinkedCardAction = self->_addLinkedCardAction;
    }

    [(CNContactAddLinkedCardAction *)addLinkedCardAction setEditingLinkedContacts:self->_editingLinkedContacts];
    v8 = [CNCardLinkedCardsGroup alloc];
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    v10 = [(CNCardGroup *)v8 initWithContact:mutableContact];
    [(CNContactContentUnitaryViewController *)self setCardLinkedCardsGroup:v10];

    array = [MEMORY[0x1E695DF70] array];
    editingLinkedContacts = self->_editingLinkedContacts;
    if (editingLinkedContacts)
    {
      mainStoreLinkedContacts = editingLinkedContacts;
    }

    else
    {
      contact = [(CNContactContentUnitaryViewController *)self contact];
      mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
    }

    shadowCopyOfReadonlyContact = [(CNContactContentUnitaryViewController *)self shadowCopyOfReadonlyContact];

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
          for (i = 0; i != v18; ++i)
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [array addObject:{*(*(&v22 + 1) + 8 * i), v22}];
          }

          v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v18);
      }
    }

    if ([array count] > 1 || -[CNContactContentUnitaryViewController isEditing](self, "isEditing"))
    {
      cardLinkedCardsGroup = [(CNContactContentUnitaryViewController *)self cardLinkedCardsGroup];
      [cardLinkedCardsGroup setLinkedContacts:array];
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

- (BOOL)shouldReallyShowLinkedContactsForEditingState:(BOOL)state
{
  stateCopy = state;
  if ([(CNContactContentViewController *)self shouldShowLinkedContacts])
  {
    contact = [(CNContactContentUnitaryViewController *)self contact];
    mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
    v8 = [mainStoreLinkedContacts count];
    if (v8 < 2)
    {
      if (!stateCopy)
      {
        LOBYTE(v9) = 0;
        goto LABEL_11;
      }
    }

    else
    {
      shadowCopyOfReadonlyContact = [(CNContactContentUnitaryViewController *)self shadowCopyOfReadonlyContact];
      if (shadowCopyOfReadonlyContact && !stateCopy)
      {
        LOBYTE(v9) = 0;
        goto LABEL_9;
      }
    }

    contact2 = [(CNContactContentUnitaryViewController *)self contact];
    v9 = [contact2 isSuggestedMe] ^ 1;

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

- (void)_reloadContainerContextPreservingChanges:(BOOL)changes
{
  containerContext = [(CNContactContentUnitaryViewController *)self containerContext];

  if (containerContext)
  {
    if (!changes)
    {
      containerContext2 = [(CNContactContentUnitaryViewController *)self containerContext];
      [containerContext2 resetToInitialState];

      parentContainer = [(CNContactContentViewController *)self parentContainer];

      if (parentContainer)
      {
        containerContext3 = [(CNContactContentUnitaryViewController *)self containerContext];
        parentContainer2 = [(CNContactContentViewController *)self parentContainer];
        [containerContext3 addContainer:parentContainer2];
      }
    }
  }
}

- (void)_reloadAlertGroups
{
  propertyGroups = [(CNContactContentUnitaryViewController *)self propertyGroups];
  v4 = [propertyGroups objectForKeyedSubscript:*MEMORY[0x1E695C1E0]];
  [v4 setAllowsDisplayModePickerActions:{-[CNContactContentUnitaryViewController allowsDisplayModePickerActions](self, "allowsDisplayModePickerActions")}];

  propertyGroups2 = [(CNContactContentUnitaryViewController *)self propertyGroups];
  v5 = [propertyGroups2 objectForKeyedSubscript:*MEMORY[0x1E695C3F8]];
  [v5 setAllowsDisplayModePickerActions:{-[CNContactContentUnitaryViewController allowsDisplayModePickerActions](self, "allowsDisplayModePickerActions")}];
}

- (void)_reloadMedicalIDGroup
{
  environment = [(CNContactContentUnitaryViewController *)self environment];
  healthStoreManager = [environment healthStoreManager];

  medicalIDLookupToken = [(CNContactContentUnitaryViewController *)self medicalIDLookupToken];
  [medicalIDLookupToken cancel];

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
    contact = [(CNContactContentUnitaryViewController *)self contact];
    if ([contact isCoreRecentsAccepted])
    {
    }

    else
    {
      isContactBlocked = [(CNContactContentUnitaryViewController *)self isContactBlocked];

      if (!isContactBlocked)
      {
        objc_initWeak(&location, self);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __62__CNContactContentUnitaryViewController__reloadMedicalIDGroup__block_invoke;
        v21[3] = &unk_1E74E7268;
        objc_copyWeak(&v23, &location);
        v9 = healthStoreManager;
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

- (void)_addMedicalIDGroupAnimated:(BOOL)animated forTableView:(id)view
{
  animatedCopy = animated;
  viewCopy = view;
  if (self->_editingContactView == viewCopy)
  {
    editingGroups = [(CNContactContentUnitaryViewController *)self editingGroups];
    v8 = aBlock;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v9 = __81__CNContactContentUnitaryViewController__addMedicalIDGroupAnimated_forTableView___block_invoke;
  }

  else
  {
    editingGroups = [(CNContactContentUnitaryViewController *)self displayGroups];
    v8 = &v14;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v9 = __81__CNContactContentUnitaryViewController__addMedicalIDGroupAnimated_forTableView___block_invoke_2;
  }

  v8[2] = v9;
  v8[3] = &unk_1E74E7218;
  v8[4] = self;
  v10 = _Block_copy(v8);
  v11 = [editingGroups indexOfObjectPassingTest:v10];
  if (v11)
  {
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [editingGroups lastObject];
    }

    else
    {
      [editingGroups objectAtIndexedSubscript:v11 - 1];
    }
    v12 = ;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup:v14];
  [(CNContactContentUnitaryViewController *)self _addGroup:v13 afterGroup:v12 forTableView:viewCopy animated:animatedCopy];
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

- (void)_addGroup:(id)group afterGroup:(id)afterGroup forTableView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  v24 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  afterGroupCopy = afterGroup;
  viewCopy = view;
  if (afterGroupCopy)
  {
    [(CNContactContentUnitaryViewController *)self addCardGroup:groupCopy afterGroup:afterGroupCopy];
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
  if (afterGroupCopy && (v15 = [v13 indexOfObject:afterGroupCopy], v15 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v14 count];
  if (v17 == [viewCopy numberOfSections])
  {
    [viewCopy beginUpdates];
    [v14 insertObject:groupCopy atIndex:v16];
    v18 = [(CNContactContentUnitaryViewController *)self tableViewSectionIndexFromGroupIndex:v16 forTableView:viewCopy];
    v19 = [MEMORY[0x1E696AC90] indexSetWithIndex:v18];
    if (animatedCopy)
    {
      v20 = 6;
    }

    else
    {
      v20 = 5;
    }

    [viewCopy insertSections:v19 withRowAnimation:v20];

    [viewCopy endUpdates];
  }

  else
  {
    v21 = CNUILogContactCard();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = groupCopy;
      _os_log_impl(&dword_199A75000, v21, OS_LOG_TYPE_INFO, "Invalid number of sections detected when adding group %@", &v22, 0xCu);
    }

    [v14 insertObject:groupCopy atIndex:v16];
    [viewCopy reloadData];
  }

  [(CNContactContentUnitaryViewController *)self adjustPreferredContentSize];
}

- (void)_reloadMeCardSharedProfileGroup
{
  meCardSharedProfileGroup = [(CNContactContentUnitaryViewController *)self meCardSharedProfileGroup];

  if (!meCardSharedProfileGroup)
  {
    v4 = [CNMeCardSharedProfileGroup alloc];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    v6 = [(CNCardGroup *)v4 initWithContact:contact];
    [(CNContactContentUnitaryViewController *)self setMeCardSharedProfileGroup:v6];

    _sharedProfileSettingsAction = [(CNContactContentUnitaryViewController *)self _sharedProfileSettingsAction];
    meCardSharedProfileGroup2 = [(CNContactContentUnitaryViewController *)self meCardSharedProfileGroup];
    [meCardSharedProfileGroup2 setSharedProfileSettingsAction:_sharedProfileSettingsAction];
  }
}

- (void)_reloadSharedProfileGroup
{
  cardSharedProfileGroup = [(CNContactContentUnitaryViewController *)self cardSharedProfileGroup];
  if (!cardSharedProfileGroup)
  {
    if ([(CNContactContentUnitaryViewController *)self isContactBlocked])
    {
      return;
    }

    v4 = [CNCardSharedProfileGroup alloc];
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    v5 = [(CNCardGroup *)v4 initWithContact:mutableContact];
    [(CNContactContentUnitaryViewController *)self setCardSharedProfileGroup:v5];

    cardSharedProfileGroup = mutableContact;
  }
}

- (void)_reloadNamePickingGroup
{
  namePickingGroup = [(CNContactContentUnitaryViewController *)self namePickingGroup];

  if (!namePickingGroup)
  {
    v4 = [CNCardNamePickingGroup alloc];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    v5 = [(CNCardGroup *)v4 initWithContact:contact];
    [(CNContactContentUnitaryViewController *)self setNamePickingGroup:v5];
  }
}

- (BOOL)shouldAddGameCenterActionGroup
{
  shouldShowGameCenter = [(CNContactContentUnitaryViewController *)self shouldShowGameCenter];
  if (shouldShowGameCenter)
  {
    if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0 && ([(CNContactContentUnitaryViewController *)self displayGroups], v4 = objc_claimAutoreleasedReturnValue(), v4, v4) && ([(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      displayGroups = [(CNContactContentUnitaryViewController *)self displayGroups];
      cardGameCenterActionGroup = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
      v8 = [displayGroups _cn_containsObject:cardGameCenterActionGroup];

      LOBYTE(shouldShowGameCenter) = v8 ^ 1;
    }

    else
    {
      LOBYTE(shouldShowGameCenter) = 0;
    }
  }

  return shouldShowGameCenter;
}

- (BOOL)shouldAddGameCenterGroup
{
  shouldShowGameCenter = [(CNContactContentUnitaryViewController *)self shouldShowGameCenter];
  if (shouldShowGameCenter)
  {
    if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0 && ([(CNContactContentUnitaryViewController *)self displayGroups], v4 = objc_claimAutoreleasedReturnValue(), v4, v4) && ([(CNContactContentUnitaryViewController *)self gameCenterGroup], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      displayGroups = [(CNContactContentUnitaryViewController *)self displayGroups];
      gameCenterGroup = [(CNContactContentUnitaryViewController *)self gameCenterGroup];
      v8 = [displayGroups _cn_containsObject:gameCenterGroup];

      LOBYTE(shouldShowGameCenter) = v8 ^ 1;
    }

    else
    {
      LOBYTE(shouldShowGameCenter) = 0;
    }
  }

  return shouldShowGameCenter;
}

- (void)addGameCenterGroupAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CNContactContentUnitaryViewController *)self shouldShowGameCenter]&& [(CNContactContentUnitaryViewController *)self shouldAddGameCenterGroup])
  {
    displayGroups = [(CNContactContentUnitaryViewController *)self displayGroups];
    v6 = [displayGroups _cn_indexOfFirstObjectPassingTest:&__block_literal_global_997];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      displayGroups2 = [(CNContactContentUnitaryViewController *)self displayGroups];
      v6 = [displayGroups2 _cn_indexOfFirstObjectPassingTest:&__block_literal_global_999];
    }

    v11 = 0;
    if (v6 && v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      displayGroups3 = [(CNContactContentUnitaryViewController *)self displayGroups];
      v11 = [displayGroups3 objectAtIndexedSubscript:v6 - 1];
    }

    gameCenterGroup = [(CNContactContentUnitaryViewController *)self gameCenterGroup];
    displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
    [(CNContactContentUnitaryViewController *)self _addGroup:gameCenterGroup afterGroup:v11 forTableView:displayContactView animated:animatedCopy];
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

- (void)addGameCenterActionGroupAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CNContactContentUnitaryViewController *)self shouldShowGameCenter])
  {
    if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
    {
      displayGroups = [(CNContactContentUnitaryViewController *)self displayGroups];

      if (displayGroups)
      {
        displayGroups2 = [(CNContactContentUnitaryViewController *)self displayGroups];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __74__CNContactContentUnitaryViewController_addGameCenterActionGroupAnimated___block_invoke;
        v13[3] = &unk_1E74E6B20;
        v13[4] = self;
        v7 = [displayGroups2 _cn_indexOfFirstObjectPassingTest:v13];

        if (v7 && v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          displayGroups3 = [(CNContactContentUnitaryViewController *)self displayGroups];
          lastObject = [displayGroups3 objectAtIndexedSubscript:v7 - 1];
        }

        else
        {
          displayGroups3 = [(CNContactContentUnitaryViewController *)self displayGroups];
          lastObject = [displayGroups3 lastObject];
        }

        v10 = lastObject;

        cardGameCenterActionGroup = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
        displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
        [(CNContactContentUnitaryViewController *)self _addGroup:cardGameCenterActionGroup afterGroup:v10 forTableView:displayContactView animated:animatedCopy];
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

- (void)updateGameCenterGroupAndActionsForContact:(id)contact relationshipResults:(id)results
{
  contactCopy = contact;
  resultsCopy = results;
  if ([(CNContactContentUnitaryViewController *)self shouldShowGameCenter])
  {
    if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
    {
      mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
      v8 = [contactCopy isEqual:mutableContact];

      if (v8)
      {
        if ([CNCardGameCenterGroup relationshipResultsContainsFriend:resultsCopy])
        {
          gameCenterGroup = [(CNContactContentUnitaryViewController *)self gameCenterGroup];

          if (gameCenterGroup)
          {
            gameCenterGroup2 = [(CNContactContentUnitaryViewController *)self gameCenterGroup];
            [gameCenterGroup2 setRelationshipResults:resultsCopy];
          }

          else
          {
            v34 = [CNCardGameCenterGroup alloc];
            mutableContact2 = [(CNContactContentUnitaryViewController *)self mutableContact];
            v36 = [(CNCardGameCenterGroup *)v34 initWithContact:mutableContact2 relationshipResults:resultsCopy];
            [(CNContactContentUnitaryViewController *)self setGameCenterGroup:v36];

            [(CNContactContentUnitaryViewController *)self addGameCenterGroupAnimated:1];
          }

          self->_gameCenterFriendStatus = 1;
          v37 = objc_alloc(MEMORY[0x1E6996B58]);
          gameCenterGroup3 = [(CNContactContentUnitaryViewController *)self gameCenterGroup];
          relationshipResults = [gameCenterGroup3 relationshipResults];
          firstObject = [relationshipResults firstObject];
          v41 = [v37 initWithRelationshipResult:firstObject];
          gameCenterPlayerViewWrapper = self->_gameCenterPlayerViewWrapper;
          self->_gameCenterPlayerViewWrapper = v41;
        }

        else if (_os_feature_enabled_impl() && (-[CNContactContentUnitaryViewController gameCenterManager](self, "gameCenterManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 hasSentInvite], v11, v12))
        {
          cardGameCenterActionGroup = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];

          if (!cardGameCenterActionGroup)
          {
            v14 = [CNCardGroup alloc];
            mutableContact3 = [(CNContactContentUnitaryViewController *)self mutableContact];
            v16 = [(CNCardGroup *)v14 initWithContact:mutableContact3];
            [(CNContactContentUnitaryViewController *)self setCardGameCenterActionGroup:v16];
          }

          cardGameCenterActionGroup2 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
          [cardGameCenterActionGroup2 removeAllActions];

          cardGameCenterActionGroup3 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
          v19 = CNContactsUIBundle();
          v20 = [v19 localizedStringForKey:@"GAME_CENTER_ACTION_SENT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
          v21 = [cardGameCenterActionGroup3 addActionWithTitle:v20 target:self selector:sel__didTapGameCenterSentActionButton_NoOp];

          cardGameCenterActionGroup4 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
          [cardGameCenterActionGroup4 setDisplaysDropdownMenu:0];

          if ([(CNContactContentUnitaryViewController *)self shouldAddGameCenterActionGroup])
          {
            [(CNContactContentUnitaryViewController *)self addGameCenterActionGroupAnimated:1];
          }

          cardGameCenterActionGroup5 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
          displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
          [(CNContactContentUnitaryViewController *)self reloadCardGroup:cardGameCenterActionGroup5 forTableView:displayContactView];

          displayContactView2 = [(CNContactContentUnitaryViewController *)self displayContactView];
          [displayContactView2 reloadData];

          self->_gameCenterFriendStatus = 2;
        }

        else if ([CNCardGameCenterGroup shouldShowAddFriendActionForRelationshipResults:resultsCopy])
        {
          v26 = [CNCardGroup alloc];
          mutableContact4 = [(CNContactContentUnitaryViewController *)self mutableContact];
          v28 = [(CNCardGroup *)v26 initWithContact:mutableContact4];
          [(CNContactContentUnitaryViewController *)self setCardGameCenterActionGroup:v28];

          cardGameCenterActionGroup6 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
          [cardGameCenterActionGroup6 setDisplaysDropdownMenu:1];

          mutableContact5 = [(CNContactContentUnitaryViewController *)self mutableContact];
          v31 = [CNCardGameCenterGroup actionForRelationshipResults:resultsCopy forContact:mutableContact5];

          if (!v31)
          {
            goto LABEL_20;
          }

          [v31 setDelegate:self];
          [(CNContactContentUnitaryViewController *)self setGameCenterAddFriendAction:v31];
          cardGameCenterActionGroup7 = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
          title = [v31 title];
          [cardGameCenterActionGroup7 addAction:v31 withTitle:title];

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
    gameCenterManager = [(CNContactContentUnitaryViewController *)self gameCenterManager];
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __74__CNContactContentUnitaryViewController__reloadGameCenterGroupWithRefresh__block_invoke;
    v5[3] = &unk_1E74E71D0;
    v5[4] = self;
    [gameCenterManager refreshGameCenterRelationshipsForContact:mutableContact completionHandler:v5];
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
    gameCenterManager = [(CNContactContentUnitaryViewController *)self gameCenterManager];
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __76__CNContactContentUnitaryViewController__reloadGameCenterGroupWithPreflight__block_invoke;
    v5[3] = &unk_1E74E71D0;
    v5[4] = self;
    [gameCenterManager getGameCenterRelationshipsForContact:mutableContact completionHandler:v5];
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
    gameCenterManager = [(CNContactContentUnitaryViewController *)self gameCenterManager];

    if (!gameCenterManager)
    {
      v4 = objc_alloc_init(CNCardGameCenterManager);
      [(CNContactContentUnitaryViewController *)self setGameCenterManager:v4];
    }

    gameCenterManager2 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
    contact = [gameCenterManager2 contact];

    if (contact)
    {
      identifier = [contact identifier];
      mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
      identifier2 = [mutableContact identifier];
      v9 = [identifier isEqualToString:identifier2];

      if ((v9 & 1) == 0)
      {
        gameCenterManager3 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
        [gameCenterManager3 setHasSentInvite:0];
      }
    }

    mutableContact2 = [(CNContactContentUnitaryViewController *)self mutableContact];
    gameCenterManager4 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
    [gameCenterManager4 setContact:mutableContact2];

    environment = [(CNContactContentUnitaryViewController *)self environment];
    recentsManager = [environment recentsManager];
    gameCenterManager5 = [(CNContactContentUnitaryViewController *)self gameCenterManager];
    [gameCenterManager5 setRecentsManager:recentsManager];

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

  displayGroups = [(CNContactContentUnitaryViewController *)self displayGroups];

  if (!displayGroups)
  {
    return 0;
  }

  cardShareLocationGroup = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];

  if (!cardShareLocationGroup)
  {
    return 0;
  }

  displayGroups2 = [(CNContactContentUnitaryViewController *)self displayGroups];
  cardShareLocationGroup2 = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
  v7 = [displayGroups2 _cn_containsObject:cardShareLocationGroup2];

  return v7 ^ 1;
}

- (void)_addShareLocationGroupAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CNContactContentUnitaryViewController *)self shouldAddShareLocationGroup])
  {
    if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
    {
      displayGroups = [(CNContactContentUnitaryViewController *)self displayGroups];

      if (displayGroups)
      {
        displayGroups2 = [(CNContactContentUnitaryViewController *)self displayGroups];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __72__CNContactContentUnitaryViewController__addShareLocationGroupAnimated___block_invoke;
        v13[3] = &unk_1E74E6B20;
        v13[4] = self;
        v7 = [displayGroups2 _cn_indexOfFirstObjectPassingTest:v13];

        if (v7 && v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          displayGroups3 = [(CNContactContentUnitaryViewController *)self displayGroups];
          lastObject = [displayGroups3 objectAtIndexedSubscript:v7 - 1];
        }

        else
        {
          displayGroups3 = [(CNContactContentUnitaryViewController *)self displayGroups];
          lastObject = [displayGroups3 lastObject];
        }

        v10 = lastObject;

        cardShareLocationGroup = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
        displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
        [(CNContactContentUnitaryViewController *)self _addGroup:cardShareLocationGroup afterGroup:v10 forTableView:displayContactView animated:animatedCopy];
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

  displayGroups = [(CNContactContentUnitaryViewController *)self displayGroups];

  if (!displayGroups)
  {
    return 0;
  }

  cardDefaultAppGroup = [(CNContactContentUnitaryViewController *)self cardDefaultAppGroup];

  if (!cardDefaultAppGroup)
  {
    return 0;
  }

  displayGroups2 = [(CNContactContentUnitaryViewController *)self displayGroups];
  cardDefaultAppGroup2 = [(CNContactContentUnitaryViewController *)self cardDefaultAppGroup];
  v7 = [displayGroups2 containsObject:cardDefaultAppGroup2];

  if (v7)
  {
    return 0;
  }

  cardDefaultAppGroup3 = [(CNContactContentUnitaryViewController *)self cardDefaultAppGroup];
  contact = [cardDefaultAppGroup3 contact];

  displayGroups3 = [(CNContactContentUnitaryViewController *)self displayGroups];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__CNContactContentUnitaryViewController_shouldAddDefaultAppGroup__block_invoke;
  v14[3] = &unk_1E74E71A8;
  v15 = contact;
  v13 = contact;
  LOBYTE(contact) = [displayGroups3 _cn_any:v14];

  v8 = contact ^ 1;
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

- (void)_addDefaultAppGroupAnimated:(BOOL)animated
{
  animatedCopy = animated;
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

      firstObject = [v7 firstObject];
      cardDefaultAppGroup = [(CNContactContentUnitaryViewController *)self cardDefaultAppGroup];
      displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
      [(CNContactContentUnitaryViewController *)self _addGroup:cardDefaultAppGroup afterGroup:firstObject forTableView:displayContactView animated:animatedCopy];
    }
  }
}

- (void)_reloadDefaultAppGroup
{
  if ([(CNContactContentUnitaryViewController *)self shouldAddDefaultAppGroup])
  {
    v16 = +[CNCapabilitiesManager defaultCapabilitiesManager];
    isDefaultPhoneCallAppThirdParty = [v16 isDefaultPhoneCallAppThirdParty];
    v4 = v16;
    if (isDefaultPhoneCallAppThirdParty)
    {
      defaultPhoneCallAppBundleIdentifier = [v16 defaultPhoneCallAppBundleIdentifier];
      v6 = +[CNUIContactsEnvironment currentEnvironment];
      actionDiscoveringEnvironment = [v6 actionDiscoveringEnvironment];
      callProviderManager = [actionDiscoveringEnvironment callProviderManager];

      v9 = [callProviderManager thirdPartyCallProviderWithBundleIdentifier:defaultPhoneCallAppBundleIdentifier];
      contact = [(CNContactContentUnitaryViewController *)self contact];
      v11 = [v9 doesContactHaveSupportedHandles:contact];

      if (v11)
      {
        [(CNContactContentUnitaryViewController *)self setDefaultAppProvider:v9];
        cardDefaultAppGroup = [(CNContactContentUnitaryViewController *)self cardDefaultAppGroup];

        if (!cardDefaultAppGroup)
        {
          v13 = [CNCardDefaultAppGroup alloc];
          mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
          v15 = [(CNCardGroup *)v13 initWithContact:mutableContact];
          [(CNContactContentUnitaryViewController *)self setCardDefaultAppGroup:v15];
        }
      }

      v4 = v16;
    }

    MEMORY[0x1EEE66BB8](isDefaultPhoneCallAppThirdParty, v4);
  }
}

- (BOOL)shouldAddFaceTimeGroup
{
  if ([(CNContactContentUnitaryViewController *)self isContactBlocked])
  {
    return 0;
  }

  displayGroups = [(CNContactContentUnitaryViewController *)self displayGroups];

  if (!displayGroups)
  {
    return 0;
  }

  cardFaceTimeGroup = [(CNContactContentUnitaryViewController *)self cardFaceTimeGroup];

  if (!cardFaceTimeGroup)
  {
    return 0;
  }

  displayGroups2 = [(CNContactContentUnitaryViewController *)self displayGroups];
  cardFaceTimeGroup2 = [(CNContactContentUnitaryViewController *)self cardFaceTimeGroup];
  v7 = [displayGroups2 containsObject:cardFaceTimeGroup2];

  if (v7)
  {
    return 0;
  }

  cardFaceTimeGroup3 = [(CNContactContentUnitaryViewController *)self cardFaceTimeGroup];
  contact = [cardFaceTimeGroup3 contact];

  displayGroups3 = [(CNContactContentUnitaryViewController *)self displayGroups];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CNContactContentUnitaryViewController_shouldAddFaceTimeGroup__block_invoke;
  v14[3] = &unk_1E74E71A8;
  v15 = contact;
  v13 = contact;
  LOBYTE(contact) = [displayGroups3 _cn_any:v14];

  v8 = contact ^ 1;
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

- (void)_addFaceTimeGroupAnimated:(BOOL)animated
{
  animatedCopy = animated;
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

      firstObject = [v7 firstObject];
      cardFaceTimeGroup = [(CNContactContentUnitaryViewController *)self cardFaceTimeGroup];
      displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
      [(CNContactContentUnitaryViewController *)self _addGroup:cardFaceTimeGroup afterGroup:firstObject forTableView:displayContactView animated:animatedCopy];
    }
  }
}

- (void)_reloadFaceTimeGroup
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  isConferencingAvailable = [v3 isConferencingAvailable];
  isFaceTimeAppAvailable = [v3 isFaceTimeAppAvailable];
  if ([(CNContactContentUnitaryViewController *)self canDisplayDefaultAppGroup])
  {
    v6 = [v3 isDefaultPhoneCallAppThirdParty] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  if ((isFaceTimeAppAvailable & isConferencingAvailable) == 1 && v6 != 0)
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

    contact = [(CNContactContentUnitaryViewController *)self contact];
    if (([contact isSuggested] & 1) == 0)
    {
      contact2 = [(CNContactContentUnitaryViewController *)self contact];
      if (([contact2 isCoreRecentsAccepted] & 1) != 0 || -[CNContactContentUnitaryViewController isContactBlocked](self, "isContactBlocked") || !objc_msgSend(v11, "count"))
      {
      }

      else
      {
        primaryProperty = [(CNContactContentViewController *)self primaryProperty];
        v15 = primaryProperty == 0;

        if (!v15)
        {
LABEL_18:

          goto LABEL_19;
        }

        v16 = [v11 _cn_filter:&__block_literal_global_3_58876];
        contact = [v16 _cn_map:&__block_literal_global_58871];

        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __61__CNContactContentUnitaryViewController__reloadFaceTimeGroup__block_invoke;
        aBlock[3] = &unk_1E74E7180;
        objc_copyWeak(&v25, &location);
        v23 = _Block_copy(aBlock);
        v17 = MEMORY[0x1E6996B68];
        environment = [(CNContactContentUnitaryViewController *)self environment];
        idsAvailabilityProvider = [environment idsAvailabilityProvider];
        environment2 = [(CNContactContentUnitaryViewController *)self environment];
        defaultSchedulerProvider = [environment2 defaultSchedulerProvider];
        v22 = [v17 validateHandlesForFaceTime:contact availabilityProvider:idsAvailabilityProvider schedulerProvider:defaultSchedulerProvider handler:v23];
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

- (void)_reloadPropertyGroupsPreservingChanges:(BOOL)changes
{
  changesCopy = changes;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  propertyGroups = [(CNContactContentUnitaryViewController *)self propertyGroups];
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

- (BOOL)_isUnavailableAuthorizationPropertyKey:(id)key
{
  v14 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  contact = [(CNContactContentUnitaryViewController *)self contact];
  v6 = [contact isKeyAvailable:keyCopy];

  if ((v6 & 1) != 0 || ([MEMORY[0x1E695CD08] allAuthorizationKeysVector], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsKey:", keyCopy), v7, !v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = CNUILogContactCard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = keyCopy;
      _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "Property %@ will not be displayed as it is unavailable and requires authorization", &v12, 0xCu);
    }

    v10 = 1;
  }

  return v10;
}

- (id)_loadPropertyGroups
{
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CNContactContentUnitaryViewController__loadPropertyGroups__block_invoke;
  aBlock[3] = &unk_1E74E7158;
  aBlock[4] = self;
  v18 = dictionary;
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
          contact = [(CNContactContentUnitaryViewController *)self contact];
          LODWORD(v12) = [v12 isWhitelistedContact:contact];

          if (!v12)
          {
            continue;
          }
        }

        prohibitedPropertyKeys = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
        v15 = [prohibitedPropertyKeys containsObject:v11];

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

- (Class)groupClassForProperty:(id)property
{
  propertyCopy = property;
  if (([propertyCopy isEqualToString:*MEMORY[0x1E695C1E0]] & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C3F8]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C370]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C200]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C1C0]) & 1) == 0)
  {
    [propertyCopy isEqualToString:*MEMORY[0x1E695C3C8]];
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
          [v10 setAllowsTTY:{-[CNContactContentUnitaryViewController contactSupportsTTYCalls](self, "contactSupportsTTYCalls")}];
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
    aBlock[2] = __81__CNContactContentUnitaryViewController__updateIMessageTransportButtonsForItems___block_invoke;
    aBlock[3] = &unk_1E74E7130;
    v31 = v17;
    v32 = v27;
    v18 = v17;
    v19 = _Block_copy(aBlock);
    v20 = MEMORY[0x1E6996B68];
    environment = [(CNContactContentUnitaryViewController *)selfCopy environment];
    idsAvailabilityProvider = [environment idsAvailabilityProvider];
    environment2 = [(CNContactContentUnitaryViewController *)selfCopy environment];
    defaultSchedulerProvider = [environment2 defaultSchedulerProvider];
    v25 = [v20 validateHandlesForIMessage:v18 availabilityProvider:idsAvailabilityProvider schedulerProvider:defaultSchedulerProvider handler:v19];
    [(CNContactContentUnitaryViewController *)selfCopy setIMessageIDSLookupToken:v25];
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

- (void)_updateAvailableTransportsForItems:(id)items
{
  itemsCopy = items;
  v4 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  if ([v4 isMessagesAppAvailable])
  {
    [(CNContactContentUnitaryViewController *)self _updateIMessageTransportButtonsForItems:itemsCopy];
  }

  if ([v4 isPhoneAppAvailable])
  {
    [(CNContactContentUnitaryViewController *)self _updatePhoneTransportButtonsForItems:itemsCopy];
  }

  if ([v4 isMailAppAvailable])
  {
    [(CNContactContentUnitaryViewController *)self _updateEmailTransportButtonsForItems:itemsCopy];
  }

  [(CNContactContentUnitaryViewController *)self _updateTTYTransportButtonsForItems:itemsCopy];
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
  mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
  v5 = [(CNContactAction *)v3 initWithContact:mutableContact];

  [(CNContactAction *)v5 setDelegate:self];

  return v5;
}

- (id)_allDisplayPropertyItemsFromGroups:(id)groups
{
  v28 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = groupsCopy;
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
        displayItems = [v9 displayItems];
        v11 = [displayItems countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(displayItems);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [array addObject:v15];
              }
            }

            v12 = [displayItems countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)_clearRecentsDataAction
{
  recentsData = [(CNContactContentUnitaryViewController *)self recentsData];

  if (recentsData && ![(CNContactContentUnitaryViewController *)self isSuggestedContact])
  {
    v5 = [CNContactClearRecentsDataAction alloc];
    recentsData2 = [(CNContactContentUnitaryViewController *)self recentsData];
    environment = [(CNContactContentUnitaryViewController *)self environment];
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
  contactFormatter = [(CNContactContentUnitaryViewController *)self contactFormatter];
  contact = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [contactFormatter stringFromContact:contact];

  if (v5)
  {
    v6 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:v5];
    v7 = objc_alloc(MEMORY[0x1E695CD78]);
    contactFormatter2 = [(CNContactContentUnitaryViewController *)self contactFormatter];
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
    v23 = __Block_byref_object_copy__64581;
    v24 = __Block_byref_object_dispose__64582;
    v25 = 0;
    contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
    v18[4] = &v20;
    v19 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__CNContactContentUnitaryViewController__updateExistingContactAction__block_invoke;
    v18[3] = &unk_1E74E6F60;
    [contactStore enumerateContactsWithFetchRequest:v11 error:&v19 usingBlock:v18];
    v13 = v19;

    if (v21[5])
    {
      v14 = [CNContactUpdateExistingContactAction alloc];
      contact2 = [(CNContactContentUnitaryViewController *)self contact];
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
    environment = [(CNContactContentUnitaryViewController *)self environment];
    idsAvailabilityProvider = [environment idsAvailabilityProvider];
    v7 = [(CNShareLocationController *)v4 initWithIDSAvailabilityProvider:idsAvailabilityProvider];
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
  contact = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:contact];

  [(CNContactAction *)v5 setDelegate:self];
  contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
  [(CNContactSharedProfileSettingsAction *)v5 setContactStore:contactStore];

  return v5;
}

- (id)_addToExistingContactAction
{
  v3 = [CNContactAddToExistingContactAction alloc];
  contact = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:contact];

  [(CNContactAction *)v5 setDelegate:self];

  return v5;
}

- (id)_addCreateNewContactAction
{
  v3 = [CNContactCreateNewContactAction alloc];
  contact = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:contact];

  [(CNContactAction *)v5 setDelegate:self];
  [(CNContactCreateNewContactAction *)v5 setPresentingViewController:self];

  return v5;
}

- (id)_addNewFieldAction
{
  v3 = [CNContactAddNewFieldAction alloc];
  contact = [(CNContactContentUnitaryViewController *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:contact];

  prohibitedPropertyKeys = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
  [(CNContactAddNewFieldAction *)v5 setProhibitedPropertyKeys:prohibitedPropertyKeys];

  [(CNContactAction *)v5 setDelegate:self];
  [(CNContactAddNewFieldAction *)v5 setGroupPickerDelegate:self];

  return v5;
}

- (id)_addFavoriteActionWithConferencing:(BOOL)conferencing telephony:(BOOL)telephony
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
  contact = [(CNContactContentUnitaryViewController *)self contact];
  environment = [(CNContactContentUnitaryViewController *)self environment];
  inProcessFavorites = [environment inProcessFavorites];
  v14 = [(CNContactAddFavoriteAction *)v10 initWithContact:contact propertyItems:v9 favorites:inProcessFavorites];

  [(CNContactAction *)v14 setDelegate:self];

  return v14;
}

- (id)_shareContactAction
{
  contact = [(CNContactContentUnitaryViewController *)self contact];
  mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
  if ([contact isUnified])
  {
    linkedContacts = [contact linkedContacts];
    v6 = [linkedContacts isEqual:mainStoreLinkedContacts];

    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x1E695CD58] unifyContacts:mainStoreLinkedContacts];

      contact = v7;
    }
  }

  v8 = [(CNContactAction *)[CNContactShareContactAction alloc] initWithContact:contact];
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
  mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
  v5 = [(CNContactAction *)v3 initWithContact:mutableContact];

  contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
  [(CNContactAddToGroupAction *)v5 setContactStore:contactStore];

  [(CNContactAction *)v5 setDelegate:self];
  managedConfiguration = [(CNContactContentUnitaryViewController *)self managedConfiguration];
  [(CNContactAddToGroupAction *)v5 setManagedConfiguration:managedConfiguration];

  return v5;
}

- (id)_addLinkedCardAction
{
  v3 = [CNContactAddLinkedCardAction alloc];
  mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
  v5 = [(CNContactAction *)v3 initWithContact:mutableContact];

  [(CNContactAction *)v5 setDelegate:self];

  return v5;
}

- (id)_linkedCardsAction
{
  v3 = [CNPropertyLinkedCardsAction alloc];
  mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
  v5 = [(CNPropertyLinkedCardsAction *)v3 initWithContact:mutableContact];

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
  contact = [(CNContactContentUnitaryViewController *)self contact];
  v9 = [(CNPropertyFaceTimeAction *)v7 initWithContact:contact propertyItems:v6];

  [(CNContactAction *)v9 setDelegate:self];

  return v9;
}

- (id)_sendMessageActionAllowingEmailIDs:(BOOL)ds
{
  v19 = *MEMORY[0x1E69E9840];
  if (ds)
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
  contact = [(CNContactContentUnitaryViewController *)self contact];
  actionsDataSource = [(CNContactContentUnitaryViewController *)self actionsDataSource];
  v14 = [(CNPropertySendMessageAction *)v11 initWithContact:contact propertyItems:v10 actionDataSource:actionsDataSource];

  [(CNContactAction *)v14 setDelegate:self];

  return v14;
}

- (id)_displayGroupsForKeys:(id)keys
{
  keysCopy = keys;
  v5 = *MEMORY[0x1E6996530];
  displayGroups = [(CNContactContentUnitaryViewController *)self displayGroups];
  LODWORD(v5) = (*(v5 + 16))(v5, displayGroups);

  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  else
  {
    v8 = [(CNContactContentUnitaryViewController *)self _propertyGroupsForKeys:keysCopy];
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
        propertyGroups = [(CNContactContentUnitaryViewController *)self propertyGroups];
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

- (void)_setupCustomActions
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(CNContactContentUnitaryViewController *)self allowsEditInApp])
  {
    contact = [(CNContactContentUnitaryViewController *)self contact];
    isSuggested = [contact isSuggested];

    if ((isSuggested & 1) == 0)
    {
      v5 = [CNEditInAppAction alloc];
      contact2 = [(CNContactContentUnitaryViewController *)self contact];
      activityManager = [(CNContactContentUnitaryViewController *)self activityManager];
      v8 = [(CNEditInAppAction *)v5 initWithContact:contact2 activityManager:activityManager];

      cardFooterGroup = [(CNContactContentUnitaryViewController *)self cardFooterGroup];
      title = [(CNEditInAppAction *)v8 title];
      [cardFooterGroup addAction:v8 withTitle:title];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  customActions = [(CNContactContentUnitaryViewController *)self customActions];
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

- (void)_setupEditingCardActions
{
  policy = [(CNContactContentUnitaryViewController *)self policy];
  isReadonly = [policy isReadonly];

  if (isReadonly)
  {
    return;
  }

  [(CNContactContentUnitaryViewController *)self _setupSuggestionActions];
  [(CNContactContentUnitaryViewController *)self _setupAcceptedContactActions];
  alreadyPickedGroups = [(CNContactContentUnitaryViewController *)self alreadyPickedGroups];
  policy2 = [(CNContactContentUnitaryViewController *)self policy];
  prohibitedPropertyKeys = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
  contact = [(CNContactContentUnitaryViewController *)self contact];
  v9 = [CNContactPropertyGroupPickerViewController propertiesLeftToPickWithPickedGroups:alreadyPickedGroups policy:policy2 prohibitedPropertyKeys:prohibitedPropertyKeys contact:contact];

  if (v9)
  {
    _addNewFieldAction = [(CNContactContentUnitaryViewController *)self _addNewFieldAction];
    [(CNContactContentUnitaryViewController *)self setAddNewFieldAction:_addNewFieldAction];

    cardEditingActionsGroup = [(CNContactContentUnitaryViewController *)self cardEditingActionsGroup];
    addNewFieldAction = [(CNContactContentUnitaryViewController *)self addNewFieldAction];
    v13 = CNContactsUIBundle();
    v14 = [v13 localizedStringForKey:@"ADD_MORE_PROPERTIES" value:&stru_1F0CE7398 table:@"Localized"];
    [cardEditingActionsGroup addAction:addNewFieldAction withTitle:v14];
  }

  contact2 = [(CNContactContentUnitaryViewController *)self contact];
  isSuggestedMe = [contact2 isSuggestedMe];

  if (isSuggestedMe)
  {
    v17 = [CNContactIgnoreDonatedInformationAction alloc];
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    v19 = objc_alloc_init(MEMORY[0x1E6996448]);
    environment = [(CNContactContentUnitaryViewController *)self environment];
    componentsFactory = [environment componentsFactory];
    v22 = [(CNContactIgnoreDonatedInformationAction *)v17 initWithContact:mutableContact donationStore:v19 componentsFactory:componentsFactory];
    [(CNContactContentUnitaryViewController *)self setIgnoreContactAction:v22];

    ignoreContactAction = [(CNContactContentUnitaryViewController *)self ignoreContactAction];
    [ignoreContactAction setDelegate:self];

    ignoreContactAction2 = [(CNContactContentUnitaryViewController *)self ignoreContactAction];
    [ignoreContactAction2 setDestructive:1];

    cardEditingDeleteContactGroup = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
    ignoreContactAction3 = [(CNContactContentUnitaryViewController *)self ignoreContactAction];
    v27 = CNContactsUIBundle();
    v28 = v27;
    v29 = @"CARD_ACTION_IGNORE_CARD";
  }

  else
  {
    cardEditingDeleteContactGroup = [(CNContactContentUnitaryViewController *)self contact];
    if (([cardEditingDeleteContactGroup isUnknown] & 1) != 0 || -[CNContactContentViewController editingProposedInformation](self, "editingProposedInformation"))
    {
      goto LABEL_9;
    }

    if ([(CNContactContentViewController *)self allowsDeletion])
    {
    }

    else
    {
      saveWasAuthorized = [(CNContactContentUnitaryViewController *)self saveWasAuthorized];

      if (!saveWasAuthorized)
      {
        goto LABEL_10;
      }
    }

    v35 = [CNContactDeleteContactAction alloc];
    mutableContact2 = [(CNContactContentUnitaryViewController *)self mutableContact];
    environment2 = [(CNContactContentUnitaryViewController *)self environment];
    recentsManager = [environment2 recentsManager];
    environment3 = [(CNContactContentUnitaryViewController *)self environment];
    componentsFactory2 = [environment3 componentsFactory];
    v41 = [(CNContactDeleteContactAction *)v35 initWithContact:mutableContact2 recentsManager:recentsManager componentsFactory:componentsFactory2];
    [(CNContactContentUnitaryViewController *)self setDeleteContactAction:v41];

    deleteContactAction = [(CNContactContentUnitaryViewController *)self deleteContactAction];
    [deleteContactAction setDelegate:self];

    deleteContactAction2 = [(CNContactContentUnitaryViewController *)self deleteContactAction];
    [deleteContactAction2 setDestructive:1];

    cardEditingDeleteContactGroup = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
    ignoreContactAction3 = [(CNContactContentUnitaryViewController *)self deleteContactAction];
    v27 = CNContactsUIBundle();
    v28 = v27;
    v29 = @"CARD_ACTION_DELETE_CARD";
  }

  v30 = [v27 localizedStringForKey:v29 value:&stru_1F0CE7398 table:@"Localized"];
  [cardEditingDeleteContactGroup addAction:ignoreContactAction3 withTitle:v30];

LABEL_9:
LABEL_10:
  if ([(CNContactContentUnitaryViewController *)self shouldAllowContainerPicking])
  {
    _selectContainersAction = [(CNContactContentUnitaryViewController *)self _selectContainersAction];
    [(CNContactContentUnitaryViewController *)self setSelectContainersAction:_selectContainersAction];

    selectContainersAction = [(CNContactContentUnitaryViewController *)self selectContainersAction];
    [selectContainersAction setDelegate:self];
  }

  if (self->_addAddressingGrammarAction)
  {
    mutableContact3 = [(CNContactContentUnitaryViewController *)self mutableContact];
    addAddressingGrammarAction = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
    [addAddressingGrammarAction setContact:mutableContact3];
  }

  else
  {
    mutableContact3 = [(CNContactContentUnitaryViewController *)self _addAddressingGrammarAction];
    [(CNContactContentUnitaryViewController *)self setAddAddressingGrammarAction:?];
  }
}

- (void)_setupAddToAddressBookActions
{
  contact = [(CNContactContentUnitaryViewController *)self contact];
  if ([contact isUnknown])
  {
    allowsAddingToAddressBook = [(CNContactContentUnitaryViewController *)self allowsAddingToAddressBook];

    if (!allowsAddingToAddressBook)
    {
      return;
    }

    _addCreateNewContactAction = [(CNContactContentUnitaryViewController *)self _addCreateNewContactAction];
    [(CNContactContentUnitaryViewController *)self setCreateNewContactAction:_addCreateNewContactAction];

    cardActionsGroup = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    createNewContactAction = [(CNContactContentUnitaryViewController *)self createNewContactAction];
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"UNKNOWN_CARD_CREATE_NEW_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    [cardActionsGroup addAction:createNewContactAction withTitle:v8];

    _addToExistingContactAction = [(CNContactContentUnitaryViewController *)self _addToExistingContactAction];
    [(CNContactContentUnitaryViewController *)self setAddToExistingContactAction:_addToExistingContactAction];

    cardActionsGroup2 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    addToExistingContactAction = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:@"UNKNOWN_CARD_ADD_TO_EXISTING_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    [cardActionsGroup2 addAction:addToExistingContactAction withTitle:v13];

    contact = [(CNContactContentUnitaryViewController *)self _updateExistingContactAction];
    if (contact)
    {
      [(CNContactContentUnitaryViewController *)self setUpdateExistingContactAction:contact];
      v14 = MEMORY[0x1E696AEC0];
      v15 = CNContactsUIBundle();
      v16 = [v15 localizedStringForKey:@"UNKNOWN_CARD_ADD_UPDATE_CONTACT-%@" value:&stru_1F0CE7398 table:@"Localized"];
      contactFormatter = [(CNContactContentUnitaryViewController *)self contactFormatter];
      existingContact = [contact existingContact];
      v19 = [contactFormatter stringFromContact:existingContact];
      v20 = [v14 stringWithFormat:v16, v19];

      cardActionsGroup3 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
      [cardActionsGroup3 addAction:contact withTitle:v20];
    }

    suggestedContactAction = [(CNContactContentUnitaryViewController *)self suggestedContactAction];

    if (suggestedContactAction)
    {
      cardBlockContactGroup = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      suggestedContactAction2 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
      v25 = CNContactsUIBundle();
      v26 = [v25 localizedStringForKey:@"SUGGESTION_IGNORE_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
      v27 = +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
      [cardBlockContactGroup addAction:suggestedContactAction2 withTitle:v26 color:v27 transportType:0];
    }

    deleteAcceptedAction = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];

    if (deleteAcceptedAction)
    {
      cardBlockContactGroup2 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      deleteAcceptedAction2 = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];
      v31 = CNContactsUIBundle();
      v32 = [v31 localizedStringForKey:@"CARD_ACTION_DELETE_ACCEPTED" value:&stru_1F0CE7398 table:@"Localized"];
      v33 = +[CNUIColorRepository contactCardDestructiveActionTitleTextColor];
      [cardBlockContactGroup2 addAction:deleteAcceptedAction2 withTitle:v32 color:v33 transportType:0];
    }

    contact2 = [(CNContactContentUnitaryViewController *)self contact];
    isCoreRecentsAccepted = [contact2 isCoreRecentsAccepted];

    if (isCoreRecentsAccepted)
    {
      v36 = objc_alloc_init(MEMORY[0x1E695CD80]);
      contact3 = [(CNContactContentUnitaryViewController *)self contact];
      v38 = [v36 stringFromContact:contact3];

      LODWORD(contact3) = (*(*MEMORY[0x1E6996568] + 16))();
      v39 = CNContactsUIBundle();
      v40 = v39;
      if (contact3)
      {
        v41 = [v39 localizedStringForKey:@"CARD_ACTION_ACCEPTED_CONTACTS_ADD_NAME" value:&stru_1F0CE7398 table:@"Localized"];

        addNameAction = [(CNContactContentUnitaryViewController *)self addNameAction];

        if (addNameAction)
        {
          cardTopGroup = [(CNContactContentUnitaryViewController *)self cardTopGroup];
          addNameAction2 = [(CNContactContentUnitaryViewController *)self addNameAction];
LABEL_16:
          v46 = addNameAction2;
          [cardTopGroup addAction:addNameAction2 withTitle:v41];
        }
      }

      else
      {
        v41 = [v39 localizedStringForKey:@"CARD_ACTION_ACCEPTED_CONTACTS_EDIT_NAME" value:&stru_1F0CE7398 table:@"Localized"];

        editNameAction = [(CNContactContentUnitaryViewController *)self editNameAction];

        if (editNameAction)
        {
          cardTopGroup = [(CNContactContentUnitaryViewController *)self cardTopGroup];
          addNameAction2 = [(CNContactContentUnitaryViewController *)self editNameAction];
          goto LABEL_16;
        }
      }
    }
  }
}

- (void)_setupAcceptedContactsNameActions
{
  originalContacts = [(CNContactContentUnitaryViewController *)self originalContacts];
  v12 = [originalContacts _cn_filter:&__block_literal_global_920];

  if ([v12 count] == 1)
  {
    v4 = [CNContactAcceptedContactNameAction alloc];
    firstObject = [v12 firstObject];
    v6 = [(CNContactAction *)v4 initWithContact:firstObject];
    [(CNContactContentUnitaryViewController *)self setAddNameAction:v6];

    addNameAction = [(CNContactContentUnitaryViewController *)self addNameAction];
    [addNameAction setDelegate:self];

    v8 = [CNContactAcceptedContactNameAction alloc];
    firstObject2 = [v12 firstObject];
    v10 = [(CNContactAction *)v8 initWithContact:firstObject2];
    [(CNContactContentUnitaryViewController *)self setEditNameAction:v10];

    editNameAction = [(CNContactContentUnitaryViewController *)self editNameAction];
    [editNameAction setDelegate:self];
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
  originalContacts = [(CNContactContentUnitaryViewController *)self originalContacts];
  v8 = [originalContacts _cn_filter:&__block_literal_global_917];

  if ([v8 count] == 1)
  {
    v4 = [CNContactDeleteAcceptedAction alloc];
    firstObject = [v8 firstObject];
    v6 = [(CNContactAction *)v4 initWithContact:firstObject];
    [(CNContactContentUnitaryViewController *)self setDeleteAcceptedAction:v6];

    deleteAcceptedAction = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];
    [deleteAcceptedAction setDelegate:self];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self setDeleteAcceptedAction:0];
  }
}

- (void)_setupSuggestionActions
{
  originalContacts = [(CNContactContentUnitaryViewController *)self originalContacts];
  v8 = [originalContacts _cn_filter:&__block_literal_global_914];

  if ([v8 count] == 1)
  {
    v4 = [CNContactSuggestionAction alloc];
    firstObject = [v8 firstObject];
    v6 = [(CNContactAction *)v4 initWithContact:firstObject];
    [(CNContactContentUnitaryViewController *)self setSuggestedContactAction:v6];

    suggestedContactAction = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
    [suggestedContactAction setDelegate:self];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self setSuggestedContactAction:0];
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

  if ([(CNContactContentUnitaryViewController *)self isContactBlocked]!= stateCopy)
  {
    [(CNContactContentUnitaryViewController *)self setIsContactBlocked:stateCopy];
    actionsViewController = [(CNContactContentUnitaryViewController *)self actionsViewController];
    supportedActionTypes = [actionsViewController supportedActionTypes];
    v10 = [supportedActionTypes count];

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
      actionsViewController2 = [(CNContactContentUnitaryViewController *)self actionsViewController];
      [actionsViewController2 setSupportedActionTypes:v11];
    }

    [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:changesCopy];
  }
}

- (void)_setupContactBlockingReportingActionPreservingChanges:(BOOL)changes withUpdate:(BOOL)update
{
  updateCopy = update;
  changesCopy = changes;
  if ([(CNContactContentUnitaryViewController *)self allowsContactBlockingAndReporting]&& ![(CNContactContentUnitaryViewController *)self showingMeContact])
  {
    blockReportAction = [(CNContactContentUnitaryViewController *)self blockReportAction];

    blockReportAction2 = [(CNContactContentUnitaryViewController *)self blockReportAction];

    if (!blockReportAction2)
    {
      v9 = [CNContactToggleBlockReportCallerAction alloc];
      contact = [(CNContactContentUnitaryViewController *)self contact];
      v11 = [(CNContactAction *)v9 initWithContact:contact];
      [(CNContactContentUnitaryViewController *)self setBlockReportAction:v11];

      blockReportAction3 = [(CNContactContentUnitaryViewController *)self blockReportAction];
      [blockReportAction3 setDelegate:self];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_blockListDidChange_ name:*MEMORY[0x1E6995900] object:0];

      [(CNContactContentUnitaryViewController *)self _notifyObservers];
    }

    blockReportAction4 = [(CNContactContentUnitaryViewController *)self blockReportAction];
    v15 = [blockReportAction4 isContactBlockedPreservingChanges:changesCopy];

    if (blockReportAction)
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

      cardBlockContactGroup = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      [cardBlockContactGroup removeActionWithTitle:v19];
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

    cardBlockContactGroup2 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
    [cardBlockContactGroup2 removeActionWithTitle:v44];

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
    cardBlockContactGroup3 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
    blockReportAction5 = [(CNContactContentUnitaryViewController *)self blockReportAction];
    [cardBlockContactGroup3 addAction:blockReportAction5 withTitle:v44 color:v28 transportType:0];

    if (updateCopy)
    {
      cardBlockContactGroup4 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
      v33 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:cardBlockContactGroup4 inTableView:displayContactView];

      if (v33 != 0x7FFFFFFFFFFFFFFFLL)
      {
        displayContactView2 = [(CNContactContentUnitaryViewController *)self displayContactView];
        [displayContactView2 contentOffset];
        v36 = v35;
        v38 = v37;

        contactView = [(CNContactContentUnitaryViewController *)self contactView];
        [contactView beginUpdates];

        contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
        v41 = [MEMORY[0x1E696AC90] indexSetWithIndex:v33];
        [contactView2 reloadSections:v41 withRowAnimation:0];

        contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
        [contactView3 endUpdates];

        contactView4 = [(CNContactContentUnitaryViewController *)self contactView];
        [contactView4 setContentOffset:{v36, v38}];

        [(CNContactContentUnitaryViewController *)self adjustPreferredContentSize];
      }
    }

    [(CNContactContentUnitaryViewController *)self reloadCardActionsForBlockState:v15 preservingChanges:changesCopy];
  }
}

- (void)_setupContactBlockingActionPreservingChanges:(BOOL)changes withUpdate:(BOOL)update
{
  updateCopy = update;
  changesCopy = changes;
  if ([(CNContactContentUnitaryViewController *)self allowsContactBlocking]&& ![(CNContactContentUnitaryViewController *)self showingMeContact])
  {
    blockAction = [(CNContactContentUnitaryViewController *)self blockAction];

    blockAction2 = [(CNContactContentUnitaryViewController *)self blockAction];

    if (!blockAction2)
    {
      v9 = [CNContactToggleBlockCallerAction alloc];
      contact = [(CNContactContentUnitaryViewController *)self contact];
      v11 = [(CNContactAction *)v9 initWithContact:contact];
      [(CNContactContentUnitaryViewController *)self setBlockAction:v11];

      blockAction3 = [(CNContactContentUnitaryViewController *)self blockAction];
      [blockAction3 setDelegate:self];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_blockListDidChange_ name:*MEMORY[0x1E6995900] object:0];

      [(CNContactContentUnitaryViewController *)self _notifyObservers];
    }

    blockAction4 = [(CNContactContentUnitaryViewController *)self blockAction];
    v15 = [blockAction4 isContactBlockedPreservingChanges:changesCopy];

    if (blockAction)
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

      cardBlockContactGroup = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      [cardBlockContactGroup removeActionWithTitle:v19];
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

    cardBlockContactGroup2 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
    [cardBlockContactGroup2 removeActionWithTitle:v44];

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
    cardBlockContactGroup3 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
    blockAction5 = [(CNContactContentUnitaryViewController *)self blockAction];
    [cardBlockContactGroup3 addAction:blockAction5 withTitle:v44 color:v28 transportType:0];

    if (updateCopy)
    {
      cardBlockContactGroup4 = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
      displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
      v33 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:cardBlockContactGroup4 inTableView:displayContactView];

      if (v33 != 0x7FFFFFFFFFFFFFFFLL)
      {
        displayContactView2 = [(CNContactContentUnitaryViewController *)self displayContactView];
        [displayContactView2 contentOffset];
        v36 = v35;
        v38 = v37;

        contactView = [(CNContactContentUnitaryViewController *)self contactView];
        [contactView beginUpdates];

        contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
        v41 = [MEMORY[0x1E696AC90] indexSetWithIndex:v33];
        [contactView2 reloadSections:v41 withRowAnimation:0];

        contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
        [contactView3 endUpdates];

        contactView4 = [(CNContactContentUnitaryViewController *)self contactView];
        [contactView4 setContentOffset:{v36, v38}];

        [(CNContactContentUnitaryViewController *)self adjustPreferredContentSize];
      }
    }

    [(CNContactContentUnitaryViewController *)self reloadCardActionsForBlockState:v15 preservingChanges:changesCopy];
  }
}

- (void)setupShareLocationActionReload:(BOOL)reload
{
  if (![(CNContactContentUnitaryViewController *)self showingMeContact]&& ![(CNContactContentUnitaryViewController *)self isContactBlocked]&& !CNUIIsMessages())
  {
    cardShareLocationGroup = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
    [cardShareLocationGroup setDisplaysDropdownMenu:1];

    cardShareLocationGroup2 = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
    shareLocationController = [(CNContactContentUnitaryViewController *)self shareLocationController];
    [cardShareLocationGroup2 removeActionWithTarget:shareLocationController selector:sel_perform_];

    objc_initWeak(&location, self);
    shareLocationController2 = [(CNContactContentUnitaryViewController *)self shareLocationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__CNContactContentUnitaryViewController_setupShareLocationActionReload___block_invoke;
    v9[3] = &unk_1E74E7098;
    objc_copyWeak(&v10, &location);
    reloadCopy = reload;
    [shareLocationController2 canShareWithCompletion:v9];

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

- (BOOL)contactHasAvailablePropertiesToFavorite:(id)favorite isPhoneAppAvailable:(BOOL)available isFaceTimeAppAvailable:(BOOL)appAvailable
{
  appAvailableCopy = appAvailable;
  availableCopy = available;
  favoriteCopy = favorite;
  phoneNumbers = [favoriteCopy phoneNumbers];
  v10 = [(CNContactContentUnitaryViewController *)self labeledValuesHasNonSuggestion:phoneNumbers];

  if (availableCopy && v10 || ([favoriteCopy emailAddresses], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[CNContactContentUnitaryViewController labeledValuesHasNonSuggestion:](self, "labeledValuesHasNonSuggestion:", v11), v11, appAvailableCopy) && (v10 || v12) || (objc_msgSend(favoriteCopy, "socialProfiles"), v13 = objc_claimAutoreleasedReturnValue(), v14 = -[CNContactContentUnitaryViewController labeledValuesHasNonSuggestion:](self, "labeledValuesHasNonSuggestion:", v13), v13, v14))
  {
    v15 = 1;
  }

  else
  {
    instantMessageAddresses = [favoriteCopy instantMessageAddresses];
    v15 = [(CNContactContentUnitaryViewController *)self labeledValuesHasNonSuggestion:instantMessageAddresses];
  }

  return v15;
}

- (void)_setupCardActions
{
  if (![(CNContactContentUnitaryViewController *)self allowsActions])
  {
    return;
  }

  actionProvider = [(CNContactContentUnitaryViewController *)self actionProvider];
  [actionProvider buildCommunicationLimitsActions];

  v79 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  hasCellularTelephonyCapability = [v79 hasCellularTelephonyCapability];
  areFavoritesAvailable = [v79 areFavoritesAvailable];
  isMMSConfigured = [v79 isMMSConfigured];
  isMadridConfigured = [v79 isMadridConfigured];
  isConferencingAvailable = [v79 isConferencingAvailable];
  isMessagesAppAvailable = [v79 isMessagesAppAvailable];
  isPhoneAppAvailable = [v79 isPhoneAppAvailable];
  isFaceTimeAppAvailable = [v79 isFaceTimeAppAvailable];
  if ([(CNContactContentUnitaryViewController *)self canDisplayDefaultAppGroup])
  {
    v8 = [v79 isDefaultPhoneCallAppThirdParty] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  contact = [(CNContactContentUnitaryViewController *)self contact];
  phoneNumbers = [contact phoneNumbers];
  v11 = [phoneNumbers count];

  contact2 = [(CNContactContentUnitaryViewController *)self contact];
  emailAddresses = [contact2 emailAddresses];
  v14 = [emailAddresses count];

  if (([MEMORY[0x1E695CD58] quickActionsEnabled] & 1) == 0)
  {
    if (isMessagesAppAvailable && ![(CNContactContentUnitaryViewController *)self isContactBlocked]&& (((v11 != 0) & (hasCellularTelephonyCapability | isMadridConfigured)) != 0 || ((v14 != 0) & (isMMSConfigured | isMadridConfigured)) != 0) && ![(CNContactContentUnitaryViewController *)self isInlineContactCard])
    {
      v74 = [(CNContactContentUnitaryViewController *)self _sendMessageActionAllowingEmailIDs:(isMMSConfigured | isMadridConfigured) & 1];
      [(CNContactContentUnitaryViewController *)self setSendMessageAction:v74];
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self setSendMessageAction:0];
    }
  }

  faceTimeAction = [(CNContactContentUnitaryViewController *)self faceTimeAction];
  if (faceTimeAction)
  {
    goto LABEL_18;
  }

  if ((isConferencingAvailable & ~[(CNContactContentUnitaryViewController *)self isContactBlocked]& ((v11 | v14) != 0) & isFaceTimeAppAvailable) != 1)
  {
    faceTimeAction = 0;
    goto LABEL_18;
  }

  if (v8)
  {
    faceTimeAction = [(CNContactContentUnitaryViewController *)self _faceTimeAction];
    [(CNContactContentUnitaryViewController *)self setFaceTimeAction:faceTimeAction];
LABEL_18:
  }

  [(CNContactContentUnitaryViewController *)self setShareContactAction:0];
  isHeaderViewPhotoProhibited = [(CNContactContentUnitaryViewController *)self isHeaderViewPhotoProhibited];
  if ([(CNContactContentUnitaryViewController *)self allowsSharing])
  {
    contact3 = [(CNContactContentUnitaryViewController *)self contact];
    v18 = [contact3 isSuggested] | isHeaderViewPhotoProhibited;

    if ((v18 & 1) == 0)
    {
      _shareContactAction = [(CNContactContentUnitaryViewController *)self _shareContactAction];
      [(CNContactContentUnitaryViewController *)self setShareContactAction:_shareContactAction];
    }
  }

  if (!areFavoritesAvailable)
  {
    goto LABEL_26;
  }

  contact4 = [(CNContactContentUnitaryViewController *)self contact];
  if (([contact4 isUnknown] & 1) != 0 || -[CNContactContentUnitaryViewController isContactBlocked](self, "isContactBlocked"))
  {

LABEL_26:
    [(CNContactContentUnitaryViewController *)self setAddFavoriteAction:0];
    goto LABEL_27;
  }

  contact5 = [(CNContactContentUnitaryViewController *)self contact];
  v72 = [(CNContactContentUnitaryViewController *)self contactHasAvailablePropertiesToFavorite:contact5 isPhoneAppAvailable:isPhoneAppAvailable isFaceTimeAppAvailable:isFaceTimeAppAvailable];

  if (!v72)
  {
    goto LABEL_26;
  }

  v73 = [(CNContactContentUnitaryViewController *)self _addFavoriteActionWithConferencing:isFaceTimeAppAvailable & isConferencingAvailable telephony:isPhoneAppAvailable & hasCellularTelephonyCapability];
  [(CNContactContentUnitaryViewController *)self setAddFavoriteAction:v73];

LABEL_27:
  if ([(CNContactContentUnitaryViewController *)self allowsCardActions])
  {
    contact6 = [(CNContactContentUnitaryViewController *)self contact];
    if ([contact6 isSuggested])
    {
LABEL_48:

      goto LABEL_49;
    }

    contact7 = [(CNContactContentUnitaryViewController *)self contact];
    isCoreRecentsAccepted = [contact7 isCoreRecentsAccepted];

    if ((isCoreRecentsAccepted & 1) == 0)
    {
      if ([(CNContactContentUnitaryViewController *)self allowsSendMessage])
      {
        sendMessageAction = [(CNContactContentUnitaryViewController *)self sendMessageAction];
        if (sendMessageAction)
        {
          v25 = sendMessageAction;
          primaryProperty = [(CNContactContentViewController *)self primaryProperty];

          if (!primaryProperty)
          {
            cardActionsGroup = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
            sendMessageAction2 = [(CNContactContentUnitaryViewController *)self sendMessageAction];
            v29 = CNContactsUIBundle();
            v30 = [v29 localizedStringForKey:@"PHONE_ACTION_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
            [cardActionsGroup addAction:sendMessageAction2 withTitle:v30];
          }
        }
      }

      shareContactAction = [(CNContactContentUnitaryViewController *)self shareContactAction];

      if (shareContactAction)
      {
        cardActionsGroup2 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
        shareContactAction2 = [(CNContactContentUnitaryViewController *)self shareContactAction];
        v34 = CNContactsUIBundle();
        v35 = [v34 localizedStringForKey:@"SHARE_CONTACT_ACTION_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
        [cardActionsGroup2 addAction:shareContactAction2 withTitle:v35];
      }

      addFavoriteAction = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
      if (addFavoriteAction)
      {
        v37 = addFavoriteAction;
        addFavoriteAction2 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
        canPerformAction = [addFavoriteAction2 canPerformAction];

        if (canPerformAction)
        {
          cardActionsGroup3 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
          addFavoriteAction3 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
          v42 = CNContactsUIBundle();
          v43 = [v42 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
          [cardActionsGroup3 addAction:addFavoriteAction3 withTitle:v43];
        }
      }

      actionProvider2 = [(CNContactContentUnitaryViewController *)self actionProvider];
      contact6 = [actionProvider2 shareWithFamilyAction];

      if (contact6 && [contact6 canPerformAction])
      {
        [contact6 setDelegate:self];
        cardActionsGroup4 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
        title = [contact6 title];
        [cardActionsGroup4 addAction:contact6 withTitle:title];
      }

      actionProvider3 = [(CNContactContentUnitaryViewController *)self actionProvider];
      stopSharingWithFamilyAction = [actionProvider3 stopSharingWithFamilyAction];
      [(CNContactContentUnitaryViewController *)self setStopSharingWithFamilyAction:stopSharingWithFamilyAction];

      stopSharingWithFamilyAction2 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
      [stopSharingWithFamilyAction2 setDelegate:self];

      if ([(CNContactContentViewController *)self ignoresParentalRestrictions])
      {
        stopSharingWithFamilyAction3 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
        canPerformAction2 = [stopSharingWithFamilyAction3 canPerformAction];

        if (canPerformAction2)
        {
          cardActionsGroup5 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
          stopSharingWithFamilyAction4 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
          stopSharingWithFamilyAction5 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
          title2 = [stopSharingWithFamilyAction5 title];
          stopSharingWithFamilyAction6 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
          [cardActionsGroup5 addAction:stopSharingWithFamilyAction4 withTitle:title2 wrapTitle:{objc_msgSend(stopSharingWithFamilyAction6, "wrapTitle")}];
        }
      }

      stopSharingWithFamilyAction7 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
      canPerformAction3 = [stopSharingWithFamilyAction7 canPerformAction];

      if (canPerformAction3)
      {
        cardEditingActionsGroup = [(CNContactContentUnitaryViewController *)self cardEditingActionsGroup];
        stopSharingWithFamilyAction8 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
        stopSharingWithFamilyAction9 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
        title3 = [stopSharingWithFamilyAction9 title];
        stopSharingWithFamilyAction10 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
        [cardEditingActionsGroup addAction:stopSharingWithFamilyAction8 withTitle:title3 wrapTitle:{objc_msgSend(stopSharingWithFamilyAction10, "wrapTitle")}];
      }

      [(CNContactContentUnitaryViewController *)self setupShareLocationActionReload:0];
      goto LABEL_48;
    }
  }

LABEL_49:
  _clearRecentsDataAction = [(CNContactContentUnitaryViewController *)self _clearRecentsDataAction];
  [(CNContactContentUnitaryViewController *)self setClearRecentsDataAction:_clearRecentsDataAction];

  clearRecentsDataAction = [(CNContactContentUnitaryViewController *)self clearRecentsDataAction];

  if (clearRecentsDataAction)
  {
    clearRecentsDataAction2 = [(CNContactContentUnitaryViewController *)self clearRecentsDataAction];
    [clearRecentsDataAction2 setDelegate:self];

    cardActionsGroup6 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    clearRecentsDataAction3 = [(CNContactContentUnitaryViewController *)self clearRecentsDataAction];
    v69 = CNContactsUIBundle();
    v70 = [v69 localizedStringForKey:@"CLEAR_RECENTS" value:&stru_1F0CE7398 table:@"Localized"];
    [cardActionsGroup6 addAction:clearRecentsDataAction3 withTitle:v70];
  }

  [(CNContactContentUnitaryViewController *)self _notifyObservers];
}

- (void)_retrieveActionsModelPreservingChanges:(BOOL)changes
{
  contact = [(CNContactContentUnitaryViewController *)self contact];

  if (contact && ![(CNContactContentUnitaryViewController *)self isInlineContactCard]&& !changes)
  {
    objc_initWeak(&location, self);
    allActionTypes = [MEMORY[0x1E6996BE8] allActionTypes];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__CNContactContentUnitaryViewController__retrieveActionsModelPreservingChanges___block_invoke;
    v7[3] = &unk_1E74E7000;
    v7[4] = self;
    objc_copyWeak(&v8, &location);
    [allActionTypes enumerateObjectsUsingBlock:v7];

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

- (void)setAllowsActions:(BOOL)actions
{
  if (self->_allowsActions != actions)
  {
    self->_allowsActions = actions;
    [(CNContactContentUnitaryViewController *)self setNeedsReload];
  }
}

- (void)setupActionsPreservingChanges:(BOOL)changes
{
  changesCopy = changes;
  actionProvider = [(CNContactContentUnitaryViewController *)self actionProvider];
  [actionProvider buildStaticIdentityActions];

  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0 || [(CNContactContentViewController *)self alwaysEditing])
  {

    [(CNContactContentUnitaryViewController *)self _setupEditingCardActions];
  }

  else
  {
    actions = [(CNCardGroup *)self->_cardActionsGroup actions];
    v7 = [actions count];

    if (v7)
    {
      v8 = [CNCardGroup alloc];
      mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
      v10 = [(CNCardGroup *)v8 initWithContact:mutableContact];
      cardActionsGroup = self->_cardActionsGroup;
      self->_cardActionsGroup = v10;
    }

    actions2 = [(CNCardGroup *)self->_cardShareLocationGroup actions];
    v13 = [actions2 count];

    if (v13)
    {
      v14 = [CNCardGroup alloc];
      mutableContact2 = [(CNContactContentUnitaryViewController *)self mutableContact];
      v16 = [(CNCardGroup *)v14 initWithContact:mutableContact2];
      cardShareLocationGroup = self->_cardShareLocationGroup;
      self->_cardShareLocationGroup = v16;
    }

    [(CNContactContentUnitaryViewController *)self _retrieveActionsModelPreservingChanges:changesCopy];
    [(CNContactContentUnitaryViewController *)self _setupCardActions];
    [(CNContactContentUnitaryViewController *)self _setupContactBlockingActionPreservingChanges:changesCopy withUpdate:changesCopy ^ 1];
    [(CNContactContentUnitaryViewController *)self _setupContactBlockingReportingActionPreservingChanges:changesCopy withUpdate:changesCopy ^ 1];
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

- (void)blockListDidChange:(id)change
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleCoalescedBlockListDidChange object:0];

  [(CNContactContentUnitaryViewController *)self performSelector:sel__handleCoalescedBlockListDidChange withObject:0 afterDelay:0.1];
}

- (void)updateContactsViewWithBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  ++self->_animating;
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__CNContactContentUnitaryViewController_updateContactsViewWithBlock_completion___block_invoke;
  v13[3] = &unk_1E74E6F88;
  v14 = blockCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__CNContactContentUnitaryViewController_updateContactsViewWithBlock_completion___block_invoke_2;
  v11[3] = &unk_1E74E6FB0;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = blockCopy;
  [contactView performBatchUpdates:v13 completion:v11];
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
  displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
  [displayContactView contentSize];
  v5 = v4;
  [displayContactView contentInset];
  v7 = v6;
  displayContactView2 = [(CNContactContentUnitaryViewController *)self displayContactView];
  if (![(CNContactContentUnitaryViewController *)self hasPersonHeaderSectionForTableView:displayContactView2])
  {

    goto LABEL_5;
  }

  ab_isInPopover = [(UIViewController *)self ab_isInPopover];

  if (!ab_isInPopover)
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

- (double)desiredHeightForWidth:(double)width
{
  view = [(CNContactContentUnitaryViewController *)self view];
  [view frame];
  [view setFrame:?];
  [(CNContactContentUnitaryViewController *)self reloadDataIfNeeded];
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  visibleCells = [contactView visibleCells];

  view2 = [(CNContactContentUnitaryViewController *)self view];
  [view2 layoutIfNeeded];

  contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  [contactHeaderView setNeedsLayout];

  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    displayFloatingCollapsedHeaderView = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    [displayFloatingCollapsedHeaderView setNeedsLayout];
  }

  [(CNContactContentUnitaryViewController *)self requiredSizeForVisibleTableView];
  v11 = v10;
  superview = [view superview];
  [superview frame];
  [view setFrame:?];

  return v11;
}

- (void)cleanupRecentPosterMetadata
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CE00]);
  v4 = MEMORY[0x1E695CDF0];
  contact = [(CNContactContentUnitaryViewController *)self contact];
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
      contact2 = [(CNContactContentUnitaryViewController *)self contact];
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
  contact = [(CNContactContentUnitaryViewController *)self contact];
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
      contact2 = [(CNContactContentUnitaryViewController *)self contact];
      identifier2 = [contact2 identifier];
      *buf = 138412290;
      v15 = identifier2;
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
  contact = [(CNContactContentUnitaryViewController *)self contact];
  v4 = objc_opt_class();

  contact2 = [(CNContactContentUnitaryViewController *)self contact];
  linkedContacts = [contact2 linkedContacts];

  v6 = linkedContacts;
  if (linkedContacts)
  {
    v7 = [v4 unifyContacts:linkedContacts];
    [(CNContactContentUnitaryViewController *)self setContact:v7];

    v6 = linkedContacts;
  }
}

- (void)addStaticIdentity:(id)identity
{
  if (identity)
  {
    identityCopy = identity;
    cardStaticIdentityGroup = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
    [cardStaticIdentityGroup addIdentity:identityCopy isNew:1];

    cardStaticIdentityGroup2 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    [(CNContactContentUnitaryViewController *)self reloadCardGroup:cardStaticIdentityGroup2 forTableView:contactView];
  }
}

- (void)removeLinkedContact:(id)contact
{
  v14[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    contact = [(CNContactContentUnitaryViewController *)self contact];
    mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
    v7 = [mainStoreLinkedContacts containsObject:contactCopy];

    editingLinkedContacts = [(CNContactContentUnitaryViewController *)self editingLinkedContacts];
    v9 = [editingLinkedContacts containsObject:contactCopy];

    if ((v7 & 1) != 0 || v9)
    {
      availableKeyDescriptor = [contactCopy availableKeyDescriptor];
      v14[0] = availableKeyDescriptor;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [(CNContactContentUnitaryViewController *)self _setupEditingLinkedContactsForKeys:v11];

      editingLinkedContacts2 = [(CNContactContentUnitaryViewController *)self editingLinkedContacts];
      [editingLinkedContacts2 removeObject:contactCopy];

      [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
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
    contact = [(CNContactContentUnitaryViewController *)self contact];
    v6 = contact;
    if (contact == contactCopy)
    {
    }

    else
    {
      contact2 = [(CNContactContentUnitaryViewController *)self contact];
      mainStoreLinkedContacts = [contact2 mainStoreLinkedContacts];
      v9 = [mainStoreLinkedContacts containsObject:contactCopy];

      if ((v9 & 1) == 0)
      {
        availableKeyDescriptor = [contactCopy availableKeyDescriptor];
        v14[0] = availableKeyDescriptor;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        [(CNContactContentUnitaryViewController *)self _setupEditingLinkedContactsForKeys:v11];

        editingLinkedContacts = [(CNContactContentUnitaryViewController *)self editingLinkedContacts];
        [editingLinkedContacts addObject:contactCopy];

        [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
        v13 = +[CNUIDataCollector sharedCollector];
        [v13 logContactActionType:CNUIContactActionTypeLink attributes:0];
      }
    }
  }
}

- (void)_setupEditingLinkedContactsForKeys:(id)keys
{
  keysCopy = keys;
  editingLinkedContacts = [(CNContactContentUnitaryViewController *)self editingLinkedContacts];

  v5 = keysCopy;
  if (!editingLinkedContacts)
  {
    contact = [(CNContactContentUnitaryViewController *)self contact];
    isUnified = [contact isUnified];

    if (isUnified)
    {
      contact2 = [(CNContactContentUnitaryViewController *)self contact];
      mainStoreLinkedContacts = [contact2 mainStoreLinkedContacts];
      v10 = [mainStoreLinkedContacts mutableCopy];
    }

    else
    {
      v11 = MEMORY[0x1E695DF70];
      contact2 = [(CNContactContentUnitaryViewController *)self contact];
      mainStoreLinkedContacts = [contact2 copyWithPropertyKeys:keysCopy];
      v10 = [v11 arrayWithObject:mainStoreLinkedContacts];
    }

    v12 = v10;
    [(CNContactContentUnitaryViewController *)self setEditingLinkedContacts:v10];

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
    contact = [(CNContactContentUnitaryViewController *)self contact];
  }

  v6 = contact;
  [(CNContactContentUnitaryViewController *)self setContact:contact];
  [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:v6];
}

- (void)createdNewContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    [(CNContactContentViewController *)self setPrimaryProperty:0];
    [(CNContactContentUnitaryViewController *)self setContact:contactCopy];
    [(CNContactContentUnitaryViewController *)self setMode:1];
    [(CNContactContentUnitaryViewController *)self setAllowsEditing:1];
    [(CNContactContentUnitaryViewController *)self setAllowsAddingToAddressBook:0];
    [(CNContactContentUnitaryViewController *)self setAllowsAddToFavorites:1];
  }

  [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:contactCopy];
}

- (void)_didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v5 = contactCopy;
    v19 = [(CNContactContentUnitaryViewController *)self _removeUnauthorizedKeysFromContact:contactCopy];

    if (self->_contact != &self->_mutableContact->super)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v19 copy];

        v19 = v6;
      }
    }

    suggestedContactAction = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
    [suggestedContactAction confirmSuggestion];
  }

  else
  {
    v19 = 0;
  }

  if ([(CNContactContentUnitaryViewController *)self mode]== 3)
  {
    originalContacts = [(CNContactContentUnitaryViewController *)self originalContacts];
    v9 = [originalContacts count];

    if (v9 == 1)
    {
      if (v19)
      {
        v10 = +[CNUIDataCollector sharedCollector];
        originalContacts2 = [(CNContactContentUnitaryViewController *)self originalContacts];
        v12 = [originalContacts2 objectAtIndexedSubscript:0];
        [v10 logContactCreated:v19 originalContact:v12];
      }
    }
  }

  contactDelegate = [(CNContactContentUnitaryViewController *)self contactDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    contactDelegate2 = [(CNContactContentUnitaryViewController *)self contactDelegate];
    [contactDelegate2 contactViewController:self didCompleteWithContact:v19];
  }

  delegate = [(CNContactContentUnitaryViewController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
    [delegate2 didCompleteWithContact:v19];
  }
}

- (id)_removeUnauthorizedKeysFromContact:(id)contact
{
  contactCopy = contact;
  missingRequiredKeys = [(CNContactContentUnitaryViewController *)self missingRequiredKeys];
  v6 = [missingRequiredKeys count];

  if (v6)
  {
    v7 = [contactCopy mutableCopy];
    missingRequiredKeys2 = [(CNContactContentUnitaryViewController *)self missingRequiredKeys];
    [v7 removeKeys:missingRequiredKeys2];

    [v7 setFrozenSelfAsSnapshot];
    contactCopy = v7;
  }

  return contactCopy;
}

- (id)_updateContact:(id)contact withMissingKeysFromRequiredKeys:(id)keys
{
  v31[1] = *MEMORY[0x1E69E9840];
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
    identifier = [contactCopy identifier];

    if (identifier)
    {
      second = [v8 second];
      [(CNContactContentUnitaryViewController *)self setMissingRequiredKeys:second];

      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__64581;
      v29 = __Block_byref_object_dispose__64582;
      v30 = 0;
      v14 = objc_alloc(MEMORY[0x1E695CD78]);
      missingRequiredKeys = [(CNContactContentUnitaryViewController *)self missingRequiredKeys];
      v16 = [v14 initWithKeysToFetch:missingRequiredKeys];

      v17 = MEMORY[0x1E695CD58];
      identifier2 = [contactCopy identifier];
      v31[0] = identifier2;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v20 = [v17 predicateForContactsWithIdentifiers:v19];
      [v16 setPredicate:v20];

      [v16 setUnifyResults:{objc_msgSend(contactCopy, "isUnified")}];
      contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __88__CNContactContentUnitaryViewController__updateContact_withMissingKeysFromRequiredKeys___block_invoke;
      v24[3] = &unk_1E74E6F60;
      v24[4] = &v25;
      [contactStore enumerateContactsWithFetchRequest:v16 error:0 usingBlock:v24];

      v22 = [contactCopy mutableCopy];
      [v22 overwriteStateFromContact:v26[5]];
      freeze = [v22 freeze];

      _Block_object_dispose(&v25, 8);
    }

    else
    {
      freeze = 0;
    }
  }

  return freeze;
}

- (void)focusOnLastEditingItemInGroup:(id)group
{
  lastEditingItem = [group lastEditingItem];
  v4 = [(CNContactContentUnitaryViewController *)self indexPathOfEditingPropertyItem:lastEditingItem];
  objc_opt_class();
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
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
  if ([(CNContactContentUnitaryViewController *)self isEditing]&& [(CNContactContentUnitaryViewController *)self mode]== 3 && ![(CNContactContentUnitaryViewController *)self didSetFirstResponder])
  {
    [(CNContactContentUnitaryViewController *)self setDidSetFirstResponder:1];
    nameEditingGroups = [(CNContactContentUnitaryViewController *)self nameEditingGroups];
    firstObject = [nameEditingGroups firstObject];

    editingItems = [firstObject editingItems];
    firstObject2 = [editingItems firstObject];

    aggregatedNameGroups = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
    v7 = [(CNContactContentUnitaryViewController *)self indexPathOfPropertyItem:firstObject2 inGroup:aggregatedNameGroups editing:1];

    objc_opt_class();
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    v9 = [contactView cellForRowAtIndexPath:v7];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    firstResponderItem = [v11 firstResponderItem];

    [firstResponderItem becomeFirstResponder];
  }
}

- (void)removeEditingItem:(id)item atIndexPath:(id)path forTableView:(id)view
{
  itemCopy = item;
  pathCopy = path;
  viewCopy = view;
  v11 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
  canAddEditingItem = [v11 canAddEditingItem];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__CNContactContentUnitaryViewController_removeEditingItem_atIndexPath_forTableView___block_invoke;
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

- (void)addEditingItem:(id)item atIndexPath:(id)path forTableView:(id)view shouldSetFocus:(BOOL)focus
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v13 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
  v14 = [v13 addEditingItem:itemCopy];

  if (v14)
  {
    [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCellsInGroup:v13 forTableView:viewCopy reset:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __96__CNContactContentUnitaryViewController_addEditingItem_atIndexPath_forTableView_shouldSetFocus___block_invoke;
    v17[3] = &unk_1E74E6EE8;
    v17[4] = v13;
    v17[5] = self;
    v18 = pathCopy;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __96__CNContactContentUnitaryViewController_addEditingItem_atIndexPath_forTableView_shouldSetFocus___block_invoke_2;
    v15[3] = &unk_1E74E6F10;
    focusCopy = focus;
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
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
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

        [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCell:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [contactView setContentOffset:{v5, v7}];
  [(CNContactContentUnitaryViewController *)self adjustPreferredContentSize];
}

- (void)_updateLabelWidthForCellsInGroup:(id)group forTableView:(id)view reset:(BOOL)reset
{
  resetCopy = reset;
  groupCopy = group;
  viewCopy = view;
  if (resetCopy)
  {
    v9 = [(CNContactContentUnitaryViewController *)self _labelWidthKeyForGroup:groupCopy];
    cachedLabelWidths = [(CNContactContentUnitaryViewController *)self cachedLabelWidths];
    [cachedLabelWidths removeObjectForKey:v9];
  }

  [(CNContactContentUnitaryViewController *)self _updateCachedLabelWidthsForGroup:groupCopy];
  v11 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:groupCopy inTableView:viewCopy];
  editingItems = [groupCopy editingItems];
  if ([editingItems count])
  {
    v13 = 0;
    do
    {
      v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:v11];
      v15 = [viewCopy cellForRowAtIndexPath:v14];
      [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCell:v15];

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
      v10 = [(CNContactContentUnitaryViewController *)self _labelWidthKeyForItem:propertyItem];
    }

    else
    {
      group = [propertyItem group];
      v10 = [(CNContactContentUnitaryViewController *)self _labelWidthKeyForGroup:group];
    }

    cachedLabelWidths = [(CNContactContentUnitaryViewController *)self cachedLabelWidths];
    v13 = [cachedLabelWidths objectForKey:v10];
    [v13 floatValue];
    [v6 setLabelWidth:v14];

    v5 = cellCopy;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v5);
}

- (void)_updateCachedLabelWidthsIfNeeded
{
  cachedLabelWidths = [(CNContactContentUnitaryViewController *)self cachedLabelWidths];

  if (!cachedLabelWidths)
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
    view = [(CNContactContentUnitaryViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_updateCachedLabelWidths
{
  weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  [(CNContactContentUnitaryViewController *)self setCachedLabelWidths:weakToStrongObjectsMapTable];

  editingGroups = [(CNContactContentUnitaryViewController *)self editingGroups];
  v5 = [editingGroups count];

  if (v5)
  {
    v6 = 0;
    do
    {
      editingGroups2 = [(CNContactContentUnitaryViewController *)self editingGroups];
      v8 = [editingGroups2 objectAtIndexedSubscript:v6];

      [(CNContactContentUnitaryViewController *)self _updateCachedLabelWidthsForGroup:v8];
      ++v6;
      editingGroups3 = [(CNContactContentUnitaryViewController *)self editingGroups];
      v10 = [editingGroups3 count];
    }

    while (v6 < v10);
  }

  [(CNContactContentUnitaryViewController *)self _updateLabelWidthsForAllVisibleCells];
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

        [(CNContactContentUnitaryViewController *)self _updateCachedLabelWidthsForItem:*(*(&v9 + 1) + 8 * v8++)];
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
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
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

    contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
    [contactView2 frame];
    Width = CGRectGetWidth(v39);
    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
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
    contactView4 = [(CNContactContentUnitaryViewController *)self contactView];
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
    v27 = [(CNContactContentUnitaryViewController *)self _labelWidthKeyForGroup:group];
    v28 = [(CNContactContentUnitaryViewController *)self _labelWidthKeyForItem:v6];
    cachedLabelWidths = [(CNContactContentUnitaryViewController *)self cachedLabelWidths];
    v30 = [cachedLabelWidths objectForKey:v27];
    [v30 floatValue];
    v32 = v31;

    if (v25 > 0.0)
    {
      cachedLabelWidths2 = [(CNContactContentUnitaryViewController *)self cachedLabelWidths];
      v34 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      [cachedLabelWidths2 setObject:v34 forKey:v28];

      if (v25 > v32)
      {
        cachedLabelWidths3 = [(CNContactContentUnitaryViewController *)self cachedLabelWidths];
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

- (void)removePersonHeaderViewControllerFromHierarchy
{
  personHeaderViewController = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
  parentViewController = [personHeaderViewController parentViewController];

  if (parentViewController)
  {
    personHeaderViewController2 = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
    [personHeaderViewController2 willMoveToParentViewController:0];

    personHeaderViewController3 = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
    isViewLoaded = [personHeaderViewController3 isViewLoaded];

    if (isViewLoaded)
    {
      personHeaderViewController4 = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
      view = [personHeaderViewController4 view];
      [view removeFromSuperview];
    }

    personHeaderViewController5 = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
    [personHeaderViewController5 removeFromParentViewController];
  }
}

- (BOOL)isPersonHeaderIndexPath:(id)path forTableView:(id)view
{
  viewCopy = view;
  LOBYTE(path) = -[CNContactContentUnitaryViewController isPersonHeaderSectionForTableView:section:](self, "isPersonHeaderSectionForTableView:section:", viewCopy, [path section]);

  return path;
}

- (id)personHeaderCellForTableView:(id)view
{
  v64[4] = *MEMORY[0x1E69E9840];
  v4 = [view dequeueReusableCellWithIdentifier:@"PersonHeaderCellIdentifier"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"PersonHeaderCellIdentifier"];
    [v4 setSelectionStyle:0];
    [v4 setSeparatorStyle:0];
    [v4 _cnui_applyContactStyle];
  }

  selfCopy = self;
  personHeaderViewController = [(CNContactContentUnitaryViewController *)selfCopy personHeaderViewController];
  parentViewController = [personHeaderViewController parentViewController];

  if (parentViewController != selfCopy)
  {
    [(CNContactContentUnitaryViewController *)selfCopy removePersonHeaderViewControllerFromHierarchy];
    personHeaderViewController2 = [(CNContactContentUnitaryViewController *)selfCopy personHeaderViewController];
    [(CNContactContentUnitaryViewController *)selfCopy addChildViewController:personHeaderViewController2];

    personHeaderViewController3 = [(CNContactContentUnitaryViewController *)selfCopy personHeaderViewController];
    view = [personHeaderViewController3 view];

    contentView = [v4 contentView];
    [contentView addSubview:view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];

    personHeaderViewDelegate = [(CNContactContentUnitaryViewController *)selfCopy personHeaderViewDelegate];
    v61 = layoutMarginsGuide;
    v62 = view;
    if (personHeaderViewDelegate && (v15 = personHeaderViewDelegate, [(CNContactContentUnitaryViewController *)selfCopy personHeaderViewDelegate], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_respondsToSelector(), v16, v15, (v17 & 1) != 0))
    {
      personHeaderViewDelegate2 = [(CNContactContentUnitaryViewController *)selfCopy personHeaderViewDelegate];
      personHeaderViewController4 = [(CNContactContentUnitaryViewController *)selfCopy personHeaderViewController];
      [personHeaderViewDelegate2 contentInsetsForCustomHeaderViewController:personHeaderViewController4];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v51 = MEMORY[0x1E696ACD8];
      topAnchor = [view topAnchor];
      contentView3 = [v4 contentView];
      topAnchor2 = [contentView3 topAnchor];
      v58 = [topAnchor constraintEqualToAnchor:v21 constant:?];
      v64[0] = v58;
      bottomAnchor = [view bottomAnchor];
      contentView4 = [v4 contentView];
      [contentView4 bottomAnchor];
      v55 = v57 = bottomAnchor;
      v54 = [bottomAnchor constraintEqualToAnchor:-v25 constant:?];
      v64[1] = v54;
      leadingAnchor = [view leadingAnchor];
      contentView5 = [v4 contentView];
      leadingAnchor2 = [contentView5 leadingAnchor];
      v53 = leadingAnchor;
      trailingAnchor3 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v23];
      v64[2] = trailingAnchor3;
      trailingAnchor = [view trailingAnchor];
      contentView6 = [v4 contentView];
      trailingAnchor2 = [contentView6 trailingAnchor];
      v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v27];
      v64[3] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
      [v51 activateConstraints:v37];

      topAnchor3 = topAnchor;
    }

    else
    {
      v52 = MEMORY[0x1E696ACD8];
      topAnchor3 = [view topAnchor];
      contentView3 = [v4 contentView];
      topAnchor2 = [contentView3 topAnchor];
      v58 = [topAnchor3 constraintEqualToAnchor:?];
      v63[0] = v58;
      bottomAnchor2 = [view bottomAnchor];
      contentView4 = [v4 contentView];
      [contentView4 bottomAnchor];
      v55 = v57 = bottomAnchor2;
      v54 = [bottomAnchor2 constraintEqualToAnchor:?];
      v63[1] = v54;
      leadingAnchor3 = [view leadingAnchor];
      contentView5 = [layoutMarginsGuide leadingAnchor];
      v53 = leadingAnchor3;
      leadingAnchor2 = [leadingAnchor3 constraintEqualToAnchor:contentView5];
      v63[2] = leadingAnchor2;
      trailingAnchor3 = [view trailingAnchor];
      trailingAnchor = [layoutMarginsGuide trailingAnchor];
      contentView6 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor];
      v63[3] = contentView6;
      trailingAnchor2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:4];
      [v52 activateConstraints:trailingAnchor2];
    }

    personHeaderViewDelegate3 = [(CNContactContentUnitaryViewController *)selfCopy personHeaderViewDelegate];
    if (personHeaderViewDelegate3)
    {
      v42 = personHeaderViewDelegate3;
      personHeaderViewDelegate4 = [(CNContactContentUnitaryViewController *)selfCopy personHeaderViewDelegate];
      v44 = objc_opt_respondsToSelector();

      if (v44)
      {
        personHeaderViewDelegate5 = [(CNContactContentUnitaryViewController *)selfCopy personHeaderViewDelegate];
        personHeaderViewController5 = [(CNContactContentUnitaryViewController *)selfCopy personHeaderViewController];
        v47 = [personHeaderViewDelegate5 backgroundColorForCustomHeaderViewController:personHeaderViewController5];

        if (v47)
        {
          contentView7 = [v4 contentView];
          [contentView7 setBackgroundColor:v47];

          [v4 setBackgroundColor:v47];
        }
      }
    }
  }

  return v4;
}

- (BOOL)isPersonHeaderSectionForTableView:(id)view section:(int64_t)section
{
  viewCopy = view;
  if ([(CNContactContentUnitaryViewController *)self hasPersonHeaderSectionForTableView:viewCopy])
  {
    if ([(CNContactContentUnitaryViewController *)self hasSharedProfileBannerSectionForTableView:viewCopy])
    {
      v7 = section == 1;
    }

    else
    {
      v7 = section == 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasPersonHeaderSectionForTableView:(id)view
{
  viewCopy = view;
  personHeaderViewController = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
  if (personHeaderViewController)
  {
    displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
    v7 = displayContactView == viewCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)presentAvatarPosterEditor
{
  editingHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
  [editingHeaderView editButtonTappedWhileEditing:{-[CNContactContentUnitaryViewController isEditing](self, "isEditing")}];

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

- (void)sharedProfileBannerView:(id)view didDismissWithUpdatedContact:(id)contact forAction:(unint64_t)action
{
  contactCopy = contact;
  displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
  v9 = [(CNContactContentUnitaryViewController *)self hasSharedProfileBannerSectionForTableView:displayContactView];

  [(CNContactContentUnitaryViewController *)self setTappedSharedProfileBannerAction:0];
  [(CNContactContentUnitaryViewController *)self setDismissedSharedProfileBannerAction:action];
  displayContactView2 = [(CNContactContentUnitaryViewController *)self displayContactView];
  v11 = [(CNContactContentUnitaryViewController *)self hasSharedProfileBannerSectionForTableView:displayContactView2];

  if (v9 && !v11)
  {
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
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
    v14 = contactCopy;
    [contactView performBatchUpdates:v15 completion:v13];
  }
}

void __104__CNContactContentUnitaryViewController_sharedProfileBannerView_didDismissWithUpdatedContact_forAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactView];
  v1 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v2 deleteSections:v1 withRowAnimation:2];
}

- (void)sharedProfileBannerView:(id)view didUpdateContact:(id)contact forAction:(unint64_t)action
{
  contactCopy = contact;
  [(CNContactContentUnitaryViewController *)self setTappedSharedProfileBannerAction:action];
  [(CNContactContentUnitaryViewController *)self setDismissedSharedProfileBannerAction:0];
  [(CNContactContentUnitaryViewController *)self setContact:contactCopy];
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
  contact = [(CNContactContentUnitaryViewController *)self contact];
  contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
  v6 = [v3 initWithContact:contact contactStore:contactStore];
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

- (id)sharedProfileBannerSectionCellForTableView:(id)view
{
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  v5 = +[CNContactView cellIdentifierForSharedProfileBanner];
  v6 = [contactView dequeueReusableCellWithIdentifier:v5];

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
  sharedProfileStateOracle = [(CNContactContentUnitaryViewController *)self sharedProfileStateOracle];
  [v9 setUpWithSharedProfileStateOracle:sharedProfileStateOracle tappedAction:-[CNContactContentUnitaryViewController tappedSharedProfileBannerAction](self hasPerformedAnimation:{"tappedSharedProfileBannerAction"), -[CNContactContentUnitaryViewController hasPerformedSharedProfileBannerAnimation](self, "hasPerformedSharedProfileBannerAnimation")}];

  [(CNContactContentUnitaryViewController *)self setHasPerformedSharedProfileBannerAnimation:1];

  return v7;
}

- (BOOL)isSharedProfileBannerSectionIndexPath:(id)path forTableView:(id)view
{
  viewCopy = view;
  LOBYTE(path) = -[CNContactContentUnitaryViewController isSharedProfileBannerSectionForTableView:section:](self, "isSharedProfileBannerSectionForTableView:section:", viewCopy, [path section]);

  return path;
}

- (BOOL)isSharedProfileBannerSectionForTableView:(id)view section:(int64_t)section
{
  result = [(CNContactContentUnitaryViewController *)self hasSharedProfileBannerSectionForTableView:view];
  if (section)
  {
    return 0;
  }

  return result;
}

- (BOOL)hasSharedProfileBannerSectionForTableView:(id)view
{
  viewCopy = view;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v7 = [featureFlags isFeatureEnabled:27];

  if (v7 && [(CNContactContentUnitaryViewController *)self shouldShowSharedProfileBanner]&& ([(CNContactContentUnitaryViewController *)self displayContactView], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == viewCopy) && ![(CNContactContentUnitaryViewController *)self dismissedSharedProfileBannerAction])
  {
    bannerActionTypeForEffectiveState = [(CNContactContentUnitaryViewController *)self bannerActionTypeForEffectiveState];
    v9 = (bannerActionTypeForEffectiveState | [(CNContactContentUnitaryViewController *)self tappedSharedProfileBannerAction]) != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setShouldShowSharedProfileBanner:(BOOL)banner
{
  if (self->_shouldShowSharedProfileBanner != banner)
  {
    self->_shouldShowSharedProfileBanner = banner;
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    [contactView reloadData];
  }
}

- (BOOL)shouldShowSharedProfileRow
{
  if (![(CNContactContentUnitaryViewController *)self showsSharedProfile])
  {
    return 0;
  }

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:27];

  if (!v5 || [(CNContactContentUnitaryViewController *)self mode]== 2)
  {
    return 0;
  }

  return [(CNContactContentUnitaryViewController *)self showContactPhotoPosterCell];
}

- (int64_t)additionalTopSectionsCountForTableView:(id)view
{
  viewCopy = view;
  v5 = [(CNContactContentUnitaryViewController *)self hasSharedProfileBannerSectionForTableView:viewCopy];
  LODWORD(self) = [(CNContactContentUnitaryViewController *)self hasPersonHeaderSectionForTableView:viewCopy];

  return self + v5;
}

- (void)geminiDataSourceDidUpdate:(id)update
{
  v28[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  geminiResult = [updateCopy geminiResult];
  cardEditingGeminiGroup = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
  editingItems = [cardEditingGeminiGroup editingItems];
  firstObject = [editingItems firstObject];

  [firstObject geminiDataSourceDidUpdate:updateCopy];
  v9 = [(CNContactContentUnitaryViewController *)self indexPathOfEditingPropertyItem:firstObject];
  shouldShowGemini = [(CNContactContentUnitaryViewController *)self shouldShowGemini];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    staticDisplayHeaderView = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    [staticDisplayHeaderView updateGeminiResult:geminiResult];

    [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
  }

  else
  {
    displayHeaderView = [(CNContactContentUnitaryViewController *)self displayHeaderView];
    [displayHeaderView updateGeminiResult:geminiResult];

    [(CNContactContentUnitaryViewController *)self displayHeaderView];
  }
  v13 = ;
  [v13 setShouldShowGemini:shouldShowGemini];

  cardEditingGeminiGroup2 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
  [cardEditingGeminiGroup2 setGeminiResult:geminiResult];

  cardEditingGeminiGroup3 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
  [cardEditingGeminiGroup3 setShouldShowGemini:shouldShowGemini];

  editingContactView = [(CNContactContentUnitaryViewController *)self editingContactView];
  cardEditingGeminiGroup4 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
  if (cardEditingGeminiGroup4)
  {
    v18 = cardEditingGeminiGroup4;
    isEditing = [(CNContactContentUnitaryViewController *)self isEditing];

    if (isEditing)
    {
      if (v9)
      {
        if (shouldShowGemini)
        {
          v28[0] = v9;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
          [editingContactView reloadRowsAtIndexPaths:v20 withRowAnimation:100];
        }

        else
        {
          cardEditingGeminiGroup5 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
          v26 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:cardEditingGeminiGroup5 inTableView:editingContactView];

          editingGroups = [(CNContactContentUnitaryViewController *)self editingGroups];
          [editingGroups removeObjectAtIndex:v26];

          v20 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v9, "indexAtPosition:", 0)}];
          [editingContactView deleteSections:v20 withRowAnimation:3];
        }

        goto LABEL_13;
      }

      if (shouldShowGemini)
      {
        editingGroups2 = [(CNContactContentUnitaryViewController *)self editingGroups];
        cardEditingGeminiGroup6 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
        [editingGroups2 insertObject:cardEditingGeminiGroup6 atIndex:0];

        cardEditingGeminiGroup7 = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
        v24 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:cardEditingGeminiGroup7 inTableView:editingContactView];

        if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = [MEMORY[0x1E696AC90] indexSetWithIndex:v24];
          [editingContactView insertSections:v20 withRowAnimation:3];
LABEL_13:
        }
      }
    }
  }
}

- (void)setMenuProviderForCell:(id)cell forActionGroupItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  if (!cellCopy || (-[CNContactContentUnitaryViewController cardShareLocationGroup](self, "cardShareLocationGroup"), v8 = objc_claimAutoreleasedReturnValue(), [v8 actions], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(itemCopy, "actions"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToArray:", v10), v10, v9, v8, !v11))
  {
    cardGameCenterActionGroup = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
    actions = [cardGameCenterActionGroup actions];
    actions2 = [itemCopy actions];
    if ([actions isEqualToArray:actions2])
    {
      gameCenterManager = [(CNContactContentUnitaryViewController *)self gameCenterManager];
      shouldActionDisplayDropdownMenu = [gameCenterManager shouldActionDisplayDropdownMenu];

      if (shouldActionDisplayDropdownMenu)
      {
        actions3 = [itemCopy actions];
        firstObject = [actions3 firstObject];

        target = [firstObject target];

        if (!target)
        {
LABEL_22:

          goto LABEL_23;
        }

        target2 = [firstObject target];
        addFriendsMenuProvider = [target2 addFriendsMenuProvider];

        if (addFriendsMenuProvider)
        {
          [cellCopy setMenuProvider:addFriendsMenuProvider];
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
    }

    actions4 = [itemCopy actions];
    firstObject2 = [actions4 firstObject];

    objc_opt_class();
    firstObject = firstObject2;
    if (objc_opt_isKindOfClass())
    {
      v25 = firstObject;
    }

    else
    {
      v25 = 0;
    }

    addFriendsMenuProvider = v25;

    if (addFriendsMenuProvider)
    {
      menuProvider = [addFriendsMenuProvider menuProvider];
      [cellCopy setMenuProvider:menuProvider];
    }

    else
    {
      target3 = [firstObject target];
      if ([target3 conformsToProtocol:&unk_1F0D822B0])
      {
        v28 = target3;
      }

      else
      {
        v28 = 0;
      }

      menuProvider = v28;

      if (menuProvider)
      {
        contextMenuInteraction = [cellCopy contextMenuInteraction];
        v30 = [menuProvider menuProviderForContextMenuInteraction:contextMenuInteraction];
        [cellCopy setMenuProvider:v30];
      }
    }

    goto LABEL_21;
  }

  shareLocationController = [(CNContactContentUnitaryViewController *)self shareLocationController];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __83__CNContactContentUnitaryViewController_setMenuProviderForCell_forActionGroupItem___block_invoke;
  v31[3] = &unk_1E74E6E70;
  v32 = cellCopy;
  [shareLocationController actionsMenuProviderWithCompletion:v31];

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

- (id)_cellForIndexPath:(id)path forTableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v9 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:pathCopy forTableView:viewCopy];
  v10 = [(CNContactContentUnitaryViewController *)self _cellIdentifierForTableView:viewCopy indexPath:pathCopy];
  noteCell = [(CNContactContentUnitaryViewController *)self noteCell];
  if (noteCell && (v12 = noteCell, -[CNContactContentUnitaryViewController contactView](self, "contactView"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_class(), [v14 cellIdentifierForClass:objc_opt_class()], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v10, "isEqualToString:", v15), v15, v13, v12, v16))
  {
    noteCell2 = [(CNContactContentUnitaryViewController *)self noteCell];
    [(CNContactContentUnitaryViewController *)self setNoteCell:0];
  }

  else
  {
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    noteCell2 = [contactView dequeueReusableCellWithIdentifier:v10];
  }

  if (!noteCell2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactContentUnitaryViewController.m" lineNumber:6694 description:{@"We couldn’t create a cell with identifier: %@ indexPath: %@", v10, pathCopy}];
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
      highlightedProperties = [(CNContactContentUnitaryViewController *)self highlightedProperties];
      if ([highlightedProperties count])
      {
        highlightedProperties2 = [(CNContactContentUnitaryViewController *)self highlightedProperties];
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
    presentingDelegate = [(CNContactContentUnitaryViewController *)self presentingDelegate];
    [noteCell2 setPresentingDelegate:presentingDelegate];
  }

  if (objc_opt_respondsToSelector())
  {
    displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
    v28 = displayContactView;
    if (displayContactView == viewCopy)
    {
      contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
      v30 = objc_opt_class();
      v31 = [v30 cellIdentifierForClass:objc_opt_class()];
      v32 = [v73 isEqualToString:v31];

      if (v32)
      {
        if ([(CNContactContentUnitaryViewController *)self allowsEditing])
        {
          allowsEditing = [(CNContactContentUnitaryViewController *)self editRequiresAuthorization]^ 1;
        }

        else
        {
          allowsEditing = 0;
        }

        goto LABEL_31;
      }
    }

    else
    {
    }

    allowsEditing = [(CNContactContentUnitaryViewController *)self allowsEditing];
LABEL_31:
    [noteCell2 setAllowsEditing:allowsEditing];
  }

  if (objc_opt_respondsToSelector())
  {
    [noteCell2 setAllowsActions:{-[CNContactContentUnitaryViewController allowsActions](self, "allowsActions")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v34 = noteCell2;
    [v34 setVIP:{-[CNContactContentUnitaryViewController isMailVIP](self, "isMailVIP")}];
  }

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v37 = [featureFlags isFeatureEnabled:21];

  if (v37 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v38 = noteCell2;
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

    cachedVerifiedHandles = [(CNContactContentUnitaryViewController *)self cachedVerifiedHandles];
    if (cachedVerifiedHandles)
    {
      cachedVerifiedHandles2 = [(CNContactContentUnitaryViewController *)self cachedVerifiedHandles];
      displayValue = [v41 displayValue];
      [v38 setStaticIdentityVerified:{objc_msgSend(cachedVerifiedHandles2, "containsObject:", displayValue)}];
    }

    else
    {
      [v38 setStaticIdentityVerified:0];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v45 = noteCell2;
    emergencyNumberIdentifier = [(CNContactContentUnitaryViewController *)self emergencyNumberIdentifier];
    propertyItem = [v45 propertyItem];
    contactProperty2 = [propertyItem contactProperty];
    identifier = [contactProperty2 identifier];
    [v45 setEmergencyPhoneNumber:{objc_msgSend(emergencyNumberIdentifier, "isEqualToString:", identifier)}];
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
    v53 = noteCell2;
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
    v56 = noteCell2;
    if (objc_opt_isKindOfClass())
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v58 = v57;

    [v58 setShowsGameCenterLabel:{objc_msgSend(pathCopy, "row") == 0}];
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

    sharedProfileStateOracle = [(CNContactContentUnitaryViewController *)self sharedProfileStateOracle];
    [v61 setSharedProfileStateOracle:sharedProfileStateOracle];

    objc_opt_class();
    v63 = noteCell2;
    if (objc_opt_isKindOfClass())
    {
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    v65 = v64;

    sharedProfileStateOracle2 = [(CNContactContentUnitaryViewController *)self sharedProfileStateOracle];
    [v65 setSharedProfileStateOracle:sharedProfileStateOracle2];

    [v65 setActionDelegate:self];
    [v65 setAllowsEditing:{-[CNContactContentUnitaryViewController allowsEditing](self, "allowsEditing")}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v67 = noteCell2;
    if (objc_opt_isKindOfClass())
    {
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    v69 = v68;

    mutableContactForHeaderView = [(CNContactContentUnitaryViewController *)self mutableContactForHeaderView];
    [v69 setMeContact:mutableContactForHeaderView];
  }

  return noteCell2;
}

- (id)_cellIdentifierForTableView:(id)view indexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:pathCopy forTableView:viewCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    if (![(CNContactContentUnitaryViewController *)self isEditing])
    {
      property = [v10 property];
      v12 = [CNContactView cellIdentifierForProperty:property];

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
    v10 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactContentUnitaryViewController.m" lineNumber:6671 description:{@"Unknown group item: %@", v9}];

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_scrollContactView:(id)view toVisibleGroup:(id)group animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  groupCopy = group;
  [viewCopy _effectiveContentInset];
  [viewCopy setContentOffset:{0.0, -v9}];
  if (groupCopy)
  {
    v10 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:groupCopy inTableView:viewCopy];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10;
      displayItems = [groupCopy displayItems];
      v13 = ([displayItems count] >> 1);

      v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:v11];
      numberOfSections = [viewCopy numberOfSections];
      if (numberOfSections > [v14 section])
      {
        v16 = [viewCopy numberOfRowsInSection:{objc_msgSend(v14, "section")}];
        if (v16 > [v14 row])
        {
LABEL_7:
          if (!v14)
          {
            goto LABEL_10;
          }

          [viewCopy scrollToRowAtIndexPath:v14 atScrollPosition:2 animated:animatedCopy];
          goto LABEL_9;
        }

        if ([viewCopy numberOfRowsInSection:{objc_msgSend(v14, "section")}] >= 1)
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
      v18 = [(CNContactContentUnitaryViewController *)self cardGroupForProperty:property];

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

  [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:0, v2, v3];
  return 1;
}

- (BOOL)isSuggestedContact
{
  contact = [(CNContactContentUnitaryViewController *)self contact];
  isSuggested = [contact isSuggested];

  return isSuggested;
}

- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier
{
  contactCopy = contact;
  keyCopy = key;
  identifierCopy = identifier;
  contactDelegate = [(CNContactContentUnitaryViewController *)self contactDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    contactDelegate2 = [(CNContactContentUnitaryViewController *)self contactDelegate];
    v15 = [contactDelegate2 contactViewController:self shouldPerformDefaultActionForContact:contactCopy propertyKey:keyCopy propertyIdentifier:identifierCopy];
  }

  else
  {
    v15 = 1;
  }

  delegate = [(CNContactContentUnitaryViewController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(CNContactContentUnitaryViewController *)self _removeUnauthorizedKeysFromContact:contactCopy];

    delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
    v15 = [delegate2 shouldPerformDefaultActionForContact:v18 propertyKey:keyCopy propertyIdentifier:identifierCopy];

    contactCopy = v18;
  }

  return v15;
}

- (void)contactViewController:(id)controller didDeleteContact:(id)contact
{
  contactCopy = contact;
  contact = [(CNContactContentUnitaryViewController *)self contact];
  mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
  v7 = [mainStoreLinkedContacts containsObject:contactCopy];

  if (v7)
  {
    [(CNContactContentUnitaryViewController *)self removeLinkedContact:contactCopy];
    saveLinkedContactsExecutor = [(CNContactContentUnitaryViewController *)self saveLinkedContactsExecutor];
    saveDescriptionForCurrentState = [(CNContactContentUnitaryViewController *)self saveDescriptionForCurrentState];
    v11 = [saveLinkedContactsExecutor executeSaveWithConfiguration:saveDescriptionForCurrentState saveDelegate:self];

    [(CNContactContentUnitaryViewController *)self setEditingLinkedContacts:0];
    issuedSaveRequestIdentifiers = [(CNContactContentUnitaryViewController *)self issuedSaveRequestIdentifiers];
    identifiersOfIssuedSaveRequests = [v11 identifiersOfIssuedSaveRequests];
    [issuedSaveRequestIdentifiers addObjectsFromArray:identifiersOfIssuedSaveRequests];

    contact2 = [v11 contact];

    if (contact2)
    {
      contact3 = [v11 contact];
      [(CNContactContentUnitaryViewController *)self setContact:contact3];
    }
  }

  MEMORY[0x1EEE66BE0](v8);
}

- (void)headerViewDidTapNameLabel:(id)label
{
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0 && [(CNContactContentUnitaryViewController *)self allowsNamePicking])
  {

    [(CNContactContentUnitaryViewController *)self _pickName];
  }
}

- (void)headerView:(id)view didSetNameLabelColor:(id)color
{
  viewCopy = view;
  colorCopy = color;
  if (self->_staticDisplayHeaderView == viewCopy)
  {
    v7 = &OBJC_IVAR___CNContactContentUnitaryViewController__actionsViewController;
  }

  else
  {
    if (self->_displayFloatingCollapsedHeaderView != viewCopy)
    {
      goto LABEL_6;
    }

    v7 = &OBJC_IVAR___CNContactContentUnitaryViewController__floatingActionsViewController;
  }

  [*(&self->super.super.super.super.isa + *v7) setPosterTintColor:colorCopy];
LABEL_6:
}

- (void)headerView:(id)view didSetBackgroundAsGradientColors:(id)colors
{
  colorsCopy = colors;
  v7 = colorsCopy;
  if (self->_staticDisplayHeaderView == view)
  {
    v8 = colorsCopy;
    [(CNContactContentUnitaryViewController *)self setHeaderViewBackgroundColors:colorsCopy];
    if ([(CNContactContentUnitaryViewController *)self shouldSetBackgroundColorToMatchHeader])
    {
      colorsCopy = [(CNContactContentUnitaryViewController *)self setContactViewBackgroundToMatchHeader];
    }

    else
    {
      colorsCopy = [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView updateBackgroundWithGradientColors:v8 horizontal:0];
    }

    v7 = v8;
  }

  MEMORY[0x1EEE66BB8](colorsCopy, v7);
}

- (void)headerView:(id)view didSetBackgroundAsPosterSnapshotImage:(id)image
{
  if (self->_staticDisplayHeaderView == view)
  {
    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView updateBackgroundWithPosterSnapshotImage:image];
  }
}

- (BOOL)isPadCompactHorizontalSize
{
  traitCollection = [(CNContactContentUnitaryViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return userInterfaceIdiom == 1 && horizontalSizeClass == 1;
}

- (BOOL)isPadRegularHorizontalSize
{
  traitCollection = [(CNContactContentUnitaryViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return userInterfaceIdiom == 1 && horizontalSizeClass != 1;
}

- (BOOL)isOrientationPhoneLandscape
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = [(CNContactContentUnitaryViewController *)self interfaceOrientation]- 3;
  if (userInterfaceIdiom)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 >= 2;
  }

  return !v6;
}

- (BOOL)isHeaderViewContactBlocked:(id)blocked
{
  blockAction = [(CNContactContentUnitaryViewController *)self blockAction];

  if (!blockAction)
  {
    v5 = [CNContactToggleBlockCallerAction alloc];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    v7 = [(CNContactAction *)v5 initWithContact:contact];
    [(CNContactContentUnitaryViewController *)self setBlockAction:v7];

    blockAction2 = [(CNContactContentUnitaryViewController *)self blockAction];
    [blockAction2 setDelegate:self];
  }

  blockAction3 = [(CNContactContentUnitaryViewController *)self blockAction];
  v10 = [blockAction3 isContactBlockedPreservingChanges:1];

  return v10 ^ 1;
}

- (void)headerView:(id)view didRequestToBlockContact:(BOOL)contact
{
  v5 = [(CNContactContentUnitaryViewController *)self blockAction:view];

  if (!v5)
  {
    v6 = [CNContactToggleBlockCallerAction alloc];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    v8 = [(CNContactAction *)v6 initWithContact:contact];
    [(CNContactContentUnitaryViewController *)self setBlockAction:v8];

    blockAction = [(CNContactContentUnitaryViewController *)self blockAction];
    [blockAction setDelegate:self];
  }

  blockAction2 = [(CNContactContentUnitaryViewController *)self blockAction];
  [blockAction2 performActionWithSender:self];
}

- (void)headerView:(id)view didUpdateSensitiveContentOverride:(BOOL)override
{
  if (override)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  contact = [(CNContactContentUnitaryViewController *)self contact];
  sensitiveContentConfiguration = [contact sensitiveContentConfiguration];
  override = [sensitiveContentConfiguration override];

  if (override != v5)
  {
    contact2 = [(CNContactContentUnitaryViewController *)self contact];
    v17 = [contact2 mutableCopy];

    sensitiveContentConfiguration2 = [v17 sensitiveContentConfiguration];

    if (sensitiveContentConfiguration2)
    {
      sensitiveContentConfiguration3 = [v17 sensitiveContentConfiguration];
      v12 = [sensitiveContentConfiguration3 updatedWithOverride:v5];
      [v17 setSensitiveContentConfiguration:v12];
    }

    else
    {
      sensitiveContentConfiguration3 = [MEMORY[0x1E695CF90] configurationWithOverride:v5];
      [v17 setSensitiveContentConfiguration:sensitiveContentConfiguration3];
    }

    v13 = objc_alloc_init(MEMORY[0x1E695CF88]);
    [v13 setIgnoresGuardianRestrictions:{-[CNContactContentUnitaryViewController saveWasAuthorized](self, "saveWasAuthorized")}];
    issuedSaveRequestIdentifiers = [(CNContactContentUnitaryViewController *)self issuedSaveRequestIdentifiers];
    saveRequestIdentifier = [v13 saveRequestIdentifier];
    [issuedSaveRequestIdentifiers addObject:saveRequestIdentifier];

    [v13 updateContact:v17];
    contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
    [contactStore executeSaveRequest:v13 error:0];

    [(CNContactContentUnitaryViewController *)self setContact:v17];
  }
}

- (double)navigationBarHeight
{
  currentNavigationController = [(CNContactContentUnitaryViewController *)self currentNavigationController];
  navigationBar = [currentNavigationController navigationBar];
  [navigationBar frame];
  v5 = v4;

  return v5;
}

- (UIEdgeInsets)headerViewSafeAreaInsets
{
  view = [(CNContactContentUnitaryViewController *)self view];
  [view safeAreaInsets];
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

- (void)headerViewDidChangeHeight:(id)height
{
  heightCopy = height;
  contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];

  if (contactHeaderView == heightCopy)
  {

    [(CNContactContentUnitaryViewController *)self setupViewHierarchyAndConstraints];
  }
}

- (BOOL)isNicknameProhibited
{
  prohibitedPropertyKeys = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
  v3 = [prohibitedPropertyKeys containsObject:*MEMORY[0x1E695C310]];

  return v3;
}

- (void)requestFavoritesUpdateWithGemini
{
  environment = [(CNContactContentUnitaryViewController *)self environment];
  inProcessFavorites = [environment inProcessFavorites];
  contact = [(CNContactContentUnitaryViewController *)self contact];
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
  contact = [(CNContactContentUnitaryViewController *)self contact];
  preferredChannel = [contact preferredChannel];
  v6 = [preferredChannel isEqualToString:channelCopy];

  if ((v6 & 1) == 0)
  {
    [(CNContactContentUnitaryViewController *)self didSelectPreferredChannel:channelCopy];
    displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
    [(CNContactContentUnitaryViewController *)self updateInsetsIfNeededForTableView:displayContactView isEditing:0];
  }
}

- (void)headerView:(id)view didAcceptDropOfImageData:(id)data
{
  dataCopy = data;
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    [(CNContactContentUnitaryViewController *)self toggleEditing];
  }

  [(CNContactHeaderEditView *)self->_editingHeaderView presentAvatarPickerWithImageData:dataCopy];
}

- (void)headerPhotoDidUpdate
{
  [(CNContactContentUnitaryViewController *)self updateDoneButton];
  [(CNContactHeaderEditView *)self->_editingHeaderView updateEditButtonTitle];
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    editingContactView = [(CNContactContentUnitaryViewController *)self editingContactView];
    [(CNContactContentUnitaryViewController *)self scrollScrollViewAllTheWayUp:editingContactView];
  }
}

- (void)contactGroupPickerDidFinish:(id)finish withGroup:(id)group
{
  groupCopy = group;
  finishCopy = finish;
  presentingDelegate = [(CNContactContentUnitaryViewController *)self presentingDelegate];
  [presentingDelegate sender:self dismissViewController:finishCopy];

  [(CNContactContentUnitaryViewController *)self _addedGroupWithName:groupCopy];
}

- (void)contactGroupPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentingDelegate = [(CNContactContentUnitaryViewController *)self presentingDelegate];
  [presentingDelegate sender:self dismissViewController:cancelCopy];
}

- (id)alreadyPickedGroups
{
  v27 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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
          groups = [v8 groups];
          v10 = [groups countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                  objc_enumerationMutation(groups);
                }

                property = [*(*(&v17 + 1) + 8 * j) property];
                [array addObject:property];
              }

              v11 = [groups countByEnumeratingWithState:&v17 objects:v25 count:16];
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

          groups = [v8 property];
          [array addObject:groups];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
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
    nameEditingGroups = [(CNContactContentUnitaryViewController *)self nameEditingGroups];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __70__CNContactContentUnitaryViewController_propertyItem_willChangeValue___block_invoke;
    v54[3] = &unk_1E74E6E48;
    v11 = phoneticProperty;
    v55 = v11;
    v12 = [nameEditingGroups _cn_firstObjectPassingTest:v54];

    editingItems = [v12 editingItems];
    firstObject = [editingItems firstObject];
    labeledValue = [firstObject labeledValue];
    value = [labeledValue value];

    v17 = [(CNContactContentUnitaryViewController *)self _phoneticNameForValue:valueCopy currentPhoneticName:value property:v11];
    v44 = value;
    if (![valueCopy length])
    {
      labeledValue2 = [itemCopy labeledValue];
      value2 = [labeledValue2 value];
      v20 = v11;
      v21 = value2;
      v22 = value;
      v23 = v20;
      v24 = [(CNContactContentUnitaryViewController *)self _phoneticNameForValue:value2 currentPhoneticName:v22 property:?];

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
      contactView = [(CNContactContentUnitaryViewController *)self contactView];
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

uint64_t __70__CNContactContentUnitaryViewController_propertyItem_willChangeValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 property];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)propertyCellDidChangeLayout:(id)layout
{
  layoutCopy = layout;
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
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
        contactView = [(CNContactContentUnitaryViewController *)self contactView];
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

  contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
  [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCellsInGroup:groupCopy forTableView:contactView2 reset:1];

  [(CNContactContentUnitaryViewController *)self updateDoneButton];
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
        linkedCardsAction = [(CNContactContentUnitaryViewController *)self linkedCardsAction];
        goto LABEL_9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        addLinkedCardAction = [(CNContactContentUnitaryViewController *)self addLinkedCardAction];
LABEL_16:
        actionProvider = addLinkedCardAction;
        [addLinkedCardAction performActionWithSender:cellCopy];
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        addLinkedCardAction = [(CNContactContentUnitaryViewController *)self addToGroupAction];
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        actionProvider = [(CNContactContentUnitaryViewController *)self actionProvider];
        staticIdentityAction = [actionProvider staticIdentityAction];
        [staticIdentityAction performActionForItem:itemCopy sender:cellCopy];
LABEL_21:

        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        actionProvider = [(CNContactContentUnitaryViewController *)self actionProvider];
        staticIdentityAction = [actionProvider addStaticIdentityAction];
        [staticIdentityAction performActionWithSender:cellCopy];
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selectContainersAction = [(CNContactContentUnitaryViewController *)self selectContainersAction];
        containerContext = [(CNContactContentUnitaryViewController *)self containerContext];
        [(CNPropertySuggestionAction *)selectContainersAction performActionWithContainerContext:containerContext];
      }

      else
      {
        if ([cellCopy isSuggested])
        {
          v17 = [CNPropertySuggestionAction alloc];
          contact = [(CNContactContentUnitaryViewController *)self contact];
          selectContainersAction = [(CNPropertyAction *)v17 initWithContact:contact propertyItem:itemCopy];

          [(CNContactAction *)selectContainersAction setDelegate:self];
        }

        else
        {
          if (type == 7)
          {
            selectContainersAction = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
            v19 = MEMORY[0x1E69DC648];
            v20 = CNContactsUIBundle();
            v21 = [v20 localizedStringForKey:@"PHONE_ACTION_TTY_CALL" value:&stru_1F0CE7398 table:@"Localized"];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __93__CNContactContentUnitaryViewController_propertyCell_performActionForItem_withTransportType___block_invoke;
            v43[3] = &unk_1E74E6E20;
            v43[4] = self;
            v22 = itemCopy;
            v44 = v22;
            v23 = cellCopy;
            v45 = v23;
            v24 = [v19 actionWithTitle:v21 style:0 handler:v43];
            [(CNPropertySuggestionAction *)selectContainersAction addAction:v24];

            v25 = MEMORY[0x1E69DC648];
            v26 = CNContactsUIBundle();
            v27 = [v26 localizedStringForKey:@"PHONE_ACTION_TTY_RELAY_CALL" value:&stru_1F0CE7398 table:@"Localized"];
            v36 = MEMORY[0x1E69E9820];
            v37 = 3221225472;
            v38 = __93__CNContactContentUnitaryViewController_propertyCell_performActionForItem_withTransportType___block_invoke_2;
            v39 = &unk_1E74E6E20;
            selfCopy = self;
            v41 = v22;
            v28 = v23;
            v42 = v28;
            v29 = [v25 actionWithTitle:v27 style:0 handler:&v36];
            [(CNPropertySuggestionAction *)selectContainersAction addAction:v29, v36, v37, v38, v39, selfCopy];

            v30 = MEMORY[0x1E69DC648];
            v31 = CNContactsUIBundle();
            v32 = [v31 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
            v33 = [v30 actionWithTitle:v32 style:1 handler:0];
            [(CNPropertySuggestionAction *)selectContainersAction addAction:v33];

            [(CNContactContentUnitaryViewController *)self sender:v28 presentViewController:selectContainersAction];
            goto LABEL_29;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [CNPropertyAction performDefaultActionForItem:itemCopy sender:cellCopy];
            goto LABEL_11;
          }

          v34 = [CNPropertyPostalAddressAction alloc];
          contact2 = [(CNContactContentUnitaryViewController *)self contact];
          selectContainersAction = [(CNPropertyAction *)v34 initWithContact:contact2 propertyItem:itemCopy];
        }

        [(CNPropertySuggestionAction *)selectContainersAction performActionForItem:itemCopy sender:cellCopy];
      }

LABEL_29:

      goto LABEL_11;
    }

LABEL_6:
    faceTimeAction = [(CNContactContentUnitaryViewController *)self faceTimeAction];
    [faceTimeAction setType:type];

    linkedCardsAction = [(CNContactContentUnitaryViewController *)self faceTimeAction];
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

  linkedCardsAction = [(CNContactContentUnitaryViewController *)self sendMessageAction];
LABEL_9:
  actionProvider = linkedCardsAction;
  [linkedCardsAction performActionForItem:itemCopy sender:cellCopy];
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
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCellsInGroup:group forTableView:contactView reset:1];

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

  propertyGroups = [(CNContactContentUnitaryViewController *)self propertyGroups];
  v17 = [propertyGroups objectForKeyedSubscript:v12];
  [(CNContactContentUnitaryViewController *)self _validateGroup:v17];

  propertyGroups2 = [(CNContactContentUnitaryViewController *)self propertyGroups];
  v19 = [propertyGroups2 objectForKeyedSubscript:v13];
  [(CNContactContentUnitaryViewController *)self _validateGroup:v19];

LABEL_7:
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    editingHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
    [editingHeaderView updateContactWithEditedPropertyItem:itemCopy];
  }

  [(CNContactContentUnitaryViewController *)self updateDoneButton];
}

- (void)propertyCell:(id)cell didUpdateItem:(id)item withNewLabel:(id)label
{
  itemCopy = item;
  cellCopy = cell;
  [itemCopy updateLabeledValueWithLabel:label];
  [cellCopy updateWithPropertyItem:itemCopy];

  group = [itemCopy group];

  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  [(CNContactContentUnitaryViewController *)self _updateLabelWidthForCellsInGroup:group forTableView:contactView reset:1];

  [(CNContactContentUnitaryViewController *)self updateDoneButton];
}

- (void)action:(id)action didUpdateWithMenu:(id)menu
{
  if ([menu count])
  {

    [(CNContactContentUnitaryViewController *)self _notifyObservers];
  }
}

- (void)actionWasCanceled:(id)canceled
{
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
  indexPathForSelectedRow = [contactView2 indexPathForSelectedRow];
  [contactView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (void)completeAddAddressingGrammarAction:(id)action
{
  v49 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  selectedAddressingGrammar = [actionCopy selectedAddressingGrammar];
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
      indexPath = [actionCopy indexPath];
      editingGroups = [(CNContactContentUnitaryViewController *)self editingGroups];
      v12 = [editingGroups containsObject:v9];

      if ((v12 & 1) == 0)
      {
        v39 = v12;
        v40 = indexPath;
        v41 = v9;
        v43 = selectedAddressingGrammar;
        v13 = +[CNContactView allCardProperties];
        v14 = [v13 indexOfObject:v6];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        selfCopy = self;
        editingGroups2 = [(CNContactContentUnitaryViewController *)self editingGroups];
        v16 = [editingGroups2 countByEnumeratingWithState:&v44 objects:v48 count:16];
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
                objc_enumerationMutation(editingGroups2);
              }

              v22 = *(*(&v44 + 1) + 8 * v20);
              v23 = +[CNContactView allCardProperties];
              property = [v22 property];
              v25 = [v23 indexOfObject:property];

              if (v25 != 0x7FFFFFFFFFFFFFFFLL && v25 >= v14)
              {
                v18 = v21;
                goto LABEL_21;
              }

              ++v21;
              ++v20;
            }

            while (v17 != v20);
            v17 = [editingGroups2 countByEnumeratingWithState:&v44 objects:v48 count:16];
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

        self = selfCopy;
        editingGroups3 = [(CNContactContentUnitaryViewController *)selfCopy editingGroups];
        v28 = [editingGroups3 mutableCopy];

        v9 = v41;
        [v28 insertObject:v41 atIndex:v18];
        v29 = [v28 copy];
        [(CNContactContentUnitaryViewController *)selfCopy setEditingGroups:v29];

        contactView = [(CNContactContentUnitaryViewController *)selfCopy contactView];
        [contactView reloadData];

        contactView2 = [(CNContactContentUnitaryViewController *)selfCopy contactView];
        v32 = [(CNContactContentUnitaryViewController *)selfCopy sectionOfGroup:v41 inTableView:contactView2];

        indexPath = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v32];

        selectedAddressingGrammar = v43;
        v12 = v39;
      }

      if (indexPath)
      {
        addAddressingGrammarAction = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
        selectedAddressingGrammar2 = [addAddressingGrammarAction selectedAddressingGrammar];
        v35 = [v9 newEditingItemWithValue:selectedAddressingGrammar2];

        if (v35)
        {
          contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
          [(CNContactContentUnitaryViewController *)self addEditingItem:v35 atIndexPath:indexPath forTableView:contactView3 shouldSetFocus:0];

          if ((v12 & 1) == 0)
          {
            contactView4 = [(CNContactContentUnitaryViewController *)self contactView];
            [contactView4 scrollToRowAtIndexPath:indexPath atScrollPosition:2 animated:1];
          }
        }
      }
    }
  }
}

- (void)actionDidFinishFromSecondaryAction:(id)action
{
  actionCopy = action;
  blockReportAction = [(CNContactContentUnitaryViewController *)self blockReportAction];

  if (blockReportAction == actionCopy)
  {
    [(CNContactContentUnitaryViewController *)self setShouldIgnoreBlockListChange:1];
    [(CNContactContentUnitaryViewController *)self _setupContactBlockingReportingActionPreservingChanges:1 withUpdate:1];
    delegate = [(CNContactContentUnitaryViewController *)self delegate];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    [delegate didTapBlockAndReportForContact:contact];

    actionsDelegate = [(CNContactContentUnitaryViewController *)self actionsDelegate];
    contact2 = [(CNContactContentUnitaryViewController *)self contact];
    [actionsDelegate didTapAction:2048 forContact:contact2];
  }

  [(CNContactContentUnitaryViewController *)self updateEditNavigationItemsAnimated:1];
}

- (void)actionDidFinish:(id)finish
{
  finishCopy = finish;
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
  indexPathForSelectedRow = [contactView2 indexPathForSelectedRow];
  [contactView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

  deleteContactAction = [(CNContactContentUnitaryViewController *)self deleteContactAction];
  v9 = deleteContactAction;
  if (deleteContactAction == finishCopy)
  {

    goto LABEL_13;
  }

  ignoreContactAction = [(CNContactContentUnitaryViewController *)self ignoreContactAction];

  if (ignoreContactAction == finishCopy)
  {
LABEL_13:
    contactDelegate = [(CNContactContentUnitaryViewController *)self contactDelegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      contactDelegate2 = [(CNContactContentUnitaryViewController *)self contactDelegate];
      contact = [(CNContactContentUnitaryViewController *)self contact];
      [contactDelegate2 contactViewController:self didDeleteContact:contact];
    }

    delegate = [(CNContactContentUnitaryViewController *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }

    delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
    contact2 = [(CNContactContentUnitaryViewController *)self contact];
    [delegate2 didDeleteContact:contact2];
    goto LABEL_17;
  }

  addFavoriteAction = [(CNContactContentUnitaryViewController *)self addFavoriteAction];

  if (addFavoriteAction == finishCopy)
  {
    addFavoriteAction2 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
    canPerformAction = [addFavoriteAction2 canPerformAction];

    if ((canPerformAction & 1) == 0)
    {
      cardActionsGroup = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
      v32 = CNContactsUIBundle();
      v33 = [v32 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
      [cardActionsGroup removeActionWithTitle:v33];
    }

    contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
    [(CNContactContentUnitaryViewController *)self reloadCardGroupsForFavoritesUpdateInTableView:contactView3];
    goto LABEL_28;
  }

  createNewContactAction = [(CNContactContentUnitaryViewController *)self createNewContactAction];

  if (createNewContactAction == finishCopy)
  {
    contactView3 = [(CNContactContentUnitaryViewController *)self createNewContactAction];
    createdContact = [contactView3 createdContact];
    [(CNContactContentUnitaryViewController *)self createdNewContact:createdContact];
    goto LABEL_27;
  }

  addToExistingContactAction = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];

  if (addToExistingContactAction == finishCopy)
  {
    contactView3 = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
    chosenContact = [contactView3 chosenContact];
LABEL_26:
    createdContact = chosenContact;
    [(CNContactContentUnitaryViewController *)self updatedExistingContact:chosenContact];
    goto LABEL_27;
  }

  updateExistingContactAction = [(CNContactContentUnitaryViewController *)self updateExistingContactAction];

  if (updateExistingContactAction == finishCopy)
  {
    contactView3 = [(CNContactContentUnitaryViewController *)self updateExistingContactAction];
    chosenContact = [contactView3 existingContact];
    goto LABEL_26;
  }

  addLinkedCardAction = [(CNContactContentUnitaryViewController *)self addLinkedCardAction];

  if (addLinkedCardAction == finishCopy)
  {
    contactView3 = [(CNContactContentUnitaryViewController *)self addLinkedCardAction];
    createdContact = [contactView3 chosenContact];
    [(CNContactContentUnitaryViewController *)self addLinkedContact:createdContact];
    goto LABEL_27;
  }

  addToGroupAction = [(CNContactContentUnitaryViewController *)self addToGroupAction];

  if (addToGroupAction == finishCopy)
  {
    contactView3 = [(CNContactContentUnitaryViewController *)self addToGroupAction];
    createdContact = [contactView3 selectedGroup];
    [(CNContactContentUnitaryViewController *)self addContactToGroup:createdContact];
    goto LABEL_27;
  }

  actionProvider = [(CNContactContentUnitaryViewController *)self actionProvider];
  addStaticIdentityAction = [actionProvider addStaticIdentityAction];

  if (addStaticIdentityAction == finishCopy)
  {
    contactView3 = [(CNContactContentUnitaryViewController *)self actionProvider];
    createdContact = [contactView3 addStaticIdentityAction];
    chosenIdentity = [createdContact chosenIdentity];
    [(CNContactContentUnitaryViewController *)self addStaticIdentity:chosenIdentity];
LABEL_33:

    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CNContactContentUnitaryViewController *)self reloadUnifiedContact];
    goto LABEL_29;
  }

  blockAction = [(CNContactContentUnitaryViewController *)self blockAction];

  if (blockAction == finishCopy)
  {
    [(CNContactContentUnitaryViewController *)self setShouldIgnoreBlockListChange:1];
    [(CNContactContentUnitaryViewController *)self _setupContactBlockingActionPreservingChanges:1 withUpdate:1];
    goto LABEL_29;
  }

  blockReportAction = [(CNContactContentUnitaryViewController *)self blockReportAction];

  if (blockReportAction == finishCopy)
  {
    [(CNContactContentUnitaryViewController *)self setShouldIgnoreBlockListChange:1];
    [(CNContactContentUnitaryViewController *)self _setupContactBlockingReportingActionPreservingChanges:1 withUpdate:1];
    goto LABEL_29;
  }

  actionProvider2 = [(CNContactContentUnitaryViewController *)self actionProvider];
  shareWithFamilyAction = [actionProvider2 shareWithFamilyAction];

  if (shareWithFamilyAction == finishCopy)
  {
    [(CNContactContentUnitaryViewController *)self updateContact:finishCopy];
    goto LABEL_29;
  }

  actionProvider3 = [(CNContactContentUnitaryViewController *)self actionProvider];
  stopSharingWithFamilyAction = [actionProvider3 stopSharingWithFamilyAction];

  if (stopSharingWithFamilyAction != finishCopy)
  {
    suggestedContactAction = [(CNContactContentUnitaryViewController *)self suggestedContactAction];

    if (suggestedContactAction == finishCopy)
    {
      contactDelegate3 = [(CNContactContentUnitaryViewController *)self contactDelegate];
      v57 = objc_opt_respondsToSelector();

      if (v57)
      {
        contactDelegate4 = [(CNContactContentUnitaryViewController *)self contactDelegate];
        suggestedContactAction2 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
        contact3 = [suggestedContactAction2 contact];
        [contactDelegate4 contactViewController:self didDeleteContact:contact3];
      }

      delegate3 = [(CNContactContentUnitaryViewController *)self delegate];

      if (!delegate3)
      {
        goto LABEL_19;
      }

      delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
      suggestedContactAction3 = [(CNContactContentUnitaryViewController *)self suggestedContactAction];
    }

    else
    {
      deleteAcceptedAction = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];

      if (deleteAcceptedAction != finishCopy)
      {
        clearRecentsDataAction = [(CNContactContentUnitaryViewController *)self clearRecentsDataAction];

        if (clearRecentsDataAction == finishCopy)
        {
          contactView3 = [(CNContactContentUnitaryViewController *)self delegate];
          [contactView3 didExecuteClearRecentsDataAction];
          goto LABEL_28;
        }

        stopSharingWithFamilyAction2 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];

        if (stopSharingWithFamilyAction2 == finishCopy)
        {
          contactView3 = [(CNContactContentUnitaryViewController *)self delegate];
          [contactView3 didExecuteDeleteFromDowntimeWhitelistAction];
          goto LABEL_28;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          contactView3 = finishCopy;
          propertyItem = [contactView3 propertyItem];
          createdContact = [propertyItem group];

          selectedChoice = [contactView3 selectedChoice];
          if (selectedChoice == 2)
          {
            [contactView3 reject];
            [createdContact reloadDataPreservingChanges:0];
            goto LABEL_27;
          }

          if (selectedChoice == 1)
          {
            propertyItem2 = [contactView3 propertyItem];
            chosenIdentity = [(CNContactContentUnitaryViewController *)self indexPathOfDisplayedPropertyItem:propertyItem2];

            contactView4 = [(CNContactContentUnitaryViewController *)self contactView];
            [contactView4 selectRowAtIndexPath:chosenIdentity animated:0 scrollPosition:0];

            v51 = dispatch_time(0, 500000000);
            v75 = MEMORY[0x1E69E9820];
            v76 = 3221225472;
            v77 = __57__CNContactContentUnitaryViewController_actionDidFinish___block_invoke;
            v78 = &unk_1E74E77C0;
            v79 = contactView3;
            v80 = createdContact;
            dispatch_after(v51, MEMORY[0x1E69E96A0], &v75);

            goto LABEL_33;
          }

LABEL_27:

          goto LABEL_28;
        }

        selectContainersAction = [(CNContactContentUnitaryViewController *)self selectContainersAction];

        if (selectContainersAction == finishCopy)
        {
          [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
          goto LABEL_29;
        }

        addAddressingGrammarAction = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];

        if (addAddressingGrammarAction == finishCopy)
        {
          contactView3 = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
          [(CNContactContentUnitaryViewController *)self completeAddAddressingGrammarAction:contactView3];
          goto LABEL_28;
        }

        gameCenterAddFriendAction = [(CNContactContentUnitaryViewController *)self gameCenterAddFriendAction];

        if (gameCenterAddFriendAction == finishCopy)
        {
          gameCenterManager = [(CNContactContentUnitaryViewController *)self gameCenterManager];
          [gameCenterManager setHasSentInvite:1];

          [(CNContactContentUnitaryViewController *)self _reloadGameCenterGroup];
          goto LABEL_29;
        }

        delegate2 = [(CNContactContentUnitaryViewController *)self editNameAction];
        if (delegate2 != finishCopy)
        {
          addNameAction = [(CNContactContentUnitaryViewController *)self addNameAction];

          if (addNameAction != finishCopy)
          {
            goto LABEL_29;
          }

          goto LABEL_19;
        }

        goto LABEL_18;
      }

      contactDelegate5 = [(CNContactContentUnitaryViewController *)self contactDelegate];
      v64 = objc_opt_respondsToSelector();

      if (v64)
      {
        contactDelegate6 = [(CNContactContentUnitaryViewController *)self contactDelegate];
        deleteAcceptedAction2 = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];
        contact4 = [deleteAcceptedAction2 contact];
        [contactDelegate6 contactViewController:self didDeleteContact:contact4];
      }

      delegate4 = [(CNContactContentUnitaryViewController *)self delegate];

      if (!delegate4)
      {
        goto LABEL_19;
      }

      delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
      suggestedContactAction3 = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];
    }

    contact2 = suggestedContactAction3;
    contact5 = [suggestedContactAction3 contact];
    [delegate2 didDeleteContact:contact5];

LABEL_17:
LABEL_18:

LABEL_19:
    contactView3 = [(CNContactContentUnitaryViewController *)self navigationController];
    v28 = [contactView3 popViewControllerAnimated:1];
LABEL_28:

    goto LABEL_29;
  }

  cardActionsGroup2 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
  stopSharingWithFamilyAction3 = [(CNContactContentUnitaryViewController *)self stopSharingWithFamilyAction];
  title = [stopSharingWithFamilyAction3 title];
  [cardActionsGroup2 removeActionWithTitle:title];

  [(CNContactContentUnitaryViewController *)self setStopSharingWithFamilyAction:0];
  delegate5 = [(CNContactContentUnitaryViewController *)self delegate];
  [delegate5 didExecuteDeleteFromDowntimeWhitelistAction];

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

- (void)actionDidUpdate:(id)update
{
  v32 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  addFavoriteAction = [(CNContactContentUnitaryViewController *)self addFavoriteAction];

  if (addFavoriteAction == updateCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    cardActionsGroup = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    actions = [cardActionsGroup actions];

    v11 = [actions countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(actions);
        }

        target = [*(*(&v27 + 1) + 8 * v14) target];
        addFavoriteAction2 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];

        if (target == addFavoriteAction2)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [actions countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v12)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      addFavoriteAction3 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
      canPerformAction = [addFavoriteAction3 canPerformAction];

      if (canPerformAction)
      {
        goto LABEL_21;
      }

      cardActionsGroup2 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
      target2 = [updateCopy target];
      [cardActionsGroup2 removeActionWithTarget:target2 selector:{objc_msgSend(updateCopy, "selector")}];
    }

    else
    {
LABEL_13:

      addFavoriteAction4 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
      canPerformAction2 = [addFavoriteAction4 canPerformAction];

      if (!canPerformAction2)
      {
        goto LABEL_21;
      }

      cardActionsGroup2 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
      target2 = [(CNContactContentUnitaryViewController *)self addFavoriteAction];
      v21 = CNContactsUIBundle();
      v22 = [v21 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
      [cardActionsGroup2 addAction:target2 withTitle:v22];
    }

    cardActionsGroup3 = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    [(CNContactContentUnitaryViewController *)self reloadCardGroup:cardActionsGroup3 forTableView:contactView];
    goto LABEL_20;
  }

  addNameAction = [(CNContactContentUnitaryViewController *)self addNameAction];

  if (addNameAction == updateCopy)
  {
    addNameAction2 = [(CNContactContentUnitaryViewController *)self addNameAction];
    goto LABEL_16;
  }

  editNameAction = [(CNContactContentUnitaryViewController *)self editNameAction];

  if (editNameAction == updateCopy)
  {
    addNameAction2 = [(CNContactContentUnitaryViewController *)self editNameAction];
LABEL_16:
    cardActionsGroup3 = addNameAction2;
    contactView = [addNameAction2 contact];
    [(CNContactContentUnitaryViewController *)self updateWithNewContact:contactView];
LABEL_20:
  }

LABEL_21:
}

- (void)action:(id)action pushViewController:(id)controller sender:(id)sender
{
  controllerCopy = controller;
  [(CNContactContentUnitaryViewController *)self setBackgroundColorIfNeededForPresentedViewController:controllerCopy];
  navigationItem = [(CNContactContentUnitaryViewController *)self navigationItem];
  prompt = [navigationItem prompt];
  navigationItem2 = [controllerCopy navigationItem];
  [navigationItem2 setPrompt:prompt];

  navigationController = [(CNContactContentUnitaryViewController *)self navigationController];
  [navigationController pushViewController:controllerCopy animated:1];
}

- (void)action:(id)action dismissViewController:(id)controller sender:(id)sender
{
  actionCopy = action;
  senderCopy = sender;
  controllerCopy = controller;
  createNewContactAction = [(CNContactContentUnitaryViewController *)self createNewContactAction];
  if (createNewContactAction != actionCopy)
  {
    addToExistingContactAction = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
    v13 = addToExistingContactAction;
    if (addToExistingContactAction != actionCopy)
    {
      updateExistingContactAction = [(CNContactContentUnitaryViewController *)self updateExistingContactAction];

      if (updateExistingContactAction != actionCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  delegate = [(CNContactContentUnitaryViewController *)self delegate];
  if (delegate)
  {
    v16 = delegate;
    delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate3 = [(CNContactContentUnitaryViewController *)self delegate];
      [delegate3 isPresentingEditingController:0];
    }
  }

LABEL_10:
  presentingDelegate = [(CNContactContentUnitaryViewController *)self presentingDelegate];
  [presentingDelegate sender:senderCopy dismissViewController:controllerCopy];

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

- (void)action:(id)action presentViewController:(id)controller modalPresentationStyle:(int64_t)style sender:(id)sender
{
  actionCopy = action;
  senderCopy = sender;
  controllerCopy = controller;
  createNewContactAction = [(CNContactContentUnitaryViewController *)self createNewContactAction];
  if (createNewContactAction != actionCopy)
  {
    addToExistingContactAction = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
    if (addToExistingContactAction != actionCopy)
    {
      updateExistingContactAction = [(CNContactContentUnitaryViewController *)self updateExistingContactAction];

      if (updateExistingContactAction != actionCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  delegate = [(CNContactContentUnitaryViewController *)self delegate];
  if (delegate)
  {
    v16 = delegate;
    delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate3 = [(CNContactContentUnitaryViewController *)self delegate];
      [delegate3 isPresentingEditingController:1];
    }
  }

LABEL_10:
  presentingDelegate = [(CNContactContentUnitaryViewController *)self presentingDelegate];
  [presentingDelegate sender:senderCopy presentViewController:controllerCopy modalPresentationStyle:style];
}

- (void)action:(id)action presentViewController:(id)controller sender:(id)sender
{
  v51 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  controllerCopy = controller;
  senderCopy = sender;
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
      v50 = senderCopy;
      _os_log_impl(&dword_199A75000, v23, OS_LOG_TYPE_DEFAULT, "Presenting view controller for action: %@ viewController: %@ sender: %@", buf, 0x20u);
    }

    createNewContactAction = [(CNContactContentUnitaryViewController *)self createNewContactAction];
    if (createNewContactAction != actionCopy)
    {
      addToExistingContactAction = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];
      v30 = addToExistingContactAction;
      if (addToExistingContactAction != actionCopy)
      {
        updateExistingContactAction = [(CNContactContentUnitaryViewController *)self updateExistingContactAction];

        if (updateExistingContactAction != actionCopy)
        {
LABEL_29:
          v38 = CNUILogContactCard();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_199A75000, v38, OS_LOG_TYPE_DEFAULT, "Using default modal presentation for non-visionOS platform", buf, 2u);
          }

          presentingDelegate = [(CNContactContentUnitaryViewController *)self presentingDelegate];
          [presentingDelegate sender:senderCopy presentViewController:controllerCopy];
          goto LABEL_32;
        }

LABEL_24:
        v32 = CNUILogContactCard();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_199A75000, v32, OS_LOG_TYPE_DEFAULT, "Notifying delegate about presenting editing controller", buf, 2u);
        }

        delegate = [(CNContactContentUnitaryViewController *)self delegate];
        if (delegate)
        {
          v34 = delegate;
          delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
          v36 = objc_opt_respondsToSelector();

          if (v36)
          {
            delegate3 = [(CNContactContentUnitaryViewController *)self delegate];
            [delegate3 isPresentingEditingController:1];
          }
        }

        goto LABEL_29;
      }
    }

    goto LABEL_24;
  }

  shareContactAction = [(CNContactContentUnitaryViewController *)self shareContactAction];

  if (shareContactAction == actionCopy)
  {
    v39 = 1;
  }

  else
  {
    blockAction = [(CNContactContentUnitaryViewController *)self blockAction];

    if (blockAction == actionCopy)
    {
      v39 = 6;
    }

    else
    {
      emergencyContactAction = [(CNContactContentUnitaryViewController *)self emergencyContactAction];

      if (emergencyContactAction == actionCopy)
      {
        emergencyContactAction2 = [(CNContactContentUnitaryViewController *)self emergencyContactAction];
        if ([emergencyContactAction2 addingToEmergency])
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
        medicalIDAction = [(CNContactContentUnitaryViewController *)self medicalIDAction];

        if (medicalIDAction == actionCopy)
        {
          v39 = 5;
        }

        else
        {
          addNameAction = [(CNContactContentUnitaryViewController *)self addNameAction];

          if (addNameAction == actionCopy)
          {
            v39 = 27;
          }

          else
          {
            editNameAction = [(CNContactContentUnitaryViewController *)self editNameAction];

            if (editNameAction == actionCopy)
            {
              v39 = 24;
            }

            else
            {
              addToGroupAction = [(CNContactContentUnitaryViewController *)self addToGroupAction];

              if (addToGroupAction == actionCopy)
              {
                v39 = 3;
              }

              else
              {
                createNewContactAction2 = [(CNContactContentUnitaryViewController *)self createNewContactAction];

                if (createNewContactAction2 == actionCopy)
                {
                  v39 = 8;
                }

                else
                {
                  addToExistingContactAction2 = [(CNContactContentUnitaryViewController *)self addToExistingContactAction];

                  if (addToExistingContactAction2 == actionCopy)
                  {
                    v39 = 9;
                  }

                  else
                  {
                    deleteAcceptedAction = [(CNContactContentUnitaryViewController *)self deleteAcceptedAction];

                    if (deleteAcceptedAction == actionCopy)
                    {
                      v39 = 14;
                    }

                    else
                    {
                      blockReportAction = [(CNContactContentUnitaryViewController *)self blockReportAction];

                      if (blockReportAction != actionCopy)
                      {
                        presentingDelegate = CNUILogContactCard();
                        if (os_log_type_enabled(presentingDelegate, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412290;
                          v46 = actionCopy;
                          _os_log_debug_impl(&dword_199A75000, presentingDelegate, OS_LOG_TYPE_DEBUG, "Unknown action type for SwiftUI contact card presentation: %@", buf, 0xCu);
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
  v43 = controllerCopy;
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

- (id)action:(id)action cellForPropertyItem:(id)item sender:(id)sender
{
  v15[1] = *MEMORY[0x1E69E9840];
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
      [(objc_class *)v10 setAllowsActions:[(CNContactContentUnitaryViewController *)self allowsActions]];
    }

    v15[0] = itemCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(CNContactContentUnitaryViewController *)self _updateAvailableTransportsForItems:v13];

    [(CNContactContentUnitaryViewController *)self prepareCell:v10];
  }

  return v10;
}

- (void)action:(id)action prepareChildContactViewController:(id)controller sender:(id)sender
{
  v30 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  controllerCopy = controller;
  createNewContactAction = [(CNContactContentUnitaryViewController *)self createNewContactAction];

  v10 = &unk_1F0D4BAC0;
  if (createNewContactAction == actionCopy)
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
          [controllerCopy setValue:v17 forKey:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    [controllerCopy setAllowsSettingLinkedContactsAsPreferred:0];
  }

  [controllerCopy setAllowsAddToFavorites:{0, v25}];
  [controllerCopy setAllowsAddingToAddressBook:0];
  [controllerCopy setShouldShowLinkedContacts:0];
  parentGroup = [(CNContactContentViewController *)self parentGroup];
  [controllerCopy setParentGroup:parentGroup];

  linkedCardsAction = [(CNContactContentUnitaryViewController *)self linkedCardsAction];
  if (linkedCardsAction == actionCopy)
  {
    goto LABEL_17;
  }

  addToGroupAction = [(CNContactContentUnitaryViewController *)self addToGroupAction];

  if (addToGroupAction != actionCopy)
  {
    linkedCardsAction = [(CNContactContentViewController *)self parentContainer];
    [controllerCopy setParentContainer:linkedCardsAction];
LABEL_17:
  }

  prohibitedPropertyKeys = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
  [controllerCopy setProhibitedPropertyKeys:prohibitedPropertyKeys];

  contactView = [controllerCopy contactView];
  contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
  environment = [(CNContactContentUnitaryViewController *)self environment];
  [contactView setAttributesFromContactView:contactView2 runningInContactsAppOniPad:{objc_msgSend(environment, "runningInContactsAppOniPad")}];
}

- (void)contactInlineActionsViewController:(id)controller didPerformActionOfType:(id)type fromDisambiguation:(BOOL)disambiguation
{
  if (disambiguation)
  {
    [(CNContactContentUnitaryViewController *)self updateActionsControllerByType:controller];
  }
}

- (void)contactInlineActionsViewControllerDidDismissDisambiguationUI:(id)i
{
  contactDelegate = [(CNContactContentUnitaryViewController *)self contactDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    contactDelegate2 = [(CNContactContentUnitaryViewController *)self contactDelegate];
    [contactDelegate2 contactViewControllerDidDismissDisambiguationUI:self];
  }
}

- (void)contactInlineActionsViewControllerWillPresentDisambiguationUI:(id)i
{
  contactDelegate = [(CNContactContentUnitaryViewController *)self contactDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    contactDelegate2 = [(CNContactContentUnitaryViewController *)self contactDelegate];
    [contactDelegate2 contactViewControllerWillPresentDisambiguationUI:self];
  }
}

- (BOOL)contactInlineActionsViewController:(id)controller shouldPerformActionOfType:(id)type withContactProperty:(id)property
{
  propertyCopy = property;
  contact = [propertyCopy contact];
  v8 = [propertyCopy key];
  identifier = [propertyCopy identifier];

  LOBYTE(self) = [(CNContactContentUnitaryViewController *)self contactViewController:self shouldPerformDefaultActionForContact:contact propertyKey:v8 propertyIdentifier:identifier];
  return self;
}

- (void)viewController:(id)controller presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  controllerCopy = controller;
  presentedViewController = [(CNContactContentUnitaryViewController *)self presentedViewController];

  if (presentedViewController == controllerCopy)
  {
    [(CNContactContentUnitaryViewController *)self presentationControllerWillDismiss:dismissCopy];
  }
}

- (BOOL)isPresentingModalViewController
{
  presentedViewController = [(CNContactContentUnitaryViewController *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler
{
  senderCopy = sender;
  controllerCopy = controller;
  handlerCopy = handler;
  if ([(CNContactContentUnitaryViewController *)self isOutOfProcess])
  {
    delegate = [(CNContactContentUnitaryViewController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      [(CNContactContentUnitaryViewController *)self shouldPresentFullscreen:0];
    }
  }

  if ([(CNContactContentUnitaryViewController *)self isShowingSNaPEditFlow])
  {
    [(CNContactContentUnitaryViewController *)self finishSNaPEditing:senderCopy];
    [(CNContactContentUnitaryViewController *)self setIsShowingSNaPEditFlow:0];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__CNContactContentUnitaryViewController_sender_dismissViewController_completionHandler___block_invoke;
  v14[3] = &unk_1E74E6DD0;
  v14[4] = self;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [controllerCopy dismissViewControllerAnimated:1 completion:v14];
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

- (void)setBackgroundColorIfNeededForPresentedViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = +[CNContactStyle currentStyle];
  backgroundColor = [v5 backgroundColor];
  if (backgroundColor)
  {
    v7 = +[CNContactStyle currentStyle];
    backgroundColor2 = [v7 backgroundColor];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v10 = [backgroundColor2 isEqual:clearColor];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  view = [(CNContactContentUnitaryViewController *)self view];
  superview = [view superview];
  backgroundColor3 = [superview backgroundColor];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  v16 = [backgroundColor3 isEqual:clearColor2];

  if (((v11 | v16 | isKindOfClass) & 1) == 0)
  {
    view2 = [(CNContactContentUnitaryViewController *)self view];
    superview2 = [view2 superview];
    backgroundColor4 = [superview2 backgroundColor];
    view3 = [controllerCopy view];
    [view3 setBackgroundColor:backgroundColor4];
  }
}

- (int64_t)_modalPresentationStyleForViewController:(id)controller
{
  controllerCopy = controller;
  if (NSClassFromString(&cfstr_Qlpreviewcontr.isa) && (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![controllerCopy modalPresentationStyle])
  {
    modalPresentationStyle = 0;
    goto LABEL_58;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    view = [controllerCopy view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
LABEL_9:
      modalPresentationStyle = 7;
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
      modalPresentationStyle = 5;
      goto LABEL_58;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewControllers = [controllerCopy viewControllers];
      firstObject = [viewControllers firstObject];
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();

      if (v12)
      {
        firstObject3 = +[CNContactStyle currentStyle];
        if ([firstObject3 shouldPresentInCurrentContext])
        {
          modalPresentationStyle = 6;
        }

        else
        {
          modalPresentationStyle = -2;
        }

LABEL_57:

        goto LABEL_58;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewControllers2 = [controllerCopy viewControllers];
      firstObject2 = [viewControllers2 firstObject];
      objc_opt_class();
      v16 = objc_opt_isKindOfClass();

      if (v16)
      {
        firstObject3 = +[CNContactStyle currentStyle];
        if ([firstObject3 shouldPresentInCurrentContext])
        {
          modalPresentationStyle = 3;
        }

        else
        {
          currentDevice = [MEMORY[0x1E69DC938] currentDevice];
          userInterfaceIdiom = [currentDevice userInterfaceIdiom];

          if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            modalPresentationStyle = 2;
          }

          else
          {
            modalPresentationStyle = -2;
          }
        }

        goto LABEL_57;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewControllers3 = [controllerCopy viewControllers];
      firstObject3 = [viewControllers3 firstObject];

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
          modalPresentationStyle = 2;
        }

        else if ((-[CNContactContentUnitaryViewController isOutOfProcess](self, "isOutOfProcess") || CNUIIsDDActionsService()) && ([MEMORY[0x1E69DC938] currentDevice], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "userInterfaceIdiom"), v22, (v23 & 0xFFFFFFFFFFFFFFFBLL) == 1) || (v19 & 1) != 0 && (objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "userInterfaceIdiom"), v24, (v25 & 0xFFFFFFFFFFFFFFFBLL) != 1))
        {
          modalPresentationStyle = 0;
        }

        else
        {
          v26 = +[CNContactStyle currentStyle];
          if ([v26 shouldPresentInCurrentContext])
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

    modalPresentationStyle = 3;
    goto LABEL_58;
  }

  modalPresentationStyle = [controllerCopy modalPresentationStyle];
LABEL_58:

  return modalPresentationStyle;
}

- (void)performConfirmedCancel
{
  [(CNContactContentUnitaryViewController *)self cancelAsyncLookups];
  contact = [(CNContactContentUnitaryViewController *)self contact];
  if ([contact isUnknown])
  {
    shadowCopyOfReadonlyContact = [(CNContactContentUnitaryViewController *)self shadowCopyOfReadonlyContact];
    if (!shadowCopyOfReadonlyContact)
    {

      goto LABEL_8;
    }

    v5 = shadowCopyOfReadonlyContact;
    alwaysEditing = [(CNContactContentViewController *)self alwaysEditing];

    if (alwaysEditing)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  alwaysEditing2 = [(CNContactContentViewController *)self alwaysEditing];

  if (!alwaysEditing2)
  {
LABEL_6:
    [(CNContactContentUnitaryViewController *)self setEditing:0 animated:1];
  }

LABEL_8:
  [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:0];
  if ([(CNContactContentUnitaryViewController *)self mode]== 3)
  {
    contact2 = [(CNContactContentUnitaryViewController *)self contact];
    identifier = [contact2 identifier];

    if (identifier)
    {
      [(CNContactContentUnitaryViewController *)self cleanupRecentMetadata];
    }
  }

  view = [(CNContactContentUnitaryViewController *)self view];
  [view endEditing:1];

  [(CNContactContentUnitaryViewController *)self setEditingLinkedContacts:0];
  cardStaticIdentityGroup = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
  [cardStaticIdentityGroup clearDisplay];

  [(CNContactContentUnitaryViewController *)self setGroupEditingContext:0];
  [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:0];
  editingContactView = [(CNContactContentUnitaryViewController *)self editingContactView];
  [editingContactView reloadData];

  if ([(CNContactContentUnitaryViewController *)self supportsDrafts])
  {

    +[CNUIDraftSupport deleteDrafts];
  }
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  if ([(CNContactContentUnitaryViewController *)self isOutOfProcess])
  {

    [(CNContactContentUnitaryViewController *)self shouldPresentFullscreen:0];
  }
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  if (style != 5)
  {
    if ([(CNContactContentUnitaryViewController *)self isOutOfProcess])
    {
      delegate = [(CNContactContentUnitaryViewController *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        presentedViewController = [controllerCopy presentedViewController];
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
  if ([(CNContactContentUnitaryViewController *)self isOutOfProcess]&& [(CNContactContentUnitaryViewController *)self isPresentingModalViewController])
  {
    delegate = [(CNContactContentUnitaryViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      presentedViewController = [(CNContactContentUnitaryViewController *)self presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        isPresentingFullscreenForOutOfProcess = [(CNContactContentUnitaryViewController *)self isPresentingFullscreenForOutOfProcess];

        [(CNContactContentUnitaryViewController *)self shouldPresentFullscreen:isPresentingFullscreenForOutOfProcess];
      }
    }

    else
    {
    }
  }
}

- (void)updateStaticDisplayHeaderImageVisibility
{
  contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  staticDisplayHeaderView = self->_staticDisplayHeaderView;

  if (contactHeaderView == staticDisplayHeaderView)
  {
    v5 = self->_staticDisplayHeaderView;

    [(CNContactHeaderStaticDisplayView *)v5 updateImageViewVisiblity];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v21.receiver = self;
  v21.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v21 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  presentedViewController = [(CNContactContentUnitaryViewController *)self presentedViewController];
  popoverPresentationController = [presentedViewController popoverPresentationController];
  sourceView = [popoverPresentationController sourceView];

  if (sourceView)
  {
    superview = [sourceView superview];
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    v13 = superview == contactView;
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
  v14 = sourceView;
  v16 = v14;
  [coordinatorCopy animateAlongsideTransition:v18 completion:v15];

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

- (void)shouldPresentFullscreen:(BOOL)fullscreen
{
  fullscreenCopy = fullscreen;
  [(CNContactContentUnitaryViewController *)self setIsPresentingFullscreenForOutOfProcess:?];
  delegate = [(CNContactContentUnitaryViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
    [delegate2 isPresentingFullscreen:fullscreenCopy];
  }
}

- (CGRect)centeredSourceRect:(CGRect)rect inContactView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  isEditing = [contactView isEditing];

  if ((isEditing & 1) == 0)
  {
    [viewCopy layoutMargins];
    v13 = v12;
    [viewCopy layoutMargins];
    width = width - (v13 + v14);
    [viewCopy layoutMargins];
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

- (void)sender:(id)sender presentViewController:(id)controller
{
  controllerCopy = controller;
  senderCopy = sender;
  [(CNContactContentUnitaryViewController *)self sender:senderCopy presentViewController:controllerCopy modalPresentationStyle:[(CNContactContentUnitaryViewController *)self _modalPresentationStyleForViewController:controllerCopy]];
}

- (void)sender:(id)sender presentViewController:(id)controller modalPresentationStyle:(int64_t)style
{
  senderCopy = sender;
  controllerCopy = controller;
  splitViewController = [(CNContactContentUnitaryViewController *)self splitViewController];
  if (splitViewController)
  {
    v11 = splitViewController;
    splitViewController2 = [(CNContactContentUnitaryViewController *)self splitViewController];
    firstResponder = [splitViewController2 firstResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      splitViewController3 = [(CNContactContentUnitaryViewController *)self splitViewController];
      view = [splitViewController3 view];
      [view endEditing:1];
    }
  }

  [controllerCopy setModalPresentationStyle:style];
  v17 = +[CNContactStyle currentStyle];
  [controllerCopy setModalTransitionStyle:{objc_msgSend(v17, "modalTransitionStyle")}];

  objc_opt_class();
  v46 = senderCopy;
  if (objc_opt_isKindOfClass())
  {
    v18 = v46;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setSourceView:v19];

  [v19 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  [(CNContactContentUnitaryViewController *)self centeredSourceRect:contactView inContactView:v22, v24, v26, v28];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  popoverPresentationController2 = [controllerCopy popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v31, v33, v35, v37}];

  popoverPresentationController3 = [controllerCopy popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:15];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    presentationController = [controllerCopy presentationController];
    [presentationController setDelegate:self];
  }

  objc_opt_class();
  v41 = objc_opt_isKindOfClass();
  if (!self->_disablingRotation && (v41 & 1) == 0)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
LABEL_15:

      goto LABEL_16;
    }

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    if (CGRectGetHeight(v48) <= 667.0 || [controllerCopy modalPresentationStyle])
    {

      goto LABEL_15;
    }

    supportedInterfaceOrientations = [controllerCopy supportedInterfaceOrientations];
    supportedInterfaceOrientations2 = [(CNContactContentUnitaryViewController *)self supportedInterfaceOrientations];

    if (supportedInterfaceOrientations != supportedInterfaceOrientations2)
    {
      [(CNContactContentUnitaryViewController *)self _beginDisablingInterfaceAutorotation];
      self->_disablingRotation = 1;
    }
  }

LABEL_16:
  [(CNContactContentUnitaryViewController *)self setBackgroundColorIfNeededForPresentedViewController:controllerCopy];
  [(CNContactContentUnitaryViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:pathCopy forTableView:viewCopy]&& ![(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:pathCopy forTableView:viewCopy])
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
  viewCopy = view;
  pathCopy = path;
  if ([(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:pathCopy forTableView:viewCopy]|| [(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:pathCopy forTableView:viewCopy])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:pathCopy forTableView:viewCopy];
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
  viewCopy = view;
  pathCopy = path;
  v11 = !-[CNContactContentUnitaryViewController isPersonHeaderIndexPath:forTableView:](self, "isPersonHeaderIndexPath:forTableView:", pathCopy, viewCopy) && !-[CNContactContentUnitaryViewController isSharedProfileBannerSectionIndexPath:forTableView:](self, "isSharedProfileBannerSectionIndexPath:forTableView:", pathCopy, viewCopy) && ([viewCopy isEditing] & 1) == 0 && !-[CNContactContentUnitaryViewController _indexPathIsActionItem:forTableView:](self, "_indexPathIsActionItem:forTableView:", pathCopy, viewCopy) && sel_copy_ == action;

  return v11;
}

- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:pathCopy forTableView:viewCopy]|| [(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:pathCopy forTableView:viewCopy])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:pathCopy forTableView:viewCopy];
    isEditing = [(CNContactContentUnitaryViewController *)self isEditing];
    v8 = 0;
    if ((isEditing & 1) == 0 && v9)
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

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:pathCopy forTableView:viewCopy]&& ![(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:pathCopy forTableView:viewCopy])
  {
    v9 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:pathCopy forTableView:viewCopy];
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

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v5 = [(CNContactContentUnitaryViewController *)self _cellIdentifierForTableView:view indexPath:path];
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  v7 = [objc_opt_class() classForCellIdentifier:v5];

  LOBYTE(contactView) = [v7 shouldIndentWhileEditing];
  return contactView;
}

- (id)groupContext
{
  groupEditingContext = [(CNContactContentUnitaryViewController *)self groupEditingContext];

  if (!groupEditingContext)
  {
    goto LABEL_4;
  }

  v4 = *MEMORY[0x1E6996530];
  groupEditingContext2 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
  addedGroups = [groupEditingContext2 addedGroups];
  if ((*(v4 + 16))(v4, addedGroups))
  {
    groupEditingContext3 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
    removedGroups = [groupEditingContext3 removedGroups];
    v9 = (*(v4 + 16))(v4, removedGroups);

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

  groupsAndContainersSaveManager = [(CNContactContentUnitaryViewController *)self groupsAndContainersSaveManager];
  groupEditingContext4 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
  addedGroups2 = [groupEditingContext4 addedGroups];
  v14 = [groupsAndContainersSaveManager groupsByContainerDictForContainers:0 groups:addedGroups2];

  v15 = [CNUIGroupContext alloc];
  groupEditingContext5 = [(CNContactContentUnitaryViewController *)self groupEditingContext];
  removedGroups2 = [groupEditingContext5 removedGroups];
  v10 = [(CNUIGroupContext *)v15 initWithAddedGroupsByContainerDict:v14 removedGroups:removedGroups2];

LABEL_7:

  return v10;
}

- (void)authorizeEditContactWithTargetGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  if (groupCopy)
  {
    if (-[CNContactContentUnitaryViewController saveWasAuthorized](self, "saveWasAuthorized") || (-[CNContactContentUnitaryViewController groupsAndContainersSaveManager](self, "groupsAndContainersSaveManager"), v8 = objc_claimAutoreleasedReturnValue(), -[CNContactContentUnitaryViewController contact](self, "contact"), v9 = objc_claimAutoreleasedReturnValue(), [groupCopy identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isAuthorizedToEditContact:withTargetGroupWithIdentifier:ignoresParentalRestrictions:", v9, v10, -[CNContactContentUnitaryViewController saveWasAuthorized](self, "saveWasAuthorized")), v10, v9, v8, (v11 & 1) != 0))
    {
      completionCopy[2](completionCopy);
    }

    else
    {
      objc_initWeak(&location, self);
      groupsAndContainersSaveManager = [(CNContactContentUnitaryViewController *)self groupsAndContainersSaveManager];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __88__CNContactContentUnitaryViewController_authorizeEditContactWithTargetGroup_completion___block_invoke;
      v13[3] = &unk_1E74E6D58;
      objc_copyWeak(&v15, &location);
      v14 = completionCopy;
      [groupsAndContainersSaveManager authorizeForViewController:self sender:self animated:1 completionBlock:v13];

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

- (void)authorizedAddContactToGroup:(id)group
{
  groupCopy = group;
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    groupEditingContext = [(CNContactContentUnitaryViewController *)self groupEditingContext];
    [groupEditingContext addGroup:groupCopy];

    [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
  }

  else
  {
    groupsAndContainersSaveManager = [(CNContactContentUnitaryViewController *)self groupsAndContainersSaveManager];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    v8 = [groupsAndContainersSaveManager addContact:contact toGroup:groupCopy moveWasAuthorized:1];

    if ([(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard])
    {
      displayContactCardViewController = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      [displayContactCardViewController setForceReload:1];
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

- (void)addContactToGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CNContactContentUnitaryViewController_addContactToGroup___block_invoke;
  v6[3] = &unk_1E74E6D30;
  objc_copyWeak(&v8, &location);
  v5 = groupCopy;
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

- (void)authorizedRemoveContactFromGroup:(id)group
{
  groupCopy = group;
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    groupEditingContext = [(CNContactContentUnitaryViewController *)self groupEditingContext];
    [groupEditingContext removeGroup:groupCopy];

    [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
  }

  else
  {
    groupsAndContainersSaveManager = [(CNContactContentUnitaryViewController *)self groupsAndContainersSaveManager];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    [groupsAndContainersSaveManager removeContact:contact fromGroup:groupCopy ignoresGuardianRestrictions:1];

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

- (void)removeContactFromGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__CNContactContentUnitaryViewController_removeContactFromGroup___block_invoke;
  v6[3] = &unk_1E74E6D30;
  objc_copyWeak(&v8, &location);
  v5 = groupCopy;
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

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  environment = [(CNContactContentUnitaryViewController *)self environment];
  runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

  if (runningInContactsAppOniPad)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:pathCopy forTableView:viewCopy];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(CNContactContentUnitaryViewController *)self allowsEditing])
    {
      v12 = v11;
      group = [v12 group];
      if (group)
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
        v21 = group;
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

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  viewCopy = view;
  footerViewCopy = footerView;
  [footerViewCopy updateConstraintsIfNeeded];
  backgroundView = [footerViewCopy backgroundView];
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  sectionBackgroundColor = [contactView sectionBackgroundColor];
  if (sectionBackgroundColor)
  {
    runningInContactsAppOniPad = 1;
  }

  else
  {
    environment = [(CNContactContentUnitaryViewController *)self environment];
    runningInContactsAppOniPad = [environment runningInContactsAppOniPad];
  }

  if (runningInContactsAppOniPad && !backgroundView)
  {
    v13 = objc_alloc(MEMORY[0x1E69DD250]);
    backgroundView = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v16 = [featureFlags isFeatureEnabled:29];

  if (v16)
  {
    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [footerViewCopy setBackgroundConfiguration:clearConfiguration];

    goto LABEL_16;
  }

  environment2 = [(CNContactContentUnitaryViewController *)self environment];
  runningInContactsAppOniPad2 = [environment2 runningInContactsAppOniPad];
  if (runningInContactsAppOniPad2 && ([(CNContactContentUnitaryViewController *)self displayContactView], featureFlags = objc_claimAutoreleasedReturnValue(), featureFlags == viewCopy))
  {
    v22 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    [backgroundView setBackgroundColor:v22];
  }

  else
  {
    contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
    sectionBackgroundColor2 = [contactView2 sectionBackgroundColor];
    [backgroundView setBackgroundColor:sectionBackgroundColor2];

    if (!runningInContactsAppOniPad2)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  [footerViewCopy setBackgroundView:backgroundView];
LABEL_16:
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  [(CNContactContentUnitaryViewController *)self tableView:viewCopy willDisplayFooterView:headerViewCopy forSection:section];
  [headerViewCopy _cnui_applyContactStyle];
  v9 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:viewCopy];
  cardEditingDeleteContactGroup = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
  if (v9 == cardEditingDeleteContactGroup && ([(CNContactContentUnitaryViewController *)self ignoreContactAction], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    sectionBackgroundColor = [contactView sectionBackgroundColor];

    if (sectionBackgroundColor)
    {
      contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
      sectionBackgroundColor2 = [contactView2 sectionBackgroundColor];
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
      backgroundColor = [v11 backgroundColor];

      if (backgroundColor)
      {
        contactView2 = +[CNContactStyle currentStyle];
        sectionBackgroundColor2 = [contactView2 backgroundColor];
LABEL_15:
        textLabel = sectionBackgroundColor2;
        backgroundView = [headerViewCopy backgroundView];
        [backgroundView setBackgroundColor:textLabel];

        goto LABEL_16;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    contactView2 = [(CNContactContentUnitaryViewController *)self environment];
    if (![contactView2 runningInContactsAppOniPad])
    {
LABEL_17:

      goto LABEL_18;
    }

    displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];

    if (displayContactView != viewCopy)
    {
      goto LABEL_18;
    }

    contactView2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    textLabel = [headerViewCopy textLabel];
    [textLabel setFont:contactView2];
LABEL_16:

    goto LABEL_17;
  }

LABEL_18:
}

- (BOOL)tableView:(id)view shouldHaveFullLengthBottomSeparatorForSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:viewCopy];
  displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
  v9 = displayContactView;
  if (displayContactView != viewCopy)
  {

LABEL_4:
    editingContactView = [(CNContactContentUnitaryViewController *)self editingContactView];

    if (editingContactView != viewCopy)
    {
LABEL_5:
      isKindOfClass = 0;
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      nameEditingGroups = [(CNContactContentUnitaryViewController *)self nameEditingGroups];
      v15 = [nameEditingGroups indexOfObject:v7];
      nameEditingGroups2 = [(CNContactContentUnitaryViewController *)self nameEditingGroups];
      isKindOfClass = v15 == [nameEditingGroups2 count] - 1;

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  environment = [(CNContactContentUnitaryViewController *)self environment];
  runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

  if (runningInContactsAppOniPad)
  {
    goto LABEL_4;
  }

  cardMedicalIDGroup = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];

  cardMedicalIDGroup2 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];

  cardBlockContactGroup = [(CNContactContentUnitaryViewController *)self cardBlockContactGroup];
  v20 = cardBlockContactGroup;
  if (v7 == cardBlockContactGroup)
  {

    goto LABEL_26;
  }

  cardShareLocationGroup = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];

  if (cardMedicalIDGroup)
  {
    v22 = v7 == cardMedicalIDGroup2;
  }

  else
  {
    v22 = 0;
  }

  v23 = !v22;
  isKindOfClass = 1;
  if (v7 != cardShareLocationGroup && v23)
  {
    if (cardMedicalIDGroup && [v7 isMemberOfClass:objc_opt_class()])
    {
      cardMedicalIDGroup3 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
      actionItems = [cardMedicalIDGroup3 actionItems];
      if ([actionItems count])
      {
        cardMedicalIDGroup4 = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
        addSpacerFromPreviousGroup = [cardMedicalIDGroup4 addSpacerFromPreviousGroup];

        if (!addSpacerFromPreviousGroup)
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

- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section
{
  viewCopy = view;
  editingContactView = [(CNContactContentUnitaryViewController *)self editingContactView];

  if (editingContactView == viewCopy)
  {
    isKindOfClass = 1;
  }

  else
  {
    displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
    if (displayContactView != viewCopy)
    {
      isKindOfClass = 0;
LABEL_30:

      goto LABEL_31;
    }

    environment = [(CNContactContentUnitaryViewController *)self environment];
    runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

    if (runningInContactsAppOniPad)
    {
      v12 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:viewCopy];
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
      displayContactView = v25;
      if (objc_opt_isKindOfClass())
      {
        v28 = displayContactView;
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

- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section
{
  v5 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:view];
  if (![(CNContactContentUnitaryViewController *)self isEditing])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      contact = [(CNContactContentUnitaryViewController *)self contact];
      mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
      if ([mainStoreLinkedContacts count] >= 2)
      {
        goto LABEL_12;
      }

      isEditing = [(CNContactContentUnitaryViewController *)self isEditing];

      if (isEditing)
      {
        goto LABEL_14;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_14;
    }

    contact = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
    if (v5 == contact)
    {
LABEL_13:

      goto LABEL_14;
    }

    mainStoreLinkedContacts = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];
    if (v5 != mainStoreLinkedContacts)
    {
      cardGameCenterActionGroup = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];

      if (v5 != cardGameCenterActionGroup)
      {
        addSpacerFromPreviousGroup = [v5 addSpacerFromPreviousGroup];
        goto LABEL_15;
      }

LABEL_14:
      addSpacerFromPreviousGroup = 1;
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

  nameEditingGroups = [(CNContactContentUnitaryViewController *)self nameEditingGroups];
  firstObject = [nameEditingGroups firstObject];
  addSpacerFromPreviousGroup = v5 == firstObject;

LABEL_15:
  return addSpacerFromPreviousGroup;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:viewCopy];
  if (-[CNContactContentUnitaryViewController isSharedProfileBannerSectionForTableView:section:](self, "isSharedProfileBannerSectionForTableView:section:", viewCopy, section) || -[CNContactContentUnitaryViewController isPersonHeaderSectionForTableView:section:](self, "isPersonHeaderSectionForTableView:section:", viewCopy, section) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (-[CNContactContentUnitaryViewController nameEditingGroups](self, "nameEditingGroups"), v8 = objc_claimAutoreleasedReturnValue(), [v8 lastObject], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7 != v9))
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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionForTableView:viewCopy section:section]|| [(CNContactContentUnitaryViewController *)self isPersonHeaderSectionForTableView:viewCopy section:section])
  {
    title = 0;
    goto LABEL_16;
  }

  v8 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:viewCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contact = [(CNContactContentUnitaryViewController *)self contact];
    mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
    if ([mainStoreLinkedContacts count] >= 2)
    {

      goto LABEL_9;
    }

    isEditing = [(CNContactContentUnitaryViewController *)self isEditing];

    if (isEditing)
    {
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    cardEditingDeleteContactGroup = [(CNContactContentUnitaryViewController *)self cardEditingDeleteContactGroup];
    v13 = cardEditingDeleteContactGroup;
    if (v8 == cardEditingDeleteContactGroup)
    {
      ignoreContactAction = [(CNContactContentUnitaryViewController *)self ignoreContactAction];

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

    goto LABEL_15;
  }

LABEL_9:
  title = [v8 title];
LABEL_15:

LABEL_16:

  return title;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if ([(CNContactContentUnitaryViewController *)self shouldShowVerifiedFooterInSection:section inTableView:viewCopy])
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v8];

    verifiedInfoMessage = [(CNContactContentViewController *)self verifiedInfoMessage];
    [v9 setAttributedString:verifiedInfoMessage];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldShowVerifiedFooterInSection:(int64_t)section inTableView:(id)view
{
  viewCopy = view;
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0 || ([(CNContactContentViewController *)self verifiedInfoMessage], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v11 = 0;
  }

  else
  {
    v8 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:viewCopy];
    cardActionsGroup = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    if (v8 == cardActionsGroup)
    {
      v11 = [(CNContactContentUnitaryViewController *)self tableView:viewCopy shouldHaveFullLengthBottomSeparatorForSection:section];
    }

    else
    {
      cardMedicalIDGroup = [(CNContactContentUnitaryViewController *)self cardMedicalIDGroup];
      v11 = v8 == cardMedicalIDGroup && ([v8 addSpacerFromPreviousGroup] & 1) == 0 && -[CNContactContentUnitaryViewController tableView:shouldHaveFullLengthBottomSeparatorForSection:](self, "tableView:shouldHaveFullLengthBottomSeparatorForSection:", viewCopy, section);
    }
  }

  return v11;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = viewCopy;
  v8 = 0;
  if (!section && self->_editingContactView == viewCopy)
  {
    v9 = *MEMORY[0x1E6996568];
    warningMessage = [(CNContactContentViewController *)self warningMessage];
    LOBYTE(v9) = (*(v9 + 16))(v9, warningMessage);

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
      mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
      phoneNumbers = [mutableContact phoneNumbers];
      [v8 setShouldDisplayWarningIcon:{(*(v13 + 16))(v13, phoneNumbers)}];

      warningText = [v8 warningText];
      warningMessage2 = [(CNContactContentViewController *)self warningMessage];
      LOBYTE(phoneNumbers) = [warningText isEqual:warningMessage2];

      if ((phoneNumbers & 1) == 0)
      {
        warningMessage3 = [(CNContactContentViewController *)self warningMessage];
        [v8 setWarningText:warningMessage3];
      }
    }
  }

  return v8;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:viewCopy];
  if (self->_editingContactView == viewCopy)
  {
    editingGroups = [(CNContactContentUnitaryViewController *)self editingGroups];
    lastObject = [editingGroups lastObject];

    if (v7 == lastObject)
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
      contact = [(CNContactContentUnitaryViewController *)self contact];
      mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
      if ([mainStoreLinkedContacts count] <= 1)
      {
      }

      else
      {
        cardGroupMembershipGroup = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];

        if (!cardGroupMembershipGroup)
        {
          v11 = 16.0;
          goto LABEL_24;
        }
      }
    }

    if ([(CNContactView *)viewCopy numberOfSections]- 1 == section)
    {
      contact2 = [(CNContactContentUnitaryViewController *)self contact];
      phonemeData = [contact2 phonemeData];

      if (phonemeData)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 16.0;
      }
    }

    else if ([(CNContactContentUnitaryViewController *)self shouldShowVerifiedFooterInSection:section inTableView:viewCopy])
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

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:viewCopy];
  title = [v7 title];

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
  usesInsetPlatterStyle = [v12 usesInsetPlatterStyle];

  editingContactView = self->_editingContactView;
  v15 = 0.0;
  if (!usesInsetPlatterStyle || (editingContactView != viewCopy ? (v16 = (usesInsetPlatterStyle & (isKindOfClass | v10)) == 0) : (v16 = 0), !v16))
  {
    if (editingContactView == viewCopy)
    {
      if (title)
      {
        goto LABEL_21;
      }

      aggregatedNameGroups = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];

      if (v7 == aggregatedNameGroups)
      {
        v15 = 12.0;
      }

      else
      {
        v15 = 16.0;
      }

      if (!((v7 == aggregatedNameGroups) | v11 & 1))
      {
        nameEditingGroups = [(CNContactContentUnitaryViewController *)self nameEditingGroups];
        v28 = [nameEditingGroups containsObject:v7];

        v15 = 16.0;
        if (v28)
        {
          v15 = 0.0;
          if (!section)
          {
            v29 = *MEMORY[0x1E6996568];
            warningMessage = [(CNContactContentViewController *)self warningMessage];
            LOBYTE(v29) = (*(v29 + 16))(v29, warningMessage);

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
      if (title)
      {
        if (isKindOfClass)
        {
          contact = [(CNContactContentUnitaryViewController *)self contact];
          mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
          v19 = [mainStoreLinkedContacts count];

          if (v19 >= 2)
          {
            goto LABEL_21;
          }
        }

        if (v10)
        {
          cardGroupMembershipGroup = [(CNContactContentUnitaryViewController *)self cardGroupMembershipGroup];
          parentGroups = [cardGroupMembershipGroup parentGroups];
          v22 = [parentGroups count];

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

      cardShareLocationGroup = [(CNContactContentUnitaryViewController *)self cardShareLocationGroup];

      if (v7 == cardShareLocationGroup)
      {
        v15 = 55.0;
      }

      else if (((section != 1) & [v7 addSpacerFromPreviousGroup]) != 0)
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

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  section = [pathCopy section];
  v12 = pathCopy;
  if (section == [indexPathCopy section])
  {
    objc_opt_class();
    v13 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = [indexPathCopy row];
    valueEditingItemsCount = [v15 valueEditingItemsCount];

    if (v16 >= valueEditingItemsCount)
    {
      v12 = pathCopy;
    }

    else
    {
      v12 = indexPathCopy;
    }
  }

  v18 = v12;

  return v12;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v11 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);

  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v15 = v12;

  v13 = [pathCopy row];
  v14 = [indexPathCopy row];

  [v15 moveEditingItemFromIndex:v13 toIndex:v14];
  [(CNContactContentUnitaryViewController *)self updateDoneButton];
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_editingContactView == view)
  {
    viewCopy = view;
    objc_opt_class();
    v9 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);

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
      editingItems = [v11 editingItems];
      v13 = [editingItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:pathCopy forTableView:viewCopy]&& ![(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:pathCopy forTableView:viewCopy])
  {
    v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
    if ([(CNContactContentUnitaryViewController *)self _indexPathIsActionItem:pathCopy forTableView:viewCopy])
    {
      v8 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:pathCopy forTableView:viewCopy];
      actions = [v8 actions];
      v10 = [actions objectAtIndexedSubscript:0];

      [v10 performActionWithSender:v7];
      indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
      [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
    }

    else if (objc_opt_respondsToSelector())
    {
      if (-[CNContactContentUnitaryViewController isEditing](self, "isEditing") && [v7 isMemberOfClass:objc_opt_class()])
      {
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
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
        cardGroupItem = [v14 cardGroupItem];
        if (objc_opt_isKindOfClass())
        {
          v16 = cardGroupItem;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        property = [v17 property];
        v19 = [property isEqualToString:*MEMORY[0x1E695C1C0]];

        if (v19)
        {
          addAddressingGrammarAction = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
          [addAddressingGrammarAction setIndexPath:pathCopy];

          addAddressingGrammarAction2 = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
          [addAddressingGrammarAction2 performActionWithSender:v14];
        }

        else
        {
          [(CNContactContentUnitaryViewController *)self addEditingItemAtIndexPath:pathCopy forTableView:viewCopy];
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
            v23 = [(CNContactContentUnitaryViewController *)self _itemAtIndexPath:pathCopy forTableView:viewCopy];
            contact = [v23 contact];
            property2 = [v23 property];
            labeledValue = [v23 labeledValue];
            identifier = [labeledValue identifier];
            v22 = [(CNContactContentUnitaryViewController *)self contactViewController:self shouldPerformDefaultActionForContact:contact propertyKey:property2 propertyIdentifier:identifier];
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

        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      }
    }
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
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
    v12 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
    cardGameCenterActionGroup = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
    if ([v12 isEqual:cardGameCenterActionGroup])
    {
      gameCenterManager = [(CNContactContentUnitaryViewController *)self gameCenterManager];
      hasSentInvite = [gameCenterManager hasSentInvite];

      v16 = hasSentInvite ^ 1;
    }

    else
    {

      v16 = 1;
    }
  }

  return v16 & 1;
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  if ([(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:path forTableView:view])
  {

    [(CNContactContentUnitaryViewController *)self removePersonHeaderViewControllerFromHierarchy];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if ([(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:pathCopy forTableView:viewCopy])
  {
    personHeaderViewController = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
    [personHeaderViewController didMoveToParentViewController:self];
  }

  objc_opt_class();
  v11 = cellCopy;
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
  v14 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
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
    v17 = [pathCopy row];
    v18 = [viewCopy numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}];
    if (v16 && v17 < v18 - 1 && ([(CNContactContentUnitaryViewController *)self displayContactView], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 == viewCopy))
    {
      environment = [(CNContactContentUnitaryViewController *)self environment];
      [v13 setShowSeparator:{objc_msgSend(environment, "runningInContactsAppOniPad")}];
    }

    else
    {
      [v13 setShowSeparator:1];
    }
  }

  editingContactView = [(CNContactContentUnitaryViewController *)self editingContactView];

  if (editingContactView == viewCopy)
  {
    editingContactView2 = [(CNContactContentUnitaryViewController *)self editingContactView];
    [editingContactView2 separatorInsetForCell:v11];
    [v11 setSeparatorInset:?];
  }
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  section = [path section];
  cardActionsGroup = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
  v9 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:cardActionsGroup inTableView:viewCopy];

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

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:pathCopy forTableView:viewCopy]&& ![(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:pathCopy forTableView:viewCopy])
  {
    v9 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
    editingItems = [v9 editingItems];
    v11 = [editingItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    if (style != 2)
    {
      if (style != 1)
      {
LABEL_17:
        [(CNContactContentUnitaryViewController *)self updateDoneButton];

        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        contact = [v11 contact];
        [(CNContactContentUnitaryViewController *)self removeLinkedContact:contact];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(CNContactContentUnitaryViewController *)self removeEditingItem:v11 atIndexPath:pathCopy forTableView:viewCopy];
          goto LABEL_17;
        }

        contact = [v11 group];
        if (contact)
        {
          [(CNContactContentUnitaryViewController *)self removeContactFromGroup:contact];
        }
      }

LABEL_16:

      goto LABEL_17;
    }

    contact = [viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      addLinkedCardAction = [(CNContactContentUnitaryViewController *)self addLinkedCardAction];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          property = [v11 property];
          v17 = [property isEqualToString:*MEMORY[0x1E695C1C0]];

          if (v17)
          {
            objc_opt_class();
            v18 = [viewCopy cellForRowAtIndexPath:pathCopy];
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            v20 = v19;

            addAddressingGrammarAction = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
            [addAddressingGrammarAction setIndexPath:pathCopy];

            addAddressingGrammarAction2 = [(CNContactContentUnitaryViewController *)self addAddressingGrammarAction];
            [addAddressingGrammarAction2 performActionWithSender:v20];
          }

          else
          {
            [(CNContactContentUnitaryViewController *)self addEditingItemAtIndexPath:pathCopy forTableView:viewCopy];
          }

          goto LABEL_16;
        }

        actionProvider = [(CNContactContentUnitaryViewController *)self actionProvider];
        addStaticIdentityAction = [actionProvider addStaticIdentityAction];
        [addStaticIdentityAction performActionWithSender:contact];

        goto LABEL_15;
      }

      addLinkedCardAction = [(CNContactContentUnitaryViewController *)self addToGroupAction];
    }

    actionProvider = addLinkedCardAction;
    [addLinkedCardAction performActionWithSender:contact];
LABEL_15:

    goto LABEL_16;
  }

LABEL_18:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(CNContactContentUnitaryViewController *)self isPersonHeaderIndexPath:pathCopy forTableView:viewCopy])
  {
    v9 = [(CNContactContentUnitaryViewController *)self personHeaderCellForTableView:viewCopy];
LABEL_5:
    v10 = v9;
    goto LABEL_21;
  }

  if ([(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionIndexPath:pathCopy forTableView:viewCopy])
  {
    v9 = [(CNContactContentUnitaryViewController *)self sharedProfileBannerSectionCellForTableView:viewCopy];
    goto LABEL_5;
  }

  v11 = -[CNContactContentUnitaryViewController _cardGroupAtTableViewSectionIndex:forTableView:](self, "_cardGroupAtTableViewSectionIndex:forTableView:", [pathCopy section], viewCopy);
  if ([(CNContactContentUnitaryViewController *)self _indexPathIsActionItem:pathCopy forTableView:viewCopy]|| [(CNContactContentUnitaryViewController *)self isStandardGroup:v11])
  {
    v10 = [(CNContactContentUnitaryViewController *)self _cellForIndexPath:pathCopy forTableView:viewCopy];
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

  cardGameCenterActionGroup = [(CNContactContentUnitaryViewController *)self cardGameCenterActionGroup];
  if (![v11 isEqual:cardGameCenterActionGroup])
  {
    goto LABEL_19;
  }

  gameCenterManager = [(CNContactContentUnitaryViewController *)self gameCenterManager];
  hasSentInvite = [gameCenterManager hasSentInvite];

  if (hasSentInvite)
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

    cardGameCenterActionGroup = v16;

    if (cardGameCenterActionGroup)
    {
      labelTextAttributes = [cardGameCenterActionGroup labelTextAttributes];
      v18 = [labelTextAttributes mutableCopy];

      tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      [v18 setObject:tertiaryLabelColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

      [cardGameCenterActionGroup setLabelTextAttributes:v18];
    }

LABEL_19:
  }

LABEL_21:
  displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
  if (displayContactView == viewCopy)
  {
    environment = [(CNContactContentUnitaryViewController *)self environment];
    runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

    if (!runningInContactsAppOniPad)
    {
      goto LABEL_25;
    }

    displayContactView = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    [v10 setBackgroundColor:displayContactView];
  }

LABEL_25:
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactContentUnitaryViewController.m" lineNumber:4538 description:@"We have no cell to return!"];
  }

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if ([(CNContactContentUnitaryViewController *)self isSharedProfileBannerSectionForTableView:viewCopy section:section]|| [(CNContactContentUnitaryViewController *)self isPersonHeaderSectionForTableView:viewCopy section:section])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CNContactContentUnitaryViewController *)self _cardGroupAtTableViewSectionIndex:section forTableView:viewCopy];
    aggregatedNameGroups = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];

    if (v8 == aggregatedNameGroups)
    {
      aggregatedNameGroups2 = [(CNContactContentUnitaryViewController *)self aggregatedNameGroups];
      groups = [aggregatedNameGroups2 groups];
      v7 = [groups count];
    }

    else
    {
      if ([(CNContactContentUnitaryViewController *)self isStandardGroup:v8])
      {
        if (self->_editingContactView == viewCopy)
        {
          [v8 editingItems];
        }

        else
        {
          [v8 displayItems];
        }
        actionItems = ;
      }

      else
      {
        actionItems = [v8 actionItems];
      }

      aggregatedNameGroups2 = actionItems;
      v7 = [actionItems count];
    }
  }

  return v7;
}

- (BOOL)isStandardGroup:(id)group
{
  groupCopy = group;
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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  v5 = [(CNContactContentUnitaryViewController *)self _currentGroupsForTableView:viewCopy];
  v6 = [v5 count];
  v7 = [(CNContactContentUnitaryViewController *)self additionalTopSectionsCountForTableView:viewCopy];

  return v7 + v6;
}

- (void)didChangeToShowTitle:(BOOL)title
{
  [(CNContactContentUnitaryViewController *)self setLayoutPositionallyAfterNavBar:title];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    staticDisplayHeaderView = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    [staticDisplayHeaderView updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];

    [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self displayHeaderView];
  }
  v5 = ;
  [v5 updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];

  editingHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
  [editingHeaderView updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];
}

- (void)didChangeToEditMode:(BOOL)mode
{
  modeCopy = mode;
  if ([(CNContactContentUnitaryViewController *)self isEditing]!= mode)
  {

    [(CNContactContentUnitaryViewController *)self setEditing:modeCopy animated:0];
  }
}

- (void)setupWithOptions:(id)options readyBlock:(id)block
{
  v119 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  blockCopy = block;
  v8 = CNUILogContactCard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = optionsCopy;
    _os_log_debug_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEBUG, "setupWithOptions: %@", &buf, 0xCu);
  }

  v9 = [optionsCopy objectForKeyedSubscript:@"Properties"];
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

    managedConfiguration = [(CNContactContentUnitaryViewController *)self managedConfiguration];

    if (managedConfiguration)
    {
      v12 = objc_alloc(MEMORY[0x1E695CE18]);
      environment = [(CNContactContentUnitaryViewController *)self environment];
      cnEnvironment = [environment cnEnvironment];
      managedConfiguration2 = [(CNContactContentUnitaryViewController *)self managedConfiguration];
      v16 = [v12 initWithEnvironment:cnEnvironment options:v10 managedConfiguration:managedConfiguration2];
      [(CNContactContentUnitaryViewController *)self setContactStore:v16];
    }

    else
    {
      environment = [MEMORY[0x1E695CE18] storeWithOptions:v10];
      [(CNContactContentUnitaryViewController *)self setContactStore:environment];
    }
  }

  v17 = [v9 objectForKeyedSubscript:@"showContactPhotoPosterCell"];
  -[CNContactContentUnitaryViewController setShowContactPhotoPosterCell:](self, "setShowContactPhotoPosterCell:", [v17 BOOLValue]);

  v18 = [v9 objectForKeyedSubscript:@"runningPPT"];
  -[CNContactContentUnitaryViewController setRunningPPT:](self, "setRunningPPT:", [v18 BOOLValue]);

  v19 = [v9 objectForKeyedSubscript:@"showingMeContact"];
  -[CNContactContentUnitaryViewController setShowingMeContact:](self, "setShowingMeContact:", [v19 BOOLValue]);

  v20 = [optionsCopy objectForKeyedSubscript:@"ignoresParentalRestrictions"];
  -[CNContactContentViewController setIgnoresParentalRestrictions:](self, "setIgnoresParentalRestrictions:", [v20 BOOLValue]);

  v21 = [optionsCopy objectForKeyedSubscript:@"prohibitedPropertyKeys"];
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
    cardStaticIdentityGroup = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];

    if (cardStaticIdentityGroup)
    {
      v38 = [v9 objectForKeyedSubscript:@"staticIdentity"];
      v39 = v38;
      if (v38 && [v38 length])
      {
        [(CNContactContentUnitaryViewController *)self addStaticIdentity:v39];
        [(CNContactContentUnitaryViewController *)self setDidLookUpStaticIdentity:1];
        cardStaticIdentityGroup2 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
        [cardStaticIdentityGroup2 addIdentity:v39 isNew:0];

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
      staticDisplayHeaderView = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
      [staticDisplayHeaderView updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];

      staticDisplayHeaderView2 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
      mutableContactForHeaderView = [(CNContactContentUnitaryViewController *)self mutableContactForHeaderView];
      [staticDisplayHeaderView2 updateWithNewContact:mutableContactForHeaderView];

      displayFloatingCollapsedHeaderView = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [displayFloatingCollapsedHeaderView updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];

      [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    }

    else
    {
      displayHeaderView = [(CNContactContentUnitaryViewController *)self displayHeaderView];
      [displayHeaderView updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];

      [(CNContactContentUnitaryViewController *)self displayHeaderView];
    }
    v47 = ;
    mutableContactForHeaderView2 = [(CNContactContentUnitaryViewController *)self mutableContactForHeaderView];
    [v47 updateWithNewContact:mutableContactForHeaderView2];

    shouldShowGemini = [(CNContactContentUnitaryViewController *)self shouldShowGemini];
    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self displayHeaderView];
    }
    v50 = ;
    [v50 setShouldShowGemini:shouldShowGemini];

    [(CNContactContentUnitaryViewController *)self createCardEditingGeminiGroupIfNeeded];
    cardEditingGeminiGroup = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
    [cardEditingGeminiGroup setShouldShowGemini:shouldShowGemini];

    if (self->_editingHeaderView)
    {
      editingHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
      [editingHeaderView updateForShowingNavBar:{-[CNContactContentUnitaryViewController layoutPositionallyAfterNavBar](self, "layoutPositionallyAfterNavBar")}];

      editingHeaderView2 = [(CNContactContentUnitaryViewController *)self editingHeaderView];
      mutableContactForHeaderView3 = [(CNContactContentUnitaryViewController *)self mutableContactForHeaderView];
      [editingHeaderView2 updateWithNewContact:mutableContactForHeaderView3];
    }

    [(CNContactContentUnitaryViewController *)self updateEditNavigationItemsAnimated:0];
    applyContactStyle = [(CNContactContentUnitaryViewController *)self applyContactStyle];
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, 0);
  }

  if ([(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard])
  {
    customViewConfiguration = [(CNContactContentUnitaryViewController *)self customViewConfiguration];
    v57 = [v9 objectForKeyedSubscript:@"customViewConfiguration"];

    if (customViewConfiguration != v57)
    {
      v58 = [v9 objectForKeyedSubscript:@"customViewConfiguration"];
      [(CNContactContentUnitaryViewController *)self setCustomViewConfiguration:v58];

      customViewConfiguration2 = [(CNContactContentUnitaryViewController *)self customViewConfiguration];
      displayContactCardViewController = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      [displayContactCardViewController setCustomViewConfiguration:customViewConfiguration2];

      displayContactCardViewController2 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      [displayContactCardViewController2 setForceReload:1];

      contact = [(CNContactContentUnitaryViewController *)self contact];
      displayContactCardViewController3 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      [displayContactCardViewController3 setContact:contact];
    }

    highlightedProperties = [(CNContactContentUnitaryViewController *)self highlightedProperties];
    v65 = [highlightedProperties _cn_compactMap:&__block_literal_global_581];
    pendingContactCardPropertyViewConfiguration = [(CNContactContentUnitaryViewController *)self pendingContactCardPropertyViewConfiguration];
    [pendingContactCardPropertyViewConfiguration setHighlightedLabeledValueIdentifiers:v65];

    highlightedPropertyImportant = [(CNContactContentUnitaryViewController *)self highlightedPropertyImportant];
    pendingContactCardPropertyViewConfiguration2 = [(CNContactContentUnitaryViewController *)self pendingContactCardPropertyViewConfiguration];
    [pendingContactCardPropertyViewConfiguration2 setShouldColorEmphasizeHighlightedProperties:highlightedPropertyImportant];

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
    view = [(CNContactContentUnitaryViewController *)self view];
    traitCollection = [(CNContactContentUnitaryViewController *)self traitCollection];
    v3 = [(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController canShowPhotoPickerForView:view withTraitCollection:traitCollection];

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
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    [(CNContactViewFooterView *)contactView setTableFooterView:0];
  }

  else
  {
    objc_opt_class();
    contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
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
      contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
      [contactView3 setTableFooterView:contactView];
    }

    contact = [(CNContactContentUnitaryViewController *)self contact];
    [(CNContactViewFooterView *)contactView setContact:contact];

    label = [(CNContactViewFooterView *)contactView label];
    view = [(CNContactContentUnitaryViewController *)self view];
    [view bounds];
    v13 = v12;
    view2 = [(CNContactContentUnitaryViewController *)self view];
    [view2 layoutMargins];
    v16 = v13 - v15;
    view3 = [(CNContactContentUnitaryViewController *)self view];
    [view3 layoutMargins];
    [label sizeThatFits:{v16 - v18, 1.79769313e308}];

    [(CNContactViewFooterView *)contactView frame];
    [(CNContactViewFooterView *)contactView setFrame:?];
  }
}

- (CGSize)setupTableHeaderView
{
  if ([(CNContactContentUnitaryViewController *)self shouldDisplayAvatarHeaderView])
  {
    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
LABEL_4:
      customHeaderView2 = contactHeaderView;
      goto LABEL_11;
    }

    if ((-[CNContactContentUnitaryViewController isEditing](self, "isEditing") & 1) == 0 && [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
    {
      contactHeaderView2 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
      backgroundColor = [contactHeaderView2 backgroundColor];
      actionsViewController = [(CNContactContentUnitaryViewController *)self actionsViewController];
      view = [actionsViewController view];
      [view setBackgroundColor:backgroundColor];

      contactHeaderView = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      goto LABEL_4;
    }
  }

  else
  {
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    customHeaderView = [contactView customHeaderView];

    if (customHeaderView)
    {
      contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
      customHeaderView2 = [contactView2 customHeaderView];

      goto LABEL_11;
    }
  }

  customHeaderView2 = 0;
LABEL_11:
  contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
  tableHeaderView = [contactView3 tableHeaderView];
  needsUpdateConstraints = [tableHeaderView needsUpdateConstraints];

  if (customHeaderView2)
  {
    [customHeaderView2 frame];
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v16 = *MEMORY[0x1E695F060];
    v18 = *(MEMORY[0x1E695F060] + 8);
  }

  contactView4 = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView4 setTableHeaderView:customHeaderView2];

  if ((needsUpdateConstraints & 1) == 0)
  {
    contactView5 = [(CNContactContentUnitaryViewController *)self contactView];
    tableHeaderView2 = [contactView5 tableHeaderView];
    needsUpdateConstraints2 = [tableHeaderView2 needsUpdateConstraints];

    if (needsUpdateConstraints2)
    {
      contactView6 = [(CNContactContentUnitaryViewController *)self contactView];
      tableHeaderView3 = [contactView6 tableHeaderView];
      [tableHeaderView3 updateConstraints];
    }
  }

  v25 = v16;
  v26 = v18;
  result.height = v26;
  result.width = v25;
  return result;
}

- (void)performWhenViewIsLaidOut:(id)out
{
  outCopy = out;
  pendingLayoutBlocks = [(CNContactContentUnitaryViewController *)self pendingLayoutBlocks];
  v5 = [outCopy copy];

  v6 = _Block_copy(v5);
  v7 = [pendingLayoutBlocks arrayByAddingObject:v6];
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
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  tableHeaderView = [contactView tableHeaderView];

  if (tableHeaderView)
  {
    [tableHeaderView frame];
    if (v4 != v10 || v6 != v9)
    {
      contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
      [contactView2 setTableHeaderView:tableHeaderView];
    }
  }

  [(CNContactContentUnitaryViewController *)self setupTableFooterView];
  [(CNContactContentUnitaryViewController *)self focusOnFirstEditingItemIfNeeded];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
    [displayContactView frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    contactViewBackgroundGradientLayer = [(CNContactContentUnitaryViewController *)self contactViewBackgroundGradientLayer];
    [contactViewBackgroundGradientLayer setFrame:{v14, v16, v18, v20}];

    displayContactView2 = [(CNContactContentUnitaryViewController *)self displayContactView];
    [displayContactView2 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    contactViewBackgroundView = [(CNContactContentUnitaryViewController *)self contactViewBackgroundView];
    [contactViewBackgroundView setFrame:{v24, v26, v28, v30}];
  }

  pendingLayoutBlocks = [(CNContactContentUnitaryViewController *)self pendingLayoutBlocks];
  [pendingLayoutBlocks enumerateObjectsUsingBlock:&__block_literal_global_573];

  [(CNContactContentUnitaryViewController *)self setPendingLayoutBlocks:MEMORY[0x1E695E0F0]];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v8 viewWillLayoutSubviews];
  contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  [contactHeaderView calculateLabelSizesIfNeeded];

  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    displayFloatingCollapsedHeaderView = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
    [displayFloatingCollapsedHeaderView calculateLabelSizesIfNeeded];
  }

  [(CNContactContentUnitaryViewController *)self updateOutOfProcessFullscreenPresentationIfNeeded];
  [(CNContactContentUnitaryViewController *)self updateEditPhotoButtonIfNeeded];
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    isEditing = [contactView isEditing];

    if (isEditing)
    {
      contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
      [contactView2 setEditing:0 animated:0];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v4 viewDidDisappear:disappear];
  [(NSHashTable *)self->_actionsObservers removeAllObjects];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v16.receiver = self;
  v16.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v16 viewWillDisappear:disappear];
  siriContextProvider = [(CNContactContentUnitaryViewController *)self siriContextProvider];
  [siriContextProvider setEnabled:0];

  [(CNContactContentUnitaryViewController *)self updateWindowTitleForAppearing:0];
  shareLocationController = [(CNContactContentUnitaryViewController *)self shareLocationController];
  [shareLocationController stopUpdatingFriends];

  if ([(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle])
  {
    tintColor = [MEMORY[0x1E69DC888] tintColor];
    navigationItemController = [(CNContactContentUnitaryViewController *)self navigationItemController];
    navigationItem = [navigationItemController navigationItem];
    navigationBar = [navigationItem navigationBar];
    [navigationBar setTintColor:tintColor];

    previousBackGestureDelegate = self->_previousBackGestureDelegate;
    currentNavigationController = [(CNContactContentUnitaryViewController *)self currentNavigationController];
    interactivePopGestureRecognizer = [currentNavigationController interactivePopGestureRecognizer];
    [interactivePopGestureRecognizer setDelegate:previousBackGestureDelegate];
  }

  else if ([(CNContactContentUnitaryViewController *)self allowsSwipeToPop])
  {
    return;
  }

  previousInteractivePopGestureEnabled = self->_previousInteractivePopGestureEnabled;
  currentNavigationController2 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
  interactivePopGestureRecognizer2 = [currentNavigationController2 interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer2 setEnabled:previousInteractivePopGestureEnabled];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v4 viewIsAppearing:appearing];
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

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v4 didMoveToParentViewController:controller];
  [(CNContactContentUnitaryViewController *)self updateEditNavigationItemsAnimated:0];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v13.receiver = self;
  v13.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v13 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (![(CNContactContentUnitaryViewController *)self isOutOfProcess])
  {
    p_peripheryInsets = &self->_peripheryInsets;
    view = [(CNContactContentUnitaryViewController *)self view];
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
  v4.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v4 viewDidAppear:appear];
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(CNContactContentUnitaryViewController *)self forcesTransparentBackground])
  {
    v5 = +[CNUIColorRepository transparentBackgroundColor];
LABEL_5:
    v6 = v5;
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
LABEL_6:
    v8 = contactView;
    [contactView setBackgroundColor:v6];

    goto LABEL_7;
  }

  if ([(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
  {
    v5 = +[CNUIColorRepository popoverBackgroundColor];
    goto LABEL_5;
  }

  environment = [(CNContactContentUnitaryViewController *)self environment];
  runningInContactsAppOniPad = [environment runningInContactsAppOniPad];

  if (runningInContactsAppOniPad)
  {
    v6 = +[CNUIColorRepository contactCardBackgroundiPadOverwriteColor];
    contactView = [(CNContactContentUnitaryViewController *)self displayContactView];
    goto LABEL_6;
  }

LABEL_7:
  v20.receiver = self;
  v20.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v20 viewWillAppear:appearCopy];
  [(CNContactContentUnitaryViewController *)self setDismissedSharedProfileBannerAction:0];
  [(CNContactContentUnitaryViewController *)self setTappedSharedProfileBannerAction:0];
  v9 = +[CNContactStyle currentStyle];
  backgroundColor = [v9 backgroundColor];

  if (backgroundColor)
  {
    v11 = +[CNContactStyle currentStyle];
    backgroundColor2 = [v11 backgroundColor];
    view = [(CNContactContentUnitaryViewController *)self view];
    [view setBackgroundColor:backgroundColor2];
  }

  contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView2 _cnui_applyContactStyle];

  applyContactStyle = [(CNContactContentUnitaryViewController *)self applyContactStyle];
  if (![(CNContactContentUnitaryViewController *)self reloadDataIfNeeded])
  {
    [(CNContactContentUnitaryViewController *)self _setNeedsUpdateCachedLabelWidths];
  }

  [(CNContactContentUnitaryViewController *)self updateEditNavigationItemsAnimated:0];
  siriContextProvider = [(CNContactContentUnitaryViewController *)self siriContextProvider];
  [siriContextProvider setEnabled:1];

  shareLocationController = [(CNContactContentUnitaryViewController *)self shareLocationController];
  [shareLocationController startUpdatingFriends];

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
  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]|| ab_preferredContentSizeCategoryIsAccessibilityCategory)
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
  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]|| ab_preferredContentSizeCategoryIsAccessibilityCategory)
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
  view = [(CNContactContentUnitaryViewController *)self view];
  [view safeAreaInsets];
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
    isPadRegularHorizontalSize = [(CNContactContentUnitaryViewController *)self isPadRegularHorizontalSize];
    staticDisplayHeaderView = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    [staticDisplayHeaderView minHeight];
    v3 = v6;

    staticDisplayHeaderView2 = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    v8 = v3;
    if (([staticDisplayHeaderView2 shouldUseFixedHeight] & 1) == 0)
    {
      if (isPadRegularHorizontalSize)
      {
        v9 = 0.525;
      }

      else
      {
        v9 = 0.66;
      }

      view = [(CNContactContentUnitaryViewController *)self view];
      [view frame];
      v8 = v9 * v11;
    }

    if (v3 < v8)
    {
      v3 = v8;
    }

    if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
    {
      actionsWrapperView = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [actionsWrapperView frame];
      v3 = v3 + v13;
    }
  }

  return v3;
}

- (void)setupConstraints
{
  isEditing = [(CNContactContentUnitaryViewController *)self isEditing];
  shouldDisplayAvatarHeaderView = [(CNContactContentUnitaryViewController *)self shouldDisplayAvatarHeaderView];
  [(CNContactContentUnitaryViewController *)self setHasEditingConstraints:isEditing];
  [(CNContactContentUnitaryViewController *)self setHasAvatarConstraints:shouldDisplayAvatarHeaderView];
  v5 = MEMORY[0x1E696ACD8];
  activatedConstraints = [(CNContactContentUnitaryViewController *)self activatedConstraints];
  [v5 deactivateConstraints:activatedConstraints];

  array = [MEMORY[0x1E695DF70] array];
  if (!shouldDisplayAvatarHeaderView)
  {
    goto LABEL_37;
  }

  if ((isEditing & 1) == 0)
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
        view = [(CNContactContentUnitaryViewController *)self view];
        leadingAnchor = [view leadingAnchor];
        actionsWrapperView = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
        leadingAnchor2 = [actionsWrapperView leadingAnchor];
        v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        [array addObject:v16];

        view2 = [(CNContactContentUnitaryViewController *)self view];
        trailingAnchor = [view2 trailingAnchor];
        actionsWrapperView2 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
        trailingAnchor2 = [actionsWrapperView2 trailingAnchor];
        v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        [array addObject:v21];

        if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
        {
          actionsWrapperView3 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
          topAnchor = [actionsWrapperView3 topAnchor];
          contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
          bottomAnchor = [contactHeaderView bottomAnchor];
          v26 = [topAnchor constraintEqualToAnchor:bottomAnchor];
          [array addObject:v26];
        }
      }

      actionsWrapperView4 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [actionsWrapperView4 setLayoutMargins:{v8, v7, v11, v7}];

      view3 = [(CNContactContentUnitaryViewController *)self view];
      _cnui_contactStyle = [view3 _cnui_contactStyle];
      [_cnui_contactStyle sectionMaximumPlatterWidth];
      v31 = v30;
      v32 = *MEMORY[0x1E698B6F8];
      view4 = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
      [view4 setMinimumLayoutSize:{v31, v32}];

      actionsWrapperView5 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [actionsWrapperView5 setNeedsLayout];

      actionsWrapperView6 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [actionsWrapperView6 layoutIfNeeded];

      if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
      {
        floatingActionsWrapperView = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
        [floatingActionsWrapperView setLayoutMargins:{v8, v7, v11, v7}];

        view5 = [(CNContactContentUnitaryViewController *)self view];
        _cnui_contactStyle2 = [view5 _cnui_contactStyle];
        [_cnui_contactStyle2 sectionMaximumPlatterWidth];
        v40 = v39;
        view6 = [(CNContactInlineActionsViewController *)self->_floatingActionsViewController view];
        [view6 setMinimumLayoutSize:{v40, v32}];

        floatingActionsWrapperView2 = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
        [floatingActionsWrapperView2 setNeedsLayout];

        floatingActionsWrapperView3 = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
        [floatingActionsWrapperView3 layoutIfNeeded];
      }
    }

    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      v44 = MEMORY[0x1E696ACD8];
      displayFloatingCollapsedHeaderView = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      displayFloatingCollapsedHeaderView2 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [displayFloatingCollapsedHeaderView2 maxHeight];
      v48 = [v44 constraintWithItem:displayFloatingCollapsedHeaderView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v47];
      [(CNContactContentUnitaryViewController *)self setFloatingHeaderHeightConstraint:v48];

      floatingHeaderHeightConstraint = [(CNContactContentUnitaryViewController *)self floatingHeaderHeightConstraint];
      [array addObject:floatingHeaderHeightConstraint];

      displayFloatingCollapsedHeaderView3 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      leftAnchor = [displayFloatingCollapsedHeaderView3 leftAnchor];
      view7 = [(CNContactContentUnitaryViewController *)self view];
      leftAnchor2 = [view7 leftAnchor];
      v54 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      [array addObject:v54];

      displayFloatingCollapsedHeaderView4 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      rightAnchor = [displayFloatingCollapsedHeaderView4 rightAnchor];
      view8 = [(CNContactContentUnitaryViewController *)self view];
      rightAnchor2 = [view8 rightAnchor];
      v59 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      [array addObject:v59];

      displayFloatingCollapsedHeaderView5 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      topAnchor2 = [displayFloatingCollapsedHeaderView5 topAnchor];
      view9 = [(CNContactContentUnitaryViewController *)self view];
      topAnchor3 = [view9 topAnchor];
      v64 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
      [array addObject:v64];
    }
  }

  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]&& [(CNContactContentUnitaryViewController *)self isEditing]&& ![(CNContactContentUnitaryViewController *)self shouldDrawNavigationBar])
  {
    editingFloatingCollapsedHeaderView = [(CNContactContentUnitaryViewController *)self editingFloatingCollapsedHeaderView];
    leftAnchor3 = [editingFloatingCollapsedHeaderView leftAnchor];
    view10 = [(CNContactContentUnitaryViewController *)self view];
    leftAnchor4 = [view10 leftAnchor];
    v69 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    [array addObject:v69];

    editingFloatingCollapsedHeaderView2 = [(CNContactContentUnitaryViewController *)self editingFloatingCollapsedHeaderView];
    rightAnchor3 = [editingFloatingCollapsedHeaderView2 rightAnchor];
    view11 = [(CNContactContentUnitaryViewController *)self view];
    rightAnchor4 = [view11 rightAnchor];
    v74 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    [array addObject:v74];

    editingFloatingCollapsedHeaderView3 = [(CNContactContentUnitaryViewController *)self editingFloatingCollapsedHeaderView];
    topAnchor4 = [editingFloatingCollapsedHeaderView3 topAnchor];
    view12 = [(CNContactContentUnitaryViewController *)self view];
    topAnchor5 = [view12 topAnchor];
    v79 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    [array addObject:v79];

    editingFloatingCollapsedHeaderView4 = [(CNContactContentUnitaryViewController *)self editingFloatingCollapsedHeaderView];
    heightAnchor = [editingFloatingCollapsedHeaderView4 heightAnchor];
    [(CNContactContentUnitaryViewController *)self editingFloatingHeaderHeight];
    v82 = [heightAnchor constraintEqualToConstant:?];
    [(CNContactContentUnitaryViewController *)self setEditingFloatingHeaderHeightConstraint:v82];

    editingFloatingHeaderHeightConstraint = [(CNContactContentUnitaryViewController *)self editingFloatingHeaderHeightConstraint];
    [array addObject:editingFloatingHeaderHeightConstraint];
  }

  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader]&& ([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    contactHeaderView2 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    heightAnchor2 = [contactHeaderView2 heightAnchor];
    [(CNContactContentUnitaryViewController *)self staticDisplayHeaderHeight];
    v88 = [heightAnchor2 constraintEqualToConstant:?];
  }

  else
  {
    v84 = MEMORY[0x1E696ACD8];
    contactHeaderView2 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    heightAnchor2 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [heightAnchor2 maxHeight];
    v88 = [v84 constraintWithItem:contactHeaderView2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v87];
  }

  v89 = v88;
  [(CNContactContentUnitaryViewController *)self setHeaderHeightConstraint:v88];

  headerHeightConstraint = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
  [array addObject:headerHeightConstraint];

  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    contactHeaderView3 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    topAnchor6 = [contactHeaderView3 topAnchor];
    view13 = [(CNContactContentUnitaryViewController *)self view];
    topAnchor7 = [view13 topAnchor];
    v95 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    [array addObject:v95];
  }

  contactHeaderView4 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  leftAnchor5 = [contactHeaderView4 leftAnchor];
  view14 = [(CNContactContentUnitaryViewController *)self view];
  leftAnchor6 = [view14 leftAnchor];
  v100 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
  [array addObject:v100];

  contactHeaderView5 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  rightAnchor5 = [contactHeaderView5 rightAnchor];
  view15 = [(CNContactContentUnitaryViewController *)self view];
  rightAnchor6 = [view15 rightAnchor];
  v105 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  [array addObject:v105];

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  LODWORD(view15) = [featureFlags isFeatureEnabled:29];

  if (!view15)
  {
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    topAnchor8 = [contactView topAnchor];
    goto LABEL_29;
  }

  traitCollection = [(CNContactContentUnitaryViewController *)self traitCollection];
  _splitViewControllerContext = [traitCollection _splitViewControllerContext];

  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  topAnchor8 = [contactView topAnchor];
  if (!_splitViewControllerContext)
  {
LABEL_29:
    view16 = [(CNContactContentUnitaryViewController *)self view];
    topAnchor9 = [view16 topAnchor];
    v122 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
    [array addObject:v122];

    contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
    bottomAnchor2 = [contactView2 bottomAnchor];
    view17 = [(CNContactContentUnitaryViewController *)self view];
    bottomAnchor3 = [view17 bottomAnchor];
    v119 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    goto LABEL_30;
  }

  safeAreaLayoutGuide = [(CNContactContentUnitaryViewController *)self safeAreaLayoutGuide];
  topAnchor10 = [safeAreaLayoutGuide topAnchor];
  v114 = [topAnchor8 constraintEqualToAnchor:topAnchor10];
  [array addObject:v114];

  contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
  bottomAnchor2 = [contactView2 bottomAnchor];
  view17 = [(CNContactContentUnitaryViewController *)self view];
  bottomAnchor3 = [view17 bottomAnchor];
  v119 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-10.0];
LABEL_30:
  v123 = v119;
  [array addObject:v119];

  if ([(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard])
  {
    traitCollection2 = [(CNContactContentUnitaryViewController *)self traitCollection];
    _splitViewControllerContext2 = [traitCollection2 _splitViewControllerContext];

    displayContactCardViewController = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
    view18 = [displayContactCardViewController view];
    topAnchor11 = [view18 topAnchor];
    if (_splitViewControllerContext2)
    {
      safeAreaLayoutGuide2 = [(CNContactContentUnitaryViewController *)self safeAreaLayoutGuide];
      topAnchor12 = [safeAreaLayoutGuide2 topAnchor];
      v131 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
      [array addObject:v131];

      displayContactCardViewController2 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      view19 = [displayContactCardViewController2 view];
      bottomAnchor4 = [view19 bottomAnchor];
      view20 = [(CNContactContentUnitaryViewController *)self view];
      bottomAnchor5 = [view20 bottomAnchor];
      [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-10.0];
    }

    else
    {
      view21 = [(CNContactContentUnitaryViewController *)self view];
      topAnchor13 = [view21 topAnchor];
      v139 = [topAnchor11 constraintEqualToAnchor:topAnchor13];
      [array addObject:v139];

      displayContactCardViewController2 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      view19 = [displayContactCardViewController2 view];
      bottomAnchor4 = [view19 bottomAnchor];
      view20 = [(CNContactContentUnitaryViewController *)self view];
      bottomAnchor5 = [view20 bottomAnchor];
      [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    }
    v140 = ;
    [array addObject:v140];
  }

  headerDropShadowView = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
  superview = [headerDropShadowView superview];

  if (superview)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v145 = v144;

    headerDropShadowView2 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    heightAnchor3 = [headerDropShadowView2 heightAnchor];
    v145 = [heightAnchor3 constraintEqualToConstant:1.0 / v145];
    [array addObject:v145];

    headerDropShadowView3 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    bottomAnchor6 = [headerDropShadowView3 bottomAnchor];
    headerDropShadowView4 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    superview2 = [headerDropShadowView4 superview];
    bottomAnchor7 = [superview2 bottomAnchor];
    v154 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    [array addObject:v154];

    headerDropShadowView5 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    leftAnchor7 = [headerDropShadowView5 leftAnchor];
    headerDropShadowView6 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    superview3 = [headerDropShadowView6 superview];
    leftAnchor8 = [superview3 leftAnchor];
    v160 = [leftAnchor7 constraintEqualToAnchor:leftAnchor8];
    [array addObject:v160];

    headerDropShadowView7 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    rightAnchor7 = [headerDropShadowView7 rightAnchor];
    headerDropShadowView8 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
    superview4 = [headerDropShadowView8 superview];
    rightAnchor8 = [superview4 rightAnchor];
    v166 = [rightAnchor7 constraintEqualToAnchor:rightAnchor8];
    [array addObject:v166];
  }

LABEL_37:
  currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags2 = [currentEnvironment2 featureFlags];
  v169 = [featureFlags2 isFeatureEnabled:29];

  if (v169)
  {
    traitCollection3 = [(CNContactContentUnitaryViewController *)self traitCollection];
    _splitViewControllerContext3 = [traitCollection3 _splitViewControllerContext];

    contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
    leadingAnchor3 = [contactView3 leadingAnchor];
    view22 = [(CNContactContentUnitaryViewController *)self view];
    leadingAnchor4 = [view22 leadingAnchor];
    if (_splitViewControllerContext3)
    {
      v176 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:5.0];
      [array addObject:v176];

      contactView4 = [(CNContactContentUnitaryViewController *)self contactView];
      trailingAnchor3 = [contactView4 trailingAnchor];
      view23 = [(CNContactContentUnitaryViewController *)self view];
      trailingAnchor4 = [view23 trailingAnchor];
      v181 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
      goto LABEL_42;
    }
  }

  else
  {
    contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
    leadingAnchor3 = [contactView3 leadingAnchor];
    view22 = [(CNContactContentUnitaryViewController *)self view];
    leadingAnchor4 = [view22 leadingAnchor];
  }

  v182 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v182];

  contactView4 = [(CNContactContentUnitaryViewController *)self contactView];
  trailingAnchor3 = [contactView4 trailingAnchor];
  view23 = [(CNContactContentUnitaryViewController *)self view];
  trailingAnchor4 = [view23 trailingAnchor];
  v181 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
LABEL_42:
  v183 = v181;
  [array addObject:v181];

  if ([(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard])
  {
    traitCollection4 = [(CNContactContentUnitaryViewController *)self traitCollection];
    _splitViewControllerContext4 = [traitCollection4 _splitViewControllerContext];

    displayContactCardViewController3 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
    view24 = [displayContactCardViewController3 view];
    leadingAnchor5 = [view24 leadingAnchor];
    view25 = [(CNContactContentUnitaryViewController *)self view];
    leadingAnchor6 = [view25 leadingAnchor];
    if (_splitViewControllerContext4)
    {
      v191 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:5.0];
      [array addObject:v191];

      displayContactCardViewController4 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      view26 = [displayContactCardViewController4 view];
      trailingAnchor5 = [view26 trailingAnchor];
      view27 = [(CNContactContentUnitaryViewController *)self view];
      trailingAnchor6 = [view27 trailingAnchor];
      [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-10.0];
    }

    else
    {
      v197 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      [array addObject:v197];

      displayContactCardViewController4 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      view26 = [displayContactCardViewController4 view];
      trailingAnchor5 = [view26 trailingAnchor];
      view27 = [(CNContactContentUnitaryViewController *)self view];
      trailingAnchor6 = [view27 trailingAnchor];
      [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    }
    v198 = ;
    [array addObject:v198];
  }

  [(CNContactContentUnitaryViewController *)self setActivatedConstraints:array];
  [MEMORY[0x1E696ACD8] activateConstraints:array];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    contactHeaderView6 = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [contactHeaderView6 updateConstraints];

    if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
    {
      displayFloatingCollapsedHeaderView6 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [displayFloatingCollapsedHeaderView6 updateConstraints];
    }
  }

  currentEnvironment3 = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags3 = [currentEnvironment3 featureFlags];
  v203 = [featureFlags3 isFeatureEnabled:29];

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

    contactView5 = [(CNContactContentUnitaryViewController *)self contactView];
    layer = [contactView5 layer];
    [layer setCornerRadius:v204];
  }
}

- (void)setupViewHierarchyAndConstraints
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ([(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    v3 = MEMORY[0x1E696ACD8];
    view = [(CNContactContentUnitaryViewController *)self view];
    widthAnchor = [view widthAnchor];
    v6 = [widthAnchor constraintEqualToConstant:0.0];
    v11[0] = v6;
    view2 = [(CNContactContentUnitaryViewController *)self view];
    heightAnchor = [view2 heightAnchor];
    v9 = [heightAnchor constraintEqualToConstant:0.0];
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
  isEditing = [(CNContactContentUnitaryViewController *)self isEditing];
  shouldDisplayAvatarHeaderView = [(CNContactContentUnitaryViewController *)self shouldDisplayAvatarHeaderView];
  activatedConstraints = [(CNContactContentUnitaryViewController *)self activatedConstraints];
  if ([activatedConstraints count] && isEditing == -[CNContactContentUnitaryViewController hasEditingConstraints](self, "hasEditingConstraints"))
  {
    hasAvatarConstraints = [(CNContactContentUnitaryViewController *)self hasAvatarConstraints];

    if (shouldDisplayAvatarHeaderView == hasAvatarConstraints)
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
  contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
  v3 = contactHeaderView != 0;

  return v3;
}

- (id)currentNavigationController
{
  navigationItemController = [(CNContactContentUnitaryViewController *)self navigationItemController];
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

- (id)platterBackBarButtonItem
{
  traitCollection = [(CNContactContentUnitaryViewController *)self traitCollection];
  v4 = [traitCollection layoutDirection] == 1;

  v5 = [[CNPlatterBackBarButtonItem alloc] initWithTarget:self action:sel_popToPrevious_ isRTL:v4];

  return v5;
}

- (void)setUpBackGestureIfNeeded
{
  if ([(CNContactContentUnitaryViewController *)self allowsSwipeToPop])
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    if ([featureFlags isFeatureEnabled:11])
    {
    }

    else
    {
      displayNavigationButtonsShouldUsePlatterStyle = [(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle];

      if (!displayNavigationButtonsShouldUsePlatterStyle)
      {
        return;
      }
    }

    currentNavigationController = [(CNContactContentUnitaryViewController *)self currentNavigationController];
    interactivePopGestureRecognizer = [currentNavigationController interactivePopGestureRecognizer];
    delegate = [interactivePopGestureRecognizer delegate];
    v12 = delegate;
    if (delegate == self)
    {
    }

    else
    {
      currentNavigationController2 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
      interactivePopGestureRecognizer2 = [currentNavigationController2 interactivePopGestureRecognizer];
      delegate2 = [interactivePopGestureRecognizer2 delegate];

      if (!delegate2)
      {
LABEL_11:
        currentNavigationController3 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
        interactivePopGestureRecognizer3 = [currentNavigationController3 interactivePopGestureRecognizer];
        [interactivePopGestureRecognizer3 setDelegate:self];
        goto LABEL_12;
      }

      currentNavigationController4 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
      interactivePopGestureRecognizer4 = [currentNavigationController4 interactivePopGestureRecognizer];
      delegate3 = [interactivePopGestureRecognizer4 delegate];
      previousBackGestureDelegate = self->_previousBackGestureDelegate;
      self->_previousBackGestureDelegate = delegate3;

      currentNavigationController = [(CNContactContentUnitaryViewController *)self currentNavigationController];
      interactivePopGestureRecognizer = [currentNavigationController interactivePopGestureRecognizer];
      self->_previousInteractivePopGestureEnabled = [interactivePopGestureRecognizer isEnabled];
    }

    goto LABEL_11;
  }

  currentNavigationController5 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
  interactivePopGestureRecognizer5 = [currentNavigationController5 interactivePopGestureRecognizer];
  self->_previousInteractivePopGestureEnabled = [interactivePopGestureRecognizer5 isEnabled];

  currentNavigationController3 = [(CNContactContentUnitaryViewController *)self currentNavigationController];
  interactivePopGestureRecognizer3 = [currentNavigationController3 interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer3 setEnabled:0];
LABEL_12:
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v9 viewDidLoad];
  v3 = *MEMORY[0x1E6996568];
  initialPrompt = [(CNContactContentUnitaryViewController *)self initialPrompt];
  LOBYTE(v3) = (*(v3 + 16))(v3, initialPrompt);

  if ((v3 & 1) == 0)
  {
    initialPrompt2 = [(CNContactContentUnitaryViewController *)self initialPrompt];
    navigationItem = [(CNContactContentUnitaryViewController *)self navigationItem];
    [navigationItem setPrompt:initialPrompt2];
  }

  if ([(CNContactContentUnitaryViewController *)self shouldDrawNavigationBar])
  {
    navigationItem2 = [(CNContactContentUnitaryViewController *)self navigationItem];
    [navigationItem2 _setBackgroundHidden:0];
  }

  [(CNContactContentUnitaryViewController *)self reloadDataIfNeeded];
  view = [(CNContactContentUnitaryViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)setupViewHierarchyIncludingAvatarHeader:(BOOL)header editing:(BOOL)editing
{
  editingCopy = editing;
  headerCopy = header;
  v65[1] = *MEMORY[0x1E69E9840];
  if (![(CNContactContentUnitaryViewController *)self isViewLoaded])
  {
    return;
  }

  view = [(CNContactContentUnitaryViewController *)self view];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    v11 = contactHeaderView;
    if (headerCopy)
    {
      v65[0] = contactHeaderView;
      v12 = v65;
      v13 = array2;
    }

    else
    {
      v64 = contactHeaderView;
      v12 = &v64;
      v13 = array;
    }

    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v13 addObjectsFromArray:v14];
  }

  shouldUseStaticHeader = [(CNContactContentUnitaryViewController *)self shouldUseStaticHeader];
  if (!editingCopy)
  {
    if (shouldUseStaticHeader)
    {
      displayFloatingCollapsedHeaderView = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [array2 addObject:displayFloatingCollapsedHeaderView];

      if ([(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard])
      {
        displayFloatingCollapsedHeaderView2 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
        [displayFloatingCollapsedHeaderView2 setHidden:1];
      }

      if (self->_editingFloatingCollapsedHeaderView)
      {
        editingFloatingCollapsedHeaderView = [(CNContactContentUnitaryViewController *)self editingFloatingCollapsedHeaderView];
LABEL_32:
        v37 = editingFloatingCollapsedHeaderView;
        [array addObject:editingFloatingCollapsedHeaderView];
      }
    }

    else
    {
      if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
      {
        actionsWrapperView = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
        [array2 addObject:actionsWrapperView];

        view2 = [(CNContactContentUnitaryViewController *)self view];
        _cnui_contactStyle = [view2 _cnui_contactStyle];
        usesOpaqueBackground = [_cnui_contactStyle usesOpaqueBackground];

        if (usesOpaqueBackground)
        {
          actionsWrapperView2 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
          headerDropShadowView = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
          [actionsWrapperView2 addSubview:headerDropShadowView];
        }
      }

      if (![(CNContactContentUnitaryViewController *)self allowsActionsModel])
      {
        actionsViewController = [(CNContactContentUnitaryViewController *)self actionsViewController];
        view3 = [actionsViewController view];
        [view3 removeFromSuperview];
      }

      if (self->_editingHeaderView)
      {
        editingFloatingCollapsedHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
        goto LABEL_32;
      }
    }

    displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
    [array2 addObject:displayContactView];

    if ([(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard])
    {
      displayContactCardViewController = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      view4 = [displayContactCardViewController view];
      [array2 addObject:view4];

      displayContactView2 = [(CNContactContentUnitaryViewController *)self displayContactView];
      [displayContactView2 setHidden:1];
    }

    v26 = array;
    if (!self->_editingContactView)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (shouldUseStaticHeader)
  {
    if (self->_displayFloatingCollapsedHeaderView)
    {
      displayFloatingCollapsedHeaderView3 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [array addObject:displayFloatingCollapsedHeaderView3];
    }

    if ([(CNContactContentUnitaryViewController *)self shouldDrawNavigationBar])
    {
      goto LABEL_23;
    }

    editingFloatingCollapsedHeaderView2 = [(CNContactContentUnitaryViewController *)self editingFloatingCollapsedHeaderView];
    v18 = array2;
  }

  else
  {
    if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
    {
      actionsWrapperView3 = [(CNContactContentUnitaryViewController *)self actionsWrapperView];
      [array addObject:actionsWrapperView3];
    }

    if (!self->_displayHeaderView)
    {
      goto LABEL_23;
    }

    editingFloatingCollapsedHeaderView2 = [(CNContactContentUnitaryViewController *)self displayHeaderView];
    v18 = array;
  }

  [v18 addObject:editingFloatingCollapsedHeaderView2];

LABEL_23:
  editingHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
  headerDropShadowView2 = [(CNContactContentUnitaryViewController *)self headerDropShadowView];
  [editingHeaderView addSubview:headerDropShadowView2];

  displayContactView3 = [(CNContactContentUnitaryViewController *)self displayContactView];
  [array addObject:displayContactView3];

  v26 = array2;
  if ([(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard])
  {
    displayContactCardViewController2 = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
    view5 = [displayContactCardViewController2 view];
    [array addObject:view5];

    v26 = array2;
  }

LABEL_36:
  editingContactView = [(CNContactContentUnitaryViewController *)self editingContactView];
  [v26 addObject:editingContactView];

LABEL_37:
  if ([(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    view6 = [(CNContactContentUnitaryViewController *)self view];
    subviews = [view6 subviews];

    v45 = [subviews countByEnumeratingWithState:&v59 objects:v63 count:16];
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
            objc_enumerationMutation(subviews);
          }

          [*(*(&v59 + 1) + 8 * i) removeFromSuperview];
        }

        v46 = [subviews countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v46);
    }
  }

  else
  {
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    panGestureRecognizer = [contactView panGestureRecognizer];
    view7 = [panGestureRecognizer view];
    contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
    panGestureRecognizer2 = [contactView2 panGestureRecognizer];
    [view7 removeGestureRecognizer:panGestureRecognizer2];

    view8 = [(CNContactContentUnitaryViewController *)self view];
    contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
    panGestureRecognizer3 = [contactView3 panGestureRecognizer];
    [view8 addGestureRecognizer:panGestureRecognizer3];

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __89__CNContactContentUnitaryViewController_setupViewHierarchyIncludingAvatarHeader_editing___block_invoke;
    v57[3] = &unk_1E74E6C50;
    v58 = view;
    [array2 enumerateObjectsUsingBlock:v57];
    [array enumerateObjectsUsingBlock:&__block_literal_global_545];
    subviews = v58;
  }
}

- (void)loadContactViewControllerViews
{
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
  v5 = objc_opt_class();
  v6 = [v5 cellIdentifierForClass:objc_opt_class()];
  v7 = [contactView dequeueReusableCellWithIdentifier:v6];
  [(CNContactContentUnitaryViewController *)self setNoteCell:v7];

  view = [(CNContactContentUnitaryViewController *)self view];
  contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
  [view addSubview:contactView3];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(CNContactContentUnitaryViewController *)self setView:v3];

  if ([(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v4 = clearColor;
    cGColor = [clearColor CGColor];
    view = [(CNContactContentUnitaryViewController *)self view];
    layer = [view layer];
    [layer setBackgroundColor:cGColor];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self loadContactViewControllerViews];

    [(CNContactContentUnitaryViewController *)self loadDisplayModeContactCardVewController];
  }
}

- (void)performAuthorizedSetEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7 = CNUILogContactCard();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (editingCopy)
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
    contact = [(CNContactContentUnitaryViewController *)self contact];
    [(CNContactContentUnitaryViewController *)self setupContainerContextIfNeededForContact:contact];
  }

  if (editingCopy)
  {
    if ([(CNContactContentUnitaryViewController *)self didSetNewContact])
    {
      [(CNContactContentUnitaryViewController *)self setDidSetNewContact:0];
      editingContactView = self->_editingContactView;
      self->_editingContactView = 0;
    }

    [(CNContactContentUnitaryViewController *)self setDidEditPronouns:0];
    displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
    editingContactView = [(CNContactContentUnitaryViewController *)self editingContactView];
  }

  else
  {
    displayContactView = [(CNContactContentUnitaryViewController *)self editingContactView];
    editingContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
  }

  v14 = editingContactView;
  [(CNContactContentUnitaryViewController *)self updateInsetsIfNeededForTableView:editingContactView isEditing:editingCopy];
  [displayContactView _stopScrollingAndZoomingAnimations];
  v15 = [(CNContactContentUnitaryViewController *)self _currentTopVisibleGroupInContactView:displayContactView];
  environment = [(CNContactContentUnitaryViewController *)self environment];
  [v14 setAttributesFromContactView:displayContactView runningInContactsAppOniPad:{objc_msgSend(environment, "runningInContactsAppOniPad")}];

  v32.receiver = self;
  v32.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v32 setEditing:editingCopy animated:animatedCopy];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  -[CNContactContentUnitaryViewController updateEditNavigationItemsAnimated:](self, "updateEditNavigationItemsAnimated:", animatedCopy & ~[featureFlags isFeatureEnabled:29]);

  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
  v21 = objc_opt_class();
  currentEnvironment2 = [v21 cellIdentifierForClass:objc_opt_class()];
  featureFlags2 = [contactView dequeueReusableCellWithIdentifier:currentEnvironment2];
  [(CNContactContentUnitaryViewController *)self setNoteCell:featureFlags2];

  [v14 reloadData];
  [(CNContactContentUnitaryViewController *)self _scrollContactView:v14 toVisibleGroup:v15 animated:0];
  v24 = MEMORY[0x1E69DD250];
  view = [(CNContactContentUnitaryViewController *)self view];
  if (animatedCopy)
  {
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags2 = [currentEnvironment2 featureFlags];
    v26 = [featureFlags2 isFeatureEnabled:29];
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
  [v24 transitionWithView:view duration:5242880 options:v31 animations:0 completion:v27];
  if (animatedCopy)
  {
  }

  contactDelegate = [(CNContactContentUnitaryViewController *)self contactDelegate];
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    contactDelegate2 = [(CNContactContentUnitaryViewController *)self contactDelegate];
    [contactDelegate2 contactViewController:self didChangeToEditMode:editingCopy];
  }
}

- (void)editAuthorizationController:(id)controller authorizationDidFinishWithResult:(int64_t)result
{
  [(CNContactContentUnitaryViewController *)self setEditAuthorizationController:0];
  [(CNContactContentUnitaryViewController *)self setEditAuthorizationResult:result];
  if (result >= 2)
  {
    if (result == 2)
    {
      [(CNContactContentUnitaryViewController *)self performAuthorizedSetEditing:1 animated:1];

      [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
    }
  }

  else
  {
    delegate = [(CNContactContentUnitaryViewController *)self delegate];
    [delegate didCompleteWithContact:0];
  }
}

- (void)showEditAuthorizationPane:(id)pane animated:(BOOL)animated
{
  animatedCopy = animated;
  paneCopy = pane;
  v7 = objc_alloc_init(CNUIEditAuthorizationController);
  [(CNContactContentUnitaryViewController *)self setEditAuthorizationController:v7];

  editAuthorizationController = [(CNContactContentUnitaryViewController *)self editAuthorizationController];
  [editAuthorizationController setDelegate:self];

  editAuthorizationController2 = [(CNContactContentUnitaryViewController *)self editAuthorizationController];
  [editAuthorizationController2 setSender:paneCopy];

  editAuthorizationController3 = [(CNContactContentUnitaryViewController *)self editAuthorizationController];
  [editAuthorizationController3 setAnimated:animatedCopy];

  editAuthorizationController4 = [(CNContactContentUnitaryViewController *)self editAuthorizationController];
  [editAuthorizationController4 setGuardedViewController:self];

  editAuthorizationController5 = [(CNContactContentUnitaryViewController *)self editAuthorizationController];
  [editAuthorizationController5 presentAuthorizationUI];
}

- (BOOL)editRequiresAuthorization
{
  v3 = objc_alloc(MEMORY[0x1E6996B08]);
  contact = [(CNContactContentUnitaryViewController *)self contact];
  parentContainer = [(CNContactContentViewController *)self parentContainer];
  ignoresParentalRestrictions = [(CNContactContentViewController *)self ignoresParentalRestrictions];
  contactViewCache = [(CNContactContentUnitaryViewController *)self contactViewCache];
  v8 = [v3 initWithContact:contact parentContainer:parentContainer ignoresParentalRestrictions:ignoresParentalRestrictions linkedParentContainerProvider:contactViewCache];

  LOBYTE(contactViewCache) = [v8 shouldPromptForPasscodeAuthorization];
  return contactViewCache;
}

- (BOOL)editingChangeRequiresAuthorization
{
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0)
  {
    return 0;
  }

  return [(CNContactContentUnitaryViewController *)self editRequiresAuthorization];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(CNContactContentUnitaryViewController *)self isEditing]!= editing)
  {
    if ([(CNContactContentUnitaryViewController *)self editingChangeRequiresAuthorization])
    {
      navigationItem = [(CNContactContentUnitaryViewController *)self navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      [(CNContactContentUnitaryViewController *)self showEditAuthorizationPane:rightBarButtonItem animated:animatedCopy];
    }

    else
    {

      [(CNContactContentUnitaryViewController *)self performAuthorizedSetEditing:editingCopy animated:animatedCopy];
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

- (void)finishSNaPEditing:(id)editing
{
  editingCopy = editing;
  [(CNContactContentUnitaryViewController *)self cancelAsyncLookups];
  if (![(CNContactContentUnitaryViewController *)self _modelHasChanges])
  {
    [(CNContactContentUnitaryViewController *)self editCancel:editingCopy];
    goto LABEL_14;
  }

  presentingViewController = [(CNContactContentUnitaryViewController *)self presentingViewController];
  if (!presentingViewController)
  {
    goto LABEL_7;
  }

  v6 = presentingViewController;
  parentViewController = [(CNContactContentUnitaryViewController *)self parentViewController];
  objc_getClass("ABNewPersonViewController");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mode = [(CNContactContentUnitaryViewController *)self mode];

    if (mode == 3)
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

  saveChanges = [(CNContactContentUnitaryViewController *)self saveChanges];
  [(CNContactContentViewController *)self setAlwaysEditing:0];
  if (saveChanges)
  {
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:mutableContact];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:0];
  }

  [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:0];
  editingContactView = [(CNContactContentUnitaryViewController *)self editingContactView];
  [editingContactView reloadData];

LABEL_14:
}

- (void)finishEditing:(id)editing
{
  editingCopy = editing;
  isEditing = [(CNContactContentUnitaryViewController *)self isEditing];
  [(CNContactContentUnitaryViewController *)self cancelAsyncLookups];
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView endEditing:1];

  splitViewController = [(CNContactContentUnitaryViewController *)self splitViewController];
  if (splitViewController)
  {
    v8 = splitViewController;
    splitViewController2 = [(CNContactContentUnitaryViewController *)self splitViewController];
    firstResponder = [splitViewController2 firstResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      splitViewController3 = [(CNContactContentUnitaryViewController *)self splitViewController];
      view = [splitViewController3 view];
      [view endEditing:1];
    }
  }

  if (isEditing && ![(CNContactContentUnitaryViewController *)self _modelHasChanges])
  {
    [(CNContactContentUnitaryViewController *)self editCancel:editingCopy];
    goto LABEL_22;
  }

  presentingViewController = [(CNContactContentUnitaryViewController *)self presentingViewController];
  if (!presentingViewController)
  {
    goto LABEL_11;
  }

  v15 = presentingViewController;
  parentViewController = [(CNContactContentUnitaryViewController *)self parentViewController];
  objc_getClass("ABNewPersonViewController");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mode = [(CNContactContentUnitaryViewController *)self mode];

    if (mode == 3)
    {
      goto LABEL_12;
    }

LABEL_11:
    [(CNContactContentUnitaryViewController *)self setEditing:isEditing ^ 1u animated:1];
    goto LABEL_12;
  }

LABEL_12:
  if (!isEditing)
  {
    [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:0];
    editingContactView = [(CNContactContentUnitaryViewController *)self editingContactView];
    [editingContactView reloadData];

    goto LABEL_25;
  }

  cardEditingGeminiGroup = [(CNContactContentUnitaryViewController *)self cardEditingGeminiGroup];
  modified = [cardEditingGeminiGroup modified];

  if (modified)
  {
    [(CNContactContentUnitaryViewController *)self requestFavoritesUpdateWithGemini];
  }

  v20 = CNUILogContactCard();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_199A75000, v20, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] Done editing, will save changes", v25, 2u);
  }

  saveChanges = [(CNContactContentUnitaryViewController *)self saveChanges];
  [(CNContactContentViewController *)self setAlwaysEditing:0];
  if (saveChanges)
  {
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:mutableContact];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:0];
  }

  [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:0];
  editingContactView2 = [(CNContactContentUnitaryViewController *)self editingContactView];
  [editingContactView2 reloadData];

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

- (void)toggleEditing:(id)editing
{
  editingCopy = editing;
  if (![(CNContactContentUnitaryViewController *)self isEditing])
  {
    goto LABEL_7;
  }

  cardStaticIdentityGroup = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
  didChange = [cardStaticIdentityGroup didChange];

  if (didChange)
  {
    cardStaticIdentityGroup2 = [(CNContactContentUnitaryViewController *)self cardStaticIdentityGroup];
    saveChangesToKTStore = [cardStaticIdentityGroup2 saveChangesToKTStore];

    if (saveChangesToKTStore)
    {
      v8 = objc_alloc(MEMORY[0x1E6996BC8]);
      contact = [(CNContactContentUnitaryViewController *)self contact];
      v10 = [v8 initWithContact:contact];
      [(CNContactContentUnitaryViewController *)self setCachedStaticIdentity:v10];

      [(CNContactContentUnitaryViewController *)self setCachedVerifiedHandles:0];
LABEL_7:
      [(CNContactContentUnitaryViewController *)self finishEditing:editingCopy];
      goto LABEL_8;
    }

    [(CNContactContentUnitaryViewController *)self alertStaticIdentitySaveFailed:editingCopy];
  }

  else
  {
    if (![(CNContactContentUnitaryViewController *)self hadAtLeastOneVerifiedHandle]|| [(CNContactContentUnitaryViewController *)self _hasAtLeastOneVerifiedHandle])
    {
      goto LABEL_7;
    }

    [(CNContactContentUnitaryViewController *)self alertDetailsNotVerified:editingCopy];
  }

LABEL_8:
}

- (BOOL)isAcceptedIntroductionsDataSource
{
  parentContainer = [(CNContactContentViewController *)self parentContainer];
  v3 = [parentContainer type] == 1004;

  return v3;
}

- (BOOL)isContactProviderDataSource
{
  parentContainer = [(CNContactContentViewController *)self parentContainer];
  v3 = [parentContainer type] == 1003;

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

- (void)updateContact:(id)contact
{
  if ([(CNContactContentUnitaryViewController *)self saveChanges])
  {
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    [(CNContactContentUnitaryViewController *)self _didCompleteWithContact:mutableContact];
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
  contact = [(CNContactContentUnitaryViewController *)self contact];
  parentContainer = [(CNContactContentViewController *)self parentContainer];
  ignoresParentalRestrictions = [(CNContactContentViewController *)self ignoresParentalRestrictions];
  contactViewCache = [(CNContactContentUnitaryViewController *)self contactViewCache];
  v8 = [v3 initWithContact:contact parentContainer:parentContainer ignoresParentalRestrictions:ignoresParentalRestrictions linkedParentContainerProvider:contactViewCache];

  return v8;
}

- (BOOL)saveWasAuthorized
{
  selfCopy = self;
  authorizationCheck = [(CNContactContentUnitaryViewController *)self authorizationCheck];
  LOBYTE(selfCopy) = [authorizationCheck shouldBypassRestrictionsGivenAuthorizationResult:{-[CNContactContentUnitaryViewController editAuthorizationResult](selfCopy, "editAuthorizationResult")}];

  return selfCopy;
}

- (id)saveDescriptionForCurrentState
{
  v3 = [CNUIContactSaveConfiguration alloc];
  contact = [(CNContactContentUnitaryViewController *)self contact];
  mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
  originalContacts = [(CNContactContentUnitaryViewController *)self originalContacts];
  shadowCopyOfReadonlyContact = [(CNContactContentUnitaryViewController *)self shadowCopyOfReadonlyContact];
  editingLinkedContacts = [(CNContactContentUnitaryViewController *)self editingLinkedContacts];
  contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
  parentGroup = [(CNContactContentViewController *)self parentGroup];
  parentContainer = [(CNContactContentViewController *)self parentContainer];
  containerContext = [(CNContactContentUnitaryViewController *)self containerContext];
  groupContext = [(CNContactContentUnitaryViewController *)self groupContext];
  ignoresParentalRestrictions = [(CNContactContentViewController *)self ignoresParentalRestrictions];
  BYTE1(v13) = [(CNContactContentUnitaryViewController *)self saveWasAuthorized];
  LOBYTE(v13) = ignoresParentalRestrictions;
  v14 = [(CNUIContactSaveConfiguration *)v3 initWithContact:contact mutableContact:mutableContact originalContacts:originalContacts shadowCopyOfReadonlyContact:shadowCopyOfReadonlyContact editingLinkedContacts:editingLinkedContacts contactStore:contactStore parentGroup:parentGroup parentContainer:parentContainer containerContext:containerContext groupContext:groupContext ignoresParentalRestrictions:v13 saveWasAuthorized:?];

  return v14;
}

- (BOOL)performSave
{
  saveContactExecutor = [(CNContactContentUnitaryViewController *)self saveContactExecutor];
  saveDescriptionForCurrentState = [(CNContactContentUnitaryViewController *)self saveDescriptionForCurrentState];
  v5 = [saveContactExecutor executeSaveWithConfiguration:saveDescriptionForCurrentState saveDelegate:self];

  array = [MEMORY[0x1E695DF70] array];
  [(CNContactContentUnitaryViewController *)self setIssuedSaveRequestIdentifiers:array];

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

  issuedSaveRequestIdentifiers = [(CNContactContentUnitaryViewController *)self issuedSaveRequestIdentifiers];
  identifiersOfIssuedSaveRequests = [v5 identifiersOfIssuedSaveRequests];
  [issuedSaveRequestIdentifiers addObjectsFromArray:identifiersOfIssuedSaveRequests];

  [(CNContactContentUnitaryViewController *)self setEditingLinkedContacts:0];
  [(CNContactContentUnitaryViewController *)self setGroupEditingContext:0];
  contact = [v5 contact];
  [(CNContactContentUnitaryViewController *)self setContact:contact];

  success = [v5 success];
  return success;
}

void __52__CNContactContentUnitaryViewController_performSave__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contact];
  [CNContactContentUnitaryViewController _telemetryForContact:v1];
}

- (void)saveModelChangesToContact
{
  editingGroups = [(CNContactContentUnitaryViewController *)self editingGroups];
  [(CNContactContentUnitaryViewController *)self _saveChangesForGroups:editingGroups];

  deletedEditingGroups = [(CNContactContentUnitaryViewController *)self deletedEditingGroups];
  [(CNContactContentUnitaryViewController *)self _saveChangesForGroups:deletedEditingGroups];

  editingHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
  [editingHeaderView saveContactPhoto];

  contact = [(CNContactContentUnitaryViewController *)self contact];
  givenName = [contact givenName];
  mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
  givenName2 = [mutableContact givenName];
  if ([givenName isEqualToString:givenName2])
  {
    contact2 = [(CNContactContentUnitaryViewController *)self contact];
    familyName = [contact2 familyName];
    mutableContact2 = [(CNContactContentUnitaryViewController *)self mutableContact];
    familyName2 = [mutableContact2 familyName];
    v14 = [familyName isEqualToString:familyName2];

    if (v14)
    {
      return;
    }
  }

  else
  {
  }

  mutableContact3 = [(CNContactContentUnitaryViewController *)self mutableContact];
  [mutableContact3 setPhonemeData:0];
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
    editingNicknameContact = [(CNContactContentUnitaryViewController *)self editingNicknameContact];
    wallpaper = [editingNicknameContact wallpaper];
    if (wallpaper)
    {
      v6 = wallpaper;
      editingNicknameContact2 = [(CNContactContentUnitaryViewController *)self editingNicknameContact];
      watchWallpaperImageData = [editingNicknameContact2 watchWallpaperImageData];

      if (!watchWallpaperImageData)
      {
        editingNicknameContact3 = [(CNContactContentUnitaryViewController *)self editingNicknameContact];
        wallpaper2 = [editingNicknameContact3 wallpaper];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __67__CNContactContentUnitaryViewController_performSaveToSharedProfile__block_invoke_507;
        v11[3] = &unk_1E74E6C00;
        v11[4] = self;
        v12 = v3;
        [wallpaper2 snapshotImageDataForWatchWithCompletion:v11];

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
  showingMeContact = [(CNContactContentUnitaryViewController *)self showingMeContact];
  if (showingMeContact)
  {
    unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    v6 = [unifiedMeContactMonitor isMeContact:contact];

    LOBYTE(showingMeContact) = v6;
  }

  return showingMeContact;
}

- (BOOL)shouldUpdateSharedProfile
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:27])
  {
    shouldUseSharedProfile = [(CNContactContentUnitaryViewController *)self shouldUseSharedProfile];
  }

  else
  {
    shouldUseSharedProfile = 0;
  }

  return shouldUseSharedProfile;
}

- (BOOL)saveChanges
{
  if (self->_saving)
  {
    LOBYTE(performSave) = 0;
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

    performSave = [(CNContactContentUnitaryViewController *)self performSave];
    self->_saving = 0;
    if (performSave)
    {
      if ([(CNContactContentUnitaryViewController *)self shouldUpdateSharedProfile])
      {
        [(CNContactContentUnitaryViewController *)self performSaveToSharedProfile];
      }

      LOBYTE(performSave) = 1;
    }
  }

  return performSave;
}

- (void)clearMapsDataIfEdited
{
  if ([(CNContactContentUnitaryViewController *)self _modelHasChanges])
  {
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    [mutableContact setMapsData:0];
  }
}

- (void)presentConfirmCancelAlertController
{
  delegate = [(CNContactContentUnitaryViewController *)self delegate];
  [delegate presentCancelConfirmationAlert];
}

- (void)popToPrevious:(id)previous
{
  currentNavigationController = [(CNContactContentUnitaryViewController *)self currentNavigationController];
  v3 = [currentNavigationController popViewControllerAnimated:1];
}

- (void)editCancel:(id)cancel
{
  if ([(CNContactContentUnitaryViewController *)self hasPendingChanges])
  {
    if ([(CNContactContentUnitaryViewController *)self isOutOfProcess])
    {
      contactView = [(CNContactContentUnitaryViewController *)self contactView];
      [contactView endEditing:1];
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
  faceTimeIDSLookupToken = [(CNContactContentUnitaryViewController *)self faceTimeIDSLookupToken];
  [faceTimeIDSLookupToken cancel];

  [(CNContactContentUnitaryViewController *)self setFaceTimeIDSLookupToken:0];
  iMessageIDSLookupToken = [(CNContactContentUnitaryViewController *)self iMessageIDSLookupToken];
  [iMessageIDSLookupToken cancel];

  [(CNContactContentUnitaryViewController *)self setIMessageIDSLookupToken:0];
  medicalIDLookupToken = [(CNContactContentUnitaryViewController *)self medicalIDLookupToken];
  [medicalIDLookupToken cancel];

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

  navigationItemController = [(CNContactContentUnitaryViewController *)self navigationItemController];
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    hasPendingChanges = [(CNContactContentUnitaryViewController *)self hasPendingChanges];
    doneButtonItem = [(CNContactContentUnitaryViewController *)self doneButtonItem];
    [doneButtonItem setEnabled:hasPendingChanges];

    if ([(CNContactContentUnitaryViewController *)self mode]!= 4)
    {
LABEL_13:
      v12 = 1;
      goto LABEL_14;
    }

    editButtonItem = CNContactsUIBundle();
    v6 = [editButtonItem localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
    doneButtonItem2 = [(CNContactContentUnitaryViewController *)self doneButtonItem];
    [doneButtonItem2 setTitle:v6];

LABEL_12:
    goto LABEL_13;
  }

  if ([(CNContactContentUnitaryViewController *)self allowsEditing])
  {
    editButtonItem = [(CNContactContentUnitaryViewController *)self editButtonItem];
    [editButtonItem setEnabled:1];
LABEL_11:
    hasPendingChanges = 0;
    goto LABEL_12;
  }

  if ([(CNContactContentUnitaryViewController *)self mode]== 5)
  {
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
    editButtonItem2 = [(CNContactContentUnitaryViewController *)self editButtonItem];
    [editButtonItem2 setTitle:v9];

    editButtonItem = CNContactsUIBundle();
    v11 = [editButtonItem localizedStringForKey:@"REVIEW" value:&stru_1F0CE7398 table:@"Localized"];
    [navigationItemController setTitle:v11];

    goto LABEL_11;
  }

  hasPendingChanges = 0;
  v12 = 0;
LABEL_14:
  [(CNContactContentUnitaryViewController *)self setSaveKeyboardShortcutEnabled:hasPendingChanges];
  delegate = [(CNContactContentUnitaryViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v12 && (v14 & 1) != 0)
  {
    delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
    isEditing = [(CNContactContentUnitaryViewController *)self isEditing];
    doneButtonItem3 = [(CNContactContentUnitaryViewController *)self doneButtonItem];
    isEnabled = [doneButtonItem3 isEnabled];
    doneButtonItem4 = [(CNContactContentUnitaryViewController *)self doneButtonItem];
    title = [doneButtonItem4 title];
    [delegate2 updateEditing:isEditing doneButtonEnabled:isEnabled doneButtonText:title];
  }
}

- (id)cancelButtonItem
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (v5)
  {
    sharedNavigationBar = [(CNContactContentUnitaryViewController *)self sharedNavigationBar];
    doneButton = [sharedNavigationBar doneButton];
  }

  else
  {
    doneButton = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_editCancel_];
  }

  return doneButton;
}

- (id)doneButtonItem
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (v5)
  {
    sharedNavigationBar = [(CNContactContentUnitaryViewController *)self sharedNavigationBar];
    doneButton = [sharedNavigationBar doneButton];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CNContactContentUnitaryViewController;
    doneButton = [(CNContactContentUnitaryViewController *)&v9 editButtonItem];
  }

  return doneButton;
}

- (id)editButtonItem
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (v5)
  {
    sharedNavigationBar = [(CNContactContentUnitaryViewController *)self sharedNavigationBar];
    editButton = [sharedNavigationBar editButton];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CNContactContentUnitaryViewController;
    editButton = [(CNContactContentUnitaryViewController *)&v9 editButtonItem];
  }

  return editButton;
}

- (void)updateWindowTitleForAppearing:(BOOL)appearing
{
  if (appearing)
  {
    title = [(CNContactContentUnitaryViewController *)self title];
    if (title)
    {
      title2 = title;
    }

    else
    {
      navigationController = [(CNContactContentUnitaryViewController *)self navigationController];
      title2 = [navigationController title];

      if (!title2)
      {
        contactFormatter = [(CNContactContentUnitaryViewController *)self contactFormatter];
        contact = [(CNContactContentUnitaryViewController *)self contact];
        title2 = [contactFormatter stringFromContact:contact];
      }
    }

    view = [(CNContactContentUnitaryViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    [windowScene setTitle:title2];
  }

  else
  {
    title2 = [(CNContactContentUnitaryViewController *)self view];
    view = [title2 window];
    window = [view windowScene];
    [window setTitle:0];
  }
}

- (void)applyNavigationBarTintColorIfNeeded:(id)needed
{
  neededCopy = needed;
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
      navigationItem = [neededCopy navigationItem];
      navigationBar = [navigationItem navigationBar];
      [navigationBar setTintColor:v5];
    }
  }
}

- (void)applyPlatterStyleToBarButtonItemsIfNeeded:(id)needed
{
  v17 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if ([(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = neededCopy;
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags2 = [currentEnvironment2 featureFlags];
    if ([featureFlags2 isFeatureEnabled:27])
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

- (void)updateEditNavigationItemsAnimated:(BOOL)animated updateTintColor:(BOOL)color
{
  colorCopy = color;
  animatedCopy = animated;
  v95[1] = *MEMORY[0x1E69E9840];
  if ([(CNContactContentUnitaryViewController *)self isOutOfProcess]&& ![(CNContactContentUnitaryViewController *)self outOfProcessSetupComplete])
  {
    return;
  }

  navigationItemController = [(CNContactContentUnitaryViewController *)self navigationItemController];
  navigationItem = [(CNContactContentUnitaryViewController *)navigationItemController navigationItem];
  currentNavigationController = [(CNContactContentUnitaryViewController *)self currentNavigationController];
  navigationBar = [currentNavigationController navigationBar];
  backItem = [navigationBar backItem];

  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) != 0 || [(CNContactContentUnitaryViewController *)self allowsEditing])
  {
    if ([(CNContactContentUnitaryViewController *)self isEditing])
    {
      preEditLeftBarButtonItems = [(CNContactContentUnitaryViewController *)self preEditLeftBarButtonItems];

      if (!preEditLeftBarButtonItems)
      {
        leftBarButtonItems = [navigationItem leftBarButtonItems];
        v14 = [leftBarButtonItems _cn_filter:&__block_literal_global_472];

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

      cancelButtonItem = [(CNContactContentUnitaryViewController *)self cancelButtonItem];
      v95[0] = cancelButtonItem;
      preEditLeftBarButtonItems3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:1];

      [(CNContactContentUnitaryViewController *)self setCancelKeyboardShortcutEnabled:1];
LABEL_17:
      [(CNContactContentUnitaryViewController *)self setEditKeyboardShortcutEnabled:1];
      [(CNContactContentUnitaryViewController *)self updateDoneButton];
      if (navigationItemController != self)
      {
        [(CNContactContentUnitaryViewController *)navigationItemController setEditing:[(CNContactContentUnitaryViewController *)self isEditing]];
      }

      currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
      featureFlags = [currentEnvironment featureFlags];
      v25 = [featureFlags isFeatureEnabled:29];

      if (v25)
      {
        [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar setMode:[(CNContactContentUnitaryViewController *)self isEditing]];
        sharedNavigationBar = self->_sharedNavigationBar;
        traitCollection = [(CNContactContentUnitaryViewController *)self traitCollection];
        editButtonItem3 = [(CNContactViewSharedNavigationBar *)sharedNavigationBar rightButtonItemsForTraitCollection:traitCollection];

        v29 = self->_sharedNavigationBar;
        traitCollection2 = [(CNContactContentUnitaryViewController *)self traitCollection];
        v31 = [(CNContactViewSharedNavigationBar *)v29 leftButtonItemsForTraitCollection:traitCollection2];

        preEditLeftBarButtonItems3 = v31;
      }

      else
      {
        editButtonItem = [(CNContactContentUnitaryViewController *)self editButtonItem];
        [editButtonItem setTarget:self];

        editButtonItem2 = [(CNContactContentUnitaryViewController *)self editButtonItem];
        [editButtonItem2 setAction:sel_toggleEditing_];

        editButtonItem3 = [(CNContactContentUnitaryViewController *)self editButtonItem];

        if (!editButtonItem3)
        {
LABEL_24:
          if (!colorCopy)
          {
            goto LABEL_44;
          }

          navigationItemController2 = [(CNContactContentUnitaryViewController *)self navigationItemController];
          [(CNContactContentUnitaryViewController *)self applyNavigationBarTintColorIfNeeded:navigationItemController2];
          goto LABEL_43;
        }

        traitCollection2 = [(CNContactContentUnitaryViewController *)self editButtonItem];
        v92 = traitCollection2;
        editButtonItem3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
      }

      goto LABEL_24;
    }

    [(CNContactContentUnitaryViewController *)self setCancelKeyboardShortcutEnabled:0];
    backBarButtonItem = [navigationItem backBarButtonItem];

    if (backBarButtonItem)
    {
      backBarButtonItem2 = [navigationItem backBarButtonItem];
      v94 = backBarButtonItem2;
      v20 = MEMORY[0x1E695DEC8];
      v21 = &v94;
    }

    else
    {
      if (!backItem || ![(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle])
      {
        preEditLeftBarButtonItems2 = [(CNContactContentUnitaryViewController *)self preEditLeftBarButtonItems];

        if (preEditLeftBarButtonItems2)
        {
          preEditLeftBarButtonItems3 = [(CNContactContentUnitaryViewController *)self preEditLeftBarButtonItems];
          goto LABEL_16;
        }

        if (backItem || ![(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle])
        {
          preEditLeftBarButtonItems3 = 0;
          goto LABEL_16;
        }

        backBarButtonItem2 = [navigationItem leftBarButtonItems];
        v22 = [backBarButtonItem2 _cn_filter:&__block_literal_global_475];
LABEL_15:
        preEditLeftBarButtonItems3 = v22;

LABEL_16:
        [(CNContactContentUnitaryViewController *)self setPreEditLeftBarButtonItems:0];
        goto LABEL_17;
      }

      backBarButtonItem2 = [(CNContactContentUnitaryViewController *)self platterBackBarButtonItem];
      v93 = backBarButtonItem2;
      v20 = MEMORY[0x1E695DEC8];
      v21 = &v93;
    }

    v22 = [v20 arrayWithObjects:v21 count:1];
    goto LABEL_15;
  }

  if ([(CNContactContentUnitaryViewController *)self mode]== 5)
  {
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags2 = [currentEnvironment2 featureFlags];
    v37 = [featureFlags2 isFeatureEnabled:29];

    if (v37)
    {
      v38 = objc_alloc(MEMORY[0x1E69DC708]);
      v39 = CNContactsUIBundle();
      v40 = [v39 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
      navigationItemController2 = [v38 initWithTitle:v40 style:2 target:self action:sel_updateContact_];
    }

    else
    {
      editButtonItem4 = [(CNContactContentUnitaryViewController *)navigationItemController editButtonItem];
      [editButtonItem4 setStyle:2];

      editButtonItem5 = [(CNContactContentUnitaryViewController *)navigationItemController editButtonItem];
      [editButtonItem5 setTarget:self];

      editButtonItem6 = [(CNContactContentUnitaryViewController *)navigationItemController editButtonItem];
      [editButtonItem6 setAction:sel_updateContact_];

      v52 = CNContactsUIBundle();
      v53 = [v52 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
      editButtonItem7 = [(CNContactContentUnitaryViewController *)navigationItemController editButtonItem];
      [editButtonItem7 setTitle:v53];

      navigationItemController2 = [(CNContactContentUnitaryViewController *)navigationItemController editButtonItem];
    }

    v91 = navigationItemController2;
    editButtonItem3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
    cancelButtonItem2 = [(CNContactContentUnitaryViewController *)self cancelButtonItem];
    v90 = cancelButtonItem2;
    preEditLeftBarButtonItems3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];

    [(CNContactContentUnitaryViewController *)self setCancelKeyboardShortcutEnabled:1];
    [(CNContactContentUnitaryViewController *)self setEditKeyboardShortcutEnabled:1];
    goto LABEL_43;
  }

  rightBarButtonItems = [navigationItem rightBarButtonItems];
  firstObject = [rightBarButtonItems firstObject];
  editButtonItem8 = [(CNContactContentUnitaryViewController *)navigationItemController editButtonItem];

  if (firstObject == editButtonItem8)
  {
    editButtonItem3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    editButtonItem3 = 0;
  }

  [(CNContactContentUnitaryViewController *)self setCancelKeyboardShortcutEnabled:0];
  [(CNContactContentUnitaryViewController *)self setEditKeyboardShortcutEnabled:0];
  backBarButtonItem3 = [navigationItem backBarButtonItem];

  if (backBarButtonItem3)
  {
    navigationItemController2 = [navigationItem backBarButtonItem];
    v89 = navigationItemController2;
    v45 = MEMORY[0x1E695DEC8];
    v46 = &v89;
LABEL_37:
    v47 = [v45 arrayWithObjects:v46 count:1];
LABEL_38:
    preEditLeftBarButtonItems3 = v47;
LABEL_43:

    goto LABEL_44;
  }

  displayNavigationButtonsShouldUsePlatterStyle = [(CNContactContentUnitaryViewController *)self displayNavigationButtonsShouldUsePlatterStyle];
  if (backItem)
  {
    if (displayNavigationButtonsShouldUsePlatterStyle)
    {
      navigationItemController2 = [(CNContactContentUnitaryViewController *)self platterBackBarButtonItem];
      v88 = navigationItemController2;
      v45 = MEMORY[0x1E695DEC8];
      v46 = &v88;
      goto LABEL_37;
    }
  }

  else if (displayNavigationButtonsShouldUsePlatterStyle)
  {
    navigationItemController2 = [navigationItem leftBarButtonItems];
    v47 = [navigationItemController2 _cn_filter:&__block_literal_global_489];
    goto LABEL_38;
  }

  preEditLeftBarButtonItems3 = 0;
LABEL_44:
  v86 = navigationItemController;
  if ([(UIViewController *)self ab_isInSheet])
  {
    rightBarButtonItems2 = [navigationItem rightBarButtonItems];
    leftBarButtonItems2 = [navigationItem leftBarButtonItems];
    extraRightBarButtonItems = [(CNContactContentUnitaryViewController *)self extraRightBarButtonItems];

    if (!extraRightBarButtonItems)
    {
      if ([rightBarButtonItems2 count])
      {
        selfCopy2 = self;
        v60 = rightBarButtonItems2;
      }

      else
      {
        v60 = MEMORY[0x1E695E0F0];
        selfCopy2 = self;
      }

      [(CNContactContentUnitaryViewController *)selfCopy2 setExtraRightBarButtonItems:v60, navigationItemController, v88, v89];
    }

    extraRightBarButtonItems2 = [(CNContactContentUnitaryViewController *)self extraRightBarButtonItems];
    if ([extraRightBarButtonItems2 count])
    {
      v62 = [editButtonItem3 count];

      if (v62)
      {
        navigationItemController = v86;
        goto LABEL_55;
      }

      [(CNContactContentUnitaryViewController *)self extraRightBarButtonItems];
      editButtonItem3 = extraRightBarButtonItems2 = editButtonItem3;
      navigationItemController = v86;
    }

LABEL_55:
    extraLeftBarButtonItems = [(CNContactContentUnitaryViewController *)self extraLeftBarButtonItems];

    if (!extraLeftBarButtonItems)
    {
      if ([leftBarButtonItems2 count])
      {
        selfCopy4 = self;
        v65 = leftBarButtonItems2;
      }

      else
      {
        v65 = MEMORY[0x1E695E0F0];
        selfCopy4 = self;
      }

      [(CNContactContentUnitaryViewController *)selfCopy4 setExtraLeftBarButtonItems:v65];
    }

    extraLeftBarButtonItems2 = [(CNContactContentUnitaryViewController *)self extraLeftBarButtonItems];
    if ([extraLeftBarButtonItems2 count])
    {
      v67 = [preEditLeftBarButtonItems3 count];

      if (v67)
      {
        navigationItemController = v86;
LABEL_65:

        goto LABEL_66;
      }

      [(CNContactContentUnitaryViewController *)self extraLeftBarButtonItems];
      preEditLeftBarButtonItems3 = extraLeftBarButtonItems2 = preEditLeftBarButtonItems3;
      navigationItemController = v86;
    }

    goto LABEL_65;
  }

LABEL_66:
  if (preEditLeftBarButtonItems3)
  {
    [navigationItem setLeftBarButtonItems:preEditLeftBarButtonItems3 animated:animatedCopy];
  }

  v68 = *MEMORY[0x1E6996530];
  leftBarButtonItems3 = [navigationItem leftBarButtonItems];
  v70 = (*(v68 + 16))(v68, leftBarButtonItems3);

  if ((v70 & 1) == 0)
  {
    leftBarButtonItems3 = [navigationItem leftBarButtonItems];
    [(CNContactContentUnitaryViewController *)self applyPlatterStyleToBarButtonItemsIfNeeded:leftBarButtonItems3];
  }

  if (editButtonItem3)
  {
    [navigationItem setRightBarButtonItems:editButtonItem3 animated:animatedCopy];
  }

  rightBarButtonItems3 = [navigationItem rightBarButtonItems];
  v72 = (*(v68 + 16))(v68, rightBarButtonItems3);

  if ((v72 & 1) == 0)
  {
    rightBarButtonItems4 = [navigationItem rightBarButtonItems];
    [(CNContactContentUnitaryViewController *)self applyPlatterStyleToBarButtonItemsIfNeeded:rightBarButtonItems4];
  }

  delegate = [(CNContactContentUnitaryViewController *)self delegate];
  v75 = objc_opt_respondsToSelector();

  if (editButtonItem3 && (v75 & 1) != 0)
  {
    delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
    delegate = [(CNContactContentUnitaryViewController *)self isEditing];
    leftBarButtonItems3 = [(CNContactContentUnitaryViewController *)self doneButtonItem];
    isEnabled = [leftBarButtonItems3 isEnabled];
    doneButtonItem = [(CNContactContentUnitaryViewController *)self doneButtonItem];
    title = [doneButtonItem title];
    [delegate2 updateEditing:delegate doneButtonEnabled:isEnabled doneButtonText:title];

    navigationItemController = v87;
  }

  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    layoutPositionallyAfterNavBar = [(CNContactContentUnitaryViewController *)self layoutPositionallyAfterNavBar];
    if (layoutPositionallyAfterNavBar)
    {
      v81 = 0;
      v82 = 1;
    }

    else
    {
      title2 = [navigationItem title];
      if (title2)
      {
        delegate = title2;
        v81 = 0;
        v82 = 1;
      }

      else
      {
        leftBarButtonItems3 = [navigationItem titleView];
        delegate = 0;
        if (leftBarButtonItems3)
        {
          v81 = 1;
          v82 = 1;
        }

        else
        {
          v82 = [navigationItem _backgroundHidden] ^ 1;
          v81 = 1;
        }
      }
    }

    editingHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
    [editingHeaderView setShouldShowBelowNavigationTitle:v82];

    if (v81)
    {
    }

    navigationItemController = v87;
    if (!layoutPositionallyAfterNavBar)
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

- (void)setSharedNavigationBar:(id)bar
{
  barCopy = bar;
  cancelButton = [(CNContactViewSharedNavigationBar *)barCopy cancelButton];
  [cancelButton setTarget:self];

  cancelButton2 = [(CNContactViewSharedNavigationBar *)barCopy cancelButton];
  [cancelButton2 setAction:sel_editCancel_];

  doneButton = [(CNContactViewSharedNavigationBar *)barCopy doneButton];
  [doneButton setTarget:self];

  doneButton2 = [(CNContactViewSharedNavigationBar *)barCopy doneButton];
  [doneButton2 setAction:sel_toggleEditing_];

  editButton = [(CNContactViewSharedNavigationBar *)barCopy editButton];
  [editButton setTarget:self];

  editButton2 = [(CNContactViewSharedNavigationBar *)barCopy editButton];
  [editButton2 setAction:sel_toggleEditing_];

  sharedNavigationBar = self->_sharedNavigationBar;
  self->_sharedNavigationBar = barCopy;
}

- (id)sharedNavigationBar
{
  sharedNavigationBar = self->_sharedNavigationBar;
  if (!sharedNavigationBar)
  {
    v4 = objc_alloc_init(CNContactViewSharedNavigationBar);
    v5 = self->_sharedNavigationBar;
    self->_sharedNavigationBar = v4;

    cancelButton = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar cancelButton];
    [cancelButton setTarget:self];

    cancelButton2 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar cancelButton];
    [cancelButton2 setAction:sel_editCancel_];

    doneButton = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar doneButton];
    [doneButton setTarget:self];

    doneButton2 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar doneButton];
    [doneButton2 setAction:sel_toggleEditing_];

    editButton = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar editButton];
    [editButton setTarget:self];

    editButton2 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar editButton];
    [editButton2 setAction:sel_toggleEditing_];

    cancelButton3 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar cancelButton];
    [cancelButton3 setTarget:self];

    cancelButton4 = [(CNContactViewSharedNavigationBar *)self->_sharedNavigationBar cancelButton];
    [cancelButton4 setAction:sel_editCancel_];

    sharedNavigationBar = self->_sharedNavigationBar;
  }

  return sharedNavigationBar;
}

- (id)navigationItemController
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    v4 = selfCopy;
    while (1)
    {
      parentViewController = [(CNContactContentUnitaryViewController *)v4 parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      parentViewController2 = [(CNContactContentUnitaryViewController *)v4 parentViewController];

      v4 = parentViewController2;
      if (!parentViewController2)
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

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  if (edge == 4)
  {
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
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
  if (!-[CNContactContentUnitaryViewController allowsAddingToAddressBook](self, "allowsAddingToAddressBook") && (!-[CNContactContentUnitaryViewController allowsEditing](self, "allowsEditing") || ![contactCopy hasBeenPersisted]))
  {
    goto LABEL_9;
  }

  if (mode > 5 || (v7 = 1 << mode, v8 = contactCopy, (v7 & 0x32) == 0))
  {
    v8 = 0;
  }

  contactViewCache = [(CNContactContentUnitaryViewController *)self contactViewCache];
  mEMORY[0x1E695CF48] = [contactViewCache policyForContact:v8];

  if (!mEMORY[0x1E695CF48])
  {
LABEL_9:
    mEMORY[0x1E695CF48] = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
  }

  return mEMORY[0x1E695CF48];
}

- (id)indexPathOfPropertyItem:(id)item inGroup:(id)group editing:(BOOL)editing
{
  itemCopy = item;
  groupCopy = group;
  if (editing)
  {
    editingContactView = [(CNContactContentUnitaryViewController *)self editingContactView];
    v11 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:groupCopy inTableView:editingContactView];
    [groupCopy editingItems];
  }

  else
  {
    editingContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
    v11 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:groupCopy inTableView:editingContactView];
    [groupCopy displayItems];
  }
  v12 = ;
  v13 = [v12 indexOfObject:itemCopy];
  v14 = 0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:v11];
  }

  return v14;
}

- (id)indexPathOfPropertyItem:(id)item editing:(BOOL)editing
{
  editingCopy = editing;
  itemCopy = item;
  group = [itemCopy group];
  v8 = [(CNContactContentUnitaryViewController *)self indexPathOfPropertyItem:itemCopy inGroup:group editing:editingCopy];

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
    delegate = [(CNContactContentUnitaryViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
      [(CNContactContentUnitaryViewController *)self preferredContentSize];
      [delegate2 didChangePreferredContentSize:?];
    }
  }
}

- (void)reloadCardGroupsForFavoritesUpdateInTableView:(id)view
{
  v21[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if ([(CNContactContentUnitaryViewController *)self isViewLoaded]&& ![(CNContactContentUnitaryViewController *)self needsReload])
  {
    v5 = [(CNContactContentUnitaryViewController *)self cardGroupForProperty:*MEMORY[0x1E695C208]];
    v6 = [(CNContactContentUnitaryViewController *)self cardGroupForProperty:*MEMORY[0x1E695C330]];
    v21[0] = v5;
    v21[1] = v6;
    cardActionsGroup = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
    v21[2] = cardActionsGroup;
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

          v15 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:*(*(&v16 + 1) + 8 * v14) inTableView:viewCopy, v16];
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

    [(CNContactContentUnitaryViewController *)self reloadSections:v9 forTableView:viewCopy];
  }
}

- (void)reloadSections:(id)sections forTableView:(id)view
{
  viewCopy = view;
  sectionsCopy = sections;
  [viewCopy beginUpdates];
  [viewCopy reloadSections:sectionsCopy withRowAnimation:0];

  [viewCopy endUpdates];
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    [(CNContactContentUnitaryViewController *)self updateCollapsedHeaderToMatchScrollViewState:viewCopy scrollDirection:2 animated:0];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self updateHeaderHeightToMatchScrollViewState:viewCopy scrollDirection:2 animated:0];
  }

  [(CNContactContentUnitaryViewController *)self adjustPreferredContentSize];
}

- (void)reloadCardGroup:(id)group forTableView:(id)view
{
  groupCopy = group;
  viewCopy = view;
  if ([(CNContactContentUnitaryViewController *)self isViewLoaded])
  {
    if (![(CNContactContentUnitaryViewController *)self needsReload])
    {
      v7 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:groupCopy inTableView:viewCopy];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:v7];
        [(CNContactContentUnitaryViewController *)self reloadSections:v8 forTableView:viewCopy];
      }
    }
  }
}

- (void)removeActionWithTarget:(id)target selector:(SEL)selector inGroup:(id)group
{
  targetCopy = target;
  groupCopy = group;
  [groupCopy removeActionWithTarget:targetCopy selector:selector];
  customActions = [(CNContactContentUnitaryViewController *)self customActions];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __81__CNContactContentUnitaryViewController_removeActionWithTarget_selector_inGroup___block_invoke;
  v17 = &unk_1E74E6BB8;
  v18 = targetCopy;
  v19 = groupCopy;
  selfCopy = self;
  selectorCopy = selector;
  v11 = groupCopy;
  v12 = targetCopy;
  v13 = [customActions _cn_filter:&v14];
  [(CNContactContentUnitaryViewController *)self setCustomActions:v13, v14, v15, v16, v17];

  [(CNContactContentUnitaryViewController *)self setNeedsReload];
  [(CNContactContentUnitaryViewController *)self _notifyObservers];
}

- (void)addActionWithTitle:(id)title target:(id)target selector:(SEL)selector menuProvider:(id)provider inGroup:(id)group destructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  v40 = *MEMORY[0x1E69E9840];
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
    [(CNContactContentUnitaryViewController *)self contact];
    v23 = v22 = destructiveCopy;
    identifier = [v23 identifier];
    v37 = v22;
    v25 = [(CNCustomCardAction *)v21 initWithTitle:titleCopy targetActionWrapper:v18 contactIdentifier:identifier placement:v20 isDestructive:v22 menuProvider:providerCopy];

    customActions = [(CNContactContentUnitaryViewController *)self customActions];
    v27 = [customActions arrayByAddingObject:v25];
    [(CNContactContentUnitaryViewController *)self setCustomActions:v27];

    v28 = [(CNContactContentUnitaryViewController *)self customActionPlacementFromPlacement:v20];
    customActionCardGroupsByPlacement = [(CNContactContentUnitaryViewController *)self customActionCardGroupsByPlacement];
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
    v31 = [customActionCardGroupsByPlacement objectForKey:v30];

    if (v31)
    {
      [v31 addObject:groupCopy];
    }

    else
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [v31 addObject:groupCopy];
      customActionCardGroupsByPlacement2 = [(CNContactContentUnitaryViewController *)self customActionCardGroupsByPlacement];
      v35 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
      [customActionCardGroupsByPlacement2 setObject:v31 forKeyedSubscript:v35];
    }

    [(CNContactContentUnitaryViewController *)self _notifyObservers];

    destructiveCopy = v37;
    if (providerCopy)
    {
LABEL_10:
      v36 = [groupCopy addActionWithTitle:titleCopy menuProvider:providerCopy destructive:destructiveCopy];
      goto LABEL_11;
    }
  }

  else
  {
    v32 = CNUILogContactCard();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = titleCopy;
      _os_log_impl(&dword_199A75000, v32, OS_LOG_TYPE_INFO, "Found undefined placement for action with title %@", buf, 0xCu);
    }

    if (providerCopy)
    {
      goto LABEL_10;
    }
  }

  v33 = [groupCopy addActionWithTitle:titleCopy target:v18 selector:sel_performActionWithSender_ destructive:destructiveCopy];
LABEL_11:
  [(CNContactContentUnitaryViewController *)self setNeedsReload];
}

- (void)addCardGroup:(id)group afterGroup:(id)afterGroup
{
  groupCopy = group;
  afterGroupCopy = afterGroup;
  groupsAfterGroup = [(CNContactContentUnitaryViewController *)self groupsAfterGroup];
  v8 = [groupsAfterGroup objectForKeyedSubscript:afterGroupCopy];

  if (v8)
  {
    groupsAfterGroup2 = [(CNContactContentUnitaryViewController *)self groupsAfterGroup];
    groupsAfterGroup3 = [groupsAfterGroup2 objectForKeyedSubscript:afterGroupCopy];
    [groupsAfterGroup3 addObject:groupCopy];
  }

  else
  {
    groupsAfterGroup2 = [MEMORY[0x1E695DF70] arrayWithObject:groupCopy];
    groupsAfterGroup3 = [(CNContactContentUnitaryViewController *)self groupsAfterGroup];
    [groupsAfterGroup3 setObject:groupsAfterGroup2 forKeyedSubscript:afterGroupCopy];
  }
}

- (int64_t)sectionOfGroup:(id)group inTableView:(id)view
{
  groupCopy = group;
  viewCopy = view;
  v8 = [(CNContactContentUnitaryViewController *)self _currentGroupsForTableView:viewCopy];
  v9 = v8;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v11 = [v8 indexOfObject:groupCopy];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(CNContactContentUnitaryViewController *)self tableViewSectionIndexFromGroupIndex:v11 forTableView:viewCopy];
    }
  }

  return v10;
}

- (id)cardGroupForProperty:(id)property
{
  propertyCopy = property;
  propertyGroups = [(CNContactContentUnitaryViewController *)self propertyGroups];
  v6 = [propertyGroups objectForKeyedSubscript:propertyCopy];

  return v6;
}

- (void)reloadDataPreservingChanges:(BOOL)changes
{
  changesCopy = changes;
  v62 = *MEMORY[0x1E69E9840];
  if ([(CNContactContentUnitaryViewController *)self isInlineContactCard]|| [(CNContactContentUnitaryViewController *)self isViewLoaded]&& (![(CNContactContentUnitaryViewController *)self isOutOfProcess]|| [(CNContactContentUnitaryViewController *)self outOfProcessSetupComplete]))
  {
    self->_needsReload = 0;
    contactStore = [(CNContactContentUnitaryViewController *)self contactStore];

    if (!contactStore)
    {
      originalContacts = [(CNContactContentUnitaryViewController *)self originalContacts];
      v7 = [originalContacts _cn_filter:&__block_literal_global_451];

      v8 = [v7 count];
      currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
      featureFlags = [currentEnvironment featureFlags];
      v11 = [featureFlags isFeatureEnabled:19];

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

      managedConfiguration = [(CNContactContentUnitaryViewController *)self managedConfiguration];

      if (managedConfiguration)
      {
        v15 = objc_alloc(MEMORY[0x1E695CE18]);
        environment = [(CNContactContentUnitaryViewController *)self environment];
        cnEnvironment = [environment cnEnvironment];
        managedConfiguration2 = [(CNContactContentUnitaryViewController *)self managedConfiguration];
        v19 = [v15 initWithEnvironment:cnEnvironment options:v13 managedConfiguration:managedConfiguration2];
        [(CNContactContentUnitaryViewController *)self setContactStore:v19];
      }

      else
      {
        environment = [MEMORY[0x1E695CE18] storeWithOptions:v13];
        [(CNContactContentUnitaryViewController *)self setContactStore:environment];
      }
    }

    if (![(CNContactContentUnitaryViewController *)self mode])
    {
      parentViewController = [(CNContactContentUnitaryViewController *)self parentViewController];
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

    shadowCopyOfReadonlyContact = [(CNContactContentUnitaryViewController *)self shadowCopyOfReadonlyContact];

    if (!shadowCopyOfReadonlyContact)
    {
      contact = [(CNContactContentUnitaryViewController *)self contact];
      v25 = [(CNContactContentUnitaryViewController *)self _policyForContact:contact mode:[(CNContactContentUnitaryViewController *)self mode]];
      [(CNContactContentUnitaryViewController *)self setPolicy:v25];
    }

    contact2 = [(CNContactContentUnitaryViewController *)self contact];
    isUnified = [contact2 isUnified];

    if (isUnified)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      contact3 = [(CNContactContentUnitaryViewController *)self contact];
      linkedContacts = [contact3 linkedContacts];

      v31 = [linkedContacts countByEnumeratingWithState:&v56 objects:v61 count:16];
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
              objc_enumerationMutation(linkedContacts);
            }

            v35 = *(*(&v56 + 1) + 8 * i);
            v36 = [(CNContactContentUnitaryViewController *)self _policyForContact:v35 mode:[(CNContactContentUnitaryViewController *)self mode]];
            if (v36)
            {
              identifier = [v35 identifier];
              [dictionary setObject:v36 forKey:identifier];
            }
          }

          v32 = [linkedContacts countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v32);
      }

      v38 = [dictionary copy];
      [(CNContactContentUnitaryViewController *)self setLinkedPoliciesByContactIdentifier:v38];
    }

    iMessageIDSLookupToken = [(CNContactContentUnitaryViewController *)self iMessageIDSLookupToken];
    [iMessageIDSLookupToken cancel];

    faceTimeIDSLookupToken = [(CNContactContentUnitaryViewController *)self faceTimeIDSLookupToken];
    [faceTimeIDSLookupToken cancel];

    v41 = +[CNCapabilitiesManager defaultCapabilitiesManager];
    [v41 resetCache];

    if (!self->_propertyGroups)
    {
      _loadPropertyGroups = [(CNContactContentUnitaryViewController *)self _loadPropertyGroups];
      propertyGroups = self->_propertyGroups;
      self->_propertyGroups = _loadPropertyGroups;
    }

    [(CNContactContentUnitaryViewController *)self _reloadStaticIdentityGroup];
    [(CNContactContentUnitaryViewController *)self _reloadGeminiGroupPreservingChanges:changesCopy];
    [(CNContactContentUnitaryViewController *)self _reloadLinkedCardsGroup];
    [(CNContactContentUnitaryViewController *)self _reloadGroupMembershipGroup];
    [(CNContactContentUnitaryViewController *)self _reloadPropertyGroupsPreservingChanges:changesCopy];
    [(CNContactContentUnitaryViewController *)self _reloadMedicalIDGroup];
    [(CNContactContentUnitaryViewController *)self _reloadAlertGroups];
    [(CNContactContentUnitaryViewController *)self _reloadGameCenterGroup];
    [(CNContactContentUnitaryViewController *)self _reloadNamePickingGroup];
    [(CNContactContentUnitaryViewController *)self _reloadSharedProfileGroup];
    [(CNContactContentUnitaryViewController *)self _reloadMeCardSharedProfileGroup];
    [(CNContactContentUnitaryViewController *)self _reloadContainerContextPreservingChanges:changesCopy];
    [(CNContactContentUnitaryViewController *)self setupActionsPreservingChanges:changesCopy];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(CNContactContentUnitaryViewController *)self setGroupsAfterGroup:dictionary2];

    _loadDisplayGroups = [(CNContactContentUnitaryViewController *)self _loadDisplayGroups];
    [(CNContactContentUnitaryViewController *)self setDisplayGroups:_loadDisplayGroups];

    v46 = [(CNContactContentUnitaryViewController *)self _loadEditingGroupsPreservingChanges:changesCopy];
    [(CNContactContentUnitaryViewController *)self setEditingGroups:v46];

    if (!changesCopy)
    {
      array = [MEMORY[0x1E695DEC8] array];
      [(CNContactContentUnitaryViewController *)self setDeletedEditingGroups:array];
    }

    [(CNContactContentUnitaryViewController *)self _setNeedsUpdateCachedLabelWidths];
    [(CNContactContentUnitaryViewController *)self _updateAvailableTransports];
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    [contactView reloadData];

    contactHeaderView = [(CNContactContentUnitaryViewController *)self contactHeaderView];
    [contactHeaderView reloadDataPreservingChanges:changesCopy];

    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      displayFloatingCollapsedHeaderView = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
      [displayFloatingCollapsedHeaderView reloadDataPreservingChanges:changesCopy];
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
    view = [(CNContactContentUnitaryViewController *)self view];
    contact4 = [(CNContactContentUnitaryViewController *)self contact];
    [view provideOnscreenContactToAppItents:contact4];

    if ([(CNContactContentUnitaryViewController *)self supportsSwiftUIContactCard])
    {
      contact5 = [(CNContactContentUnitaryViewController *)self contact];
      displayContactCardViewController = [(CNContactContentUnitaryViewController *)self displayContactCardViewController];
      [displayContactCardViewController setContact:contact5];
    }
  }
}

uint64_t __69__CNContactContentUnitaryViewController_reloadDataPreservingChanges___block_invoke_455(uint64_t a1)
{
  [*(a1 + 32) _addFaceTimeGroupAnimated:0];
  v2 = *(a1 + 32);

  return [v2 _addDefaultAppGroupAnimated:0];
}

- (void)_debouncedReloadDataPreservingChanges:(BOOL)changes
{
  [(NSTimer *)self->_reloadDataPreservingChangesTimer invalidate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__CNContactContentUnitaryViewController__debouncedReloadDataPreservingChanges___block_invoke;
  v7[3] = &unk_1E74E6B70;
  v7[4] = self;
  changesCopy = changes;
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
        [(CNContactContentUnitaryViewController *)self removePersonHeaderViewControllerFromHierarchy];
      }

      objc_storeStrong(&self->_personHeaderViewController, controller);
      personHeaderViewController = [(CNContactContentUnitaryViewController *)self isViewLoaded];
      controllerCopy = v8;
      if (personHeaderViewController)
      {
        contactView = [(CNContactContentUnitaryViewController *)self contactView];
        [contactView reloadData];

        controllerCopy = v8;
      }
    }
  }

  MEMORY[0x1EEE66BB8](personHeaderViewController, controllerCopy);
}

- (id)personHeaderView
{
  personHeaderViewController = [(CNContactContentUnitaryViewController *)self personHeaderViewController];
  view = [personHeaderViewController view];
  subviews = [view subviews];
  firstObject = [subviews firstObject];

  return firstObject;
}

- (void)setPersonHeaderView:(id)view
{
  firstValue = view;
  if (firstValue)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD258]);
    view = [v4 view];
    [view addSubview:firstValue];

    array = [MEMORY[0x1E695DF70] array];
    v7 = _NSDictionaryOfVariableBindings(&cfstr_Personheadervi.isa, firstValue, 0);
    [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[personHeaderView]|" options:0 metrics:0 views:v7];
    [array addObjectsFromArray:v8];

    v9 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[personHeaderView]|" options:0 metrics:0 views:v7];
    [array addObjectsFromArray:v9];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
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
  contact = [(CNContactContentUnitaryViewController *)self contact];
  parentContainer = [(CNContactContentViewController *)self parentContainer];
  if (contact)
  {
    unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    contact2 = [(CNContactContentUnitaryViewController *)self contact];
    v7 = [unifiedMeContactMonitor isMeContact:contact2];

    v8 = CNUILogContactCard();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        identifier = [contact identifier];
        *buf = 138543362;
        v38 = identifier;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it the me card, identifier %{public}@", buf, 0xCu);
      }

      contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
      identifier3 = [objc_opt_class() descriptorForRequiredKeysForContact:contact];
      v46[0] = identifier3;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
      v36 = 0;
      v14 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v13 error:&v36];
      v15 = v36;
    }

    else
    {
      if (v9)
      {
        identifier2 = [contact identifier];
        *buf = 138543362;
        v38 = identifier2;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it not the me card, identifier %{public}@", buf, 0xCu);
      }

      contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
      identifier3 = [contact identifier];
      v13 = [objc_opt_class() descriptorForRequiredKeysForContact:contact];
      v45 = v13;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
      v35 = 0;
      v14 = [contactStore unifiedContactWithIdentifier:identifier3 keysToFetch:v17 error:&v35];
      v15 = v35;
    }

    contactViewCache = [(CNContactContentUnitaryViewController *)self contactViewCache];
    v19 = [contactViewCache containerForContact:v14];

    if (v15 || !v14)
    {
      v31 = CNUILogContactCard();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        identifier4 = [contact identifier];
        contactStore2 = [(CNContactContentUnitaryViewController *)self contactStore];
        *buf = 138413058;
        v38 = identifier4;
        v39 = 2112;
        v40 = v15;
        v41 = 2112;
        v42 = contactStore2;
        v43 = 2112;
        v44 = contact;
        _os_log_error_impl(&dword_199A75000, v31, OS_LOG_TYPE_ERROR, "Error refetching contact with identifier %@, %@, store %@, full contact %@", buf, 0x2Au);
      }
    }

    else
    {
      contactCardIgnorableContactChangeProperties = [MEMORY[0x1E695CD00] contactCardIgnorableContactChangeProperties];
      v21 = [v14 isEquivalent:contact ignoringProperties:contactCardIgnorableContactChangeProperties] ^ 1;

      identifier5 = [v19 identifier];
      v34 = parentContainer;
      identifier6 = [parentContainer identifier];
      v24 = [identifier5 isEqual:identifier6];

      if ((v21 & 1) != 0 || !v24 || (-[CNContactContentUnitaryViewController cardGroupMembershipGroup](self, "cardGroupMembershipGroup"), v25 = objc_claimAutoreleasedReturnValue(), v25, v25) && (-[CNContactContentUnitaryViewController groupsAndContainersSaveManager](self, "groupsAndContainersSaveManager"), v26 = objc_claimAutoreleasedReturnValue(), [v26 parentGroupsForContact:v14], v27 = objc_claimAutoreleasedReturnValue(), v26, -[CNContactContentUnitaryViewController cardGroupMembershipGroup](self, "cardGroupMembershipGroup"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "parentGroups"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v27, "isEqualToArray:", v29), v29, v28, v27, (v30 & 1) == 0))
      {
        [(CNContactContentUnitaryViewController *)self setContact:v14 shouldScrollToTop:v21];
      }

      else
      {
        objc_storeStrong(&self->_contact, v14);
      }

      parentContainer = v34;
    }
  }
}

- (void)applicationLeftForeground:(id)foreground
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

- (void)favoritesDidChangeWithNotification:(id)notification
{
  if (([(CNContactContentUnitaryViewController *)self isEditing]& 1) == 0)
  {
    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    [(CNContactContentUnitaryViewController *)self reloadCardGroupsForFavoritesUpdateInTableView:contactView];
  }
}

- (void)contactStoreDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  defaultSchedulerProvider = [(CNUIContactsEnvironment *)self->_environment defaultSchedulerProvider];
  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__CNContactContentUnitaryViewController_contactStoreDidChangeWithNotification___block_invoke;
  v8[3] = &unk_1E74E77C0;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  [mainThreadScheduler performBlock:v8];
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

- (void)adjustInsetsForKeyboardOverlap:(double)overlap
{
  [(CNContactContentUnitaryViewController *)self setKeyboardVerticalOverlap:overlap];
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

- (void)keyboardDidShowNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view = [(CNContactContentUnitaryViewController *)self view];
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
  [(CNContactContentUnitaryViewController *)self adjustInsetsForKeyboardOverlap:CGRectGetHeight(v34)];
}

- (void)updateActionsControllerByType
{
  v17 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allSupportedActionTypes = [MEMORY[0x1E6996BE8] allSupportedActionTypes];
  v5 = [allSupportedActionTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allSupportedActionTypes);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        actionsViewController = [(CNContactContentUnitaryViewController *)self actionsViewController];
        v11 = [actionsViewController retrieveModelsForType:v9];
        [dictionary setObject:v11 forKeyedSubscript:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [allSupportedActionTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(CNContactContentUnitaryViewController *)self setActionsControllerByType:dictionary];
}

- (void)setContact:(id)contact shouldScrollToTop:(BOOL)top
{
  topCopy = top;
  v179[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v7 = contactCopy;
  self->_needsRefetch = 0;
  if (self->_contact == contactCopy)
  {
    goto LABEL_68;
  }

  v151 = topCopy;
  identifier = [(CNContact *)contactCopy identifier];
  identifier2 = [(CNContact *)self->_contact identifier];
  v10 = [identifier isEqualToString:identifier2];

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

  environment = [(CNContactContentUnitaryViewController *)self environment];
  defaultSchedulerProvider = [environment defaultSchedulerProvider];

  [defaultSchedulerProvider suspendBackgroundScheduler];
  afterCACommitScheduler = [defaultSchedulerProvider afterCACommitScheduler];
  v168[0] = MEMORY[0x1E69E9820];
  v168[1] = 3221225472;
  v168[2] = __70__CNContactContentUnitaryViewController_setContact_shouldScrollToTop___block_invoke;
  v168[3] = &unk_1E74E6A88;
  v150 = defaultSchedulerProvider;
  v169 = v150;
  [afterCACommitScheduler performBlock:v168];

  contactViewCache = [(CNContactContentUnitaryViewController *)self contactViewCache];
  [contactViewCache resetCache];

  LODWORD(afterCACommitScheduler) = [(CNContactContentUnitaryViewController *)self isOutOfProcess];
  descriptorForRequiredKeys = [objc_opt_class() descriptorForRequiredKeys];
  v18 = descriptorForRequiredKeys;
  if (afterCACommitScheduler)
  {
    v179[0] = descriptorForRequiredKeys;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:1];
    v20 = [(CNContactContentUnitaryViewController *)self _updateContact:v7 withMissingKeysFromRequiredKeys:v19];

    v7 = v20;
  }

  else
  {
    v178 = descriptorForRequiredKeys;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v178 count:1];
    [v7 assertKeysAreAvailable:v19];
  }

  [(CNContactContentUnitaryViewController *)self resetEditAuthorizationState];
  parentContainer = [(CNContactContentViewController *)self parentContainer];
  if (!parentContainer)
  {
LABEL_10:
    contactViewCache2 = [(CNContactContentUnitaryViewController *)self contactViewCache];
    v26 = [contactViewCache2 containerForContact:v7];
    [(CNContactContentViewController *)self setParentContainer:v26];

    goto LABEL_11;
  }

  contactViewCache2 = parentContainer;
  parentContainer2 = [(CNContactContentViewController *)self parentContainer];
  if (parentContainer2)
  {
    v24 = parentContainer2;
    hasBeenPersisted = [v7 hasBeenPersisted];

    if (!hasBeenPersisted)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
  [(CNContactContentUnitaryViewController *)self setContainerContext:0];
  contactViewCache3 = [(CNContactContentUnitaryViewController *)self contactViewCache];
  v28 = [contactViewCache3 policyForContact:v7];

  parentContainer3 = [(CNContactContentViewController *)self parentContainer];
  type = [parentContainer3 type];

  parentContainer4 = [(CNContactContentViewController *)self parentContainer];
  type2 = [parentContainer4 type];

  v152 = v28;
  selfCopy = self;
  if ([v28 isReadonly] && type != 1003 && type2 != 1004)
  {
    contactStore = [(CNContactContentUnitaryViewController *)self contactStore];
    identifier3 = [v7 identifier];
    [objc_opt_class() descriptorForRequiredKeysForContact:v7];
    v36 = v35 = v7;
    v177 = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v177 count:1];
    v167 = 0;
    v38 = [contactStore unifiedContactWithIdentifier:identifier3 keysToFetch:v37 error:&v167];
    v39 = v167;

    if (v38)
    {
      v40 = v38;

      contactViewCache4 = [(CNContactContentUnitaryViewController *)self contactViewCache];
      v42 = [contactViewCache4 policyForContact:v40];

      if ([v42 isReadonly])
      {
        obj = v39;
        selfCopy2 = self;
        v44 = objc_alloc_init(MEMORY[0x1E695CF18]);
        availableKeyDescriptor = [v40 availableKeyDescriptor];
        v176 = availableKeyDescriptor;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v176 count:1];
        v47 = [v44 copyWithPropertyKeys:v46];
        v48 = [v47 mutableCopy];
        [(CNContactContentUnitaryViewController *)selfCopy2 setShadowCopyOfReadonlyContact:v48];

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
                shadowCopyOfReadonlyContact = [(CNContactContentUnitaryViewController *)selfCopy shadowCopyOfReadonlyContact];
                v56 = [v40 valueForKey:v54];
                [shadowCopyOfReadonlyContact setValue:v56 forKey:v54];
              }
            }

            v51 = [v49 countByEnumeratingWithState:&v163 objects:v175 count:16];
          }

          while (v51);
        }

        v57 = MEMORY[0x1E695DF70];
        self = selfCopy;
        shadowCopyOfReadonlyContact2 = [(CNContactContentUnitaryViewController *)selfCopy shadowCopyOfReadonlyContact];
        v59 = [v57 arrayWithObject:shadowCopyOfReadonlyContact2];

        if ([v40 isUnified])
        {
          linkedContacts = [v40 linkedContacts];
          [v59 addObjectsFromArray:linkedContacts];
        }

        else
        {
          [v59 addObject:v40];
        }

        v39 = obj;
        v7 = [MEMORY[0x1E695CD58] unifyContacts:v59];

        contactViewCache5 = [(CNContactContentUnitaryViewController *)selfCopy contactViewCache];
        policyForDefaultContainer = [contactViewCache5 policyForDefaultContainer];
        [(CNContactContentUnitaryViewController *)selfCopy setPolicy:policyForDefaultContainer];

        policy = [(CNContactContentUnitaryViewController *)selfCopy policy];

        if (!policy || obj)
        {
          mEMORY[0x1E695CF48] = [MEMORY[0x1E695CF48] sharedPermissivePolicy];
          [(CNContactContentUnitaryViewController *)selfCopy setPolicy:mEMORY[0x1E695CF48]];
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
    identifier4 = [v7 identifier];
    mutableContact = self->_mutableContact;
    *buf = 138543618;
    v172 = identifier4;
    v173 = 2050;
    v174 = mutableContact;
    _os_log_impl(&dword_199A75000, v67, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] setting contact with identifier %{public}@, mutable contact %{public}p", buf, 0x16u);
  }

  v149 = v7;

  v70 = [CNContactActionProvider alloc];
  v71 = self->_mutableContact;
  parentContainer5 = [(CNContactContentViewController *)self parentContainer];
  contactViewCache6 = [(CNContactContentUnitaryViewController *)self contactViewCache];
  contactStore2 = [contactViewCache6 contactStore];
  v75 = [(CNContactActionProvider *)v70 initWithContact:v71 inContainer:parentContainer5 contactStore:contactStore2];
  [(CNContactContentUnitaryViewController *)self setActionProvider:v75];

  actionProvider = [(CNContactContentUnitaryViewController *)self actionProvider];
  [actionProvider setActionDelegate:self];

  customActions = [(CNContactContentUnitaryViewController *)self customActions];
  v162[0] = MEMORY[0x1E69E9820];
  v162[1] = 3221225472;
  v162[2] = __70__CNContactContentUnitaryViewController_setContact_shouldScrollToTop___block_invoke_425;
  v162[3] = &unk_1E74E6AF8;
  v162[4] = self;
  v78 = [customActions _cn_filter:v162];
  [(CNContactContentUnitaryViewController *)self setCustomActions:v78];

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  customActionCardGroupsByPlacement = [(CNContactContentUnitaryViewController *)self customActionCardGroupsByPlacement];
  allKeys = [customActionCardGroupsByPlacement allKeys];

  obja = allKeys;
  v81 = [allKeys countByEnumeratingWithState:&v158 objects:v170 count:16];
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
        customActionCardGroupsByPlacement2 = [(CNContactContentUnitaryViewController *)selfCopy customActionCardGroupsByPlacement];
        v87 = [customActionCardGroupsByPlacement2 objectForKeyedSubscript:v84];
        v157[0] = MEMORY[0x1E69E9820];
        v157[1] = 3221225472;
        v157[2] = __70__CNContactContentUnitaryViewController_setContact_shouldScrollToTop___block_invoke_2;
        v157[3] = &unk_1E74E6B20;
        v157[4] = selfCopy;
        v88 = [v87 _cn_filter:v157];
        v89 = [v85 setWithSet:v88];

        v90 = [v89 count];
        customActionCardGroupsByPlacement3 = [(CNContactContentUnitaryViewController *)selfCopy customActionCardGroupsByPlacement];
        v92 = customActionCardGroupsByPlacement3;
        if (v90)
        {
          [customActionCardGroupsByPlacement3 setObject:v89 forKeyedSubscript:v84];
        }

        else
        {
          [customActionCardGroupsByPlacement3 removeObjectForKey:v84];
        }
      }

      v82 = [obja countByEnumeratingWithState:&v158 objects:v170 count:16];
    }

    while (v82);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(CNContactContentUnitaryViewController *)selfCopy setGroupsAfterGroup:dictionary];

  v94 = [[CNCardGroup alloc] initWithContact:selfCopy->_mutableContact];
  cardTopGroup = selfCopy->_cardTopGroup;
  selfCopy->_cardTopGroup = v94;

  v96 = [[CNCardGroup alloc] initWithContact:selfCopy->_mutableContact];
  cardBottomGroup = selfCopy->_cardBottomGroup;
  selfCopy->_cardBottomGroup = v96;

  [(CNCardGroup *)selfCopy->_cardBottomGroup setAddSpacerFromPreviousGroup:1];
  v98 = [[CNCardGroup alloc] initWithContact:selfCopy->_mutableContact];
  cardActionsGroup = selfCopy->_cardActionsGroup;
  selfCopy->_cardActionsGroup = v98;

  v100 = [[CNCardGroup alloc] initWithContact:selfCopy->_mutableContact];
  cardShareLocationGroup = selfCopy->_cardShareLocationGroup;
  selfCopy->_cardShareLocationGroup = v100;

  v102 = [[CNCardGroup alloc] initWithContact:selfCopy->_mutableContact];
  cardBlockContactGroup = selfCopy->_cardBlockContactGroup;
  selfCopy->_cardBlockContactGroup = v102;

  [(CNCardGroup *)selfCopy->_cardBlockContactGroup setAddSpacerFromPreviousGroup:1];
  v104 = [[CNCardGroup alloc] initWithContact:selfCopy->_mutableContact];
  cardFooterGroup = selfCopy->_cardFooterGroup;
  selfCopy->_cardFooterGroup = v104;

  [(CNCardGroup *)selfCopy->_cardFooterGroup setAddSpacerFromPreviousGroup:1];
  v106 = [[CNCardGroup alloc] initWithContact:selfCopy->_mutableContact];
  cardEditingActionsGroup = selfCopy->_cardEditingActionsGroup;
  selfCopy->_cardEditingActionsGroup = v106;

  v108 = [[CNCardGroup alloc] initWithContact:selfCopy->_mutableContact];
  cardEditingDeleteContactGroup = selfCopy->_cardEditingDeleteContactGroup;
  selfCopy->_cardEditingDeleteContactGroup = v108;

  propertyGroups = selfCopy->_propertyGroups;
  selfCopy->_propertyGroups = 0;

  siriContextProvider = [(CNContactContentUnitaryViewController *)selfCopy siriContextProvider];
  isEnabled = [siriContextProvider isEnabled];

  v113 = [CNSiriContactContextProvider alloc];
  contactStore3 = [(CNContactContentUnitaryViewController *)selfCopy contactStore];
  v7 = v149;
  v115 = [(CNSiriContactContextProvider *)v113 initWithContact:v149 store:contactStore3];
  [(CNContactContentUnitaryViewController *)selfCopy setSiriContextProvider:v115];

  if (isEnabled)
  {
    siriContextProvider2 = [(CNContactContentUnitaryViewController *)selfCopy siriContextProvider];
    [siriContextProvider2 setEnabled:1];
  }

  linkedCardsAction = selfCopy->_linkedCardsAction;
  selfCopy->_linkedCardsAction = 0;

  addLinkedCardAction = selfCopy->_addLinkedCardAction;
  selfCopy->_addLinkedCardAction = 0;

  [(CNContactContentUnitaryViewController *)selfCopy setCardFaceTimeGroup:0];
  [(CNContactContentUnitaryViewController *)selfCopy setFaceTimeAction:0];
  [(CNContactContentUnitaryViewController *)selfCopy setCardDefaultAppGroup:0];
  [(CNContactContentUnitaryViewController *)selfCopy setSendMessageAction:0];
  [(CNContactContentUnitaryViewController *)selfCopy setBlockAction:0];
  [(CNContactContentUnitaryViewController *)selfCopy setBlockReportAction:0];
  [(CNContactContentUnitaryViewController *)selfCopy setAddFavoriteAction:0];
  [(CNContactContentUnitaryViewController *)selfCopy setCreateReminderAction:0];
  [(CNContactContentUnitaryViewController *)selfCopy setShareContactAction:0];
  [(CNContactContentUnitaryViewController *)selfCopy setIgnoreContactAction:0];
  [(CNContactContentUnitaryViewController *)selfCopy setCardMedicalIDGroup:0];
  [(CNContactContentUnitaryViewController *)selfCopy setMedicalIDAction:0];
  [(CNContactContentUnitaryViewController *)selfCopy setGameCenterGroup:0];
  [(CNContactContentUnitaryViewController *)selfCopy setCardGameCenterActionGroup:0];
  [(CNContactContentUnitaryViewController *)selfCopy setGameCenterAddFriendAction:0];
  selfCopy->_gameCenterFriendStatus = 0;
  [(CNContactContentUnitaryViewController *)selfCopy setNamePickingGroup:0];
  [(CNContactContentUnitaryViewController *)selfCopy setCardSharedProfileGroup:0];
  [(CNContactContentUnitaryViewController *)selfCopy setMeCardSharedProfileGroup:0];
  [(CNContactContentUnitaryViewController *)selfCopy setCardEditingGeminiGroup:0];
  cardStaticIdentityGroup = selfCopy->_cardStaticIdentityGroup;
  selfCopy->_cardStaticIdentityGroup = 0;

  selfCopy->_didLookUpStaticIdentity = 0;
  cachedStaticIdentity = selfCopy->_cachedStaticIdentity;
  selfCopy->_cachedStaticIdentity = 0;

  selfCopy->_didFindStaticIdentity = 0;
  cachedVerifiedHandles = selfCopy->_cachedVerifiedHandles;
  selfCopy->_cachedVerifiedHandles = 0;

  mutableContactForHeaderView = selfCopy->_mutableContactForHeaderView;
  selfCopy->_mutableContactForHeaderView = 0;

  sharedProfileStateOracle = selfCopy->_sharedProfileStateOracle;
  selfCopy->_sharedProfileStateOracle = 0;

  if (![(CNContactContentUnitaryViewController *)selfCopy isOutOfProcess]|| [(CNContactContentUnitaryViewController *)selfCopy outOfProcessSetupComplete])
  {
    if (selfCopy->_editingHeaderView)
    {
      editingHeaderView = [(CNContactContentUnitaryViewController *)selfCopy editingHeaderView];
      mutableContactForHeaderView = [(CNContactContentUnitaryViewController *)selfCopy mutableContactForHeaderView];
      [editingHeaderView updateWithNewContact:mutableContactForHeaderView];
    }

    shouldUseStaticHeader = [(CNContactContentUnitaryViewController *)selfCopy shouldUseStaticHeader];
    authorizationCheck = [(CNContactContentUnitaryViewController *)selfCopy authorizationCheck];
    shouldPromptForPasscodeAuthorization = [authorizationCheck shouldPromptForPasscodeAuthorization];
    if (shouldUseStaticHeader)
    {
      staticDisplayHeaderView = [(CNContactContentUnitaryViewController *)selfCopy staticDisplayHeaderView];
      [staticDisplayHeaderView setIsRestrictedContact:shouldPromptForPasscodeAuthorization];

      v130 = MEMORY[0x1E695CE70];
      mutableContactForHeaderView2 = [(CNContactContentUnitaryViewController *)selfCopy mutableContactForHeaderView];
      v132 = [v130 isWhitelistedContact:mutableContactForHeaderView2];
      staticDisplayHeaderView2 = [(CNContactContentUnitaryViewController *)selfCopy staticDisplayHeaderView];
      [staticDisplayHeaderView2 setIsDowntimeContact:v132];

      staticDisplayHeaderView3 = [(CNContactContentUnitaryViewController *)selfCopy staticDisplayHeaderView];
      mutableContactForHeaderView3 = [(CNContactContentUnitaryViewController *)selfCopy mutableContactForHeaderView];
      [staticDisplayHeaderView3 updateWithNewContact:mutableContactForHeaderView3];

      [(CNContactContentUnitaryViewController *)selfCopy displayFloatingCollapsedHeaderView];
    }

    else
    {
      displayHeaderView = [(CNContactContentUnitaryViewController *)selfCopy displayHeaderView];
      [displayHeaderView setIsRestrictedContact:shouldPromptForPasscodeAuthorization];

      v137 = MEMORY[0x1E695CE70];
      mutableContactForHeaderView4 = [(CNContactContentUnitaryViewController *)selfCopy mutableContactForHeaderView];
      v139 = [v137 isWhitelistedContact:mutableContactForHeaderView4];
      displayHeaderView2 = [(CNContactContentUnitaryViewController *)selfCopy displayHeaderView];
      [displayHeaderView2 setIsDowntimeContact:v139];

      [(CNContactContentUnitaryViewController *)selfCopy displayHeaderView];
    }
    v141 = ;
    mutableContactForHeaderView5 = [(CNContactContentUnitaryViewController *)selfCopy mutableContactForHeaderView];
    [v141 updateWithNewContact:mutableContactForHeaderView5];

    [(CNContactContentUnitaryViewController *)selfCopy updateEditNavigationItemsAnimated:0];
  }

  [(CNContactContentUnitaryViewController *)selfCopy setContactSupportsTTYCalls:0];
  shareLocationController = [(CNContactContentUnitaryViewController *)selfCopy shareLocationController];
  [shareLocationController setContact:v149];

  actionsViewController = [(CNContactContentUnitaryViewController *)selfCopy actionsViewController];
  [actionsViewController setContact:v149];

  if ([(CNContactContentUnitaryViewController *)selfCopy shouldUseStaticHeader])
  {
    floatingActionsViewController = [(CNContactContentUnitaryViewController *)selfCopy floatingActionsViewController];
    [floatingActionsViewController setContact:v149];
  }

  [(CNContactContentUnitaryViewController *)selfCopy reloadDataPreservingChanges:0];
  if ([(CNContactContentUnitaryViewController *)selfCopy isViewLoaded]&& v151)
  {
    displayContactView = [(CNContactContentUnitaryViewController *)selfCopy displayContactView];
    [(CNContactContentUnitaryViewController *)selfCopy scrollScrollViewAllTheWayUp:displayContactView];
  }

  v147 = +[CNUIDataCollector sharedCollector];
  contact = [(CNContactContentUnitaryViewController *)selfCopy contact];
  [v147 logContactShown:contact];

  [(CNContactContentUnitaryViewController *)selfCopy prepareContactDidAppearForPPT];
  [(CNContactContentUnitaryViewController *)selfCopy updateActionsControllerByType];

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

- (void)setupContainerContextIfNeededForContact:(id)contact
{
  v28 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if ([(CNContactContentUnitaryViewController *)self shouldAllowContainerPicking])
  {
    containerContext = [(CNContactContentUnitaryViewController *)self containerContext];

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
              contactViewCache = [(CNContactContentUnitaryViewController *)self contactViewCache];
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

      parentContainer = [(CNContactContentViewController *)self parentContainer];

      if (parentContainer && identifier)
      {
        parentContainer2 = [(CNContactContentViewController *)self parentContainer];
        [dictionary setObject:parentContainer2 forKeyedSubscript:identifier];
      }

      v19 = [[CNUIContainerContext alloc] initWithContainers:dictionary];
      parentContainer3 = [(CNContactContentViewController *)self parentContainer];

      if (parentContainer3 && !identifier)
      {
        parentContainer4 = [(CNContactContentViewController *)self parentContainer];
        [(CNUIContainerContext *)v19 addContainer:parentContainer4];
      }

      [(CNContactContentUnitaryViewController *)self setContainerContext:v19];
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
    parentContainer = [(CNContactContentViewController *)self parentContainer];
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
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView applyCellAppearance:cellCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_40;
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
LABEL_21:

    labelTextAttributes = actionTextAttributes;
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
    actionsDataSource = [(CNContactContentUnitaryViewController *)self actionsDataSource];
    [v15 setActionsDataSource:actionsDataSource];

    contact = [(CNContactContentUnitaryViewController *)self contact];
    [v15 setContact:contact];

    actionTextAttributes = [contactView valueTextAttributes];

    labelTextAttributes = v15;
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

    defaultAppProvider = [(CNContactContentUnitaryViewController *)self defaultAppProvider];
    [v15 setDefaultAppProvider:defaultAppProvider];

    goto LABEL_20;
  }

LABEL_22:
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    valueTextAttributes2 = [contactView valueTextAttributes];

    labelTextAttributes = valueTextAttributes2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    view = [(CNContactContentUnitaryViewController *)self view];
    tintColorOverride = [view tintColorOverride];
    suggestedLabelTextColor = 0;
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v5;
    if ([v34 supportsValueColorUsesLabelColor])
    {
      v35 = +[CNContactStyle currentStyle];
      tintColorOverride = [v35 textColor];
    }

    else
    {
      tintColorOverride = 0;
    }

    highlightedProperties = [(CNContactContentUnitaryViewController *)self highlightedProperties];
    if ([highlightedProperties count])
    {
      highlightedProperties2 = [(CNContactContentUnitaryViewController *)self highlightedProperties];
      propertyItem = [v34 propertyItem];
      v50 = highlightedProperties;
      [propertyItem contactProperty];
      v39 = v38 = v34;
      [v38 setHighlightedProperty:{objc_msgSend(highlightedProperties2, "containsObject:", v39)}];

      v34 = v38;
      highlightedProperties = v50;
    }

    else
    {
      [v34 setHighlightedProperty:0];
    }

    if ([v34 isSuggested])
    {
      v40 = +[CNContactStyle currentStyle];
      suggestedLabelTextColor = [v40 suggestedLabelTextColor];

      view2 = +[CNContactStyle currentStyle];
      suggestedValueTextColor = [view2 suggestedValueTextColor];
    }

    else
    {
      if ([v34 isHighlightedProperty] && -[CNContactContentUnitaryViewController highlightedPropertyImportant](self, "highlightedPropertyImportant"))
      {
        [v34 setImportant:{-[CNContactContentUnitaryViewController highlightedPropertyImportant](self, "highlightedPropertyImportant")}];
        suggestedValueTextColor = [MEMORY[0x1E69DC888] redColor];
        suggestedLabelTextColor = 0;
        goto LABEL_60;
      }

      if ((-[CNContactContentUnitaryViewController isEditing](self, "isEditing") & 1) != 0 || ![v34 supportsTintColorValue])
      {
        suggestedLabelTextColor = 0;
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
          v46 = [valueTextAttributes mutableCopy];
          cnui_bodyFontWithCaseSensitiveAttributes = [MEMORY[0x1E69DB878] cnui_bodyFontWithCaseSensitiveAttributes];
          [v46 setObject:cnui_bodyFontWithCaseSensitiveAttributes forKeyedSubscript:*MEMORY[0x1E69DB648]];

          valueTextAttributes = v46;
        }

        if (!suggestedLabelTextColor)
        {
LABEL_32:
          if (tintColorOverride)
          {
            v25 = [valueTextAttributes mutableCopy];
            [v25 setObject:tintColorOverride forKeyedSubscript:*MEMORY[0x1E69DB650]];

            valueTextAttributes = v25;
          }

          if (isKindOfClass)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v48 = [labelTextAttributes mutableCopy];
        [v48 setObject:suggestedLabelTextColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
        view = labelTextAttributes;
        labelTextAttributes = v48;
LABEL_31:

        goto LABEL_32;
      }

      view2 = [(CNContactContentUnitaryViewController *)self view];
      suggestedValueTextColor = [view2 tintColorOverride];

      suggestedLabelTextColor = 0;
    }

    tintColorOverride = view2;
LABEL_60:

    tintColorOverride = suggestedValueTextColor;
    goto LABEL_68;
  }

  suggestedLabelTextColor = 0;
  if (isKindOfClass)
  {
    goto LABEL_36;
  }

LABEL_35:
  labelTextAttributes2 = [v7 labelTextAttributes];
  v27 = [labelTextAttributes2 isEqual:labelTextAttributes];

  if ((v27 & 1) == 0)
  {
LABEL_36:
    [v7 setLabelTextAttributes:labelTextAttributes];
  }

  valueTextAttributes3 = [v7 valueTextAttributes];
  v29 = [valueTextAttributes3 isEqual:valueTextAttributes];

  if ((v29 & 1) == 0)
  {
    [v7 setValueTextAttributes:valueTextAttributes];
  }

LABEL_40:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v30 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    labelTextAttributes3 = [contactView labelTextAttributes];
    [v32 setLabelTextAttributes:labelTextAttributes3];
  }
}

- (void)setImportantMessage:(id)message
{
  messageCopy = message;
  if (([messageCopy isEqualToString:self->_importantMessage] & 1) == 0)
  {
    objc_storeStrong(&self->_importantMessage, message);
    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self displayHeaderView];
    }
    v5 = ;
    [v5 setImportantMessage:messageCopy];
  }
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  if (([messageCopy isEqualToString:self->_message] & 1) == 0)
  {
    objc_storeStrong(&self->_message, message);
    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self displayHeaderView];
    }
    v5 = ;
    [v5 setMessage:messageCopy];
  }
}

- (void)setUpFloatingActionsViewController
{
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    createActionsController = [(CNContactContentUnitaryViewController *)self createActionsController];
    floatingActionsViewController = self->_floatingActionsViewController;
    self->_floatingActionsViewController = createActionsController;

    [(CNContactInlineActionsViewController *)self->_floatingActionsViewController setObjectViewControllerDelegate:self];
    [(CNContactInlineActionsViewController *)self->_floatingActionsViewController setDelegate:self];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    [(CNContactInlineActionsViewController *)self->_floatingActionsViewController setContact:contact];

    [(CNContactContentUnitaryViewController *)self addChildViewController:self->_floatingActionsViewController];
    [(CNContactInlineActionsViewController *)self->_floatingActionsViewController didMoveToParentViewController:self];
    floatingActionsWrapperView = self->_floatingActionsWrapperView;
    view = [(CNContactInlineActionsViewController *)self->_floatingActionsViewController view];
    [(CNContactActionsContainerView *)floatingActionsWrapperView addArrangedSubview:view];
  }
}

- (void)rebuildActionsViewControllers
{
  [(CNContactInlineActionsViewController *)self->_actionsViewController willMoveToParentViewController:0];
  [(CNContactInlineActionsViewController *)self->_actionsViewController removeFromParentViewController];
  view = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
  [view removeFromSuperview];

  if (![(CNContactContentUnitaryViewController *)self isInlineContactCard])
  {
    createActionsController = [(CNContactContentUnitaryViewController *)self createActionsController];
    actionsViewController = self->_actionsViewController;
    self->_actionsViewController = createActionsController;

    [(CNContactInlineActionsViewController *)self->_actionsViewController setObjectViewControllerDelegate:self];
    [(CNContactInlineActionsViewController *)self->_actionsViewController setDelegate:self];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    [(CNContactInlineActionsViewController *)self->_actionsViewController setContact:contact];

    [(CNContactContentUnitaryViewController *)self addChildViewController:self->_actionsViewController];
    [(CNContactInlineActionsViewController *)self->_actionsViewController didMoveToParentViewController:self];
    actionsWrapperView = self->_actionsWrapperView;
    view2 = [(CNContactInlineActionsViewController *)self->_actionsViewController view];
    [(CNContactActionsContainerView *)actionsWrapperView addArrangedSubview:view2];

    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      [(CNContactInlineActionsViewController *)self->_floatingActionsViewController willMoveToParentViewController:0];
      [(CNContactInlineActionsViewController *)self->_floatingActionsViewController removeFromParentViewController];
      view3 = [(CNContactInlineActionsViewController *)self->_floatingActionsViewController view];
      [view3 removeFromSuperview];

      if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
      {

        [(CNContactContentUnitaryViewController *)self setUpFloatingActionsViewController];
      }
    }
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  displayContactView = [(CNContactContentUnitaryViewController *)self displayContactView];
  [displayContactView updateFontSizes];

  [(CNContactView *)self->_editingContactView updateFontSizes];
  if (![(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    displayHeaderView = [(CNContactContentUnitaryViewController *)self displayHeaderView];
    [displayHeaderView updateFontSizes];
LABEL_7:

    goto LABEL_8;
  }

  staticDisplayHeaderView = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
  [staticDisplayHeaderView updateFontSizes];

  displayFloatingCollapsedHeaderView = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
  [displayFloatingCollapsedHeaderView updateFontSizes];

  if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
  {
    displayHeaderView = 0;
  }

  else
  {
    displayHeaderView = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
  }

  displayFloatingCollapsedHeaderView2 = [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
  [displayFloatingCollapsedHeaderView2 setActionsWrapperView:displayHeaderView];

  if ((ab_preferredContentSizeCategoryIsAccessibilityCategory & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  editingHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
  [editingHeaderView updateFontSizes];

  [(CNContactView *)self->_displayContactView setTableHeaderView:0];
  [(CNContactContentUnitaryViewController *)self rebuildActionsViewControllers];
  [(CNContactContentUnitaryViewController *)self viewDidLayoutSubviews];
  [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
  [(CNContactContentUnitaryViewController *)self setupViewHierarchyAndConstraints];
  applyContactStyle = [(CNContactContentUnitaryViewController *)self applyContactStyle];
}

- (id)cardActions
{
  cardActionsGroup = [(CNContactContentUnitaryViewController *)self cardActionsGroup];
  actions = [cardActionsGroup actions];

  return actions;
}

- (void)setShowsInlineActions:(BOOL)actions
{
  if (self->_showsInlineActions != actions)
  {
    self->_showsInlineActions = actions;
    if (self->_actionsViewController)
    {
      [(CNContactContentUnitaryViewController *)self rebuildActionsViewControllers];
    }

    if (!actions)
    {

      [(CNContactContentUnitaryViewController *)self _notifyObservers];
    }
  }
}

- (void)setAllowsEditPhoto:(BOOL)photo preservingChanges:(BOOL)changes
{
  if (self->_allowsEditPhoto != photo)
  {
    changesCopy = changes;
    photoCopy = photo;
    self->_allowsEditPhoto = photo;
    editingHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
    [editingHeaderView setAllowsEditPhoto:photoCopy preservingChanges:changesCopy];
  }
}

- (void)setAllowsDisplayModePickerActions:(BOOL)actions
{
  if (self->_allowsDisplayModePickerActions != actions)
  {
    actionsCopy = actions;
    self->_allowsDisplayModePickerActions = actions;
    if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
    {
      [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    }

    else
    {
      [(CNContactContentUnitaryViewController *)self displayHeaderView];
    }
    v6 = ;
    [v6 setAllowsPickerActions:actionsCopy];

    [(CNContactContentUnitaryViewController *)self _reloadAlertGroups];
  }
}

- (void)setAlternateName:(id)name
{
  nameCopy = name;
  objc_storeStrong(&self->_alternateName, name);
  if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    staticDisplayHeaderView = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
    [staticDisplayHeaderView setAlternateName:nameCopy];

    [(CNContactContentUnitaryViewController *)self displayFloatingCollapsedHeaderView];
  }

  else
  {
    [(CNContactContentUnitaryViewController *)self displayHeaderView];
  }
  v6 = ;
  [v6 setAlternateName:nameCopy];
}

- (void)setShowContactBlockingFirst:(BOOL)first
{
  if (self->_showContactBlockingFirst != first)
  {
    self->_showContactBlockingFirst = first;
    [(CNContactContentUnitaryViewController *)self reloadDataPreservingChanges:1];
  }
}

- (void)setIsMailVIP:(BOOL)p
{
  pCopy = p;
  self->_isMailVIP = p;
  pendingContactCardPropertyViewConfiguration = [(CNContactContentUnitaryViewController *)self pendingContactCardPropertyViewConfiguration];
  isMailVIP = [pendingContactCardPropertyViewConfiguration isMailVIP];

  if (isMailVIP != pCopy)
  {
    pendingContactCardPropertyViewConfiguration2 = [(CNContactContentUnitaryViewController *)self pendingContactCardPropertyViewConfiguration];
    [pendingContactCardPropertyViewConfiguration2 setIsMailVIP:pCopy];

    [(CNContactContentUnitaryViewController *)self _lazyUpdateContactCardPropertyViewConfiguration];
  }

  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  v8 = [(CNContactContentUnitaryViewController *)self cardGroupForProperty:*MEMORY[0x1E695C208]];
  v9 = [(CNContactContentUnitaryViewController *)self sectionOfGroup:v8 inTableView:contactView];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndex:v9];
    [contactView reloadSections:v10 withRowAnimation:100];
  }
}

- (void)setDisplayedProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->_displayedProperties != propertiesCopy)
  {
    v11 = propertiesCopy;
    if ([(NSArray *)propertiesCopy count])
    {
      v6 = [(NSArray *)v11 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactContentUnitaryViewController.m" lineNumber:1435 description:{@"Properties should be strings, are you still using old AB properties?"}];
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
    propertiesCopy = v11;
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
    environment = [(CNContactContentUnitaryViewController *)self environment];
    v3 = [(CNContactInlineActionsViewController *)v4 initWithActionListDataSource:actionsDataSource environment:environment];

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

    view = [(CNContactInlineActionsViewController *)v3 view];
    LODWORD(v9) = 1148846080;
    [view setContentCompressionResistancePriority:0 forAxis:v9];
  }

  return v3;
}

- (BOOL)isHeaderViewPhotoProhibited
{
  prohibitedPropertyKeys = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
  if ([prohibitedPropertyKeys containsObject:*MEMORY[0x1E695C278]])
  {
    v4 = 1;
  }

  else
  {
    prohibitedPropertyKeys2 = [(CNContactContentUnitaryViewController *)self prohibitedPropertyKeys];
    v4 = [prohibitedPropertyKeys2 containsObject:*MEMORY[0x1E695C400]];
  }

  return v4;
}

- (CNContactView)displayContactView
{
  if (!self->_displayContactView)
  {
    v3 = [CNContactView alloc];
    tableViewStyle = [objc_opt_class() tableViewStyle];
    contact = [(CNContactContentUnitaryViewController *)self contact];
    v6 = [(CNContactView *)v3 initWithFrame:tableViewStyle style:contact contact:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    displayContactView = self->_displayContactView;
    self->_displayContactView = v6;

    [(CNContactView *)self->_displayContactView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactView *)self->_displayContactView setDataSource:self];
    [(CNContactView *)self->_displayContactView setDelegate:self];
    [(CNContactView *)self->_displayContactView _setHeaderAndFooterViewsFloat:0];
    environment = [(CNContactContentUnitaryViewController *)self environment];
    if ([environment runningInContactsAppOniPad])
    {
    }

    else
    {
      traitCollection = [(CNContactContentUnitaryViewController *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom != 3)
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
    isHeaderViewPhotoProhibited = [(CNContactContentUnitaryViewController *)self isHeaderViewPhotoProhibited];
    layoutPositionallyAfterNavBar = [(CNContactContentUnitaryViewController *)self shouldDrawNavigationBar]|| [(CNContactContentUnitaryViewController *)self layoutPositionallyAfterNavBar];
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    v7 = [CNContactHeaderEditView contactHeaderViewWithContact:mutableContact shouldAllowTakePhotoAction:1 showingNavBar:layoutPositionallyAfterNavBar monogramOnly:isHeaderViewPhotoProhibited isOutOfProcess:[(CNContactContentUnitaryViewController *)self isOutOfProcess] delegate:self];
    v8 = self->_editingHeaderView;
    self->_editingHeaderView = v7;

    presentingDelegate = [(CNContactContentUnitaryViewController *)self presentingDelegate];
    [(CNContactHeaderEditView *)self->_editingHeaderView setPresenterDelegate:presentingDelegate];

    v10 = +[CNContactStyle currentStyle];
    contactHeaderBackgroundColor = [v10 contactHeaderBackgroundColor];
    [(CNContactHeaderEditView *)self->_editingHeaderView setBackgroundColor:contactHeaderBackgroundColor];

    [(CNContactHeaderEditView *)self->_editingHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactHeaderEditView *)self->_editingHeaderView setAllowsEditPhoto:[(CNContactContentUnitaryViewController *)self allowsEditPhoto]& !isHeaderViewPhotoProhibited];
    applyContactStyle = [(CNContactContentUnitaryViewController *)self applyContactStyle];
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
    applyContactStyle = [(CNContactContentUnitaryViewController *)self applyContactStyle];
    editingFloatingCollapsedHeaderView = self->_editingFloatingCollapsedHeaderView;
  }

  return editingFloatingCollapsedHeaderView;
}

- (CNContactHeaderCollapsedView)displayFloatingCollapsedHeaderView
{
  displayFloatingCollapsedHeaderView = self->_displayFloatingCollapsedHeaderView;
  if (!displayFloatingCollapsedHeaderView)
  {
    isHeaderViewPhotoProhibited = [(CNContactContentUnitaryViewController *)self isHeaderViewPhotoProhibited];
    ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    v7 = [CNContactHeaderCollapsedView collapsedContactHeaderViewWithContact:mutableContact showingNavBar:[(CNContactContentUnitaryViewController *)self layoutPositionallyAfterNavBar] monogramOnly:isHeaderViewPhotoProhibited delegate:self];
    v8 = self->_displayFloatingCollapsedHeaderView;
    self->_displayFloatingCollapsedHeaderView = v7;

    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setActionsWrapperView:0];
    }

    else
    {
      floatingActionsWrapperView = [(CNContactContentUnitaryViewController *)self floatingActionsWrapperView];
      [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setActionsWrapperView:floatingActionsWrapperView];
    }

    [(CNContactHeaderView *)self->_displayFloatingCollapsedHeaderView setAlwaysShowsMonogram:1];
    contactFormatter = [(CNContactContentUnitaryViewController *)self contactFormatter];
    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setContactFormatter:contactFormatter];

    alternateName = [(CNContactContentUnitaryViewController *)self alternateName];
    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setAlternateName:alternateName];

    presentingDelegate = [(CNContactContentUnitaryViewController *)self presentingDelegate];
    [(CNContactHeaderView *)self->_displayFloatingCollapsedHeaderView setPresenterDelegate:presentingDelegate];

    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setHidden:1];
    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView showLabelAndAvatar:0 animated:0];
    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    [(CNContactHeaderCollapsedView *)self->_displayFloatingCollapsedHeaderView setBackgroundColor:lightGrayColor];

    applyContactStyle = [(CNContactContentUnitaryViewController *)self applyContactStyle];
    displayFloatingCollapsedHeaderView = self->_displayFloatingCollapsedHeaderView;
  }

  return displayFloatingCollapsedHeaderView;
}

- (CNContactHeaderDisplayView)displayHeaderView
{
  displayHeaderView = self->_displayHeaderView;
  if (!displayHeaderView)
  {
    isHeaderViewPhotoProhibited = [(CNContactContentUnitaryViewController *)self isHeaderViewPhotoProhibited];
    mutableContact = [(CNContactContentUnitaryViewController *)self mutableContact];
    v6 = [CNContactHeaderDisplayView contactHeaderViewWithContact:mutableContact showingNavBar:[(CNContactContentUnitaryViewController *)self layoutPositionallyAfterNavBar] monogramOnly:isHeaderViewPhotoProhibited delegate:self];
    v7 = self->_displayHeaderView;
    self->_displayHeaderView = v6;

    [(CNContactHeaderView *)self->_displayHeaderView setAlwaysShowsMonogram:1];
    contactFormatter = [(CNContactContentUnitaryViewController *)self contactFormatter];
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setContactFormatter:contactFormatter];

    alternateName = [(CNContactContentUnitaryViewController *)self alternateName];
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setAlternateName:alternateName];

    message = [(CNContactContentUnitaryViewController *)self message];
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setMessage:message];

    importantMessage = [(CNContactContentUnitaryViewController *)self importantMessage];
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setImportantMessage:importantMessage];

    presentingDelegate = [(CNContactContentUnitaryViewController *)self presentingDelegate];
    [(CNContactHeaderView *)self->_displayHeaderView setPresenterDelegate:presentingDelegate];

    [(CNContactHeaderDisplayView *)self->_displayHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setAllowsPickerActions:[(CNContactContentUnitaryViewController *)self allowsDisplayModePickerActions]];
    [(CNContactHeaderEditView *)self->_editingHeaderView setAllowsEditPhoto:isHeaderViewPhotoProhibited ^ 1];
    applyContactStyle = [(CNContactContentUnitaryViewController *)self applyContactStyle];
    displayHeaderView = self->_displayHeaderView;
  }

  return displayHeaderView;
}

- (id)contactHeaderView
{
  if ([(CNContactContentUnitaryViewController *)self isEditing])
  {
    editingHeaderView = [(CNContactContentUnitaryViewController *)self editingHeaderView];
  }

  else if ([(CNContactContentUnitaryViewController *)self shouldUseStaticHeader])
  {
    editingHeaderView = [(CNContactContentUnitaryViewController *)self staticDisplayHeaderView];
  }

  else
  {
    shouldShowSwiftUIContactCard = [(CNContactContentViewController *)self hideHeaderView]|| [(CNContactContentUnitaryViewController *)self shouldShowSwiftUIContactCard];
    displayHeaderView = [(CNContactContentUnitaryViewController *)self displayHeaderView];
    [displayHeaderView setHidden:shouldShowSwiftUIContactCard];

    editingHeaderView = [(CNContactContentUnitaryViewController *)self displayHeaderView];
  }

  return editingHeaderView;
}

- (CNMutableContact)mutableContactForHeaderView
{
  selfCopy = self;
  if (!-[CNContactContentUnitaryViewController shouldUseSharedProfile](self, "shouldUseSharedProfile") || ([MEMORY[0x1E69966E8] currentEnvironment], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "featureFlags"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isFeatureEnabled:", 27), v4, v3, !v5) || -[CNContactContentUnitaryViewController savingPersonalSharedProfile](selfCopy, "savingPersonalSharedProfile") || (objc_msgSend(MEMORY[0x1E69966E8], "currentEnvironment"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "nicknameProvider"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isNicknameSharingEnabled"), v7, v6, !v8))
  {
    p_mutableContact = &selfCopy->_mutableContact;
    goto LABEL_11;
  }

  p_mutableContact = &selfCopy->_mutableContactForHeaderView;
  mutableContactForHeaderView = selfCopy->_mutableContactForHeaderView;
  if (mutableContactForHeaderView)
  {
LABEL_12:
    selfCopy = mutableContactForHeaderView;
    goto LABEL_13;
  }

  v11 = objc_alloc_init(MEMORY[0x1E69967D0]);
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__CNContactContentUnitaryViewController_mutableContactForHeaderView__block_invoke;
  v26[3] = &unk_1E74E6AD0;
  v14 = v11;
  v27 = v14;
  [nicknameProvider fetchPersonalNicknameAsContactWithCompletion:v26];

  v15 = *MEMORY[0x1E6996590];
  future = [v14 future];
  v17 = [future resultWithTimeout:0 error:0.2];
  v18 = (*(v15 + 16))(v15, v17);

  if (v18)
  {
    v19 = CNUILogContactCard();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEFAULT, "Personal nickname fetched from IMNicknameProvider, me card will show shared profile photo and poster", v25, 2u);
    }

    imageData = [v18 imageData];
    [(CNMutableContact *)selfCopy->_mutableContact setImageData:imageData];

    thumbnailImageData = [v18 thumbnailImageData];
    [(CNMutableContact *)selfCopy->_mutableContact setThumbnailImageData:thumbnailImageData];

    [(CNMutableContact *)selfCopy->_mutableContact setCropRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    wallpaper = [v18 wallpaper];
    [(CNMutableContact *)selfCopy->_mutableContact setWallpaper:wallpaper];

    watchWallpaperImageData = [v18 watchWallpaperImageData];
    [(CNMutableContact *)selfCopy->_mutableContact setWatchWallpaperImageData:watchWallpaperImageData];

    objc_storeStrong(&selfCopy->_mutableContactForHeaderView, selfCopy->_mutableContact);
  }

  else
  {
    objc_storeStrong(&selfCopy->_mutableContactForHeaderView, selfCopy->_mutableContact);
    selfCopy = *p_mutableContact;
  }

  if (v18)
  {
LABEL_11:
    mutableContactForHeaderView = *p_mutableContact;
    goto LABEL_12;
  }

LABEL_13:

  return selfCopy;
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
  headerHeightConstraint = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];

  if (headerHeightConstraint)
  {
    v4 = MEMORY[0x1E696ACD8];
    headerHeightConstraint2 = [(CNContactContentUnitaryViewController *)self headerHeightConstraint];
    v12[0] = headerHeightConstraint2;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v4 deactivateConstraints:v6];
  }

  actionsDataSource = self->_actionsDataSource;
  self->_actionsDataSource = 0;

  [(CNContactAction *)self->_addFavoriteAction setDelegate:0];
  iMessageIDSLookupToken = [(CNContactContentUnitaryViewController *)self iMessageIDSLookupToken];
  [iMessageIDSLookupToken cancel];

  faceTimeIDSLookupToken = [(CNContactContentUnitaryViewController *)self faceTimeIDSLookupToken];
  [faceTimeIDSLookupToken cancel];

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v11.receiver = self;
  v11.super_class = CNContactContentUnitaryViewController;
  [(CNContactContentUnitaryViewController *)&v11 dealloc];
}

- (void)setAllowsContactBlockingAndReporting:(BOOL)reporting
{
  reportingCopy = reporting;
  allowsContactBlockingAndReporting = self->_allowsContactBlockingAndReporting;
  self->_allowsContactBlockingAndReporting = reporting;
  delegate = [(CNContactContentUnitaryViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
    [delegate2 didSetAction:2048 allowed:reportingCopy];
  }

  if (allowsContactBlockingAndReporting != reportingCopy)
  {

    [(CNContactContentUnitaryViewController *)self _debouncedReloadDataPreservingChanges:1];
  }
}

- (void)setAllowsContactBlocking:(BOOL)blocking
{
  blockingCopy = blocking;
  allowsContactBlocking = self->_allowsContactBlocking;
  self->_allowsContactBlocking = blocking;
  delegate = [(CNContactContentUnitaryViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNContactContentUnitaryViewController *)self delegate];
    [delegate2 didSetAction:128 allowed:blockingCopy];
  }

  if (allowsContactBlocking != blockingCopy)
  {

    [(CNContactContentUnitaryViewController *)self _debouncedReloadDataPreservingChanges:1];
  }
}

- (void)setUsesBrandedCallHeaderFormat:(BOOL)format
{
  formatCopy = format;
  if (self->_usesBrandedCallHeaderFormat != format || [(CNContactHeaderDisplayView *)self->_displayHeaderView usesBrandedCallFormat]!= format || [(CNContactHeaderStaticDisplayView *)self->_staticDisplayHeaderView usesBrandedCallFormat]!= formatCopy)
  {
    self->_usesBrandedCallHeaderFormat = formatCopy;
    [(CNContactHeaderDisplayView *)self->_displayHeaderView setUsesBrandedCallFormat:formatCopy];
    staticDisplayHeaderView = self->_staticDisplayHeaderView;

    [(CNContactHeaderStaticDisplayView *)staticDisplayHeaderView setUsesBrandedCallFormat:formatCopy];
  }
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
    v9[2] = __72__CNContactContentUnitaryViewController_setForcesTransparentBackground___block_invoke;
    v9[3] = &unk_1E74E6A88;
    v9[4] = self;
    [mainThreadScheduler performBlock:v9];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (titleCopy || ([(CNContactContentUnitaryViewController *)self title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    title = [(CNContactContentUnitaryViewController *)self title];
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
      v8.super_class = CNContactContentUnitaryViewController;
      [(CNContactContentUnitaryViewController *)&v8 setTitle:titleCopy];
      [(CNContactContentUnitaryViewController *)self didChangeToShowTitle:titleCopy != 0];
    }
  }

LABEL_6:
}

- (void)setContactStore:(id)store
{
  objc_storeStrong(&self->_contactStore, store);
  storeCopy = store;
  actionsDataSource = [(CNContactContentUnitaryViewController *)self actionsDataSource];
  [actionsDataSource setContactStore:storeCopy];

  contactViewCache = [(CNContactContentUnitaryViewController *)self contactViewCache];
  [contactViewCache setContactStore:storeCopy];

  v8 = [[CNUIGroupsAndContainersSaveManager alloc] initWithContactStore:storeCopy];
  [(CNContactContentUnitaryViewController *)self setGroupsAndContainersSaveManager:v8];
}

- (void)setNameEditingGroups:(id)groups
{
  groupsCopy = groups;
  [(CNAggregatedPropertyNameGroups *)self->_aggregatedNameGroups setGroups:groupsCopy];
  v6 = NSStringFromSelector(sel_nameEditingGroups);
  [(CNContactContentUnitaryViewController *)self willChangeValueForKey:v6];
  nameEditingGroups = self->_nameEditingGroups;
  self->_nameEditingGroups = groupsCopy;

  [(CNContactContentUnitaryViewController *)self didChangeValueForKey:v6];
}

- (CNContactContentUnitaryViewController)initWithContact:(id)contact prohibitedPropertyKeys:(id)keys
{
  contactCopy = contact;
  keysCopy = keys;
  v8 = [(CNContactContentUnitaryViewController *)self initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(CNContactContentUnitaryViewController *)v8 setProhibitedPropertyKeys:keysCopy];
    [(CNContactContentUnitaryViewController *)v9 setContact:contactCopy];
    v10 = v9;
  }

  return v9;
}

- (id)initForInlineContactCardWithContact:(id)contact
{
  contactCopy = contact;
  v5 = +[CNUIContactsEnvironment currentEnvironment];
  v6 = [(CNContactContentUnitaryViewController *)self initWithEnvironment:v5 isInlineContactCard:1];

  if (v6)
  {
    [(CNContactContentViewController *)v6 setShouldShowLinkedContacts:1];
    [(CNContactContentUnitaryViewController *)v6 setContact:contactCopy];
  }

  return v6;
}

- (CNContactContentUnitaryViewController)initWithContact:(id)contact
{
  contactCopy = contact;
  v5 = [(CNContactContentUnitaryViewController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(CNContactContentUnitaryViewController *)v5 setContact:contactCopy];
  }

  return v6;
}

- (CNContactContentUnitaryViewController)initWithEnvironment:(id)environment isInlineContactCard:(BOOL)card
{
  v107[1] = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  v104.receiver = self;
  v104.super_class = CNContactContentUnitaryViewController;
  v8 = [(CNContactContentViewController *)&v104 initWithEnvironment:environmentCopy];
  objc_storeStrong(&v8->_environment, environment);
  v9 = objc_alloc_init(CNContactViewCache);
  contactViewCache = v8->_contactViewCache;
  v8->_contactViewCache = v9;

  if ([MEMORY[0x1E695CEB0] deviceSupportsGemini])
  {
    v11 = objc_alloc(MEMORY[0x1E6996B60]);
    v12 = +[CNUIContactsEnvironment currentEnvironment];
    geminiManager = [v12 geminiManager];
    v14 = [v11 initWithGeminiManager:geminiManager];
    geminiDataSource = v8->_geminiDataSource;
    v8->_geminiDataSource = v14;

    [(CNUIGeminiDataSource *)v8->_geminiDataSource setDelegate:v8];
  }

  v16 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v16 defaultSchedulerProvider];
  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];
  mainThreadScheduler = v8->_mainThreadScheduler;
  v8->_mainThreadScheduler = mainThreadScheduler;

  v20 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider2 = [v20 defaultSchedulerProvider];
  v22 = [defaultSchedulerProvider2 newSerialSchedulerWithName:@"com.apple.ContactsUI.ktWorkQueue"];
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
  mEMORY[0x1E695CD80] = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  contactFormatter = v8->_contactFormatter;
  v8->_contactFormatter = mEMORY[0x1E695CD80];

  v27 = +[CNContactView allCardProperties];
  displayedProperties = v8->_displayedProperties;
  v8->_displayedProperties = v27;

  v8->_isInlineContactCard = card;
  traitCollection = [(CNContactContentUnitaryViewController *)v8 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    v8->_supportsSwiftUIContactCard = 0;
  }

  else
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v8->_supportsSwiftUIContactCard = [featureFlags isFeatureEnabled:11];
  }

  v8->_isShowingSNaPEditFlow = 0;
  v33 = MEMORY[0x1E698B6F8];
  if (!v8->_isInlineContactCard)
  {
    v34 = objc_alloc(MEMORY[0x1E6996BE8]);
    actionDiscoveringEnvironment = [environmentCopy actionDiscoveringEnvironment];
    v36 = [v34 initWithDiscoveringEnvironment:actionDiscoveringEnvironment];
    actionsDataSource = v8->_actionsDataSource;
    v8->_actionsDataSource = v36;

    createActionsController = [(CNContactContentUnitaryViewController *)v8 createActionsController];
    actionsViewController = v8->_actionsViewController;
    v8->_actionsViewController = createActionsController;

    [(CNContactInlineActionsViewController *)v8->_actionsViewController setObjectViewControllerDelegate:v8];
    [(CNContactInlineActionsViewController *)v8->_actionsViewController setDelegate:v8];
    [(CNContactContentUnitaryViewController *)v8 addChildViewController:v8->_actionsViewController];
    [(CNContactInlineActionsViewController *)v8->_actionsViewController didMoveToParentViewController:v8];
    v40 = [CNContactActionsContainerView alloc];
    view = [(CNContactInlineActionsViewController *)v8->_actionsViewController view];
    v107[0] = view;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:1];
    v43 = [(CNContactActionsContainerView *)v40 initWithArrangedSubviews:v42];
    actionsWrapperView = v8->_actionsWrapperView;
    v8->_actionsWrapperView = v43;

    [(CNContactActionsContainerView *)v8->_actionsWrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = *v33;
    view2 = [(CNContactInlineActionsViewController *)v8->_actionsViewController view];
    [view2 setMinimumLayoutSize:{v45, 35.0}];
  }

  if ([(CNContactContentUnitaryViewController *)v8 shouldUseStaticHeader])
  {
    createActionsController2 = [(CNContactContentUnitaryViewController *)v8 createActionsController];
    floatingActionsViewController = v8->_floatingActionsViewController;
    v8->_floatingActionsViewController = createActionsController2;

    [(CNContactInlineActionsViewController *)v8->_floatingActionsViewController setObjectViewControllerDelegate:v8];
    [(CNContactInlineActionsViewController *)v8->_floatingActionsViewController setDelegate:v8];
    [(CNContactContentUnitaryViewController *)v8 addChildViewController:v8->_floatingActionsViewController];
    [(CNContactInlineActionsViewController *)v8->_floatingActionsViewController didMoveToParentViewController:v8];
    v49 = [CNContactActionsContainerView alloc];
    view3 = [(CNContactInlineActionsViewController *)v8->_floatingActionsViewController view];
    v106 = view3;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
    v52 = [(CNContactActionsContainerView *)v49 initWithArrangedSubviews:v51];
    floatingActionsWrapperView = v8->_floatingActionsWrapperView;
    v8->_floatingActionsWrapperView = v52;

    [(CNContactActionsContainerView *)v8->_floatingActionsWrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
    v54 = +[CNUIColorRepository transparentBackgroundColor];
    [(CNContactActionsContainerView *)v8->_floatingActionsWrapperView setBackgroundColor:v54];

    v55 = *v33;
    view4 = [(CNContactInlineActionsViewController *)v8->_floatingActionsViewController view];
    [view4 setMinimumLayoutSize:{v55, 35.0}];

    v57 = objc_alloc_init(MEMORY[0x1E69DD250]);
    layer = [MEMORY[0x1E6979380] layer];
    layer2 = [(UIView *)v57 layer];
    [layer2 addSublayer:layer];

    contactViewBackgroundView = v8->_contactViewBackgroundView;
    v8->_contactViewBackgroundView = v57;
    v61 = v57;

    contactViewBackgroundGradientLayer = v8->_contactViewBackgroundGradientLayer;
    v8->_contactViewBackgroundGradientLayer = layer;

    displayContactView = [(CNContactContentUnitaryViewController *)v8 displayContactView];
    [displayContactView setBackgroundView:v61];
  }

  v64 = objc_opt_new();
  headerDropShadowView = v8->_headerDropShadowView;
  v8->_headerDropShadowView = v64;

  [(UIView *)v8->_headerDropShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
  environment = [(CNContactContentUnitaryViewController *)v8 environment];
  if ([environment runningInContactsAppOniPad])
  {
    backgroundColor = [(UIView *)v8->_headerDropShadowView backgroundColor];
    [(UIView *)v8->_headerDropShadowView setBackgroundColor:backgroundColor];
  }

  else
  {
    backgroundColor = +[CNContactStyle currentStyle];
    contactHeaderDropShadowColor = [backgroundColor contactHeaderDropShadowColor];
    [(UIView *)v8->_headerDropShadowView setBackgroundColor:contactHeaderDropShadowColor];
  }

  inProcessActivityManager = [environmentCopy inProcessActivityManager];
  activityManager = v8->_activityManager;
  v8->_activityManager = inProcessActivityManager;

  array = [MEMORY[0x1E695DEC8] array];
  customActions = v8->_customActions;
  v8->_customActions = array;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  customActionCardGroupsByPlacement = v8->_customActionCardGroupsByPlacement;
  v8->_customActionCardGroupsByPlacement = dictionary;

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v8 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:v8 selector:sel_localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:v8 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E695C3D8] object:0];

  defaultCenter4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter4 addObserver:v8 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E6996440] object:0 suspensionBehavior:4];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 addObserver:v8 selector:sel_keyboardDidShowNotification_ name:*MEMORY[0x1E69DDF78] object:0];

  defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter6 addObserver:v8 selector:sel_keyboardWillHideNotification_ name:*MEMORY[0x1E69DE078] object:0];

  v105 = objc_opt_class();
  v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  v94 = [(CNContactContentUnitaryViewController *)v8 registerForTraitChanges:v93 withHandler:&__block_literal_global_64801];

  defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter7 addObserver:v8 selector:sel_favoritesDidChangeWithNotification_ name:*MEMORY[0x1E695C458] object:0];

  currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags2 = [currentEnvironment2 featureFlags];
  v8->_supportsDrafts = [featureFlags2 isFeatureEnabled:31];

  if ([(CNContactContentUnitaryViewController *)v8 supportsDrafts])
  {
    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter8 addObserver:v8 selector:sel_applicationLeftForeground_ name:*MEMORY[0x1E69DDBC8] object:0];

    defaultCenter9 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter9 addObserver:v8 selector:sel_applicationLeftForeground_ name:*MEMORY[0x1E69DDBD0] object:0];
  }

  [(CNContactContentUnitaryViewController *)v8 setRestorationIdentifier:@"ContactCard"];
  [(CNContactContentUnitaryViewController *)v8 setRestorationClass:objc_opt_class()];
  navigationItem = [(CNContactContentUnitaryViewController *)v8 navigationItem];
  [navigationItem _setBackgroundHidden:1];

  navigationItem2 = [(CNContactContentUnitaryViewController *)v8 navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:2];

  applyContactStyle = [(CNContactContentUnitaryViewController *)v8 applyContactStyle];
  return v8;
}

- (CNContactContentUnitaryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = [CNUIContactsEnvironment currentEnvironment:name];
  v6 = [(CNContactContentUnitaryViewController *)self initWithEnvironment:v5];

  return v6;
}

+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder
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
  v4 = [allActions _cn_any:&__block_literal_global_974];

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

+ (id)descriptorForRequiredKeysWithDescription:(id)description
{
  descriptionCopy = description;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__CNContactContentUnitaryViewController_descriptorForRequiredKeysWithDescription___block_invoke;
  block[3] = &unk_1E74E6A88;
  v10 = descriptionCopy;
  v4 = descriptorForRequiredKeysWithDescription__cn_once_token_13_64827;
  v5 = descriptionCopy;
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
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentUnitaryViewController descriptorForRequiredKeysForContact:]"];
  v10 = [v8 descriptorWithKeyDescriptors:v7 description:v9];

  return v10;
}

@end