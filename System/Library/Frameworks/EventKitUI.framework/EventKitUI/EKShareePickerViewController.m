@interface EKShareePickerViewController
- (CGSize)preferredContentSize;
- (EKShareePickerViewController)initWithFrame:(CGRect)a3 calendar:(id)a4;
- (EKShareePickerViewControllerDelegate)delegate;
- (NSArray)sharees;
- (id)_createRecipientFromSharee:(id)a3;
- (id)_createShareeFromRecipient:(id)a3;
- (id)_recipientFromSharee:(id)a3;
- (id)_shareeFromRecipient:(id)a3;
- (unint64_t)eventAttendeePicker:(id)a3 getValidationStatusForAddress:(id)a4;
- (void)add;
- (void)cancel;
- (void)eventAttendeePicker:(id)a3 cacheValidationStatus:(unint64_t)a4 forAddress:(id)a5;
- (void)setSharees:(id)a3;
- (void)viewDidLoad;
@end

@implementation EKShareePickerViewController

- (EKShareePickerViewController)initWithFrame:(CGRect)a3 calendar:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = EKShareePickerViewController;
  v10 = [(EKShareePickerViewController *)&v20 initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = [(EKEventAttendeePicker *)[EKCalendarShareePicker alloc] initWithFrame:0 event:v9 calendar:0 overriddenEventStartDate:0 overriddenEventEndDate:x, y, width, height];
    picker = v10->_picker;
    v10->_picker = v11;

    [(EKEventAttendeePicker *)v10->_picker setAddressValidationDelegate:v10];
    [(EKShareePickerViewController *)v10 addChildViewController:v10->_picker];
    v13 = EventKitUIBundle();
    v14 = [v13 localizedStringForKey:@"Add Person VC title" value:@"Add Person" table:0];
    [(EKShareePickerViewController *)v10 setTitle:v14];

    v15 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v10 action:sel_cancel];
    v16 = [(EKShareePickerViewController *)v10 navigationItem];
    [v16 setLeftBarButtonItem:v15];

    v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v10 action:&sel_add];
    v18 = [(EKShareePickerViewController *)v10 navigationItem];
    [v18 setRightBarButtonItem:v17];
  }

  return v10;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = EKShareePickerViewController;
  [(EKShareePickerViewController *)&v15 viewDidLoad];
  v3 = [(EKShareePickerViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(EKCalendarShareePicker *)self->_picker view];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(EKShareePickerViewController *)self view];
  v14 = [(EKCalendarShareePicker *)self->_picker view];
  [v13 addSubview:v14];
}

- (void)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 shareePickerViewController:self didCompleteWithAction:0];
  }
}

- (void)add
{
  [(EKEventAttendeePicker *)self->_picker commitRemainingText];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 shareePickerViewController:self didCompleteWithAction:1];
  }
}

- (id)_shareeFromRecipient:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(v4, &shareeKey);
  if (!v5)
  {
    v5 = [v4 address];

    if (v5)
    {
      v5 = [(EKShareePickerViewController *)self _createShareeFromRecipient:v4];
    }
  }

  return v5;
}

- (id)_createShareeFromRecipient:(id)a3
{
  v3 = a3;
  if (![v3 kind])
  {
    v11 = MEMORY[0x1E6966AE8];
    v5 = [v3 displayString];
    v6 = [v3 address];
    v7 = v11;
    v8 = v5;
    v9 = v6;
    v10 = 0;
    goto LABEL_5;
  }

  if ([v3 kind] == 1)
  {
    v4 = MEMORY[0x1E6966AE8];
    v5 = IdentityNameFromRecipient(v3);
    v6 = [v3 normalizedAddress];
    v7 = v4;
    v8 = v5;
    v9 = 0;
    v10 = v6;
LABEL_5:
    v12 = 0;
LABEL_6:
    v13 = [v7 shareeWithName:v8 emailAddress:v9 phoneNumber:v10 externalID:v12];

    goto LABEL_7;
  }

  if ([v3 kind] == 4)
  {
    v15 = MEMORY[0x1E6966AE8];
    v5 = [v3 displayString];
    v6 = [v3 address];
    v7 = v15;
    v8 = v5;
    v9 = 0;
    v10 = 0;
    v12 = v6;
    goto LABEL_6;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)_recipientFromSharee:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(EKShareePickerViewController *)self _createRecipientFromSharee:v4];
    objc_setAssociatedObject(v5, &shareeKey, v4, 0x301);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_createRecipientFromSharee:(id)a3
{
  v3 = a3;
  v4 = [v3 contactPredicate];
  v5 = [MEMORY[0x1E6992F50] defaultProvider];
  v6 = [getCNComposeRecipientClass_0() descriptorsForRequiredKeysForContact];
  v7 = [v5 unifiedContactsMatchingPredicate:v4 keysToFetch:v6];

  v8 = [v7 firstObject];
  v9 = [v3 emailAddress];

  if (v9)
  {
    v10 = objc_alloc(getCNComposeRecipientClass_0());
    v11 = [v3 emailAddress];
    v12 = v10;
    v13 = v8;
    v14 = v11;
    v15 = 0;
  }

  else
  {
    v16 = [v3 phoneNumber];

    if (!v16)
    {
      goto LABEL_6;
    }

    v17 = objc_alloc(getCNComposeRecipientClass_0());
    v11 = [v3 phoneNumber];
    v12 = v17;
    v13 = v8;
    v14 = v11;
    v15 = 1;
  }

  v16 = [v12 initWithContact:v13 address:v14 kind:v15];

LABEL_6:
  if (v8)
  {
    v18 = [v8 CalDisplayName];
    [v16 setDisplayString:v18];
  }

  return v16;
}

- (NSArray)sharees
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(EKEventAttendeePicker *)self->_picker recipients];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(EKShareePickerViewController *)self _shareeFromRecipient:*(*(&v12 + 1) + 8 * i), v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)setSharees:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(EKShareePickerViewController *)self _recipientFromSharee:*(*(&v12 + 1) + 8 * v10), v12];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(EKEventAttendeePicker *)self->_picker setRecipients:v5];
}

- (CGSize)preferredContentSize
{
  v3 = EKUIContainedControllerIdealWidth();
  v4 = [(EKShareePickerViewController *)self view];
  [v4 sizeThatFits:{v3, 1100.0}];
  v6 = v5;

  v7 = v3;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)eventAttendeePicker:(id)a3 cacheValidationStatus:(unint64_t)a4 forAddress:(id)a5
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained eventStoreForShareePickerViewController:self];
  [v8 cacheValidationStatusForAddress:v7 status:a4];
}

- (unint64_t)eventAttendeePicker:(id)a3 getValidationStatusForAddress:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained eventStoreForShareePickerViewController:self];
  v8 = [v7 addressValidationStatus:v5];

  return v8;
}

- (EKShareePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end