@interface EKEventAvailabilityDetailItem
- (BOOL)_canChangeAvailability;
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)_choices;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)reset;
- (void)setEvent:(id)event reminder:(id)reminder store:(id)store;
@end

@implementation EKEventAvailabilityDetailItem

- (void)setEvent:(id)event reminder:(id)reminder store:(id)store
{
  v6.receiver = self;
  v6.super_class = EKEventAvailabilityDetailItem;
  [(EKEventDetailItem *)&v6 setEvent:event reminder:reminder store:store];
  self->_availability = [(EKEvent *)self->super._event availability];
}

- (id)_choices
{
  calendar = [(EKEvent *)self->super._event calendar];
  supportedEventAvailabilities = [calendar supportedEventAvailabilities];

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if (supportedEventAvailabilities)
  {
    [v4 addObject:&unk_1F4F325F0];
    if ((supportedEventAvailabilities & 2) == 0)
    {
LABEL_3:
      if ((supportedEventAvailabilities & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((supportedEventAvailabilities & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:&unk_1F4F32608];
  if ((supportedEventAvailabilities & 4) == 0)
  {
LABEL_4:
    if ((supportedEventAvailabilities & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v5 addObject:&unk_1F4F32620];
  if ((supportedEventAvailabilities & 8) != 0)
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

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
{
  v5.receiver = self;
  v5.super_class = EKEventAvailabilityDetailItem;
  [(EKEventDetailItem *)&v5 defaultCellHeightForSubitemAtIndex:index forWidth:width];
  return result;
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  eventCopy = event;
  calendarCopy = calendar;
  v9 = !preview && [eventCopy allowsAvailabilityModifications] && objc_msgSend(calendarCopy, "supportedEventAvailabilities") != 0;

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

- (id)cellForSubitemAtIndex:(unint64_t)index
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

  selfCopy = self;
  objc_initWeak(&location, self);
  v33 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  _choices = [(EKEventAvailabilityDetailItem *)self _choices];
  v8 = [_choices countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(_choices);
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

        availability = selfCopy->_availability;
        if (availability == [v11 intValue])
        {
          [v14 setState:1];
        }

        [v33 addObject:v14];

        objc_destroyWeak(&v36);
      }

      v8 = [_choices countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);
  }

  v16 = selfCopy;
  if (EKUIUnscaledCatalyst())
  {
    v17 = [MEMORY[0x1E69DC738] buttonWithType:124];
    if (CalSolariumEnabled())
    {
      plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      [v17 setConfiguration:plainButtonConfiguration];
    }

    v19 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:v33];
    [v17 setMenu:v19];

    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(UITableViewCell *)selfCopy->_cell contentView];
    [contentView addSubview:v17];

    v21 = MEMORY[0x1E696ACD8];
    textLabel = [(UITableViewCell *)selfCopy->_cell textLabel];
    v23 = [v21 constraintWithItem:v17 attribute:11 relatedBy:0 toItem:textLabel attribute:11 multiplier:1.0 constant:0.0];
    [v23 setActive:1];

    v24 = MEMORY[0x1E696ACD8];
    contentView2 = [(UITableViewCell *)selfCopy->_cell contentView];
    v26 = [v24 constraintWithItem:v17 attribute:6 relatedBy:0 toItem:contentView2 attribute:6 multiplier:1.0 constant:-20.0];
    [v26 setActive:1];

    goto LABEL_17;
  }

  if ([v33 count])
  {
    v17 = [MEMORY[0x1E69DCC60] menuWithChildren:v33];
    [(UITableViewCell *)selfCopy->_cell setPopupMenu:v17];
LABEL_17:

    v16 = selfCopy;
  }

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  textLabel2 = [(UITableViewCell *)v16->_cell textLabel];
  [textLabel2 setTextColor:labelColor];

  v29 = EventKitUIBundle();
  v30 = [v29 localizedStringForKey:@"Show As" value:&stru_1F4EF6790 table:0];
  textLabel3 = [(UITableViewCell *)selfCopy->_cell textLabel];
  [textLabel3 setText:v30];

  [(UITableViewCell *)selfCopy->_cell setAccessoryType:0];
  if ([(EKEventDetailItem *)selfCopy shouldIndent])
  {
    [(UITableViewCell *)selfCopy->_cell setIndentationLevel:2];
  }

  objc_destroyWeak(&location);
  cell = selfCopy->_cell;
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