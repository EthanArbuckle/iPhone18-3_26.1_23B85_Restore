@interface ICViewControllerManager
+ (id)trimBuffer:(id)buffer toFrameLength:(unsigned int)length;
+ (void)createDonationOf:(NSURL *)of transcript:(NSString *)transcript date:(NSDate *)date isFeedbackPositive:(BOOL)positive completionHandler:(id)handler;
- (BOOL)canAddNewNoteToSelectedContainers;
- (BOOL)canBeginEditingForNoteDisplayController:(id)controller;
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
- (BOOL)isSelectionAppropriateForObjectID:(id)d;
- (BOOL)isShowingNoteBrowsersForContainerObjectIDs:(id)ds;
- (BOOL)isSplitViewExpanded;
- (BOOL)isSupplementaryContentVisible;
- (BOOL)isTagSelected;
- (BOOL)isTrailingContentVisible;
- (BOOL)isTrashFolderSelected;
- (BOOL)noteEditor:(id)editor didTapAttachment:(id)attachment;
- (BOOL)objectAlreadyLoadedInEditorWithObjectID:(id)d;
- (BOOL)openURL:(id)l;
- (BOOL)presentAttachment:(id)attachment delegate:(id)delegate displayShowInNote:(BOOL)note editable:(BOOL)editable selectedSubAttachment:(id)subAttachment presentingViewController:(id)controller;
- (BOOL)presentAttachments:(id)attachments startingAtIndex:(unint64_t)index delegate:(id)delegate displayShowInNote:(BOOL)note editable:(BOOL)editable selectedSubAttachment:(id)attachment presentingViewController:(id)controller;
- (BOOL)selectContainersForDeletedHashtagObjectIDs:(id)ds;
- (BOOL)selectDefaultFolderForNoteMovedOutOfNoteObjectIDs:(id)ds managedObjectContext:(id)context;
- (BOOL)selectDefaultFolderForNoteMovedOutOfSelectedTagsIfNeeded:(id)needed;
- (BOOL)selectDefaultFolderForNoteMovedOutOfSmartFolderIfNeeded:(id)needed;
- (BOOL)shouldAutomaticallySelectNoteContainerForSelectionStateController:(id)controller;
- (BOOL)shouldManagedObjectBecomeSelectedNote:(id)note;
- (BOOL)shouldRevertToAllTagsWhenUnselectingTagsForSelectionStateController:(id)controller;
- (BOOL)shouldRevertToDefaultFolderWhenUnselectingTagsForSelectionStateController:(id)controller;
- (BOOL)shouldRevertToMostRecentlySelectedNonSearchObjectOnNavigationTransitionForSelectionStateController:(id)controller;
- (BOOL)shouldRevertToMostRecentlySelectedSearchResultOnNavigationTransitionForSelectionStateController:(id)controller;
- (BOOL)shouldSelectDefaultContainerWhenInappropriateForSelectionStateController:(id)controller;
- (BOOL)showsAttributionHighlights;
- (BOOL)usesSingleSplitView;
- (BOOL)validateStateRestoreArchive:(id)archive;
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
- (id)archiveForURL:(id)l;
- (id)cmd3Title;
- (id)containerItemIDForContainerIdentifiers:(id)identifiers;
- (id)containerObjectIDForNewNoteWithApproach:(int64_t)approach;
- (id)createDeferredActionMenuElementForEditorViewController:(id)controller;
- (id)createNewNoteInContainerWithObjectID:(id)d isSystemPaper:(BOOL)paper;
- (id)defaultContainerObjectIDForNoteWithObjectID:(id)d;
- (id)existingManagedObjectWithObjectID:(id)d;
- (id)hostedNotesAppearanceCoordinatorModeButtonHidingModalTypes:(id)types;
- (id)managedObjectIDFromURL:(id)l;
- (id)noteObjectIDsWithQuery:(id)query managedObjectContext:(id)context;
- (id)outerSplitViewController;
- (id)quickNoteQueryOptionsFromEditor:(id)editor additionalOptions:(id)options;
- (id)selectedModernAccount;
- (id)selectedModernFolder;
- (id)selectedSmartFolder:(id)folder;
- (id)selectedSmartFolderNoteObjectIDs:(id)ds;
- (id)selectedTagsNoteObjectIDs:(id)ds;
- (id)selectedTagsNoteQuery:(id)query;
- (id)selectionStateController:(id)controller scrollStateForObjectID:(id)d;
- (id)showNewNoteStartEditing:(BOOL)editing inContainerWithObjectID:(id)d isSystemPaper:(BOOL)paper showInkPicker:(BOOL)picker animated:(BOOL)animated completion:(id)completion;
- (id)showNewNoteWithApproach:(int64_t)approach sender:(id)sender recordAudio:(BOOL)audio animated:(BOOL)animated;
- (id)toggleEditorCalloutsTitle;
- (id)toggleFolderActivityTitle;
- (id)toggleLockNoteIconString;
- (id)toggleLockNoteTitle;
- (id)toggleNoteActivityTitle;
- (int64_t)activityStreamViewMode;
- (int64_t)behavior;
- (int64_t)defaultDisplayModeButtonVisibilityForTraitCollection:(id)collection;
- (int64_t)enforcedNoteContainerViewModeForContainerItemID:(id)d;
- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode;
- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column;
- (int64_t)toggleBoldfaceState;
- (int64_t)toggleEmphasisState;
- (int64_t)toggleItalicsState;
- (int64_t)toggleStrikethroughState;
- (int64_t)toggleUnderlineState;
- (unint64_t)adjustedNumberOfGalleryViewColumns;
- (unint64_t)countOfAllVisibleAccounts;
- (void)accountsDidChange:(id)change;
- (void)addNoteFromAirDropDocument:(id)document;
- (void)addNoteFromPlaintextFile:(id)file;
- (void)addSelectedHashtagsToNewNote:(id)note;
- (void)adoptContainerFromSelectionStateController:(id)controller oldModel:(id)model;
- (void)adoptObjectFromSelectionStateController:(id)controller oldModel:(id)model completion:(id)completion;
- (void)applyNoteViewModesToStateRestoreArchive:(id)archive withContainerItemID:(id)d;
- (void)applyStateRestoreArchive:(id)archive completion:(id)completion;
- (void)clearRecentSelections;
- (void)closeAuxiliaryWindowAnimated:(BOOL)animated;
- (void)collectionViewWillRenameTag:(id)tag;
- (void)deleteEmptyNoteIfNeeded:(id)needed;
- (void)didStartEditing:(id)editing;
- (void)dismissAnyPresentedViewControllerAnimated:(BOOL)animated forShowNote:(BOOL)note completion:(id)completion;
- (void)dismissAttachmentBrowserIfNecessaryAndPerform:(id)perform;
- (void)dismissOverlayContent;
- (void)dismissPrimaryOverlayContent;
- (void)dismissSupplementaryOverlayContent;
- (void)ensureNoteEditorPresentedAnimated:(BOOL)animated startEditing:(BOOL)editing dismissOverlayContent:(BOOL)content;
- (void)ensureSearchVisible;
- (void)ensureSearchVisibleWhenApplyingArchive;
- (void)eventReporterLostSession:(id)session;
- (void)folderWasCreated:(id)created;
- (void)hideActivityStreamWithCompletion:(id)completion;
- (void)hidePresentedActivityStreamNavigationControllerWithCompletion:(id)completion;
- (void)initializeLegacyNoteEditor;
- (void)initializeMainSplitViewWithStateRestoreArchive:(id)archive;
- (void)initializeModernNoteEditorWithOptions:(unint64_t)options;
- (void)initializeSecondaryNavigationControllerWithViewController:(id)controller;
- (void)initializeTrailingSidebarSplitViewWithStateRestoreArchive:(id)archive;
- (void)launchNotesAppFromLockscreenWithQueryOptions:(id)options completionBlock:(id)block;
- (void)lockNotesNow;
- (void)managedObjectContextDidChange:(id)change;
- (void)migrationStateDidChange:(id)change;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)noteEditorDidTapActionMenu:(id)menu;
- (void)noteEditorDidTapAddPeople:(id)people;
- (void)noteEditorDidTapAllNotes:(id)notes;
- (void)noteLockManagerDidToggleLock:(id)lock;
- (void)noteLockManagerWillToggleLock:(id)lock;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performActionForShortcutItem:(id)item;
- (void)performAddFolder:(id)folder;
- (void)performAddLinkKey:(id)key;
- (void)performAddNote:(id)note;
- (void)performAttachFile:(id)file;
- (void)performCmd1:(id)cmd1;
- (void)performCmd2:(id)cmd2;
- (void)performCmd3:(id)cmd3;
- (void)performCmdReturnKey:(id)key;
- (void)performCollapseAllSections:(id)sections;
- (void)performConvertToSmartFolderAction:(id)action;
- (void)performCreateSmartFolder:(id)folder;
- (void)performCreateSmartFolderFromSelectedTags:(id)tags;
- (void)performDeleteKey:(id)key;
- (void)performDeleteQuickNoteKey:(id)key;
- (void)performEnclosingFolderKey:(id)key;
- (void)performExpandAllSections:(id)sections;
- (void)performExportMarkdownAction:(id)action;
- (void)performFindInNote:(id)note;
- (void)performGotoNextNote:(id)note;
- (void)performGotoPreviousNote:(id)note;
- (void)performImportMarkdownAction:(id)action;
- (void)performManageSharedFolderAction:(id)action;
- (void)performPagesHandoff:(id)handoff;
- (void)performPrintNote:(id)note;
- (void)performRecordAudio:(id)audio;
- (void)performRenameAttachment:(id)attachment;
- (void)performReplaceInNote:(id)note;
- (void)performReturnKey:(id)key;
- (void)performScanDocument:(id)document;
- (void)performShareAction:(id)action;
- (void)performShareFolderAction:(id)action;
- (void)performSharedFolderAction:(id)action;
- (void)performShowInNote:(id)note;
- (void)performToggleBoldface:(id)boldface;
- (void)performToggleEditorCallouts:(id)callouts;
- (void)performToggleEmphasis:(id)emphasis;
- (void)performToggleFolderActivity:(id)activity;
- (void)performToggleItalics:(id)italics;
- (void)performToggleNoteActivity:(id)activity;
- (void)performToggleSearch:(id)search;
- (void)performToggleStrikethrough:(id)strikethrough;
- (void)performToggleUnderline:(id)underline;
- (void)performUndo:(id)undo;
- (void)presentActivityStreamForObject:(id)object viewMode:(int64_t)mode animated:(BOOL)animated;
- (void)screenshotService:(id)service generatePDFRepresentationWithCompletion:(id)completion;
- (void)searchQueryDidChange:(id)change;
- (void)selectAttachmentWithObjectID:(id)d animated:(BOOL)animated;
- (void)selectContainerWithIdentifier:(id)identifier usingRootViewController:(BOOL)controller deferUntilDataLoaded:(BOOL)loaded animated:(BOOL)animated;
- (void)selectContainerWithIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers isChangingDisplayMode:(BOOL)mode noteBrowseViewController:(id)controller usingRootViewController:(BOOL)viewController deferUntilDataLoaded:(BOOL)loaded dismissOverlayContent:(id)content animated:(BOOL)self0 ensurePresented:(BOOL)self1 ensureSelectedNote:(id)self2 keepEditorShowing:(id)self3 dataIndexedBlock:(id)self4 dataRenderedBlock:(id)self5;
- (void)selectContainerWithIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers usingRootViewController:(BOOL)controller deferUntilDataLoaded:(BOOL)loaded animated:(BOOL)animated;
- (void)selectContainerWithIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers usingRootViewController:(BOOL)controller deferUntilDataLoaded:(BOOL)loaded dismissOverlayContent:(BOOL)content animated:(BOOL)animated;
- (void)selectInvitationWithObjectID:(id)d animated:(BOOL)animated;
- (void)selectModel:(id)model;
- (void)selectNextRelevantObjectUsingChangedInappropriateIdentifiers:(id)identifiers;
- (void)selectNoteStartEditingIfEmptyWithObjectID:(id)d scrollState:(id)state animated:(BOOL)animated ensurePresented:(BOOL)presented;
- (void)selectNoteWithObjectID:(id)d scrollState:(id)state startEditing:(BOOL)editing animated:(BOOL)animated ensurePresented:(BOOL)presented;
- (void)selectNoteWithObjectID:(id)d scrollState:(id)state startEditing:(BOOL)editing showInkPicker:(BOOL)picker dismissOverlayContent:(BOOL)content showLatestUpdatesIfAvailable:(BOOL)available animated:(BOOL)animated ensurePresented:(BOOL)self0;
- (void)selectObjectWithObjectID:(id)d;
- (void)selectTagSelection:(id)selection;
- (void)selectionStateController:(id)controller didAdoptInstantNoteModelFromArchive:(id)archive;
- (void)selectionStateController:(id)controller didAdoptModelFromArchive:(id)archive systemPaperAlert:(BOOL)alert completion:(id)completion;
- (void)selectionStateController:(id)controller didAdoptModelFromOldModel:(id)model isNavigating:(BOOL)navigating;
- (void)selectionStateController:(id)controller didIgnoreDuplicateModel:(id)model;
- (void)sendNotificationForNoteEditorSizeChange:(CGSize)change transitionCoordinator:(id)coordinator;
- (void)sendNotificationForSplitViewDisplayModeChangeWithTransitionCoordinator:(id)coordinator;
- (void)setActivityStreamSelection:(id)selection;
- (void)setCurrentNoteBrowseViewController:(id)controller animated:(BOOL)animated ensurePresented:(BOOL)presented containerIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers ensureSelectedNote:(BOOL)note keepEditorShowing:(id)showing dataIndexedBlock:(id)self0 dataRenderedBlock:(id)self1;
- (void)setExpandedForSectionsInSelectedRange:(BOOL)range;
- (void)setFocusedNoteObjectID:(id)d;
- (void)setMostRecentNonSearchContainerItemID:(id)d;
- (void)setNoteBrowserNavigationStackWithFolderObjectIDs:(id)ds;
- (void)setNoteContainerViewMode:(int64_t)mode completion:(id)completion;
- (void)setNoteEditorAnimated:(BOOL)animated ensurePresented:(BOOL)presented startEditing:(BOOL)editing showLegacy:(BOOL)legacy showLatestUpdatesIfAvailable:(BOOL)available;
- (void)setPersistenceConfiguration:(id)configuration;
- (void)setPreviousSelectedNoteObjectID:(id)d;
- (void)setSelectedInvitationObjectID:(id)d;
- (void)setSelectedInvitationObjectID:(id)d sideEffects:(BOOL)effects;
- (void)setSelectedNoteBrowseContainerItemID:(id)d;
- (void)setSelectedNoteBrowseContainerItemID:(id)d sideEffects:(BOOL)effects;
- (void)setSelectedNoteObjectID:(id)d;
- (void)setSelectedNoteObjectID:(id)d sideEffects:(BOOL)effects;
- (void)setSelectedSearchResult:(id)result;
- (void)setSelectionStateTrackingEnabled:(BOOL)enabled;
- (void)setSplitViewExpandingOrCollapsing:(BOOL)collapsing;
- (void)setTagSelection:(id)selection;
- (void)setWindow:(id)window;
- (void)setupViewsFromWindowStateArchive:(id)archive systemPaperShowModernAccountAlert:(BOOL)alert completion:(id)completion;
- (void)setupWithWindow:(id)window stateRestoreArchive:(id)archive completion:(id)completion;
- (void)showAccountListAnimated:(BOOL)animated;
- (void)showAccountsSettings:(id)settings;
- (void)showActivityStreamForObjectWithObjectID:(id)d collabActivityContextPath:(int64_t)path;
- (void)showAttachmentBrowser;
- (void)showAttributionHighlightsForNoteWithObjectID:(id)d selection:(id)selection suppressSidebar:(BOOL)sidebar;
- (void)showAudioDonationDialog:(BOOL)dialog mediaURL:(id)l transcript:(id)transcript date:(id)date;
- (void)showContainerWithIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers noteBrowseViewController:(id)controller usingRootViewController:(BOOL)viewController deferUntilDataLoaded:(BOOL)loaded dismissOverlayContent:(BOOL)content animated:(BOOL)animated ensurePresented:(BOOL)self0 ensureSelectedNote:(BOOL)self1 keepEditorShowing:(id)self2 dataIndexedBlock:(id)self3 dataRenderedBlock:(id)self4;
- (void)showContainerWithIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers usingRootViewController:(BOOL)controller deferUntilDataLoaded:(BOOL)loaded dismissOverlayContent:(BOOL)content keepEditorShowing:(id)showing animated:(BOOL)animated;
- (void)showContainerWithIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers usingRootViewController:(BOOL)controller deferUntilDataLoaded:(BOOL)loaded keepEditorShowing:(id)showing animated:(BOOL)animated;
- (void)showInlineAttachmentWithIdentifier:(id)identifier inNoteIdentifier:(id)noteIdentifier;
- (void)showInvitationWithObjectID:(id)d animated:(BOOL)animated;
- (void)showNoteWithIdentifier:(id)identifier;
- (void)showNoteWithObjectID:(id)d scrollState:(id)state startEditing:(BOOL)editing showInkPicker:(BOOL)picker dismissOverlayContent:(BOOL)content showLatestUpdatesIfAvailable:(BOOL)available animated:(BOOL)animated ensurePresented:(BOOL)self0;
- (void)showObjectWithObjectID:(id)d;
- (void)showRecentUpdatesForNoteWithObjectID:(id)d suppressSidebar:(BOOL)sidebar;
- (void)showRecentlyDeletedMathNotes;
- (void)showSearchResult:(id)result animated:(BOOL)animated;
- (void)showSelectionForParticipant:(id)participant noteObjectID:(id)d;
- (void)showStartupWithForceWelcomeScreen:(BOOL)screen completion:(id)completion;
- (void)showTagSelection:(id)selection;
- (void)showUpgradeNotesDialog;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)splitViewController:(id)controller willShowColumn:(int64_t)column;
- (void)splitViewControllerDidCollapse:(id)collapse;
- (void)splitViewControllerDidExpand:(id)expand;
- (void)splitViewControllerInteractivePresentationGestureDidEnd:(id)end;
- (void)splitViewControllerInteractivePresentationGestureWillBegin:(id)begin;
- (void)startSearchWithSearchQueryString:(id)string becomeFirstResponder:(BOOL)responder;
- (void)stopEditing;
- (void)systemPaperNavigateLeft:(id)left;
- (void)systemPaperNavigateRight:(id)right;
- (void)systemPaperShowInNotes:(id)notes;
- (void)tagDidRename:(id)rename;
- (void)tagsDidDelete:(id)delete;
- (void)toggleSidebar;
- (void)updateCurrentNoteLastViewedMetadata:(id)metadata;
- (void)updateForFingerDrawingEnabled:(BOOL)enabled;
- (void)updateHostedNotesAppearance;
- (void)updateIgnoreTextViewTaps;
- (void)updateNewNoteForSelectedTags:(id)tags folder:(id)folder;
- (void)updateNoteEditorBezelsIfNeededWithDisplayMode:(int64_t)mode force:(BOOL)force;
- (void)updateNoteEditorViewControllerWithStateArchive:(id)archive;
- (void)updateOverrideNoteContainerViewModeIfNeeded;
- (void)updatePrimaryContainerViewAppearance;
- (void)updateSceneTitle:(id)title;
- (void)updateSplitViewForCurrentViewModeWithCompletion:(id)completion;
- (void)updateTrailingColumnWidth;
- (void)validateState;
- (void)willDismissSearch:(id)search;
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
    managedObjectContext = [v17 managedObjectContext];
    [(ICPersistenceConfiguration *)v3->_persistenceConfiguration setModernViewContext:managedObjectContext];

    [(ICPersistenceConfiguration *)v3->_persistenceConfiguration setMakeModernBackgroundContext:&stru_1006459F8];
    v19 = +[NotesApp sharedNotesApp];
    noteContext = [v19 noteContext];
    managedObjectContext2 = [noteContext managedObjectContext];
    [(ICPersistenceConfiguration *)v3->_persistenceConfiguration setLegacyViewContext:managedObjectContext2];

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
  window = [(ICViewControllerManager *)self window];
  behavior = [window behavior];

  return behavior;
}

- (ICWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

- (BOOL)isSearchActive
{
  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  navigationItem = [folderListViewController navigationItem];
  searchController = [navigationItem searchController];
  isActive = [searchController isActive];

  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  navigationItem2 = [currentNoteBrowseViewController navigationItem];
  searchController2 = [navigationItem2 searchController];
  LOBYTE(searchController) = [searchController2 isActive];

  return (isActive | searchController) & 1;
}

- (NSManagedObjectContext)modernManagedObjectContext
{
  persistenceConfiguration = [(ICViewControllerManager *)self persistenceConfiguration];
  modernViewContext = [persistenceConfiguration modernViewContext];

  return modernViewContext;
}

- (void)initializeLegacyNoteEditor
{
  legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];

  if (!legacyNoteEditorViewController)
  {
    v4 = [[NotesDisplayController alloc] initWithArchivedConfiguration:0];
    [(ICViewControllerManager *)self setLegacyNoteEditorViewController:v4];

    legacyNoteEditorViewController2 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    [legacyNoteEditorViewController2 setViewControllerManager:self];

    legacyNoteEditorViewController3 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    [legacyNoteEditorViewController3 setDelegate:self];
  }
}

- (ICNoteEditorViewController)noteEditorViewController
{
  systemPaperViewController = [(ICViewControllerManager *)self systemPaperViewController];

  if (systemPaperViewController)
  {
    systemPaperViewController2 = [(ICViewControllerManager *)self systemPaperViewController];
    currentNoteEditorViewController = [systemPaperViewController2 currentNoteEditorViewController];
  }

  else
  {
    currentNoteEditorViewController = self->_noteEditorViewController;
  }

  return currentNoteEditorViewController;
}

- (BOOL)isTrashFolderSelected
{
  objc_opt_class();
  selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
  v4 = ICDynamicCast();

  if ([v4 isTrashFolder])
  {
    isTrashFolder = 1;
  }

  else
  {
    objc_opt_class();
    selectedNoteBrowseContainerItemID2 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    v7 = ICDynamicCast();

    if ([v7 ic_isEntityOfClass:objc_opt_class()])
    {
      modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
      v9 = [modernManagedObjectContext ic_existingObjectWithID:v7];

      isTrashFolder = [v9 isTrashFolder];
    }

    else
    {
      isTrashFolder = 0;
    }
  }

  return isTrashFolder;
}

- (ICItemIdentifier)selectedNoteBrowseContainerItemID
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    selectedNoteBrowseContainerItemID = [selectionStateController selectedNoteBrowseContainerItemID];
  }

  else
  {
    selectedNoteBrowseContainerItemID = self->_selectedNoteBrowseContainerItemID;
  }

  return selectedNoteBrowseContainerItemID;
}

- (BOOL)canAddNewNoteToSelectedContainers
{
  selectedContainerIdentifiers = [(ICViewControllerManager *)self selectedContainerIdentifiers];
  modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = selectedContainerIdentifiers;
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
          v8 = modernManagedObjectContext;
          v18 = v8;
          v9 = v7;
          v19 = v9;
          [v8 performBlockAndWait:v17];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v22[5];
            isSharedReadOnly = [v10 isSharedReadOnly];

            if (isSharedReadOnly)
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
  selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
  tagSelection = [(ICViewControllerManager *)self tagSelection];
  v5 = tagSelection;
  if (selectedNoteBrowseContainerItemID)
  {
    includedObjectIDs = [NSSet ic_setFromNonNilObject:selectedNoteBrowseContainerItemID];
LABEL_3:
    v7 = includedObjectIDs;
    goto LABEL_9;
  }

  if (!tagSelection)
  {
    goto LABEL_8;
  }

  mode = [tagSelection mode];
  if (!mode)
  {
    includedObjectIDs = [v5 includedObjectIDs];
    goto LABEL_3;
  }

  if (mode == 1)
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
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    tagSelection = [selectionStateController tagSelection];
  }

  else
  {
    tagSelection = self->_tagSelection;
  }

  return tagSelection;
}

- (BOOL)hasCompactWidth
{
  window = [(ICViewControllerManager *)self window];
  traitCollection = [window traitCollection];
  ic_hasCompactWidth = [traitCollection ic_hasCompactWidth];

  return ic_hasCompactWidth;
}

- (BOOL)hasCompactHeight
{
  window = [(ICViewControllerManager *)self window];
  traitCollection = [window traitCollection];
  ic_hasCompactHeight = [traitCollection ic_hasCompactHeight];

  return ic_hasCompactHeight;
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
    childPrimaryViewController = [(ICViewControllerManager *)self childPrimaryViewController];
    v6 = [[UINavigationController alloc] initWithRootViewController:childPrimaryViewController];
    v7 = self->_primaryNavigationController;
    self->_primaryNavigationController = v6;

    navigationBar = [(UINavigationController *)self->_primaryNavigationController navigationBar];
    [navigationBar setPrefersLargeTitles:1];

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

    navigationBar = [(UINavigationController *)self->_compactNavigationController navigationBar];
    [navigationBar setPrefersLargeTitles:1];

    [(UINavigationController *)self->_compactNavigationController setToolbarHidden:0];
    [(UINavigationController *)self->_compactNavigationController setDelegate:self];
    compactNavigationController = self->_compactNavigationController;
  }

  v7 = compactNavigationController;

  return v7;
}

- (ICNote)selectedModernNote
{
  selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
  ic_isModernNoteType = [selectedNoteObjectID ic_isModernNoteType];

  if (ic_isModernNoteType)
  {
    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    selectedNoteObjectID2 = [(ICViewControllerManager *)self selectedNoteObjectID];
    v7 = [modernManagedObjectContext ic_existingObjectWithID:selectedNoteObjectID2];
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
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    selectedNoteObjectID = [selectionStateController selectedNoteObjectID];
  }

  else
  {
    selectedNoteObjectID = self->_selectedNoteObjectID;
  }

  return selectedNoteObjectID;
}

- (ICActivityStreamSelection)activityStreamSelection
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    activityStreamSelection = [selectionStateController activityStreamSelection];
  }

  else
  {
    activityStreamSelection = self->_activityStreamSelection;
  }

  return activityStreamSelection;
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
  selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];

  if (selectedNoteObjectID)
  {
    selectedNoteObjectID2 = [(ICViewControllerManager *)self selectedNoteObjectID];
    LOBYTE(selectedNoteBrowseContainerItemID) = [selectedNoteObjectID2 ic_isLegacyNoteType];
LABEL_5:

    return selectedNoteBrowseContainerItemID;
  }

  selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];

  if (selectedNoteBrowseContainerItemID)
  {
    objc_opt_class();
    selectedNoteObjectID2 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    v6 = ICDynamicCast();
    LOBYTE(selectedNoteBrowseContainerItemID) = [v6 ic_isLegacyContainerType];

    goto LABEL_5;
  }

  return selectedNoteBrowseContainerItemID;
}

- (BOOL)canTilePrimaryContent
{
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  v3 = [mainSplitViewController _canTileSidebarColumn:0];

  return v3;
}

- (void)updateHostedNotesAppearance
{
  hostedNotesAppearanceCoordinator = [(ICViewControllerManager *)self hostedNotesAppearanceCoordinator];
  [hostedNotesAppearanceCoordinator updateAppearance];
}

- (void)setSelectionStateTrackingEnabled:(BOOL)enabled
{
  if (enabled)
  {
    self->_selectionStateTrackingEnabled = 1;
    v4 = [_TtC11MobileNotes26ICSelectionStateController alloc];
    persistenceConfiguration = [(ICViewControllerManager *)self persistenceConfiguration];
    v6 = [(ICSelectionStateController *)v4 initWithPersistenceConfiguration:persistenceConfiguration];
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
  persistenceConfiguration = [(ICViewControllerManager *)self persistenceConfiguration];
  legacyViewContext = [persistenceConfiguration legacyViewContext];

  return legacyViewContext;
}

- (void)setPersistenceConfiguration:(id)configuration
{
  objc_storeStrong(&self->_persistenceConfiguration, configuration);
  configurationCopy = configuration;
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
    window = [(ICViewControllerManager *)self window];
    v7 = [v3 initWithSubTrackerName:v5 window:window];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:self->_eventReporter];
  }

  v10 = self->_eventReporter;

  return v10;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = ICNAEventReporterLostSessionNotification;
  object = [sessionCopy object];

  [v8 removeObserver:self name:v6 object:object];
}

- (NSUndoManager)visibleViewsUndoManager
{
  undoManager = [(ICViewControllerManager *)self undoManager];
  if (([undoManager canUndo] & 1) == 0 && (objc_msgSend(undoManager, "canRedo") & 1) == 0)
  {
    window = [(ICViewControllerManager *)self window];
    ic_topmostPresentedViewController = [window ic_topmostPresentedViewController];
    if (ic_topmostPresentedViewController)
    {
LABEL_4:

      goto LABEL_7;
    }

    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    ic_isViewVisible = [noteEditorViewController ic_isViewVisible];

    if (ic_isViewVisible && ![(ICViewControllerManager *)self isInHTMLEditorMode])
    {
      window = [(ICViewControllerManager *)self noteEditorViewController];
      textViewUndoManager = [window textViewUndoManager];
      ic_topmostPresentedViewController = undoManager;
      undoManager = textViewUndoManager;
      goto LABEL_4;
    }
  }

LABEL_7:

  return undoManager;
}

- (NSSet)excludedContainerIdentifiers
{
  tagSelection = [(ICViewControllerManager *)self tagSelection];

  if (tagSelection)
  {
    tagSelection2 = [(ICViewControllerManager *)self tagSelection];
    mode = [tagSelection2 mode];

    if (!mode)
    {
      tagSelection3 = [(ICViewControllerManager *)self tagSelection];
      excludedObjectIDs = [tagSelection3 excludedObjectIDs];
      goto LABEL_6;
    }

    if (mode == 2)
    {
      tagSelection3 = +[ICTagAllTagsItemIdentifier sharedItemIdentifier];
      excludedObjectIDs = [NSSet setWithObject:tagSelection3];
LABEL_6:
      tagSelection = excludedObjectIDs;

      goto LABEL_8;
    }

    tagSelection = 0;
  }

LABEL_8:

  return tagSelection;
}

- (NSArray)selectedContainerObjectIDs
{
  v3 = +[NSMutableArray array];
  rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
  navigationController = [rootNoteBrowseViewController navigationController];

  objc_opt_class();
  selectedContainerItemID = [(ICViewControllerManager *)self selectedContainerItemID];
  v7 = ICDynamicCast();

  if (navigationController)
  {
    v22 = v7;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    viewControllers = [navigationController viewControllers];
    v9 = [viewControllers countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          noteCollection = [v14 noteCollection];

          if (noteCollection)
          {
            noteCollection2 = [v14 noteCollection];
            goto LABEL_12;
          }

          noteContainer = [v14 noteContainer];

          if (noteContainer)
          {
            noteCollection2 = [v14 noteContainer];
LABEL_12:
            v18 = noteCollection2;
            objectID = [noteCollection2 objectID];
            [v3 ic_addNonNilObject:objectID];
          }

          continue;
        }
      }

      v10 = [viewControllers countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
  navigationController = [rootNoteBrowseViewController navigationController];
  viewControllers = [navigationController viewControllers];

  obj = viewControllers;
  v6 = [viewControllers countByEnumeratingWithState:&v26 objects:v30 count:16];
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
        noteCollection = [v10 noteCollection];
        objectID = [noteCollection objectID];
        if (objectID)
        {
          objectID2 = objectID;
        }

        else
        {
          objc_opt_class();
          noteContainer = [v10 noteContainer];
          v15 = ICDynamicCast();
          objectID2 = [v15 objectID];

          if (!objectID2)
          {
            goto LABEL_10;
          }
        }

        collectionView = [v10 collectionView];
        indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
        v18 = [indexPathsForVisibleItems sortedArrayUsingSelector:"compare:"];

        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1000412B0;
        v24[3] = &unk_100645A68;
        v25 = v10;
        v19 = [v18 ic_compactMap:v24];
        [v23 setObject:v19 forKeyedSubscript:objectID2];

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

  rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
  collectionView = [rootNoteBrowseViewController collectionView];
  [collectionView bounds];
  v5 = [collectionView adjustedNumberOfGalleryColumnsForWidth:CGRectGetWidth(v7)];

  return v5;
}

- (BOOL)isPrimaryContentVisible
{
  if ([(ICViewControllerManager *)self hasCompactWidth])
  {
    return 0;
  }

  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  v5 = [mainSplitViewController viewControllerForColumn:0];
  ic_isViewVisible = [v5 ic_isViewVisible];

  return ic_isViewVisible;
}

- (BOOL)isSupplementaryContentVisible
{
  if ([(ICViewControllerManager *)self hasCompactWidth])
  {
    return 0;
  }

  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  v5 = [mainSplitViewController viewControllerForColumn:1];
  ic_isViewVisible = [v5 ic_isViewVisible];

  return ic_isViewVisible;
}

- (BOOL)isTrailingContentVisible
{
  if ([(ICViewControllerManager *)self behavior]== 3)
  {
    trailingSidebarViewController = [(ICViewControllerManager *)self trailingSidebarViewController];
    if (trailingSidebarViewController)
    {
      trailingSidebarViewController2 = [(ICViewControllerManager *)self trailingSidebarViewController];
      v5 = [trailingSidebarViewController2 isSidebarHidden] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    trailingSidebarSplitViewController = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
    displayMode = [trailingSidebarSplitViewController displayMode];

    return ((displayMode & 0xFFFFFFFFFFFFFFFELL) == 2) & ~[(ICViewControllerManager *)self hasCompactWidth];
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

  outerSplitViewController = [(ICViewControllerManager *)self outerSplitViewController];
  isCollapsed = [outerSplitViewController isCollapsed];

  return isCollapsed ^ 1;
}

- (ICItemIdentifier)selectedContainerItemID
{
  overrideContainerIdentifier = [(ICViewControllerManager *)self overrideContainerIdentifier];

  if (overrideContainerIdentifier)
  {
    overrideContainerIdentifier2 = [(ICViewControllerManager *)self overrideContainerIdentifier];
LABEL_7:
    firstRelevantItemIdentifier = overrideContainerIdentifier2;
    goto LABEL_8;
  }

  if (![(ICViewControllerManager *)self isSearchActiveWithQuery])
  {
    overrideContainerIdentifier2 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    goto LABEL_7;
  }

  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  folderDataSource = [folderListViewController folderDataSource];
  countOfAllVisibleAccounts = [folderDataSource countOfAllVisibleAccounts];

  if (countOfAllVisibleAccounts == 1)
  {
    folderListViewController2 = [(ICViewControllerManager *)self folderListViewController];
    folderDataSource2 = [folderListViewController2 folderDataSource];
    firstRelevantItemIdentifier = [folderDataSource2 firstRelevantItemIdentifier];
  }

  else
  {
    firstRelevantItemIdentifier = 0;
  }

LABEL_8:

  return firstRelevantItemIdentifier;
}

- (void)launchNotesAppFromLockscreenWithQueryOptions:(id)options completionBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  firstResponder = [noteEditorViewController firstResponder];
  [firstResponder resignFirstResponder];

  v10 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v11 = +[NSBundle mainBundle];
  bundleIdentifier = [v11 bundleIdentifier];

  v13 = [optionsCopy mutableCopy];
  stringValue = [&__kCFBooleanTrue stringValue];
  [v13 setObject:stringValue forKeyedSubscript:ICQuickNoteURLOptionIsContinuing];

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
  v21 = blockCopy;
  v19 = blockCopy;
  [v10 openApplication:bundleIdentifier withOptions:v18 completion:v20];
}

- (void)setupWithWindow:(id)window stateRestoreArchive:(id)archive completion:(id)completion
{
  windowCopy = window;
  archiveCopy = archive;
  completionCopy = completion;
  [(ICViewControllerManager *)self setWindow:windowCopy];
  [windowCopy setViewControllerManager:self];
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
    [ICDebuggingViewController setupDebuggingGestureInWindow:windowCopy];
  }

  windowScene = [windowCopy windowScene];
  screenshotService = [windowScene screenshotService];
  [screenshotService setDelegate:self];

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
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    [noteEditorViewController setDelegate:self];

    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    [(ICViewControllerManager *)self initializeSecondaryNavigationControllerWithViewController:noteEditorViewController2];

    secondaryNavigationController = [(ICViewControllerManager *)self secondaryNavigationController];
    [windowCopy setRootViewController:secondaryNavigationController];

    [windowCopy setWindowIdentifier:@"com.apple.notes.secure-window-identifier"];
  }

  else
  {
    if (!archiveCopy)
    {
      archiveCopy = +[ICWindowStateArchive windowStateArchiveWithDefaultState];
    }

    overrideContainerIdentifier = [(ICViewControllerManager *)self overrideContainerIdentifier];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      overrideContainerIdentifier2 = [(ICViewControllerManager *)self overrideContainerIdentifier];
      [archiveCopy setCurrentVirtualSmartFolderIdentifier:overrideContainerIdentifier2];
    }

    windowIdentifier = [archiveCopy windowIdentifier];
    [windowCopy setWindowIdentifier:windowIdentifier];

    toolPickerIdentifier = [archiveCopy toolPickerIdentifier];
    [windowCopy setToolPickerIdentifier:toolPickerIdentifier];

    [(ICViewControllerManager *)self applyStateRestoreArchive:archiveCopy completion:completionCopy];
    if ([windowCopy behavior] == 1)
    {
      v32 = [[ICHostedNotesAppearanceCoordinator alloc] initWithDelegate:self];
      hostedNotesAppearanceCoordinator = self->_hostedNotesAppearanceCoordinator;
      self->_hostedNotesAppearanceCoordinator = v32;
    }
  }
}

- (void)applyStateRestoreArchive:(id)archive completion:(id)completion
{
  archiveCopy = archive;
  completionCopy = completion;
  [(ICViewControllerManager *)self setIsApplyingStateRestoreArchive:1];
  hostApplicationIdentifier = [archiveCopy hostApplicationIdentifier];
  v9 = [hostApplicationIdentifier length];

  if (v9)
  {
    hostApplicationIdentifier2 = [archiveCopy hostApplicationIdentifier];
    v11 = [hostApplicationIdentifier2 copy];
    [(ICViewControllerManager *)self setHostApplicationIdentifier:v11];
  }

  if ([(ICViewControllerManager *)self behavior]== 1)
  {
    v12 = +[ICNoteContext sharedContext];
    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    [v12 ensureModernAccountExistsInContext:modernManagedObjectContext];
  }

  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    [selectionStateController setupWithArchive:archiveCopy];
  }

  currentSearchTerm = [archiveCopy currentSearchTerm];
  if (!currentSearchTerm || (-[ICViewControllerManager currentSearchBarViewController](self, "currentSearchBarViewController"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 ic_isViewVisible], v16, !v17))
  {
    v19 = +[UIApplication sharedApplication];
    supportsMultipleScenes = [v19 supportsMultipleScenes];

    if ((supportsMultipleScenes & 1) == 0)
    {
      [archiveCopy setIsAuxiliaryWindow:0];
    }

    if (-[ICViewControllerManager selectionStateTrackingEnabled](self, "selectionStateTrackingEnabled") || ([archiveCopy currentObjectIDURL], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
    {
LABEL_34:
      mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];

      if (mainSplitViewController)
      {
        [archiveCopy setIsPrimaryContentVisible:{-[ICViewControllerManager isPrimaryContentVisible](self, "isPrimaryContentVisible")}];
        [archiveCopy setIsSupplementaryContentVisible:{-[ICViewControllerManager isSupplementaryContentVisible](self, "isSupplementaryContentVisible")}];
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
        if (![(ICViewControllerManager *)self validateStateRestoreArchive:archiveCopy])
        {
          v47 = +[ICWindowStateArchive windowStateArchiveWithEmptyState];

          archiveCopy = v47;
        }
      }

      if (![archiveCopy noteCreationApproach])
      {
        v58 = 0;
        if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
        {
          goto LABEL_66;
        }

        selectionStateController3 = 0;
        goto LABEL_65;
      }

      v48 = [objc_opt_class() isNoteCreateApproachForScrapPaper:{objc_msgSend(archiveCopy, "noteCreationApproach")}];
      if (!v48)
      {
        goto LABEL_49;
      }

      modernManagedObjectContext2 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v50 = [ICAccount allActiveAccountsInContext:modernManagedObjectContext2];
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

      modernManagedObjectContext3 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v55 = [ICAccount allActiveAccountsInContext:modernManagedObjectContext3];
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

      v77 = completionCopy;
      modernManagedObjectContext4 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v69 = [ICAccount allAccountsInContext:modernManagedObjectContext4];
      if ([v69 count])
      {
      }

      else
      {
        v70 = +[NotesApp sharedNotesApp];
        noteContext = [v70 noteContext];
        allAccounts = [noteContext allAccounts];
        v73 = [allAccounts count];

        if (!v73)
        {
          [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager applyStateRestoreArchive:completion:]" simulateCrash:1 showAlert:0 format:@"Unable to create local account."];
          v58 = 0;
LABEL_76:
          completionCopy = v77;
LABEL_50:
          v59 = -[ICViewControllerManager containerObjectIDForNewNoteWithApproach:](self, "containerObjectIDForNewNoteWithApproach:", [archiveCopy noteCreationApproach]);
          if (!v59)
          {
            if ((v58 & 1) == 0)
            {
              +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "-[ICViewControllerManager applyStateRestoreArchive:completion:]", 1, 0, @"Couldn't get containerObjectID for approach %ld. Are there no accounts on the device?", [archiveCopy noteCreationApproach]);
            }

            selectionStateController3 = 0;
LABEL_62:

            if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
            {
              if (selectionStateController3)
              {
                selectionStateController2 = [(ICViewControllerManager *)self selectionStateController];
                [selectionStateController2 adoptModel:selectionStateController3 withArchive:archiveCopy systemPaperAccountAlert:v58 completion:completionCopy];

LABEL_67:
                goto LABEL_68;
              }

LABEL_66:
              selectionStateController3 = [(ICViewControllerManager *)self selectionStateController];
              [(ICSelectionStateModel *)selectionStateController3 adoptCurrentModelWithArchive:archiveCopy systemPaperAccountAlert:v58 completion:completionCopy];
              goto LABEL_67;
            }

LABEL_65:
            [(ICViewControllerManager *)self setupViewsFromWindowStateArchive:archiveCopy systemPaperShowModernAccountAlert:v58 completion:completionCopy];
            goto LABEL_67;
          }

          eventReporter = [(ICViewControllerManager *)self eventReporter];
          [eventReporter pushNoteCreateDataWithCreateApproach:{objc_msgSend(archiveCopy, "noteCreationApproach")}];

          objc_opt_class();
          v61 = [(ICViewControllerManager *)self createNewNoteInContainerWithObjectID:v59 isSystemPaper:v48];
          v62 = ICDynamicCast();

          eventReporter2 = [(ICViewControllerManager *)self eventReporter];
          [eventReporter2 popNoteCreateData];

          if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
          {
            if (!v62)
            {
              selectionStateController3 = 0;
              goto LABEL_61;
            }

            selectionStateController3 = objc_alloc_init(_TtC11MobileNotes21ICSelectionStateModel);
            objectID = [v62 objectID];
            [(ICSelectionStateModel *)selectionStateController3 setSelectedNoteObjectID:objectID];
          }

          else
          {
            objectID = [v62 objectID];
            uRIRepresentation = [objectID URIRepresentation];
            [archiveCopy setCurrentObjectIDURL:uRIRepresentation];

            selectionStateController3 = 0;
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

    currentObjectIDURL = [archiveCopy currentObjectIDURL];
    v23 = [(ICViewControllerManager *)self managedObjectIDFromURL:currentObjectIDURL];
    if (![v23 ic_isModernNoteType] || (-[ICViewControllerManager selectedContainerIdentifiers](self, "selectedContainerIdentifiers"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count"), v24, !v25))
    {
LABEL_27:
      if ([v23 ic_isBaseAttachmentType])
      {
        modernManagedObjectContext5 = [(ICViewControllerManager *)self modernManagedObjectContext];
        v36 = [modernManagedObjectContext5 ic_existingObjectWithID:v23];

        note = [v36 note];
        folder = [note folder];
        v39 = folder;
        if (v36 && note && folder)
        {
          [folder objectID];
          v40 = v76 = completionCopy;
          [v40 URIRepresentation];
          v41 = v75 = currentObjectIDURL;
          v79 = v41;
          v42 = [NSArray arrayWithObjects:&v79 count:1];
          [archiveCopy setCurrentContainerObjectIDURLs:v42];

          completionCopy = v76;
          objectID2 = [note objectID];
          uRIRepresentation2 = [objectID2 URIRepresentation];
          [archiveCopy setCurrentNoteObjectIDURL:uRIRepresentation2];

          currentObjectIDURL = v75;
          v45 = [ICTextViewScrollState scrollStateForAttachment:v36 inNote:note];
          [archiveCopy setScrollState:v45];
        }
      }

      goto LABEL_34;
    }

    objc_opt_class();
    selectedContainerItemID = [(ICViewControllerManager *)self selectedContainerItemID];
    v27 = ICDynamicCast();

    if (![(ICViewControllerManager *)self isSelectionAppropriateForObjectID:v23])
    {
LABEL_26:

      goto LABEL_27;
    }

    if ([(ICViewControllerManager *)self isTagSelected])
    {
      selectedContainerIdentifiers = [(ICViewControllerManager *)self selectedContainerIdentifiers];
      allObjects = [selectedContainerIdentifiers allObjects];
      [allObjects ic_compactMap:&stru_100645B38];
      v31 = v30 = completionCopy;
      [archiveCopy setCurrentTagIdentifiers:v31];

      completionCopy = v30;
    }

    else if (v27)
    {
      type = [v27 type];
      [archiveCopy setCurrentVirtualSmartFolderType:type];

      selectedContainerIdentifiers = [v27 accountObjectID];
      allObjects = [selectedContainerIdentifiers URIRepresentation];
      [archiveCopy setCurrentVirtualSmartFolderAccountObjectIDURL:allObjects];
    }

    else
    {
      selectedContainerObjectIDs = [(ICViewControllerManager *)self selectedContainerObjectIDs];

      if (!selectedContainerObjectIDs)
      {
LABEL_25:
        uRIRepresentation3 = [v23 URIRepresentation];
        [archiveCopy setCurrentNoteObjectIDURL:uRIRepresentation3];

        [archiveCopy setCurrentObjectIDURL:0];
        goto LABEL_26;
      }

      selectedContainerIdentifiers = [(ICViewControllerManager *)self selectedContainerObjectIDs];
      allObjects = [selectedContainerIdentifiers ic_map:&stru_100645B78];
      [archiveCopy setCurrentContainerObjectIDURLs:allObjects];
    }

    goto LABEL_25;
  }

  currentSearchBarViewController = [(ICViewControllerManager *)self currentSearchBarViewController];
  [currentSearchBarViewController startSearchWithSearchQuery:currentSearchTerm searchTokens:0 searchScope:0 becomeFirstResponder:1];

  [(ICViewControllerManager *)self setIsApplyingStateRestoreArchive:0];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_68:
}

- (void)setupViewsFromWindowStateArchive:(id)archive systemPaperShowModernAccountAlert:(BOOL)alert completion:(id)completion
{
  alertCopy = alert;
  archiveCopy = archive;
  completionCopy = completion;
  window = [(ICViewControllerManager *)self window];
  _isSecure = [objc_opt_class() _isSecure];

  if (_isSecure)
  {
    window2 = [(ICViewControllerManager *)self window];
    [NSException raise:NSInternalInconsistencyException format:@"Unexpectedly setting up main UI in secure window class: %@", window2];
  }

  folderListViewController = [(ICViewControllerManager *)self folderListViewController];

  v14 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D7F64(archiveCopy);
  }

  v15 = &off_100531000;
  if ([archiveCopy isSystemPaper])
  {
    v51 = completionCopy;
    [(ICViewControllerManager *)self setIsAuxiliary:1];
    initialSystemPaperLink = [archiveCopy initialSystemPaperLink];
    initialSystemPaperImageData = [archiveCopy initialSystemPaperImageData];
    v18 = [ICSystemPaperViewController newSystemPaperViewControllerWithIncomingLink:initialSystemPaperLink incomingImageData:initialSystemPaperImageData];
    [v18 setViewControllerManager:self];
    [(ICViewControllerManager *)self setSystemPaperViewController:v18];
    if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
    {
      selectionStateController = [(ICViewControllerManager *)self selectionStateController];
      selectedNoteObjectID = [selectionStateController selectedNoteObjectID];

      if (!selectedNoteObjectID)
      {
        goto LABEL_18;
      }

LABEL_13:
      modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
      v27 = [ICNote ic_existingObjectWithID:selectedNoteObjectID context:modernManagedObjectContext];

      if (!v27)
      {
        [ICAssert handleFailedAssertWithCondition:"((resolvedNote) != nil)" functionName:"[ICViewControllerManager setupViewsFromWindowStateArchive:systemPaperShowModernAccountAlert:completion:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "resolvedNote"];
      }

      systemPaperViewController = [(ICViewControllerManager *)self systemPaperViewController];
      [systemPaperViewController setCurrentNote:v27 animated:0 direction:0 setEditing:objc_msgSend(archiveCopy showInkPicker:{"shouldStartEditing"), 0}];

      if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
      {
        [(ICViewControllerManager *)self setSelectedNoteObjectID:selectedNoteObjectID];
      }

      goto LABEL_18;
    }

    currentObjectIDURL = [archiveCopy currentObjectIDURL];

    if (currentObjectIDURL)
    {
      currentObjectIDURL2 = [archiveCopy currentObjectIDURL];
      selectedNoteObjectID = [(ICViewControllerManager *)self managedObjectIDFromURL:currentObjectIDURL2];

      if (selectedNoteObjectID)
      {
        goto LABEL_13;
      }

      [ICAssert handleFailedAssertWithCondition:"((systemPaperID) != nil)" functionName:"[ICViewControllerManager setupViewsFromWindowStateArchive:systemPaperShowModernAccountAlert:completion:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "systemPaperID"];
    }

LABEL_18:
    systemPaperViewController2 = [(ICViewControllerManager *)self systemPaperViewController];
    [systemPaperViewController2 setShouldShowModernAccountAlert:alertCopy];

    systemPaperViewController3 = [(ICViewControllerManager *)self systemPaperViewController];
    window3 = [(ICViewControllerManager *)self window];
    [window3 setRootViewController:systemPaperViewController3];

    completionCopy = v51;
    v15 = &off_100531000;
    goto LABEL_31;
  }

  window4 = [(ICViewControllerManager *)self window];
  rootViewController = [window4 rootViewController];

  -[ICViewControllerManager setIsAuxiliary:](self, "setIsAuxiliary:", [archiveCopy isAuxiliaryWindow]);
  [(ICViewControllerManager *)self initializeMainSplitViewWithStateRestoreArchive:archiveCopy];
  if ([archiveCopy isAuxiliaryWindow])
  {
    initialSystemPaperLink = [(ICViewControllerManager *)self secondaryNavigationController];
    window5 = [(ICViewControllerManager *)self window];
    [window5 setRootViewController:initialSystemPaperLink];
  }

  else
  {
    v32 = [[ICActivityStreamNavigationController alloc] initWithCoordinator:self hasInteractiveSizing:0];
    [(ICViewControllerManager *)self setActivityStreamNavigationController:v32];

    selectedModernNote = [(ICViewControllerManager *)self selectedModernNote];
    activityStreamNavigationController = [(ICViewControllerManager *)self activityStreamNavigationController];
    [activityStreamNavigationController setObject:selectedModernNote];

    activityStreamSelection = [(ICViewControllerManager *)self activityStreamSelection];
    activityStreamNavigationController2 = [(ICViewControllerManager *)self activityStreamNavigationController];
    [activityStreamNavigationController2 setSelection:activityStreamSelection];

    if (rootViewController)
    {
      trailingSidebarContainerViewController = [(ICViewControllerManager *)self trailingSidebarContainerViewController];
      isSidebarHidden = [trailingSidebarContainerViewController isSidebarHidden];
      v39 = isSidebarHidden ^ [archiveCopy isTrailingContentVisible];
    }

    else
    {
      v39 = 0;
    }

    [(ICViewControllerManager *)self initializeTrailingSidebarSplitViewWithStateRestoreArchive:archiveCopy];
    trailingSidebarContainerViewController2 = [(ICViewControllerManager *)self trailingSidebarContainerViewController];
    [trailingSidebarContainerViewController2 setResizesWindow:v39];

    if ([(ICViewControllerManager *)self behavior]== 3)
    {
      [(ICViewControllerManager *)self trailingSidebarViewController];
    }

    else
    {
      [(ICViewControllerManager *)self outerSplitViewController];
    }
    v41 = ;
    window6 = [(ICViewControllerManager *)self window];
    [window6 setRootViewController:v41];

    if (rootViewController)
    {
      trailingSidebarViewController = [(ICViewControllerManager *)self trailingSidebarViewController];
      view = [trailingSidebarViewController view];
      [view layoutIfNeeded];
    }

    if (![(ICViewControllerManager *)self hasCompactWidth]&& [(ICViewControllerManager *)self behavior]!= 3)
    {
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_10004330C;
      v55[3] = &unk_100645BA0;
      v56 = archiveCopy;
      selfCopy = self;
      [UIView performWithoutAnimation:v55];
    }

    initialSystemPaperLink = [(ICViewControllerManager *)self trailingSidebarContainerViewController];
    [initialSystemPaperLink setResizesWindow:1];
  }

LABEL_31:

  v52[0] = _NSConcreteStackBlock;
  v52[1] = *(v15 + 334);
  v52[2] = sub_10004368C;
  v52[3] = &unk_100645BF0;
  v52[4] = self;
  v53 = archiveCopy;
  v54 = completionCopy;
  v45 = completionCopy;
  v46 = archiveCopy;
  v47 = objc_retainBlock(v52);
  folderListViewController2 = [(ICViewControllerManager *)self folderListViewController];
  if (folderListViewController)
  {
    folderDataSource = [folderListViewController2 folderDataSource];
    indexer = [folderDataSource indexer];
    (v47[2])(v47, indexer);
  }

  else
  {
    [folderListViewController2 reloadListWithDataIndexedBlock:v47 dataRenderedBlock:0];
  }
}

- (void)dismissOverlayContent
{
  [(ICViewControllerManager *)self dismissPrimaryOverlayContent];

  [(ICViewControllerManager *)self dismissSupplementaryOverlayContent];
}

- (void)showAccountListAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(ICViewControllerManager *)self isSplitViewExpanded])
  {
    mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController ic_showColumn:0 animated:animatedCopy];
  }

  else
  {
    mainSplitViewController = [(ICViewControllerManager *)self compactNavigationController];
    v5 = [mainSplitViewController popToRootViewControllerAnimated:animatedCopy];
  }
}

- (void)showAttachmentBrowser
{
  currentAttachmentBrowserViewController = [(ICViewControllerManager *)self currentAttachmentBrowserViewController];

  if (!currentAttachmentBrowserViewController)
  {
    v4 = [ICViewAttachmentsActivity alloc];
    mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
    eventReporter = [(ICViewControllerManager *)self eventReporter];
    v7 = [(ICViewAttachmentsActivity *)v4 initWithPresentingViewController:mainSplitViewController eventReporter:eventReporter];

    [(ICViewAttachmentsActivity *)v7 performActivityWithCompletion:0];
  }
}

- (void)showTagSelection:(id)selection
{
  selectionCopy = selection;
  v16 = selectionCopy;
  if (selectionCopy && ![selectionCopy isEmpty])
  {
    includedObjectIDs = [v16 includedObjectIDs];
    tagSelection = [NSMutableSet setWithSet:includedObjectIDs];

    excludedObjectIDs = [v16 excludedObjectIDs];
    v12 = [NSMutableSet setWithSet:excludedObjectIDs];

    v13 = tagSelection;
    if ([v16 mode] == 1 || (v13 = v12, objc_msgSend(v16, "mode") == 2))
    {
      v14 = +[ICTagAllTagsItemIdentifier sharedItemIdentifier];
      [v13 addObject:v14];
    }

    v15 = [v16 copy];
    [(ICViewControllerManager *)self setTagSelection:v15];

    [(ICViewControllerManager *)self showContainerWithIdentifiers:tagSelection excludingIdentifiers:v12 usingRootViewController:1 deferUntilDataLoaded:1 keepEditorShowing:&__kCFBooleanTrue animated:1];
  }

  else
  {
    if (![(ICViewControllerManager *)self hasCompactWidth])
    {
      mostRecentNonSearchContainerItemID = [(ICViewControllerManager *)self mostRecentNonSearchContainerItemID];
      if (mostRecentNonSearchContainerItemID)
      {
        v6 = mostRecentNonSearchContainerItemID;
        selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];

        if (!selectedNoteBrowseContainerItemID)
        {
          mostRecentNonSearchContainerItemID2 = [(ICViewControllerManager *)self mostRecentNonSearchContainerItemID];
          [(ICViewControllerManager *)self selectContainerWithIdentifier:mostRecentNonSearchContainerItemID2 usingRootViewController:1 deferUntilDataLoaded:0 animated:0];
        }
      }
    }

    tagSelection = [(ICViewControllerManager *)self tagSelection];
    [tagSelection clear];
  }
}

- (void)showContainerWithIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers usingRootViewController:(BOOL)controller deferUntilDataLoaded:(BOOL)loaded keepEditorShowing:(id)showing animated:(BOOL)animated
{
  loadedCopy = loaded;
  controllerCopy = controller;
  identifiersCopy = identifiers;
  excludingIdentifiersCopy = excludingIdentifiers;
  showingCopy = showing;
  v17 = [identifiersCopy ic_containsObjectPassingTest:&stru_100645C30];
  v18 = [identifiersCopy ic_containsObjectPassingTest:&stru_100645C50];
  v19 = [identifiersCopy count];
  v20 = 0;
  if ((v18 & 1) == 0 && v19)
  {
    v20 = ([(ICViewControllerManager *)self noteContainerViewMode]== 0) | v17;
  }

  v21 = [(ICViewControllerManager *)self containerItemIDForContainerIdentifiers:identifiersCopy];
  v22 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:v21];
  if (v22 == -1)
  {
    if ([(ICViewControllerManager *)self preferredNoteContainerViewMode]== -1)
    {
      goto LABEL_14;
    }

    preferredNoteContainerViewMode = [(ICViewControllerManager *)self preferredNoteContainerViewMode];
    [(ICViewControllerManager *)self setPreferredNoteContainerViewMode:-1];
    if (preferredNoteContainerViewMode == -1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    preferredNoteContainerViewMode = v22;
    if ([(ICViewControllerManager *)self noteContainerViewMode]!= v22 && [(ICViewControllerManager *)self preferredNoteContainerViewMode]== -1)
    {
      [(ICViewControllerManager *)self setPreferredNoteContainerViewMode:[(ICViewControllerManager *)self noteContainerViewMode]];
    }
  }

  if (preferredNoteContainerViewMode == [(ICViewControllerManager *)self noteContainerViewMode]|| (self->_noteContainerViewMode = preferredNoteContainerViewMode, v24 = [[ICNoteBrowseViewController alloc] initWithViewMode:preferredNoteContainerViewMode viewControllerManager:self], [(ICViewControllerManager *)self setRootNoteBrowseViewController:v24], v24, ![(ICViewControllerManager *)self isSplitViewExpanded]))
  {
LABEL_14:
    LOBYTE(v26) = animated;
    [(ICViewControllerManager *)self showContainerWithIdentifiers:identifiersCopy excludingIdentifiers:excludingIdentifiersCopy usingRootViewController:controllerCopy deferUntilDataLoaded:loadedCopy dismissOverlayContent:v20 & 1 keepEditorShowing:showingCopy animated:v26];
    goto LABEL_15;
  }

  objc_initWeak(&location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100044100;
  v29[3] = &unk_100645CA0;
  objc_copyWeak(&v33, &location);
  v30 = identifiersCopy;
  v31 = excludingIdentifiersCopy;
  v32 = showingCopy;
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

- (void)showNoteWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(ICViewControllerManager *)self modernManagedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000442F0;
  v7[3] = &unk_100645D40;
  v9 = v8 = identifierCopy;
  selfCopy = self;
  v5 = v9;
  v6 = identifierCopy;
  [v5 performBlock:v7];
}

- (void)showInlineAttachmentWithIdentifier:(id)identifier inNoteIdentifier:(id)noteIdentifier
{
  identifierCopy = identifier;
  noteIdentifierCopy = noteIdentifier;
  [(ICViewControllerManager *)self modernManagedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100044834;
  v11[3] = &unk_100645DB8;
  v13 = v12 = identifierCopy;
  v14 = noteIdentifierCopy;
  selfCopy = self;
  v8 = noteIdentifierCopy;
  v9 = v13;
  v10 = identifierCopy;
  [v9 performBlock:v11];
}

- (void)showObjectWithObjectID:(id)d
{
  dCopy = d;
  if ([dCopy ic_isContainerType])
  {
    [(ICViewControllerManager *)self selectContainerWithIdentifier:dCopy usingRootViewController:1 deferUntilDataLoaded:1 animated:1];
    goto LABEL_8;
  }

  if ([dCopy ic_isInlineAttachmentType])
  {
    goto LABEL_4;
  }

  if ([dCopy ic_isNoteType])
  {
    [(ICViewControllerManager *)self selectNoteWithObjectID:dCopy scrollState:0 startEditing:0 animated:1 ensurePresented:1];
  }

  else if ([dCopy ic_isAttachmentType])
  {
LABEL_4:
    [(ICViewControllerManager *)self selectAttachmentWithObjectID:dCopy animated:1];
  }

LABEL_8:
}

- (void)showNoteWithObjectID:(id)d scrollState:(id)state startEditing:(BOOL)editing showInkPicker:(BOOL)picker dismissOverlayContent:(BOOL)content showLatestUpdatesIfAvailable:(BOOL)available animated:(BOOL)animated ensurePresented:(BOOL)self0
{
  availableCopy = available;
  contentCopy = content;
  pickerCopy = picker;
  editingCopy = editing;
  presentedCopy2 = presented;
  animatedCopy = animated;
  dCopy = d;
  stateCopy = state;
  selectionStateTrackingEnabled = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
  if (!dCopy)
  {
    if ((selectionStateTrackingEnabled & 1) == 0)
    {
      [(ICViewControllerManager *)self setSelectedNoteObjectID:0];
    }

    if ([(ICViewControllerManager *)self isSplitViewExpanded])
    {
      mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
      [mainSplitViewController showColumn:1];
    }

    else
    {
      activeEditorController = [(ICViewControllerManager *)self activeEditorController];
      ic_isViewVisible = [activeEditorController ic_isViewVisible];

      if (!ic_isViewVisible)
      {
        goto LABEL_52;
      }

      mainSplitViewController = [(ICViewControllerManager *)self compactNavigationController];
      v49 = [mainSplitViewController popViewControllerAnimated:1];
    }

    goto LABEL_51;
  }

  if ((selectionStateTrackingEnabled & 1) != 0 || ([(ICViewControllerManager *)self selectedNoteBrowseContainerItemID], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
  {
LABEL_17:
    systemPaperViewController = [(ICViewControllerManager *)self systemPaperViewController];

    if (systemPaperViewController)
    {
      modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
      v34 = [modernManagedObjectContext ic_existingObjectWithID:dCopy];

      if (!v34)
      {
        [ICAssert handleFailedAssertWithCondition:"((note) != nil)" functionName:"[ICViewControllerManager showNoteWithObjectID:scrollState:startEditing:showInkPicker:dismissOverlayContent:showLatestUpdatesIfAvailable:animated:ensurePresented:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "note"];
      }

      systemPaperViewController2 = [(ICViewControllerManager *)self systemPaperViewController];
      [systemPaperViewController2 setCurrentNote:v34 animated:animatedCopy direction:0 setEditing:editingCopy showInkPicker:pickerCopy];

      if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
      {
        [(ICViewControllerManager *)self setSelectedNoteObjectID:dCopy];
      }

LABEL_50:
      previousSelectedNoteObjectID = [(ICViewControllerManager *)self previousSelectedNoteObjectID];
      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"updateCurrentNoteLastViewedMetadata:" object:previousSelectedNoteObjectID];

      mainSplitViewController = [(ICViewControllerManager *)self selectedNoteObjectID];
      v53 = [mainSplitViewController copy];
      [(ICViewControllerManager *)self performSelector:"updateCurrentNoteLastViewedMetadata:" withObject:v53 afterDelay:0.75];

LABEL_51:
      goto LABEL_52;
    }

    [(ICViewControllerManager *)self dismissAnyPresentedViewControllerAnimated:animatedCopy forShowNote:1 completion:0];
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    [noteEditorViewController hideActivityStreamToolbarAnimated:animatedCopy];

    if ([dCopy ic_isEntityOfClass:objc_opt_class()])
    {
      modernManagedObjectContext2 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v39 = [modernManagedObjectContext2 ic_existingObjectWithID:dCopy];

      if (availableCopy && [v39 isSharedViaICloud])
      {
        v40 = [[ICActivityStreamDigest alloc] initWithObject:v39];
        recentUpdatesRangeValue = [v40 recentUpdatesRangeValue];
        v42 = recentUpdatesRangeValue;
        if (recentUpdatesRangeValue)
        {
          rangeValue = [recentUpdatesRangeValue rangeValue];
          v45 = [ICTextViewScrollState scrollStateForRange:rangeValue inNote:v44, v39];

          stateCopy = v45;
        }
      }

      noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
      [noteEditorViewController2 setNote:v39 overrideScrollState:stateCopy startEditing:editingCopy];
    }

    else
    {
      if (![dCopy ic_isEntityOfClass:objc_opt_class()])
      {
        v51 = 0;
LABEL_42:
        if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
        {
          [(ICViewControllerManager *)self setSelectedNoteObjectID:v51];
        }

        if (presentedCopy2)
        {
          if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
          {
            if (contentCopy)
            {
              [(ICViewControllerManager *)self dismissOverlayContent];
            }

            [(ICViewControllerManager *)self setNoteEditorAnimated:animatedCopy ensurePresented:1 startEditing:editingCopy showLegacy:[(ICViewControllerManager *)self isInHTMLEditorMode] showLatestUpdatesIfAvailable:1];
          }

          else
          {
            [(ICViewControllerManager *)self ensureNoteEditorPresentedAnimated:animatedCopy startEditing:editingCopy dismissOverlayContent:contentCopy];
          }
        }

        goto LABEL_50;
      }

      legacyManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
      v39 = [legacyManagedObjectContext ic_existingObjectWithID:dCopy];

      noteEditorViewController2 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
      [noteEditorViewController2 displayNote:v39];
    }

    if (v39)
    {
      v51 = dCopy;
    }

    else
    {
      v51 = 0;
    }

    goto LABEL_42;
  }

  selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
  if (([(ICViewControllerManager *)self isSearchActive]&& [(ICViewControllerManager *)self isSplitViewExpanded]&& ![(ICViewControllerManager *)self noteContainerViewMode]|| ![(ICViewControllerManager *)self isSearchActive]) && ![(ICViewControllerManager *)self isSelectionAppropriateForObjectID:dCopy])
  {
    v22 = [(ICViewControllerManager *)self defaultContainerObjectIDForNoteWithObjectID:dCopy];

    selectedNoteBrowseContainerItemID = v22;
    presentedCopy2 = presented;
  }

  if (selectedNoteBrowseContainerItemID)
  {
    v55 = presentedCopy2;
    v56 = editingCopy;
    selectedNoteBrowseContainerItemID2 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    v24 = [selectedNoteBrowseContainerItemID2 isEqual:selectedNoteBrowseContainerItemID];

    if ((v24 & 1) == 0)
    {
      compactNavigationController = [(ICViewControllerManager *)self compactNavigationController];
      viewControllers = [compactNavigationController viewControllers];
      [viewControllers lastObject];
      v27 = v54 = contentCopy;
      activeEditorController2 = [(ICViewControllerManager *)self activeEditorController];

      animatedCopy = v27 != activeEditorController2 && animated;
      rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
      v30 = [NSSet ic_setFromNonNilObject:selectedNoteBrowseContainerItemID];
      v31 = +[NSSet set];
      [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:rootNoteBrowseViewController animated:animatedCopy ensurePresented:1 containerIdentifiers:v30 excludingIdentifiers:v31 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:0];

      contentCopy = v54;
    }

    presentedCopy2 = v55;
    editingCopy = v56;
    goto LABEL_17;
  }

LABEL_52:
}

- (void)ensureNoteEditorPresentedAnimated:(BOOL)animated startEditing:(BOOL)editing dismissOverlayContent:(BOOL)content
{
  editingCopy = editing;
  animatedCopy = animated;
  if (content)
  {
    [(ICViewControllerManager *)self dismissOverlayContent];
  }

  if (-[ICViewControllerManager selectionStateTrackingEnabled](self, "selectionStateTrackingEnabled") && (-[ICViewControllerManager selectionStateController](self, "selectionStateController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 hasDeferredItem], v8, v9))
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    [selectionStateController adoptDeferredAnimated:animatedCopy startEditing:editingCopy];
  }

  else
  {
    isInHTMLEditorMode = [(ICViewControllerManager *)self isInHTMLEditorMode];

    [(ICViewControllerManager *)self setNoteEditorAnimated:animatedCopy ensurePresented:1 startEditing:editingCopy showLegacy:isInHTMLEditorMode showLatestUpdatesIfAvailable:1];
  }
}

- (void)showInvitationWithObjectID:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  dCopy = d;
  systemPaperViewController = [(ICViewControllerManager *)self systemPaperViewController];

  if (!systemPaperViewController)
  {
    if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
    {
      [(ICViewControllerManager *)self setSelectedInvitationObjectID:dCopy];
      selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
      v9 = +[ICAccount globalVirtualSharedWithYouFolder];
      if (kCFNull == selectedNoteBrowseContainerItemID)
      {
        v10 = 0;
      }

      else
      {
        v10 = selectedNoteBrowseContainerItemID;
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

        selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self rootNoteBrowseViewController];
        v9 = +[ICAccount globalVirtualSharedWithYouFolder];
        v25 = v9;
        v17 = [NSArray arrayWithObjects:&v25 count:1];
        v18 = [NSSet ic_setFromNonNilObject:v17];
        v19 = +[NSSet set];
        [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:selectedNoteBrowseContainerItemID animated:animatedCopy ensurePresented:1 containerIdentifiers:v18 excludingIdentifiers:v19 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:0];
      }
    }

LABEL_20:
    [(ICViewControllerManager *)self dismissAnyPresentedViewControllerAnimated:animatedCopy forShowNote:1 completion:0];
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    [noteEditorViewController hideActivityStreamToolbarAnimated:animatedCopy];

    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    v22 = [modernManagedObjectContext objectWithID:dCopy];
    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    [noteEditorViewController2 setInvitation:v22];

    [(ICViewControllerManager *)self setNoteEditorAnimated:animatedCopy ensurePresented:1 startEditing:0 showLegacy:0 showLatestUpdatesIfAvailable:1];
    [(ICViewControllerManager *)self dismissOverlayContent];
    eventReporter = [(ICViewControllerManager *)self eventReporter];
    [eventReporter submitCollabNotificationEventWithAction:3];

    goto LABEL_21;
  }

  [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager showInvitationWithObjectID:animated:]" simulateCrash:1 showAlert:0 format:@"System Paper does not support showing invitations"];
LABEL_21:
}

- (BOOL)presentAttachment:(id)attachment delegate:(id)delegate displayShowInNote:(BOOL)note editable:(BOOL)editable selectedSubAttachment:(id)subAttachment presentingViewController:(id)controller
{
  editableCopy = editable;
  noteCopy = note;
  attachmentCopy = attachment;
  controllerCopy = controller;
  subAttachmentCopy = subAttachment;
  delegateCopy = delegate;
  attachmentCopy2 = attachment;
  v18 = [NSArray arrayWithObjects:&attachmentCopy count:1];

  LOBYTE(attachmentCopy2) = [(ICViewControllerManager *)self presentAttachments:v18 startingAtIndex:0 delegate:delegateCopy displayShowInNote:noteCopy editable:editableCopy selectedSubAttachment:subAttachmentCopy presentingViewController:controllerCopy];
  return attachmentCopy2;
}

- (BOOL)presentAttachments:(id)attachments startingAtIndex:(unint64_t)index delegate:(id)delegate displayShowInNote:(BOOL)note editable:(BOOL)editable selectedSubAttachment:(id)attachment presentingViewController:(id)controller
{
  attachmentsCopy = attachments;
  delegateCopy = delegate;
  attachmentCopy = attachment;
  controllerCopy = controller;
  if (!controllerCopy)
  {
    window = [(ICViewControllerManager *)self window];
    rootViewController = [window rootViewController];

    presentedViewController = [rootViewController presentedViewController];
    v21 = presentedViewController;
    if (presentedViewController)
    {
      v22 = presentedViewController;
    }

    else
    {
      v22 = rootViewController;
    }

    controllerCopy = v22;
  }

  currentAttachmentPresenter = [(ICViewControllerManager *)self currentAttachmentPresenter];
  v24 = currentAttachmentPresenter;
  if (currentAttachmentPresenter && (([currentAttachmentPresenter presentedViewController], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isBeingPresented"), v25, (v26 & 1) != 0) || (objc_msgSend(v24, "galleryAttachmentEditorController"), v27 = objc_claimAutoreleasedReturnValue(), v27, v27)))
  {
    v28 = 0;
    v29 = attachmentsCopy;
  }

  else
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100045DD4;
    v37[3] = &unk_100645DE0;
    v37[4] = self;
    v29 = attachmentsCopy;
    v38 = attachmentsCopy;
    indexCopy = index;
    v39 = delegateCopy;
    noteCopy = note;
    editableCopy = editable;
    v40 = controllerCopy;
    v41 = attachmentCopy;
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

- (void)showSearchResult:(id)result animated:(BOOL)animated
{
  animatedCopy = animated;
  resultCopy = result;
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    object = [resultCopy object];
    objectID = [object objectID];
    ic_isNoteType = [objectID ic_isNoteType];

    if (ic_isNoteType)
    {
      configuration = [resultCopy configuration];
      foundAttachmentObjectID = [configuration foundAttachmentObjectID];

      if (!foundAttachmentObjectID)
      {
        object2 = [resultCopy object];
        objectID2 = [object2 objectID];
        v20 = [objectID2 ic_isEntityOfClass:objc_opt_class()];

        if (v20)
        {
          modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
          object3 = [resultCopy object];
          objectID3 = [object3 objectID];
          v24 = [modernManagedObjectContext objectWithID:objectID3];

          firstMatchingRangeInNote = [resultCopy firstMatchingRangeInNote];
          if (firstMatchingRangeInNote)
          {
            firstMatchingRangeInNote2 = [resultCopy firstMatchingRangeInNote];
            rangeValue = [firstMatchingRangeInNote2 rangeValue];
            v29 = v28;
          }

          else
          {
            rangeValue = 0;
            v29 = 0;
          }

          configuration2 = [ICTextViewScrollState scrollStateForRange:rangeValue inNote:v29, v24];
        }

        else
        {
          configuration2 = 0;
        }

        object4 = [resultCopy object];
        objectID4 = [object4 objectID];
        BYTE1(v33) = 1;
        LOBYTE(v33) = animatedCopy;
        [(ICViewControllerManager *)self selectNoteWithObjectID:objectID4 scrollState:configuration2 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:0 animated:v33 ensurePresented:?];

        goto LABEL_17;
      }

      configuration2 = [resultCopy configuration];
      foundAttachmentObjectID2 = [configuration2 foundAttachmentObjectID];
    }

    else
    {
      object5 = [resultCopy object];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_18:
        noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
        highlightPatternRegexFinder = [resultCopy highlightPatternRegexFinder];
        [noteEditorViewController highlightSearchMatchesForRegexFinder:highlightPatternRegexFinder];

        [(ICViewControllerManager *)self setSelectedSearchResult:resultCopy];
        goto LABEL_19;
      }

      configuration2 = [resultCopy object];
      foundAttachmentObjectID2 = [configuration2 objectID];
    }

    object4 = foundAttachmentObjectID2;
    [(ICViewControllerManager *)self selectAttachmentWithObjectID:foundAttachmentObjectID2 animated:animatedCopy];
LABEL_17:

    goto LABEL_18;
  }

  v6 = resultCopy;
  if (!resultCopy)
  {
    goto LABEL_20;
  }

  selectionStateController = [(ICViewControllerManager *)self selectionStateController];
  [selectionStateController pushSearchResult:resultCopy animated:animatedCopy];

LABEL_19:
  v6 = resultCopy;
LABEL_20:
}

- (void)showRecentUpdatesForNoteWithObjectID:(id)d suppressSidebar:(BOOL)sidebar
{
  sidebarCopy = sidebar;
  dCopy = d;
  objc_opt_class();
  modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
  v7 = [modernManagedObjectContext objectWithID:dCopy];
  v8 = ICDynamicCast();

  if (v8)
  {
    v9 = [[ICActivityStreamDigest alloc] initWithObject:v8];
    recentUpdatesFilter = [v9 recentUpdatesFilter];
    toDate = [recentUpdatesFilter toDate];
    v12 = toDate;
    if (recentUpdatesFilter)
    {
      v13 = toDate == 0;
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
      v14 = [[ICActivityStreamSelection alloc] initWithFilter:recentUpdatesFilter displayDate:toDate];
    }

    [(ICViewControllerManager *)self showAttributionHighlightsForNoteWithObjectID:dCopy selection:v14 suppressSidebar:sidebarCopy];
    presentedActivityStreamNavigationController = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
    [presentedActivityStreamNavigationController moveToViewMode:1];

    [v8 markLastActivityRecentUpdatesViewed];
    eventReporter = [(ICViewControllerManager *)self eventReporter];
    [eventReporter submitCollabActivityBrowseEventForObject:v8 contextPath:0 clickContext:3 mode:0 isCurrentUserMentioned:objc_msgSend(v9 hasRecentUpdates:{"isCurrentUserMentionedInRecentSummary"), objc_msgSend(v9, "hasRecentUpdates")}];
  }
}

- (void)showActivityStreamForObjectWithObjectID:(id)d collabActivityContextPath:(int64_t)path
{
  dCopy = d;
  objc_opt_class();
  modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
  v7 = [modernManagedObjectContext objectWithID:dCopy];
  v8 = ICDynamicCast();

  if (v8)
  {
    if (([dCopy ic_isFolderType] & 1) != 0 || -[ICViewControllerManager showsPresentedActivityStreamAsModal](self, "showsPresentedActivityStreamAsModal"))
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
    activityStreamSelection = [(ICViewControllerManager *)self activityStreamSelection];

    if (path && !activityStreamSelection)
    {
      v11 = [[ICActivityStreamDigest alloc] initWithObject:v8];
      eventReporter = [(ICViewControllerManager *)self eventReporter];
      [eventReporter submitCollabActivityBrowseEventForObject:v8 contextPath:path clickContext:4 mode:0 isCurrentUserMentioned:objc_msgSend(v11 hasRecentUpdates:{"isCurrentUserMentionedInRecentSummary"), objc_msgSend(v11, "hasRecentUpdates")}];
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
  presentedActivityStreamNavigationController = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
  if (presentedActivityStreamNavigationController)
  {
    presentedActivityStreamNavigationController2 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
    viewMode = [presentedActivityStreamNavigationController2 viewMode];
  }

  else if ([(ICViewControllerManager *)self isTrailingContentVisible])
  {
    viewMode = 5;
  }

  else
  {
    viewMode = 0;
  }

  return viewMode;
}

- (void)presentActivityStreamForObject:(id)object viewMode:(int64_t)mode animated:(BOOL)animated
{
  objectCopy = object;
  showsPresentedActivityStreamAsModal = [(ICViewControllerManager *)self showsPresentedActivityStreamAsModal];
  modeCopy = 4;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100046834;
  v29[3] = &unk_100645E58;
  if (!showsPresentedActivityStreamAsModal)
  {
    modeCopy = mode;
  }

  v31 = modeCopy;
  v29[4] = self;
  v11 = objectCopy;
  v30 = v11;
  animatedCopy = animated;
  v12 = objc_retainBlock(v29);
  [(ICViewControllerManager *)self stopEditing];
  presentedActivityStreamNavigationController = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];

  if (presentedActivityStreamNavigationController)
  {
    presentedActivityStreamNavigationController2 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
    object = [presentedActivityStreamNavigationController2 object];
    objectID = [object objectID];
    objectID2 = [v11 objectID];
    v18 = [objectID isEqual:objectID2];

    if ((v18 & 1) == 0)
    {
      [(ICViewControllerManager *)self hidePresentedActivityStreamNavigationControllerWithCompletion:v12];
    }
  }

  else
  {
    (v12[2])(v12);
  }

  objectID3 = [v11 objectID];
  if ([objectID3 ic_isNoteType])
  {
    selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
    objectID4 = [v11 objectID];
    if (kCFNull == selectedNoteObjectID)
    {
      v22 = 0;
    }

    else
    {
      v22 = selectedNoteObjectID;
    }

    v23 = v22;
    if (kCFNull == objectID4)
    {
      v24 = 0;
    }

    else
    {
      v24 = objectID4;
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

      objectID3 = [v11 objectID];
      BYTE1(v28) = 1;
      LOBYTE(v28) = animated;
      [(ICViewControllerManager *)self selectNoteWithObjectID:objectID3 scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:0 showLatestUpdatesIfAvailable:1 animated:v28 ensurePresented:?];
    }

    else
    {
    }
  }

LABEL_23:
}

- (void)hideActivityStreamWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(ICViewControllerManager *)self showsPresentedActivityStreamAsModal]|| ([(ICViewControllerManager *)self presentedActivityStreamNavigationController], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    [(ICViewControllerManager *)self setActivityStreamSelection:0];
  }

  presentedActivityStreamNavigationController = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];

  if (presentedActivityStreamNavigationController)
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000471F8;
    v39[3] = &unk_100645E80;
    v39[4] = self;
    v40 = completionCopy;
    [(ICViewControllerManager *)self hidePresentedActivityStreamNavigationControllerWithCompletion:v39];
    v7 = v40;
LABEL_8:

    goto LABEL_9;
  }

  if ([(ICViewControllerManager *)self usesSingleSplitView])
  {
    mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController hideColumn:4];

    mainSplitViewController2 = [(ICViewControllerManager *)self mainSplitViewController];
    transitionCoordinator = [mainSplitViewController2 transitionCoordinator];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10004724C;
    v37[3] = &unk_100645EA8;
    v37[4] = self;
    v38 = completionCopy;
    [transitionCoordinator animateAlongsideTransition:0 completion:v37];

    v7 = v38;
    goto LABEL_8;
  }

  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController hideActivityStreamToolbarAnimated:1];

  trailingSidebarViewController = [(ICViewControllerManager *)self trailingSidebarViewController];
  if (![trailingSidebarViewController isSidebarHidden])
  {
    trailingSidebarSplitViewController = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
    displayMode = [trailingSidebarSplitViewController displayMode];

    if (displayMode == 1)
    {
      goto LABEL_9;
    }

    trailingSidebarViewController2 = [(ICViewControllerManager *)self trailingSidebarViewController];
    view = [trailingSidebarViewController2 view];
    [view frame];
    v18 = v17;
    v20 = v19;

    mainSplitViewController3 = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController3 nonDisplacedColumnWidth];
    v23 = v18 - v22;

    mainSplitViewController4 = [(ICViewControllerManager *)self mainSplitViewController];
    LODWORD(view) = [mainSplitViewController4 isDisplacingColumn];

    if (view)
    {
      mainSplitViewController5 = [(ICViewControllerManager *)self mainSplitViewController];
      [mainSplitViewController5 preferredDisplacedColumnWidth];
      v23 = v23 - v26;
    }

    mainSplitViewController6 = [(ICViewControllerManager *)self mainSplitViewController];
    v28 = [mainSplitViewController6 requiresNotificationForSecondaryColumnSize:{v23, v20}];

    trailingSidebarViewController3 = [(ICViewControllerManager *)self trailingSidebarViewController];
    [trailingSidebarViewController3 setSidebarHidden:1];

    trailingSidebarSplitViewController2 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
    trailingSidebarViewController = [trailingSidebarSplitViewController2 transitionCoordinator];

    mainSplitViewController7 = [(ICViewControllerManager *)self mainSplitViewController];
    isDisplacingColumn = [mainSplitViewController7 isDisplacingColumn];

    if (isDisplacingColumn)
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000472B8;
      v36[3] = &unk_100645E08;
      v36[4] = self;
      [trailingSidebarViewController animateAlongsideTransition:v36 completion:0];
    }

    mainSplitViewController8 = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController8 setIsDisplacingColumn:0];

    if (v28)
    {
      trailingSidebarSplitViewController3 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      transitionCoordinator2 = [trailingSidebarSplitViewController3 transitionCoordinator];
      [(ICViewControllerManager *)self sendNotificationForNoteEditorSizeChange:transitionCoordinator2 transitionCoordinator:v23, v20];
    }
  }

LABEL_9:
}

- (BOOL)showsAttributionHighlights
{
  activityStreamSelection = [(ICViewControllerManager *)self activityStreamSelection];
  v3 = activityStreamSelection != 0;

  return v3;
}

- (void)showAttributionHighlightsForNoteWithObjectID:(id)d selection:(id)selection suppressSidebar:(BOOL)sidebar
{
  dCopy = d;
  selectionCopy = selection;
  presentedActivityStreamNavigationController = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
  activityStreamViewController = [presentedActivityStreamNavigationController activityStreamViewController];
  objectID = [activityStreamViewController objectID];

  if (objectID && ([objectID isEqual:dCopy] & 1) == 0)
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000477A0;
    v47[3] = &unk_100645ED0;
    v47[4] = self;
    v48 = dCopy;
    v49 = selectionCopy;
    sidebarCopy = sidebar;
    [(ICViewControllerManager *)self hidePresentedActivityStreamNavigationControllerWithCompletion:v47];

    v20 = v48;
LABEL_28:

    goto LABEL_29;
  }

  selectedModernNote = [(ICViewControllerManager *)self selectedModernNote];
  objectID2 = [selectedModernNote objectID];
  if (![objectID2 isEqual:dCopy])
  {
    goto LABEL_9;
  }

  activityStreamSelection = [(ICViewControllerManager *)self activityStreamSelection];
  if (([activityStreamSelection isEqual:selectionCopy] & 1) == 0)
  {

LABEL_9:
LABEL_10:
    if ([(__CFNull *)dCopy ic_isModernNoteType])
    {
      selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
      v22 = selectedNoteObjectID;
      if (kCFNull == selectedNoteObjectID)
      {
        v23 = 0;
      }

      else
      {
        v23 = selectedNoteObjectID;
      }

      v24 = v23;
      if (kCFNull == dCopy)
      {
        v25 = 0;
      }

      else
      {
        v25 = dCopy;
      }

      v26 = v25;
      if (v24 | v26)
      {
        v27 = v26;
        if (!v24 || !v26)
        {

LABEL_31:
          modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
          v42 = [modernManagedObjectContext ic_existingObjectWithID:dCopy];

          v33 = [[ICTTTextEditGrouper alloc] initWithNote:v42];
          [v33 setJoinsWhitespaceAndNewlineGaps:1];
          filter = [selectionCopy filter];
          [v33 setFilter:filter];

          groupedEdits = [v33 groupedEdits];
          firstObject = [groupedEdits firstObject];
          range = [firstObject range];
          v39 = v38;

          v40 = [ICTextViewScrollState scrollStateForRange:range inNote:v39, v42];
          BYTE1(v41) = 1;
          LOBYTE(v41) = [(ICViewControllerManager *)self hasCompactWidth];
          [(ICViewControllerManager *)self selectNoteWithObjectID:dCopy scrollState:v40 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:1 animated:v41 ensurePresented:?];

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
    v44 = dCopy;
    v45 = selectionCopy;
    sidebarCopy2 = sidebar;
    v29 = objc_retainBlock(v43);
    outerSplitViewController = [(ICViewControllerManager *)self outerSplitViewController];
    if (outerSplitViewController)
    {
      outerSplitViewController2 = [(ICViewControllerManager *)self outerSplitViewController];
      [outerSplitViewController2 ic_performBlockAfterActiveTransition:v29];
    }

    else
    {
      (v29[2])(v29);
    }

    v20 = v44;
    goto LABEL_28;
  }

  filter2 = [selectionCopy filter];

  if (!filter2)
  {
    goto LABEL_10;
  }

  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  authorHighlightsUpdater = [noteEditorViewController authorHighlightsUpdater];
  filter3 = [selectionCopy filter];
  [authorHighlightsUpdater flashHighlightsForFilter:filter3];

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

- (void)showSelectionForParticipant:(id)participant noteObjectID:(id)d
{
  dCopy = d;
  participantCopy = participant;
  selectedModernNote = [(ICViewControllerManager *)self selectedModernNote];
  objectID = [selectedModernNote objectID];
  v9 = [objectID isEqual:dCopy];

  if ((v9 & 1) == 0)
  {
    [(ICViewControllerManager *)self showObjectWithObjectID:dCopy];
  }

  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  realtimeCollaborationSelectionController = [noteEditorViewController realtimeCollaborationSelectionController];
  [realtimeCollaborationSelectionController showSelectionForParticipant:participantCopy];
}

- (BOOL)canUserChangeNoteContainerViewMode
{
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  presentedViewController = [mainSplitViewController presentedViewController];
  if (presentedViewController)
  {
    isAttachmentBrowserVisible = [(ICViewControllerManager *)self isAttachmentBrowserVisible];
  }

  else
  {
    isAttachmentBrowserVisible = 1;
  }

  return isAttachmentBrowserVisible;
}

- (void)setNoteContainerViewMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_noteContainerViewMode == mode || (v7 = [(ICViewControllerManager *)self isAuxiliary], completionCopy = v8, v7))
  {
    if (!completionCopy)
    {
      goto LABEL_7;
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    self->_noteContainerViewMode = mode;
    [(ICViewControllerManager *)self updateSplitViewForCurrentViewModeWithCompletion:v8];
  }

  completionCopy = v8;
LABEL_7:
}

- (void)updateSplitViewForCurrentViewModeWithCompletion:(id)completion
{
  completionCopy = completion;
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  style = [mainSplitViewController style];

  if (![(ICViewControllerManager *)self hasCompactWidth]&& ([(ICViewControllerManager *)self noteContainerViewMode]|| style == 2) && ([(ICViewControllerManager *)self noteContainerViewMode]!= 1 || style == 1))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
    {
      windowStateArchive = [(ICViewControllerManager *)self windowStateArchive];
      behavior = [(ICViewControllerManager *)self behavior];
      v9 = ![(ICViewControllerManager *)self hasCompactWidth];
      if (behavior == 1)
      {
        v9 = 1;
      }

      v57 = v9;
      v58 = behavior != 1;
      v59 = completionCopy;
      noteContainerViewMode = [(ICViewControllerManager *)self noteContainerViewMode];
      isSplitViewExpanded = [(ICViewControllerManager *)self isSplitViewExpanded];
      objc_opt_class();
      currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
      dataSource = [currentNoteBrowseViewController dataSource];
      firstRelevantItemIdentifier = [dataSource firstRelevantItemIdentifier];
      v15 = ICDynamicCast();
      modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
      legacyManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
      v18 = noteContainerViewMode;
      completionCopy = v59;
      [_TtC11MobileNotes25ICSelectionStateUtilities updateArchive:windowStateArchive forNewViewMode:v18 requiresContainerSelection:v57 requiresObjectSelection:isSplitViewExpanded validateContainerSelection:v58 defaultObjectID:v15 modernManagedObjectContext:modernManagedObjectContext legacyManagedObjectContext:legacyManagedObjectContext];

      [(ICViewControllerManager *)self applyStateRestoreArchive:windowStateArchive completion:v59];
    }

    else
    {
      if ([(ICViewControllerManager *)self isSplitViewExpanded]&& ![(ICViewControllerManager *)self noteContainerViewMode])
      {
        selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
        v51 = selectedNoteObjectID;
        if (selectedNoteObjectID)
        {
          previousSelectedNoteObjectID = selectedNoteObjectID;
        }

        else
        {
          previousSelectedNoteObjectID = [(ICViewControllerManager *)self previousSelectedNoteObjectID];
        }

        windowStateArchive = previousSelectedNoteObjectID;

        if (![(ICViewControllerManager *)self isSelectionAppropriateForObjectID:windowStateArchive])
        {
          objc_opt_class();
          currentNoteBrowseViewController2 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
          dataSource2 = [currentNoteBrowseViewController2 dataSource];
          firstRelevantItemIdentifier2 = [dataSource2 firstRelevantItemIdentifier];
          v56 = ICDynamicCast();

          windowStateArchive = v56;
        }
      }

      else
      {
        windowStateArchive = 0;
      }

      windowStateArchive2 = [(ICViewControllerManager *)self windowStateArchive];
      [windowStateArchive2 setCurrentFirstVisibleObjectIDURLForContainerObjectIDURL:&__NSDictionary0__struct];
      [windowStateArchive2 setCurrentNoteContainerViewMode:{-[ICViewControllerManager noteContainerViewMode](self, "noteContainerViewMode")}];
      if ([(ICViewControllerManager *)self noteContainerViewMode]== 1)
      {
        [windowStateArchive2 setCurrentNoteObjectIDURL:0];
        if (![(ICViewControllerManager *)self hasCompactWidth])
        {
          currentContainerObjectIDURLs = [windowStateArchive2 currentContainerObjectIDURLs];
          v21 = [currentContainerObjectIDURLs count];

          if (v21)
          {
            currentContainerObjectIDURLs2 = [windowStateArchive2 currentContainerObjectIDURLs];
            lastObject = [currentContainerObjectIDURLs2 lastObject];
            v24 = [(ICViewControllerManager *)self managedObjectIDFromURL:lastObject];

            objc_opt_class();
            modernManagedObjectContext2 = [(ICViewControllerManager *)self modernManagedObjectContext];
            v26 = [modernManagedObjectContext2 ic_existingObjectWithID:v24];
            v27 = ICDynamicCast();

            if (v27)
            {
              ancestorFolderObjectIDs = [v27 ancestorFolderObjectIDs];
              reverseObjectEnumerator = [ancestorFolderObjectIDs reverseObjectEnumerator];
              allObjects = [reverseObjectEnumerator allObjects];
              [v27 objectID];
              v30 = v24;
              v32 = v31 = completionCopy;
              v33 = [allObjects arrayByAddingObject:v32];

              completionCopy = v31;
              v24 = v30;

              v34 = [v33 ic_map:&stru_100645F10];
              [windowStateArchive2 setCurrentContainerObjectIDURLs:v34];
            }
          }
        }
      }

      else if (![(ICViewControllerManager *)self noteContainerViewMode])
      {
        [windowStateArchive2 setIsSupplementaryContentVisible:1];
        currentContainerObjectIDURLs3 = [windowStateArchive2 currentContainerObjectIDURLs];
        v36 = [currentContainerObjectIDURLs3 count];

        if (v36)
        {
          currentContainerObjectIDURLs4 = [windowStateArchive2 currentContainerObjectIDURLs];
          lastObject2 = [currentContainerObjectIDURLs4 lastObject];
          v61 = lastObject2;
          v39 = [NSArray arrayWithObjects:&v61 count:1];
          [windowStateArchive2 setCurrentContainerObjectIDURLs:v39];
        }

        if ([windowStateArchive ic_isNoteType])
        {
          uRIRepresentation = [windowStateArchive URIRepresentation];
          [windowStateArchive2 setCurrentNoteObjectIDURL:uRIRepresentation];
        }

        if ([windowStateArchive ic_isInvitationType])
        {
          uRIRepresentation2 = [windowStateArchive URIRepresentation];
          [windowStateArchive2 setCurrentInvitationObjectIDURL:uRIRepresentation2];
        }
      }

      if ([(ICViewControllerManager *)self isTagSelected])
      {
        selectedContainerIdentifiers = [(ICViewControllerManager *)self selectedContainerIdentifiers];
        v43 = [selectedContainerIdentifiers ic_compactMap:&stru_100645F50];

        allObjects2 = [v43 allObjects];
        [windowStateArchive2 setCurrentTagIdentifiers:allObjects2];
      }

      objc_opt_class();
      selectedContainerItemID = [(ICViewControllerManager *)self selectedContainerItemID];
      v46 = ICDynamicCast();

      if (v46)
      {
        type = [v46 type];
        [windowStateArchive2 setCurrentVirtualSmartFolderType:type];

        accountObjectID = [v46 accountObjectID];
        uRIRepresentation3 = [accountObjectID URIRepresentation];
        [windowStateArchive2 setCurrentVirtualSmartFolderAccountObjectIDURL:uRIRepresentation3];
      }

      [(ICViewControllerManager *)self applyStateRestoreArchive:windowStateArchive2 completion:completionCopy];
    }
  }
}

- (id)showNewNoteWithApproach:(int64_t)approach sender:(id)sender recordAudio:(BOOL)audio animated:(BOOL)animated
{
  animatedCopy = animated;
  senderCopy = sender;
  selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
  v11 = [selectedNoteObjectID ic_isEntityOfClass:objc_opt_class()];

  if (v11)
  {
    legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    [legacyNoteEditorViewController saveNote];
  }

  objc_opt_class();
  v13 = ICDynamicCast();
  ic_isPencilEvent = [v13 ic_isPencilEvent];

  HIDWORD(v36) = approach == 10;
  v39 = approach == 9;
  objc_opt_class();
  LODWORD(v36) = objc_opt_isKindOfClass();
  objc_opt_class();
  v15 = ICDynamicCast();
  v16 = v15;
  if (v15)
  {
    allTouches = [v15 allTouches];
    anyObject = [allTouches anyObject];

    window = [anyObject window];
    windowScene = [window windowScene];
    [windowScene delegate];
    v21 = ic_isPencilEvent;
    v23 = v22 = audio;

    objc_opt_class();
    v24 = ICDynamicCast();

    audio = v22;
    ic_isPencilEvent = v21;
  }

  else
  {
    objc_opt_class();
    anyObject = ICDynamicCast();
    v24 = anyObject;
  }

  v25 = 0;
  if ((ic_isPencilEvent & 1) == 0 && !audio)
  {
    v25 = (approach != 10) & ((approach != 0) | v36);
  }

  if (senderCopy)
  {
    eventReporter = [(ICViewControllerManager *)self eventReporter];
    [eventReporter pushNoteCreateDataWithCreateApproach:approach];
  }

  v27 = [(ICViewControllerManager *)self containerObjectIDForNewNoteWithApproach:approach, v36];
  if (v27)
  {
    if ([objc_opt_class() isNoteCreateApproachForScrapPaper:approach])
    {
      v28 = 1;
    }

    else if ([objc_opt_class() doesNoteCreateApproachUseSelectedContainerToInferSystemPaperness:approach])
    {
      objc_opt_class();
      [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
      v37 = ic_isPencilEvent;
      v31 = v30 = audio;
      v32 = ICDynamicCast();

      type = [v32 type];
      v28 = [type isEqual:ICVirtualSmartFolderItemIdentifierTypeSystemPaper];

      audio = v30;
      ic_isPencilEvent = v37;
    }

    else
    {
      v28 = 0;
    }

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100048C08;
    v41[3] = &unk_100645F78;
    v42 = ic_isPencilEvent;
    v43 = v24 != 0;
    v41[4] = self;
    v44 = v39;
    audioCopy = audio;
    v46 = v38;
    v29 = [(ICViewControllerManager *)self showNewNoteStartEditing:v25 inContainerWithObjectID:v27 isSystemPaper:v28 showInkPicker:ic_isPencilEvent animated:animatedCopy completion:v41];
    if (senderCopy)
    {
      eventReporter2 = [(ICViewControllerManager *)self eventReporter];
      [eventReporter2 popNoteCreateData];
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
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  [mainSplitViewController presentViewController:v6 animated:1 completion:0];
}

- (void)closeAuxiliaryWindowAnimated:(BOOL)animated
{
  animatedCopy = animated;
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

      _windowHostingScene = [[ICSystemPaperDismissAction alloc] initWithReason:@"done"];
      window = [(ICViewControllerManager *)self window];
      windowScene = [window windowScene];
      _FBSScene = [windowScene _FBSScene];

      if (_FBSScene)
      {
        v12 = [NSSet setWithObject:_windowHostingScene];
        [_FBSScene sendActions:v12];
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

      window2 = [(ICViewControllerManager *)self window];
      _windowHostingScene = [window2 _windowHostingScene];

      if (!_windowHostingScene)
      {
        _FBSScene = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(_FBSScene, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, _FBSScene, OS_LOG_TYPE_DEFAULT, "No active auxiliary window to close. Ignoring request.", v15, 2u);
        }

        goto LABEL_19;
      }

      if (animatedCopy)
      {
        _FBSScene = objc_alloc_init(UIWindowSceneDestructionRequestOptions);
        [_FBSScene setWindowDismissalAnimation:2];
      }

      else
      {
        _FBSScene = 0;
      }

      v12 = +[UIApplication sharedApplication];
      session = [(ICSystemPaperDismissAction *)_windowHostingScene session];
      [v12 requestSceneSessionDestruction:session options:_FBSScene errorHandler:&stru_100645FB8];
    }

LABEL_19:
  }
}

- (unint64_t)countOfAllVisibleAccounts
{
  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  folderDataSource = [folderListViewController folderDataSource];
  countOfAllVisibleAccounts = [folderDataSource countOfAllVisibleAccounts];

  return countOfAllVisibleAccounts;
}

- (NSString)title
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100040A44;
  v30 = sub_100040A54;
  v31 = 0;
  selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];

  if (selectedNoteObjectID)
  {
    selectedNoteObjectID2 = [(ICViewControllerManager *)self selectedNoteObjectID];
    ic_isModernNoteType = [selectedNoteObjectID2 ic_isModernNoteType];

    if (ic_isModernNoteType)
    {
      modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000495C0;
      v25[3] = &unk_100645FE0;
      v25[4] = self;
      v25[5] = &v26;
      [modernManagedObjectContext performBlockAndWait:v25];
    }

    else
    {
      selectedNoteObjectID3 = [(ICViewControllerManager *)self selectedNoteObjectID];
      ic_isLegacyNoteType = [selectedNoteObjectID3 ic_isLegacyNoteType];

      if (!ic_isLegacyNoteType)
      {
        goto LABEL_17;
      }

      modernManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100049660;
      v24[3] = &unk_100645FE0;
      v24[4] = self;
      v24[5] = &v26;
      [modernManagedObjectContext performBlockAndWait:v24];
    }

    goto LABEL_16;
  }

  selectedInvitationObjectID = [(ICViewControllerManager *)self selectedInvitationObjectID];

  if (selectedInvitationObjectID)
  {
    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100049700;
    v23[3] = &unk_100645FE0;
    v23[4] = self;
    v23[5] = &v26;
    [modernManagedObjectContext performBlockAndWait:v23];
LABEL_16:

    goto LABEL_17;
  }

  selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];

  if (selectedNoteBrowseContainerItemID)
  {
    objc_opt_class();
    selectedNoteBrowseContainerItemID2 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    modernManagedObjectContext = ICDynamicCast();

    if ([modernManagedObjectContext ic_isModernContainerType])
    {
      modernManagedObjectContext2 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v13 = v22;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000497A0;
      v22[3] = &unk_100646008;
      v22[4] = self;
      v22[5] = modernManagedObjectContext;
      v22[6] = &v26;
      [modernManagedObjectContext2 performBlockAndWait:v22];
    }

    else
    {
      if (![modernManagedObjectContext ic_isLegacyContainerType])
      {
        goto LABEL_16;
      }

      modernManagedObjectContext2 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v13 = v21;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100049820;
      v21[3] = &unk_100646008;
      v21[4] = self;
      v21[5] = modernManagedObjectContext;
      v21[6] = &v26;
      [modernManagedObjectContext2 performBlockAndWait:v21];
    }

    goto LABEL_16;
  }

  tagSelection = [(ICViewControllerManager *)self tagSelection];
  isNonEmpty = [tagSelection isNonEmpty];

  if (isNonEmpty)
  {
    tagSelection2 = [(ICViewControllerManager *)self tagSelection];
    title = [tagSelection2 title];
    v18 = v27[5];
    v27[5] = title;
  }

LABEL_17:
  v19 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v19;
}

- (void)updateSceneTitle:(id)title
{
  titleCopy = title;
  title = [(ICViewControllerManager *)self title];
  [titleCopy setTitle:title];
}

- (BOOL)isAttachmentBrowserVisible
{
  currentAttachmentBrowserViewController = [(ICViewControllerManager *)self currentAttachmentBrowserViewController];
  v3 = currentAttachmentBrowserViewController != 0;

  return v3;
}

- (BOOL)isNoteEditorVisible
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  if ([noteEditorViewController ic_isViewVisible])
  {
    ic_isViewVisible = 1;
  }

  else
  {
    legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    ic_isViewVisible = [legacyNoteEditorViewController ic_isViewVisible];
  }

  return ic_isViewVisible;
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
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  if (noteEditorViewController)
  {
    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    topViewController = [v3 topViewController];
    v7 = noteEditorViewController2 == topViewController;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isFolderListVisible
{
  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  ic_isViewVisible = [folderListViewController ic_isViewVisible];

  return ic_isViewVisible;
}

- (ICNoteSearchViewController)searchController
{
  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  noteSearchViewController = [folderListViewController noteSearchViewController];
  isActive = [noteSearchViewController isActive];

  if (isActive)
  {
    folderListViewController2 = [(ICViewControllerManager *)self folderListViewController];
    noteSearchViewController2 = [folderListViewController2 noteSearchViewController];
  }

  else
  {
    rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    navigationController = [rootNoteBrowseViewController navigationController];
    folderListViewController2 = [navigationController topViewController];

    objc_opt_class();
    v10 = ICDynamicCast();
    noteSearchViewController3 = [v10 noteSearchViewController];

    if (noteSearchViewController3)
    {
      noteSearchViewController2 = noteSearchViewController3;
    }

    else
    {
      rootNoteBrowseViewController2 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
      noteSearchViewController2 = [rootNoteBrowseViewController2 noteSearchViewController];
    }
  }

  return noteSearchViewController2;
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
    compactNavigationController = ;
  }

  else
  {
    compactNavigationController = [(ICViewControllerManager *)self compactNavigationController];
  }

  v4 = compactNavigationController;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  viewControllers = [compactNavigationController viewControllers];
  reverseObjectEnumerator = [viewControllers reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v10;
          goto LABEL_17;
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  ic_topViewController = [mainSplitViewController ic_topViewController];
  v5 = ICDynamicCast();

  viewControllers = [v5 viewControllers];
  v7 = [viewControllers ic_firstObjectOfClass:objc_opt_class()];

  return v7;
}

- (void)hidePresentedActivityStreamNavigationControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  presentedActivityStreamNavigationController = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
  presentingViewController = [presentedActivityStreamNavigationController presentingViewController];

  if (presentingViewController)
  {
    presentedActivityStreamNavigationController2 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
    presentingViewController2 = [presentedActivityStreamNavigationController2 presentingViewController];
    [presentingViewController2 dismissViewControllerAnimated:1 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (UIViewController)presentedActivityStreamPresentingViewController
{
  if ([(ICViewControllerManager *)self isAuxiliary])
  {
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
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
    noteEditorViewController = ;
  }

  return noteEditorViewController;
}

- (ICActivityStreamNavigationController)presentedActivityStreamNavigationController
{
  objc_opt_class();
  presentedActivityStreamPresentingViewController = [(ICViewControllerManager *)self presentedActivityStreamPresentingViewController];
  presentedViewController = [presentedActivityStreamPresentingViewController presentedViewController];
  v5 = ICDynamicCast();

  return v5;
}

- (void)setWindow:(id)window
{
  windowCopy = window;
  objc_storeWeak(&self->_window, windowCopy);
  intentsInteractionController = [(ICViewControllerManager *)self intentsInteractionController];
  [intentsInteractionController setWindow:windowCopy];
}

- (id)selectedModernAccount
{
  selectedContainerObjectIDs = [(ICViewControllerManager *)self selectedContainerObjectIDs];
  lastObject = [selectedContainerObjectIDs lastObject];
  ic_isModernAccountType = [lastObject ic_isModernAccountType];

  if (ic_isModernAccountType)
  {
    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    selectedContainerObjectIDs2 = [(ICViewControllerManager *)self selectedContainerObjectIDs];
    lastObject2 = [selectedContainerObjectIDs2 lastObject];
    v9 = [modernManagedObjectContext ic_existingObjectWithID:lastObject2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)selectedModernFolder
{
  selectedContainerObjectIDs = [(ICViewControllerManager *)self selectedContainerObjectIDs];
  lastObject = [selectedContainerObjectIDs lastObject];
  ic_isModernFolderType = [lastObject ic_isModernFolderType];

  if (ic_isModernFolderType)
  {
    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    selectedContainerObjectIDs2 = [(ICViewControllerManager *)self selectedContainerObjectIDs];
    lastObject2 = [selectedContainerObjectIDs2 lastObject];
    v9 = [modernManagedObjectContext ic_existingObjectWithID:lastObject2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setSplitViewExpandingOrCollapsing:(BOOL)collapsing
{
  collapsingCopy = collapsing;
  self->_splitViewExpandingOrCollapsing = collapsing;
  legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];
  [legacyNoteEditorViewController setSplitViewExpandingOrCollapsing:collapsingCopy];

  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController setSplitViewExpandingOrCollapsing:collapsingCopy];
}

- (void)showStartupWithForceWelcomeScreen:(BOOL)screen completion:(id)completion
{
  screenCopy = screen;
  completionCopy = completion;
  if ([(ICViewControllerManager *)self isWelcomeScreenVisible])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v7 = +[ICStartupController hasShownWelcomeScreen];
    v8 = +[ICStartupController shouldShowWelcomeOrWhatsNewScreen];
    v9 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D866C(v8, screenCopy, v9);
    }

    v10 = [ICStartupNavigationController alloc];
    window = [(ICViewControllerManager *)self window];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10004A520;
    v29[3] = &unk_100646058;
    v31 = v7;
    v29[4] = self;
    v30 = completionCopy;
    v12 = [(ICStartupNavigationController *)v10 initWithForceWelcomeScreen:screenCopy presentingWindow:window dismissBlock:v29];

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
    window2 = [(ICViewControllerManager *)self window];
    v17 = [(ICOverlayWindowPresenter *)v15 initWithRootViewController:v14 presentingWindow:window2];
    [(ICViewControllerManager *)self setStartupPresenter:v17];

    v18 = +[UIColor ic_dynamicWhiteBlackColor];
    view = [v14 view];
    [view setBackgroundColor:v18];

    v20 = +[UIColor blackColor];
    startupPresenter = [(ICViewControllerManager *)self startupPresenter];
    [startupPresenter setWindowBackgroundColor:v20];

    startupPresenter2 = [(ICViewControllerManager *)self startupPresenter];
    [startupPresenter2 setPresentAnimationType:2];

    startupPresenter3 = [(ICViewControllerManager *)self startupPresenter];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10004A72C;
    v26[3] = &unk_100645BA0;
    v27 = v14;
    v28 = v12;
    v24 = v12;
    v25 = v14;
    [startupPresenter3 presentWithCompletionBlock:v26];
  }
}

- (BOOL)hasMultipleModernAccounts
{
  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  folderDataSource = [folderListViewController folderDataSource];

  LOBYTE(folderListViewController) = [folderDataSource countOfModernAccounts] > 1;
  return folderListViewController;
}

- (BOOL)isMainSplitViewDisplayModeSecondaryOnly
{
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  v3 = [mainSplitViewController displayMode] == 1;

  return v3;
}

- (ICTTTextContentStorage)textContentStorage
{
  objc_opt_class();
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  textView = [noteEditorViewController textView];
  v5 = ICDynamicCast();

  objc_opt_class();
  textLayoutManager = [v5 textLayoutManager];
  textContentManager = [textLayoutManager textContentManager];
  v8 = ICDynamicCast();

  return v8;
}

- (void)setSelectedNoteBrowseContainerItemID:(id)d
{
  dCopy = d;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedNoteBrowseContainerItemID:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedNoteBrowseContainerItemID should not be called when feature enabled"];
  }

  else
  {
    [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:dCopy sideEffects:1];
  }
}

- (void)setSelectedNoteBrowseContainerItemID:(id)d sideEffects:(BOOL)effects
{
  dCopy = d;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedNoteBrowseContainerItemID:sideEffects:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedNoteBrowseContainerItemID should not be called when feature enabled"];
  }

  else if (effects)
  {
    if (([(ICItemIdentifier *)self->_selectedNoteBrowseContainerItemID isEqual:dCopy]& 1) == 0)
    {
      objc_storeStrong(&self->_selectedNoteBrowseContainerItemID, d);
      if (dCopy)
      {
        tagSelection = [(ICViewControllerManager *)self tagSelection];
        [tagSelection clear];
      }

      else
      {
        rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
        [rootNoteBrowseViewController setNoteContainer:0];

        rootNoteBrowseViewController2 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
        [rootNoteBrowseViewController2 setNoteCollection:0];

        rootNoteBrowseViewController3 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
        [rootNoteBrowseViewController3 setVirtualSmartFolder:0];

        [(ICViewControllerManager *)self setFocusedNoteObjectID:0];
      }

      if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
      {
        isSearchActiveWithQuery = [(ICViewControllerManager *)self isSearchActiveWithQuery];
        if (dCopy)
        {
          if ((isSearchActiveWithQuery & 1) == 0)
          {
            [(ICViewControllerManager *)self setMostRecentNonSearchContainerItemID:dCopy];
          }
        }
      }

      window = [(ICViewControllerManager *)self window];
      windowScene = [window windowScene];
      [(ICViewControllerManager *)self updateSceneTitle:windowScene];
    }
  }

  else
  {
    objc_storeStrong(&self->_selectedNoteBrowseContainerItemID, d);
  }
}

- (void)setSelectedNoteObjectID:(id)d
{
  dCopy = d;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedNoteObjectID:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedNoteObjectID should not be called when feature enabled"];
  }

  else
  {
    [(ICViewControllerManager *)self setSelectedNoteObjectID:dCopy sideEffects:1];
  }
}

- (void)setSelectedNoteObjectID:(id)d sideEffects:(BOOL)effects
{
  dCopy = d;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedNoteObjectID:sideEffects:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedNoteObjectID should not be called when feature enabled"];
  }

  else if (effects)
  {
    [(ICViewControllerManager *)self setPreviousSelectedNoteObjectID:self->_selectedNoteObjectID];
    objc_storeStrong(&self->_selectedNoteObjectID, d);
    selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];

    if (selectedNoteObjectID)
    {
      [(ICViewControllerManager *)self setSelectedInvitationObjectID:0 sideEffects:0];
    }

    previousSelectedNoteObjectID = [(ICViewControllerManager *)self previousSelectedNoteObjectID];
    v10 = [previousSelectedNoteObjectID isEqual:dCopy];

    if ((v10 & 1) == 0)
    {
      previousSelectedNoteObjectID2 = [(ICViewControllerManager *)self previousSelectedNoteObjectID];
      [(ICViewControllerManager *)self deleteEmptyNoteIfNeeded:previousSelectedNoteObjectID2];
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
    objc_storeStrong(&self->_selectedNoteObjectID, d);
  }
}

- (NSManagedObjectID)previousSelectedNoteObjectID
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    previousSelectedNoteObjectID = [selectionStateController previousSelectedNoteObjectID];
  }

  else
  {
    previousSelectedNoteObjectID = self->_previousSelectedNoteObjectID;
  }

  return previousSelectedNoteObjectID;
}

- (void)setPreviousSelectedNoteObjectID:(id)d
{
  dCopy = d;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setPreviousSelectedNoteObjectID:]" simulateCrash:1 showAlert:0 format:@"VCM::setPreviousSelectedNoteObjectID should not be called when feature enabled"];
  }

  else
  {
    objc_storeStrong(&self->_previousSelectedNoteObjectID, d);
  }
}

- (NSManagedObjectID)selectedInvitationObjectID
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    selectedInvitationObjectID = [selectionStateController selectedInvitationObjectID];
  }

  else
  {
    selectedInvitationObjectID = self->_selectedInvitationObjectID;
  }

  return selectedInvitationObjectID;
}

- (void)setSelectedInvitationObjectID:(id)d
{
  dCopy = d;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedInvitationObjectID:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedInvitationObjectID should not be called when feature enabled"];
  }

  else
  {
    [(ICViewControllerManager *)self setSelectedInvitationObjectID:dCopy sideEffects:1];
  }
}

- (void)setSelectedInvitationObjectID:(id)d sideEffects:(BOOL)effects
{
  effectsCopy = effects;
  dCopy = d;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedInvitationObjectID:sideEffects:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedInvitationObjectID should not be called when feature enabled"];
  }

  else
  {
    objc_storeStrong(&self->_selectedInvitationObjectID, d);
    if (effectsCopy)
    {
      selectedInvitationObjectID = [(ICViewControllerManager *)self selectedInvitationObjectID];

      if (selectedInvitationObjectID)
      {
        [(ICViewControllerManager *)self setSelectedNoteObjectID:0 sideEffects:0];
      }
    }
  }
}

- (void)setTagSelection:(id)selection
{
  selectionCopy = selection;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setTagSelection:]" simulateCrash:1 showAlert:0 format:@"VCM::setTagSelection should not be called when feature enabled"];
  }

  else
  {
    objc_storeStrong(&self->_tagSelection, selection);
  }
}

- (NSManagedObjectID)focusedNoteObjectID
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    focusedNoteObjectID = [selectionStateController focusedNoteObjectID];
  }

  else
  {
    focusedNoteObjectID = self->_focusedNoteObjectID;
  }

  return focusedNoteObjectID;
}

- (void)setFocusedNoteObjectID:(id)d
{
  dCopy = d;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setFocusedNoteObjectID:]" simulateCrash:1 showAlert:0 format:@"VCM::setFocusedNoteObjectID should not be called when feature enabled"];
  }

  else
  {
    objc_storeStrong(&self->_focusedNoteObjectID, d);
  }
}

- (void)setActivityStreamSelection:(id)selection
{
  selectionCopy = selection;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    activityStreamSelection = [(ICViewControllerManager *)self selectionStateController];
    [activityStreamSelection setActivityStreamSelection:selectionCopy];
  }

  else
  {
    v5 = selectionCopy;
    activityStreamSelection = self->_activityStreamSelection;
    self->_activityStreamSelection = v5;
  }

  activityStreamNavigationController = [(ICViewControllerManager *)self activityStreamNavigationController];
  [activityStreamNavigationController setSelection:selectionCopy];

  presentedActivityStreamNavigationController = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
  [presentedActivityStreamNavigationController setSelection:selectionCopy];

  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  attributionSidebarController = [noteEditorViewController attributionSidebarController];
  filter = [selectionCopy filter];
  [attributionSidebarController setFilter:filter animated:1];

  if (selectionCopy)
  {
    [(ICViewControllerManager *)self stopEditing];
  }

  else
  {
    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    [noteEditorViewController2 hideActivityStreamToolbarAnimated:1];
  }

  [(ICViewControllerManager *)self updateIgnoreTextViewTaps];
}

- (ICItemIdentifier)mostRecentNonSearchContainerItemID
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    mostRecentNonSearchContainerItemID = [selectionStateController mostRecentNonSearchContainerItemID];
  }

  else
  {
    mostRecentNonSearchContainerItemID = self->_mostRecentNonSearchContainerItemID;
  }

  return mostRecentNonSearchContainerItemID;
}

- (void)setMostRecentNonSearchContainerItemID:(id)d
{
  dCopy = d;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setMostRecentNonSearchContainerItemID:]" simulateCrash:1 showAlert:0 format:@"VCM::setMostRecentNonSearchContainerItemID should not be called when feature enabled"];
  }

  else
  {
    objc_storeStrong(&self->_mostRecentNonSearchContainerItemID, d);
  }
}

- (ICSearchResult)selectedSearchResult
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    currentSelectedSearchResult = [selectionStateController currentSelectedSearchResult];
  }

  else
  {
    currentSelectedSearchResult = self->_selectedSearchResult;
  }

  return currentSelectedSearchResult;
}

- (void)setSelectedSearchResult:(id)result
{
  resultCopy = result;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager setSelectedSearchResult:]" simulateCrash:1 showAlert:0 format:@"VCM::setSelectedSearchResult should not be called when feature enabled"];
  }

  else
  {
    objc_storeStrong(&self->_selectedSearchResult, result);
  }
}

- (NSArray)mostRecentSelections
{
  selectionStateController = [(ICViewControllerManager *)self selectionStateController];
  mostRecentSelections = [selectionStateController mostRecentSelections];

  return mostRecentSelections;
}

- (void)splitViewControllerDidCollapse:(id)collapse
{
  [(ICViewControllerManager *)self setSplitViewExpandingOrCollapsing:0];
  [(ICViewControllerManager *)self setSplitViewCollapsing:0];
  currentSearchBarViewController = [(ICViewControllerManager *)self currentSearchBarViewController];
  noteSearchViewController = [currentSearchBarViewController noteSearchViewController];
  [noteSearchViewController cancelSearch];
}

- (void)splitViewControllerDidExpand:(id)expand
{
  [(ICViewControllerManager *)self setSplitViewExpandingOrCollapsing:0];
  currentSearchBarViewController = [(ICViewControllerManager *)self currentSearchBarViewController];
  noteSearchViewController = [currentSearchBarViewController noteSearchViewController];
  [noteSearchViewController cancelSearch];
}

- (void)splitViewControllerInteractivePresentationGestureWillBegin:(id)begin
{
  if (![(ICViewControllerManager *)self isInHTMLEditorMode])
  {
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    textView = [noteEditorViewController textView];
    [textView _willBeginInteractiveResize];
  }
}

- (void)splitViewControllerInteractivePresentationGestureDidEnd:(id)end
{
  if (![(ICViewControllerManager *)self isInHTMLEditorMode])
  {
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    textView = [noteEditorViewController textView];
    [textView _didEndInteractiveResize];
  }
}

- (void)splitViewController:(id)controller willShowColumn:(int64_t)column
{
  controllerCopy = controller;
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];

  if (mainSplitViewController == controllerCopy)
  {
    mainSplitViewController2 = [(ICViewControllerManager *)self mainSplitViewController];
    if ([mainSplitViewController2 preferredDisplacedColumn] == column)
    {
      isTrailingContentVisible = [(ICViewControllerManager *)self isTrailingContentVisible];

      if (isTrailingContentVisible)
      {
        transitionCoordinator = [controllerCopy transitionCoordinator];

        if (transitionCoordinator)
        {
          transitionCoordinator2 = [controllerCopy transitionCoordinator];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10004B930;
          v14[3] = &unk_100645E08;
          v14[4] = self;
          [transitionCoordinator2 animateAlongsideTransition:v14 completion:0];
        }

        else
        {
          mainSplitViewController3 = [(ICViewControllerManager *)self mainSplitViewController];
          displayMode = [mainSplitViewController3 displayMode];

          if (displayMode == 3)
          {
LABEL_10:
            [(ICViewControllerManager *)self setActivityStreamSelection:0];
            goto LABEL_11;
          }

          transitionCoordinator2 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
          [transitionCoordinator2 setPreferredDisplayMode:1];
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

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  displayMode = [controllerCopy displayMode];
  if (displayMode != mode)
  {
    v7 = displayMode;
    mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];

    if (mainSplitViewController != controllerCopy)
    {
      trailingSidebarSplitViewController = [(ICViewControllerManager *)self trailingSidebarSplitViewController];

      if (trailingSidebarSplitViewController != controllerCopy)
      {
        goto LABEL_48;
      }

      mainSplitViewController2 = [(ICViewControllerManager *)self mainSplitViewController];
      [mainSplitViewController2 updateStateForTrailingSidebarVisible:mode == 2];
      goto LABEL_47;
    }

    if (mode != 6 && v7 != 6)
    {
      isTrailingContentVisible = [(ICViewControllerManager *)self isTrailingContentVisible];
      if (mode == 1 || (isTrailingContentVisible & 1) == 0)
      {
        trailingSidebarViewController = [(ICViewControllerManager *)self trailingSidebarViewController];
        view = [trailingSidebarViewController view];
        [view bounds];
        v15 = v14;
        v17 = v16;

        if ([(ICViewControllerManager *)self isTrailingContentVisible])
        {
          trailingSidebarViewController2 = [(ICViewControllerManager *)self trailingSidebarViewController];
          [trailingSidebarViewController2 sidebarWidth];
          v15 = v15 - v19;
        }

        if (mode == 4 || mode == 2)
        {
          mainSplitViewController3 = [(ICViewControllerManager *)self mainSplitViewController];
          style = [mainSplitViewController3 style];
          mainSplitViewController4 = [(ICViewControllerManager *)self mainSplitViewController];
          v23 = mainSplitViewController4;
          if (style == 2)
          {
            [mainSplitViewController4 supplementaryColumnWidth];
          }

          else
          {
            [mainSplitViewController4 primaryColumnWidth];
          }

          v25 = v24;

          v15 = v15 - v25;
        }

        if (mode == 4)
        {
          mainSplitViewController5 = [(ICViewControllerManager *)self mainSplitViewController];
          [mainSplitViewController5 primaryColumnWidth];
          v15 = v15 - v27;
        }

        mainSplitViewController6 = [(ICViewControllerManager *)self mainSplitViewController];
        v29 = [mainSplitViewController6 requiresNotificationForSecondaryColumnSize:{v15, v17}];

        trailingSidebarViewController3 = [(ICViewControllerManager *)self trailingSidebarViewController];
        isTransitioning = [trailingSidebarViewController3 isTransitioning];

        if (!isTransitioning && v29)
        {
          transitionCoordinator = [controllerCopy transitionCoordinator];
          [(ICViewControllerManager *)self sendNotificationForNoteEditorSizeChange:transitionCoordinator transitionCoordinator:v15, v17];
        }

        [(ICViewControllerManager *)self setProposedMainSplitViewControllerDisplayMode:mode];
        transitionCoordinator2 = [controllerCopy transitionCoordinator];
        [(ICViewControllerManager *)self sendNotificationForSplitViewDisplayModeChangeWithTransitionCoordinator:transitionCoordinator2];
      }
    }

    if ([(ICViewControllerManager *)self behavior]== 3 && (mode == 1 || v7 == 1))
    {
      [(ICViewControllerManager *)self updateNoteEditorBezelsIfNeededWithDisplayMode:mode force:1];
    }

    if (mode <= 6 && ((1 << mode) & 0x68) != 0)
    {
      [(ICViewControllerManager *)self stopEditing];
    }

    if (([controllerCopy isCollapsed] & 1) == 0)
    {
      if (![(ICViewControllerManager *)self noteContainerViewMode]&& (mode == 2 ? (v34 = v7 == 4) : (v34 = 0), !v34 ? (v35 = 0) : (v35 = 1), v7 == 5 ? (v36 = mode == 3) : (v36 = 0), v36 || (v35 & 1) != 0) || (v37 = [(ICViewControllerManager *)self noteContainerViewMode], mode == 1) && (v7 & 0xFFFFFFFFFFFFFFFELL) == 2 && v37 == 1)
      {
        mainSplitViewController2 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
        [mainSplitViewController2 becomeFirstResponder];
LABEL_47:
      }
    }
  }

LABEL_48:
}

- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column
{
  controllerCopy = controller;
  outerSplitViewController = [(ICViewControllerManager *)self outerSplitViewController];

  if (outerSplitViewController == controllerCopy)
  {
    selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
    [(ICViewControllerManager *)self setMostRecentRegularWidthSelectedNoteObjectID:selectedNoteObjectID];

    tagSelection = [(ICViewControllerManager *)self tagSelection];
    [(ICViewControllerManager *)self setMostRecentRegularWidthTagSelection:tagSelection];

    selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    [(ICViewControllerManager *)self setMostRecentRegularWidthSelectedNoteBrowseContainerItemID:selectedNoteBrowseContainerItemID];
  }

  compactNavigationController = [(ICViewControllerManager *)self compactNavigationController];
  viewControllers = [compactNavigationController viewControllers];
  if ([viewControllers count])
  {
    behavior = [(ICViewControllerManager *)self behavior];

    if (behavior != 3)
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
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [noteEditorViewController note];
  if (!note)
  {
    legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    note2 = [legacyNoteEditorViewController note];
    v14 = note2 != 0;
  }

  if ([(ICViewControllerManager *)self isApplyingStateRestoreArchive])
  {
    noteContainerViewMode = [(ICViewControllerManager *)self noteContainerViewMode];
    selectedNoteObjectID2 = [(ICViewControllerManager *)self selectedNoteObjectID];
    v21 = selectedNoteObjectID2;
    if (noteContainerViewMode == 1)
    {
      if (!selectedNoteObjectID2)
      {
        selectedContainerIdentifiers = [(ICViewControllerManager *)self selectedContainerIdentifiers];
        column = 2 * ([selectedContainerIdentifiers count] != 0);
LABEL_27:

        goto LABEL_28;
      }
    }

    else if (!selectedNoteObjectID2)
    {
      selectedContainerIdentifiers = [(ICViewControllerManager *)self selectedContainerIdentifiers];
      column = [selectedContainerIdentifiers count] != 0;
      goto LABEL_27;
    }

    column = 2;
LABEL_28:

    goto LABEL_29;
  }

  noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
  presentedViewController = [noteEditorViewController2 presentedViewController];
  ic_hasFullScreenModalPresentationStyle = [presentedViewController ic_hasFullScreenModalPresentationStyle];

  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  noteSearchViewController = [currentNoteBrowseViewController noteSearchViewController];
  v27 = v14;
  if ([noteSearchViewController isActive])
  {
    currentNoteBrowseViewController2 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
    noteSearchViewController2 = [currentNoteBrowseViewController2 noteSearchViewController];
    ic_isViewVisible = [noteSearchViewController2 ic_isViewVisible];
  }

  else
  {
    ic_isViewVisible = 0;
  }

  isMainSplitViewDisplayModeSecondaryOnly = [(ICViewControllerManager *)self isMainSplitViewDisplayModeSecondaryOnly];
  isTagSelected = [(ICViewControllerManager *)self isTagSelected];
  noteContainerViewMode2 = [(ICViewControllerManager *)self noteContainerViewMode];
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  displayMode = [mainSplitViewController displayMode];
  if (noteContainerViewMode2)
  {
    if (displayMode == 2)
    {
      v81 = 1;
    }

    else
    {
      mainSplitViewController2 = [(ICViewControllerManager *)self mainSplitViewController];
      v81 = [mainSplitViewController2 displayMode] == 3;
    }

    secondaryNavigationController = [(ICViewControllerManager *)self secondaryNavigationController];
    viewControllers2 = [secondaryNavigationController viewControllers];
    if ([viewControllers2 count])
    {
      isMainSplitViewDisplayModeSecondaryOnly2 = [(ICViewControllerManager *)self isMainSplitViewDisplayModeSecondaryOnly];
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (displayMode == 4)
  {
    v81 = 1;
  }

  else
  {
    mainSplitViewController3 = [(ICViewControllerManager *)self mainSplitViewController];
    if ([mainSplitViewController3 displayMode] == 6)
    {
      v81 = 1;
    }

    else
    {
      mainSplitViewController4 = [(ICViewControllerManager *)self mainSplitViewController];
      v81 = [mainSplitViewController4 displayMode] == 5;
    }
  }

  secondaryNavigationController = [(ICViewControllerManager *)self supplementaryNavigationController];
  viewControllers2 = [secondaryNavigationController viewControllers];
  if (![viewControllers2 count])
  {
LABEL_42:
    isMainSplitViewDisplayModeSecondaryOnly2 = 0;
    goto LABEL_45;
  }

  mainSplitViewController5 = [(ICViewControllerManager *)self mainSplitViewController];
  if ([mainSplitViewController5 displayMode] == 2)
  {
    isMainSplitViewDisplayModeSecondaryOnly2 = 1;
  }

  else
  {
    [(ICViewControllerManager *)self mainSplitViewController];
    v80 = isMainSplitViewDisplayModeSecondaryOnly;
    v47 = v46 = isTagSelected;
    isMainSplitViewDisplayModeSecondaryOnly2 = [v47 displayMode] == 3;

    isTagSelected = v46;
    isMainSplitViewDisplayModeSecondaryOnly = v80;
  }

LABEL_45:
  v14 = v27;
  if (ic_hasFullScreenModalPresentationStyle)
  {
    goto LABEL_53;
  }

  if ((isMainSplitViewDisplayModeSecondaryOnly & 1) != 0 || [(ICViewControllerManager *)self behavior]== 3)
  {
    if (v27)
    {
      goto LABEL_53;
    }

    column = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];

    if (!column)
    {
      goto LABEL_30;
    }

    goto LABEL_50;
  }

  selectedNoteObjectID3 = [(ICViewControllerManager *)self selectedNoteObjectID];

  if (selectedNoteObjectID3)
  {
    goto LABEL_53;
  }

  if (!(ic_isViewVisible & 1 | !v81 | isTagSelected & v81 & 1))
  {
    column = 0;
    goto LABEL_30;
  }

  if ((isMainSplitViewDisplayModeSecondaryOnly2 | ic_isViewVisible | isTagSelected & v81))
  {
LABEL_50:
    if (![(ICViewControllerManager *)self noteContainerViewMode])
    {
      column = 1;
      goto LABEL_30;
    }

LABEL_53:
    [(ICViewControllerManager *)self selectionStateTrackingEnabled];
    v42 = 1;
    column = 2;
    goto LABEL_54;
  }

LABEL_29:
  if (column == 2)
  {
    goto LABEL_53;
  }

LABEL_30:
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    [(ICViewControllerManager *)self setSelectedNoteObjectID:0];
  }

  noteEditorViewController3 = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController3 stopTextFindingIfNecessary];

  legacyNoteEditorViewController2 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
  [legacyNoteEditorViewController2 stopTextFinding];

  selectionStateTrackingEnabled = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
  v42 = 0;
  if (!column && (selectionStateTrackingEnabled & 1) == 0)
  {
    [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:0 sideEffects:0];
    column = 0;
    v42 = 0;
  }

LABEL_54:
  childPrimaryViewController = [(ICViewControllerManager *)self childPrimaryViewController];
  v50 = [NSMutableArray arrayWithObject:childPrimaryViewController];

  noteContainerViewMode3 = [(ICViewControllerManager *)self noteContainerViewMode];
  if ((column - 1) <= 1 && !noteContainerViewMode3)
  {
    supplementaryNavigationController = [(ICViewControllerManager *)self supplementaryNavigationController];
    viewControllers3 = [supplementaryNavigationController viewControllers];
    [v50 ic_addObjectsFromNonNilArray:viewControllers3];
  }

  if (v42)
  {
    v54 = [(ICViewControllerManager *)self noteContainerViewMode]!= 1;
    secondaryNavigationController2 = [(ICViewControllerManager *)self secondaryNavigationController];
    viewControllers4 = [secondaryNavigationController2 viewControllers];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v57 = viewControllers4;
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
  compactNavigationController2 = [(ICViewControllerManager *)self compactNavigationController];
  [compactNavigationController2 setViewControllers:v64];

  selectedModernNote = [(ICViewControllerManager *)self selectedModernNote];
  LODWORD(compactNavigationController2) = [selectedModernNote isSharedViaICloud];

  if (!compactNavigationController2)
  {
    goto LABEL_82;
  }

  if (![(ICViewControllerManager *)self isApplyingStateRestoreArchive])
  {
    window = [(ICViewControllerManager *)self window];
    rootViewController = [window rootViewController];
    ic_topViewController = [rootViewController ic_topViewController];
    if ([ic_topViewController ic_hasFullScreenModalPresentationStyle])
    {
LABEL_72:

      goto LABEL_73;
    }

    trailingSidebarSplitViewController = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
    if ([trailingSidebarSplitViewController displayMode] == 2)
    {
      goto LABEL_78;
    }

    trailingSidebarSplitViewController2 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
    if ([trailingSidebarSplitViewController2 displayMode] == 3)
    {

LABEL_78:
      goto LABEL_79;
    }

    if (![(ICViewControllerManager *)self usesSingleSplitView])
    {

      goto LABEL_72;
    }

    mainSplitViewController6 = [(ICViewControllerManager *)self mainSplitViewController];
    v78 = [mainSplitViewController6 viewControllerForColumn:4];
    activityStreamNavigationController = [(ICViewControllerManager *)self activityStreamNavigationController];

    if (v78 == activityStreamNavigationController)
    {
LABEL_79:
      v71 = 2;
LABEL_80:
      selectedModernNote2 = [(ICViewControllerManager *)self selectedModernNote];
      [(ICViewControllerManager *)self presentActivityStreamForObject:selectedModernNote2 viewMode:v71 animated:0];

      if ([(ICViewControllerManager *)self usesSingleSplitView])
      {
        mainSplitViewController7 = [(ICViewControllerManager *)self mainSplitViewController];
        [mainSplitViewController7 setViewController:0 forColumn:4];

        mainSplitViewController8 = [(ICViewControllerManager *)self mainSplitViewController];
        [mainSplitViewController8 hideColumn:4];
      }

      goto LABEL_82;
    }
  }

LABEL_73:
  activityStreamSelection = [(ICViewControllerManager *)self activityStreamSelection];

  if (activityStreamSelection)
  {
    v71 = 1;
    goto LABEL_80;
  }

LABEL_82:

LABEL_83:
  return 3;
}

- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  [(ICViewControllerManager *)self setSplitViewExpandingOrCollapsing:1];
  trailingSidebarSplitViewController = [(ICViewControllerManager *)self trailingSidebarSplitViewController];

  if (trailingSidebarSplitViewController == controllerCopy && ![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    if (!selectedNoteBrowseContainerItemID)
    {
      if ([(ICViewControllerManager *)self isTagSelected])
      {
LABEL_7:
        if (![(ICViewControllerManager *)self isTagSelected])
        {
          mostRecentRegularWidthTagSelection = [(ICViewControllerManager *)self mostRecentRegularWidthTagSelection];
          [(ICViewControllerManager *)self setTagSelection:mostRecentRegularWidthTagSelection];
        }

        if (![(ICViewControllerManager *)self isTagSelected])
        {
          selectedNoteBrowseContainerItemID2 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];

          if (!selectedNoteBrowseContainerItemID2)
          {
            mostRecentRegularWidthSelectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self mostRecentRegularWidthSelectedNoteBrowseContainerItemID];
            [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:mostRecentRegularWidthSelectedNoteBrowseContainerItemID sideEffects:0];
          }
        }

        selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];

        if (!selectedNoteObjectID)
        {
          mostRecentRegularWidthSelectedNoteObjectID = [(ICViewControllerManager *)self mostRecentRegularWidthSelectedNoteObjectID];
          [(ICViewControllerManager *)self setSelectedNoteObjectID:mostRecentRegularWidthSelectedNoteObjectID sideEffects:0];
        }

        [(ICViewControllerManager *)self setMostRecentRegularWidthSelectedNoteObjectID:0];
        [(ICViewControllerManager *)self setMostRecentRegularWidthTagSelection:0];
        [(ICViewControllerManager *)self setMostRecentRegularWidthSelectedNoteBrowseContainerItemID:0];
        [(ICViewControllerManager *)self updateSplitViewForCurrentViewModeWithCompletion:0];
        goto LABEL_15;
      }

      selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self mostRecentRegularWidthSelectedNoteBrowseContainerItemID];
      [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:selectedNoteBrowseContainerItemID sideEffects:0];
    }

    goto LABEL_7;
  }

LABEL_15:
  modeCopy = mode;
  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  navigationItem = [folderListViewController navigationItem];
  searchController = [navigationItem searchController];
  isActive = [searchController isActive];

  v121 = isActive;
  if (isActive)
  {
    folderListViewController2 = [(ICViewControllerManager *)self folderListViewController];
    navigationItem2 = [folderListViewController2 navigationItem];
    searchController2 = [navigationItem2 searchController];

    searchBar = [searchController2 searchBar];
    searchTextField = [searchBar searchTextField];
    text = [searchTextField text];

    searchBar2 = [searchController2 searchBar];
    searchTextField2 = [searchBar2 searchTextField];
    tokens = [searchTextField2 tokens];

    searchBar3 = [searchController2 searchBar];
    selectedScopeButtonIndex = [searchBar3 selectedScopeButtonIndex];

    searchBar4 = [searchController2 searchBar];
    searchTextField3 = [searchBar4 searchTextField];
    isFirstResponder = [searchTextField3 isFirstResponder];

    folderListViewController3 = [(ICViewControllerManager *)self folderListViewController];
    navigationItem3 = [folderListViewController3 navigationItem];
    searchController3 = [navigationItem3 searchController];
    [searchController3 setActive:0];
  }

  else
  {
    isFirstResponder = 0;
    selectedScopeButtonIndex = 0;
    tokens = 0;
    text = 0;
  }

  v113 = controllerCopy;
  v120 = +[NSMutableArray array];
  v33 = +[NSMutableArray array];
  compactNavigationController = [(ICViewControllerManager *)self compactNavigationController];
  viewControllers = [compactNavigationController viewControllers];

  v126 = 0u;
  v127 = 0u;
  v114 = [(ICViewControllerManager *)self noteContainerViewMode]== 0;
  v128 = 0u;
  v129 = 0u;
  obj = viewControllers;
  v36 = [obj countByEnumeratingWithState:&v126 objects:v131 count:16];
  v37 = modeCopy;
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
          legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];
          v47 = legacyNoteEditorViewController;
          if (v43 == legacyNoteEditorViewController)
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
    rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    v52 = [v33 containsObject:rootNoteBrowseViewController];

    v53 = v33;
    v54 = tokens;
    v55 = v113;
    v56 = text;
    v57 = v114;
    if ((v52 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v54 = tokens;
    v55 = v113;
    v56 = text;
    v57 = v114;
    if ([(ICViewControllerManager *)self usesSingleSplitView])
    {
      if (![(ICViewControllerManager *)self noteContainerViewMode])
      {
        rootNoteBrowseViewController2 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
        v60 = [v120 containsObject:rootNoteBrowseViewController2];

        v53 = v120;
        v33 = v116;
        if ((v60 & 1) == 0)
        {
LABEL_65:
          rootNoteBrowseViewController3 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
          [v53 insertObject:rootNoteBrowseViewController3 atIndex:0];
        }
      }
    }
  }

  if (![(ICViewControllerManager *)self noteContainerViewMode])
  {
    if ([(ICViewControllerManager *)self behavior]== 1 || ([(ICViewControllerManager *)self trailingSidebarSplitViewController], v88 = objc_claimAutoreleasedReturnValue(), v88, v88 == v55) && v37 == 3)
    {
      noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
      v90 = [v33 containsObject:noteEditorViewController];

      if ((v90 & 1) == 0)
      {
        noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
        [v33 insertObject:noteEditorViewController2 atIndex:0];
      }
    }
  }

  if ([obj count])
  {
    v118 = v37;
    childPrimaryViewController = [(ICViewControllerManager *)self childPrimaryViewController];
    v130 = childPrimaryViewController;
    v62 = [NSArray arrayWithObjects:&v130 count:1];
    primaryNavigationController = [(ICViewControllerManager *)self primaryNavigationController];
    [primaryNavigationController setViewControllers:v62];

    v64 = [v120 copy];
    supplementaryNavigationController = [(ICViewControllerManager *)self supplementaryNavigationController];
    [supplementaryNavigationController setViewControllers:v64];

    v66 = [v33 copy];
    secondaryNavigationController = [(ICViewControllerManager *)self secondaryNavigationController];
    [secondaryNavigationController setViewControllers:v66];

    if ((v119 | v57))
    {
      selectedContainerIdentifiers = [(ICViewControllerManager *)self selectedContainerIdentifiers];
      if (![selectedContainerIdentifiers count])
      {
        excludedContainerIdentifiers = [(ICViewControllerManager *)self excludedContainerIdentifiers];
        if ([excludedContainerIdentifiers count])
        {
          goto LABEL_76;
        }

        v70 = selectedContainerIdentifiers;
        selectedNoteObjectID2 = [(ICViewControllerManager *)self selectedNoteObjectID];

        if (selectedNoteObjectID2)
        {
          selectedNoteObjectID3 = [(ICViewControllerManager *)self selectedNoteObjectID];
          excludedContainerIdentifiers = [(ICViewControllerManager *)self defaultContainerObjectIDForNoteWithObjectID:selectedNoteObjectID3];

          selectedContainerIdentifiers = [NSSet ic_setFromNonNilObject:excludedContainerIdentifiers];

LABEL_76:
        }

        else
        {
          selectedContainerIdentifiers = v70;
        }
      }

      folderListViewController4 = [(ICViewControllerManager *)self folderListViewController];
      dataSource = [folderListViewController4 dataSource];
      firstRelevantItemIdentifier = [dataSource firstRelevantItemIdentifier];

      v76 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:firstRelevantItemIdentifier]!= 1;
      if (![selectedContainerIdentifiers count])
      {
        excludedContainerIdentifiers2 = [(ICViewControllerManager *)self excludedContainerIdentifiers];
        v78 = [excludedContainerIdentifiers2 count];

        if (!v78)
        {
          v79 = [NSSet ic_setFromNonNilObject:firstRelevantItemIdentifier];

          selectedContainerIdentifiers = v79;
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
        excludedContainerIdentifiers3 = [(ICViewControllerManager *)self excludedContainerIdentifiers];
        [(ICViewControllerManager *)self rootNoteBrowseViewController];
        v82 = firstRelevantItemIdentifier;
        v83 = v56;
        v85 = v84 = selectedContainerIdentifiers;
        v86 = [(ICViewControllerManager *)self noteContainerViewMode]== 0;
        v87 = [NSNumber numberWithBool:v57 || v76];
        BYTE1(v109) = v86;
        v54 = tokens;
        LOBYTE(v109) = 0;
        [(ICViewControllerManager *)self selectContainerWithIdentifiers:v84 excludingIdentifiers:excludedContainerIdentifiers3 isChangingDisplayMode:1 noteBrowseViewController:v85 usingRootViewController:1 deferUntilDataLoaded:0 dismissOverlayContent:&__kCFBooleanFalse animated:v109 ensurePresented:v87 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:v80 dataRenderedBlock:?];

        selectedContainerIdentifiers = v84;
        v56 = v83;
        firstRelevantItemIdentifier = v82;
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
      currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
      [currentNoteBrowseViewController startSearchWithSearchQuery:v56 searchTokens:v54 searchScope:selectedScopeButtonIndex becomeFirstResponder:isFirstResponder];
    }
  }

  trailingSidebarSplitViewController2 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];

  if (trailingSidebarSplitViewController2 == v55)
  {
    mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController setPreferredDisplayMode:v37];

    presentedActivityStreamNavigationController = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];

    if (presentedActivityStreamNavigationController)
    {
      presentedActivityStreamNavigationController2 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
      viewMode = [presentedActivityStreamNavigationController2 viewMode];

      if (viewMode == 4)
      {
        v37 = 1;
      }

      else
      {
        [(ICViewControllerManager *)self hidePresentedActivityStreamNavigationControllerWithCompletion:0];
        trailingSidebarSplitViewController3 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
        shouldRenderAsOverlay = [trailingSidebarSplitViewController3 shouldRenderAsOverlay];

        if (shouldRenderAsOverlay)
        {
          activityStreamSelection = [(ICViewControllerManager *)self activityStreamSelection];

          if (activityStreamSelection)
          {
            noteEditorViewController3 = [(ICViewControllerManager *)self noteEditorViewController];
            selectedModernNote = [(ICViewControllerManager *)self selectedModernNote];
            activityStreamSelection2 = [(ICViewControllerManager *)self activityStreamSelection];
            [noteEditorViewController3 showActivityStreamToolbarForObject:selectedModernNote selection:activityStreamSelection2 animated:0];
          }

          if ((viewMode & 0xFFFFFFFFFFFFFFFELL) == 2)
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
    presentedActivityStreamNavigationController3 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];

    if (presentedActivityStreamNavigationController3)
    {
      presentedActivityStreamNavigationController4 = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
      viewMode2 = [presentedActivityStreamNavigationController4 viewMode];

      if (viewMode2 != 4)
      {
        [(ICViewControllerManager *)self hidePresentedActivityStreamNavigationControllerWithCompletion:0];
      }

      transitionCoordinator = [v55 transitionCoordinator];
      v123[0] = _NSConcreteStackBlock;
      v123[1] = 3221225472;
      v123[2] = sub_10004D41C;
      v123[3] = &unk_100645E08;
      v123[4] = self;
      [transitionCoordinator animateAlongsideTransition:&stru_1006460C0 completion:v123];
    }
  }

  return v37;
}

- (void)screenshotService:(id)service generatePDFRepresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!-[ICViewControllerManager isNoteEditorVisible](self, "isNoteEditorVisible") || -[ICViewControllerManager isWelcomeScreenVisible](self, "isWelcomeScreenVisible") || (-[ICViewControllerManager window](self, "window"), v6 = objc_claimAutoreleasedReturnValue(), [v6 ic_topmostPresentedViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, 0x7FFFFFFFFFFFFFFFLL, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
    }

    goto LABEL_6;
  }

  if ([(ICViewControllerManager *)self isInHTMLEditorMode])
  {
    legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    printFormatter = [legacyNoteEditorViewController printFormatter];
    contentLayer = [legacyNoteEditorViewController contentLayer];
    [contentLayer contentOffset];
    v12 = v11;
    contentLayer2 = [legacyNoteEditorViewController contentLayer];
    noteHTMLEditorView = [contentLayer2 noteHTMLEditorView];
    webView = [noteHTMLEditorView webView];
    scrollView = [webView scrollView];
    [scrollView contentSize];
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
    v36 = printFormatter;
    v38 = v32;
    v37 = completionCopy;
    v34 = printFormatter;
    dispatch_async(v33, block);

    goto LABEL_6;
  }

  legacyNoteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [legacyNoteEditorViewController note];
  if (([note isPasswordProtected] & 1) == 0)
  {

    goto LABEL_15;
  }

  note2 = [legacyNoteEditorViewController note];
  isAuthenticated = [note2 isAuthenticated];

  if (isAuthenticated)
  {
LABEL_15:
    note3 = [legacyNoteEditorViewController note];
    view = [legacyNoteEditorViewController view];
    [view bounds];
    v25 = v24;
    v27 = v26;
    traitCollection = [legacyNoteEditorViewController traitCollection];
    printFormatter = [ICTextViewController printFormatterForNote:note3 withSize:traitCollection traitCollection:v25, v27];

    contentLayer = [legacyNoteEditorViewController textView];
    [contentLayer contentOffset];
    v30 = v29;
    contentLayer2 = [legacyNoteEditorViewController textView];
    [contentLayer2 contentSize];
    v18 = v30 / v31;
    goto LABEL_16;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0x7FFFFFFFFFFFFFFFLL, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
  }

LABEL_6:
}

- (BOOL)canBeginEditingForNoteDisplayController:(id)controller
{
  v3 = +[ICAppDelegate sharedInstance];
  isAnyWelcomeScreenVisible = [v3 isAnyWelcomeScreenVisible];

  if (isAnyWelcomeScreenVisible)
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Was asked to begin editing while welcome screen was up", v7, 2u);
    }
  }

  return isAnyWelcomeScreenVisible ^ 1;
}

- (void)noteEditorDidTapAllNotes:(id)notes
{
  notesCopy = notes;
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
  stringValue = [&__kCFBooleanTrue stringValue];
  v12 = stringValue;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = [(ICViewControllerManager *)self quickNoteQueryOptionsFromEditor:notesCopy additionalOptions:v9];

  [(ICViewControllerManager *)self launchNotesAppFromLockscreenWithQueryOptions:v10 completionBlock:0];
}

- (void)noteEditorDidTapActionMenu:(id)menu
{
  menuCopy = menu;
  v5 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D87F0();
  }

  note = [menuCopy note];
  isEmpty = [note isEmpty];

  if ((isEmpty & 1) == 0)
  {
    v11 = ICQuickNoteURLOptionShowShareSheet;
    stringValue = [&__kCFBooleanTrue stringValue];
    v12 = stringValue;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [(ICViewControllerManager *)self quickNoteQueryOptionsFromEditor:menuCopy additionalOptions:v9];

    [(ICViewControllerManager *)self launchNotesAppFromLockscreenWithQueryOptions:v10 completionBlock:0];
  }
}

- (void)noteEditorDidTapAddPeople:(id)people
{
  peopleCopy = people;
  v5 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D8824();
  }

  v9 = ICQuickNoteURLOptionShowiCloudShareSheet;
  stringValue = [&__kCFBooleanTrue stringValue];
  v10 = stringValue;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [(ICViewControllerManager *)self quickNoteQueryOptionsFromEditor:peopleCopy additionalOptions:v7];

  [(ICViewControllerManager *)self launchNotesAppFromLockscreenWithQueryOptions:v8 completionBlock:0];
}

- (BOOL)noteEditor:(id)editor didTapAttachment:(id)attachment
{
  editorCopy = editor;
  attachmentCopy = attachment;
  v8 = +[ICQuickNoteSessionManager sharedManager];
  isSecureScreenShowing = [v8 isSecureScreenShowing];

  if (isSecureScreenShowing)
  {
    v10 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D8858();
    }

    if (attachmentCopy)
    {
      v15 = ICQuickNoteURLOptionAttachmentIdentifier;
      identifier = [attachmentCopy identifier];
      v16 = identifier;
      v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    }

    else
    {
      v12 = &__NSDictionary0__struct;
    }

    v13 = [(ICViewControllerManager *)self quickNoteQueryOptionsFromEditor:editorCopy additionalOptions:v12];
    [(ICViewControllerManager *)self launchNotesAppFromLockscreenWithQueryOptions:v13 completionBlock:0];
  }

  return isSecureScreenShowing;
}

- (id)quickNoteQueryOptionsFromEditor:(id)editor additionalOptions:(id)options
{
  editorCopy = editor;
  optionsCopy = options;
  textView = [editorCopy textView];
  [textView contentOffset];
  v9 = v8;

  v10 = [NSMutableDictionary dictionaryWithDictionary:optionsCopy];

  note = [editorCopy note];
  identifier = [note identifier];

  if (identifier)
  {
    note2 = [editorCopy note];
    identifier2 = [note2 identifier];
    [v10 setObject:identifier2 forKeyedSubscript:ICQuickNoteURLOptionNoteIdentifier];

    v15 = [NSNumber numberWithDouble:v9];
    stringValue = [v15 stringValue];
    [v10 setObject:stringValue forKeyedSubscript:ICQuickNoteURLOptionContentOffsetY];
  }

  v17 = [v10 copy];

  return v17;
}

- (void)updateForFingerDrawingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  behavior = [(ICViewControllerManager *)self behavior];
  mainSplitViewController = behavior;
  if (enabledCopy)
  {
    if ([(ICViewControllerManager *)self noteContainerViewMode]|| mainSplitViewController == 1)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
      traitCollection = [mainSplitViewController traitCollection];
      v10 = [(ICViewControllerManager *)self defaultDisplayModeButtonVisibilityForTraitCollection:traitCollection];
      v9 = 1;
    }

    mainSplitViewController2 = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController2 setDisplayModeButtonVisibility:v10];

    if (v9)
    {
    }

    v12 = 0;
  }

  else
  {
    if (behavior == 1)
    {
      v13 = 0;
    }

    else
    {
      traitCollection = [(ICViewControllerManager *)self mainSplitViewController];
      v3TraitCollection = [traitCollection traitCollection];
      v13 = [(ICViewControllerManager *)self defaultDisplayModeButtonVisibilityForTraitCollection:v3TraitCollection];
    }

    mainSplitViewController3 = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController3 setDisplayModeButtonVisibility:v13];

    if (mainSplitViewController != 1)
    {
    }

    v12 = [(ICViewControllerManager *)self behavior]!= 3;
  }

  mainSplitViewController4 = [(ICViewControllerManager *)self mainSplitViewController];
  [mainSplitViewController4 setPresentsWithGesture:v12];

  compactNavigationController = [(ICViewControllerManager *)self compactNavigationController];
  interactivePopGestureRecognizer = [compactNavigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:!enabledCopy];
}

- (void)startSearchWithSearchQueryString:(id)string becomeFirstResponder:(BOOL)responder
{
  responderCopy = responder;
  stringCopy = string;
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  [currentNoteBrowseViewController startSearchWithSearchQuery:stringCopy searchTokens:0 searchScope:0 becomeFirstResponder:responderCopy];
}

- (void)updateNoteEditorViewControllerWithStateArchive:(id)archive
{
  archiveCopy = archive;
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [noteEditorViewController note];

  if (note)
  {
    if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
    {
      selectionStateController = [(ICViewControllerManager *)self selectionStateController];
      [selectionStateController setupWithArchive:archiveCopy];

      objectID = [note objectID];
      objectID2 = [note objectID];
      isTemporaryID = [objectID2 isTemporaryID];

      if (isTemporaryID)
      {
        managedObjectContext = [note managedObjectContext];
        v32 = note;
        v12 = [NSArray arrayWithObjects:&v32 count:1];
        v27 = 0;
        v13 = [managedObjectContext obtainPermanentIDsForObjects:v12 error:&v27];
        v14 = v27;

        if (!v13 || v14)
        {
          v24 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v29 = v14;
            v30 = 2112;
            v31 = note;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Conversion of temporary ID to permanent ID failed with error %@ for note %@", buf, 0x16u);
          }

          noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
          [noteEditorViewController2 loadViewIfNeeded];

          selectionStateController2 = [archiveCopy scrollStateForNote:note];
          noteEditorViewController3 = [(ICViewControllerManager *)self noteEditorViewController];
          [noteEditorViewController3 applyScrollStateFromArchive:selectionStateController2];

          goto LABEL_16;
        }

        objectID3 = [note objectID];

        objectID = objectID3;
      }

      v14 = objc_alloc_init(_TtC11MobileNotes21ICSelectionStateModel);
      [(ICSelectionStateModel *)v14 setSelectedNoteObjectID:objectID];
      selectionStateController2 = [(ICViewControllerManager *)self selectionStateController];
      [selectionStateController2 adoptInstantNoteModel:v14 archive:archiveCopy];
LABEL_16:

      goto LABEL_17;
    }

    objectID4 = [note objectID];
    uRIRepresentation = [objectID4 URIRepresentation];
    currentNoteObjectIDURL = [archiveCopy currentNoteObjectIDURL];
    v20 = [uRIRepresentation isEqual:currentNoteObjectIDURL];

    if (v20)
    {
      noteEditorViewController4 = [(ICViewControllerManager *)self noteEditorViewController];
      [noteEditorViewController4 loadViewIfNeeded];

      objectID = [archiveCopy scrollStateForNote:note];
      noteEditorViewController5 = [(ICViewControllerManager *)self noteEditorViewController];
      [noteEditorViewController5 applyScrollStateFromArchive:objectID];

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

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  secondaryNavigationController = [(ICViewControllerManager *)self secondaryNavigationController];
  v10 = secondaryNavigationController;
  if (secondaryNavigationController != controllerCopy)
  {

    goto LABEL_11;
  }

  noteContainerViewMode = [(ICViewControllerManager *)self noteContainerViewMode];

  if (noteContainerViewMode != 1)
  {
    goto LABEL_11;
  }

  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  if (noteEditorViewController == viewControllerCopy)
  {
    goto LABEL_7;
  }

  legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];

  if (legacyNoteEditorViewController != viewControllerCopy)
  {
    noteEditorViewController = [(ICViewControllerManager *)self trailingSidebarViewController];
    [noteEditorViewController setSidebarHidden:1];
LABEL_7:
  }

  if ([(ICViewControllerManager *)self isSearchActiveWithQuery])
  {
    mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController setDisplayModeButtonVisibility:1];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004EAD4;
  v18[3] = &unk_100645E30;
  v18[4] = self;
  [controllerCopy ic_performBlockAfterActiveTransition:v18];
LABEL_11:
  compactNavigationController = [(ICViewControllerManager *)self compactNavigationController];
  if (compactNavigationController == controllerCopy && ![(ICViewControllerManager *)self isSplitViewExpandingOrCollapsing])
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
  [v16 postNotificationName:@"ICNavigationControllerWillChange" object:controllerCopy userInfo:0];
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (![(ICViewControllerManager *)self isApplyingStateRestoreArchive])
  {
    viewControllerCopy3 = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
    tagSelection = [(ICViewControllerManager *)self tagSelection];
    if ([(ICViewControllerManager *)self isSplitViewExpanded]|| ([(ICViewControllerManager *)self compactNavigationController], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 != controllerCopy))
    {
      v12 = 0;
      goto LABEL_5;
    }

    topViewController = [controllerCopy topViewController];
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    v20 = noteEditorViewController;
    if (topViewController == noteEditorViewController)
    {
    }

    else
    {
      legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];

      if (topViewController != legacyNoteEditorViewController)
      {
        if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
        {
          v12 = 1;
LABEL_81:
          folderListViewController = [(ICViewControllerManager *)self folderListViewController];

          if (topViewController == folderListViewController)
          {
            if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
            {

              tagSelection = 0;
              viewControllerCopy3 = 0;
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
                  v66 = controllerCopy;
                  v35 = 0;
                  goto LABEL_42;
                }

LABEL_39:
                v66 = controllerCopy;
                viewController = [(ICViewControllerManager *)self selectionStateController];
                selectedObjectID = [viewController selectedObjectID];
                v35 = 1;
                v36 = 1;
                if (selectedObjectID)
                {
                  goto LABEL_67;
                }

LABEL_42:
                viewControllerCopy2 = viewController;
                v37 = viewControllerCopy;
                selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
                v64 = viewControllerCopy3;
                if (kCFNull == viewControllerCopy3)
                {
                  v39 = 0;
                }

                else
                {
                  v39 = viewControllerCopy3;
                }

                tagSelection2 = v39;
                if (kCFNull == selectedNoteBrowseContainerItemID)
                {
                  v41 = 0;
                }

                else
                {
                  v41 = selectedNoteBrowseContainerItemID;
                }

                v42 = v41;
                if (tagSelection2 | v42)
                {
                  v43 = v42;
                  v36 = 1;
                  if (!tagSelection2 || !v42)
                  {
LABEL_64:

                    goto LABEL_65;
                  }

                  v44 = [tagSelection2 isEqual:v42];

                  if (!v44)
                  {
LABEL_65:
                    viewControllerCopy = v37;

                    viewControllerCopy3 = v64;
                    if (!v35)
                    {
                      v49 = 0;
                      goto LABEL_69;
                    }

                    selectedObjectID = 0;
                    viewController = viewControllerCopy2;
LABEL_67:

                    v49 = 1;
LABEL_69:
                    v50 = +[UIApplication sharedApplication];
                    applicationState = [v50 applicationState];

                    if (!v36 || applicationState)
                    {
                      controllerCopy = v66;
                    }

                    else
                    {
                      mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
                      transitionCoordinator = [mainSplitViewController transitionCoordinator];

                      v69[0] = _NSConcreteStackBlock;
                      v69[1] = 3221225472;
                      v69[2] = sub_10004F23C;
                      v69[3] = &unk_100645ED0;
                      v69[4] = self;
                      viewControllerCopy3 = viewControllerCopy3;
                      v70 = viewControllerCopy3;
                      tagSelection = tagSelection;
                      v71 = tagSelection;
                      v72 = v49;
                      v54 = objc_retainBlock(v69);
                      v55 = v54;
                      controllerCopy = v66;
                      if (transitionCoordinator)
                      {
                        v67[0] = _NSConcreteStackBlock;
                        v67[1] = 3221225472;
                        v67[2] = sub_10004F298;
                        v67[3] = &unk_1006461A0;
                        v68 = v54;
                        [transitionCoordinator animateAlongsideTransition:&stru_100646178 completion:v67];
                      }

                      else
                      {
                        (v54[2])(v54);
                      }
                    }

                    goto LABEL_76;
                  }
                }

                tagSelection2 = [(ICViewControllerManager *)self tagSelection];
                if (kCFNull == tagSelection)
                {
                  v45 = 0;
                }

                else
                {
                  v45 = tagSelection;
                }

                v43 = v45;
                if (kCFNull == tagSelection2)
                {
                  v46 = 0;
                }

                else
                {
                  v46 = tagSelection2;
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

            selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
            v12 = selectedNoteObjectID == 0;
LABEL_36:

            goto LABEL_37;
          }

          viewController = viewControllerCopy3;
          selectedNoteObjectID = viewControllerCopy;
          noteContainer = [selectedNoteObjectID noteContainer];
          objectID = [noteContainer objectID];
          v16 = objectID;
          v65 = v12;
          if (objectID)
          {
            v17 = objectID;
          }

          else
          {
            v60 = viewControllerCopy;
            noteCollection = [selectedNoteObjectID noteCollection];
            objectID2 = [noteCollection objectID];
            v24 = objectID2;
            if (objectID2)
            {
              virtualSmartFolder = objectID2;
            }

            else
            {
              virtualSmartFolder = [selectedNoteObjectID virtualSmartFolder];
            }

            v17 = virtualSmartFolder;

            viewControllerCopy = v60;
          }

          tagSelection3 = [selectedNoteObjectID tagSelection];

          if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
          {
            viewControllerCopy3 = v17;
          }

          else
          {
            [(ICViewControllerManager *)self setSelectedNoteBrowseContainerItemID:v17];
            viewControllerCopy3 = viewController;
          }

          compactNavigationController = [(ICViewControllerManager *)self compactNavigationController];
          v28 = compactNavigationController;
          if (compactNavigationController == controllerCopy)
          {
          }

          else
          {
            noteContainerViewMode = [(ICViewControllerManager *)self noteContainerViewMode];

            if (noteContainerViewMode != 1)
            {
LABEL_35:

              tagSelection = tagSelection3;
              v12 = v65;
              goto LABEL_36;
            }
          }

          if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
          {
            v61 = viewControllerCopy;
            v63 = viewControllerCopy3;
            currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
            collectionView = [currentNoteBrowseViewController collectionView];
            indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
            if ([indexPathsForSelectedItems count])
            {
              v65 = 0;
            }

            else
            {
              currentSearchBarViewController = [(ICViewControllerManager *)self currentSearchBarViewController];
              noteSearchViewController = [currentSearchBarViewController noteSearchViewController];
              viewController = [noteSearchViewController collectionView];
              indexPathsForSelectedItems2 = [viewController indexPathsForSelectedItems];
              v65 = [indexPathsForSelectedItems2 count] == 0;
            }

            viewControllerCopy = v61;
            viewControllerCopy3 = v63;
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

- (void)applyNoteViewModesToStateRestoreArchive:(id)archive withContainerItemID:(id)d
{
  archiveCopy = archive;
  v6 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:d];
  if (v6 == -1)
  {
    if ([(ICViewControllerManager *)self preferredNoteContainerViewMode]!= -1)
    {
      [archiveCopy setCurrentNoteContainerViewMode:{-[ICViewControllerManager preferredNoteContainerViewMode](self, "preferredNoteContainerViewMode")}];
      v8 = archiveCopy;
      v9 = -1;
      goto LABEL_9;
    }

    [archiveCopy setCurrentNoteContainerViewMode:{-[ICViewControllerManager noteContainerViewMode](self, "noteContainerViewMode")}];
    goto LABEL_7;
  }

  [archiveCopy setCurrentNoteContainerViewMode:v6];
  if ([(ICViewControllerManager *)self preferredNoteContainerViewMode]!= -1)
  {
LABEL_7:
    preferredNoteContainerViewMode = [(ICViewControllerManager *)self preferredNoteContainerViewMode];
    goto LABEL_8;
  }

  preferredNoteContainerViewMode = [(ICViewControllerManager *)self noteContainerViewMode];
LABEL_8:
  v9 = preferredNoteContainerViewMode;
  v8 = archiveCopy;
LABEL_9:
  [v8 setPreferredNoteContainerViewMode:v9];
}

- (int64_t)enforcedNoteContainerViewModeForContainerItemID:(id)d
{
  dCopy = d;
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
    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10004F5E0;
    v16[3] = &unk_100645A40;
    v18 = &v19;
    v16[4] = self;
    v17 = v5;
    [modernManagedObjectContext performBlockAndWait:v16];

    enforcedNoteContainerViewMode = v20[3];
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
    legacyManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004F680;
    v13[3] = &unk_100645A40;
    v15 = &v19;
    v13[4] = self;
    v14 = v5;
    [legacyManagedObjectContext performBlockAndWait:v13];

    enforcedNoteContainerViewMode = v20[3];
    v9 = v14;
    goto LABEL_5;
  }

  if (v6)
  {
    enforcedNoteContainerViewMode = [v6 enforcedNoteContainerViewMode];
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1004D888C();
    }

    enforcedNoteContainerViewMode = -1;
  }

LABEL_6:

  return enforcedNoteContainerViewMode;
}

- (void)performActionForShortcutItem:(id)item
{
  itemCopy = item;
  [(ICViewControllerManager *)self setSelectedNewNoteShortcutItem:itemCopy];
  type = [itemCopy type];
  v5 = [type isEqualToString:@"com.apple.notes.newNote"];

  if (v5)
  {
    v6 = 0;
LABEL_3:
    v7 = 8;
LABEL_8:
    v12 = [(ICViewControllerManager *)self showNewNoteWithApproach:v7 sender:self recordAudio:v6 animated:1];
    goto LABEL_9;
  }

  type2 = [itemCopy type];
  v9 = [type2 isEqualToString:@"com.apple.notes.checklist"];

  if (v9)
  {
    v6 = 0;
    v7 = 9;
    goto LABEL_8;
  }

  type3 = [itemCopy type];
  v11 = [type3 isEqualToString:@"com.apple.notes.scanDocument"];

  if (v11)
  {
    v6 = 0;
    v7 = 10;
    goto LABEL_8;
  }

  type4 = [itemCopy type];
  v14 = [type4 isEqualToString:@"com.apple.notes.audio"];

  if (v14)
  {
    v6 = 1;
    goto LABEL_3;
  }

LABEL_9:
}

- (void)lockNotesNow
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController saveNote];

  v3 = +[ICAuthenticationState sharedState];
  [v3 deauthenticate];
}

- (void)stopEditing
{
  legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];
  isEditing = [legacyNoteEditorViewController isEditing];

  if (isEditing)
  {
    legacyNoteEditorViewController2 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    [legacyNoteEditorViewController2 setEditing:0 animated:0];
  }

  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  isEditing2 = [noteEditorViewController isEditing];

  if (isEditing2)
  {
    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    [noteEditorViewController2 setEditing:0 animated:0];
  }
}

- (void)toggleSidebar
{
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  [mainSplitViewController ic_toggleSidebar];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  objectCopy = object;
  if (([(ICViewControllerManager *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/UI/Navigation/ICViewControllerManager.m"]& 1) != 0)
  {
    v13 = [(ICViewControllerManager *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &off_1006BA3B0 && (v13 & 1) == 0 && [pathCopy isEqualToString:@"attributionSidebarVisibility"])
    {
      [(ICViewControllerManager *)self updateIgnoreTextViewTaps];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICViewControllerManager;
    [(ICViewControllerManager *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (int64_t)defaultDisplayModeButtonVisibilityForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(ICViewControllerManager *)self usesSingleSplitView])
  {
    if ([collectionCopy userInterfaceIdiom] == 1)
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

- (void)initializeModernNoteEditorWithOptions:(unint64_t)options
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];

  if (noteEditorViewController)
  {
    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    options = [noteEditorViewController2 options];

    if (options == options)
    {
      return;
    }

    noteEditorViewController3 = [(ICViewControllerManager *)self noteEditorViewController];
    attributionSidebarController = [noteEditorViewController3 attributionSidebarController];
    [attributionSidebarController ic_removeObserver:self forKeyPath:@"attributionSidebarVisibility" context:&off_1006BA3B0];
  }

  v10 = [ICNoteEditorViewController editorViewControllerWithIdentifier:-1 options:options];
  [(ICViewControllerManager *)self setNoteEditorViewController:v10];

  noteEditorViewController4 = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController4 setViewControllerManager:self];

  noteEditorViewController5 = [(ICViewControllerManager *)self noteEditorViewController];
  attributionSidebarController2 = [noteEditorViewController5 attributionSidebarController];
  [attributionSidebarController2 ic_addObserver:self forKeyPath:@"attributionSidebarVisibility" context:&off_1006BA3B0];
}

- (void)initializeSecondaryNavigationControllerWithViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [UINavigationController alloc];
  if (controllerCopy)
  {
    v5 = [v4 initWithRootViewController:controllerCopy];
  }

  else
  {
    v5 = [v4 initWithNibName:0 bundle:0];
  }

  v6 = v5;
  [(ICViewControllerManager *)self setSecondaryNavigationController:v5];

  secondaryNavigationController = [(ICViewControllerManager *)self secondaryNavigationController];
  navigationBar = [secondaryNavigationController navigationBar];
  [navigationBar setPrefersLargeTitles:1];
}

- (void)initializeMainSplitViewWithStateRestoreArchive:(id)archive
{
  archiveCopy = archive;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    selectedNoteObjectID = [selectionStateController selectedNoteObjectID];
    v7 = selectedNoteObjectID;
    if (selectedNoteObjectID)
    {
      selectedInvitationObjectID = selectedNoteObjectID;
    }

    else
    {
      selectedInvitationObjectID = [selectionStateController selectedInvitationObjectID];
    }

    selectedNoteBrowseContainerObjectID = [selectionStateController selectedNoteBrowseContainerObjectID];

    if (selectedNoteBrowseContainerObjectID)
    {
      selectedNoteBrowseContainerObjectID2 = [selectionStateController selectedNoteBrowseContainerObjectID];
      v171 = selectedNoteBrowseContainerObjectID2;
      *(&v153 + 1) = [NSArray arrayWithObjects:&v171 count:1];
    }

    else
    {
      *(&v153 + 1) = 0;
    }

    *&v153 = [selectionStateController selectedVirtualSmartFolderItemID];
    currentFirstVisibleObjectIDURLForContainerObjectIDURL = [selectionStateController currentFirstVisibleObjectIDURLForContainerObjectIDURL];
    if (v153 != 0 && !selectedInvitationObjectID)
    {
      [archiveCopy setIsAuxiliaryWindow:0];
    }

    tagSelection = [selectionStateController tagSelection];
    includedObjectIDs = [tagSelection includedObjectIDs];
    v12 = [NSMutableSet setWithSet:includedObjectIDs];

    excludedObjectIDs = [tagSelection excludedObjectIDs];
    v18 = [NSMutableSet setWithSet:excludedObjectIDs];

    v19 = v12;
    if ([tagSelection mode] == 1 || (v19 = v18, objc_msgSend(tagSelection, "mode") == 2))
    {
      v20 = +[ICTagAllTagsItemIdentifier sharedItemIdentifier];
      [v19 addObject:v20];
    }

    v21 = [v12 copy];
    v150 = [v18 copy];
    goto LABEL_47;
  }

  selectionStateController = [archiveCopy currentNoteObjectIDURL];
  tagSelection = [archiveCopy currentContainerObjectIDURLs];
  currentFirstVisibleObjectIDURLForContainerObjectIDURL = [archiveCopy currentFirstVisibleObjectIDURLForContainerObjectIDURL];
  currentObjectIDURL = [archiveCopy currentObjectIDURL];

  if (currentObjectIDURL)
  {
    currentObjectIDURL2 = [archiveCopy currentObjectIDURL];
    v11 = [(ICViewControllerManager *)self managedObjectIDFromURL:currentObjectIDURL2];
    if ([v11 ic_isContainerType])
    {
      [archiveCopy setIsAuxiliaryWindow:0];

      v170 = currentObjectIDURL2;
      [NSArray arrayWithObjects:&v170 count:1];
      v12 = 0;
      v13 = 0;
      *&v153 = 0;
      tagSelection = selectionStateController = tagSelection;
LABEL_32:

      selectionStateController = v13;
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
      modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
      v23 = [ICNote ic_existingObjectWithID:v11 context:modernManagedObjectContext];

      if ([v23 isSystemPaper])
      {
        *&v153 = +[ICAccount globalVirtualSystemPaperFolder];
        v12 = 0;
        goto LABEL_29;
      }

      objectID = [v23 objectID];
      v25ObjectID = [(ICViewControllerManager *)self defaultContainerObjectIDForNoteWithObjectID:objectID];
    }

    else
    {
      if (![v11 ic_isEntityOfClass:objc_opt_class()])
      {
        *&v153 = 0;
        v12 = 0;
LABEL_31:
        v13 = currentObjectIDURL2;
        goto LABEL_32;
      }

      legacyManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
      v23 = [legacyManagedObjectContext ic_existingObjectWithID:v11];

      objectID = [v23 store];
      v25ObjectID = [objectID objectID];
    }

    v12 = v25ObjectID;

    *&v153 = 0;
LABEL_29:

    if (v12)
    {
      uRIRepresentation = [v12 URIRepresentation];
      v169 = uRIRepresentation;
      v28 = [NSArray arrayWithObjects:&v169 count:1];

      tagSelection = v28;
    }

    goto LABEL_31;
  }

  v12 = 0;
  *&v153 = 0;
LABEL_34:
  selectedInvitationObjectID = [(ICViewControllerManager *)self managedObjectIDFromURL:selectionStateController];
  v166[0] = _NSConcreteStackBlock;
  v166[1] = 3221225472;
  v166[2] = sub_100051214;
  v166[3] = &unk_1006461C8;
  v166[4] = self;
  *(&v153 + 1) = [tagSelection ic_compactMap:v166];
  if (!v153)
  {
    currentVirtualSmartFolderType = [archiveCopy currentVirtualSmartFolderType];
    v30 = currentVirtualSmartFolderType == 0;

    if (v30)
    {
      *&v153 = 0;
    }

    else
    {
      currentVirtualSmartFolderAccountObjectIDURL = [archiveCopy currentVirtualSmartFolderAccountObjectIDURL];
      if (currentVirtualSmartFolderAccountObjectIDURL)
      {
        v151 = [(ICViewControllerManager *)self managedObjectIDFromURL:currentVirtualSmartFolderAccountObjectIDURL];
      }

      else
      {
        v151 = 0;
      }

      v32 = +[ICVirtualSmartFolderItemIdentifier allTypes];
      currentVirtualSmartFolderType2 = [archiveCopy currentVirtualSmartFolderType];
      v34 = [v32 containsObject:currentVirtualSmartFolderType2];

      if (v34)
      {
        v35 = [ICVirtualSmartFolderItemIdentifier alloc];
        currentVirtualSmartFolderType3 = [archiveCopy currentVirtualSmartFolderType];
        v37 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
        *&v153 = [v35 initWithType:currentVirtualSmartFolderType3 parentIdentifier:v37 accountObjectID:v151];
      }

      else
      {
        v37 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_1004D88FC(archiveCopy);
        }

        *&v153 = 0;
        currentVirtualSmartFolderType3 = v37;
      }
    }
  }

  currentTagIdentifiers = [archiveCopy currentTagIdentifiers];
  v18 = [NSSet setWithArray:currentTagIdentifiers];

  v165[0] = _NSConcreteStackBlock;
  v165[1] = 3221225472;
  v165[2] = sub_100051294;
  v165[3] = &unk_1006455E8;
  v165[4] = self;
  v21 = [v18 ic_compactMap:v165];
  v150 = 0;
LABEL_47:

  lastObject = [*(&v153 + 1) lastObject];
  v149 = lastObject;
  if (lastObject)
  {
    v40 = lastObject;
  }

  else
  {
    v40 = v153;
  }

  v41 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:v40];
  if (v41 != -1)
  {
    [archiveCopy setCurrentNoteContainerViewMode:v41];
  }

  self->_noteContainerViewMode = [archiveCopy currentNoteContainerViewMode];
  selectionStateTrackingEnabled = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
  if (selectedInvitationObjectID)
  {
    v43 = selectionStateTrackingEnabled;
  }

  else
  {
    v43 = 1;
  }

  if ((v43 & 1) == 0 && ![*(&v153 + 1) count])
  {
    v44 = [(ICViewControllerManager *)self defaultContainerObjectIDForNoteWithObjectID:selectedInvitationObjectID];
    v45 = v44;
    if (v44)
    {
      v168 = v44;
      v46 = [NSArray arrayWithObjects:&v168 count:1];

      *(&v153 + 1) = v46;
    }
  }

  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  v48 = folderListViewController == 0;

  if (v48)
  {
    v51 = [ICFolderListViewController alloc];
    currentNoteContainerViewMode = [archiveCopy currentNoteContainerViewMode];
    overrideContainerIdentifier = [(ICViewControllerManager *)self overrideContainerIdentifier];
    v53 = [(ICFolderListViewController *)v51 initWithViewMode:currentNoteContainerViewMode viewControllerManager:self overrideContainerIdentifier:overrideContainerIdentifier];
    [(ICViewControllerManager *)self setFolderListViewController:v53];
  }

  else
  {
    currentNoteContainerViewMode2 = [archiveCopy currentNoteContainerViewMode];
    overrideContainerIdentifier = [(ICViewControllerManager *)self folderListViewController];
    [overrideContainerIdentifier setNoteContainerViewMode:currentNoteContainerViewMode2];
  }

  -[ICViewControllerManager setPreferredNoteContainerViewMode:](self, "setPreferredNoteContainerViewMode:", [archiveCopy preferredNoteContainerViewMode]);
  v54 = -[ICNoteBrowseViewController initWithViewMode:viewControllerManager:]([ICNoteBrowseViewController alloc], "initWithViewMode:viewControllerManager:", [archiveCopy currentNoteContainerViewMode], self);
  [(ICViewControllerManager *)self setRootNoteBrowseViewController:v54];

  rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
  [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:rootNoteBrowseViewController];

  LODWORD(rootNoteBrowseViewController) = [archiveCopy isAuxiliaryWindow];
  [(ICViewControllerManager *)self initializeLegacyNoteEditor];
  [(ICViewControllerManager *)self initializeModernNoteEditorWithOptions:rootNoteBrowseViewController];
  v152 = +[NSMutableArray array];
  if ([v21 count] || objc_msgSend(v150, "count"))
  {
    rootNoteBrowseViewController2 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    v57 = v21;
    if (!v21)
    {
      v57 = +[NSSet set];
    }

    if (v150)
    {
      [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:rootNoteBrowseViewController2 animated:0 ensurePresented:1 containerIdentifiers:v57 excludingIdentifiers:v150 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:0];
    }

    else
    {
      v58 = +[NSSet set];
      [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:rootNoteBrowseViewController2 animated:0 ensurePresented:1 containerIdentifiers:v57 excludingIdentifiers:v58 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:0];
    }

    if (!v21)
    {
    }

    rootNoteBrowseViewController3 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    [v152 addObject:rootNoteBrowseViewController3];
  }

  else if (v153)
  {
    selectedNoteObjectID2 = [(ICViewControllerManager *)self selectedNoteObjectID];
    v77 = selectedNoteObjectID2;
    if (selectedNoteObjectID2)
    {
      selectedInvitationObjectID2 = selectedNoteObjectID2;
    }

    else
    {
      selectedInvitationObjectID2 = [(ICViewControllerManager *)self selectedInvitationObjectID];
    }

    v136 = selectedInvitationObjectID2;

    noteContainerViewMode = [(ICViewControllerManager *)self noteContainerViewMode];
    isSplitViewExpanded = [(ICViewControllerManager *)self isSplitViewExpanded];
    isApplyingStateRestoreArchive = [(ICViewControllerManager *)self isApplyingStateRestoreArchive];
    if (([(ICViewControllerManager *)self selectionStateTrackingEnabled]& isApplyingStateRestoreArchive) == 1 && v136)
    {
      v140 = 1;
    }

    else
    {
      v142 = v41 != 1 && noteContainerViewMode == 0;
      v140 = v142 & isSplitViewExpanded;
    }

    rootNoteBrowseViewController4 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    v144 = [NSSet setWithObject:v153];
    v145 = +[NSSet set];
    v146 = [NSNumber numberWithBool:[(ICViewControllerManager *)self isNoteEditorVisible]];
    [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:rootNoteBrowseViewController4 animated:0 ensurePresented:1 containerIdentifiers:v144 excludingIdentifiers:v145 ensureSelectedNote:v140 keepEditorShowing:v146 dataIndexedBlock:0 dataRenderedBlock:0];

    rootNoteBrowseViewController5 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    [v152 addObject:rootNoteBrowseViewController5];
  }

  else
  {
    v159[0] = _NSConcreteStackBlock;
    v159[1] = 3221225472;
    v159[2] = sub_100051378;
    v159[3] = &unk_100646218;
    v159[4] = self;
    v160 = selectedInvitationObjectID;
    v161 = v152;
    v162 = *(&v153 + 1);
    v164 = v41;
    v163 = currentFirstVisibleObjectIDURLForContainerObjectIDURL;
    [v162 enumerateObjectsUsingBlock:v159];
  }

  if (!selectedInvitationObjectID)
  {
    goto LABEL_97;
  }

  if (([archiveCopy isAuxiliaryWindow] & 1) == 0 && !objc_msgSend(*(&v153 + 1), "count"))
  {
    selectionStateTrackingEnabled2 = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
    v61 = v153 ? selectionStateTrackingEnabled2 : 0;
    if (v61 != 1)
    {
      goto LABEL_97;
    }
  }

  if ([selectedInvitationObjectID ic_isEntityOfClass:objc_opt_class()])
  {
    modernManagedObjectContext2 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v63 = [ICNote ic_existingObjectWithID:selectedInvitationObjectID context:modernManagedObjectContext2];

    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    [noteEditorViewController setEditing:0];

    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    [noteEditorViewController2 setNote:v63 delayedForLaunch:1 successHandler:0];

    v66 = [archiveCopy scrollStateForNote:v63];
    noteEditorViewController3 = [(ICViewControllerManager *)self noteEditorViewController];
    [noteEditorViewController3 applyScrollStateFromArchive:v66];

    noteEditorViewController4 = [(ICViewControllerManager *)self noteEditorViewController];

    goto LABEL_85;
  }

  if (![selectedInvitationObjectID ic_isEntityOfClass:objc_opt_class()])
  {
    if (-[ICViewControllerManager selectionStateTrackingEnabled](self, "selectionStateTrackingEnabled") && [selectedInvitationObjectID ic_isInvitationType])
    {
      modernManagedObjectContext3 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v63 = [modernManagedObjectContext3 ic_existingObjectWithID:selectedInvitationObjectID];

      noteEditorViewController5 = [(ICViewControllerManager *)self noteEditorViewController];
      [noteEditorViewController5 setInvitation:v63];

      noteEditorViewController6 = [(ICViewControllerManager *)self noteEditorViewController];
      goto LABEL_84;
    }

    [(ICViewControllerManager *)self selectionStateTrackingEnabled];
LABEL_97:
    noteEditorViewController4 = 0;
    goto LABEL_98;
  }

  legacyManagedObjectContext2 = [(ICViewControllerManager *)self legacyManagedObjectContext];
  v63 = [legacyManagedObjectContext2 ic_existingObjectWithID:selectedInvitationObjectID];

  legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];
  [legacyNoteEditorViewController displayNote:v63];

  noteEditorViewController6 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
LABEL_84:
  noteEditorViewController4 = noteEditorViewController6;
LABEL_85:

  selectionStateTrackingEnabled3 = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
  if (noteEditorViewController4)
  {
    v73 = selectionStateTrackingEnabled3;
  }

  else
  {
    v73 = 1;
  }

  if ((v73 & 1) == 0)
  {
    [(ICViewControllerManager *)self setSelectedNoteObjectID:selectedInvitationObjectID];
  }

LABEL_98:
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    focusedNoteObjectIDURL = [archiveCopy focusedNoteObjectIDURL];
    if (focusedNoteObjectIDURL)
    {
      v80 = [(ICViewControllerManager *)self managedObjectIDFromURL:focusedNoteObjectIDURL];
      [(ICViewControllerManager *)self setFocusedNoteObjectID:v80];
    }
  }

  if (!noteEditorViewController4)
  {
    if ([(ICViewControllerManager *)self noteContainerViewMode]|| [(ICViewControllerManager *)self hasCompactWidth])
    {
      noteEditorViewController4 = 0;
    }

    else
    {
      noteEditorViewController4 = [(ICViewControllerManager *)self noteEditorViewController];
    }
  }

  behavior = [(ICViewControllerManager *)self behavior];
  if (![archiveCopy isAuxiliaryWindow])
  {
    primaryNavigationController = self->_primaryNavigationController;
    self->_primaryNavigationController = 0;

    if ([(ICViewControllerManager *)self noteContainerViewMode]== 1)
    {
      v83 = [[ICMainSplitViewController alloc] initWithStyle:1 viewControllerManager:self];
      [(ICViewControllerManager *)self setMainSplitViewController:v83];

      rootNoteBrowseViewController6 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
      [(ICViewControllerManager *)self initializeSecondaryNavigationControllerWithViewController:rootNoteBrowseViewController6];

      v85 = v152;
      v86 = v85;
      if (noteEditorViewController4)
      {
        v87 = [v85 arrayByAddingObject:noteEditorViewController4];

        v86 = v87;
      }

      secondaryNavigationController = [(ICViewControllerManager *)self secondaryNavigationController];
      [secondaryNavigationController setViewControllers:v86];

      secondaryNavigationController2 = [(ICViewControllerManager *)self secondaryNavigationController];
      [secondaryNavigationController2 setDelegate:self];

      if (behavior != 1)
      {
        goto LABEL_121;
      }
    }

    else
    {
      [(ICViewControllerManager *)self initializeSecondaryNavigationControllerWithViewController:noteEditorViewController4];
      if (behavior == 1)
      {
        v90 = 1;
      }

      else
      {
        v90 = 2;
      }

      v91 = [[ICMainSplitViewController alloc] initWithStyle:v90 viewControllerManager:self];
      [(ICViewControllerManager *)self setMainSplitViewController:v91];

      if (behavior != 1)
      {
        v111 = [[UINavigationController alloc] initWithNibName:0 bundle:0];
        [(ICViewControllerManager *)self setSupplementaryNavigationController:v111];

        supplementaryNavigationController = [(ICViewControllerManager *)self supplementaryNavigationController];
        navigationBar = [supplementaryNavigationController navigationBar];
        [navigationBar setPrefersLargeTitles:1];

        supplementaryNavigationController2 = [(ICViewControllerManager *)self supplementaryNavigationController];
        [supplementaryNavigationController2 setDelegate:self];

        v115 = [v152 copy];
        supplementaryNavigationController3 = [(ICViewControllerManager *)self supplementaryNavigationController];
        [supplementaryNavigationController3 setViewControllers:v115];

        mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
        supplementaryNavigationController4 = [(ICViewControllerManager *)self supplementaryNavigationController];
        [mainSplitViewController setViewController:supplementaryNavigationController4 forColumn:1];

        mainSplitViewController2 = [(ICViewControllerManager *)self mainSplitViewController];
        [mainSplitViewController2 setShowsSecondaryOnlyButton:1];

LABEL_121:
        mainSplitViewController3 = [(ICViewControllerManager *)self mainSplitViewController];
        primaryNavigationController = [(ICViewControllerManager *)self primaryNavigationController];
        [mainSplitViewController3 setViewController:primaryNavigationController forColumn:0];

        mainSplitViewController4 = [(ICViewControllerManager *)self mainSplitViewController];
        traitCollection = [mainSplitViewController4 traitCollection];
        v124 = [(ICViewControllerManager *)self defaultDisplayModeButtonVisibilityForTraitCollection:traitCollection];
        mainSplitViewController5 = [(ICViewControllerManager *)self mainSplitViewController];
        [mainSplitViewController5 setDisplayModeButtonVisibility:v124];

        mainSplitViewController6 = [(ICViewControllerManager *)self mainSplitViewController];
        [mainSplitViewController6 setPreferredDisplayMode:0];

LABEL_122:
        v127 = [(ICViewControllerManager *)self behavior]!= 3;
        mainSplitViewController7 = [(ICViewControllerManager *)self mainSplitViewController];
        [mainSplitViewController7 setPresentsWithGesture:v127];

        mainSplitViewController8 = [(ICViewControllerManager *)self mainSplitViewController];
        secondaryNavigationController3 = [(ICViewControllerManager *)self secondaryNavigationController];
        [mainSplitViewController8 setViewController:secondaryNavigationController3 forColumn:2];

        if ([(ICViewControllerManager *)self usesSingleSplitView])
        {
          compactNavigationController = self->_compactNavigationController;
          self->_compactNavigationController = 0;

          mainSplitViewController9 = [(ICViewControllerManager *)self mainSplitViewController];
          compactNavigationController = [(ICViewControllerManager *)self compactNavigationController];
        }

        else
        {
          mainSplitViewController9 = [(ICViewControllerManager *)self mainSplitViewController];
          compactNavigationController = objc_alloc_init(UINavigationController);
        }

        [mainSplitViewController9 setViewController:compactNavigationController forColumn:3];

        mainSplitViewController10 = [(ICViewControllerManager *)self mainSplitViewController];
        [mainSplitViewController10 setDelegate:self];

        mainSplitViewController11 = [(ICViewControllerManager *)self mainSplitViewController];
        [mainSplitViewController11 setPreferredSplitBehavior:0];

        goto LABEL_126;
      }
    }

    mainSplitViewController12 = [(ICViewControllerManager *)self mainSplitViewController];
    primaryNavigationController2 = [(ICViewControllerManager *)self primaryNavigationController];
    [mainSplitViewController12 setViewController:primaryNavigationController2 forColumn:0];

    mainSplitViewController13 = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController13 setDisplayModeButtonVisibility:0];

    mainSplitViewController14 = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController14 setPreferredDisplayMode:2];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      mainSplitViewController15 = [(ICViewControllerManager *)self mainSplitViewController];
      [mainSplitViewController15 primaryColumnWidth];
      v98 = v97;
      primaryContainerViewController = [(ICViewControllerManager *)self primaryContainerViewController];
      configuration = [primaryContainerViewController configuration];
      [configuration insets];
      v102 = v101;
      primaryContainerViewController2 = [(ICViewControllerManager *)self primaryContainerViewController];
      configuration2 = [primaryContainerViewController2 configuration];
      [configuration2 insets];
      v106 = v105;
      mainSplitViewController16 = [(ICViewControllerManager *)self mainSplitViewController];
      [mainSplitViewController16 setPreferredPrimaryColumnWidth:v98 + v102 + v106];
    }

    objc_initWeak(&location, self);
    mainSplitViewController17 = [(ICViewControllerManager *)self mainSplitViewController];
    v167[0] = objc_opt_class();
    v167[1] = objc_opt_class();
    v109 = [NSArray arrayWithObjects:v167 count:2];
    v156[0] = _NSConcreteStackBlock;
    v156[1] = 3221225472;
    v156[2] = sub_1000517BC;
    v156[3] = &unk_100646240;
    objc_copyWeak(&v157, &location);
    v110 = [mainSplitViewController17 registerForTraitChanges:v109 withHandler:v156];

    objc_destroyWeak(&v157);
    objc_destroyWeak(&location);
    goto LABEL_122;
  }

  [(ICViewControllerManager *)self initializeSecondaryNavigationControllerWithViewController:noteEditorViewController4];
LABEL_126:
  if ([archiveCopy isAttachmentBrowserOpen])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000517FC;
    block[3] = &unk_100645E30;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)initializeTrailingSidebarSplitViewWithStateRestoreArchive:(id)archive
{
  archiveCopy = archive;
  if (![(ICViewControllerManager *)self usesSingleSplitView])
  {
    if ([(ICViewControllerManager *)self behavior]== 3)
    {
      v4 = objc_alloc_init(ICTrailingSidebarContainerViewController);
      [(ICViewControllerManager *)self setTrailingSidebarContainerViewController:v4];

      trailingSidebarContainerViewController = [(ICViewControllerManager *)self trailingSidebarContainerViewController];
      [(ICViewControllerManager *)self setTrailingSidebarViewController:trailingSidebarContainerViewController];

      [(ICViewControllerManager *)self mainSplitViewController];
    }

    else
    {
      v6 = [[ICTrailingSidebarSplitViewController alloc] initWithViewControllerManager:self];
      [(ICViewControllerManager *)self setTrailingSidebarSplitViewController:v6];

      trailingSidebarSplitViewController = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [trailingSidebarSplitViewController setDelegate:self];

      trailingSidebarSplitViewController2 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [trailingSidebarSplitViewController2 setPresentsWithGesture:0];

      trailingSidebarSplitViewController3 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [trailingSidebarSplitViewController3 setPrimaryEdge:1];

      trailingSidebarSplitViewController4 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [trailingSidebarSplitViewController4 setDisplayModeButtonVisibility:1];

      trailingSidebarSplitViewController5 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [trailingSidebarSplitViewController5 setShowsSecondaryOnlyButton:0];

      trailingSidebarSplitViewController6 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [trailingSidebarSplitViewController6 setPreferredDisplayMode:1];

      trailingSidebarSplitViewController7 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
      [(ICViewControllerManager *)self setTrailingSidebarViewController:trailingSidebarSplitViewController7];

      [(ICViewControllerManager *)self trailingSidebarSplitViewController];
    }
    v14 = ;
    if ([archiveCopy isAuxiliaryWindow])
    {
      [(ICViewControllerManager *)self secondaryNavigationController];
    }

    else
    {
      [(ICViewControllerManager *)self mainSplitViewController];
    }
    v15 = ;
    trailingSidebarViewController = [(ICViewControllerManager *)self trailingSidebarViewController];
    [trailingSidebarViewController setContentViewController:v15];

    activityStreamNavigationController = [(ICViewControllerManager *)self activityStreamNavigationController];
    trailingSidebarViewController2 = [(ICViewControllerManager *)self trailingSidebarViewController];
    [trailingSidebarViewController2 setSidebarViewController:activityStreamNavigationController];

    [(ICViewControllerManager *)self updateTrailingColumnWidth];
    compactNavigationController = self->_compactNavigationController;
    self->_compactNavigationController = 0;

    compactNavigationController = [(ICViewControllerManager *)self compactNavigationController];
    [v14 setViewController:compactNavigationController forColumn:3];
  }
}

- (void)updateIgnoreTextViewTaps
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  attributionSidebarController = [noteEditorViewController attributionSidebarController];
  if ([attributionSidebarController attributionSidebarVisibility])
  {
    v5 = 1;
  }

  else
  {
    presentedActivityStreamNavigationController = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
    if (presentedActivityStreamNavigationController)
    {
      v5 = 1;
    }

    else
    {
      activityStreamSelection = [(ICViewControllerManager *)self activityStreamSelection];
      v5 = activityStreamSelection != 0;
    }
  }

  noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController2 setIgnoresTaps:v5];
}

- (void)updateTrailingColumnWidth
{
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  [mainSplitViewController preferredDisplacedColumnWidth];
  v5 = v4;
  trailingSidebarSplitViewController = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
  [trailingSidebarSplitViewController setPreferredPrimaryColumnWidth:v5];

  trailingSidebarSplitViewController2 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
  [trailingSidebarSplitViewController2 preferredPrimaryColumnWidth];
  v9 = v8;
  trailingSidebarSplitViewController3 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
  [trailingSidebarSplitViewController3 setMaximumPrimaryColumnWidth:v9];

  trailingSidebarSplitViewController4 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
  [trailingSidebarSplitViewController4 preferredPrimaryColumnWidth];
  v12 = v11;
  trailingSidebarSplitViewController5 = [(ICViewControllerManager *)self trailingSidebarSplitViewController];
  [trailingSidebarSplitViewController5 setMinimumPrimaryColumnWidth:v12];
}

- (id)containerItemIDForContainerIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  overrideContainerIdentifier = [(ICViewControllerManager *)self overrideContainerIdentifier];
  if (overrideContainerIdentifier && (v6 = overrideContainerIdentifier, +[ICAccount globalVirtualRecentlyDeletedMathNotesFolder](ICAccount, "globalVirtualRecentlyDeletedMathNotesFolder"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [identifiersCopy containsObject:v7], v7, v6, (v8 & 1) == 0))
  {
    overrideContainerIdentifier2 = [(ICViewControllerManager *)self overrideContainerIdentifier];
  }

  else
  {
    if ([identifiersCopy count])
    {
      allObjects = [identifiersCopy allObjects];
      v10 = [allObjects ic_objectPassingTest:&stru_100646260];

      goto LABEL_8;
    }

    overrideContainerIdentifier2 = [(ICViewControllerManager *)self mostRecentNonSearchContainerItemID];
  }

  v10 = overrideContainerIdentifier2;
LABEL_8:

  return v10;
}

- (void)setCurrentNoteBrowseViewController:(id)controller animated:(BOOL)animated ensurePresented:(BOOL)presented containerIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers ensureSelectedNote:(BOOL)note keepEditorShowing:(id)showing dataIndexedBlock:(id)self0 dataRenderedBlock:(id)self1
{
  presentedCopy = presented;
  HIDWORD(v35) = animated;
  controllerCopy = controller;
  identifiersCopy = identifiers;
  excludingIdentifiersCopy = excludingIdentifiers;
  showingCopy = showing;
  blockCopy = block;
  v20 = identifiersCopy;
  renderedBlockCopy = renderedBlock;
  v38 = excludingIdentifiersCopy;
  v21 = [identifiersCopy setByAddingObjectsFromSet:excludingIdentifiersCopy];
  v22 = [(ICViewControllerManager *)self containerItemIDForContainerIdentifiers:v21];

  objc_opt_class();
  v23 = ICDynamicCast();
  objc_opt_class();
  v40 = ICDynamicCast();
  if (showingCopy)
  {
    LODWORD(v35) = [showingCopy BOOLValue];
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

  [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:controllerCopy];
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  noteCopy = note;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100052438;
  v57[3] = &unk_100646288;
  v60 = v61;
  v57[4] = self;
  v24 = v23;
  v58 = v24;
  v25 = blockCopy;
  v59 = v25;
  v26 = objc_retainBlock(v57);
  if ([v24 ic_isModernContainerType])
  {
    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100052988;
    v52[3] = &unk_1006462B0;
    v52[4] = self;
    v53 = v24;
    v54 = controllerCopy;
    v55 = v26;
    v56 = renderedBlockCopy;
    [modernManagedObjectContext performBlockAndWait:v52];
  }

  else if ([v24 ic_isLegacyContainerType])
  {
    legacyManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000529F8;
    v47[3] = &unk_1006462B0;
    v47[4] = self;
    v48 = v24;
    v49 = controllerCopy;
    v50 = v26;
    v51 = renderedBlockCopy;
    [legacyManagedObjectContext performBlockAndWait:v47];
  }

  else if (v40)
  {
    [controllerCopy setVirtualSmartFolder:v40 dataIndexedBlock:v26 dataRenderedBlock:renderedBlockCopy];
  }

  else if ([(ICViewControllerManager *)self isTagSelected])
  {
    tagSelection = [(ICViewControllerManager *)self tagSelection];
    [controllerCopy setTagSelection:tagSelection dataIndexedBlock:v26 dataRenderedBlock:renderedBlockCopy];
  }

  else
  {
    v30 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "showing empty container", buf, 2u);
    }

    [controllerCopy setNoteContainer:0 dataIndexedBlock:v26 dataRenderedBlock:renderedBlockCopy];
  }

  if (presentedCopy)
  {
    noteBrowseNavigationController = [(ICViewControllerManager *)self noteBrowseNavigationController];
    viewControllers = [noteBrowseNavigationController viewControllers];
    v33 = [viewControllers indexOfObject:controllerCopy];
    if ([viewControllers count])
    {
      if (v33 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [noteBrowseNavigationController pushViewController:controllerCopy animated:v37];
LABEL_28:

        goto LABEL_29;
      }

      v34 = [viewControllers ic_subarrayFromIndex:v33 + 1];
      if (!(([v34 count] == 0) | v36 & 1))
      {
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100052A68;
        v42[3] = &unk_1006462D8;
        v43 = noteBrowseNavigationController;
        v44 = controllerCopy;
        v45 = v37;
        [v43 ic_performBlockAfterActiveTransition:v42];
      }
    }

    else
    {
      if (!controllerCopy)
      {
        goto LABEL_28;
      }

      v63 = controllerCopy;
      v34 = [NSArray arrayWithObjects:&v63 count:1];
      [noteBrowseNavigationController setViewControllers:v34];
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
    window = [(ICViewControllerManager *)self window];
    [window layoutMargins];
    leading = v11 + 4.0;

    v8 = 20.0;
    v3 = 1;
    bottom = 24.0;
    top = 0.0;
    trailing = 0.0;
  }

  v12 = [[ICContentInsetViewControllerConfiguration alloc] initWithInsets:v3 usesSafeAreaLayoutGuide:top cornerRadius:leading, bottom, trailing, v8];
  primaryContainerViewController = [(ICViewControllerManager *)self primaryContainerViewController];
  [primaryContainerViewController setConfiguration:v12];
}

- (UINavigationController)noteBrowseNavigationController
{
  isSplitViewExpanded = [(ICViewControllerManager *)self isSplitViewExpanded];
  isSplitViewExpandingOrCollapsing = [(ICViewControllerManager *)self isSplitViewExpandingOrCollapsing];
  if ([(ICViewControllerManager *)self usesSingleSplitView])
  {
    if (((isSplitViewExpandingOrCollapsing | isSplitViewExpanded) & 1) != 0 && ![(ICViewControllerManager *)self isSplitViewCollapsing])
    {
LABEL_4:
      if ([(ICViewControllerManager *)self noteContainerViewMode])
      {
        secondaryNavigationController = [(ICViewControllerManager *)self secondaryNavigationController];
      }

      else
      {
        mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
        style = [mainSplitViewController style];

        if (style == 2)
        {
          [(ICViewControllerManager *)self supplementaryNavigationController];
        }

        else
        {
          [(ICViewControllerManager *)self primaryNavigationController];
        }
        secondaryNavigationController = ;
      }

      goto LABEL_8;
    }
  }

  else if (isSplitViewExpanded)
  {
    goto LABEL_4;
  }

  secondaryNavigationController = [(ICViewControllerManager *)self compactNavigationController];
LABEL_8:

  return secondaryNavigationController;
}

- (BOOL)isShowingNoteBrowsersForContainerObjectIDs:(id)ds
{
  dsCopy = ds;
  noteBrowseNavigationController = [(ICViewControllerManager *)self noteBrowseNavigationController];
  viewControllers = [noteBrowseNavigationController viewControllers];

  v7 = [dsCopy count];
  if (v7 == [viewControllers count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100052D74;
    v11[3] = &unk_100646300;
    v12 = dsCopy;
    v8 = [viewControllers ic_containsObjectPassingTest:v11];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setNoteBrowserNavigationStackWithFolderObjectIDs:(id)ds
{
  dsCopy = ds;
  if (![(ICViewControllerManager *)self isShowingNoteBrowsersForContainerObjectIDs:dsCopy])
  {
    noteBrowseNavigationController = [(ICViewControllerManager *)self noteBrowseNavigationController];
    v6 = [noteBrowseNavigationController popToRootViewControllerAnimated:0];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100052F34;
    v7[3] = &unk_100646328;
    v7[4] = self;
    [dsCopy enumerateObjectsUsingBlock:v7];
  }
}

- (BOOL)shouldManagedObjectBecomeSelectedNote:(id)note
{
  noteCopy = note;
  objectID = [noteCopy objectID];
  if ([objectID ic_isNoteType] && (objc_msgSend(noteCopy, "isDeleted") & 1) == 0)
  {
    objectID2 = [noteCopy objectID];
    if ([objectID2 isTemporaryID])
    {
      v6 = 0;
    }

    else
    {
      selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
      if (selectedNoteObjectID)
      {
        v6 = 0;
      }

      else
      {
        selectedInvitationObjectID = [(ICViewControllerManager *)self selectedInvitationObjectID];
        if (selectedInvitationObjectID)
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
              objectID3 = [noteCopy objectID];
              v6 = [(ICViewControllerManager *)self isSelectionAppropriateForObjectID:objectID3];
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

- (void)managedObjectContextDidChange:(id)change
{
  changeCopy = change;
  val = self;
  selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
  if (selectedNoteBrowseContainerItemID)
  {
    v7 = 0;
LABEL_7:
    v8 = val;
    goto LABEL_8;
  }

  selectedNoteObjectID = [(ICViewControllerManager *)val selectedNoteObjectID];
  if (selectedNoteObjectID)
  {
    v7 = 0;
    goto LABEL_7;
  }

  selectedInvitationObjectID = [(ICViewControllerManager *)val selectedInvitationObjectID];
  if (selectedInvitationObjectID)
  {
    selectedNoteObjectID = 0;
    v7 = 1;
    goto LABEL_7;
  }

  v8 = val;
  if (![(ICViewControllerManager *)val isTagSelected])
  {
    goto LABEL_102;
  }

  selectedInvitationObjectID = 0;
  selectedNoteObjectID = 0;
  v7 = 1;
LABEL_8:
  if ([(ICViewControllerManager *)v8 isSelectedNoteTogglingLock]|| [(ICViewControllerManager *)v8 isRecoveredNoteBeingPresented]|| [(ICViewControllerManager *)v8 isApplyingStateRestoreArchive]|| [(ICViewControllerManager *)v8 isTagBeingRenamed])
  {
    isTagBeingDeleted = 1;
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  isTagBeingDeleted = [(ICViewControllerManager *)v8 isTagBeingDeleted];
  if (v7)
  {
LABEL_13:
  }

LABEL_14:
  if (!selectedNoteBrowseContainerItemID)
  {
  }

  if ((isTagBeingDeleted & 1) == 0)
  {
    userInfo = [changeCopy userInfo];
    v11 = [userInfo objectForKeyedSubscript:NSInsertedObjectsKey];

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
            objectID = [v15 objectID];
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

    objectID = 0;
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
          userInfo2 = [changeCopy userInfo];
          v21 = [userInfo2 objectForKeyedSubscript:v19];

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
                  note = [v26 note];
                  [v71 ic_addNonNilObject:note];

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
                      objectID2 = [v31 objectID];
                      [v68 addObject:objectID2];
                    }

                    goto LABEL_60;
                  }
                }

                if ([v26 isDeleted])
                {
                  selectedNoteBrowseContainerItemID2 = [(ICViewControllerManager *)val selectedNoteBrowseContainerItemID];
                  objectID3 = [v26 objectID];
                  v30 = [selectedNoteBrowseContainerItemID2 isEqual:objectID3];

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
                  objectID4 = [v31 objectID];
                  selectedNoteBrowseContainerItemID3 = [(ICViewControllerManager *)val selectedNoteBrowseContainerItemID];
                  v34 = [objectID4 isEqual:selectedNoteBrowseContainerItemID3];

                  if (v34)
                  {
                    if (([v31 markedForDeletion] & 1) != 0 || objc_msgSend(v31, "isTrashFolder") && !objc_msgSend(v31, "visibleNotesCount"))
                    {
                      HIDWORD(v69) = 1;
                    }
                  }

                  else if (![(ICViewControllerManager *)val selectionStateTrackingEnabled])
                  {
                    selectedNoteBrowseContainerItemID4 = [(ICViewControllerManager *)val selectedNoteBrowseContainerItemID];
                    if (selectedNoteBrowseContainerItemID4)
                    {
                    }

                    else
                    {
                      objectID5 = [v31 objectID];
                      mostRecentNonSearchContainerItemID = [(ICViewControllerManager *)val mostRecentNonSearchContainerItemID];
                      if ([objectID5 isEqual:mostRecentNonSearchContainerItemID])
                      {
                        markedForDeletion = [v31 markedForDeletion];

                        if (markedForDeletion)
                        {
                          account = [v31 account];
                          defaultFolder = [account defaultFolder];

                          objectID6 = [defaultFolder objectID];
                          [(ICViewControllerManager *)val setMostRecentNonSearchContainerItemID:objectID6];
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
                if (!objectID)
                {
                  if ([(ICViewControllerManager *)val shouldManagedObjectBecomeSelectedNote:v26])
                  {
                    objectID = [v26 objectID];
                  }

                  else
                  {
                    objectID = 0;
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
    selectedContainerItemID = [(ICViewControllerManager *)val selectedContainerItemID];
    v45 = ICDynamicCast();
    v46 = +[ICNoteContext sharedContext];
    workerManagedObjectContext = [v46 workerManagedObjectContext];
    v48 = [v45 isHiddenInContext:workerManagedObjectContext];

    v49 = [v68 copy];
    v50 = [(ICViewControllerManager *)val selectContainersForDeletedHashtagObjectIDs:v49];

    if (((v48 | HIDWORD(v69)) & 1) != 0 && ![(ICViewControllerManager *)val isNoteBeingRecovered]&& (([(ICViewControllerManager *)val isSelectingNextRelevantNoteBrowseContainer]| v50) & 1) == 0 && ([(ICViewControllerManager *)val overrideContainerIdentifier], v51 = objc_claimAutoreleasedReturnValue(), v52 = v51 == 0, v51, v52))
    {
      [(ICViewControllerManager *)val selectNextContainerForDeletedFolder];
    }

    else if (objectID)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100053D38;
      block[3] = &unk_100645BA0;
      block[4] = val;
      v88 = objectID;
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
        selectedNoteObjectID2 = [(ICViewControllerManager *)val selectedNoteObjectID];
        v55 = [NSSet setWithObject:selectedNoteObjectID2];
        [(ICViewControllerManager *)val selectNextRelevantObjectUsingChangedInappropriateIdentifiers:v55];
      }

      else
      {
        selectedSearchResult = [(ICViewControllerManager *)val selectedSearchResult];
        v57 = selectedSearchResult == 0;

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
              object = [changeCopy object];
              v60 = [(ICViewControllerManager *)val selectDefaultFolderForNoteMovedOutOfSmartFolderIfNeeded:object];
              if (((v60 | [(ICViewControllerManager *)val selectDefaultFolderForNoteMovedOutOfSelectedTagsIfNeeded:object]) & 1) == 0)
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

- (BOOL)selectContainersForDeletedHashtagObjectIDs:(id)ds
{
  dsCopy = ds;
  if (![(ICViewControllerManager *)self isTagSelected])
  {
    goto LABEL_7;
  }

  selectedContainerIdentifiers = [(ICViewControllerManager *)self selectedContainerIdentifiers];
  if (([selectedContainerIdentifiers intersectsSet:dsCopy] & 1) == 0)
  {

    goto LABEL_7;
  }

  noteContainerViewMode = [(ICViewControllerManager *)self noteContainerViewMode];

  if (noteContainerViewMode == 1)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  selectedContainerIdentifiers2 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
  v8 = [selectedContainerIdentifiers2 mutableCopy];

  [v8 minusSet:dsCopy];
  selectedContainerIdentifiers3 = [(ICViewControllerManager *)self selectedContainerIdentifiers];
  v10 = [selectedContainerIdentifiers3 mutableCopy];

  [v10 minusSet:dsCopy];
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    tagSelection = [(ICViewControllerManager *)self tagSelection];
    [tagSelection setIncludedObjectIDs:v8];
    [tagSelection setExcludedObjectIDs:v10];
    [(ICViewControllerManager *)self selectTagSelection:tagSelection];
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

- (BOOL)selectDefaultFolderForNoteMovedOutOfSmartFolderIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = [(ICViewControllerManager *)self selectedSmartFolder:neededCopy];

  if (v5)
  {
    v6 = [(ICViewControllerManager *)self selectedSmartFolderNoteObjectIDs:neededCopy];
    v7 = [(ICViewControllerManager *)self selectDefaultFolderForNoteMovedOutOfNoteObjectIDs:v6 managedObjectContext:neededCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)selectDefaultFolderForNoteMovedOutOfSelectedTagsIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    v5 = [(ICViewControllerManager *)self selectedTagsNoteObjectIDs:neededCopy];
    v6 = [(ICViewControllerManager *)self selectDefaultFolderForNoteMovedOutOfNoteObjectIDs:v5 managedObjectContext:neededCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)selectDefaultFolderForNoteMovedOutOfNoteObjectIDs:(id)ds managedObjectContext:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
  if ([selectedNoteObjectID ic_isModernNoteType] && (objc_msgSend(dsCopy, "containsObject:", selectedNoteObjectID) & 1) == 0)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100054E70;
    v15[3] = &unk_100646008;
    v16 = contextCopy;
    v10 = selectedNoteObjectID;
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
  modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
  v4 = [(ICViewControllerManager *)self selectedSmartFolder:modernManagedObjectContext];

  return v4;
}

- (id)selectedSmartFolder:(id)folder
{
  folderCopy = folder;
  objc_opt_class();
  selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
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
    v10 = folderCopy;
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

- (id)selectedSmartFolderNoteObjectIDs:(id)ds
{
  dsCopy = ds;
  v5 = [(ICViewControllerManager *)self selectedSmartFolder:dsCopy];
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
    [dsCopy performBlockAndWait:&v9];
    v7 = [(ICViewControllerManager *)self noteObjectIDsWithQuery:v16[5] managedObjectContext:dsCopy, v9, v10, v11, v12];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)selectedTagsNoteObjectIDs:(id)ds
{
  dsCopy = ds;
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    v5 = [(ICViewControllerManager *)self selectedTagsNoteQuery:dsCopy];
    v6 = [(ICViewControllerManager *)self noteObjectIDsWithQuery:v5 managedObjectContext:dsCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)noteObjectIDsWithQuery:(id)query managedObjectContext:(id)context
{
  queryCopy = query;
  contextCopy = context;
  v7 = contextCopy;
  if (queryCopy)
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
    v11 = contextCopy;
    v12 = queryCopy;
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

- (id)selectedTagsNoteQuery:(id)query
{
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    tagSelection = [(ICViewControllerManager *)self tagSelection];
    v5 = [ICQuery queryForNotesMatchingTagSelection:tagSelection];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)selectNextRelevantObjectUsingChangedInappropriateIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([(ICViewControllerManager *)self behavior]!= 2)
  {
    if (-[ICViewControllerManager noteContainerViewMode](self, "noteContainerViewMode") != 1 || (-[ICViewControllerManager activeEditorController](self, "activeEditorController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 ic_isViewVisible], v5, v6))
    {
      if (![(ICViewControllerManager *)self isAuxiliary])
      {
        selectedSearchResult = [(ICViewControllerManager *)self selectedSearchResult];
        if (selectedSearchResult && (v8 = selectedSearchResult, v9 = [(ICViewControllerManager *)self isSearchActive], v8, v9))
        {
          searchController = [(ICViewControllerManager *)self searchController];
          dataSource = [searchController dataSource];

          allObjects = [identifiersCopy allObjects];
          v13 = [dataSource nextRelevantItemIdentifierAfter:allObjects];

          if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
          {
            [(ICViewControllerManager *)self setSelectedSearchResult:v13];
          }

          v14 = 1;
        }

        else
        {
          currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
          dataSource = [currentNoteBrowseViewController dataSource];

          allObjects2 = [identifiersCopy allObjects];
          v13 = [dataSource nextRelevantItemIdentifierAfter:allObjects2];

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
        selfCopy = self;
        v17 = v13;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

- (void)dismissPrimaryOverlayContent
{
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  displayMode = [mainSplitViewController displayMode];

  if (displayMode <= 6 && ((1 << displayMode) & 0x68) != 0)
  {
    mainSplitViewController2 = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController2 hideColumn:0];
  }
}

- (void)dismissSupplementaryOverlayContent
{
  if ([(ICViewControllerManager *)self noteContainerViewMode]!= 1)
  {
    mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
    displayMode = [mainSplitViewController displayMode];

    if (displayMode == 5 || displayMode == 3)
    {
      mainSplitViewController2 = [(ICViewControllerManager *)self mainSplitViewController];
      [mainSplitViewController2 hideColumn:1];
    }
  }
}

- (void)sendNotificationForSplitViewDisplayModeChangeWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  +[NSNotificationCenter defaultCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100055BF8;
  v10 = v9[3] = &unk_1006463F0;
  selfCopy = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100055C54;
  v6[3] = &unk_1006463F0;
  v7 = v10;
  selfCopy2 = self;
  v5 = v10;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v6];
}

- (void)sendNotificationForNoteEditorSizeChange:(CGSize)change transitionCoordinator:(id)coordinator
{
  height = change.height;
  width = change.width;
  coordinatorCopy = coordinator;
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  if (([noteEditorViewController ic_isViewVisible] & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = +[ICQuickNoteSessionManager sharedManager];
  if ([v9 isSecureScreenShowing])
  {

LABEL_6:
    goto LABEL_7;
  }

  isApplyingStateRestoreArchive = [(ICViewControllerManager *)self isApplyingStateRestoreArchive];

  if ((isApplyingStateRestoreArchive & 1) == 0)
  {
    v22[0] = @"ICSplitViewControllerPredictedDetailSizeUserInfo";
    height = [NSValue valueWithCGSize:width, height];
    v23[0] = height;
    v22[1] = @"ICSplitViewControllerPredictedDurationUserInfo";
    [coordinatorCopy transitionDuration];
    v12 = [NSNumber numberWithDouble:?];
    v23[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

    +[NSNotificationCenter defaultCenter];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100055EE8;
    v19 = v18[3] = &unk_100646418;
    selfCopy = self;
    v21 = v13;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100055F4C;
    v15[3] = &unk_1006463F0;
    v16 = v19;
    selfCopy2 = self;
    v14 = v19;
    noteEditorViewController = v13;
    [coordinatorCopy animateAlongsideTransition:v18 completion:v15];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)showContainerWithIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers usingRootViewController:(BOOL)controller deferUntilDataLoaded:(BOOL)loaded dismissOverlayContent:(BOOL)content keepEditorShowing:(id)showing animated:(BOOL)animated
{
  contentCopy = content;
  loadedCopy = loaded;
  controllerCopy = controller;
  identifiersCopy = identifiers;
  excludingIdentifiersCopy = excludingIdentifiers;
  showingCopy = showing;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100056234;
  v36[3] = &unk_100646440;
  v36[4] = self;
  animatedCopy = animated;
  v33 = contentCopy;
  v38 = contentCopy;
  v17 = objc_retainBlock(v36);
  selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
  v19 = selectedNoteObjectID;
  if (selectedNoteObjectID)
  {
    selectedInvitationObjectID = selectedNoteObjectID;
  }

  else
  {
    selectedInvitationObjectID = [(ICViewControllerManager *)self selectedInvitationObjectID];
  }

  v21 = selectedInvitationObjectID;
  v34 = excludingIdentifiersCopy;

  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled]&& v21 && [(ICViewControllerManager *)self hasCompactWidth]&& ![(ICViewControllerManager *)self objectAlreadyLoadedInEditorWithObjectID:v21]&& [(ICViewControllerManager *)self isNoteEditorVisible])
  {
    v22 = 0;
    v23 = 1;
    if (!loadedCopy)
    {
      goto LABEL_10;
    }

LABEL_16:
    mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
    if ([mainSplitViewController isCollapsed])
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

    if (!controllerCopy)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  allObjects = [identifiersCopy allObjects];
  firstObject = [allObjects firstObject];
  v27 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:firstObject];

  isAutomaticallySelectingNotes = [(ICViewControllerManager *)self isAutomaticallySelectingNotes];
  if (v27 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = isAutomaticallySelectingNotes;
  }

  v22 = 1;
  if (loadedCopy)
  {
    goto LABEL_16;
  }

LABEL_10:
  v24 = 0;
  if (!controllerCopy)
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
  [ICViewControllerManager showContainerWithIdentifiers:"showContainerWithIdentifiers:excludingIdentifiers:noteBrowseViewController:usingRootViewController:deferUntilDataLoaded:dismissOverlayContent:animated:ensurePresented:ensureSelectedNote:keepEditorShowing:dataIndexedBlock:dataRenderedBlock:" excludingIdentifiers:identifiersCopy noteBrowseViewController:v34 usingRootViewController:0 deferUntilDataLoaded:controllerCopy dismissOverlayContent:loadedCopy animated:v33 ensurePresented:v32 ensureSelectedNote:showingCopy keepEditorShowing:0 dataIndexedBlock:v24 dataRenderedBlock:?];
  if (!loadedCopy)
  {
    (v17[2])(v17);
  }
}

- (void)showContainerWithIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers noteBrowseViewController:(id)controller usingRootViewController:(BOOL)viewController deferUntilDataLoaded:(BOOL)loaded dismissOverlayContent:(BOOL)content animated:(BOOL)animated ensurePresented:(BOOL)self0 ensureSelectedNote:(BOOL)self1 keepEditorShowing:(id)self2 dataIndexedBlock:(id)self3 dataRenderedBlock:(id)self4
{
  identifiersCopy = identifiers;
  excludingIdentifiersCopy = excludingIdentifiers;
  controllerCopy = controller;
  showingCopy = showing;
  blockCopy = block;
  renderedBlockCopy = renderedBlock;
  objc_opt_class();
  allObjects = [identifiersCopy allObjects];
  firstObject = [allObjects firstObject];
  v24 = ICDynamicCast();

  objc_opt_class();
  v25 = [(ICViewControllerManager *)self existingManagedObjectWithObjectID:v24];
  v26 = ICDynamicCast();

  if (!controllerCopy)
  {
    if ([(ICViewControllerManager *)self noteContainerViewMode]== 1 && ![(ICViewControllerManager *)self hasCompactWidth])
    {
      ancestorFolderObjectIDs = [v26 ancestorFolderObjectIDs];
      reverseObjectEnumerator = [ancestorFolderObjectIDs reverseObjectEnumerator];
      allObjects2 = [reverseObjectEnumerator allObjects];

      if ([allObjects2 count])
      {
        [(ICViewControllerManager *)self setNoteBrowserNavigationStackWithFolderObjectIDs:allObjects2];
        controllerCopy = [[ICNoteBrowseViewController alloc] initWithViewMode:[(ICViewControllerManager *)self noteContainerViewMode] viewControllerManager:self];

        if (controllerCopy)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    v36 = v26;
    if (viewController)
    {
      rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    }

    else
    {
      rootNoteBrowseViewController = [[ICNoteBrowseViewController alloc] initWithViewMode:[(ICViewControllerManager *)self noteContainerViewMode] viewControllerManager:self];
    }

    controllerCopy = rootNoteBrowseViewController;
    navigationItem = [(ICNoteBrowseViewController *)rootNoteBrowseViewController navigationItem];
    searchController = [navigationItem searchController];
    isActive = [searchController isActive];

    if (isActive)
    {
      navigationItem2 = [(ICNoteBrowseViewController *)controllerCopy navigationItem];
      searchController2 = [navigationItem2 searchController];
      [searchController2 setActive:0];
    }

    [(ICNoteBrowseViewController *)controllerCopy setEditing:0];
    v26 = v36;
  }

LABEL_14:
  [(ICViewControllerManager *)self setCurrentNoteBrowseViewController:controllerCopy animated:animated ensurePresented:presented containerIdentifiers:identifiersCopy excludingIdentifiers:excludingIdentifiersCopy ensureSelectedNote:note keepEditorShowing:showingCopy dataIndexedBlock:blockCopy dataRenderedBlock:renderedBlockCopy];
}

- (void)addSelectedHashtagsToNewNote:(id)note
{
  noteCopy = note;
  managedObjectContext = [noteCopy managedObjectContext];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selectedContainerIdentifiers = [(ICViewControllerManager *)self selectedContainerIdentifiers];
  v7 = [selectedContainerIdentifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(selectedContainerIdentifiers);
        }

        objc_opt_class();
        v11 = ICDynamicCast();
        if ([v11 ic_isHashtagType])
        {
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_10005678C;
          v13[3] = &unk_100645D40;
          v12 = managedObjectContext;
          v14 = v12;
          v15 = v11;
          v16 = noteCopy;
          [v12 performBlockAndWait:v13];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [selectedContainerIdentifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)updateNoteEditorBezelsIfNeededWithDisplayMode:(int64_t)mode force:(BOOL)force
{
  forceCopy = force;
  if ([(ICViewControllerManager *)self behavior]== 3)
  {
    noteContainerViewMode = [(ICViewControllerManager *)self noteContainerViewMode];
    noteContainerViewMode2 = [(ICViewControllerManager *)self noteContainerViewMode];
    v10 = mode == 1 || noteContainerViewMode2 == 1;
    if ([(ICViewControllerManager *)self isInHTMLEditorMode])
    {
      legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];
      [legacyNoteEditorViewController updateContentViewBezelsStandalone:mode == 1 needsAdditionalBottomMargin:noteContainerViewMode == 0 needsAdditionalLeadingMargin:v10];
    }

    else
    {
      legacyNoteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
      [legacyNoteEditorViewController updateContentViewBezelsStandalone:mode == 1 needsAdditionalBottomMargin:noteContainerViewMode == 0 needsAdditionalLeadingMargin:v10 force:forceCopy];
    }
  }
}

- (void)clearRecentSelections
{
  selectionStateController = [(ICViewControllerManager *)self selectionStateController];
  [selectionStateController clear];
}

- (void)noteLockManagerWillToggleLock:(id)lock
{
  lockCopy = lock;
  objc_opt_class();
  object = [lockCopy object];

  v10 = ICCheckedDynamicCast();

  note = [v10 note];
  objectID = [note objectID];
  selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
  v9 = [objectID isEqual:selectedNoteObjectID];

  if (v9)
  {
    [(ICViewControllerManager *)self setIsSelectedNoteTogglingLock:1];
  }
}

- (void)noteLockManagerDidToggleLock:(id)lock
{
  lockCopy = lock;
  objc_opt_class();
  object = [lockCopy object];

  v14 = ICCheckedDynamicCast();

  selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
  note = [v14 note];
  objectID = [note objectID];
  v9 = [selectedNoteObjectID isEqual:objectID];

  if (v9)
  {
    updatedNote = [v14 updatedNote];

    if (updatedNote)
    {
      updatedNote2 = [v14 updatedNote];
      objectID2 = [updatedNote2 objectID];
      LOWORD(v13) = 256;
      [(ICViewControllerManager *)self selectNoteWithObjectID:objectID2 scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:0 showLatestUpdatesIfAvailable:1 animated:v13 ensurePresented:?];
    }

    [(ICViewControllerManager *)self setIsSelectedNoteTogglingLock:0];
  }
}

- (void)collectionViewWillRenameTag:(id)tag
{
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    tagSelection = [(ICViewControllerManager *)self tagSelection];
    [tagSelection setAutomaticallyRemoveDeletedTags:0];
  }

  [(ICViewControllerManager *)self setIsTagBeingRenamed:1];
}

- (void)tagDidRename:(id)rename
{
  renameCopy = rename;
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    tagSelection = [(ICViewControllerManager *)self tagSelection];
    [tagSelection setAutomaticallyRemoveDeletedTags:1];
  }

  object = [renameCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    tagSelection2 = [(ICViewControllerManager *)self tagSelection];
    v9 = [tagSelection2 copy];

    object2 = [renameCopy object];
    userInfo = [renameCopy userInfo];
    v12 = +[NSNotification ICTagCollectionViewRenameTagOriginalTagObjectIDKey];
    v13 = [userInfo objectForKeyedSubscript:v12];

    objectIDs = [v9 objectIDs];
    LODWORD(v12) = [objectIDs containsObject:v13];

    if (v12)
    {
      excludedObjectIDs = [v9 excludedObjectIDs];
      v16 = [excludedObjectIDs containsObject:v13];

      [v9 removeObjectID:v13 fromExcluded:v16];
      [v9 addObjectID:object2 toExcluded:v16];
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
        selfCopy = self;
        v25 = v9;
        performBlockOnMainThread();
      }
    }
  }

  [(ICViewControllerManager *)self setIsTagBeingRenamed:0, v20, v21, v22, v23, selfCopy];
}

- (void)tagsDidDelete:(id)delete
{
  deleteCopy = delete;
  [(ICViewControllerManager *)self setIsTagBeingDeleted:0];
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    object = [deleteCopy object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      object2 = [deleteCopy object];
      selectionStateTrackingEnabled = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
      tagSelection = [(ICViewControllerManager *)self tagSelection];
      v10 = tagSelection;
      if (selectionStateTrackingEnabled)
      {
        v11 = [NSSet setWithArray:object2];
        [v10 removeObjectIDs:v11];

        [(ICViewControllerManager *)self selectTagSelection:v10];
      }

      else
      {
        v12 = [tagSelection copy];

        v13 = [NSSet setWithArray:object2];
        [v12 removeObjectIDs:v13];

        v14 = v12;
        performBlockOnMainThread();
      }
    }
  }
}

- (void)migrationStateDidChange:(id)change
{
  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  folderDataSource = [folderListViewController folderDataSource];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100057120;
  v6[3] = &unk_100645E30;
  v6[4] = self;
  [folderDataSource reloadDataAnimated:1 dataIndexedBlock:&stru_100646480 dataRenderedBlock:v6];
}

- (void)accountsDidChange:(id)change
{
  if ([(ICViewControllerManager *)self isAuxiliary])
  {
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    note = [noteEditorViewController note];
    folder = [note folder];
    account = [folder account];
    isDeleted = [account isDeleted];

    if (isDeleted)
    {

      [(ICViewControllerManager *)self closeAuxiliaryWindowAnimated:1];
    }
  }

  else
  {
    folderListViewController = [(ICViewControllerManager *)self folderListViewController];
    folderDataSource = [folderListViewController folderDataSource];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005726C;
    v11[3] = &unk_100645E30;
    v11[4] = self;
    [folderDataSource reloadDataAnimated:1 dataIndexedBlock:&stru_1006464A0 dataRenderedBlock:v11];
  }
}

- (void)folderWasCreated:(id)created
{
  if ([(ICViewControllerManager *)self isSplitViewExpanded])
  {
    mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController showColumn:0];
  }
}

- (void)willDismissSearch:(id)search
{
  object = [search object];
  currentSearchBarViewController = [(ICViewControllerManager *)self currentSearchBarViewController];

  if (object == currentSearchBarViewController)
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
      noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
      [noteEditorViewController highlightSearchMatchesForRegexFinder:0];

      if ([(ICViewControllerManager *)self isSplitViewExpanded])
      {
        if ([(ICViewControllerManager *)self isSearchActiveWithQuery])
        {
          selectedSearchResult = [(ICViewControllerManager *)self selectedSearchResult];
          if (selectedSearchResult)
          {
            v9 = selectedSearchResult;
            isTagSelected = [(ICViewControllerManager *)self isTagSelected];

            if ((isTagSelected & 1) == 0)
            {
              objc_opt_class();
              selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
              v12 = ICDynamicCast();

              if ([v12 ic_isModernFolderType])
              {
                modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
                v14 = [modernManagedObjectContext ic_existingObjectWithID:v12];

                folderListViewController = [(ICViewControllerManager *)self folderListViewController];
                folderDataSource = [folderListViewController folderDataSource];
                ancestorFolderObjectIDs = [v14 ancestorFolderObjectIDs];
                v19[0] = _NSConcreteStackBlock;
                v19[1] = 3221225472;
                v19[2] = sub_1000576A4;
                v19[3] = &unk_100645BA0;
                v19[4] = self;
                v20 = v14;
                v18 = v14;
                [folderDataSource expandItemsWithIdentifiers:ancestorFolderObjectIDs completion:v19];
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

- (void)searchQueryDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  currentSearchBarViewController = [(ICViewControllerManager *)self currentSearchBarViewController];
  noteSearchViewController = [currentSearchBarViewController noteSearchViewController];

  v7 = changeCopy;
  if (object == noteSearchViewController)
  {
    userInfo = [changeCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:@"ICNoteSearchViewControllerQueryDidChangeNotificationQueryExistsKey"];

    if ([v9 BOOLValue] && !-[ICViewControllerManager isSearchActiveWithQuery](self, "isSearchActiveWithQuery"))
    {
      [(ICViewControllerManager *)self setIsSearchActiveWithQuery:1];
    }

    v7 = changeCopy;
  }
}

- (void)didStartEditing:(id)editing
{
  editingCopy = editing;
  hasCompactWidth = [(ICViewControllerManager *)self hasCompactWidth];
  v5 = editingCopy;
  if ((hasCompactWidth & 1) == 0)
  {
    object = [editingCopy object];
    folderListViewController = [(ICViewControllerManager *)self folderListViewController];

    if (object != folderListViewController)
    {
      folderListViewController2 = [(ICViewControllerManager *)self folderListViewController];
      [folderListViewController2 setEditing:0 animated:1];
    }

    object2 = [editingCopy object];
    rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];

    v5 = editingCopy;
    if (object2 != rootNoteBrowseViewController)
    {
      rootNoteBrowseViewController2 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
      [rootNoteBrowseViewController2 setEditing:0 animated:1];

      v5 = editingCopy;
    }
  }

  object3 = [v5 object];
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  v14 = noteEditorViewController;
  if (object3 == noteEditorViewController)
  {
  }

  else
  {
    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    isEditingOnSystemPaper = [noteEditorViewController2 isEditingOnSystemPaper];

    if (isEditingOnSystemPaper)
    {
      goto LABEL_11;
    }

    object3 = [(ICViewControllerManager *)self noteEditorViewController];
    [object3 setEditing:0 animated:1];
  }

LABEL_11:
  object4 = [editingCopy object];
  legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];

  if (object4 != legacyNoteEditorViewController)
  {
    legacyNoteEditorViewController2 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    [legacyNoteEditorViewController2 setEditing:0 animated:1];
  }
}

- (void)validateState
{
  objc_opt_class();
  selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
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
    account = v5;
  }

  else
  {
    objc_opt_class();
    v7 = ICDynamicCast();
    account = [v7 account];

    if (!account)
    {
      goto LABEL_6;
    }
  }

  legacyManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
  [legacyManagedObjectContext refreshObject:account mergeChanges:1];

LABEL_6:
  didChooseToMigrate = [account didChooseToMigrate];
  if (v4)
  {
    v10 = [v4 isDeleted] | didChooseToMigrate;

    if ((v10 & 1) == 0)
    {
LABEL_8:
      selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];

      if (!selectedNoteObjectID || (-[ICViewControllerManager selectedNoteObjectID](self, "selectedNoteObjectID"), v12 = objc_claimAutoreleasedReturnValue(), -[ICViewControllerManager existingManagedObjectWithObjectID:](self, "existingManagedObjectWithObjectID:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v13) && (v14 = [v13 isDeleted], v13, (v14 & 1) == 0))
      {
        focusedNoteObjectID = [(ICViewControllerManager *)self focusedNoteObjectID];

        if (!focusedNoteObjectID || (-[ICViewControllerManager focusedNoteObjectID](self, "focusedNoteObjectID"), v16 = objc_claimAutoreleasedReturnValue(), -[ICViewControllerManager existingManagedObjectWithObjectID:](self, "existingManagedObjectWithObjectID:", v16), v17 = objc_claimAutoreleasedReturnValue(), v16, v17) && (v18 = [v17 isDeleted], v17, (v18 & 1) == 0))
        {
          selectedInvitationObjectID = [(ICViewControllerManager *)self selectedInvitationObjectID];

          if (!selectedInvitationObjectID)
          {
            goto LABEL_24;
          }

          selectedInvitationObjectID2 = [(ICViewControllerManager *)self selectedInvitationObjectID];
          v21 = [(ICViewControllerManager *)self existingManagedObjectWithObjectID:selectedInvitationObjectID2];

          if (v21)
          {
            isDeleted = [v21 isDeleted];

            if (!isDeleted)
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

  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  dataSource = [folderListViewController dataSource];
  firstRelevantItemIdentifier = [dataSource firstRelevantItemIdentifier];

  v26 = [(ICViewControllerManager *)self existingManagedObjectWithObjectID:firstRelevantItemIdentifier];
  v27 = v26;
  if (v26 && ([v26 isDeleted] & 1) == 0)
  {
    v35 = [NSSet ic_setFromNonNilObject:firstRelevantItemIdentifier];
    v36 = +[NSSet set];
    [(ICViewControllerManager *)self selectContainerWithIdentifiers:v35 excludingIdentifiers:v36 usingRootViewController:1 deferUntilDataLoaded:0 dismissOverlayContent:0 animated:1];
  }

  else
  {

    primaryNavigationController = [(ICViewControllerManager *)self primaryNavigationController];
    v29 = [primaryNavigationController popToRootViewControllerAnimated:1];

    supplementaryNavigationController = [(ICViewControllerManager *)self supplementaryNavigationController];
    v31 = [supplementaryNavigationController popToRootViewControllerAnimated:1];

    rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    [rootNoteBrowseViewController setNoteContainer:0];

    rootNoteBrowseViewController2 = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    [rootNoteBrowseViewController2 setNoteCollection:0];

    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    [noteEditorViewController setNote:0];

    firstRelevantItemIdentifier = objc_alloc_init(ICWindowStateArchive);
    [(ICWindowStateArchive *)firstRelevantItemIdentifier setIsPrimaryContentVisible:[(ICViewControllerManager *)self isPrimaryContentVisible]];
    [(ICWindowStateArchive *)firstRelevantItemIdentifier setIsSupplementaryContentVisible:[(ICViewControllerManager *)self isSupplementaryContentVisible]];
    [(ICViewControllerManager *)self applyStateRestoreArchive:firstRelevantItemIdentifier completion:0];
  }

LABEL_24:
}

- (id)defaultContainerObjectIDForNoteWithObjectID:(id)d
{
  dCopy = d;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100040A44;
  v34 = sub_100040A54;
  v35 = 0;
  if ([dCopy ic_isEntityOfClass:objc_opt_class()])
  {
    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000580AC;
    v27[3] = &unk_100646008;
    v27[4] = self;
    v28 = dCopy;
    v29 = &v30;
    [modernManagedObjectContext performBlockAndWait:v27];

    v6 = v28;
LABEL_5:

    goto LABEL_6;
  }

  if ([dCopy ic_isEntityOfClass:objc_opt_class()])
  {
    legacyManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000581A8;
    v24[3] = &unk_100646008;
    v24[4] = self;
    v25 = dCopy;
    v26 = &v30;
    [legacyManagedObjectContext performBlockAndWait:v24];

    v6 = v25;
    goto LABEL_5;
  }

  if (!dCopy)
  {
    v10 = +[ICNoteContext sharedContext];
    managedObjectContext = [v10 managedObjectContext];

    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10005829C;
    v21 = &unk_100645FE0;
    v12 = managedObjectContext;
    v22 = v12;
    v23 = &v30;
    [v12 performBlockAndWait:&v18];
    if (!v31[5])
    {
      v13 = [NotesApp sharedNotesApp:v18];
      noteContext = [v13 noteContext];
      defaultStoreForNewNote = [noteContext defaultStoreForNewNote];
      objectID = [defaultStoreForNewNote objectID];
      v17 = v31[5];
      v31[5] = objectID;
    }
  }

LABEL_6:
  v8 = v31[5];
  _Block_object_dispose(&v30, 8);

  return v8;
}

- (void)dismissAnyPresentedViewControllerAnimated:(BOOL)animated forShowNote:(BOOL)note completion:(id)completion
{
  noteCopy = note;
  animatedCopy = animated;
  completionCopy = completion;
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  presentedViewController = [mainSplitViewController presentedViewController];

  if (!presentedViewController)
  {
    goto LABEL_13;
  }

  if (noteCopy)
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
      mainSplitViewController2 = [(ICViewControllerManager *)self mainSplitViewController];
      presentedViewController2 = [mainSplitViewController2 presentedViewController];

      [presentedViewController2 prepareForDismissal];
    }

    mainSplitViewController3 = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController3 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  else
  {
LABEL_13:
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }

  [(ICViewControllerManager *)self setCurrentAttachmentPresenter:0];
}

- (id)containerObjectIDForNewNoteWithApproach:(int64_t)approach
{
  v4 = 0;
  if (approach > 0x14)
  {
    v5 = 0;
  }

  else
  {
    if (((1 << approach) & 0x1F9F00) != 0)
    {
      v4 = 1;
LABEL_4:
      v5 = 1;
      goto LABEL_9;
    }

    if (((1 << approach) & 0xF8) != 0)
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
      if (((1 << approach) & 0x2002) != 0)
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
    tagSelection = [(ICViewControllerManager *)self tagSelection];
    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    v9 = [ICDefaultAccountUtilities accountToAddNewNoteWithTagSelection:tagSelection modernContext:modernManagedObjectContext];

    v4 = 1;
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  selectedContainerItemID = [(ICViewControllerManager *)self selectedContainerItemID];
  v11 = ICDynamicCast();

  objc_opt_class();
  mostRecentNonSearchContainerItemID = [(ICViewControllerManager *)self mostRecentNonSearchContainerItemID];
  v13 = ICDynamicCast();

  if (v4)
  {
    v14 = 1;
  }

  else if (v11 || ([(ICViewControllerManager *)self selectedContainerItemID], (v15 = objc_claimAutoreleasedReturnValue()) == 0) && v13 || ((v16 = [(ICViewControllerManager *)self isSearchActiveWithQuery], v13) ? (v17 = v16) : (v17 = 0), v15, v17 == 1))
  {
    accountObjectID = [v11 accountObjectID];
    if (accountObjectID)
    {
      modernManagedObjectContext2 = [(ICViewControllerManager *)self modernManagedObjectContext];
      accountObjectID2 = [v11 accountObjectID];
      v21 = [modernManagedObjectContext2 objectWithID:accountObjectID2];

      v9 = modernManagedObjectContext2;
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

  mostRecentNonSearchContainerItemID2 = [(ICViewControllerManager *)self mostRecentNonSearchContainerItemID];
  if (mostRecentNonSearchContainerItemID2)
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
        modernManagedObjectContext3 = +[NotesApp sharedNotesApp];
        noteContext = [modernManagedObjectContext3 noteContext];
        v9 = [ICDefaultAccountUtilities defaultAccountWithHTMLNoteContext:noteContext];

LABEL_35:
        goto LABEL_36;
      }

LABEL_34:
      modernManagedObjectContext3 = [(ICViewControllerManager *)self modernManagedObjectContext];
      v9 = [ICAccount defaultAccountInContext:modernManagedObjectContext3];
      goto LABEL_35;
    }

LABEL_36:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      defaultFolder = [v9 defaultFolder];
      objectID = [defaultFolder objectID];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_42;
      }

      defaultFolder = [v9 defaultStore];
      objectID = [defaultFolder objectID];
    }

    v28 = v38[5];
    v38[5] = objectID;
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
  mostRecentNonSearchContainerItemID3 = [(ICViewControllerManager *)self mostRecentNonSearchContainerItemID];
  v32 = ICDynamicCast();
  v33 = v38[5];
  v38[5] = v32;

  if ([v38[5] ic_isModernFolderType])
  {
    [(ICViewControllerManager *)self modernManagedObjectContext];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10005898C;
    defaultFolder = v34[3] = &unk_100645FE0;
    v35 = defaultFolder;
    v36 = &v37;
    [defaultFolder performBlockAndWait:v34];
    v28 = v35;
LABEL_41:
  }

LABEL_42:
  v29 = v38[5];

  _Block_object_dispose(&v37, 8);

  return v29;
}

- (id)createNewNoteInContainerWithObjectID:(id)d isSystemPaper:(BOOL)paper
{
  paperCopy = paper;
  dCopy = d;
  if ([dCopy ic_isEntityOfClass:objc_opt_class()])
  {
    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    defaultFolder2 = [modernManagedObjectContext objectWithID:dCopy];

    if ([defaultFolder2 folderType] != 1)
    {
      v15 = 0;
      goto LABEL_18;
    }

    if ([defaultFolder2 folderType] == 1)
    {
      account = [defaultFolder2 account];
      if (!account)
      {
        v10 = +[ICNoteContext sharedContext];
        managedObjectContext = [v10 managedObjectContext];
        account = [ICAccount defaultAccountInContext:managedObjectContext];
      }

      defaultFolder = [account defaultFolder];

      defaultFolder2 = defaultFolder;
    }

    rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
    [rootNoteBrowseViewController setNoteContainer:defaultFolder2];
    goto LABEL_10;
  }

  if ([dCopy ic_isEntityOfClass:objc_opt_class()])
  {
    modernManagedObjectContext2 = [(ICViewControllerManager *)self modernManagedObjectContext];
    rootNoteBrowseViewController = [modernManagedObjectContext2 objectWithID:dCopy];

    defaultFolder2 = [rootNoteBrowseViewController defaultFolder];
LABEL_10:
    v15 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if ([dCopy ic_isEntityOfClass:objc_opt_class()])
  {
    rootNoteBrowseViewController = [(ICViewControllerManager *)self legacyManagedObjectContext];
    defaultStore = [rootNoteBrowseViewController objectWithID:dCopy];
LABEL_16:
    v15 = defaultStore;
    defaultFolder2 = 0;
    goto LABEL_17;
  }

  if ([dCopy ic_isEntityOfClass:objc_opt_class()])
  {
    legacyManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
    rootNoteBrowseViewController = [legacyManagedObjectContext objectWithID:dCopy];

    defaultStore = [rootNoteBrowseViewController defaultStore];
    goto LABEL_16;
  }

  v15 = 0;
  defaultFolder2 = 0;
LABEL_18:
  if (!(defaultFolder2 | v15))
  {
    modernManagedObjectContext3 = [(ICViewControllerManager *)self modernManagedObjectContext];
    v19 = [ICAccount defaultAccountInContext:modernManagedObjectContext3];
    defaultFolder2 = [v19 defaultFolder];
  }

  if (!defaultFolder2)
  {
    if (v15)
    {
      v29 = +[NotesApp sharedNotesApp];
      noteContext = [v29 noteContext];
      newlyAddedNote = [noteContext newlyAddedNote];

      v32 = +[NSDate date];
      [newlyAddedNote setCreationDate:v32];

      v33 = +[NSDate ic_modificationDateForNoteBeingEdited];
      [newlyAddedNote setModificationDate:v33];

      [newlyAddedNote setContent:&stru_100661CF0];
      [newlyAddedNote setTitle:0];
      [newlyAddedNote setStore:v15];
      v34 = newlyAddedNote;
      managedObjectContext2 = [v34 managedObjectContext];
      [managedObjectContext2 ic_save];

      eventReporter = [(ICViewControllerManager *)self eventReporter];
      [eventReporter submitNoteCreateEventForHTMLNote:v34];

      goto LABEL_36;
    }

    goto LABEL_28;
  }

  if (![defaultFolder2 canMoveAddOrDeleteContents])
  {
LABEL_28:
    v34 = 0;
    goto LABEL_36;
  }

  v20 = [ICNote newEmptyNoteInFolder:defaultFolder2];
  objc_opt_class();
  selectedNoteBrowseContainerItemID = [(ICViewControllerManager *)self selectedNoteBrowseContainerItemID];
  v22 = ICDynamicCast();

  type = [v22 type];
  v24 = [type isEqual:ICVirtualSmartFolderItemIdentifierTypeMathNotes];

  hostApplicationIdentifier = [(ICViewControllerManager *)self hostApplicationIdentifier];
  v26 = [hostApplicationIdentifier length];

  if (v26)
  {
    hostApplicationIdentifier2 = [(ICViewControllerManager *)self hostApplicationIdentifier];
    v28 = [hostApplicationIdentifier2 copy];
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

  [(ICViewControllerManager *)self updateNewNoteForSelectedTags:v20 folder:defaultFolder2];
  if (paperCopy)
  {
    v37 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D89CC(v20);
    }

    [v20 markAsSystemPaperIfNeeded:1];
  }

  eventReporter2 = [(ICViewControllerManager *)self eventReporter];
  [eventReporter2 submitNoteCreateEventForModernNote:v20];

  v34 = v20;
  [v34 updateChangeCountWithReason:@"Created note"];
  managedObjectContext3 = [v34 managedObjectContext];

  [managedObjectContext3 ic_save];
LABEL_36:

  return v34;
}

- (void)updateNewNoteForSelectedTags:(id)tags folder:(id)folder
{
  tagsCopy = tags;
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    [(ICViewControllerManager *)self addSelectedHashtagsToNewNote:tagsCopy];
  }
}

- (BOOL)isTagSelected
{
  tagSelection = [(ICViewControllerManager *)self tagSelection];
  isNonEmpty = [tagSelection isNonEmpty];

  return isNonEmpty;
}

- (id)showNewNoteStartEditing:(BOOL)editing inContainerWithObjectID:(id)d isSystemPaper:(BOOL)paper showInkPicker:(BOOL)picker animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  paperCopy = paper;
  editingCopy = editing;
  dCopy = d;
  completionCopy = completion;
  currentSearchBarViewController = [(ICViewControllerManager *)self currentSearchBarViewController];
  noteSearchViewController = [currentSearchBarViewController noteSearchViewController];
  [noteSearchViewController cancelSearch];

  v18 = [(ICViewControllerManager *)self createNewNoteInContainerWithObjectID:dCopy isSystemPaper:paperCopy];
  if ([v18 isModernNote])
  {
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    objc_opt_class();
    v20 = ICDynamicCast();
    [noteEditorViewController setupLinedPaperOnNewNote:v20 willStartEditing:editingCopy];
  }

  objectID = [v18 objectID];

  if (objectID)
  {
    if (editingCopy)
    {
      folderListViewController = [(ICViewControllerManager *)self folderListViewController];
      isEditing = [folderListViewController isEditing];

      if (isEditing)
      {
        folderListViewController2 = [(ICViewControllerManager *)self folderListViewController];
        [folderListViewController2 setEditing:0 animated:animatedCopy];
      }

      currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
      isEditing2 = [currentNoteBrowseViewController isEditing];

      if (isEditing2)
      {
        currentNoteBrowseViewController2 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
        [currentNoteBrowseViewController2 setEditing:0 animated:animatedCopy];
      }
    }

    objc_initWeak(&location, self);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000593D4;
    v41[3] = &unk_1006464C8;
    objc_copyWeak(&v44, &location);
    v42 = v18;
    v45 = editingCopy;
    pickerCopy = picker;
    v47 = animatedCopy;
    v43 = completionCopy;
    v28 = objc_retainBlock(v41);
    if ([(ICViewControllerManager *)self noteContainerViewMode])
    {
      currentNoteBrowseViewController3 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
      noteDataSource = [currentNoteBrowseViewController3 noteDataSource];
      if (noteDataSource)
      {
        v31 = +[_TtC11MobileNotes14ICFeatureFlags uniquelyiPadFluidTransitionsEnabled];

        if (v31)
        {
          currentNoteBrowseViewController4 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
          noteDataSource2 = [currentNoteBrowseViewController4 noteDataSource];
          [noteDataSource2 reloadDataAnimated:1 dataIndexedBlock:0 dataRenderedBlock:v28];

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
  visibleViewsUndoManager = [(ICViewControllerManager *)self visibleViewsUndoManager];
  v35 = [visibleViewsUndoManager prepareWithInvocationTarget:self];
  objectID2 = [v18 objectID];
  [v35 deleteEmptyNoteIfNeeded:objectID2];

  visibleViewsUndoManager2 = [(ICViewControllerManager *)self visibleViewsUndoManager];
  v38 = +[NSBundle mainBundle];
  v39 = [v38 localizedStringForKey:@"Add Note" value:&stru_100661CF0 table:0];
  [visibleViewsUndoManager2 setActionName:v39];

  return v18;
}

- (void)setNoteEditorAnimated:(BOOL)animated ensurePresented:(BOOL)presented startEditing:(BOOL)editing showLegacy:(BOOL)legacy showLatestUpdatesIfAvailable:(BOOL)available
{
  if (!editing)
  {
    [(ICViewControllerManager *)self stopEditing];
  }

  if (legacy)
  {
    [(ICViewControllerManager *)self legacyNoteEditorViewController];
  }

  else
  {
    [(ICViewControllerManager *)self noteEditorViewController];
  }
  v13 = ;
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  ic_isViewVisible = [currentNoteBrowseViewController ic_isViewVisible];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000595E4;
  v20[3] = &unk_100646540;
  presentedCopy = presented;
  v23 = ic_isViewVisible;
  v20[4] = self;
  v21 = v13;
  animatedCopy = animated;
  editingCopy = editing;
  legacyCopy = legacy;
  availableCopy = available;
  v16 = v13;
  v17 = objc_retainBlock(v20);
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  if (mainSplitViewController)
  {
    mainSplitViewController2 = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController2 ic_performBlockAfterActiveTransition:v17];
  }

  else
  {
    (v17[2])(v17);
  }
}

- (BOOL)validateStateRestoreArchive:(id)archive
{
  archiveCopy = archive;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[NSMutableArray array];
    currentObjectIDURL = [archiveCopy currentObjectIDURL];
    [v6 ic_addNonNilObject:currentObjectIDURL];

    currentNoteObjectIDURL = [archiveCopy currentNoteObjectIDURL];
    [v6 ic_addNonNilObject:currentNoteObjectIDURL];

    currentContainerObjectIDURLs = [archiveCopy currentContainerObjectIDURLs];
    [v6 ic_addObjectsFromNonNilArray:currentContainerObjectIDURLs];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100059F78;
    v11[3] = &unk_100646568;
    v11[4] = self;
    v5 = [v6 indexOfObjectPassingTest:v11] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)managedObjectIDFromURL:(id)l
{
  lCopy = l;
  modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
  persistentStoreCoordinator = [modernManagedObjectContext persistentStoreCoordinator];

  v7 = [persistentStoreCoordinator ic_managedObjectIDForURIRepresentation:lCopy];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    legacyManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
    persistentStoreCoordinator2 = [legacyManagedObjectContext persistentStoreCoordinator];

    v8 = [persistentStoreCoordinator2 ic_managedObjectIDForURIRepresentation:lCopy];
    persistentStoreCoordinator = persistentStoreCoordinator2;
  }

  return v8;
}

- (id)existingManagedObjectWithObjectID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    v6 = [modernManagedObjectContext existingObjectWithID:dCopy error:0];

    if (!v6)
    {
      legacyManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
      v6 = [legacyManagedObjectContext existingObjectWithID:dCopy error:0];
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
  window = [(ICViewControllerManager *)self window];
  traitCollection = [window traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if ([(ICViewControllerManager *)self noteContainerViewMode])
  {
    v6 = 1;
  }

  else
  {
    v6 = horizontalSizeClass == 1;
  }

  return !v6;
}

- (ICWindowStateArchive)windowStateArchive
{
  v3 = objc_alloc_init(ICWindowStateArchive);
  window = [(ICViewControllerManager *)self window];
  windowIdentifier = [window windowIdentifier];
  [(ICWindowStateArchive *)v3 setWindowIdentifier:windowIdentifier];

  [(ICWindowStateArchive *)v3 setAttachmentBrowserOpen:[(ICViewControllerManager *)self isAttachmentBrowserVisible]];
  v6 = +[ICExpansionState sharedExpansionState];
  archiveDictionary = [v6 archiveDictionary];
  [(ICWindowStateArchive *)v3 setExpansionState:archiveDictionary];

  [(ICWindowStateArchive *)v3 setIsAuxiliaryWindow:[(ICViewControllerManager *)self isAuxiliary]];
  [(ICWindowStateArchive *)v3 setCurrentNoteContainerViewMode:[(ICViewControllerManager *)self noteContainerViewMode]];
  [(ICWindowStateArchive *)v3 setPreferredNoteContainerViewMode:[(ICViewControllerManager *)self preferredNoteContainerViewMode]];
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    [selectionStateController setActivityStreamViewMode:{-[ICViewControllerManager activityStreamViewMode](self, "activityStreamViewMode")}];

    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    if ([noteEditorViewController ic_isViewVisible])
    {
      noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
      note = [noteEditorViewController2 note];
      if (note)
      {
        noteEditorViewController3 = [(ICViewControllerManager *)self noteEditorViewController];
        isEditingOnSecureScreen = [noteEditorViewController3 isEditingOnSecureScreen];

        if (!isEditingOnSecureScreen)
        {
          note = 0;
          goto LABEL_11;
        }

        note = objc_alloc_init(_TtC11MobileNotes21ICSelectionStateModel);
        noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
        noteEditorViewController2 = [noteEditorViewController note];
        ic_permanentObjectID = [noteEditorViewController2 ic_permanentObjectID];
        [(ICSelectionStateModel *)note setSelectedNoteObjectID:ic_permanentObjectID];
      }
    }

    else
    {
      note = 0;
    }

LABEL_11:
    selectionStateController2 = [(ICViewControllerManager *)self selectionStateController];
    v20 = [selectionStateController2 dataRepresentationWithEditorModel:note];
    [(ICWindowStateArchive *)v3 setSelectionState:v20];

    noteEditorViewController4 = [(ICViewControllerManager *)self noteEditorViewController];
    currentScrollState = [noteEditorViewController4 currentScrollState];
    [(ICWindowStateArchive *)v3 setScrollState:currentScrollState];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  activityStreamSelection = [(ICViewControllerManager *)self activityStreamSelection];
  [(ICWindowStateArchive *)v3 setCurrentActivityStreamSelection:activityStreamSelection];

  [(ICWindowStateArchive *)v3 setCurrentActivityStreamViewMode:[(ICViewControllerManager *)self activityStreamViewMode]];
  selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];

  if (selectedNoteObjectID)
  {
    selectedNoteObjectID2 = [(ICViewControllerManager *)self selectedNoteObjectID];
    uRIRepresentation = [selectedNoteObjectID2 URIRepresentation];
    [(ICWindowStateArchive *)v3 setCurrentNoteObjectIDURL:uRIRepresentation];
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  selectedInvitationObjectID = [(ICViewControllerManager *)self selectedInvitationObjectID];

  if (selectedInvitationObjectID)
  {
    selectedNoteObjectID2 = [(ICViewControllerManager *)self selectedInvitationObjectID];
    uRIRepresentation = [selectedNoteObjectID2 URIRepresentation];
    [(ICWindowStateArchive *)v3 setCurrentInvitationObjectIDURL:uRIRepresentation];
    goto LABEL_14;
  }

  selectedNoteObjectID2 = [(ICViewControllerManager *)self noteEditorViewController];
  if (![selectedNoteObjectID2 ic_isViewVisible])
  {
    goto LABEL_15;
  }

  noteEditorViewController5 = [(ICViewControllerManager *)self noteEditorViewController];
  note2 = [noteEditorViewController5 note];

  if (note2)
  {
    selectedNoteObjectID2 = [(ICViewControllerManager *)self noteEditorViewController];
    uRIRepresentation = [selectedNoteObjectID2 note];
    ic_permanentObjectID2 = [uRIRepresentation ic_permanentObjectID];
    uRIRepresentation2 = [ic_permanentObjectID2 URIRepresentation];
    [(ICWindowStateArchive *)v3 setCurrentNoteObjectIDURL:uRIRepresentation2];

    goto LABEL_14;
  }

LABEL_16:
  if ([(ICViewControllerManager *)self isTagSelected])
  {
    note = [(ICViewControllerManager *)self selectedContainerIdentifiers];
    noteEditorViewController4 = [(ICSelectionStateModel *)note allObjects];
    currentScrollState = [noteEditorViewController4 ic_compactMap:&stru_100646588];
    [(ICWindowStateArchive *)v3 setCurrentTagIdentifiers:currentScrollState];
    goto LABEL_20;
  }

  selectedContainerItemID = [(ICViewControllerManager *)self selectedContainerItemID];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    selectedContainerItemID2 = [(ICViewControllerManager *)self selectedContainerItemID];
    note = ICCheckedDynamicCast();

    type = [(ICSelectionStateModel *)note type];
    [(ICWindowStateArchive *)v3 setCurrentVirtualSmartFolderType:type];

    noteEditorViewController4 = [(ICSelectionStateModel *)note accountObjectID];
    currentScrollState = [noteEditorViewController4 URIRepresentation];
    [(ICWindowStateArchive *)v3 setCurrentVirtualSmartFolderAccountObjectIDURL:currentScrollState];
    goto LABEL_20;
  }

  selectedContainerObjectIDs = [(ICViewControllerManager *)self selectedContainerObjectIDs];

  if (selectedContainerObjectIDs)
  {
    note = [(ICViewControllerManager *)self selectedContainerObjectIDs];
    noteEditorViewController4 = [(ICSelectionStateModel *)note ic_map:&stru_1006465A8];
    [(ICWindowStateArchive *)v3 setCurrentContainerObjectIDURLs:noteEditorViewController4];
    goto LABEL_21;
  }

LABEL_22:
  v28 = +[NSDate date];
  [(ICWindowStateArchive *)v3 setCurrentNoteLastViewedDate:v28];

  visibleObjectIDsForContainerObjectID = [(ICViewControllerManager *)self visibleObjectIDsForContainerObjectID];
  v30 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [visibleObjectIDsForContainerObjectID count]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v31 = visibleObjectIDsForContainerObjectID;
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
        firstObject = [v37 firstObject];

        uRIRepresentation3 = [firstObject URIRepresentation];
        uRIRepresentation4 = [v36 URIRepresentation];
        [v30 setObject:uRIRepresentation3 forKeyedSubscript:uRIRepresentation4];
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
    mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
    [mainSplitViewController preferredPrimaryColumnWidth];
    v42 = [NSNumber numberWithDouble:?];
    [(ICWindowStateArchive *)v3 setMainSplitViewPrimaryColumnWidth:v42];

    mainSplitViewController2 = [(ICViewControllerManager *)self mainSplitViewController];
    style = [mainSplitViewController2 style];

    if (style == 2)
    {
      mainSplitViewController3 = [(ICViewControllerManager *)self mainSplitViewController];
      [mainSplitViewController3 preferredSupplementaryColumnWidth];
      v46 = [NSNumber numberWithDouble:?];
      [(ICWindowStateArchive *)v3 setMainSplitViewSupplementaryColumnWidth:v46];
    }
  }

  return v3;
}

- (void)updateCurrentNoteLastViewedMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([metadataCopy ic_isEntityOfClass:objc_opt_class()])
  {
    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    v6 = [modernManagedObjectContext ic_existingObjectWithID:metadataCopy];

    updateLastViewedTimestampWithCurrentTimestamp = [v6 updateLastViewedTimestampWithCurrentTimestamp];
    recordID = [v6 recordID];
    if (recordID)
    {
      v9 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005ABCC;
      block[3] = &unk_100645E30;
      v12 = recordID;
      dispatch_async(v9, block);
    }

    if ([(ICViewControllerManager *)self isSearchActive])
    {
      if (!updateLastViewedTimestampWithCurrentTimestamp)
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

- (void)deleteEmptyNoteIfNeeded:(id)needed
{
  neededCopy = needed;
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  transitionCoordinator = [mainSplitViewController transitionCoordinator];
  if (transitionCoordinator)
  {
  }

  else
  {
    selectedNewNoteShortcutItem = [(ICViewControllerManager *)self selectedNewNoteShortcutItem];

    if (neededCopy)
    {
      if (!selectedNewNoteShortcutItem)
      {
        selectedSearchResult = [(ICViewControllerManager *)self selectedSearchResult];

        if (!selectedSearchResult)
        {
          if ([neededCopy ic_isEntityOfClass:objc_opt_class()])
          {
            modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
            v14[0] = _NSConcreteStackBlock;
            v14[1] = 3221225472;
            v14[2] = sub_10005ADA4;
            v14[3] = &unk_100645BA0;
            v14[4] = self;
            v15 = neededCopy;
            [modernManagedObjectContext performBlock:v14];

            v10 = v15;
          }

          else
          {
            if (![neededCopy ic_isEntityOfClass:objc_opt_class()])
            {
              goto LABEL_3;
            }

            legacyManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_10005AE40;
            v12[3] = &unk_100645BA0;
            v12[4] = self;
            v13 = neededCopy;
            [legacyManagedObjectContext performBlock:v12];

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
    compactNavigationController = [(ICViewControllerManager *)self compactNavigationController];
    topViewController = [compactNavigationController topViewController];
    folderListViewController = [(ICViewControllerManager *)self folderListViewController];

    if (topViewController != folderListViewController)
    {
      compactNavigationController2 = [(ICViewControllerManager *)self compactNavigationController];
      folderListViewController2 = [(ICViewControllerManager *)self folderListViewController];
      v7 = [compactNavigationController2 popToViewController:folderListViewController2 animated:0];
    }
  }
}

- (void)ensureSearchVisible
{
  if ([(ICViewControllerManager *)self isSplitViewExpanded])
  {
    if (![(ICViewControllerManager *)self noteContainerViewMode])
    {
      mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
      [mainSplitViewController ic_showColumn:1 animated:0];
      goto LABEL_11;
    }

    if ([(ICViewControllerManager *)self noteContainerViewMode]!= 1)
    {
      return;
    }

    secondaryNavigationController = [(ICViewControllerManager *)self secondaryNavigationController];
    topViewController = [secondaryNavigationController topViewController];
    currentSearchBarViewController = [(ICViewControllerManager *)self currentSearchBarViewController];

    if (topViewController == currentSearchBarViewController)
    {
      return;
    }

    secondaryNavigationController2 = [(ICViewControllerManager *)self secondaryNavigationController];
  }

  else
  {
    compactNavigationController = [(ICViewControllerManager *)self compactNavigationController];
    topViewController2 = [compactNavigationController topViewController];
    currentSearchBarViewController2 = [(ICViewControllerManager *)self currentSearchBarViewController];

    if (topViewController2 == currentSearchBarViewController2)
    {
      return;
    }

    secondaryNavigationController2 = [(ICViewControllerManager *)self compactNavigationController];
  }

  mainSplitViewController = secondaryNavigationController2;
  currentSearchBarViewController3 = [(ICViewControllerManager *)self currentSearchBarViewController];
  v11 = [mainSplitViewController popToViewController:currentSearchBarViewController3 animated:0];

LABEL_11:
}

- (BOOL)isSelectionAppropriateForObjectID:(id)d
{
  dCopy = d;
  v5 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v5 workerManagedObjectContext];

  v7 = +[NoteContext sharedContext];
  managedObjectContext = [v7 managedObjectContext];

  if (workerManagedObjectContext)
  {
    v9 = managedObjectContext == 0;
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
    tagSelection = [(ICViewControllerManager *)self tagSelection];
    v11 = [tagSelection copyWithManagedObjectContext:workerManagedObjectContext];

    v12 = [[ICFolderListSelectionValidator alloc] initWithModernContext:workerManagedObjectContext htmlContext:managedObjectContext];
    selectedContainerIdentifiers = [(ICViewControllerManager *)self selectedContainerIdentifiers];
    v14 = [(ICFolderListSelectionValidator *)v12 isSelectionAppropriateForObjectID:dCopy selectedContainerIdentifiers:selectedContainerIdentifiers tagSelection:v11];
  }

  return v14;
}

- (BOOL)canPerformAddNote
{
  keyboardHandler = [(ICViewControllerManager *)self keyboardHandler];
  globalKeyCommandsInhibited = [keyboardHandler globalKeyCommandsInhibited];

  if (globalKeyCommandsInhibited)
  {
    return 0;
  }

  v5 = +[ICQuickNoteSessionManager sharedManager];
  isSecureScreenShowing = [v5 isSecureScreenShowing];

  if (isSecureScreenShowing)
  {
    folderListViewController = +[ICQuickNoteSessionManager sharedManager];
    noteEditorViewController = [folderListViewController noteEditorViewController];
    isInHTMLEditorMode = noteEditorViewController != 0;
    goto LABEL_4;
  }

  window = [(ICViewControllerManager *)self window];
  ic_topmostPresentedViewController = [window ic_topmostPresentedViewController];

  if (ic_topmostPresentedViewController)
  {
    return 0;
  }

  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  if ([folderListViewController ic_isViewVisible])
  {
    isInHTMLEditorMode = 1;
    goto LABEL_5;
  }

  noteEditorViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  if (([noteEditorViewController ic_isViewVisible] & 1) != 0 || -[ICViewControllerManager isNoteEditorVisible](self, "isNoteEditorVisible"))
  {
    isInHTMLEditorMode = 1;
  }

  else
  {
    isInHTMLEditorMode = [(ICViewControllerManager *)self isInHTMLEditorMode];
  }

LABEL_4:

LABEL_5:
  return isInHTMLEditorMode;
}

- (BOOL)canPerformAddFolder
{
  keyboardHandler = [(ICViewControllerManager *)self keyboardHandler];
  globalKeyCommandsInhibited = [keyboardHandler globalKeyCommandsInhibited];

  if (globalKeyCommandsInhibited)
  {
    return 0;
  }

  window = [(ICViewControllerManager *)self window];
  ic_topmostPresentedViewController = [window ic_topmostPresentedViewController];

  if (ic_topmostPresentedViewController && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    ic_isViewVisible = 0;
  }

  else
  {
    currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
    if ([currentNoteBrowseViewController ic_isViewVisible])
    {
      ic_isViewVisible = 1;
    }

    else
    {
      folderListViewController = [(ICViewControllerManager *)self folderListViewController];
      ic_isViewVisible = [folderListViewController ic_isViewVisible];
    }
  }

  return ic_isViewVisible;
}

- (BOOL)canPerformToggleSearch
{
  keyboardHandler = [(ICViewControllerManager *)self keyboardHandler];
  if (([keyboardHandler globalKeyCommandsInhibited] & 1) == 0)
  {
    currentNoteBrowseViewController = +[ICQuickNoteSessionManager sharedManager];
    if (([currentNoteBrowseViewController isSecureScreenShowing] & 1) != 0 || -[ICViewControllerManager behavior](self, "behavior") == 2)
    {
      v4 = 0;
    }

    else
    {
      isAuxiliary = [(ICViewControllerManager *)self isAuxiliary];

      if (isAuxiliary)
      {
        return 0;
      }

      keyboardHandler = [(ICViewControllerManager *)self searchController];
      if ([keyboardHandler isFirstResponder] & 1) != 0 || (objc_msgSend(keyboardHandler, "searchBar"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isFirstResponder"), v8, (v9))
      {
        v4 = 1;
        goto LABEL_7;
      }

      window = [(ICViewControllerManager *)self window];
      ic_topmostPresentedViewController = [window ic_topmostPresentedViewController];

      if (ic_topmostPresentedViewController)
      {
        goto LABEL_2;
      }

      currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
      dataSource = [currentNoteBrowseViewController dataSource];
      v4 = dataSource != 0;
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
  keyboardHandler = [(ICViewControllerManager *)self keyboardHandler];
  if ([keyboardHandler globalKeyCommandsInhibited])
  {
    goto LABEL_4;
  }

  window = [(ICViewControllerManager *)self window];
  ic_topmostPresentedViewController = [window ic_topmostPresentedViewController];
  if (ic_topmostPresentedViewController)
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  behavior = [(ICViewControllerManager *)self behavior];

  if (behavior == 2)
  {
    return 0;
  }

  keyboardHandler = [(ICViewControllerManager *)self activeEditorController];
  v6 = [keyboardHandler canPerformAction:"performFindInNote:" withSender:self];
LABEL_5:

  return v6;
}

- (BOOL)canPerformReplaceInNote
{
  canPerformFindInNote = [(ICViewControllerManager *)self canPerformFindInNote];
  if (canPerformFindInNote)
  {
    if ([(ICViewControllerManager *)self isInHTMLEditorMode])
    {
      LOBYTE(canPerformFindInNote) = 1;
    }

    else
    {
      noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
      note = [noteEditorViewController note];
      isEditable = [note isEditable];

      LOBYTE(canPerformFindInNote) = isEditable;
    }
  }

  return canPerformFindInNote;
}

- (BOOL)canPerformCmd1
{
  if (![(ICViewControllerManager *)self canPerformCmd3])
  {
    return 0;
  }

  selectedContainerItemID = [(ICViewControllerManager *)self selectedContainerItemID];
  v4 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:selectedContainerItemID]== -1;

  return v4;
}

- (BOOL)canPerformCmd3
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  if (([noteEditorViewController isEditingOnSystemPaper] & 1) != 0 || -[ICViewControllerManager isAuxiliary](self, "isAuxiliary") || -[ICViewControllerManager isInHTMLEditorMode](self, "isInHTMLEditorMode"))
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

  currentAttachmentPresenter = [(ICViewControllerManager *)self currentAttachmentPresenter];

  if (currentAttachmentPresenter)
  {
    return 0;
  }

  if ([(ICViewControllerManager *)self noteContainerViewMode]== 1)
  {
    noteEditorViewController = [(ICViewControllerManager *)self secondaryNavigationController];
    topViewController = [noteEditorViewController topViewController];
    v9 = objc_opt_class();
    if ([v9 isEqual:objc_opt_class()])
    {
      v5 = 1;
    }

    else
    {
      compactNavigationController = [(ICViewControllerManager *)self compactNavigationController];
      topViewController2 = [compactNavigationController topViewController];
      v12 = objc_opt_class();
      v5 = [v12 isEqual:objc_opt_class()];
    }
  }

  else
  {
    noteEditorViewController = [(ICViewControllerManager *)self mainSplitViewController];
    v5 = [noteEditorViewController displayMode] != 1;
  }

LABEL_7:

  return v5;
}

- (BOOL)canPerformToggleEditorCallouts
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [noteEditorViewController note];
  isSharedViaICloud = [note isSharedViaICloud];

  return isSharedViaICloud;
}

- (BOOL)canPerformToggleNoteActivity
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [noteEditorViewController note];
  isSharedViaICloud = [note isSharedViaICloud];

  return isSharedViaICloud;
}

- (BOOL)canPerformToggleFolderActivity
{
  objc_opt_class();
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  noteContainer = [currentNoteBrowseViewController noteContainer];
  v5 = ICDynamicCast();

  LOBYTE(currentNoteBrowseViewController) = [v5 isSharedViaICloud];
  return currentNoteBrowseViewController;
}

- (BOOL)canPerformReturnKey
{
  keyboardHandler = [(ICViewControllerManager *)self keyboardHandler];
  if ([keyboardHandler globalKeyCommandsInhibited])
  {
    isEditable = 0;
LABEL_14:

    return isEditable;
  }

  window = [(ICViewControllerManager *)self window];
  ic_topmostPresentedViewController = [window ic_topmostPresentedViewController];
  if (ic_topmostPresentedViewController)
  {
    activeEditorController = ic_topmostPresentedViewController;
LABEL_12:
    isEditable = 0;
LABEL_13:

    goto LABEL_14;
  }

  activeEditorController = [(ICViewControllerManager *)self activeEditorController];
  if (![activeEditorController ic_isViewVisible])
  {
    goto LABEL_12;
  }

  activeEditorController2 = [(ICViewControllerManager *)self activeEditorController];
  if ([activeEditorController2 isEditing])
  {
LABEL_11:

    goto LABEL_12;
  }

  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  if (![currentNoteBrowseViewController ic_isFirstResponder])
  {

    goto LABEL_11;
  }

  currentNoteBrowseViewController2 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  isEditing = [currentNoteBrowseViewController2 isEditing];

  if ((isEditing & 1) == 0)
  {
    if ([(ICViewControllerManager *)self isInHTMLEditorMode])
    {
      return 1;
    }

    objc_opt_class();
    keyboardHandler = [(ICViewControllerManager *)self activeEditorController];
    window = ICDynamicCast();
    activeEditorController = [window note];
    isEditable = [activeEditorController isEditable];
    goto LABEL_13;
  }

  return 0;
}

- (BOOL)canPerformAddLink
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  if ([noteEditorViewController isEditing])
  {
    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    v5 = [noteEditorViewController2 isEditingOnSecureScreen] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)canPerformRecordAudio
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  canRecordAudio = [noteEditorViewController canRecordAudio];

  return canRecordAudio;
}

- (BOOL)canPerformRenameAttachment
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  canRenameAttachmentForSelection = [noteEditorViewController canRenameAttachmentForSelection];

  return canRenameAttachmentForSelection;
}

- (BOOL)canPerformGotoPreviousNote
{
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    return 0;
  }

  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  isEditingOnSecureScreen = [noteEditorViewController isEditingOnSecureScreen];

  if (isEditingOnSecureScreen)
  {
    return 0;
  }

  selectionStateController = [(ICViewControllerManager *)self selectionStateController];
  canNavigateBackwards = [selectionStateController canNavigateBackwards];

  return canNavigateBackwards;
}

- (BOOL)canPerformGotoNextNote
{
  if (![(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    return 0;
  }

  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  isEditingOnSecureScreen = [noteEditorViewController isEditingOnSecureScreen];

  if (isEditingOnSecureScreen)
  {
    return 0;
  }

  selectionStateController = [(ICViewControllerManager *)self selectionStateController];
  canNavigateForwards = [selectionStateController canNavigateForwards];

  return canNavigateForwards;
}

- (BOOL)canPerformAttachFile
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  isEditing = [noteEditorViewController isEditing];

  return isEditing;
}

- (BOOL)canPerformCmdReturnKey
{
  keyboardHandler = [(ICViewControllerManager *)self keyboardHandler];
  if ([keyboardHandler globalKeyCommandsInhibited])
  {
    v4 = 0;
  }

  else
  {
    firstResponder = +[ICQuickNoteSessionManager sharedManager];
    if ([firstResponder isSecureScreenShowing])
    {
      v4 = 0;
    }

    else
    {
      window = [(ICViewControllerManager *)self window];
      ic_topmostPresentedViewController = [window ic_topmostPresentedViewController];

      if (ic_topmostPresentedViewController)
      {
        return 0;
      }

      keyboardHandler = [(ICViewControllerManager *)self activeEditorController];
      window2 = [(ICViewControllerManager *)self window];
      firstResponder = [window2 firstResponder];

      if ([keyboardHandler isFirstResponder])
      {
        v4 = 1;
      }

      else
      {
        isEditing = [keyboardHandler isEditing];
        if (firstResponder)
        {
          v4 = isEditing;
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
  systemPaperViewController = [(ICViewControllerManager *)self systemPaperViewController];

  if (systemPaperViewController)
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
  viewControllers = [v5 viewControllers];
  v4 = [viewControllers count] > 1;

  return v4;
}

- (BOOL)canPerformDeleteKey
{
  if (![(ICViewControllerManager *)self isSearchActive])
  {
    currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
    hasDeletableNoteCell = [currentNoteBrowseViewController hasDeletableNoteCell];

    if (!hasDeletableNoteCell)
    {
      return 0;
    }

LABEL_5:
    window = [(ICViewControllerManager *)self window];
    rootViewController = [window rootViewController];
    presentedViewController = [rootViewController presentedViewController];
    v6 = presentedViewController == 0;

    return v6;
  }

  searchController = [(ICViewControllerManager *)self searchController];
  searchBar = [searchController searchBar];
  isFirstResponder = [searchBar isFirstResponder];

  if (isFirstResponder)
  {
    goto LABEL_5;
  }

  return 0;
}

- (BOOL)canPerformShowInNote
{
  currentAttachmentPresenter = [(ICViewControllerManager *)self currentAttachmentPresenter];
  v3 = currentAttachmentPresenter != 0;

  return v3;
}

- (void)performShowInNote:(id)note
{
  currentAttachmentPresenter = [(ICViewControllerManager *)self currentAttachmentPresenter];
  displayedAttachment = [currentAttachmentPresenter displayedAttachment];

  objectID = [displayedAttachment objectID];
  [(ICViewControllerManager *)self selectAttachmentWithObjectID:objectID animated:1];

  eventReporter = [(ICViewControllerManager *)self eventReporter];
  [eventReporter submitAttachmentBrowserActionEventForType:3];
}

- (void)performAddNote:(id)note
{
  noteCopy = note;
  if ([(ICViewControllerManager *)self behavior]== 2)
  {
    v4 = 18;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(ICViewControllerManager *)self showNewNoteWithApproach:v4 sender:noteCopy animated:1];
}

- (void)performAddFolder:(id)folder
{
  objc_opt_class();
  window = [(ICViewControllerManager *)self window];
  ic_topmostPresentedViewController = [window ic_topmostPresentedViewController];
  v16 = ICDynamicCast();

  if (v16)
  {
    moveViewController = [v16 moveViewController];
    [moveViewController promptToAddFolderIn:0];
    goto LABEL_14;
  }

  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  if ([folderListViewController ic_isViewVisible])
  {
    [(ICViewControllerManager *)self folderListViewController];
  }

  else
  {
    [(ICViewControllerManager *)self currentNoteBrowseViewController];
  }
  moveViewController = ;

  if (!moveViewController)
  {
    [ICAssert handleFailedAssertWithCondition:"((presentingViewController) != nil)" functionName:"[ICViewControllerManager performAddFolder:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "presentingViewController"];
  }

  objc_opt_class();
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  noteContainer = [currentNoteBrowseViewController noteContainer];
  v10 = ICDynamicCast();

  folderListViewController2 = [(ICViewControllerManager *)self folderListViewController];
  if ([folderListViewController2 ic_isViewVisible])
  {

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  canAddSubfolder = [v10 canAddSubfolder];

  if (!canAddSubfolder)
  {
    goto LABEL_12;
  }

  v13 = v10;
LABEL_13:
  v14 = [[ICFolderCreationController alloc] initWithViewController:moveViewController noteContainer:v13 creationApproach:1];
  [(ICViewControllerManager *)self setFolderCreationController:v14];

  folderCreationController = [(ICViewControllerManager *)self folderCreationController];
  [folderCreationController promptToAddFolderAllowingSmartFolder:1 showFilters:0 withCompletionHandler:0];

LABEL_14:
}

- (void)performToggleSearch:(id)search
{
  [(ICViewControllerManager *)self ensureSearchVisible];
  mainSplitViewController = [(ICViewControllerManager *)self mainSplitViewController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005C3F0;
  v5[3] = &unk_100645E30;
  v5[4] = self;
  [mainSplitViewController ic_performBlockAfterActiveTransition:v5];
}

- (BOOL)canPerformPrintNote
{
  legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];
  note = [legacyNoteEditorViewController note];
  if (!note)
  {
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    note2 = [noteEditorViewController note];
    if (!note2 || [(ICViewControllerManager *)self behavior]== 2)
    {
      LOBYTE(v7) = 0;
      goto LABEL_8;
    }

LABEL_7:
    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    note3 = [noteEditorViewController2 note];
    v7 = [note3 isPasswordProtectedAndLocked] ^ 1;

    if (note)
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

- (void)performPrintNote:(id)note
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [noteEditorViewController note];

  v5 = [ICPrintNoteActivity alloc];
  noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
  v7 = [(ICPrintNoteActivity *)v5 initWithNote:note presentingViewController:noteEditorViewController2];

  [(ICPrintNoteActivity *)v7 performActivityWithCompletion:0];
}

- (BOOL)canPerformScanDocument
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [noteEditorViewController note];
  if ([note isPasswordProtectedAndLocked])
  {
    v5 = 0;
  }

  else
  {
    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    note2 = [noteEditorViewController2 note];
    if ([note2 isEditable])
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

- (void)performScanDocument:(id)document
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController showDocumentCamera];
}

- (void)showAccountsSettings:(id)settings
{
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.InternetAccounts?internetAccountsApplicationTarget=com.apple.mobilenotes"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)performCmd1:(id)cmd1
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005C7F4;
  v3[3] = &unk_100645E30;
  v3[4] = self;
  [(ICViewControllerManager *)self dismissAttachmentBrowserIfNecessaryAndPerform:v3];
}

- (void)performCmd2:(id)cmd2
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005C8B0;
  v3[3] = &unk_100645E30;
  v3[4] = self;
  [(ICViewControllerManager *)self dismissAttachmentBrowserIfNecessaryAndPerform:v3];
}

- (void)dismissAttachmentBrowserIfNecessaryAndPerform:(id)perform
{
  performCopy = perform;
  if ([(ICViewControllerManager *)self isAttachmentBrowserVisible])
  {
    currentAttachmentBrowserViewController = [(ICViewControllerManager *)self currentAttachmentBrowserViewController];
    [currentAttachmentBrowserViewController dismissViewControllerAnimated:1 completion:performCopy];
  }

  else
  {
    performCopy[2]();
  }
}

- (void)performCmd3:(id)cmd3
{
  cmd3Copy = cmd3;
  if ([(ICViewControllerManager *)self isAttachmentBrowserVisible])
  {
    [(ICViewControllerManager *)self currentAttachmentBrowserViewController];
  }

  else
  {
    [(ICViewControllerManager *)self currentNoteBrowseViewController];
  }
  v5 = ;
  [v5 performCmd3:cmd3Copy];
}

- (void)performToggleEditorCallouts:(id)callouts
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  attributionSidebarController = [noteEditorViewController attributionSidebarController];

  if ([attributionSidebarController attributionSidebarVisibility])
  {
    [attributionSidebarController hideSidebarAnimated:1];
  }

  else
  {
    [attributionSidebarController showSidebarAnimated:1];
  }
}

- (void)performToggleNoteActivity:(id)activity
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [noteEditorViewController note];

  if ([(ICViewControllerManager *)self activityStreamViewMode])
  {
    [(ICViewControllerManager *)self hideActivityStreamWithCompletion:0];
  }

  else
  {
    objectID = [note objectID];
    [(ICViewControllerManager *)self showActivityStreamForObjectWithObjectID:objectID];
  }
}

- (void)performToggleFolderActivity:(id)activity
{
  objc_opt_class();
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  noteContainer = [currentNoteBrowseViewController noteContainer];
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
      objectID = [v8 objectID];
      [(ICViewControllerManager *)self showActivityStreamForObjectWithObjectID:objectID];
    }

    v6 = v8;
  }
}

- (id)cmd3Title
{
  isAttachmentBrowserVisible = [(ICViewControllerManager *)self isAttachmentBrowserVisible];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (isAttachmentBrowserVisible)
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
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  attributionSidebarController = [noteEditorViewController attributionSidebarController];
  attributionSidebarVisibility = [attributionSidebarController attributionSidebarVisibility];

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (attributionSidebarVisibility)
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
  activityStreamNavigationController = [(ICViewControllerManager *)self activityStreamNavigationController];
  object = [activityStreamNavigationController object];
  v5 = ICDynamicCast();

  activityStreamNavigationController2 = [(ICViewControllerManager *)self activityStreamNavigationController];
  if (([activityStreamNavigationController2 ic_isViewVisible] & 1) == 0)
  {
    presentedActivityStreamNavigationController = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
    if (([presentedActivityStreamNavigationController ic_isViewVisible] & 1) == 0)
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
  presentedActivityStreamNavigationController = [(ICViewControllerManager *)self presentedActivityStreamNavigationController];
  object = [presentedActivityStreamNavigationController object];
  v5 = ICDynamicCast();

  activityStreamViewMode = [(ICViewControllerManager *)self activityStreamViewMode];
  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (v5)
  {
    v9 = activityStreamViewMode == 0;
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
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [noteEditorViewController note];
  isPasswordProtected = [note isPasswordProtected];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (isPasswordProtected)
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
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [noteEditorViewController note];
  if ([note isPasswordProtected])
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

- (void)performReturnKey:(id)key
{
  [(ICViewControllerManager *)self dismissOverlayContent];
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController becomeFirstResponder];

  noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController2 setEditing:1 animated:1];
}

- (void)performCmdReturnKey:(id)key
{
  window = [(ICViewControllerManager *)self window];
  firstResponder = [window firstResponder];

  if ([(ICViewControllerManager *)self isSearchActive])
  {
    [(ICViewControllerManager *)self searchController];
  }

  else
  {
    [(ICViewControllerManager *)self currentNoteBrowseViewController];
  }
  v6 = ;
  activeEditorController = [(ICViewControllerManager *)self activeEditorController];
  isEditing = [activeEditorController isEditing];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005D280;
  v19[3] = &unk_100646080;
  v19[4] = self;
  v20 = isEditing;
  v9 = objc_retainBlock(v19);
  if (firstResponder != v6)
  {
    v10 = +[ICQuickNoteSessionManager sharedManager];
    isSecureScreenShowing = [v10 isSecureScreenShowing];

    if ((isSecureScreenShowing & 1) == 0)
    {
      legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];
      isEditing2 = [legacyNoteEditorViewController isEditing];

      if (isEditing2)
      {
        legacyNoteEditorViewController2 = [(ICViewControllerManager *)self legacyNoteEditorViewController];
        contentLayer = [legacyNoteEditorViewController2 contentLayer];
        noteHTMLEditorView = [contentLayer noteHTMLEditorView];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10005D368;
        v17[3] = &unk_1006465D0;
        v18 = v9;
        [noteHTMLEditorView stopEditingWithCompletion:v17];
      }

      else
      {
        [firstResponder resignFirstResponder];
        (v9[2])(v9);
      }
    }
  }
}

- (void)performAddLinkKey:(id)key
{
  keyCopy = key;
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  isEditing = [noteEditorViewController isEditing];

  noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
  ic_isViewVisible = [noteEditorViewController2 ic_isViewVisible];

  if (ic_isViewVisible)
  {
    if (isEditing)
    {
      if ([(ICViewControllerManager *)self canPerformAddLink])
      {
        noteEditorViewController3 = [(ICViewControllerManager *)self noteEditorViewController];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          noteEditorViewController4 = [(ICViewControllerManager *)self noteEditorViewController];
          auxiliaryResponder = [noteEditorViewController4 auxiliaryResponder];

          if (auxiliaryResponder)
          {
            objc_opt_class();
            noteEditorViewController5 = [(ICViewControllerManager *)self noteEditorViewController];
            auxiliaryResponder2 = [noteEditorViewController5 auxiliaryResponder];
            activeEditorController = ICDynamicCast();
          }

          else
          {
            activeEditorController = [(ICViewControllerManager *)self activeEditorController];
          }

          [activeEditorController performSelector:"openLinkEditor:" withObject:keyCopy];
        }
      }
    }
  }
}

- (void)performRecordAudio:(id)audio
{
  audioCopy = audio;
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController showInsertAudio:audioCopy];
}

- (void)performRenameAttachment:(id)attachment
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController renameAttachment];
}

- (void)performAttachFile:(id)file
{
  fileCopy = file;
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController attachFile:fileCopy];
}

- (void)performGotoPreviousNote:(id)note
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    [selectionStateController navigateBackwards];
  }
}

- (void)performGotoNextNote:(id)note
{
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    [selectionStateController navigateForwards];
  }
}

- (void)performFindInNote:(id)note
{
  noteCopy = note;
  activeEditorController = [(ICViewControllerManager *)self activeEditorController];
  if ([(ICViewControllerManager *)self canPerformFindInNote]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [activeEditorController performSelector:"performFindInNote:" withObject:noteCopy];
  }
}

- (void)performReplaceInNote:(id)note
{
  noteCopy = note;
  activeEditorController = [(ICViewControllerManager *)self activeEditorController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    activeEditorController2 = [(ICViewControllerManager *)self activeEditorController];
    [activeEditorController2 performSelector:"performReplaceInNote:" withObject:noteCopy];
  }
}

- (void)performEnclosingFolderKey:(id)key
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
  viewControllers = [v7 viewControllers];
  v5 = [viewControllers count];

  if (v5 >= 2)
  {
    v6 = [v7 popViewControllerAnimated:1];
  }
}

- (void)performDeleteKey:(id)key
{
  keyCopy = key;
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  [currentNoteBrowseViewController performDeleteKey:keyCopy];
}

- (void)performDeleteQuickNoteKey:(id)key
{
  systemPaperViewController = [(ICViewControllerManager *)self systemPaperViewController];
  [systemPaperViewController deleteCurrentNote];
}

- (BOOL)canPerformSystemPaperNavigateLeft
{
  systemPaperViewController = [(ICViewControllerManager *)self systemPaperViewController];
  v3 = [systemPaperViewController canSwipeInDirection:1];

  return v3;
}

- (void)systemPaperNavigateLeft:(id)left
{
  systemPaperViewController = [(ICViewControllerManager *)self systemPaperViewController];
  [systemPaperViewController synthesizeSwipeForDirection:1];
}

- (BOOL)canPerformSystemPaperNavigateRight
{
  systemPaperViewController = [(ICViewControllerManager *)self systemPaperViewController];
  v3 = [systemPaperViewController canSwipeInDirection:0];

  return v3;
}

- (void)systemPaperNavigateRight:(id)right
{
  systemPaperViewController = [(ICViewControllerManager *)self systemPaperViewController];
  [systemPaperViewController synthesizeSwipeForDirection:0];
}

- (BOOL)canPerformSystemPaperShowInNotes
{
  systemPaperViewController = [(ICViewControllerManager *)self systemPaperViewController];
  currentNote = [systemPaperViewController currentNote];
  v4 = currentNote != 0;

  return v4;
}

- (void)systemPaperShowInNotes:(id)notes
{
  systemPaperViewController = [(ICViewControllerManager *)self systemPaperViewController];
  [systemPaperViewController backToNotesWithKeyboard];
}

- (BOOL)canPerformExpandSection
{
  IsCollapsibleSectionsEnabled = ICInternalSettingsIsCollapsibleSectionsEnabled();
  if (IsCollapsibleSectionsEnabled)
  {
    textContentStorage = [(ICViewControllerManager *)self textContentStorage];
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    textView = [noteEditorViewController textView];
    selectedRange = [textView selectedRange];
    v9 = [textContentStorage canExpandSectionsInRange:{selectedRange, v8}];

    LOBYTE(IsCollapsibleSectionsEnabled) = v9;
  }

  return IsCollapsibleSectionsEnabled;
}

- (BOOL)canPerformExpandAllSections
{
  IsCollapsibleSectionsEnabled = ICInternalSettingsIsCollapsibleSectionsEnabled();
  if (IsCollapsibleSectionsEnabled)
  {
    textContentStorage = [(ICViewControllerManager *)self textContentStorage];
    textContentStorage2 = [(ICViewControllerManager *)self textContentStorage];
    textStorage = [textContentStorage2 textStorage];
    ic_range = [textStorage ic_range];
    v9 = [textContentStorage canExpandSectionsInRange:{ic_range, v8}];

    LOBYTE(IsCollapsibleSectionsEnabled) = v9;
  }

  return IsCollapsibleSectionsEnabled;
}

- (void)performExpandAllSections:(id)sections
{
  if (ICInternalSettingsIsCollapsibleSectionsEnabled())
  {
    textContentStorage = [(ICViewControllerManager *)self textContentStorage];
    [textContentStorage expandAllSections];
  }
}

- (BOOL)canPerformCollapseSection
{
  IsCollapsibleSectionsEnabled = ICInternalSettingsIsCollapsibleSectionsEnabled();
  if (IsCollapsibleSectionsEnabled)
  {
    textContentStorage = [(ICViewControllerManager *)self textContentStorage];
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    textView = [noteEditorViewController textView];
    selectedRange = [textView selectedRange];
    v9 = [textContentStorage canCollapseSectionsInRange:{selectedRange, v8}];

    LOBYTE(IsCollapsibleSectionsEnabled) = v9;
  }

  return IsCollapsibleSectionsEnabled;
}

- (BOOL)canPerformCollapseAllSections
{
  IsCollapsibleSectionsEnabled = ICInternalSettingsIsCollapsibleSectionsEnabled();
  if (IsCollapsibleSectionsEnabled)
  {
    textContentStorage = [(ICViewControllerManager *)self textContentStorage];
    textContentStorage2 = [(ICViewControllerManager *)self textContentStorage];
    textStorage = [textContentStorage2 textStorage];
    ic_range = [textStorage ic_range];
    v9 = [textContentStorage canCollapseSectionsInRange:{ic_range, v8}];

    LOBYTE(IsCollapsibleSectionsEnabled) = v9;
  }

  return IsCollapsibleSectionsEnabled;
}

- (void)performCollapseAllSections:(id)sections
{
  if (ICInternalSettingsIsCollapsibleSectionsEnabled())
  {
    textContentStorage = [(ICViewControllerManager *)self textContentStorage];
    [textContentStorage collapseAllSections];
  }
}

- (void)setExpandedForSectionsInSelectedRange:(BOOL)range
{
  rangeCopy = range;
  if (ICInternalSettingsIsCollapsibleSectionsEnabled())
  {
    objc_opt_class();
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    textView = [noteEditorViewController textView];
    v13 = ICDynamicCast();

    textContentStorage = [(ICViewControllerManager *)self textContentStorage];
    selectedRange = [v13 selectedRange];
    [textContentStorage setExpanded:rangeCopy forSectionsInRange:{selectedRange, v9}];

    textLayoutManager = [v13 textLayoutManager];
    textLayoutManager2 = [v13 textLayoutManager];
    documentRange = [textLayoutManager2 documentRange];
    [textLayoutManager invalidateLayoutForRange:documentRange];
  }
}

- (BOOL)canPerformToggleBoldface
{
  activeEditorController = [(ICViewControllerManager *)self activeEditorController];
  isEditing = [activeEditorController isEditing];

  return isEditing;
}

- (BOOL)canPerformToggleItalics
{
  activeEditorController = [(ICViewControllerManager *)self activeEditorController];
  isEditing = [activeEditorController isEditing];

  return isEditing;
}

- (BOOL)canPerformToggleUnderline
{
  activeEditorController = [(ICViewControllerManager *)self activeEditorController];
  isEditing = [activeEditorController isEditing];

  return isEditing;
}

- (BOOL)canPerformToggleStrikethrough
{
  activeEditorController = [(ICViewControllerManager *)self activeEditorController];
  isEditing = [activeEditorController isEditing];

  return isEditing;
}

- (BOOL)canPerformToggleEmphasis
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [noteEditorViewController note];
  if (note)
  {
    activeEditorController = [(ICViewControllerManager *)self activeEditorController];
    isEditing = [activeEditorController isEditing];
  }

  else
  {
    isEditing = 0;
  }

  return isEditing;
}

- (BOOL)canPerformShareNoteAction
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  view = [noteEditorViewController view];
  window = [view window];
  if (window)
  {
    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    note = [noteEditorViewController2 note];
    if (note)
    {
      noteEditorViewController3 = [(ICViewControllerManager *)self noteEditorViewController];
      note2 = [noteEditorViewController3 note];
      v10 = [note2 isPasswordProtectedAndLocked] ^ 1;
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

- (void)performShareAction:(id)action
{
  actionCopy = action;
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController shareButtonPressedWithSender:actionCopy];
}

- (BOOL)canPerformShareFolderAction
{
  objc_opt_class();
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  noteContainer = [currentNoteBrowseViewController noteContainer];
  v5 = ICDynamicCast();

  LOBYTE(currentNoteBrowseViewController) = [v5 canBeSharedViaICloud];
  return currentNoteBrowseViewController;
}

- (void)performShareFolderAction:(id)action
{
  objc_opt_class();
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  noteContainer = [currentNoteBrowseViewController noteContainer];
  v9 = ICDynamicCast();

  v6 = [ICCollaborationFolderActivity alloc];
  currentNoteBrowseViewController2 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v8 = [(ICCollaborationFolderActivity *)v6 initWithFolder:v9 presentingViewController:currentNoteBrowseViewController2 presentingBarButtonItem:0 presentingSourceView:0 presentingSourceRect:0 eventReporter:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];

  [(ICCollaborationFolderActivity *)v8 setForceShareSheet:1];
  [(ICCollaborationFolderActivity *)v8 performActivityWithCompletion:0];
}

- (void)performManageSharedFolderAction:(id)action
{
  objc_opt_class();
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  noteContainer = [currentNoteBrowseViewController noteContainer];
  v9 = ICDynamicCast();

  v6 = [ICCollaborationFolderActivity alloc];
  currentNoteBrowseViewController2 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v8 = [(ICCollaborationFolderActivity *)v6 initWithFolder:v9 presentingViewController:currentNoteBrowseViewController2 presentingBarButtonItem:0 presentingSourceView:0 presentingSourceRect:0 eventReporter:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];

  [(ICCollaborationFolderActivity *)v8 setForceShareSheet:1];
  [(ICCollaborationFolderActivity *)v8 performActivityWithCompletion:0];
}

- (void)performSharedFolderAction:(id)action
{
  objc_opt_class();
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  noteContainer = [currentNoteBrowseViewController noteContainer];
  v9 = ICDynamicCast();

  v6 = [ICCollaborationFolderActivity alloc];
  currentNoteBrowseViewController2 = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  v8 = [(ICCollaborationFolderActivity *)v6 initWithFolder:v9 presentingViewController:currentNoteBrowseViewController2 presentingBarButtonItem:0 presentingSourceView:0 presentingSourceRect:0 eventReporter:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];

  [(ICCollaborationFolderActivity *)v8 setForceShareSheet:0];
  [(ICCollaborationFolderActivity *)v8 performActivityWithCompletion:0];
}

- (BOOL)canPerformExportMarkdownAction
{
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  selectedModernNotes = [currentNoteBrowseViewController selectedModernNotes];

  if (+[_TtC11MobileNotes14ICFeatureFlags markdownExportEnabled])
  {
    v4 = [selectedModernNotes ic_containsObjectPassingTest:&stru_100646610];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canPerformImportMarkdownAction
{
  selectedContainerObjectIDs = [(ICViewControllerManager *)self selectedContainerObjectIDs];
  lastObject = [selectedContainerObjectIDs lastObject];

  if (+[_TtC11MobileNotes14ICFeatureFlags markdownExportEnabled])
  {
    ic_isModernContainerType = [lastObject ic_isModernContainerType];
  }

  else
  {
    ic_isModernContainerType = 0;
  }

  return ic_isModernContainerType;
}

- (void)performImportMarkdownAction:(id)action
{
  selectedModernAccount = [(ICViewControllerManager *)self selectedModernAccount];
  if (selectedModernAccount)
  {
    account = selectedModernAccount;
  }

  else
  {
    selectedModernFolder = [(ICViewControllerManager *)self selectedModernFolder];
    account = [selectedModernFolder account];

    if (!account)
    {
      return;
    }
  }

  v7 = [ICImportNotesController alloc];
  rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
  v9 = [(ICImportNotesController *)v7 initForPresentingInViewController:rootNoteBrowseViewController];
  [(ICViewControllerManager *)self setImportNotesController:v9];

  importNotesController = [(ICViewControllerManager *)self importNotesController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005E6B0;
  v11[3] = &unk_100646638;
  v11[4] = self;
  [importNotesController importIntoAccount:account completion:v11];
}

- (void)performExportMarkdownAction:(id)action
{
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  selectedModernNotes = [currentNoteBrowseViewController selectedModernNotes];

  v5 = [selectedModernNotes ic_compactMap:&stru_100646678];
  v6 = [ICExportArchiveActivity alloc];
  activeEditorController = [(ICViewControllerManager *)self activeEditorController];
  activeEditorController2 = [(ICViewControllerManager *)self activeEditorController];
  view = [activeEditorController2 view];
  v10 = [(ICExportArchiveActivity *)v6 initWithObjects:v5 presentingViewController:activeEditorController presentingBarButtonItem:0 presentingSourceView:view];

  [(ICExportArchiveActivity *)v10 setMarkdown:1];
  [(ICExportArchiveActivity *)v10 performActivityWithCompletion:&stru_1006466B8];
}

- (BOOL)canPerformPagesHandoffAction
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [noteEditorViewController note];

  if (note)
  {
    noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
    if ([noteEditorViewController2 ic_isViewVisible])
    {
      v6 = [ICPagesHandoffManager canLaunchPagesForNote:note];
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

- (void)performPagesHandoff:(id)handoff
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  note = [noteEditorViewController note];

  v5 = [ICPagesHandoffActivity alloc];
  activeEditorController = [(ICViewControllerManager *)self activeEditorController];
  v7 = [(ICPagesHandoffActivity *)v5 initWithNote:note viewController:activeEditorController];

  [(ICPagesHandoffActivity *)v7 performActivity];
}

- (BOOL)canPerformLockAllNotesAction
{
  v2 = +[ICAuthenticationState sharedState];
  isAuthenticated = [v2 isAuthenticated];

  return isAuthenticated;
}

- (BOOL)canPerformConvertToSmartFolderAction
{
  objc_opt_class();
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  noteContainer = [currentNoteBrowseViewController noteContainer];
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

- (void)performConvertToSmartFolderAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  noteContainer = [currentNoteBrowseViewController noteContainer];
  v10 = ICDynamicCast();

  v7 = [ICConvertToSmartFolderActivity alloc];
  activeEditorController = [(ICViewControllerManager *)self activeEditorController];
  v9 = [(ICConvertToSmartFolderActivity *)v7 initWithFolder:v10 presentingViewController:activeEditorController presentingBarButtonItem:0 sender:actionCopy];

  [(ICConvertToSmartFolderActivity *)v9 performActivityWithCompletion:0];
}

- (BOOL)canPerformCreateSmartFolderFromSelectedTags
{
  tagSelection = [(ICViewControllerManager *)self tagSelection];
  v3 = tagSelection != 0;

  return v3;
}

- (void)performCreateSmartFolderFromSelectedTags:(id)tags
{
  v4 = [ICCreateSmartFolderActivity alloc];
  tagSelection = [(ICViewControllerManager *)self tagSelection];
  activeEditorController = [(ICViewControllerManager *)self activeEditorController];
  v7 = [(ICCreateSmartFolderActivity *)v4 initWithTagSelection:tagSelection presentingViewController:activeEditorController eventReporter:0];

  [(ICCreateSmartFolderActivity *)v7 performActivityWithCompletion:0];
}

- (BOOL)canPerformCreateSmartFolder
{
  keyboardHandler = [(ICViewControllerManager *)self keyboardHandler];
  globalKeyCommandsInhibited = [keyboardHandler globalKeyCommandsInhibited];

  if (globalKeyCommandsInhibited)
  {
    return 0;
  }

  window = [(ICViewControllerManager *)self window];
  ic_topmostPresentedViewController = [window ic_topmostPresentedViewController];

  if (ic_topmostPresentedViewController && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    ic_isViewVisible = 0;
  }

  else
  {
    currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
    if ([currentNoteBrowseViewController ic_isViewVisible])
    {
      ic_isViewVisible = 1;
    }

    else
    {
      folderListViewController = [(ICViewControllerManager *)self folderListViewController];
      ic_isViewVisible = [folderListViewController ic_isViewVisible];
    }
  }

  return ic_isViewVisible;
}

- (void)performCreateSmartFolder:(id)folder
{
  folderListViewController = [(ICViewControllerManager *)self folderListViewController];
  if ([folderListViewController ic_isViewVisible])
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
  currentNoteBrowseViewController = [(ICViewControllerManager *)self currentNoteBrowseViewController];
  noteContainer = [currentNoteBrowseViewController noteContainer];
  v7 = ICDynamicCast();

  folderListViewController2 = [(ICViewControllerManager *)self folderListViewController];
  if ([folderListViewController2 ic_isViewVisible])
  {
  }

  else
  {
    canAddSubfolder = [v7 canAddSubfolder];

    if (canAddSubfolder)
    {
      v10 = v7;
      goto LABEL_11;
    }
  }

  v10 = 0;
LABEL_11:
  v11 = [[ICFolderCreationController alloc] initWithViewController:v13 noteContainer:v10 creationApproach:1];
  [(ICViewControllerManager *)self setFolderCreationController:v11];

  folderCreationController = [(ICViewControllerManager *)self folderCreationController];
  [folderCreationController promptToAddFolderAllowingSmartFolder:1 showFilters:1 withCompletionHandler:0];
}

- (void)performToggleBoldface:(id)boldface
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController toggleBoldface];
}

- (void)performToggleItalics:(id)italics
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController toggleItalics];
}

- (void)performToggleUnderline:(id)underline
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController toggleUnderline];
}

- (void)performToggleEmphasis:(id)emphasis
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController toggleEmphasis];
}

- (void)performToggleStrikethrough:(id)strikethrough
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  [noteEditorViewController toggleStrikethrough];
}

- (BOOL)canPerformUndo
{
  visibleViewsUndoManager = [(ICViewControllerManager *)self visibleViewsUndoManager];
  if ([visibleViewsUndoManager canUndo])
  {
    visibleViewsUndoManager2 = [(ICViewControllerManager *)self visibleViewsUndoManager];
    v5 = [visibleViewsUndoManager2 isUndoing] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  visibleViewsUndoManager = [(ICViewControllerManager *)self visibleViewsUndoManager];
  [visibleViewsUndoManager undo];
}

- (int64_t)toggleBoldfaceState
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  currentBIUSForStyleSelector = [noteEditorViewController currentBIUSForStyleSelector];

  return currentBIUSForStyleSelector & 1;
}

- (int64_t)toggleItalicsState
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  currentBIUSForStyleSelector = [noteEditorViewController currentBIUSForStyleSelector];

  return (currentBIUSForStyleSelector >> 1) & 1;
}

- (int64_t)toggleUnderlineState
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  currentBIUSForStyleSelector = [noteEditorViewController currentBIUSForStyleSelector];

  return (currentBIUSForStyleSelector >> 2) & 1;
}

- (int64_t)toggleStrikethroughState
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  currentBIUSForStyleSelector = [noteEditorViewController currentBIUSForStyleSelector];

  return (currentBIUSForStyleSelector >> 3) & 1;
}

- (int64_t)toggleEmphasisState
{
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  currentBIUSForStyleSelector = [noteEditorViewController currentBIUSForStyleSelector];

  return (currentBIUSForStyleSelector >> 4) & 1;
}

- (void)addNoteFromAirDropDocument:(id)document
{
  documentCopy = document;
  v5 = [ICAirDropDocument documentAtURL:documentCopy];
  if (v5)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005F39C;
    v12[3] = &unk_1006466E0;
    v12[4] = self;
    v6 = objc_retainBlock(v12);
    v7 = +[NotesApp sharedNotesApp];
    noteContext = [v7 noteContext];

    if ([v5 hasDocumentForNote])
    {
      [ICNote createNoteForAirDropDocument:v5 legacyContext:noteContext completion:v6];
    }

    else if ([v5 hasDocumentForLegacyNote])
    {
      v9 = objc_alloc_init(ICTextController);
      v10 = +[ICAttachmentPreviewGenerator sharedGenerator];
      v11 = [NoteObject newNoteForAirDropDocument:v5 context:noteContext styler:v9 attachmentPreviewGenerator:v10];

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
    [ICAssert handleFailedAssertWithCondition:"airDropDocument" functionName:"[ICViewControllerManager addNoteFromAirDropDocument:]" simulateCrash:1 showAlert:0 format:@"Failed to load AirDrop at url %@", documentCopy];
  }
}

- (void)addNoteFromPlaintextFile:(id)file
{
  fileCopy = file;
  v48 = 0;
  v5 = [NSString stringWithContentsOfURL:fileCopy usedEncoding:0 error:&v48];
  v6 = v48;
  if (v5)
  {
    selfCopy2 = self;
  }

  else
  {
    v47 = v6;
    v5 = [NSString stringWithContentsOfURL:fileCopy encoding:4 error:&v47];
    v7 = v47;

    if (!v5)
    {
      [ICAssert handleFailedAssertWithCondition:"content != ((void*)0)" functionName:"[ICViewControllerManager addNoteFromPlaintextFile:]" simulateCrash:1 showAlert:0 format:@"Failed to load file content at url %@", fileCopy];
      goto LABEL_16;
    }

    selfCopy2 = self;
    v6 = v7;
  }

  v8 = +[NotesApp sharedNotesApp];
  noteContext = [v8 noteContext];
  v10 = [ICDefaultAccountUtilities defaultAccountWithHTMLNoteContext:noteContext];

  objc_opt_class();
  v11 = ICDynamicCast();
  objc_opt_class();
  v12 = ICDynamicCast();
  v13 = +[NSDate date];
  if (v11)
  {
    defaultFolder = [v11 defaultFolder];
    v43 = fileCopy;
    v15 = [ICNote newEmptyNoteInFolder:defaultFolder];

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
    textStorage = [v15 textStorage];
    [textStorage appendAttributedString:v25];

    [v15 updateChangeCountWithReason:@"Created note from plaintext file"];
    v27 = +[ICNoteContext sharedContext];
    [v27 saveImmediately];
    [v27 setCurrentNote:v15];
    objectID = [v15 objectID];
    LOWORD(v40) = 257;
    [(ICViewControllerManager *)selfCopy2 selectNoteWithObjectID:objectID scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:1 animated:v40 ensurePresented:?];

    v12 = v21;
    v7 = v20;
    v11 = v19;
    v10 = v18;
    v13 = v41;
    fileCopy = v43;
  }

  else if (v12)
  {
    v44 = fileCopy;
    v29 = +[NotesApp sharedNotesApp];
    noteContext2 = [v29 noteContext];
    newlyAddedNote = [noteContext2 newlyAddedNote];

    [newlyAddedNote setCreationDate:v13];
    [newlyAddedNote setModificationDate:v13];
    v42 = v12;
    defaultStore = [v12 defaultStore];
    [newlyAddedNote setStore:defaultStore];

    v33 = ICNoteTitleFromPlainText();
    [newlyAddedNote setTitle:v33];

    v34 = ICNoteHTMLFromPlainText();
    [newlyAddedNote setContent:v34];

    v35 = +[NotesApp sharedNotesApp];
    noteContext3 = [v35 noteContext];
    v46 = v6;
    v37 = [noteContext3 save:&v46];
    v7 = v46;

    if ((v37 & 1) == 0)
    {
      v38 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1004D8B24();
      }
    }

    objectID2 = [newlyAddedNote objectID];
    LOWORD(v40) = 257;
    [(ICViewControllerManager *)selfCopy2 selectNoteWithObjectID:objectID2 scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:1 animated:v40 ensurePresented:?];

    v12 = v42;
    fileCopy = v44;
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICViewControllerManager addNoteFromPlaintextFile:]" simulateCrash:1 showAlert:0 format:@"Couldn't get default account"];
    v7 = v6;
  }

LABEL_16:
}

- (BOOL)openURL:(id)l
{
  lCopy = l;
  isFileURL = [lCopy isFileURL];
  v6 = +[ICQuickNoteSessionManager sharedManager];
  isSecureScreenShowing = [v6 isSecureScreenShowing];

  v8 = [ICAppURLUtilities isTranscriptionDonationURL:lCopy];
  v9 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v88 = "[ICViewControllerManager openURL:]";
    v89 = 1024;
    v90 = 8308;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  if (!isFileURL)
  {
    if (((lCopy != 0) & isSecureScreenShowing) == 1)
    {
      v15 = [ICAppURLUtilities noteIdentifierFromNotesAppURL:lCopy];
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

    if (lCopy)
    {
      if ([ICAppURLUtilities isQuickNoteModeURL:lCopy])
      {
        v20 = os_log_create("com.apple.notes", "QuickNote");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_1004D8BA0();
        }

        v12 = +[ICQuickNoteSessionManager sharedManager];
        noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
        v22 = +[ICNoteContext sharedContext];
        managedObjectContext = [v22 managedObjectContext];

        v24 = [ICAppURLUtilities noteIdentifierFromQuickNoteURL:lCopy];
        v67 = v24;
        if (v24)
        {
          v25 = [ICNote noteWithIdentifier:v24 context:managedObjectContext];
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
            v25 = [v12 noteForSessionCreatingIfNecessaryInContext:managedObjectContext stateArchive:v40 canResume:1 isNewlyCreated:buf];
            if (buf[0] == 1)
            {
              noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
              eventReporter = [noteEditorViewController2 eventReporter];

              [eventReporter submitNoteCreateEventForModernNote:v25 createApproach:12];
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

        v66 = managedObjectContext;
        lastSavedInkingTool = [noteEditorViewController lastSavedInkingTool];
        v68 = noteEditorViewController;
        [noteEditorViewController updateInkPickerAndTextViewToTool:lastSavedInkingTool];

        v65 = v40;
        v64 = [v40 scrollStateForNote:v25];
        v44 = [ICAppURLUtilities quickNoteURLShouldShowList:lCopy];
        v45 = [ICAppURLUtilities quickNoteURLShouldShowShareSheet:lCopy];
        v46 = [ICAppURLUtilities quickNoteURLShouldShowiCloudShareSheet:lCopy];
        v47 = [ICAppURLUtilities attachmentIdentifierFromQuickNoteURL:lCopy];
        isPasswordProtected = [v25 isPasswordProtected];
        v69 = 0;
        if ((v44 & 1) == 0 && (v45 & 1) == 0 && (v46 & 1) == 0 && !v47)
        {
          v49 = isPasswordProtected;
          if (([ICAppURLUtilities isLaunchingQuickNoteViaPencil:lCopy]& 1) != 0)
          {
            v69 = 0;
          }

          else
          {
            textView = [v68 textView];
            v69 = [textView canBecomeFirstResponder] & (v49 ^ 1);
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
        folder = [v25 folder];
        account = [folder account];
        objectID = [account objectID];

        if (!v44 || ([objectID URIRepresentation], v55 = objc_claimAutoreleasedReturnValue(), v86 = v55, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v86, 1), v56 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v51, "setCurrentContainerObjectIDURLs:", v56), v56, v55, !-[ICViewControllerManager hasCompactWidth](self, "hasCompactWidth")))
        {
          objectID2 = [v25 objectID];
          uRIRepresentation = [objectID2 URIRepresentation];
          [v51 setCurrentNoteObjectIDURL:uRIRepresentation];
        }

        [v51 setCurrentNoteContainerViewMode:{-[ICViewControllerManager noteContainerViewMode](self, "noteContainerViewMode")}];
        [v51 setScrollState:v64];
        [v51 setActiveEditorInEditMode:v69];
        [(ICViewControllerManager *)self applyNoteViewModesToStateRestoreArchive:v51 withContainerItemID:objectID];
        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_1000602C8;
        v78[3] = &unk_100646708;
        v83 = v46;
        v79 = v68;
        selfCopy = self;
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
        v28 = [ICAppURLUtilities isTranscriptionDonationURLPositive:lCopy];
        v29 = +[ICNoteContext sharedContext];
        workerManagedObjectContext = [v29 workerManagedObjectContext];

        v73[0] = _NSConcreteStackBlock;
        v73[1] = 3221225472;
        v73[2] = sub_100060354;
        v73[3] = &unk_100645ED0;
        v74 = lCopy;
        v75 = workerManagedObjectContext;
        selfCopy2 = self;
        v77 = v28;
        v31 = workerManagedObjectContext;
        [v31 performBlockAndWait:v73];

        [(ICViewControllerManager *)self selectionStateTrackingEnabled];
        v19 = 1;
        goto LABEL_32;
      }

      if ([ICAppURLUtilities isShowFolderListURL:lCopy])
      {
        [(ICViewControllerManager *)self showAccountListAnimated:1];
      }
    }

LABEL_30:
    if (!(v8 & 1 | ![(ICViewControllerManager *)self selectionStateTrackingEnabled]))
    {
      selectedNoteObjectID = [(ICViewControllerManager *)self selectedNoteObjectID];
      selectionStateController = [(ICViewControllerManager *)self selectionStateController];
      rootNoteBrowseViewController = [(ICViewControllerManager *)self rootNoteBrowseViewController];
      noteContainerViewMode = [(ICViewControllerManager *)self noteContainerViewMode];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_100060640;
      v70[3] = &unk_100646758;
      v70[4] = self;
      v71 = selectedNoteObjectID;
      v72 = lCopy;
      v12 = selectedNoteObjectID;
      [selectionStateController openURL:v72 rootNoteBrowseViewController:rootNoteBrowseViewController currentNoteContainerViewMode:noteContainerViewMode completion:v70];

      goto LABEL_63;
    }

    v19 = 0;
LABEL_32:
    v12 = [(ICViewControllerManager *)self archiveForURL:lCopy];
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
  v10 = [lCopy getResourceValue:&v85 forKey:NSURLTypeIdentifierKey error:&v84];
  v11 = v85;
  v12 = v84;
  if (v10)
  {
    pathExtension = [lCopy pathExtension];
    v14 = [pathExtension isEqualToString:kICAirDropDocumentExtension];

    if (v14)
    {
      [(ICViewControllerManager *)self addNoteFromAirDropDocument:lCopy];
LABEL_24:
      v19 = 1;
      goto LABEL_25;
    }

    v26 = [UTType typeWithIdentifier:v11];
    v27 = [v26 conformsToType:UTTypePlainText];

    if (v27)
    {
      [(ICViewControllerManager *)self addNoteFromPlaintextFile:lCopy];
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

- (void)showAudioDonationDialog:(BOOL)dialog mediaURL:(id)l transcript:(id)transcript date:(id)date
{
  lCopy = l;
  transcriptCopy = transcript;
  dateCopy = date;
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
  v30 = lCopy;
  v31 = transcriptCopy;
  v32 = dateCopy;
  dialogCopy = dialog;
  v25 = dateCopy;
  v16 = transcriptCopy;
  v17 = lCopy;
  v18 = [UIAlertAction actionWithTitle:v15 style:0 handler:v29];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Cancel" value:&stru_100661CF0 table:0];
  v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:0];

  [v13 addAction:v18];
  [v13 addAction:v21];
  noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
  presentedViewController = [noteEditorViewController presentedViewController];

  [presentedViewController presentViewController:v13 animated:1 completion:0];
}

- (id)archiveForURL:(id)l
{
  lCopy = l;
  v4 = sub_1000DC72C();
  v5 = +[ICNoteContext sharedContext];
  if (v5)
  {
    v6 = [ICAppURLUtilities objectIDForModernFolderMentionedInURL:lCopy noteContext:v5];
    if (v6)
    {
LABEL_3:
      v7 = v6;
      uRIRepresentation = [v6 URIRepresentation];
LABEL_6:
      uRIRepresentation2 = 0;
      v9 = 0;
      uRIRepresentation6 = 0;
      v11 = 0;
LABEL_7:
      v12 = 0;
      goto LABEL_8;
    }

    if (([ICAppURLUtilities isShowVirtualSmartFolderURL:lCopy]& 1) != 0)
    {
      managedObjectContext = [v5 managedObjectContext];
      v11 = [ICAppURLUtilities virtualSmartFolderMentionedInURL:lCopy context:managedObjectContext];

      v7 = 0;
      uRIRepresentation = 0;
      uRIRepresentation2 = 0;
      v9 = 0;
      uRIRepresentation6 = 0;
      goto LABEL_7;
    }

    if ([ICAppURLUtilities isShowNoteInVirtualSmartFolderURL:lCopy])
    {
      managedObjectContext2 = [v5 managedObjectContext];
      v11 = [ICAppURLUtilities virtualSmartFolderMentionedInURL:lCopy context:managedObjectContext2];

      v28 = [ICAppURLUtilities notePredicateFromNoteInVirtualSmartFolderInURL:lCopy];
      if (v28)
      {
        managedObjectContext3 = [v5 managedObjectContext];
        v30 = [ICNote notesMatchingPredicate:v28 context:managedObjectContext3];

        if ([v30 count])
        {
          [v30 firstObject];
          v32 = v31 = v5;
          objectID = [v32 objectID];
          uRIRepresentation = [objectID URIRepresentation];

          if (v11)
          {
            v34 = uRIRepresentation;
          }

          else
          {
            v34 = 0;
          }

          uRIRepresentation2 = v34;
          if (v11)
          {
            uRIRepresentation = 0;
          }

          v5 = v31;
        }

        else
        {
          uRIRepresentation2 = 0;
          uRIRepresentation = 0;
        }
      }

      else
      {
        uRIRepresentation2 = 0;
        uRIRepresentation = 0;
      }

      v9 = 0;
LABEL_69:
      v12 = uRIRepresentation2;
      v7 = 0;
      if (uRIRepresentation2)
      {
        uRIRepresentation6 = 0;
        v12 = [v9 count] != 0;
      }

      else
      {
        uRIRepresentation2 = 0;
        uRIRepresentation6 = 0;
      }

      goto LABEL_8;
    }
  }

  else if (([ICAppURLUtilities isShowVirtualSmartFolderURL:lCopy]& 1) != 0)
  {
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [ICAppURLUtilities objectIDForHTMLFolderMentionedInURL:lCopy context:v4];
    if (v6)
    {
      goto LABEL_3;
    }

    if ([ICAppURLUtilities isShowDefaultFolderURL:lCopy])
    {
      v35 = [ICDefaultAccountUtilities defaultFolderWithHTMLNoteContext:v4];
      objectID2 = [v35 objectID];
      uRIRepresentation = [objectID2 URIRepresentation];

LABEL_38:
      v7 = 0;
      goto LABEL_6;
    }
  }

  if ([ICAppURLUtilities isShowNoteURL:lCopy])
  {
    v37 = [ICAppURLUtilities predicateForNotesMentionedInURL:lCopy];
    v38 = v37;
    v9 = 0;
    if (v5)
    {
      uRIRepresentation2 = 0;
      uRIRepresentation = 0;
      if (v37)
      {
        managedObjectContext4 = [v5 managedObjectContext];
        v40 = [ICNote notesMatchingPredicate:v38 context:managedObjectContext4];

        v72 = v40;
        firstObject = [v40 firstObject];
        v42 = [ICAppURLUtilities folderIdentifierForShowNoteURL:lCopy];
        if (v42)
        {
          managedObjectContext5 = [v5 managedObjectContext];
          v44 = [ICFolder folderWithIdentifier:v42 context:managedObjectContext5];

          if (v44 && firstObject && ([v44 visibleNotes], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "containsObject:", firstObject), v45, v46))
          {
            objectID3 = [firstObject objectID];
            uRIRepresentation2 = [objectID3 URIRepresentation];

            objectID4 = [v44 objectID];
            uRIRepresentation3 = [objectID4 URIRepresentation];
            v79 = uRIRepresentation3;
            v9 = [NSArray arrayWithObjects:&v79 count:1];

            uRIRepresentation4 = 0;
          }

          else
          {
            objectID5 = [firstObject objectID];
            uRIRepresentation4 = [objectID5 URIRepresentation];

            v9 = 0;
            uRIRepresentation2 = 0;
          }
        }

        else
        {
          objectID6 = [firstObject objectID];
          uRIRepresentation4 = [objectID6 URIRepresentation];

          v9 = 0;
          uRIRepresentation2 = 0;
        }

        uRIRepresentation = uRIRepresentation4;
      }
    }

    else
    {
      uRIRepresentation2 = 0;
      uRIRepresentation = 0;
    }

    v11 = 0;
    goto LABEL_69;
  }

  v50 = [ICAppURLUtilities objectIDURIRepresentationForHTMLNoteMentionedInURL:lCopy];
  if (!v50)
  {
    if ([ICAppURLUtilities isShowNoteFocusedInFolderURL:lCopy])
    {
      v76 = v4;
      v51 = [ICAppURLUtilities predicateForFolderWithNoteFocusedInURL:lCopy];
      v52 = v51;
      v11 = 0;
      uRIRepresentation6 = 0;
      uRIRepresentation = 0;
      if (v5 && v51)
      {
        v74 = v5;
        managedObjectContext6 = [v5 managedObjectContext];
        v54 = [ICNote notesMatchingPredicate:v52 context:managedObjectContext6];

        objc_opt_class();
        firstObject2 = [v54 firstObject];
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
          uRIRepresentation5 = 0;
          v11 = folder = v11;
        }

        else
        {
          folder = [v56 folder];
          objectID7 = [folder objectID];
          uRIRepresentation5 = [objectID7 URIRepresentation];
        }

        objectID8 = [v56 objectID];
        uRIRepresentation6 = [objectID8 URIRepresentation];

        v5 = v74;
        uRIRepresentation = uRIRepresentation5;
      }

      v7 = 0;
      uRIRepresentation2 = 0;
      v9 = 0;
      v12 = 0;
      v4 = v76;
LABEL_8:
      if (!uRIRepresentation && !v12 && !v11)
      {
        uRIRepresentation = 0;
        v13 = 0;
        if (![ICAppURLUtilities isShowFolderListURL:lCopy])
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
        noteContext = [v58 noteContext];
        v60 = [noteContext allVisibleNotesMatchingPredicate:v35 sorted:1];

        firstObject3 = [v60 firstObject];
        [firstObject3 objectID];
        v62 = v5;
        v64 = v63 = v4;
        uRIRepresentation = [v64 URIRepresentation];

        v4 = v63;
        v5 = v62;
      }

      else
      {
        uRIRepresentation = 0;
      }

      goto LABEL_38;
    }

LABEL_5:
    v7 = 0;
    uRIRepresentation = 0;
    goto LABEL_6;
  }

  uRIRepresentation = v50;
  v11 = 0;
  uRIRepresentation6 = 0;
  v9 = 0;
  uRIRepresentation2 = 0;
  v7 = 0;
LABEL_12:
  v73 = v5;
  v75 = v4;
  v14 = lCopy;
  v15 = +[ICWindowStateArchive windowStateArchiveWithEmptyState];
  v13 = v15;
  if (uRIRepresentation6)
  {
    [v15 setFocusedNoteObjectIDURL:uRIRepresentation6];
  }

  v16 = uRIRepresentation6;
  v17 = [(ICViewControllerManager *)self managedObjectIDFromURL:uRIRepresentation];
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

  [v13 setCurrentObjectIDURL:uRIRepresentation];
  [v13 setCurrentNoteObjectIDURL:uRIRepresentation2];
  [v13 setCurrentContainerObjectIDURLs:v9];
  type = [v19 type];
  [v13 setCurrentVirtualSmartFolderType:type];

  accountObjectID = [v19 accountObjectID];
  uRIRepresentation7 = [accountObjectID URIRepresentation];
  [v13 setCurrentVirtualSmartFolderAccountObjectIDURL:uRIRepresentation7];

  v11 = v19;
  lCopy = v14;
  v5 = v73;
  v4 = v75;
  uRIRepresentation6 = v16;
LABEL_20:

  return v13;
}

- (id)createDeferredActionMenuElementForEditorViewController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  note = [controllerCopy note];
  invitation = [controllerCopy invitation];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000614B8;
  v9[3] = &unk_1006467C8;
  objc_copyWeak(&v10, &location);
  v7 = [ICNoteEditorActionMenu deferredActionMenuElementWithNote:note invitation:invitation presentingViewController:controllerCopy viewControllerManager:self delegate:controllerCopy completion:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

- (void)selectTagSelection:(id)selection
{
  selectionCopy = selection;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    v5 = [selectionCopy copy];
    [selectionStateController pushTagSelection:v5];
  }

  else
  {
    [(ICViewControllerManager *)self showTagSelection:selectionCopy];
  }
}

- (void)selectContainerWithIdentifier:(id)identifier usingRootViewController:(BOOL)controller deferUntilDataLoaded:(BOOL)loaded animated:(BOOL)animated
{
  loadedCopy = loaded;
  controllerCopy = controller;
  identifierCopy = identifier;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    if (identifierCopy)
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
    LOBYTE(v12) = animated;
    [(ICViewControllerManager *)self selectContainerWithIdentifiers:v10 excludingIdentifiers:v11 noteBrowseViewController:0 usingRootViewController:controllerCopy deferUntilDataLoaded:loadedCopy dismissOverlayContent:&__kCFBooleanFalse animated:v12 ensurePresented:0 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:?];
  }

  else
  {
    v10 = [NSSet ic_setFromNonNilObject:identifierCopy];
    v11 = +[NSSet set];
    LOBYTE(v12) = animated;
    [(ICViewControllerManager *)self showContainerWithIdentifiers:v10 excludingIdentifiers:v11 usingRootViewController:controllerCopy deferUntilDataLoaded:loadedCopy dismissOverlayContent:0 keepEditorShowing:0 animated:v12];
  }
}

- (void)selectContainerWithIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers usingRootViewController:(BOOL)controller deferUntilDataLoaded:(BOOL)loaded animated:(BOOL)animated
{
  animatedCopy = animated;
  loadedCopy = loaded;
  controllerCopy = controller;
  excludingIdentifiersCopy = excludingIdentifiers;
  identifiersCopy = identifiers;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    BYTE1(v13) = 1;
    LOBYTE(v13) = animatedCopy;
    [(ICViewControllerManager *)self selectContainerWithIdentifiers:identifiersCopy excludingIdentifiers:excludingIdentifiersCopy noteBrowseViewController:0 usingRootViewController:controllerCopy deferUntilDataLoaded:loadedCopy dismissOverlayContent:0 animated:v13 ensurePresented:0 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:?];
  }

  else
  {
    [(ICViewControllerManager *)self showContainerWithIdentifiers:identifiersCopy excludingIdentifiers:excludingIdentifiersCopy usingRootViewController:controllerCopy deferUntilDataLoaded:loadedCopy keepEditorShowing:0 animated:animatedCopy];
  }
}

- (void)selectContainerWithIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers usingRootViewController:(BOOL)controller deferUntilDataLoaded:(BOOL)loaded dismissOverlayContent:(BOOL)content animated:(BOOL)animated
{
  contentCopy = content;
  loadedCopy = loaded;
  controllerCopy = controller;
  identifiersCopy = identifiers;
  excludingIdentifiersCopy = excludingIdentifiers;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    v15 = [NSNumber numberWithBool:contentCopy];
    BYTE1(v16) = 1;
    LOBYTE(v16) = animated;
    [(ICViewControllerManager *)self selectContainerWithIdentifiers:identifiersCopy excludingIdentifiers:excludingIdentifiersCopy noteBrowseViewController:0 usingRootViewController:controllerCopy deferUntilDataLoaded:loadedCopy dismissOverlayContent:v15 animated:v16 ensurePresented:0 ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:?];
  }

  else
  {
    LOBYTE(v16) = animated;
    [(ICViewControllerManager *)self showContainerWithIdentifiers:identifiersCopy excludingIdentifiers:excludingIdentifiersCopy usingRootViewController:controllerCopy deferUntilDataLoaded:loadedCopy dismissOverlayContent:contentCopy keepEditorShowing:0 animated:v16];
  }
}

- (void)selectContainerWithIdentifiers:(id)identifiers excludingIdentifiers:(id)excludingIdentifiers isChangingDisplayMode:(BOOL)mode noteBrowseViewController:(id)controller usingRootViewController:(BOOL)viewController deferUntilDataLoaded:(BOOL)loaded dismissOverlayContent:(id)content animated:(BOOL)self0 ensurePresented:(BOOL)self1 ensureSelectedNote:(id)self2 keepEditorShowing:(id)self3 dataIndexedBlock:(id)self4 dataRenderedBlock:(id)self5
{
  loadedCopy = loaded;
  modeCopy = mode;
  viewControllerCopy = viewController;
  identifiersCopy = identifiers;
  excludingIdentifiersCopy = excludingIdentifiers;
  controllerCopy = controller;
  contentCopy = content;
  noteCopy = note;
  showingCopy = showing;
  blockCopy = block;
  renderedBlockCopy = renderedBlock;
  selectionStateTrackingEnabled = [(ICViewControllerManager *)self selectionStateTrackingEnabled];
  allObjects = [identifiersCopy allObjects];
  firstObject = [allObjects firstObject];
  if (!selectionStateTrackingEnabled)
  {
    v29 = [(ICViewControllerManager *)self enforcedNoteContainerViewModeForContainerItemID:firstObject];

    v41 = contentCopy != 0;
    isAutomaticallySelectingNotes = [(ICViewControllerManager *)self isAutomaticallySelectingNotes];
    v31 = contentCopy;
    v32 = controllerCopy;
    v33 = noteCopy;
    v34 = excludingIdentifiersCopy;
    if (v29 == 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = isAutomaticallySelectingNotes;
    }

    firstObject = [NSNumber numberWithBool:[(ICViewControllerManager *)self isTrashFolderSelected]];
    BYTE2(v39) = v35;
    excludingIdentifiersCopy = v34;
    noteCopy = v33;
    controllerCopy = v32;
    contentCopy = v31;
    LOWORD(v39) = __PAIR16__(presented, animated);
    [ICViewControllerManager showContainerWithIdentifiers:"showContainerWithIdentifiers:excludingIdentifiers:noteBrowseViewController:usingRootViewController:deferUntilDataLoaded:dismissOverlayContent:animated:ensurePresented:ensureSelectedNote:keepEditorShowing:dataIndexedBlock:dataRenderedBlock:" excludingIdentifiers:identifiersCopy noteBrowseViewController:excludingIdentifiersCopy usingRootViewController:controllerCopy deferUntilDataLoaded:viewControllerCopy dismissOverlayContent:loadedCopy animated:v41 ensurePresented:v39 ensureSelectedNote:firstObject keepEditorShowing:blockCopy dataIndexedBlock:renderedBlockCopy dataRenderedBlock:?];
    goto LABEL_12;
  }

  if ([objc_opt_class() conformsToProtocol:&OBJC_PROTOCOL___ICItemIdentifier])
  {
    if (![(ICViewControllerManager *)self hasCompactWidth])
    {
      selectionStateController = [(ICViewControllerManager *)self selectionStateController];
      if ([selectionStateController selectedContainerEqualTo:firstObject] && !modeCopy)
      {
        isSearchActive = [(ICViewControllerManager *)self isSearchActive];

        if (isSearchActive)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }
    }

LABEL_14:
    if (blockCopy | renderedBlockCopy)
    {
      v37 = [[ICSelectionStateModelContainerSelectionOptionsCompletionBlocks alloc] initWithDataIndexedBlock:blockCopy dataRenderedBlock:renderedBlockCopy];
    }

    else
    {
      v37 = 0;
    }

    selectionStateController2 = [(ICViewControllerManager *)self selectionStateController];
    v36 = showingCopy;
    LOWORD(v39) = __PAIR16__(presented, animated);
    [selectionStateController2 pushContainerSelectionWithObjectID:firstObject forceApply:modeCopy noteBrowseViewController:controllerCopy usingRootViewController:viewControllerCopy deferUntilDataLoaded:loadedCopy dismissOverlayContent:contentCopy animated:v39 ensurePresented:noteCopy ensureSelectedNote:showingCopy keepEditorShowing:v37 containerSelectionCompletionBlocks:?];

    goto LABEL_18;
  }

LABEL_12:
  v36 = showingCopy;
LABEL_18:
}

- (void)selectObjectWithObjectID:(id)d
{
  dCopy = d;
  if (-[ICViewControllerManager selectionStateTrackingEnabled](self, "selectionStateTrackingEnabled") && ([dCopy ic_isContainerType] & 1) == 0)
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    [selectionStateController pushObjectWithObjectID:dCopy];
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
    selectionStateController = ;
    uRIRepresentation = [dCopy URIRepresentation];
    [selectionStateController setCurrentObjectIDURL:uRIRepresentation];

    [(ICViewControllerManager *)self applyNoteViewModesToStateRestoreArchive:selectionStateController withContainerItemID:dCopy];
    [(ICViewControllerManager *)self applyStateRestoreArchive:selectionStateController completion:0];
  }
}

- (void)selectInvitationWithObjectID:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  dCopy = d;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    [selectionStateController pushInvitationWithObjectID:dCopy animated:animatedCopy];
  }

  else
  {
    [(ICViewControllerManager *)self showInvitationWithObjectID:dCopy animated:animatedCopy];
  }
}

- (void)selectNoteWithObjectID:(id)d scrollState:(id)state startEditing:(BOOL)editing animated:(BOOL)animated ensurePresented:(BOOL)presented
{
  BYTE1(v7) = presented;
  LOBYTE(v7) = animated;
  [(ICViewControllerManager *)self selectNoteWithObjectID:d scrollState:state startEditing:editing showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:1 animated:v7 ensurePresented:?];
}

- (void)selectNoteWithObjectID:(id)d scrollState:(id)state startEditing:(BOOL)editing showInkPicker:(BOOL)picker dismissOverlayContent:(BOOL)content showLatestUpdatesIfAvailable:(BOOL)available animated:(BOOL)animated ensurePresented:(BOOL)self0
{
  availableCopy = available;
  contentCopy = content;
  pickerCopy = picker;
  editingCopy = editing;
  dCopy = d;
  stateCopy = state;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    if ([(ICViewControllerManager *)self isSearchActive])
    {
      selectedSearchResult = [(ICViewControllerManager *)self selectedSearchResult];
      LOWORD(v19) = __PAIR16__(presented, animated);
      [selectionStateController pushNoteSelectionWithObjectID:dCopy scrollState:stateCopy startEditing:editingCopy showInkPicker:pickerCopy dismissOverlayContent:contentCopy showLatestUpdatesIfAvailable:availableCopy animated:v19 ensurePresented:selectedSearchResult searchResult:?];
    }

    else
    {
      LOWORD(v19) = __PAIR16__(presented, animated);
      [selectionStateController pushNoteSelectionWithObjectID:dCopy scrollState:stateCopy startEditing:editingCopy showInkPicker:pickerCopy dismissOverlayContent:contentCopy showLatestUpdatesIfAvailable:availableCopy animated:v19 ensurePresented:0 searchResult:?];
    }
  }

  else
  {
    LOWORD(v19) = __PAIR16__(presented, animated);
    [(ICViewControllerManager *)self showNoteWithObjectID:dCopy scrollState:stateCopy startEditing:editingCopy showInkPicker:pickerCopy dismissOverlayContent:contentCopy showLatestUpdatesIfAvailable:availableCopy animated:v19 ensurePresented:?];
  }
}

- (void)selectNoteStartEditingIfEmptyWithObjectID:(id)d scrollState:(id)state animated:(BOOL)animated ensurePresented:(BOOL)presented
{
  presentedCopy = presented;
  animatedCopy = animated;
  dCopy = d;
  stateCopy = state;
  if (dCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    if ([dCopy ic_isModernNoteType])
    {
      modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
      v13 = v15;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10006208C;
      v15[3] = &unk_100646008;
      v15[4] = self;
      v15[5] = dCopy;
      v15[6] = &v16;
      [modernManagedObjectContext performBlockAndWait:v15];
    }

    else
    {
      if (![dCopy ic_isLegacyNoteType])
      {
LABEL_7:
        [(ICViewControllerManager *)self selectNoteWithObjectID:dCopy scrollState:stateCopy startEditing:*(v17 + 24) animated:animatedCopy ensurePresented:presentedCopy];
        _Block_object_dispose(&v16, 8);
        goto LABEL_8;
      }

      modernManagedObjectContext = [(ICViewControllerManager *)self legacyManagedObjectContext];
      v13 = v14;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100062100;
      v14[3] = &unk_100646008;
      v14[4] = self;
      v14[5] = dCopy;
      v14[6] = &v16;
      [modernManagedObjectContext performBlockAndWait:v14];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)selectAttachmentWithObjectID:(id)d animated:(BOOL)animated
{
  dCopy = d;
  if ([(ICViewControllerManager *)self selectionStateTrackingEnabled])
  {
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    BYTE1(v11) = 1;
    LOBYTE(v11) = animated;
    [selectionStateController pushAttachmentSelectionWithObjectID:dCopy scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:0 animated:v11 ensurePresented:?];
  }

  else
  {
    if (![dCopy ic_isBaseAttachmentType])
    {
      goto LABEL_6;
    }

    modernManagedObjectContext = [(ICViewControllerManager *)self modernManagedObjectContext];
    selectionStateController = [modernManagedObjectContext objectWithID:dCopy];

    note = [selectionStateController note];
    v9 = [ICTextViewScrollState scrollStateForAttachment:selectionStateController inNote:note];
    objectID = [note objectID];
    BYTE1(v11) = 1;
    LOBYTE(v11) = animated;
    [(ICViewControllerManager *)self showNoteWithObjectID:objectID scrollState:v9 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:0 animated:v11 ensurePresented:?];
  }

LABEL_6:
}

- (void)selectModel:(id)model
{
  if (model)
  {
    modelCopy = model;
    selectionStateController = [(ICViewControllerManager *)self selectionStateController];
    [selectionStateController pushModel:modelCopy navigating:0];
  }
}

- (BOOL)objectAlreadyLoadedInEditorWithObjectID:(id)d
{
  dCopy = d;
  ic_isModernNoteType = [dCopy ic_isModernNoteType];
  if (ic_isModernNoteType)
  {
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    note = [noteEditorViewController note];
    objectID = [note objectID];
    if ([dCopy isEqual:objectID])
    {
      v9 = 1;
LABEL_10:

      goto LABEL_11;
    }

    if (([dCopy ic_isInvitationType] & 1) == 0)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  else if (![dCopy ic_isInvitationType])
  {
    v9 = 0;
    goto LABEL_11;
  }

  noteEditorViewController2 = [(ICViewControllerManager *)self noteEditorViewController];
  invitation = [noteEditorViewController2 invitation];
  objectID2 = [invitation objectID];
  v9 = [dCopy isEqual:objectID2];

  if (ic_isModernNoteType)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ([dCopy ic_isLegacyNoteType])
  {
    legacyNoteEditorViewController = [(ICViewControllerManager *)self legacyNoteEditorViewController];
    note2 = [legacyNoteEditorViewController note];
    objectID3 = [note2 objectID];
    v16 = [dCopy isEqual:objectID3];
  }

  else
  {
    v16 = 0;
  }

  return (v9 | v16) & 1;
}

- (void)adoptContainerFromSelectionStateController:(id)controller oldModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  v6 = modelCopy;
  v7 = controllerCopy;
  performBlockOnMainThread();
}

- (void)adoptObjectFromSelectionStateController:(id)controller oldModel:(id)model completion:(id)completion
{
  controllerCopy = controller;
  modelCopy = model;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = modelCopy;
  v10 = controllerCopy;
  performBlockOnMainThread();
}

- (void)selectionStateController:(id)controller didAdoptModelFromOldModel:(id)model isNavigating:(BOOL)navigating
{
  controllerCopy = controller;
  modelCopy = model;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100063174;
  v17[3] = &unk_100645D40;
  v17[4] = self;
  v9 = controllerCopy;
  v18 = v9;
  v10 = modelCopy;
  v19 = v10;
  v14 = v9;
  v15 = v10;
  v16 = objc_retainBlock(v17);
  v11 = v16;
  v12 = v10;
  v13 = v9;
  performBlockOnMainThread();
}

- (void)selectionStateController:(id)controller didAdoptModelFromArchive:(id)archive systemPaperAlert:(BOOL)alert completion:(id)completion
{
  controllerCopy = controller;
  archiveCopy = archive;
  completionCopy = completion;
  v9 = completionCopy;
  v10 = archiveCopy;
  v11 = controllerCopy;
  performBlockOnMainThread();
}

- (BOOL)shouldAutomaticallySelectNoteContainerForSelectionStateController:(id)controller
{
  if ([(ICViewControllerManager *)self isApplyingStateRestoreArchive]|| ![(ICViewControllerManager *)self hasCompactWidth])
  {
    return 1;
  }

  overrideContainerIdentifier = [(ICViewControllerManager *)self overrideContainerIdentifier];
  v5 = overrideContainerIdentifier != 0;

  return v5;
}

- (BOOL)shouldRevertToDefaultFolderWhenUnselectingTagsForSelectionStateController:(id)controller
{
  hasCompactWidth = [(ICViewControllerManager *)self hasCompactWidth];
  if (hasCompactWidth)
  {

    LOBYTE(hasCompactWidth) = [(ICViewControllerManager *)self isNoteEditorVisible];
  }

  return hasCompactWidth;
}

- (BOOL)shouldRevertToAllTagsWhenUnselectingTagsForSelectionStateController:(id)controller
{
  hasCompactWidth = [(ICViewControllerManager *)self hasCompactWidth];
  if (hasCompactWidth)
  {
    LOBYTE(hasCompactWidth) = ![(ICViewControllerManager *)self isNoteEditorVisible];
  }

  return hasCompactWidth;
}

- (BOOL)shouldSelectDefaultContainerWhenInappropriateForSelectionStateController:(id)controller
{
  if ([(ICViewControllerManager *)self isSearchActive])
  {
    return 0;
  }

  overrideContainerIdentifier = [(ICViewControllerManager *)self overrideContainerIdentifier];
  v4 = overrideContainerIdentifier == 0;

  return v4;
}

- (BOOL)shouldRevertToMostRecentlySelectedNonSearchObjectOnNavigationTransitionForSelectionStateController:(id)controller
{
  if ([(ICViewControllerManager *)self isSearchActive])
  {
    return 0;
  }

  return [(ICViewControllerManager *)self isAutomaticallySelectingNotes];
}

- (BOOL)shouldRevertToMostRecentlySelectedSearchResultOnNavigationTransitionForSelectionStateController:(id)controller
{
  isSearchActive = [(ICViewControllerManager *)self isSearchActive];
  if (isSearchActive)
  {

    LOBYTE(isSearchActive) = [(ICViewControllerManager *)self isAutomaticallySelectingNotes];
  }

  return isSearchActive;
}

- (void)selectionStateController:(id)controller didAdoptInstantNoteModelFromArchive:(id)archive
{
  controllerCopy = controller;
  archiveCopy = archive;
  v6 = archiveCopy;
  v7 = controllerCopy;
  performBlockOnMainThread();
}

- (void)selectionStateController:(id)controller didIgnoreDuplicateModel:(id)model
{
  modelCopy = model;
  v4 = modelCopy;
  performBlockOnMainThread();
}

- (id)selectionStateController:(id)controller scrollStateForObjectID:(id)d
{
  dCopy = d;
  if ([dCopy ic_isModernNoteType] && -[ICViewControllerManager objectAlreadyLoadedInEditorWithObjectID:](self, "objectAlreadyLoadedInEditorWithObjectID:", dCopy))
  {
    noteEditorViewController = [(ICViewControllerManager *)self noteEditorViewController];
    currentScrollState = [noteEditorViewController currentScrollState];
  }

  else
  {
    currentScrollState = 0;
  }

  return currentScrollState;
}

- (id)hostedNotesAppearanceCoordinatorModeButtonHidingModalTypes:(id)types
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [NSSet setWithObjects:v3, v4, v5, objc_opt_class(), 0];
}

- (BOOL)canPerformTogglePinNoteAction
{
  selfCopy = self;
  v3 = sub_10017B74C(&selRef_isPinnable);

  return v3;
}

- (BOOL)canPerformLockNoteAction
{
  selfCopy = self;
  v3 = sub_10017B628();

  return v3 & 1;
}

- (BOOL)canPerformDuplicateSelectedNote
{
  selfCopy = self;
  v3 = sub_10017B74C(&selRef_isDuplicatable);

  return v3;
}

- (BOOL)canPerformManageSharedFolderAction
{
  selfCopy = self;
  currentNoteBrowseViewController = [(ICViewControllerManager *)selfCopy currentNoteBrowseViewController];
  noteContainer = [(ICNoteBrowseViewController *)currentNoteBrowseViewController noteContainer];

  if (noteContainer)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      isSharedViaICloud = [v5 isSharedViaICloud];
      v7 = noteContainer;
    }

    else
    {
      isSharedViaICloud = 0;
      v7 = selfCopy;
      selfCopy = noteContainer;
    }
  }

  else
  {
    isSharedViaICloud = 0;
  }

  return isSharedViaICloud;
}

+ (void)createDonationOf:(NSURL *)of transcript:(NSString *)transcript date:(NSDate *)date isFeedbackPositive:(BOOL)positive completionHandler:(id)handler
{
  v13 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  *(v17 + 16) = of;
  *(v17 + 24) = transcript;
  *(v17 + 32) = date;
  *(v17 + 40) = positive;
  *(v17 + 48) = v16;
  *(v17 + 56) = self;
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
  ofCopy = of;
  transcriptCopy = transcript;
  dateCopy = date;
  sub_1004A09D8(0, 0, v15, &unk_100544850, v20);
}

+ (id)trimBuffer:(id)buffer toFrameLength:(unsigned int)length
{
  v4 = *&length;
  bufferCopy = buffer;
  sub_10035E528(bufferCopy, v4);
  v7 = v6;

  return v7;
}

@end