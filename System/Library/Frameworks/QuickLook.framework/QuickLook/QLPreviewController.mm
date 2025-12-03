@interface QLPreviewController
+ (BOOL)canPreviewItem:(id)item;
+ (QLPreviewController)controllerWithItemStore:(id)store;
+ (id)printPageRendererForItem:(id)item;
+ (void)logDeprecatedMessageForMethodName:(id)name;
+ (void)logDeprecatedMessageForSelector:(SEL)selector;
- (BOOL)_adoptPersona:(id)persona andPerformBlock:(id)block;
- (BOOL)_barButtonItemArray:(id)array isEqualToArray:(id)toArray;
- (BOOL)_basePreviewControllerIsBeingFullyDismissed;
- (BOOL)_canDisplayOpenInButtonForItem:(id)item;
- (BOOL)_canPerformBarButtonAction;
- (BOOL)_dismissQuickLookIfBlocked;
- (BOOL)_isBeingFullyDismissed;
- (BOOL)_isInPickMode;
- (BOOL)_isToolbarVisibleForTraitCollection:(id)collection;
- (BOOL)_needsListButton;
- (BOOL)_shouldAllowInteractiveTransitions;
- (BOOL)_topViewControllerBelongsToHierarchy:(id)hierarchy;
- (BOOL)accessibilityPerformEscape;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canPerformPrintForItem:(id)item atURL:(id)l;
- (BOOL)canPerformPrintForItem:(id)item customPrinter:(id *)printer shouldUseDefaultPrinter:(BOOL *)defaultPrinter;
- (BOOL)currentPreviewHasUnsavedEdits;
- (BOOL)hasEditedItems;
- (BOOL)isTopPreviewController;
- (BOOL)itemStore:(id)store canEditItem:(id)item;
- (BOOL)itemStore:(id)store canHandleEditedCopyOfPreviewItem:(id)item;
- (BOOL)itemStore:(id)store canMachineReadableCodeBeDetectedInPreviewItem:(id)item;
- (BOOL)itemStore:(id)store canShareItem:(id)item;
- (BOOL)parentIsNavigationController;
- (BOOL)prefersStatusBarHidden;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (BOOL)shouldUseNativeTransition;
- (CGRect)contentFrame;
- (CGRect)frameForAdditionalButtonWithActionName:(SEL)name;
- (NSInteger)currentPreviewItemIndex;
- (NSSet)_pdfItemAllowedOutputClasses;
- (QLBarButtonItem)openInButton;
- (QLItem)internalCurrentPreviewItem;
- (QLPreviewController)initWithNibName:(id)name bundle:(id)bundle;
- (QLPreviewController)initWithPreviewItems:(id)items;
- (UINavigationController)internalNavigationController;
- (UIView)accessoryViewContainer;
- (double)visibleAccessoryViewHeight;
- (id)_actionButton;
- (id)_buttonWithAccessibilityIdentifierPointer:(id)pointer inButtons:(id)buttons;
- (id)_childViewControllerForWhitePointAdaptivityStyle;
- (id)_copyBarButtons:(id)buttons;
- (id)_dismissActions;
- (id)_dismissActionsForEditedPreviewItems:(id)items;
- (id)_displayedButtonWithAccessibilityIdentifier:(id)identifier;
- (id)_doneButton;
- (id)_editedItemsForDoneActionControllerWithItems:(id)items;
- (id)_listButton;
- (id)_makeOpenInButtonWithTitle:(BOOL)title;
- (id)_navigationBarLeftButtonsWithTraitCollection:(id)collection;
- (id)_navigationBarRightButtonsWithTraitCollection:(id)collection;
- (id)_openInTitleForOpenInType:(unint64_t)type claimBinding:(id)binding;
- (id)_preferredBackgroundColor;
- (id)_toolBarButtonsWithTraitCollection:(id)collection;
- (id)_topNavigationItem;
- (id)_topPreviewController;
- (id)_topViewController;
- (id)activityControllerForURL:(id)l;
- (id)activityItemForDocumentInteractionController:(id)controller;
- (id)activityItemsConfiguration;
- (id)additionalActivitiesForDocumentInteractionController:(id)controller;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)childViewControllerForStatusBarHidden;
- (id)currentPreviewItem;
- (id)currentTracker;
- (id)dataSource;
- (id)delegate;
- (id)editedItems;
- (id)excludedActivityTypesForCurrentPreviewItem;
- (id)flexibleSpace;
- (id)interactionControllerForDismissal:(id)dismissal;
- (id)interactionControllerForPresentation:(id)presentation;
- (id)itemProviderForItem:(id)item shareableURL:(id)l;
- (id)keyCommands;
- (id)lockPDFActionForItem:(id)item atURL:(id)l;
- (id)menuActionsForDismissActions:(id)actions containsAtLeastOneUnsavedCopy:(BOOL)copy editedPreviewItems:(id)items shouldPresentDefaultActions:(BOOL)defaultActions;
- (id)navigationBarGradientView;
- (id)previewItemAtIndex:(int64_t)index;
- (id)printActionForItem:(id)item atURL:(id)l;
- (id)printInfoForDocumentInteractionController:(id)controller;
- (id)saveToFilesActionForItem:(id)item atURL:(id)l;
- (id)saveToPhotosActionForItem:(id)item atURL:(id)l;
- (id)titleMenuElementsForItem:(id)item atURL:(id)l withSuggestedActions:(id)actions;
- (id)toolbarGradientView;
- (id)viewForAdditionalButtonWithActionName:(SEL)name;
- (int64_t)_preferredWhitePointAdaptivityStyle;
- (int64_t)itemStore:(id)store editingModeForPreviewItem:(id)item;
- (int64_t)numberOfPreviewItems;
- (int64_t)preferredStatusBarStyle;
- (int64_t)preferredStatusBarUpdateAnimation;
- (unint64_t)_computePresentationMode;
- (unint64_t)_numberOfButtonsExcludingSpacersInButtons:(id)buttons disappearingOnTap:(BOOL)tap;
- (unint64_t)itemStore:(id)store editedFileBehaviorForItem:(id)item;
- (unint64_t)supportedInterfaceOrientations;
- (void)_actionButtonTapped:(id)tapped;
- (void)_asynchronouslyUpdateContentsOfPreviewItem:(id)item editedCopy:(id)copy completionHandler:(id)handler;
- (void)_configurePreviewCollectionIfNeeded;
- (void)_copyToButtonTapped:(id)tapped;
- (void)_didObtainEditsFromService;
- (void)_handleEditedPreviewItem:(id)item editedCopy:(id)copy synchronously:(BOOL)synchronously completionHandler:(id)handler;
- (void)_installGradientViewsIfNeeded;
- (void)_invalidatePreviewCollectionIfNeeded;
- (void)_invalidatePreviewCollectionIfNeededNow;
- (void)_keyCommandWasPerformed:(id)performed;
- (void)_listButtonTapped:(id)tapped;
- (void)_nextPreview;
- (void)_notifyFirstAppearanceIfNeeded;
- (void)_notifyPreviewCollectionOfDoneButtonTapWithCompletionHandler:(id)handler;
- (void)_obtainEditsFromServiceAndNotifyPreviewCollectionOfDoneButtonTappedWithCompletionHandler:(id)handler;
- (void)_openInButtonTapped:(id)tapped;
- (void)_presentLoadedPreviewCollection:(id)collection;
- (void)_presentPreviewCollection;
- (void)_previousPreview;
- (void)_printDocument:(id)document;
- (void)_promptUserAndOpenURLIfNeeded:(id)needed;
- (void)_registerForApplicationStateChangesNotifications;
- (void)_reloadDataIfNeeded;
- (void)_removePreviewCollectionFromViewHierarchy;
- (void)_saveAndDismissQuickLookIfBlocked:(id)blocked;
- (void)_saveAndObtainEditedItemsBeforeDismissalWithCompletionHandler:(id)handler;
- (void)_saveAndObtainEditsBeforeDismissalWithCompletionHandler:(id)handler;
- (void)_savePreviousNavigationVCState;
- (void)_setDefaultFullscreenStateIfNeeded;
- (void)_setPreferredWhitePointAdaptivityStyle:(int64_t)style;
- (void)_setPresentationMode:(unint64_t)mode;
- (void)_setupDocumentInteractionControllerForPresentation:(id)presentation;
- (void)_setupDocumentInteractionControllerForPresentationWithURL:(id)l isCustomURL:(BOOL)rL completionHandler:(id)handler;
- (void)_showPreviewCollection;
- (void)_showShareSheetFromBarButton:(id)button;
- (void)_stopAccessingUrlForSharingController;
- (void)_synchronouslyUpdateContentsOfPreviewItem:(id)item editedCopy:(id)copy completionHandler:(id)handler;
- (void)_toggleDebugView;
- (void)_toolbarButtonPressed:(id)pressed;
- (void)_triggerOverlayUpdateAfterDelay;
- (void)_uninstallGradientViews;
- (void)_unregisterForApplicationStateChangesNotifications;
- (void)_updateAllowInteractiveTransitionsIfNeeded;
- (void)_updateBarGradientOpacity;
- (void)_updateBarTintColors;
- (void)_updateCurrentPopoverButtonIfNeeded:(id)needed;
- (void)_updateDoneButtonMenu:(id)menu;
- (void)_updateNavigationBarBehaviorStyle;
- (void)_updateOverlayButtonsForTraitCollection:(id)collection animated:(BOOL)animated;
- (void)_updateOverlayButtonsIfNeededWithTraitCollection:(id)collection animated:(BOOL)animated updatedToolbarButtons:(id *)buttons;
- (void)_updatePreviewItem:(id)item editedCopy:(id)copy completionHandler:(id)handler;
- (void)_updateToolbarSuperview;
- (void)_updateViewHierarchyPresentation;
- (void)_viewControllerPresentationDidInitiate;
- (void)_willStartObtainingEditsFromService;
- (void)applicationDidEnterBackground:(id)background;
- (void)applyPreviewItemDisplayState:(id)state toItem:(id)item;
- (void)createDocumentPropertiesWithItem:(id)item shareableURL:(id)l;
- (void)createTemporaryEditDirectoryForItemAtIndex:(unint64_t)index completionHandler:(id)handler;
- (void)currentPreviewItemViewControllerHasUnsavedEdits:(BOOL)edits forItemUUID:(id)d;
- (void)dealloc;
- (void)didEditCopyOfPreviewItemAtIndex:(unint64_t)index editedCopy:(id)copy;
- (void)didEditCopyOfPreviewItemAtIndex:(unint64_t)index editedCopy:(id)copy completionHandler:(id)handler;
- (void)didSelectPreviewItem:(id)item;
- (void)dismissQuickLook;
- (void)expandContentOfItemAtIndex:(unint64_t)index withUUID:(id)d unarchivedItemsURLWrapper:(id)wrapper;
- (void)forwardMessage:(id)message toItemAtIndex:(unint64_t)index withUUID:(id)d completionHandler:(id)handler;
- (void)getStateRestorationUserInfo:(id)info;
- (void)handleKeyPressWithInput:(id)input modifierFlags:(int64_t)flags;
- (void)handleShortcutsActionOutputFile:(id)file forAction:(id)action;
- (void)hideNoDataView;
- (void)loadView;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)obtainAndUpdateEditedCopyOfCurrentPreviewItem:(id)item;
- (void)openURLIfAllowed:(id)allowed;
- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)handler;
- (void)presentDismissActions:(id)actions;
- (void)presentError:(id)error forAction:(id)action;
- (void)presentSaveToFilesForEditedItems:(id)items;
- (void)presentSaveToPhotoError:(id)error forItem:(id)item;
- (void)previewItemAtIndex:(unint64_t)index wasUpdatedWithLifecycleState:(int64_t)state withError:(id)error;
- (void)previewItemAtIndex:(unint64_t)index withCompletionHandler:(id)handler;
- (void)printItem:(id)item atURL:(id)l;
- (void)printItemAtURL:(id)l withCustomPrinter:(id)printer shouldUseDefaultPrinter:(BOOL)defaultPrinter;
- (void)refreshCurrentPreviewItem;
- (void)registerForScreenshotService;
- (void)reloadData;
- (void)remoteViewControllerWasInvalidated;
- (void)saveAndForceDismissQuickLookAnimated:(BOOL)animated;
- (void)saveEditsIfNecessary:(id)necessary;
- (void)sceneWillDeactivate:(id)deactivate;
- (void)screenshotService:(id)service generatePDFRepresentationWithCompletion:(id)completion;
- (void)setAdditionalLeftBarButtonItems:(id)items;
- (void)setAdditionalRightBarButtonItems:(id)items;
- (void)setAllowInteractiveTransitions:(BOOL)transitions;
- (void)setBackgroundColor:(id)color;
- (void)setCanChangeCurrentPage:(BOOL)page;
- (void)setCurrentPreviewItemIndex:(NSInteger)currentPreviewItemIndex;
- (void)setDataSource:(id)dataSource;
- (void)setDelegate:(id)delegate;
- (void)setFullscreenBackgroundColor:(id)color;
- (void)setLoadingTextForMissingFiles:(id)files;
- (void)setNavigationBarShouldBeChromeless:(BOOL)chromeless;
- (void)setNavigationBarTintColor:(id)color;
- (void)setPreviewItemDisplayState:(id)state onItemAtIndex:(unint64_t)index;
- (void)setPrinter:(id)printer;
- (void)setQuickLookVisibility:(unint64_t)visibility animated:(BOOL)animated;
- (void)setShowActionAsDefaultButton:(BOOL)button;
- (void)setToolbarShouldBeChromeless:(BOOL)chromeless;
- (void)setToolbarTintColor:(id)color;
- (void)setUseCustomActionButton:(BOOL)button;
- (void)setupAccessoryViewContainerIfNeeded;
- (void)shareSheetDidDismiss;
- (void)shareableURLForCurrentPreviewItem:(id)item;
- (void)showNoDataViewIfNeeded;
- (void)showShareSheetFromBarButton:(id)button;
- (void)showShareSheetFromRemoteViewWithPopoverTracker:(id)tracker customSharedURL:(id)l dismissCompletion:(id)completion;
- (void)showShareSheetWithPopoverTracker:(id)tracker customSharedURL:(id)l dismissCompletion:(id)completion;
- (void)toggleChromelessIfNeeded;
- (void)unregisterFromScreenshotService;
- (void)updateChromelessBars;
- (void)updateDocumentPropertiesActivityProviderWithItem:(id)item shareableURL:(id)l;
- (void)updateDocumentPropertiesDragItemsProviderWithItem:(id)item shareableURL:(id)l;
- (void)updateDocumentPropertiesMetadataForItem:(id)item withShareableURL:(id)l;
- (void)updateDoneButtonMenu;
- (void)updateKeyCommands;
- (void)updateNavigationTitle;
- (void)updateOverlayButtonsAnimated:(BOOL)animated buttons:(id)buttons excludedButtonIdentifiers:(id)identifiers;
- (void)updatePreferredTransition;
- (void)updatePreviewItemAtIndex:(unint64_t)index editedCopy:(id)copy completionHandler:(id)handler;
- (void)updateRemoteOverlayIfNeeded;
- (void)updateStateRestorationWithUserInfo:(id)info;
- (void)updateStatusBarAnimated:(BOOL)animated;
- (void)updateTitle:(id)title;
- (void)updateTitleMenuAndDocumentProperties;
- (void)updateTitleMenuWithItem:(id)item;
- (void)urlListener:(id)listener fileDidMoveTo:(id)to;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)waitForPreviewCollectionWithCompletionHandler:(id)handler;
- (void)willMoveToParentViewController:(id)controller;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation QLPreviewController

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_print_ == action || sel__printDocument_ == action)
  {
    internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
    shareableURL = [internalCurrentPreviewItem shareableURL];
    v8 = [(QLPreviewController *)self canPerformPrintForItem:internalCurrentPreviewItem atURL:shareableURL];

    return v8;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = QLPreviewController;
    return [QLPreviewController canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }
}

- (void)_printDocument:(id)document
{
  documentCopy = document;
  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__QLPreviewController_DocumentMenu___printDocument___block_invoke;
  v7[3] = &unk_278B56D10;
  v6 = internalCurrentPreviewItem;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [v6 prepareShareableURL:v7];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __52__QLPreviewController_DocumentMenu___printDocument___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shareableURL];
  if (v2)
  {
    objc_copyWeak(&v7, (a1 + 40));
    v5 = *(a1 + 32);
    v6 = v2;
    QLRunInMainThread();

    objc_destroyWeak(&v7);
  }

  else
  {
    v3 = MEMORY[0x277D43EF8];
    v4 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_ERROR, "Could not get share URL to update document menu. This could lead to no button to dismiss. #AnyItemViewController", buf, 2u);
    }
  }
}

void __52__QLPreviewController_DocumentMenu___printDocument___block_invoke_114(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained printItem:*(a1 + 32) atURL:*(a1 + 40)];
}

- (id)_topNavigationItem
{
  _topViewController = [(QLPreviewController *)self _topViewController];
  navigationItem = [_topViewController navigationItem];

  return navigationItem;
}

- (void)updateTitleMenuAndDocumentProperties
{
  if (_UIBarsDesktopNavigationBarEnabled())
  {
    _topNavigationItem = [(QLPreviewController *)self _topNavigationItem];

    if (_topNavigationItem)
    {
      internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
      objc_initWeak(&location, self);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __73__QLPreviewController_DocumentMenu__updateTitleMenuAndDocumentProperties__block_invoke;
      v6[3] = &unk_278B56D10;
      v5 = internalCurrentPreviewItem;
      v7 = v5;
      objc_copyWeak(&v8, &location);
      [v5 prepareShareableURL:v6];
      objc_destroyWeak(&v8);

      objc_destroyWeak(&location);
    }
  }
}

void __73__QLPreviewController_DocumentMenu__updateTitleMenuAndDocumentProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shareableURL];
  if (v2)
  {
    objc_copyWeak(&v7, (a1 + 40));
    v5 = *(a1 + 32);
    v6 = v2;
    QLRunInMainThread();

    objc_destroyWeak(&v7);
  }

  else
  {
    v3 = MEMORY[0x277D43EF8];
    v4 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_ERROR, "Could not get share URL to update document menu. This could lead to no button to dismiss. #AnyItemViewController", buf, 2u);
    }
  }
}

void __73__QLPreviewController_DocumentMenu__updateTitleMenuAndDocumentProperties__block_invoke_116(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained updateTitleMenuWithItem:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 createDocumentPropertiesWithItem:*(a1 + 32) shareableURL:*(a1 + 40)];
}

- (void)updateTitleMenuWithItem:(id)item
{
  itemCopy = item;
  filePresenter = [(QLPreviewController *)self filePresenter];

  if (!filePresenter)
  {
    goto LABEL_4;
  }

  filePresenter2 = [(QLPreviewController *)self filePresenter];
  presentedItem = [filePresenter2 presentedItem];
  v8 = [itemCopy isEqual:presentedItem];

  if ((v8 & 1) == 0)
  {
    filePresenter3 = [(QLPreviewController *)self filePresenter];
    [filePresenter3 setDelegate:0];

    v10 = MEMORY[0x277CCA9E8];
    filePresenter4 = [(QLPreviewController *)self filePresenter];
    [v10 removeFilePresenter:filePresenter4];

LABEL_4:
    v12 = [QLURLListener alloc];
    shareableURL = [itemCopy shareableURL];
    v14 = [(QLURLListener *)v12 initWithURL:shareableURL item:itemCopy];
    [(QLPreviewController *)self setFilePresenter:v14];

    filePresenter5 = [(QLPreviewController *)self filePresenter];
    [filePresenter5 setDelegate:self];

    v16 = MEMORY[0x277CCA9E8];
    filePresenter6 = [(QLPreviewController *)self filePresenter];
    [v16 addFilePresenter:filePresenter6];
  }

  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61__QLPreviewController_DocumentMenu__updateTitleMenuWithItem___block_invoke;
  v20[3] = &unk_278B56D88;
  objc_copyWeak(&v22, &location);
  v18 = itemCopy;
  v21 = v18;
  _topNavigationItem = [(QLPreviewController *)self _topNavigationItem];
  [_topNavigationItem setTitleMenuProvider:v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

id __61__QLPreviewController_DocumentMenu__updateTitleMenuWithItem___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D753F0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__QLPreviewController_DocumentMenu__updateTitleMenuWithItem___block_invoke_2;
  v12[3] = &unk_278B56D60;
  objc_copyWeak(&v15, (a1 + 40));
  v13 = *(a1 + 32);
  v5 = v3;
  v14 = v5;
  v6 = [v4 elementWithProvider:v12];
  v7 = MEMORY[0x277D75710];
  v16[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v9 = [v7 menuWithChildren:v8];

  objc_destroyWeak(&v15);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __61__QLPreviewController_DocumentMenu__updateTitleMenuWithItem___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61__QLPreviewController_DocumentMenu__updateTitleMenuWithItem___block_invoke_3;
    v5[3] = &unk_278B56D38;
    objc_copyWeak(&v9, a1 + 6);
    v8 = v3;
    v6 = a1[4];
    v7 = a1[5];
    [WeakRetained saveEditsIfNecessary:v5];

    objc_destroyWeak(&v9);
  }

  else
  {
    (*(v3 + 2))(v3, MEMORY[0x277CBEBF8]);
  }
}

void __61__QLPreviewController_DocumentMenu__updateTitleMenuWithItem___block_invoke_3(id *a1)
{
  objc_copyWeak(&v5, a1 + 7);
  v4 = a1[6];
  v2 = a1[4];
  v3 = a1[5];
  QLRunInMainThread();

  objc_destroyWeak(&v5);
}

void __61__QLPreviewController_DocumentMenu__updateTitleMenuWithItem___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) saveURL];
    v4 = [*(a1 + 32) editedFileURL];

    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = [*(a1 + 32) lastSavedEditedCopy];
    v6 = [*(a1 + 32) editedCopy];
    if ([v5 isEqual:v6])
    {
      v7 = [*(a1 + 32) originalContentWasUpdated];

      if (v7)
      {
LABEL_5:
        if (v3)
        {
LABEL_6:
          [WeakRetained updateDocumentPropertiesMetadataForItem:*(a1 + 32) withShareableURL:v3];
          v8 = [WeakRetained titleMenuElementsForItem:*(a1 + 32) atURL:v3 withSuggestedActions:*(a1 + 40)];
          (*(*(a1 + 48) + 16))();
          [WeakRetained updateDocumentPropertiesActivityProviderWithItem:*(a1 + 32) shareableURL:v3];
          [WeakRetained updateDocumentPropertiesDragItemsProviderWithItem:*(a1 + 32) shareableURL:v3];

LABEL_15:
          goto LABEL_16;
        }

LABEL_10:
        v10 = MEMORY[0x277D43EF8];
        v11 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          QLSInitLogging();
          v11 = *v10;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v12 = 0;
          _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_ERROR, "Could not get share URL to update document menu. This could lead to no button to dismiss. #AnyItemViewController", v12, 2u);
        }

        (*(*(a1 + 48) + 16))();
        goto LABEL_15;
      }
    }

    else
    {
    }

    v9 = [*(a1 + 32) editedFileURL];

    v3 = v9;
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  (*(*(a1 + 48) + 16))();
LABEL_16:
}

- (void)createDocumentPropertiesWithItem:(id)item shareableURL:(id)l
{
  v6 = MEMORY[0x277D75460];
  lCopy = l;
  itemCopy = item;
  v10 = [[v6 alloc] initWithURL:lCopy];
  _topNavigationItem = [(QLPreviewController *)self _topNavigationItem];
  [_topNavigationItem setDocumentProperties:v10];

  [(QLPreviewController *)self updateDocumentPropertiesActivityProviderWithItem:itemCopy shareableURL:lCopy];
  [(QLPreviewController *)self updateDocumentPropertiesDragItemsProviderWithItem:itemCopy shareableURL:lCopy];
}

- (void)updateDocumentPropertiesActivityProviderWithItem:(id)item shareableURL:(id)l
{
  itemCopy = item;
  lCopy = l;
  if ([itemCopy canBeShared])
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __99__QLPreviewController_DocumentMenu__updateDocumentPropertiesActivityProviderWithItem_shareableURL___block_invoke;
    v12[3] = &unk_278B56DB0;
    objc_copyWeak(&v14, &location);
    v13 = lCopy;
    _topNavigationItem = [(QLPreviewController *)self _topNavigationItem];
    documentProperties = [_topNavigationItem documentProperties];
    [documentProperties setActivityViewControllerProvider:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    _topNavigationItem2 = [(QLPreviewController *)self _topNavigationItem];
    documentProperties2 = [_topNavigationItem2 documentProperties];
    [documentProperties2 setActivityViewControllerProvider:0];
  }
}

id __99__QLPreviewController_DocumentMenu__updateDocumentPropertiesActivityProviderWithItem_shareableURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained previewCollection];
    [v4 documentMenuActionWillBegin];

    v5 = [v3 activityControllerForURL:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateDocumentPropertiesDragItemsProviderWithItem:(id)item shareableURL:(id)l
{
  itemCopy = item;
  lCopy = l;
  if ([itemCopy canBeShared])
  {
    objc_initWeak(&location, self);
    v12 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v15, &location);
    v13 = itemCopy;
    v14 = lCopy;
    v8 = [(QLPreviewController *)self _topNavigationItem:v12];
    documentProperties = [v8 documentProperties];
    [documentProperties setDragItemsProvider:&v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    _topNavigationItem = [(QLPreviewController *)self _topNavigationItem];
    documentProperties2 = [_topNavigationItem documentProperties];
    [documentProperties2 setDragItemsProvider:0];
  }
}

id __100__QLPreviewController_DocumentMenu__updateDocumentPropertiesDragItemsProviderWithItem_shareableURL___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained itemProviderForItem:*(a1 + 32) shareableURL:*(a1 + 40)];
    v5 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v4];
    [v5 setLocalObject:*(a1 + 32)];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)updateDocumentPropertiesMetadataForItem:(id)item withShareableURL:(id)l
{
  itemCopy = item;
  lCopy = l;
  v8 = objc_alloc_init(MEMORY[0x277CD46A0]);
  previewItemContentType = [itemCopy previewItemContentType];
  [v8 setType:previewItemContentType];

  previewItemTitle = [itemCopy previewItemTitle];
  [v8 setName:previewItemTitle];

  fetcher = [itemCopy fetcher];
  itemSize = [fetcher itemSize];
  [v8 setSize:{objc_msgSend(itemSize, "unsignedIntegerValue")}];

  v13 = objc_alloc_init(MEMORY[0x277CD46B8]);
  [v13 setType:0];
  v14 = objc_alloc(MEMORY[0x277CD46B0]);
  mIMEType = [itemCopy MIMEType];
  v16 = [v14 initByReferencingFileURL:lCopy MIMEType:mIMEType properties:v13];
  [v8 setThumbnail:v16];

  v17 = objc_alloc(MEMORY[0x277CDAAD8]);
  QLCGSizeFromQLItemThumbnailSize();
  v19 = v18;
  v21 = v20;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v24 = [v17 initWithFileAtURL:lCopy size:-1 scale:v19 representationTypes:{v21, v23}];

  objc_initWeak(&location, self);
  mEMORY[0x277CDAAE0] = [MEMORY[0x277CDAAE0] sharedGenerator];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __94__QLPreviewController_DocumentMenu__updateDocumentPropertiesMetadataForItem_withShareableURL___block_invoke;
  v30[3] = &unk_278B56E28;
  objc_copyWeak(&v32, &location);
  v26 = v13;
  v31 = v26;
  [mEMORY[0x277CDAAE0] generateBestRepresentationForRequest:v24 completionHandler:v30];

  v27 = objc_alloc_init(MEMORY[0x277CD46C8]);
  [v27 setOriginalURL:lCopy];
  [v27 setSpecialization:v8];
  _topNavigationItem = [(QLPreviewController *)self _topNavigationItem];
  documentProperties = [_topNavigationItem documentProperties];
  [documentProperties setMetadata:v27];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __94__QLPreviewController_DocumentMenu__updateDocumentPropertiesMetadataForItem_withShareableURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = v3;
    v6 = *(a1 + 32);
    QLRunInMainThread();
  }
}

void __94__QLPreviewController_DocumentMenu__updateDocumentPropertiesMetadataForItem_withShareableURL___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _topNavigationItem];
  v3 = [v2 documentProperties];
  v4 = [v3 metadata];
  v11 = [v4 copy];

  v5 = objc_alloc(MEMORY[0x277CD46B0]);
  v6 = [*(a1 + 40) UIImage];
  v7 = [v5 initWithPlatformImage:v6 properties:*(a1 + 48)];
  v8 = [v11 specialization];
  [v8 setThumbnail:v7];

  v9 = [*(a1 + 32) _topNavigationItem];
  v10 = [v9 documentProperties];
  [v10 setMetadata:v11];
}

- (id)titleMenuElementsForItem:(id)item atURL:(id)l withSuggestedActions:(id)actions
{
  v61 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  lCopy = l;
  actionsCopy = actions;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  v48 = lCopy;
  v49 = itemCopy;
  v13 = [(QLPreviewController *)self saveToFilesActionForItem:itemCopy atURL:lCopy];
  if (v13)
  {
    [array2 addObject:v13];
  }

  v14 = [(QLPreviewController *)self saveToPhotosActionForItem:itemCopy atURL:v48];
  if (v14)
  {
    [array2 addObject:v14];
  }

  v15 = [(QLPreviewController *)self lockPDFActionForItem:v49 atURL:v48];
  if (v15)
  {
    [array2 addObject:v15];
  }

  v43 = v15;
  v44 = v14;
  v45 = v13;
  if ([array2 count])
  {
    v16 = [MEMORY[0x277D75710] menuWithTitle:&stru_284D5E510 image:0 identifier:0 options:1 children:array2];
    [array addObject:v16];
  }

  v46 = array2;
  v47 = array;
  array3 = [MEMORY[0x277CBEB18] array];
  mainBundleSupportsPrintCommand = [MEMORY[0x277CCA8D8] mainBundleSupportsPrintCommand];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = actionsCopy;
  v18 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  v19 = selfCopy;
  v20 = 0x277D75000uLL;
  if (v18)
  {
    v21 = v18;
    v22 = *v57;
    v53 = *MEMORY[0x277D76D20];
    v52 = *MEMORY[0x277D76CC8];
    do
    {
      v23 = 0;
      do
      {
        if (*v57 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v56 + 1) + 8 * v23);
        v25 = *(v20 + 1808);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = 0;
          goto LABEL_21;
        }

        v26 = v24;
        v27 = v26;
        if (!v26)
        {
          goto LABEL_21;
        }

        identifier = [v26 identifier];
        v29 = [identifier isEqual:v53];

        if (v29)
        {
          if ([(QLPreviewController *)v19 canPerformAction:sel_print_ withSender:v19])
          {
            if (mainBundleSupportsPrintCommand)
            {
              v30 = array3;
              v31 = v27;
              goto LABEL_22;
            }

            v37 = [(QLPreviewController *)v19 printActionForItem:v49 atURL:v48];
            if (v37)
            {
              [array3 addObject:v37];
            }
          }

          else
          {
            v36 = *MEMORY[0x277D43EF8];
            if (!*MEMORY[0x277D43EF8])
            {
              QLSInitLogging();
              v36 = *MEMORY[0x277D43EF8];
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23A714000, v36, OS_LOG_TYPE_DEFAULT, "Print can be offered by a responder in the responder chain but QuickLook only shows its own #AnyItemViewController", buf, 2u);
            }
          }
        }

        else
        {
          identifier2 = [v27 identifier];
          if (([identifier2 isEqual:v52] & 1) == 0)
          {

LABEL_21:
            v30 = array3;
            v31 = v24;
LABEL_22:
            [v30 addObject:v31];
            goto LABEL_23;
          }

          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          v35 = [bundleIdentifier isEqualToString:@"com.apple.DocumentsApp"];

          if (v35)
          {
            v19 = selfCopy;
            v20 = 0x277D75000;
            goto LABEL_21;
          }

          v38 = *MEMORY[0x277D43EF8];
          if (!*MEMORY[0x277D43EF8])
          {
            QLSInitLogging();
            v38 = *MEMORY[0x277D43EF8];
          }

          v19 = selfCopy;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23A714000, v38, OS_LOG_TYPE_DEFAULT, "QuickLook only shows document-related suggested items in its title menu when presented from Files #AnyItemViewController", buf, 2u);
          }

          v20 = 0x277D75000;
        }

LABEL_23:

        ++v23;
      }

      while (v21 != v23);
      v39 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      v21 = v39;
    }

    while (v39);
  }

  if ([array3 count])
  {
    v40 = [*(v20 + 1808) menuWithTitle:&stru_284D5E510 image:0 identifier:0 options:1 children:array3];
    [v47 addObject:v40];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v47;
}

- (void)presentError:(id)error forAction:(id)action
{
  actionCopy = action;
  userInfo = [error userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = QLLocalizedString();
    displayString = [actionCopy displayString];
    v9 = [v10 stringWithFormat:v11, displayString];
  }

  v13 = v9;
  QLRunInMainThread();
}

void __60__QLPreviewController_DocumentMenu__presentError_forAction___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:*(a1 + 32) preferredStyle:1];
  v2 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
  [v5 addAction:v2];
  v3 = [v5 actions];
  v4 = [v3 lastObject];
  [v5 setPreferredAction:v4];

  [*(a1 + 40) presentViewController:v5 animated:1 completion:0];
}

- (void)handleShortcutsActionOutputFile:(id)file forAction:(id)action
{
  fileCopy = file;
  v4 = fileCopy;
  QLRunInMainThread();
}

