@interface EKCalendarItemCalendarEditItem
- (BOOL)canBeConfiguredForCalendarConstraints:(id)constraints;
- (EKCalendarItemCalendarEditItem)initWithEntityType:(unint64_t)type;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)eligibleCalendars;
- (id)popupMenu:(id)menu;
@end

@implementation EKCalendarItemCalendarEditItem

- (EKCalendarItemCalendarEditItem)initWithEntityType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = EKCalendarItemCalendarEditItem;
  result = [(EKCalendarItemCalendarEditItem *)&v5 init];
  if (result)
  {
    result->_entityType = type;
  }

  return result;
}

- (BOOL)canBeConfiguredForCalendarConstraints:(id)constraints
{
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  if ([calendarItem isNew])
  {
    goto LABEL_8;
  }

  calendarItem2 = [(EKCalendarItemEditItem *)self calendarItem];
  calendar = [calendarItem2 calendar];
  source = [calendar source];
  constraints = [source constraints];
  if (![constraints requiresOutgoingInvitationsInDefaultCalendar])
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  calendarItem3 = [(EKCalendarItemEditItem *)self calendarItem];
  if (![calendarItem3 isSelfOrganizedInvitation])
  {

    goto LABEL_7;
  }

  calendarItem4 = [(EKCalendarItemEditItem *)self calendarItem];
  hasAttendees = [calendarItem4 hasAttendees];

  if ((hasAttendees & 1) == 0)
  {
LABEL_9:
    WeakRetained = objc_loadWeakRetained(&self->super._store);
    v12 = [WeakRetained readWriteCalendarCountForEntityType:self->_entityType] > 1;

    return v12;
  }

  return 0;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  calendar = [calendarItem calendar];

  WeakRetained = objc_loadWeakRetained(&self->super._store);
  v7 = [WeakRetained readWriteCalendarCountForEntityType:self->_entityType];

  if (v7 < 2)
  {
    v8 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    [(EKUIPopupTableViewCell *)v8 setSelectionStyle:0];
    if (self->_entityType)
    {
      title = [calendar title];

      if (title)
      {
        systemBackgroundColor = CUIKDisplayedTitleForCalendar();
      }

      else
      {
        v16 = EventKitUIBundle();
        systemBackgroundColor = [v16 localizedStringForKey:@"Untitled Calendar" value:&stru_1F4EF6790 table:0];
      }

      detailTextLabel = [(EKUIPopupTableViewCell *)v8 detailTextLabel];
      [detailTextLabel setText:systemBackgroundColor];
    }

    else
    {
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      detailTextLabel = CalendarTitleWithDotAttributedString(calendar, systemBackgroundColor);
      detailTextLabel2 = [(EKUIPopupTableViewCell *)v8 detailTextLabel];
      [detailTextLabel2 setAttributedText:detailTextLabel];
    }
  }

  else
  {
    v8 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    [(EKUIPopupTableViewCell *)v8 setShowSelectedImage:1];
    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    if (EKUICatalyst())
    {
      v10 = [(EKCalendarItemCalendarEditItem *)self popupMenu:systemBackgroundColor2];
      [(EKUIPopupTableViewCell *)v8 setPopupMenu:v10];
    }

    else
    {
      v13 = [EKUICalendarMenu placeholderMenuForCalendar:calendar backgroundColor:systemBackgroundColor2];
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
      v22 = systemBackgroundColor2;
      [(EKUIPopupTableViewCell *)v8 setPopupMenuProvider:v21];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
      _Block_object_dispose(v26, 8);
    }
  }

  v17 = EventKitUIBundle();
  v18 = [v17 localizedStringForKey:@"Calendar" value:&stru_1F4EF6790 table:0];
  textLabel = [(EKUIPopupTableViewCell *)v8 textLabel];
  [textLabel setText:v18];

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
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  v4 = [v2 eligibleCalendarsForMovingEvent:calendarItem];

  return v4;
}

- (id)popupMenu:(id)menu
{
  menuCopy = menu;
  eligibleCalendars = [(EKCalendarItemCalendarEditItem *)self eligibleCalendars];
  objc_initWeak(&location, self);
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  eventStore = [calendarItem eventStore];
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
  v8 = [EKUICalendarMenu calendarMenuWithCalendars:eligibleCalendars eventStore:eventStore backgroundColor:menuCopy setupActionHandler:v12 selectionHandler:v10];

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