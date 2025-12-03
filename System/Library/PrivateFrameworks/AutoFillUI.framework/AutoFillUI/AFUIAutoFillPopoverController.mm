@interface AFUIAutoFillPopoverController
+ (id)presentAsPopoverFromWindow:(id)window documentTraits:(id)traits documentState:(id)state modalUIDelegate:(id)delegate textOperationsHandler:(id)handler;
- (AFUIAutoFillPopoverController)initWithDocumentTraits:(id)traits documentState:(id)state keyboardOutputHandler:(id)handler;
- (AFUIAutoFillPopoverController)initWithDocumentTraits:(id)traits documentState:(id)state textOperationsHandler:(id)handler;
- (AFUIModalUIDelegate)modalUIDelegate;
- (BOOL)hasSuggestions;
- (CGRect)_sourceRectInApplicationCoordinates;
- (CGRect)_translatedRectFromApplication:(CGRect)application;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)_displayContextMenu;
- (void)_displayContextMenuForSourceRect:(CGRect)rect caretRect:(CGRect)caretRect;
- (void)_displayContextMenuWhenReady;
- (void)_displayMenuForContentController:(id)controller;
- (void)_presentViewControllerForAutoFillMode:(unint64_t)mode;
- (void)_removeFromSuperview;
- (void)dismissMenu;
- (void)documentStateChanged:(id)changed;
- (void)presentContacts;
- (void)presentCreditCards;
- (void)presentPassword;
- (void)viewDidLoad;
@end

@implementation AFUIAutoFillPopoverController

- (AFUIAutoFillPopoverController)initWithDocumentTraits:(id)traits documentState:(id)state textOperationsHandler:(id)handler
{
  traitsCopy = traits;
  stateCopy = state;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = AFUIAutoFillPopoverController;
  v12 = [(AFUIAutoFillPopoverController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_documentTraits, traits);
    objc_storeStrong(&v13->_documentState, state);
    v14 = MEMORY[0x1D38AFC90](handlerCopy);
    performTextOperations = v13->_performTextOperations;
    v13->_performTextOperations = v14;
  }

  return v13;
}

- (AFUIAutoFillPopoverController)initWithDocumentTraits:(id)traits documentState:(id)state keyboardOutputHandler:(id)handler
{
  v6.receiver = self;
  v6.super_class = AFUIAutoFillPopoverController;
  return [(AFUIAutoFillPopoverController *)&v6 init:traits];
}

+ (id)presentAsPopoverFromWindow:(id)window documentTraits:(id)traits documentState:(id)state modalUIDelegate:(id)delegate textOperationsHandler:(id)handler
{
  handlerCopy = handler;
  delegateCopy = delegate;
  stateCopy = state;
  traitsCopy = traits;
  windowCopy = window;
  v16 = [[AFUIAutoFillPopoverController alloc] initWithDocumentTraits:traitsCopy documentState:stateCopy textOperationsHandler:handlerCopy];

  [(AFUIAutoFillPopoverController *)v16 setModalUIDelegate:delegateCopy];
  view = [(AFUIAutoFillPopoverController *)v16 view];
  [windowCopy addSubview:view];

  rootViewController = [windowCopy rootViewController];

  [rootViewController addChildViewController:v16];
  autofillMode = [traitsCopy autofillMode];

  [(AFUIAutoFillPopoverController *)v16 _presentViewControllerForAutoFillMode:autofillMode];

  return v16;
}

