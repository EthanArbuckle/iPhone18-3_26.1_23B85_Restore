@interface EKEventTravelDetailItem
- (BOOL)_canChangeTravelTime;
- (BOOL)editItemViewControllerSave:(id)save;
- (BOOL)editItemViewControllerShouldShowDetachAlert;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index;
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

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  structuredLocation = [(EKEvent *)self->super._event structuredLocation];
  isStructured = [structuredLocation isStructured];

  if (isStructured)
  {
    v6 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    [(EKUIPopupTableViewCell *)v6 setAccessoryType:[(EKEventTravelDetailItem *)self _canChangeTravelTime]];
    [(EKEvent *)self->super._event travelTime];
    generatePopupMenu = CUIKDisplayStringForTravelTimeUsingShortFormat();
    detailTextLabel = [(EKUIPopupTableViewCell *)v6 detailTextLabel];
    [detailTextLabel setText:generatePopupMenu];
  }

  else
  {
    v6 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    generatePopupMenu = [(EKEventTravelDetailItem *)self generatePopupMenu];
    [(EKUIPopupTableViewCell *)v6 setPopupMenu:generatePopupMenu];
  }

  v9 = EventKitUIBundle();
  v10 = [v9 localizedStringForKey:@"Travel Time" value:&stru_1F4EF6790 table:0];
  textLabel = [(EKUIPopupTableViewCell *)v6 textLabel];
  [textLabel setText:v10];

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

- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(EKEventTravelDetailItem *)self _canChangeTravelTime])
  {
    height = [[EKEventTravelTimeEditViewController alloc] initWithFrame:self->super._event calendarItem:self->super._store eventStore:x, y, width, height];
    [(EKEvent *)self->super._event travelTime];
    [(EKEventTravelTimeEditViewController *)height setSelectedTravelTime:?];
    structuredLocation = [(EKEvent *)self->super._event structuredLocation];
    isStructured = [structuredLocation isStructured];

    if (isStructured)
    {
      [(EKEventTravelTimeEditViewController *)height setSelectedRoutingMode:[(EKEvent *)self->super._event travelRoutingMode]];
      travelStartLocation = [(EKEvent *)self->super._event travelStartLocation];
      [(EKEventTravelTimeEditViewController *)height setOriginStructuredLocation:travelStartLocation];

      structuredLocation2 = [(EKEvent *)self->super._event structuredLocation];
      [(EKEventTravelTimeEditViewController *)height setDestinationStructuredLocation:structuredLocation2];

      startDate = [(EKEvent *)self->super._event startDate];
      [(EKEventTravelTimeEditViewController *)height setArrivalDate:startDate];
    }

    else
    {
      [(EKEventTravelTimeEditViewController *)height setSelectedRoutingMode:0];
      [(EKEventTravelTimeEditViewController *)height setOriginStructuredLocation:0];
      [(EKEventTravelTimeEditViewController *)height setDestinationStructuredLocation:0];
      [(EKEventTravelTimeEditViewController *)height setArrivalDate:0];
    }
  }

  else
  {
    height = 0;
  }

  return height;
}

- (BOOL)editItemViewControllerSave:(id)save
{
  saveCopy = save;
  [saveCopy selectedTravelTime];
  v6 = v5;
  selectedRoutingMode = [saveCopy selectedRoutingMode];
  originStructuredLocation = [saveCopy originStructuredLocation];

  if (v6 > 0.0)
  {
    duplicate = [originStructuredLocation duplicate];
    v10 = duplicate;
    if (selectedRoutingMode)
    {
      if (!duplicate)
      {
        v10 = objc_opt_new();
      }

      v11 = MEMORY[0x1E6992FD8];
      v12 = selectedRoutingMode;
    }

    else
    {
      if (!duplicate)
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
  hasChanges = [(EKEvent *)self->super._event hasChanges];
  if (hasChanges)
  {
    event = self->super._event;

    LOBYTE(hasChanges) = [(EKEvent *)event isOrWasPartOfRecurringSeries];
  }

  return hasChanges;
}

@end