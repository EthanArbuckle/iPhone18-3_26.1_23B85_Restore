@interface BCSActionPickerViewAssistant
- (BOOL)showActionPickerWithItems:(id)items fromViewController:(id)controller presentingRect:(CGRect)rect;
- (void)_cleanUpAlertController;
@end

@implementation BCSActionPickerViewAssistant

- (BOOL)showActionPickerWithItems:(id)items fromViewController:(id)controller presentingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v71 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  controllerCopy = controller;
  v12 = controllerCopy;
  if (controllerCopy)
  {
    v56 = controllerCopy;
    presentedViewController = [controllerCopy presentedViewController];

    if (presentedViewController)
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v14)
      {
        [(BCSActionPickerViewAssistant *)v14 showActionPickerWithItems:v15 fromViewController:v16 presentingRect:v17, v18, v19, v20, v21];
      }
    }

    else
    {
      if (![(BCSActionPickerViewAssistant *)self isShowingPicker])
      {
        v41 = objc_alloc_init(getUIAlertControllerClass());
        alertController = self->_alertController;
        self->_alertController = v41;

        objc_initWeak(&location, self);
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        obj = itemsCopy;
        v43 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
        if (v43)
        {
          v44 = *v66;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v66 != v44)
              {
                objc_enumerationMutation(obj);
              }

              v46 = *(*(&v65 + 1) + 8 * i);
              [v46 setActionPickerItemDelegate:self];
              shouldDismissAlertWhenActionIsTaken = [v46 shouldDismissAlertWhenActionIsTaken];
              v48 = self->_alertController;
              label = [v46 label];
              v62[0] = MEMORY[0x277D85DD0];
              v62[1] = 3221225472;
              v62[2] = __92__BCSActionPickerViewAssistant_showActionPickerWithItems_fromViewController_presentingRect___block_invoke;
              v62[3] = &unk_278CFE8D0;
              v62[4] = v46;
              v64 = shouldDismissAlertWhenActionIsTaken;
              objc_copyWeak(&v63, &location);
              v61[0] = MEMORY[0x277D85DD0];
              v61[1] = 3221225472;
              v61[2] = __92__BCSActionPickerViewAssistant_showActionPickerWithItems_fromViewController_presentingRect___block_invoke_2;
              v61[3] = &unk_278CFE8F8;
              v61[4] = v46;
              [(UIAlertController *)v48 _addActionWithTitle:label style:0 handler:v62 shouldDismissHandler:v61];

              objc_destroyWeak(&v63);
            }

            v43 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
          }

          while (v43);
        }

        v50 = self->_alertController;
        UIAlertActionClass = getUIAlertActionClass();
        v52 = _BCSLocalizedString(@"Cancel", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __92__BCSActionPickerViewAssistant_showActionPickerWithItems_fromViewController_presentingRect___block_invoke_3;
        v59[3] = &unk_278CFE920;
        objc_copyWeak(&v60, &location);
        v53 = [UIAlertActionClass actionWithTitle:v52 style:1 handler:v59];
        [(UIAlertController *)v50 addAction:v53];

        popoverPresentationController = [(UIAlertController *)self->_alertController popoverPresentationController];
        view = [v56 view];
        [popoverPresentationController setSourceView:view];

        [popoverPresentationController setSourceRect:{x, y, width, height}];
        [v56 presentViewController:self->_alertController animated:1 completion:0];

        objc_destroyWeak(&v60);
        objc_destroyWeak(&location);
        v30 = 1;
        goto LABEL_12;
      }

      v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v31)
      {
        [(BCSActionPickerViewAssistant *)v31 showActionPickerWithItems:v32 fromViewController:v33 presentingRect:v34, v35, v36, v37, v38];
      }
    }

    v30 = 0;
LABEL_12:
    v12 = v56;
    goto LABEL_13;
  }

  v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v22)
  {
    [(BCSActionPickerViewAssistant *)v22 showActionPickerWithItems:v23 fromViewController:v24 presentingRect:v25, v26, v27, v28, v29];
  }

  v30 = 0;
LABEL_13:

  v39 = *MEMORY[0x277D85DE8];
  return v30;
}

void __92__BCSActionPickerViewAssistant_showActionPickerWithItems_fromViewController_presentingRect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) performAction];
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _cleanUpAlertController];
  }
}

void __92__BCSActionPickerViewAssistant_showActionPickerWithItems_fromViewController_presentingRect___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanUpAlertController];
}

- (void)_cleanUpAlertController
{
  alertController = self->_alertController;
  self->_alertController = 0;
  MEMORY[0x2821F96F8]();
}

@end