- (void)documentStateChanged:(id)changed
{
  changedCopy = changed;
  [changedCopy clientFrameInWindow];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(RTIDocumentState *)self->_documentState clientFrameInWindow];
  v49.origin.x = v12;
  v49.origin.y = v13;
  v49.size.width = v14;
  v49.size.height = v15;
  v46.origin.x = v5;
  v46.origin.y = v7;
  v46.size.width = v9;
  v46.size.height = v11;
  if (!CGRectEqualToRect(v46, v49))
  {
    goto LABEL_14;
  }

  [changedCopy clientFrameInEntitySpace];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(RTIDocumentState *)self->_documentState clientFrameInEntitySpace];
  v50.origin.x = v24;
  v50.origin.y = v25;
  v50.size.width = v26;
  v50.size.height = v27;
  v47.origin.x = v17;
  v47.origin.y = v19;
  v47.size.width = v21;
  v47.size.height = v23;
  if (!CGRectEqualToRect(v47, v50))
  {
LABEL_14:
    [MEMORY[0x1E69DCD68] visiblePeripheralFrame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [changedCopy caretRectInWindow];
    v51.origin.x = v36;
    v51.origin.y = v37;
    v51.size.width = v38;
    v51.size.height = v39;
    v48.origin.x = v29;
    v48.origin.y = v31;
    v48.size.width = v33;
    v48.size.height = v35;
    if (!CGRectContainsRect(v48, v51))
    {
      goto LABEL_5;
    }
  }

  scrolling = [changedCopy scrolling];
  documentState = [(AFUIAutoFillPopoverController *)self documentState];
  scrolling2 = [documentState scrolling];

  if (scrolling == scrolling2)
  {
    [(AFUIAutoFillPopoverController *)self setDocumentState:changedCopy];
  }

  else
  {
LABEL_5:
    willPresentMenu = [(AFUIAutoFillPopoverController *)self willPresentMenu];
    [(AFUIAutoFillPopoverController *)self setDocumentState:changedCopy];
    if (!willPresentMenu)
    {
      [(AFUIAutoFillPopoverController *)self dismissMenu];
      if (self->_contentController)
      {
        [(AFUIAutoFillPopoverController *)self _displayMenuForContentController:?];
      }
    }
  }
}

- (BOOL)hasSuggestions
{
  contentController = [(AFUIAutoFillPopoverController *)self contentController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  contentController2 = [(AFUIAutoFillPopoverController *)self contentController];
  hasSuggestions = [contentController2 hasSuggestions];

  return hasSuggestions;
}

- (void)dismissMenu
{
  modalUIDelegate = [(AFUIAutoFillPopoverController *)self modalUIDelegate];
  [modalUIDelegate setIsMenuPresented:0 forSessionUUID:0];

  contextMenuInteraction = [(AFUIAutoFillPopoverController *)self contextMenuInteraction];
  [contextMenuInteraction dismissMenu];

  contextMenuInteraction2 = [(AFUIAutoFillPopoverController *)self contextMenuInteraction];
  view = [contextMenuInteraction2 view];
  [view removeFromSuperview];

  [(AFUIAutoFillPopoverController *)self setContextMenuInteraction:0];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC8D8];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __87__AFUIAutoFillPopoverController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v12 = &unk_1E8424C58;
  objc_copyWeak(&v13, &location);
  v7 = [v6 configurationWithIdentifier:0 previewProvider:0 actionProvider:&v9];
  [v7 setPreferredMenuElementOrder:{2, v9, v10, v11, v12}];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

id __87__AFUIAutoFillPopoverController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained menu];

  return v2;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  defaultStyle = [MEMORY[0x1E69DD440] defaultStyle];
  [defaultStyle setPreferredLayout:3];
  if (objc_opt_respondsToSelector())
  {
    [defaultStyle setAllowsBackgroundInteractionAcrossProccesses:1];
  }

  view = [(AFUIAutoFillPopoverController *)self view];
  window = [view window];
  [defaultStyle setContainerView:window];

  return defaultStyle;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AFUIAutoFillPopoverController;
  [(AFUIAutoFillPopoverController *)&v5 viewDidLoad];
  view = [(AFUIAutoFillPopoverController *)self view];
  [view setUserInteractionEnabled:0];

  view2 = [(AFUIAutoFillPopoverController *)self view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)presentPassword
{
  v3 = [AFUIAutoFillPasswordController alloc];
  documentTraits = [(AFUIAutoFillPopoverController *)self documentTraits];
  performTextOperations = [(AFUIAutoFillPopoverController *)self performTextOperations];
  v7 = [(AFUIAutoFillPasswordController *)v3 initWithDocumentTraits:documentTraits presentingViewController:self textOperationsHandler:performTextOperations];

  modalUIDelegate = [(AFUIAutoFillPopoverController *)self modalUIDelegate];
  [(AFUIAutoFillPasswordController *)v7 setModalUIDelegate:modalUIDelegate];

  [(AFUIAutoFillPopoverController *)self _displayMenuForContentController:v7];
}

