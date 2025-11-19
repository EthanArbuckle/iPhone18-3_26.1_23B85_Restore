@interface EKEventCalendarDetailItem
- (BOOL)_calendarCanBeChanged;
- (BOOL)_shouldAllowViewingDetailsForCalendar:(id)a3;
- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5;
- (BOOL)editItemViewControllerSave:(id)a3;
- (BOOL)minimalMode;
- (EKEventCalendarDetailItem)init;
- (id)cellForSubitemAtIndex:(unint64_t)a3 withTraitCollection:(id)a4;
- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4;
- (id)popupMenu:(id)a3;
- (void)dealloc;
- (void)reset;
@end

@implementation EKEventCalendarDetailItem

- (EKEventCalendarDetailItem)init
{
  v5.receiver = self;
  v5.super_class = EKEventCalendarDetailItem;
  v2 = [(EKEventCalendarDetailItem *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = EKEventCalendarDetailItem;
  [(EKEventDetailItem *)&v4 dealloc];
}

- (void)reset
{
  calendar = self->_calendar;
  self->_calendar = 0;

  popupCell = self->_popupCell;
  self->_popupCell = 0;

  displayCell = self->_displayCell;
  self->_displayCell = 0;

  popupMenu = self->_popupMenu;
  self->_popupMenu = 0;
}

- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5
{
  v8 = a4;
  objc_storeStrong(&self->_calendar, a4);
  v9 = [(EKEventCalendarDetailItem *)self _calendarCanBeChanged]&& (([(EKEvent *)self->super._event isSelfOrganized]& 1) != 0 || ![(EKEventDetailItem *)self isPrivateEvent]&& ![(EKEventDetailItem *)self isReadOnlyDelegateCalendar]) || [(EKEventCalendarDetailItem *)self _shouldAllowViewingDetailsForCalendar:v8];
  [(EKEventDetailItem *)self setAllowsEditing:v9];
  if ([(EKEventCalendarDetailItem *)self minimalMode])
  {
    if ([v8 isSubscribed])
    {
      v10 = [v8 isSubscribedHolidayCalendar] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = !a5;
  }

  return v10;
}

- (BOOL)minimalMode
{
  v2 = [(EKEventDetailItem *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 minimalMode];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3 withTraitCollection:(id)a4
{
  v5 = a4;
  if (![(EKEventDetailItem *)self allowsEditing]|| ([(EKEvent *)self->super._event calendar], v6 = objc_claimAutoreleasedReturnValue(), v7 = [(EKEventCalendarDetailItem *)self _shouldAllowViewingDetailsForCalendar:v6], v6, v7))
  {
    if (!self->_displayCell)
    {
      v8 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
      displayCell = self->_displayCell;
      self->_displayCell = v8;
    }

    v10 = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
    [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v5];
    v11 = objc_alloc(MEMORY[0x1E696AD40]);
    v12 = [(EKEvent *)self->super._event calendar];
    v13 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v14 = CalendarTitleWithDotAttributedString(v12, v13);
    v15 = [v11 initWithAttributedString:v14];

    v16 = *MEMORY[0x1E69DB648];
    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v15 addAttribute:v16 value:v17 range:{0, objc_msgSend(v15, "length")}];

    v18 = *MEMORY[0x1E69DB650];
    v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v15 addAttribute:v18 value:v19 range:{0, objc_msgSend(v15, "length")}];

    v20 = [(EKUITableViewCell *)self->_displayCell detailTextLabel];
    [v20 setAttributedText:v15];

    [(EKUITableViewCell *)self->_displayCell setAccessoryType:0];
    [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v10];
    v21 = self->_displayCell;
    goto LABEL_6;
  }

  popupCell = self->_popupCell;
  if (!popupCell)
  {
    v29 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    v30 = self->_popupCell;
    self->_popupCell = v29;

    popupCell = self->_popupCell;
  }

  v21 = popupCell;
  [(EKUITableViewCell *)v21 setShowSelectedImage:1];
  v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  if (!EKUICatalyst())
  {
    v32 = [(EKEvent *)self->super._event calendar];
    v15 = [EKUICalendarMenu placeholderMenuForCalendar:v32 backgroundColor:v10];

    [(EKUITableViewCell *)v21 setPopupMenu:v15];
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy__19;
    v38[4] = __Block_byref_object_dispose__19;
    v39 = 0;
    objc_initWeak(&location, self);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __71__EKEventCalendarDetailItem_cellForSubitemAtIndex_withTraitCollection___block_invoke;
    v33[3] = &unk_1E84401A8;
    objc_copyWeak(&v36, &location);
    v35 = v38;
    v34 = v10;
    [(EKUITableViewCell *)v21 setPopupMenuProvider:v33];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
    _Block_object_dispose(v38, 8);

LABEL_6:
    goto LABEL_7;
  }

  v31 = [(EKEventCalendarDetailItem *)self popupMenu:v10];
  [(EKUITableViewCell *)v21 setPopupMenu:v31];

LABEL_7:
  v22 = EventKitUIBundle();
  v23 = [v22 localizedStringForKey:@"Calendar" value:&stru_1F4EF6790 table:0];
  v24 = [(EKUITableViewCell *)v21 textLabel];
  [v24 setText:v23];

  v25 = [MEMORY[0x1E69DC888] labelColor];
  v26 = [(EKUITableViewCell *)v21 textLabel];
  [v26 setTextColor:v25];

  [(EKUITableViewCell *)v21 setAccessibilityIdentifier:@"event-details-calendar-cell"];

  return v21;
}

void *__71__EKEventCalendarDetailItem_cellForSubitemAtIndex_withTraitCollection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && !*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = [WeakRetained popupMenu:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = v7;

  return v7;
}

- (id)popupMenu:(id)a3
{
  v4 = a3;
  popupMenu = self->_popupMenu;
  if (!popupMenu)
  {
    v6 = [(EKEventCalendarDetailItem *)self eligibleCalendars];
    objc_initWeak(&location, self);
    v7 = [(EKEvent *)self->super._event eventStore];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39__EKEventCalendarDetailItem_popupMenu___block_invoke;
    v14[3] = &unk_1E84401D0;
    objc_copyWeak(&v15, &location);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__EKEventCalendarDetailItem_popupMenu___block_invoke_2;
    v12[3] = &unk_1E84401F8;
    objc_copyWeak(&v13, &location);
    v8 = [EKUICalendarMenu calendarMenuWithCalendars:v6 eventStore:v7 backgroundColor:v4 setupActionHandler:v14 selectionHandler:v12];

    v9 = self->_popupMenu;
    self->_popupMenu = v8;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);

    popupMenu = self->_popupMenu;
  }

  v10 = popupMenu;

  return popupMenu;
}

void __39__EKEventCalendarDetailItem_popupMenu___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained[2] calendar];
    v9 = [v5 isEqual:v8];

    if (v9)
    {
      [v10 setState:1];
    }
  }
}