void __79__QLPreviewController_DocumentMenu__handleShortcutsActionOutputFile_forAction___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D75458]);
  v3 = [*(a1 + 32) fileURL];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 initForExportingURLs:v4 asCopy:1];

  [v5 _setIsContentManaged:{objc_msgSend(*(a1 + 40), "isContentManaged")}];
  [*(a1 + 40) presentViewController:v5 animated:1 completion:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)saveToFilesActionForItem:(id)item atURL:(id)l
{
  itemCopy = item;
  lCopy = l;
  if ([itemCopy canBeShared])
  {
    v8 = QLLocalizedString();
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"folder"];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D750C8];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__QLPreviewController_DocumentMenu__saveToFilesActionForItem_atURL___block_invoke;
    v23[3] = &unk_278B56E78;
    objc_copyWeak(&v25, &location);
    v11 = lCopy;
    v24 = v11;
    v12 = [v10 actionWithTitle:v8 image:v9 identifier:0 handler:v23];
    saveURL = [itemCopy saveURL];
    v14 = saveURL;
    if (saveURL)
    {
      v15 = saveURL;
    }

    else
    {
      v15 = v11;
    }

    v16 = v15;

    if (FPURLMightBeInFileProvider())
    {
      v17 = MEMORY[0x277D753F0];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __68__QLPreviewController_DocumentMenu__saveToFilesActionForItem_atURL___block_invoke_2;
      v20[3] = &unk_278B56EF0;
      v21 = v16;
      v22 = v12;
      v18 = [v17 elementWithProvider:v20];
    }

    else
    {
      v18 = v12;
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __68__QLPreviewController_DocumentMenu__saveToFilesActionForItem_atURL___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained previewCollection];
    [v4 documentMenuActionWillBegin];

    v5 = objc_alloc(MEMORY[0x277D75458]);
    v9[0] = *(a1 + 32);
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v7 = [v5 initForExportingURLs:v6 asCopy:1];

    [v7 _setIsContentManaged:{objc_msgSend(v3, "isContentManaged")}];
    [v3 presentViewController:v7 animated:1 completion:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __68__QLPreviewController_DocumentMenu__saveToFilesActionForItem_atURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CC6408] defaultManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__QLPreviewController_DocumentMenu__saveToFilesActionForItem_atURL___block_invoke_3;
  v7[3] = &unk_278B56EC8;
  v9 = v3;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v6 = v3;
  [v4 fetchItemForURL:v5 completionHandler:v7];
}

void __68__QLPreviewController_DocumentMenu__saveToFilesActionForItem_atURL___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 40);
  v5 = *(a1 + 32);
  v4 = v3;
  QLRunInMainThread();
}

void __68__QLPreviewController_DocumentMenu__saveToFilesActionForItem_atURL___block_invoke_4(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = a1[6];
  if (a1[4])
  {
    v2 = *(v1 + 16);
    v3 = *MEMORY[0x277D85DE8];
    v4 = MEMORY[0x277CBEBF8];
    v5 = a1[6];

    v2(v5, v4);
  }

  else
  {
    v8[0] = a1[5];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    (*(v1 + 16))(v1, v6);

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (id)printActionForItem:(id)item atURL:(id)l
{
  itemCopy = item;
  lCopy = l;
  if ([itemCopy canBeShared])
  {
    printer = [(QLPreviewController *)self printer];
    v23 = 0;
    v22 = printer;
    v9 = [(QLPreviewController *)self canPerformPrintForItem:itemCopy customPrinter:&v22 shouldUseDefaultPrinter:&v23];
    v10 = v22;

    if (v9)
    {
      v11 = QLLocalizedString();
      v12 = [MEMORY[0x277D755B8] systemImageNamed:@"printer"];
      objc_initWeak(&location, self);
      v13 = MEMORY[0x277D750C8];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __62__QLPreviewController_DocumentMenu__printActionForItem_atURL___block_invoke;
      v16[3] = &unk_278B56F18;
      objc_copyWeak(&v19, &location);
      v17 = lCopy;
      v18 = v10;
      v20 = v23;
      v14 = [v13 actionWithTitle:v11 image:v12 identifier:0 handler:v16];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __62__QLPreviewController_DocumentMenu__printActionForItem_atURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained printItemAtURL:*(a1 + 32) withCustomPrinter:*(a1 + 40) shouldUseDefaultPrinter:*(a1 + 56)];
}

- (BOOL)canPerformPrintForItem:(id)item atURL:(id)l
{
  itemCopy = item;
  if ([itemCopy canBeShared])
  {
    printer = [(QLPreviewController *)self printer];
    v11 = 0;
    v10 = printer;
    v7 = [(QLPreviewController *)self canPerformPrintForItem:itemCopy customPrinter:&v10 shouldUseDefaultPrinter:&v11];
    v8 = v10;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canPerformPrintForItem:(id)item customPrinter:(id *)printer shouldUseDefaultPrinter:(BOOL *)defaultPrinter
{
  itemCopy = item;
  if ([itemCopy canBeShared])
  {
    previewItemContentType = [itemCopy previewItemContentType];
    if (previewItemContentType)
    {
      v9 = [MEMORY[0x277CE1CB8] typeWithIdentifier:previewItemContentType];
    }

    else
    {
      v9 = 0;
    }

    v10 = 0;
    if (([v9 conformsToType:*MEMORY[0x277CE1DD8]] & 1) == 0)
    {
      printableUTIs = [MEMORY[0x277D41248] printableUTIs];
      *defaultPrinter = [printableUTIs containsObject:previewItemContentType];

      if (*defaultPrinter || *printer)
      {
        v10 = 1;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)printItemAtURL:(id)l withCustomPrinter:(id)printer shouldUseDefaultPrinter:(BOOL)defaultPrinter
{
  lCopy = l;
  printerCopy = printer;
  previewCollection = [(QLPreviewController *)self previewCollection];
  [previewCollection documentMenuActionWillBegin];

  v11 = objc_alloc_init(MEMORY[0x277D41248]);
  [v11 setIsContentManaged:{-[QLPreviewController isContentManaged](self, "isContentManaged")}];
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  [v11 setPrintingItem:lCopy];
  if (printerCopy && !defaultPrinter)
  {
    v13 = [[QLPreviewPrinter alloc] initWithPreviewPrinter:printerCopy];
    [v11 setPrintPageRenderer:v13];
  }

  view = [(QLPreviewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__QLPreviewController_DocumentMenu__printItemAtURL_withCustomPrinter_shouldUseDefaultPrinter___block_invoke;
  v18[3] = &unk_278B56F40;
  v20 = startAccessingSecurityScopedResource;
  v19 = lCopy;
  v17 = lCopy;
  [v11 _presentAnimated:1 hostingScene:windowScene completionHandler:v18];
}

uint64_t __94__QLPreviewController_DocumentMenu__printItemAtURL_withCustomPrinter_shouldUseDefaultPrinter___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) stopAccessingSecurityScopedResource];
  }

  return result;
}

- (void)printItem:(id)item atURL:(id)l
{
  lCopy = l;
  itemCopy = item;
  printer = [(QLPreviewController *)self printer];
  v12 = 0;
  v11 = printer;
  v9 = [(QLPreviewController *)self canPerformPrintForItem:itemCopy customPrinter:&v11 shouldUseDefaultPrinter:&v12];

  v10 = v11;
  if (v9)
  {
    [(QLPreviewController *)self printItemAtURL:lCopy withCustomPrinter:v10 shouldUseDefaultPrinter:v12];
  }
}

- (id)activityControllerForURL:(id)l
{
  v12[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = objc_alloc(MEMORY[0x277D546D8]);
  v12[0] = lCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v5 initWithActivityItems:v6 applicationActivities:0];

  [v7 setIsContentManaged:{-[QLPreviewController isContentManaged](self, "isContentManaged")}];
  excludedActivityTypesForCurrentPreviewItem = [(QLPreviewController *)self excludedActivityTypesForCurrentPreviewItem];
  [v7 setExcludedActivityTypes:excludedActivityTypesForCurrentPreviewItem];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__QLPreviewController_DocumentMenu__activityControllerForURL___block_invoke;
  v11[3] = &unk_278B56F68;
  v11[4] = self;
  [v7 setCompletionWithItemsHandler:v11];
  if ([lCopy startAccessingSecurityScopedResource])
  {
    [(QLPreviewController *)self setAccessedUrlForSharingController:lCopy];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)lockPDFActionForItem:(id)item atURL:(id)l
{
  itemCopy = item;
  lCopy = l;
  if ([itemCopy previewItemType] == 11)
  {
    v8 = QLLocalizedString();
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"lock"];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D753F0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__QLPreviewController_DocumentMenu__lockPDFActionForItem_atURL___block_invoke;
    v15[3] = &unk_278B56D60;
    objc_copyWeak(&v18, &location);
    v11 = v8;
    v16 = v11;
    v12 = v9;
    v17 = v12;
    v13 = [v10 elementWithProvider:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __64__QLPreviewController_DocumentMenu__lockPDFActionForItem_atURL___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [WeakRetained previewCollection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__QLPreviewController_DocumentMenu__lockPDFActionForItem_atURL___block_invoke_2;
  v7[3] = &unk_278B56FE0;
  v8 = a1[4];
  v9 = a1[5];
  objc_copyWeak(&v11, a1 + 6);
  v6 = v3;
  v10 = v6;
  [v5 shouldDisplayLockActivityWithCompletionHandler:v7];

  objc_destroyWeak(&v11);
}

void __64__QLPreviewController_DocumentMenu__lockPDFActionForItem_atURL___block_invoke_2(id *a1, char a2)
{
  v7 = a2;
  v3 = a1[4];
  v4 = a1[5];
  objc_copyWeak(&v6, a1 + 7);
  v5 = a1[6];
  QLRunInMainThread();

  objc_destroyWeak(&v6);
}

void __64__QLPreviewController_DocumentMenu__lockPDFActionForItem_atURL___block_invoke_3(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = MEMORY[0x277D750C8];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__QLPreviewController_DocumentMenu__lockPDFActionForItem_atURL___block_invoke_4;
    v12[3] = &unk_278B56F90;
    objc_copyWeak(&v13, (a1 + 56));
    v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v12];
    v6 = *(a1 + 48);
    v14[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    (*(v6 + 16))(v6, v7);

    objc_destroyWeak(&v13);
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(*(a1 + 48) + 16);
    v11 = *MEMORY[0x277D85DE8];

    v10();
  }
}

void __64__QLPreviewController_DocumentMenu__lockPDFActionForItem_atURL___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained previewCollection];
  [v3 documentMenuActionWillBegin];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 previewCollection];
  [v4 requestLockForCurrentItem];
}

- (id)saveToPhotosActionForItem:(id)item atURL:(id)l
{
  itemCopy = item;
  lCopy = l;
  if (![itemCopy canBeShared] || objc_msgSend(itemCopy, "previewItemType") != 2 && objc_msgSend(itemCopy, "previewItemType") != 3 && objc_msgSend(itemCopy, "previewItemType") != 1)
  {
    goto LABEL_17;
  }

  if ([itemCopy previewItemType] == 1)
  {
    previewItemContentType = [itemCopy previewItemContentType];
    if (previewItemContentType)
    {
      v9 = [MEMORY[0x277CE1CB8] typeWithIdentifier:previewItemContentType];
    }

    else
    {
      v9 = 0;
    }

    if ([v9 conformsToType:*MEMORY[0x277CE1D00]])
    {

LABEL_17:
      v16 = 0;
      goto LABEL_18;
    }

    v10 = [v9 conformsToType:*MEMORY[0x277CE1DD8]];

    if (v10)
    {
      goto LABEL_17;
    }
  }

  previewCollection = [(QLPreviewController *)self previewCollection];
  isRemote = [previewCollection isRemote];

  if (!isRemote)
  {
    goto LABEL_17;
  }

  v13 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.down"];
  if ([itemCopy previewItemType] == 2 || objc_msgSend(itemCopy, "previewItemType") == 3 || objc_msgSend(itemCopy, "previewItemType") == 1)
  {
    v14 = QLLocalizedString();
  }

  else
  {
    v14 = 0;
  }

  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D750C8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__QLPreviewController_DocumentMenu__saveToPhotosActionForItem_atURL___block_invoke;
  v18[3] = &unk_278B57030;
  objc_copyWeak(&v22, &location);
  v19 = lCopy;
  selfCopy = self;
  v21 = itemCopy;
  v16 = [v15 actionWithTitle:v14 image:v13 identifier:0 handler:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

LABEL_18:

  return v16;
}

void __69__QLPreviewController_DocumentMenu__saveToPhotosActionForItem_atURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained previewCollection];
    [v6 documentMenuActionWillBegin];

    v7 = [MEMORY[0x277CC6438] wrapperWithURL:*(a1 + 32) readonly:1 error:0];
    v8 = [*(a1 + 40) previewCollection];
    v9 = [*(a1 + 48) previewItemType];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__QLPreviewController_DocumentMenu__saveToPhotosActionForItem_atURL___block_invoke_2;
    v10[3] = &unk_278B57008;
    objc_copyWeak(&v12, (a1 + 56));
    v11 = *(a1 + 48);
    [v8 saveIntoPhotoLibraryMediaWithURLWrapper:v7 previewItemType:v9 completionHandler:v10];

    objc_destroyWeak(&v12);
  }
}

void __69__QLPreviewController_DocumentMenu__saveToPhotosActionForItem_atURL___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277D43EF8];
    v7 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_DEFAULT, "Saved item to photos #AnyItemViewController", v9, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained presentSaveToPhotoError:v5 forItem:*(a1 + 32)];
  }
}

- (void)presentSaveToPhotoError:(id)error forItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  itemCopy = item;
  v8 = MEMORY[0x277D43EF8];
  v9 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    localizedDescription = [errorCopy localizedDescription];
    *buf = 138412290;
    v21 = localizedDescription;
    _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "Error saving item to photos: %@ #AnyItemViewController", buf, 0xCu);
  }

  if ([itemCopy previewItemType] == 2 || objc_msgSend(itemCopy, "previewItemType") == 3 || objc_msgSend(itemCopy, "previewItemType") == 1)
  {
    v12 = QLLocalizedString();
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Error" message:v12 preferredStyle:1];
  v14 = MEMORY[0x277D750F8];
  v15 = QLLocalizedString();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__QLPreviewController_DocumentMenu__presentSaveToPhotoError_forItem___block_invoke;
  v19[3] = &unk_278B57058;
  v19[4] = self;
  v16 = [v14 actionWithTitle:v15 style:0 handler:v19];
  [v13 addAction:v16];

  v17 = v13;
  QLRunInMainThread();

  v18 = *MEMORY[0x277D85DE8];
}

- (void)urlListener:(id)listener fileDidMoveTo:(id)to
{
  toCopy = to;
  v4 = toCopy;
  QLRunInMainThread();
}

void __72__QLPreviewController_QLURLListenerDelegate__urlListener_fileDidMoveTo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastPathComponent];
  v9 = [v2 stringByDeletingPathExtension];

  v3 = [*(a1 + 40) previewCollection];
  [v3 setTitle:v9];

  [*(a1 + 40) setTitle:v9];
  v4 = [*(a1 + 40) currentPreviewItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [*(a1 + 40) currentPreviewItem];
    [v6 setOverridenItemTitle:v9];

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) currentPreviewItem];
    [v8 setOverridenItemURL:v7];
  }
}

- (id)excludedActivityTypesForCurrentPreviewItem
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D43F58];
  currentPreviewItem = [(QLPreviewController *)self currentPreviewItem];
  v6 = [v4 itemWithPreviewItem:currentPreviewItem];

  if ([v6 previewItemType] == 3)
  {
    [v3 addObject:*MEMORY[0x277D54780]];
  }

  delegate = [(QLPreviewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(QLPreviewController *)self delegate];
    v10 = [delegate2 excludedActivityTypesForPreviewController:self];
    [v3 addObjectsFromArray:v10];
  }

  [v3 addObject:*MEMORY[0x277D54730]];
  [v3 addObject:*MEMORY[0x277D54790]];

  return v3;
}

- (id)printInfoForDocumentInteractionController:(id)controller
{
  currentItemProvider = [(QLPreviewController *)self currentItemProvider];
  printInfo = [currentItemProvider printInfo];

  return printInfo;
}

- (id)activityItemForDocumentInteractionController:(id)controller
{
  controllerCopy = controller;
  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  previewItemType = [internalCurrentPreviewItem previewItemType];

  if (previewItemType == 3)
  {
    gotLoadHelper_x8__OBJC_CLASS___PUVideoComplementItemSource(v7);
    v9 = objc_alloc(*(v8 + 168));
    v10 = [controllerCopy URL];
    currentItemProvider4 = [v9 initWithVideoComplementBundleAtURL:v10];
  }

  else
  {
    currentItemProvider = [(QLPreviewController *)self currentItemProvider];

    if (!currentItemProvider)
    {
      v13 = objc_opt_new();
      [(QLPreviewController *)self setCurrentItemProvider:v13];
    }

    internalCurrentPreviewItem2 = [(QLPreviewController *)self internalCurrentPreviewItem];
    currentItemProvider2 = [(QLPreviewController *)self currentItemProvider];
    [currentItemProvider2 setActivityPreviewItem:internalCurrentPreviewItem2];

    v16 = [QLPreviewPrinter alloc];
    printer = [(QLPreviewController *)self printer];
    v18 = [(QLPreviewPrinter *)v16 initWithPreviewPrinter:printer];
    currentItemProvider3 = [(QLPreviewController *)self currentItemProvider];
    [currentItemProvider3 setPrinter:v18];

    currentItemProvider4 = [(QLPreviewController *)self currentItemProvider];
  }

  return currentItemProvider4;
}

- (id)additionalActivitiesForDocumentInteractionController:(id)controller
{
  v4 = objc_opt_new();
  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  previewItemType = [internalCurrentPreviewItem previewItemType];

  if (previewItemType == 3)
  {
    gotLoadHelper_x8__OBJC_CLASS___PUUISaveToCameraRollActivity(v7);
    v9 = *(v8 + 160);
    v10 = objc_opt_new();
    [v4 addObject:v10];
  }

  delegate = [(QLPreviewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(QLPreviewController *)self delegate];
    v14 = [delegate2 additionalActivitiesTypesForPreviewController:self];
    [v4 addObjectsFromArray:v14];
  }

  return v4;
}

- (id)activityItemsConfiguration
{
  v20[1] = *MEMORY[0x277D85DE8];
  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  saveURL = [internalCurrentPreviewItem saveURL];
  editedFileURL = [internalCurrentPreviewItem editedFileURL];

  if (editedFileURL)
  {
    lastSavedEditedCopy = [internalCurrentPreviewItem lastSavedEditedCopy];
    editedCopy = [internalCurrentPreviewItem editedCopy];
    if ([lastSavedEditedCopy isEqual:editedCopy])
    {
      originalContentWasUpdated = [internalCurrentPreviewItem originalContentWasUpdated];

      if (originalContentWasUpdated)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    editedFileURL2 = [internalCurrentPreviewItem editedFileURL];

    saveURL = editedFileURL2;
  }

LABEL_7:
  v10 = [(QLPreviewController *)self itemProviderForItem:internalCurrentPreviewItem shareableURL:saveURL];
  v11 = objc_alloc(MEMORY[0x277D750F0]);
  v20[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v13 = [v11 initWithItemProviders:v12];

  title = [(QLPreviewController *)self title];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__QLPreviewController_Activity__activityItemsConfiguration__block_invoke;
  v18[3] = &unk_278B570A0;
  v19 = title;
  v15 = title;
  [v13 setMetadataProvider:v18];

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

id __59__QLPreviewController_Activity__activityItemsConfiguration__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isEqual:*MEMORY[0x277D76600]])
  {
    v3 = objc_alloc_init(MEMORY[0x277CD46C8]);
    [v3 setTitle:*(a1 + 32)];
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return v3;
}

- (id)itemProviderForItem:(id)item shareableURL:(id)l
{
  itemCopy = item;
  lCopy = l;
  v8 = objc_alloc_init(MEMORY[0x277CCAA88]);
  previewItemTitle = [itemCopy previewItemTitle];
  [v8 setSuggestedName:previewItemTitle];

  fetcher = [itemCopy fetcher];
  shareableItem = [fetcher shareableItem];

  previewItemContentType = [itemCopy previewItemContentType];
  if (previewItemContentType)
  {
    v13 = [MEMORY[0x277CE1CB8] typeWithIdentifier:previewItemContentType];
  }

  else
  {
    v13 = 0;
  }

  objc_initWeak(location, self);
  if (lCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__QLPreviewController_Activity__itemProviderForItem_shareableURL___block_invoke;
    aBlock[3] = &unk_278B570F0;
    objc_copyWeak(&v30, location);
    v14 = itemCopy;
    v28 = v14;
    v15 = lCopy;
    v29 = v15;
    v16 = _Block_copy(aBlock);
    if (v13)
    {
      [v8 registerFileRepresentationForContentType:v13 visibility:0 openInPlace:1 loadHandler:v16];
    }

    else if (previewItemContentType)
    {
      [v8 registerFileRepresentationForTypeIdentifier:previewItemContentType fileOptions:1 visibility:0 loadHandler:v16];
    }

    else
    {
      v19 = objc_opt_class();
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __66__QLPreviewController_Activity__itemProviderForItem_shareableURL___block_invoke_3;
      v23[3] = &unk_278B57118;
      objc_copyWeak(&v26, location);
      v24 = v14;
      v25 = v15;
      [v8 registerObjectOfClass:v19 visibility:0 loadHandler:v23];

      objc_destroyWeak(&v26);
    }

    objc_destroyWeak(&v30);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __66__QLPreviewController_Activity__itemProviderForItem_shareableURL___block_invoke_5;
    v20[3] = &unk_278B57140;
    objc_copyWeak(&v22, location);
    v21 = itemCopy;
    v17 = _Block_copy(v20);
    if (v13)
    {
      [v8 registerDataRepresentationForContentType:v13 visibility:0 loadHandler:v17];
    }

    else if (previewItemContentType)
    {
      [v8 registerDataRepresentationForTypeIdentifier:previewItemContentType visibility:0 loadHandler:v17];
    }

    objc_destroyWeak(&v22);
  }

  objc_destroyWeak(location);

  return v8;
}

uint64_t __66__QLPreviewController_Activity__itemProviderForItem_shareableURL___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7 = [WeakRetained internalCurrentPreviewItem];

    if (v6 == v7)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __66__QLPreviewController_Activity__itemProviderForItem_shareableURL___block_invoke_2;
      v13[3] = &unk_278B570C8;
      v14 = v3;
      [v5 shareableURLForCurrentPreviewItem:v13];
    }

    else
    {
      (*(v3 + 2))(v3, *(a1 + 40), 1, 0);
    }
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA068];
    v16[0] = @"QLPreviewController not available anymore.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.quicklook.QLPreviewController" code:0 userInfo:v9];

    (*(v3 + 2))(v3, 0, 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __66__QLPreviewController_Activity__itemProviderForItem_shareableURL___block_invoke_3(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7 = [WeakRetained internalCurrentPreviewItem];

    if (v6 == v7)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __66__QLPreviewController_Activity__itemProviderForItem_shareableURL___block_invoke_4;
      v13[3] = &unk_278B570C8;
      v14 = v3;
      [v5 shareableURLForCurrentPreviewItem:v13];
    }

    else
    {
      (*(v3 + 2))(v3, *(a1 + 40), 0);
    }
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA068];
    v16[0] = @"QLPreviewController not available anymore.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.quicklook.QLPreviewController" code:0 userInfo:v9];

    (*(v3 + 2))(v3, 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __66__QLPreviewController_Activity__itemProviderForItem_shareableURL___block_invoke_5(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) fetcher];
    v6 = [v5 shareableItem];
    v3[2](v3, v6, 0);
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA068];
    v12[0] = @"QLPreviewController not available anymore.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v5 = [v7 errorWithDomain:@"com.apple.quicklook.QLPreviewController" code:0 userInfo:v8];

    (v3)[2](v3, 0, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (QLPreviewController)initWithPreviewItems:(id)items
{
  itemsCopy = items;
  v10.receiver = self;
  v10.super_class = QLPreviewController;
  v5 = [(QLPreviewController *)&v10 init];
  if (v5)
  {
    v6 = [[QLPreviewItemStore alloc] initWithPreviewItems:itemsCopy];
    previewItemStore = v5->_previewItemStore;
    v5->_previewItemStore = v6;

    [(QLPreviewItemStore *)v5->_previewItemStore setDelegate:v5];
    [(QLPreviewController *)v5 setDataSource:v5->_previewItemStore];
    v8 = v5;
  }

  return v5;
}

+ (QLPreviewController)controllerWithItemStore:(id)store
{
  storeCopy = store;
  v4 = objc_opt_new();
  v5 = v4[162];
  v4[162] = storeCopy;
  v6 = storeCopy;

  [v4 setDataSource:v6];

  return v4;
}

- (QLPreviewController)initWithNibName:(id)name bundle:(id)bundle
{
  v17.receiver = self;
  v17.super_class = QLPreviewController;
  v4 = [(QLPreviewController *)&v17 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_currentPreviewItemIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(QLPreviewController *)v4 setAutomaticallyAdjustsScrollViewInsets:0];
    v5->_presentationMode = 0;
    v5->_willTransitionToInternalView = 0;
    [(QLPreviewController *)v5 setAllowInteractiveTransitions:1];
    v5->_changingCurrentPreview = 0;
    v6 = objc_opt_new();
    toolbarController = v5->_toolbarController;
    v5->_toolbarController = v6;

    v8 = objc_opt_new();
    previewItemStore = v5->_previewItemStore;
    v5->_previewItemStore = v8;

    [(QLPreviewItemStore *)v5->_previewItemStore setItemProvider:v5];
    [(QLPreviewItemStore *)v5->_previewItemStore setDelegate:v5];
    [(QLPreviewController *)v5 setModalPresentationCapturesStatusBarAppearance:1];
    mEMORY[0x277D43E98] = [MEMORY[0x277D43E98] sharedManager];
    v5->_whitePointAdaptivityStyle = 0;
    v5->_canChangeCurrentPage = 1;
    v5->_canShowToolbar = 1;
    v5->_canShowNavBar = 1;
    v5->_deferredSetIndex = 0x7FFFFFFFFFFFFFFFLL;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = systemBackgroundColor;

    blackColor = [MEMORY[0x277D75348] blackColor];
    fullscreenBackgroundColor = v5->_fullscreenBackgroundColor;
    v5->_fullscreenBackgroundColor = blackColor;

    [(QLPreviewController *)v5 _registerForApplicationStateChangesNotifications];
    v15 = v5;
  }

  return v5;
}

- (void)viewDidLoad
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = QLPreviewController;
  [(QLPreviewController *)&v11 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(QLPreviewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  [(QLPreviewController *)self setTransitioningDelegate:self];
  [(QLPreviewController *)self toggleChromelessIfNeeded];
  objc_initWeak(&location, self);
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__QLPreviewController_viewDidLoad__block_invoke;
  v8[3] = &unk_278B57168;
  objc_copyWeak(&v9, &location);
  v6 = [(QLPreviewController *)self registerForTraitChanges:v5 withHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  v7 = *MEMORY[0x277D85DE8];
}

void __34__QLPreviewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateNavigationBarBehaviorStyle];
}

- (void)willMoveToParentViewController:(id)controller
{
  if (controller && [(QLPreviewController *)self parentIsNavigationController])
  {
    [(QLPreviewController *)self _savePreviousNavigationVCState];
    view = [(QLPreviewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    statusBarManager = [windowScene statusBarManager];
    -[QLPreviewController setPreviousStatusBarHidden:](self, "setPreviousStatusBarHidden:", [statusBarManager isStatusBarHidden]);
  }

  MEMORY[0x2821F96F8]();
}

void *__38__QLPreviewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[131] != result[130])
  {
    return [result _setPreferredWhitePointAdaptivityStyle:?];
  }

  return result;
}

void __41__QLPreviewController_viewWillDisappear___block_invoke_2(uint64_t a1)
{
  if (![*(a1 + 32) quickLookVisibility] || objc_msgSend(*(a1 + 32), "quickLookVisibility") == 1)
  {
    v2 = [*(a1 + 32) delegate];
    [v2 previewControllerWillDismiss:*(a1 + 32)];
  }
}

void __40__QLPreviewController_viewDidDisappear___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1272) toolBarHidden];
  v3 = [*(*(a1 + 32) + 1272) navigationController];
  [v3 setToolbarHidden:v2 ^ 1u];

  v4 = [*(*(a1 + 32) + 1272) toolBarHidden];
  v5 = [*(*(a1 + 32) + 1272) navigationController];
  [v5 setToolbarHidden:v4];
}

void __40__QLPreviewController_viewDidDisappear___block_invoke_2(uint64_t a1)
{
  if (![*(a1 + 32) quickLookVisibility])
  {
    v2 = [*(a1 + 32) delegate];
    [v2 previewControllerDidDismiss:*(a1 + 32)];
  }
}

- (void)_updateNavigationBarBehaviorStyle
{
  traitCollection = [(QLPreviewController *)self traitCollection];
  v4 = [(QLPreviewController *)self _isToolbarVisibleForTraitCollection:traitCollection];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  [(UIView *)self->_toolbarGradientView setHidden:!v4];
  _topViewController = [(QLPreviewController *)self _topViewController];
  navigationItem = [_topViewController navigationItem];
  style = [navigationItem style];

  if (style != v5)
  {
    _topViewController2 = [(QLPreviewController *)self _topViewController];
    navigationItem2 = [_topViewController2 navigationItem];
    [navigationItem2 setStyle:v5];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v10.receiver = self;
  v10.super_class = QLPreviewController;
  [(QLPreviewController *)&v10 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  traitCollection = [(QLPreviewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1 && objc_msgSend(collectionCopy, "horizontalSizeClass") == 2)
  {
    presentedViewController = [(QLPreviewController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(QLPreviewController *)self dismissViewControllerAnimated:0 completion:0];
    }
  }

  else
  {
  }

  [(QLPreviewController *)self _updateOverlayButtonsForTraitCollection:collectionCopy animated:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = QLPreviewController;
  coordinatorCopy = coordinator;
  [(QLPreviewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__QLPreviewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_278B57208;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__QLPreviewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_278B57208;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

void __74__QLPreviewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 traitCollection];
  [v1 updateOverlayAnimated:0 forceRefresh:1 withTraitCollection:v2];
}

- (unint64_t)supportedInterfaceOrientations
{
  result = [(QLPreviewController *)self forcedSupportedInterfaceOrientations];
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = QLPreviewController;
    return [(QLPreviewController *)&v4 supportedInterfaceOrientations];
  }

  return result;
}

- (void)dealloc
{
  [(QLPreviewController *)self _unregisterForApplicationStateChangesNotifications];
  v3.receiver = self;
  v3.super_class = QLPreviewController;
  [(QLPreviewController *)&v3 dealloc];
}

- (BOOL)_isBeingFullyDismissed
{
  if ([(QLPreviewController *)self presentationMode]== 2 && ([(QLPreviewController *)self isBeingDismissed]& 1) != 0)
  {
    return 1;
  }

  if ([(QLPreviewController *)self presentationMode]== 2)
  {
    return 0;
  }

  parentViewController = [(QLPreviewController *)self parentViewController];
  if (parentViewController)
  {
    parentViewController2 = [(QLPreviewController *)self parentViewController];
    isBeingDismissed = [parentViewController2 isBeingDismissed];
  }

  else
  {
    isBeingDismissed = 1;
  }

  return isBeingDismissed;
}

- (BOOL)_basePreviewControllerIsBeingFullyDismissed
{
  if ([(QLPreviewController *)self didTransitionFromInternalView])
  {
    return 0;
  }

  return [(QLPreviewController *)self _isBeingFullyDismissed];
}

- (void)_registerForApplicationStateChangesNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_sceneWillDeactivate_ name:*MEMORY[0x277D76E78] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
}

- (void)_unregisterForApplicationStateChangesNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)sceneWillDeactivate:(id)deactivate
{
  v11 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  v5 = MEMORY[0x277D43EF8];
  v6 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = deactivateCopy;
    _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_INFO, "Scene will deactivate: %@ #Generic", &v9, 0xCu);
  }

  previewCollection = self->_previewCollection;
  if (objc_opt_respondsToSelector())
  {
    [(QLPreviewCollectionProtocol *)self->_previewCollection hostSceneWillDeactivate];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)applicationDidEnterBackground:(id)background
{
  v12 = *MEMORY[0x277D85DE8];
  backgroundCopy = background;
  v5 = MEMORY[0x277D43EF8];
  v6 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = backgroundCopy;
    _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_INFO, "xxx applicationDidEnterBackground: %@ #Generic", &v10, 0xCu);
  }

  previewCollection = self->_previewCollection;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  -[QLPreviewCollectionProtocol hostApplicationDidEnterBackground:](previewCollection, "hostApplicationDidEnterBackground:", [mEMORY[0x277D75128] isSuspendedUnderLock]);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_presentPreviewCollection
{
  if ([(QLPreviewController *)self hasItemsToPreview]&& !self->_previewCollectionIsLoading && [(QLPreviewController *)self presentationMode])
  {
    v3 = MEMORY[0x277D43F58];
    previewItemStore = [(QLPreviewController *)self previewItemStore];
    shouldUseRemoteViewController = [v3 shouldUseRemoteCollection:previewItemStore];

    internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
    previewItemType = [internalCurrentPreviewItem previewItemType];

    if (previewItemType == 12)
    {
      internalCurrentPreviewItem2 = [(QLPreviewController *)self internalCurrentPreviewItem];
      shouldUseRemoteViewController = [internalCurrentPreviewItem2 shouldUseRemoteViewController];
    }

    previewCollection = self->_previewCollection;
    if (!previewCollection)
    {
      goto LABEL_10;
    }

    if (![(QLPreviewCollectionProtocol *)previewCollection isAvailable]|| shouldUseRemoteViewController != [(QLPreviewCollectionProtocol *)self->_previewCollection isRemote])
    {
      [(QLPreviewController *)self _removePreviewCollectionFromViewHierarchy];
LABEL_10:
      self->_previewCollectionNeedsConfiguration = 1;
      self->_previewCollectionIsLoading = 1;
      v10 = self->_previewCollection;
      self->_previewCollection = 0;

      v11 = self->_userActivity;
      objc_initWeak(&location, self);
      personaUniqueString = [(QLPreviewController *)self personaUniqueString];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__QLPreviewController__presentPreviewCollection__block_invoke;
      v14[3] = &unk_278B57258;
      v17 = shouldUseRemoteViewController;
      v13 = v11;
      v15 = v13;
      objc_copyWeak(&v16, &location);
      [(QLPreviewController *)self _adoptPersona:personaUniqueString andPerformBlock:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);

      return;
    }

    [(QLPreviewController *)self _showPreviewCollection];
  }
}

void __48__QLPreviewController__presentPreviewCollection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__QLPreviewController__presentPreviewCollection__block_invoke_2;
  v3[3] = &unk_278B57230;
  v4 = *(a1 + 32);
  objc_copyWeak(&v5, (a1 + 40));
  [QLPreviewCollection previewCollectionUsingRemoteViewController:v2 completionHandler:v3];
  objc_destroyWeak(&v5);
}

void __48__QLPreviewController__presentPreviewCollection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setUserActivity:v3];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentLoadedPreviewCollection:v4];
}

