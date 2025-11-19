@interface EKEventAttachmentsEditItem
- (BOOL)_shouldCondenseIntoSingleItem;
- (BOOL)_shouldShowAddAttachmentCell;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (id)_addAttachmentCell;
- (id)attachmentEvent;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)footerTitle;
- (id)parentViewControllerForAttachmentCellController:(id)a3;
- (id)trailingSwipeActionsConfigurationForRowAtIndex:(int64_t)a3;
- (unint64_t)numberOfSubitems;
- (void)_addAttachment:(id)a3;
- (void)_cleanUpCellControllers;
- (void)_loadAndAddDataAttachmentFromItem:(id)a3;
- (void)_showAddAttachmentViewControllerAnimated:(BOOL)a3;
- (void)dealloc;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)refreshFromCalendarItemAndStore;
@end

@implementation EKEventAttachmentsEditItem

- (void)_cleanUpCellControllers
{
  [(NSArray *)self->_cellControllers enumerateObjectsUsingBlock:&__block_literal_global_41];
  cellControllers = self->_cellControllers;
  self->_cellControllers = 0;
}

- (id)attachmentEvent
{
  if (!self->_eventToModify)
  {
    v3 = [(EKEventEditItem *)self event];
    if ([v3 isNew])
    {
    }

    else
    {
      v4 = [(EKEventEditItem *)self event];
      v5 = [v4 isOrWasPartOfRecurringSeries];

      if (v5)
      {
        v6 = [(EKEventEditItem *)self event];
        v7 = [v6 masterEvent];
        eventToModify = self->_eventToModify;
        self->_eventToModify = v7;

LABEL_7:
        goto LABEL_8;
      }
    }

    v9 = [(EKEventEditItem *)self event];
    v6 = self->_eventToModify;
    self->_eventToModify = v9;
    goto LABEL_7;
  }

LABEL_8:
  v10 = self->_eventToModify;

  return v10;
}

- (void)refreshFromCalendarItemAndStore
{
  v12.receiver = self;
  v12.super_class = EKEventAttachmentsEditItem;
  [(EKCalendarItemEditItem *)&v12 refreshFromCalendarItemAndStore];
  if (![(EKEventAttachmentsEditItem *)self _shouldCondenseIntoSingleItem])
  {
    v3 = [(EKEventAttachmentsEditItem *)self attachmentEvent];
    v4 = [v3 calendar];
    v5 = [v4 source];

    v6 = [MEMORY[0x1E6993370] sharedInstance];
    v7 = [v6 sourceIsManaged:v5];

    v8 = [v3 attachments];
    v9 = [EKEventAttachmentCellController cellControllersForAttachments:v8 givenExistingControllers:self->_cellControllers sourceIsManaged:v7];

    [(NSArray *)self->_cellControllers makeObjectsPerformSelector:sel_setDelegate_ withObject:0];
    cellControllers = self->_cellControllers;
    self->_cellControllers = v9;
    v11 = v9;

    [(NSArray *)self->_cellControllers makeObjectsPerformSelector:sel_setDelegate_ withObject:self];
  }
}

- (void)dealloc
{
  [(EKEventAttachmentsEditItem *)self _cleanUpCellControllers];
  v3.receiver = self;
  v3.super_class = EKEventAttachmentsEditItem;
  [(EKEventAttachmentsEditItem *)&v3 dealloc];
}

- (BOOL)_shouldCondenseIntoSingleItem
{
  v2 = [(EKEventAttachmentsEditItem *)self attachmentEvent];
  v3 = [v2 attachments];
  v4 = [v3 count] > 3;

  return v4;
}