void __39__EKEventCalendarDetailItem_popupMenu___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] setCalendar:v5];
    [v4 notifySubitemDidSave:0];
    [v4 editItemViewController:0 didCompleteWithAction:3];
  }
}

- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(EKEventDetailItem *)self allowsEditing])
  {
    v9 = [(EKEvent *)self->super._event calendar];
    if ([(EKEventCalendarDetailItem *)self _shouldAllowViewingDetailsForCalendar:v9])
    {
      v10 = [[EKSubscribedCalendarEditItemViewController alloc] initWithFrame:v9 calendar:x, y, width, height];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)editItemViewControllerSave:(id)a3
{
  [a3 save];
  [(EKEventDetailItem *)self notifySubitemDidSave:0];
  return 1;
}

- (BOOL)_calendarCanBeChanged
{
  if (![(EKCalendar *)self->_calendar allowsContentModifications])
  {
    return 0;
  }

  v3 = [(EKEvent *)self->super._event hasAttendees];
  event = self->super._event;
  if (!v3)
  {
    v10 = [(EKEvent *)event eventStore];
    v11 = [v10 readWriteCalendarsForEntityType:0];
    v12 = [v11 count];
LABEL_7:
    v9 = v12 > 1;

    return v9;
  }

  v5 = [(EKEvent *)event calendar];
  v6 = [v5 source];
  v7 = [v6 constraints];
  v8 = [v7 requiresOutgoingInvitationsInDefaultCalendar];

  if ((v8 & 1) == 0)
  {
    v10 = [(EKEvent *)self->super._event calendar];
    v11 = [v10 source];
    v13 = [v11 readWriteCalendarsForEntityType:0];
    v12 = [v13 count];

    goto LABEL_7;
  }

  return 0;
}

- (BOOL)_shouldAllowViewingDetailsForCalendar:(id)a3
{
  v4 = a3;
  if ([v4 isSubscribed] && (objc_msgSend(v4, "isSubscribedHolidayCalendar") & 1) == 0 && objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsFirstPartyCalendarApp"))
  {
    v5 = ![(EKEventCalendarDetailItem *)self minimalMode];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end