- (void)_presentLoadedPreviewCollection:(id)collection
{
  collectionCopy = collection;
  v3 = collectionCopy;
  QLRunInMainThread();
}

void __55__QLPreviewController__presentLoadedPreviewCollection___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 1248), *(a1 + 40));
  v2 = [*(a1 + 32) toolbarController];
  v3 = [*(*(a1 + 32) + 1248) accessoryView];
  [v2 setAccessoryView:v3];

  [*(a1 + 32) _showPreviewCollection];
  [*(a1 + 32) _configurePreviewCollectionIfNeeded];
  *(*(a1 + 32) + 1010) = 0;
  [*(a1 + 32) _notifyFirstAppearanceIfNeeded];
  [*(a1 + 32) setupAccessoryViewContainerIfNeeded];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(*(a1 + 32) + 1024);
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

        (*(*(*(&v12 + 1) + 8 * v8) + 16))(*(*(&v12 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 1024);
  *(v9 + 1024) = 0;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_invalidatePreviewCollectionIfNeeded
{
  if ([(QLPreviewController *)self presentationMode]== 4)
  {
    v3 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__QLPreviewController__invalidatePreviewCollectionIfNeeded__block_invoke;
    block[3] = &unk_278B57190;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }

  else
  {

    [(QLPreviewController *)self _invalidatePreviewCollectionIfNeededNow];
  }
}

uint64_t __59__QLPreviewController__invalidatePreviewCollectionIfNeeded__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) quickLookVisibility];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _invalidatePreviewCollectionIfNeededNow];
  }

  return result;
}

- (void)_invalidatePreviewCollectionIfNeededNow
{
  v3 = self->_previewCollection;
  previewCollection = self->_previewCollection;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__QLPreviewController__invalidatePreviewCollectionIfNeededNow__block_invoke;
  v6[3] = &unk_278B56E50;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [(QLPreviewCollectionProtocol *)previewCollection preparePreviewCollectionForInvalidationWithCompletionHandler:v6];
}

uint64_t __62__QLPreviewController__invalidatePreviewCollectionIfNeededNow__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) quickLookVisibility];
  if (!result)
  {
    [*(a1 + 32) _removePreviewCollectionFromViewHierarchy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1248);
    *(v3 + 1248) = 0;

    v5 = *(a1 + 40);

    return [v5 invalidateServiceWithCompletionHandler:&__block_literal_global_0];
  }

  return result;
}

- (void)_notifyFirstAppearanceIfNeeded
{
  if (!self->_previewCollectionIsLoading && self->_previewCollection && [(QLPreviewController *)self presentationMode]!= 1)
  {
    previewCollection = self->_previewCollection;
    appearanceActions = [(QLPreviewController *)self appearanceActions];

    [(QLPreviewCollectionProtocol *)previewCollection notifyFirstTimeAppearanceWithActions:appearanceActions];
  }
}

- (void)_setDefaultFullscreenStateIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_didSetDefaultFullscreenState)
  {
    obj->_didSetDefaultFullscreenState = 1;
    internalCurrentPreviewItem = [(QLPreviewController *)obj internalCurrentPreviewItem];
    v3 = [internalCurrentPreviewItem shouldOpenInFullScreen] && (obj->_appearanceActions & 4) == 0 && -[QLPreviewController presentationMode](obj, "presentationMode") == 2;

    [(QLPreviewController *)obj _setFullScreen:v3 animated:0 force:0];
  }

  objc_sync_exit(obj);
}

- (void)_configurePreviewCollectionIfNeeded
{
  if (self->_previewCollectionNeedsConfiguration && self->_previewCollection && [(QLPreviewController *)self quickLookVisibility]!= 1)
  {
    [(QLPreviewController *)self _updateAppearance:0];
    [(QLPreviewCollectionProtocol *)self->_previewCollection overrideParentApplicationDisplayIdentifierWithIdentifier:self->_overrideParentApplicationDisplayIdentifier];
    [(QLPreviewCollectionProtocol *)self->_previewCollection setLoadingString:self->_loadingTextForMissingFiles];
    v9 = objc_opt_new();
    [v9 setStateManager:self];
    [(QLPreviewController *)self _setDefaultFullscreenStateIfNeeded];
    v3 = _os_feature_enabled_impl();
    previewCollection = self->_previewCollection;
    previewItemStore = [(QLPreviewController *)self previewItemStore];
    numberOfItems = [previewItemStore numberOfItems];
    currentPreviewItemIndex = [(QLPreviewController *)self currentPreviewItemIndex];
    previewItemStore2 = [(QLPreviewController *)self previewItemStore];
    if (v3)
    {
      [(QLPreviewCollectionProtocol *)previewCollection configureWithNumberOfItems:numberOfItems currentPreviewItemIndex:currentPreviewItemIndex itemProvider:previewItemStore2 stateManager:v9 fullScreen:[(QLPreviewController *)self fullScreen]];
    }

    else
    {
      [(QLPreviewCollectionProtocol *)previewCollection configureWithNumberOfItems:numberOfItems currentPreviewItemIndex:currentPreviewItemIndex itemProvider:previewItemStore2 stateManager:v9];
    }

    [(QLPreviewController *)self _notifyFirstAppearanceIfNeeded];
    [(QLPreviewController *)self _updateAllowInteractiveTransitionsIfNeeded];
    [(QLPreviewController *)self updateDoneButtonMenu];
    [(QLPreviewCollectionProtocol *)self->_previewCollection setAllowInteractiveTransitions:[(QLPreviewController *)self allowInteractiveTransitions]];
    [(QLPreviewCollectionProtocol *)self->_previewCollection hostViewControlerTransitionToState:[(QLPreviewController *)self quickLookVisibility] animated:0];
    [(QLPreviewCollectionProtocol *)self->_previewCollection setIsContentManaged:[(QLPreviewController *)self isContentManaged]];
    [(QLPreviewController *)self toggleChromelessIfNeeded];
    self->_previewCollectionNeedsConfiguration = 0;
  }
}

- (void)toggleChromelessIfNeeded
{
  if (_os_feature_enabled_impl())
  {
    [(QLPreviewController *)self setOverrideUserInterfaceStyle:2];
    [(QLPreviewCollectionProtocol *)self->_previewCollection setOverrideUserInterfaceStyle:2];
    [(UIViewController *)self QL_enableChromelessBarsUI];
    previewCollection = self->_previewCollection;

    [(QLPreviewCollectionProtocol *)previewCollection QL_enableChromelessBarsUI];
  }

  else
  {
    [(QLPreviewController *)self setOverrideUserInterfaceStyle:0];
    [(QLPreviewCollectionProtocol *)self->_previewCollection setOverrideUserInterfaceStyle:0];
    internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
    supportsChromelessUI = [internalCurrentPreviewItem supportsChromelessUI];

    if (supportsChromelessUI)
    {
      [(UIViewController *)self QL_enableChromelessBarsUI];
      [(QLPreviewCollectionProtocol *)self->_previewCollection QL_enableChromelessBarsUI];

      [(QLPreviewController *)self updateChromelessBars];
    }

    else
    {
      [(UIViewController *)self QL_disableChromelessBarsUI];
      v6 = self->_previewCollection;

      [(QLPreviewCollectionProtocol *)v6 QL_disableChromelessBarsUI];
    }
  }
}

- (void)_showPreviewCollection
{
  v27[1] = *MEMORY[0x277D85DE8];
  if ([(QLPreviewController *)self presentationMode]!= 1 && [(QLPreviewController *)self presentationMode]!= 3 && [(QLPreviewController *)self presentationMode]!= 5 && [(QLPreviewController *)self presentationMode]!= 4 || ([(QLPreviewCollectionProtocol *)self->_previewCollection parentViewController], v3 = objc_claimAutoreleasedReturnValue(), v3, v3 != self))
  {
    if ([(QLPreviewController *)self presentationMode]!= 2 || ([(QLPreviewCollectionProtocol *)self->_previewCollection parentViewController], v4 = objc_claimAutoreleasedReturnValue(), [(QLPreviewController *)self internalNavigationController], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v4 != v5))
    {
      parentViewController = [(QLPreviewCollectionProtocol *)self->_previewCollection parentViewController];

      if (parentViewController)
      {
        [(QLPreviewController *)self _removePreviewCollectionFromViewHierarchy];
      }

      presentationMode = [(QLPreviewController *)self presentationMode];
      if (presentationMode - 3 < 3 || presentationMode == 1)
      {
        [(QLPreviewController *)self addChildViewController:self->_previewCollection];
        view = [(QLPreviewController *)self view];
        view2 = [(QLPreviewCollectionProtocol *)self->_previewCollection view];
        [view insertSubview:view2 atIndex:0];

        [(QLPreviewCollectionProtocol *)self->_previewCollection didMoveToParentViewController:self];
        view3 = [(QLPreviewCollectionProtocol *)self->_previewCollection view];
        [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

        view4 = [(QLPreviewController *)self view];
        v15 = MEMORY[0x277CCAAD0];
        v25 = @"previewCollection";
        view5 = [(QLPreviewCollectionProtocol *)self->_previewCollection view];
        v26 = view5;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v18 = [v15 constraintsWithVisualFormat:@"H:|[previewCollection]|" options:0 metrics:0 views:v17];
        [view4 addConstraints:v18];

        view6 = [(QLPreviewController *)self view];
        v19 = MEMORY[0x277CCAAD0];
        view7 = [(QLPreviewCollectionProtocol *)self->_previewCollection view];
        v24 = view7;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v21 = [v19 constraintsWithVisualFormat:@"V:|[previewCollection]|" options:0 metrics:0 views:v20];
        [view6 addConstraints:v21];
      }

      else
      {
        if (presentationMode != 2)
        {
LABEL_16:
          [(QLPreviewController *)self _updateAppearance:0];
          [(QLPreviewController *)self updateOverlayAnimated:0 forceRefresh:0];
          goto LABEL_17;
        }

        view8 = [(QLPreviewCollectionProtocol *)self->_previewCollection view];
        [view8 setTranslatesAutoresizingMaskIntoConstraints:1];

        view6 = [(QLPreviewController *)self internalNavigationController];
        v27[0] = self->_previewCollection;
        view7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
        [view6 setViewControllers:view7];
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_removePreviewCollectionFromViewHierarchy
{
  [(QLPreviewCollectionProtocol *)self->_previewCollection willMoveToParentViewController:0];
  view = [(QLPreviewCollectionProtocol *)self->_previewCollection view];
  [view removeFromSuperview];

  previewCollection = self->_previewCollection;

  [(QLPreviewCollectionProtocol *)previewCollection removeFromParentViewController];
}

- (CGRect)frameForAdditionalButtonWithActionName:(SEL)name
{
  v3 = [(QLPreviewController *)self viewForAdditionalButtonWithActionName:name];
  v4 = v3;
  if (v3)
  {
    superview = [v3 superview];
    [v4 frame];
    [superview convertRect:0 toView:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v11 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)viewForAdditionalButtonWithActionName:(SEL)name
{
  v45 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  _topViewController = [(QLPreviewController *)self _topViewController];
  navigationItem = [_topViewController navigationItem];
  leftBarButtonItems = [navigationItem leftBarButtonItems];

  v8 = [leftBarButtonItems countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v39 != v10)
      {
        objc_enumerationMutation(leftBarButtonItems);
      }

      v12 = *(*(&v38 + 1) + 8 * v11);
      if ([v12 action] == name)
      {
        v13 = [v12 valueForKey:@"view"];
        if (v13)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [leftBarButtonItems countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    _topViewController2 = [(QLPreviewController *)self _topViewController];
    navigationItem2 = [_topViewController2 navigationItem];
    leftBarButtonItems = [navigationItem2 rightBarButtonItems];

    v16 = [leftBarButtonItems countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
LABEL_12:
      v19 = 0;
      while (1)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(leftBarButtonItems);
        }

        v20 = *(*(&v34 + 1) + 8 * v19);
        if ([v20 action] == name)
        {
          v13 = [v20 valueForKey:@"view"];
          if (v13)
          {
            break;
          }
        }

        if (v17 == ++v19)
        {
          v17 = [leftBarButtonItems countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v17)
          {
            goto LABEL_12;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      _topViewController3 = [(QLPreviewController *)self _topViewController];
      leftBarButtonItems = [_topViewController3 toolbarItems];

      v22 = [leftBarButtonItems countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (!v22)
      {
LABEL_28:
        v27 = 0;
        goto LABEL_30;
      }

      v23 = v22;
      v24 = *v31;
LABEL_21:
      v25 = 0;
      while (1)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(leftBarButtonItems);
        }

        v26 = *(*(&v30 + 1) + 8 * v25);
        if ([v26 action] == name)
        {
          v13 = [v26 valueForKey:@"view"];
          if (v13)
          {
            break;
          }
        }

        if (v23 == ++v25)
        {
          v23 = [leftBarButtonItems countByEnumeratingWithState:&v30 objects:v42 count:16];
          if (v23)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }
      }
    }
  }

  v27 = v13;
LABEL_30:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)waitForPreviewCollectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock = handlerCopy;
  if (self->_previewCollection)
  {
    handlerCopy[2]();
  }

  else
  {
    previewCollectionReadyCompletionBlocks = self->_previewCollectionReadyCompletionBlocks;
    if (!previewCollectionReadyCompletionBlocks)
    {
      v6 = objc_opt_new();
      v7 = self->_previewCollectionReadyCompletionBlocks;
      self->_previewCollectionReadyCompletionBlocks = v6;

      handlerCopy = aBlock;
      previewCollectionReadyCompletionBlocks = self->_previewCollectionReadyCompletionBlocks;
    }

    v8 = _Block_copy(handlerCopy);
    [(NSMutableArray *)previewCollectionReadyCompletionBlocks addObject:v8];
  }
}

- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  previewCollection = [(QLPreviewController *)self previewCollection];
  [previewCollection prepareForActionSheetPresentationWithCompletionHandler:handlerCopy];
}

- (void)setAdditionalLeftBarButtonItems:(id)items
{
  objc_storeStrong(&self->_additionalLeftBarButtonItems, items);
  v4 = [(QLPreviewController *)self presentationStyle]!= 1;

  [(QLPreviewController *)self updateOverlayAnimated:v4 forceRefresh:0];
}

- (void)setAdditionalRightBarButtonItems:(id)items
{
  objc_storeStrong(&self->_additionalRightBarButtonItems, items);
  v4 = [(QLPreviewController *)self presentationStyle]!= 1;

  [(QLPreviewController *)self updateOverlayAnimated:v4 forceRefresh:0];
}

- (void)setCurrentPreviewItemIndex:(NSInteger)currentPreviewItemIndex
{
  if ([(QLPreviewController *)self quickLookVisibility]== 1)
  {
    self->_updatedWhileDisappearing = 1;
  }

  [(QLPreviewController *)self setCurrentPreviewItemIndex:currentPreviewItemIndex animated:0];
}

- (NSInteger)currentPreviewItemIndex
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    currentPreviewItemIndex = self->_currentPreviewItemIndex;
    v8 = 134217984;
    v9 = currentPreviewItemIndex;
    _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_DEFAULT, "[API] currentPreviewItemIndex called, returning %li #PreviewController", &v8, 0xCu);
  }

  result = self->_currentPreviewItemIndex;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)currentPreviewItem
{
  v10 = *MEMORY[0x277D85DE8];
  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  originalPreviewItem = [internalCurrentPreviewItem originalPreviewItem];

  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = originalPreviewItem;
    _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_DEFAULT, "[API] currentPreviewItem called, returning %@ #PreviewController", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];

  return originalPreviewItem;
}

- (QLItem)internalCurrentPreviewItem
{
  if ([(QLPreviewController *)self currentPreviewItemIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = 0;
    previewItemStore = [(QLPreviewController *)self previewItemStore];
    currentPreviewItemIndex = [(QLPreviewController *)self currentPreviewItemIndex];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__QLPreviewController_internalCurrentPreviewItem__block_invoke;
    v7[3] = &unk_278B57280;
    v7[4] = &v8;
    [previewItemStore previewItemAtIndex:currentPreviewItemIndex withCompletionHandler:v7];

    v3 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  return v3;
}

- (void)setDataSource:(id)dataSource
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = dataSource;
  v6 = MEMORY[0x277D43EF8];
  v7 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    selfCopy = v5;
    _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_DEFAULT, "[API] setDataSource: %@ #PreviewController", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != v5)
  {
    objc_storeWeak(&self->_dataSource, v5);
    if ([(QLPreviewController *)self _isQuickLookVisible])
    {
      if ([(QLPreviewController *)self presentationMode]== 4)
      {
        v9 = *v6;
        if (!*v6)
        {
          QLSInitLogging();
          v9 = *v6;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = v9;
          v11 = NSStringFromSelector(a2);
          v13 = 138412546;
          selfCopy = self;
          v15 = 2112;
          v16 = v11;
          _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "%@ %@: The datasource should not be updated during the peeking session. This can result in unintended side effects. #PreviewController", &v13, 0x16u);
        }
      }

      [(QLPreviewController *)self reloadData];
    }

    else
    {
      self->_deferReloadData = 1;
    }

    [(QLPreviewController *)self updatePreferredTransition];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setNavigationBarTintColor:(id)color
{
  objc_storeStrong(&self->_navigationBarTintColor, color);

  [(QLPreviewController *)self _updateBarTintColors];
}

- (void)setToolbarTintColor:(id)color
{
  objc_storeStrong(&self->_toolbarTintColor, color);

  [(QLPreviewController *)self _updateBarTintColors];
}

- (void)setBackgroundColor:(id)color
{
  objc_storeStrong(&self->_backgroundColor, color);

  [(QLPreviewController *)self _updateBackgroundColor];
}

- (void)setFullscreenBackgroundColor:(id)color
{
  objc_storeStrong(&self->_fullscreenBackgroundColor, color);

  [(QLPreviewController *)self _updateBackgroundColor];
}

- (id)_preferredBackgroundColor
{
  if ([(QLPreviewController *)self fullScreen]&& [(QLPreviewController *)self presentationMode]!= 4 || (_os_feature_enabled_impl() & 1) != 0)
  {
    fullscreenBackgroundColor = [(QLPreviewController *)self fullscreenBackgroundColor];
  }

  else
  {
    fullscreenBackgroundColor = [(QLPreviewController *)self backgroundColor];
  }

  return fullscreenBackgroundColor;
}

- (void)_setPresentationMode:(unint64_t)mode
{
  if (self->_presentationMode != mode)
  {
    self->_presentationMode = mode;
    [(QLPreviewController *)self _updateViewHierarchyPresentation];
    [(QLPreviewController *)self updateChromelessBars];
  }

  [(QLPreviewController *)self _updateAppearance:0];
}

- (void)_updateViewHierarchyPresentation
{
  if (self->_presentationMode)
  {
    internalNavigationController = [(QLPreviewController *)self internalNavigationController];
  }

  [(QLPreviewController *)self _presentPreviewCollection];
  [(QLPreviewController *)self setAllowInteractiveTransitions:[(QLPreviewController *)self _shouldAllowInteractiveTransitions]];

  [(QLPreviewController *)self _updateToolbarSuperview];
}

- (void)_updateToolbarSuperview
{
  if ([(QLPreviewController *)self presentationMode]== 2)
  {
    toolbarController = [(QLPreviewController *)self toolbarController];
    internalNavigationController = [(QLPreviewController *)self internalNavigationController];
    view = [internalNavigationController view];
    internalNavigationController2 = [(QLPreviewController *)self internalNavigationController];
    view2 = [internalNavigationController2 view];
    [toolbarController setPreferredSuperview:view preferredParentViewForSafeAreaInset:view2];

LABEL_3:
    goto LABEL_9;
  }

  if ([(QLPreviewController *)self presentationMode]== 1)
  {
    previousNavigationVCState = [(QLPreviewController *)self previousNavigationVCState];
    if ([previousNavigationVCState toolBarHidden] && !-[QLPreviewController didTransitionFromInternalView](self, "didTransitionFromInternalView"))
    {
      willTransitionToInternalView = [(QLPreviewController *)self willTransitionToInternalView];

      if (!willTransitionToInternalView)
      {
        toolbarController = [(QLPreviewController *)self toolbarController];
        internalNavigationController = [(QLPreviewController *)self view];
        view = [(QLPreviewController *)self internalNavigationController];
        internalNavigationController2 = [view view];
        [toolbarController setPreferredSuperview:internalNavigationController preferredParentViewForSafeAreaInset:internalNavigationController2];
        goto LABEL_3;
      }
    }

    else
    {
    }
  }

  toolbarController = [(QLPreviewController *)self toolbarController];
  internalNavigationController = [(QLPreviewController *)self internalNavigationController];
  view = [internalNavigationController view];
  [toolbarController setPreferredSuperview:0 preferredParentViewForSafeAreaInset:view];
LABEL_9:
}

- (UINavigationController)internalNavigationController
{
  v31[1] = *MEMORY[0x277D85DE8];
  presentationMode = [(QLPreviewController *)self presentationMode];
  if (presentationMode - 3 < 3)
  {
    goto LABEL_4;
  }

  if (presentationMode != 2)
  {
    if (presentationMode != 1)
    {
LABEL_8:
      navigationController = 0;
      goto LABEL_12;
    }

LABEL_4:
    internalNavigationController = self->_internalNavigationController;
    if (internalNavigationController)
    {
      [(UINavigationController *)internalNavigationController willMoveToParentViewController:0];
      view = [(UINavigationController *)self->_internalNavigationController view];
      [view removeFromSuperview];

      [(UINavigationController *)self->_internalNavigationController removeFromParentViewController];
      v6 = self->_internalNavigationController;
      self->_internalNavigationController = 0;
    }

    if ([(QLPreviewController *)self parentIsNavigationController])
    {
      navigationController = [(QLPreviewController *)self navigationController];
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v8 = self->_internalNavigationController;
  if (!v8)
  {
    v9 = objc_opt_new();
    objc_storeWeak(&self->_modalRootViewController, v9);
    v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
    v11 = self->_internalNavigationController;
    self->_internalNavigationController = v10;

    [(UINavigationController *)self->_internalNavigationController setDelegate:self];
    toolbar = [(UINavigationController *)self->_internalNavigationController toolbar];
    [toolbar setAccessibilityIdentifier:@"QLCustomToolBarModalAccessibilityIdentifier"];

    [(QLPreviewController *)self addChildViewController:self->_internalNavigationController];
    view2 = [(QLPreviewController *)self view];
    view3 = [(UINavigationController *)self->_internalNavigationController view];
    [view2 insertSubview:view3 atIndex:0];

    [(UINavigationController *)self->_internalNavigationController didMoveToParentViewController:self];
    view4 = [(UINavigationController *)self->_internalNavigationController view];
    [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

    view5 = [(QLPreviewController *)self view];
    v17 = MEMORY[0x277CCAAD0];
    v30 = @"mainView";
    view6 = [(UINavigationController *)self->_internalNavigationController view];
    v31[0] = view6;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v20 = [v17 constraintsWithVisualFormat:@"H:|[mainView]|" options:0 metrics:0 views:v19];
    [view5 addConstraints:v20];

    view7 = [(QLPreviewController *)self view];
    v22 = MEMORY[0x277CCAAD0];
    v28 = @"mainView";
    view8 = [(UINavigationController *)self->_internalNavigationController view];
    v29 = view8;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v25 = [v22 constraintsWithVisualFormat:@"V:|[mainView]|" options:0 metrics:0 views:v24];
    [view7 addConstraints:v25];

    [(QLPreviewController *)self _updateNavigationBarBehaviorStyle];
    v8 = self->_internalNavigationController;
  }

  navigationController = v8;
LABEL_12:
  v26 = *MEMORY[0x277D85DE8];

  return navigationController;
}

- (id)previewItemAtIndex:(int64_t)index
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  previewItemStore = [(QLPreviewController *)self previewItemStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__QLPreviewController_previewItemAtIndex___block_invoke;
  v7[3] = &unk_278B57280;
  v7[4] = &v8;
  [previewItemStore previewItemAtIndex:index withCompletionHandler:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (int64_t)numberOfPreviewItems
{
  previewItemStore = [(QLPreviewController *)self previewItemStore];
  numberOfItems = [previewItemStore numberOfItems];

  return numberOfItems;
}

- (void)setAllowInteractiveTransitions:(BOOL)transitions
{
  if (self->_allowInteractiveTransitions != transitions)
  {
    self->_allowInteractiveTransitions = transitions;
    previewCollection = self->_previewCollection;
    allowInteractiveTransitions = [(QLPreviewController *)self allowInteractiveTransitions];

    [(QLPreviewCollectionProtocol *)previewCollection setAllowInteractiveTransitions:allowInteractiveTransitions];
  }
}

- (void)setLoadingTextForMissingFiles:(id)files
{
  objc_storeStrong(&self->_loadingTextForMissingFiles, files);
  filesCopy = files;
  [(QLPreviewCollectionProtocol *)self->_previewCollection setLoadingString:self->_loadingTextForMissingFiles];
}

- (void)setUseCustomActionButton:(BOOL)button
{
  if (self->_useCustomActionButton != button)
  {
    self->_useCustomActionButton = button;
    [(QLPreviewController *)self updateOverlayAnimated:0 forceRefresh:1];
  }
}

- (void)setShowActionAsDefaultButton:(BOOL)button
{
  if (self->_showActionAsDefaultButton != button)
  {
    self->_showActionAsDefaultButton = button;
    [(QLPreviewController *)self updateOverlayAnimated:0 forceRefresh:1];
  }
}

- (void)setDelegate:(id)delegate
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = delegate;
  v5 = MEMORY[0x277D43EF8];
  v6 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_DEFAULT, "[API] setDelegate: %@ #PreviewController", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_delegate, v4);
    [(QLPreviewController *)self updatePreferredTransition];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)delegate
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  v5 = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    strongDelegate = WeakRetained;
    if (!WeakRetained)
    {
      strongDelegate = self->_strongDelegate;
    }

    v13 = 138412290;
    v14 = strongDelegate;
    _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_DEFAULT, "[API] getDelegate: %@ #PreviewController", &v13, 0xCu);
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = v8;
  if (!v8)
  {
    v9 = self->_strongDelegate;
  }

  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)updatePreferredTransition
{
  if (_os_feature_enabled_impl())
  {
    objc_initWeak(&location, self);
    v3 = objc_alloc_init(MEMORY[0x277D75DD0]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__QLPreviewController_updatePreferredTransition__block_invoke;
    v23[3] = &unk_278B572A8;
    objc_copyWeak(&v24, &location);
    [v3 setAlignmentRectProvider:v23];
    delegate = [(QLPreviewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      [(QLPreviewController *)self setTransitioningDelegate:0];
      v6 = MEMORY[0x277D75D30];
      v7 = v21;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __48__QLPreviewController_updatePreferredTransition__block_invoke_258;
      v21[3] = &unk_278B572D0;
      objc_copyWeak(&v22, &location);
      v8 = [v6 zoomWithOptions:v3 sourceViewProvider:v21];
      [(QLPreviewController *)self setPreferredTransition:v8];
    }

    else
    {
      delegate2 = [(QLPreviewController *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
        delegate3 = [(QLPreviewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          delegate4 = [(QLPreviewController *)self delegate];
          v14 = objc_opt_respondsToSelector();

          if (v14)
          {
            [(QLPreviewController *)self setTransitioningDelegate:0];
            v15 = MEMORY[0x277D75D30];
            v7 = v17;
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __48__QLPreviewController_updatePreferredTransition__block_invoke_267;
            v17[3] = &unk_278B572D0;
            objc_copyWeak(&v18, &location);
            v8 = [v15 zoomWithOptions:v3 sourceViewProvider:v17];
            [(QLPreviewController *)self setPreferredTransition:v8];
            goto LABEL_6;
          }
        }

        else
        {
        }

        [(QLPreviewController *)self setTransitioningDelegate:0];
        v16 = [MEMORY[0x277D75D30] zoomWithOptions:v3 sourceViewProvider:&__block_literal_global_271];
        [(QLPreviewController *)self setPreferredTransition:v16];

        goto LABEL_7;
      }

      [(QLPreviewController *)self setTransitioningDelegate:0];
      v11 = MEMORY[0x277D75D30];
      v7 = v19;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __48__QLPreviewController_updatePreferredTransition__block_invoke_262;
      v19[3] = &unk_278B572D0;
      objc_copyWeak(&v20, &location);
      v8 = [v11 zoomWithOptions:v3 sourceViewProvider:v19];
      [(QLPreviewController *)self setPreferredTransition:v8];
    }

LABEL_6:

    objc_destroyWeak(v7 + 4);
LABEL_7:
    objc_destroyWeak(&v24);

    objc_destroyWeak(&location);
  }
}

double __48__QLPreviewController_updatePreferredTransition__block_invoke(uint64_t a1, void *a2)
{
  v90 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained internalCurrentPreviewItem];
  if ([v5 previewItemType] == 2)
  {
    goto LABEL_4;
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 internalCurrentPreviewItem];
  if ([v7 previewItemType] == 3)
  {

LABEL_4:
    goto LABEL_5;
  }

  v54 = objc_loadWeakRetained((a1 + 32));
  v55 = [v54 internalCurrentPreviewItem];
  v56 = [v55 previewItemType];

  if (v56 == 1)
  {
LABEL_5:
    v8 = [v3 sourceView];
    v9 = [v8 window];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v91.origin.x = v11;
    v91.origin.y = v13;
    v91.size.width = v15;
    v91.size.height = v17;
    if (CGRectIsEmpty(v91))
    {
      v18 = MEMORY[0x277D43EF8];
      v19 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v19 = *v18;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23A714000, v19, OS_LOG_TYPE_ERROR, "Could not get the source view's window for the zoom transition, falling back to screen bounds! #PreviewController", buf, 2u);
      }

      v20 = [MEMORY[0x277D759A0] mainScreen];
      [v20 bounds];
      v15 = v21;
      v17 = v22;
    }

    v23 = objc_loadWeakRetained((a1 + 32));
    [v23 preferredContentSize];
    v25 = v24;
    v27 = v26;

    v29 = *MEMORY[0x277CBF3A8];
    v28 = *(MEMORY[0x277CBF3A8] + 8);
    if (v25 == *MEMORY[0x277CBF3A8] && v27 == v28)
    {
      v31 = MEMORY[0x277D43EF8];
      v32 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v32 = *v31;
      }

      v27 = v17;
      v25 = v15;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23A714000, v32, OS_LOG_TYPE_INFO, "Preview controller has no preferred content size, falling back to window bounds for alignment rectangle #PreviewController", buf, 2u);
        v27 = v17;
        v25 = v15;
      }
    }

    if (v25 == v29 && v27 == v28)
    {
      v49 = MEMORY[0x277D43EF8];
      v50 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v50 = *v49;
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23A714000, v50, OS_LOG_TYPE_ERROR, "Could not compute alignment rectangle for zoom transition #PreviewController", buf, 2u);
      }

      v37 = *MEMORY[0x277CBF3A0];
      v51 = *(MEMORY[0x277CBF3A0] + 8);
      v52 = *(MEMORY[0x277CBF3A0] + 16);
      v53 = *(MEMORY[0x277CBF3A0] + 24);
    }

    else
    {
      v34 = objc_loadWeakRetained((a1 + 32));
      v35 = [v34 internalCurrentPreviewItem];
      [v35 previewSizeForItemViewControllerSize:{v15, v17}];

      UIRectCenteredRect();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v44 = MEMORY[0x277D43EF8];
      v45 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v45 = *v44;
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v45;
        v92.origin.x = v37;
        v92.origin.y = v39;
        v92.size.width = v41;
        v92.size.height = v43;
        v47 = NSStringFromCGRect(v92);
        *buf = 138412290;
        v89 = v47;
        v48 = "[ZOOM]: Frame alignmentRect = %@ #PreviewController";
LABEL_28:
        _os_log_impl(&dword_23A714000, v46, OS_LOG_TYPE_DEFAULT, v48, buf, 0xCu);
LABEL_40:

        goto LABEL_41;
      }
    }

    goto LABEL_41;
  }

  v57 = objc_loadWeakRetained((a1 + 32));
  [v57 contentFrame];
  if (CGRectIsEmpty(v93))
  {
    goto LABEL_38;
  }

  v58 = objc_loadWeakRetained((a1 + 32));
  [v58 contentFrame];
  if (v59 < 0.0)
  {

LABEL_38:
LABEL_39:
    v46 = [v3 zoomedViewController];
    v47 = [v46 view];
    [v47 frame];
    v37 = v60;
    goto LABEL_40;
  }

  v63 = objc_loadWeakRetained((a1 + 32));
  [v63 contentFrame];
  v65 = v64;

  if (v65 < 0.0)
  {
    goto LABEL_39;
  }

  v66 = objc_loadWeakRetained((a1 + 32));
  [v66 contentFrame];
  v37 = v67;
  v69 = v68;
  v71 = v70;
  v73 = v72;

  v74 = MEMORY[0x277D43EF8];
  v75 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v75 = *v74;
  }

  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    v76 = v75;
    v94.origin.x = v37;
    v94.origin.y = v69;
    v94.size.width = v71;
    v94.size.height = v73;
    v77 = NSStringFromCGRect(v94);
    *buf = 138412290;
    v89 = v77;
    _os_log_impl(&dword_23A714000, v76, OS_LOG_TYPE_DEFAULT, "[ZOOM] ContentFrame alignmentRect = %@ #PreviewController", buf, 0xCu);
  }

  if (v37 == 0.0 && v69 == 0.0)
  {
    v78 = [v3 zoomedViewController];
    v79 = [v78 view];
    [v79 frame];
    v81 = v80;
    v83 = v82;

    v84 = v81 * 0.5;
    v85 = v83 * 0.5;
    v86 = *v74;
    if (!*v74)
    {
      QLSInitLogging();
      v86 = *v74;
    }

    v37 = v84 - v71 * 0.5;
    v87 = v85 - v73 * 0.5;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v86;
      v95.origin.x = v37;
      v95.origin.y = v87;
      v95.size.width = v71;
      v95.size.height = v73;
      v47 = NSStringFromCGRect(v95);
      *buf = 138412290;
      v89 = v47;
      v48 = "[ZOOM] Recentering alignmentRect to %@ #PreviewController";
      goto LABEL_28;
    }
  }

LABEL_41:

  v61 = *MEMORY[0x277D85DE8];
  return v37;
}

id __48__QLPreviewController_updatePreferredTransition__block_invoke_258(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 currentPreviewItem];
  v6 = [v3 previewController:v4 transitionViewForPreviewItem:v5];

  v7 = MEMORY[0x277D43EF8];
  v8 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    [v6 frame];
    v10 = NSStringFromCGRect(v17);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_23A714000, v9, OS_LOG_TYPE_DEFAULT, "[ZOOM] client gave us a view with frame: %@ #PreviewController", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