- (void)presentContacts
{
  v3 = [AFUIAutofillContactsController alloc];
  documentTraits = [(AFUIAutoFillPopoverController *)self documentTraits];
  performTextOperations = [(AFUIAutoFillPopoverController *)self performTextOperations];
  v7 = [(AFUIAutofillContactsController *)v3 initWithDocumentTraits:documentTraits presentingViewController:self textOperationsHandler:performTextOperations];

  modalUIDelegate = [(AFUIAutoFillPopoverController *)self modalUIDelegate];
  [(AFUIAutofillContactsController *)v7 setModalUIDelegate:modalUIDelegate];

  [(AFUIAutoFillPopoverController *)self _displayMenuForContentController:v7];
}

- (void)presentCreditCards
{
  v3 = [AFUIAutoFillCreditCardController alloc];
  documentTraits = [(AFUIAutoFillPopoverController *)self documentTraits];
  documentState = [(AFUIAutoFillPopoverController *)self documentState];
  performTextOperations = [(AFUIAutoFillPopoverController *)self performTextOperations];
  v8 = [(AFUIAutoFillCreditCardController *)v3 initWithDocumentTraits:documentTraits documentState:documentState presentingViewController:self textOperationsHandler:performTextOperations];

  modalUIDelegate = [(AFUIAutoFillPopoverController *)self modalUIDelegate];
  [(AFUIAutoFillCreditCardController *)v8 setModalUIDelegate:modalUIDelegate];

  [(AFUIAutoFillPopoverController *)self _displayMenuForContentController:v8];
}

- (void)_displayMenuForContentController:(id)controller
{
  controllerCopy = controller;
  [(AFUIAutoFillPopoverController *)self setContentController:controllerCopy];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AFUIAutoFillPopoverController__displayMenuForContentController___block_invoke;
  v7[3] = &unk_1E8424558;
  objc_copyWeak(&v8, &location);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__AFUIAutoFillPopoverController__displayMenuForContentController___block_invoke_2;
  v5[3] = &unk_1E8424558;
  objc_copyWeak(&v6, &location);
  [controllerCopy generateInitialMenu:v7 menuChanged:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__AFUIAutoFillPopoverController__displayMenuForContentController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMenu:v3];

  v4 = [WeakRetained documentState];
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained documentState];
    v6 = [v5 scrolling];

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v7 = [WeakRetained contentController];
  v8 = v7;
  if (v7 && [v7 hasSuggestions])
  {
    [WeakRetained _displayContextMenuWhenReady];
  }

  else
  {
    [WeakRetained _removeFromSuperview];
  }

LABEL_10:
}

void __66__AFUIAutoFillPopoverController__displayMenuForContentController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained contextMenuInteraction];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AFUIAutoFillPopoverController__displayMenuForContentController___block_invoke_3;
  v7[3] = &unk_1E8424C80;
  objc_copyWeak(&v9, (a1 + 32));
  v6 = v3;
  v8 = v6;
  [v5 updateVisibleMenuWithBlock:v7];

  objc_destroyWeak(&v9);
}

void *__66__AFUIAutoFillPopoverController__displayMenuForContentController___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained menu];

  v6 = v3;
  if (v5 == v3)
  {
    [WeakRetained setMenu:*(a1 + 32)];
    v6 = *(a1 + 32);
  }

  v7 = v6;

  return v6;
}

