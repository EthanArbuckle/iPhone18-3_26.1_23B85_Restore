@interface EKEventTravelTimeEditItem
- (BOOL)editItemViewControllerSave:(id)a3;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4;
- (id)generatePopupMenu;
- (void)_updateHiddenState;
@end

@implementation EKEventTravelTimeEditItem

- (void)_updateHiddenState
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._calendarItem);
  v3 = [WeakRetained allowsTravelTimeModifications];
  self->_isHidden = v3 ^ 1;
  if ((v3 & 1) == 0)
  {
    v4 = [(EKEventEditItem *)self event];
    v5 = [v4 travelStartLocation];
    if (v5)
    {
    }

    else
    {
      v6 = [(EKEventEditItem *)self event];
      [v6 travelTime];
      v8 = v7;

      if (v8 <= 0.0)
      {
        goto LABEL_6;
      }
    }

    v9 = [(EKEventEditItem *)self event];
    [v9 setTravelStartLocation:0];

    v10 = [(EKEventEditItem *)self event];
    [v10 setTravelTime:0.0];

    [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  }

LABEL_6:
}

- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [EKEventTravelTimeEditViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->super.super._calendarItem);
  v11 = objc_loadWeakRetained(&self->super.super._store);
  v12 = [(EKEventTravelTimeEditViewController *)v9 initWithFrame:WeakRetained calendarItem:v11 eventStore:x, y, width, height];

  v13 = [(EKEventEditItem *)self event];
  [v13 travelTime];
  [(EKEventTravelTimeEditViewController *)v12 setSelectedTravelTime:?];

  v14 = [(EKEventEditItem *)self event];
  v15 = [v14 structuredLocation];
  v16 = [v15 isStructured];

  if (v16)
  {
    v17 = [(EKEventEditItem *)self event];
    -[EKEventTravelTimeEditViewController setSelectedRoutingMode:](v12, "setSelectedRoutingMode:", [v17 travelRoutingMode]);

    v18 = [(EKEventEditItem *)self event];
    v19 = [v18 travelStartLocation];
    [(EKEventTravelTimeEditViewController *)v12 setOriginStructuredLocation:v19];

    v20 = [(EKEventEditItem *)self event];
    v21 = [v20 structuredLocation];
    [(EKEventTravelTimeEditViewController *)v12 setDestinationStructuredLocation:v21];

    v22 = [(EKEventEditItem *)self event];
    v23 = [v22 startDate];
    [(EKEventTravelTimeEditViewController *)v12 setArrivalDate:v23];
  }

  else
  {
    [(EKEventTravelTimeEditViewController *)v12 setSelectedRoutingMode:0];
    [(EKEventTravelTimeEditViewController *)v12 setOriginStructuredLocation:0];
    [(EKEventTravelTimeEditViewController *)v12 setDestinationStructuredLocation:0];
    [(EKEventTravelTimeEditViewController *)v12 setArrivalDate:0];
  }

  return v12;
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
    v9 = [v8 copy];
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
        v15 = [(EKEventEditItem *)self event];
        [v15 setTravelStartLocation:v10];

        v16 = [(EKEventEditItem *)self event];
        [v16 setTravelTime:v6];

        goto LABEL_11;
      }

      v11 = MEMORY[0x1E6992FD8];
      v12 = 0;
    }

    v14 = [v11 routeTypeStringForCalLocationRoutingMode:v12];
    [v10 setRouting:v14];

    goto LABEL_10;
  }

  v13 = [(EKEventEditItem *)self event];
  [v13 setTravelStartLocation:0];

  v10 = [(EKEventEditItem *)self event];
  [v10 setTravelTime:0.0];
LABEL_11:

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  return 1;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v4 = [(EKEventEditItem *)self event];
  v5 = [v4 structuredLocation];
  v6 = [v5 isStructured];

  if (v6)
  {
    v7 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    [(EKUIPopupTableViewCell *)v7 setAccessoryType:1];
    v8 = [(EKEventEditItem *)self event];
    [v8 travelTime];
    v9 = CUIKDisplayStringForTravelTimeUsingShortFormat();
    v10 = [(EKUIPopupTableViewCell *)v7 detailTextLabel];
    [v10 setText:v9];
  }

  else
  {
    v7 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    v8 = [(EKEventTravelTimeEditItem *)self generatePopupMenu];
    [(EKUIPopupTableViewCell *)v7 setPopupMenu:v8];
  }

  v11 = EventKitUIBundle();
  v12 = [v11 localizedStringForKey:@"Travel Time" value:&stru_1F4EF6790 table:0];
  v13 = [(EKUIPopupTableViewCell *)v7 textLabel];
  [v13 setText:v12];

  [(EKUIPopupTableViewCell *)v7 setAccessibilityIdentifier:@"travel-time-cell"];

  return v7;
}

- (id)generatePopupMenu
{
  v3 = objc_alloc_init(EKUITravelUtilities);
  objc_initWeak(&location, self);
  v4 = [(EKEventEditItem *)self event];
  [v4 travelTime];
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