id __48__QLPreviewController_updatePreferredTransition__block_invoke_262(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(&v14, 0, sizeof(v14));
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 currentPreviewItem];
  v6 = [v3 previewController:v4 transitionViewForPreviewItem:v5 uncroppedSourceFrame:&v14];

  v7 = MEMORY[0x277D43EF8];
  v8 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    [v6 frame];
    v10 = NSStringFromCGRect(v21);
    v11 = NSStringFromCGRect(v14);
    *buf = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_23A714000, v9, OS_LOG_TYPE_DEFAULT, "[ZOOM] client gaev us a view with frame: %@, uncroppedFrame: %@ #PreviewController", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

id __48__QLPreviewController_updatePreferredTransition__block_invoke_267(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 currentPreviewItem];
  v58 = 0;
  [v3 previewController:v4 frameForPreviewItem:v5 inSourceView:&v58];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v58;
  v15 = MEMORY[0x277D43EF8];
  v16 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v16 = *v15;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v67.origin.x = v7;
    v67.origin.y = v9;
    v67.size.width = v11;
    v67.size.height = v13;
    v18 = NSStringFromCGRect(v67);
    LODWORD(buf.origin.x) = 138412290;
    *(&buf.origin.x + 4) = v18;
    _os_log_impl(&dword_23A714000, v17, OS_LOG_TYPE_DEFAULT, "[ZOOM] sourceFrame sent by client: %{PUBLIC}@ #PreviewController", &buf, 0xCu);
  }

  if (v14)
  {
    v19 = MEMORY[0x277CBF3A0];
    v20 = *(MEMORY[0x277CBF3A0] + 16);
    buf.origin = *MEMORY[0x277CBF3A0];
    buf.size = v20;
    v21 = objc_loadWeakRetained((a1 + 32));
    v22 = [v21 delegate];
    v23 = objc_loadWeakRetained((a1 + 32));
    v24 = [v23 currentPreviewItem];
    v25 = [v22 previewController:v23 transitionImageForPreviewItem:v24 contentRect:&buf];

    v26 = *v15;
    if (!*v15)
    {
      QLSInitLogging();
      v26 = *v15;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      [v25 size];
      v28 = NSStringFromCGSize(v66);
      v29 = NSStringFromCGRect(buf);
      *v59 = 138412546;
      v60 = v28;
      v61 = 2112;
      v62 = v29;
      _os_log_impl(&dword_23A714000, v27, OS_LOG_TYPE_DEFAULT, "[ZOOM] client returned image with size: %{PUBLIC}@ and contentRect: %{PUBLIC}@ #PreviewController", v59, 0x16u);
    }

    x = buf.origin.x;
    y = buf.origin.y;
    height = buf.size.height;
    width = buf.size.width;
    v34 = *v15;
    if (!*v15)
    {
      QLSInitLogging();
      v34 = *v15;
    }

    v35 = v7 + x;
    v36 = v9 + y;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v34;
      v68.origin.x = v35;
      v68.origin.y = v36;
      v68.size.width = width;
      v68.size.height = height;
      v38 = NSStringFromCGRect(v68);
      *v59 = 138412290;
      v60 = v38;
      _os_log_impl(&dword_23A714000, v37, OS_LOG_TYPE_DEFAULT, "[ZOOM] Adjusted source frame: %{PUBLIC}@ #PreviewController", v59, 0xCu);
    }

    v39 = *MEMORY[0x277CBF3A8];
    v40 = *(MEMORY[0x277CBF3A8] + 8);
    v69.origin.x = v35;
    v69.origin.y = v36;
    v69.size.width = width;
    v69.size.height = height;
    v41 = CGRectEqualToRect(v69, *v19);
    v70.origin.x = v35;
    v70.origin.y = v36;
    v70.size.width = width;
    v70.size.height = height;
    IsNull = CGRectIsNull(v70);
    v71.origin.x = v35;
    v71.origin.y = v36;
    v71.size.width = width;
    v71.size.height = height;
    IsEmpty = CGRectIsEmpty(v71);
    v72.origin.x = v35;
    v72.origin.y = v36;
    v72.size.width = width;
    v72.size.height = height;
    IsInfinite = CGRectIsInfinite(v72);
    v45 = height == v40 && width == v39;
    if (v45 || v41 || IsNull || IsEmpty || IsInfinite)
    {
      v46 = *v15;
      if (!*v15)
      {
        QLSInitLogging();
        v46 = *v15;
      }

      height = 1.0;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        *v59 = 0;
        _os_log_impl(&dword_23A714000, v46, OS_LOG_TYPE_FAULT, "-previewController:transitionImageForPreviewItem:contentRect: returned an invalid content rect, this is undefined behavior. Please return a valid CGRect. #PreviewController", v59, 2u);
      }

      width = 1.0;
    }

    v47 = *v15;
    if (!*v15)
    {
      QLSInitLogging();
      v47 = *v15;
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v47;
      v73.origin.x = v35;
      v73.origin.y = v36;
      v73.size.width = width;
      v73.size.height = height;
      v49 = NSStringFromCGRect(v73);
      *v59 = 138412290;
      v60 = v49;
      _os_log_impl(&dword_23A714000, v48, OS_LOG_TYPE_DEFAULT, "[ZOOM] Creating UIImageView with frame: %{PUBLIC}@ #PreviewController", v59, 0xCu);
    }

    v50 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v35, v36, width, height}];
    [v50 setImage:v25];
    [v50 setContentMode:1];
    v51 = [MEMORY[0x277D75348] clearColor];
    [v50 setBackgroundColor:v51];

    [v14 addSubview:v50];
    v52 = objc_loadWeakRetained((a1 + 32));
    v53 = [v52 transitionSourceView];
    [v53 removeFromSuperview];

    v54 = objc_loadWeakRetained((a1 + 32));
    [v54 setTransitionSourceView:v50];
  }

  else
  {
    v55 = *v15;
    if (!*v15)
    {
      QLSInitLogging();
      v55 = *v15;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.origin.x) = 0;
      _os_log_impl(&dword_23A714000, v55, OS_LOG_TYPE_DEFAULT, "[ZOOM] sourceView is nil, bailing out #PreviewController", &buf, 2u);
    }

    v50 = 0;
  }

  v56 = *MEMORY[0x277D85DE8];

  return v50;
}

- (void)setQuickLookVisibility:(unint64_t)visibility animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_quickLookVisibility = visibility;
  [QLPreviewCollectionProtocol hostViewControlerTransitionToState:"hostViewControlerTransitionToState:animated:" animated:?];
  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  if ([internalCurrentPreviewItem shouldOpenInFullScreen])
  {
    quickLookVisibility = self->_quickLookVisibility;

    if (quickLookVisibility == 2)
    {
      v7 = 0.0;
      if (animatedCopy)
      {
        initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75A88]) initWithDefaultParameters];
        [initWithDefaultParameters duration];
        v7 = v9;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __55__QLPreviewController_setQuickLookVisibility_animated___block_invoke;
      v11[3] = &unk_278B57190;
      v11[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v11 animations:v7];
    }
  }

  else
  {
  }
}

- (id)navigationBarGradientView
{
  navigationBarGradientView = self->_navigationBarGradientView;
  if (navigationBarGradientView)
  {
    v3 = navigationBarGradientView;
  }

  else
  {
    v3 = objc_alloc_init(_TtC9QuickLook14QLGradientView);
    [(QLGradientView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(QLGradientView *)v3 setUserInteractionEnabled:0];
    objc_storeStrong(&self->_navigationBarGradientView, v3);
  }

  return v3;
}

- (id)toolbarGradientView
{
  toolbarGradientView = self->_toolbarGradientView;
  if (toolbarGradientView)
  {
    v3 = toolbarGradientView;
  }

  else
  {
    v3 = objc_alloc_init(_TtC9QuickLook14QLGradientView);
    [(QLGradientView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(QLGradientView *)v3 setUserInteractionEnabled:0];
    [(QLGradientView *)v3 setReversed:1];
    objc_storeStrong(&self->_toolbarGradientView, v3);
  }

  return v3;
}

- (void)_installGradientViewsIfNeeded
{
  v50[4] = *MEMORY[0x277D85DE8];
  superview = [(UIView *)self->_navigationBarGradientView superview];
  if (!superview || (v4 = superview, [(UIView *)self->_toolbarGradientView superview], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    internalNavigationController = [(QLPreviewController *)self internalNavigationController];
    view = [internalNavigationController view];

    if (view)
    {
      navigationBarGradientView = [(QLPreviewController *)self navigationBarGradientView];
      internalNavigationController2 = [(QLPreviewController *)self internalNavigationController];
      navigationBar = [internalNavigationController2 navigationBar];
      [view insertSubview:navigationBarGradientView belowSubview:navigationBar];

      v33 = MEMORY[0x277CCAAD0];
      navigationBarGradientView2 = [(QLPreviewController *)self navigationBarGradientView];
      leadingAnchor = [navigationBarGradientView2 leadingAnchor];
      leadingAnchor2 = [view leadingAnchor];
      v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v50[0] = v41;
      navigationBarGradientView3 = [(QLPreviewController *)self navigationBarGradientView];
      trailingAnchor = [navigationBarGradientView3 trailingAnchor];
      trailingAnchor2 = [view trailingAnchor];
      v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v50[1] = v32;
      navigationBarGradientView4 = [(QLPreviewController *)self navigationBarGradientView];
      topAnchor = [navigationBarGradientView4 topAnchor];
      topAnchor2 = [view topAnchor];
      v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v50[2] = v14;
      navigationBarGradientView5 = [(QLPreviewController *)self navigationBarGradientView];
      heightAnchor = [navigationBarGradientView5 heightAnchor];
      v17 = [heightAnchor constraintEqualToConstant:100.0];
      v50[3] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
      [v33 activateConstraints:v18];

      toolbarGradientView = [(QLPreviewController *)self toolbarGradientView];
      internalNavigationController3 = [(QLPreviewController *)self internalNavigationController];
      toolbar = [internalNavigationController3 toolbar];
      [view insertSubview:toolbarGradientView belowSubview:toolbar];

      v34 = MEMORY[0x277CCAAD0];
      toolbarGradientView2 = [(QLPreviewController *)self toolbarGradientView];
      leadingAnchor3 = [toolbarGradientView2 leadingAnchor];
      leadingAnchor4 = [view leadingAnchor];
      v42 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v49[0] = v42;
      toolbarGradientView3 = [(QLPreviewController *)self toolbarGradientView];
      trailingAnchor3 = [toolbarGradientView3 trailingAnchor];
      trailingAnchor4 = [view trailingAnchor];
      v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v49[1] = v22;
      toolbarGradientView4 = [(QLPreviewController *)self toolbarGradientView];
      bottomAnchor = [toolbarGradientView4 bottomAnchor];
      bottomAnchor2 = [view bottomAnchor];
      v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v49[2] = v26;
      toolbarGradientView5 = [(QLPreviewController *)self toolbarGradientView];
      heightAnchor2 = [toolbarGradientView5 heightAnchor];
      v29 = [heightAnchor2 constraintEqualToConstant:100.0];
      v49[3] = v29;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
      [v34 activateConstraints:v30];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_uninstallGradientViews
{
  [(UIView *)self->_navigationBarGradientView removeFromSuperview];
  toolbarGradientView = self->_toolbarGradientView;

  [(UIView *)toolbarGradientView removeFromSuperview];
}

- (void)_updateBarTintColors
{
  if (_os_feature_enabled_impl())
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    internalNavigationController = [(QLPreviewController *)self internalNavigationController];
    navigationBar = [internalNavigationController navigationBar];
    [navigationBar setTintColor:whiteColor];

    [(QLPreviewController *)self _installGradientViewsIfNeeded];
  }

  else if ([(QLPreviewController *)self presentationMode]== 2)
  {
    navigationBarTintColor = [(QLPreviewController *)self navigationBarTintColor];
    internalNavigationController2 = [(QLPreviewController *)self internalNavigationController];
    navigationBar2 = [internalNavigationController2 navigationBar];
    [navigationBar2 setTintColor:navigationBarTintColor];

    toolbarTintColor = [(QLPreviewController *)self toolbarTintColor];
    toolbarController = [(QLPreviewController *)self toolbarController];
    [toolbarController setBarTintColor:toolbarTintColor];

    [(QLPreviewController *)self _uninstallGradientViews];
  }

  else if ([(QLPreviewController *)self presentationMode])
  {
    [(QLPreviewController *)self _uninstallGradientViews];
    if (_updateBarTintColors_onceToken != -1)
    {
      [QLPreviewController _updateBarTintColors];
    }
  }

  [(QLPreviewController *)self _updateBarGradientOpacity];
}

void __43__QLPreviewController__updateBarTintColors__block_invoke()
{
  v0 = MEMORY[0x277D43EF8];
  v1 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v1 = *v0;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_23A714000, v1, OS_LOG_TYPE_DEFAULT, "Warning: setNavigationBarTintColor:; and setToolbarTintColor:; are only supported when QuickLook is being presented modally. #Support", v2, 2u);
  }
}

void __45__QLPreviewController__updateBackgroundColor__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentAnimator];
  if (!v2 || (v3 = v2, [*(a1 + 32) currentAnimator], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "transitionState"), v4, v3, v5 == 2))
  {
    v8 = [*(a1 + 32) _preferredBackgroundColor];
    v6 = [*(a1 + 32) view];
    [v6 setBackgroundColor:v8];

    v7 = *(*(a1 + 32) + 1248);
    if (objc_opt_respondsToSelector())
    {
      [*(*(a1 + 32) + 1248) hostViewControllerBackgroundColorChanged:v8];
    }

    [*(a1 + 32) _updateBarGradientOpacity];
  }
}

- (void)_updateBarGradientOpacity
{
  if ([(QLPreviewController *)self fullScreen])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [(QLPreviewController *)self setNavigationBarGradientAlpha:v3];
  if ([(QLPreviewController *)self fullScreen])
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  [(QLPreviewController *)self setToolbarGradientAlpha:v4];
}

- (BOOL)accessibilityPerformEscape
{
  currentAnimator = [(QLPreviewController *)self currentAnimator];

  if (!currentAnimator)
  {
    [(QLPreviewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  return currentAnimator == 0;
}

- (void)setNavigationBarShouldBeChromeless:(BOOL)chromeless
{
  if (self->_navigationBarShouldBeChromeless != chromeless)
  {
    self->_navigationBarShouldBeChromeless = chromeless;
    QLRunInMainThread();
  }
}

- (void)setToolbarShouldBeChromeless:(BOOL)chromeless
{
  if (self->_toolbarShouldBeChromeless != chromeless)
  {
    self->_toolbarShouldBeChromeless = chromeless;
    QLRunInMainThread();
  }
}

- (void)updateChromelessBars
{
  v3 = !self->_navigationBarShouldBeChromeless;
  _topViewController = [(QLPreviewController *)self _topViewController];
  navigationItem = [_topViewController navigationItem];
  [navigationItem _setManualScrollEdgeAppearanceProgress:v3];

  _topViewController2 = [(QLPreviewController *)self _topViewController];
  navigationItem2 = [_topViewController2 navigationItem];
  [navigationItem2 _setManualScrollEdgeAppearanceEnabled:1];

  v8 = !self->_toolbarShouldBeChromeless;
  toolbarController = [(QLPreviewController *)self toolbarController];
  customToolbar = [toolbarController customToolbar];
  _backgroundView = [customToolbar _backgroundView];
  [_backgroundView setAlpha:v8];

  v12 = !self->_toolbarShouldBeChromeless;
  toolbarController2 = [(QLPreviewController *)self toolbarController];
  originalToolbar = [toolbarController2 originalToolbar];
  _backgroundView2 = [originalToolbar _backgroundView];
  [_backgroundView2 setAlpha:v12];
}

void __73__QLPreviewController_previewCollectionPrefersWhitePointAdaptivityStyle___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 1048) = *(a1 + 40);
  v2 = [*(a1 + 32) transitionCoordinator];

  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (v2)
  {
    if (!v4)
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v6 = v4;
      v7 = _UIStringFromWhitePointAdaptivityStyle();
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_INFO, "Harmony: Skipping setting white point adaptivity style to '%@', since view controller transition seems to be in progress. #Harmony", buf, 0xCu);
    }
  }

  else
  {
    if (!v4)
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = v4;
      v10 = _UIStringFromWhitePointAdaptivityStyle();
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_23A714000, v9, OS_LOG_TYPE_INFO, "Harmony: Will set style to '%@' – no transition seems to be in progress. #Harmony", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__QLPreviewController_previewCollectionPrefersWhitePointAdaptivityStyle___block_invoke_287;
    v13[3] = &unk_278B57318;
    v11 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v13[5] = v11;
    [MEMORY[0x277D75D18] animateWithDuration:v13 animations:0.3];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __45__QLPreviewController_setScreenEdgePanWidth___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1248);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(*(a1 + 32) + 1248);
    v5 = *(a1 + 40);

    return [v4 setScreenEdgePanWidth:v5];
  }

  return result;
}

void __47__QLPreviewController_setAccessoryViewVisible___block_invoke(uint64_t a1)
{
  if (_UISolariumEnabled())
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) accessoryViewContainer];
    [v3 setHidden:(v2 & 1) == 0];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__QLPreviewController_setAccessoryViewVisible___block_invoke_2;
    v4[3] = &unk_278B57340;
    v4[4] = *(a1 + 32);
    v5 = *(a1 + 40);
    [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.2];
  }
}

void __47__QLPreviewController_setAccessoryViewVisible___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) toolbarController];
  [v2 setAccessoryViewHidden:(*(a1 + 40) & 1) == 0];

  v3 = [*(a1 + 32) toolbarController];
  [v3 updateLayout];
}

- (void)setPrinter:(id)printer
{
  printerCopy = printer;
  v3 = printerCopy;
  QLRunInBackgroundThread();
}

void __34__QLPreviewController_setPrinter___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __34__QLPreviewController_setPrinter___block_invoke_2;
    v11[3] = &unk_278B57368;
    v11[4] = &v12;
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v11];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  if (v13[5])
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v13[5];
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_23A714000, v8, OS_LOG_TYPE_ERROR, "Error getting the printer proxy (%@) #Generic", buf, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 1224), v5);
  }

  _Block_object_dispose(&v12, 8);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateOverlayButtonsAnimated:(BOOL)animated buttons:(id)buttons excludedButtonIdentifiers:(id)identifiers
{
  animatedCopy = animated;
  v39 = *MEMORY[0x277D85DE8];
  buttonsCopy = buttons;
  identifiersCopy = identifiers;
  v27 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = buttonsCopy;
  v7 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v12 = self->_previewToolbarButtons;
        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (!v13)
        {

LABEL_18:
          v15 = v11;
          goto LABEL_19;
        }

        v14 = v13;
        v15 = 0;
        v16 = *v30;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v29 + 1) + 8 * j);
            if ([v18 isEqual:v11])
            {
              v19 = v18;

              v15 = v19;
            }
          }

          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v14);

        if (!v15)
        {
          goto LABEL_18;
        }

LABEL_19:
        [(NSArray *)v27 addObject:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);
  }

  previewToolbarButtons = self->_previewToolbarButtons;
  self->_previewToolbarButtons = v27;
  v21 = v27;

  excludedToolbarButtonIdentifiers = self->_excludedToolbarButtonIdentifiers;
  self->_excludedToolbarButtonIdentifiers = identifiersCopy;

  [(QLPreviewController *)self updateOverlayAnimated:animatedCopy forceRefresh:1];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateOverlayButtonsForTraitCollection:(id)collection animated:(BOOL)animated
{
  previewCollection = self->_previewCollection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__QLPreviewController__updateOverlayButtonsForTraitCollection_animated___block_invoke;
  v5[3] = &unk_278B573B8;
  v5[4] = self;
  animatedCopy = animated;
  [(QLPreviewCollectionProtocol *)previewCollection toolbarButtonsForTraitCollection:collection withCompletionHandler:v5];
}

void __72__QLPreviewController__updateOverlayButtonsForTraitCollection_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v6;
  v7 = v6;
  v8 = v5;
  QLRunInMainThread();
}

void __44__QLPreviewController_updateOverlayButtons___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 view];
  v3 = [v4 traitCollection];
  [v2 _updateOverlayButtonsForTraitCollection:v3 animated:*(a1 + 40)];
}

- (void)openURLIfAllowed:(id)allowed
{
  allowedCopy = allowed;
  delegate = [(QLPreviewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[QLPreviewController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), -[QLPreviewController currentPreviewItem](self, "currentPreviewItem"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 previewController:self shouldOpenURL:allowedCopy forPreviewItem:v8], v8, v7, v9))
  {
    if (objc_opt_respondsToSelector())
    {
      if ([allowedCopy isTelephonyURL])
      {
        gotLoadHelper_x8__OBJC_CLASS___TUDialRequest(v10);
        v12 = [objc_alloc(*(v11 + 3792)) initWithURL:allowedCopy];
        [v12 setShowUIPrompt:1];
        v13 = [v12 URL];

        allowedCopy = v13;
      }
    }

    else
    {
      v14 = MEMORY[0x277D43EF8];
      v15 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v15 = *v14;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23A714000, v15, OS_LOG_TYPE_ERROR, "[NSURL isTelephonyURL] is not available from TelephonyUtilities #Generic", buf, 2u);
      }
    }

    if (allowedCopy)
    {
      allowedCopy = allowedCopy;
      QLRunInMainThread();
    }
  }
}

- (void)_promptUserAndOpenURLIfNeeded:(id)needed
{
  neededCopy = needed;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  ql_applicationName = [mainBundle ql_applicationName];

  if (ql_applicationName)
  {
    v7 = ql_applicationName;
  }

  else
  {
    v7 = @"current application";
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = QLLocalizedString();
  v10 = [v8 localizedStringWithFormat:v9, v7];

  v11 = MEMORY[0x277D75110];
  absoluteString = [neededCopy absoluteString];
  v13 = [v11 alertControllerWithTitle:v10 message:absoluteString preferredStyle:1];

  v14 = MEMORY[0x277D750F8];
  v15 = QLLocalizedStringWithDefaultValue();
  v16 = [v14 actionWithTitle:v15 style:1 handler:0];
  [v13 addAction:v16];

  v17 = MEMORY[0x277D750F8];
  v18 = QLLocalizedStringWithDefaultValue();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__QLPreviewController__promptUserAndOpenURLIfNeeded___block_invoke;
  v21[3] = &unk_278B57058;
  v22 = neededCopy;
  v19 = neededCopy;
  v20 = [v17 actionWithTitle:v18 style:0 handler:v21];
  [v13 addAction:v20];

  [(QLPreviewController *)self presentViewController:v13 animated:1 completion:0];
}

void __53__QLPreviewController__promptUserAndOpenURLIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 openURL:*(a1 + 32) options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)showShareSheetWithPopoverTracker:(id)tracker customSharedURL:(id)l dismissCompletion:(id)completion
{
  trackerCopy = tracker;
  lCopy = l;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = lCopy;
  v10 = trackerCopy;
  QLRunInMainThread();
}

- (void)getStateRestorationUserInfo:(id)info
{
  infoCopy = info;
  v3 = infoCopy;
  QLRunInMainThread();
}

void __51__QLPreviewController_getStateRestorationUserInfo___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 1160) userInfo];
  (*(v1 + 16))(v1, v2);
}

- (void)updateStateRestorationWithUserInfo:(id)info
{
  infoCopy = info;
  userActivity = self->_userActivity;
  if (!userActivity)
  {
    v7 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:@"com.apple.quicklookGenericActivityType"];
    v8 = self->_userActivity;
    self->_userActivity = v7;

    goto LABEL_5;
  }

  userInfo = [(NSUserActivity *)userActivity userInfo];

  v6 = infoCopy;
  if (userInfo != infoCopy)
  {
LABEL_5:
    [(NSUserActivity *)self->_userActivity setUserInfo:infoCopy];
    v6 = infoCopy;
  }
}

- (void)updateKeyCommands
{
  v23[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B48] modifierFlags:0 action:sel__previousPreview];
  v4 = QLLocalizedString();
  [v3 setDiscoverabilityTitle:v4];

  v5 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B60] modifierFlags:0 action:sel__nextPreview];
  v6 = QLLocalizedString();
  [v5 setDiscoverabilityTitle:v6];

  v7 = [MEMORY[0x277D75650] keyCommandWithInput:@"w" modifierFlags:0x100000 action:sel__dismissQuickLookFromKeyboardCommand];
  v8 = QLLocalizedString();
  [v7 setDiscoverabilityTitle:v8];

  v9 = [MEMORY[0x277D43F80] keyCommandWithKeyCommand:v3 identifier:0];
  v23[0] = v9;
  v10 = [MEMORY[0x277D43F80] keyCommandWithKeyCommand:v5 identifier:1];
  v23[1] = v10;
  v11 = [MEMORY[0x277D43F80] keyCommandWithKeyCommand:v7 identifier:8];
  v23[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];

  delegate = [(QLPreviewController *)self delegate];
  LOBYTE(v9) = objc_opt_respondsToSelector();

  objc_initWeak(&location, self);
  v14 = v9 & 1;
  previewCollection = self->_previewCollection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__QLPreviewController_updateKeyCommands__block_invoke;
  v18[3] = &unk_278B57458;
  v21 = v14;
  v18[4] = self;
  v16 = v12;
  v19 = v16;
  objc_copyWeak(&v20, &location);
  [(QLPreviewCollectionProtocol *)previewCollection keyCommandsWithCompletionHandler:v18];
  objc_destroyWeak(&v20);

  objc_destroyWeak(&location);
  v17 = *MEMORY[0x277D85DE8];
}

void __40__QLPreviewController_updateKeyCommands__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  objc_copyWeak(&v6, (a1 + 48));
  QLRunInMainThread();
  objc_destroyWeak(&v6);
}

void __40__QLPreviewController_updateKeyCommands__block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v26 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v32;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v32 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v7 = [v6 keyCommand];
        v8 = MEMORY[0x277D75650];
        v9 = [v7 input];
        v10 = [v8 keyCommandWithInput:v9 modifierFlags:objc_msgSend(v7 action:{"modifierFlags"), sel__keyCommandWasPerformed_}];

        v11 = [v7 discoverabilityTitle];
        [v10 setDiscoverabilityTitle:v11];

        if (*(a1 + 64) != 1 || ([*(a1 + 40) delegate], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "previewController:shouldAllowKeyCommandWithIdentifier:", *(a1 + 40), objc_msgSend(v6, "keyCommandIdentifier")), v12, v13))
        {
          [v26 setObject:v6 forKey:v10];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v3);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = *(a1 + 48);
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * j);
        if (*(a1 + 64) == 1)
        {
          v20 = [*(a1 + 40) delegate];
          v21 = [v20 previewController:*(a1 + 40) shouldAllowKeyCommandWithIdentifier:{objc_msgSend(v19, "keyCommandIdentifier")}];

          if (!v21)
          {
            continue;
          }
        }

        v22 = [v19 keyCommand];
        [v26 setObject:v19 forKey:v22];
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setPreviewKeyCommands:v26];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleKeyPressWithInput:(id)input modifierFlags:(int64_t)flags
{
  inputCopy = input;
  v4 = inputCopy;
  QLRunInMainThread();
}

void __61__QLPreviewController_handleKeyPressWithInput_modifierFlags___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) hasEditedItems])
  {
    v2 = MEMORY[0x277D43EF8];
    v3 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v3 = *v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      *buf = 138412546;
      v35 = v4;
      v36 = 2048;
      v37 = v5;
      v6 = "Host will not perform key press unhandled in service because there are remote unsaved edits (input: %@, modifier flags: %ld) #PreviewController";
LABEL_21:
      _os_log_impl(&dword_23A714000, v3, OS_LOG_TYPE_INFO, v6, buf, 0x16u);
    }
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = [*(a1 + 32) keyCommands];
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [v12 input];
          if ([v13 isEqualToString:*(a1 + 40)])
          {
            v14 = [v12 modifierFlags];
            v15 = *(a1 + 48);

            if (v14 == v15)
            {
              v19 = MEMORY[0x277D43EF8];
              v20 = *MEMORY[0x277D43EF8];
              if (!*MEMORY[0x277D43EF8])
              {
                QLSInitLogging();
                v20 = *v19;
              }

              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = *(a1 + 40);
                v22 = *(a1 + 48);
                v23 = v20;
                v24 = [v12 description];
                *buf = 138412802;
                v35 = v21;
                v36 = 2048;
                v37 = v22;
                v38 = 2112;
                v39 = v24;
                _os_log_impl(&dword_23A714000, v23, OS_LOG_TYPE_INFO, "Host can perform key press unhandled in service (input: %@, modifier flags: %ld) with key command (%@) #PreviewController", buf, 0x20u);
              }

              v25 = *(a1 + 32);
              [v12 action];
              if (objc_opt_respondsToSelector())
              {
                v26 = [v12 action];
                v27 = *(a1 + 32);
                v28 = [v12 action];
                if (v26 == sel__keyCommandWasPerformed_)
                {
                  [v27 performSelector:v28 withObject:v12];
                }

                else
                {
                  [v27 performSelector:v28];
                }
              }

              goto LABEL_31;
            }
          }

          else
          {
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v16 = MEMORY[0x277D43EF8];
    v3 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v3 = *v16;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      *buf = 138412546;
      v35 = v17;
      v36 = 2048;
      v37 = v18;
      v6 = "Key press unhandled in service cannot be handled by the host either: (input: %@, modifier flags: %ld) #PreviewController";
      goto LABEL_21;
    }
  }

LABEL_31:
  v29 = *MEMORY[0x277D85DE8];
}

- (void)remoteViewControllerWasInvalidated
{
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_INFO, "Host was notified of remoteViewControllerWasInvalidated #Generic", buf, 2u);
  }

  [(QLPreviewController *)self setFullScreen:0];
  previewCollection = [(QLPreviewController *)self previewCollection];
  if ([previewCollection isAvailable])
  {
    goto LABEL_8;
  }

  currentAnimator = [(QLPreviewController *)self currentAnimator];

  if (currentAnimator)
  {
    previewCollection = [(QLPreviewController *)self currentAnimator];
    [previewCollection tearDownTransition:1];
LABEL_8:
  }

  self->_previewCollectionNeedsConfiguration = 1;
  [(QLPreviewController *)self setCanChangeCurrentPage:1];
  lastCrashTimeStamp = self->_lastCrashTimeStamp;
  if (!lastCrashTimeStamp || ([(NSDate *)lastCrashTimeStamp timeIntervalSinceNow], v8 < -10.0))
  {
    self->_numberOfRetries = 0;
LABEL_12:
    date = [MEMORY[0x277CBEAA8] date];
    v10 = self->_lastCrashTimeStamp;
    self->_lastCrashTimeStamp = date;

    [(QLPreviewController *)self _removePreviewCollectionFromViewHierarchy];
    previewCollection = self->_previewCollection;
    self->_previewCollection = 0;

    v12 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__QLPreviewController_remoteViewControllerWasInvalidated__block_invoke;
    block[3] = &unk_278B57190;
    block[4] = self;
    dispatch_after(v12, MEMORY[0x277D85CD0], block);
    return;
  }

  numberOfRetries = self->_numberOfRetries;
  if (numberOfRetries <= 2)
  {
    self->_numberOfRetries = numberOfRetries + 1;
    goto LABEL_12;
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  v15 = self->_lastCrashTimeStamp;
  self->_lastCrashTimeStamp = date2;
}

void __49__QLPreviewController_beginInteractiveTransition__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentAnimator];
  if (v2)
  {

LABEL_4:
    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 currentAnimator];
      v9 = [*(a1 + 32) presentedViewController];
      v21 = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_ERROR, "beginInteractiveTransition can't be initiated (currentAnimator: %@, presentedViewController: %@) #AppearanceTransition", &v21, 0x16u);
    }

    goto LABEL_8;
  }

  v3 = [*(a1 + 32) presentedViewController];

  if (v3)
  {
    goto LABEL_4;
  }

  v11 = objc_opt_new();
  [*(a1 + 32) setCurrentAnimator:v11];

  v12 = MEMORY[0x277D43EF8];
  v13 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v13 = *v12;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    v15 = v13;
    v16 = [v14 currentAnimator];
    v21 = 138412290;
    v22 = v16;
    _os_log_impl(&dword_23A714000, v15, OS_LOG_TYPE_INFO, "beginInteractiveTransition is initiated with new currentAnimator: %@ #AppearanceTransition", &v21, 0xCu);
  }

  v17 = [*(a1 + 32) presentationMode];
  v18 = *(a1 + 32);
  if (v17 == 1)
  {
    v19 = [v18 internalNavigationController];
    v20 = [v19 popViewControllerAnimated:1];
  }

  else
  {
    [v18 dismissViewControllerAnimated:1 completion:0];
  }

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)forwardMessage:(id)message toItemAtIndex:(unint64_t)index withUUID:(id)d completionHandler:(id)handler
{
  messageCopy = message;
  dCopy = d;
  handlerCopy = handler;
  v13 = dCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  v12 = dCopy;
  QLRunInMainThread();
}

void __79__QLPreviewController_forwardMessage_toItemAtIndex_withUUID_completionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) previewItemAtIndex:*(a1 + 64)];
  v3 = [v2 originalPreviewItem];
  v4 = [v2 uuid];
  v5 = [v4 isEqual:*(a1 + 40)];

  if ([v3 conformsToProtocol:&unk_284DCEC58])
  {
    v6 = objc_opt_respondsToSelector() ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  if (((v2 != 0) & v5) == 1 && !(([v2 previewItemType] != 12) | v6 & 1))
  {
    [v3 handleMessageFromCustomExtension:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 64);
      v14 = 138412802;
      v15 = v9;
      v16 = 2112;
      v17 = v2;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_23A714000, v8, OS_LOG_TYPE_ERROR, "Could not forward message %@ to item %@ at index %lu #PreviewController", &v14, 0x20u);
    }

    v11 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D43FD0] code:0 userInfo:0];
    (*(v11 + 16))(v11, 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)expandContentOfItemAtIndex:(unint64_t)index withUUID:(id)d unarchivedItemsURLWrapper:(id)wrapper
{
  dCopy = d;
  wrapperCopy = wrapper;
  v7 = wrapperCopy;
  v8 = dCopy;
  QLRunInMainThread();
}