- (void)_displayContextMenuWhenReady
{
  if (![(AFUIAutoFillPopoverController *)self willPresentMenu])
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
    [(AFUIAutoFillPopoverController *)self setContextMenuInteraction:v3];

    [(AFUIAutoFillPopoverController *)self setWillPresentMenu:1];
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__AFUIAutoFillPopoverController__displayContextMenuWhenReady__block_invoke;
    block[3] = &unk_1E8424BD8;
    objc_copyWeak(&v6, &location);
    block[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __61__AFUIAutoFillPopoverController__displayContextMenuWhenReady__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) setWillPresentMenu:0];
  v2 = [WeakRetained contextMenuInteraction];

  if (v2)
  {
    [WeakRetained _displayContextMenu];
  }
}

- (void)_displayContextMenu
{
  documentState = [(AFUIAutoFillPopoverController *)self documentState];
  [documentState caretRectInWindow];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(AFUIAutoFillPopoverController *)self _sourceRectInApplicationCoordinates];
  [(AFUIAutoFillPopoverController *)self _translatedRectFromApplication:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(AFUIAutoFillPopoverController *)self _translatedRectFromApplication:v5, v7, v9, v11];

  [(AFUIAutoFillPopoverController *)self _displayContextMenuForSourceRect:v13 caretRect:v15, v17, v19, v20, v21, v22, v23];
}

