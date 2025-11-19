@interface EKEventTravelDetailItem
- (BOOL)_canChangeTravelTime;
- (BOOL)editItemViewControllerSave:(id)a3;
- (BOOL)editItemViewControllerShouldShowDetachAlert;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4;
- (id)generatePopupMenu;
@end

@implementation EKEventTravelDetailItem

- (BOOL)_canChangeTravelTime
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
  v4 = [(EKEvent *)self->super._event structuredLocation];
  v5 = [v4 isStructured];

  if (v5)
  {
    v6 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    [(EKUIPopupTableViewCell *)v6 setAccessoryType:[(EKEventTravelDetailItem *)self _canChangeTravelTime]];
    [(EKEvent *)self->super._event travelTime];
    v7 = CUIKDisplayStringForTravelTimeUsingShortFormat();
    v8 = [(EKUIPopupTableViewCell *)v6 detailTextLabel];
    [v8 setText:v7];
  }

  else
  {
    v6 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    v7 = [(EKEventTravelDetailItem *)self generatePopupMenu];
    [(EKUIPopupTableViewCell *)v6 setPopupMenu:v7];
  }

  v9 = EventKitUIBundle();
  v10 = [v9 localizedStringForKey:@"Travel Time" value:&stru_1F4EF6790 table:0];
  v11 = [(EKUIPopupTableViewCell *)v6 textLabel];
  [v11 setText:v10];

  [(EKUIPopupTableViewCell *)v6 setAccessibilityIdentifier:@"event-details-travelt-time-cell"];

  return v6;
}

- (id)generatePopupMenu
{
  v3 = objc_alloc_init(EKUITravelUtilities);
  objc_initWeak(&location, self);
  [(EKEvent *)self->super._event travelTime];
  v5 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__EKEventTravelDetailItem_generatePopupMenu__block_invoke;
  v8[3] = &unk_1E843FD48;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  v6 = [(EKUITravelUtilities *)v3 travelTimePopupMenuForCurrentTravelTime:v8 selectionHandler:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __44__EKEventTravelDetailItem_generatePopupMenu__block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = WeakRetained[2];
    v9 = v5;
    if (a2 <= 0.0)
    {
      [v6 setTravelStartLocation:0];
      [v9[2] setTravelTime:0.0];
    }

    else
    {
      v7 = [v6 travelStartLocation];
      if (v7)
      {
        v8 = [MEMORY[0x1E6992FD8] routeTypeStringForCalLocationRoutingMode:0];
        [v7 setRouting:v8];
      }

      [v9[2] setTravelStartLocation:v7];
      [v9[2] setTravelTime:a2];
    }

    [*(a1 + 32) notifySubitemDidSave:0];
    [*(a1 + 32) editItemViewController:0 didCompleteWithAction:3];
    WeakRetained = v9;
  }
}

- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(EKEventTravelDetailItem *)self _canChangeTravelTime])
  {
    v9 = [[EKEventTravelTimeEditViewController alloc] initWithFrame:self->super._event calendarItem:self->super._store eventStore:x, y, width, height];
    [(EKEvent *)self->super._event travelTime];
    [(EKEventTravelTimeEditViewController *)v9 setSelectedTravelTime:?];
    v10 = [(EKEvent *)self->super._event structuredLocation];
    v11 = [v10 isStructured];

    if (v11)
    {
      [(EKEventTravelTimeEditViewController *)v9 setSelectedRoutingMode:[(EKEvent *)self->super._event travelRoutingMode]];
      v12 = [(EKEvent *)self->super._event travelStartLocation];
      [(EKEventTravelTimeEditViewController *)v9 setOriginStructuredLocation:v12];

      v13 = [(EKEvent *)self->super._event structuredLocation];
      [(EKEventTravelTimeEditViewController *)v9 setDestinationStructuredLocation:v13];

      v14 = [(EKEvent *)self->super._event startDate];
      [(EKEventTravelTimeEditViewController *)v9 setArrivalDate:v14];
    }

    else
    {
      [(EKEventTravelTimeEditViewController *)v9 setSelectedRoutingMode:0];
      [(EKEventTravelTimeEditViewController *)v9 setOriginStructuredLocation:0];
      [(EKEventTravelTimeEditViewController *)v9 setDestinationStructuredLocation:0];
      [(EKEventTravelTimeEditViewController *)v9 setArrivalDate:0];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)editItemViewControllerSave:(id)a3
{
  v4 = a3;
  [v4 selectedTravelTime];
  v6 = v5;
  v7 = [v4 selectedRoutingMode];
  v8 = [v4 originStructuredLocation];

  if (v6 > 0.0)
  {
    v9 = [v8 duplicate];
    v10 = v9;
    if (v7)
    {
      if (!v9)
      {
        v10 = objc_opt_new();
      }

      v11 = MEMORY[0x1E6992FD8];
      v12 = v7;
    }

    else
    {
      if (!v9)
      {
LABEL_10:
        [(EKEvent *)self->super._event setTravelStartLocation:v10];
        [(EKEvent *)self->super._event setTravelTime:v6];

        goto LABEL_11;
      }

      v11 = MEMORY[0x1E6992FD8];
      v12 = 0;
    }

    v13 = [v11 routeTypeStringForCalLocationRoutingMode:v12];
    [v10 setRouting:v13];

    goto LABEL_10;
  }

  [(EKEvent *)self->super._event setTravelStartLocation:0];
  [(EKEvent *)self->super._event setTravelTime:0.0];
LABEL_11:
  [(EKEventDetailItem *)self notifySubitemDidSave:0];
  [(EKEventDetailItem *)self editItemViewController:0 didCompleteWithAction:3];

  return 1;
}

- (BOOL)editItemViewControllerShouldShowDetachAlert
{
  v3 = [(EKEvent *)self->super._event hasChanges];
  if (v3)
  {
    event = self->super._event;

    LOBYTE(v3) = [(EKEvent *)event isOrWasPartOfRecurringSeries];
  }

  return v3;
}

@end