void __85__QLPreviewController_expandContentOfItemAtIndex_withUUID_unarchivedItemsURLWrapper___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) presentationMode] == 2 || objc_msgSend(*(a1 + 32), "presentationMode") == 1)
  {
    v2 = [*(a1 + 32) previewItemAtIndex:*(a1 + 56)];
    v3 = [v2 uuid];
    v4 = [v3 isEqual:*(a1 + 40)];

    if (v2 && v4 && [v2 previewItemType] == 10)
    {
      [*(a1 + 32) setWillTransitionToInternalView:1];
      v5 = [[QLPreviewItemStore alloc] initWithItemsOfDirectoryAtURL:*(a1 + 48)];
      [(QLPreviewItemStore *)v5 setDelegate:*(a1 + 32)];
      v6 = [QLPreviewController controllerWithItemStore:v5];
      [v6 setAllowInteractiveTransitions:0];
      [v6 setDidTransitionFromInternalView:1];
      [v6 setIsContentManaged:{objc_msgSend(*(a1 + 32), "isContentManaged")}];
      v7 = [*(a1 + 32) toolbarController];
      [v7 restoreOriginalToolbar];

      v8 = [*(a1 + 32) internalNavigationController];
      [v8 pushViewController:v6 animated:1];
    }

    else
    {
      v9 = MEMORY[0x277D43EF8];
      v10 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 56);
        v13 = 138412546;
        v14 = v2;
        v15 = 2048;
        v16 = v11;
        _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "Could not expand content of item %@ at index %lu #ZIPHandling", &v13, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __57__QLPreviewController_presentAlertControllerForScenario___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v15 = 0;
    v1 = 0;
    v2 = 0;
    goto LABEL_12;
  }

  v4 = MEMORY[0x277D750F8];
  v5 = QLLocalizedString();
  v2 = [v4 actionWithTitle:v5 style:0 handler:0];

  v6 = [MEMORY[0x277D43F88] sharedInstance];
  v7 = [v6 networkState];

  if (v7 == 1)
  {
    v8 = [MEMORY[0x277D43F88] sharedInstance];
    v9 = [v8 isWifiCapable];

    if (v9)
    {
      MGGetBoolAnswer();
    }

    v16 = QLLocalizedString();
    v13 = MEMORY[0x277D750F8];
    v14 = QLLocalizedString();
    v1 = [v13 actionWithTitle:v14 style:0 handler:&__block_literal_global_406];

    v10 = v16;
    if (!v16)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = QLLocalizedString();
    v1 = 0;
    if (!v10)
    {
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }
  }

  v15 = v10;
  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:0 preferredStyle:1];
  v12 = v11;
  if (v1)
  {
    [v11 addAction:v1];
  }

  [v12 addAction:v2];
  [*(a1 + 32) presentViewController:v12 animated:1 completion:0];

LABEL_12:
}

void __57__QLPreviewController_presentAlertControllerForScenario___block_invoke_2()
{
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=ROOT#AIRPLANE_MODE"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

- (void)createTemporaryEditDirectoryForItemAtIndex:(unint64_t)index completionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = handlerCopy;
  QLRunInMainThread();
}

void __84__QLPreviewController_createTemporaryEditDirectoryForItemAtIndex_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previewItemAtIndex:*(a1 + 48)];
  if (!v2)
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D43EF0] code:0 userInfo:0];
    (*(v3 + 16))(v3, 0, v4);
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v2 saveURL];
  v14 = 0;
  v7 = [v5 URLForDirectory:99 inDomain:1 appropriateForURL:v6 create:1 error:&v14];
  v8 = v14;

  if (!v8 || v7)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_11;
  }

  v9 = MEMORY[0x277CBEBC0];
  v10 = NSTemporaryDirectory();
  v7 = [v9 fileURLWithPath:v10];

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  v13 = 0;
  v11 = [MEMORY[0x277CC6438] wrapperWithURL:v7 readonly:0 error:&v13];
  v12 = v13;
  if (!v12)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

  v8 = v12;
LABEL_11:
  (*(*(a1 + 40) + 16))();

LABEL_12:
}

- (void)setCanChangeCurrentPage:(BOOL)page
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v4, &location);
  pageCopy = page;
  QLRunInMainThread();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __47__QLPreviewController_setCanChangeCurrentPage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1180] = *(a1 + 40);
  }
}

uint64_t __72__QLPreviewController_currentPreviewItemViewControllerIsReadyForDisplay__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 1178) == 1 && (*(v1 + 1179) & 1) == 0)
  {
    *(v1 + 1179) = 1;
    return [*(result + 32) _endDelayingPresentation];
  }

  return result;
}

- (void)currentPreviewItemViewControllerHasUnsavedEdits:(BOOL)edits forItemUUID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  objc_copyWeak(&v8, &location);
  editsCopy = edits;
  v7 = dCopy;
  QLRunInMainThread();

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __83__QLPreviewController_currentPreviewItemViewControllerHasUnsavedEdits_forItemUUID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if (!WeakRetained[146])
    {
      v3 = [MEMORY[0x277CBEB58] set];
      v4 = v7[146];
      v7[146] = v3;

      WeakRetained = v7;
    }

    v5 = WeakRetained[146];
    v6 = *(a1 + 32);
    if (*(a1 + 56) == 1)
    {
      [v5 addObject:v6];
    }

    else
    {
      [v5 removeObject:v6];
    }

    [*(a1 + 40) _updateAllowInteractiveTransitionsIfNeeded];
    [*(a1 + 40) updateDoneButtonMenu];
    WeakRetained = v7;
  }
}

- (BOOL)currentPreviewHasUnsavedEdits
{
  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  v4 = internalCurrentPreviewItem;
  itemsWithEditsInMemory = self->_itemsWithEditsInMemory;
  if (itemsWithEditsInMemory && ([internalCurrentPreviewItem uuid], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[NSMutableSet containsObject:](itemsWithEditsInMemory, "containsObject:", v6), v6, (v7 & 1) != 0))
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    editedCopy = [v4 editedCopy];
    if (editedCopy)
    {
      editedCopy2 = [v4 editedCopy];
      lastSavedEditedCopy = [v4 lastSavedEditedCopy];
      v8 = [editedCopy2 isEqual:lastSavedEditedCopy] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  if (![(QLPreviewController *)self canDismissWithGesture]|| [(QLPreviewController *)self hasEditedItems])
  {
    return 0;
  }

  return [(QLPreviewController *)self allowInteractiveTransitions];
}

- (void)_updateAllowInteractiveTransitionsIfNeeded
{
  if ([(QLPreviewController *)self _shouldAllowInteractiveTransitions])
  {
    delegate = [(QLPreviewController *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(QLPreviewController *)self hasEditedItems]^ 1;
    }

    else
    {
      v5 = 1;
    }

    [(QLPreviewController *)self setAllowInteractiveTransitions:v5];
  }
}

- (BOOL)_shouldAllowInteractiveTransitions
{
  if ([(QLPreviewController *)self presentationMode]== 2)
  {
    view = [(QLPreviewController *)self view];
    window = [view window];
    rootViewController = [window rootViewController];

    if (rootViewController == self)
    {
      return 0;
    }
  }

  if ([(QLPreviewController *)self presentationMode]!= 2 || [(QLPreviewController *)self forceModalPresentation])
  {
    return 0;
  }

  if ([(QLPreviewController *)self modalPresentationStyle]&& [(QLPreviewController *)self modalPresentationStyle]!= 6)
  {
    return [(QLPreviewController *)self modalPresentationStyle]== 5;
  }

  return 1;
}

- (void)previewItemAtIndex:(unint64_t)index wasUpdatedWithLifecycleState:(int64_t)state withError:(id)error
{
  errorCopy = error;
  if (state > 1)
  {
    switch(state)
    {
      case 2:
        delegate = [(QLPreviewController *)self delegate];
        v13 = objc_opt_respondsToSelector();

        if ((v13 & 1) == 0)
        {
          goto LABEL_20;
        }

        delegate2 = [(QLPreviewController *)self delegate];
        [delegate2 previewController:self willPresentPreviewItemAtIndex:index];
        break;
      case 3:
        delegate2 = [(QLPreviewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          _isQuickLookVisible = [(QLPreviewController *)self _isQuickLookVisible];

          if (!_isQuickLookVisible)
          {
            goto LABEL_20;
          }

          delegate2 = [(QLPreviewController *)self delegate];
          [delegate2 previewController:self didPresentPreviewItemAtIndex:index];
        }

        break;
      case 4:
        delegate2 = [(QLPreviewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          _isQuickLookVisible2 = [(QLPreviewController *)self _isQuickLookVisible];

          if (_isQuickLookVisible2)
          {
            goto LABEL_20;
          }

          delegate2 = [(QLPreviewController *)self delegate];
          [delegate2 previewController:self didDismissPreviewItemAtIndex:index];
        }

        break;
      default:
        goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (!state)
  {
    delegate3 = [(QLPreviewController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }

    delegate2 = [(QLPreviewController *)self delegate];
    [delegate2 previewController:self willLoadPreviewItemAtIndex:index];
    goto LABEL_19;
  }

  if (state == 1)
  {
    delegate4 = [(QLPreviewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(QLPreviewController *)self delegate];
      [delegate2 previewController:self didLoadPreviewItemAtIndex:index withError:errorCopy];
LABEL_19:
    }
  }

LABEL_20:
}

- (void)updatePreviewItemAtIndex:(unint64_t)index editedCopy:(id)copy completionHandler:(id)handler
{
  copyCopy = copy;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = copyCopy;
  QLRunInMainThread();
}

uint64_t __50__QLPreviewController_updatePreferredContentSize___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) preferredContentSize];
  if (v4 != *(a1 + 40) || v3 != *(a1 + 48))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__QLPreviewController_updatePreferredContentSize___block_invoke_2;
    v6[3] = &unk_278B575B8;
    v6[4] = *(a1 + 32);
    v7 = *(a1 + 40);
    return [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.2];
  }

  return result;
}

uint64_t __42__QLPreviewController_updateContentFrame___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43EF8];
  v3 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = v3;
    v15.origin.x = v4;
    v15.origin.y = v5;
    v15.size.width = v6;
    v15.size.height = v7;
    v9 = NSStringFromCGRect(v15);
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_23A714000, v8, OS_LOG_TYPE_DEFAULT, "received contentFrameUpdate: %@ #Generic", &v12, 0xCu);
  }

  result = [*(a1 + 32) setContentFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateTitle:(id)title
{
  titleCopy = title;
  v3 = titleCopy;
  QLRunInMainThread();
}

uint64_t __35__QLPreviewController_updateTitle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentTitleFromItemViewController:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateNavigationTitle];
}

- (void)_reloadDataIfNeeded
{
  if (self->_deferReloadData)
  {
    [(QLPreviewController *)self reloadData];
  }
}

- (BOOL)isTopPreviewController
{
  selfCopy = self;
  _topPreviewController = [(QLPreviewController *)self _topPreviewController];
  LOBYTE(selfCopy) = _topPreviewController == selfCopy;

  return selfCopy;
}

- (id)_topPreviewController
{
  internalNavigationController = [(QLPreviewController *)self internalNavigationController];
  topViewController = [internalNavigationController topViewController];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = topViewController;
  if ((isKindOfClass & 1) != 0 || (v7 = [(QLPreviewController *)self _topViewControllerBelongsToHierarchy:topViewController], v6 = self, v7))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_topViewController
{
  internalNavigationController = [(QLPreviewController *)self internalNavigationController];
  topViewController = [internalNavigationController topViewController];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || [(QLPreviewController *)self _topViewControllerBelongsToHierarchy:topViewController])
  {
    v5 = topViewController;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_topViewControllerBelongsToHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  v5 = hierarchyCopy;
  if (hierarchyCopy == self || self->_previewCollection == hierarchyCopy)
  {
    v7 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_modalRootViewController);
    v7 = WeakRetained == v5;
  }

  return v7;
}

- (void)_savePreviousNavigationVCState
{
  v3 = objc_opt_new();
  previousNavigationVCState = self->_previousNavigationVCState;
  self->_previousNavigationVCState = v3;

  navigationController = [(QLPreviewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  -[QLNavigationState setTranslucentNavigationBar:](self->_previousNavigationVCState, "setTranslucentNavigationBar:", [navigationBar isTranslucent]);

  navigationController2 = [(QLPreviewController *)self navigationController];
  toolbar = [navigationController2 toolbar];
  -[QLNavigationState setTranslucentToolbar:](self->_previousNavigationVCState, "setTranslucentToolbar:", [toolbar isTranslucent]);

  navigationController3 = [(QLPreviewController *)self navigationController];
  -[QLNavigationState setNavigationBarHidden:](self->_previousNavigationVCState, "setNavigationBarHidden:", [navigationController3 isNavigationBarHidden]);

  navigationController4 = [(QLPreviewController *)self navigationController];
  -[QLNavigationState setToolBarHidden:](self->_previousNavigationVCState, "setToolBarHidden:", [navigationController4 isToolbarHidden]);

  navigationController5 = [(QLPreviewController *)self navigationController];
  [(QLNavigationState *)self->_previousNavigationVCState setNavigationController:navigationController5];
}

+ (BOOL)canPreviewItem:(id)item
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = item;
  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_DEFAULT, "[API] canPreviewIem: %@ #PreviewController", &v10, 0xCu);
  }

  v6 = [MEMORY[0x277D43F58] itemWithPreviewItem:v3];
  canBePreviewed = [v6 canBePreviewed];

  v8 = *MEMORY[0x277D85DE8];
  return canBePreviewed;
}

+ (id)printPageRendererForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy canBePrintedWithCustomPrinter])
  {
    v4 = [[QLPreviewItemPrinter alloc] initWithItem:itemCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)parentIsNavigationController
{
  parentViewController = [(QLPreviewController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)showNoDataViewIfNeeded
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (![(QLPreviewController *)self hasItemsToPreview]&& !self->_noDataView)
  {
    v3 = [QLErrorView alloc];
    v4 = QLLocalizedString();
    v5 = [(QLErrorView *)v3 initWithTitle:v4];
    noDataView = self->_noDataView;
    self->_noDataView = v5;

    view = [(QLPreviewController *)self view];
    [view insertSubview:self->_noDataView atIndex:0];

    view2 = [(QLPreviewCollectionProtocol *)self->_previewCollection view];
    [view2 setHidden:1];

    [(QLErrorView *)self->_noDataView setTranslatesAutoresizingMaskIntoConstraints:0];
    view3 = [(QLPreviewController *)self view];
    v10 = MEMORY[0x277CCAAD0];
    v11 = self->_noDataView;
    v22 = @"error";
    v23[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v13 = [v10 constraintsWithVisualFormat:@"H:|[error]|" options:0 metrics:0 views:v12];
    [view3 addConstraints:v13];

    view4 = [(QLPreviewController *)self view];
    v15 = MEMORY[0x277CCAAD0];
    v16 = self->_noDataView;
    v20 = @"error";
    v21 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v18 = [v15 constraintsWithVisualFormat:@"V:|[error]|" options:0 metrics:0 views:v17];
    [view4 addConstraints:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)hideNoDataView
{
  [(QLErrorView *)self->_noDataView removeFromSuperview];
  noDataView = self->_noDataView;
  self->_noDataView = 0;

  view = [(QLPreviewCollectionProtocol *)self->_previewCollection view];
  [view setHidden:0];
}

- (BOOL)hasEditedItems
{
  previewItemStore = self->_previewItemStore;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__QLPreviewController_hasEditedItems__block_invoke;
  v4[3] = &unk_278B57608;
  v4[4] = self;
  return [(QLPreviewItemStore *)previewItemStore hasLoadedItemsMatching:v4];
}

uint64_t __37__QLPreviewController_hasEditedItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEdited])
  {
    v4 = 1;
  }

  else
  {
    v5 = *(*(a1 + 32) + 1168);
    v6 = [v3 uuid];
    v4 = [v5 containsObject:v6];
  }

  return v4;
}

- (id)editedItems
{
  previewItemStore = self->_previewItemStore;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__QLPreviewController_editedItems__block_invoke;
  v5[3] = &unk_278B57608;
  v5[4] = self;
  v3 = [(QLPreviewItemStore *)previewItemStore loadedItemsMatching:v5];

  return v3;
}

uint64_t __34__QLPreviewController_editedItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEdited])
  {
    v4 = 1;
  }

  else
  {
    v5 = *(*(a1 + 32) + 1168);
    v6 = [v3 uuid];
    v4 = [v5 containsObject:v6];
  }

  return v4;
}

- (void)_viewControllerPresentationDidInitiate
{
  v5.receiver = self;
  v5.super_class = QLPreviewController;
  [(QLPreviewController *)&v5 _viewControllerPresentationDidInitiate];
  if (!self->_didStartDelayingPresentation)
  {
    presentationController = [(QLPreviewController *)self presentationController];
    if ([presentationController presentationStyle] == 20)
    {
    }

    else
    {
      areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];

      if (areAnimationsEnabled)
      {
        [(QLPreviewController *)self _beginDelayingPresentation:0 cancellationHandler:1.0];
        self->_didStartDelayingPresentation = 1;
        self->_didEndDelayingPresentation = 0;
      }
    }
  }

  [(QLPreviewController *)self _reloadDataIfNeeded];
  [(QLPreviewController *)self _setPresentationMode:2];
}

- (void)reloadData
{
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_DEFAULT, "[API] reloadData #PreviewController", v15, 2u);
  }

  if ([(QLPreviewController *)self quickLookVisibility]== 1)
  {
    self->_updatedWhileDisappearing = 1;
  }

  [(QLPreviewController *)self setCanChangeCurrentPage:1];
  self->_deferReloadData = 0;
  dataSource = [(QLPreviewController *)self dataSource];
  if (dataSource && (v6 = dataSource, -[QLPreviewController dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 numberOfPreviewItemsInPreviewController:self], v7, v6, v9 = v8 - 1, v8 >= 1))
  {
    deferredSetIndex = self->_deferredSetIndex;
    if (deferredSetIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentPreviewItemIndex = self->_currentPreviewItemIndex;
      if (currentPreviewItemIndex < v9)
      {
        v9 = self->_currentPreviewItemIndex;
      }

      if (currentPreviewItemIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 0;
      }

      else
      {
        v12 = v9;
      }
    }

    else
    {
      if (deferredSetIndex >= v9)
      {
        v12 = v8 - 1;
      }

      else
      {
        v12 = self->_deferredSetIndex;
      }

      self->_deferredSetIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    self->_currentPreviewItemIndex = 0x7FFFFFFFFFFFFFFFLL;
    previewItemStore = [(QLPreviewController *)self previewItemStore];
    [previewItemStore reloadWithNumberOfPreviewItems:v8];

    self->_previewCollectionNeedsConfiguration = 1;
    [(QLPreviewController *)self _setCurrentPreviewItemIndex:v12 updatePreview:1 animated:0];
    if (!self->_updatedWhileDisappearing)
    {
      [(QLPreviewController *)self _presentPreviewCollection];
    }

    [(QLPreviewController *)self _configurePreviewCollectionIfNeeded];
    [(QLPreviewController *)self hideNoDataView];
  }

  else
  {
    self->_currentPreviewItemIndex = 0x7FFFFFFFFFFFFFFFLL;
    previewItemStore2 = [(QLPreviewController *)self previewItemStore];
    [previewItemStore2 reloadWithNumberOfPreviewItems:0];

    [(QLPreviewController *)self showNoDataViewIfNeeded];
    [(QLPreviewController *)self updateOverlayAnimated:0 forceRefresh:1];
  }
}

- (void)refreshCurrentPreviewItem
{
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_DEFAULT, "[API] refreshCurrentPreviewItem (calls reloadData) #PreviewController", v5, 2u);
  }

  [(QLPreviewController *)self reloadData];
}

- (void)_nextPreview
{
  currentPreviewItemIndex = [(QLPreviewController *)self currentPreviewItemIndex];
  if (currentPreviewItemIndex < [(QLPreviewItemStore *)self->_previewItemStore numberOfItems]- 1)
  {
    v4 = [(QLPreviewController *)self currentPreviewItemIndex]+ 1;

    [(QLPreviewController *)self _setCurrentPreviewItemIndex:v4 updatePreview:1 animated:0];
  }
}

- (void)_previousPreview
{
  if ([(QLPreviewController *)self currentPreviewItemIndex]>= 1)
  {
    v3 = [(QLPreviewController *)self currentPreviewItemIndex]- 1;

    [(QLPreviewController *)self _setCurrentPreviewItemIndex:v3 updatePreview:1 animated:0];
  }
}

- (void)setPreviewItemDisplayState:(id)state onItemAtIndex:(unint64_t)index
{
  stateCopy = state;
  previewItemStore = self->_previewItemStore;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__QLPreviewController_setPreviewItemDisplayState_onItemAtIndex___block_invoke;
  v9[3] = &unk_278B57630;
  v10 = stateCopy;
  selfCopy = self;
  v8 = stateCopy;
  [(QLPreviewItemStore *)previewItemStore previewItemAtIndex:index withCompletionHandler:v9];
}

void __64__QLPreviewController_setPreviewItemDisplayState_onItemAtIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    [v9 setPreviewItemDisplayState:*(a1 + 32)];
    v6 = [*(a1 + 40) delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(a1 + 40) delegate];
      [v8 previewController:*(a1 + 40) didUpdateDisplayStateOfPreviewItem:v9];
    }
  }
}

- (void)applyPreviewItemDisplayState:(id)state toItem:(id)item
{
  stateCopy = state;
  itemCopy = item;
  [itemCopy setPreviewItemDisplayState:stateCopy];
  v7 = itemCopy;
  if (v7)
  {
    v8 = [(QLPreviewItemStore *)self->_previewItemStore indexOfPreviewItem:v7];
    previewCollection = [(QLPreviewController *)self previewCollection];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      previewCollection2 = [(QLPreviewController *)self previewCollection];
      [previewCollection2 previewItemDisplayState:stateCopy wasAppliedToItemAtIndex:v8];
    }
  }
}

- (void)previewItemAtIndex:(unint64_t)index withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dataSource = [(QLPreviewController *)self dataSource];
  v10 = [dataSource previewController:self previewItemAtIndex:index];

  v8 = [MEMORY[0x277D43F58] itemWithPreviewItem:v10];
  fetcher = [v8 fetcher];
  handlerCopy[2](handlerCopy, v8, fetcher);
}

- (id)keyCommands
{
  allKeys = [(NSMutableDictionary *)self->_previewKeyCommands allKeys];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__QLPreviewController_keyCommands__block_invoke;
  v6[3] = &unk_278B57658;
  v6[4] = self;
  v4 = [allKeys sortedArrayUsingComparator:v6];

  return v4;
}

uint64_t __34__QLPreviewController_keyCommands__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(*(a1 + 32) + 1232);
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:a2];
  v9 = [v5 numberWithUnsignedInteger:{objc_msgSend(v8, "keyCommandIdentifier")}];
  v10 = MEMORY[0x277CCABB0];
  v11 = [*(*(a1 + 32) + 1232) objectForKeyedSubscript:v7];

  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "keyCommandIdentifier")}];
  v13 = [v9 compare:v12];

  return v13;
}

- (void)_keyCommandWasPerformed:(id)performed
{
  v4 = [(NSMutableDictionary *)self->_previewKeyCommands objectForKey:performed];
  if (v4)
  {
    v6 = v4;
    previewCollection = [(QLPreviewController *)self previewCollection];
    [previewCollection keyCommandWasPerformed:v6];

    v4 = v6;
  }
}

- (void)_setPreferredWhitePointAdaptivityStyle:(int64_t)style
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (self->_whitePointAdaptivityStyle == style)
  {
    if (!v5)
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      whitePointAdaptivityStyle = self->_whitePointAdaptivityStyle;
      v7 = v5;
      v8 = _UIStringFromWhitePointAdaptivityStyle();
      v9 = self->_whitePointAdaptivityStyle;
      *buf = 138412546;
      v18 = v8;
      v19 = 2048;
      styleCopy = v9;
      _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_DEBUG, "No whitepoint adaptivity update required, since requested style matches the current one (%@ [%ld]) #Harmony", buf, 0x16u);
    }
  }

  else
  {
    if (!v5)
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = v5;
      v12 = _UIStringFromWhitePointAdaptivityStyle();
      v13 = self->_whitePointAdaptivityStyle;
      v14 = _UIStringFromWhitePointAdaptivityStyle();
      v15 = self->_whitePointAdaptivityStyle;
      *buf = 138413058;
      v18 = v12;
      v19 = 2048;
      styleCopy = style;
      v21 = 2112;
      v22 = v14;
      v23 = 2048;
      v24 = v15;
      _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_DEBUG, "Will request whitepoint adaptivity style update, since requested style (%@ [%ld]) doesn't match the current one (%@ [%ld]) #Harmony", buf, 0x2Au);
    }

    self->_whitePointAdaptivityStyle = style;
    QLRunInMainThread();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_childViewControllerForWhitePointAdaptivityStyle
{
  internalNavigationController = [(QLPreviewController *)self internalNavigationController];
  topViewController = [internalNavigationController topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    internalNavigationController2 = [(QLPreviewController *)self internalNavigationController];
    topViewController2 = [internalNavigationController2 topViewController];
    if (topViewController2 == self)
    {
      internalNavigationController3 = 0;
    }

    else
    {
      internalNavigationController3 = [(QLPreviewController *)self internalNavigationController];
    }
  }

  else
  {
    internalNavigationController3 = 0;
  }

  return internalNavigationController3;
}

