@interface EKCalendarItemCalendarEditItem
- (BOOL)canBeConfiguredForCalendarConstraints:(id)a3;
- (EKCalendarItemCalendarEditItem)initWithEntityType:(unint64_t)a3;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)eligibleCalendars;
- (id)popupMenu:(id)a3;
@end

@implementation EKCalendarItemCalendarEditItem

- (EKCalendarItemCalendarEditItem)initWithEntityType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = EKCalendarItemCalendarEditItem;
  result = [(EKCalendarItemCalendarEditItem *)&v5 init];
  if (result)
  {
    result->_entityType = a3;
  }

  return result;
}

- (BOOL)canBeConfiguredForCalendarConstraints:(id)a3
{
  v4 = [(EKCalendarItemEditItem *)self calendarItem];
  if ([v4 isNew])
  {
    goto LABEL_8;
  }

  v5 = [(EKCalendarItemEditItem *)self calendarItem];
  v6 = [v5 calendar];
  v7 = [v6 source];
  v8 = [v7 constraints];
  if (![v8 requiresOutgoingInvitationsInDefaultCalendar])
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v9 = [(EKCalendarItemEditItem *)self calendarItem];
  if (![v9 isSelfOrganizedInvitation])
  {

    goto LABEL_7;
  }

  v10 = [(EKCalendarItemEditItem *)self calendarItem];
  v11 = [v10 hasAttendees];

  if ((v11 & 1) == 0)
  {
LABEL_9:
    WeakRetained = objc_loadWeakRetained(&self->super._store);
    v12 = [WeakRetained readWriteCalendarCountForEntityType:self->_entityType] > 1;

    return v12;
  }

  return 0;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v4 = [(EKCalendarItemEditItem *)self calendarItem];
  v5 = [v4 calendar];

  WeakRetained = objc_loadWeakRetained(&self->super._store);
  v7 = [WeakRetained readWriteCalendarCountForEntityType:self->_entityType];

  if (v7 < 2)
  {
    v8 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    [(EKUIPopupTableViewCell *)v8 setSelectionStyle:0];
    if (self->_entityType)
    {
      v11 = [v5 title];

      if (v11)
      {
        v12 = CUIKDisplayedTitleForCalendar();
      }

      else
      {
        v16 = EventKitUIBundle();
        v12 = [v16 localizedStringForKey:@"Untitled Calendar" value:&stru_1F4EF6790 table:0];
      }

      v14 = [(EKUIPopupTableViewCell *)v8 detailTextLabel];
      [v14 setText:v12];
    }

    else
    {
      v12 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v14 = CalendarTitleWithDotAttributedString(v5, v12);
      v15 = [(EKUIPopupTableViewCell *)v8 detailTextLabel];
      [v15 setAttributedText:v14];
    }
  }

  else
  {
    v8 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    [(EKUIPopupTableViewCell *)v8 setShowSelectedImage:1];
    v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    if (EKUICatalyst())
    {
      v10 = [(EKCalendarItemCalendarEditItem *)self popupMenu:v9];
      [(EKUIPopupTableViewCell *)v8 setPopupMenu:v10];
    }

    else
    {
      v13 = [EKUICalendarMenu placeholderMenuForCalendar:v5 backgroundColor:v9];
      [(EKUIPopupTableViewCell *)v8 setPopupMenu:v13];

      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x3032000000;
      v26[3] = __Block_byref_object_copy__6;
      v26[4] = __Block_byref_object_dispose__6;
      v27 = 0;
      objc_initWeak(&location, self);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __56__EKCalendarItemCalendarEditItem_cellForSubitemAtIndex___block_invoke;
      v21[3] = &unk_1E84401A8;
      objc_copyWeak(&v24, &location);
      v23 = v26;
      v22 = v9;
      [(EKUIPopupTableViewCell *)v8 setPopupMenuProvider:v21];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
      _Block_object_dispose(v26, 8);
    }
  }

  v17 = EventKitUIBundle();
  v18 = [v17 localizedStringForKey:@"Calendar" value:&stru_1F4EF6790 table:0];
  v19 = [(EKUIPopupTableViewCell *)v8 textLabel];
  [v19 setText:v18];

  [(EKUIPopupTableViewCell *)v8 setAccessibilityIdentifier:@"calendar-selection-cell"];

  return v8;
}

void *__56__EKCalendarItemCalendarEditItem_cellForSubitemAtIndex___block_invoke(uint64_t a1)
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

- (id)eligibleCalendars
{
  v2 = MEMORY[0x1E69933B0];
  v3 = [(EKCalendarItemEditItem *)self calendarItem];
  v4 = [v2 eligibleCalendarsForMovingEvent:v3];

  return v4;
}

- (id)popupMenu:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendarItemCalendarEditItem *)self eligibleCalendars];
  objc_initWeak(&location, self);
  v6 = [(EKCalendarItemEditItem *)self calendarItem];
  v7 = [v6 eventStore];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__EKCalendarItemCalendarEditItem_popupMenu___block_invoke;
  v12[3] = &unk_1E84401D0;
  objc_copyWeak(&v13, &location);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__EKCalendarItemCalendarEditItem_popupMenu___block_invoke_2;
  v10[3] = &unk_1E84401F8;
  objc_copyWeak(&v11, &location);
  v8 = [EKUICalendarMenu calendarMenuWithCalendars:v5 eventStore:v7 backgroundColor:v4 setupActionHandler:v12 selectionHandler:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

void __44__EKCalendarItemCalendarEditItem_popupMenu___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained calendarItem];
    v9 = [v8 calendar];
    v10 = [v5 isEqual:v9];

    if (v10)
    {
      [v11 setState:1];
    }
  }
}

void __44__EKCalendarItemCalendarEditItem_popupMenu___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained calendarItem];
    [v5 setCalendar:v6];

    [v4 notifySubitemDidSave:0];
  }
}

@end