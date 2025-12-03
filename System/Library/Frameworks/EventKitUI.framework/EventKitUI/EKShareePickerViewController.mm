@interface EKShareePickerViewController
- (CGSize)preferredContentSize;
- (EKShareePickerViewController)initWithFrame:(CGRect)frame calendar:(id)calendar;
- (EKShareePickerViewControllerDelegate)delegate;
- (NSArray)sharees;
- (id)_createRecipientFromSharee:(id)sharee;
- (id)_createShareeFromRecipient:(id)recipient;
- (id)_recipientFromSharee:(id)sharee;
- (id)_shareeFromRecipient:(id)recipient;
- (unint64_t)eventAttendeePicker:(id)picker getValidationStatusForAddress:(id)address;
- (void)add;
- (void)cancel;
- (void)eventAttendeePicker:(id)picker cacheValidationStatus:(unint64_t)status forAddress:(id)address;
- (void)setSharees:(id)sharees;
- (void)viewDidLoad;
@end

@implementation EKShareePickerViewController

- (EKShareePickerViewController)initWithFrame:(CGRect)frame calendar:(id)calendar
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  calendarCopy = calendar;
  v20.receiver = self;
  v20.super_class = EKShareePickerViewController;
  v10 = [(EKShareePickerViewController *)&v20 initWithNibName:0 bundle:0];
  if (v10)
  {
    height = [(EKEventAttendeePicker *)[EKCalendarShareePicker alloc] initWithFrame:0 event:calendarCopy calendar:0 overriddenEventStartDate:0 overriddenEventEndDate:x, y, width, height];
    picker = v10->_picker;
    v10->_picker = height;

    [(EKEventAttendeePicker *)v10->_picker setAddressValidationDelegate:v10];
    [(EKShareePickerViewController *)v10 addChildViewController:v10->_picker];
    v13 = EventKitUIBundle();
    v14 = [v13 localizedStringForKey:@"Add Person VC title" value:@"Add Person" table:0];
    [(EKShareePickerViewController *)v10 setTitle:v14];

    v15 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v10 action:sel_cancel];
    navigationItem = [(EKShareePickerViewController *)v10 navigationItem];
    [navigationItem setLeftBarButtonItem:v15];

    v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v10 action:&sel_add];
    navigationItem2 = [(EKShareePickerViewController *)v10 navigationItem];
    [navigationItem2 setRightBarButtonItem:v17];
  }

  return v10;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = EKShareePickerViewController;
  [(EKShareePickerViewController *)&v15 viewDidLoad];
  view = [(EKShareePickerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(EKCalendarShareePicker *)self->_picker view];
  [view2 setFrame:{v5, v7, v9, v11}];

  view3 = [(EKShareePickerViewController *)self view];
  view4 = [(EKCalendarShareePicker *)self->_picker view];
  [view3 addSubview:view4];
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

- (id)_shareeFromRecipient:(id)recipient
{
  recipientCopy = recipient;
  address = objc_getAssociatedObject(recipientCopy, &shareeKey);
  if (!address)
  {
    address = [recipientCopy address];

    if (address)
    {
      address = [(EKShareePickerViewController *)self _createShareeFromRecipient:recipientCopy];
    }
  }

  return address;
}

- (id)_createShareeFromRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (![recipientCopy kind])
  {
    v11 = MEMORY[0x1E6966AE8];
    displayString = [recipientCopy displayString];
    address = [recipientCopy address];
    v7 = v11;
    v8 = displayString;
    v9 = address;
    v10 = 0;
    goto LABEL_5;
  }

  if ([recipientCopy kind] == 1)
  {
    v4 = MEMORY[0x1E6966AE8];
    displayString = IdentityNameFromRecipient(recipientCopy);
    address = [recipientCopy normalizedAddress];
    v7 = v4;
    v8 = displayString;
    v9 = 0;
    v10 = address;
LABEL_5:
    v12 = 0;
LABEL_6:
    v13 = [v7 shareeWithName:v8 emailAddress:v9 phoneNumber:v10 externalID:v12];

    goto LABEL_7;
  }

  if ([recipientCopy kind] == 4)
  {
    v15 = MEMORY[0x1E6966AE8];
    displayString = [recipientCopy displayString];
    address = [recipientCopy address];
    v7 = v15;
    v8 = displayString;
    v9 = 0;
    v10 = 0;
    v12 = address;
    goto LABEL_6;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)_recipientFromSharee:(id)sharee
{
  if (sharee)
  {
    shareeCopy = sharee;
    v5 = [(EKShareePickerViewController *)self _createRecipientFromSharee:shareeCopy];
    objc_setAssociatedObject(v5, &shareeKey, shareeCopy, 0x301);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_createRecipientFromSharee:(id)sharee
{
  shareeCopy = sharee;
  contactPredicate = [shareeCopy contactPredicate];
  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  descriptorsForRequiredKeysForContact = [getCNComposeRecipientClass_0() descriptorsForRequiredKeysForContact];
  v7 = [defaultProvider unifiedContactsMatchingPredicate:contactPredicate keysToFetch:descriptorsForRequiredKeysForContact];

  firstObject = [v7 firstObject];
  emailAddress = [shareeCopy emailAddress];

  if (emailAddress)
  {
    v10 = objc_alloc(getCNComposeRecipientClass_0());
    emailAddress2 = [shareeCopy emailAddress];
    v12 = v10;
    v13 = firstObject;
    v14 = emailAddress2;
    v15 = 0;
  }

  else
  {
    phoneNumber = [shareeCopy phoneNumber];

    if (!phoneNumber)
    {
      goto LABEL_6;
    }

    v17 = objc_alloc(getCNComposeRecipientClass_0());
    emailAddress2 = [shareeCopy phoneNumber];
    v12 = v17;
    v13 = firstObject;
    v14 = emailAddress2;
    v15 = 1;
  }

  phoneNumber = [v12 initWithContact:v13 address:v14 kind:v15];

LABEL_6:
  if (firstObject)
  {
    calDisplayName = [firstObject CalDisplayName];
    [phoneNumber setDisplayString:calDisplayName];
  }

  return phoneNumber;
}

- (NSArray)sharees
{
  v17 = *MEMORY[0x1E69E9840];
  recipients = [(EKEventAttendeePicker *)self->_picker recipients];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(recipients, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = recipients;
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

- (void)setSharees:(id)sharees
{
  v17 = *MEMORY[0x1E69E9840];
  shareesCopy = sharees;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(shareesCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = shareesCopy;
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
  view = [(EKShareePickerViewController *)self view];
  [view sizeThatFits:{v3, 1100.0}];
  v6 = v5;

  v7 = v3;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)eventAttendeePicker:(id)picker cacheValidationStatus:(unint64_t)status forAddress:(id)address
{
  addressCopy = address;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained eventStoreForShareePickerViewController:self];
  [v8 cacheValidationStatusForAddress:addressCopy status:status];
}

- (unint64_t)eventAttendeePicker:(id)picker getValidationStatusForAddress:(id)address
{
  addressCopy = address;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained eventStoreForShareePickerViewController:self];
  v8 = [v7 addressValidationStatus:addressCopy];

  return v8;
}

- (EKShareePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end