- (int64_t)_preferredWhitePointAdaptivityStyle
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    whitePointAdaptivityStyle = self->_whitePointAdaptivityStyle;
    v6 = v4;
    v7 = _UIStringFromWhitePointAdaptivityStyle();
    v8 = self->_whitePointAdaptivityStyle;
    v11 = 138412546;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_DEBUG, "Setting whitepoint adaptivity style to %@ (%ld) #Harmony", &v11, 0x16u);
  }

  result = self->_whitePointAdaptivityStyle;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)itemStore:(id)store canShareItem:(id)item
{
  itemCopy = item;
  delegate = [(QLPreviewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(QLPreviewController *)self delegate];
    originalPreviewItem = [itemCopy originalPreviewItem];
    v10 = [delegate2 previewController:self canShareItem:originalPreviewItem];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)itemStore:(id)store canEditItem:(id)item
{
  itemCopy = item;
  if ([(QLPreviewController *)self itemStore:store editedFileBehaviorForItem:itemCopy]== 1)
  {
    previewItemURL = [itemCopy previewItemURL];

    if (previewItemURL)
    {
      previewItemURL2 = [itemCopy previewItemURL];
      startAccessingSecurityScopedResource = [previewItemURL2 startAccessingSecurityScopedResource];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      previewItemURL3 = [itemCopy previewItemURL];
      path = [previewItemURL3 path];
      v13 = [defaultManager isWritableFileAtPath:path];

      if (startAccessingSecurityScopedResource)
      {
        previewItemURL4 = [itemCopy previewItemURL];
        [previewItemURL4 stopAccessingSecurityScopedResource];

        if ((v13 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (!v13)
      {
LABEL_12:
        v22 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      fpItem = [itemCopy fpItem];

      if (!fpItem)
      {
        goto LABEL_12;
      }

      fpItem2 = [itemCopy fpItem];
      isWritable = [fpItem2 isWritable];

      if ((isWritable & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  delegate = [(QLPreviewController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

  delegate2 = [(QLPreviewController *)self delegate];
  originalPreviewItem = [itemCopy originalPreviewItem];
  v22 = [delegate2 previewController:self canEditItem:originalPreviewItem];

LABEL_13:
  return v22;
}

- (BOOL)itemStore:(id)store canHandleEditedCopyOfPreviewItem:(id)item
{
  v4 = [(QLPreviewController *)self delegate:store];
  v5 = objc_opt_respondsToSelector();

  return v5 & 1;
}

- (unint64_t)itemStore:(id)store editedFileBehaviorForItem:(id)item
{
  itemCopy = item;
  delegate = [(QLPreviewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(QLPreviewController *)self delegate];
    v8 = [delegate2 previewController:self shouldSaveEditedItem:itemCopy];

    v9 = v8 & 1;
  }

  else
  {

    v9 = 0;
  }

  delegate3 = [(QLPreviewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = v9 | 2;
  }

  else
  {
    v12 = v9;
  }

  delegate4 = [(QLPreviewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = v12 | 4;
  }

  else
  {
    v15 = v12;
  }

  return v15;
}

- (BOOL)itemStore:(id)store canMachineReadableCodeBeDetectedInPreviewItem:(id)item
{
  itemCopy = item;
  delegate = [(QLPreviewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate previewController:self shouldDetectMachineReadableCodeForPreviewItem:itemCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)itemStore:(id)store editingModeForPreviewItem:(id)item
{
  storeCopy = store;
  itemCopy = item;
  if ([storeCopy isArchive])
  {
    goto LABEL_2;
  }

  delegate = [(QLPreviewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  delegate2 = [(QLPreviewController *)self delegate];
  if (v11)
  {
    originalPreviewItem = [itemCopy originalPreviewItem];
    v8 = [delegate2 previewController:self editingModeForPreviewItem:originalPreviewItem];

    goto LABEL_6;
  }

  v21 = objc_opt_respondsToSelector();

  if ((v21 & 1) == 0 && [itemCopy previewItemType] != 1)
  {
    v8 = 4;
    [(QLPreviewController *)self setForceDismissActionsPresentation:1];
LABEL_6:
    if (v8 != 1)
    {
      goto LABEL_3;
    }

    previewItemURL = [itemCopy previewItemURL];

    if (previewItemURL)
    {
      previewItemURL2 = [itemCopy previewItemURL];
      startAccessingSecurityScopedResource = [previewItemURL2 startAccessingSecurityScopedResource];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      previewItemURL3 = [itemCopy previewItemURL];
      path = [previewItemURL3 path];
      LODWORD(previewItemURL2) = [defaultManager isWritableFileAtPath:path];

      if (startAccessingSecurityScopedResource)
      {
        previewItemURL4 = [itemCopy previewItemURL];
        [previewItemURL4 stopAccessingSecurityScopedResource];
LABEL_15:
      }
    }

    else
    {
      previewItemURL2 = [itemCopy fpItem];

      if (previewItemURL2)
      {
        previewItemURL4 = [itemCopy fpItem];
        LODWORD(previewItemURL2) = [previewItemURL4 isWritable];
        goto LABEL_15;
      }
    }

    v8 = (previewItemURL2 | [(QLPreviewController *)self itemStore:storeCopy canHandleEditedCopyOfPreviewItem:itemCopy]) & 1;
    goto LABEL_3;
  }

LABEL_2:
  v8 = 0;
LABEL_3:

  return v8;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  previewCollection = [(QLPreviewController *)self previewCollection];

  if (previewCollection == viewControllerCopy)
  {
    self->_willTransitionToInternalView = 0;
  }
}

- (BOOL)_adoptPersona:(id)persona andPerformBlock:(id)block
{
  personaCopy = persona;
  blockCopy = block;
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentPersona = [mEMORY[0x277D77BF8] currentPersona];

  isSystemPersona = [currentPersona isSystemPersona];
  if (personaCopy && (isSystemPersona & 1) != 0)
  {
    v15 = 0;
    v10 = [currentPersona copyCurrentPersonaContextWithError:&v15];
    v11 = v15;
    if (!v11)
    {
      v13 = [currentPersona generateAndRestorePersonaContextWithIdentityString:personaCopy];
      blockCopy[2](blockCopy);
      if (v13)
      {
LABEL_9:

        v12 = 0;
LABEL_10:

        goto LABEL_11;
      }

      v11 = [currentPersona restorePersonaWithSavedPersonaContext:v10];
      if (!v11)
      {
        v12 = 1;
        goto LABEL_10;
      }
    }

    v13 = v11;
    blockCopy[2](blockCopy);
    goto LABEL_9;
  }

  blockCopy[2](blockCopy);
  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_toggleDebugView
{
  previewCollection = self->_previewCollection;
  if (previewCollection)
  {
    [(QLPreviewCollectionProtocol *)previewCollection toggleDebugView];
  }
}

- (id)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (QLBarButtonItem)openInButton
{
  WeakRetained = objc_loadWeakRetained(&self->_openInButton);

  return WeakRetained;
}

- (UIView)accessoryViewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryViewContainer);

  return WeakRetained;
}

- (BOOL)_isInPickMode
{
  v2 = [(QLPreviewController *)self _existingPresentationControllerImmediate:1 effective:1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 presentationStyle] == 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_computePresentationMode
{
  if ([(QLPreviewController *)self _isInPickMode])
  {
    return 4;
  }

  if ([(QLPreviewController *)self parentIsNavigationController])
  {
    return 1;
  }

  if ([(QLPreviewController *)self forceModalPresentation])
  {
    return 2;
  }

  presentingViewController = [(QLPreviewController *)self presentingViewController];
  if (presentingViewController)
  {
    v5 = presentingViewController;
    parentViewController = [(QLPreviewController *)self parentViewController];

    if (!parentViewController)
    {
      return 2;
    }
  }

  return 3;
}

- (NSSet)_pdfItemAllowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (void)didEditCopyOfPreviewItemAtIndex:(unint64_t)index editedCopy:(id)copy completionHandler:(id)handler
{
  copyCopy = copy;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = copyCopy;
  QLRunInMainThread();
}

- (void)didEditCopyOfPreviewItemAtIndex:(unint64_t)index editedCopy:(id)copy
{
  copyCopy = copy;
  v4 = copyCopy;
  QLRunInMainThread();
}

uint64_t __108__QLPreviewController_Editing___didEditCopyOfPreviewItemAtIndex_editedCopy_synchronously_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) url];
    [v2 stopAccessingSecurityScopedResource];
  }

  if (*(a1 + 49) == 1)
  {
    v3 = [*(a1 + 32) containerURL];
    [v3 stopAccessingSecurityScopedResource];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_updatePreviewItem:(id)item editedCopy:(id)copy completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  copyCopy = copy;
  handlerCopy = handler;
  delegate = [(QLPreviewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12 & 1) != 0 && (-[QLPreviewController delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), [itemCopy originalPreviewItem], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "previewController:shouldSaveEditedItem:", self, v14), v14, v13, (v15))
  {
    delegate2 = [(QLPreviewController *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegate3 = [(QLPreviewController *)self delegate];
      originalPreviewItem = [itemCopy originalPreviewItem];
      [delegate3 previewController:self willSaveEditedItem:originalPreviewItem];
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __80__QLPreviewController_Editing___updatePreviewItem_editedCopy_completionHandler___block_invoke;
    v29[3] = &unk_278B58370;
    v30 = itemCopy;
    selfCopy = self;
    v33 = handlerCopy;
    v32 = copyCopy;
    [v30 prepareSaveURL:v29];
  }

  else
  {
    delegate4 = [(QLPreviewController *)self delegate];
    v21 = objc_opt_respondsToSelector();

    v22 = MEMORY[0x277D43EF8];
    if (v21)
    {
      v23 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v23 = *v22;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_23A714000, v23, OS_LOG_TYPE_INFO, "Preview controller: %@ has notified delegate about the updated contents URL. #PreviewController", buf, 0xCu);
      }

      delegate5 = [(QLPreviewController *)self delegate];
      v25 = [copyCopy url];
      originalPreviewItem2 = [itemCopy originalPreviewItem];
      [delegate5 previewController:self updatedContentsURL:v25 forEditedItem:originalPreviewItem2];
    }

    if (handlerCopy)
    {
      v27 = *v22;
      if (!*v22)
      {
        QLSInitLogging();
        v27 = *v22;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_23A714000, v27, OS_LOG_TYPE_INFO, "Preview controller: %@ has finished handling updated item. #PreviewController", buf, 0xCu);
      }

      handlerCopy[2](handlerCopy);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __80__QLPreviewController_Editing___updatePreviewItem_editedCopy_completionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) saveURL];

  if (v2)
  {
    v3 = [*(a1 + 32) saveURL];
    v4 = [v3 startAccessingSecurityScopedResource];

    v5 = MEMORY[0x277CCA9E0];
    v6 = [*(a1 + 32) saveURL];
    v7 = [v5 writingIntentWithURL:v6 options:2];

    v8 = objc_opt_new();
    v28 = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    v10 = objc_opt_new();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __80__QLPreviewController_Editing___updatePreviewItem_editedCopy_completionHandler___block_invoke_8;
    v23[3] = &unk_278B58348;
    v24 = v7;
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v22 = *(a1 + 40);
    v13 = *(a1 + 56);
    *&v14 = v22;
    *(&v14 + 1) = v13;
    *&v15 = v11;
    *(&v15 + 1) = v12;
    v25 = v15;
    v26 = v14;
    v27 = v4;
    v16 = v7;
    [v8 coordinateAccessWithIntents:v9 queue:v10 byAccessor:v23];
  }

  else
  {
    v17 = MEMORY[0x277D43EF8];
    v18 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v18 = *v17;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 40);
      *buf = 138412290;
      v30 = v19;
      _os_log_impl(&dword_23A714000, v18, OS_LOG_TYPE_ERROR, "Preview controller: %@ has no saveURL, aborting. #PreviewController", buf, 0xCu);
    }

    v20 = *(a1 + 56);
    if (v20)
    {
      (*(v20 + 16))();
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __80__QLPreviewController_Editing___updatePreviewItem_editedCopy_completionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D43EF8];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [*(a1 + 32) URL];
    v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v8 = [*(a1 + 40) url];
    v20 = 0;
    v9 = [v7 replaceItemAtURL:v6 withItemAtURL:v8 backupItemName:0 options:0 resultingItemURL:0 error:&v20];
    v5 = v20;

    [*(a1 + 48) setOriginalContentWasUpdated:v9];
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v10 = *v4;
  if (!*v4)
  {
    QLSInitLogging();
    v10 = *v4;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "Error while attempting to write to the updated file: %@ #PreviewController", buf, 0xCu);
  }

  v11 = [*(a1 + 56) delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [*(a1 + 56) delegate];
    v14 = *(a1 + 56);
    v15 = [*(a1 + 48) originalPreviewItem];
    [v13 previewController:v14 didFailToSaveEditedItem:v15 withError:v5];
  }

LABEL_10:
  if (*(a1 + 64))
  {
    v16 = *v4;
    if (!*v4)
    {
      QLSInitLogging();
      v16 = *v4;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 56);
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_23A714000, v16, OS_LOG_TYPE_INFO, "Preview controller: %@ has finished handling updated item. #PreviewController", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  if (*(a1 + 72) == 1)
  {
    v18 = [*(a1 + 48) saveURL];
    [v18 stopAccessingSecurityScopedResource];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleEditedPreviewItem:(id)item editedCopy:(id)copy synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  v38 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  copyCopy = copy;
  handlerCopy = handler;
  editingMode = [itemCopy editingMode];
  v14 = [copyCopy url];
  v35 = 0;
  v15 = *MEMORY[0x277CBE7B8];
  v34 = 0;
  v16 = [v14 getResourceValue:&v35 forKey:v15 error:&v34];
  v17 = v35;
  v18 = v34;

  if ((v16 & 1) == 0)
  {
    v19 = MEMORY[0x277D43EF8];
    v20 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = v18;
      _os_log_impl(&dword_23A714000, v20, OS_LOG_TYPE_ERROR, "The content type of the edited copy could not be determined: %@ #PreviewController", buf, 0xCu);
    }
  }

  previewItemContentType = [itemCopy previewItemContentType];

  if (previewItemContentType)
  {
    v22 = MEMORY[0x277CE1CB8];
    previewItemContentType2 = [itemCopy previewItemContentType];
    previewItemContentType = [v22 typeWithIdentifier:previewItemContentType2];

    v24 = 1;
    if (copyCopy && previewItemContentType)
    {
      v24 = [previewItemContentType isEqual:v17] ^ 1;
    }
  }

  else
  {
    v24 = 1;
  }

  if (editingMode == 2 || (v24 & editingMode) == 1)
  {
    delegate = [(QLPreviewController *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      delegate2 = [(QLPreviewController *)self delegate];
      originalPreviewItem = [itemCopy originalPreviewItem];
      v29 = [copyCopy url];
      [delegate2 previewController:self didSaveEditedCopyOfPreviewItem:originalPreviewItem atURL:v29];
    }

    if (handlerCopy)
    {
      v30 = MEMORY[0x277D43EF8];
      v31 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v31 = *v30;
      }

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      selfCopy2 = self;
LABEL_20:
      _os_log_impl(&dword_23A714000, v31, OS_LOG_TYPE_INFO, "Preview controller: %@ has finished handling updated item. #PreviewController", buf, 0xCu);
LABEL_21:
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    if (editingMode != 1 && editingMode != 3)
    {
      if (!handlerCopy)
      {
        goto LABEL_22;
      }

      v33 = MEMORY[0x277D43EF8];
      v31 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v31 = *v33;
      }

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      selfCopy2 = self;
      goto LABEL_20;
    }

    if (synchronouslyCopy)
    {
      [(QLPreviewController *)self _synchronouslyUpdateContentsOfPreviewItem:itemCopy editedCopy:copyCopy completionHandler:handlerCopy];
    }

    else
    {
      [(QLPreviewController *)self _asynchronouslyUpdateContentsOfPreviewItem:itemCopy editedCopy:copyCopy completionHandler:handlerCopy];
    }
  }

LABEL_22:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_synchronouslyUpdateContentsOfPreviewItem:(id)item editedCopy:(id)copy completionHandler:(id)handler
{
  v55 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  copyCopy = copy;
  handlerCopy = handler;
  saveURL = [itemCopy saveURL];
  if (saveURL)
  {
    delegate = [(QLPreviewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(QLPreviewController *)self delegate];
      originalPreviewItem = [itemCopy originalPreviewItem];
      [delegate2 previewController:self willSaveEditedItem:originalPreviewItem];
    }

    startAccessingSecurityScopedResource = [saveURL startAccessingSecurityScopedResource];
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    *&v50 = 0;
    *(&v50 + 1) = &v50;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__6;
    v53 = __Block_byref_object_dispose__6;
    v54 = 0;
    v17 = objc_opt_new();
    v18 = (*(&v50 + 1) + 40);
    obj = *(*(&v50 + 1) + 40);
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __103__QLPreviewController_Editing___synchronouslyUpdateContentsOfPreviewItem_editedCopy_completionHandler___block_invoke;
    v37 = &unk_278B58398;
    v38 = copyCopy;
    v39 = &v50;
    v40 = &v42;
    [v17 coordinateWritingItemAtURL:saveURL options:2 error:&obj byAccessor:&v34];
    objc_storeStrong(v18, obj);

    [itemCopy setOriginalContentWasUpdated:{*(v43 + 24), v34, v35, v36, v37}];
    v19 = MEMORY[0x277D43EF8];
    if (*(v43 + 24) == 1 && !*(*(&v50 + 1) + 40))
    {
      v31 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v31 = *v19;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v48 = 2112;
        v49 = itemCopy;
        _os_log_impl(&dword_23A714000, v31, OS_LOG_TYPE_INFO, "Preview controller: %@ didUpdateContentsOfPreviewItem:%@. #PreviewController", buf, 0x16u);
      }

      delegate3 = [(QLPreviewController *)self delegate];
      v33 = objc_opt_respondsToSelector();

      if ((v33 & 1) == 0)
      {
        goto LABEL_13;
      }

      delegate4 = [(QLPreviewController *)self delegate];
      originalPreviewItem2 = [itemCopy originalPreviewItem];
      [delegate4 previewController:self didUpdateContentsOfPreviewItem:originalPreviewItem2];
    }

    else
    {
      v20 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v20 = *v19;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(*(&v50 + 1) + 40);
        *buf = 138412290;
        selfCopy2 = v21;
        _os_log_impl(&dword_23A714000, v20, OS_LOG_TYPE_ERROR, "Error while attempting to write to the updated file: %@ #PreviewController", buf, 0xCu);
      }

      delegate5 = [(QLPreviewController *)self delegate];
      v23 = objc_opt_respondsToSelector();

      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }

      delegate4 = [(QLPreviewController *)self delegate];
      originalPreviewItem2 = [itemCopy originalPreviewItem];
      [delegate4 previewController:self didFailToSaveEditedItem:originalPreviewItem2 withError:*(*(&v50 + 1) + 40)];
    }

LABEL_13:
    if (handlerCopy)
    {
      v26 = *v19;
      if (!*v19)
      {
        QLSInitLogging();
        v26 = *v19;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_23A714000, v26, OS_LOG_TYPE_INFO, "Preview controller: %@ has finished handling updated item. #PreviewController", buf, 0xCu);
      }

      handlerCopy[2](handlerCopy);
    }

    if (startAccessingSecurityScopedResource)
    {
      saveURL2 = [itemCopy saveURL];
      [saveURL2 stopAccessingSecurityScopedResource];
    }

    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v42, 8);
    goto LABEL_28;
  }

  if (handlerCopy)
  {
    v28 = MEMORY[0x277D43EF8];
    v29 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      LODWORD(v50) = 138412290;
      *(&v50 + 4) = self;
      _os_log_impl(&dword_23A714000, v29, OS_LOG_TYPE_INFO, "Preview controller: %@ has finished handling updated item, because could not obtain URL to save the edited version of the preview. #PreviewController", &v50, 0xCu);
    }

    handlerCopy[2](handlerCopy);
  }

LABEL_28:

  v30 = *MEMORY[0x277D85DE8];
}

void __103__QLPreviewController_Editing___synchronouslyUpdateContentsOfPreviewItem_editedCopy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [*(a1 + 32) url];
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [v5 replaceItemAtURL:v4 withItemAtURL:v6 backupItemName:0 options:0 resultingItemURL:0 error:&obj];

  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)_asynchronouslyUpdateContentsOfPreviewItem:(id)item editedCopy:(id)copy completionHandler:(id)handler
{
  itemCopy = item;
  copyCopy = copy;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104__QLPreviewController_Editing___asynchronouslyUpdateContentsOfPreviewItem_editedCopy_completionHandler___block_invoke;
  v14[3] = &unk_278B583C0;
  v15 = itemCopy;
  selfCopy = self;
  v17 = copyCopy;
  v18 = handlerCopy;
  v11 = copyCopy;
  v12 = handlerCopy;
  v13 = itemCopy;
  [v13 prepareSaveURL:v14];
}

void __104__QLPreviewController_Editing___asynchronouslyUpdateContentsOfPreviewItem_editedCopy_completionHandler___block_invoke(id *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] saveURL];

  if (v2)
  {
    v3 = [a1[5] delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [a1[5] delegate];
      v6 = a1[5];
      v7 = [a1[4] originalPreviewItem];
      [v5 previewController:v6 willSaveEditedItem:v7];
    }

    v8 = [a1[4] saveURL];
    v9 = [v8 startAccessingSecurityScopedResource];

    v10 = MEMORY[0x277CCA9E0];
    v11 = [a1[4] saveURL];
    v12 = [v10 writingIntentWithURL:v11 options:2];

    v13 = objc_opt_new();
    v32 = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v15 = objc_opt_new();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __104__QLPreviewController_Editing___asynchronouslyUpdateContentsOfPreviewItem_editedCopy_completionHandler___block_invoke_19;
    v27[3] = &unk_278B58348;
    v28 = v12;
    v16 = a1[6];
    v17 = a1[4];
    v26 = a1[5];
    v18 = a1[7];
    *&v19 = v26;
    *(&v19 + 1) = v18;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v29 = v20;
    v30 = v19;
    v31 = v9;
    v21 = v12;
    [v13 coordinateAccessWithIntents:v14 queue:v15 byAccessor:v27];
  }

  else if (a1[7])
  {
    v22 = MEMORY[0x277D43EF8];
    v23 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = a1[5];
      *buf = 138412290;
      v34 = v24;
      _os_log_impl(&dword_23A714000, v23, OS_LOG_TYPE_INFO, "Preview controller: %@ has finished handling updated item, because could not obtain URL to save the edited version of the preview. #PreviewController", buf, 0xCu);
    }

    (*(a1[7] + 2))();
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __104__QLPreviewController_Editing___asynchronouslyUpdateContentsOfPreviewItem_editedCopy_completionHandler___block_invoke_19(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) URL];
  v5 = v4;
  if (!v3 && v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v7 = [*(a1 + 40) url];
    v26 = 0;
    v8 = [v6 replaceItemAtURL:v5 withItemAtURL:v7 backupItemName:0 options:0 resultingItemURL:0 error:&v26];
    v3 = v26;

    [*(a1 + 48) setOriginalContentWasUpdated:v8];
  }

  v9 = MEMORY[0x277D43EF8];
  v10 = *MEMORY[0x277D43EF8];
  if (v5)
  {
    v11 = v3 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (!v10)
    {
      QLSInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 48);
      v17 = *(a1 + 56);
      *buf = 138412546;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_INFO, "Preview controller: %@ didUpdateContentsOfPreviewItem:%@. #PreviewController", buf, 0x16u);
    }

    v19 = [*(a1 + 56) delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v14 = [*(a1 + 56) delegate];
      v21 = *(a1 + 56);
      v16 = [*(a1 + 48) originalPreviewItem];
      [v14 previewController:v21 didUpdateContentsOfPreviewItem:v16];
      goto LABEL_20;
    }
  }

  else
  {
    if (!v10)
    {
      QLSInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = v5;
      v29 = 2112;
      v30 = v3;
      _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "Error while attempting to write to the updated file: %@ %@ #PreviewController", buf, 0x16u);
    }

    v12 = [*(a1 + 56) delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [*(a1 + 56) delegate];
      v15 = *(a1 + 56);
      v16 = [*(a1 + 48) originalPreviewItem];
      [v14 previewController:v15 didFailToSaveEditedItem:v16 withError:v3];
LABEL_20:
    }
  }

  if (*(a1 + 64))
  {
    v22 = *v9;
    if (!*v9)
    {
      QLSInitLogging();
      v22 = *v9;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 56);
      *buf = 138412290;
      v28 = v23;
      _os_log_impl(&dword_23A714000, v22, OS_LOG_TYPE_INFO, "Preview controller: %@ has finished handling updated item. #PreviewController", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  if (*(a1 + 72) == 1)
  {
    v24 = [*(a1 + 48) saveURL];
    [v24 stopAccessingSecurityScopedResource];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)shareableURLForCurrentPreviewItem:(id)item
{
  itemCopy = item;
  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  currentPreviewItemIndex = [(QLPreviewController *)self currentPreviewItemIndex];
  if (!internalCurrentPreviewItem || currentPreviewItemIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __66__QLPreviewController_Editing__shareableURLForCurrentPreviewItem___block_invoke;
    v17 = &unk_278B583E8;
    v7 = &v18;
    v18 = itemCopy;
    v9 = itemCopy;
    QLRunInMainThread();
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__QLPreviewController_Editing__shareableURLForCurrentPreviewItem___block_invoke_2;
    v10[3] = &unk_278B58410;
    v13 = currentPreviewItemIndex;
    v7 = &v11;
    v11 = internalCurrentPreviewItem;
    v12 = itemCopy;
    v8 = itemCopy;
    [(QLPreviewController *)self obtainAndUpdateEditedCopyOfCurrentPreviewItem:v10];
  }
}

void __66__QLPreviewController_Editing__shareableURLForCurrentPreviewItem___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == a2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__QLPreviewController_Editing__shareableURLForCurrentPreviewItem___block_invoke_3;
    v6[3] = &unk_278B57408;
    v3 = &v8;
    v4 = *(a1 + 32);
    v8 = *(a1 + 40);
    v7 = *(a1 + 32);
    [v4 prepareShareableURL:v6];
  }

  else
  {
    v3 = &v5;
    v5 = *(a1 + 40);
    QLRunInMainThread();
  }
}

void __66__QLPreviewController_Editing__shareableURLForCurrentPreviewItem___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 32);
  QLRunInMainThread();
}

void __66__QLPreviewController_Editing__shareableURLForCurrentPreviewItem___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) shareableURL];
  (*(v1 + 16))(v1, v2);
}

- (void)obtainAndUpdateEditedCopyOfCurrentPreviewItem:(id)item
{
  itemCopy = item;
  v3 = itemCopy;
  QLRunInMainThread();
}

void __78__QLPreviewController_Editing__obtainAndUpdateEditedCopyOfCurrentPreviewItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalCurrentPreviewItem];
  if ([v2 canBeEdited] && objc_msgSend(v2, "editedFileBehavior") || objc_msgSend(v2, "editingMode"))
  {
    v3 = [*(a1 + 32) previewCollection];
    if (v3)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __78__QLPreviewController_Editing__obtainAndUpdateEditedCopyOfCurrentPreviewItem___block_invoke_2;
      v5[3] = &unk_278B58438;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      v6 = v4;
      [v3 saveCurrentPreviewEditsSynchronously:0 withCompletionHandler:v5];
    }

    else
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) currentPreviewItemIndex], 0);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) currentPreviewItemIndex], 0);
  }
}

void __78__QLPreviewController_Editing__obtainAndUpdateEditedCopyOfCurrentPreviewItem___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = v4;
  QLRunInMainThread();
}

void __78__QLPreviewController_Editing__obtainAndUpdateEditedCopyOfCurrentPreviewItem___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) previewItemAtIndex:*(a1 + 56)];
  v6 = v2;
  if (*(a1 + 40))
  {
    [v2 setEditedCopy:?];
    v2 = v6;
  }

  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = [v2 editedCopy];
  (*(v4 + 16))(v4, v3, v5);
}

- (void)presentSaveToFilesForEditedItems:(id)items
{
  v5 = [items valueForKey:@"editedFileURL"];
  v4 = [objc_alloc(MEMORY[0x277D75458]) initForExportingURLs:v5 asCopy:1];
  [v4 setDelegate:self];
  [(QLPreviewController *)self presentViewController:v4 animated:1 completion:0];
}

void __103__QLPreviewController_Overlay__updateOverlayAnimated_animatedButtons_forceRefresh_withTraitCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalNavigationController];
  [v2 setNavigationBarHidden:*(a1 + 40) animated:*(a1 + 41)];

  v3 = [*(a1 + 32) internalNavigationController];
  [v3 setToolbarHidden:*(a1 + 42) animated:*(a1 + 41)];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __103__QLPreviewController_Overlay__updateOverlayAnimated_animatedButtons_forceRefresh_withTraitCollection___block_invoke_2;
  v28[3] = &unk_278B57190;
  v28[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] performWithoutAnimation:v28];
  if (([*(a1 + 32) fullScreen] & 1) != 0 || !objc_msgSend(*(a1 + 32), "hasItemsToPreview"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) canShowToolbar] ^ 1;
  }

  v5 = *(a1 + 42);
  if (*(a1 + 41) == 1)
  {
    v6 = [*(a1 + 32) toolbarController];
    v7 = [v6 isHidden];

    if (v4 != v7)
    {
      v8 = [*(a1 + 32) toolbarController];
      v9 = [v8 originalToolbar];
      [v9 _removeAllAnimations:1];

      v10 = [*(a1 + 32) toolbarController];
      v11 = [v10 originalToolbar];
      v12 = [v11 layer];
      v13 = [v12 presentationLayer];
      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [*(a1 + 32) toolbarController];
      v23 = [v22 originalToolbar];
      [v23 setFrame:{v15, v17, v19, v21}];
    }
  }

  v24 = v4 ^ 1;
  v25 = [*(a1 + 32) toolbarController];
  [v25 setHidden:v4];

  v26 = [*(a1 + 32) toolbarController];
  [v26 setOriginalToolbarHidden:v5 & v24];

  v27 = [*(a1 + 32) toolbarController];
  [v27 updateLayout];
}

void __103__QLPreviewController_Overlay__updateOverlayAnimated_animatedButtons_forceRefresh_withTraitCollection___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) toolbarController];
  [v1 updateLayout];
}

void __103__QLPreviewController_Overlay__updateOverlayAnimated_animatedButtons_forceRefresh_withTraitCollection___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) toolbarController];
  if ([v2 isHidden])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = [*(a1 + 32) toolbarController];
  [v4 setToolbarAlpha:v3];

  v7 = [*(a1 + 32) toolbarController];
  if ([v7 isHidden])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [*(a1 + 32) toolbarController];
  [v6 setOriginalToolbarAlpha:v5];
}

- (void)_updateOverlayButtonsIfNeededWithTraitCollection:(id)collection animated:(BOOL)animated updatedToolbarButtons:(id *)buttons
{
  animatedCopy = animated;
  v49 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  if (!collectionCopy)
  {
    collectionCopy = [(QLPreviewController *)self traitCollection];
  }

  v8 = [(QLPreviewController *)self _toolBarButtonsWithTraitCollection:collectionCopy];
  v9 = [(QLPreviewController *)self _navigationBarLeftButtonsWithTraitCollection:collectionCopy];
  v10 = [(QLPreviewController *)self _navigationBarRightButtonsWithTraitCollection:collectionCopy];
  v11 = [(QLPreviewController *)self _numberOfButtonsExcludingSpacersInButtons:v8 disappearingOnTap:0];
  v12 = [(QLPreviewController *)self _numberOfButtonsExcludingSpacersInButtons:v8 disappearingOnTap:1];
  v40 = collectionCopy;
  if (![v10 count] && v11 <= 1 && v12 <= 1)
  {

    v10 = v8;
    v8 = MEMORY[0x277CBEBF8];
  }

  _topViewController = [(QLPreviewController *)self _topViewController];
  toolbarItems = [_topViewController toolbarItems];
  v15 = [(QLPreviewController *)self _barButtonItemArray:v8 isEqualToArray:toolbarItems];

  _topViewController2 = [(QLPreviewController *)self _topViewController];
  navigationItem = [_topViewController2 navigationItem];
  leftBarButtonItems = [navigationItem leftBarButtonItems];
  v43 = v9;
  v19 = [(QLPreviewController *)self _barButtonItemArray:v9 isEqualToArray:leftBarButtonItems];

  _topViewController3 = [(QLPreviewController *)self _topViewController];
  navigationItem2 = [_topViewController3 navigationItem];
  rightBarButtonItems = [navigationItem2 rightBarButtonItems];
  v42 = v10;
  v23 = [(QLPreviewController *)self _barButtonItemArray:v10 isEqualToArray:rightBarButtonItems];

  if (!v15 || !v19 || !v23)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    previewToolbarButtons = [(QLPreviewController *)self previewToolbarButtons];
    v25 = [previewToolbarButtons countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v45;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(previewToolbarButtons);
          }

          [*(*(&v44 + 1) + 8 * i) invalidateCurrentState];
        }

        v26 = [previewToolbarButtons countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v26);
    }

    _topViewController4 = [(QLPreviewController *)self _topViewController];
    navigationItem3 = [_topViewController4 navigationItem];
    [navigationItem3 setLeftItemsSupplementBackButton:1];
  }

  if (!v15)
  {
    _topViewController5 = [(QLPreviewController *)self _topViewController];
    [_topViewController5 setToolbarItems:v8 animated:animatedCopy];
  }

  if (!v19)
  {
    _topViewController6 = [(QLPreviewController *)self _topViewController];
    navigationItem4 = [_topViewController6 navigationItem];
    [navigationItem4 setLeftBarButtonItems:v43 animated:animatedCopy];
  }

  if (!v23)
  {
    _topViewController7 = [(QLPreviewController *)self _topViewController];
    navigationItem5 = [_topViewController7 navigationItem];
    [navigationItem5 setRightBarButtonItems:v42 animated:animatedCopy];
  }

  if (!v15 || !v19 || !v23)
  {
    _topViewController8 = [(QLPreviewController *)self _topViewController];
    toolbarItems2 = [_topViewController8 toolbarItems];
    [(QLPreviewController *)self _updateCurrentPopoverButtonIfNeeded:toolbarItems2];

    [(QLPreviewController *)self _updateNavigationBarBehaviorStyle];
  }

  if (buttons)
  {
    v38 = v8;
    *buttons = v8;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)_barButtonItemArray:(id)array isEqualToArray:(id)toArray
{
  arrayCopy = array;
  toArrayCopy = toArray;
  v7 = toArrayCopy;
  v8 = 0;
  if (!arrayCopy || !toArrayCopy)
  {
    goto LABEL_15;
  }

  v9 = [arrayCopy count];
  if (v9 != [v7 count])
  {
    goto LABEL_14;
  }

  if (![arrayCopy count])
  {
LABEL_12:
    v8 = 1;
    goto LABEL_15;
  }

  v10 = 0;
  while (1)
  {
    v11 = [arrayCopy objectAtIndexedSubscript:v10];
    v12 = [v7 objectAtIndexedSubscript:v10];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if (([v11 _qlIsEqual:v12] & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_11:

    if (++v10 >= [arrayCopy count])
    {
      goto LABEL_12;
    }
  }

  if ([v11 isEqual:v12])
  {
    goto LABEL_11;
  }

LABEL_13:

LABEL_14:
  v8 = 0;
LABEL_15:

  return v8;
}

- (unint64_t)_numberOfButtonsExcludingSpacersInButtons:(id)buttons disappearingOnTap:(BOOL)tap
{
  tapCopy = tap;
  v19 = *MEMORY[0x277D85DE8];
  buttonsCopy = buttons;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [buttonsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(buttonsCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!tapCopy && [v11 QLType] != 5)
          {
            ++v8;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 += [v11 disappearsOnTap] ^ tapCopy ^ 1;
          }

          else
          {
            ++v8;
          }
        }
      }

      v7 = [buttonsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)updateStatusBarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (-[QLPreviewController presentationMode](self, "presentationMode") != 4 && ([MEMORY[0x277CCA8D8] mainBundleRequiresStatusBarHidden] & 1) == 0)
  {
    if ([(QLPreviewController *)self fullScreen])
    {
      v5 = 0x20000;
    }

    else
    {
      v5 = 0x10000;
    }

    v6 = 0.0;
    if ([(QLPreviewController *)self preferredStatusBarUpdateAnimation]== 1)
    {
      if (animatedCopy)
      {
        initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75A88]) initWithDefaultParameters];
        [initWithDefaultParameters duration];
        v6 = v8;
      }
    }

    else if (animatedCopy)
    {
      if ([(QLPreviewController *)self fullScreen])
      {
        v6 = 0.05;
      }

      else
      {
        v6 = 0.18;
      }
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__QLPreviewController_Overlay__updateStatusBarAnimated___block_invoke;
    v9[3] = &unk_278B57190;
    v9[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v5 delay:v9 options:0 animations:v6 completion:0.0];
  }
}

- (void)updateRemoteOverlayIfNeeded
{
  presentedViewController = [(QLPreviewController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shareSheetPopoverTracker = [(QLPreviewController *)self shareSheetPopoverTracker];

    if (shareSheetPopoverTracker)
    {
      objc_initWeak(&location, self);
      presentedViewController2 = [(QLPreviewController *)self presentedViewController];
      objc_initWeak(&from, presentedViewController2);

      shareSheetPopoverTracker2 = [(QLPreviewController *)self shareSheetPopoverTracker];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __59__QLPreviewController_Overlay__updateRemoteOverlayIfNeeded__block_invoke;
      v7[3] = &unk_278B58A58;
      objc_copyWeak(&v8, &location);
      objc_copyWeak(&v9, &from);
      [shareSheetPopoverTracker2 getFrameWithCompletionBlock:v7];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&v8);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __59__QLPreviewController_Overlay__updateRemoteOverlayIfNeeded__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  objc_copyWeak(&v10, (a1 + 32));
  objc_copyWeak(v11, (a1 + 40));
  v11[1] = *&a2;
  v11[2] = *&a3;
  v11[3] = *&a4;
  v11[4] = *&a5;
  QLRunInMainThread();
  objc_destroyWeak(v11);
  objc_destroyWeak(&v10);
}

void __59__QLPreviewController_Overlay__updateRemoteOverlayIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [WeakRetained presentedViewController];

    if (v4 != v2)
    {
      goto LABEL_5;
    }

    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = [WeakRetained presentedViewController];
    v10 = [v9 popoverPresentationController];
    [v10 setSourceRect:{v5, v6, v7, v8}];

    v3 = [WeakRetained presentedViewController];
    v11 = [v3 popoverPresentationController];
    [v11 containerViewWillLayoutSubviews];
  }

LABEL_5:
}