- (unint64_t)numberOfSubitems
{
  if ([(EKEventAttachmentsEditItem *)self _shouldCondenseIntoSingleItem])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(NSArray *)self->_cellControllers count];
  }

  return v3 + [(EKEventAttachmentsEditItem *)self _shouldShowAddAttachmentCell];
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  if ([(EKEventAttachmentsEditItem *)self _shouldCondenseIntoSingleItem])
  {
    if (!a3)
    {
      v5 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
      [(EKUITableViewCell *)v5 setAccessoryType:1];
      v6 = EventKitUIBundle();
      v7 = [v6 localizedStringForKey:@"Attachments" value:&stru_1F4EF6790 table:0];
      v8 = [(EKUITableViewCell *)v5 textLabel];
      [v8 setText:v7];

      v9 = [(EKEventAttachmentsEditItem *)self attachmentEvent];
      v10 = [v9 attachments];
      [v10 count];
      v11 = CUIKLocalizedStringForInteger();
      v12 = [(EKUITableViewCell *)v5 detailTextLabel];
      [v12 setText:v11];

LABEL_6:
      goto LABEL_10;
    }

LABEL_8:
    v5 = [(EKEventAttachmentsEditItem *)self _addAttachmentCell];
    goto LABEL_10;
  }

  v13 = [(NSArray *)self->_cellControllers count];
  cellControllers = self->_cellControllers;
  if (v13 > a3)
  {
    v9 = [(NSArray *)cellControllers objectAtIndex:a3];
    v5 = [v9 cell];
    goto LABEL_6;
  }

  if ([(NSArray *)cellControllers count]== a3)
  {
    goto LABEL_8;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)_addAttachmentCell
{
  addAttachmentCell = self->_addAttachmentCell;
  if (!addAttachmentCell)
  {
    v4 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_addAttachmentCell;
    self->_addAttachmentCell = v4;

    v6 = EventKitUIBundle();
    v7 = [v6 localizedStringForKey:@"Add attachment" value:@"Add attachment…" table:0];
    v8 = [(EKUITableViewCell *)self->_addAttachmentCell textLabel];
    [v8 setText:v7];

    v9 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:self];
    [(EKUITableViewCell *)self->_addAttachmentCell addInteraction:v9];
    [(EKUITableViewCell *)self->_addAttachmentCell setAccessibilityIdentifier:@"add-attachment-cell"];

    addAttachmentCell = self->_addAttachmentCell;
  }

  return addAttachmentCell;
}

- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  v6 = a3;
  if (![(EKEventAttachmentsEditItem *)self _shouldCondenseIntoSingleItem])
  {
    v7 = [(NSArray *)self->_cellControllers count];
    cellControllers = self->_cellControllers;
    if (v7 > a4)
    {
      v9 = [(NSArray *)cellControllers objectAtIndex:a4];
      [v9 cellSelected];

      goto LABEL_8;
    }

    if ([(NSArray *)cellControllers count]!= a4)
    {
      goto LABEL_8;
    }

LABEL_7:
    [(EKEventAttachmentsEditItem *)self _showAddAttachmentViewControllerAnimated:1];
    goto LABEL_8;
  }

  if (a4)
  {
    goto LABEL_7;
  }

  v10.receiver = self;
  v10.super_class = EKEventAttachmentsEditItem;
  [(EKCalendarItemEditItem *)&v10 editor:v6 didSelectSubitem:0];
LABEL_8:
}

- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(EKCalendarItemEditItem *)self calendarItem];
  v10 = [v9 calendar];
  v11 = [v10 source];

  v12 = [MEMORY[0x1E6993370] sharedInstance];
  v13 = [v12 sourceIsManaged:v11];

  v14 = [EKEventAttachmentEditViewController alloc];
  v15 = [(EKEventAttachmentsEditItem *)self attachmentEvent];
  v16 = [v15 attachments];
  v17 = [(EKEventAttachmentEditViewController *)v14 initWithFrame:v16 attachments:v13 sourceIsManaged:x, y, width, height];

  [(EKEventAttachmentEditViewController *)v17 setDelegate:self];

  return v17;
}

- (BOOL)_shouldShowAddAttachmentCell
{
  v2 = [(EKEventAttachmentsEditItem *)self attachmentEvent];
  v3 = [v2 supportsAddingAttachments];

  return v3;
}

