@interface WFQuickLookActionUIKitUserInterface
- (BOOL)previewController:(id)controller canShareItem:(id)item;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)previewControllerDidDismiss:(id)dismiss;
- (void)showWithItems:(id)items fullScreen:(BOOL)screen completionHandler:(id)handler;
@end

@implementation WFQuickLookActionUIKitUserInterface

- (BOOL)previewController:(id)controller canShareItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  controllerCopy = controller;
  v7 = objc_opt_class();
  v8 = itemCopy;
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *v19 = 136315906;
      *&v19[4] = "WFEnforceClass";
      *&v19[12] = 2114;
      *&v19[14] = v8;
      *&v19[22] = 2114;
      v20 = objc_opt_class();
      LOWORD(v21) = 2114;
      *(&v21 + 2) = v7;
      v11 = v20;
      _os_log_impl(&dword_23E342000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", v19, 0x2Au);
    }

    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  item = [v9 item];
  attributionSet = [item attributionSet];
  isContentManaged = [controllerCopy isContentManaged];

  if (isContentManaged)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = [attributionSet isAllowedToBeSentToDestinationWithManagedLevel:{v15, *v19, *&v19[16], v20, v21}];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)previewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  viewControllerForPresenting = [(WFActionUserInterface *)self viewControllerForPresenting];
  parentViewController = [viewControllerForPresenting parentViewController];

  if (parentViewController)
  {
    do
    {
      parentViewController2 = [viewControllerForPresenting parentViewController];

      v6ParentViewController = [parentViewController2 parentViewController];

      viewControllerForPresenting = parentViewController2;
    }

    while (v6ParentViewController);
  }

  else
  {
    parentViewController2 = viewControllerForPresenting;
  }

  view = [parentViewController2 view];
  [view setAccessibilityElementsHidden:0];

  [dismissCopy setDataSource:0];
  [(WFQuickLookActionUIKitUserInterface *)self setDataSource:0];
  [(WFQuickLookActionUIKitUserInterface *)self setPreviewController:0];
  exitError = [(WFQuickLookActionUIKitUserInterface *)self exitError];
  [(WFQuickLookActionUIKitUserInterface *)self finishWithError:exitError];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(WFQuickLookActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFQuickLookActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);
  }

  [(WFQuickLookActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFQuickLookActionUIKitUserInterface *)self setExitError:userCancelledError];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__WFQuickLookActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v8[3] = &unk_278C37170;
  v9 = handlerCopy;
  v7.receiver = self;
  v7.super_class = WFQuickLookActionUIKitUserInterface;
  v6 = handlerCopy;
  [(WFActionUserInterface *)&v7 cancelPresentationWithCompletionHandler:v8];
}

- (void)showWithItems:(id)items fullScreen:(BOOL)screen completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (!itemsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFQuickLookActionUIKitUserInterface.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"itemsData"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFQuickLookActionUIKitUserInterface.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFQuickLookActionUIKitUserInterface *)self setCompletionHandler:v11];
  v12 = MEMORY[0x277CCAAC8];
  v13 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__WFQuickLookActionUIKitUserInterface_showWithItems_fullScreen_completionHandler___block_invoke;
  v17[3] = &unk_278C36600;
  v17[4] = self;
  screenCopy = screen;
  v14 = [v12 wf_securelyUnarchiveObjectWithData:itemsCopy allowedClasses:v13 completionHandler:v17];
}

void __82__WFQuickLookActionUIKitUserInterface_showWithItems_fullScreen_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__WFQuickLookActionUIKitUserInterface_showWithItems_fullScreen_completionHandler___block_invoke_2;
  block[3] = &unk_278C37408;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __82__WFQuickLookActionUIKitUserInterface_showWithItems_fullScreen_completionHandler___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__WFQuickLookActionUIKitUserInterface_showWithItems_fullScreen_completionHandler___block_invoke_3;
  v3[3] = &unk_278C36600;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 generatePreviewControllerDataSource:v3];
}

void __82__WFQuickLookActionUIKitUserInterface_showWithItems_fullScreen_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setDataSource:v3];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = [v3 items];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__WFQuickLookActionUIKitUserInterface_showWithItems_fullScreen_completionHandler___block_invoke_4;
  v13[3] = &unk_278C365D8;
  v13[4] = &v18;
  v13[5] = &v14;
  [v4 enumerateObjectsUsingBlock:v13];

  v5 = objc_alloc_init(MEMORY[0x277D7BDE0]);
  [v5 setDelegate:*(a1 + 32)];
  v6 = [*(a1 + 32) dataSource];
  [v5 setDataSource:v6];

  [v5 setIsContentManaged:v15[3] > v19[3]];
  [v5 setOverrideParentApplicationDisplayIdentifier:*MEMORY[0x277D7A338]];
  [v5 reloadData];
  [v5 setCurrentPreviewItemIndex:0];
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  [v5 setModalPresentationStyle:v7];
  [*(a1 + 32) setPreviewController:v5];
  v8 = [*(a1 + 32) viewControllerForPresenting];
  for (i = v8; ; i = v11)
  {
    v10 = [i parentViewController];

    if (!v10)
    {
      break;
    }

    v11 = [i parentViewController];
  }

  v12 = [i view];
  [v12 setAccessibilityElementsHidden:1];

  [v8 presentViewController:v5 animated:1 completion:0];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

void __82__WFQuickLookActionUIKitUserInterface_showWithItems_fullScreen_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 attributionSet];
  v4 = [v3 isAllowedToBeSentToDestinationWithManagedLevel:1];

  if (v4)
  {
    v5 = 32;
    v6 = v9;
  }

  else
  {
    v7 = [v9 attributionSet];
    v8 = [v7 isAllowedToBeSentToDestinationWithManagedLevel:2];

    v6 = v9;
    if (!v8)
    {
      goto LABEL_6;
    }

    v5 = 40;
  }

  ++*(*(*(a1 + v5) + 8) + 24);
LABEL_6:
}

@end