- (CGRect)_sourceRectInApplicationCoordinates
{
  documentState = [(AFUIAutoFillPopoverController *)self documentState];
  [documentState clientFrameInWindow];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  documentState2 = [(AFUIAutoFillPopoverController *)self documentState];
  [documentState2 caretRectInWindow];
  if (CGRectIsNull(v23))
  {
    goto LABEL_4;
  }

  documentTraits = [(AFUIAutoFillPopoverController *)self documentTraits];
  _isExplicitAutoFillInvocation = [documentTraits _isExplicitAutoFillInvocation];

  if (_isExplicitAutoFillInvocation)
  {
    documentState2 = [(AFUIAutoFillPopoverController *)self documentState];
    [documentState2 caretRectInWindow];
    v5 = v15;
    v7 = v16;
    v9 = v17;
    v11 = v18;
LABEL_4:
  }

  v19 = v5;
  v20 = v7;
  v21 = v9;
  v22 = v11;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)_displayContextMenuForSourceRect:(CGRect)rect caretRect:(CGRect)caretRect
{
  height = caretRect.size.height;
  width = caretRect.size.width;
  y = caretRect.origin.y;
  x = caretRect.origin.x;
  v47 = *MEMORY[0x1E69E9840];
  view = [(AFUIAutoFillPopoverController *)self view];
  view2 = [(AFUIAutoFillPopoverController *)self view];
  window = [view2 window];
  screen = [window screen];
  coordinateSpace = [screen coordinateSpace];
  [view convertRect:coordinateSpace toCoordinateSpace:{x, y, width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  view3 = [(AFUIAutoFillPopoverController *)self view];
  window2 = [view3 window];
  screen2 = [window2 screen];
  [screen2 bounds];
  v53.origin.x = v25;
  v53.origin.y = v26;
  v53.size.width = v27;
  v53.size.height = v28;
  v49.origin.x = v15;
  v49.origin.y = v17;
  v49.size.width = v19;
  v49.size.height = v21;
  v29 = CGRectIntersectsRect(v49, v53);

  v30 = width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8);
  if (v30 || ([MEMORY[0x1E69DCD68] visiblePeripheralFrame], v54.origin.x = x, v54.origin.y = y, v54.size.width = width, v54.size.height = height, CGRectContainsRect(v50, v54)) || !v29)
  {
LABEL_15:
    v42 = *MEMORY[0x1E69E9840];
    return;
  }

  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  MidX = CGRectGetMidX(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  MidY = CGRectGetMidY(v52);
  if (!UIPointIsDiscrete() || (-[AFUIAutoFillPopoverController view](self, "view"), v33 = objc_claimAutoreleasedReturnValue(), [v33 window], v34 = objc_claimAutoreleasedReturnValue(), v34, v33, !v34))
  {
    v40 = AFUIAutoFillPopoverControllerOSLogFacility();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s _displayMenuForContentController: with invalid centerOfCaret", "-[AFUIAutoFillPopoverController _displayContextMenuForSourceRect:caretRect:]"];
      *buf = 138412290;
      v46 = v41;
      _os_log_impl(&dword_1D2F0D000, v40, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v44 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  view4 = [(AFUIAutoFillPopoverController *)self view];
  [view4 addSubview:v44];

  contextMenuInteraction = [(AFUIAutoFillPopoverController *)self contextMenuInteraction];
  [v44 addInteraction:contextMenuInteraction];

  contextMenuInteraction2 = [(AFUIAutoFillPopoverController *)self contextMenuInteraction];
  [contextMenuInteraction2 _presentMenuAtLocation:{MidX, MidY}];

  modalUIDelegate = [(AFUIAutoFillPopoverController *)self modalUIDelegate];
  [modalUIDelegate setIsMenuPresented:1 forSessionUUID:0];

  v39 = *MEMORY[0x1E69E9840];
}

- (CGRect)_translatedRectFromApplication:(CGRect)application
{
  view = [(AFUIAutoFillPopoverController *)self view];
  window = [view window];
  [window _contextId];

  view2 = [(AFUIAutoFillPopoverController *)self view];
  window2 = [view2 window];
  layer = [window2 layer];
  CALayerGetRenderId();

  memset(&v42, 0, sizeof(v42));
  BKSHIDServicesGetCALayerTransform();
  v9 = *(MEMORY[0x1E69792E8] + 80);
  *&v41.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v41.m33 = v9;
  v10 = *(MEMORY[0x1E69792E8] + 112);
  *&v41.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v41.m43 = v10;
  v11 = *(MEMORY[0x1E69792E8] + 16);
  *&v41.m11 = *MEMORY[0x1E69792E8];
  *&v41.m13 = v11;
  v12 = *(MEMORY[0x1E69792E8] + 48);
  *&v41.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v41.m23 = v12;
  documentTraits = [(AFUIAutoFillPopoverController *)self documentTraits];
  LODWORD(window2) = [documentTraits contextID];

  if (window2)
  {
    documentTraits2 = [(AFUIAutoFillPopoverController *)self documentTraits];
    [documentTraits2 contextID];
    documentTraits3 = [(AFUIAutoFillPopoverController *)self documentTraits];
    [documentTraits3 layerID];
    BKSHIDServicesGetCALayerTransform();
  }

  v40 = v41;
  CA_CGRectApplyTransform();
  v39 = v42;
  CATransform3DInvert(&v40, &v39);
  CA_CGRectApplyTransform();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  view3 = [(AFUIAutoFillPopoverController *)self view];
  view4 = [(AFUIAutoFillPopoverController *)self view];
  window3 = [view4 window];
  [view3 convertRect:window3 fromView:{v17, v19, v21, v23}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = v28;
  v36 = v30;
  v37 = v32;
  v38 = v34;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (void)_removeFromSuperview
{
  modalUIDelegate = [(AFUIAutoFillPopoverController *)self modalUIDelegate];
  [modalUIDelegate setIsMenuPresented:0 forSessionUUID:0];

  performTextOperations = [(AFUIAutoFillPopoverController *)self performTextOperations];
  performTextOperations[2](performTextOperations, 0);

  view = [(AFUIAutoFillPopoverController *)self view];
  [view removeFromSuperview];

  [(AFUIAutoFillPopoverController *)self removeFromParentViewController];
}

- (void)_presentViewControllerForAutoFillMode:(unint64_t)mode
{
  if (mode <= 7)
  {
    if (mode - 5 < 3)
    {
      [(AFUIAutoFillPopoverController *)self presentContacts];
      return;
    }

    if (mode != 1)
    {
      return;
    }

LABEL_6:
    [(AFUIAutoFillPopoverController *)self presentPassword];
    return;
  }

  if (mode == 9)
  {
    [(AFUIAutoFillPopoverController *)self presentCreditCards];
    return;
  }

  if (mode == 8)
  {
    goto LABEL_6;
  }
}

- (AFUIModalUIDelegate)modalUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_modalUIDelegate);

  return WeakRetained;
}

@end