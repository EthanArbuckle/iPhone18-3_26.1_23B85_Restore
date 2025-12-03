@interface EKEventTravelTimeEditItem
- (BOOL)editItemViewControllerSave:(id)save;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index;
- (id)generatePopupMenu;
- (void)_updateHiddenState;
@end

@implementation EKEventTravelTimeEditItem

- (void)_updateHiddenState
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._calendarItem);
  allowsTravelTimeModifications = [WeakRetained allowsTravelTimeModifications];
  self->_isHidden = allowsTravelTimeModifications ^ 1;
  if ((allowsTravelTimeModifications & 1) == 0)
  {
    event = [(EKEventEditItem *)self event];
    travelStartLocation = [event travelStartLocation];
    if (travelStartLocation)
    {
    }

    else
    {
      event2 = [(EKEventEditItem *)self event];
      [event2 travelTime];
      v8 = v7;

      if (v8 <= 0.0)
      {
        goto LABEL_6;
      }
    }

    event3 = [(EKEventEditItem *)self event];
    [event3 setTravelStartLocation:0];

    event4 = [(EKEventEditItem *)self event];
    [event4 setTravelTime:0.0];

    [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  }

LABEL_6:
}

- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = [EKEventTravelTimeEditViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->super.super._calendarItem);
  v11 = objc_loadWeakRetained(&self->super.super._store);
  height = [(EKEventTravelTimeEditViewController *)v9 initWithFrame:WeakRetained calendarItem:v11 eventStore:x, y, width, height];

  event = [(EKEventEditItem *)self event];
  [event travelTime];
  [(EKEventTravelTimeEditViewController *)height setSelectedTravelTime:?];

  event2 = [(EKEventEditItem *)self event];
  structuredLocation = [event2 structuredLocation];
  isStructured = [structuredLocation isStructured];

  if (isStructured)
  {
    event3 = [(EKEventEditItem *)self event];
    -[EKEventTravelTimeEditViewController setSelectedRoutingMode:](height, "setSelectedRoutingMode:", [event3 travelRoutingMode]);

    event4 = [(EKEventEditItem *)self event];
    travelStartLocation = [event4 travelStartLocation];
    [(EKEventTravelTimeEditViewController *)height setOriginStructuredLocation:travelStartLocation];

    event5 = [(EKEventEditItem *)self event];
    structuredLocation2 = [event5 structuredLocation];
    [(EKEventTravelTimeEditViewController *)height setDestinationStructuredLocation:structuredLocation2];

    event6 = [(EKEventEditItem *)self event];
    startDate = [event6 startDate];
    [(EKEventTravelTimeEditViewController *)height setArrivalDate:startDate];
  }

  else
  {
    [(EKEventTravelTimeEditViewController *)height setSelectedRoutingMode:0];
    [(EKEventTravelTimeEditViewController *)height setOriginStructuredLocation:0];
    [(EKEventTravelTimeEditViewController *)height setDestinationStructuredLocation:0];
    [(EKEventTravelTimeEditViewController *)height setArrivalDate:0];
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
    v9 = [originStructuredLocation copy];
    event4 = v9;
    if (selectedRoutingMode)
    {
      if (!v9)
      {
        event4 = objc_opt_new();
      }

      v11 = MEMORY[0x1E6992FD8];
      v12 = selectedRoutingMode;
    }

    else
    {
      if (!v9)
      {
LABEL_10:
        event = [(EKEventEditItem *)self event];
        [event setTravelStartLocation:event4];

        event2 = [(EKEventEditItem *)self event];
        [event2 setTravelTime:v6];

        goto LABEL_11;
      }

      v11 = MEMORY[0x1E6992FD8];
      v12 = 0;
    }

    v14 = [v11 routeTypeStringForCalLocationRoutingMode:v12];
    [event4 setRouting:v14];

    goto LABEL_10;
  }

  event3 = [(EKEventEditItem *)self event];
  [event3 setTravelStartLocation:0];

  event4 = [(EKEventEditItem *)self event];
  [event4 setTravelTime:0.0];
LABEL_11:

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  return 1;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  event = [(EKEventEditItem *)self event];
  structuredLocation = [event structuredLocation];
  isStructured = [structuredLocation isStructured];

  if (isStructured)
  {
    v7 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    [(EKUIPopupTableViewCell *)v7 setAccessoryType:1];
    event2 = [(EKEventEditItem *)self event];
    [event2 travelTime];
    v9 = CUIKDisplayStringForTravelTimeUsingShortFormat();
    detailTextLabel = [(EKUIPopupTableViewCell *)v7 detailTextLabel];
    [detailTextLabel setText:v9];
  }

  else
  {
    v7 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    event2 = [(EKEventTravelTimeEditItem *)self generatePopupMenu];
    [(EKUIPopupTableViewCell *)v7 setPopupMenu:event2];
  }

  v11 = EventKitUIBundle();
  v12 = [v11 localizedStringForKey:@"Travel Time" value:&stru_1F4EF6790 table:0];
  textLabel = [(EKUIPopupTableViewCell *)v7 textLabel];
  [textLabel setText:v12];

  [(EKUIPopupTableViewCell *)v7 setAccessibilityIdentifier:@"travel-time-cell"];

  return v7;
}

- (id)generatePopupMenu
{
  v3 = objc_alloc_init(EKUITravelUtilities);
  objc_initWeak(&location, self);
  event = [(EKEventEditItem *)self event];
  [event travelTime];
  v6 = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__EKEventTravelTimeEditItem_generatePopupMenu__block_invoke;
  v9[3] = &unk_1E8442540;
  objc_copyWeak(&v10, &location);
  v7 = [(EKUITravelUtilities *)v3 travelTimePopupMenuForCurrentTravelTime:v9 selectionHandler:v6];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

void __46__EKEventTravelTimeEditItem_generatePopupMenu__block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v4 = [WeakRetained event];
    v5 = v4;
    if (a2 <= 0.0)
    {
      [v4 setTravelStartLocation:0];

      v6 = [v10 event];
      [v6 setTravelTime:0.0];
    }

    else
    {
      v6 = [v4 travelStartLocation];

      if (v6)
      {
        v7 = [MEMORY[0x1E6992FD8] routeTypeStringForCalLocationRoutingMode:0];
        [v6 setRouting:v7];
      }

      v8 = [v10 event];
      [v8 setTravelStartLocation:v6];

      v9 = [v10 event];
      [v9 setTravelTime:a2];
    }

    [v10 notifySubitemDidSave:0];
    WeakRetained = v10;
  }
}

@end