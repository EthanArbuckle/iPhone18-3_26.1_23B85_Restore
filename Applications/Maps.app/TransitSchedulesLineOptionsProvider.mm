@interface TransitSchedulesLineOptionsProvider
- (NSArray)identifiers;
- (TransitSchedulesLineOptionsProviderDelegate)delegate;
- (void)configureCell:(id)a3 forIndexPath:(id)a4 withIdentifier:(id)a5;
@end

@implementation TransitSchedulesLineOptionsProvider

- (TransitSchedulesLineOptionsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)configureCell:(id)a3 forIndexPath:(id)a4 withIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (!v13)
    {
      goto LABEL_16;
    }

    objc_initWeak(&location, self);
    if ([v13 isEqualToString:@"LineOptionsSectionCellPinIdentifier"])
    {
      v14 = [(TransitSchedulesLineOptionsProvider *)self delegate];
      v15 = [v14 isPinnedTransitLine];

      v16 = +[NSBundle mainBundle];
      if (v15)
      {
        v17 = [v16 localizedStringForKey:@"[Transit Schedules] Unpin Line" value:@"localized string not found" table:0];
        v18 = &v37;

        v19 = v36;
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v20 = @"pin.slash.fill";
        v21 = @"UnpinLine";
        v22 = sub_1008B0534;
      }

      else
      {
        v17 = [v16 localizedStringForKey:@"[Transit Schedules] Pin line" value:@"localized string not found" table:0];
        v18 = &v35;

        v19 = v34;
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v20 = @"pin.fill";
        v21 = @"PinLine";
        v22 = sub_1008B0590;
      }
    }

    else if ([v13 isEqualToString:@"LineOptionsSectionCellViewOnMapIdentifier"])
    {
      v23 = +[NSBundle mainBundle];
      v17 = [v23 localizedStringForKey:@"[Transit Schedules] View on Map" value:@"localized string not found" table:0];
      v18 = &v33;

      v19 = v32;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v20 = @"map.fill";
      v21 = @"ViewLineOnMap";
      v22 = sub_1008B05EC;
    }

    else if ([v13 isEqualToString:@"LineOptionsSectionCellDirectionsIdentifier"])
    {
      v24 = +[NSBundle mainBundle];
      v17 = [v24 localizedStringForKey:@"[Transit Schedules] Get Directions" value:@"localized string not found" table:0];
      v18 = &v31;

      v19 = v30;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v20 = @"arrow.triangle.turn.up.right.circle.fill";
      v21 = @"GetDirectionsToStation";
      v22 = sub_1008B0648;
    }

    else
    {
      if (![v13 isEqualToString:@"LineOptionsSectionCellLineInfoIdentifier"])
      {
        v17 = 0;
        v21 = 0;
        v25 = 0;
        v20 = 0;
        goto LABEL_15;
      }

      v27 = +[NSBundle mainBundle];
      v17 = [v27 localizedStringForKey:@"[Transit Schedules] Line Info" value:@"localized string not found" table:0];
      v18 = &v29;

      v19 = v28;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v20 = @"info.circle.fill";
      v21 = @"LineInfo";
      v22 = sub_1008B06A4;
    }

    v19[2] = v22;
    v19[3] = &unk_101656BC8;
    objc_copyWeak(v18, &location);
    v25 = objc_retainBlock(v19);
    objc_destroyWeak(v18);
LABEL_15:
    v26 = v8;
    [v26 setTitle:v17 symbolName:v20 action:v25 axIdentifierForAction:v21];

    objc_destroyWeak(&location);
LABEL_16:
  }
}

- (NSArray)identifiers
{
  v2 = +[NSMutableArray array];
  [v2 addObject:@"LineOptionsSectionCellPinIdentifier"];
  v3 = +[MapsOfflineUIHelper sharedHelper];
  v4 = [v3 isUsingOfflineMaps];

  if ((v4 & 1) == 0)
  {
    [v2 addObject:@"LineOptionsSectionCellViewOnMapIdentifier"];
  }

  [v2 addObject:@"LineOptionsSectionCellDirectionsIdentifier"];
  [v2 addObject:@"LineOptionsSectionCellLineInfoIdentifier"];
  v5 = [v2 copy];

  return v5;
}

@end