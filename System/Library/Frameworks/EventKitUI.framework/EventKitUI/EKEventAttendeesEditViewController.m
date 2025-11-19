@interface EKEventAttendeesEditViewController
- (BOOL)editItemShouldBeAskedForInjectableViewController;
- (BOOL)validateEmailWithString:(id)a3;
- (EKEventAttendeesEditViewController)initWithFrame:(CGRect)a3 event:(id)a4 overriddenEventStartDate:(id)a5 overriddenEventEndDate:(id)a6;
- (NSArray)attendees;
- (id)_attendeeFromRecipient:(id)a3;
- (id)_createAttendeeFromRecipient:(id)a3;
- (id)_createRecipientFromAttendee:(id)a3;
- (id)_firstInvalidRecipientAddress;
- (id)_recipientFromAttendee:(id)a3;
- (void)setAttendees:(id)a3;
- (void)validateAllowingAlert:(BOOL)a3 callback:(id)a4;
- (void)viewDidLoad;
@end

@implementation EKEventAttendeesEditViewController

- (EKEventAttendeesEditViewController)initWithFrame:(CGRect)a3 event:(id)a4 overriddenEventStartDate:(id)a5 overriddenEventEndDate:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v28.receiver = self;
  v28.super_class = EKEventAttendeesEditViewController;
  v17 = [(EKEditItemViewController *)&v28 initWithFrame:x, y, width, height];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_event, a4);
    v19 = [[EKEventAttendeePicker alloc] initWithFrame:v14 event:0 calendar:v15 overriddenEventStartDate:v16 overriddenEventEndDate:x, y, width, height];
    picker = v18->_picker;
    v18->_picker = v19;

    if (![(EKEventAttendeesEditViewController *)v18 disableShowingButtons])
    {
      v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v18 action:sel__cancelTapped_];
      v22 = [(EKEventAttendeesEditViewController *)v18 navigationItem];
      [v22 setLeftBarButtonItem:v21];

      v23 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v18 action:sel__doneTapped_];
      v24 = [(EKEventAttendeesEditViewController *)v18 navigationItem];
      [v24 setRightBarButtonItem:v23];
    }

    [(EKEventAttendeesEditViewController *)v18 addChildViewController:v18->_picker];
    [(EKEventAttendeePicker *)v18->_picker didMoveToParentViewController:v18];
    v25 = EventKitUIBundle();
    v26 = [v25 localizedStringForKey:@"Title - Add Invitees" value:@"Add Invitees" table:0];
    [(EKEventAttendeesEditViewController *)v18 setTitle:v26];
  }

  return v18;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = EKEventAttendeesEditViewController;
  [(EKEditItemViewController *)&v15 viewDidLoad];
  v3 = [(EKEventAttendeesEditViewController *)self view];
  v4 = [(EKEventAttendeePicker *)self->_picker view];
  [v3 addSubview:v4];

  v5 = [(EKEventAttendeePicker *)self->_picker view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(EKEventAttendeePicker *)self->_picker view];
  v7 = _NSDictionaryOfVariableBindings(&cfstr_Pickerview.isa, v6, 0);
  v8 = MEMORY[0x1E696ACD8];
  v9 = MEMORY[0x1E695E0F8];
  v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[pickerView]|" options:0 metrics:MEMORY[0x1E695E0F8] views:v7];
  [v8 activateConstraints:v10];

  v11 = MEMORY[0x1E696ACD8];
  v12 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[pickerView]|" options:0 metrics:v9 views:v7];
  [v11 activateConstraints:v12];

  WeakRetained = objc_loadWeakRetained(&self->super._editDelegate);
  LOBYTE(v12) = objc_opt_respondsToSelector();

  if (v12)
  {
    v14 = objc_loadWeakRetained(&self->super._editDelegate);
    [v14 editItemViewControllerWantsKeyboardPinned:1];
  }
}