- (id)trailingSwipeActionsConfigurationForRowAtIndex:(int64_t)a3
{
  if (a3 < 0 || [(NSArray *)self->_cellControllers count]<= a3)
  {
    v11 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E69DC8E8];
    v6 = EventKitUIBundle();
    v7 = [v6 localizedStringForKey:@"Remove attachment" value:@"Remove" table:0];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __77__EKEventAttachmentsEditItem_trailingSwipeActionsConfigurationForRowAtIndex___block_invoke;
    v16 = &unk_1E84418B0;
    objc_copyWeak(v18, &location);
    v18[1] = a3;
    v17 = self;
    v8 = [v5 contextualActionWithStyle:1 title:v7 handler:&v13];

    v9 = MEMORY[0x1E69DCFC0];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObject:{v8, v13, v14, v15, v16}];
    v11 = [v9 configurationWithActions:v10];

    [v11 setPerformsFirstActionWithFullSwipe:0];
    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __77__EKEventAttachmentsEditItem_trailingSwipeActionsConfigurationForRowAtIndex___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a1;
  v10 = v8;
  v11 = a4;
  WeakRetained = objc_loadWeakRetained((v9 + 40));
  v13 = [WeakRetained[6] objectAtIndex:*(v9 + 48)];
  obj = [MEMORY[0x1E695DF70] arrayWithArray:WeakRetained[6]];
  [obj removeObjectAtIndex:*(v9 + 48)];
  v37 = v13;
  v14 = [v13 attachment];
  v15 = [WeakRetained attachmentEvent];
  v16 = v14;
  v17 = v16;
  v38 = v15;
  if (([v15 isNew] & 1) == 0)
  {
    v32 = v9;
    v33 = WeakRetained;
    v34 = v11;
    v35 = v10;
    v36 = v7;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = [v15 attachments];
    v19 = [v18 countByEnumeratingWithState:&v40 objects:v44 count:16];
    v17 = v16;
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      v17 = v16;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v40 + 1) + 8 * i);
          v24 = [v23 UUID];
          v25 = [v16 UUID];
          v26 = [v24 isEqualToString:v25];

          if (v26)
          {
            v27 = v23;

            v17 = v27;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v20);
    }

    v10 = v35;
    v7 = v36;
    WeakRetained = v33;
    v11 = v34;
    v9 = v32;
    v15 = v38;
  }

  [v15 removeAttachment:v17];
  [WeakRetained setAttachmentsModified:1];
  objc_storeStrong(WeakRetained + 6, obj);
  [*(v9 + 32) notifySubitemDidSave:*(v9 + 48)];
  v28 = [*(v9 + 32) delegate];
  v29 = v9;
  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    v31 = [*(v29 + 32) delegate];
    [v31 editItem:*(v29 + 32) wantsDoneButtonDisabled:0];
  }

  v11[2](v11, 1);
}

