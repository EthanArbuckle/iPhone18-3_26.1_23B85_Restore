@interface EKEventAvailabilityDetailItem
- (BOOL)_canChangeAvailability;
- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4;
- (id)_choices;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)reset;
- (void)setEvent:(id)a3 reminder:(id)a4 store:(id)a5;
@end

@implementation EKEventAvailabilityDetailItem

- (void)setEvent:(id)a3 reminder:(id)a4 store:(id)a5
{
  v6.receiver = self;
  v6.super_class = EKEventAvailabilityDetailItem;
  [(EKEventDetailItem *)&v6 setEvent:a3 reminder:a4 store:a5];
  self->_availability = [(EKEvent *)self->super._event availability];
}

- (id)_choices
{
  v2 = [(EKEvent *)self->super._event calendar];
  v3 = [v2 supportedEventAvailabilities];

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if (v3)
  {
    [v4 addObject:&unk_1F4F325F0];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:&unk_1F4F32608];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v5 addObject:&unk_1F4F32620];
  if ((v3 & 8) != 0)
  {
LABEL_5:
    [v5 addObject:&unk_1F4F32638];
  }

LABEL_6:

  return v5;
}

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4
{
  v5.receiver = self;
  v5.super_class = EKEventAvailabilityDetailItem;
  [(EKEventDetailItem *)&v5 defaultCellHeightForSubitemAtIndex:a3 forWidth:a4];
  return result;
}

- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = !a5 && [v7 allowsAvailabilityModifications] && objc_msgSend(v8, "supportedEventAvailabilities") != 0;

  return v9;
}

- (BOOL)_canChangeAvailability
{
  if ([(EKEventDetailItem *)self isPrivateEvent])
  {
    return 0;
  }

  else
  {
    return ![(EKEventDetailItem *)self isReadOnlyDelegateCalendar];
  }
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v43 = *MEMORY[0x1E69E9840];
  cell = self->_cell;
  if (cell)
  {
    goto LABEL_21;
  }

  EKUIUnscaledCatalyst();
  v5 = [objc_alloc(objc_opt_class()) initWithStyle:1 reuseIdentifier:0];
  v6 = self->_cell;
  self->_cell = v5;

  v34 = self;
  objc_initWeak(&location, self);
  v33 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = [(EKEventAvailabilityDetailItem *)self _choices];
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = MEMORY[0x1E69DC628];
        [v11 intValue];
        v13 = CUIKDisplayStringForAvailability();
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __55__EKEventAvailabilityDetailItem_cellForSubitemAtIndex___block_invoke;
        v35[3] = &unk_1E843FAB0;
        objc_copyWeak(&v36, &location);
        v35[4] = v11;
        v14 = [v12 actionWithTitle:v13 image:0 identifier:0 handler:v35];

        availability = v34->_availability;
        if (availability == [v11 intValue])
        {
          [v14 setState:1];
        }

        [v33 addObject:v14];

        objc_destroyWeak(&v36);
      }

      v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);
  }

  v16 = v34;
  if (EKUIUnscaledCatalyst())
  {
    v17 = [MEMORY[0x1E69DC738] buttonWithType:124];
    if (CalSolariumEnabled())
    {
      v18 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      [v17 setConfiguration:v18];
    }

    v19 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:v33];
    [v17 setMenu:v19];

    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [(UITableViewCell *)v34->_cell contentView];
    [v20 addSubview:v17];

    v21 = MEMORY[0x1E696ACD8];
    v22 = [(UITableViewCell *)v34->_cell textLabel];
    v23 = [v21 constraintWithItem:v17 attribute:11 relatedBy:0 toItem:v22 attribute:11 multiplier:1.0 constant:0.0];
    [v23 setActive:1];

    v24 = MEMORY[0x1E696ACD8];
    v25 = [(UITableViewCell *)v34->_cell contentView];
    v26 = [v24 constraintWithItem:v17 attribute:6 relatedBy:0 toItem:v25 attribute:6 multiplier:1.0 constant:-20.0];
    [v26 setActive:1];

    goto LABEL_17;
  }

  if ([v33 count])
  {
    v17 = [MEMORY[0x1E69DCC60] menuWithChildren:v33];
    [(UITableViewCell *)v34->_cell setPopupMenu:v17];
LABEL_17:

    v16 = v34;
  }

  v27 = [MEMORY[0x1E69DC888] labelColor];
  v28 = [(UITableViewCell *)v16->_cell textLabel];
  [v28 setTextColor:v27];

  v29 = EventKitUIBundle();
  v30 = [v29 localizedStringForKey:@"Show As" value:&stru_1F4EF6790 table:0];
  v31 = [(UITableViewCell *)v34->_cell textLabel];
  [v31 setText:v30];

  [(UITableViewCell *)v34->_cell setAccessoryType:0];
  if ([(EKEventDetailItem *)v34 shouldIndent])
  {
    [(UITableViewCell *)v34->_cell setIndentationLevel:2];
  }

  objc_destroyWeak(&location);
  cell = v34->_cell;
LABEL_21:

  return cell;
}

void __55__EKEventAvailabilityDetailItem_cellForSubitemAtIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[11];
    v6 = WeakRetained;
    v5 = [*(a1 + 32) intValue];
    v3 = v6;
    if (v4 != v5)
    {
      v6[11] = v5;
      [v6[2] setAvailability:?];
      [v6 notifySubitemDidSave:0];
      [v6 editItemViewController:0 didCompleteWithAction:3];
      v3 = v6;
    }
  }
}

@end