- (int64_t)preferredStatusBarUpdateAnimation
{
  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  shouldOpenInFullScreen = [internalCurrentPreviewItem shouldOpenInFullScreen];

  if (shouldOpenInFullScreen)
  {
    currentAnimator = [(QLPreviewController *)self currentAnimator];
    canShowNavBar = currentAnimator == 0;
  }

  else
  {
    canShowNavBar = [(QLPreviewController *)self canShowNavBar];
  }

  if (canShowNavBar)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)prefersStatusBarHidden
{
  currentAnimator = [(QLPreviewController *)self currentAnimator];
  transitionContext = [currentAnimator transitionContext];
  if (transitionContext)
  {
    v5 = transitionContext;
    currentAnimator2 = [(QLPreviewController *)self currentAnimator];
    transitionContext2 = [currentAnimator2 transitionContext];
    if (!transitionContext2)
    {

      goto LABEL_11;
    }

    v8 = transitionContext2;
    currentAnimator3 = [(QLPreviewController *)self currentAnimator];
    transitionContext3 = [currentAnimator3 transitionContext];
    transitionWasCancelled = [transitionContext3 transitionWasCancelled];

    if (!transitionWasCancelled)
    {
LABEL_11:
      currentAnimator4 = [(QLPreviewController *)self currentAnimator];
      transitionContext4 = [currentAnimator4 transitionContext];
      traitCollection2 = [transitionContext4 viewControllerForKey:*MEMORY[0x277D77240]];

      internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
      LOBYTE(transitionContext4) = [internalCurrentPreviewItem shouldOpenInFullScreen];

      if (transitionContext4)
      {
        if (traitCollection2 == self && [(QLPreviewController *)self fullScreen]&& [(QLPreviewController *)self quickLookVisibility]== 2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        currentAnimator5 = [(QLPreviewController *)self currentAnimator];
        if ([currentAnimator5 transitionState])
        {
        }

        else
        {
          currentAnimator6 = [(QLPreviewController *)self currentAnimator];
          showing = [currentAnimator6 showing];

          if (showing)
          {
            goto LABEL_20;
          }
        }

        if ([(QLPreviewController *)self fullScreen])
        {
LABEL_21:
          v12 = 1;
          goto LABEL_23;
        }
      }

LABEL_20:
      if (![(QLPreviewController *)self previousStatusBarHidden])
      {
        traitCollection = [(QLPreviewController *)traitCollection2 traitCollection];
        v12 = [traitCollection verticalSizeClass] == 1;

        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

  if (![(QLPreviewController *)self fullScreen]|| [(QLPreviewController *)self quickLookVisibility]!= 2)
  {
    traitCollection2 = [(QLPreviewController *)self traitCollection];
    v12 = [(QLPreviewController *)traitCollection2 verticalSizeClass]== 1;
LABEL_23:

    return v12;
  }

  return 1;
}

- (int64_t)preferredStatusBarStyle
{
  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  if (([internalCurrentPreviewItem shouldOpenInFullScreen] & 1) == 0)
  {

    return 0;
  }

  if ([(QLPreviewController *)self quickLookVisibility]== 2)
  {
    currentAnimator = [(QLPreviewController *)self currentAnimator];
    transitionState = [currentAnimator transitionState];

    if (transitionState == 1)
    {
      return 3;
    }

    return 0;
  }

  return 3;
}

- (id)childViewControllerForStatusBarHidden
{
  _topPreviewController = [(QLPreviewController *)self _topPreviewController];
  v4 = _topPreviewController;
  if (_topPreviewController == self)
  {
    v5 = 0;
  }

  else
  {
    v5 = _topPreviewController;
  }

  return v5;
}

- (id)_buttonWithAccessibilityIdentifierPointer:(id)pointer inButtons:(id)buttons
{
  pointerCopy = pointer;
  buttonsCopy = buttons;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__QLPreviewController_Overlay___buttonWithAccessibilityIdentifierPointer_inButtons___block_invoke;
  v9[3] = &unk_278B58A80;
  v9[4] = pointerCopy;
  v9[5] = &v10;
  [buttonsCopy enumerateObjectsUsingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __84__QLPreviewController_Overlay___buttonWithAccessibilityIdentifierPointer_inButtons___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 accessibilityIdentifier];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_updateCurrentPopoverButtonIfNeeded:(id)needed
{
  presentedViewController = [(QLPreviewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(QLPreviewController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(QLPreviewController *)self _displayedButtonWithAccessibilityIdentifier:@"QLOverlayListButtonAccessibilityIdentifier"];
      if (v7)
      {
        v9 = v7;
        presentedViewController3 = [(QLPreviewController *)self presentedViewController];
        [presentedViewController3 setBarButton:v9];

        v7 = v9;
      }
    }
  }
}

- (void)updateNavigationTitle
{
  currentTitleFromItemViewController = [(QLPreviewController *)self currentTitleFromItemViewController];
  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  previewItemTitle = [internalCurrentPreviewItem previewItemTitle];

  if (!currentTitleFromItemViewController || ([currentTitleFromItemViewController stringByReplacingOccurrencesOfString:@" " withString:&stru_284D5E510], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", &stru_284D5E510), v5, v6))
  {
    v7 = previewItemTitle;

    currentTitleFromItemViewController = v7;
  }

  v8 = previewItemTitle;
  previewCollection = [(QLPreviewController *)self previewCollection];
  [previewCollection setTitle:currentTitleFromItemViewController];

  [(QLPreviewController *)self setTitle:currentTitleFromItemViewController];
  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v8 style:0 target:0 action:0];
  previewCollection2 = [(QLPreviewController *)self previewCollection];
  navigationItem = [previewCollection2 navigationItem];
  [navigationItem setBackBarButtonItem:v10];

  v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v8 style:0 target:0 action:0];
  navigationItem2 = [(QLPreviewController *)self navigationItem];
  [navigationItem2 setBackBarButtonItem:v13];

  [(QLPreviewController *)self updateTitleMenuAndDocumentProperties];
}

- (BOOL)_canDisplayOpenInButtonForItem:(id)item
{
  fetcher = [item fetcher];
  isLongFetchOperation = [fetcher isLongFetchOperation];

  LOBYTE(self) = [(QLPreviewController *)self canChangeCurrentPage];
  return +[QLUtilitiesInternal currentAppIsAppleApp]& (isLongFetchOperation ^ 1) & self;
}

- (id)_makeOpenInButtonWithTitle:(BOOL)title
{
  titleCopy = title;
  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  if ([(QLPreviewController *)self _canDisplayOpenInButtonForItem:internalCurrentPreviewItem])
  {
    [(QLPreviewController *)self isContentManaged];
    v6 = _QLGetOpenInAppClaimBindingForItem(internalCurrentPreviewItem);
    if (!v6 || (v7 = [MEMORY[0x277D43F58] openInTypeForItem:internalCurrentPreviewItem appIsContentManaged:{-[QLPreviewController isContentManaged](self, "isContentManaged")}], v7 == 2) && objc_msgSend(internalCurrentPreviewItem, "previewItemType") == 15)
    {
      v8 = 0;
    }

    else
    {
      v9 = [(QLPreviewController *)self _openInTitleForOpenInType:v7 claimBinding:v6];
      if (_UISolariumEnabled())
      {
        v10 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.forward.app"];
        if (titleCopy)
        {
          plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
          [plainButtonConfiguration setTitle:v9];
          [plainButtonConfiguration setImage:v10];
          labelColor = [MEMORY[0x277D75348] labelColor];
          [plainButtonConfiguration setBaseForegroundColor:labelColor];

          [plainButtonConfiguration setImagePadding:8.0];
          [plainButtonConfiguration setContentInsets:{0.0, 8.0, 0.0, 8.0}];
          v13 = objc_alloc_init(MEMORY[0x277D75220]);
          [v13 setConfiguration:plainButtonConfiguration];
          v14 = &selRef__copyToButtonTapped_;
          if (v7 == 1)
          {
            v14 = &selRef__openInButtonTapped_;
          }

          [v13 addTarget:self action:*v14 forControlEvents:64];
          v8 = [[QLBarButtonItem alloc] initWithCustomView:v13];
        }

        else
        {
          v8 = [[QLBarButtonItem alloc] initWithImage:v10 menu:0];
        }
      }

      else
      {
        v8 = [[QLBarButtonItem alloc] initWithTitle:v9 menu:0];
      }

      [(QLBarButtonItem *)v8 setTarget:self];
      if (v7 == 1)
      {
        v15 = 6;
      }

      else
      {
        v15 = 7;
      }

      if (v7 == 1)
      {
        v16 = &selRef__openInButtonTapped_;
      }

      else
      {
        v16 = &selRef__copyToButtonTapped_;
      }

      if (v7 == 1)
      {
        v17 = QLOverlayOpenInButtonAccessibilityIdentifier;
      }

      else
      {
        v17 = QLOverlayCopyToButtonAccessibilityIdentifier;
      }

      [(QLBarButtonItem *)v8 setAction:*v16];
      [(QLBarButtonItem *)v8 setQLType:v15];
      [(QLBarButtonItem *)v8 setAccessibilityIdentifier:*v17];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_doneButton
{
  if ([(QLPreviewController *)self showActionAsDefaultButton]|| [(QLPreviewController *)self isObtainingEditsFromServiceBeforeDismissing])
  {
    v3 = 1;
  }

  else if (_UISolariumEnabled())
  {
    if ([(QLPreviewController *)self hasEditedItems])
    {
      v3 = 0;
    }

    else
    {
      v3 = 24;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [[QLBarButtonItem alloc] initWithBarButtonSystemItem:v3 primaryAction:0];
  [(QLPreviewController *)self _updateDoneButtonMenu:v4];
  [(QLBarButtonItem *)v4 setQLType:1];
  [(QLBarButtonItem *)v4 setAccessibilityIdentifier:@"QLOverlayDoneButtonAccessibilityIdentifier"];

  return v4;
}

- (id)_actionButton
{
  if ([(QLPreviewController *)self useCustomActionButton])
  {
    delegate = [(QLPreviewController *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(QLPreviewController *)self delegate];
      currentPreviewItem = [(QLPreviewController *)self currentPreviewItem];
      v7 = [delegate2 previewController:self customActionButtonTittleForPreviewItem:currentPreviewItem];

      if (v7)
      {
        [(QLPreviewController *)self showActionAsDefaultButton];
        v8 = [[QLBarButtonItem alloc] initWithTitle:v7 style:0 target:self action:sel__actionButtonTapped_];
        [(QLBarButtonItem *)v8 setQLType:3];
        [(QLBarButtonItem *)v8 setAccessibilityIdentifier:@"QLOverlayCustomActionButtonAccessibilityIdentifier"];

        goto LABEL_11;
      }
    }
  }

  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  if ([internalCurrentPreviewItem canBeShared])
  {
    excludedToolbarButtonIdentifiers = [(QLPreviewController *)self excludedToolbarButtonIdentifiers];
    v11 = [excludedToolbarButtonIdentifiers containsObject:@"QLListButtonIdentifier"];

    if ((v11 & 1) == 0 && [(QLPreviewController *)self hasItemsToPreview])
    {
      v8 = [[QLBarButtonItem alloc] initWithTitle:&stru_284D5E510 style:0 target:self action:sel__actionButtonTapped_];
      v12 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
      [(QLBarButtonItem *)v8 setImage:v12];

      v13 = QLLocalizedString();
      [(QLBarButtonItem *)v8 setTitle:v13];

      [(QLBarButtonItem *)v8 setQLType:4];
      [(QLBarButtonItem *)v8 setAccessibilityIdentifier:@"QLOverlayDefaultActionButtonAccessibilityIdentifier"];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)_listButton
{
  v3 = [QLBarButtonItem alloc];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"list.bullet"];
  imageFlippedForRightToLeftLayoutDirection = [v4 imageFlippedForRightToLeftLayoutDirection];
  v6 = [(QLBarButtonItem *)v3 initWithImage:imageFlippedForRightToLeftLayoutDirection style:0 target:self action:sel__listButtonTapped_];

  [(QLBarButtonItem *)v6 setAccessibilityIdentifier:@"QLOverlayListButtonAccessibilityIdentifier"];
  [(QLBarButtonItem *)v6 setQLType:2];

  return v6;
}

- (id)flexibleSpace
{
  v2 = [[QLBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  [(QLBarButtonItem *)v2 setQLType:5];

  return v2;
}

- (id)_toolBarButtonsWithTraitCollection:(id)collection
{
  v115 = *MEMORY[0x277D85DE8];
  if (![(QLPreviewController *)self _isToolbarVisibleForTraitCollection:collection])
  {
    v4 = MEMORY[0x277CBEBF8];
    goto LABEL_95;
  }

  v4 = objc_opt_new();
  if ((_UISolariumEnabled() & 1) == 0)
  {
    _actionButton = [(QLPreviewController *)self _actionButton];
    if (_actionButton)
    {
      [v4 addObject:_actionButton];
      flexibleSpace = [(QLPreviewController *)self flexibleSpace];
      [v4 addObject:flexibleSpace];
    }
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  previewToolbarButtons = [(QLPreviewController *)self previewToolbarButtons];
  v8 = [previewToolbarButtons countByEnumeratingWithState:&v105 objects:v114 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v106;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v106 != v10)
        {
          objc_enumerationMutation(previewToolbarButtons);
        }

        v12 = *(*(&v105 + 1) + 8 * i);
        if (([v12 forceToNavBar] & 1) == 0 && !objc_msgSend(v12, "placement"))
        {
          internalNavigationController = [(QLPreviewController *)self internalNavigationController];
          toolbar = [internalNavigationController toolbar];
          [toolbar frame];
          v17 = [v12 barButtonWithTarget:self action:sel__toolbarButtonPressed_ maxSize:{v15, v16}];
          [v4 addObject:v17];

          if ((_UISolariumEnabled() & 1) == 0)
          {
            flexibleSpace2 = [(QLPreviewController *)self flexibleSpace];
            [v4 addObject:flexibleSpace2];
          }
        }
      }

      v9 = [previewToolbarButtons countByEnumeratingWithState:&v105 objects:v114 count:16];
    }

    while (v9);
  }

  _additionalLeftButtonItems = [(QLPreviewController *)self _additionalLeftButtonItems];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v20 = [_additionalLeftButtonItems countByEnumeratingWithState:&v101 objects:v113 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v102;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v102 != v22)
        {
          objc_enumerationMutation(_additionalLeftButtonItems);
        }

        [v4 addObject:*(*(&v101 + 1) + 8 * j)];
        if ((_UISolariumEnabled() & 1) == 0)
        {
          flexibleSpace3 = [(QLPreviewController *)self flexibleSpace];
          [v4 addObject:flexibleSpace3];
        }
      }

      v21 = [_additionalLeftButtonItems countByEnumeratingWithState:&v101 objects:v113 count:16];
    }

    while (v21);
  }

  if (_UISolariumEnabled() && [v4 count])
  {
    flexibleSpace4 = [(QLPreviewController *)self flexibleSpace];
    [v4 addObject:flexibleSpace4];
  }

  _additionalRightButtonItems = [(QLPreviewController *)self _additionalRightButtonItems];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v27 = [_additionalRightButtonItems countByEnumeratingWithState:&v97 objects:v112 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v98;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v98 != v29)
        {
          objc_enumerationMutation(_additionalRightButtonItems);
        }

        [v4 addObject:*(*(&v97 + 1) + 8 * k)];
        if ((_UISolariumEnabled() & 1) == 0)
        {
          flexibleSpace5 = [(QLPreviewController *)self flexibleSpace];
          [v4 addObject:flexibleSpace5];
        }
      }

      v28 = [_additionalRightButtonItems countByEnumeratingWithState:&v97 objects:v112 count:16];
    }

    while (v28);
  }

  v83 = _additionalLeftButtonItems;
  v84 = _additionalRightButtonItems;
  if ((_UISolariumEnabled() & 1) != 0 || ([(QLPreviewController *)self _openInButton], (v32 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v82 = 0;
  }

  else
  {
    v82 = v32;
    [v4 addObject:?];
    flexibleSpace6 = [(QLPreviewController *)self flexibleSpace];
    [v4 addObject:flexibleSpace6];
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  previewToolbarButtons2 = [(QLPreviewController *)self previewToolbarButtons];
  v35 = [previewToolbarButtons2 countByEnumeratingWithState:&v93 objects:v111 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v94;
    do
    {
      for (m = 0; m != v36; ++m)
      {
        if (*v94 != v37)
        {
          objc_enumerationMutation(previewToolbarButtons2);
        }

        v39 = *(*(&v93 + 1) + 8 * m);
        if (([v39 forceToNavBar] & 1) == 0 && objc_msgSend(v39, "placement") == 1)
        {
          internalNavigationController2 = [(QLPreviewController *)self internalNavigationController];
          toolbar2 = [internalNavigationController2 toolbar];
          [toolbar2 frame];
          v44 = [v39 barButtonWithTarget:self action:sel__toolbarButtonPressed_ maxSize:{v42, v43}];
          [v4 addObject:v44];

          if ((_UISolariumEnabled() & 1) == 0)
          {
            flexibleSpace7 = [(QLPreviewController *)self flexibleSpace];
            [v4 addObject:flexibleSpace7];
          }
        }
      }

      v36 = [previewToolbarButtons2 countByEnumeratingWithState:&v93 objects:v111 count:16];
    }

    while (v36);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  previewToolbarButtons3 = [(QLPreviewController *)self previewToolbarButtons];
  v47 = [previewToolbarButtons3 countByEnumeratingWithState:&v89 objects:v110 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v90;
    do
    {
      for (n = 0; n != v48; ++n)
      {
        if (*v90 != v49)
        {
          objc_enumerationMutation(previewToolbarButtons3);
        }

        v51 = *(*(&v89 + 1) + 8 * n);
        if (([v51 forceToNavBar] & 1) == 0 && objc_msgSend(v51, "placement") == 2)
        {
          internalNavigationController3 = [(QLPreviewController *)self internalNavigationController];
          toolbar3 = [internalNavigationController3 toolbar];
          [toolbar3 frame];
          v56 = [v51 barButtonWithTarget:self action:sel__toolbarButtonPressed_ maxSize:{v54, v55}];
          [v4 addObject:v56];

          if ((_UISolariumEnabled() & 1) == 0)
          {
            flexibleSpace8 = [(QLPreviewController *)self flexibleSpace];
            [v4 addObject:flexibleSpace8];
          }
        }
      }

      v48 = [previewToolbarButtons3 countByEnumeratingWithState:&v89 objects:v110 count:16];
    }

    while (v48);
  }

  if (!_UISolariumEnabled())
  {
    v59 = v83;
    v60 = _additionalRightButtonItems;
    v61 = v82;
    if ([v4 count])
    {
      [v4 removeLastObject];
    }

    lastObject = [v4 lastObject];
    objc_opt_class();
    if (((objc_opt_isKindOfClass() & 1) == 0 || [lastObject placement] != 1) && lastObject != v82)
    {
      goto LABEL_94;
    }

    flexibleSpace9 = [(QLPreviewController *)self flexibleSpace];
    [v4 addObject:flexibleSpace9];
    goto LABEL_93;
  }

  additionalLeftBarButtonItems = [(QLPreviewController *)self additionalLeftBarButtonItems];
  v59 = v83;
  v60 = _additionalRightButtonItems;
  v61 = v82;
  if (![additionalLeftBarButtonItems count])
  {
    additionalRightBarButtonItems = [(QLPreviewController *)self additionalRightBarButtonItems];
    v65 = [additionalRightBarButtonItems count];

    if (v65)
    {
      goto LABEL_75;
    }

    [(QLPreviewController *)self _openInButtonWithTitle:1];
    v61 = additionalLeftBarButtonItems = v82;
  }

LABEL_75:
  if (v61)
  {
    v66 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v67 = v4;
    v68 = [v67 countByEnumeratingWithState:&v85 objects:v109 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v86;
      do
      {
        for (ii = 0; ii != v69; ++ii)
        {
          if (*v86 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = *(*(&v85 + 1) + 8 * ii);
          if ([v72 systemItem] != 5)
          {
            ql_toAction = [v72 ql_toAction];
            [v66 addObject:ql_toAction];
          }
        }

        v69 = [v67 countByEnumeratingWithState:&v85 objects:v109 count:16];
      }

      while (v69);
    }

    v74 = [MEMORY[0x277D75710] menuWithTitle:&stru_284D5E510 image:0 identifier:0 options:1 children:v66];
    v75 = objc_alloc(MEMORY[0x277D751E0]);
    v76 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis"];
    v77 = v61;
    v78 = [v75 initWithImage:v76 menu:v74];

    v4 = [MEMORY[0x277CBEB18] arrayWithObject:v78];

    v61 = v77;
    v59 = v83;
    v60 = v84;
  }

  lastObject = [(QLPreviewController *)self _actionButton];
  if (lastObject)
  {
    [v4 addObject:lastObject];
  }

  if ([v4 count] == 1 || objc_msgSend(v4, "count") == 2)
  {
    flexibleSpace10 = [(QLPreviewController *)self flexibleSpace];
    [v4 insertObject:flexibleSpace10 atIndex:{objc_msgSend(v4, "count") - 1}];
  }

  if (!v61)
  {
    goto LABEL_94;
  }

  [v4 insertObject:v61 atIndex:{objc_msgSend(v4, "count") - 1}];
  flexibleSpace9 = [(QLPreviewController *)self flexibleSpace];
  [v4 insertObject:flexibleSpace9 atIndex:{objc_msgSend(v4, "count") - 1}];
LABEL_93:

LABEL_94:
LABEL_95:
  v80 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_navigationBarRightButtonsWithTraitCollection:(id)collection
{
  v95 = *MEMORY[0x277D85DE8];
  v4 = [(QLPreviewController *)self _isToolbarVisibleForTraitCollection:collection];
  v5 = objc_opt_new();
  if (![(QLPreviewController *)self _shouldDoneButtonBePlacedLeft])
  {
    _topViewController = [(QLPreviewController *)self _topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      _doneButton = [(QLPreviewController *)self _doneButton];
      [v5 addObject:_doneButton];
    }
  }

  if (v4)
  {
    previewToolbarButtons = [(QLPreviewController *)self previewToolbarButtons];
    v10 = [previewToolbarButtons sortedArrayUsingComparator:&__block_literal_global_16];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __78__QLPreviewController_Overlay___navigationBarRightButtonsWithTraitCollection___block_invoke_2;
    v67[3] = &unk_278B58AC8;
    v68 = v5;
    selfCopy = self;
    [v10 enumerateObjectsUsingBlock:v67];

    _additionalLeftButtonItems = v68;
  }

  else
  {
    if (_UISolariumEnabled())
    {
      _actionButton = [(QLPreviewController *)self _actionButton];
      if (_actionButton)
      {
        [v5 addObject:_actionButton];
      }
    }

    v66 = v4;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    previewToolbarButtons2 = [(QLPreviewController *)self previewToolbarButtons];
    v14 = [previewToolbarButtons2 countByEnumeratingWithState:&v86 objects:v94 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v87;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v87 != v16)
          {
            objc_enumerationMutation(previewToolbarButtons2);
          }

          v18 = *(*(&v86 + 1) + 8 * i);
          if ([v18 placement] == 2)
          {
            internalNavigationController = [(QLPreviewController *)self internalNavigationController];
            navigationBar = [internalNavigationController navigationBar];
            [navigationBar frame];
            v23 = [v18 barButtonWithTarget:self action:sel__toolbarButtonPressed_ maxSize:{v21, v22}];
            [v5 addObject:v23];
          }
        }

        v15 = [previewToolbarButtons2 countByEnumeratingWithState:&v86 objects:v94 count:16];
      }

      while (v15);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    previewToolbarButtons3 = [(QLPreviewController *)self previewToolbarButtons];
    v25 = [previewToolbarButtons3 countByEnumeratingWithState:&v82 objects:v93 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v83;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v83 != v27)
          {
            objc_enumerationMutation(previewToolbarButtons3);
          }

          v29 = *(*(&v82 + 1) + 8 * j);
          if ([v29 placement] == 1)
          {
            internalNavigationController2 = [(QLPreviewController *)self internalNavigationController];
            navigationBar2 = [internalNavigationController2 navigationBar];
            [navigationBar2 frame];
            v34 = [v29 barButtonWithTarget:self action:sel__toolbarButtonPressed_ maxSize:{v32, v33}];
            [v5 addObject:v34];
          }
        }

        v26 = [previewToolbarButtons3 countByEnumeratingWithState:&v82 objects:v93 count:16];
      }

      while (v26);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    _additionalRightButtonItems = [(QLPreviewController *)self _additionalRightButtonItems];
    v36 = [_additionalRightButtonItems countByEnumeratingWithState:&v78 objects:v92 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v79;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v79 != v38)
          {
            objc_enumerationMutation(_additionalRightButtonItems);
          }

          [v5 addObject:*(*(&v78 + 1) + 8 * k)];
        }

        v37 = [_additionalRightButtonItems countByEnumeratingWithState:&v78 objects:v92 count:16];
      }

      while (v37);
    }

    if (_UISolariumEnabled())
    {
      flexibleSpace = [(QLPreviewController *)self flexibleSpace];
      [v5 addObject:flexibleSpace];
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    previewToolbarButtons4 = [(QLPreviewController *)self previewToolbarButtons];
    v42 = [previewToolbarButtons4 countByEnumeratingWithState:&v74 objects:v91 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v75;
      do
      {
        for (m = 0; m != v43; ++m)
        {
          if (*v75 != v44)
          {
            objc_enumerationMutation(previewToolbarButtons4);
          }

          v46 = *(*(&v74 + 1) + 8 * m);
          if (![v46 placement])
          {
            internalNavigationController3 = [(QLPreviewController *)self internalNavigationController];
            navigationBar3 = [internalNavigationController3 navigationBar];
            [navigationBar3 frame];
            v51 = [v46 barButtonWithTarget:self action:sel__toolbarButtonPressed_ maxSize:{v49, v50}];
            [v5 addObject:v51];
          }
        }

        v43 = [previewToolbarButtons4 countByEnumeratingWithState:&v74 objects:v91 count:16];
      }

      while (v43);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    _additionalLeftButtonItems = [(QLPreviewController *)self _additionalLeftButtonItems];
    v52 = [_additionalLeftButtonItems countByEnumeratingWithState:&v70 objects:v90 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v71;
      do
      {
        for (n = 0; n != v53; ++n)
        {
          if (*v71 != v54)
          {
            objc_enumerationMutation(_additionalLeftButtonItems);
          }

          [v5 addObject:*(*(&v70 + 1) + 8 * n)];
        }

        v53 = [_additionalLeftButtonItems countByEnumeratingWithState:&v70 objects:v90 count:16];
      }

      while (v53);
    }

    v4 = v66;
  }

  originalRightBarButtonItems = [(QLPreviewController *)self originalRightBarButtonItems];

  if (originalRightBarButtonItems)
  {
    originalRightBarButtonItems2 = [(QLPreviewController *)self originalRightBarButtonItems];
    [v5 addObjectsFromArray:originalRightBarButtonItems2];
  }

  if ([(QLPreviewController *)self presentationStyle]== 1)
  {
    v58 = [v5 indexOfObjectPassingTest:&__block_literal_global_171];
    if (v58 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v59 = v58;
      v60 = [v5 objectAtIndexedSubscript:v58];
      [v5 removeObjectAtIndex:v59];
      [v5 addObject:v60];
    }
  }

  if (!v4)
  {
    if ((_UISolariumEnabled() & 1) == 0)
    {
      _actionButton2 = [(QLPreviewController *)self _actionButton];
      if (_actionButton2)
      {
        [v5 addObject:_actionButton2];
      }
    }

    _openInButton = [(QLPreviewController *)self _openInButton];
    if (_openInButton)
    {
      if (_UISolariumEnabled())
      {
        flexibleSpace2 = [(QLPreviewController *)self flexibleSpace];
        [v5 addObject:flexibleSpace2];
      }

      [v5 addObject:_openInButton];
    }
  }

  v64 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __78__QLPreviewController_Overlay___navigationBarRightButtonsWithTraitCollection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 placement];
  if (v6 <= [v5 placement])
  {
    v8 = [v4 placement];
    v7 = v8 < [v5 placement];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __78__QLPreviewController_Overlay___navigationBarRightButtonsWithTraitCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 forceToNavBar])
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [v3 internalNavigationController];
    v6 = [v5 navigationBar];
    [v6 frame];
    v9 = [v10 barButtonWithTarget:v3 action:sel__toolbarButtonPressed_ maxSize:{v7, v8}];
    [v4 addObject:v9];
  }
}

uint64_t __78__QLPreviewController_Overlay___navigationBarRightButtonsWithTraitCollection___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"QLVisualSearchButton"), v6, v7))
  {
    v8 = 1;
    *a4 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_navigationBarLeftButtonsWithTraitCollection:(id)collection
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [(QLPreviewController *)self _isToolbarVisibleForTraitCollection:collection];
  v5 = _UIBarsDesktopNavigationBarEnabled();
  v6 = objc_opt_new();
  if ([(QLPreviewController *)self _shouldDoneButtonBePlacedLeft])
  {
    _topViewController = [(QLPreviewController *)self _topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      _doneButton = [(QLPreviewController *)self _doneButton];
      [v6 addObject:_doneButton];
    }
  }

  if (v5 && [(QLPreviewController *)self _needsListButton])
  {
    _listButton = [(QLPreviewController *)self _listButton];
    [v6 addObject:_listButton];
  }

  else
  {
    if (v4)
    {
      goto LABEL_18;
    }

    if ([(QLPreviewController *)self _needsListButton])
    {
      _listButton2 = [(QLPreviewController *)self _listButton];
      [v6 addObject:_listButton2];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    _listButton = [(QLPreviewController *)self _additionalLeftButtonItems];
    v12 = [_listButton countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(_listButton);
          }

          [v6 addObject:*(*(&v20 + 1) + 8 * i)];
        }

        v13 = [_listButton countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

LABEL_18:
  originalLeftBarButtonItems = [(QLPreviewController *)self originalLeftBarButtonItems];

  if (originalLeftBarButtonItems)
  {
    originalLeftBarButtonItems2 = [(QLPreviewController *)self originalLeftBarButtonItems];
    [v6 addObjectsFromArray:originalLeftBarButtonItems2];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_toolbarButtonPressed:(id)pressed
{
  v16 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  if ([(QLPreviewController *)self _canPerformBarButtonAction])
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = MEMORY[0x277D43EF8];
      v6 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        identifier = [pressedCopy identifier];
        *buf = 138412546;
        selfCopy = self;
        v14 = 2112;
        v15 = identifier;
        _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_INFO, "Preview controller: %@ is notifying collection about button pressed with identifier: %@. #PreviewController", buf, 0x16u);
      }

      previewCollection = [(QLPreviewController *)self previewCollection];
      identifier2 = [pressedCopy identifier];
      [previewCollection toolbarButtonPressedWithIdentifier:identifier2 completionHandler:&__block_literal_global_175];
    }

    else
    {
      previewCollection = [MEMORY[0x277CCACA8] stringWithFormat:@"the sender sent to _toolbarButtonPressed: should have an identifier. Sender: %@", pressedCopy];
      NSLog(&cfstr_SError.isa, "[QLPreviewController(Overlay) _toolbarButtonPressed:]", previewCollection);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_actionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([(QLPreviewController *)self _canPerformBarButtonAction])
  {
    [(QLPreviewController *)self setOverlayFrozen:1];
    if ([(QLPreviewController *)self useCustomActionButton])
    {
      delegate = [(QLPreviewController *)self delegate];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        delegate2 = [(QLPreviewController *)self delegate];
        internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
        [delegate2 previewController:self customActionButtonWasTappedForPreviewItem:internalCurrentPreviewItem];
      }
    }

    else
    {
      [(QLPreviewController *)self showShareSheetFromBarButton:tappedCopy];
    }
  }
}

- (void)_copyToButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [tappedCopy setEnabled:0];
  }

  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  [(QLPreviewController *)self isContentManaged];
  v6 = _QLGetOpenInAppClaimBindingForItem(internalCurrentPreviewItem);
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__QLPreviewController_Overlay___copyToButtonTapped___block_invoke;
  v8[3] = &unk_278B58B10;
  v7 = v6;
  v9 = v7;
  selfCopy = self;
  objc_copyWeak(&v11, &location);
  [(QLPreviewController *)self shareableURLForCurrentPreviewItem:v8];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

void __52__QLPreviewController_Overlay___copyToButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) isContentManaged];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__QLPreviewController_Overlay___copyToButtonTapped___block_invoke_2;
  v6[3] = &unk_278B57858;
  objc_copyWeak(&v7, (a1 + 48));
  [QLUtilitiesInternal performOpenInWithFileURL:v3 claimBinding:v4 additionalLaunchServicesOptions:0 isContentManaged:v5 completion:v6];
  objc_destroyWeak(&v7);
}

void __52__QLPreviewController_Overlay___copyToButtonTapped___block_invoke_2(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  QLRunInMainThread();
  objc_destroyWeak(&v1);
}

void __52__QLPreviewController_Overlay___copyToButtonTapped___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissQuickLook];
}

- (void)_openInButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [tappedCopy setEnabled:0];
  }

  internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
  [(QLPreviewController *)self isContentManaged];
  v6 = _QLGetOpenInAppClaimBindingForItem(internalCurrentPreviewItem);
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__QLPreviewController_Overlay___openInButtonTapped___block_invoke;
  v9[3] = &unk_278B58B60;
  v7 = v6;
  v10 = v7;
  v8 = tappedCopy;
  v11 = v8;
  selfCopy = self;
  objc_copyWeak(&v13, &location);
  [(QLPreviewController *)self shareableURLForCurrentPreviewItem:v9];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

void __52__QLPreviewController_Overlay___openInButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) bundleRecord];
  v5 = [v4 bundleIdentifier];
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  objc_copyWeak(&v10, (a1 + 56));
  FPExtendBookmarkForDocumentURL();

  objc_destroyWeak(&v10);
}

void __52__QLPreviewController_Overlay___openInButtonTapped___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [a2 copy];
  v6 = [a3 copy];
  if (v6)
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = v8;
      v12 = [v9 bundleRecord];
      v13 = [v12 bundleIdentifier];
      *buf = 138412546;
      v26 = v10;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_ERROR, "Could not obtain bookmark to open file at URL: %@ in place with app: %@. #Sharing", buf, 0x16u);
    }

    v14 = *(a1 + 48);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 48) setEnabled:1];
    }
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *MEMORY[0x277CC1E28];
    v23[0] = *MEMORY[0x277CC1DF8];
    v23[1] = v17;
    v24[0] = v5;
    v24[1] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v19 = [*(a1 + 56) isContentManaged];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __52__QLPreviewController_Overlay___openInButtonTapped___block_invoke_187;
    v21[3] = &unk_278B57858;
    objc_copyWeak(&v22, (a1 + 64));
    [QLUtilitiesInternal performOpenInWithFileURL:v15 claimBinding:v16 additionalLaunchServicesOptions:v18 isContentManaged:v19 completion:v21];

    objc_destroyWeak(&v22);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __52__QLPreviewController_Overlay___openInButtonTapped___block_invoke_187(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  QLRunInMainThread();
  objc_destroyWeak(&v1);
}

void __52__QLPreviewController_Overlay___openInButtonTapped___block_invoke_2_188(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissQuickLook];
}

- (id)_openInTitleForOpenInType:(unint64_t)type claimBinding:(id)binding
{
  bindingCopy = binding;
  if (type - 1 > 1)
  {
    localizedName = 0;
  }

  else
  {
    if (_UISolariumEnabled())
    {
      bundleRecord = [bindingCopy bundleRecord];
      localizedName = [bundleRecord localizedName];
    }

    else
    {
      v8 = MEMORY[0x277CCACA8];
      bundleRecord = QLLocalizedString();
      bundleRecord2 = [bindingCopy bundleRecord];
      localizedName2 = [bundleRecord2 localizedName];
      localizedName = [v8 stringWithFormat:bundleRecord, localizedName2];
    }
  }

  return localizedName;
}

- (void)showShareSheetFromBarButton:(id)button
{
  v15 = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  if (+[QLUtilitiesInternal deviceIsLocked])
  {
    v5 = MEMORY[0x277D43EF8];
    v6 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
      *buf = 138412290;
      v14 = internalCurrentPreviewItem;
      _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_ERROR, "Could not show share sheet for item %@ because device is locked. #Sharing", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    previewCollection = [(QLPreviewController *)self previewCollection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__QLPreviewController_Overlay__showShareSheetFromBarButton___block_invoke;
    v11[3] = &unk_278B56D10;
    v11[4] = self;
    objc_copyWeak(&v12, buf);
    [previewCollection toolbarButtonPressedWithIdentifier:@"QLActionButtonIdentifier" completionHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __60__QLPreviewController_Overlay__showShareSheetFromBarButton___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_copyWeak(&v2, (a1 + 40));
  QLRunInMainThread();
  objc_destroyWeak(&v2);
}

void __60__QLPreviewController_Overlay__showShareSheetFromBarButton___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) _displayedButtonWithAccessibilityIdentifier:@"QLOverlayDefaultActionButtonAccessibilityIdentifier"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showShareSheetFromBarButton:v3];
}

- (void)_showShareSheetFromBarButton:(id)button
{
  buttonCopy = button;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__QLPreviewController_Overlay___showShareSheetFromBarButton___block_invoke;
  v6[3] = &unk_278B56E50;
  v7 = buttonCopy;
  selfCopy = self;
  v5 = buttonCopy;
  [(QLPreviewController *)self _setupDocumentInteractionControllerForPresentation:v6];
}

void __61__QLPreviewController_Overlay___showShareSheetFromBarButton___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sharingInteractionController];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 presentOptionsMenuFromBarButtonItem:*(a1 + 32) animated:1];

    if (v5)
    {
      return;
    }
  }

  else
  {
    v6 = [*(a1 + 40) view];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [*(a1 + 40) view];
    v16 = [v4 presentOptionsMenuFromRect:v15 inView:1 animated:{v8, v10, v12, v14}];

    if (v16)
    {
      return;
    }
  }

  v17 = *(a1 + 40);

  [v17 _stopAccessingUrlForSharingController];
}