- (id)parentViewControllerForAttachmentCellController:(id)a3
{
  v4 = [(EKCalendarItemEditItem *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(EKCalendarItemEditItem *)self delegate];
    v7 = [v6 viewControllerForEditItem:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_showAddAttachmentViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = [(EKCalendarItemEditItem *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(EKCalendarItemEditItem *)self delegate];
    v8 = [v7 viewControllerForEditItem:self];

    if (v8)
    {
      v9 = [v8 presentedViewController];

      if (!v9)
      {
        v10 = objc_alloc(MEMORY[0x1E69DC968]);
        v18[0] = *MEMORY[0x1E6982D50];
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        v12 = [v10 initForOpeningContentTypes:v11 asCopy:1];

        self->_documentPickerPresented = 1;
        [v12 setDelegate:self];
        [v12 setAllowsMultipleSelection:0];
        v13 = [(EKEventEditItem *)self event];
        v14 = [v13 calendar];
        v15 = [v14 source];

        v16 = [MEMORY[0x1E6993370] sharedInstance];
        v17 = [v16 sourceIsManaged:v15];

        [v12 _setIsContentManaged:v17];
        [v8 presentViewController:v12 animated:v3 completion:0];
      }
    }
  }

  else
  {
    v8 = 0;
  }
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  self->_documentPickerPresented = 0;
  v6 = a4;
  v7 = [a3 presentingViewController];
  [v7 dismissViewControllerAnimated:1 completion:0];

  v9 = [v6 firstObject];

  if (v9)
  {
    v8 = [objc_alloc(MEMORY[0x1E6966960]) initWithFilepath:v9];
    [(EKEventAttachmentsEditItem *)self _addAttachment:v8];
  }
}

- (void)documentPickerWasCancelled:(id)a3
{
  self->_documentPickerPresented = 0;
  v3 = [a3 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_addAttachment:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(EKEventAttachmentsEditItem *)self attachmentEvent];
  [v5 addAttachment:v4];

  [(EKEventAttachmentsEditItem *)self setAttachmentsModified:1];
  [(EKEventAttachmentsEditItem *)self refreshFromCalendarItemAndStore];
  [(EKCalendarItemEditItem *)self notifySubitemDidSave:[(EKEventAttachmentsEditItem *)self numberOfSubitems]- 1];
  v6 = [(EKCalendarItemEditItem *)self delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(EKCalendarItemEditItem *)self delegate];
    [v7 editItem:self wantsDoneButtonDisabled:0];
  }
}

- (id)footerTitle
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._calendarItem);
  if (![WeakRetained isOrWasPartOfRecurringSeries])
  {
    v5 = 0;
    goto LABEL_5;
  }

  v4 = [(EKEventAttachmentsEditItem *)self _shouldShowAddAttachmentCell];

  if (v4)
  {
    WeakRetained = EventKitUIBundle();
    v5 = [WeakRetained localizedStringForKey:@"Attachments will be applied to all occurrences" value:&stru_1F4EF6790 table:0];
LABEL_5:

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E6982D60];
  v5 = a4;
  v6 = [v4 identifier];
  v10[0] = v6;
  v7 = [*MEMORY[0x1E6982F30] identifier];
  v10[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  LOBYTE(v6) = [v5 hasItemsConformingToTypeIdentifiers:v8];
  return v6;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v4 = [(EKEventAttachmentsEditItem *)self _addAttachmentCell:a3];
  [v4 setHighlighted:1];
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v4 = [(EKEventAttachmentsEditItem *)self _addAttachmentCell:a3];
  [v4 setHighlighted:0];
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:2];

  return v4;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [a4 items];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = *MEMORY[0x1E6982D60];
    v15 = *MEMORY[0x1E6982F30];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 itemProvider];
        v11 = [v7 identifier];
        if ([v10 hasItemConformingToTypeIdentifier:v11])
        {
        }

        else
        {
          v12 = [v9 itemProvider];
          v13 = [v15 identifier];
          v14 = [v12 hasItemConformingToTypeIdentifier:v13];

          if (!v14)
          {
            continue;
          }
        }

        [(EKEventAttachmentsEditItem *)self _loadAndAddDataAttachmentFromItem:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v4 = [(EKEventAttachmentsEditItem *)self _addAttachmentCell:a3];
  [v4 setHighlighted:0];
}

- (void)_loadAndAddDataAttachmentFromItem:(id)a3
{
  v4 = [a3 itemProvider];
  v5 = [*MEMORY[0x1E6982D60] identifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__EKEventAttachmentsEditItem__loadAndAddDataAttachmentFromItem___block_invoke;
  v7[3] = &unk_1E84418D8;
  v7[4] = self;
  v6 = [v4 loadFileRepresentationForTypeIdentifier:v5 completionHandler:v7];
}

void __64__EKEventAttachmentsEditItem__loadAndAddDataAttachmentFromItem___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E6966960];
    v4 = a2;
    v5 = [[v3 alloc] initWithFilepath:v4];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__EKEventAttachmentsEditItem__loadAndAddDataAttachmentFromItem___block_invoke_2;
    v7[3] = &unk_1E843EFB8;
    v7[4] = *(a1 + 32);
    v8 = v5;
    v6 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

@end