- (BOOL)validateEmailWithString:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"SELF MATCHES %@", @"[A-Z0-9a-z._%+'-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2, 64}"];
  v6 = [v5 evaluateWithObject:v4];

  return v6;
}

- (id)_firstInvalidRecipientAddress
{
  v2 = self;
  v27 = *MEMORY[0x1E69E9840];
  [(EKEventAttendeePicker *)self->_picker recipients];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = v25 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = 0x1EC764000uLL;
    while (2)
    {
      v8 = 0;
      v21 = v5;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        if ([v9 kind])
        {
          v10 = 0;
        }

        else
        {
          v11 = [v9 uncommentedAddress];
          v10 = ![(EKEventAttendeesEditViewController *)v2 validateEmailWithString:v11];
        }

        if ([v9 kind] == 1)
        {
          v12 = [*(&v2->super.super.super.super.isa + *(v7 + 3336)) calendar];
          v13 = [v12 constraints];
          if ([v13 supportsPhoneNumbers])
          {
            [v9 normalizedAddress];
            v14 = v6;
            v15 = v2;
            v17 = v16 = v3;
            v18 = [v17 cal_isPhoneNumber] ^ 1;

            v3 = v16;
            v2 = v15;
            v6 = v14;
            v7 = 0x1EC764000;
          }

          else
          {
            v18 = 1;
          }

          v5 = v21;
        }

        else
        {
          v18 = 0;
        }

        if ((v10 | v18))
        {
          v19 = [v9 uncommentedAddress];
          goto LABEL_20;
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_20:

  return v19;
}

- (void)validateAllowingAlert:(BOOL)a3 callback:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(EKEventAttendeePicker *)self->_picker commitRemainingText];
  v7 = [(EKEventAttendeesEditViewController *)self _firstInvalidRecipientAddress];
  v8 = [(EKEvent *)self->_event calendar];
  v9 = [v8 maxAttendees];

  if (v9 < 1)
  {
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = [(EKEventAttendeePicker *)self->_picker recipients];
    v11 = [v10 count];

    if (!v7)
    {
      if (v11 + 1 > v9)
      {
        if (v4)
        {
          v45 = MEMORY[0x1E69DC650];
          v47 = EventKitUIBundle();
          v44 = [v47 localizedStringForKey:@"Too Many Invitees" value:&stru_1F4EF6790 table:0];
          v12 = MEMORY[0x1E696AEC0];
          EventKitUIBundle();
          v13 = v48 = v4;
          v14 = [v13 localizedStringForKey:@"This event has %ld invitees but this account only supports %ld invitees. The server will not accept events with too many invitees. Do you want to continue editing the invitees or attempt to save the event anyway?" value:&stru_1F4EF6790 table:0];
          v15 = [(EKEventAttendeePicker *)self->_picker recipients];
          v16 = [v15 count] + 1;
          v17 = [(EKEvent *)self->_event calendar];
          v18 = [v12 localizedStringWithFormat:v14, v16, objc_msgSend(v17, "maxAttendees")];
          v46 = [v45 alertControllerWithTitle:v44 message:v18 preferredStyle:1];

          v19 = MEMORY[0x1E69DC648];
          v20 = EventKitUIBundle();
          v21 = [v20 localizedStringForKey:@"Edit" value:&stru_1F4EF6790 table:0];
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __69__EKEventAttendeesEditViewController_validateAllowingAlert_callback___block_invoke;
          v52[3] = &unk_1E84409B8;
          v22 = v6;
          v53 = v22;
          v54 = v48;
          v23 = [v19 actionWithTitle:v21 style:1 handler:v52];
          [v46 addAction:v23];

          v24 = MEMORY[0x1E69DC648];
          v25 = EventKitUIBundle();
          v26 = [v25 localizedStringForKey:@"Continue" value:&stru_1F4EF6790 table:0];
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __69__EKEventAttendeesEditViewController_validateAllowingAlert_callback___block_invoke_2;
          v49[3] = &unk_1E84409B8;
          v50 = v22;
          v51 = v48;
          v27 = [v24 actionWithTitle:v26 style:0 handler:v49];
          [v46 addAction:v27];

          [(EKEventAttendeesEditViewController *)self presentViewController:v46 animated:1 completion:0];
          goto LABEL_12;
        }

        v41 = v6[2];
        v43 = v6;
        v42 = 1;
LABEL_11:
        v41(v43, v42, 1);
        goto LABEL_12;
      }

LABEL_10:
      v41 = v6[2];
      v42 = !v4;
      v43 = v6;
      goto LABEL_11;
    }
  }

  if (v4)
  {
    v28 = MEMORY[0x1E69DC650];
    v29 = EventKitUIBundle();
    v30 = [v29 localizedStringForKey:@"Cannot Send Invitation" value:&stru_1F4EF6790 table:0];
    v31 = v4;
    v32 = MEMORY[0x1E696AEC0];
    v33 = EventKitUIBundle();
    v34 = [v33 localizedStringForKey:@"“%@” does not appear to be a valid email address." value:&stru_1F4EF6790 table:0];
    v35 = [v32 localizedStringWithFormat:v34, v7];
    v36 = [v28 alertControllerWithTitle:v30 message:v35 preferredStyle:1];

    v4 = v31;
    v37 = MEMORY[0x1E69DC648];
    v38 = EventKitUIBundle();
    v39 = [v38 localizedStringForKey:@"OK" value:&stru_1F4EF6790 table:0];
    v40 = [v37 actionWithTitle:v39 style:1 handler:0];
    [v36 addAction:v40];

    [(EKEventAttendeesEditViewController *)self presentViewController:v36 animated:1 completion:0];
  }

  (v6[2])(v6, !v4, 0);
LABEL_12:
}

