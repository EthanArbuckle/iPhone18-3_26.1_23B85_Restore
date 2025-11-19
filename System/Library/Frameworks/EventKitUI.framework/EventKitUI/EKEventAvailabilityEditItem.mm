@interface EKEventAvailabilityEditItem
- (BOOL)canBeConfiguredForCalendarConstraints:(id)a3;
- (BOOL)saveAndDismissWithForce:(BOOL)a3;
- (id)_choices;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)refreshFromCalendarItemAndStore;
@end

@implementation EKEventAvailabilityEditItem

- (BOOL)canBeConfiguredForCalendarConstraints:(id)a3
{
  v3 = a3;
  if ([v3 supportedEventAvailabilities])
  {
    v4 = [v3 isAffectingAvailability];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)refreshFromCalendarItemAndStore
{
  v4.receiver = self;
  v4.super_class = EKEventAvailabilityEditItem;
  [(EKCalendarItemEditItem *)&v4 refreshFromCalendarItemAndStore];
  v3 = [(EKEventEditItem *)self event];
  self->_availability = [v3 availability];
}

- (id)_choices
{
  v2 = [(EKEventEditItem *)self event];
  v3 = [v2 calendar];
  v4 = [v3 supportedEventAvailabilities];

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  if (v4)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [v5 addObject:v8];

    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:1];
  [v5 addObject:v9];

  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v10 = [MEMORY[0x1E696AD98] numberWithInt:2];
  [v5 addObject:v10];

  if ((v4 & 8) != 0)
  {
LABEL_5:
    v6 = [MEMORY[0x1E696AD98] numberWithInt:3];
    [v5 addObject:v6];
  }

LABEL_6:

  return v5;
}

- (BOOL)saveAndDismissWithForce:(BOOL)a3
{
  availability = self->_availability;
  v5 = [(EKEventEditItem *)self event];
  v6 = [v5 availability];

  if (availability != v6)
  {
    v7 = self->_availability;
    v8 = [(EKEventEditItem *)self event];
    [v8 setAvailability:v7];
  }

  return availability != v6;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v37 = *MEMORY[0x1E69E9840];
  EKUIUnscaledCatalyst();
  v27 = [objc_alloc(objc_opt_class()) initWithStyle:1 reuseIdentifier:0];
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Show As" value:&stru_1F4EF6790 table:0];
  v6 = [v27 textLabel];
  [v6 setText:v5];

  objc_initWeak(&location, self);
  v28 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [(EKEventAvailabilityEditItem *)self _choices];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = MEMORY[0x1E69DC628];
        [v11 intValue];
        v13 = CUIKDisplayStringForAvailability();
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __53__EKEventAvailabilityEditItem_cellForSubitemAtIndex___block_invoke;
        v29[3] = &unk_1E843FAB0;
        objc_copyWeak(&v30, &location);
        v29[4] = v11;
        v14 = [v12 actionWithTitle:v13 image:0 identifier:0 handler:v29];

        availability = self->_availability;
        if (availability == [v11 intValue])
        {
          [v14 setState:1];
        }

        [v28 addObject:v14];

        objc_destroyWeak(&v30);
      }

      v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  if (EKUIUnscaledCatalyst())
  {
    [v27 setAccessoryType:0];
    v16 = [MEMORY[0x1E69DC738] buttonWithType:124];
    if (CalSolariumEnabled())
    {
      v17 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      [v16 setConfiguration:v17];
    }

    v18 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:{v28, v27}];
    [v16 setMenu:v18];

    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v27 contentView];
    [v19 addSubview:v16];

    v20 = MEMORY[0x1E696ACD8];
    v21 = [v27 textLabel];
    v22 = [v20 constraintWithItem:v16 attribute:11 relatedBy:0 toItem:v21 attribute:11 multiplier:1.0 constant:0.0];
    [v22 setActive:1];

    v23 = MEMORY[0x1E696ACD8];
    v24 = [v27 contentView];
    v25 = [v23 constraintWithItem:v16 attribute:6 relatedBy:0 toItem:v24 attribute:6 multiplier:1.0 constant:-20.0];
    [v25 setActive:1];
  }

  else
  {
    if (![v28 count])
    {
      goto LABEL_17;
    }

    v16 = [MEMORY[0x1E69DCC60] menuWithChildren:v28];
    [v27 setPopupMenu:v16];
  }

LABEL_17:
  objc_destroyWeak(&location);

  return v27;
}

void __53__EKEventAvailabilityEditItem_cellForSubitemAtIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) intValue];
    v5[6] = v3;
    v4 = [v5 event];
    [v4 setAvailability:v3];

    [v5 notifySubitemDidSave:0];
    WeakRetained = v5;
  }
}

@end