- (void)showShareSheetFromRemoteViewWithPopoverTracker:(id)tracker customSharedURL:(id)l dismissCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  lCopy = l;
  completionCopy = completion;
  if (+[QLUtilitiesInternal deviceIsLocked])
  {
    v11 = MEMORY[0x277D43EF8];
    v12 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
      *buf = 138412290;
      v33 = internalCurrentPreviewItem;
      _os_log_impl(&dword_23A714000, v13, OS_LOG_TYPE_ERROR, "Could not show share sheet for item %@ because device is locked. #Sharing", buf, 0xCu);
    }

    completionCopy[2](completionCopy);
  }

  else if (trackerCopy)
  {
    shareSheetPopoverTracker = [(QLPreviewController *)self shareSheetPopoverTracker];

    if (shareSheetPopoverTracker)
    {
      v17 = MEMORY[0x277D43EF8];
      v18 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v18 = *v17;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        internalCurrentPreviewItem2 = [(QLPreviewController *)self internalCurrentPreviewItem];
        *buf = 138412290;
        v33 = internalCurrentPreviewItem2;
        _os_log_impl(&dword_23A714000, v19, OS_LOG_TYPE_ERROR, "Won't show share for remote view again for item %@ because it is already visible on screen. #Sharing", buf, 0xCu);
      }
    }

    else
    {
      [(QLPreviewController *)self setShareSheetPopoverTracker:trackerCopy];
      objc_initWeak(buf, self);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __113__QLPreviewController_Overlay__showShareSheetFromRemoteViewWithPopoverTracker_customSharedURL_dismissCompletion___block_invoke;
      v29[3] = &unk_278B58B88;
      objc_copyWeak(&v31, buf);
      v30 = completionCopy;
      [(QLPreviewController *)self setShareSheetDismissCompletion:v29];
      shareSheetPopoverTracker2 = [(QLPreviewController *)self shareSheetPopoverTracker];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __113__QLPreviewController_Overlay__showShareSheetFromRemoteViewWithPopoverTracker_customSharedURL_dismissCompletion___block_invoke_2;
      v26[3] = &unk_278B58BD8;
      objc_copyWeak(&v28, buf);
      v27 = lCopy;
      [shareSheetPopoverTracker2 getFrameWithCompletionBlock:v26];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v21 = MEMORY[0x277D43EF8];
    v22 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v22 = *v21;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = v22;
      internalCurrentPreviewItem3 = [(QLPreviewController *)self internalCurrentPreviewItem];
      *buf = 138412290;
      v33 = internalCurrentPreviewItem3;
      _os_log_impl(&dword_23A714000, v23, OS_LOG_TYPE_ERROR, "Could not show share sheet for item %@ using popover tracker because popover tracker is nil. #Sharing", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __113__QLPreviewController_Overlay__showShareSheetFromRemoteViewWithPopoverTracker_customSharedURL_dismissCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained view];
  [v3 setUserInteractionEnabled:1];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __113__QLPreviewController_Overlay__showShareSheetFromRemoteViewWithPopoverTracker_customSharedURL_dismissCompletion___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  objc_copyWeak(v11, (a1 + 40));
  v11[1] = *&a2;
  v11[2] = *&a3;
  v11[3] = *&a4;
  v11[4] = *&a5;
  v10 = *(a1 + 32);
  QLRunInMainThread();

  objc_destroyWeak(v11);
}

void __113__QLPreviewController_Overlay__showShareSheetFromRemoteViewWithPopoverTracker_customSharedURL_dismissCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained view];
  [v3 setUserInteractionEnabled:0];

  v4 = objc_loadWeakRetained((a1 + 40));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__QLPreviewController_Overlay__showShareSheetFromRemoteViewWithPopoverTracker_customSharedURL_dismissCompletion___block_invoke_4;
  aBlock[3] = &unk_278B575E0;
  v5 = v4;
  v10 = v5;
  v6 = *(a1 + 64);
  v11 = *(a1 + 48);
  v12 = v6;
  v7 = _Block_copy(aBlock);
  v8 = *(a1 + 32);
  if (v8)
  {
    [v5 _setupDocumentInteractionControllerForPresentationWithURL:v8 isCustomURL:1 completionHandler:v7];
  }

  else
  {
    [v5 _setupDocumentInteractionControllerForPresentation:v7];
  }
}

void __113__QLPreviewController_Overlay__showShareSheetFromRemoteViewWithPopoverTracker_customSharedURL_dismissCompletion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) sharingInteractionController];
  v3 = [*(a1 + 32) view];
  v4 = [v2 presentOptionsMenuFromRect:v3 inView:1 animated:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 32);

    [v5 _stopAccessingUrlForSharingController];
  }
}

- (void)_setupDocumentInteractionControllerForPresentation:(id)presentation
{
  presentationCopy = presentation;
  v5 = objc_opt_new();
  [(QLPreviewController *)self setSharingInteractionController:v5];

  sharingInteractionController = [(QLPreviewController *)self sharingInteractionController];
  [sharingInteractionController setDelegate:self];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__QLPreviewController_Overlay___setupDocumentInteractionControllerForPresentation___block_invoke;
  v8[3] = &unk_278B58C00;
  v8[4] = self;
  v9 = presentationCopy;
  v7 = presentationCopy;
  [(QLPreviewController *)self shareableURLForCurrentPreviewItem:v8];
}

- (void)_setupDocumentInteractionControllerForPresentationWithURL:(id)l isCustomURL:(BOOL)rL completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  lCopy = l;
  handlerCopy = handler;
  v10 = objc_opt_new();
  [(QLPreviewController *)self setSharingInteractionController:v10];

  if (lCopy)
  {
    sharingInteractionController = [(QLPreviewController *)self sharingInteractionController];
    [sharingInteractionController setURL:lCopy];

    sharingInteractionController2 = [(QLPreviewController *)self sharingInteractionController];
    v13 = [sharingInteractionController2 URL];
    startAccessingSecurityScopedResource = [v13 startAccessingSecurityScopedResource];

    if (startAccessingSecurityScopedResource)
    {
      sharingInteractionController3 = [(QLPreviewController *)self sharingInteractionController];
      v16 = [sharingInteractionController3 URL];
      [(QLPreviewController *)self setAccessedUrlForSharingController:v16];
    }

    v17 = MEMORY[0x277D43EF8];
    v18 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v18 = *v17;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = v18;
      internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
      v36 = 138412546;
      v37 = lCopy;
      v38 = 2112;
      v39 = internalCurrentPreviewItem;
      v21 = "Passing URL: %@ to UIDocumentInteractionController to share item: %@. #Sharing";
      v22 = v19;
      v23 = 22;
LABEL_12:
      _os_log_impl(&dword_23A714000, v22, OS_LOG_TYPE_INFO, v21, &v36, v23);
    }
  }

  else
  {
    v24 = MEMORY[0x277D43EF8];
    v25 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v19 = v25;
      internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
      v36 = 138412290;
      v37 = internalCurrentPreviewItem;
      v21 = "Passing no URL to UIDocumentInteractionController to share item: %@. #Sharing";
      v22 = v19;
      v23 = 12;
      goto LABEL_12;
    }
  }

  if (rL)
  {
    v26 = [[QLCustomURLSharingProxyDelegate alloc] initWithDelegate:self];
    [(QLPreviewController *)self setCustomURLSharingProxyDelegate:v26];

    customURLSharingProxyDelegate = [(QLPreviewController *)self customURLSharingProxyDelegate];
    sharingInteractionController4 = [(QLPreviewController *)self sharingInteractionController];
    [sharingInteractionController4 setDelegate:customURLSharingProxyDelegate];
  }

  else
  {
    sharingInteractionController5 = [(QLPreviewController *)self sharingInteractionController];
    [sharingInteractionController5 setDelegate:self];

    internalCurrentPreviewItem2 = [(QLPreviewController *)self internalCurrentPreviewItem];
    previewItemContentType = [internalCurrentPreviewItem2 previewItemContentType];
    sharingInteractionController6 = [(QLPreviewController *)self sharingInteractionController];
    [sharingInteractionController6 setUTI:previewItemContentType];

    customURLSharingProxyDelegate = [(QLPreviewController *)self sharingInteractionController];
    [customURLSharingProxyDelegate setShouldUnzipDocument:1];
  }

  isContentManaged = [(QLPreviewController *)self isContentManaged];
  sharingInteractionController7 = [(QLPreviewController *)self sharingInteractionController];
  [sharingInteractionController7 setIsContentManaged:isContentManaged];

  handlerCopy[2](handlerCopy);
  v35 = *MEMORY[0x277D85DE8];
}

- (void)_stopAccessingUrlForSharingController
{
  accessedUrlForSharingController = [(QLPreviewController *)self accessedUrlForSharingController];

  if (accessedUrlForSharingController)
  {
    accessedUrlForSharingController2 = [(QLPreviewController *)self accessedUrlForSharingController];
    [accessedUrlForSharingController2 stopAccessingSecurityScopedResource];

    [(QLPreviewController *)self setAccessedUrlForSharingController:0];
  }
}

- (void)_listButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([(QLPreviewController *)self _canPerformBarButtonAction])
  {
    v4 = [QLListViewController alloc];
    previewItemStore = [(QLPreviewController *)self previewItemStore];
    internalCurrentPreviewItem = [(QLPreviewController *)self internalCurrentPreviewItem];
    v7 = [(QLListViewController *)v4 initWithPreviewItemStore:previewItemStore currentPreviewItem:internalCurrentPreviewItem];

    [(QLListViewController *)v7 setBarButton:tappedCopy];
    [(QLListViewController *)v7 setArchiveDelegate:self];
    [(QLPreviewController *)self setWillTransitionToInternalView:1];
    [(QLPreviewController *)self presentViewController:v7 animated:1 completion:0];
    previewCollection = [(QLPreviewController *)self previewCollection];
    [previewCollection toolbarButtonPressedWithIdentifier:@"QLListButtonIdentifier" completionHandler:&__block_literal_global_199];
  }
}

- (void)_saveAndObtainEditsBeforeDismissalWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(QLPreviewController *)self isObtainingEditsFromServiceBeforeDismissing])
  {
    [(QLPreviewController *)self _notifyPreviewCollectionOfDoneButtonTapWithCompletionHandler:handlerCopy];
  }

  else
  {
    [(QLPreviewController *)self _obtainEditsFromServiceAndNotifyPreviewCollectionOfDoneButtonTappedWithCompletionHandler:handlerCopy];
  }
}

- (void)_saveAndObtainEditedItemsBeforeDismissalWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__QLPreviewController_Overlay___saveAndObtainEditedItemsBeforeDismissalWithCompletionHandler___block_invoke;
  v6[3] = &unk_278B58C28;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(QLPreviewController *)self _saveAndObtainEditsBeforeDismissalWithCompletionHandler:v6];
}

void __94__QLPreviewController_Overlay___saveAndObtainEditedItemsBeforeDismissalWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v5 = [*(a1 + 32) _editedItemsForDoneActionControllerWithItems:a2];
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4);
  }
}

- (BOOL)_dismissQuickLookIfBlocked
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(QLPreviewController *)self hasItemsToPreview])
  {
    v4 = 1;
    [(QLPreviewController *)self _performQuickLookDismissalAnimated:1];
    goto LABEL_18;
  }

  if (![(QLPreviewController *)self _canPerformBarButtonAction])
  {
    currentAnimator = [(QLPreviewController *)self currentAnimator];

    if (currentAnimator)
    {
      currentAnimator2 = [(QLPreviewController *)self currentAnimator];
      forceDismissalIfNeeded = [currentAnimator2 forceDismissalIfNeeded];

      if (forceDismissalIfNeeded)
      {
        v8 = MEMORY[0x277D43EF8];
        v9 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          QLSInitLogging();
          v9 = *v8;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = v9;
          currentAnimator3 = [(QLPreviewController *)self currentAnimator];
          v16 = 138412290;
          selfCopy = currentAnimator3;
          _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "Forced dismissal of QLPreviewController using Done button with animator: %@ #PreviewController", &v16, 0xCu);
        }
      }
    }

    goto LABEL_17;
  }

  previewCollection = [(QLPreviewController *)self previewCollection];

  if (!previewCollection)
  {
    v12 = MEMORY[0x277D43EF8];
    v13 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v16 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_23A714000, v13, OS_LOG_TYPE_FAULT, "Dismissing QLPreviewController because it does not have a preview collection anymore: %@ #PreviewController", &v16, 0xCu);
    }

    [(QLPreviewController *)self _performQuickLookDismissalAnimated:0];
LABEL_17:
    v4 = 1;
    goto LABEL_18;
  }

  v4 = 0;
LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_obtainEditsFromServiceAndNotifyPreviewCollectionOfDoneButtonTappedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __121__QLPreviewController_Overlay___obtainEditsFromServiceAndNotifyPreviewCollectionOfDoneButtonTappedWithCompletionHandler___block_invoke;
  v6[3] = &unk_278B58460;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(QLPreviewController *)self saveEditsIfNecessary:v6];
}

- (void)_notifyPreviewCollectionOfDoneButtonTapWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  previewCollection = [(QLPreviewController *)self previewCollection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93__QLPreviewController_Overlay___notifyPreviewCollectionOfDoneButtonTapWithCompletionHandler___block_invoke;
  v7[3] = &unk_278B57408;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [previewCollection toolbarButtonPressedWithIdentifier:@"QLDoneButtonIdentifier" completionHandler:v7];
}

void __93__QLPreviewController_Overlay___notifyPreviewCollectionOfDoneButtonTapWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v2;
  QLRunInMainThread();
}

void __93__QLPreviewController_Overlay___notifyPreviewCollectionOfDoneButtonTapWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) editedItems];
  (*(v1 + 16))(v1, v2);
}

- (void)updateDoneButtonMenu
{
  v3 = [(QLPreviewController *)self _displayedButtonWithAccessibilityIdentifier:@"QLOverlayDoneButtonAccessibilityIdentifier"];
  if (v3)
  {
    [(QLPreviewController *)self _updateDoneButtonMenu:v3];
  }

  else
  {
    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_ERROR, "Could not update done button menu because it was not found #PreviewController", v6, 2u);
    }
  }
}

- (void)_updateDoneButtonMenu:(id)menu
{
  menuCopy = menu;
  _dismissActions = [(QLPreviewController *)self _dismissActions];
  v6 = _dismissActions;
  if (_dismissActions && [_dismissActions count])
  {
    [menuCopy setPrimaryAction:0];
    v7 = [MEMORY[0x277D75710] menuWithTitle:&stru_284D5E510 image:0 identifier:0 options:1 children:v6];
    [menuCopy setMenu:v7];
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D750C8];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __54__QLPreviewController_Overlay___updateDoneButtonMenu___block_invoke;
    v13 = &unk_278B56F90;
    objc_copyWeak(&v14, &location);
    v9 = [v8 actionWithHandler:&v10];
    [menuCopy setPrimaryAction:{v9, v10, v11, v12, v13}];

    [menuCopy setMenu:0];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __54__QLPreviewController_Overlay___updateDoneButtonMenu___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained saveAndForceDismissQuickLookAnimated:1];
}

- (void)dismissQuickLook
{
  _dismissActions = [(QLPreviewController *)self _dismissActions];
  v4 = _dismissActions;
  if (_dismissActions && [_dismissActions count])
  {
    [(QLPreviewController *)self presentDismissActions:v4];
  }

  else
  {
    [(QLPreviewController *)self saveAndForceDismissQuickLookAnimated:1];
  }
}

- (void)presentDismissActions:(id)actions
{
  val = self;
  v34 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v25 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:1];
  view = [(QLPreviewController *)val view];
  popoverPresentationController = [v25 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  view2 = [(QLPreviewController *)val view];
  [view2 bounds];
  v8 = v7;
  view3 = [(QLPreviewController *)val view];
  [view3 bounds];
  v11 = v10;
  popoverPresentationController2 = [v25 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v8 * 0.5, v11 * 0.5, 1.0, 1.0}];

  objc_initWeak(&location, val);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = actionsCopy;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v14)
  {
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        attributes = [v17 attributes];
        if (attributes != 1)
        {
          if (attributes == 2)
          {
            v19 = 2;
          }

          else
          {
            if (attributes == 4)
            {
              continue;
            }

            v19 = 0;
          }

          v20 = MEMORY[0x277D750F8];
          title = [v17 title];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __54__QLPreviewController_Overlay__presentDismissActions___block_invoke;
          v26[3] = &unk_278B58C50;
          v26[4] = v17;
          objc_copyWeak(&v27, &location);
          v22 = [v20 actionWithTitle:title style:v19 handler:v26];

          [v25 addAction:v22];
          objc_destroyWeak(&v27);
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v14);
  }

  [(QLPreviewController *)val presentViewController:v25 animated:1 completion:0];
  objc_destroyWeak(&location);

  v23 = *MEMORY[0x277D85DE8];
}

void __54__QLPreviewController_Overlay__presentDismissActions___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 performWithSender:WeakRetained target:0];
}

- (void)saveAndForceDismissQuickLookAnimated:(BOOL)animated
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__QLPreviewController_Overlay__saveAndForceDismissQuickLookAnimated___block_invoke;
  v3[3] = &unk_278B57F18;
  v3[4] = self;
  animatedCopy = animated;
  [(QLPreviewController *)self _saveAndDismissQuickLookIfBlocked:v3];
}

uint64_t __69__QLPreviewController_Overlay__saveAndForceDismissQuickLookAnimated___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _performQuickLookDismissalAnimated:*(result + 40)];
  }

  return result;
}

- (void)_saveAndDismissQuickLookIfBlocked:(id)blocked
{
  blockedCopy = blocked;
  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v5 = blockedCopy;
  QLRunInMainThread();

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __66__QLPreviewController_Overlay___saveAndDismissQuickLookIfBlocked___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__QLPreviewController_Overlay___saveAndDismissQuickLookIfBlocked___block_invoke_2;
  v3[3] = &unk_278B58C78;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [WeakRetained _saveAndObtainEditsBeforeDismissalWithCompletionHandler:v3];

  objc_destroyWeak(&v5);
}

uint64_t __66__QLPreviewController_Overlay___saveAndDismissQuickLookIfBlocked___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dismissQuickLookIfBlocked];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)saveEditsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  [(QLPreviewController *)self _willStartObtainingEditsFromService];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__QLPreviewController_Overlay__saveEditsIfNecessary___block_invoke;
  v6[3] = &unk_278B58438;
  v6[4] = self;
  v7 = necessaryCopy;
  v5 = necessaryCopy;
  [(QLPreviewController *)self obtainAndUpdateEditedCopyOfCurrentPreviewItem:v6];
}

void __53__QLPreviewController_Overlay__saveEditsIfNecessary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 _didObtainEditsFromService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__QLPreviewController_Overlay__saveEditsIfNecessary___block_invoke_2;
  v8[3] = &unk_278B583E8;
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v7 didEditCopyOfPreviewItemAtIndex:a2 editedCopy:v6 completionHandler:v8];
}

uint64_t __53__QLPreviewController_Overlay__saveEditsIfNecessary___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)menuActionsForDismissActions:(id)actions containsAtLeastOneUnsavedCopy:(BOOL)copy editedPreviewItems:(id)items shouldPresentDefaultActions:(BOOL)defaultActions
{
  defaultActionsCopy = defaultActions;
  copyCopy = copy;
  v57 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  val = self;
  itemsCopy = items;
  v39 = [(QLPreviewController *)self _editedItemsForDoneActionControllerWithItems:?];
  v9 = [v39 count];
  v38 = v9;
  if (defaultActionsCopy)
  {
    v10 = v9 + 2;
  }

  else
  {
    v10 = v9;
  }

  v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:v10];
  objc_initWeak(&location, self);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = actionsCopy;
  v11 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v11)
  {
    v12 = *v52;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        v15 = MEMORY[0x277D750C8];
        title = [v14 title];
        image = [v14 image];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __138__QLPreviewController_Overlay__menuActionsForDismissActions_containsAtLeastOneUnsavedCopy_editedPreviewItems_shouldPresentDefaultActions___block_invoke;
        v49[3] = &unk_278B58CC8;
        objc_copyWeak(&v50, &location);
        v49[4] = v14;
        v49[5] = val;
        v18 = [v15 actionWithTitle:title image:image identifier:0 handler:v49];

        if ([v14 attributes])
        {
          [v18 setAttributes:{objc_msgSend(v14, "attributes")}];
        }

        [v43 addObject:v18];

        objc_destroyWeak(&v50);
      }

      v11 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v11);
  }

  if (defaultActionsCopy)
  {
    objc_initWeak(&from, val);
    v19 = MEMORY[0x277D750C8];
    v20 = QLLocalizedString();
    v21 = [MEMORY[0x277D755B8] systemImageNamed:@"folder"];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __138__QLPreviewController_Overlay__menuActionsForDismissActions_containsAtLeastOneUnsavedCopy_editedPreviewItems_shouldPresentDefaultActions___block_invoke_4;
    v46[3] = &unk_278B56F90;
    objc_copyWeak(&v47, &from);
    v22 = [v19 actionWithTitle:v20 image:v21 identifier:0 handler:v46];

    [v43 addObject:v22];
    v23 = MEMORY[0x277D750C8];
    v24 = QLLocalizedString();
    v25 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __138__QLPreviewController_Overlay__menuActionsForDismissActions_containsAtLeastOneUnsavedCopy_editedPreviewItems_shouldPresentDefaultActions___block_invoke_6;
    v44[3] = &unk_278B56F90;
    objc_copyWeak(&v45, &from);
    v26 = [v23 actionWithTitle:v24 image:v25 identifier:0 handler:v44];

    [v26 setAttributes:2];
    [v43 addObject:v26];

    objc_destroyWeak(&v45);
    objc_destroyWeak(&v47);
    objc_destroyWeak(&from);
  }

  if (v38 != 1)
  {
    if (!copyCopy)
    {
      goto LABEL_21;
    }

LABEL_19:
    v29 = MEMORY[0x277CCACA8];
    v30 = QLLocalizedDictionaryString();
    v31 = [v29 localizedStringWithFormat:v30, v38];

    v32 = [MEMORY[0x277D75710] menuWithTitle:v31 image:0 identifier:0 options:1 children:v43];
    v33 = [MEMORY[0x277CBEA60] arrayWithObject:v32];

    goto LABEL_22;
  }

  internalCurrentPreviewItem = [(QLPreviewController *)val internalCurrentPreviewItem];
  editedFileURL = [internalCurrentPreviewItem editedFileURL];
  if (!editedFileURL)
  {

    if (!copyCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_21:
  v33 = v43;
LABEL_22:
  objc_destroyWeak(&location);

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

void __138__QLPreviewController_Overlay__menuActionsForDismissActions_containsAtLeastOneUnsavedCopy_editedPreviewItems_shouldPresentDefaultActions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __138__QLPreviewController_Overlay__menuActionsForDismissActions_containsAtLeastOneUnsavedCopy_editedPreviewItems_shouldPresentDefaultActions___block_invoke_2;
  v3[3] = &unk_278B58CA0;
  v4 = *(a1 + 32);
  [WeakRetained _saveAndObtainEditedItemsBeforeDismissalWithCompletionHandler:v3];
}

void __138__QLPreviewController_Overlay__menuActionsForDismissActions_containsAtLeastOneUnsavedCopy_editedPreviewItems_shouldPresentDefaultActions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldDismissQuickLookAutomatically])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __138__QLPreviewController_Overlay__menuActionsForDismissActions_containsAtLeastOneUnsavedCopy_editedPreviewItems_shouldPresentDefaultActions___block_invoke_3;
    v6[3] = &unk_278B56E50;
    v4 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v3;
    [v4 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    v5 = [*(a1 + 32) completionHandler];
    (v5)[2](v5, *(a1 + 32), v3);
  }
}

void __138__QLPreviewController_Overlay__menuActionsForDismissActions_containsAtLeastOneUnsavedCopy_editedPreviewItems_shouldPresentDefaultActions___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
}

void __138__QLPreviewController_Overlay__menuActionsForDismissActions_containsAtLeastOneUnsavedCopy_editedPreviewItems_shouldPresentDefaultActions___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __138__QLPreviewController_Overlay__menuActionsForDismissActions_containsAtLeastOneUnsavedCopy_editedPreviewItems_shouldPresentDefaultActions___block_invoke_5;
  v5[3] = &unk_278B58CF0;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained _saveAndObtainEditedItemsBeforeDismissalWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
}

void __138__QLPreviewController_Overlay__menuActionsForDismissActions_containsAtLeastOneUnsavedCopy_editedPreviewItems_shouldPresentDefaultActions___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentSaveToFilesForEditedItems:v3];
}

void __138__QLPreviewController_Overlay__menuActionsForDismissActions_containsAtLeastOneUnsavedCopy_editedPreviewItems_shouldPresentDefaultActions___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (id)_dismissActions
{
  editedItems = [(QLPreviewController *)self editedItems];
  v4 = editedItems;
  if (editedItems)
  {
    v5 = [editedItems count] != 0;
  }

  else
  {
    v5 = 0;
  }

  delegate = [(QLPreviewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(QLPreviewController *)self delegate];
    v8 = [delegate2 shouldPresentDismissActionsWithoutEditedItemsForPreviewController:self];
  }

  else
  {
    v8 = 0;
  }

  if ((v5 | v8))
  {
    v9 = [(QLPreviewController *)self _dismissActionsForEditedPreviewItems:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_dismissActionsForEditedPreviewItems:(id)items
{
  v33 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  delegate = [(QLPreviewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(QLPreviewController *)self delegate];
    v27 = [delegate2 shouldAppendDefaultDismissActionsForPreviewController:self];
  }

  else
  {
    v27 = 1;
  }

  delegate3 = [(QLPreviewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate4 = [(QLPreviewController *)self delegate];
    v11 = [delegate4 dismissActionsForPreviewController:self];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  selfCopy = self;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        if ([v19 editingMode] == 4 || objc_msgSend(v19, "editingMode") == 3)
        {
          v16 = 1;
        }

        editedFileURL = [v19 editedFileURL];

        v15 |= editedFileURL != 0;
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if ([v11 count])
  {
    v21 = v27;
  }

  else
  {
    v21 = v16 & v27;
  }

  if ([v11 count] || (v21 & 1) != 0)
  {
    v22 = [v26 menuActionsForDismissActions:v11 containsAtLeastOneUnsavedCopy:v15 & 1 editedPreviewItems:v12 shouldPresentDefaultActions:v21 & 1];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)_canPerformBarButtonAction
{
  v22 = *MEMORY[0x277D85DE8];
  currentAnimator = [(QLPreviewController *)self currentAnimator];
  if (currentAnimator)
  {
  }

  else
  {
    presentedViewController = [(QLPreviewController *)self presentedViewController];

    if (!presentedViewController)
    {
      LOBYTE(v7) = 1;
      goto LABEL_11;
    }
  }

  v5 = MEMORY[0x277D43EF8];
  v6 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v6 = *v5;
  }

  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v7)
  {
    v8 = v6;
    currentAnimator2 = [(QLPreviewController *)self currentAnimator];
    presentedViewController2 = [(QLPreviewController *)self presentedViewController];
    previewCollection = [(QLPreviewController *)self previewCollection];
    isRemote = [previewCollection isRemote];
    v13 = @"NO";
    v16 = 138412802;
    v17 = currentAnimator2;
    v18 = 2112;
    if (isRemote)
    {
      v13 = @"YES";
    }

    v19 = presentedViewController2;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_23A714000, v8, OS_LOG_TYPE_INFO, "Can't perform bar button action. Current animator: %@ Presented view controller: %@. Remote: %@ #Generic", &v16, 0x20u);

    LOBYTE(v7) = 0;
  }

LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_willStartObtainingEditsFromService
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(QLPreviewController *)self _triggerOverlayUpdateAfterDelay];

  [(QLPreviewController *)self setIsObtainingEditsFromServiceBeforeDismissing:1];
}

- (void)_didObtainEditsFromService
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);

  [(QLPreviewController *)self setIsObtainingEditsFromServiceBeforeDismissing:0];
}

- (void)_triggerOverlayUpdateAfterDelay
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, (*MEMORY[0x277D43FD8] * 1000000000.0));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__QLPreviewController_Overlay___triggerOverlayUpdateAfterDelay__block_invoke;
  v3[3] = &unk_278B57858;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __63__QLPreviewController_Overlay___triggerOverlayUpdateAfterDelay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isObtainingEditsFromServiceBeforeDismissing];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 updateOverlayAnimated:0 forceRefresh:0];
  }
}

- (void)shareSheetDidDismiss
{
  [(QLPreviewController *)self setOverlayFrozen:0];
  [(QLPreviewController *)self _stopAccessingUrlForSharingController];
  [(QLPreviewController *)self setCustomURLSharingProxyDelegate:0];
  [(QLPreviewController *)self setShareSheetPopoverTracker:0];
  [(QLPreviewController *)self setCurrentItemProvider:0];
  [(QLPreviewController *)self setSharingInteractionController:0];
  shareSheetDismissCompletion = [(QLPreviewController *)self shareSheetDismissCompletion];

  if (shareSheetDismissCompletion)
  {
    shareSheetDismissCompletion2 = [(QLPreviewController *)self shareSheetDismissCompletion];
    shareSheetDismissCompletion2[2]();

    [(QLPreviewController *)self setShareSheetDismissCompletion:0];
  }

  previewCollection = [(QLPreviewController *)self previewCollection];
  [previewCollection actionSheetDidDismiss];

  [(QLPreviewController *)self updateOverlayAnimated:1 forceRefresh:0];
}

- (void)didSelectPreviewItem:(id)item
{
  itemCopy = item;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__QLPreviewController_Overlay__didSelectPreviewItem___block_invoke;
  v6[3] = &unk_278B56E50;
  v6[4] = self;
  v7 = itemCopy;
  v5 = itemCopy;
  [(QLPreviewController *)self saveEditsIfNecessary:v6];
}

void __53__QLPreviewController_Overlay__didSelectPreviewItem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  QLRunInMainThread();
}

void __53__QLPreviewController_Overlay__didSelectPreviewItem___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 previewItemStore];
  [v2 setCurrentPreviewItemIndex:{objc_msgSend(v3, "indexOfPreviewItem:", *(a1 + 40))}];
}

- (id)_editedItemsForDoneActionControllerWithItems:(id)items
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 originalContentWasUpdated])
        {
          [v10 saveURL];
        }

        else
        {
          [v10 editedFileURL];
        }
        v11 = ;
        v12 = [QLEditedItem alloc];
        originalPreviewItem = [v10 originalPreviewItem];
        v14 = [(QLEditedItem *)v12 initWithItem:originalPreviewItem editedFileURL:v11];

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_needsListButton
{
  excludedToolbarButtonIdentifiers = [(QLPreviewController *)self excludedToolbarButtonIdentifiers];
  v4 = ([excludedToolbarButtonIdentifiers containsObject:@"QLListButtonIdentifier"] & 1) == 0 && -[QLPreviewController numberOfPreviewItems](self, "numberOfPreviewItems") >= 2 && -[QLPreviewController canChangeCurrentPage](self, "canChangeCurrentPage") && -[QLPreviewController presentationStyle](self, "presentationStyle") != 1;

  return v4;
}

- (BOOL)_isToolbarVisibleForTraitCollection:(id)collection
{
  collectionCopy = collection;
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  view = [(QLPreviewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    v9 = ([windowScene interfaceOrientation] - 3) < 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = [collectionCopy horizontalSizeClass] == 1;

  return v10 && (userInterfaceIdiom != 0 || !v9);
}

- (id)_copyBarButtons:(id)buttons
{
  v18 = *MEMORY[0x277D85DE8];
  buttonsCopy = buttons;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = buttonsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        ql_copySystemItem = [*(*(&v13 + 1) + 8 * v9) ql_copySystemItem];
        [v4 addObject:ql_copySystemItem];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_displayedButtonWithAccessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _topViewController = [(QLPreviewController *)self _topViewController];
  toolbarItems = [_topViewController toolbarItems];
  v7 = [(QLPreviewController *)self _buttonWithAccessibilityIdentifierPointer:identifierCopy inButtons:toolbarItems];

  if (!v7)
  {
    _topViewController2 = [(QLPreviewController *)self _topViewController];
    navigationItem = [_topViewController2 navigationItem];
    leftBarButtonItems = [navigationItem leftBarButtonItems];
    v7 = [(QLPreviewController *)self _buttonWithAccessibilityIdentifierPointer:identifierCopy inButtons:leftBarButtonItems];

    if (!v7)
    {
      _topViewController3 = [(QLPreviewController *)self _topViewController];
      navigationItem2 = [_topViewController3 navigationItem];
      rightBarButtonItems = [navigationItem2 rightBarButtonItems];
      v7 = [(QLPreviewController *)self _buttonWithAccessibilityIdentifierPointer:identifierCopy inButtons:rightBarButtonItems];
    }
  }

  return v7;
}

+ (void)logDeprecatedMessageForMethodName:(id)name
{
  v9 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = nameCopy;
    _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_DEFAULT, "Warning: The method '%{public}@' is deprecated and soon will be removed. #Deprecated", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)logDeprecatedMessageForSelector:(SEL)selector
{
  v3 = NSStringFromSelector(selector);
  [QLPreviewController logDeprecatedMessageForMethodName:v3];
}

- (id)currentTracker
{
  swipeDownTracker = [(QLPreviewController *)self swipeDownTracker];
  v4 = swipeDownTracker;
  if (swipeDownTracker)
  {
    pinchRotationTracker = swipeDownTracker;
  }

  else
  {
    pinchRotationTracker = [(QLPreviewController *)self pinchRotationTracker];
  }

  v6 = pinchRotationTracker;

  return v6;
}

- (BOOL)shouldUseNativeTransition
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  preferredTransition = [(QLPreviewController *)self preferredTransition];
  v4 = preferredTransition != 0;

  return v4;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  if ([(QLPreviewController *)self shouldUseNativeTransition])
  {
    v9 = 0;
  }

  else
  {
    v9 = [(QLPreviewController *)self animatorForShowing:1 previewController:controllerCopy presentingController:presentingControllerCopy];
  }

  return v9;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  if ([(QLPreviewController *)self shouldUseNativeTransition])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(QLPreviewController *)self animatorForShowing:0 previewController:controllerCopy presentingController:0];
  }

  return v5;
}

- (id)interactionControllerForPresentation:(id)presentation
{
  presentationCopy = presentation;
  if ([(QLPreviewController *)self shouldUseNativeTransition])
  {
    v5 = 0;
  }

  else
  {
    if ([presentationCopy conformsToProtocol:&unk_284D9C430])
    {
      v6 = presentationCopy;
    }

    else
    {
      v6 = 0;
    }

    v5 = v6;
  }

  return v5;
}

- (id)interactionControllerForDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  if ([(QLPreviewController *)self shouldUseNativeTransition])
  {
    v5 = 0;
  }

  else
  {
    if ([dismissalCopy conformsToProtocol:&unk_284D9C430])
    {
      v6 = dismissalCopy;
    }

    else
    {
      v6 = 0;
    }

    v5 = v6;
  }

  return v5;
}

- (void)registerForScreenshotService
{
  selfCopy = self;
  sub_23A7A7584();
}

- (void)unregisterFromScreenshotService
{
  selfCopy = self;
  sub_23A7A76C4();
}

- (void)screenshotService:(id)service generatePDFRepresentationWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  serviceCopy = service;
  selfCopy = self;
  sub_23A7A85D0(selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)setupAccessoryViewContainerIfNeeded
{
  selfCopy = self;
  sub_23A7C4E80();
}

- (double)visibleAccessoryViewHeight
{
  selfCopy = self;
  v3 = sub_23A7C52A0();

  return v3;
}

- (void)loadView
{
  selfCopy = self;
  QLPreviewController.loadView()();
}

@end