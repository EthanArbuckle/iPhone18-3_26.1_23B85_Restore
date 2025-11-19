@interface ICViewControllerManager
+ (id)trimBuffer:(id)a3 toFrameLength:(unsigned int)a4;
+ (void)createDonationOf:(NSURL *)a3 transcript:(NSString *)a4 date:(NSDate *)a5 isFeedbackPositive:(BOOL)a6 completionHandler:(id)a7;
- (BOOL)canAddNewNoteToSelectedContainers;
- (BOOL)canBeginEditingForNoteDisplayController:(id)a3;
- (BOOL)canPerformAddFolder;
- (BOOL)canPerformAddLink;
- (BOOL)canPerformAddNote;
- (BOOL)canPerformAttachFile;
- (BOOL)canPerformCmd1;
- (BOOL)canPerformCmd3;
- (BOOL)canPerformCmdReturnKey;
- (BOOL)canPerformCollapseAllSections;
- (BOOL)canPerformCollapseSection;
- (BOOL)canPerformConvertToSmartFolderAction;
- (BOOL)canPerformCreateSmartFolder;
- (BOOL)canPerformCreateSmartFolderFromSelectedTags;
- (BOOL)canPerformDeleteKey;
- (BOOL)canPerformDuplicateSelectedNote;
- (BOOL)canPerformEnclosingFolderKey;
- (BOOL)canPerformExpandAllSections;
- (BOOL)canPerformExpandSection;
- (BOOL)canPerformExportMarkdownAction;
- (BOOL)canPerformFindInNote;
- (BOOL)canPerformGotoNextNote;
- (BOOL)canPerformGotoPreviousNote;
- (BOOL)canPerformImportMarkdownAction;
- (BOOL)canPerformLockAllNotesAction;
- (BOOL)canPerformLockNoteAction;
- (BOOL)canPerformManageSharedFolderAction;
- (BOOL)canPerformPagesHandoffAction;
- (BOOL)canPerformPrintNote;
- (BOOL)canPerformRecordAudio;
- (BOOL)canPerformRenameAttachment;
- (BOOL)canPerformReplaceInNote;
- (BOOL)canPerformReturnKey;
- (BOOL)canPerformScanDocument;
- (BOOL)canPerformShareFolderAction;
- (BOOL)canPerformShareNoteAction;
- (BOOL)canPerformShowInNote;
- (BOOL)canPerformSystemPaperNavigateLeft;
- (BOOL)canPerformSystemPaperNavigateRight;
- (BOOL)canPerformSystemPaperShowInNotes;
- (BOOL)canPerformToggleBoldface;
- (BOOL)canPerformToggleEditorCallouts;
- (BOOL)canPerformToggleEmphasis;
- (BOOL)canPerformToggleFolderActivity;
- (BOOL)canPerformToggleItalics;
- (BOOL)canPerformToggleNoteActivity;
- (BOOL)canPerformTogglePinNoteAction;
- (BOOL)canPerformToggleSearch;
- (BOOL)canPerformToggleStrikethrough;
- (BOOL)canPerformToggleUnderline;
- (BOOL)canPerformUndo;
- (BOOL)canTilePrimaryContent;
- (BOOL)canUserChangeNoteContainerViewMode;
- (BOOL)hasCompactHeight;
- (BOOL)hasCompactWidth;
- (BOOL)hasMultipleModernAccounts;
- (BOOL)isAttachmentBrowserVisible;
- (BOOL)isAutomaticallySelectingNotes;
- (BOOL)isFolderListVisible;
- (BOOL)isInHTMLEditorMode;
- (BOOL)isMainSplitViewDisplayModeSecondaryOnly;
- (BOOL)isNoteEditorTopViewController;
- (BOOL)isNoteEditorVisible;
- (BOOL)isPrimaryContentVisible;
- (BOOL)isSearchActive;
- (BOOL)isSelectionAppropriateForObjectID:(id)a3;
- (BOOL)isShowingNoteBrowsersForContainerObjectIDs:(id)a3;
- (BOOL)isSplitViewExpanded;
- (BOOL)isSupplementaryContentVisible;
- (BOOL)isTagSelected;
- (BOOL)isTrailingContentVisible;
- (BOOL)isTrashFolderSelected;
- (BOOL)noteEditor:(id)a3 didTapAttachment:(id)a4;
- (BOOL)objectAlreadyLoadedInEditorWithObjectID:(id)a3;
- (BOOL)openURL:(id)a3;
- (BOOL)presentAttachment:(id)a3 delegate:(id)a4 displayShowInNote:(BOOL)a5 editable:(BOOL)a6 selectedSubAttachment:(id)a7 presentingViewController:(id)a8;
- (BOOL)presentAttachments:(id)a3 startingAtIndex:(unint64_t)a4 delegate:(id)a5 displayShowInNote:(BOOL)a6 editable:(BOOL)a7 selectedSubAttachment:(id)a8 presentingViewController:(id)a9;
- (BOOL)selectContainersForDeletedHashtagObjectIDs:(id)a3;
- (BOOL)selectDefaultFolderForNoteMovedOutOfNoteObjectIDs:(id)a3 managedObjectContext:(id)a4;
- (BOOL)selectDefaultFolderForNoteMovedOutOfSelectedTagsIfNeeded:(id)a3;
- (BOOL)selectDefaultFolderForNoteMovedOutOfSmartFolderIfNeeded:(id)a3;
- (BOOL)shouldAutomaticallySelectNoteContainerForSelectionStateController:(id)a3;
- (BOOL)shouldManagedObjectBecomeSelectedNote:(id)a3;
- (BOOL)shouldRevertToAllTagsWhenUnselectingTagsForSelectionStateController:(id)a3;
- (BOOL)shouldRevertToDefaultFolderWhenUnselectingTagsForSelectionStateController:(id)a3;
- (BOOL)shouldRevertToMostRecentlySelectedNonSearchObjectOnNavigationTransitionForSelectionStateController:(id)a3;
- (BOOL)shouldRevertToMostRecentlySelectedSearchResultOnNavigationTransitionForSelectionStateController:(id)a3;
- (BOOL)shouldSelectDefaultContainerWhenInappropriateForSelectionStateController:(id)a3;
- (BOOL)showsAttributionHighlights;
- (BOOL)usesSingleSplitView;
- (BOOL)validateStateRestoreArchive:(id)a3;
- (ICActivityStreamNavigationController)presentedActivityStreamNavigationController;
- (ICActivityStreamSelection)activityStreamSelection;
- (ICBaseViewController)currentSearchBarViewController;
- (ICBrowseAttachmentsCollectionController)currentAttachmentBrowserViewController;
- (ICFolder)selectedSmartFolder;
- (ICItemIdentifier)mostRecentNonSearchContainerItemID;
- (ICItemIdentifier)overrideContainerIdentifier;
- (ICItemIdentifier)selectedContainerItemID;
- (ICItemIdentifier)selectedNoteBrowseContainerItemID;
- (ICNAEventReporter)eventReporter;
- (ICNote)selectedModernNote;
- (ICNoteEditing)activeEditorController;
- (ICNoteEditorViewController)noteEditorViewController;
- (ICNoteSearchViewController)searchController;
- (ICSearchResult)selectedSearchResult;
- (ICTTTextContentStorage)textContentStorage;
- (ICTagSelection)tagSelection;
- (ICViewControllerManager)init;
- (ICWindow)window;
- (ICWindowStateArchive)windowStateArchive;
- (NSArray)mostRecentSelections;
- (NSArray)selectedContainerObjectIDs;
- (NSDictionary)visibleObjectIDsForContainerObjectID;
- (NSManagedObjectContext)legacyManagedObjectContext;
- (NSManagedObjectContext)modernManagedObjectContext;
- (NSManagedObjectID)focusedNoteObjectID;
- (NSManagedObjectID)previousSelectedNoteObjectID;
- (NSManagedObjectID)selectedInvitationObjectID;
- (NSManagedObjectID)selectedNoteObjectID;
- (NSSet)excludedContainerIdentifiers;
- (NSSet)selectedContainerIdentifiers;
- (NSString)title;
- (NSUndoManager)visibleViewsUndoManager;
- (UINavigationController)compactNavigationController;
- (UINavigationController)noteBrowseNavigationController;
- (UINavigationController)primaryNavigationController;
- (UIViewController)childPrimaryViewController;
- (UIViewController)presentedActivityStreamPresentingViewController;
- (id)archiveForURL:(id)a3;
- (id)cmd3Title;
- (id)containerItemIDForContainerIdentifiers:(id)a3;
- (id)containerObjectIDForNewNoteWithApproach:(int64_t)a3;
- (id)createDeferredActionMenuElementForEditorViewController:(id)a3;
- (id)createNewNoteInContainerWithObjectID:(id)a3 isSystemPaper:(BOOL)a4;
- (id)defaultContainerObjectIDForNoteWithObjectID:(id)a3;
- (id)existingManagedObjectWithObjectID:(id)a3;
- (id)hostedNotesAppearanceCoordinatorModeButtonHidingModalTypes:(id)a3;
- (id)managedObjectIDFromURL:(id)a3;
- (id)noteObjectIDsWithQuery:(id)a3 managedObjectContext:(id)a4;
- (id)outerSplitViewController;
- (id)quickNoteQueryOptionsFromEditor:(id)a3 additionalOptions:(id)a4;
- (id)selectedModernAccount;
- (id)selectedModernFolder;
- (id)selectedSmartFolder:(id)a3;
- (id)selectedSmartFolderNoteObjectIDs:(id)a3;
- (id)selectedTagsNoteObjectIDs:(id)a3;
- (id)selectedTagsNoteQuery:(id)a3;
- (id)selectionStateController:(id)a3 scrollStateForObjectID:(id)a4;
- (id)showNewNoteStartEditing:(BOOL)a3 inContainerWithObjectID:(id)a4 isSystemPaper:(BOOL)a5 showInkPicker:(BOOL)a6 animated:(BOOL)a7 completion:(id)a8;
- (id)showNewNoteWithApproach:(int64_t)a3 sender:(id)a4 recordAudio:(BOOL)a5 animated:(BOOL)a6;
- (id)toggleEditorCalloutsTitle;
- (id)toggleFolderActivityTitle;
- (id)toggleLockNoteIconString;
- (id)toggleLockNoteTitle;
- (id)toggleNoteActivityTitle;
- (int64_t)activityStreamViewMode;
- (int64_t)behavior;
- (int64_t)defaultDisplayModeButtonVisibilityForTraitCollection:(id)a3;
- (int64_t)enforcedNoteContainerViewModeForContainerItemID:(id)a3;
- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4;
- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4;
- (int64_t)toggleBoldfaceState;
- (int64_t)toggleEmphasisState;
- (int64_t)toggleItalicsState;
- (int64_t)toggleStrikethroughState;
- (int64_t)toggleUnderlineState;
- (unint64_t)adjustedNumberOfGalleryViewColumns;
- (unint64_t)countOfAllVisibleAccounts;
- (void)accountsDidChange:(id)a3;
- (void)addNoteFromAirDropDocument:(id)a3;
- (void)addNoteFromPlaintextFile:(id)a3;
- (void)addSelectedHashtagsToNewNote:(id)a3;
- (void)adoptContainerFromSelectionStateController:(id)a3 oldModel:(id)a4;
- (void)adoptObjectFromSelectionStateController:(id)a3 oldModel:(id)a4 completion:(id)a5;
- (void)applyNoteViewModesToStateRestoreArchive:(id)a3 withContainerItemID:(id)a4;
- (void)applyStateRestoreArchive:(id)a3 completion:(id)a4;
- (void)clearRecentSelections;
- (void)closeAuxiliaryWindowAnimated:(BOOL)a3;
- (void)collectionViewWillRenameTag:(id)a3;
- (void)deleteEmptyNoteIfNeeded:(id)a3;
- (void)didStartEditing:(id)a3;
- (void)dismissAnyPresentedViewControllerAnimated:(BOOL)a3 forShowNote:(BOOL)a4 completion:(id)a5;
- (void)dismissAttachmentBrowserIfNecessaryAndPerform:(id)a3;
- (void)dismissOverlayContent;
- (void)dismissPrimaryOverlayContent;
- (void)dismissSupplementaryOverlayContent;
- (void)ensureNoteEditorPresentedAnimated:(BOOL)a3 startEditing:(BOOL)a4 dismissOverlayContent:(BOOL)a5;
- (void)ensureSearchVisible;
- (void)ensureSearchVisibleWhenApplyingArchive;
- (void)eventReporterLostSession:(id)a3;
- (void)folderWasCreated:(id)a3;
- (void)hideActivityStreamWithCompletion:(id)a3;
- (void)hidePresentedActivityStreamNavigationControllerWithCompletion:(id)a3;
- (void)initializeLegacyNoteEditor;
- (void)initializeMainSplitViewWithStateRestoreArchive:(id)a3;
- (void)initializeModernNoteEditorWithOptions:(unint64_t)a3;
- (void)initializeSecondaryNavigationControllerWithViewController:(id)a3;
- (void)initializeTrailingSidebarSplitViewWithStateRestoreArchive:(id)a3;
- (void)launchNotesAppFromLockscreenWithQueryOptions:(id)a3 completionBlock:(id)a4;
- (void)lockNotesNow;
- (void)managedObjectContextDidChange:(id)a3;
- (void)migrationStateDidChange:(id)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)noteEditorDidTapActionMenu:(id)a3;
- (void)noteEditorDidTapAddPeople:(id)a3;
- (void)noteEditorDidTapAllNotes:(id)a3;
- (void)noteLockManagerDidToggleLock:(id)a3;
- (void)noteLockManagerWillToggleLock:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performActionForShortcutItem:(id)a3;
- (void)performAddFolder:(id)a3;
- (void)performAddLinkKey:(id)a3;
- (void)performAddNote:(id)a3;
- (void)performAttachFile:(id)a3;
- (void)performCmd1:(id)a3;
- (void)performCmd2:(id)a3;
- (void)performCmd3:(id)a3;
- (void)performCmdReturnKey:(id)a3;
- (void)performCollapseAllSections:(id)a3;
- (void)performConvertToSmartFolderAction:(id)a3;
- (void)performCreateSmartFolder:(id)a3;
- (void)performCreateSmartFolderFromSelectedTags:(id)a3;
- (void)performDeleteKey:(id)a3;
- (void)performDeleteQuickNoteKey:(id)a3;
- (void)performEnclosingFolderKey:(id)a3;
- (void)performExpandAllSections:(id)a3;
- (void)performExportMarkdownAction:(id)a3;
- (void)performFindInNote:(id)a3;
- (void)performGotoNextNote:(id)a3;
- (void)performGotoPreviousNote:(id)a3;
- (void)performImportMarkdownAction:(id)a3;
- (void)performManageSharedFolderAction:(id)a3;
- (void)performPagesHandoff:(id)a3;
- (void)performPrintNote:(id)a3;
- (void)performRecordAudio:(id)a3;
- (void)performRenameAttachment:(id)a3;
- (void)performReplaceInNote:(id)a3;
- (void)performReturnKey:(id)a3;
- (void)performScanDocument:(id)a3;
- (void)performShareAction:(id)a3;
- (void)performShareFolderAction:(id)a3;
- (void)performSharedFolderAction:(id)a3;
- (void)performShowInNote:(id)a3;
- (void)performToggleBoldface:(id)a3;
- (void)performToggleEditorCallouts:(id)a3;
- (void)performToggleEmphasis:(id)a3;
- (void)performToggleFolderActivity:(id)a3;
- (void)performToggleItalics:(id)a3;
- (void)performToggleNoteActivity:(id)a3;
- (void)performToggleSearch:(id)a3;
- (void)performToggleStrikethrough:(id)a3;
- (void)performToggleUnderline:(id)a3;
- (void)performUndo:(id)a3;
- (void)presentActivityStreamForObject:(id)a3 viewMode:(int64_t)a4 animated:(BOOL)a5;
- (void)screenshotService:(id)a3 generatePDFRepresentationWithCompletion:(id)a4;
- (void)searchQueryDidChange:(id)a3;
- (void)selectAttachmentWithObjectID:(id)a3 animated:(BOOL)a4;
- (void)selectContainerWithIdentifier:(id)a3 usingRootViewController:(BOOL)a4 deferUntilDataLoaded:(BOOL)a5 animated:(BOOL)a6;
- (void)selectContainerWithIdentifiers:(id)a3 excludingIdentifiers:(id)a4 isChangingDisplayMode:(BOOL)a5 noteBrowseViewController:(id)a6 usingRootViewController:(BOOL)a7 deferUntilDataLoaded:(BOOL)a8 dismissOverlayContent:(id)a9 animated:(BOOL)a10 ensurePresented:(BOOL)a11 ensureSelectedNote:(id)a12 keepEditorShowing:(id)a13 dataIndexedBlock:(id)a14 dataRenderedBlock:(id)a15;
- (void)selectContainerWithIdentifiers:(id)a3 excludingIdentifiers:(id)a4 usingRootViewController:(BOOL)a5 deferUntilDataLoaded:(BOOL)a6 animated:(BOOL)a7;
- (void)selectContainerWithIdentifiers:(id)a3 excludingIdentifiers:(id)a4 usingRootViewController:(BOOL)a5 deferUntilDataLoaded:(BOOL)a6 dismissOverlayContent:(BOOL)a7 animated:(BOOL)a8;
- (void)selectInvitationWithObjectID:(id)a3 animated:(BOOL)a4;
- (void)selectModel:(id)a3;
- (void)selectNextRelevantObjectUsingChangedInappropriateIdentifiers:(id)a3;
- (void)selectNoteStartEditingIfEmptyWithObjectID:(id)a3 scrollState:(id)a4 animated:(BOOL)a5 ensurePresented:(BOOL)a6;
- (void)selectNoteWithObjectID:(id)a3 scrollState:(id)a4 startEditing:(BOOL)a5 animated:(BOOL)a6 ensurePresented:(BOOL)a7;
- (void)selectNoteWithObjectID:(id)a3 scrollState:(id)a4 startEditing:(BOOL)a5 showInkPicker:(BOOL)a6 dismissOverlayContent:(BOOL)a7 showLatestUpdatesIfAvailable:(BOOL)a8 animated:(BOOL)a9 ensurePresented:(BOOL)a10;
- (void)selectObjectWithObjectID:(id)a3;
- (void)selectTagSelection:(id)a3;
- (void)selectionStateController:(id)a3 didAdoptInstantNoteModelFromArchive:(id)a4;
- (void)selectionStateController:(id)a3 didAdoptModelFromArchive:(id)a4 systemPaperAlert:(BOOL)a5 completion:(id)a6;
- (void)selectionStateController:(id)a3 didAdoptModelFromOldModel:(id)a4 isNavigating:(BOOL)a5;
- (void)selectionStateController:(id)a3 didIgnoreDuplicateModel:(id)a4;
- (void)sendNotificationForNoteEditorSizeChange:(CGSize)a3 transitionCoordinator:(id)a4;
- (void)sendNotificationForSplitViewDisplayModeChangeWithTransitionCoordinator:(id)a3;
- (void)setActivityStreamSelection:(id)a3;
- (void)setCurrentNoteBrowseViewController:(id)a3 animated:(BOOL)a4 ensurePresented:(BOOL)a5 containerIdentifiers:(id)a6 excludingIdentifiers:(id)a7 ensureSelectedNote:(BOOL)a8 keepEditorShowing:(id)a9 dataIndexedBlock:(id)a10 dataRenderedBlock:(id)a11;
- (void)setExpandedForSectionsInSelectedRange:(BOOL)a3;
- (void)setFocusedNoteObjectID:(id)a3;
- (void)setMostRecentNonSearchContainerItemID:(id)a3;
- (void)setNoteBrowserNavigationStackWithFolderObjectIDs:(id)a3;
- (void)setNoteContainerViewMode:(int64_t)a3 completion:(id)a4;
- (void)setNoteEditorAnimated:(BOOL)a3 ensurePresented:(BOOL)a4 startEditing:(BOOL)a5 showLegacy:(BOOL)a6 showLatestUpdatesIfAvailable:(BOOL)a7;
- (void)setPersistenceConfiguration:(id)a3;
- (void)setPreviousSelectedNoteObjectID:(id)a3;
- (void)setSelectedInvitationObjectID:(id)a3;
- (void)setSelectedInvitationObjectID:(id)a3 sideEffects:(BOOL)a4;
- (void)setSelectedNoteBrowseContainerItemID:(id)a3;
- (void)setSelectedNoteBrowseContainerItemID:(id)a3 sideEffects:(BOOL)a4;
- (void)setSelectedNoteObjectID:(id)a3;
- (void)setSelectedNoteObjectID:(id)a3 sideEffects:(BOOL)a4;
- (void)setSelectedSearchResult:(id)a3;
- (void)setSelectionStateTrackingEnabled:(BOOL)a3;
- (void)setSplitViewExpandingOrCollapsing:(BOOL)a3;
- (void)setTagSelection:(id)a3;
- (void)setWindow:(id)a3;
- (void)setupViewsFromWindowStateArchive:(id)a3 systemPaperShowModernAccountAlert:(BOOL)a4 completion:(id)a5;
- (void)setupWithWindow:(id)a3 stateRestoreArchive:(id)a4 completion:(id)a5;
- (void)showAccountListAnimated:(BOOL)a3;
- (void)showAccountsSettings:(id)a3;
- (void)showActivityStreamForObjectWithObjectID:(id)a3 collabActivityContextPath:(int64_t)a4;
- (void)showAttachmentBrowser;
- (void)showAttributionHighlightsForNoteWithObjectID:(id)a3 selection:(id)a4 suppressSidebar:(BOOL)a5;
- (void)showAudioDonationDialog:(BOOL)a3 mediaURL:(id)a4 transcript:(id)a5 date:(id)a6;
- (void)showContainerWithIdentifiers:(id)a3 excludingIdentifiers:(id)a4 noteBrowseViewController:(id)a5 usingRootViewController:(BOOL)a6 deferUntilDataLoaded:(BOOL)a7 dismissOverlayContent:(BOOL)a8 animated:(BOOL)a9 ensurePresented:(BOOL)a10 ensureSelectedNote:(BOOL)a11 keepEditorShowing:(id)a12 dataIndexedBlock:(id)a13 dataRenderedBlock:(id)a14;
- (void)showContainerWithIdentifiers:(id)a3 excludingIdentifiers:(id)a4 usingRootViewController:(BOOL)a5 deferUntilDataLoaded:(BOOL)a6 dismissOverlayContent:(BOOL)a7 keepEditorShowing:(id)a8 animated:(BOOL)a9;
- (void)showContainerWithIdentifiers:(id)a3 excludingIdentifiers:(id)a4 usingRootViewController:(BOOL)a5 deferUntilDataLoaded:(BOOL)a6 keepEditorShowing:(id)a7 animated:(BOOL)a8;
- (void)showInlineAttachmentWithIdentifier:(id)a3 inNoteIdentifier:(id)a4;
- (void)showInvitationWithObjectID:(id)a3 animated:(BOOL)a4;
- (void)showNoteWithIdentifier:(id)a3;
- (void)showNoteWithObjectID:(id)a3 scrollState:(id)a4 startEditing:(BOOL)a5 showInkPicker:(BOOL)a6 dismissOverlayContent:(BOOL)a7 showLatestUpdatesIfAvailable:(BOOL)a8 animated:(BOOL)a9 ensurePresented:(BOOL)a10;
- (void)showObjectWithObjectID:(id)a3;
- (void)showRecentUpdatesForNoteWithObjectID:(id)a3 suppressSidebar:(BOOL)a4;
- (void)showRecentlyDeletedMathNotes;
- (void)showSearchResult:(id)a3 animated:(BOOL)a4;
- (void)showSelectionForParticipant:(id)a3 noteObjectID:(id)a4;
- (void)showStartupWithForceWelcomeScreen:(BOOL)a3 completion:(id)a4;
- (void)showTagSelection:(id)a3;
- (void)showUpgradeNotesDialog;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)splitViewController:(id)a3 willShowColumn:(int64_t)a4;
- (void)splitViewControllerDidCollapse:(id)a3;
- (void)splitViewControllerDidExpand:(id)a3;
- (void)splitViewControllerInteractivePresentationGestureDidEnd:(id)a3;
- (void)splitViewControllerInteractivePresentationGestureWillBegin:(id)a3;
- (void)startSearchWithSearchQueryString:(id)a3 becomeFirstResponder:(BOOL)a4;
- (void)stopEditing;
- (void)systemPaperNavigateLeft:(id)a3;
- (void)systemPaperNavigateRight:(id)a3;
- (void)systemPaperShowInNotes:(id)a3;
- (void)tagDidRename:(id)a3;
- (void)tagsDidDelete:(id)a3;
- (void)toggleSidebar;
- (void)updateCurrentNoteLastViewedMetadata:(id)a3;
- (void)updateForFingerDrawingEnabled:(BOOL)a3;
- (void)updateHostedNotesAppearance;
- (void)updateIgnoreTextViewTaps;
- (void)updateNewNoteForSelectedTags:(id)a3 folder:(id)a4;
- (void)updateNoteEditorBezelsIfNeededWithDisplayMode:(int64_t)a3 force:(BOOL)a4;
- (void)updateNoteEditorViewControllerWithStateArchive:(id)a3;
- (void)updateOverrideNoteContainerViewModeIfNeeded;
- (void)updatePrimaryContainerViewAppearance;
- (void)updateSceneTitle:(id)a3;
- (void)updateSplitViewForCurrentViewModeWithCompletion:(id)a3;
- (void)updateTrailingColumnWidth;
- (void)validateState;
- (void)willDismissSearch:(id)a3;
@end

@implementation ICViewControllerManager

- (ICViewControllerManager)init
{
  v23.receiver = self;
  v23.super_class = ICViewControllerManager;
  v2 = [(ICViewControllerManager *)&v23 init];
  v3 = v2;
  if (v2)
  {
    selectedNoteBrowseContainerItemID = v2->_selectedNoteBrowseContainerItemID;
    v2->_selectedNoteBrowseContainerItemID = 0;

    selectedNoteObjectID = v3->_selectedNoteObjectID;
    v3->_selectedNoteObjectID = 0;

    selectedInvitationObjectID = v3->_selectedInvitationObjectID;
    v3->_selectedInvitationObjectID = 0;

    tagSelection = v3->_tagSelection;
    v3->_tagSelection = 0;

    focusedNoteObjectID = v3->_focusedNoteObjectID;
    v3->_focusedNoteObjectID = 0;

    activityStreamSelection = v3->_activityStreamSelection;
    v3->_activityStreamSelection = 0;

    mostRecentNonSearchContainerItemID = v3->_mostRecentNonSearchContainerItemID;
    v3->_mostRecentNonSearchContainerItemID = 0;

    previousSelectedNoteObjectID = v3->_previousSelectedNoteObjectID;
    v3->_previousSelectedNoteObjectID = 0;

    selectedSearchResult = v3->_selectedSearchResult;
    v3->_selectedSearchResult = 0;

    v13 = objc_alloc_init(_TtC11MobileNotes33ICAppIntentsInteractionController);
    intentsInteractionController = v3->_intentsInteractionController;
    v3->_intentsInteractionController = v13;

    v15 = objc_alloc_init(ICPersistenceConfiguration);
    persistenceConfiguration = v3->_persistenceConfiguration;
    v3->_persistenceConfiguration = v15;

    v17 = +[ICNoteContext sharedContext];
    v18 = [v17 managedObjectContext];
    [(ICPersistenceConfiguration *)v3->_persistenceConfiguration setModernViewContext:v18];

    [(ICPersistenceConfiguration *)v3->_persistenceConfiguration setMakeModernBackgroundContext:&stru_1006459F8];
    v19 = +[NotesApp sharedNotesApp];
    v20 = [v19 noteContext];
    v21 = [v20 managedObjectContext];
    [(ICPersistenceConfiguration *)v3->_persistenceConfiguration setLegacyViewContext:v21];

    [(ICPersistenceConfiguration *)v3->_persistenceConfiguration setMakeLegacyBackgroundContext:&stru_100645A18];
    [(ICViewControllerManager *)v3 setSelectionStateTrackingEnabled:ICInternalSettingsIsSelectionStateTrackingEnabled()];
  }

  return v3;
}

- (ICItemIdentifier)overrideContainerIdentifier
{
  if ([(ICViewControllerManager *)self behavior]== 1)
  {
    v2 = +[ICAccount globalVirtualMathNotesFolder];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)updateOverrideNoteContainerViewModeIfNeeded
{
  if ([(ICViewControllerManager *)self behavior]== 1)
  {
    v2 = +[ICAccount globalVirtualMathNotesFolder];
    [v2 setOverrideNoteContainerViewMode:0];
  }
}

- (int64_t)behavior
{
  v2 = [(ICViewControllerManager *)self window];
  v3 = [v2 behavior];

  return v3;
}

- (ICWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

- (BOOL)isSearchActive
{
  v3 = [(ICViewControllerManager *)self folderListViewController];
  v4 = [v3 navigationItem];
  v5 = [v4 searchController];
  v6 = [v5 isActive];

  v7 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v8 = [v7 navigationItem];
  v9 = [v8 searchController];
  LOBYTE(v5) = [v9 isActive];

  return (v6 | v5) & 1;
}

- (NSManagedObjectContext)modernManagedObjectContext
{
  v2 = [(ICViewControllerManager *)self persistenceConfiguration];
  v3 = [v2 modernViewContext];

  return v3;
}

- (void)initializeLegacyNoteEditor
{
  v3 = [(ICViewControllerManager *)self legacyNoteEditorViewController];

  if (!v3)
  {
    v4 = [[NotesDisplayController alloc] initWithArchivedConfiguration:0];
    [(ICViewControllerManager *)self setLegacyNoteEditorViewController:v4];

    v5 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    [v5 setViewControllerManager:self];

    v6 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    [v6 setDelegate:self];
  }
}

- (ICNoteEditorViewController)noteEditorViewController
{
  v3 = [(ICViewControllerManager *)self systemPaperViewController];

  if (v3)
  {
    v4 = [(ICViewControllerManager *)self systemPaperViewController];
    v5 = [v4 currentNoteEditorViewController];
  }

  else
  {
    v5 = self->_noteEditorViewController;
  }

  return v5;
}

- (BOOL)isTrashFolderSelected
{
  objc_opt_class();
  v3 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
  v4 = ICDynamicCast();

  if ([v4 isTrashFolder])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    v7 = ICDynamicCast();

    if ([v7 ic_isEntityOfClass:objc_opt_class()])
    {
      v8 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v9 = [v8 ic_existingObjectWithID:v7];

      v5 = [v9 isTrashFolder];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (ICItemIdentifier)selectedNoteBrowseContainerItemID
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v3 = [(ICViewControllerManager *)self selectionStateController];
    v4 = [v3 selectedNoteBrowseContainerItemID];
  }

  else
  {
    v4 = self->_selectedNoteBrowseContainerItemID;
  }

  return v4;
}

- (BOOL)canAddNewNoteToSelectedContainers
{
  v3 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
  v15 = [(ICViewControllerManager *)self modernManagedObjectContext];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = *v27;
    v14 = v24;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v7 = ICDynamicCast();
        if ([v7 ic_isModernContainerType])
        {
          v21 = 0;
          v22 = &v21;
          v23 = 0x3032000000;
          v24[0] = sub_100040A44;
          v24[1] = sub_100040A54;
          v25 = 0;
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_10001AE64;
          v17[3] = &unk_100645A40;
          v20 = &v21;
          v8 = v15;
          v18 = v8;
          v9 = v7;
          v19 = v9;
          [v8 performBlockAndWait:v17];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v22[5];
            v11 = [v10 isSharedReadOnly];

            if (v11)
            {

              _Block_object_dispose(&v21, 8);
              v12 = 0;
              goto LABEL_14;
            }
          }

          _Block_object_dispose(&v21, 8);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_14:

  return v12;
}

- (NSSet)selectedContainerIdentifiers
{
  v3 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
  v4 = [(ICViewControllerManager *)self tagSelection];
  v5 = v4;
  if (v3)
  {
    v6 = [NSSet ic_setFromNonNilObject:v3];
LABEL_3:
    v7 = v6;
    goto LABEL_9;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  v8 = [v4 mode];
  if (!v8)
  {
    v6 = [v5 includedObjectIDs];
    goto LABEL_3;
  }

  if (v8 == 1)
  {
    v9 = +[ICTagAllTagsItemIdentifier sharedItemIdentifier];
    v7 = [NSSet ic_setFromNonNilObject:v9];
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (ICTagSelection)tagSelection
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v3 = [(ICViewControllerManager *)self selectionStateController];
    v4 = [v3 tagSelection];
  }

  else
  {
    v4 = self->_tagSelection;
  }

  return v4;
}

- (BOOL)hasCompactWidth
{
  v2 = [(ICViewControllerManager *)self window];
  v3 = [v2 traitCollection];
  v4 = [v3 ic_hasCompactWidth];

  return v4;
}

- (BOOL)hasCompactHeight
{
  v2 = [(ICViewControllerManager *)self window];
  v3 = [v2 traitCollection];
  v4 = [v3 ic_hasCompactHeight];

  return v4;
}

- (UINavigationController)primaryNavigationController
{
  primaryNavigationController = self->_primaryNavigationController;
  if (primaryNavigationController)
  {
    v3 = primaryNavigationController;
  }

  else
  {
    v5 = [(ICViewControllerManager *)self childPrimaryViewController];
    v6 = [[UINavigationController alloc] initWithRootViewController:v5];
    v7 = self->_primaryNavigationController;
    self->_primaryNavigationController = v6;

    v8 = [(UINavigationController *)self->_primaryNavigationController navigationBar];
    [v8 setPrefersLargeTitles:1];

    [(UINavigationController *)self->_primaryNavigationController setDelegate:self];
    v3 = self->_primaryNavigationController;
  }

  return v3;
}

- (UIViewController)childPrimaryViewController
{
  if ([(ICViewControllerManager *)self behavior]== 1)
  {
    [(ICViewControllerManager *)self rootNoteBrowseViewController];
  }

  else
  {
    [(ICViewControllerManager *)self folderListViewController];
  }
  v3 = ;

  return v3;
}

- (BOOL)usesSingleSplitView
{
  v2 = _UISolariumEnabled();
  if (v2)
  {
    LOBYTE(v2) = +[UIDevice ic_isVision]^ 1;
  }

  return v2;
}

- (UINavigationController)compactNavigationController
{
  compactNavigationController = self->_compactNavigationController;
  if (!compactNavigationController)
  {
    v4 = [[UINavigationController alloc] initWithNibName:0 bundle:0];
    v5 = self->_compactNavigationController;
    self->_compactNavigationController = v4;

    v6 = [(UINavigationController *)self->_compactNavigationController navigationBar];
    [v6 setPrefersLargeTitles:1];

    [(UINavigationController *)self->_compactNavigationController setToolbarHidden:0];
    [(UINavigationController *)self->_compactNavigationController setDelegate:self];
    compactNavigationController = self->_compactNavigationController;
  }

  v7 = compactNavigationController;

  return v7;
}

- (ICNote)selectedModernNote
{
  v3 = [(ICViewControllerManager *)self selectedNoteObjectID];
  v4 = [v3 ic_isModernNoteType];

  if (v4)
  {
    v5 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v6 = [(ICViewControllerManager *)self selectedNoteObjectID];
    v7 = [v5 ic_existingObjectWithID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSManagedObjectID)selectedNoteObjectID
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v3 = [(ICViewControllerManager *)self selectionStateController];
    v4 = [v3 selectedNoteObjectID];
  }

  else
  {
    v4 = self->_selectedNoteObjectID;
  }

  return v4;
}

- (ICActivityStreamSelection)activityStreamSelection
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v3 = [(ICViewControllerManager *)self selectionStateController];
    v4 = [v3 activityStreamSelection];
  }

  else
  {
    v4 = self->_activityStreamSelection;
  }

  return v4;
}

- (id)outerSplitViewController
{
  if ([(ICViewControllerManager *)self usesSingleSplitView])
  {
    [(ICViewControllerManager *)self mainSplitViewController];
  }

  else
  {
    [(ICViewControllerManager *)self trailingSidebarSplitViewController];
  }
  v3 = ;

  return v3;
}

- (ICNoteEditing)activeEditorController
{
  if ([(ICViewControllerManager *)self isInHTMLEditorMode])
  {
    [(ICViewControllerManager *)self legacyNoteEditorViewController];
  }

  else
  {
    [(ICViewControllerManager *)self noteEditorViewController];
  }
  v3 = ;

  return v3;
}

- (BOOL)isInHTMLEditorMode
{
  v3 = [(ICViewControllerManager *)self selectedNoteObjectID];

  if (v3)
  {
    v4 = [(ICViewControllerManager *)self selectedNoteObjectID];
    LOBYTE(v5) = [v4 ic_isLegacyNoteType];
LABEL_5:

    return v5;
  }

  v5 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];

  if (v5)
  {
    objc_opt_class();
    v4 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    v6 = ICDynamicCast();
    LOBYTE(v5) = [v6 ic_isLegacyContainerType];

    goto LABEL_5;
  }

  return v5;
}

- (BOOL)canTilePrimaryContent
{
  v2 = [(ICViewControllerManager *)self mainSplitViewController];
  v3 = [v2 _canTileSidebarColumn:0];

  return v3;
}

- (void)updateHostedNotesAppearance
{
  v2 = [(ICViewControllerManager *)self hostedNotesAppearanceCoordinator];
  [v2 updateAppearance];
}

- (void)setSelectionStateTrackingEnabled:(BOOL)a3
{
  if (a3)
  {
    self->_selectionStateTrackingEnabled = 1;
    v4 = [_TtC11MobileNotes26ICSelectionStateController alloc];
    v5 = [(ICViewControllerManager *)self persistenceConfiguration];
    v6 = [(ICSelectionStateController *)v4 initWithPersistenceConfiguration:v5];
    selectionStateController = self->_selectionStateController;
    self->_selectionStateController = v6;

    v8 = self->_selectionStateController;

    [(ICSelectionStateController *)v8 setDelegate:self];
  }

  else
  {
    self->_selectionStateTrackingEnabled = 0;
    v9 = self->_selectionStateController;
    self->_selectionStateController = 0;
  }
}

- (NSManagedObjectContext)legacyManagedObjectContext
{
  v2 = [(ICViewControllerManager *)self persistenceConfiguration];
  v3 = [v2 legacyViewContext];

  return v3;
}

- (void)setPersistenceConfiguration:(id)a3
{
  objc_storeStrong(&self->_persistenceConfiguration, a3);
  v5 = a3;
  [(ICViewControllerManager *)self setRootNoteBrowseViewController:0];
  [(ICViewControllerManager *)self setFolderListViewController:0];
  [(ICViewControllerManager *)self setNoteEditorViewController:0];
  [(ICViewControllerManager *)self setLegacyNoteEditorViewController:0];
  [(ICViewControllerManager *)self setMainSplitViewController:0];
  [(ICViewControllerManager *)self setTrailingSidebarSplitViewController:0];
  v6 = objc_alloc_init(ICWindowStateArchive);

  [(ICViewControllerManager *)self applyStateRestoreArchive:v6 completion:0];
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && +[ICNAEventReporter isOptedInForAnalytics])
  {
    v3 = [ICNAEventReporter alloc];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ICViewControllerManager *)self window];
    v7 = [v3 initWithSubTrackerName:v5 window:v6];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:self->_eventReporter];
  }

  v10 = self->_eventReporter;

  return v10;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = ICNAEventReporterLostSessionNotification;
  v7 = [v5 object];

  [v8 removeObserver:self name:v6 object:v7];
}

- (NSUndoManager)visibleViewsUndoManager
{
  v3 = [(ICViewControllerManager *)self undoManager];
  if (([v3 canUndo] & 1) == 0 && (objc_msgSend(v3, "canRedo") & 1) == 0)
  {
    v4 = [(ICViewControllerManager *)self window];
    v5 = [v4 ic_topmostPresentedViewController];
    if (v5)
    {
LABEL_4:

      goto LABEL_7;
    }

    v6 = [(ICViewControllerManager *)self noteEditorViewController];
    v7 = [v6 ic_isViewVisible];

    if (v7 && ![(ICViewControllerManager *)self isInHTMLEditorMode])
    {
      v4 = [(ICViewControllerManager *)self noteEditorViewController];
      v9 = [v4 textViewUndoManager];
      v5 = v3;
      v3 = v9;
      goto LABEL_4;
    }
  }

LABEL_7:

  return v3;
}

- (NSSet)excludedContainerIdentifiers
{
  v3 = [(ICViewControllerManager *)self tagSelection];

  if (v3)
  {
    v4 = [(ICViewControllerManager *)self tagSelection];
    v5 = [v4 mode];

    if (!v5)
    {
      v6 = [(ICViewControllerManager *)self tagSelection];
      v7 = [v6 excludedObjectIDs];
      goto LABEL_6;
    }

    if (v5 == 2)
    {
      v6 = +[ICTagAllTagsItemIdentifier sharedItemIdentifier];
      v7 = [NSSet setWithObject:v6];
LABEL_6:
      v3 = v7;

      goto LABEL_8;
    }

    v3 = 0;
  }

LABEL_8:

  return v3;
}

- (NSArray)selectedContainerObjectIDs
{
  v3 = +[NSMutableArray array];
  v4 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
  v5 = [v4 navigationController];

  objc_opt_class();
  v6 = [(ICViewControllerManager *)self selectedContainerItemID];
  v7 = ICDynamicCast();

  if (v5)
  {
    v22 = v7;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v5 viewControllers];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = v9;
    v11 = *v24;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = [v14 noteCollection];

          if (v15)
          {
            v16 = [v14 noteCollection];
            goto LABEL_12;
          }

          v17 = [v14 noteContainer];

          if (v17)
          {
            v16 = [v14 noteContainer];
LABEL_12:
            v18 = v16;
            v19 = [v16 objectID];
            [v3 ic_addNonNilObject:v19];
          }

          continue;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v10)
      {
LABEL_16:

        v7 = v22;
        goto LABEL_19;
      }
    }
  }

  if (v7)
  {
    [v3 ic_addNonNilObject:v7];
  }

LABEL_19:
  v20 = [v3 copy];

  return v20;
}

- (NSDictionary)visibleObjectIDsForContainerObjectID
{
  v23 = +[NSMutableDictionary dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
  v4 = [v3 navigationController];
  v5 = [v4 viewControllers];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v10 = ICDynamicCast();
        v11 = [v10 noteCollection];
        v12 = [v11 objectID];
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          objc_opt_class();
          v14 = [v10 noteContainer];
          v15 = ICDynamicCast();
          v13 = [v15 objectID];

          if (!v13)
          {
            goto LABEL_10;
          }
        }

        v16 = [v10 collectionView];
        v17 = [v16 indexPathsForVisibleItems];
        v18 = [v17 sortedArrayUsingSelector:"compare:"];

        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1000412B0;
        v24[3] = &unk_100645A68;
        v25 = v10;
        v19 = [v18 ic_compactMap:v24];
        [v23 setObject:v19 forKeyedSubscript:v13];

LABEL_10:
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v20 = [v23 copy];

  return v20;
}

- (unint64_t)adjustedNumberOfGalleryViewColumns
{
  if ([(ICViewControllerManager *)self noteContainerViewMode]!= 1)
  {
    return 0;
  }

  v3 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
  v4 = [v3 collectionView];
  [v4 bounds];
  v5 = [v4 adjustedNumberOfGalleryColumnsForWidth:CGRectGetWidth(v7)];

  return v5;
}

- (BOOL)isPrimaryContentVisible
{
  if ([(ICViewControllerManager *)self hasCompactWidth])
  {
    return 0;
  }

  v4 = [(ICViewControllerManager *)self mainSplitViewController];
  v5 = [v4 viewControllerForColumn:0];
  v6 = [v5 ic_isViewVisible];

  return v6;
}

- (BOOL)isSupplementaryContentVisible
{
  if ([(ICViewControllerManager *)self hasCompactWidth])
  {
    return 0;
  }

  v4 = [(ICViewControllerManager *)self mainSplitViewController];
  v5 = [v4 viewControllerForColumn:1];
  v6 = [v5 ic_isViewVisible];

  return v6;
}

- (BOOL)isTrailingContentVisible
{
  if ([(ICViewControllerManager *)self behavior]== 3)
  {
    v3 = [(ICViewControllerManager *)self trailingSidebarViewController];
    if (v3)
    {
      v4 = [(ICViewControllerManager *)self trailingSidebarViewController];
      v5 = [v4 isSidebarHidden] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v6 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
    v7 = [v6 displayMode];

    return ((v7 & 0xFFFFFFFFFFFFFFFELL) == 2) & ~[(ICViewControllerManager *)self hasCompactWidth];
  }

  return v5;
}

- (BOOL)isSplitViewExpanded
{
  if ([(ICViewControllerManager *)self isSplitViewExpandingOrCollapsing])
  {
    v3 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1004D7EB8();
    }
  }

  v4 = [(ICViewControllerManager *)self outerSplitViewController];
  v5 = [v4 isCollapsed];

  return v5 ^ 1;
}

- (ICItemIdentifier)selectedContainerItemID
{
  v3 = [(ICViewControllerManager *)self overrideContainerIdentifier];

  if (v3)
  {
    v4 = [(ICViewControllerManager *)self overrideContainerIdentifier];
LABEL_7:
    v10 = v4;
    goto LABEL_8;
  }

  if (![(ICViewControllerManager *)self isSearchActiveWithQuery])
  {
    v4 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    goto LABEL_7;
  }

  v5 = [(ICViewControllerManager *)self folderListViewController];
  v6 = [v5 folderDataSource];
  v7 = [v6 countOfAllVisibleAccounts];

  if (v7 == 1)
  {
    v8 = [(ICViewControllerManager *)self folderListViewController];
    v9 = [v8 folderDataSource];
    v10 = [v9 firstRelevantItemIdentifier];
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (void)launchNotesAppFromLockscreenWithQueryOptions:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICViewControllerManager *)self noteEditorViewController];
  v9 = [v8 firstResponder];
  [v9 resignFirstResponder];

  v10 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 bundleIdentifier];

  v13 = [v7 mutableCopy];
  v14 = [&__kCFBooleanTrue stringValue];
  [v13 setObject:v14 forKeyedSubscript:ICQuickNoteURLOptionIsContinuing];

  v15 = [v13 copy];
  v16 = objc_opt_new();
  [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:FBSOpenApplicationOptionKeyUnlockDevice];
  [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:FBSOpenApplicationOptionKeyPromptUnlockDevice];
  v17 = [ICAppURLUtilities urlForQuickNoteWithOptions:v15];
  [v16 setObject:v17 forKeyedSubscript:FBSOpenApplicationOptionKeyPayloadURL];

  v18 = [FBSOpenApplicationOptions optionsWithDictionary:v16];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000419EC;
  v20[3] = &unk_100645AF8;
  v21 = v6;
  v19 = v6;
  [v10 openApplication:v12 withOptions:v18 completion:v20];
}

- (void)setupWithWindow:(id)a3 stateRestoreArchive:(id)a4 completion:(id)a5
{
  v34 = a3;
  v8 = a4;
  v9 = a5;
  [(ICViewControllerManager *)self setWindow:v34];
  [v34 setViewControllerManager:self];
  [(ICViewControllerManager *)self updateOverrideNoteContainerViewModeIfNeeded];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"managedObjectContextDidChange:" name:NSManagedObjectContextObjectsDidChangeNotification object:0];
  [v10 addObserver:self selector:"noteLockManagerWillToggleLock:" name:ICNoteLockManagerWillToggleLockNotification object:0];
  [v10 addObserver:self selector:"noteLockManagerDidToggleLock:" name:ICNoteLockManagerDidToggleLockNotification object:0];
  v11 = +[NSNotification ICTagCollectionViewWillRenameTagNotification];
  [v10 addObserver:self selector:"collectionViewWillRenameTag:" name:v11 object:0];

  v12 = +[NSNotification ICTagCollectionViewDidRenameTagNotification];
  [v10 addObserver:self selector:"tagDidRename:" name:v12 object:0];

  v13 = +[NSNotification ICTagCollectionViewWillDeleteTagsNotification];
  [v10 addObserver:self selector:"collectionViewWillDeleteTags:" name:v13 object:0];

  v14 = +[NSNotification ICTagCollectionViewDidDeleteTagsNotification];
  [v10 addObserver:self selector:"tagsDidDelete:" name:v14 object:0];

  [v10 addObserver:self selector:"migrationStateDidChange:" name:ICMigrationStateDidChangeNotification object:0];
  [v10 addObserver:self selector:"accountsDidChange:" name:ICAccountsDidChangeNotification object:0];
  [v10 addObserver:self selector:"folderWasCreated:" name:@"ICFolderCreationControllerFolderWasCreatedNotification" object:0];
  [v10 addObserver:self selector:"willDismissSearch:" name:@"ICBaseViewControllerWillDismissSearchControllerNotification" object:0];
  [v10 addObserver:self selector:"searchQueryDidChange:" name:@"ICNoteSearchViewControllerQueryDidChangeNotification" object:0];
  [v10 addObserver:self selector:"didStartEditing:" name:@"ICFolderListViewControllerDidStartEditingNotification" object:0];
  [v10 addObserver:self selector:"didStartEditing:" name:@"ICNoteBrowseViewControllerDidStartEditingNotification" object:0];
  [v10 addObserver:self selector:"didStartEditing:" name:ICNoteEditorViewControllerDidStartEditingNotification object:0];
  [v10 addObserver:self selector:"didStartEditing:" name:@"NotesDisplayControllerDidStartEditingNotification" object:0];
  v15 = +[NSNotification ICRecoverNoteAlertControllerWillRecoverNoteNotification];
  [v10 addObserver:self selector:"editorWillRecoverNote:" name:v15 object:0];

  v16 = +[NSNotification ICRecoverNoteAlertControllerDidRecoverNoteNotification];
  [v10 addObserver:self selector:"editorDidRecoverNote:" name:v16 object:0];

  v17 = [[ICKeyboardHandler alloc] initWithDelegate:self];
  keyboardHandler = self->_keyboardHandler;
  self->_keyboardHandler = v17;

  v19 = [[ICColumnVisibilityController alloc] initWithViewControllerManager:self];
  columnVisibilityController = self->_columnVisibilityController;
  self->_columnVisibilityController = v19;

  if (ICDebugModeEnabled())
  {
    [ICDebuggingViewController setupDebuggingGestureInWindow:v34];
  }

  v21 = [v34 windowScene];
  v22 = [v21 screenshotService];
  [v22 setDelegate:self];

  if ([objc_opt_class() _isSecure])
  {
    if ([(ICViewControllerManager *)self isAuxiliary])
    {
      v23 = 5;
    }

    else
    {
      v23 = 4;
    }

    [(ICViewControllerManager *)self initializeModernNoteEditorWithOptions:v23];
    v24 = [(ICViewControllerManager *)self noteEditorViewController];
    [v24 setDelegate:self];

    v25 = [(ICViewControllerManager *)self noteEditorViewController];
    [(ICViewControllerManager *)self initializeSecondaryNavigationControllerWithViewController:v25];

    v26 = [(ICViewControllerManager *)self secondaryNavigationController];
    [v34 setRootViewController:v26];

    [v34 setWindowIdentifier:@"com.apple.notes.secure-window-identifier"];
  }

  else
  {
    if (!v8)
    {
      v8 = +[ICWindowStateArchive windowStateArchiveWithDefaultState];
    }

    v27 = [(ICViewControllerManager *)self overrideContainerIdentifier];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v29 = [(ICViewControllerManager *)self overrideContainerIdentifier];
      [v8 setCurrentVirtualSmartFolderIdentifier:v29];
    }

    v30 = [v8 windowIdentifier];
    [v34 setWindowIdentifier:v30];

    v31 = [v8 toolPickerIdentifier];
    [v34 setToolPickerIdentifier:v31];

    [(ICViewControllerManager *)self applyStateRestoreArchive:v8 completion:v9];
    if ([v34 behavior] == 1)
    {
      v32 = [[ICHostedNotesAppearanceCoordinator alloc] initWithDelegate:self];
      hostedNotesAppearanceCoordinator = self->_hostedNotesAppearanceCoordinator;
      self->_hostedNotesAppearanceCoordinator = v32;
    }
  }
}

- (void)applyStateRestoreArchive:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ICViewControllerManager *)self setIsApplyingStateRestoreArchive:1];
  v8 = [v6 hostApplicationIdentifier];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [v6 hostApplicationIdentifier];
    v11 = [v10 copy];
    [(ICViewControllerManager *)self setHostApplicationIdentifier:v11];
  }

  if ([(ICViewControllerManager *)self behavior]== 1)
  {
    v12 = +[ICNoteContext sharedContext];
    v13 = [(ICViewControllerManager *)self modernManagedObjectContext];
    [v12 ensureModernAccountExistsInContext:v13];
  }

  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v14 = [(ICViewControllerManager *)self selectionStateController];
    [v14 setupWithArchive:v6];
  }

  v15 = [v6 currentSearchTerm];
  if (!v15 || (-[ICViewControllerManager currentSearchBarViewController](self, "currentSearchBarViewController"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 ic_isViewVisible], v16, !v17))
  {
    v19 = +[UIApplication sharedApplication];
    v20 = [v19 supportsMultipleScenes];

    if ((v20 & 1) == 0)
    {
      [v6 setIsAuxiliaryWindow:0];
    }

    if (-[ICViewControllerManager selectionStateTrackingEnabled](self, "selectionStateTrackingEnabled") || ([v6 currentObjectIDURL], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
    {
LABEL_34:
      v46 = [(ICViewControllerManager *)self mainSplitViewController];

      if (v46)
      {
        [v6 setIsPrimaryContentVisible:{-[ICViewControllerManager isPrimaryContentVisible](self, "isPrimaryContentVisible")}];
        [v6 setIsSupplementaryContentVisible:{-[ICViewControllerManager isSupplementaryContentVisible](self, "isSupplementaryContentVisible")}];
        if (![(ICViewControllerManager *)self isSplitViewExpanded])
        {
          [(ICViewControllerManager *)self setFolderListViewController:0];
        }
      }

      if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
      {
        [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:0 sideEffects:0];
        [(ICViewControllerManager *)self setSelectedNoteObjectID:0 sideEffects:0];
        [(ICViewControllerManager *)self setSelectedInvitationObjectID:0 sideEffects:0];
        [(ICViewControllerManager *)self setFocusedNoteObjectID:0];
        if (![(ICViewControllerManager *)self validateStateRestoreArchive:v6])
        {
          v47 = +[ICWindowStateArchive windowStateArchiveWithEmptyState];

          v6 = v47;
        }
      }

      if (![v6 noteCreationApproach])
      {
        v58 = 0;
        if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
        {
          goto LABEL_66;
        }

        v64 = 0;
        goto LABEL_65;
      }

      v48 = [objc_opt_class() isNoteCreateApproachForScrapPaper:{objc_msgSend(v6, "noteCreationApproach")}];
      if (!v48)
      {
        goto LABEL_49;
      }

      v49 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v50 = [ICAccount allActiveAccountsInContext:v49];
      v51 = [v50 count];

      if (v51)
      {
        goto LABEL_49;
      }

      v52 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "No modern accounts were found, trying to create a blank modern local account as a fallback.", buf, 2u);
      }

      +[ICMigrationController upgradeEmptyLocalLegacyAccountIfNecessary];
      v53 = +[ICNoteContext sharedContext];
      [v53 addOrDeleteLocalAccountIfNecessary];

      v54 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v55 = [ICAccount allActiveAccountsInContext:v54];
      v56 = [v55 count];

      if (v56)
      {
        v57 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Successfully created local account.", buf, 2u);
        }

LABEL_49:
        v58 = 0;
        goto LABEL_50;
      }

      v77 = v7;
      v68 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v69 = [ICAccount allAccountsInContext:v68];
      if ([v69 count])
      {
      }

      else
      {
        v70 = +[NotesApp sharedNotesApp];
        v71 = [v70 noteContext];
        v72 = [v71 allAccounts];
        v73 = [v72 count];

        if (!v73)
        {
          [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager applyStateRestoreArchive:completion:]" simulateCrash:1 showAlert:0 format:@"Unable to create local account."];
          v58 = 0;
LABEL_76:
          v7 = v77;
LABEL_50:
          v59 = -[ICViewControllerManager containerObjectIDForNewNoteWithApproach:](self, "containerObjectIDForNewNoteWithApproach:", [v6 noteCreationApproach]);
          if (!v59)
          {
            if ((v58 & 1) == 0)
            {
              +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "-[ICViewControllerManager applyStateRestoreArchive:completion:]", 1, 0, @"Couldn't get containerObjectID for approach %ld. Are there no accounts on the device?", [v6 noteCreationApproach]);
            }

            v64 = 0;
LABEL_62:

            if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
            {
              if (v64)
              {
                v67 = [(ICViewControllerManager *)self selectionStateController];
                [v67 adoptModel:v64 withArchive:v6 systemPaperAccountAlert:v58 completion:v7];

LABEL_67:
                goto LABEL_68;
              }

LABEL_66:
              v64 = [(ICViewControllerManager *)self selectionStateController];
              [(ICSelectionStateModel *)v64 adoptCurrentModelWithArchive:v6 systemPaperAccountAlert:v58 completion:v7];
              goto LABEL_67;
            }

LABEL_65:
            [(ICViewControllerManager *)self setupViewsFromWindowStateArchive:v6 systemPaperShowModernAccountAlert:v58 completion:v7];
            goto LABEL_67;
          }

          v60 = [(ICViewControllerManager *)self eventReporter];
          [v60 pushNoteCreateDataWithCreateApproach:{objc_msgSend(v6, "noteCreationApproach")}];

          objc_opt_class();
          v61 = [(ICViewControllerManager *)self createNewNoteInContainerWithObjectID:v59 isSystemPaper:v48];
          v62 = ICDynamicCast();

          v63 = [(ICViewControllerManager *)self eventReporter];
          [v63 popNoteCreateData];

          if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
          {
            if (!v62)
            {
              v64 = 0;
              goto LABEL_61;
            }

            v64 = objc_alloc_init(_TtC11MobileNotes21ICSelectionStateModel);
            v65 = [v62 objectID];
            [(ICSelectionStateModel *)v64 setSelectedNoteObjectID:v65];
          }

          else
          {
            v65 = [v62 objectID];
            v66 = [v65 URIRepresentation];
            [v6 setCurrentObjectIDURL:v66];

            v64 = 0;
          }

LABEL_61:
          goto LABEL_62;
        }
      }

      v74 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Failed to create modern local account, but legacy accounts exist. System Paper will show alert.", buf, 2u);
      }

      v58 = 1;
      goto LABEL_76;
    }

    v22 = [v6 currentObjectIDURL];
    v23 = [(ICViewControllerManager *)self managedObjectIDFromURL:v22];
    if (![v23 ic_isModernNoteType] || (-[ICViewControllerManager selectedContainerIdentifiers](self, "selectedContainerIdentifiers"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count"), v24, !v25))
    {
LABEL_27:
      if ([v23 ic_isBaseAttachmentType])
      {
        v35 = [(ICViewControllerManager *)self modernManagedObjectContext];
        v36 = [v35 ic_existingObjectWithID:v23];

        v37 = [v36 note];
        v38 = [v37 folder];
        v39 = v38;
        if (v36 && v37 && v38)
        {
          [v38 objectID];
          v40 = v76 = v7;
          [v40 URIRepresentation];
          v41 = v75 = v22;
          v79 = v41;
          v42 = [NSArray arrayWithObjects:&v79 count:1];
          [v6 setCurrentContainerObjectIDURLs:v42];

          v7 = v76;
          v43 = [v37 objectID];
          v44 = [v43 URIRepresentation];
          [v6 setCurrentNoteObjectIDURL:v44];

          v22 = v75;
          v45 = [ICTextViewScrollState scrollStateForAttachment:v36 inNote:v37];
          [v6 setScrollState:v45];
        }
      }

      goto LABEL_34;
    }

    objc_opt_class();
    v26 = [(ICViewControllerManager *)self selectedContainerItemID];
    v27 = ICDynamicCast();

    if (![(ICViewControllerManager *)self isSelectionAppropriateForObjectID:v23])
    {
LABEL_26:

      goto LABEL_27;
    }

    if ([(ICViewControllerManager *)self isTagSelected])
    {
      v28 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
      v29 = [v28 allObjects];
      [v29 ic_compactMap:&stru_100645B38];
      v31 = v30 = v7;
      [v6 setCurrentTagIdentifiers:v31];

      v7 = v30;
    }

    else if (v27)
    {
      v32 = [v27 type];
      [v6 setCurrentVirtualSmartFolderType:v32];

      v28 = [v27 accountObjectID];
      v29 = [v28 URIRepresentation];
      [v6 setCurrentVirtualSmartFolderAccountObjectIDURL:v29];
    }

    else
    {
      v33 = [(ICViewControllerManager *)self selectedContainerObjectIDs];

      if (!v33)
      {
LABEL_25:
        v34 = [v23 URIRepresentation];
        [v6 setCurrentNoteObjectIDURL:v34];

        [v6 setCurrentObjectIDURL:0];
        goto LABEL_26;
      }

      v28 = [(ICViewControllerManager *)self selectedContainerObjectIDs];
      v29 = [v28 ic_map:&stru_100645B78];
      [v6 setCurrentContainerObjectIDURLs:v29];
    }

    goto LABEL_25;
  }

  v18 = [(ICViewControllerManager *)self currentSearchBarViewController];
  [v18 startSearchWithSearchQuery:v15 searchTokens:0 searchScope:0 becomeFirstResponder:1];

  [(ICViewControllerManager *)self setIsApplyingStateRestoreArchive:0];
  if (v7)
  {
    v7[2](v7);
  }

LABEL_68:
}

- (void)setupViewsFromWindowStateArchive:(id)a3 systemPaperShowModernAccountAlert:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(ICViewControllerManager *)self window];
  v11 = [objc_opt_class() _isSecure];

  if (v11)
  {
    v12 = [(ICViewControllerManager *)self window];
    [NSException raise:NSInternalInconsistencyException format:@"Unexpectedly setting up main UI in secure window class: %@", v12];
  }

  v13 = [(ICViewControllerManager *)self folderListViewController];

  v14 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D7F64(v8);
  }

  v15 = &off_100531000;
  if ([v8 isSystemPaper])
  {
    v51 = v9;
    [(ICViewControllerManager *)self setIsAuxiliary:1];
    v16 = [v8 initialSystemPaperLink];
    v17 = [v8 initialSystemPaperImageData];
    v18 = [ICSystemPaperViewController newSystemPaperViewControllerWithIncomingLink:v16 incomingImageData:v17];
    [v18 setViewControllerManager:self];
    [(ICViewControllerManager *)self setSystemPaperViewController:v18];
    if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
    {
      v19 = [(ICViewControllerManager *)self selectionStateController];
      v20 = [v19 selectedNoteObjectID];

      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_13:
      v26 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v27 = [ICNote ic_existingObjectWithID:v20 context:v26];

      if (!v27)
      {
        [ICAssert handleFailedAssertWithCondition:"((resolvedNote) != nil)" functionName:"[ICViewControllerManager setupViewsFromWindowStateArchive:systemPaperShowModernAccountAlert:completion:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "resolvedNote"];
      }

      v28 = [(ICViewControllerManager *)self systemPaperViewController];
      [v28 setCurrentNote:v27 animated:0 direction:0 setEditing:objc_msgSend(v8 showInkPicker:{"shouldStartEditing"), 0}];

      if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
      {
        [(ICViewControllerManager *)self setSelectedNoteObjectID:v20];
      }

      goto LABEL_18;
    }

    v24 = [v8 currentObjectIDURL];

    if (v24)
    {
      v25 = [v8 currentObjectIDURL];
      v20 = [(ICViewControllerManager *)self managedObjectIDFromURL:v25];

      if (v20)
      {
        goto LABEL_13;
      }

      [ICAssert handleFailedAssertWithCondition:"((systemPaperID) != nil)" functionName:"[ICViewControllerManager setupViewsFromWindowStateArchive:systemPaperShowModernAccountAlert:completion:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "systemPaperID"];
    }

LABEL_18:
    v29 = [(ICViewControllerManager *)self systemPaperViewController];
    [v29 setShouldShowModernAccountAlert:v6];

    v30 = [(ICViewControllerManager *)self systemPaperViewController];
    v31 = [(ICViewControllerManager *)self window];
    [v31 setRootViewController:v30];

    v9 = v51;
    v15 = &off_100531000;
    goto LABEL_31;
  }

  v21 = [(ICViewControllerManager *)self window];
  v22 = [v21 rootViewController];

  -[ICViewControllerManager setIsAuxiliary:](self, "setIsAuxiliary:", [v8 isAuxiliaryWindow]);
  [(ICViewControllerManager *)self initializeMainSplitViewWithStateRestoreArchive:v8];
  if ([v8 isAuxiliaryWindow])
  {
    v16 = [(ICViewControllerManager *)self secondaryNavigationController];
    v23 = [(ICViewControllerManager *)self window];
    [v23 setRootViewController:v16];
  }

  else
  {
    v32 = [[ICActivityStreamNavigationController alloc] initWithCoordinator:self hasInteractiveSizing:0];
    [(ICViewControllerManager *)self setActivityStreamNavigationController:v32];

    v33 = [(ICViewControllerManager *)self selectedModernNote];
    v34 = [(ICViewControllerManager *)self activityStreamNavigationController];
    [v34 setObject:v33];

    v35 = [(ICViewControllerManager *)self activityStreamSelection];
    v36 = [(ICViewControllerManager *)self activityStreamNavigationController];
    [v36 setSelection:v35];

    if (v22)
    {
      v37 = [(ICViewControllerManager *)self trailingSidebarContainerViewController];
      v38 = [v37 isSidebarHidden];
      v39 = v38 ^ [v8 isTrailingContentVisible];
    }

    else
    {
      v39 = 0;
    }

    [(ICViewControllerManager *)self initializeTrailingSidebarSplitViewWithStateRestoreArchive:v8];
    v40 = [(ICViewControllerManager *)self trailingSidebarContainerViewController];
    [v40 setResizesWindow:v39];

    if ([(ICViewControllerManager *)self behavior]== 3)
    {
      [(ICViewControllerManager *)self trailingSidebarViewController];
    }

    else
    {
      [(ICViewControllerManager *)self outerSplitViewController];
    }
    v41 = ;
    v42 = [(ICViewControllerManager *)self window];
    [v42 setRootViewController:v41];

    if (v22)
    {
      v43 = [(ICViewControllerManager *)self trailingSidebarViewController];
      v44 = [v43 view];
      [v44 layoutIfNeeded];
    }

    if (![(ICViewControllerManager *)self hasCompactWidth]&& [(ICViewControllerManager *)self behavior]!= 3)
    {
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_10004330C;
      v55[3] = &unk_100645BA0;
      v56 = v8;
      v57 = self;
      [UIView performWithoutAnimation:v55];
    }

    v16 = [(ICViewControllerManager *)self trailingSidebarContainerViewController];
    [v16 setResizesWindow:1];
  }

LABEL_31:

  v52[0] = _NSConcreteStackBlock;
  v52[1] = *(v15 + 334);
  v52[2] = sub_10004368C;
  v52[3] = &unk_100645BF0;
  v52[4] = self;
  v53 = v8;
  v54 = v9;
  v45 = v9;
  v46 = v8;
  v47 = objc_retainBlock(v52);
  v48 = [(ICViewControllerManager *)self folderListViewController];
  if (v13)
  {
    v49 = [v48 folderDataSource];
    v50 = [v49 indexer];
    (v47[2])(v47, v50);
  }

  else
  {
    [v48 reloadListWithDataIndexedBlock:v47 dataRenderedBlock:0];
  }
}

- (void)dismissOverlayContent
{
  [(ICViewControllerManager *)self dismissPrimaryOverlayContent];

  [(ICViewControllerManager *)self dismissSupplementaryOverlayContent];
}

- (void)showAccountListAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(ICViewControllerManager *)self isSplitViewExpanded])
  {
    v6 = [(ICViewControllerManager *)self mainSplitViewController];
    [v6 ic_showColumn:0 animated:v3];
  }

  else
  {
    v6 = [(ICViewControllerManager *)self compactNavigationController];
    v5 = [v6 popToRootViewControllerAnimated:v3];
  }
}

- (void)showAttachmentBrowser
{
  v3 = [(ICViewControllerManager *)self currentAttachmentBrowserViewController];

  if (!v3)
  {
    v4 = [ICViewAttachmentsActivity alloc];
    v5 = [(ICViewControllerManager *)self mainSplitViewController];
    v6 = [(ICViewControllerManager *)self eventReporter];
    v7 = [(ICViewAttachmentsActivity *)v4 initWithPresentingViewController:v5 eventReporter:v6];

    [(ICViewAttachmentsActivity *)v7 performActivityWithCompletion:0];
  }
}

- (void)showTagSelection:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (v4 && ![v4 isEmpty])
  {
    v10 = [v16 includedObjectIDs];
    v9 = [NSMutableSet setWithSet:v10];

    v11 = [v16 excludedObjectIDs];
    v12 = [NSMutableSet setWithSet:v11];

    v13 = v9;
    if ([v16 mode] == 1 || (v13 = v12, objc_msgSend(v16, "mode") == 2))
    {
      v14 = +[ICTagAllTagsItemIdentifier sharedItemIdentifier];
      [v13 addObject:v14];
    }

    v15 = [v16 copy];
    [(ICViewControllerManager *)self setTagSelection:v15];

    [(ICViewControllerManager *)self showContainerWithIdentifiers:v9 excludingIdentifiers:v12 usingRootViewController:1 deferUntilDataLoaded:1 keepEditorShowing:&__kCFBooleanTrue animated:1];
  }

  else
  {
    if (![(ICViewControllerManager *)self hasCompactWidth])
    {
      v5 = [(ICViewControllerManager *)self mostRecentNonSearchContainerItemID];
      if (v5)
      {
        v6 = v5;
        v7 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];

        if (!v7)
        {
          v8 = [(ICViewControllerManager *)self mostRecentNonSearchContainerItemID];
          [(ICViewControllerManager *)self selectContainerWithIdentifier:v8 usingRootViewController:1 deferUntilDataLoaded:0 animated:0];
        }
      }
    }

    v9 = [(ICViewControllerManager *)self tagSelection];
    [v9 clear];
  }
}

- (void)showContainerWithIdentifiers:(id)a3 excludingIdentifiers:(id)a4 usingRootViewController:(BOOL)a5 deferUntilDataLoaded:(BOOL)a6 keepEditorShowing:(id)a7 animated:(BOOL)a8
{
  v10 = a6;
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = [v14 ic_containsObjectPassingTest:&stru_100645C30];
  v18 = [v14 ic_containsObjectPassingTest:&stru_100645C50];
  v19 = [v14 count];
  v20 = 0;
  if ((v18 & 1) == 0 && v19)
  {
    v20 = ([(ICViewControllerManager *)self noteContainerViewMode]== 0) | v17;
  }

  v21 = [(ICViewControllerManager *)self containerItemIDForContainerIdentifiers:v14];
  v22 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:v21];
  if (v22 == -1)
  {
    if ([(ICViewControllerManager *)self preferredNoteContainerViewMode]== -1)
    {
      goto LABEL_14;
    }

    v23 = [(ICViewControllerManager *)self preferredNoteContainerViewMode];
    [(ICViewControllerManager *)self setPreferredNoteContainerViewMode:-1];
    if (v23 == -1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v23 = v22;
    if ([(ICViewControllerManager *)self noteContainerViewMode]!= v22 && [(ICViewControllerManager *)self preferredNoteContainerViewMode]== -1)
    {
      [(ICViewControllerManager *)self setPreferredNoteContainerViewMode:[(ICViewControllerManager *)self noteContainerViewMode]];
    }
  }

  if (v23 == [(ICViewControllerManager *)self noteContainerViewMode]|| (self->_noteContainerViewMode = v23, v24 = [[ICNoteBrowseViewController alloc] initWithViewMode:v23 viewControllerManager:self], [(ICViewControllerManager *)self setRootNoteBrowseViewController:v24], v24, ![(ICViewControllerManager *)self isSplitViewExpanded]))
  {
LABEL_14:
    LOBYTE(v26) = a8;
    [(ICViewControllerManager *)self showContainerWithIdentifiers:v14 excludingIdentifiers:v15 usingRootViewController:v11 deferUntilDataLoaded:v10 dismissOverlayContent:v20 & 1 keepEditorShowing:v16 animated:v26];
    goto LABEL_15;
  }

  objc_initWeak(&location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100044100;
  v29[3] = &unk_100645CA0;
  objc_copyWeak(&v33, &location);
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v25 = objc_retainBlock(v29);
  if (+[UIKeyboard isInHardwareKeyboardMode])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100044224;
    block[3] = &unk_100645CC8;
    v28 = v25;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    (v25[2])(v25);
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
LABEL_15:
}

- (void)showNoteWithIdentifier:(id)a3
{
  v4 = a3;
  [(ICViewControllerManager *)self modernManagedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000442F0;
  v7[3] = &unk_100645D40;
  v9 = v8 = v4;
  v10 = self;
  v5 = v9;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)showInlineAttachmentWithIdentifier:(id)a3 inNoteIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ICViewControllerManager *)self modernManagedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100044834;
  v11[3] = &unk_100645DB8;
  v13 = v12 = v6;
  v14 = v7;
  v15 = self;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [v9 performBlock:v11];
}

- (void)showObjectWithObjectID:(id)a3
{
  v4 = a3;
  if ([v4 ic_isContainerType])
  {
    [(ICViewControllerManager *)self selectContainerWithIdentifier:v4 usingRootViewController:1 deferUntilDataLoaded:1 animated:1];
    goto LABEL_8;
  }

  if ([v4 ic_isInlineAttachmentType])
  {
    goto LABEL_4;
  }

  if ([v4 ic_isNoteType])
  {
    [(ICViewControllerManager *)self selectNoteWithObjectID:v4 scrollState:0 startEditing:0 animated:1 ensurePresented:1];
  }

  else if ([v4 ic_isAttachmentType])
  {
LABEL_4:
    [(ICViewControllerManager *)self selectAttachmentWithObjectID:v4 animated:1];
  }

LABEL_8:
}

- (void)showNoteWithObjectID:(id)a3 scrollState:(id)a4 startEditing:(BOOL)a5 showInkPicker:(BOOL)a6 dismissOverlayContent:(BOOL)a7 showLatestUpdatesIfAvailable:(BOOL)a8 animated:(BOOL)a9 ensurePresented:(BOOL)a10
{
  v10 = a8;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v16 = a10;
  v17 = a9;
  v57 = a3;
  v18 = a4;
  v19 = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
  if (!v57)
  {
    if ((v19 & 1) == 0)
    {
      [(ICViewControllerManager *)self setSelectedNoteObjectID:0];
    }

    if ([(ICViewControllerManager *)self isSplitViewExpanded])
    {
      v36 = [(ICViewControllerManager *)self mainSplitViewController];
      [v36 showColumn:1];
    }

    else
    {
      v47 = [(ICViewControllerManager *)self activeEditorController];
      v48 = [v47 ic_isViewVisible];

      if (!v48)
      {
        goto LABEL_52;
      }

      v36 = [(ICViewControllerManager *)self compactNavigationController];
      v49 = [v36 popViewControllerAnimated:1];
    }

    goto LABEL_51;
  }

  if ((v19 & 1) != 0 || ([(ICViewControllerManager *)self selectedNoteBrowseContainerItemID], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
  {
LABEL_17:
    v32 = [(ICViewControllerManager *)self systemPaperViewController];

    if (v32)
    {
      v33 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v34 = [v33 ic_existingObjectWithID:v57];

      if (!v34)
      {
        [ICAssert handleFailedAssertWithCondition:"((note) != nil)" functionName:"[ICViewControllerManager showNoteWithObjectID:scrollState:startEditing:showInkPicker:dismissOverlayContent:showLatestUpdatesIfAvailable:animated:ensurePresented:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "note"];
      }

      v35 = [(ICViewControllerManager *)self systemPaperViewController];
      [v35 setCurrentNote:v34 animated:v17 direction:0 setEditing:v13 showInkPicker:v12];

      if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
      {
        [(ICViewControllerManager *)self setSelectedNoteObjectID:v57];
      }

LABEL_50:
      v52 = [(ICViewControllerManager *)self previousSelectedNoteObjectID];
      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"updateCurrentNoteLastViewedMetadata:" object:v52];

      v36 = [(ICViewControllerManager *)self selectedNoteObjectID];
      v53 = [v36 copy];
      [(ICViewControllerManager *)self performSelector:"updateCurrentNoteLastViewedMetadata:" withObject:v53 afterDelay:0.75];

LABEL_51:
      goto LABEL_52;
    }

    [(ICViewControllerManager *)self dismissAnyPresentedViewControllerAnimated:v17 forShowNote:1 completion:0];
    v37 = [(ICViewControllerManager *)self noteEditorViewController];
    [v37 hideActivityStreamToolbarAnimated:v17];

    if ([v57 ic_isEntityOfClass:objc_opt_class()])
    {
      v38 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v39 = [v38 ic_existingObjectWithID:v57];

      if (v10 && [v39 isSharedViaICloud])
      {
        v40 = [[ICActivityStreamDigest alloc] initWithObject:v39];
        v41 = [v40 recentUpdatesRangeValue];
        v42 = v41;
        if (v41)
        {
          v43 = [v41 rangeValue];
          v45 = [ICTextViewScrollState scrollStateForRange:v43 inNote:v44, v39];

          v18 = v45;
        }
      }

      v46 = [(ICViewControllerManager *)self noteEditorViewController];
      [v46 setNote:v39 overrideScrollState:v18 startEditing:v13];
    }

    else
    {
      if (![v57 ic_isEntityOfClass:objc_opt_class()])
      {
        v51 = 0;
LABEL_42:
        if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
        {
          [(ICViewControllerManager *)self setSelectedNoteObjectID:v51];
        }

        if (v16)
        {
          if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
          {
            if (v11)
            {
              [(ICViewControllerManager *)self dismissOverlayContent];
            }

            [(ICViewControllerManager *)self setNoteEditorAnimated:v17 ensurePresented:1 startEditing:v13 showLegacy:[(ICViewControllerManager *)self isInHTMLEditorMode] showLatestUpdatesIfAvailable:1];
          }

          else
          {
            [(ICViewControllerManager *)self ensureNoteEditorPresentedAnimated:v17 startEditing:v13 dismissOverlayContent:v11];
          }
        }

        goto LABEL_50;
      }

      v50 = [(ICViewControllerManager *)self legacyManagedObjectContext];
      v39 = [v50 ic_existingObjectWithID:v57];

      v46 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
      [v46 displayNote:v39];
    }

    if (v39)
    {
      v51 = v57;
    }

    else
    {
      v51 = 0;
    }

    goto LABEL_42;
  }

  v21 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
  if (([(ICViewControllerManager *)self isSearchActive]&& [(ICViewControllerManager *)self isSplitViewExpanded]&& ![(ICViewControllerManager *)self noteContainerViewMode]|| ![(ICViewControllerManager *)self isSearchActive]) && ![(ICViewControllerManager *)self isSelectionAppropriateForObjectID:v57])
  {
    v22 = [(ICViewControllerManager *)self defaultContainerObjectIDForNoteWithObjectID:v57];

    v21 = v22;
    v16 = a10;
  }

  if (v21)
  {
    v55 = v16;
    v56 = v13;
    v23 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    v24 = [v23 isEqual:v21];

    if ((v24 & 1) == 0)
    {
      v25 = [(ICViewControllerManager *)self compactNavigationController];
      v26 = [v25 viewControllers];
      [v26 lastObject];
      v27 = v54 = v11;
      v28 = [(ICViewControllerManager *)self activeEditorController];

      v17 = v27 != v28 && a9;
      v29 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
      v30 = [NSSet ic_setFromNonNilObject:v21];
      v31 = +[NSSet set];
      [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:v29 animated:v17 ensurePresented:1 containerIdentifiers:v30 excludingIdentifiers:v31 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:0];

      v11 = v54;
    }

    v16 = v55;
    v13 = v56;
    goto LABEL_17;
  }

LABEL_52:
}

- (void)ensureNoteEditorPresentedAnimated:(BOOL)a3 startEditing:(BOOL)a4 dismissOverlayContent:(BOOL)a5
{
  v5 = a4;
  v6 = a3;
  if (a5)
  {
    [(ICViewControllerManager *)self dismissOverlayContent];
  }

  if (-[ICViewControllerManager selectionStateTrackingEnabled](self, "selectionStateTrackingEnabled") && (-[ICViewControllerManager selectionStateController](self, "selectionStateController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 hasDeferredItem], v8, v9))
  {
    v11 = [(ICViewControllerManager *)self selectionStateController];
    [v11 adoptDeferredAnimated:v6 startEditing:v5];
  }

  else
  {
    v10 = [(ICViewControllerManager *)self isInHTMLEditorMode];

    [(ICViewControllerManager *)self setNoteEditorAnimated:v6 ensurePresented:1 startEditing:v5 showLegacy:v10 showLatestUpdatesIfAvailable:1];
  }
}

- (void)showInvitationWithObjectID:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICViewControllerManager *)self systemPaperViewController];

  if (!v7)
  {
    if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
    {
      [(ICViewControllerManager *)self setSelectedInvitationObjectID:v6];
      v8 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
      v9 = +[ICAccount globalVirtualSharedWithYouFolder];
      if (kCFNull == v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10;
      if (kCFNull == v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12;
      if (v11 | v13)
      {
        v14 = v13;
        if (v11)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
        }

        else
        {
          v16 = [v11 isEqual:v13];

          if (v16)
          {
            goto LABEL_20;
          }
        }

        v8 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
        v9 = +[ICAccount globalVirtualSharedWithYouFolder];
        v25 = v9;
        v17 = [NSArray arrayWithObjects:&v25 count:1];
        v18 = [NSSet ic_setFromNonNilObject:v17];
        v19 = +[NSSet set];
        [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:v8 animated:v4 ensurePresented:1 containerIdentifiers:v18 excludingIdentifiers:v19 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:0];
      }
    }

LABEL_20:
    [(ICViewControllerManager *)self dismissAnyPresentedViewControllerAnimated:v4 forShowNote:1 completion:0];
    v20 = [(ICViewControllerManager *)self noteEditorViewController];
    [v20 hideActivityStreamToolbarAnimated:v4];

    v21 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v22 = [v21 objectWithID:v6];
    v23 = [(ICViewControllerManager *)self noteEditorViewController];
    [v23 setInvitation:v22];

    [(ICViewControllerManager *)self setNoteEditorAnimated:v4 ensurePresented:1 startEditing:0 showLegacy:0 showLatestUpdatesIfAvailable:1];
    [(ICViewControllerManager *)self dismissOverlayContent];
    v24 = [(ICViewControllerManager *)self eventReporter];
    [v24 submitCollabNotificationEventWithAction:3];

    goto LABEL_21;
  }

  [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager showInvitationWithObjectID:animated:]" simulateCrash:1 showAlert:0 format:@"System Paper does not support showing invitations"];
LABEL_21:
}

- (BOOL)presentAttachment:(id)a3 delegate:(id)a4 displayShowInNote:(BOOL)a5 editable:(BOOL)a6 selectedSubAttachment:(id)a7 presentingViewController:(id)a8
{
  v9 = a6;
  v10 = a5;
  v20 = a3;
  v14 = a8;
  v15 = a7;
  v16 = a4;
  v17 = a3;
  v18 = [NSArray arrayWithObjects:&v20 count:1];

  LOBYTE(v17) = [(ICViewControllerManager *)self presentAttachments:v18 startingAtIndex:0 delegate:v16 displayShowInNote:v10 editable:v9 selectedSubAttachment:v15 presentingViewController:v14];
  return v17;
}

- (BOOL)presentAttachments:(id)a3 startingAtIndex:(unint64_t)a4 delegate:(id)a5 displayShowInNote:(BOOL)a6 editable:(BOOL)a7 selectedSubAttachment:(id)a8 presentingViewController:(id)a9
{
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v17 = a9;
  if (!v17)
  {
    v18 = [(ICViewControllerManager *)self window];
    v19 = [v18 rootViewController];

    v20 = [v19 presentedViewController];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v19;
    }

    v17 = v22;
  }

  v23 = [(ICViewControllerManager *)self currentAttachmentPresenter];
  v24 = v23;
  if (v23 && (([v23 presentedViewController], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isBeingPresented"), v25, (v26 & 1) != 0) || (objc_msgSend(v24, "galleryAttachmentEditorController"), v27 = objc_claimAutoreleasedReturnValue(), v27, v27)))
  {
    v28 = 0;
    v29 = v14;
  }

  else
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100045DD4;
    v37[3] = &unk_100645DE0;
    v37[4] = self;
    v29 = v14;
    v38 = v14;
    v42 = a4;
    v39 = v15;
    v43 = a6;
    v44 = a7;
    v40 = v17;
    v41 = v16;
    v30 = objc_retainBlock(v37);
    v31 = v30;
    if (v24)
    {
      v32 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        sub_1004D8504();
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100045E54;
      v35[3] = &unk_100645CC8;
      v36 = v31;
      [v24 dismissAnimated:0 completion:v35];
    }

    else
    {
      (v30[2])(v30);
    }

    v28 = 1;
  }

  return v28;
}

- (void)showSearchResult:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v34 = a3;
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v8 = [v34 object];
    v9 = [v8 objectID];
    v10 = [v9 ic_isNoteType];

    if (v10)
    {
      v11 = [v34 configuration];
      v12 = [v11 foundAttachmentObjectID];

      if (!v12)
      {
        v18 = [v34 object];
        v19 = [v18 objectID];
        v20 = [v19 ic_isEntityOfClass:objc_opt_class()];

        if (v20)
        {
          v21 = [(ICViewControllerManager *)self modernManagedObjectContext];
          v22 = [v34 object];
          v23 = [v22 objectID];
          v24 = [v21 objectWithID:v23];

          v25 = [v34 firstMatchingRangeInNote];
          if (v25)
          {
            v26 = [v34 firstMatchingRangeInNote];
            v27 = [v26 rangeValue];
            v29 = v28;
          }

          else
          {
            v27 = 0;
            v29 = 0;
          }

          v13 = [ICTextViewScrollState scrollStateForRange:v27 inNote:v29, v24];
        }

        else
        {
          v13 = 0;
        }

        v17 = [v34 object];
        v30 = [v17 objectID];
        BYTE1(v33) = 1;
        LOBYTE(v33) = v4;
        [(ICViewControllerManager *)self selectNoteWithObjectID:v30 scrollState:v13 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:0 animated:v33 ensurePresented:?];

        goto LABEL_17;
      }

      v13 = [v34 configuration];
      v14 = [v13 foundAttachmentObjectID];
    }

    else
    {
      v15 = [v34 object];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_18:
        v31 = [(ICViewControllerManager *)self noteEditorViewController];
        v32 = [v34 highlightPatternRegexFinder];
        [v31 highlightSearchMatchesForRegexFinder:v32];

        [(ICViewControllerManager *)self setSelectedSearchResult:v34];
        goto LABEL_19;
      }

      v13 = [v34 object];
      v14 = [v13 objectID];
    }

    v17 = v14;
    [(ICViewControllerManager *)self selectAttachmentWithObjectID:v14 animated:v4];
LABEL_17:

    goto LABEL_18;
  }

  v6 = v34;
  if (!v34)
  {
    goto LABEL_20;
  }

  v7 = [(ICViewControllerManager *)self selectionStateController];
  [v7 pushSearchResult:v34 animated:v4];

LABEL_19:
  v6 = v34;
LABEL_20:
}

- (void)showRecentUpdatesForNoteWithObjectID:(id)a3 suppressSidebar:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  objc_opt_class();
  v6 = [(ICViewControllerManager *)self modernManagedObjectContext];
  v7 = [v6 objectWithID:v17];
  v8 = ICDynamicCast();

  if (v8)
  {
    v9 = [[ICActivityStreamDigest alloc] initWithObject:v8];
    v10 = [v9 recentUpdatesFilter];
    v11 = [v10 toDate];
    v12 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      [(ICViewControllerManager *)self hideAttributionHighlights];
      v14 = 0;
    }

    else
    {
      v14 = [[ICActivityStreamSelection alloc] initWithFilter:v10 displayDate:v11];
    }

    [(ICViewControllerManager *)self showAttributionHighlightsForNoteWithObjectID:v17 selection:v14 suppressSidebar:v4];
    v15 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
    [v15 moveToViewMode:1];

    [v8 markLastActivityRecentUpdatesViewed];
    v16 = [(ICViewControllerManager *)self eventReporter];
    [v16 submitCollabActivityBrowseEventForObject:v8 contextPath:0 clickContext:3 mode:0 isCurrentUserMentioned:objc_msgSend(v9 hasRecentUpdates:{"isCurrentUserMentionedInRecentSummary"), objc_msgSend(v9, "hasRecentUpdates")}];
  }
}

- (void)showActivityStreamForObjectWithObjectID:(id)a3 collabActivityContextPath:(int64_t)a4
{
  v14 = a3;
  objc_opt_class();
  v6 = [(ICViewControllerManager *)self modernManagedObjectContext];
  v7 = [v6 objectWithID:v14];
  v8 = ICDynamicCast();

  if (v8)
  {
    if (([v14 ic_isFolderType] & 1) != 0 || -[ICViewControllerManager showsPresentedActivityStreamAsModal](self, "showsPresentedActivityStreamAsModal"))
    {
      v9 = 4;
    }

    else if ([(ICViewControllerManager *)self hasCompactWidth])
    {
      v9 = 2;
    }

    else
    {
      v9 = 5;
    }

    [(ICViewControllerManager *)self presentActivityStreamForObject:v8 viewMode:v9 animated:1];
    v10 = [(ICViewControllerManager *)self activityStreamSelection];

    if (a4 && !v10)
    {
      v11 = [[ICActivityStreamDigest alloc] initWithObject:v8];
      v12 = [(ICViewControllerManager *)self eventReporter];
      [v12 submitCollabActivityBrowseEventForObject:v8 contextPath:a4 clickContext:4 mode:0 isCurrentUserMentioned:objc_msgSend(v11 hasRecentUpdates:{"isCurrentUserMentionedInRecentSummary"), objc_msgSend(v11, "hasRecentUpdates")}];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      [v13 markActivitySummaryViewed];
      [v13 markLastActivityRecentUpdatesViewed];
    }
  }
}

- (int64_t)activityStreamViewMode
{
  v3 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
  if (v3)
  {
    v4 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
    v5 = [v4 viewMode];
  }

  else if ([(ICViewControllerManager *)self isTrailingContentVisible])
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)presentActivityStreamForObject:(id)a3 viewMode:(int64_t)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = [(ICViewControllerManager *)self showsPresentedActivityStreamAsModal];
  v10 = 4;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100046834;
  v29[3] = &unk_100645E58;
  if (!v9)
  {
    v10 = a4;
  }

  v31 = v10;
  v29[4] = self;
  v11 = v8;
  v30 = v11;
  v32 = a5;
  v12 = objc_retainBlock(v29);
  [(ICViewControllerManager *)self stopEditing];
  v13 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];

  if (v13)
  {
    v14 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
    v15 = [v14 object];
    v16 = [v15 objectID];
    v17 = [v11 objectID];
    v18 = [v16 isEqual:v17];

    if ((v18 & 1) == 0)
    {
      [(ICViewControllerManager *)self hidePresentedActivityStreamNavigationControllerWithCompletion:v12];
    }
  }

  else
  {
    (v12[2])(v12);
  }

  v19 = [v11 objectID];
  if ([v19 ic_isNoteType])
  {
    v20 = [(ICViewControllerManager *)self selectedNoteObjectID];
    v21 = [v11 objectID];
    if (kCFNull == v20)
    {
      v22 = 0;
    }

    else
    {
      v22 = v20;
    }

    v23 = v22;
    if (kCFNull == v21)
    {
      v24 = 0;
    }

    else
    {
      v24 = v21;
    }

    v25 = v24;
    if (v23 | v25)
    {
      v26 = v25;
      if (v23 && v25)
      {
        v27 = [v23 isEqual:v25];

        if (v27)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      v19 = [v11 objectID];
      BYTE1(v28) = 1;
      LOBYTE(v28) = a5;
      [(ICViewControllerManager *)self selectNoteWithObjectID:v19 scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:0 showLatestUpdatesIfAvailable:1 animated:v28 ensurePresented:?];
    }

    else
    {
    }
  }

LABEL_23:
}

- (void)hideActivityStreamWithCompletion:(id)a3
{
  v4 = a3;
  if (![(ICViewControllerManager *)self showsPresentedActivityStreamAsModal]|| ([(ICViewControllerManager *)self presentedActivityStreamNavigationController], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    [(ICViewControllerManager *)self setActivityStreamSelection:0];
  }

  v6 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];

  if (v6)
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000471F8;
    v39[3] = &unk_100645E80;
    v39[4] = self;
    v40 = v4;
    [(ICViewControllerManager *)self hidePresentedActivityStreamNavigationControllerWithCompletion:v39];
    v7 = v40;
LABEL_8:

    goto LABEL_9;
  }

  if ([(ICViewControllerManager *)self usesSingleSplitView])
  {
    v8 = [(ICViewControllerManager *)self mainSplitViewController];
    [v8 hideColumn:4];

    v9 = [(ICViewControllerManager *)self mainSplitViewController];
    v10 = [v9 transitionCoordinator];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10004724C;
    v37[3] = &unk_100645EA8;
    v37[4] = self;
    v38 = v4;
    [v10 animateAlongsideTransition:0 completion:v37];

    v7 = v38;
    goto LABEL_8;
  }

  v11 = [(ICViewControllerManager *)self noteEditorViewController];
  [v11 hideActivityStreamToolbarAnimated:1];

  v12 = [(ICViewControllerManager *)self trailingSidebarViewController];
  if (![v12 isSidebarHidden])
  {
    v13 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
    v14 = [v13 displayMode];

    if (v14 == 1)
    {
      goto LABEL_9;
    }

    v15 = [(ICViewControllerManager *)self trailingSidebarViewController];
    v16 = [v15 view];
    [v16 frame];
    v18 = v17;
    v20 = v19;

    v21 = [(ICViewControllerManager *)self mainSplitViewController];
    [v21 nonDisplacedColumnWidth];
    v23 = v18 - v22;

    v24 = [(ICViewControllerManager *)self mainSplitViewController];
    LODWORD(v16) = [v24 isDisplacingColumn];

    if (v16)
    {
      v25 = [(ICViewControllerManager *)self mainSplitViewController];
      [v25 preferredDisplacedColumnWidth];
      v23 = v23 - v26;
    }

    v27 = [(ICViewControllerManager *)self mainSplitViewController];
    v28 = [v27 requiresNotificationForSecondaryColumnSize:{v23, v20}];

    v29 = [(ICViewControllerManager *)self trailingSidebarViewController];
    [v29 setSidebarHidden:1];

    v30 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
    v12 = [v30 transitionCoordinator];

    v31 = [(ICViewControllerManager *)self mainSplitViewController];
    v32 = [v31 isDisplacingColumn];

    if (v32)
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000472B8;
      v36[3] = &unk_100645E08;
      v36[4] = self;
      [v12 animateAlongsideTransition:v36 completion:0];
    }

    v33 = [(ICViewControllerManager *)self mainSplitViewController];
    [v33 setIsDisplacingColumn:0];

    if (v28)
    {
      v34 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      v35 = [v34 transitionCoordinator];
      [(ICViewControllerManager *)self sendNotificationForNoteEditorSizeChange:v35 transitionCoordinator:v23, v20];
    }
  }

LABEL_9:
}

- (BOOL)showsAttributionHighlights
{
  v2 = [(ICViewControllerManager *)self activityStreamSelection];
  v3 = v2 != 0;

  return v3;
}

- (void)showAttributionHighlightsForNoteWithObjectID:(id)a3 selection:(id)a4 suppressSidebar:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
  v11 = [v10 activityStreamViewController];
  v12 = [v11 objectID];

  if (v12 && ([v12 isEqual:v8] & 1) == 0)
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000477A0;
    v47[3] = &unk_100645ED0;
    v47[4] = self;
    v48 = v8;
    v49 = v9;
    v50 = a5;
    [(ICViewControllerManager *)self hidePresentedActivityStreamNavigationControllerWithCompletion:v47];

    v20 = v48;
LABEL_28:

    goto LABEL_29;
  }

  v13 = [(ICViewControllerManager *)self selectedModernNote];
  v14 = [v13 objectID];
  if (![v14 isEqual:v8])
  {
    goto LABEL_9;
  }

  v15 = [(ICViewControllerManager *)self activityStreamSelection];
  if (([v15 isEqual:v9] & 1) == 0)
  {

LABEL_9:
LABEL_10:
    if ([(__CFNull *)v8 ic_isModernNoteType])
    {
      v21 = [(ICViewControllerManager *)self selectedNoteObjectID];
      v22 = v21;
      if (kCFNull == v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }

      v24 = v23;
      if (kCFNull == v8)
      {
        v25 = 0;
      }

      else
      {
        v25 = v8;
      }

      v26 = v25;
      if (v24 | v26)
      {
        v27 = v26;
        if (!v24 || !v26)
        {

LABEL_31:
          v32 = [(ICViewControllerManager *)self modernManagedObjectContext];
          v42 = [v32 ic_existingObjectWithID:v8];

          v33 = [[ICTTTextEditGrouper alloc] initWithNote:v42];
          [v33 setJoinsWhitespaceAndNewlineGaps:1];
          v34 = [v9 filter];
          [v33 setFilter:v34];

          v35 = [v33 groupedEdits];
          v36 = [v35 firstObject];
          v37 = [v36 range];
          v39 = v38;

          v40 = [ICTextViewScrollState scrollStateForRange:v37 inNote:v39, v42];
          BYTE1(v41) = 1;
          LOBYTE(v41) = [(ICViewControllerManager *)self hasCompactWidth];
          [(ICViewControllerManager *)self selectNoteWithObjectID:v8 scrollState:v40 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:1 animated:v41 ensurePresented:?];

          goto LABEL_24;
        }

        v28 = [v24 isEqual:v26];

        if ((v28 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }
    }

    [(ICViewControllerManager *)self dismissOverlayContent];
LABEL_24:
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000477B4;
    v43[3] = &unk_100645ED0;
    v43[4] = self;
    v44 = v8;
    v45 = v9;
    v46 = a5;
    v29 = objc_retainBlock(v43);
    v30 = [(ICViewControllerManager *)self outerSplitViewController];
    if (v30)
    {
      v31 = [(ICViewControllerManager *)self outerSplitViewController];
      [v31 ic_performBlockAfterActiveTransition:v29];
    }

    else
    {
      (v29[2])(v29);
    }

    v20 = v44;
    goto LABEL_28;
  }

  v16 = [v9 filter];

  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = [(ICViewControllerManager *)self noteEditorViewController];
  v18 = [v17 authorHighlightsUpdater];
  v19 = [v9 filter];
  [v18 flashHighlightsForFilter:v19];

LABEL_29:
}

- (void)showRecentlyDeletedMathNotes
{
  if ([(ICViewControllerManager *)self behavior]== 1)
  {
    v5 = +[ICAccount globalVirtualRecentlyDeletedMathNotesFolder];
    v3 = [NSSet setWithObject:v5];
    v4 = +[NSSet set];
    [(ICViewControllerManager *)self selectContainerWithIdentifiers:v3 excludingIdentifiers:v4 usingRootViewController:0 deferUntilDataLoaded:1 animated:1];
  }
}

- (void)showSelectionForParticipant:(id)a3 noteObjectID:(id)a4
{
  v12 = a4;
  v6 = a3;
  v7 = [(ICViewControllerManager *)self selectedModernNote];
  v8 = [v7 objectID];
  v9 = [v8 isEqual:v12];

  if ((v9 & 1) == 0)
  {
    [(ICViewControllerManager *)self showObjectWithObjectID:v12];
  }

  v10 = [(ICViewControllerManager *)self noteEditorViewController];
  v11 = [v10 realtimeCollaborationSelectionController];
  [v11 showSelectionForParticipant:v6];
}

- (BOOL)canUserChangeNoteContainerViewMode
{
  v3 = [(ICViewControllerManager *)self mainSplitViewController];
  v4 = [v3 presentedViewController];
  if (v4)
  {
    v5 = [(ICViewControllerManager *)self isAttachmentBrowserVisible];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setNoteContainerViewMode:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v8 = v6;
  if (self->_noteContainerViewMode == a3 || (v7 = [(ICViewControllerManager *)self isAuxiliary], v6 = v8, v7))
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v6[2](v6);
  }

  else
  {
    self->_noteContainerViewMode = a3;
    [(ICViewControllerManager *)self updateSplitViewForCurrentViewModeWithCompletion:v8];
  }

  v6 = v8;
LABEL_7:
}

- (void)updateSplitViewForCurrentViewModeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self mainSplitViewController];
  v6 = [v5 style];

  if (![(ICViewControllerManager *)self hasCompactWidth]&& ([(ICViewControllerManager *)self noteContainerViewMode]|| v6 == 2) && ([(ICViewControllerManager *)self noteContainerViewMode]!= 1 || v6 == 1))
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
    {
      v7 = [(ICViewControllerManager *)self windowStateArchive];
      v8 = [(ICViewControllerManager *)self behavior];
      v9 = ![(ICViewControllerManager *)self hasCompactWidth];
      if (v8 == 1)
      {
        v9 = 1;
      }

      v57 = v9;
      v58 = v8 != 1;
      v59 = v4;
      v10 = [(ICViewControllerManager *)self noteContainerViewMode];
      v11 = [(ICViewControllerManager *)self isSplitViewExpanded];
      objc_opt_class();
      v12 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
      v13 = [v12 dataSource];
      v14 = [v13 firstRelevantItemIdentifier];
      v15 = ICDynamicCast();
      v16 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v17 = [(ICViewControllerManager *)self legacyManagedObjectContext];
      v18 = v10;
      v4 = v59;
      [_TtC11MobileNotes25ICSelectionStateUtilities updateArchive:v7 forNewViewMode:v18 requiresContainerSelection:v57 requiresObjectSelection:v11 validateContainerSelection:v58 defaultObjectID:v15 modernManagedObjectContext:v16 legacyManagedObjectContext:v17];

      [(ICViewControllerManager *)self applyStateRestoreArchive:v7 completion:v59];
    }

    else
    {
      if ([(ICViewControllerManager *)self isSplitViewExpanded]&& ![(ICViewControllerManager *)self noteContainerViewMode])
      {
        v50 = [(ICViewControllerManager *)self selectedNoteObjectID];
        v51 = v50;
        if (v50)
        {
          v52 = v50;
        }

        else
        {
          v52 = [(ICViewControllerManager *)self previousSelectedNoteObjectID];
        }

        v7 = v52;

        if (![(ICViewControllerManager *)self isSelectionAppropriateForObjectID:v7])
        {
          objc_opt_class();
          v53 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
          v54 = [v53 dataSource];
          v55 = [v54 firstRelevantItemIdentifier];
          v56 = ICDynamicCast();

          v7 = v56;
        }
      }

      else
      {
        v7 = 0;
      }

      v19 = [(ICViewControllerManager *)self windowStateArchive];
      [v19 setCurrentFirstVisibleObjectIDURLForContainerObjectIDURL:&__NSDictionary0__struct];
      [v19 setCurrentNoteContainerViewMode:{-[ICViewControllerManager noteContainerViewMode](self, "noteContainerViewMode")}];
      if ([(ICViewControllerManager *)self noteContainerViewMode]== 1)
      {
        [v19 setCurrentNoteObjectIDURL:0];
        if (![(ICViewControllerManager *)self hasCompactWidth])
        {
          v20 = [v19 currentContainerObjectIDURLs];
          v21 = [v20 count];

          if (v21)
          {
            v22 = [v19 currentContainerObjectIDURLs];
            v23 = [v22 lastObject];
            v24 = [(ICViewControllerManager *)self managedObjectIDFromURL:v23];

            objc_opt_class();
            v25 = [(ICViewControllerManager *)self modernManagedObjectContext];
            v26 = [v25 ic_existingObjectWithID:v24];
            v27 = ICDynamicCast();

            if (v27)
            {
              v60 = [v27 ancestorFolderObjectIDs];
              v28 = [v60 reverseObjectEnumerator];
              v29 = [v28 allObjects];
              [v27 objectID];
              v30 = v24;
              v32 = v31 = v4;
              v33 = [v29 arrayByAddingObject:v32];

              v4 = v31;
              v24 = v30;

              v34 = [v33 ic_map:&stru_100645F10];
              [v19 setCurrentContainerObjectIDURLs:v34];
            }
          }
        }
      }

      else if (![(ICViewControllerManager *)self noteContainerViewMode])
      {
        [v19 setIsSupplementaryContentVisible:1];
        v35 = [v19 currentContainerObjectIDURLs];
        v36 = [v35 count];

        if (v36)
        {
          v37 = [v19 currentContainerObjectIDURLs];
          v38 = [v37 lastObject];
          v61 = v38;
          v39 = [NSArray arrayWithObjects:&v61 count:1];
          [v19 setCurrentContainerObjectIDURLs:v39];
        }

        if ([v7 ic_isNoteType])
        {
          v40 = [v7 URIRepresentation];
          [v19 setCurrentNoteObjectIDURL:v40];
        }

        if ([v7 ic_isInvitationType])
        {
          v41 = [v7 URIRepresentation];
          [v19 setCurrentInvitationObjectIDURL:v41];
        }
      }

      if ([(ICViewControllerManager *)self isTagSelected])
      {
        v42 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
        v43 = [v42 ic_compactMap:&stru_100645F50];

        v44 = [v43 allObjects];
        [v19 setCurrentTagIdentifiers:v44];
      }

      objc_opt_class();
      v45 = [(ICViewControllerManager *)self selectedContainerItemID];
      v46 = ICDynamicCast();

      if (v46)
      {
        v47 = [v46 type];
        [v19 setCurrentVirtualSmartFolderType:v47];

        v48 = [v46 accountObjectID];
        v49 = [v48 URIRepresentation];
        [v19 setCurrentVirtualSmartFolderAccountObjectIDURL:v49];
      }

      [(ICViewControllerManager *)self applyStateRestoreArchive:v19 completion:v4];
    }
  }
}

- (id)showNewNoteWithApproach:(int64_t)a3 sender:(id)a4 recordAudio:(BOOL)a5 animated:(BOOL)a6
{
  v40 = a6;
  v9 = a4;
  v10 = [(ICViewControllerManager *)self selectedNoteObjectID];
  v11 = [v10 ic_isEntityOfClass:objc_opt_class()];

  if (v11)
  {
    v12 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    [v12 saveNote];
  }

  objc_opt_class();
  v13 = ICDynamicCast();
  v14 = [v13 ic_isPencilEvent];

  HIDWORD(v36) = a3 == 10;
  v39 = a3 == 9;
  objc_opt_class();
  LODWORD(v36) = objc_opt_isKindOfClass();
  objc_opt_class();
  v15 = ICDynamicCast();
  v16 = v15;
  if (v15)
  {
    v17 = [v15 allTouches];
    v18 = [v17 anyObject];

    v19 = [v18 window];
    v20 = [v19 windowScene];
    [v20 delegate];
    v21 = v14;
    v23 = v22 = a5;

    objc_opt_class();
    v24 = ICDynamicCast();

    a5 = v22;
    v14 = v21;
  }

  else
  {
    objc_opt_class();
    v18 = ICDynamicCast();
    v24 = v18;
  }

  v25 = 0;
  if ((v14 & 1) == 0 && !a5)
  {
    v25 = (a3 != 10) & ((a3 != 0) | v36);
  }

  if (v9)
  {
    v26 = [(ICViewControllerManager *)self eventReporter];
    [v26 pushNoteCreateDataWithCreateApproach:a3];
  }

  v27 = [(ICViewControllerManager *)self containerObjectIDForNewNoteWithApproach:a3, v36];
  if (v27)
  {
    if ([objc_opt_class() isNoteCreateApproachForScrapPaper:a3])
    {
      v28 = 1;
    }

    else if ([objc_opt_class() doesNoteCreateApproachUseSelectedContainerToInferSystemPaperness:a3])
    {
      objc_opt_class();
      [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
      v37 = v14;
      v31 = v30 = a5;
      v32 = ICDynamicCast();

      v33 = [v32 type];
      v28 = [v33 isEqual:ICVirtualSmartFolderItemIdentifierTypeSystemPaper];

      a5 = v30;
      v14 = v37;
    }

    else
    {
      v28 = 0;
    }

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100048C08;
    v41[3] = &unk_100645F78;
    v42 = v14;
    v43 = v24 != 0;
    v41[4] = self;
    v44 = v39;
    v45 = a5;
    v46 = v38;
    v29 = [(ICViewControllerManager *)self showNewNoteStartEditing:v25 inContainerWithObjectID:v27 isSystemPaper:v28 showInkPicker:v14 animated:v40 completion:v41];
    if (v9)
    {
      v34 = [(ICViewControllerManager *)self eventReporter];
      [v34 popNoteCreateData];
    }
  }

  else
  {
    [(ICViewControllerManager *)self showUpgradeNotesDialog];
    v29 = 0;
  }

  return v29;
}

- (void)showUpgradeNotesDialog
{
  v3 = +[NSBundle mainBundle];
  v11 = [v3 localizedStringForKey:@"Upgrade Notes" value:&stru_100661CF0 table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"To create notes directly value:upgrade your notes." table:{&stru_100661CF0, 0}];

  v6 = [UIAlertController alertControllerWithTitle:v11 message:v5 preferredStyle:1];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_100661CF0 table:0];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];

  [v6 addAction:v9];
  v10 = [(ICViewControllerManager *)self mainSplitViewController];
  [v10 presentViewController:v6 animated:1 completion:0];
}

- (void)closeAuxiliaryWindowAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(ICViewControllerManager *)self isAuxiliary])
  {
    v5 = +[UIDevice ic_isiPhone];
    v6 = os_log_create("com.apple.notes", "UI");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending ICSystemPaperDismissAction to scene presenter", buf, 2u);
      }

      v8 = [[ICSystemPaperDismissAction alloc] initWithReason:@"done"];
      v9 = [(ICViewControllerManager *)self window];
      v10 = [v9 windowScene];
      v11 = [v10 _FBSScene];

      if (v11)
      {
        v12 = [NSSet setWithObject:v8];
        [v11 sendActions:v12];
      }

      else
      {
        v12 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          sub_1004D856C();
        }
      }
    }

    else
    {
      if (v7)
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Closing Auxiliary Window", v16, 2u);
      }

      v13 = [(ICViewControllerManager *)self window];
      v8 = [v13 _windowHostingScene];

      if (!v8)
      {
        v11 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No active auxiliary window to close. Ignoring request.", v15, 2u);
        }

        goto LABEL_19;
      }

      if (v3)
      {
        v11 = objc_alloc_init(UIWindowSceneDestructionRequestOptions);
        [v11 setWindowDismissalAnimation:2];
      }

      else
      {
        v11 = 0;
      }

      v12 = +[UIApplication sharedApplication];
      v14 = [(ICSystemPaperDismissAction *)v8 session];
      [v12 requestSceneSessionDestruction:v14 options:v11 errorHandler:&stru_100645FB8];
    }

LABEL_19:
  }
}

- (unint64_t)countOfAllVisibleAccounts
{
  v2 = [(ICViewControllerManager *)self folderListViewController];
  v3 = [v2 folderDataSource];
  v4 = [v3 countOfAllVisibleAccounts];

  return v4;
}

- (NSString)title
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100040A44;
  v30 = sub_100040A54;
  v31 = 0;
  v3 = [(ICViewControllerManager *)self selectedNoteObjectID];

  if (v3)
  {
    v4 = [(ICViewControllerManager *)self selectedNoteObjectID];
    v5 = [v4 ic_isModernNoteType];

    if (v5)
    {
      v6 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000495C0;
      v25[3] = &unk_100645FE0;
      v25[4] = self;
      v25[5] = &v26;
      [v6 performBlockAndWait:v25];
    }

    else
    {
      v8 = [(ICViewControllerManager *)self selectedNoteObjectID];
      v9 = [v8 ic_isLegacyNoteType];

      if (!v9)
      {
        goto LABEL_17;
      }

      v6 = [(ICViewControllerManager *)self legacyManagedObjectContext];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100049660;
      v24[3] = &unk_100645FE0;
      v24[4] = self;
      v24[5] = &v26;
      [v6 performBlockAndWait:v24];
    }

    goto LABEL_16;
  }

  v7 = [(ICViewControllerManager *)self selectedInvitationObjectID];

  if (v7)
  {
    v6 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100049700;
    v23[3] = &unk_100645FE0;
    v23[4] = self;
    v23[5] = &v26;
    [v6 performBlockAndWait:v23];
LABEL_16:

    goto LABEL_17;
  }

  v10 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];

  if (v10)
  {
    objc_opt_class();
    v11 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    v6 = ICDynamicCast();

    if ([v6 ic_isModernContainerType])
    {
      v12 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v13 = v22;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000497A0;
      v22[3] = &unk_100646008;
      v22[4] = self;
      v22[5] = v6;
      v22[6] = &v26;
      [v12 performBlockAndWait:v22];
    }

    else
    {
      if (![v6 ic_isLegacyContainerType])
      {
        goto LABEL_16;
      }

      v12 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v13 = v21;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100049820;
      v21[3] = &unk_100646008;
      v21[4] = self;
      v21[5] = v6;
      v21[6] = &v26;
      [v12 performBlockAndWait:v21];
    }

    goto LABEL_16;
  }

  v14 = [(ICViewControllerManager *)self tagSelection];
  v15 = [v14 isNonEmpty];

  if (v15)
  {
    v16 = [(ICViewControllerManager *)self tagSelection];
    v17 = [v16 title];
    v18 = v27[5];
    v27[5] = v17;
  }

LABEL_17:
  v19 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v19;
}

- (void)updateSceneTitle:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self title];
  [v4 setTitle:v5];
}

- (BOOL)isAttachmentBrowserVisible
{
  v2 = [(ICViewControllerManager *)self currentAttachmentBrowserViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isNoteEditorVisible
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  if ([v3 ic_isViewVisible])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    v4 = [v5 ic_isViewVisible];
  }

  return v4;
}

- (BOOL)isNoteEditorTopViewController
{
  if ([(ICViewControllerManager *)self hasCompactWidth])
  {
    [(ICViewControllerManager *)self compactNavigationController];
  }

  else
  {
    [(ICViewControllerManager *)self secondaryNavigationController];
  }
  v3 = ;
  v4 = [(ICViewControllerManager *)self noteEditorViewController];
  if (v4)
  {
    v5 = [(ICViewControllerManager *)self noteEditorViewController];
    v6 = [v3 topViewController];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isFolderListVisible
{
  v2 = [(ICViewControllerManager *)self folderListViewController];
  v3 = [v2 ic_isViewVisible];

  return v3;
}

- (ICNoteSearchViewController)searchController
{
  v3 = [(ICViewControllerManager *)self folderListViewController];
  v4 = [v3 noteSearchViewController];
  v5 = [v4 isActive];

  if (v5)
  {
    v6 = [(ICViewControllerManager *)self folderListViewController];
    v7 = [v6 noteSearchViewController];
  }

  else
  {
    v8 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    v9 = [v8 navigationController];
    v6 = [v9 topViewController];

    objc_opt_class();
    v10 = ICDynamicCast();
    v11 = [v10 noteSearchViewController];

    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v12 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
      v7 = [v12 noteSearchViewController];
    }
  }

  return v7;
}

- (ICBaseViewController)currentSearchBarViewController
{
  if ([(ICViewControllerManager *)self isSplitViewExpanded])
  {
    if ([(ICViewControllerManager *)self noteContainerViewMode])
    {
      [(ICViewControllerManager *)self secondaryNavigationController];
    }

    else
    {
      [(ICViewControllerManager *)self supplementaryNavigationController];
    }
    v3 = ;
  }

  else
  {
    v3 = [(ICViewControllerManager *)self compactNavigationController];
  }

  v4 = v3;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v3 viewControllers];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v10;
          goto LABEL_17;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v7;
}

- (ICBrowseAttachmentsCollectionController)currentAttachmentBrowserViewController
{
  objc_opt_class();
  v3 = [(ICViewControllerManager *)self mainSplitViewController];
  v4 = [v3 ic_topViewController];
  v5 = ICDynamicCast();

  v6 = [v5 viewControllers];
  v7 = [v6 ic_firstObjectOfClass:objc_opt_class()];

  return v7;
}

- (void)hidePresentedActivityStreamNavigationControllerWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
  v5 = [v4 presentingViewController];

  if (v5)
  {
    v6 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
    v7 = [v6 presentingViewController];
    [v7 dismissViewControllerAnimated:1 completion:v8];
  }

  else if (v8)
  {
    v8[2]();
  }
}

- (UIViewController)presentedActivityStreamPresentingViewController
{
  if ([(ICViewControllerManager *)self isAuxiliary])
  {
    v3 = [(ICViewControllerManager *)self noteEditorViewController];
  }

  else
  {
    if ([(ICViewControllerManager *)self behavior]== 3)
    {
      [(ICViewControllerManager *)self trailingSidebarViewController];
    }

    else
    {
      [(ICViewControllerManager *)self outerSplitViewController];
    }
    v3 = ;
  }

  return v3;
}

- (ICActivityStreamNavigationController)presentedActivityStreamNavigationController
{
  objc_opt_class();
  v3 = [(ICViewControllerManager *)self presentedActivityStreamPresentingViewController];
  v4 = [v3 presentedViewController];
  v5 = ICDynamicCast();

  return v5;
}

- (void)setWindow:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_window, v4);
  v5 = [(ICViewControllerManager *)self intentsInteractionController];
  [v5 setWindow:v4];
}

- (id)selectedModernAccount
{
  v3 = [(ICViewControllerManager *)self selectedContainerObjectIDs];
  v4 = [v3 lastObject];
  v5 = [v4 ic_isModernAccountType];

  if (v5)
  {
    v6 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v7 = [(ICViewControllerManager *)self selectedContainerObjectIDs];
    v8 = [v7 lastObject];
    v9 = [v6 ic_existingObjectWithID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)selectedModernFolder
{
  v3 = [(ICViewControllerManager *)self selectedContainerObjectIDs];
  v4 = [v3 lastObject];
  v5 = [v4 ic_isModernFolderType];

  if (v5)
  {
    v6 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v7 = [(ICViewControllerManager *)self selectedContainerObjectIDs];
    v8 = [v7 lastObject];
    v9 = [v6 ic_existingObjectWithID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setSplitViewExpandingOrCollapsing:(BOOL)a3
{
  v3 = a3;
  self->_splitViewExpandingOrCollapsing = a3;
  v5 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
  [v5 setSplitViewExpandingOrCollapsing:v3];

  v6 = [(ICViewControllerManager *)self noteEditorViewController];
  [v6 setSplitViewExpandingOrCollapsing:v3];
}

- (void)showStartupWithForceWelcomeScreen:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(ICViewControllerManager *)self isWelcomeScreenVisible])
  {
    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v7 = +[ICStartupController hasShownWelcomeScreen];
    v8 = +[ICStartupController shouldShowWelcomeOrWhatsNewScreen];
    v9 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D866C(v8, v4, v9);
    }

    v10 = [ICStartupNavigationController alloc];
    v11 = [(ICViewControllerManager *)self window];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10004A520;
    v29[3] = &unk_100646058;
    v31 = v7;
    v29[4] = self;
    v30 = v6;
    v12 = [(ICStartupNavigationController *)v10 initWithForceWelcomeScreen:v4 presentingWindow:v11 dismissBlock:v29];

    v13 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D86FC();
    }

    [(ICViewControllerManager *)self setWelcomeScreenVisible:1];
    [(ICViewControllerManager *)self setStartupNavigationController:v12];
    [(ICStartupNavigationController *)v12 setModalInPresentation:1];
    v14 = objc_alloc_init(UIViewController);
    v15 = [ICOverlayWindowPresenter alloc];
    v16 = [(ICViewControllerManager *)self window];
    v17 = [(ICOverlayWindowPresenter *)v15 initWithRootViewController:v14 presentingWindow:v16];
    [(ICViewControllerManager *)self setStartupPresenter:v17];

    v18 = +[UIColor ic_dynamicWhiteBlackColor];
    v19 = [v14 view];
    [v19 setBackgroundColor:v18];

    v20 = +[UIColor blackColor];
    v21 = [(ICViewControllerManager *)self startupPresenter];
    [v21 setWindowBackgroundColor:v20];

    v22 = [(ICViewControllerManager *)self startupPresenter];
    [v22 setPresentAnimationType:2];

    v23 = [(ICViewControllerManager *)self startupPresenter];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10004A72C;
    v26[3] = &unk_100645BA0;
    v27 = v14;
    v28 = v12;
    v24 = v12;
    v25 = v14;
    [v23 presentWithCompletionBlock:v26];
  }
}

- (BOOL)hasMultipleModernAccounts
{
  v2 = [(ICViewControllerManager *)self folderListViewController];
  v3 = [v2 folderDataSource];

  LOBYTE(v2) = [v3 countOfModernAccounts] > 1;
  return v2;
}

- (BOOL)isMainSplitViewDisplayModeSecondaryOnly
{
  v2 = [(ICViewControllerManager *)self mainSplitViewController];
  v3 = [v2 displayMode] == 1;

  return v3;
}

- (ICTTTextContentStorage)textContentStorage
{
  objc_opt_class();
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  v4 = [v3 textView];
  v5 = ICDynamicCast();

  objc_opt_class();
  v6 = [v5 textLayoutManager];
  v7 = [v6 textContentManager];
  v8 = ICDynamicCast();

  return v8;
}

- (void)setSelectedNoteBrowseContainerItemID:(id)a3
{
  v4 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedNoteBrowseContainerItemID:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedNoteBrowseContainerItemID should not be called when feature enabled"];
  }

  else
  {
    [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:v4 sideEffects:1];
  }
}

- (void)setSelectedNoteBrowseContainerItemID:(id)a3 sideEffects:(BOOL)a4
{
  v14 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedNoteBrowseContainerItemID:sideEffects:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedNoteBrowseContainerItemID should not be called when feature enabled"];
  }

  else if (a4)
  {
    if (([(ICItemIdentifier *)self->_selectedNoteBrowseContainerItemID isEqual:v14]& 1) == 0)
    {
      objc_storeStrong(&self->_selectedNoteBrowseContainerItemID, a3);
      if (v14)
      {
        v7 = [(ICViewControllerManager *)self tagSelection];
        [v7 clear];
      }

      else
      {
        v8 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
        [v8 setNoteContainer:0];

        v9 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
        [v9 setNoteCollection:0];

        v10 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
        [v10 setVirtualSmartFolder:0];

        [(ICViewControllerManager *)self setFocusedNoteObjectID:0];
      }

      if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
      {
        v11 = [(ICViewControllerManager *)self isSearchActiveWithQuery];
        if (v14)
        {
          if ((v11 & 1) == 0)
          {
            [(ICViewControllerManager *)self setMostRecentNonSearchContainerItemID:v14];
          }
        }
      }

      v12 = [(ICViewControllerManager *)self window];
      v13 = [v12 windowScene];
      [(ICViewControllerManager *)self updateSceneTitle:v13];
    }
  }

  else
  {
    objc_storeStrong(&self->_selectedNoteBrowseContainerItemID, a3);
  }
}

- (void)setSelectedNoteObjectID:(id)a3
{
  v4 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedNoteObjectID:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedNoteObjectID should not be called when feature enabled"];
  }

  else
  {
    [(ICViewControllerManager *)self setSelectedNoteObjectID:v4 sideEffects:1];
  }
}

- (void)setSelectedNoteObjectID:(id)a3 sideEffects:(BOOL)a4
{
  v7 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedNoteObjectID:sideEffects:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedNoteObjectID should not be called when feature enabled"];
  }

  else if (a4)
  {
    [(ICViewControllerManager *)self setPreviousSelectedNoteObjectID:self->_selectedNoteObjectID];
    objc_storeStrong(&self->_selectedNoteObjectID, a3);
    v8 = [(ICViewControllerManager *)self selectedNoteObjectID];

    if (v8)
    {
      [(ICViewControllerManager *)self setSelectedInvitationObjectID:0 sideEffects:0];
    }

    v9 = [(ICViewControllerManager *)self previousSelectedNoteObjectID];
    v10 = [v9 isEqual:v7];

    if ((v10 & 1) == 0)
    {
      v11 = [(ICViewControllerManager *)self previousSelectedNoteObjectID];
      [(ICViewControllerManager *)self deleteEmptyNoteIfNeeded:v11];
    }

    objc_initWeak(&location, self);
    objc_copyWeak(&v12, &location);
    performBlockOnMainThread();
    [(ICViewControllerManager *)self setSelectedSearchResult:0];
    [(ICViewControllerManager *)self setIsSelectedNoteTogglingLock:0];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    objc_storeStrong(&self->_selectedNoteObjectID, a3);
  }
}

- (NSManagedObjectID)previousSelectedNoteObjectID
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v3 = [(ICViewControllerManager *)self selectionStateController];
    v4 = [v3 previousSelectedNoteObjectID];
  }

  else
  {
    v4 = self->_previousSelectedNoteObjectID;
  }

  return v4;
}

- (void)setPreviousSelectedNoteObjectID:(id)a3
{
  v5 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setPreviousSelectedNoteObjectID:]" simulateCrash:1 showAlert:0 format:@"VCM::setPreviousSelectedNoteObjectID should not be called when feature enabled"];
  }

  else
  {
    objc_storeStrong(&self->_previousSelectedNoteObjectID, a3);
  }
}

- (NSManagedObjectID)selectedInvitationObjectID
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v3 = [(ICViewControllerManager *)self selectionStateController];
    v4 = [v3 selectedInvitationObjectID];
  }

  else
  {
    v4 = self->_selectedInvitationObjectID;
  }

  return v4;
}

- (void)setSelectedInvitationObjectID:(id)a3
{
  v4 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedInvitationObjectID:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedInvitationObjectID should not be called when feature enabled"];
  }

  else
  {
    [(ICViewControllerManager *)self setSelectedInvitationObjectID:v4 sideEffects:1];
  }
}

- (void)setSelectedInvitationObjectID:(id)a3 sideEffects:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedInvitationObjectID:sideEffects:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedInvitationObjectID should not be called when feature enabled"];
  }

  else
  {
    objc_storeStrong(&self->_selectedInvitationObjectID, a3);
    if (v4)
    {
      v7 = [(ICViewControllerManager *)self selectedInvitationObjectID];

      if (v7)
      {
        [(ICViewControllerManager *)self setSelectedNoteObjectID:0 sideEffects:0];
      }
    }
  }
}

- (void)setTagSelection:(id)a3
{
  v5 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setTagSelection:]" simulateCrash:1 showAlert:0 format:@"VCM::setTagSelection should not be called when feature enabled"];
  }

  else
  {
    objc_storeStrong(&self->_tagSelection, a3);
  }
}

- (NSManagedObjectID)focusedNoteObjectID
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v3 = [(ICViewControllerManager *)self selectionStateController];
    v4 = [v3 focusedNoteObjectID];
  }

  else
  {
    v4 = self->_focusedNoteObjectID;
  }

  return v4;
}

- (void)setFocusedNoteObjectID:(id)a3
{
  v5 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setFocusedNoteObjectID:]" simulateCrash:1 showAlert:0 format:@"VCM::setFocusedNoteObjectID should not be called when feature enabled"];
  }

  else
  {
    objc_storeStrong(&self->_focusedNoteObjectID, a3);
  }
}

- (void)setActivityStreamSelection:(id)a3
{
  v12 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    activityStreamSelection = [(ICViewControllerManager *)self selectionStateController];
    [activityStreamSelection setActivityStreamSelection:v12];
  }

  else
  {
    v5 = v12;
    activityStreamSelection = self->_activityStreamSelection;
    self->_activityStreamSelection = v5;
  }

  v6 = [(ICViewControllerManager *)self activityStreamNavigationController];
  [v6 setSelection:v12];

  v7 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
  [v7 setSelection:v12];

  v8 = [(ICViewControllerManager *)self noteEditorViewController];
  v9 = [v8 attributionSidebarController];
  v10 = [v12 filter];
  [v9 setFilter:v10 animated:1];

  if (v12)
  {
    [(ICViewControllerManager *)self stopEditing];
  }

  else
  {
    v11 = [(ICViewControllerManager *)self noteEditorViewController];
    [v11 hideActivityStreamToolbarAnimated:1];
  }

  [(ICViewControllerManager *)self updateIgnoreTextViewTaps];
}

- (ICItemIdentifier)mostRecentNonSearchContainerItemID
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v3 = [(ICViewControllerManager *)self selectionStateController];
    v4 = [v3 mostRecentNonSearchContainerItemID];
  }

  else
  {
    v4 = self->_mostRecentNonSearchContainerItemID;
  }

  return v4;
}

- (void)setMostRecentNonSearchContainerItemID:(id)a3
{
  v5 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setMostRecentNonSearchContainerItemID:]" simulateCrash:1 showAlert:0 format:@"VCM::setMostRecentNonSearchContainerItemID should not be called when feature enabled"];
  }

  else
  {
    objc_storeStrong(&self->_mostRecentNonSearchContainerItemID, a3);
  }
}

- (ICSearchResult)selectedSearchResult
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v3 = [(ICViewControllerManager *)self selectionStateController];
    v4 = [v3 currentSelectedSearchResult];
  }

  else
  {
    v4 = self->_selectedSearchResult;
  }

  return v4;
}

- (void)setSelectedSearchResult:(id)a3
{
  v5 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedSearchResult:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedSearchResult should not be called when feature enabled"];
  }

  else
  {
    objc_storeStrong(&self->_selectedSearchResult, a3);
  }
}

- (NSArray)mostRecentSelections
{
  v2 = [(ICViewControllerManager *)self selectionStateController];
  v3 = [v2 mostRecentSelections];

  return v3;
}

- (void)splitViewControllerDidCollapse:(id)a3
{
  [(ICViewControllerManager *)self setSplitViewExpandingOrCollapsing:0];
  [(ICViewControllerManager *)self setSplitViewCollapsing:0];
  v5 = [(ICViewControllerManager *)self currentSearchBarViewController];
  v4 = [v5 noteSearchViewController];
  [v4 cancelSearch];
}

- (void)splitViewControllerDidExpand:(id)a3
{
  [(ICViewControllerManager *)self setSplitViewExpandingOrCollapsing:0];
  v5 = [(ICViewControllerManager *)self currentSearchBarViewController];
  v4 = [v5 noteSearchViewController];
  [v4 cancelSearch];
}

- (void)splitViewControllerInteractivePresentationGestureWillBegin:(id)a3
{
  if (![(ICViewControllerManager *)self isInHTMLEditorMode])
  {
    v5 = [(ICViewControllerManager *)self noteEditorViewController];
    v4 = [v5 textView];
    [v4 _willBeginInteractiveResize];
  }
}

- (void)splitViewControllerInteractivePresentationGestureDidEnd:(id)a3
{
  if (![(ICViewControllerManager *)self isInHTMLEditorMode])
  {
    v5 = [(ICViewControllerManager *)self noteEditorViewController];
    v4 = [v5 textView];
    [v4 _didEndInteractiveResize];
  }
}

- (void)splitViewController:(id)a3 willShowColumn:(int64_t)a4
{
  v6 = a3;
  v7 = [(ICViewControllerManager *)self mainSplitViewController];

  if (v7 == v6)
  {
    v8 = [(ICViewControllerManager *)self mainSplitViewController];
    if ([v8 preferredDisplacedColumn] == a4)
    {
      v9 = [(ICViewControllerManager *)self isTrailingContentVisible];

      if (v9)
      {
        v10 = [v6 transitionCoordinator];

        if (v10)
        {
          v11 = [v6 transitionCoordinator];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10004B930;
          v14[3] = &unk_100645E08;
          v14[4] = self;
          [v11 animateAlongsideTransition:v14 completion:0];
        }

        else
        {
          v12 = [(ICViewControllerManager *)self mainSplitViewController];
          v13 = [v12 displayMode];

          if (v13 == 3)
          {
LABEL_10:
            [(ICViewControllerManager *)self setActivityStreamSelection:0];
            goto LABEL_11;
          }

          v11 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
          [v11 setPreferredDisplayMode:1];
        }

        goto LABEL_10;
      }
    }

    else
    {
    }
  }

LABEL_11:
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v38 = a3;
  v6 = [v38 displayMode];
  if (v6 != a4)
  {
    v7 = v6;
    v8 = [(ICViewControllerManager *)self mainSplitViewController];

    if (v8 != v38)
    {
      v9 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];

      if (v9 != v38)
      {
        goto LABEL_48;
      }

      v10 = [(ICViewControllerManager *)self mainSplitViewController];
      [v10 updateStateForTrailingSidebarVisible:a4 == 2];
      goto LABEL_47;
    }

    if (a4 != 6 && v7 != 6)
    {
      v11 = [(ICViewControllerManager *)self isTrailingContentVisible];
      if (a4 == 1 || (v11 & 1) == 0)
      {
        v12 = [(ICViewControllerManager *)self trailingSidebarViewController];
        v13 = [v12 view];
        [v13 bounds];
        v15 = v14;
        v17 = v16;

        if ([(ICViewControllerManager *)self isTrailingContentVisible])
        {
          v18 = [(ICViewControllerManager *)self trailingSidebarViewController];
          [v18 sidebarWidth];
          v15 = v15 - v19;
        }

        if (a4 == 4 || a4 == 2)
        {
          v20 = [(ICViewControllerManager *)self mainSplitViewController];
          v21 = [v20 style];
          v22 = [(ICViewControllerManager *)self mainSplitViewController];
          v23 = v22;
          if (v21 == 2)
          {
            [v22 supplementaryColumnWidth];
          }

          else
          {
            [v22 primaryColumnWidth];
          }

          v25 = v24;

          v15 = v15 - v25;
        }

        if (a4 == 4)
        {
          v26 = [(ICViewControllerManager *)self mainSplitViewController];
          [v26 primaryColumnWidth];
          v15 = v15 - v27;
        }

        v28 = [(ICViewControllerManager *)self mainSplitViewController];
        v29 = [v28 requiresNotificationForSecondaryColumnSize:{v15, v17}];

        v30 = [(ICViewControllerManager *)self trailingSidebarViewController];
        v31 = [v30 isTransitioning];

        if (!v31 && v29)
        {
          v32 = [v38 transitionCoordinator];
          [(ICViewControllerManager *)self sendNotificationForNoteEditorSizeChange:v32 transitionCoordinator:v15, v17];
        }

        [(ICViewControllerManager *)self setProposedMainSplitViewControllerDisplayMode:a4];
        v33 = [v38 transitionCoordinator];
        [(ICViewControllerManager *)self sendNotificationForSplitViewDisplayModeChangeWithTransitionCoordinator:v33];
      }
    }

    if ([(ICViewControllerManager *)self behavior]== 3 && (a4 == 1 || v7 == 1))
    {
      [(ICViewControllerManager *)self updateNoteEditorBezelsIfNeededWithDisplayMode:a4 force:1];
    }

    if (a4 <= 6 && ((1 << a4) & 0x68) != 0)
    {
      [(ICViewControllerManager *)self stopEditing];
    }

    if (([v38 isCollapsed] & 1) == 0)
    {
      if (![(ICViewControllerManager *)self noteContainerViewMode]&& (a4 == 2 ? (v34 = v7 == 4) : (v34 = 0), !v34 ? (v35 = 0) : (v35 = 1), v7 == 5 ? (v36 = a4 == 3) : (v36 = 0), v36 || (v35 & 1) != 0) || (v37 = [(ICViewControllerManager *)self noteContainerViewMode], a4 == 1) && (v7 & 0xFFFFFFFFFFFFFFFELL) == 2 && v37 == 1)
      {
        v10 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
        [v10 becomeFirstResponder];
LABEL_47:
      }
    }
  }

LABEL_48:
}

- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4
{
  v6 = a3;
  v7 = [(ICViewControllerManager *)self outerSplitViewController];

  if (v7 == v6)
  {
    v8 = [(ICViewControllerManager *)self selectedNoteObjectID];
    [(ICViewControllerManager *)self setMostRecentRegularWidthSelectedNoteObjectID:v8];

    v9 = [(ICViewControllerManager *)self tagSelection];
    [(ICViewControllerManager *)self setMostRecentRegularWidthTagSelection:v9];

    v10 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    [(ICViewControllerManager *)self setMostRecentRegularWidthSelectedNoteBrowseContainerItemID:v10];
  }

  v11 = [(ICViewControllerManager *)self compactNavigationController];
  v12 = [v11 viewControllers];
  if ([v12 count])
  {
    v13 = [(ICViewControllerManager *)self behavior];

    if (v13 != 3)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v14 = 1;
  [(ICViewControllerManager *)self setSplitViewExpandingOrCollapsing:1];
  [(ICViewControllerManager *)self setSplitViewCollapsing:1];
  v15 = [(ICViewControllerManager *)self noteEditorViewController];
  v16 = [v15 note];
  if (!v16)
  {
    v17 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    v18 = [v17 note];
    v14 = v18 != 0;
  }

  if ([(ICViewControllerManager *)self isApplyingStateRestoreArchive])
  {
    v19 = [(ICViewControllerManager *)self noteContainerViewMode];
    v20 = [(ICViewControllerManager *)self selectedNoteObjectID];
    v21 = v20;
    if (v19 == 1)
    {
      if (!v20)
      {
        v22 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
        a4 = 2 * ([v22 count] != 0);
LABEL_27:

        goto LABEL_28;
      }
    }

    else if (!v20)
    {
      v22 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
      a4 = [v22 count] != 0;
      goto LABEL_27;
    }

    a4 = 2;
LABEL_28:

    goto LABEL_29;
  }

  v23 = [(ICViewControllerManager *)self noteEditorViewController];
  v24 = [v23 presentedViewController];
  v83 = [v24 ic_hasFullScreenModalPresentationStyle];

  v25 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v26 = [v25 noteSearchViewController];
  v27 = v14;
  if ([v26 isActive])
  {
    v28 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
    v29 = [v28 noteSearchViewController];
    v82 = [v29 ic_isViewVisible];
  }

  else
  {
    v82 = 0;
  }

  v30 = [(ICViewControllerManager *)self isMainSplitViewDisplayModeSecondaryOnly];
  v31 = [(ICViewControllerManager *)self isTagSelected];
  v32 = [(ICViewControllerManager *)self noteContainerViewMode];
  v33 = [(ICViewControllerManager *)self mainSplitViewController];
  v34 = [v33 displayMode];
  if (v32)
  {
    if (v34 == 2)
    {
      v81 = 1;
    }

    else
    {
      v35 = [(ICViewControllerManager *)self mainSplitViewController];
      v81 = [v35 displayMode] == 3;
    }

    v36 = [(ICViewControllerManager *)self secondaryNavigationController];
    v37 = [v36 viewControllers];
    if ([v37 count])
    {
      v38 = [(ICViewControllerManager *)self isMainSplitViewDisplayModeSecondaryOnly];
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v34 == 4)
  {
    v81 = 1;
  }

  else
  {
    v43 = [(ICViewControllerManager *)self mainSplitViewController];
    if ([v43 displayMode] == 6)
    {
      v81 = 1;
    }

    else
    {
      v44 = [(ICViewControllerManager *)self mainSplitViewController];
      v81 = [v44 displayMode] == 5;
    }
  }

  v36 = [(ICViewControllerManager *)self supplementaryNavigationController];
  v37 = [v36 viewControllers];
  if (![v37 count])
  {
LABEL_42:
    v38 = 0;
    goto LABEL_45;
  }

  v45 = [(ICViewControllerManager *)self mainSplitViewController];
  if ([v45 displayMode] == 2)
  {
    v38 = 1;
  }

  else
  {
    [(ICViewControllerManager *)self mainSplitViewController];
    v80 = v30;
    v47 = v46 = v31;
    v38 = [v47 displayMode] == 3;

    v31 = v46;
    v30 = v80;
  }

LABEL_45:
  v14 = v27;
  if (v83)
  {
    goto LABEL_53;
  }

  if ((v30 & 1) != 0 || [(ICViewControllerManager *)self behavior]== 3)
  {
    if (v27)
    {
      goto LABEL_53;
    }

    a4 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];

    if (!a4)
    {
      goto LABEL_30;
    }

    goto LABEL_50;
  }

  v48 = [(ICViewControllerManager *)self selectedNoteObjectID];

  if (v48)
  {
    goto LABEL_53;
  }

  if (!(v82 & 1 | !v81 | v31 & v81 & 1))
  {
    a4 = 0;
    goto LABEL_30;
  }

  if ((v38 | v82 | v31 & v81))
  {
LABEL_50:
    if (![(ICViewControllerManager *)self noteContainerViewMode])
    {
      a4 = 1;
      goto LABEL_30;
    }

LABEL_53:
    [(ICViewControllerManager *)self selectionStateTrackingEnabled];
    v42 = 1;
    a4 = 2;
    goto LABEL_54;
  }

LABEL_29:
  if (a4 == 2)
  {
    goto LABEL_53;
  }

LABEL_30:
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [(ICViewControllerManager *)self setSelectedNoteObjectID:0];
  }

  v39 = [(ICViewControllerManager *)self noteEditorViewController];
  [v39 stopTextFindingIfNecessary];

  v40 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
  [v40 stopTextFinding];

  v41 = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
  v42 = 0;
  if (!a4 && (v41 & 1) == 0)
  {
    [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:0 sideEffects:0];
    a4 = 0;
    v42 = 0;
  }

LABEL_54:
  v49 = [(ICViewControllerManager *)self childPrimaryViewController];
  v50 = [NSMutableArray arrayWithObject:v49];

  v51 = [(ICViewControllerManager *)self noteContainerViewMode];
  if ((a4 - 1) <= 1 && !v51)
  {
    v52 = [(ICViewControllerManager *)self supplementaryNavigationController];
    v53 = [v52 viewControllers];
    [v50 ic_addObjectsFromNonNilArray:v53];
  }

  if (v42)
  {
    v54 = [(ICViewControllerManager *)self noteContainerViewMode]!= 1;
    v55 = [(ICViewControllerManager *)self secondaryNavigationController];
    v56 = [v55 viewControllers];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v57 = v56;
    v58 = [v57 countByEnumeratingWithState:&v85 objects:v89 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = v54 || v14;
      v61 = *v86;
      do
      {
        for (i = 0; i != v59; i = i + 1)
        {
          if (*v86 != v61)
          {
            objc_enumerationMutation(v57);
          }

          v63 = *(*(&v85 + 1) + 8 * i);
          if (!v60)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              continue;
            }
          }

          [v50 addObject:v63];
        }

        v59 = [v57 countByEnumeratingWithState:&v85 objects:v89 count:16];
      }

      while (v59);
    }
  }

  v64 = [v50 copy];
  v65 = [(ICViewControllerManager *)self compactNavigationController];
  [v65 setViewControllers:v64];

  v66 = [(ICViewControllerManager *)self selectedModernNote];
  LODWORD(v65) = [v66 isSharedViaICloud];

  if (!v65)
  {
    goto LABEL_82;
  }

  if (![(ICViewControllerManager *)self isApplyingStateRestoreArchive])
  {
    v67 = [(ICViewControllerManager *)self window];
    v68 = [v67 rootViewController];
    v69 = [v68 ic_topViewController];
    if ([v69 ic_hasFullScreenModalPresentationStyle])
    {
LABEL_72:

      goto LABEL_73;
    }

    v72 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
    if ([v72 displayMode] == 2)
    {
      goto LABEL_78;
    }

    v73 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
    if ([v73 displayMode] == 3)
    {

LABEL_78:
      goto LABEL_79;
    }

    if (![(ICViewControllerManager *)self usesSingleSplitView])
    {

      goto LABEL_72;
    }

    v84 = [(ICViewControllerManager *)self mainSplitViewController];
    v78 = [v84 viewControllerForColumn:4];
    v79 = [(ICViewControllerManager *)self activityStreamNavigationController];

    if (v78 == v79)
    {
LABEL_79:
      v71 = 2;
LABEL_80:
      v74 = [(ICViewControllerManager *)self selectedModernNote];
      [(ICViewControllerManager *)self presentActivityStreamForObject:v74 viewMode:v71 animated:0];

      if ([(ICViewControllerManager *)self usesSingleSplitView])
      {
        v75 = [(ICViewControllerManager *)self mainSplitViewController];
        [v75 setViewController:0 forColumn:4];

        v76 = [(ICViewControllerManager *)self mainSplitViewController];
        [v76 hideColumn:4];
      }

      goto LABEL_82;
    }
  }

LABEL_73:
  v70 = [(ICViewControllerManager *)self activityStreamSelection];

  if (v70)
  {
    v71 = 1;
    goto LABEL_80;
  }

LABEL_82:

LABEL_83:
  return 3;
}

- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4
{
  v6 = a3;
  [(ICViewControllerManager *)self setSplitViewExpandingOrCollapsing:1];
  v7 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];

  if (v7 == v6 && ![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v8 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    if (!v8)
    {
      if ([(ICViewControllerManager *)self isTagSelected])
      {
LABEL_7:
        if (![(ICViewControllerManager *)self isTagSelected])
        {
          v9 = [(ICViewControllerManager *)self mostRecentRegularWidthTagSelection];
          [(ICViewControllerManager *)self setTagSelection:v9];
        }

        if (![(ICViewControllerManager *)self isTagSelected])
        {
          v10 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];

          if (!v10)
          {
            v11 = [(ICViewControllerManager *)self mostRecentRegularWidthSelectedNoteBrowseContainerItemID];
            [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:v11 sideEffects:0];
          }
        }

        v12 = [(ICViewControllerManager *)self selectedNoteObjectID];

        if (!v12)
        {
          v13 = [(ICViewControllerManager *)self mostRecentRegularWidthSelectedNoteObjectID];
          [(ICViewControllerManager *)self setSelectedNoteObjectID:v13 sideEffects:0];
        }

        [(ICViewControllerManager *)self setMostRecentRegularWidthSelectedNoteObjectID:0];
        [(ICViewControllerManager *)self setMostRecentRegularWidthTagSelection:0];
        [(ICViewControllerManager *)self setMostRecentRegularWidthSelectedNoteBrowseContainerItemID:0];
        [(ICViewControllerManager *)self updateSplitViewForCurrentViewModeWithCompletion:0];
        goto LABEL_15;
      }

      v8 = [(ICViewControllerManager *)self mostRecentRegularWidthSelectedNoteBrowseContainerItemID];
      [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:v8 sideEffects:0];
    }

    goto LABEL_7;
  }

LABEL_15:
  v14 = a4;
  v15 = [(ICViewControllerManager *)self folderListViewController];
  v16 = [v15 navigationItem];
  v17 = [v16 searchController];
  v18 = [v17 isActive];

  v121 = v18;
  if (v18)
  {
    v19 = [(ICViewControllerManager *)self folderListViewController];
    v20 = [v19 navigationItem];
    v21 = [v20 searchController];

    v22 = [v21 searchBar];
    v23 = [v22 searchTextField];
    v24 = [v23 text];

    v25 = [v21 searchBar];
    v26 = [v25 searchTextField];
    v112 = [v26 tokens];

    v27 = [v21 searchBar];
    v111 = [v27 selectedScopeButtonIndex];

    v28 = [v21 searchBar];
    v29 = [v28 searchTextField];
    v110 = [v29 isFirstResponder];

    v30 = [(ICViewControllerManager *)self folderListViewController];
    v31 = [v30 navigationItem];
    v32 = [v31 searchController];
    [v32 setActive:0];
  }

  else
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v24 = 0;
  }

  v113 = v6;
  v120 = +[NSMutableArray array];
  v33 = +[NSMutableArray array];
  v34 = [(ICViewControllerManager *)self compactNavigationController];
  v35 = [v34 viewControllers];

  v126 = 0u;
  v127 = 0u;
  v114 = [(ICViewControllerManager *)self noteContainerViewMode]== 0;
  v128 = 0u;
  v129 = 0u;
  obj = v35;
  v36 = [obj countByEnumeratingWithState:&v126 objects:v131 count:16];
  v37 = v14;
  v116 = v33;
  if (!v36)
  {
    v119 = 1;
    goto LABEL_63;
  }

  v38 = v36;
  v39 = *v127;
  v40 = 3;
  if (!v121)
  {
    v40 = 5;
  }

  v115 = v40;
  if (v121)
  {
    v41 = 2;
  }

  else
  {
    v41 = 4;
  }

  v117 = v41;
  v119 = 1;
  do
  {
    for (i = 0; i != v38; i = i + 1)
    {
      if (*v127 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v43 = *(*(&v126 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(ICViewControllerManager *)self noteContainerViewMode])
        {
          if (v121)
          {
            goto LABEL_55;
          }

          if (_UISolariumEnabled())
          {
            v37 = 2;
          }

          else
          {
            v37 = 3;
          }
        }

        else if (_UISolariumEnabled())
        {
          v37 = v117;
        }

        else if ([(ICViewControllerManager *)self behavior]== 3)
        {
          v37 = v117;
        }

        else
        {
          v37 = v115;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(ICViewControllerManager *)self noteContainerViewMode]== 1)
          {
            v44 = v33;
          }

          else
          {
            v44 = v120;
          }

          [v44 addObject:v43];
          if (_UISolariumEnabled())
          {
            v45 = 2;
          }

          else if ([(ICViewControllerManager *)self behavior]== 3)
          {
            v45 = 2;
          }

          else
          {
            v45 = 3;
          }

          v119 = 0;
          if ([(ICViewControllerManager *)self noteContainerViewMode])
          {
            v37 = 1;
          }

          else
          {
            v37 = v45;
          }
        }

        else
        {
          v46 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
          v47 = v46;
          if (v43 == v46)
          {

LABEL_53:
            if ([(ICViewControllerManager *)self behavior]== 3)
            {
              continue;
            }

            [v33 addObject:v43];
            v114 = 0;
LABEL_55:
            v37 = 1;
            continue;
          }

          [(ICViewControllerManager *)self noteEditorViewController];
          v49 = v48 = v37;

          v50 = v43 == v49;
          v37 = v48;
          v33 = v116;
          if (v50)
          {
            goto LABEL_53;
          }
        }
      }
    }

    v38 = [obj countByEnumeratingWithState:&v126 objects:v131 count:16];
  }

  while (v38);
LABEL_63:

  if ([(ICViewControllerManager *)self noteContainerViewMode]== 1)
  {
    v51 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    v52 = [v33 containsObject:v51];

    v53 = v33;
    v54 = v112;
    v55 = v113;
    v56 = v24;
    v57 = v114;
    if ((v52 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v54 = v112;
    v55 = v113;
    v56 = v24;
    v57 = v114;
    if ([(ICViewControllerManager *)self usesSingleSplitView])
    {
      if (![(ICViewControllerManager *)self noteContainerViewMode])
      {
        v59 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
        v60 = [v120 containsObject:v59];

        v53 = v120;
        v33 = v116;
        if ((v60 & 1) == 0)
        {
LABEL_65:
          v58 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
          [v53 insertObject:v58 atIndex:0];
        }
      }
    }
  }

  if (![(ICViewControllerManager *)self noteContainerViewMode])
  {
    if ([(ICViewControllerManager *)self behavior]== 1 || ([(ICViewControllerManager *)self trailingSidebarSplitViewController], v88 = objc_claimAutoreleasedReturnValue(), v88, v88 == v55) && v37 == 3)
    {
      v89 = [(ICViewControllerManager *)self noteEditorViewController];
      v90 = [v33 containsObject:v89];

      if ((v90 & 1) == 0)
      {
        v91 = [(ICViewControllerManager *)self noteEditorViewController];
        [v33 insertObject:v91 atIndex:0];
      }
    }
  }

  if ([obj count])
  {
    v118 = v37;
    v61 = [(ICViewControllerManager *)self childPrimaryViewController];
    v130 = v61;
    v62 = [NSArray arrayWithObjects:&v130 count:1];
    v63 = [(ICViewControllerManager *)self primaryNavigationController];
    [v63 setViewControllers:v62];

    v64 = [v120 copy];
    v65 = [(ICViewControllerManager *)self supplementaryNavigationController];
    [v65 setViewControllers:v64];

    v66 = [v33 copy];
    v67 = [(ICViewControllerManager *)self secondaryNavigationController];
    [v67 setViewControllers:v66];

    if ((v119 | v57))
    {
      v68 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
      if (![v68 count])
      {
        v69 = [(ICViewControllerManager *)self excludedContainerIdentifiers];
        if ([v69 count])
        {
          goto LABEL_76;
        }

        v70 = v68;
        v71 = [(ICViewControllerManager *)self selectedNoteObjectID];

        if (v71)
        {
          v72 = [(ICViewControllerManager *)self selectedNoteObjectID];
          v69 = [(ICViewControllerManager *)self defaultContainerObjectIDForNoteWithObjectID:v72];

          v68 = [NSSet ic_setFromNonNilObject:v69];

LABEL_76:
        }

        else
        {
          v68 = v70;
        }
      }

      v73 = [(ICViewControllerManager *)self folderListViewController];
      v74 = [v73 dataSource];
      v75 = [v74 firstRelevantItemIdentifier];

      v76 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:v75]!= 1;
      if (![v68 count])
      {
        v77 = [(ICViewControllerManager *)self excludedContainerIdentifiers];
        v78 = [v77 count];

        if (!v78)
        {
          v79 = [NSSet ic_setFromNonNilObject:v75];

          v68 = v79;
        }
      }

      v124[0] = _NSConcreteStackBlock;
      v124[1] = 3221225472;
      v124[2] = sub_10004D260;
      v124[3] = &unk_100646080;
      v124[4] = self;
      v125 = v57;
      v80 = objc_retainBlock(v124);
      if (v119 & 1 | ![(ICViewControllerManager *)self selectionStateTrackingEnabled])
      {
        v81 = [(ICViewControllerManager *)self excludedContainerIdentifiers];
        [(ICViewControllerManager *)self rootNoteBrowseViewController];
        v82 = v75;
        v83 = v56;
        v85 = v84 = v68;
        v86 = [(ICViewControllerManager *)self noteContainerViewMode]== 0;
        v87 = [NSNumber numberWithBool:v57 || v76];
        BYTE1(v109) = v86;
        v54 = v112;
        LOBYTE(v109) = 0;
        [(ICViewControllerManager *)self selectContainerWithIdentifiers:v84 excludingIdentifiers:v81 isChangingDisplayMode:1 noteBrowseViewController:v85 usingRootViewController:1 deferUntilDataLoaded:0 dismissOverlayContent:&__kCFBooleanFalse animated:v109 ensurePresented:v87 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:v80 dataRenderedBlock:?];

        v68 = v84;
        v56 = v83;
        v75 = v82;
        v55 = v113;

        v33 = v116;
      }

      else
      {
        v33 = v116;
        if ([(ICViewControllerManager *)self selectionStateTrackingEnabled]&& v57)
        {
          (v80[2])(v80);
        }
      }
    }

    v37 = v118;
    if (v121)
    {
      v92 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
      [v92 startSearchWithSearchQuery:v56 searchTokens:v54 searchScope:v111 becomeFirstResponder:v110];
    }
  }

  v93 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];

  if (v93 == v55)
  {
    v94 = [(ICViewControllerManager *)self mainSplitViewController];
    [v94 setPreferredDisplayMode:v37];

    v95 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];

    if (v95)
    {
      v96 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
      v97 = [v96 viewMode];

      if (v97 == 4)
      {
        v37 = 1;
      }

      else
      {
        [(ICViewControllerManager *)self hidePresentedActivityStreamNavigationControllerWithCompletion:0];
        v98 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
        v99 = [v98 shouldRenderAsOverlay];

        if (v99)
        {
          v100 = [(ICViewControllerManager *)self activityStreamSelection];

          if (v100)
          {
            v101 = [(ICViewControllerManager *)self noteEditorViewController];
            v102 = [(ICViewControllerManager *)self selectedModernNote];
            v103 = [(ICViewControllerManager *)self activityStreamSelection];
            [v101 showActivityStreamToolbarForObject:v102 selection:v103 animated:0];
          }

          if ((v97 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v37 = 3;
          }

          else
          {
            v37 = 1;
          }
        }

        else
        {
          v37 = 2;
        }
      }

      v33 = v116;
    }

    else
    {
      v37 = 1;
    }
  }

  if ([(ICViewControllerManager *)self usesSingleSplitView])
  {
    v104 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];

    if (v104)
    {
      v105 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
      v106 = [v105 viewMode];

      if (v106 != 4)
      {
        [(ICViewControllerManager *)self hidePresentedActivityStreamNavigationControllerWithCompletion:0];
      }

      v107 = [v55 transitionCoordinator];
      v123[0] = _NSConcreteStackBlock;
      v123[1] = 3221225472;
      v123[2] = sub_10004D41C;
      v123[3] = &unk_100645E08;
      v123[4] = self;
      [v107 animateAlongsideTransition:&stru_1006460C0 completion:v123];
    }
  }

  return v37;
}

- (void)screenshotService:(id)a3 generatePDFRepresentationWithCompletion:(id)a4
{
  v5 = a4;
  if (!-[ICViewControllerManager isNoteEditorVisible](self, "isNoteEditorVisible") || -[ICViewControllerManager isWelcomeScreenVisible](self, "isWelcomeScreenVisible") || (-[ICViewControllerManager window](self, "window"), v6 = objc_claimAutoreleasedReturnValue(), [v6 ic_topmostPresentedViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    if (v5)
    {
      v5[2](v5, 0, 0x7FFFFFFFFFFFFFFFLL, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
    }

    goto LABEL_6;
  }

  if ([(ICViewControllerManager *)self isInHTMLEditorMode])
  {
    v8 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    v9 = [v8 printFormatter];
    v10 = [v8 contentLayer];
    [v10 contentOffset];
    v12 = v11;
    v13 = [v8 contentLayer];
    v14 = [v13 noteHTMLEditorView];
    v15 = [v14 webView];
    v16 = [v15 scrollView];
    [v16 contentSize];
    v18 = v12 / v17;

LABEL_16:
    v32 = fmax(v18, 0.0);

    if (qword_1006CB238 != -1)
    {
      sub_1004D8730();
    }

    v33 = qword_1006CB230;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D834;
    block[3] = &unk_100646158;
    v36 = v9;
    v38 = v32;
    v37 = v5;
    v34 = v9;
    dispatch_async(v33, block);

    goto LABEL_6;
  }

  v8 = [(ICViewControllerManager *)self noteEditorViewController];
  v19 = [v8 note];
  if (([v19 isPasswordProtected] & 1) == 0)
  {

    goto LABEL_15;
  }

  v20 = [v8 note];
  v21 = [v20 isAuthenticated];

  if (v21)
  {
LABEL_15:
    v22 = [v8 note];
    v23 = [v8 view];
    [v23 bounds];
    v25 = v24;
    v27 = v26;
    v28 = [v8 traitCollection];
    v9 = [ICTextViewController printFormatterForNote:v22 withSize:v28 traitCollection:v25, v27];

    v10 = [v8 textView];
    [v10 contentOffset];
    v30 = v29;
    v13 = [v8 textView];
    [v13 contentSize];
    v18 = v30 / v31;
    goto LABEL_16;
  }

  if (v5)
  {
    v5[2](v5, 0, 0x7FFFFFFFFFFFFFFFLL, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
  }

LABEL_6:
}

- (BOOL)canBeginEditingForNoteDisplayController:(id)a3
{
  v3 = +[ICAppDelegate sharedInstance];
  v4 = [v3 isAnyWelcomeScreenVisible];

  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Was asked to begin editing while welcome screen was up", v7, 2u);
    }
  }

  return v4 ^ 1;
}

- (void)noteEditorDidTapAllNotes:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D87BC();
  }

  v6 = +[ICQuickNoteSessionManager sharedManager];
  [v6 saveSession];

  v7 = +[ICNoteContext sharedContext];
  [v7 saveImmediately];

  v11 = ICQuickNoteURLOptionShowList;
  v8 = [&__kCFBooleanTrue stringValue];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = [(ICViewControllerManager *)self quickNoteQueryOptionsFromEditor:v4 additionalOptions:v9];

  [(ICViewControllerManager *)self launchNotesAppFromLockscreenWithQueryOptions:v10 completionBlock:0];
}

- (void)noteEditorDidTapActionMenu:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D87F0();
  }

  v6 = [v4 note];
  v7 = [v6 isEmpty];

  if ((v7 & 1) == 0)
  {
    v11 = ICQuickNoteURLOptionShowShareSheet;
    v8 = [&__kCFBooleanTrue stringValue];
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [(ICViewControllerManager *)self quickNoteQueryOptionsFromEditor:v4 additionalOptions:v9];

    [(ICViewControllerManager *)self launchNotesAppFromLockscreenWithQueryOptions:v10 completionBlock:0];
  }
}

- (void)noteEditorDidTapAddPeople:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D8824();
  }

  v9 = ICQuickNoteURLOptionShowiCloudShareSheet;
  v6 = [&__kCFBooleanTrue stringValue];
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [(ICViewControllerManager *)self quickNoteQueryOptionsFromEditor:v4 additionalOptions:v7];

  [(ICViewControllerManager *)self launchNotesAppFromLockscreenWithQueryOptions:v8 completionBlock:0];
}

- (BOOL)noteEditor:(id)a3 didTapAttachment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ICQuickNoteSessionManager sharedManager];
  v9 = [v8 isSecureScreenShowing];

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D8858();
    }

    if (v7)
    {
      v15 = ICQuickNoteURLOptionAttachmentIdentifier;
      v11 = [v7 identifier];
      v16 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    }

    else
    {
      v12 = &__NSDictionary0__struct;
    }

    v13 = [(ICViewControllerManager *)self quickNoteQueryOptionsFromEditor:v6 additionalOptions:v12];
    [(ICViewControllerManager *)self launchNotesAppFromLockscreenWithQueryOptions:v13 completionBlock:0];
  }

  return v9;
}

- (id)quickNoteQueryOptionsFromEditor:(id)a3 additionalOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 textView];
  [v7 contentOffset];
  v9 = v8;

  v10 = [NSMutableDictionary dictionaryWithDictionary:v6];

  v11 = [v5 note];
  v12 = [v11 identifier];

  if (v12)
  {
    v13 = [v5 note];
    v14 = [v13 identifier];
    [v10 setObject:v14 forKeyedSubscript:ICQuickNoteURLOptionNoteIdentifier];

    v15 = [NSNumber numberWithDouble:v9];
    v16 = [v15 stringValue];
    [v10 setObject:v16 forKeyedSubscript:ICQuickNoteURLOptionContentOffsetY];
  }

  v17 = [v10 copy];

  return v17;
}

- (void)updateForFingerDrawingEnabled:(BOOL)a3
{
  v5 = a3;
  v7 = [(ICViewControllerManager *)self behavior];
  v8 = v7;
  if (v5)
  {
    if ([(ICViewControllerManager *)self noteContainerViewMode]|| v8 == 1)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v8 = [(ICViewControllerManager *)self mainSplitViewController];
      v3 = [v8 traitCollection];
      v10 = [(ICViewControllerManager *)self defaultDisplayModeButtonVisibilityForTraitCollection:v3];
      v9 = 1;
    }

    v11 = [(ICViewControllerManager *)self mainSplitViewController];
    [v11 setDisplayModeButtonVisibility:v10];

    if (v9)
    {
    }

    v12 = 0;
  }

  else
  {
    if (v7 == 1)
    {
      v13 = 0;
    }

    else
    {
      v3 = [(ICViewControllerManager *)self mainSplitViewController];
      v4 = [v3 traitCollection];
      v13 = [(ICViewControllerManager *)self defaultDisplayModeButtonVisibilityForTraitCollection:v4];
    }

    v14 = [(ICViewControllerManager *)self mainSplitViewController];
    [v14 setDisplayModeButtonVisibility:v13];

    if (v8 != 1)
    {
    }

    v12 = [(ICViewControllerManager *)self behavior]!= 3;
  }

  v15 = [(ICViewControllerManager *)self mainSplitViewController];
  [v15 setPresentsWithGesture:v12];

  v17 = [(ICViewControllerManager *)self compactNavigationController];
  v16 = [v17 interactivePopGestureRecognizer];
  [v16 setEnabled:!v5];
}

- (void)startSearchWithSearchQueryString:(id)a3 becomeFirstResponder:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  [v7 startSearchWithSearchQuery:v6 searchTokens:0 searchScope:0 becomeFirstResponder:v4];
}

- (void)updateNoteEditorViewControllerWithStateArchive:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self noteEditorViewController];
  v6 = [v5 note];

  if (v6)
  {
    if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
    {
      v7 = [(ICViewControllerManager *)self selectionStateController];
      [v7 setupWithArchive:v4];

      v8 = [v6 objectID];
      v9 = [v6 objectID];
      v10 = [v9 isTemporaryID];

      if (v10)
      {
        v11 = [v6 managedObjectContext];
        v32 = v6;
        v12 = [NSArray arrayWithObjects:&v32 count:1];
        v27 = 0;
        v13 = [v11 obtainPermanentIDsForObjects:v12 error:&v27];
        v14 = v27;

        if (!v13 || v14)
        {
          v24 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v29 = v14;
            v30 = 2112;
            v31 = v6;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Conversion of temporary ID to permanent ID failed with error %@ for note %@", buf, 0x16u);
          }

          v25 = [(ICViewControllerManager *)self noteEditorViewController];
          [v25 loadViewIfNeeded];

          v16 = [v4 scrollStateForNote:v6];
          v26 = [(ICViewControllerManager *)self noteEditorViewController];
          [v26 applyScrollStateFromArchive:v16];

          goto LABEL_16;
        }

        v15 = [v6 objectID];

        v8 = v15;
      }

      v14 = objc_alloc_init(_TtC11MobileNotes21ICSelectionStateModel);
      [(ICSelectionStateModel *)v14 setSelectedNoteObjectID:v8];
      v16 = [(ICViewControllerManager *)self selectionStateController];
      [v16 adoptInstantNoteModel:v14 archive:v4];
LABEL_16:

      goto LABEL_17;
    }

    v17 = [v6 objectID];
    v18 = [v17 URIRepresentation];
    v19 = [v4 currentNoteObjectIDURL];
    v20 = [v18 isEqual:v19];

    if (v20)
    {
      v21 = [(ICViewControllerManager *)self noteEditorViewController];
      [v21 loadViewIfNeeded];

      v8 = [v4 scrollStateForNote:v6];
      v22 = [(ICViewControllerManager *)self noteEditorViewController];
      [v22 applyScrollStateFromArchive:v8];

LABEL_17:
      goto LABEL_18;
    }

    v23 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Restore Quicknote UI editor state skipping because Note ID doesn't match", buf, 2u);
    }
  }

LABEL_18:
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(ICViewControllerManager *)self secondaryNavigationController];
  v10 = v9;
  if (v9 != v7)
  {

    goto LABEL_11;
  }

  v11 = [(ICViewControllerManager *)self noteContainerViewMode];

  if (v11 != 1)
  {
    goto LABEL_11;
  }

  v12 = [(ICViewControllerManager *)self noteEditorViewController];
  if (v12 == v8)
  {
    goto LABEL_7;
  }

  v13 = [(ICViewControllerManager *)self legacyNoteEditorViewController];

  if (v13 != v8)
  {
    v12 = [(ICViewControllerManager *)self trailingSidebarViewController];
    [v12 setSidebarHidden:1];
LABEL_7:
  }

  if ([(ICViewControllerManager *)self isSearchActiveWithQuery])
  {
    v14 = [(ICViewControllerManager *)self mainSplitViewController];
    [v14 setDisplayModeButtonVisibility:1];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004EAD4;
  v18[3] = &unk_100645E30;
  v18[4] = self;
  [v7 ic_performBlockAfterActiveTransition:v18];
LABEL_11:
  v15 = [(ICViewControllerManager *)self compactNavigationController];
  if (v15 == v7 && ![(ICViewControllerManager *)self isSplitViewExpandingOrCollapsing])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [(ICViewControllerManager *)self hideActivityStreamWithCompletion:0];
    }
  }

  else
  {
  }

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 postNotificationName:@"ICNavigationControllerWillChange" object:v7 userInfo:0];
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if (![(ICViewControllerManager *)self isApplyingStateRestoreArchive])
  {
    v9 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    v10 = [(ICViewControllerManager *)self tagSelection];
    if ([(ICViewControllerManager *)self isSplitViewExpanded]|| ([(ICViewControllerManager *)self compactNavigationController], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 != v7))
    {
      v12 = 0;
      goto LABEL_5;
    }

    v18 = [v7 topViewController];
    v19 = [(ICViewControllerManager *)self noteEditorViewController];
    v20 = v19;
    if (v18 == v19)
    {
    }

    else
    {
      v21 = [(ICViewControllerManager *)self legacyNoteEditorViewController];

      if (v18 != v21)
      {
        if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
        {
          v12 = 1;
LABEL_81:
          v56 = [(ICViewControllerManager *)self folderListViewController];

          if (v18 == v56)
          {
            if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
            {

              v10 = 0;
              v9 = 0;
            }

            else
            {
              [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:0];
              [(ICViewControllerManager *)self setTagSelection:0];
            }

            [(ICViewControllerManager *)self setMostRecentRegularWidthTagSelection:0];
            v57 = [[ICNoteBrowseViewController alloc] initWithViewMode:[(ICViewControllerManager *)self noteContainerViewMode] viewControllerManager:self];
            [(ICViewControllerManager *)self setRootNoteBrowseViewController:v57];

            [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:0];
          }

LABEL_5:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![(ICViewControllerManager *)self selectionStateTrackingEnabled])
            {
LABEL_37:
              if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
              {
                if (!v12)
                {
                  v66 = v7;
                  v35 = 0;
                  goto LABEL_42;
                }

LABEL_39:
                v66 = v7;
                a4 = [(ICViewControllerManager *)self selectionStateController];
                v34 = [a4 selectedObjectID];
                v35 = 1;
                v36 = 1;
                if (v34)
                {
                  goto LABEL_67;
                }

LABEL_42:
                v62 = a4;
                v37 = v8;
                v38 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
                v64 = v9;
                if (kCFNull == v9)
                {
                  v39 = 0;
                }

                else
                {
                  v39 = v9;
                }

                v40 = v39;
                if (kCFNull == v38)
                {
                  v41 = 0;
                }

                else
                {
                  v41 = v38;
                }

                v42 = v41;
                if (v40 | v42)
                {
                  v43 = v42;
                  v36 = 1;
                  if (!v40 || !v42)
                  {
LABEL_64:

                    goto LABEL_65;
                  }

                  v44 = [v40 isEqual:v42];

                  if (!v44)
                  {
LABEL_65:
                    v8 = v37;

                    v9 = v64;
                    if (!v35)
                    {
                      v49 = 0;
                      goto LABEL_69;
                    }

                    v34 = 0;
                    a4 = v62;
LABEL_67:

                    v49 = 1;
LABEL_69:
                    v50 = +[UIApplication sharedApplication];
                    v51 = [v50 applicationState];

                    if (!v36 || v51)
                    {
                      v7 = v66;
                    }

                    else
                    {
                      v52 = [(ICViewControllerManager *)self mainSplitViewController];
                      v53 = [v52 transitionCoordinator];

                      v69[0] = _NSConcreteStackBlock;
                      v69[1] = 3221225472;
                      v69[2] = sub_10004F23C;
                      v69[3] = &unk_100645ED0;
                      v69[4] = self;
                      v9 = v9;
                      v70 = v9;
                      v10 = v10;
                      v71 = v10;
                      v72 = v49;
                      v54 = objc_retainBlock(v69);
                      v55 = v54;
                      v7 = v66;
                      if (v53)
                      {
                        v67[0] = _NSConcreteStackBlock;
                        v67[1] = 3221225472;
                        v67[2] = sub_10004F298;
                        v67[3] = &unk_1006461A0;
                        v68 = v54;
                        [v53 animateAlongsideTransition:&stru_100646178 completion:v67];
                      }

                      else
                      {
                        (v54[2])(v54);
                      }
                    }

                    goto LABEL_76;
                  }
                }

                v40 = [(ICViewControllerManager *)self tagSelection];
                if (kCFNull == v10)
                {
                  v45 = 0;
                }

                else
                {
                  v45 = v10;
                }

                v43 = v45;
                if (kCFNull == v40)
                {
                  v46 = 0;
                }

                else
                {
                  v46 = v40;
                }

                v47 = v46;
                v48 = v47;
                if (v43 | v47)
                {
                  v36 = 1;
                  if (v43 && v47)
                  {
                    v36 = [v43 isEqual:v47] ^ 1;
                  }
                }

                else
                {
                  v36 = 0;
                }

                goto LABEL_64;
              }

LABEL_76:

              goto LABEL_77;
            }

            if (v12)
            {
              if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
              {
                goto LABEL_39;
              }

              goto LABEL_76;
            }

            v13 = [(ICViewControllerManager *)self selectedNoteObjectID];
            v12 = v13 == 0;
LABEL_36:

            goto LABEL_37;
          }

          a4 = v9;
          v13 = v8;
          v14 = [v13 noteContainer];
          v15 = [v14 objectID];
          v16 = v15;
          v65 = v12;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v60 = v8;
            v22 = [v13 noteCollection];
            v23 = [v22 objectID];
            v24 = v23;
            if (v23)
            {
              v25 = v23;
            }

            else
            {
              v25 = [v13 virtualSmartFolder];
            }

            v17 = v25;

            v8 = v60;
          }

          v26 = [v13 tagSelection];

          if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
          {
            v9 = v17;
          }

          else
          {
            [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:v17];
            v9 = a4;
          }

          v27 = [(ICViewControllerManager *)self compactNavigationController];
          v28 = v27;
          if (v27 == v7)
          {
          }

          else
          {
            v29 = [(ICViewControllerManager *)self noteContainerViewMode];

            if (v29 != 1)
            {
LABEL_35:

              v10 = v26;
              v12 = v65;
              goto LABEL_36;
            }
          }

          if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
          {
            v61 = v8;
            v63 = v9;
            v30 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
            v31 = [v30 collectionView];
            v32 = [v31 indexPathsForSelectedItems];
            if ([v32 count])
            {
              v65 = 0;
            }

            else
            {
              v59 = [(ICViewControllerManager *)self currentSearchBarViewController];
              v58 = [v59 noteSearchViewController];
              a4 = [v58 collectionView];
              v33 = [a4 indexPathsForSelectedItems];
              v65 = [v33 count] == 0;
            }

            v8 = v61;
            v9 = v63;
          }

          else
          {
            [(ICViewControllerManager *)self setSelectedNoteObjectID:0];
          }

          goto LABEL_35;
        }

        [(ICViewControllerManager *)self setSelectedNoteObjectID:0];
      }
    }

    v12 = 0;
    goto LABEL_81;
  }

LABEL_77:
}

- (void)applyNoteViewModesToStateRestoreArchive:(id)a3 withContainerItemID:(id)a4
{
  v10 = a3;
  v6 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:a4];
  if (v6 == -1)
  {
    if ([(ICViewControllerManager *)self preferredNoteContainerViewMode]!= -1)
    {
      [v10 setCurrentNoteContainerViewMode:{-[ICViewControllerManager preferredNoteContainerViewMode](self, "preferredNoteContainerViewMode")}];
      v8 = v10;
      v9 = -1;
      goto LABEL_9;
    }

    [v10 setCurrentNoteContainerViewMode:{-[ICViewControllerManager noteContainerViewMode](self, "noteContainerViewMode")}];
    goto LABEL_7;
  }

  [v10 setCurrentNoteContainerViewMode:v6];
  if ([(ICViewControllerManager *)self preferredNoteContainerViewMode]!= -1)
  {
LABEL_7:
    v7 = [(ICViewControllerManager *)self preferredNoteContainerViewMode];
    goto LABEL_8;
  }

  v7 = [(ICViewControllerManager *)self noteContainerViewMode];
LABEL_8:
  v9 = v7;
  v8 = v10;
LABEL_9:
  [v8 setPreferredNoteContainerViewMode:v9];
}

- (int64_t)enforcedNoteContainerViewModeForContainerItemID:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();
  objc_opt_class();
  v6 = ICDynamicCast();
  if ([v5 ic_isModernContainerType])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = -1;
    v7 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10004F5E0;
    v16[3] = &unk_100645A40;
    v18 = &v19;
    v16[4] = self;
    v17 = v5;
    [v7 performBlockAndWait:v16];

    v8 = v20[3];
    v9 = v17;
LABEL_5:

    _Block_object_dispose(&v19, 8);
    goto LABEL_6;
  }

  if ([v5 ic_isLegacyContainerType])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = -1;
    v10 = [(ICViewControllerManager *)self legacyManagedObjectContext];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004F680;
    v13[3] = &unk_100645A40;
    v15 = &v19;
    v13[4] = self;
    v14 = v5;
    [v10 performBlockAndWait:v13];

    v8 = v20[3];
    v9 = v14;
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = [v6 enforcedNoteContainerViewMode];
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1004D888C();
    }

    v8 = -1;
  }

LABEL_6:

  return v8;
}

- (void)performActionForShortcutItem:(id)a3
{
  v15 = a3;
  [(ICViewControllerManager *)self setSelectedNewNoteShortcutItem:v15];
  v4 = [v15 type];
  v5 = [v4 isEqualToString:@"com.apple.notes.newNote"];

  if (v5)
  {
    v6 = 0;
LABEL_3:
    v7 = 8;
LABEL_8:
    v12 = [(ICViewControllerManager *)self showNewNoteWithApproach:v7 sender:self recordAudio:v6 animated:1];
    goto LABEL_9;
  }

  v8 = [v15 type];
  v9 = [v8 isEqualToString:@"com.apple.notes.checklist"];

  if (v9)
  {
    v6 = 0;
    v7 = 9;
    goto LABEL_8;
  }

  v10 = [v15 type];
  v11 = [v10 isEqualToString:@"com.apple.notes.scanDocument"];

  if (v11)
  {
    v6 = 0;
    v7 = 10;
    goto LABEL_8;
  }

  v13 = [v15 type];
  v14 = [v13 isEqualToString:@"com.apple.notes.audio"];

  if (v14)
  {
    v6 = 1;
    goto LABEL_3;
  }

LABEL_9:
}

- (void)lockNotesNow
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  [v2 saveNote];

  v3 = +[ICAuthenticationState sharedState];
  [v3 deauthenticate];
}

- (void)stopEditing
{
  v3 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
  v4 = [v3 isEditing];

  if (v4)
  {
    v5 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    [v5 setEditing:0 animated:0];
  }

  v6 = [(ICViewControllerManager *)self noteEditorViewController];
  v7 = [v6 isEditing];

  if (v7)
  {
    v8 = [(ICViewControllerManager *)self noteEditorViewController];
    [v8 setEditing:0 animated:0];
  }
}

- (void)toggleSidebar
{
  v2 = [(ICViewControllerManager *)self mainSplitViewController];
  [v2 ic_toggleSidebar];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  if (([(ICViewControllerManager *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/UI/Navigation/ICViewControllerManager.m"]& 1) != 0)
  {
    v13 = [(ICViewControllerManager *)self ic_shouldIgnoreObserveValue:v11 ofObject:v12 forKeyPath:v10];

    if (a6 == &off_1006BA3B0 && (v13 & 1) == 0 && [v10 isEqualToString:@"attributionSidebarVisibility"])
    {
      [(ICViewControllerManager *)self updateIgnoreTextViewTaps];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICViewControllerManager;
    [(ICViewControllerManager *)&v14 observeValueForKeyPath:v10 ofObject:v12 change:v11 context:a6];
  }
}

- (int64_t)defaultDisplayModeButtonVisibilityForTraitCollection:(id)a3
{
  v4 = a3;
  if ([(ICViewControllerManager *)self usesSingleSplitView])
  {
    if ([v4 userInterfaceIdiom] == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initializeModernNoteEditorWithOptions:(unint64_t)a3
{
  v5 = [(ICViewControllerManager *)self noteEditorViewController];

  if (v5)
  {
    v6 = [(ICViewControllerManager *)self noteEditorViewController];
    v7 = [v6 options];

    if (v7 == a3)
    {
      return;
    }

    v8 = [(ICViewControllerManager *)self noteEditorViewController];
    v9 = [v8 attributionSidebarController];
    [v9 ic_removeObserver:self forKeyPath:@"attributionSidebarVisibility" context:&off_1006BA3B0];
  }

  v10 = [ICNoteEditorViewController editorViewControllerWithIdentifier:-1 options:a3];
  [(ICViewControllerManager *)self setNoteEditorViewController:v10];

  v11 = [(ICViewControllerManager *)self noteEditorViewController];
  [v11 setViewControllerManager:self];

  v13 = [(ICViewControllerManager *)self noteEditorViewController];
  v12 = [v13 attributionSidebarController];
  [v12 ic_addObserver:self forKeyPath:@"attributionSidebarVisibility" context:&off_1006BA3B0];
}

- (void)initializeSecondaryNavigationControllerWithViewController:(id)a3
{
  v9 = a3;
  v4 = [UINavigationController alloc];
  if (v9)
  {
    v5 = [v4 initWithRootViewController:v9];
  }

  else
  {
    v5 = [v4 initWithNibName:0 bundle:0];
  }

  v6 = v5;
  [(ICViewControllerManager *)self setSecondaryNavigationController:v5];

  v7 = [(ICViewControllerManager *)self secondaryNavigationController];
  v8 = [v7 navigationBar];
  [v8 setPrefersLargeTitles:1];
}

- (void)initializeMainSplitViewWithStateRestoreArchive:(id)a3
{
  v4 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v5 = [(ICViewControllerManager *)self selectionStateController];
    v6 = [v5 selectedNoteObjectID];
    v7 = v6;
    if (v6)
    {
      v154 = v6;
    }

    else
    {
      v154 = [v5 selectedInvitationObjectID];
    }

    v14 = [v5 selectedNoteBrowseContainerObjectID];

    if (v14)
    {
      v15 = [v5 selectedNoteBrowseContainerObjectID];
      v171 = v15;
      *(&v153 + 1) = [NSArray arrayWithObjects:&v171 count:1];
    }

    else
    {
      *(&v153 + 1) = 0;
    }

    *&v153 = [v5 selectedVirtualSmartFolderItemID];
    v148 = [v5 currentFirstVisibleObjectIDURLForContainerObjectIDURL];
    if (v153 != 0 && !v154)
    {
      [v4 setIsAuxiliaryWindow:0];
    }

    v8 = [v5 tagSelection];
    v16 = [v8 includedObjectIDs];
    v12 = [NSMutableSet setWithSet:v16];

    v17 = [v8 excludedObjectIDs];
    v18 = [NSMutableSet setWithSet:v17];

    v19 = v12;
    if ([v8 mode] == 1 || (v19 = v18, objc_msgSend(v8, "mode") == 2))
    {
      v20 = +[ICTagAllTagsItemIdentifier sharedItemIdentifier];
      [v19 addObject:v20];
    }

    v21 = [v12 copy];
    v150 = [v18 copy];
    goto LABEL_47;
  }

  v5 = [v4 currentNoteObjectIDURL];
  v8 = [v4 currentContainerObjectIDURLs];
  v148 = [v4 currentFirstVisibleObjectIDURLForContainerObjectIDURL];
  v9 = [v4 currentObjectIDURL];

  if (v9)
  {
    v10 = [v4 currentObjectIDURL];
    v11 = [(ICViewControllerManager *)self managedObjectIDFromURL:v10];
    if ([v11 ic_isContainerType])
    {
      [v4 setIsAuxiliaryWindow:0];

      v170 = v10;
      [NSArray arrayWithObjects:&v170 count:1];
      v12 = 0;
      v13 = 0;
      *&v153 = 0;
      v8 = v5 = v8;
LABEL_32:

      v5 = v13;
      goto LABEL_33;
    }

    if (![v11 ic_isNoteType])
    {
      v12 = 0;
      *&v153 = 0;
LABEL_33:

      goto LABEL_34;
    }

    if ([v11 ic_isEntityOfClass:objc_opt_class()])
    {
      v22 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v23 = [ICNote ic_existingObjectWithID:v11 context:v22];

      if ([v23 isSystemPaper])
      {
        *&v153 = +[ICAccount globalVirtualSystemPaperFolder];
        v12 = 0;
        goto LABEL_29;
      }

      v25 = [v23 objectID];
      v26 = [(ICViewControllerManager *)self defaultContainerObjectIDForNoteWithObjectID:v25];
    }

    else
    {
      if (![v11 ic_isEntityOfClass:objc_opt_class()])
      {
        *&v153 = 0;
        v12 = 0;
LABEL_31:
        v13 = v10;
        goto LABEL_32;
      }

      v24 = [(ICViewControllerManager *)self legacyManagedObjectContext];
      v23 = [v24 ic_existingObjectWithID:v11];

      v25 = [v23 store];
      v26 = [v25 objectID];
    }

    v12 = v26;

    *&v153 = 0;
LABEL_29:

    if (v12)
    {
      v27 = [v12 URIRepresentation];
      v169 = v27;
      v28 = [NSArray arrayWithObjects:&v169 count:1];

      v8 = v28;
    }

    goto LABEL_31;
  }

  v12 = 0;
  *&v153 = 0;
LABEL_34:
  v154 = [(ICViewControllerManager *)self managedObjectIDFromURL:v5];
  v166[0] = _NSConcreteStackBlock;
  v166[1] = 3221225472;
  v166[2] = sub_100051214;
  v166[3] = &unk_1006461C8;
  v166[4] = self;
  *(&v153 + 1) = [v8 ic_compactMap:v166];
  if (!v153)
  {
    v29 = [v4 currentVirtualSmartFolderType];
    v30 = v29 == 0;

    if (v30)
    {
      *&v153 = 0;
    }

    else
    {
      v31 = [v4 currentVirtualSmartFolderAccountObjectIDURL];
      if (v31)
      {
        v151 = [(ICViewControllerManager *)self managedObjectIDFromURL:v31];
      }

      else
      {
        v151 = 0;
      }

      v32 = +[ICVirtualSmartFolderItemIdentifier allTypes];
      v33 = [v4 currentVirtualSmartFolderType];
      v34 = [v32 containsObject:v33];

      if (v34)
      {
        v35 = [ICVirtualSmartFolderItemIdentifier alloc];
        v36 = [v4 currentVirtualSmartFolderType];
        v37 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
        *&v153 = [v35 initWithType:v36 parentIdentifier:v37 accountObjectID:v151];
      }

      else
      {
        v37 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_1004D88FC(v4);
        }

        *&v153 = 0;
        v36 = v37;
      }
    }
  }

  v38 = [v4 currentTagIdentifiers];
  v18 = [NSSet setWithArray:v38];

  v165[0] = _NSConcreteStackBlock;
  v165[1] = 3221225472;
  v165[2] = sub_100051294;
  v165[3] = &unk_1006455E8;
  v165[4] = self;
  v21 = [v18 ic_compactMap:v165];
  v150 = 0;
LABEL_47:

  v39 = [*(&v153 + 1) lastObject];
  v149 = v39;
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = v153;
  }

  v41 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:v40];
  if (v41 != -1)
  {
    [v4 setCurrentNoteContainerViewMode:v41];
  }

  self->_noteContainerViewMode = [v4 currentNoteContainerViewMode];
  v42 = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
  if (v154)
  {
    v43 = v42;
  }

  else
  {
    v43 = 1;
  }

  if ((v43 & 1) == 0 && ![*(&v153 + 1) count])
  {
    v44 = [(ICViewControllerManager *)self defaultContainerObjectIDForNoteWithObjectID:v154];
    v45 = v44;
    if (v44)
    {
      v168 = v44;
      v46 = [NSArray arrayWithObjects:&v168 count:1];

      *(&v153 + 1) = v46;
    }
  }

  v47 = [(ICViewControllerManager *)self folderListViewController];
  v48 = v47 == 0;

  if (v48)
  {
    v51 = [ICFolderListViewController alloc];
    v52 = [v4 currentNoteContainerViewMode];
    v50 = [(ICViewControllerManager *)self overrideContainerIdentifier];
    v53 = [(ICFolderListViewController *)v51 initWithViewMode:v52 viewControllerManager:self overrideContainerIdentifier:v50];
    [(ICViewControllerManager *)self setFolderListViewController:v53];
  }

  else
  {
    v49 = [v4 currentNoteContainerViewMode];
    v50 = [(ICViewControllerManager *)self folderListViewController];
    [v50 setNoteContainerViewMode:v49];
  }

  -[ICViewControllerManager setPreferredNoteContainerViewMode:](self, "setPreferredNoteContainerViewMode:", [v4 preferredNoteContainerViewMode]);
  v54 = -[ICNoteBrowseViewController initWithViewMode:viewControllerManager:]([ICNoteBrowseViewController alloc], "initWithViewMode:viewControllerManager:", [v4 currentNoteContainerViewMode], self);
  [(ICViewControllerManager *)self setRootNoteBrowseViewController:v54];

  v55 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
  [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:v55];

  LODWORD(v55) = [v4 isAuxiliaryWindow];
  [(ICViewControllerManager *)self initializeLegacyNoteEditor];
  [(ICViewControllerManager *)self initializeModernNoteEditorWithOptions:v55];
  v152 = +[NSMutableArray array];
  if ([v21 count] || objc_msgSend(v150, "count"))
  {
    v56 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    v57 = v21;
    if (!v21)
    {
      v57 = +[NSSet set];
    }

    if (v150)
    {
      [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:v56 animated:0 ensurePresented:1 containerIdentifiers:v57 excludingIdentifiers:v150 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:0];
    }

    else
    {
      v58 = +[NSSet set];
      [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:v56 animated:0 ensurePresented:1 containerIdentifiers:v57 excludingIdentifiers:v58 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:0];
    }

    if (!v21)
    {
    }

    v59 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    [v152 addObject:v59];
  }

  else if (v153)
  {
    v76 = [(ICViewControllerManager *)self selectedNoteObjectID];
    v77 = v76;
    if (v76)
    {
      v78 = v76;
    }

    else
    {
      v78 = [(ICViewControllerManager *)self selectedInvitationObjectID];
    }

    v136 = v78;

    v137 = [(ICViewControllerManager *)self noteContainerViewMode];
    v138 = [(ICViewControllerManager *)self isSplitViewExpanded];
    v139 = [(ICViewControllerManager *)self isApplyingStateRestoreArchive];
    if (([(ICViewControllerManager *)self selectionStateTrackingEnabled]& v139) == 1 && v136)
    {
      v140 = 1;
    }

    else
    {
      v142 = v41 != 1 && v137 == 0;
      v140 = v142 & v138;
    }

    v143 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    v144 = [NSSet setWithObject:v153];
    v145 = +[NSSet set];
    v146 = [NSNumber numberWithBool:[(ICViewControllerManager *)self isNoteEditorVisible]];
    [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:v143 animated:0 ensurePresented:1 containerIdentifiers:v144 excludingIdentifiers:v145 ensureSelectedNote:v140 keepEditorShowing:v146 dataIndexedBlock:0 dataRenderedBlock:0];

    v147 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    [v152 addObject:v147];
  }

  else
  {
    v159[0] = _NSConcreteStackBlock;
    v159[1] = 3221225472;
    v159[2] = sub_100051378;
    v159[3] = &unk_100646218;
    v159[4] = self;
    v160 = v154;
    v161 = v152;
    v162 = *(&v153 + 1);
    v164 = v41;
    v163 = v148;
    [v162 enumerateObjectsUsingBlock:v159];
  }

  if (!v154)
  {
    goto LABEL_97;
  }

  if (([v4 isAuxiliaryWindow] & 1) == 0 && !objc_msgSend(*(&v153 + 1), "count"))
  {
    v60 = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
    v61 = v153 ? v60 : 0;
    if (v61 != 1)
    {
      goto LABEL_97;
    }
  }

  if ([v154 ic_isEntityOfClass:objc_opt_class()])
  {
    v62 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v63 = [ICNote ic_existingObjectWithID:v154 context:v62];

    v64 = [(ICViewControllerManager *)self noteEditorViewController];
    [v64 setEditing:0];

    v65 = [(ICViewControllerManager *)self noteEditorViewController];
    [v65 setNote:v63 delayedForLaunch:1 successHandler:0];

    v66 = [v4 scrollStateForNote:v63];
    v67 = [(ICViewControllerManager *)self noteEditorViewController];
    [v67 applyScrollStateFromArchive:v66];

    v68 = [(ICViewControllerManager *)self noteEditorViewController];

    goto LABEL_85;
  }

  if (![v154 ic_isEntityOfClass:objc_opt_class()])
  {
    if (-[ICViewControllerManager selectionStateTrackingEnabled](self, "selectionStateTrackingEnabled") && [v154 ic_isInvitationType])
    {
      v74 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v63 = [v74 ic_existingObjectWithID:v154];

      v75 = [(ICViewControllerManager *)self noteEditorViewController];
      [v75 setInvitation:v63];

      v71 = [(ICViewControllerManager *)self noteEditorViewController];
      goto LABEL_84;
    }

    [(ICViewControllerManager *)self selectionStateTrackingEnabled];
LABEL_97:
    v68 = 0;
    goto LABEL_98;
  }

  v69 = [(ICViewControllerManager *)self legacyManagedObjectContext];
  v63 = [v69 ic_existingObjectWithID:v154];

  v70 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
  [v70 displayNote:v63];

  v71 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
LABEL_84:
  v68 = v71;
LABEL_85:

  v72 = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
  if (v68)
  {
    v73 = v72;
  }

  else
  {
    v73 = 1;
  }

  if ((v73 & 1) == 0)
  {
    [(ICViewControllerManager *)self setSelectedNoteObjectID:v154];
  }

LABEL_98:
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v79 = [v4 focusedNoteObjectIDURL];
    if (v79)
    {
      v80 = [(ICViewControllerManager *)self managedObjectIDFromURL:v79];
      [(ICViewControllerManager *)self setFocusedNoteObjectID:v80];
    }
  }

  if (!v68)
  {
    if ([(ICViewControllerManager *)self noteContainerViewMode]|| [(ICViewControllerManager *)self hasCompactWidth])
    {
      v68 = 0;
    }

    else
    {
      v68 = [(ICViewControllerManager *)self noteEditorViewController];
    }
  }

  v81 = [(ICViewControllerManager *)self behavior];
  if (![v4 isAuxiliaryWindow])
  {
    primaryNavigationController = self->_primaryNavigationController;
    self->_primaryNavigationController = 0;

    if ([(ICViewControllerManager *)self noteContainerViewMode]== 1)
    {
      v83 = [[ICMainSplitViewController alloc] initWithStyle:1 viewControllerManager:self];
      [(ICViewControllerManager *)self setMainSplitViewController:v83];

      v84 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
      [(ICViewControllerManager *)self initializeSecondaryNavigationControllerWithViewController:v84];

      v85 = v152;
      v86 = v85;
      if (v68)
      {
        v87 = [v85 arrayByAddingObject:v68];

        v86 = v87;
      }

      v88 = [(ICViewControllerManager *)self secondaryNavigationController];
      [v88 setViewControllers:v86];

      v89 = [(ICViewControllerManager *)self secondaryNavigationController];
      [v89 setDelegate:self];

      if (v81 != 1)
      {
        goto LABEL_121;
      }
    }

    else
    {
      [(ICViewControllerManager *)self initializeSecondaryNavigationControllerWithViewController:v68];
      if (v81 == 1)
      {
        v90 = 1;
      }

      else
      {
        v90 = 2;
      }

      v91 = [[ICMainSplitViewController alloc] initWithStyle:v90 viewControllerManager:self];
      [(ICViewControllerManager *)self setMainSplitViewController:v91];

      if (v81 != 1)
      {
        v111 = [[UINavigationController alloc] initWithNibName:0 bundle:0];
        [(ICViewControllerManager *)self setSupplementaryNavigationController:v111];

        v112 = [(ICViewControllerManager *)self supplementaryNavigationController];
        v113 = [v112 navigationBar];
        [v113 setPrefersLargeTitles:1];

        v114 = [(ICViewControllerManager *)self supplementaryNavigationController];
        [v114 setDelegate:self];

        v115 = [v152 copy];
        v116 = [(ICViewControllerManager *)self supplementaryNavigationController];
        [v116 setViewControllers:v115];

        v117 = [(ICViewControllerManager *)self mainSplitViewController];
        v118 = [(ICViewControllerManager *)self supplementaryNavigationController];
        [v117 setViewController:v118 forColumn:1];

        v119 = [(ICViewControllerManager *)self mainSplitViewController];
        [v119 setShowsSecondaryOnlyButton:1];

LABEL_121:
        v120 = [(ICViewControllerManager *)self mainSplitViewController];
        v121 = [(ICViewControllerManager *)self primaryNavigationController];
        [v120 setViewController:v121 forColumn:0];

        v122 = [(ICViewControllerManager *)self mainSplitViewController];
        v123 = [v122 traitCollection];
        v124 = [(ICViewControllerManager *)self defaultDisplayModeButtonVisibilityForTraitCollection:v123];
        v125 = [(ICViewControllerManager *)self mainSplitViewController];
        [v125 setDisplayModeButtonVisibility:v124];

        v126 = [(ICViewControllerManager *)self mainSplitViewController];
        [v126 setPreferredDisplayMode:0];

LABEL_122:
        v127 = [(ICViewControllerManager *)self behavior]!= 3;
        v128 = [(ICViewControllerManager *)self mainSplitViewController];
        [v128 setPresentsWithGesture:v127];

        v129 = [(ICViewControllerManager *)self mainSplitViewController];
        v130 = [(ICViewControllerManager *)self secondaryNavigationController];
        [v129 setViewController:v130 forColumn:2];

        if ([(ICViewControllerManager *)self usesSingleSplitView])
        {
          compactNavigationController = self->_compactNavigationController;
          self->_compactNavigationController = 0;

          v132 = [(ICViewControllerManager *)self mainSplitViewController];
          v133 = [(ICViewControllerManager *)self compactNavigationController];
        }

        else
        {
          v132 = [(ICViewControllerManager *)self mainSplitViewController];
          v133 = objc_alloc_init(UINavigationController);
        }

        [v132 setViewController:v133 forColumn:3];

        v134 = [(ICViewControllerManager *)self mainSplitViewController];
        [v134 setDelegate:self];

        v135 = [(ICViewControllerManager *)self mainSplitViewController];
        [v135 setPreferredSplitBehavior:0];

        goto LABEL_126;
      }
    }

    v92 = [(ICViewControllerManager *)self mainSplitViewController];
    v93 = [(ICViewControllerManager *)self primaryNavigationController];
    [v92 setViewController:v93 forColumn:0];

    v94 = [(ICViewControllerManager *)self mainSplitViewController];
    [v94 setDisplayModeButtonVisibility:0];

    v95 = [(ICViewControllerManager *)self mainSplitViewController];
    [v95 setPreferredDisplayMode:2];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v96 = [(ICViewControllerManager *)self mainSplitViewController];
      [v96 primaryColumnWidth];
      v98 = v97;
      v99 = [(ICViewControllerManager *)self primaryContainerViewController];
      v100 = [v99 configuration];
      [v100 insets];
      v102 = v101;
      v103 = [(ICViewControllerManager *)self primaryContainerViewController];
      v104 = [v103 configuration];
      [v104 insets];
      v106 = v105;
      v107 = [(ICViewControllerManager *)self mainSplitViewController];
      [v107 setPreferredPrimaryColumnWidth:v98 + v102 + v106];
    }

    objc_initWeak(&location, self);
    v108 = [(ICViewControllerManager *)self mainSplitViewController];
    v167[0] = objc_opt_class();
    v167[1] = objc_opt_class();
    v109 = [NSArray arrayWithObjects:v167 count:2];
    v156[0] = _NSConcreteStackBlock;
    v156[1] = 3221225472;
    v156[2] = sub_1000517BC;
    v156[3] = &unk_100646240;
    objc_copyWeak(&v157, &location);
    v110 = [v108 registerForTraitChanges:v109 withHandler:v156];

    objc_destroyWeak(&v157);
    objc_destroyWeak(&location);
    goto LABEL_122;
  }

  [(ICViewControllerManager *)self initializeSecondaryNavigationControllerWithViewController:v68];
LABEL_126:
  if ([v4 isAttachmentBrowserOpen])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000517FC;
    block[3] = &unk_100645E30;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)initializeTrailingSidebarSplitViewWithStateRestoreArchive:(id)a3
{
  v21 = a3;
  if (![(ICViewControllerManager *)self usesSingleSplitView])
  {
    if ([(ICViewControllerManager *)self behavior]== 3)
    {
      v4 = objc_alloc_init(ICTrailingSidebarContainerViewController);
      [(ICViewControllerManager *)self setTrailingSidebarContainerViewController:v4];

      v5 = [(ICViewControllerManager *)self trailingSidebarContainerViewController];
      [(ICViewControllerManager *)self setTrailingSidebarViewController:v5];

      [(ICViewControllerManager *)self mainSplitViewController];
    }

    else
    {
      v6 = [[ICTrailingSidebarSplitViewController alloc] initWithViewControllerManager:self];
      [(ICViewControllerManager *)self setTrailingSidebarSplitViewController:v6];

      v7 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [v7 setDelegate:self];

      v8 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [v8 setPresentsWithGesture:0];

      v9 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [v9 setPrimaryEdge:1];

      v10 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [v10 setDisplayModeButtonVisibility:1];

      v11 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [v11 setShowsSecondaryOnlyButton:0];

      v12 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [v12 setPreferredDisplayMode:1];

      v13 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [(ICViewControllerManager *)self setTrailingSidebarViewController:v13];

      [(ICViewControllerManager *)self trailingSidebarSplitViewController];
    }
    v14 = ;
    if ([v21 isAuxiliaryWindow])
    {
      [(ICViewControllerManager *)self secondaryNavigationController];
    }

    else
    {
      [(ICViewControllerManager *)self mainSplitViewController];
    }
    v15 = ;
    v16 = [(ICViewControllerManager *)self trailingSidebarViewController];
    [v16 setContentViewController:v15];

    v17 = [(ICViewControllerManager *)self activityStreamNavigationController];
    v18 = [(ICViewControllerManager *)self trailingSidebarViewController];
    [v18 setSidebarViewController:v17];

    [(ICViewControllerManager *)self updateTrailingColumnWidth];
    compactNavigationController = self->_compactNavigationController;
    self->_compactNavigationController = 0;

    v20 = [(ICViewControllerManager *)self compactNavigationController];
    [v14 setViewController:v20 forColumn:3];
  }
}

- (void)updateIgnoreTextViewTaps
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  v4 = [v3 attributionSidebarController];
  if ([v4 attributionSidebarVisibility])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [(ICViewControllerManager *)self activityStreamSelection];
      v5 = v7 != 0;
    }
  }

  v8 = [(ICViewControllerManager *)self noteEditorViewController];
  [v8 setIgnoresTaps:v5];
}

- (void)updateTrailingColumnWidth
{
  v3 = [(ICViewControllerManager *)self mainSplitViewController];
  [v3 preferredDisplacedColumnWidth];
  v5 = v4;
  v6 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
  [v6 setPreferredPrimaryColumnWidth:v5];

  v7 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
  [v7 preferredPrimaryColumnWidth];
  v9 = v8;
  v10 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
  [v10 setMaximumPrimaryColumnWidth:v9];

  v14 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
  [v14 preferredPrimaryColumnWidth];
  v12 = v11;
  v13 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
  [v13 setMinimumPrimaryColumnWidth:v12];
}

- (id)containerItemIDForContainerIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self overrideContainerIdentifier];
  if (v5 && (v6 = v5, +[ICAccount globalVirtualRecentlyDeletedMathNotesFolder](ICAccount, "globalVirtualRecentlyDeletedMathNotesFolder"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v4 containsObject:v7], v7, v6, (v8 & 1) == 0))
  {
    v11 = [(ICViewControllerManager *)self overrideContainerIdentifier];
  }

  else
  {
    if ([v4 count])
    {
      v9 = [v4 allObjects];
      v10 = [v9 ic_objectPassingTest:&stru_100646260];

      goto LABEL_8;
    }

    v11 = [(ICViewControllerManager *)self mostRecentNonSearchContainerItemID];
  }

  v10 = v11;
LABEL_8:

  return v10;
}

- (void)setCurrentNoteBrowseViewController:(id)a3 animated:(BOOL)a4 ensurePresented:(BOOL)a5 containerIdentifiers:(id)a6 excludingIdentifiers:(id)a7 ensureSelectedNote:(BOOL)a8 keepEditorShowing:(id)a9 dataIndexedBlock:(id)a10 dataRenderedBlock:(id)a11
{
  v39 = a5;
  HIDWORD(v35) = a4;
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  v20 = v16;
  v41 = a11;
  v38 = v17;
  v21 = [v16 setByAddingObjectsFromSet:v17];
  v22 = [(ICViewControllerManager *)self containerItemIDForContainerIdentifiers:v21];

  objc_opt_class();
  v23 = ICDynamicCast();
  objc_opt_class();
  v40 = ICDynamicCast();
  if (v18)
  {
    LODWORD(v35) = [v18 BOOLValue];
  }

  else if ([(ICViewControllerManager *)self isTrashFolderSelected])
  {
    LODWORD(v35) = [(ICViewControllerManager *)self noteContainerViewMode]== 0;
  }

  else
  {
    LODWORD(v35) = 0;
  }

  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:v22];
  }

  [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:v15];
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  v62 = a8;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100052438;
  v57[3] = &unk_100646288;
  v60 = v61;
  v57[4] = self;
  v24 = v23;
  v58 = v24;
  v25 = v19;
  v59 = v25;
  v26 = objc_retainBlock(v57);
  if ([v24 ic_isModernContainerType])
  {
    v27 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100052988;
    v52[3] = &unk_1006462B0;
    v52[4] = self;
    v53 = v24;
    v54 = v15;
    v55 = v26;
    v56 = v41;
    [v27 performBlockAndWait:v52];
  }

  else if ([v24 ic_isLegacyContainerType])
  {
    v28 = [(ICViewControllerManager *)self legacyManagedObjectContext];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000529F8;
    v47[3] = &unk_1006462B0;
    v47[4] = self;
    v48 = v24;
    v49 = v15;
    v50 = v26;
    v51 = v41;
    [v28 performBlockAndWait:v47];
  }

  else if (v40)
  {
    [v15 setVirtualSmartFolder:v40 dataIndexedBlock:v26 dataRenderedBlock:v41];
  }

  else if ([(ICViewControllerManager *)self isTagSelected])
  {
    v29 = [(ICViewControllerManager *)self tagSelection];
    [v15 setTagSelection:v29 dataIndexedBlock:v26 dataRenderedBlock:v41];
  }

  else
  {
    v30 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "showing empty container", buf, 2u);
    }

    [v15 setNoteContainer:0 dataIndexedBlock:v26 dataRenderedBlock:v41];
  }

  if (v39)
  {
    v31 = [(ICViewControllerManager *)self noteBrowseNavigationController];
    v32 = [v31 viewControllers];
    v33 = [v32 indexOfObject:v15];
    if ([v32 count])
    {
      if (v33 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v31 pushViewController:v15 animated:v37];
LABEL_28:

        goto LABEL_29;
      }

      v34 = [v32 ic_subarrayFromIndex:v33 + 1];
      if (!(([v34 count] == 0) | v36 & 1))
      {
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100052A68;
        v42[3] = &unk_1006462D8;
        v43 = v31;
        v44 = v15;
        v45 = v37;
        [v43 ic_performBlockAfterActiveTransition:v42];
      }
    }

    else
    {
      if (!v15)
      {
        goto LABEL_28;
      }

      v63 = v15;
      v34 = [NSArray arrayWithObjects:&v63 count:1];
      [v31 setViewControllers:v34];
    }

    goto LABEL_28;
  }

LABEL_29:

  _Block_object_dispose(v61, 8);
}

- (void)updatePrimaryContainerViewAppearance
{
  if ([(ICViewControllerManager *)self behavior]!= 1 || [(ICViewControllerManager *)self hasCompactWidth]|| [(ICViewControllerManager *)self hasCompactHeight])
  {
    v3 = 0;
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    v8 = 0.0;
  }

  else
  {
    v10 = [(ICViewControllerManager *)self window];
    [v10 layoutMargins];
    leading = v11 + 4.0;

    v8 = 20.0;
    v3 = 1;
    bottom = 24.0;
    top = 0.0;
    trailing = 0.0;
  }

  v12 = [[ICContentInsetViewControllerConfiguration alloc] initWithInsets:v3 usesSafeAreaLayoutGuide:top cornerRadius:leading, bottom, trailing, v8];
  v9 = [(ICViewControllerManager *)self primaryContainerViewController];
  [v9 setConfiguration:v12];
}

- (UINavigationController)noteBrowseNavigationController
{
  v3 = [(ICViewControllerManager *)self isSplitViewExpanded];
  v4 = [(ICViewControllerManager *)self isSplitViewExpandingOrCollapsing];
  if ([(ICViewControllerManager *)self usesSingleSplitView])
  {
    if (((v4 | v3) & 1) != 0 && ![(ICViewControllerManager *)self isSplitViewCollapsing])
    {
LABEL_4:
      if ([(ICViewControllerManager *)self noteContainerViewMode])
      {
        v5 = [(ICViewControllerManager *)self secondaryNavigationController];
      }

      else
      {
        v7 = [(ICViewControllerManager *)self mainSplitViewController];
        v8 = [v7 style];

        if (v8 == 2)
        {
          [(ICViewControllerManager *)self supplementaryNavigationController];
        }

        else
        {
          [(ICViewControllerManager *)self primaryNavigationController];
        }
        v5 = ;
      }

      goto LABEL_8;
    }
  }

  else if (v3)
  {
    goto LABEL_4;
  }

  v5 = [(ICViewControllerManager *)self compactNavigationController];
LABEL_8:

  return v5;
}

- (BOOL)isShowingNoteBrowsersForContainerObjectIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self noteBrowseNavigationController];
  v6 = [v5 viewControllers];

  v7 = [v4 count];
  if (v7 == [v6 count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100052D74;
    v11[3] = &unk_100646300;
    v12 = v4;
    v8 = [v6 ic_containsObjectPassingTest:v11];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setNoteBrowserNavigationStackWithFolderObjectIDs:(id)a3
{
  v4 = a3;
  if (![(ICViewControllerManager *)self isShowingNoteBrowsersForContainerObjectIDs:v4])
  {
    v5 = [(ICViewControllerManager *)self noteBrowseNavigationController];
    v6 = [v5 popToRootViewControllerAnimated:0];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100052F34;
    v7[3] = &unk_100646328;
    v7[4] = self;
    [v4 enumerateObjectsUsingBlock:v7];
  }
}

- (BOOL)shouldManagedObjectBecomeSelectedNote:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  if ([v5 ic_isNoteType] && (objc_msgSend(v4, "isDeleted") & 1) == 0)
  {
    v7 = [v4 objectID];
    if ([v7 isTemporaryID])
    {
      v6 = 0;
    }

    else
    {
      v8 = [(ICViewControllerManager *)self selectedNoteObjectID];
      if (v8)
      {
        v6 = 0;
      }

      else
      {
        v9 = [(ICViewControllerManager *)self selectedInvitationObjectID];
        if (v9)
        {
          v6 = 0;
        }

        else
        {
          objc_opt_class();
          v10 = ICDynamicCast();
          if ([v10 markedForDeletion])
          {
            v6 = 0;
          }

          else
          {
            objc_opt_class();
            v11 = ICDynamicCast();
            if ([v11 needsInitialFetchFromCloud])
            {
              v6 = 0;
            }

            else
            {
              v12 = [v4 objectID];
              v6 = [(ICViewControllerManager *)self isSelectionAppropriateForObjectID:v12];
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)managedObjectContextDidChange:(id)a3
{
  v65 = a3;
  val = self;
  v6 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
  if (v6)
  {
    v7 = 0;
LABEL_7:
    v8 = val;
    goto LABEL_8;
  }

  v3 = [(ICViewControllerManager *)val selectedNoteObjectID];
  if (v3)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v4 = [(ICViewControllerManager *)val selectedInvitationObjectID];
  if (v4)
  {
    v3 = 0;
    v7 = 1;
    goto LABEL_7;
  }

  v8 = val;
  if (![(ICViewControllerManager *)val isTagSelected])
  {
    goto LABEL_102;
  }

  v4 = 0;
  v3 = 0;
  v7 = 1;
LABEL_8:
  if ([(ICViewControllerManager *)v8 isSelectedNoteTogglingLock]|| [(ICViewControllerManager *)v8 isRecoveredNoteBeingPresented]|| [(ICViewControllerManager *)v8 isApplyingStateRestoreArchive]|| [(ICViewControllerManager *)v8 isTagBeingRenamed])
  {
    v9 = 1;
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v9 = [(ICViewControllerManager *)v8 isTagBeingDeleted];
  if (v7)
  {
LABEL_13:
  }

LABEL_14:
  if (!v6)
  {
  }

  if ((v9 & 1) == 0)
  {
    v10 = [v65 userInfo];
    v11 = [v10 objectForKeyedSubscript:NSInsertedObjectsKey];

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
    if (v12)
    {
      v13 = *v98;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v98 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v97 + 1) + 8 * i);
          if ([(ICViewControllerManager *)val shouldManagedObjectBecomeSelectedNote:v15])
          {
            v16 = [v15 objectID];
            goto LABEL_27;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_27:

    v68 = +[NSMutableSet set];
    v71 = +[NSMutableSet set];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v102[0] = NSDeletedObjectsKey;
    v102[1] = NSUpdatedObjectsKey;
    v102[2] = NSRefreshedObjectsKey;
    v63 = [NSArray arrayWithObjects:v102 count:3];
    v66 = [v63 countByEnumeratingWithState:&v93 objects:v103 count:16];
    if (v66)
    {
      v69 = 0;
      v64 = *v94;
      while (1)
      {
        v17 = 0;
        do
        {
          if (*v94 != v64)
          {
            v18 = v17;
            objc_enumerationMutation(v63);
            v17 = v18;
          }

          v67 = v17;
          v19 = *(*(&v93 + 1) + 8 * v17);
          v20 = [v65 userInfo];
          v21 = [v20 objectForKeyedSubscript:v19];

          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v22 = v21;
          v23 = [v22 countByEnumeratingWithState:&v89 objects:v101 count:16];
          if (v23)
          {
            v24 = *v90;
            do
            {
              v25 = 0;
              do
              {
                if (*v90 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = *(*(&v89 + 1) + 8 * v25);
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  [v71 addObject:v26];
                  goto LABEL_40;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v27 = [v26 note];
                  [v71 ic_addNonNilObject:v27];

                  goto LABEL_40;
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
                      goto LABEL_40;
                    }

                    v31 = v26;
                    if ([v31 markedForDeletion])
                    {
                      v35 = [v31 objectID];
                      [v68 addObject:v35];
                    }

                    goto LABEL_60;
                  }
                }

                if ([v26 isDeleted])
                {
                  v28 = [(ICViewControllerManager *)val selectedNoteBrowseContainerItemID];
                  v29 = [v26 objectID];
                  v30 = [v28 isEqual:v29];

                  if (v30)
                  {
                    v69 = 0x100000001;
                    goto LABEL_40;
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v31 = v26;
                  v32 = [v31 objectID];
                  v33 = [(ICViewControllerManager *)val selectedNoteBrowseContainerItemID];
                  v34 = [v32 isEqual:v33];

                  if (v34)
                  {
                    if (([v31 markedForDeletion] & 1) != 0 || objc_msgSend(v31, "isTrashFolder") && !objc_msgSend(v31, "visibleNotesCount"))
                    {
                      HIDWORD(v69) = 1;
                    }
                  }

                  else if (![(ICViewControllerManager *)val selectionStateTrackingEnabled])
                  {
                    v36 = [(ICViewControllerManager *)val selectedNoteBrowseContainerItemID];
                    if (v36)
                    {
                    }

                    else
                    {
                      v37 = [v31 objectID];
                      v38 = [(ICViewControllerManager *)val mostRecentNonSearchContainerItemID];
                      if ([v37 isEqual:v38])
                      {
                        v39 = [v31 markedForDeletion];

                        if (v39)
                        {
                          v40 = [v31 account];
                          v41 = [v40 defaultFolder];

                          v42 = [v41 objectID];
                          [(ICViewControllerManager *)val setMostRecentNonSearchContainerItemID:v42];
                        }
                      }

                      else
                      {
                      }
                    }
                  }

LABEL_60:
                }

LABEL_40:
                if (!v16)
                {
                  if ([(ICViewControllerManager *)val shouldManagedObjectBecomeSelectedNote:v26])
                  {
                    v16 = [v26 objectID];
                  }

                  else
                  {
                    v16 = 0;
                  }
                }

                v25 = v25 + 1;
              }

              while (v23 != v25);
              v43 = [v22 countByEnumeratingWithState:&v89 objects:v101 count:16];
              v23 = v43;
            }

            while (v43);
          }

          v17 = v67 + 1;
        }

        while ((v67 + 1) != v66);
        v66 = [v63 countByEnumeratingWithState:&v93 objects:v103 count:16];
        if (!v66)
        {
          goto LABEL_77;
        }
      }
    }

    v69 = 0;
LABEL_77:

    objc_opt_class();
    v44 = [(ICViewControllerManager *)val selectedContainerItemID];
    v45 = ICDynamicCast();
    v46 = +[ICNoteContext sharedContext];
    v47 = [v46 workerManagedObjectContext];
    v48 = [v45 isHiddenInContext:v47];

    v49 = [v68 copy];
    v50 = [(ICViewControllerManager *)val selectContainersForDeletedHashtagObjectIDs:v49];

    if (((v48 | HIDWORD(v69)) & 1) != 0 && ![(ICViewControllerManager *)val isNoteBeingRecovered]&& (([(ICViewControllerManager *)val isSelectingNextRelevantNoteBrowseContainer]| v50) & 1) == 0 && ([(ICViewControllerManager *)val overrideContainerIdentifier], v51 = objc_claimAutoreleasedReturnValue(), v52 = v51 == 0, v51, v52))
    {
      [(ICViewControllerManager *)val selectNextContainerForDeletedFolder];
    }

    else if (v16)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100053D38;
      block[3] = &unk_100645BA0;
      block[4] = val;
      v88 = v16;
      dispatch_async(&_dispatch_main_q, block);
    }

    else if (([v71 count] != 0) | v69 & 1)
    {
      v81 = 0;
      v82 = &v81;
      v83 = 0x3032000000;
      v84 = sub_100040A44;
      v85 = sub_100040A54;
      v86 = 0;
      v77 = 0;
      v78 = &v77;
      v79 = 0x2020000000;
      v80 = 0;
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_100053DA8;
      v76[3] = &unk_100646350;
      v76[4] = val;
      v76[5] = &v81;
      v76[6] = &v77;
      v53 = [v71 ic_compactMap:v76];
      if (*(v78 + 24) == 1)
      {
        v54 = [(ICViewControllerManager *)val selectedNoteObjectID];
        v55 = [NSSet setWithObject:v54];
        [(ICViewControllerManager *)val selectNextRelevantObjectUsingChangedInappropriateIdentifiers:v55];
      }

      else
      {
        v56 = [(ICViewControllerManager *)val selectedSearchResult];
        v57 = v56 == 0;

        if (v57)
        {
          if (v82[5])
          {
            objc_initWeak(&location, val);
            [(ICViewControllerManager *)val setIsRecoveredNoteBeingPresented:1];
            v73[0] = _NSConcreteStackBlock;
            v73[1] = 3221225472;
            v73[2] = sub_1000543C4;
            v73[3] = &unk_100646378;
            v73[4] = val;
            v73[5] = &v81;
            objc_copyWeak(&v74, &location);
            dispatch_async(&_dispatch_main_q, v73);
            objc_destroyWeak(&v74);
            objc_destroyWeak(&location);
          }

          else
          {
            v58 = [v53 count];
            if (v58)
            {
              v72[0] = _NSConcreteStackBlock;
              v72[1] = 3221225472;
              v72[2] = sub_1000545DC;
              v72[3] = &unk_1006463A0;
              v72[4] = val;
              LODWORD(v58) = [v53 ic_containsObjectPassingTest:v72];
            }

            if ((v69 | v58))
            {
              v59 = [v65 object];
              v60 = [(ICViewControllerManager *)val selectDefaultFolderForNoteMovedOutOfSmartFolderIfNeeded:v59];
              if (((v60 | [(ICViewControllerManager *)val selectDefaultFolderForNoteMovedOutOfSelectedTagsIfNeeded:v59]) & 1) == 0)
              {
                v61 = [v53 valueForKey:@"objectID"];
                [(ICViewControllerManager *)val selectNextRelevantObjectUsingChangedInappropriateIdentifiers:v61];
              }
            }
          }
        }
      }

      _Block_object_dispose(&v77, 8);
      _Block_object_dispose(&v81, 8);
    }
  }

LABEL_102:
}

- (BOOL)selectContainersForDeletedHashtagObjectIDs:(id)a3
{
  v4 = a3;
  if (![(ICViewControllerManager *)self isTagSelected])
  {
    goto LABEL_7;
  }

  v5 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
  if (([v5 intersectsSet:v4] & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = [(ICViewControllerManager *)self noteContainerViewMode];

  if (v6 == 1)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v7 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
  v8 = [v7 mutableCopy];

  [v8 minusSet:v4];
  v9 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
  v10 = [v9 mutableCopy];

  [v10 minusSet:v4];
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v11 = [(ICViewControllerManager *)self tagSelection];
    [v11 setIncludedObjectIDs:v8];
    [v11 setExcludedObjectIDs:v10];
    [(ICViewControllerManager *)self selectTagSelection:v11];
  }

  else
  {
    v14 = v8;
    v15 = v10;
    performBlockOnMainThread();
  }

  v12 = 1;
LABEL_8:

  return v12;
}

- (BOOL)selectDefaultFolderForNoteMovedOutOfSmartFolderIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self selectedSmartFolder:v4];

  if (v5)
  {
    v6 = [(ICViewControllerManager *)self selectedSmartFolderNoteObjectIDs:v4];
    v7 = [(ICViewControllerManager *)self selectDefaultFolderForNoteMovedOutOfNoteObjectIDs:v6 managedObjectContext:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)selectDefaultFolderForNoteMovedOutOfSelectedTagsIfNeeded:(id)a3
{
  v4 = a3;
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    v5 = [(ICViewControllerManager *)self selectedTagsNoteObjectIDs:v4];
    v6 = [(ICViewControllerManager *)self selectDefaultFolderForNoteMovedOutOfNoteObjectIDs:v5 managedObjectContext:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)selectDefaultFolderForNoteMovedOutOfNoteObjectIDs:(id)a3 managedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICViewControllerManager *)self selectedNoteObjectID];
  if ([v8 ic_isModernNoteType] && (objc_msgSend(v6, "containsObject:", v8) & 1) == 0)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100054E70;
    v15[3] = &unk_100646008;
    v16 = v7;
    v10 = v8;
    v17 = v10;
    v18 = &v19;
    [v16 performBlockAndWait:v15];
    if (v20[3])
    {
      v9 = 0;
    }

    else
    {
      v11 = [(ICViewControllerManager *)self defaultContainerObjectIDForNoteWithObjectID:v10];
      v12 = v11;
      v9 = v11 != 0;
      if (v11)
      {
        v14 = v11;
        performBlockOnMainThread();
      }
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ICFolder)selectedSmartFolder
{
  v3 = [(ICViewControllerManager *)self modernManagedObjectContext];
  v4 = [(ICViewControllerManager *)self selectedSmartFolder:v3];

  return v4;
}

- (id)selectedSmartFolder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
  v6 = ICDynamicCast();

  if (v6 && [v6 ic_isModernFolderType])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100040A44;
    v17 = sub_100040A54;
    v18 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100055184;
    v9[3] = &unk_100646008;
    v10 = v4;
    v11 = v6;
    v12 = &v13;
    [v10 performBlockAndWait:v9];
    v7 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)selectedSmartFolderNoteObjectIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self selectedSmartFolder:v4];
  v6 = v5;
  if (v5)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100040A44;
    v19 = sub_100040A54;
    v20 = 0;
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100055350;
    v12 = &unk_1006463C8;
    v14 = &v15;
    v13 = v5;
    [v4 performBlockAndWait:&v9];
    v7 = [(ICViewControllerManager *)self noteObjectIDsWithQuery:v16[5] managedObjectContext:v4, v9, v10, v11, v12];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)selectedTagsNoteObjectIDs:(id)a3
{
  v4 = a3;
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    v5 = [(ICViewControllerManager *)self selectedTagsNoteQuery:v4];
    v6 = [(ICViewControllerManager *)self noteObjectIDsWithQuery:v5 managedObjectContext:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)noteObjectIDsWithQuery:(id)a3 managedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_100040A44;
    v18 = sub_100040A54;
    v19 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005557C;
    v10[3] = &unk_100646008;
    v11 = v6;
    v12 = v5;
    v13 = &v14;
    [v11 performBlockAndWait:v10];
    v8 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)selectedTagsNoteQuery:(id)a3
{
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    v4 = [(ICViewControllerManager *)self tagSelection];
    v5 = [ICQuery queryForNotesMatchingTagSelection:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)selectNextRelevantObjectUsingChangedInappropriateIdentifiers:(id)a3
{
  v4 = a3;
  if ([(ICViewControllerManager *)self behavior]!= 2)
  {
    if (-[ICViewControllerManager noteContainerViewMode](self, "noteContainerViewMode") != 1 || (-[ICViewControllerManager activeEditorController](self, "activeEditorController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 ic_isViewVisible], v5, v6))
    {
      if (![(ICViewControllerManager *)self isAuxiliary])
      {
        v7 = [(ICViewControllerManager *)self selectedSearchResult];
        if (v7 && (v8 = v7, v9 = [(ICViewControllerManager *)self isSearchActive], v8, v9))
        {
          v10 = [(ICViewControllerManager *)self searchController];
          v11 = [v10 dataSource];

          v12 = [v4 allObjects];
          v13 = [v11 nextRelevantItemIdentifierAfter:v12];

          if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
          {
            [(ICViewControllerManager *)self setSelectedSearchResult:v13];
          }

          v14 = 1;
        }

        else
        {
          v15 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
          v11 = [v15 dataSource];

          v16 = [v4 allObjects];
          v13 = [v11 nextRelevantItemIdentifierAfter:v16];

          if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
          {
            [(ICViewControllerManager *)self setSelectedNoteObjectID:v13];
          }

          v14 = 0;
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100055860;
        block[3] = &unk_1006462D8;
        v21 = v14;
        v19 = v13;
        v20 = self;
        v17 = v13;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

- (void)dismissPrimaryOverlayContent
{
  v3 = [(ICViewControllerManager *)self mainSplitViewController];
  v4 = [v3 displayMode];

  if (v4 <= 6 && ((1 << v4) & 0x68) != 0)
  {
    v6 = [(ICViewControllerManager *)self mainSplitViewController];
    [v6 hideColumn:0];
  }
}

- (void)dismissSupplementaryOverlayContent
{
  if ([(ICViewControllerManager *)self noteContainerViewMode]!= 1)
  {
    v3 = [(ICViewControllerManager *)self mainSplitViewController];
    v4 = [v3 displayMode];

    if (v4 == 5 || v4 == 3)
    {
      v5 = [(ICViewControllerManager *)self mainSplitViewController];
      [v5 hideColumn:1];
    }
  }
}

- (void)sendNotificationForSplitViewDisplayModeChangeWithTransitionCoordinator:(id)a3
{
  v4 = a3;
  +[NSNotificationCenter defaultCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100055BF8;
  v10 = v9[3] = &unk_1006463F0;
  v11 = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100055C54;
  v6[3] = &unk_1006463F0;
  v7 = v10;
  v8 = self;
  v5 = v10;
  [v4 animateAlongsideTransition:v9 completion:v6];
}

- (void)sendNotificationForNoteEditorSizeChange:(CGSize)a3 transitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(ICViewControllerManager *)self noteEditorViewController];
  if (([v8 ic_isViewVisible] & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = +[ICQuickNoteSessionManager sharedManager];
  if ([v9 isSecureScreenShowing])
  {

LABEL_6:
    goto LABEL_7;
  }

  v10 = [(ICViewControllerManager *)self isApplyingStateRestoreArchive];

  if ((v10 & 1) == 0)
  {
    v22[0] = @"ICSplitViewControllerPredictedDetailSizeUserInfo";
    v11 = [NSValue valueWithCGSize:width, height];
    v23[0] = v11;
    v22[1] = @"ICSplitViewControllerPredictedDurationUserInfo";
    [v7 transitionDuration];
    v12 = [NSNumber numberWithDouble:?];
    v23[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

    +[NSNotificationCenter defaultCenter];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100055EE8;
    v19 = v18[3] = &unk_100646418;
    v20 = self;
    v21 = v13;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100055F4C;
    v15[3] = &unk_1006463F0;
    v16 = v19;
    v17 = self;
    v14 = v19;
    v8 = v13;
    [v7 animateAlongsideTransition:v18 completion:v15];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)showContainerWithIdentifiers:(id)a3 excludingIdentifiers:(id)a4 usingRootViewController:(BOOL)a5 deferUntilDataLoaded:(BOOL)a6 dismissOverlayContent:(BOOL)a7 keepEditorShowing:(id)a8 animated:(BOOL)a9
{
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v15 = a3;
  v16 = a4;
  v35 = a8;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100056234;
  v36[3] = &unk_100646440;
  v36[4] = self;
  v37 = a9;
  v33 = v10;
  v38 = v10;
  v17 = objc_retainBlock(v36);
  v18 = [(ICViewControllerManager *)self selectedNoteObjectID];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [(ICViewControllerManager *)self selectedInvitationObjectID];
  }

  v21 = v20;
  v34 = v16;

  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled]&& v21 && [(ICViewControllerManager *)self hasCompactWidth]&& ![(ICViewControllerManager *)self objectAlreadyLoadedInEditorWithObjectID:v21]&& [(ICViewControllerManager *)self isNoteEditorVisible])
  {
    v22 = 0;
    v23 = 1;
    if (!v11)
    {
      goto LABEL_10;
    }

LABEL_16:
    v29 = [(ICViewControllerManager *)self mainSplitViewController];
    if ([v29 isCollapsed])
    {
      v30 = 0;
    }

    else if ([(ICViewControllerManager *)self behavior]== 3)
    {
      v30 = 0;
    }

    else
    {
      v30 = v17;
    }

    v24 = objc_retainBlock(v30);

    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v25 = [v15 allObjects];
  v26 = [v25 firstObject];
  v27 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:v26];

  v28 = [(ICViewControllerManager *)self isAutomaticallySelectingNotes];
  if (v27 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = v28;
  }

  v22 = 1;
  if (v11)
  {
    goto LABEL_16;
  }

LABEL_10:
  v24 = 0;
  if (!v12)
  {
LABEL_25:
    v31 = 1;
    goto LABEL_26;
  }

LABEL_22:
  if (![(ICViewControllerManager *)self isSplitViewExpanded]|| [(ICViewControllerManager *)self hasCompactWidth]&& [(ICViewControllerManager *)self behavior]== 3)
  {
    goto LABEL_25;
  }

  v31 = [(ICViewControllerManager *)self behavior]== 1;
LABEL_26:
  BYTE2(v32) = v23;
  BYTE1(v32) = v22;
  LOBYTE(v32) = v31;
  [ICViewControllerManager showContainerWithIdentifiers:"showContainerWithIdentifiers:excludingIdentifiers:noteBrowseViewController:usingRootViewController:deferUntilDataLoaded:dismissOverlayContent:animated:ensurePresented:ensureSelectedNote:keepEditorShowing:dataIndexedBlock:dataRenderedBlock:" excludingIdentifiers:v15 noteBrowseViewController:v34 usingRootViewController:0 deferUntilDataLoaded:v12 dismissOverlayContent:v11 animated:v33 ensurePresented:v32 ensureSelectedNote:v35 keepEditorShowing:0 dataIndexedBlock:v24 dataRenderedBlock:?];
  if (!v11)
  {
    (v17[2])(v17);
  }
}

- (void)showContainerWithIdentifiers:(id)a3 excludingIdentifiers:(id)a4 noteBrowseViewController:(id)a5 usingRootViewController:(BOOL)a6 deferUntilDataLoaded:(BOOL)a7 dismissOverlayContent:(BOOL)a8 animated:(BOOL)a9 ensurePresented:(BOOL)a10 ensureSelectedNote:(BOOL)a11 keepEditorShowing:(id)a12 dataIndexedBlock:(id)a13 dataRenderedBlock:(id)a14
{
  v38 = a3;
  v37 = a4;
  v18 = a5;
  v19 = a12;
  v20 = a13;
  v21 = a14;
  objc_opt_class();
  v22 = [v38 allObjects];
  v23 = [v22 firstObject];
  v24 = ICDynamicCast();

  objc_opt_class();
  v25 = [(ICViewControllerManager *)self existingManagedObjectWithObjectID:v24];
  v26 = ICDynamicCast();

  if (!v18)
  {
    if ([(ICViewControllerManager *)self noteContainerViewMode]== 1 && ![(ICViewControllerManager *)self hasCompactWidth])
    {
      v27 = [v26 ancestorFolderObjectIDs];
      v28 = [v27 reverseObjectEnumerator];
      v29 = [v28 allObjects];

      if ([v29 count])
      {
        [(ICViewControllerManager *)self setNoteBrowserNavigationStackWithFolderObjectIDs:v29];
        v18 = [[ICNoteBrowseViewController alloc] initWithViewMode:[(ICViewControllerManager *)self noteContainerViewMode] viewControllerManager:self];

        if (v18)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    v36 = v26;
    if (a6)
    {
      v30 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    }

    else
    {
      v30 = [[ICNoteBrowseViewController alloc] initWithViewMode:[(ICViewControllerManager *)self noteContainerViewMode] viewControllerManager:self];
    }

    v18 = v30;
    v31 = [(ICNoteBrowseViewController *)v30 navigationItem];
    v32 = [v31 searchController];
    v33 = [v32 isActive];

    if (v33)
    {
      v34 = [(ICNoteBrowseViewController *)v18 navigationItem];
      v35 = [v34 searchController];
      [v35 setActive:0];
    }

    [(ICNoteBrowseViewController *)v18 setEditing:0];
    v26 = v36;
  }

LABEL_14:
  [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:v18 animated:a9 ensurePresented:a10 containerIdentifiers:v38 excludingIdentifiers:v37 ensureSelectedNote:a11 keepEditorShowing:v19 dataIndexedBlock:v20 dataRenderedBlock:v21];
}

- (void)addSelectedHashtagsToNewNote:(id)a3
{
  v4 = a3;
  v5 = [v4 managedObjectContext];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        objc_opt_class();
        v11 = ICDynamicCast();
        if ([v11 ic_isHashtagType])
        {
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_10005678C;
          v13[3] = &unk_100645D40;
          v12 = v5;
          v14 = v12;
          v15 = v11;
          v16 = v4;
          [v12 performBlockAndWait:v13];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)updateNoteEditorBezelsIfNeededWithDisplayMode:(int64_t)a3 force:(BOOL)a4
{
  v4 = a4;
  if ([(ICViewControllerManager *)self behavior]== 3)
  {
    v7 = [(ICViewControllerManager *)self noteContainerViewMode];
    v8 = [(ICViewControllerManager *)self noteContainerViewMode];
    v10 = a3 == 1 || v8 == 1;
    if ([(ICViewControllerManager *)self isInHTMLEditorMode])
    {
      v11 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
      [v11 updateContentViewBezelsStandalone:a3 == 1 needsAdditionalBottomMargin:v7 == 0 needsAdditionalLeadingMargin:v10];
    }

    else
    {
      v11 = [(ICViewControllerManager *)self noteEditorViewController];
      [v11 updateContentViewBezelsStandalone:a3 == 1 needsAdditionalBottomMargin:v7 == 0 needsAdditionalLeadingMargin:v10 force:v4];
    }
  }
}

- (void)clearRecentSelections
{
  v2 = [(ICViewControllerManager *)self selectionStateController];
  [v2 clear];
}

- (void)noteLockManagerWillToggleLock:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v10 = ICCheckedDynamicCast();

  v6 = [v10 note];
  v7 = [v6 objectID];
  v8 = [(ICViewControllerManager *)self selectedNoteObjectID];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    [(ICViewControllerManager *)self setIsSelectedNoteTogglingLock:1];
  }
}

- (void)noteLockManagerDidToggleLock:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v14 = ICCheckedDynamicCast();

  v6 = [(ICViewControllerManager *)self selectedNoteObjectID];
  v7 = [v14 note];
  v8 = [v7 objectID];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = [v14 updatedNote];

    if (v10)
    {
      v11 = [v14 updatedNote];
      v12 = [v11 objectID];
      LOWORD(v13) = 256;
      [(ICViewControllerManager *)self selectNoteWithObjectID:v12 scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:0 showLatestUpdatesIfAvailable:1 animated:v13 ensurePresented:?];
    }

    [(ICViewControllerManager *)self setIsSelectedNoteTogglingLock:0];
  }
}

- (void)collectionViewWillRenameTag:(id)a3
{
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v4 = [(ICViewControllerManager *)self tagSelection];
    [v4 setAutomaticallyRemoveDeletedTags:0];
  }

  [(ICViewControllerManager *)self setIsTagBeingRenamed:1];
}

- (void)tagDidRename:(id)a3
{
  v4 = a3;
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v5 = [(ICViewControllerManager *)self tagSelection];
    [v5 setAutomaticallyRemoveDeletedTags:1];
  }

  v6 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(ICViewControllerManager *)self tagSelection];
    v9 = [v8 copy];

    v10 = [v4 object];
    v11 = [v4 userInfo];
    v12 = +[NSNotification ICTagCollectionViewRenameTagOriginalTagObjectIDKey];
    v13 = [v11 objectForKeyedSubscript:v12];

    v14 = [v9 objectIDs];
    LODWORD(v12) = [v14 containsObject:v13];

    if (v12)
    {
      v15 = [v9 excludedObjectIDs];
      v16 = [v15 containsObject:v13];

      [v9 removeObjectID:v13 fromExcluded:v16];
      [v9 addObjectID:v10 toExcluded:v16];
      if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
      {
        if (-[ICViewControllerManager isAutomaticallySelectingNotes](self, "isAutomaticallySelectingNotes") || (-[ICViewControllerManager compactNavigationController](self, "compactNavigationController"), v17 = objc_claimAutoreleasedReturnValue(), [v17 topViewController], v18 = objc_claimAutoreleasedReturnValue(), -[ICViewControllerManager rootNoteBrowseViewController](self, "rootNoteBrowseViewController"), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v17, v18 == v19))
        {
          [(ICViewControllerManager *)self selectTagSelection:v9];
        }
      }

      else
      {
        v20 = _NSConcreteStackBlock;
        v21 = 3221225472;
        v22 = sub_100056E30;
        v23 = &unk_100645BA0;
        v24 = self;
        v25 = v9;
        performBlockOnMainThread();
      }
    }
  }

  [(ICViewControllerManager *)self setIsTagBeingRenamed:0, v20, v21, v22, v23, v24];
}

- (void)tagsDidDelete:(id)a3
{
  v4 = a3;
  [(ICViewControllerManager *)self setIsTagBeingDeleted:0];
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    v5 = [v4 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 object];
      v8 = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
      v9 = [(ICViewControllerManager *)self tagSelection];
      v10 = v9;
      if (v8)
      {
        v11 = [NSSet setWithArray:v7];
        [v10 removeObjectIDs:v11];

        [(ICViewControllerManager *)self selectTagSelection:v10];
      }

      else
      {
        v12 = [v9 copy];

        v13 = [NSSet setWithArray:v7];
        [v12 removeObjectIDs:v13];

        v14 = v12;
        performBlockOnMainThread();
      }
    }
  }
}

- (void)migrationStateDidChange:(id)a3
{
  v4 = [(ICViewControllerManager *)self folderListViewController];
  v5 = [v4 folderDataSource];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100057120;
  v6[3] = &unk_100645E30;
  v6[4] = self;
  [v5 reloadDataAnimated:1 dataIndexedBlock:&stru_100646480 dataRenderedBlock:v6];
}

- (void)accountsDidChange:(id)a3
{
  if ([(ICViewControllerManager *)self isAuxiliary])
  {
    v4 = [(ICViewControllerManager *)self noteEditorViewController];
    v5 = [v4 note];
    v6 = [v5 folder];
    v7 = [v6 account];
    v8 = [v7 isDeleted];

    if (v8)
    {

      [(ICViewControllerManager *)self closeAuxiliaryWindowAnimated:1];
    }
  }

  else
  {
    v9 = [(ICViewControllerManager *)self folderListViewController];
    v10 = [v9 folderDataSource];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005726C;
    v11[3] = &unk_100645E30;
    v11[4] = self;
    [v10 reloadDataAnimated:1 dataIndexedBlock:&stru_1006464A0 dataRenderedBlock:v11];
  }
}

- (void)folderWasCreated:(id)a3
{
  if ([(ICViewControllerManager *)self isSplitViewExpanded])
  {
    v4 = [(ICViewControllerManager *)self mainSplitViewController];
    [v4 showColumn:0];
  }
}

- (void)willDismissSearch:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICViewControllerManager *)self currentSearchBarViewController];

  if (v4 == v5)
  {
    if ([(ICViewControllerManager *)self selectionStateTrackingEnabled]&& ([(ICViewControllerManager *)self selectedSearchResult], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100057660;
      block[3] = &unk_100645E30;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v7 = [(ICViewControllerManager *)self noteEditorViewController];
      [v7 highlightSearchMatchesForRegexFinder:0];

      if ([(ICViewControllerManager *)self isSplitViewExpanded])
      {
        if ([(ICViewControllerManager *)self isSearchActiveWithQuery])
        {
          v8 = [(ICViewControllerManager *)self selectedSearchResult];
          if (v8)
          {
            v9 = v8;
            v10 = [(ICViewControllerManager *)self isTagSelected];

            if ((v10 & 1) == 0)
            {
              objc_opt_class();
              v11 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
              v12 = ICDynamicCast();

              if ([v12 ic_isModernFolderType])
              {
                v13 = [(ICViewControllerManager *)self modernManagedObjectContext];
                v14 = [v13 ic_existingObjectWithID:v12];

                v15 = [(ICViewControllerManager *)self folderListViewController];
                v16 = [v15 folderDataSource];
                v17 = [v14 ancestorFolderObjectIDs];
                v19[0] = _NSConcreteStackBlock;
                v19[1] = 3221225472;
                v19[2] = sub_1000576A4;
                v19[3] = &unk_100645BA0;
                v19[4] = self;
                v20 = v14;
                v18 = v14;
                [v16 expandItemsWithIdentifiers:v17 completion:v19];
              }

              if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
              {
                [(ICViewControllerManager *)self setSelectedSearchResult:0];
              }
            }
          }
        }
      }

      [(ICViewControllerManager *)self setIsSearchActiveWithQuery:0];
    }
  }
}

- (void)searchQueryDidChange:(id)a3
{
  v10 = a3;
  v4 = [v10 object];
  v5 = [(ICViewControllerManager *)self currentSearchBarViewController];
  v6 = [v5 noteSearchViewController];

  v7 = v10;
  if (v4 == v6)
  {
    v8 = [v10 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"ICNoteSearchViewControllerQueryDidChangeNotificationQueryExistsKey"];

    if ([v9 BOOLValue] && !-[ICViewControllerManager isSearchActiveWithQuery](self, "isSearchActiveWithQuery"))
    {
      [(ICViewControllerManager *)self setIsSearchActiveWithQuery:1];
    }

    v7 = v10;
  }
}

- (void)didStartEditing:(id)a3
{
  v20 = a3;
  v4 = [(ICViewControllerManager *)self hasCompactWidth];
  v5 = v20;
  if ((v4 & 1) == 0)
  {
    v6 = [v20 object];
    v7 = [(ICViewControllerManager *)self folderListViewController];

    if (v6 != v7)
    {
      v8 = [(ICViewControllerManager *)self folderListViewController];
      [v8 setEditing:0 animated:1];
    }

    v9 = [v20 object];
    v10 = [(ICViewControllerManager *)self rootNoteBrowseViewController];

    v5 = v20;
    if (v9 != v10)
    {
      v11 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
      [v11 setEditing:0 animated:1];

      v5 = v20;
    }
  }

  v12 = [v5 object];
  v13 = [(ICViewControllerManager *)self noteEditorViewController];
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    v15 = [(ICViewControllerManager *)self noteEditorViewController];
    v16 = [v15 isEditingOnSystemPaper];

    if (v16)
    {
      goto LABEL_11;
    }

    v12 = [(ICViewControllerManager *)self noteEditorViewController];
    [v12 setEditing:0 animated:1];
  }

LABEL_11:
  v17 = [v20 object];
  v18 = [(ICViewControllerManager *)self legacyNoteEditorViewController];

  if (v17 != v18)
  {
    v19 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    [v19 setEditing:0 animated:1];
  }
}

- (void)validateState
{
  objc_opt_class();
  v3 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
  v37 = ICDynamicCast();

  if (!v37)
  {
    goto LABEL_8;
  }

  v4 = [(ICViewControllerManager *)self existingManagedObjectWithObjectID:v37];
  objc_opt_class();
  v5 = ICDynamicCast();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    objc_opt_class();
    v7 = ICDynamicCast();
    v6 = [v7 account];

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v8 = [(ICViewControllerManager *)self legacyManagedObjectContext];
  [v8 refreshObject:v6 mergeChanges:1];

LABEL_6:
  v9 = [v6 didChooseToMigrate];
  if (v4)
  {
    v10 = [v4 isDeleted] | v9;

    if ((v10 & 1) == 0)
    {
LABEL_8:
      v11 = [(ICViewControllerManager *)self selectedNoteObjectID];

      if (!v11 || (-[ICViewControllerManager selectedNoteObjectID](self, "selectedNoteObjectID"), v12 = objc_claimAutoreleasedReturnValue(), -[ICViewControllerManager existingManagedObjectWithObjectID:](self, "existingManagedObjectWithObjectID:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v13) && (v14 = [v13 isDeleted], v13, (v14 & 1) == 0))
      {
        v15 = [(ICViewControllerManager *)self focusedNoteObjectID];

        if (!v15 || (-[ICViewControllerManager focusedNoteObjectID](self, "focusedNoteObjectID"), v16 = objc_claimAutoreleasedReturnValue(), -[ICViewControllerManager existingManagedObjectWithObjectID:](self, "existingManagedObjectWithObjectID:", v16), v17 = objc_claimAutoreleasedReturnValue(), v16, v17) && (v18 = [v17 isDeleted], v17, (v18 & 1) == 0))
        {
          v19 = [(ICViewControllerManager *)self selectedInvitationObjectID];

          if (!v19)
          {
            goto LABEL_24;
          }

          v20 = [(ICViewControllerManager *)self selectedInvitationObjectID];
          v21 = [(ICViewControllerManager *)self existingManagedObjectWithObjectID:v20];

          if (v21)
          {
            v22 = [v21 isDeleted];

            if (!v22)
            {
              goto LABEL_24;
            }
          }
        }
      }
    }
  }

  else
  {
  }

  v23 = [(ICViewControllerManager *)self folderListViewController];
  v24 = [v23 dataSource];
  v25 = [v24 firstRelevantItemIdentifier];

  v26 = [(ICViewControllerManager *)self existingManagedObjectWithObjectID:v25];
  v27 = v26;
  if (v26 && ([v26 isDeleted] & 1) == 0)
  {
    v35 = [NSSet ic_setFromNonNilObject:v25];
    v36 = +[NSSet set];
    [(ICViewControllerManager *)self selectContainerWithIdentifiers:v35 excludingIdentifiers:v36 usingRootViewController:1 deferUntilDataLoaded:0 dismissOverlayContent:0 animated:1];
  }

  else
  {

    v28 = [(ICViewControllerManager *)self primaryNavigationController];
    v29 = [v28 popToRootViewControllerAnimated:1];

    v30 = [(ICViewControllerManager *)self supplementaryNavigationController];
    v31 = [v30 popToRootViewControllerAnimated:1];

    v32 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    [v32 setNoteContainer:0];

    v33 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    [v33 setNoteCollection:0];

    v34 = [(ICViewControllerManager *)self noteEditorViewController];
    [v34 setNote:0];

    v25 = objc_alloc_init(ICWindowStateArchive);
    [(ICWindowStateArchive *)v25 setIsPrimaryContentVisible:[(ICViewControllerManager *)self isPrimaryContentVisible]];
    [(ICWindowStateArchive *)v25 setIsSupplementaryContentVisible:[(ICViewControllerManager *)self isSupplementaryContentVisible]];
    [(ICViewControllerManager *)self applyStateRestoreArchive:v25 completion:0];
  }

LABEL_24:
}

- (id)defaultContainerObjectIDForNoteWithObjectID:(id)a3
{
  v4 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100040A44;
  v34 = sub_100040A54;
  v35 = 0;
  if ([v4 ic_isEntityOfClass:objc_opt_class()])
  {
    v5 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000580AC;
    v27[3] = &unk_100646008;
    v27[4] = self;
    v28 = v4;
    v29 = &v30;
    [v5 performBlockAndWait:v27];

    v6 = v28;
LABEL_5:

    goto LABEL_6;
  }

  if ([v4 ic_isEntityOfClass:objc_opt_class()])
  {
    v7 = [(ICViewControllerManager *)self legacyManagedObjectContext];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000581A8;
    v24[3] = &unk_100646008;
    v24[4] = self;
    v25 = v4;
    v26 = &v30;
    [v7 performBlockAndWait:v24];

    v6 = v25;
    goto LABEL_5;
  }

  if (!v4)
  {
    v10 = +[ICNoteContext sharedContext];
    v11 = [v10 managedObjectContext];

    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10005829C;
    v21 = &unk_100645FE0;
    v12 = v11;
    v22 = v12;
    v23 = &v30;
    [v12 performBlockAndWait:&v18];
    if (!v31[5])
    {
      v13 = [NotesApp sharedNotesApp:v18];
      v14 = [v13 noteContext];
      v15 = [v14 defaultStoreForNewNote];
      v16 = [v15 objectID];
      v17 = v31[5];
      v31[5] = v16;
    }
  }

LABEL_6:
  v8 = v31[5];
  _Block_object_dispose(&v30, 8);

  return v8;
}

- (void)dismissAnyPresentedViewControllerAnimated:(BOOL)a3 forShowNote:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v16 = a5;
  v8 = [(ICViewControllerManager *)self mainSplitViewController];
  v9 = [v8 presentedViewController];

  if (!v9)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    objc_opt_class();
    v10 = ICDynamicCast();
    v11 = v10;
    v12 = v10 ? [v10 shouldDismissWhenShowingNote] : 1;
  }

  else
  {
    v12 = 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v12)
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(ICViewControllerManager *)self mainSplitViewController];
      v14 = [v13 presentedViewController];

      [v14 prepareForDismissal];
    }

    v15 = [(ICViewControllerManager *)self mainSplitViewController];
    [v15 dismissViewControllerAnimated:v6 completion:v16];
  }

  else
  {
LABEL_13:
    if (v16)
    {
      v16[2]();
    }
  }

  [(ICViewControllerManager *)self setCurrentAttachmentPresenter:0];
}

- (id)containerObjectIDForNewNoteWithApproach:(int64_t)a3
{
  v4 = 0;
  if (a3 > 0x14)
  {
    v5 = 0;
  }

  else
  {
    if (((1 << a3) & 0x1F9F00) != 0)
    {
      v4 = 1;
LABEL_4:
      v5 = 1;
      goto LABEL_9;
    }

    if (((1 << a3) & 0xF8) != 0)
    {
      v6 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1004D898C();
      }

      v4 = 0;
      v5 = 0;
    }

    else
    {
      v5 = 0;
      if (((1 << a3) & 0x2002) != 0)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_9:
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100040A44;
  v41 = sub_100040A54;
  v42 = 0;
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    v7 = [(ICViewControllerManager *)self tagSelection];
    v8 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v9 = [ICDefaultAccountUtilities accountToAddNewNoteWithTagSelection:v7 modernContext:v8];

    v4 = 1;
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  v10 = [(ICViewControllerManager *)self selectedContainerItemID];
  v11 = ICDynamicCast();

  objc_opt_class();
  v12 = [(ICViewControllerManager *)self mostRecentNonSearchContainerItemID];
  v13 = ICDynamicCast();

  if (v4)
  {
    v14 = 1;
  }

  else if (v11 || ([(ICViewControllerManager *)self selectedContainerItemID], (v15 = objc_claimAutoreleasedReturnValue()) == 0) && v13 || ((v16 = [(ICViewControllerManager *)self isSearchActiveWithQuery], v13) ? (v17 = v16) : (v17 = 0), v15, v17 == 1))
  {
    v18 = [v11 accountObjectID];
    if (v18)
    {
      v19 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v20 = [v11 accountObjectID];
      v21 = [v19 objectWithID:v20];

      v9 = v19;
    }

    else
    {
      v21 = 0;
    }

    v14 = 1;
    v9 = v21;
  }

  else
  {
    v14 = 0;
  }

  v22 = [(ICViewControllerManager *)self mostRecentNonSearchContainerItemID];
  if (v22)
  {
    v23 = v5;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    if (!v9)
    {
      if (!v14)
      {
        v24 = +[NotesApp sharedNotesApp];
        v25 = [v24 noteContext];
        v9 = [ICDefaultAccountUtilities defaultAccountWithHTMLNoteContext:v25];

LABEL_35:
        goto LABEL_36;
      }

LABEL_34:
      v24 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v9 = [ICAccount defaultAccountInContext:v24];
      goto LABEL_35;
    }

LABEL_36:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v9 defaultFolder];
      v27 = [v26 objectID];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_42;
      }

      v26 = [v9 defaultStore];
      v27 = [v26 objectID];
    }

    v28 = v38[5];
    v38[5] = v27;
    goto LABEL_41;
  }

  if (v14)
  {
    if (!v9)
    {
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  objc_opt_class();
  v31 = [(ICViewControllerManager *)self mostRecentNonSearchContainerItemID];
  v32 = ICDynamicCast();
  v33 = v38[5];
  v38[5] = v32;

  if ([v38[5] ic_isModernFolderType])
  {
    [(ICViewControllerManager *)self modernManagedObjectContext];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10005898C;
    v26 = v34[3] = &unk_100645FE0;
    v35 = v26;
    v36 = &v37;
    [v26 performBlockAndWait:v34];
    v28 = v35;
LABEL_41:
  }

LABEL_42:
  v29 = v38[5];

  _Block_object_dispose(&v37, 8);

  return v29;
}

- (id)createNewNoteInContainerWithObjectID:(id)a3 isSystemPaper:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 ic_isEntityOfClass:objc_opt_class()])
  {
    v7 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v8 = [v7 objectWithID:v6];

    if ([v8 folderType] != 1)
    {
      v15 = 0;
      goto LABEL_18;
    }

    if ([v8 folderType] == 1)
    {
      v9 = [v8 account];
      if (!v9)
      {
        v10 = +[ICNoteContext sharedContext];
        v11 = [v10 managedObjectContext];
        v9 = [ICAccount defaultAccountInContext:v11];
      }

      v12 = [v9 defaultFolder];

      v8 = v12;
    }

    v13 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    [v13 setNoteContainer:v8];
    goto LABEL_10;
  }

  if ([v6 ic_isEntityOfClass:objc_opt_class()])
  {
    v14 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v13 = [v14 objectWithID:v6];

    v8 = [v13 defaultFolder];
LABEL_10:
    v15 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if ([v6 ic_isEntityOfClass:objc_opt_class()])
  {
    v13 = [(ICViewControllerManager *)self legacyManagedObjectContext];
    v16 = [v13 objectWithID:v6];
LABEL_16:
    v15 = v16;
    v8 = 0;
    goto LABEL_17;
  }

  if ([v6 ic_isEntityOfClass:objc_opt_class()])
  {
    v17 = [(ICViewControllerManager *)self legacyManagedObjectContext];
    v13 = [v17 objectWithID:v6];

    v16 = [v13 defaultStore];
    goto LABEL_16;
  }

  v15 = 0;
  v8 = 0;
LABEL_18:
  if (!(v8 | v15))
  {
    v18 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v19 = [ICAccount defaultAccountInContext:v18];
    v8 = [v19 defaultFolder];
  }

  if (!v8)
  {
    if (v15)
    {
      v29 = +[NotesApp sharedNotesApp];
      v30 = [v29 noteContext];
      v31 = [v30 newlyAddedNote];

      v32 = +[NSDate date];
      [v31 setCreationDate:v32];

      v33 = +[NSDate ic_modificationDateForNoteBeingEdited];
      [v31 setModificationDate:v33];

      [v31 setContent:&stru_100661CF0];
      [v31 setTitle:0];
      [v31 setStore:v15];
      v34 = v31;
      v35 = [v34 managedObjectContext];
      [v35 ic_save];

      v36 = [(ICViewControllerManager *)self eventReporter];
      [v36 submitNoteCreateEventForHTMLNote:v34];

      goto LABEL_36;
    }

    goto LABEL_28;
  }

  if (![v8 canMoveAddOrDeleteContents])
  {
LABEL_28:
    v34 = 0;
    goto LABEL_36;
  }

  v20 = [ICNote newEmptyNoteInFolder:v8];
  objc_opt_class();
  v21 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
  v22 = ICDynamicCast();

  v23 = [v22 type];
  v24 = [v23 isEqual:ICVirtualSmartFolderItemIdentifierTypeMathNotes];

  v25 = [(ICViewControllerManager *)self hostApplicationIdentifier];
  v26 = [v25 length];

  if (v26)
  {
    v27 = [(ICViewControllerManager *)self hostApplicationIdentifier];
    v28 = [v27 copy];
    [v20 setHostApplicationIdentifier:v28];

    if ([v20 isMathNote])
    {
      [v20 setCalculatePreviewBehavior:2];
    }

    [v20 updateUserSpecificChangeCountWithReason:@"Set host application identifier"];
  }

  else if (v24)
  {
    [v20 setCalculatePreviewBehavior:2];
    [v20 markAsMathNoteIfNeeded:1];
  }

  [(ICViewControllerManager *)self updateNewNoteForSelectedTags:v20 folder:v8];
  if (v4)
  {
    v37 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D89CC(v20);
    }

    [v20 markAsSystemPaperIfNeeded:1];
  }

  v38 = [(ICViewControllerManager *)self eventReporter];
  [v38 submitNoteCreateEventForModernNote:v20];

  v34 = v20;
  [v34 updateChangeCountWithReason:@"Created note"];
  v39 = [v34 managedObjectContext];

  [v39 ic_save];
LABEL_36:

  return v34;
}

- (void)updateNewNoteForSelectedTags:(id)a3 folder:(id)a4
{
  v5 = a3;
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    [(ICViewControllerManager *)self addSelectedHashtagsToNewNote:v5];
  }
}

- (BOOL)isTagSelected
{
  v2 = [(ICViewControllerManager *)self tagSelection];
  v3 = [v2 isNonEmpty];

  return v3;
}

- (id)showNewNoteStartEditing:(BOOL)a3 inContainerWithObjectID:(id)a4 isSystemPaper:(BOOL)a5 showInkPicker:(BOOL)a6 animated:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v11 = a5;
  v12 = a3;
  v14 = a4;
  v15 = a8;
  v16 = [(ICViewControllerManager *)self currentSearchBarViewController];
  v17 = [v16 noteSearchViewController];
  [v17 cancelSearch];

  v18 = [(ICViewControllerManager *)self createNewNoteInContainerWithObjectID:v14 isSystemPaper:v11];
  if ([v18 isModernNote])
  {
    v19 = [(ICViewControllerManager *)self noteEditorViewController];
    objc_opt_class();
    v20 = ICDynamicCast();
    [v19 setupLinedPaperOnNewNote:v20 willStartEditing:v12];
  }

  v21 = [v18 objectID];

  if (v21)
  {
    if (v12)
    {
      v22 = [(ICViewControllerManager *)self folderListViewController];
      v23 = [v22 isEditing];

      if (v23)
      {
        v24 = [(ICViewControllerManager *)self folderListViewController];
        [v24 setEditing:0 animated:v9];
      }

      v25 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
      v26 = [v25 isEditing];

      if (v26)
      {
        v27 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
        [v27 setEditing:0 animated:v9];
      }
    }

    objc_initWeak(&location, self);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000593D4;
    v41[3] = &unk_1006464C8;
    objc_copyWeak(&v44, &location);
    v42 = v18;
    v45 = v12;
    v46 = a6;
    v47 = v9;
    v43 = v15;
    v28 = objc_retainBlock(v41);
    if ([(ICViewControllerManager *)self noteContainerViewMode])
    {
      v29 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
      v30 = [v29 noteDataSource];
      if (v30)
      {
        v31 = +[_TtC11MobileNotes14ICFeatureFlags uniquelyiPadFluidTransitionsEnabled];

        if (v31)
        {
          v32 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
          v33 = [v32 noteDataSource];
          [v33 reloadDataAnimated:1 dataIndexedBlock:0 dataRenderedBlock:v28];

LABEL_15:
          objc_destroyWeak(&v44);
          objc_destroyWeak(&location);
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    (v28[2])(v28);
    goto LABEL_15;
  }

LABEL_16:
  v34 = [(ICViewControllerManager *)self visibleViewsUndoManager];
  v35 = [v34 prepareWithInvocationTarget:self];
  v36 = [v18 objectID];
  [v35 deleteEmptyNoteIfNeeded:v36];

  v37 = [(ICViewControllerManager *)self visibleViewsUndoManager];
  v38 = +[NSBundle mainBundle];
  v39 = [v38 localizedStringForKey:@"Add Note" value:&stru_100661CF0 table:0];
  [v37 setActionName:v39];

  return v18;
}

- (void)setNoteEditorAnimated:(BOOL)a3 ensurePresented:(BOOL)a4 startEditing:(BOOL)a5 showLegacy:(BOOL)a6 showLatestUpdatesIfAvailable:(BOOL)a7
{
  if (!a5)
  {
    [(ICViewControllerManager *)self stopEditing];
  }

  if (a6)
  {
    [(ICViewControllerManager *)self legacyNoteEditorViewController];
  }

  else
  {
    [(ICViewControllerManager *)self noteEditorViewController];
  }
  v13 = ;
  v14 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v15 = [v14 ic_isViewVisible];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000595E4;
  v20[3] = &unk_100646540;
  v22 = a4;
  v23 = v15;
  v20[4] = self;
  v21 = v13;
  v24 = a3;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v16 = v13;
  v17 = objc_retainBlock(v20);
  v18 = [(ICViewControllerManager *)self mainSplitViewController];
  if (v18)
  {
    v19 = [(ICViewControllerManager *)self mainSplitViewController];
    [v19 ic_performBlockAfterActiveTransition:v17];
  }

  else
  {
    (v17[2])(v17);
  }
}

- (BOOL)validateStateRestoreArchive:(id)a3
{
  v4 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[NSMutableArray array];
    v7 = [v4 currentObjectIDURL];
    [v6 ic_addNonNilObject:v7];

    v8 = [v4 currentNoteObjectIDURL];
    [v6 ic_addNonNilObject:v8];

    v9 = [v4 currentContainerObjectIDURLs];
    [v6 ic_addObjectsFromNonNilArray:v9];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100059F78;
    v11[3] = &unk_100646568;
    v11[4] = self;
    v5 = [v6 indexOfObjectPassingTest:v11] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)managedObjectIDFromURL:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self modernManagedObjectContext];
  v6 = [v5 persistentStoreCoordinator];

  v7 = [v6 ic_managedObjectIDForURIRepresentation:v4];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(ICViewControllerManager *)self legacyManagedObjectContext];
    v10 = [v9 persistentStoreCoordinator];

    v8 = [v10 ic_managedObjectIDForURIRepresentation:v4];
    v6 = v10;
  }

  return v8;
}

- (id)existingManagedObjectWithObjectID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v6 = [v5 existingObjectWithID:v4 error:0];

    if (!v6)
    {
      v7 = [(ICViewControllerManager *)self legacyManagedObjectContext];
      v6 = [v7 existingObjectWithID:v4 error:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isAutomaticallySelectingNotes
{
  v3 = [(ICViewControllerManager *)self window];
  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if ([(ICViewControllerManager *)self noteContainerViewMode])
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 1;
  }

  return !v6;
}

- (ICWindowStateArchive)windowStateArchive
{
  v3 = objc_alloc_init(ICWindowStateArchive);
  v4 = [(ICViewControllerManager *)self window];
  v5 = [v4 windowIdentifier];
  [(ICWindowStateArchive *)v3 setWindowIdentifier:v5];

  [(ICWindowStateArchive *)v3 setAttachmentBrowserOpen:[(ICViewControllerManager *)self isAttachmentBrowserVisible]];
  v6 = +[ICExpansionState sharedExpansionState];
  v7 = [v6 archiveDictionary];
  [(ICWindowStateArchive *)v3 setExpansionState:v7];

  [(ICWindowStateArchive *)v3 setIsAuxiliaryWindow:[(ICViewControllerManager *)self isAuxiliary]];
  [(ICWindowStateArchive *)v3 setCurrentNoteContainerViewMode:[(ICViewControllerManager *)self noteContainerViewMode]];
  [(ICWindowStateArchive *)v3 setPreferredNoteContainerViewMode:[(ICViewControllerManager *)self preferredNoteContainerViewMode]];
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v8 = [(ICViewControllerManager *)self selectionStateController];
    [v8 setActivityStreamViewMode:{-[ICViewControllerManager activityStreamViewMode](self, "activityStreamViewMode")}];

    v9 = [(ICViewControllerManager *)self noteEditorViewController];
    if ([v9 ic_isViewVisible])
    {
      v10 = [(ICViewControllerManager *)self noteEditorViewController];
      v11 = [v10 note];
      if (v11)
      {
        v12 = [(ICViewControllerManager *)self noteEditorViewController];
        v13 = [v12 isEditingOnSecureScreen];

        if (!v13)
        {
          v11 = 0;
          goto LABEL_11;
        }

        v11 = objc_alloc_init(_TtC11MobileNotes21ICSelectionStateModel);
        v9 = [(ICViewControllerManager *)self noteEditorViewController];
        v10 = [v9 note];
        v14 = [v10 ic_permanentObjectID];
        [(ICSelectionStateModel *)v11 setSelectedNoteObjectID:v14];
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_11:
    v19 = [(ICViewControllerManager *)self selectionStateController];
    v20 = [v19 dataRepresentationWithEditorModel:v11];
    [(ICWindowStateArchive *)v3 setSelectionState:v20];

    v21 = [(ICViewControllerManager *)self noteEditorViewController];
    v22 = [v21 currentScrollState];
    [(ICWindowStateArchive *)v3 setScrollState:v22];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v15 = [(ICViewControllerManager *)self activityStreamSelection];
  [(ICWindowStateArchive *)v3 setCurrentActivityStreamSelection:v15];

  [(ICWindowStateArchive *)v3 setCurrentActivityStreamViewMode:[(ICViewControllerManager *)self activityStreamViewMode]];
  v16 = [(ICViewControllerManager *)self selectedNoteObjectID];

  if (v16)
  {
    v17 = [(ICViewControllerManager *)self selectedNoteObjectID];
    v18 = [v17 URIRepresentation];
    [(ICWindowStateArchive *)v3 setCurrentNoteObjectIDURL:v18];
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  v23 = [(ICViewControllerManager *)self selectedInvitationObjectID];

  if (v23)
  {
    v17 = [(ICViewControllerManager *)self selectedInvitationObjectID];
    v18 = [v17 URIRepresentation];
    [(ICWindowStateArchive *)v3 setCurrentInvitationObjectIDURL:v18];
    goto LABEL_14;
  }

  v17 = [(ICViewControllerManager *)self noteEditorViewController];
  if (![v17 ic_isViewVisible])
  {
    goto LABEL_15;
  }

  v49 = [(ICViewControllerManager *)self noteEditorViewController];
  v50 = [v49 note];

  if (v50)
  {
    v17 = [(ICViewControllerManager *)self noteEditorViewController];
    v18 = [v17 note];
    v51 = [v18 ic_permanentObjectID];
    v52 = [v51 URIRepresentation];
    [(ICWindowStateArchive *)v3 setCurrentNoteObjectIDURL:v52];

    goto LABEL_14;
  }

LABEL_16:
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    v11 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
    v21 = [(ICSelectionStateModel *)v11 allObjects];
    v22 = [v21 ic_compactMap:&stru_100646588];
    [(ICWindowStateArchive *)v3 setCurrentTagIdentifiers:v22];
    goto LABEL_20;
  }

  v24 = [(ICViewControllerManager *)self selectedContainerItemID];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v26 = [(ICViewControllerManager *)self selectedContainerItemID];
    v11 = ICCheckedDynamicCast();

    v27 = [(ICSelectionStateModel *)v11 type];
    [(ICWindowStateArchive *)v3 setCurrentVirtualSmartFolderType:v27];

    v21 = [(ICSelectionStateModel *)v11 accountObjectID];
    v22 = [v21 URIRepresentation];
    [(ICWindowStateArchive *)v3 setCurrentVirtualSmartFolderAccountObjectIDURL:v22];
    goto LABEL_20;
  }

  v48 = [(ICViewControllerManager *)self selectedContainerObjectIDs];

  if (v48)
  {
    v11 = [(ICViewControllerManager *)self selectedContainerObjectIDs];
    v21 = [(ICSelectionStateModel *)v11 ic_map:&stru_1006465A8];
    [(ICWindowStateArchive *)v3 setCurrentContainerObjectIDURLs:v21];
    goto LABEL_21;
  }

LABEL_22:
  v28 = +[NSDate date];
  [(ICWindowStateArchive *)v3 setCurrentNoteLastViewedDate:v28];

  v29 = [(ICViewControllerManager *)self visibleObjectIDsForContainerObjectID];
  v30 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v29 count]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v31 = v29;
  v32 = [v31 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v54;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v54 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v53 + 1) + 8 * i);
        v37 = [v31 objectForKeyedSubscript:{v36, v53}];
        v38 = [v37 firstObject];

        v39 = [v38 URIRepresentation];
        v40 = [v36 URIRepresentation];
        [v30 setObject:v39 forKeyedSubscript:v40];
      }

      v33 = [v31 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v33);
  }

  [(ICWindowStateArchive *)v3 setCurrentFirstVisibleObjectIDURLForContainerObjectIDURL:v30];
  [(ICWindowStateArchive *)v3 setIsPrimaryContentVisible:[(ICViewControllerManager *)self isPrimaryContentVisible]];
  [(ICWindowStateArchive *)v3 setIsSupplementaryContentVisible:[(ICViewControllerManager *)self isSupplementaryContentVisible]];
  [(ICWindowStateArchive *)v3 setIsTrailingContentVisible:[(ICViewControllerManager *)self isTrailingContentVisible]];
  if ([(ICViewControllerManager *)self isTrailingContentVisible])
  {
    v41 = [(ICViewControllerManager *)self mainSplitViewController];
    [v41 preferredPrimaryColumnWidth];
    v42 = [NSNumber numberWithDouble:?];
    [(ICWindowStateArchive *)v3 setMainSplitViewPrimaryColumnWidth:v42];

    v43 = [(ICViewControllerManager *)self mainSplitViewController];
    v44 = [v43 style];

    if (v44 == 2)
    {
      v45 = [(ICViewControllerManager *)self mainSplitViewController];
      [v45 preferredSupplementaryColumnWidth];
      v46 = [NSNumber numberWithDouble:?];
      [(ICWindowStateArchive *)v3 setMainSplitViewSupplementaryColumnWidth:v46];
    }
  }

  return v3;
}

- (void)updateCurrentNoteLastViewedMetadata:(id)a3
{
  v4 = a3;
  if ([v4 ic_isEntityOfClass:objc_opt_class()])
  {
    v5 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v6 = [v5 ic_existingObjectWithID:v4];

    v7 = [v6 updateLastViewedTimestampWithCurrentTimestamp];
    v8 = [v6 recordID];
    if (v8)
    {
      v9 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005ABCC;
      block[3] = &unk_100645E30;
      v12 = v8;
      dispatch_async(v9, block);
    }

    if ([(ICViewControllerManager *)self isSearchActive])
    {
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = +[NSDate date];
      [v6 setLastOpenedDate:v10];
    }

    [v6 saveAfterDelay];
LABEL_9:
  }
}

- (void)deleteEmptyNoteIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self mainSplitViewController];
  v6 = [v5 transitionCoordinator];
  if (v6)
  {
  }

  else
  {
    v7 = [(ICViewControllerManager *)self selectedNewNoteShortcutItem];

    if (v4)
    {
      if (!v7)
      {
        v8 = [(ICViewControllerManager *)self selectedSearchResult];

        if (!v8)
        {
          if ([v4 ic_isEntityOfClass:objc_opt_class()])
          {
            v9 = [(ICViewControllerManager *)self modernManagedObjectContext];
            v14[0] = _NSConcreteStackBlock;
            v14[1] = 3221225472;
            v14[2] = sub_10005ADA4;
            v14[3] = &unk_100645BA0;
            v14[4] = self;
            v15 = v4;
            [v9 performBlock:v14];

            v10 = v15;
          }

          else
          {
            if (![v4 ic_isEntityOfClass:objc_opt_class()])
            {
              goto LABEL_3;
            }

            v11 = [(ICViewControllerManager *)self legacyManagedObjectContext];
            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_10005AE40;
            v12[3] = &unk_100645BA0;
            v12[4] = self;
            v13 = v4;
            [v11 performBlock:v12];

            v10 = v13;
          }
        }
      }
    }
  }

LABEL_3:
}

- (void)ensureSearchVisibleWhenApplyingArchive
{
  if ([(ICViewControllerManager *)self isSplitViewExpanded])
  {

    [(ICViewControllerManager *)self ensureSearchVisible];
  }

  else
  {
    v3 = [(ICViewControllerManager *)self compactNavigationController];
    v4 = [v3 topViewController];
    v5 = [(ICViewControllerManager *)self folderListViewController];

    if (v4 != v5)
    {
      v8 = [(ICViewControllerManager *)self compactNavigationController];
      v6 = [(ICViewControllerManager *)self folderListViewController];
      v7 = [v8 popToViewController:v6 animated:0];
    }
  }
}

- (void)ensureSearchVisible
{
  if ([(ICViewControllerManager *)self isSplitViewExpanded])
  {
    if (![(ICViewControllerManager *)self noteContainerViewMode])
    {
      v12 = [(ICViewControllerManager *)self mainSplitViewController];
      [v12 ic_showColumn:1 animated:0];
      goto LABEL_11;
    }

    if ([(ICViewControllerManager *)self noteContainerViewMode]!= 1)
    {
      return;
    }

    v3 = [(ICViewControllerManager *)self secondaryNavigationController];
    v4 = [v3 topViewController];
    v5 = [(ICViewControllerManager *)self currentSearchBarViewController];

    if (v4 == v5)
    {
      return;
    }

    v6 = [(ICViewControllerManager *)self secondaryNavigationController];
  }

  else
  {
    v7 = [(ICViewControllerManager *)self compactNavigationController];
    v8 = [v7 topViewController];
    v9 = [(ICViewControllerManager *)self currentSearchBarViewController];

    if (v8 == v9)
    {
      return;
    }

    v6 = [(ICViewControllerManager *)self compactNavigationController];
  }

  v12 = v6;
  v10 = [(ICViewControllerManager *)self currentSearchBarViewController];
  v11 = [v12 popToViewController:v10 animated:0];

LABEL_11:
}

- (BOOL)isSelectionAppropriateForObjectID:(id)a3
{
  v4 = a3;
  v5 = +[ICNoteContext sharedContext];
  v6 = [v5 workerManagedObjectContext];

  v7 = +[NoteContext sharedContext];
  v8 = [v7 managedObjectContext];

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v10 = [(ICViewControllerManager *)self tagSelection];
    v11 = [v10 copyWithManagedObjectContext:v6];

    v12 = [[ICFolderListSelectionValidator alloc] initWithModernContext:v6 htmlContext:v8];
    v13 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
    v14 = [(ICFolderListSelectionValidator *)v12 isSelectionAppropriateForObjectID:v4 selectedContainerIdentifiers:v13 tagSelection:v11];
  }

  return v14;
}

- (BOOL)canPerformAddNote
{
  v3 = [(ICViewControllerManager *)self keyboardHandler];
  v4 = [v3 globalKeyCommandsInhibited];

  if (v4)
  {
    return 0;
  }

  v5 = +[ICQuickNoteSessionManager sharedManager];
  v6 = [v5 isSecureScreenShowing];

  if (v6)
  {
    v7 = +[ICQuickNoteSessionManager sharedManager];
    v8 = [v7 noteEditorViewController];
    v9 = v8 != 0;
    goto LABEL_4;
  }

  v10 = [(ICViewControllerManager *)self window];
  v11 = [v10 ic_topmostPresentedViewController];

  if (v11)
  {
    return 0;
  }

  v7 = [(ICViewControllerManager *)self folderListViewController];
  if ([v7 ic_isViewVisible])
  {
    v9 = 1;
    goto LABEL_5;
  }

  v8 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  if (([v8 ic_isViewVisible] & 1) != 0 || -[ICViewControllerManager isNoteEditorVisible](self, "isNoteEditorVisible"))
  {
    v9 = 1;
  }

  else
  {
    v9 = [(ICViewControllerManager *)self isInHTMLEditorMode];
  }

LABEL_4:

LABEL_5:
  return v9;
}

- (BOOL)canPerformAddFolder
{
  v3 = [(ICViewControllerManager *)self keyboardHandler];
  v4 = [v3 globalKeyCommandsInhibited];

  if (v4)
  {
    return 0;
  }

  v6 = [(ICViewControllerManager *)self window];
  v7 = [v6 ic_topmostPresentedViewController];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    v8 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
    if ([v8 ic_isViewVisible])
    {
      v5 = 1;
    }

    else
    {
      v9 = [(ICViewControllerManager *)self folderListViewController];
      v5 = [v9 ic_isViewVisible];
    }
  }

  return v5;
}

- (BOOL)canPerformToggleSearch
{
  v3 = [(ICViewControllerManager *)self keyboardHandler];
  if (([v3 globalKeyCommandsInhibited] & 1) == 0)
  {
    v5 = +[ICQuickNoteSessionManager sharedManager];
    if (([v5 isSecureScreenShowing] & 1) != 0 || -[ICViewControllerManager behavior](self, "behavior") == 2)
    {
      v4 = 0;
    }

    else
    {
      v7 = [(ICViewControllerManager *)self isAuxiliary];

      if (v7)
      {
        return 0;
      }

      v3 = [(ICViewControllerManager *)self searchController];
      if ([v3 isFirstResponder] & 1) != 0 || (objc_msgSend(v3, "searchBar"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isFirstResponder"), v8, (v9))
      {
        v4 = 1;
        goto LABEL_7;
      }

      v10 = [(ICViewControllerManager *)self window];
      v11 = [v10 ic_topmostPresentedViewController];

      if (v11)
      {
        goto LABEL_2;
      }

      v5 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
      v12 = [v5 dataSource];
      v4 = v12 != 0;
    }

    goto LABEL_7;
  }

LABEL_2:
  v4 = 0;
LABEL_7:

  return v4;
}

- (BOOL)canPerformFindInNote
{
  v3 = [(ICViewControllerManager *)self keyboardHandler];
  if ([v3 globalKeyCommandsInhibited])
  {
    goto LABEL_4;
  }

  v4 = [(ICViewControllerManager *)self window];
  v5 = [v4 ic_topmostPresentedViewController];
  if (v5)
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v8 = [(ICViewControllerManager *)self behavior];

  if (v8 == 2)
  {
    return 0;
  }

  v3 = [(ICViewControllerManager *)self activeEditorController];
  v6 = [v3 canPerformAction:"performFindInNote:" withSender:self];
LABEL_5:

  return v6;
}

- (BOOL)canPerformReplaceInNote
{
  v3 = [(ICViewControllerManager *)self canPerformFindInNote];
  if (v3)
  {
    if ([(ICViewControllerManager *)self isInHTMLEditorMode])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = [(ICViewControllerManager *)self noteEditorViewController];
      v5 = [v4 note];
      v6 = [v5 isEditable];

      LOBYTE(v3) = v6;
    }
  }

  return v3;
}

- (BOOL)canPerformCmd1
{
  if (![(ICViewControllerManager *)self canPerformCmd3])
  {
    return 0;
  }

  v3 = [(ICViewControllerManager *)self selectedContainerItemID];
  v4 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:v3]== -1;

  return v4;
}

- (BOOL)canPerformCmd3
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  if (([v3 isEditingOnSystemPaper] & 1) != 0 || -[ICViewControllerManager isAuxiliary](self, "isAuxiliary") || -[ICViewControllerManager isInHTMLEditorMode](self, "isInHTMLEditorMode"))
  {
    goto LABEL_6;
  }

  v4 = +[ICQuickNoteSessionManager sharedManager];
  if ([v4 isSecureScreenShowing])
  {

LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v7 = [(ICViewControllerManager *)self currentAttachmentPresenter];

  if (v7)
  {
    return 0;
  }

  if ([(ICViewControllerManager *)self noteContainerViewMode]== 1)
  {
    v3 = [(ICViewControllerManager *)self secondaryNavigationController];
    v8 = [v3 topViewController];
    v9 = objc_opt_class();
    if ([v9 isEqual:objc_opt_class()])
    {
      v5 = 1;
    }

    else
    {
      v10 = [(ICViewControllerManager *)self compactNavigationController];
      v11 = [v10 topViewController];
      v12 = objc_opt_class();
      v5 = [v12 isEqual:objc_opt_class()];
    }
  }

  else
  {
    v3 = [(ICViewControllerManager *)self mainSplitViewController];
    v5 = [v3 displayMode] != 1;
  }

LABEL_7:

  return v5;
}

- (BOOL)canPerformToggleEditorCallouts
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 note];
  v4 = [v3 isSharedViaICloud];

  return v4;
}

- (BOOL)canPerformToggleNoteActivity
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 note];
  v4 = [v3 isSharedViaICloud];

  return v4;
}

- (BOOL)canPerformToggleFolderActivity
{
  objc_opt_class();
  v3 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v4 = [v3 noteContainer];
  v5 = ICDynamicCast();

  LOBYTE(v3) = [v5 isSharedViaICloud];
  return v3;
}

- (BOOL)canPerformReturnKey
{
  v3 = [(ICViewControllerManager *)self keyboardHandler];
  if ([v3 globalKeyCommandsInhibited])
  {
    v4 = 0;
LABEL_14:

    return v4;
  }

  v5 = [(ICViewControllerManager *)self window];
  v6 = [v5 ic_topmostPresentedViewController];
  if (v6)
  {
    v7 = v6;
LABEL_12:
    v4 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v7 = [(ICViewControllerManager *)self activeEditorController];
  if (![v7 ic_isViewVisible])
  {
    goto LABEL_12;
  }

  v8 = [(ICViewControllerManager *)self activeEditorController];
  if ([v8 isEditing])
  {
LABEL_11:

    goto LABEL_12;
  }

  v9 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  if (![v9 ic_isFirstResponder])
  {

    goto LABEL_11;
  }

  v10 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v11 = [v10 isEditing];

  if ((v11 & 1) == 0)
  {
    if ([(ICViewControllerManager *)self isInHTMLEditorMode])
    {
      return 1;
    }

    objc_opt_class();
    v3 = [(ICViewControllerManager *)self activeEditorController];
    v5 = ICDynamicCast();
    v7 = [v5 note];
    v4 = [v7 isEditable];
    goto LABEL_13;
  }

  return 0;
}

- (BOOL)canPerformAddLink
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  if ([v3 isEditing])
  {
    v4 = [(ICViewControllerManager *)self noteEditorViewController];
    v5 = [v4 isEditingOnSecureScreen] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)canPerformRecordAudio
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 canRecordAudio];

  return v3;
}

- (BOOL)canPerformRenameAttachment
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 canRenameAttachmentForSelection];

  return v3;
}

- (BOOL)canPerformGotoPreviousNote
{
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    return 0;
  }

  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  v4 = [v3 isEditingOnSecureScreen];

  if (v4)
  {
    return 0;
  }

  v6 = [(ICViewControllerManager *)self selectionStateController];
  v7 = [v6 canNavigateBackwards];

  return v7;
}

- (BOOL)canPerformGotoNextNote
{
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    return 0;
  }

  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  v4 = [v3 isEditingOnSecureScreen];

  if (v4)
  {
    return 0;
  }

  v6 = [(ICViewControllerManager *)self selectionStateController];
  v7 = [v6 canNavigateForwards];

  return v7;
}

- (BOOL)canPerformAttachFile
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 isEditing];

  return v3;
}

- (BOOL)canPerformCmdReturnKey
{
  v3 = [(ICViewControllerManager *)self keyboardHandler];
  if ([v3 globalKeyCommandsInhibited])
  {
    v4 = 0;
  }

  else
  {
    v5 = +[ICQuickNoteSessionManager sharedManager];
    if ([v5 isSecureScreenShowing])
    {
      v4 = 0;
    }

    else
    {
      v7 = [(ICViewControllerManager *)self window];
      v8 = [v7 ic_topmostPresentedViewController];

      if (v8)
      {
        return 0;
      }

      v3 = [(ICViewControllerManager *)self activeEditorController];
      v9 = [(ICViewControllerManager *)self window];
      v5 = [v9 firstResponder];

      if ([v3 isFirstResponder])
      {
        v4 = 1;
      }

      else
      {
        v10 = [v3 isEditing];
        if (v5)
        {
          v4 = v10;
        }

        else
        {
          v4 = 1;
        }
      }
    }
  }

  return v4;
}

- (BOOL)canPerformEnclosingFolderKey
{
  v3 = [(ICViewControllerManager *)self systemPaperViewController];

  if (v3)
  {
    return 0;
  }

  if ([(ICViewControllerManager *)self hasCompactWidth])
  {
    [(ICViewControllerManager *)self compactNavigationController];
  }

  else
  {
    [(ICViewControllerManager *)self secondaryNavigationController];
  }
  v5 = ;
  v6 = [v5 viewControllers];
  v4 = [v6 count] > 1;

  return v4;
}

- (BOOL)canPerformDeleteKey
{
  if (![(ICViewControllerManager *)self isSearchActive])
  {
    v7 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
    v8 = [v7 hasDeletableNoteCell];

    if (!v8)
    {
      return 0;
    }

LABEL_5:
    v9 = [(ICViewControllerManager *)self window];
    v10 = [v9 rootViewController];
    v11 = [v10 presentedViewController];
    v6 = v11 == 0;

    return v6;
  }

  v3 = [(ICViewControllerManager *)self searchController];
  v4 = [v3 searchBar];
  v5 = [v4 isFirstResponder];

  if (v5)
  {
    goto LABEL_5;
  }

  return 0;
}

- (BOOL)canPerformShowInNote
{
  v2 = [(ICViewControllerManager *)self currentAttachmentPresenter];
  v3 = v2 != 0;

  return v3;
}

- (void)performShowInNote:(id)a3
{
  v4 = [(ICViewControllerManager *)self currentAttachmentPresenter];
  v7 = [v4 displayedAttachment];

  v5 = [v7 objectID];
  [(ICViewControllerManager *)self selectAttachmentWithObjectID:v5 animated:1];

  v6 = [(ICViewControllerManager *)self eventReporter];
  [v6 submitAttachmentBrowserActionEventForType:3];
}

- (void)performAddNote:(id)a3
{
  v6 = a3;
  if ([(ICViewControllerManager *)self behavior]== 2)
  {
    v4 = 18;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(ICViewControllerManager *)self showNewNoteWithApproach:v4 sender:v6 animated:1];
}

- (void)performAddFolder:(id)a3
{
  objc_opt_class();
  v4 = [(ICViewControllerManager *)self window];
  v5 = [v4 ic_topmostPresentedViewController];
  v16 = ICDynamicCast();

  if (v16)
  {
    v6 = [v16 moveViewController];
    [v6 promptToAddFolderIn:0];
    goto LABEL_14;
  }

  v7 = [(ICViewControllerManager *)self folderListViewController];
  if ([v7 ic_isViewVisible])
  {
    [(ICViewControllerManager *)self folderListViewController];
  }

  else
  {
    [(ICViewControllerManager *)self currentNoteBrowseViewController];
  }
  v6 = ;

  if (!v6)
  {
    [ICAssert handleFailedAssertWithCondition:"((presentingViewController) != nil)" functionName:"[ICViewControllerManager performAddFolder:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "presentingViewController"];
  }

  objc_opt_class();
  v8 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v9 = [v8 noteContainer];
  v10 = ICDynamicCast();

  v11 = [(ICViewControllerManager *)self folderListViewController];
  if ([v11 ic_isViewVisible])
  {

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v12 = [v10 canAddSubfolder];

  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v10;
LABEL_13:
  v14 = [[ICFolderCreationController alloc] initWithViewController:v6 noteContainer:v13 creationApproach:1];
  [(ICViewControllerManager *)self setFolderCreationController:v14];

  v15 = [(ICViewControllerManager *)self folderCreationController];
  [v15 promptToAddFolderAllowingSmartFolder:1 showFilters:0 withCompletionHandler:0];

LABEL_14:
}

- (void)performToggleSearch:(id)a3
{
  [(ICViewControllerManager *)self ensureSearchVisible];
  v4 = [(ICViewControllerManager *)self mainSplitViewController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005C3F0;
  v5[3] = &unk_100645E30;
  v5[4] = self;
  [v4 ic_performBlockAfterActiveTransition:v5];
}

- (BOOL)canPerformPrintNote
{
  v5 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
  v6 = [v5 note];
  if (!v6)
  {
    v2 = [(ICViewControllerManager *)self noteEditorViewController];
    v3 = [v2 note];
    if (!v3 || [(ICViewControllerManager *)self behavior]== 2)
    {
      LOBYTE(v7) = 0;
      goto LABEL_8;
    }

LABEL_7:
    v8 = [(ICViewControllerManager *)self noteEditorViewController];
    v9 = [v8 note];
    v7 = [v9 isPasswordProtectedAndLocked] ^ 1;

    if (v6)
    {
      goto LABEL_9;
    }

LABEL_8:

    goto LABEL_9;
  }

  if ([(ICViewControllerManager *)self behavior]!= 2)
  {
    goto LABEL_7;
  }

  LOBYTE(v7) = 0;
LABEL_9:

  return v7;
}

- (void)performPrintNote:(id)a3
{
  v4 = [(ICViewControllerManager *)self noteEditorViewController];
  v8 = [v4 note];

  v5 = [ICPrintNoteActivity alloc];
  v6 = [(ICViewControllerManager *)self noteEditorViewController];
  v7 = [(ICPrintNoteActivity *)v5 initWithNote:v8 presentingViewController:v6];

  [(ICPrintNoteActivity *)v7 performActivityWithCompletion:0];
}

- (BOOL)canPerformScanDocument
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  v4 = [v3 note];
  if ([v4 isPasswordProtectedAndLocked])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(ICViewControllerManager *)self noteEditorViewController];
    v7 = [v6 note];
    if ([v7 isEditable])
    {
      v5 = +[ICDeviceSupport isCameraAvailable];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)performScanDocument:(id)a3
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  [v3 showDocumentCamera];
}

- (void)showAccountsSettings:(id)a3
{
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.InternetAccounts?internetAccountsApplicationTarget=com.apple.mobilenotes"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)performCmd1:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005C7F4;
  v3[3] = &unk_100645E30;
  v3[4] = self;
  [(ICViewControllerManager *)self dismissAttachmentBrowserIfNecessaryAndPerform:v3];
}

- (void)performCmd2:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005C8B0;
  v3[3] = &unk_100645E30;
  v3[4] = self;
  [(ICViewControllerManager *)self dismissAttachmentBrowserIfNecessaryAndPerform:v3];
}

- (void)dismissAttachmentBrowserIfNecessaryAndPerform:(id)a3
{
  v5 = a3;
  if ([(ICViewControllerManager *)self isAttachmentBrowserVisible])
  {
    v4 = [(ICViewControllerManager *)self currentAttachmentBrowserViewController];
    [v4 dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    v5[2]();
  }
}

- (void)performCmd3:(id)a3
{
  v4 = a3;
  if ([(ICViewControllerManager *)self isAttachmentBrowserVisible])
  {
    [(ICViewControllerManager *)self currentAttachmentBrowserViewController];
  }

  else
  {
    [(ICViewControllerManager *)self currentNoteBrowseViewController];
  }
  v5 = ;
  [v5 performCmd3:v4];
}

- (void)performToggleEditorCallouts:(id)a3
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  v4 = [v3 attributionSidebarController];

  if ([v4 attributionSidebarVisibility])
  {
    [v4 hideSidebarAnimated:1];
  }

  else
  {
    [v4 showSidebarAnimated:1];
  }
}

- (void)performToggleNoteActivity:(id)a3
{
  v4 = [(ICViewControllerManager *)self noteEditorViewController];
  v6 = [v4 note];

  if ([(ICViewControllerManager *)self activityStreamViewMode])
  {
    [(ICViewControllerManager *)self hideActivityStreamWithCompletion:0];
  }

  else
  {
    v5 = [v6 objectID];
    [(ICViewControllerManager *)self showActivityStreamForObjectWithObjectID:v5];
  }
}

- (void)performToggleFolderActivity:(id)a3
{
  objc_opt_class();
  v4 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v5 = [v4 noteContainer];
  v8 = ICDynamicCast();

  v6 = v8;
  if (v8)
  {
    if ([(ICViewControllerManager *)self activityStreamViewMode])
    {
      [(ICViewControllerManager *)self hideActivityStreamWithCompletion:0];
    }

    else
    {
      v7 = [v8 objectID];
      [(ICViewControllerManager *)self showActivityStreamForObjectWithObjectID:v7];
    }

    v6 = v8;
  }
}

- (id)cmd3Title
{
  v2 = [(ICViewControllerManager *)self isAttachmentBrowserVisible];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"Hide Attachments Browser";
  }

  else
  {
    v5 = @"Show Attachments Browser";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_100661CF0 table:0];

  return v6;
}

- (id)toggleEditorCalloutsTitle
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 attributionSidebarController];
  v4 = [v3 attributionSidebarVisibility];

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = @"Hide Highlights";
  }

  else
  {
    v7 = @"Show Highlights";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_100661CF0 table:0];

  return v8;
}

- (id)toggleNoteActivityTitle
{
  objc_opt_class();
  v3 = [(ICViewControllerManager *)self activityStreamNavigationController];
  v4 = [v3 object];
  v5 = ICDynamicCast();

  v6 = [(ICViewControllerManager *)self activityStreamNavigationController];
  if (([v6 ic_isViewVisible] & 1) == 0)
  {
    v7 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
    if (([v7 ic_isViewVisible] & 1) == 0)
    {

      goto LABEL_7;
    }
  }

  if (v5)
  {
    v8 = @"Hide Note Activity";
    goto LABEL_8;
  }

LABEL_7:
  v8 = @"Show Note Activity";
LABEL_8:
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:v8 value:&stru_100661CF0 table:0];

  return v10;
}

- (id)toggleFolderActivityTitle
{
  objc_opt_class();
  v3 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
  v4 = [v3 object];
  v5 = ICDynamicCast();

  v6 = [(ICViewControllerManager *)self activityStreamViewMode];
  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = @"Show Folder Activity";
  }

  else
  {
    v10 = @"Hide Folder Activity";
  }

  v11 = [v7 localizedStringForKey:v10 value:&stru_100661CF0 table:0];

  return v11;
}

- (id)toggleLockNoteTitle
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 note];
  v4 = [v3 isPasswordProtected];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = @"Remove Lock";
  }

  else
  {
    v7 = @"Lock Note";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_100661CF0 table:0];

  return v8;
}

- (id)toggleLockNoteIconString
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 note];
  if ([v3 isPasswordProtected])
  {
    v4 = @"lock.slash";
  }

  else
  {
    v4 = @"lock";
  }

  v5 = v4;

  return v4;
}

- (void)performReturnKey:(id)a3
{
  [(ICViewControllerManager *)self dismissOverlayContent];
  v4 = [(ICViewControllerManager *)self noteEditorViewController];
  [v4 becomeFirstResponder];

  v5 = [(ICViewControllerManager *)self noteEditorViewController];
  [v5 setEditing:1 animated:1];
}

- (void)performCmdReturnKey:(id)a3
{
  v4 = [(ICViewControllerManager *)self window];
  v5 = [v4 firstResponder];

  if ([(ICViewControllerManager *)self isSearchActive])
  {
    [(ICViewControllerManager *)self searchController];
  }

  else
  {
    [(ICViewControllerManager *)self currentNoteBrowseViewController];
  }
  v6 = ;
  v7 = [(ICViewControllerManager *)self activeEditorController];
  v8 = [v7 isEditing];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005D280;
  v19[3] = &unk_100646080;
  v19[4] = self;
  v20 = v8;
  v9 = objc_retainBlock(v19);
  if (v5 != v6)
  {
    v10 = +[ICQuickNoteSessionManager sharedManager];
    v11 = [v10 isSecureScreenShowing];

    if ((v11 & 1) == 0)
    {
      v12 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
      v13 = [v12 isEditing];

      if (v13)
      {
        v14 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
        v15 = [v14 contentLayer];
        v16 = [v15 noteHTMLEditorView];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10005D368;
        v17[3] = &unk_1006465D0;
        v18 = v9;
        [v16 stopEditingWithCompletion:v17];
      }

      else
      {
        [v5 resignFirstResponder];
        (v9[2])(v9);
      }
    }
  }
}

- (void)performAddLinkKey:(id)a3
{
  v15 = a3;
  v4 = [(ICViewControllerManager *)self noteEditorViewController];
  v5 = [v4 isEditing];

  v6 = [(ICViewControllerManager *)self noteEditorViewController];
  v7 = [v6 ic_isViewVisible];

  if (v7)
  {
    if (v5)
    {
      if ([(ICViewControllerManager *)self canPerformAddLink])
      {
        v8 = [(ICViewControllerManager *)self noteEditorViewController];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = [(ICViewControllerManager *)self noteEditorViewController];
          v11 = [v10 auxiliaryResponder];

          if (v11)
          {
            objc_opt_class();
            v12 = [(ICViewControllerManager *)self noteEditorViewController];
            v13 = [v12 auxiliaryResponder];
            v14 = ICDynamicCast();
          }

          else
          {
            v14 = [(ICViewControllerManager *)self activeEditorController];
          }

          [v14 performSelector:"openLinkEditor:" withObject:v15];
        }
      }
    }
  }
}

- (void)performRecordAudio:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self noteEditorViewController];
  [v5 showInsertAudio:v4];
}

- (void)performRenameAttachment:(id)a3
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  [v3 renameAttachment];
}

- (void)performAttachFile:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self noteEditorViewController];
  [v5 attachFile:v4];
}

- (void)performGotoPreviousNote:(id)a3
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v4 = [(ICViewControllerManager *)self selectionStateController];
    [v4 navigateBackwards];
  }
}

- (void)performGotoNextNote:(id)a3
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v4 = [(ICViewControllerManager *)self selectionStateController];
    [v4 navigateForwards];
  }
}

- (void)performFindInNote:(id)a3
{
  v5 = a3;
  v4 = [(ICViewControllerManager *)self activeEditorController];
  if ([(ICViewControllerManager *)self canPerformFindInNote]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 performSelector:"performFindInNote:" withObject:v5];
  }
}

- (void)performReplaceInNote:(id)a3
{
  v7 = a3;
  v4 = [(ICViewControllerManager *)self activeEditorController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICViewControllerManager *)self activeEditorController];
    [v6 performSelector:"performReplaceInNote:" withObject:v7];
  }
}

- (void)performEnclosingFolderKey:(id)a3
{
  if ([(ICViewControllerManager *)self hasCompactWidth])
  {
    [(ICViewControllerManager *)self compactNavigationController];
  }

  else
  {
    [(ICViewControllerManager *)self secondaryNavigationController];
  }
  v7 = ;
  v4 = [v7 viewControllers];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v6 = [v7 popViewControllerAnimated:1];
  }
}

- (void)performDeleteKey:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  [v5 performDeleteKey:v4];
}

- (void)performDeleteQuickNoteKey:(id)a3
{
  v3 = [(ICViewControllerManager *)self systemPaperViewController];
  [v3 deleteCurrentNote];
}

- (BOOL)canPerformSystemPaperNavigateLeft
{
  v2 = [(ICViewControllerManager *)self systemPaperViewController];
  v3 = [v2 canSwipeInDirection:1];

  return v3;
}

- (void)systemPaperNavigateLeft:(id)a3
{
  v3 = [(ICViewControllerManager *)self systemPaperViewController];
  [v3 synthesizeSwipeForDirection:1];
}

- (BOOL)canPerformSystemPaperNavigateRight
{
  v2 = [(ICViewControllerManager *)self systemPaperViewController];
  v3 = [v2 canSwipeInDirection:0];

  return v3;
}

- (void)systemPaperNavigateRight:(id)a3
{
  v3 = [(ICViewControllerManager *)self systemPaperViewController];
  [v3 synthesizeSwipeForDirection:0];
}

- (BOOL)canPerformSystemPaperShowInNotes
{
  v2 = [(ICViewControllerManager *)self systemPaperViewController];
  v3 = [v2 currentNote];
  v4 = v3 != 0;

  return v4;
}

- (void)systemPaperShowInNotes:(id)a3
{
  v3 = [(ICViewControllerManager *)self systemPaperViewController];
  [v3 backToNotesWithKeyboard];
}

- (BOOL)canPerformExpandSection
{
  IsCollapsibleSectionsEnabled = ICInternalSettingsIsCollapsibleSectionsEnabled();
  if (IsCollapsibleSectionsEnabled)
  {
    v4 = [(ICViewControllerManager *)self textContentStorage];
    v5 = [(ICViewControllerManager *)self noteEditorViewController];
    v6 = [v5 textView];
    v7 = [v6 selectedRange];
    v9 = [v4 canExpandSectionsInRange:{v7, v8}];

    LOBYTE(IsCollapsibleSectionsEnabled) = v9;
  }

  return IsCollapsibleSectionsEnabled;
}

- (BOOL)canPerformExpandAllSections
{
  IsCollapsibleSectionsEnabled = ICInternalSettingsIsCollapsibleSectionsEnabled();
  if (IsCollapsibleSectionsEnabled)
  {
    v4 = [(ICViewControllerManager *)self textContentStorage];
    v5 = [(ICViewControllerManager *)self textContentStorage];
    v6 = [v5 textStorage];
    v7 = [v6 ic_range];
    v9 = [v4 canExpandSectionsInRange:{v7, v8}];

    LOBYTE(IsCollapsibleSectionsEnabled) = v9;
  }

  return IsCollapsibleSectionsEnabled;
}

- (void)performExpandAllSections:(id)a3
{
  if (ICInternalSettingsIsCollapsibleSectionsEnabled())
  {
    v4 = [(ICViewControllerManager *)self textContentStorage];
    [v4 expandAllSections];
  }
}

- (BOOL)canPerformCollapseSection
{
  IsCollapsibleSectionsEnabled = ICInternalSettingsIsCollapsibleSectionsEnabled();
  if (IsCollapsibleSectionsEnabled)
  {
    v4 = [(ICViewControllerManager *)self textContentStorage];
    v5 = [(ICViewControllerManager *)self noteEditorViewController];
    v6 = [v5 textView];
    v7 = [v6 selectedRange];
    v9 = [v4 canCollapseSectionsInRange:{v7, v8}];

    LOBYTE(IsCollapsibleSectionsEnabled) = v9;
  }

  return IsCollapsibleSectionsEnabled;
}

- (BOOL)canPerformCollapseAllSections
{
  IsCollapsibleSectionsEnabled = ICInternalSettingsIsCollapsibleSectionsEnabled();
  if (IsCollapsibleSectionsEnabled)
  {
    v4 = [(ICViewControllerManager *)self textContentStorage];
    v5 = [(ICViewControllerManager *)self textContentStorage];
    v6 = [v5 textStorage];
    v7 = [v6 ic_range];
    v9 = [v4 canCollapseSectionsInRange:{v7, v8}];

    LOBYTE(IsCollapsibleSectionsEnabled) = v9;
  }

  return IsCollapsibleSectionsEnabled;
}

- (void)performCollapseAllSections:(id)a3
{
  if (ICInternalSettingsIsCollapsibleSectionsEnabled())
  {
    v4 = [(ICViewControllerManager *)self textContentStorage];
    [v4 collapseAllSections];
  }
}

- (void)setExpandedForSectionsInSelectedRange:(BOOL)a3
{
  v3 = a3;
  if (ICInternalSettingsIsCollapsibleSectionsEnabled())
  {
    objc_opt_class();
    v5 = [(ICViewControllerManager *)self noteEditorViewController];
    v6 = [v5 textView];
    v13 = ICDynamicCast();

    v7 = [(ICViewControllerManager *)self textContentStorage];
    v8 = [v13 selectedRange];
    [v7 setExpanded:v3 forSectionsInRange:{v8, v9}];

    v10 = [v13 textLayoutManager];
    v11 = [v13 textLayoutManager];
    v12 = [v11 documentRange];
    [v10 invalidateLayoutForRange:v12];
  }
}

- (BOOL)canPerformToggleBoldface
{
  v2 = [(ICViewControllerManager *)self activeEditorController];
  v3 = [v2 isEditing];

  return v3;
}

- (BOOL)canPerformToggleItalics
{
  v2 = [(ICViewControllerManager *)self activeEditorController];
  v3 = [v2 isEditing];

  return v3;
}

- (BOOL)canPerformToggleUnderline
{
  v2 = [(ICViewControllerManager *)self activeEditorController];
  v3 = [v2 isEditing];

  return v3;
}

- (BOOL)canPerformToggleStrikethrough
{
  v2 = [(ICViewControllerManager *)self activeEditorController];
  v3 = [v2 isEditing];

  return v3;
}

- (BOOL)canPerformToggleEmphasis
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  v4 = [v3 note];
  if (v4)
  {
    v5 = [(ICViewControllerManager *)self activeEditorController];
    v6 = [v5 isEditing];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canPerformShareNoteAction
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  v4 = [v3 view];
  v5 = [v4 window];
  if (v5)
  {
    v6 = [(ICViewControllerManager *)self noteEditorViewController];
    v7 = [v6 note];
    if (v7)
    {
      v8 = [(ICViewControllerManager *)self noteEditorViewController];
      v9 = [v8 note];
      v10 = [v9 isPasswordProtectedAndLocked] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)performShareAction:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self noteEditorViewController];
  [v5 shareButtonPressedWithSender:v4];
}

- (BOOL)canPerformShareFolderAction
{
  objc_opt_class();
  v3 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v4 = [v3 noteContainer];
  v5 = ICDynamicCast();

  LOBYTE(v3) = [v5 canBeSharedViaICloud];
  return v3;
}

- (void)performShareFolderAction:(id)a3
{
  objc_opt_class();
  v4 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v5 = [v4 noteContainer];
  v9 = ICDynamicCast();

  v6 = [ICCollaborationFolderActivity alloc];
  v7 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v8 = [(ICCollaborationFolderActivity *)v6 initWithFolder:v9 presentingViewController:v7 presentingBarButtonItem:0 presentingSourceView:0 presentingSourceRect:0 eventReporter:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];

  [(ICCollaborationFolderActivity *)v8 setForceShareSheet:1];
  [(ICCollaborationFolderActivity *)v8 performActivityWithCompletion:0];
}

- (void)performManageSharedFolderAction:(id)a3
{
  objc_opt_class();
  v4 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v5 = [v4 noteContainer];
  v9 = ICDynamicCast();

  v6 = [ICCollaborationFolderActivity alloc];
  v7 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v8 = [(ICCollaborationFolderActivity *)v6 initWithFolder:v9 presentingViewController:v7 presentingBarButtonItem:0 presentingSourceView:0 presentingSourceRect:0 eventReporter:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];

  [(ICCollaborationFolderActivity *)v8 setForceShareSheet:1];
  [(ICCollaborationFolderActivity *)v8 performActivityWithCompletion:0];
}

- (void)performSharedFolderAction:(id)a3
{
  objc_opt_class();
  v4 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v5 = [v4 noteContainer];
  v9 = ICDynamicCast();

  v6 = [ICCollaborationFolderActivity alloc];
  v7 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v8 = [(ICCollaborationFolderActivity *)v6 initWithFolder:v9 presentingViewController:v7 presentingBarButtonItem:0 presentingSourceView:0 presentingSourceRect:0 eventReporter:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];

  [(ICCollaborationFolderActivity *)v8 setForceShareSheet:0];
  [(ICCollaborationFolderActivity *)v8 performActivityWithCompletion:0];
}

- (BOOL)canPerformExportMarkdownAction
{
  v2 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v3 = [v2 selectedModernNotes];

  if (+[_TtC11MobileNotes14ICFeatureFlags markdownExportEnabled])
  {
    v4 = [v3 ic_containsObjectPassingTest:&stru_100646610];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canPerformImportMarkdownAction
{
  v2 = [(ICViewControllerManager *)self selectedContainerObjectIDs];
  v3 = [v2 lastObject];

  if (+[_TtC11MobileNotes14ICFeatureFlags markdownExportEnabled])
  {
    v4 = [v3 ic_isModernContainerType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)performImportMarkdownAction:(id)a3
{
  v4 = [(ICViewControllerManager *)self selectedModernAccount];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(ICViewControllerManager *)self selectedModernFolder];
    v5 = [v6 account];

    if (!v5)
    {
      return;
    }
  }

  v7 = [ICImportNotesController alloc];
  v8 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
  v9 = [(ICImportNotesController *)v7 initForPresentingInViewController:v8];
  [(ICViewControllerManager *)self setImportNotesController:v9];

  v10 = [(ICViewControllerManager *)self importNotesController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005E6B0;
  v11[3] = &unk_100646638;
  v11[4] = self;
  [v10 importIntoAccount:v5 completion:v11];
}

- (void)performExportMarkdownAction:(id)a3
{
  v4 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v11 = [v4 selectedModernNotes];

  v5 = [v11 ic_compactMap:&stru_100646678];
  v6 = [ICExportArchiveActivity alloc];
  v7 = [(ICViewControllerManager *)self activeEditorController];
  v8 = [(ICViewControllerManager *)self activeEditorController];
  v9 = [v8 view];
  v10 = [(ICExportArchiveActivity *)v6 initWithObjects:v5 presentingViewController:v7 presentingBarButtonItem:0 presentingSourceView:v9];

  [(ICExportArchiveActivity *)v10 setMarkdown:1];
  [(ICExportArchiveActivity *)v10 performActivityWithCompletion:&stru_1006466B8];
}

- (BOOL)canPerformPagesHandoffAction
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  v4 = [v3 note];

  if (v4)
  {
    v5 = [(ICViewControllerManager *)self noteEditorViewController];
    if ([v5 ic_isViewVisible])
    {
      v6 = [ICPagesHandoffManager canLaunchPagesForNote:v4];
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

  return v6;
}

- (void)performPagesHandoff:(id)a3
{
  v4 = [(ICViewControllerManager *)self noteEditorViewController];
  v8 = [v4 note];

  v5 = [ICPagesHandoffActivity alloc];
  v6 = [(ICViewControllerManager *)self activeEditorController];
  v7 = [(ICPagesHandoffActivity *)v5 initWithNote:v8 viewController:v6];

  [(ICPagesHandoffActivity *)v7 performActivity];
}

- (BOOL)canPerformLockAllNotesAction
{
  v2 = +[ICAuthenticationState sharedState];
  v3 = [v2 isAuthenticated];

  return v3;
}

- (BOOL)canPerformConvertToSmartFolderAction
{
  objc_opt_class();
  v3 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v4 = [v3 noteContainer];
  v5 = ICDynamicCast();

  if (v5)
  {
    v6 = [ICConvertToSmartFolderDecision canShowConvertToSmartFolder:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)performConvertToSmartFolderAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v6 = [v5 noteContainer];
  v10 = ICDynamicCast();

  v7 = [ICConvertToSmartFolderActivity alloc];
  v8 = [(ICViewControllerManager *)self activeEditorController];
  v9 = [(ICConvertToSmartFolderActivity *)v7 initWithFolder:v10 presentingViewController:v8 presentingBarButtonItem:0 sender:v4];

  [(ICConvertToSmartFolderActivity *)v9 performActivityWithCompletion:0];
}

- (BOOL)canPerformCreateSmartFolderFromSelectedTags
{
  v2 = [(ICViewControllerManager *)self tagSelection];
  v3 = v2 != 0;

  return v3;
}

- (void)performCreateSmartFolderFromSelectedTags:(id)a3
{
  v4 = [ICCreateSmartFolderActivity alloc];
  v5 = [(ICViewControllerManager *)self tagSelection];
  v6 = [(ICViewControllerManager *)self activeEditorController];
  v7 = [(ICCreateSmartFolderActivity *)v4 initWithTagSelection:v5 presentingViewController:v6 eventReporter:0];

  [(ICCreateSmartFolderActivity *)v7 performActivityWithCompletion:0];
}

- (BOOL)canPerformCreateSmartFolder
{
  v3 = [(ICViewControllerManager *)self keyboardHandler];
  v4 = [v3 globalKeyCommandsInhibited];

  if (v4)
  {
    return 0;
  }

  v6 = [(ICViewControllerManager *)self window];
  v7 = [v6 ic_topmostPresentedViewController];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    v8 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
    if ([v8 ic_isViewVisible])
    {
      v5 = 1;
    }

    else
    {
      v9 = [(ICViewControllerManager *)self folderListViewController];
      v5 = [v9 ic_isViewVisible];
    }
  }

  return v5;
}

- (void)performCreateSmartFolder:(id)a3
{
  v4 = [(ICViewControllerManager *)self folderListViewController];
  if ([v4 ic_isViewVisible])
  {
    [(ICViewControllerManager *)self folderListViewController];
  }

  else
  {
    [(ICViewControllerManager *)self currentNoteBrowseViewController];
  }
  v13 = ;

  if (!v13)
  {
    [ICAssert handleFailedAssertWithCondition:"((presentingViewController) != nil)" functionName:"[ICViewControllerManager performCreateSmartFolder:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "presentingViewController"];
  }

  objc_opt_class();
  v5 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v6 = [v5 noteContainer];
  v7 = ICDynamicCast();

  v8 = [(ICViewControllerManager *)self folderListViewController];
  if ([v8 ic_isViewVisible])
  {
  }

  else
  {
    v9 = [v7 canAddSubfolder];

    if (v9)
    {
      v10 = v7;
      goto LABEL_11;
    }
  }

  v10 = 0;
LABEL_11:
  v11 = [[ICFolderCreationController alloc] initWithViewController:v13 noteContainer:v10 creationApproach:1];
  [(ICViewControllerManager *)self setFolderCreationController:v11];

  v12 = [(ICViewControllerManager *)self folderCreationController];
  [v12 promptToAddFolderAllowingSmartFolder:1 showFilters:1 withCompletionHandler:0];
}

- (void)performToggleBoldface:(id)a3
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  [v3 toggleBoldface];
}

- (void)performToggleItalics:(id)a3
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  [v3 toggleItalics];
}

- (void)performToggleUnderline:(id)a3
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  [v3 toggleUnderline];
}

- (void)performToggleEmphasis:(id)a3
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  [v3 toggleEmphasis];
}

- (void)performToggleStrikethrough:(id)a3
{
  v3 = [(ICViewControllerManager *)self noteEditorViewController];
  [v3 toggleStrikethrough];
}

- (BOOL)canPerformUndo
{
  v3 = [(ICViewControllerManager *)self visibleViewsUndoManager];
  if ([v3 canUndo])
  {
    v4 = [(ICViewControllerManager *)self visibleViewsUndoManager];
    v5 = [v4 isUndoing] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(ICViewControllerManager *)self visibleViewsUndoManager];
  [v5 undo];
}

- (int64_t)toggleBoldfaceState
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 currentBIUSForStyleSelector];

  return v3 & 1;
}

- (int64_t)toggleItalicsState
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 currentBIUSForStyleSelector];

  return (v3 >> 1) & 1;
}

- (int64_t)toggleUnderlineState
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 currentBIUSForStyleSelector];

  return (v3 >> 2) & 1;
}

- (int64_t)toggleStrikethroughState
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 currentBIUSForStyleSelector];

  return (v3 >> 3) & 1;
}

- (int64_t)toggleEmphasisState
{
  v2 = [(ICViewControllerManager *)self noteEditorViewController];
  v3 = [v2 currentBIUSForStyleSelector];

  return (v3 >> 4) & 1;
}

- (void)addNoteFromAirDropDocument:(id)a3
{
  v4 = a3;
  v5 = [ICAirDropDocument documentAtURL:v4];
  if (v5)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005F39C;
    v12[3] = &unk_1006466E0;
    v12[4] = self;
    v6 = objc_retainBlock(v12);
    v7 = +[NotesApp sharedNotesApp];
    v8 = [v7 noteContext];

    if ([v5 hasDocumentForNote])
    {
      [ICNote createNoteForAirDropDocument:v5 legacyContext:v8 completion:v6];
    }

    else if ([v5 hasDocumentForLegacyNote])
    {
      v9 = objc_alloc_init(ICTextController);
      v10 = +[ICAttachmentPreviewGenerator sharedGenerator];
      v11 = [NoteObject newNoteForAirDropDocument:v5 context:v8 styler:v9 attachmentPreviewGenerator:v10];

      if (v11)
      {
        (v6[2])(v6, v11);
      }

      else
      {
        [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager addNoteFromAirDropDocument:]" simulateCrash:1 showAlert:0 format:@"No note created for AirDrop document %@", v5];
      }
    }

    else
    {
      [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager addNoteFromAirDropDocument:]" simulateCrash:1 showAlert:0 format:@"No data found for AirDrop document %@", v5];
    }
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"airDropDocument" functionName:"[ICViewControllerManager addNoteFromAirDropDocument:]" simulateCrash:1 showAlert:0 format:@"Failed to load AirDrop at url %@", v4];
  }
}

- (void)addNoteFromPlaintextFile:(id)a3
{
  v4 = a3;
  v48 = 0;
  v5 = [NSString stringWithContentsOfURL:v4 usedEncoding:0 error:&v48];
  v6 = v48;
  if (v5)
  {
    v45 = self;
  }

  else
  {
    v47 = v6;
    v5 = [NSString stringWithContentsOfURL:v4 encoding:4 error:&v47];
    v7 = v47;

    if (!v5)
    {
      [ICAssert handleFailedAssertWithCondition:"content != ((void*)0)" functionName:"[ICViewControllerManager addNoteFromPlaintextFile:]" simulateCrash:1 showAlert:0 format:@"Failed to load file content at url %@", v4];
      goto LABEL_16;
    }

    v45 = self;
    v6 = v7;
  }

  v8 = +[NotesApp sharedNotesApp];
  v9 = [v8 noteContext];
  v10 = [ICDefaultAccountUtilities defaultAccountWithHTMLNoteContext:v9];

  objc_opt_class();
  v11 = ICDynamicCast();
  objc_opt_class();
  v12 = ICDynamicCast();
  v13 = +[NSDate date];
  if (v11)
  {
    v14 = [v11 defaultFolder];
    v43 = v4;
    v15 = [ICNote newEmptyNoteInFolder:v14];

    [v15 setCreationDate:v13];
    [v15 setModificationDate:v13];
    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = +[ICTTParagraphStyle paragraphStyleNamed:](ICTTParagraphStyle, "paragraphStyleNamed:", +[ICTextStyle noteDefaultNamedStyle]);
    [v16 setObject:v17 forKey:ICTTAttributeNameParagraphStyle];

    v41 = v13;
    v18 = v10;
    v19 = v11;
    v20 = v6;
    v21 = v12;
    v22 = [v5 paragraphRangeForRange:{0, 0}];
    v24 = v23;
    v25 = [[NSMutableAttributedString alloc] initWithString:v5];
    [v25 setAttributes:v16 range:{v22, v24}];
    v26 = [v15 textStorage];
    [v26 appendAttributedString:v25];

    [v15 updateChangeCountWithReason:@"Created note from plaintext file"];
    v27 = +[ICNoteContext sharedContext];
    [v27 saveImmediately];
    [v27 setCurrentNote:v15];
    v28 = [v15 objectID];
    LOWORD(v40) = 257;
    [(ICViewControllerManager *)v45 selectNoteWithObjectID:v28 scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:1 animated:v40 ensurePresented:?];

    v12 = v21;
    v7 = v20;
    v11 = v19;
    v10 = v18;
    v13 = v41;
    v4 = v43;
  }

  else if (v12)
  {
    v44 = v4;
    v29 = +[NotesApp sharedNotesApp];
    v30 = [v29 noteContext];
    v31 = [v30 newlyAddedNote];

    [v31 setCreationDate:v13];
    [v31 setModificationDate:v13];
    v42 = v12;
    v32 = [v12 defaultStore];
    [v31 setStore:v32];

    v33 = ICNoteTitleFromPlainText();
    [v31 setTitle:v33];

    v34 = ICNoteHTMLFromPlainText();
    [v31 setContent:v34];

    v35 = +[NotesApp sharedNotesApp];
    v36 = [v35 noteContext];
    v46 = v6;
    v37 = [v36 save:&v46];
    v7 = v46;

    if ((v37 & 1) == 0)
    {
      v38 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1004D8B24();
      }
    }

    v39 = [v31 objectID];
    LOWORD(v40) = 257;
    [(ICViewControllerManager *)v45 selectNoteWithObjectID:v39 scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:1 animated:v40 ensurePresented:?];

    v12 = v42;
    v4 = v44;
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager addNoteFromPlaintextFile:]" simulateCrash:1 showAlert:0 format:@"Couldn't get default account"];
    v7 = v6;
  }

LABEL_16:
}

- (BOOL)openURL:(id)a3
{
  v4 = a3;
  v5 = [v4 isFileURL];
  v6 = +[ICQuickNoteSessionManager sharedManager];
  v7 = [v6 isSecureScreenShowing];

  v8 = [ICAppURLUtilities isTranscriptionDonationURL:v4];
  v9 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v88 = "[ICViewControllerManager openURL:]";
    v89 = 1024;
    v90 = 8308;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  if (!v5)
  {
    if (((v4 != 0) & v7) == 1)
    {
      v15 = [ICAppURLUtilities noteIdentifierFromNotesAppURL:v4];
      if (v15)
      {
        v12 = v15;
        v16 = os_log_create("com.apple.notes", "QuickNote");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_1004D8C14();
        }

        v17 = +[NSMutableDictionary dictionary];
        [v17 setObject:v12 forKeyedSubscript:ICQuickNoteURLOptionNoteIdentifier];
        [(ICViewControllerManager *)self launchNotesAppFromLockscreenWithQueryOptions:v17 completionBlock:0];

        goto LABEL_63;
      }

      goto LABEL_30;
    }

    if (v4)
    {
      if ([ICAppURLUtilities isQuickNoteModeURL:v4])
      {
        v20 = os_log_create("com.apple.notes", "QuickNote");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_1004D8BA0();
        }

        v12 = +[ICQuickNoteSessionManager sharedManager];
        v21 = [(ICViewControllerManager *)self noteEditorViewController];
        v22 = +[ICNoteContext sharedContext];
        v23 = [v22 managedObjectContext];

        v24 = [ICAppURLUtilities noteIdentifierFromQuickNoteURL:v4];
        v67 = v24;
        if (v24)
        {
          v25 = [ICNote noteWithIdentifier:v24 context:v23];
        }

        else
        {
          v25 = 0;
        }

        v36 = +[ICQuickNoteSessionSettings showOnLockScreen];
        v37 = +[ICQuickNoteSessionSettings showOnLockScreen];
        if (v37 == 3 || v36 == 2)
        {
          v38 = +[ICAppDelegate sharedInstance];
          v39 = v38;
          if (v37 == 3)
          {
            [v38 quicknoteArchiveState];
          }

          else
          {
            [v38 lastBackgroundedArchiveState];
          }
          v40 = ;

          if (!v25)
          {
LABEL_47:
            buf[0] = 0;
            v25 = [v12 noteForSessionCreatingIfNecessaryInContext:v23 stateArchive:v40 canResume:1 isNewlyCreated:buf];
            if (buf[0] == 1)
            {
              v41 = [(ICViewControllerManager *)self noteEditorViewController];
              v42 = [v41 eventReporter];

              [v42 submitNoteCreateEventForModernNote:v25 createApproach:12];
            }
          }
        }

        else
        {
          if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
          {
            [(ICViewControllerManager *)self windowStateArchive];
          }

          else
          {
            +[ICWindowStateArchive windowStateArchiveWithEmptyState];
          }
          v40 = ;
          if (!v25)
          {
            goto LABEL_47;
          }
        }

        v66 = v23;
        v43 = [v21 lastSavedInkingTool];
        v68 = v21;
        [v21 updateInkPickerAndTextViewToTool:v43];

        v65 = v40;
        v64 = [v40 scrollStateForNote:v25];
        v44 = [ICAppURLUtilities quickNoteURLShouldShowList:v4];
        v45 = [ICAppURLUtilities quickNoteURLShouldShowShareSheet:v4];
        v46 = [ICAppURLUtilities quickNoteURLShouldShowiCloudShareSheet:v4];
        v47 = [ICAppURLUtilities attachmentIdentifierFromQuickNoteURL:v4];
        v48 = [v25 isPasswordProtected];
        v69 = 0;
        if ((v44 & 1) == 0 && (v45 & 1) == 0 && (v46 & 1) == 0 && !v47)
        {
          v49 = v48;
          if (([ICAppURLUtilities isLaunchingQuickNoteViaPencil:v4]& 1) != 0)
          {
            v69 = 0;
          }

          else
          {
            v50 = [v68 textView];
            v69 = [v50 canBecomeFirstResponder] & (v49 ^ 1);
          }
        }

        if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
        {
          [(ICViewControllerManager *)self windowStateArchive];
        }

        else
        {
          +[ICWindowStateArchive windowStateArchiveWithEmptyState];
        }
        v51 = ;
        v63 = v47;
        v52 = [v25 folder];
        v53 = [v52 account];
        v54 = [v53 objectID];

        if (!v44 || ([v54 URIRepresentation], v55 = objc_claimAutoreleasedReturnValue(), v86 = v55, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v86, 1), v56 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v51, "setCurrentContainerObjectIDURLs:", v56), v56, v55, !-[ICViewControllerManager hasCompactWidth](self, "hasCompactWidth")))
        {
          v57 = [v25 objectID];
          v58 = [v57 URIRepresentation];
          [v51 setCurrentNoteObjectIDURL:v58];
        }

        [v51 setCurrentNoteContainerViewMode:{-[ICViewControllerManager noteContainerViewMode](self, "noteContainerViewMode")}];
        [v51 setScrollState:v64];
        [v51 setActiveEditorInEditMode:v69];
        [(ICViewControllerManager *)self applyNoteViewModesToStateRestoreArchive:v51 withContainerItemID:v54];
        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_1000602C8;
        v78[3] = &unk_100646708;
        v83 = v46;
        v79 = v68;
        v80 = self;
        v81 = v63;
        v82 = v66;
        v59 = v66;
        v60 = v63;
        v61 = v68;
        [(ICViewControllerManager *)self applyStateRestoreArchive:v51 completion:v78];

        goto LABEL_63;
      }

      if (v8)
      {
        v28 = [ICAppURLUtilities isTranscriptionDonationURLPositive:v4];
        v29 = +[ICNoteContext sharedContext];
        v30 = [v29 workerManagedObjectContext];

        v73[0] = _NSConcreteStackBlock;
        v73[1] = 3221225472;
        v73[2] = sub_100060354;
        v73[3] = &unk_100645ED0;
        v74 = v4;
        v75 = v30;
        v76 = self;
        v77 = v28;
        v31 = v30;
        [v31 performBlockAndWait:v73];

        [(ICViewControllerManager *)self selectionStateTrackingEnabled];
        v19 = 1;
        goto LABEL_32;
      }

      if ([ICAppURLUtilities isShowFolderListURL:v4])
      {
        [(ICViewControllerManager *)self showAccountListAnimated:1];
      }
    }

LABEL_30:
    if (!(v8 & 1 | ![(ICViewControllerManager *)self selectionStateTrackingEnabled]))
    {
      v32 = [(ICViewControllerManager *)self selectedNoteObjectID];
      v33 = [(ICViewControllerManager *)self selectionStateController];
      v34 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
      v35 = [(ICViewControllerManager *)self noteContainerViewMode];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_100060640;
      v70[3] = &unk_100646758;
      v70[4] = self;
      v71 = v32;
      v72 = v4;
      v12 = v32;
      [v33 openURL:v72 rootNoteBrowseViewController:v34 currentNoteContainerViewMode:v35 completion:v70];

      goto LABEL_63;
    }

    v19 = 0;
LABEL_32:
    v12 = [(ICViewControllerManager *)self archiveForURL:v4];
    if (!v12)
    {
      goto LABEL_64;
    }

    [(ICViewControllerManager *)self applyStateRestoreArchive:v12 completion:0];
LABEL_63:
    v19 = 1;
    goto LABEL_64;
  }

  v85 = 0;
  v84 = 0;
  v10 = [v4 getResourceValue:&v85 forKey:NSURLTypeIdentifierKey error:&v84];
  v11 = v85;
  v12 = v84;
  if (v10)
  {
    v13 = [v4 pathExtension];
    v14 = [v13 isEqualToString:kICAirDropDocumentExtension];

    if (v14)
    {
      [(ICViewControllerManager *)self addNoteFromAirDropDocument:v4];
LABEL_24:
      v19 = 1;
      goto LABEL_25;
    }

    v26 = [UTType typeWithIdentifier:v11];
    v27 = [v26 conformsToType:UTTypePlainText];

    if (v27)
    {
      [(ICViewControllerManager *)self addNoteFromPlaintextFile:v4];
      goto LABEL_24;
    }
  }

  else
  {
    v18 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1004D8C48(v12);
    }
  }

  v19 = 0;
LABEL_25:

LABEL_64:
  return v19;
}

- (void)showAudioDonationDialog:(BOOL)a3 mediaURL:(id)a4 transcript:(id)a5 date:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = +[NSBundle mainBundle];
  v28 = [v11 localizedStringForKey:@"Help Improve Transcriptions?" value:&stru_100661CF0 table:0];

  v12 = +[NSBundle mainBundle];
  v27 = [v12 localizedStringForKey:@"Would you like to submit this recording to Apple to improve transcription accuracy?\n\nRecordings will only be used to improve the quality of speech recognition in Apple products.\n\nDo not submit recordings if you believe the speaker would be uncomfortable with you submitting the content to Apple." value:&stru_100661CF0 table:0];

  v13 = [UIAlertController alertControllerWithTitle:v28 message:v27 preferredStyle:1];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Submit" value:&stru_100661CF0 table:0];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100060A4C;
  v29[3] = &unk_1006467A0;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = a3;
  v25 = v10;
  v16 = v9;
  v17 = v8;
  v18 = [UIAlertAction actionWithTitle:v15 style:0 handler:v29];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Cancel" value:&stru_100661CF0 table:0];
  v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:0];

  [v13 addAction:v18];
  [v13 addAction:v21];
  v22 = [(ICViewControllerManager *)self noteEditorViewController];
  v23 = [v22 presentedViewController];

  [v23 presentViewController:v13 animated:1 completion:0];
}

- (id)archiveForURL:(id)a3
{
  v3 = a3;
  v4 = sub_1000DC72C();
  v5 = +[ICNoteContext sharedContext];
  if (v5)
  {
    v6 = [ICAppURLUtilities objectIDForModernFolderMentionedInURL:v3 noteContext:v5];
    if (v6)
    {
LABEL_3:
      v7 = v6;
      v8 = [v6 URIRepresentation];
LABEL_6:
      v78 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
LABEL_7:
      v12 = 0;
      goto LABEL_8;
    }

    if (([ICAppURLUtilities isShowVirtualSmartFolderURL:v3]& 1) != 0)
    {
      v26 = [v5 managedObjectContext];
      v11 = [ICAppURLUtilities virtualSmartFolderMentionedInURL:v3 context:v26];

      v7 = 0;
      v8 = 0;
      v78 = 0;
      v9 = 0;
      v10 = 0;
      goto LABEL_7;
    }

    if ([ICAppURLUtilities isShowNoteInVirtualSmartFolderURL:v3])
    {
      v27 = [v5 managedObjectContext];
      v11 = [ICAppURLUtilities virtualSmartFolderMentionedInURL:v3 context:v27];

      v28 = [ICAppURLUtilities notePredicateFromNoteInVirtualSmartFolderInURL:v3];
      if (v28)
      {
        v29 = [v5 managedObjectContext];
        v30 = [ICNote notesMatchingPredicate:v28 context:v29];

        if ([v30 count])
        {
          [v30 firstObject];
          v32 = v31 = v5;
          v33 = [v32 objectID];
          v8 = [v33 URIRepresentation];

          if (v11)
          {
            v34 = v8;
          }

          else
          {
            v34 = 0;
          }

          v78 = v34;
          if (v11)
          {
            v8 = 0;
          }

          v5 = v31;
        }

        else
        {
          v78 = 0;
          v8 = 0;
        }
      }

      else
      {
        v78 = 0;
        v8 = 0;
      }

      v9 = 0;
LABEL_69:
      v12 = v78;
      v7 = 0;
      if (v78)
      {
        v10 = 0;
        v12 = [v9 count] != 0;
      }

      else
      {
        v78 = 0;
        v10 = 0;
      }

      goto LABEL_8;
    }
  }

  else if (([ICAppURLUtilities isShowVirtualSmartFolderURL:v3]& 1) != 0)
  {
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [ICAppURLUtilities objectIDForHTMLFolderMentionedInURL:v3 context:v4];
    if (v6)
    {
      goto LABEL_3;
    }

    if ([ICAppURLUtilities isShowDefaultFolderURL:v3])
    {
      v35 = [ICDefaultAccountUtilities defaultFolderWithHTMLNoteContext:v4];
      v36 = [v35 objectID];
      v8 = [v36 URIRepresentation];

LABEL_38:
      v7 = 0;
      goto LABEL_6;
    }
  }

  if ([ICAppURLUtilities isShowNoteURL:v3])
  {
    v37 = [ICAppURLUtilities predicateForNotesMentionedInURL:v3];
    v38 = v37;
    v9 = 0;
    if (v5)
    {
      v78 = 0;
      v8 = 0;
      if (v37)
      {
        v39 = [v5 managedObjectContext];
        v40 = [ICNote notesMatchingPredicate:v38 context:v39];

        v72 = v40;
        v41 = [v40 firstObject];
        v42 = [ICAppURLUtilities folderIdentifierForShowNoteURL:v3];
        if (v42)
        {
          v43 = [v5 managedObjectContext];
          v44 = [ICFolder folderWithIdentifier:v42 context:v43];

          if (v44 && v41 && ([v44 visibleNotes], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "containsObject:", v41), v45, v46))
          {
            v47 = [v41 objectID];
            v78 = [v47 URIRepresentation];

            v71 = [v44 objectID];
            v48 = [v71 URIRepresentation];
            v79 = v48;
            v9 = [NSArray arrayWithObjects:&v79 count:1];

            v49 = 0;
          }

          else
          {
            v57 = [v41 objectID];
            v49 = [v57 URIRepresentation];

            v9 = 0;
            v78 = 0;
          }
        }

        else
        {
          v65 = [v41 objectID];
          v49 = [v65 URIRepresentation];

          v9 = 0;
          v78 = 0;
        }

        v8 = v49;
      }
    }

    else
    {
      v78 = 0;
      v8 = 0;
    }

    v11 = 0;
    goto LABEL_69;
  }

  v50 = [ICAppURLUtilities objectIDURIRepresentationForHTMLNoteMentionedInURL:v3];
  if (!v50)
  {
    if ([ICAppURLUtilities isShowNoteFocusedInFolderURL:v3])
    {
      v76 = v4;
      v51 = [ICAppURLUtilities predicateForFolderWithNoteFocusedInURL:v3];
      v52 = v51;
      v11 = 0;
      v10 = 0;
      v8 = 0;
      if (v5 && v51)
      {
        v74 = v5;
        v53 = [v5 managedObjectContext];
        v54 = [ICNote notesMatchingPredicate:v52 context:v53];

        objc_opt_class();
        v55 = [v54 firstObject];
        v56 = ICDynamicCast();

        if (!v56)
        {
          [ICAssert handleFailedAssertWithCondition:"((firstNote) != nil)" functionName:"[ICViewControllerManager archiveForURL:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "firstNote"];
        }

        if ([v56 isSystemPaper])
        {
          v11 = +[ICAccount globalVirtualSystemPaperFolder];
        }

        else
        {
          v11 = 0;
        }

        if ([v56 isMathNote])
        {
          v66 = +[ICAccount globalVirtualMathNotesFolder];

          v11 = v66;
        }

        if ([v56 isCallNote])
        {
          +[ICAccount globalVirtualCallNotesFolder];
          v67 = 0;
          v11 = v68 = v11;
        }

        else
        {
          v68 = [v56 folder];
          v69 = [v68 objectID];
          v67 = [v69 URIRepresentation];
        }

        v70 = [v56 objectID];
        v10 = [v70 URIRepresentation];

        v5 = v74;
        v8 = v67;
      }

      v7 = 0;
      v78 = 0;
      v9 = 0;
      v12 = 0;
      v4 = v76;
LABEL_8:
      if (!v8 && !v12 && !v11)
      {
        v8 = 0;
        v13 = 0;
        if (![ICAppURLUtilities isShowFolderListURL:v3])
        {
          goto LABEL_20;
        }
      }

      goto LABEL_12;
    }

    if (NotesAppIsValidURL())
    {
      v35 = NotesAppPredicateForNoteMentionedInURL();
      if (v35)
      {
        v58 = +[NotesApp sharedNotesApp];
        v59 = [v58 noteContext];
        v60 = [v59 allVisibleNotesMatchingPredicate:v35 sorted:1];

        v61 = [v60 firstObject];
        [v61 objectID];
        v62 = v5;
        v64 = v63 = v4;
        v8 = [v64 URIRepresentation];

        v4 = v63;
        v5 = v62;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_38;
    }

LABEL_5:
    v7 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v8 = v50;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v78 = 0;
  v7 = 0;
LABEL_12:
  v73 = v5;
  v75 = v4;
  v14 = v3;
  v15 = +[ICWindowStateArchive windowStateArchiveWithEmptyState];
  v13 = v15;
  if (v10)
  {
    [v15 setFocusedNoteObjectIDURL:v10];
  }

  v16 = v10;
  v17 = [(ICViewControllerManager *)self managedObjectIDFromURL:v8];
  v18 = v17;
  v19 = v11;
  if (v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v11;
  }

  v21 = v20;

  if (v21)
  {
    [(ICViewControllerManager *)self applyNoteViewModesToStateRestoreArchive:v13 withContainerItemID:v21];
  }

  [v13 setCurrentObjectIDURL:v8];
  [v13 setCurrentNoteObjectIDURL:v78];
  [v13 setCurrentContainerObjectIDURLs:v9];
  v22 = [v19 type];
  [v13 setCurrentVirtualSmartFolderType:v22];

  v23 = [v19 accountObjectID];
  v24 = [v23 URIRepresentation];
  [v13 setCurrentVirtualSmartFolderAccountObjectIDURL:v24];

  v11 = v19;
  v3 = v14;
  v5 = v73;
  v4 = v75;
  v10 = v16;
LABEL_20:

  return v13;
}

- (id)createDeferredActionMenuElementForEditorViewController:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 note];
  v6 = [v4 invitation];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000614B8;
  v9[3] = &unk_1006467C8;
  objc_copyWeak(&v10, &location);
  v7 = [ICNoteEditorActionMenu deferredActionMenuElementWithNote:v5 invitation:v6 presentingViewController:v4 viewControllerManager:self delegate:v4 completion:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

- (void)selectTagSelection:(id)a3
{
  v6 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v4 = [(ICViewControllerManager *)self selectionStateController];
    v5 = [v6 copy];
    [v4 pushTagSelection:v5];
  }

  else
  {
    [(ICViewControllerManager *)self showTagSelection:v6];
  }
}

- (void)selectContainerWithIdentifier:(id)a3 usingRootViewController:(BOOL)a4 deferUntilDataLoaded:(BOOL)a5 animated:(BOOL)a6
{
  v7 = a5;
  v8 = a4;
  v13 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    if (v13)
    {
      [NSSet setWithObject:?];
    }

    else
    {
      +[NSSet set];
    }
    v10 = ;
    v11 = +[NSSet set];
    BYTE1(v12) = 1;
    LOBYTE(v12) = a6;
    [(ICViewControllerManager *)self selectContainerWithIdentifiers:v10 excludingIdentifiers:v11 noteBrowseViewController:0 usingRootViewController:v8 deferUntilDataLoaded:v7 dismissOverlayContent:&__kCFBooleanFalse animated:v12 ensurePresented:0 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:?];
  }

  else
  {
    v10 = [NSSet ic_setFromNonNilObject:v13];
    v11 = +[NSSet set];
    LOBYTE(v12) = a6;
    [(ICViewControllerManager *)self showContainerWithIdentifiers:v10 excludingIdentifiers:v11 usingRootViewController:v8 deferUntilDataLoaded:v7 dismissOverlayContent:0 keepEditorShowing:0 animated:v12];
  }
}

- (void)selectContainerWithIdentifiers:(id)a3 excludingIdentifiers:(id)a4 usingRootViewController:(BOOL)a5 deferUntilDataLoaded:(BOOL)a6 animated:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v12 = a4;
  v14 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    BYTE1(v13) = 1;
    LOBYTE(v13) = v7;
    [(ICViewControllerManager *)self selectContainerWithIdentifiers:v14 excludingIdentifiers:v12 noteBrowseViewController:0 usingRootViewController:v9 deferUntilDataLoaded:v8 dismissOverlayContent:0 animated:v13 ensurePresented:0 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:?];
  }

  else
  {
    [(ICViewControllerManager *)self showContainerWithIdentifiers:v14 excludingIdentifiers:v12 usingRootViewController:v9 deferUntilDataLoaded:v8 keepEditorShowing:0 animated:v7];
  }
}

- (void)selectContainerWithIdentifiers:(id)a3 excludingIdentifiers:(id)a4 usingRootViewController:(BOOL)a5 deferUntilDataLoaded:(BOOL)a6 dismissOverlayContent:(BOOL)a7 animated:(BOOL)a8
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v17 = a3;
  v14 = a4;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v15 = [NSNumber numberWithBool:v9];
    BYTE1(v16) = 1;
    LOBYTE(v16) = a8;
    [(ICViewControllerManager *)self selectContainerWithIdentifiers:v17 excludingIdentifiers:v14 noteBrowseViewController:0 usingRootViewController:v11 deferUntilDataLoaded:v10 dismissOverlayContent:v15 animated:v16 ensurePresented:0 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:?];
  }

  else
  {
    LOBYTE(v16) = a8;
    [(ICViewControllerManager *)self showContainerWithIdentifiers:v17 excludingIdentifiers:v14 usingRootViewController:v11 deferUntilDataLoaded:v10 dismissOverlayContent:v9 keepEditorShowing:0 animated:v16];
  }
}

- (void)selectContainerWithIdentifiers:(id)a3 excludingIdentifiers:(id)a4 isChangingDisplayMode:(BOOL)a5 noteBrowseViewController:(id)a6 usingRootViewController:(BOOL)a7 deferUntilDataLoaded:(BOOL)a8 dismissOverlayContent:(id)a9 animated:(BOOL)a10 ensurePresented:(BOOL)a11 ensureSelectedNote:(id)a12 keepEditorShowing:(id)a13 dataIndexedBlock:(id)a14 dataRenderedBlock:(id)a15
{
  v43 = a8;
  v40 = a5;
  v42 = a7;
  v45 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a9;
  v21 = a12;
  v44 = a13;
  v22 = a14;
  v23 = a15;
  v24 = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
  v25 = [v45 allObjects];
  v26 = [v25 firstObject];
  if (!v24)
  {
    v29 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:v26];

    v41 = v20 != 0;
    v30 = [(ICViewControllerManager *)self isAutomaticallySelectingNotes];
    v31 = v20;
    v32 = v19;
    v33 = v21;
    v34 = v18;
    if (v29 == 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = v30;
    }

    v26 = [NSNumber numberWithBool:[(ICViewControllerManager *)self isTrashFolderSelected]];
    BYTE2(v39) = v35;
    v18 = v34;
    v21 = v33;
    v19 = v32;
    v20 = v31;
    LOWORD(v39) = __PAIR16__(a11, a10);
    [ICViewControllerManager showContainerWithIdentifiers:"showContainerWithIdentifiers:excludingIdentifiers:noteBrowseViewController:usingRootViewController:deferUntilDataLoaded:dismissOverlayContent:animated:ensurePresented:ensureSelectedNote:keepEditorShowing:dataIndexedBlock:dataRenderedBlock:" excludingIdentifiers:v45 noteBrowseViewController:v18 usingRootViewController:v19 deferUntilDataLoaded:v42 dismissOverlayContent:v43 animated:v41 ensurePresented:v39 ensureSelectedNote:v26 keepEditorShowing:v22 dataIndexedBlock:v23 dataRenderedBlock:?];
    goto LABEL_12;
  }

  if ([objc_opt_class() conformsToProtocol:&OBJC_PROTOCOL___ICItemIdentifier])
  {
    if (![(ICViewControllerManager *)self hasCompactWidth])
    {
      v27 = [(ICViewControllerManager *)self selectionStateController];
      if ([v27 selectedContainerEqualTo:v26] && !v40)
      {
        v28 = [(ICViewControllerManager *)self isSearchActive];

        if (v28)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }
    }

LABEL_14:
    if (v22 | v23)
    {
      v37 = [[ICSelectionStateModelContainerSelectionOptionsCompletionBlocks alloc] initWithDataIndexedBlock:v22 dataRenderedBlock:v23];
    }

    else
    {
      v37 = 0;
    }

    v38 = [(ICViewControllerManager *)self selectionStateController];
    v36 = v44;
    LOWORD(v39) = __PAIR16__(a11, a10);
    [v38 pushContainerSelectionWithObjectID:v26 forceApply:v40 noteBrowseViewController:v19 usingRootViewController:v42 deferUntilDataLoaded:v43 dismissOverlayContent:v20 animated:v39 ensurePresented:v21 ensureSelectedNote:v44 keepEditorShowing:v37 containerSelectionCompletionBlocks:?];

    goto LABEL_18;
  }

LABEL_12:
  v36 = v44;
LABEL_18:
}

- (void)selectObjectWithObjectID:(id)a3
{
  v6 = a3;
  if (-[ICViewControllerManager selectionStateTrackingEnabled](self, "selectionStateTrackingEnabled") && ([v6 ic_isContainerType] & 1) == 0)
  {
    v4 = [(ICViewControllerManager *)self selectionStateController];
    [v4 pushObjectWithObjectID:v6];
  }

  else
  {
    if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
    {
      [(ICViewControllerManager *)self windowStateArchive];
    }

    else
    {
      +[ICWindowStateArchive windowStateArchiveWithEmptyState];
    }
    v4 = ;
    v5 = [v6 URIRepresentation];
    [v4 setCurrentObjectIDURL:v5];

    [(ICViewControllerManager *)self applyNoteViewModesToStateRestoreArchive:v4 withContainerItemID:v6];
    [(ICViewControllerManager *)self applyStateRestoreArchive:v4 completion:0];
  }
}

- (void)selectInvitationWithObjectID:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v6 = [(ICViewControllerManager *)self selectionStateController];
    [v6 pushInvitationWithObjectID:v7 animated:v4];
  }

  else
  {
    [(ICViewControllerManager *)self showInvitationWithObjectID:v7 animated:v4];
  }
}

- (void)selectNoteWithObjectID:(id)a3 scrollState:(id)a4 startEditing:(BOOL)a5 animated:(BOOL)a6 ensurePresented:(BOOL)a7
{
  BYTE1(v7) = a7;
  LOBYTE(v7) = a6;
  [(ICViewControllerManager *)self selectNoteWithObjectID:a3 scrollState:a4 startEditing:a5 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:1 animated:v7 ensurePresented:?];
}

- (void)selectNoteWithObjectID:(id)a3 scrollState:(id)a4 startEditing:(BOOL)a5 showInkPicker:(BOOL)a6 dismissOverlayContent:(BOOL)a7 showLatestUpdatesIfAvailable:(BOOL)a8 animated:(BOOL)a9 ensurePresented:(BOOL)a10
{
  v10 = a8;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v20 = a3;
  v16 = a4;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v17 = [(ICViewControllerManager *)self selectionStateController];
    if ([(ICViewControllerManager *)self isSearchActive])
    {
      v18 = [(ICViewControllerManager *)self selectedSearchResult];
      LOWORD(v19) = __PAIR16__(a10, a9);
      [v17 pushNoteSelectionWithObjectID:v20 scrollState:v16 startEditing:v13 showInkPicker:v12 dismissOverlayContent:v11 showLatestUpdatesIfAvailable:v10 animated:v19 ensurePresented:v18 searchResult:?];
    }

    else
    {
      LOWORD(v19) = __PAIR16__(a10, a9);
      [v17 pushNoteSelectionWithObjectID:v20 scrollState:v16 startEditing:v13 showInkPicker:v12 dismissOverlayContent:v11 showLatestUpdatesIfAvailable:v10 animated:v19 ensurePresented:0 searchResult:?];
    }
  }

  else
  {
    LOWORD(v19) = __PAIR16__(a10, a9);
    [(ICViewControllerManager *)self showNoteWithObjectID:v20 scrollState:v16 startEditing:v13 showInkPicker:v12 dismissOverlayContent:v11 showLatestUpdatesIfAvailable:v10 animated:v19 ensurePresented:?];
  }
}

- (void)selectNoteStartEditingIfEmptyWithObjectID:(id)a3 scrollState:(id)a4 animated:(BOOL)a5 ensurePresented:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (v10)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    if ([v10 ic_isModernNoteType])
    {
      v12 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v13 = v15;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10006208C;
      v15[3] = &unk_100646008;
      v15[4] = self;
      v15[5] = v10;
      v15[6] = &v16;
      [v12 performBlockAndWait:v15];
    }

    else
    {
      if (![v10 ic_isLegacyNoteType])
      {
LABEL_7:
        [(ICViewControllerManager *)self selectNoteWithObjectID:v10 scrollState:v11 startEditing:*(v17 + 24) animated:v7 ensurePresented:v6];
        _Block_object_dispose(&v16, 8);
        goto LABEL_8;
      }

      v12 = [(ICViewControllerManager *)self legacyManagedObjectContext];
      v13 = v14;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100062100;
      v14[3] = &unk_100646008;
      v14[4] = self;
      v14[5] = v10;
      v14[6] = &v16;
      [v12 performBlockAndWait:v14];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)selectAttachmentWithObjectID:(id)a3 animated:(BOOL)a4
{
  v12 = a3;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v6 = [(ICViewControllerManager *)self selectionStateController];
    BYTE1(v11) = 1;
    LOBYTE(v11) = a4;
    [v6 pushAttachmentSelectionWithObjectID:v12 scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:0 animated:v11 ensurePresented:?];
  }

  else
  {
    if (![v12 ic_isBaseAttachmentType])
    {
      goto LABEL_6;
    }

    v7 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v6 = [v7 objectWithID:v12];

    v8 = [v6 note];
    v9 = [ICTextViewScrollState scrollStateForAttachment:v6 inNote:v8];
    v10 = [v8 objectID];
    BYTE1(v11) = 1;
    LOBYTE(v11) = a4;
    [(ICViewControllerManager *)self showNoteWithObjectID:v10 scrollState:v9 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:0 animated:v11 ensurePresented:?];
  }

LABEL_6:
}

- (void)selectModel:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(ICViewControllerManager *)self selectionStateController];
    [v5 pushModel:v4 navigating:0];
  }
}

- (BOOL)objectAlreadyLoadedInEditorWithObjectID:(id)a3
{
  v7 = a3;
  v8 = [v7 ic_isModernNoteType];
  if (v8)
  {
    v3 = [(ICViewControllerManager *)self noteEditorViewController];
    v4 = [v3 note];
    v5 = [v4 objectID];
    if ([v7 isEqual:v5])
    {
      v9 = 1;
LABEL_10:

      goto LABEL_11;
    }

    if (([v7 ic_isInvitationType] & 1) == 0)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  else if (![v7 ic_isInvitationType])
  {
    v9 = 0;
    goto LABEL_11;
  }

  v10 = [(ICViewControllerManager *)self noteEditorViewController];
  v11 = [v10 invitation];
  v12 = [v11 objectID];
  v9 = [v7 isEqual:v12];

  if (v8)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ([v7 ic_isLegacyNoteType])
  {
    v13 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    v14 = [v13 note];
    v15 = [v14 objectID];
    v16 = [v7 isEqual:v15];
  }

  else
  {
    v16 = 0;
  }

  return (v9 | v16) & 1;
}

- (void)adoptContainerFromSelectionStateController:(id)a3 oldModel:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  performBlockOnMainThread();
}

- (void)adoptObjectFromSelectionStateController:(id)a3 oldModel:(id)a4 completion:(id)a5
{
  v7 = a3;
  v11 = a4;
  v12 = a5;
  v8 = v12;
  v9 = v11;
  v10 = v7;
  performBlockOnMainThread();
}

- (void)selectionStateController:(id)a3 didAdoptModelFromOldModel:(id)a4 isNavigating:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100063174;
  v17[3] = &unk_100645D40;
  v17[4] = self;
  v9 = v7;
  v18 = v9;
  v10 = v8;
  v19 = v10;
  v14 = v9;
  v15 = v10;
  v16 = objc_retainBlock(v17);
  v11 = v16;
  v12 = v10;
  v13 = v9;
  performBlockOnMainThread();
}

- (void)selectionStateController:(id)a3 didAdoptModelFromArchive:(id)a4 systemPaperAlert:(BOOL)a5 completion:(id)a6
{
  v8 = a3;
  v12 = a4;
  v13 = a6;
  v9 = v13;
  v10 = v12;
  v11 = v8;
  performBlockOnMainThread();
}

- (BOOL)shouldAutomaticallySelectNoteContainerForSelectionStateController:(id)a3
{
  if ([(ICViewControllerManager *)self isApplyingStateRestoreArchive]|| ![(ICViewControllerManager *)self hasCompactWidth])
  {
    return 1;
  }

  v4 = [(ICViewControllerManager *)self overrideContainerIdentifier];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)shouldRevertToDefaultFolderWhenUnselectingTagsForSelectionStateController:(id)a3
{
  v4 = [(ICViewControllerManager *)self hasCompactWidth];
  if (v4)
  {

    LOBYTE(v4) = [(ICViewControllerManager *)self isNoteEditorVisible];
  }

  return v4;
}

- (BOOL)shouldRevertToAllTagsWhenUnselectingTagsForSelectionStateController:(id)a3
{
  v4 = [(ICViewControllerManager *)self hasCompactWidth];
  if (v4)
  {
    LOBYTE(v4) = ![(ICViewControllerManager *)self isNoteEditorVisible];
  }

  return v4;
}

- (BOOL)shouldSelectDefaultContainerWhenInappropriateForSelectionStateController:(id)a3
{
  if ([(ICViewControllerManager *)self isSearchActive])
  {
    return 0;
  }

  v5 = [(ICViewControllerManager *)self overrideContainerIdentifier];
  v4 = v5 == 0;

  return v4;
}

- (BOOL)shouldRevertToMostRecentlySelectedNonSearchObjectOnNavigationTransitionForSelectionStateController:(id)a3
{
  if ([(ICViewControllerManager *)self isSearchActive])
  {
    return 0;
  }

  return [(ICViewControllerManager *)self isAutomaticallySelectingNotes];
}

- (BOOL)shouldRevertToMostRecentlySelectedSearchResultOnNavigationTransitionForSelectionStateController:(id)a3
{
  v4 = [(ICViewControllerManager *)self isSearchActive];
  if (v4)
  {

    LOBYTE(v4) = [(ICViewControllerManager *)self isAutomaticallySelectingNotes];
  }

  return v4;
}

- (void)selectionStateController:(id)a3 didAdoptInstantNoteModelFromArchive:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  performBlockOnMainThread();
}

- (void)selectionStateController:(id)a3 didIgnoreDuplicateModel:(id)a4
{
  v5 = a4;
  v4 = v5;
  performBlockOnMainThread();
}

- (id)selectionStateController:(id)a3 scrollStateForObjectID:(id)a4
{
  v5 = a4;
  if ([v5 ic_isModernNoteType] && -[ICViewControllerManager objectAlreadyLoadedInEditorWithObjectID:](self, "objectAlreadyLoadedInEditorWithObjectID:", v5))
  {
    v6 = [(ICViewControllerManager *)self noteEditorViewController];
    v7 = [v6 currentScrollState];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hostedNotesAppearanceCoordinatorModeButtonHidingModalTypes:(id)a3
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [NSSet setWithObjects:v3, v4, v5, objc_opt_class(), 0];
}

- (BOOL)canPerformTogglePinNoteAction
{
  v2 = self;
  v3 = sub_10017B74C(&selRef_isPinnable);

  return v3;
}

- (BOOL)canPerformLockNoteAction
{
  v2 = self;
  v3 = sub_10017B628();

  return v3 & 1;
}

- (BOOL)canPerformDuplicateSelectedNote
{
  v2 = self;
  v3 = sub_10017B74C(&selRef_isDuplicatable);

  return v3;
}

- (BOOL)canPerformManageSharedFolderAction
{
  v2 = self;
  v3 = [(ICViewControllerManager *)v2 currentNoteBrowseViewController];
  v4 = [(ICNoteBrowseViewController *)v3 noteContainer];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 isSharedViaICloud];
      v7 = v4;
    }

    else
    {
      v6 = 0;
      v7 = v2;
      v2 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)createDonationOf:(NSURL *)a3 transcript:(NSString *)a4 date:(NSDate *)a5 isFeedbackPositive:(BOOL)a6 completionHandler:(id)a7
{
  v13 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = v16;
  *(v17 + 56) = a1;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100544848;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_100548DF0;
  v20[5] = v19;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  sub_1004A09D8(0, 0, v15, &unk_100544850, v20);
}

+ (id)trimBuffer:(id)a3 toFrameLength:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  sub_10035E528(v5, v4);
  v7 = v6;

  return v7;
}

@end