- (id)_attendeeFromRecipient:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(v4, &kEKUI_CNComposeReciepentParticipantKey);
  if (!v5)
  {
    v5 = [v4 address];

    if (v5)
    {
      v5 = [(EKEventAttendeesEditViewController *)self _createAttendeeFromRecipient:v4];
    }
  }

  v6 = [(EKEvent *)self->_event calendar];
  v7 = [v6 ownerIdentityAddress];

  v8 = [v5 URL];
  v9 = v8;
  if (v8 && v7)
  {
    v10 = [v5 URL];
    v11 = [v10 CDVIsEqualToURL:v7];

    if (v11)
    {
      v12 = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = v5;
LABEL_10:

  return v12;
}

- (id)_createAttendeeFromRecipient:(id)a3
{
  v3 = a3;
  v4 = [v3 displayString];
  v5 = [v4 length];

  if (v5)
  {
    [v3 displayString];
  }

  else
  {
    [v3 compositeName];
  }
  v6 = ;
  if ([v3 kind] == 4)
  {
    v7 = MEMORY[0x1E6966968];
    v8 = MEMORY[0x1E695DFF8];
    v9 = [v3 normalizedAddress];
    v10 = [v8 URLWithString:v9];
    v11 = [v7 attendeeWithName:v6 url:v10];
LABEL_9:
    v13 = v11;

LABEL_11:
    goto LABEL_12;
  }

  if (![v3 kind])
  {
    v14 = MEMORY[0x1E6966968];
    v9 = [v3 address];
    v13 = [v14 attendeeWithName:v6 emailAddress:v9];
    goto LABEL_11;
  }

  if ([v3 kind] == 1)
  {
    v12 = MEMORY[0x1E6966968];
    v9 = IdentityNameFromRecipient(v3);
    v10 = [v3 normalizedAddress];
    v11 = [v12 attendeeWithName:v9 phoneNumber:v10];
    goto LABEL_9;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (id)_recipientFromAttendee:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(EKEventAttendeesEditViewController *)self _createRecipientFromAttendee:v4];
    objc_setAssociatedObject(v5, &kEKUI_CNComposeReciepentParticipantKey, v4, 0x301);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_createRecipientFromAttendee:(id)a3
{
  v3 = a3;
  v4 = [v3 contactPredicate];
  v5 = [MEMORY[0x1E6992F50] defaultProvider];
  v6 = [getCNComposeRecipientClass() descriptorsForRequiredKeysForContact];
  v7 = [v5 unifiedContactsMatchingPredicate:v4 keysToFetch:v6];

  v8 = [v7 firstObject];
  v9 = [v3 emailAddress];

  if (v9)
  {
    v10 = objc_alloc(getCNComposeRecipientClass());
    v11 = [v3 emailAddress];
    v12 = v10;
    v13 = v8;
    v14 = v11;
    v15 = 0;
LABEL_5:
    v18 = [v12 initWithContact:v13 address:v14 kind:v15];
    goto LABEL_6;
  }

  v16 = [v3 phoneNumber];

  if (v16)
  {
    v17 = objc_alloc(getCNComposeRecipientClass());
    v11 = [v3 phoneNumber];
    v12 = v17;
    v13 = v8;
    v14 = v11;
    v15 = 1;
    goto LABEL_5;
  }

  v21 = [v3 URL];
  v22 = [v21 cal_hasSchemeMailto];

  if (v22)
  {
    v23 = objc_alloc(getCNComposeRecipientClass());
    v11 = [v3 URL];
    v24 = [v11 resourceSpecifier];
LABEL_16:
    v28 = v24;
    v29 = v23;
    v30 = v8;
    v31 = v28;
    v32 = 0;
    goto LABEL_17;
  }

  v25 = [v3 URL];
  v26 = [v25 cal_hasSchemeTel];

  v23 = objc_alloc(getCNComposeRecipientClass());
  v27 = [v3 URL];
  v11 = v27;
  if (!v26)
  {
    v24 = [v27 absoluteString];
    goto LABEL_16;
  }

  v28 = [v27 resourceSpecifier];
  v29 = v23;
  v30 = v8;
  v31 = v28;
  v32 = 1;
LABEL_17:
  v18 = [v29 initWithContact:v30 address:v31 kind:v32];

LABEL_6:
  if (v8)
  {
    v19 = [v8 CalDisplayName];
    [v18 setDisplayString:v19];
  }

  return v18;
}

- (NSArray)attendees
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

        v10 = [(EKEventAttendeesEditViewController *)self _attendeeFromRecipient:*(*(&v12 + 1) + 8 * i), v12];
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

- (void)setAttendees:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(EKEventAttendeesEditViewController *)self _recipientFromAttendee:v12];
        if (v13)
        {
          [v5 addObject:v13];
          [v6 setObject:v12 forKey:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__EKEventAttendeesEditViewController_setAttendees___block_invoke;
  v15[3] = &unk_1E84409E0;
  v16 = v6;
  v14 = v6;
  [v5 sortUsingComparator:v15];
  [(EKEventAttendeePicker *)self->_picker setRecipients:v5];
}

uint64_t __51__EKEventAttendeesEditViewController_setAttendees___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  v8 = [v7 participantRole];

  v9 = [*(a1 + 32) objectForKey:v6];
  v10 = [v9 participantRole];

  if (v8 != 2 || v10 == 2)
  {
    if (v8 != 2 && v10 == 2)
    {
      v15 = -1;
    }

    else
    {
      v13 = [v5 address];
      v14 = [v6 address];
      v15 = [v13 compare:v14];
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (BOOL)editItemShouldBeAskedForInjectableViewController
{
  if (self->_cancelTapped)
  {
    return 0;
  }

  v3 = [(EKEventAttendeePicker *)self->_picker recipients];
  v2 = [v3 count] != 0;

  return v2;
}

@end