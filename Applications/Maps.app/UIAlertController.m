@interface UIAlertController
+ (id)_maps_alertControllerForTicketedSegments:(id)a3;
+ (id)_maps_confirmationAlertControllerForBlockingTrip:(id)a3 userInterfaceIdiom:(int64_t)a4 completion:(id)a5;
+ (id)_maps_confirmationAlertControllerForBlockingTripInSummary:(id)a3 userInterfaceIdiom:(int64_t)a4 completion:(id)a5;
+ (id)_maps_confirmationAlertControllerForDeletingCollections:(id)a3 userInterfaceIdiom:(int64_t)a4 completion:(id)a5;
+ (id)clusteredVehiclesSelectionAlertControllerForClusteredSegment:(id)a3 completion:(id)a4;
@end

@implementation UIAlertController

+ (id)_maps_confirmationAlertControllerForBlockingTrip:(id)a3 userInterfaceIdiom:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"[Share ETA] Alert's title when blocking a trip" value:@"localized string not found" table:0];
  v11 = [v8 senderName];

  v12 = [NSString stringWithFormat:v10, v11];

  v13 = [UIAlertController alertControllerWithTitle:v12 message:0 preferredStyle:a4 == 5];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"[Share ETA] Block alert's confirm button title" value:@"localized string not found" table:0];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1006167B0;
  v26[3] = &unk_101660728;
  v16 = v7;
  v27 = v16;
  v17 = [UIAlertAction actionWithTitle:v15 style:2 handler:v26];

  [v17 setAccessibilityIdentifier:@"SharedTripBlockAction"];
  [v13 addAction:v17];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"[Share ETA] Block alert's cancel button title" value:@"localized string not found" table:0];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1006167C4;
  v24[3] = &unk_101660728;
  v25 = v16;
  v20 = v16;
  v21 = [UIAlertAction actionWithTitle:v19 style:1 handler:v24];

  [v21 setAccessibilityIdentifier:@"SharedTripCancelAction"];
  [v13 addAction:v21];
  [v13 setPreferredAction:v21];
  v22 = [v13 view];
  [v22 setAccessibilityIdentifier:@"SharedTripDeleteAlert"];

  return v13;
}

+ (id)_maps_confirmationAlertControllerForBlockingTripInSummary:(id)a3 userInterfaceIdiom:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [a3 sharedTrips];
  v10 = [v9 firstObject];

  v11 = [a1 _maps_confirmationAlertControllerForBlockingTrip:v10 userInterfaceIdiom:a4 completion:v8];

  return v11;
}

+ (id)clusteredVehiclesSelectionAlertControllerForClusteredSegment:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Transit_Clustered_Vehicle_Action_Sheet_Cancel" value:@"localized string not found" table:0];
  v10 = [UIAlertAction _actionWithTitle:v9 image:0 style:1 handler:0 shouldDismissHandler:&stru_101624730];

  [v7 addAction:v10];
  v11 = [v5 clusteredRouteVehicleInfoItems];
  v12 = [v11 count];
  v13 = [[NSMutableArray alloc] initWithCapacity:v12];
  v14 = [[NSMutableArray alloc] initWithCapacity:v12];
  v15 = objc_alloc_init(NSMutableArray);
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0x7FFFFFFFFFFFFFFFLL;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10063AD6C;
  v30[3] = &unk_101624780;
  v16 = v13;
  v31 = v16;
  v17 = v14;
  v32 = v17;
  v18 = v15;
  v33 = v18;
  v19 = v5;
  v34 = v19;
  v20 = v6;
  v36 = v20;
  v21 = v7;
  v35 = v21;
  v37 = v38;
  [v11 enumerateObjectsUsingBlock:v30];
  v22 = [UIAlertAction _maps_alertActionsForTransitLinesWithNames:v16 artworks:v17 selectionHandlers:v18];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10063AF78;
  v27[3] = &unk_1016247A8;
  v29 = v38;
  v23 = v21;
  v28 = v23;
  [v22 enumerateObjectsUsingBlock:v27];
  v24 = v28;
  v25 = v23;

  _Block_object_dispose(v38, 8);

  return v25;
}

+ (id)_maps_alertControllerForTicketedSegments:(id)a3
{
  v3 = a3;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:7014 onTarget:606 eventValue:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Transit_Get_Tickets_Action_Sheet_Title" value:@"localized string not found" table:0];
  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Transit_Get_Tickets_Action_Sheet_Cancel" value:@"localized string not found" table:0];
  v10 = [UIAlertAction _actionWithTitle:v9 image:0 style:1 handler:0 shouldDismissHandler:&stru_1016383B8];

  v27 = v10;
  [v7 addAction:v10];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v3;
  v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [v15 ticketingUrl];
        v17 = +[NSCharacterSet URLQueryAllowedCharacterSet];
        v18 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:v17];

        v19 = [NSURL URLWithString:v18];
        v20 = [v15 segmentName];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = &stru_1016631F0;
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100B178B4;
        v29[3] = &unk_1016383E0;
        v30 = v18;
        v31 = v19;
        v23 = v19;
        v24 = v18;
        v25 = [UIAlertAction actionWithTitle:v22 style:0 handler:v29];

        [v7 addAction:v25];
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

  return v7;
}

+ (id)_maps_confirmationAlertControllerForDeletingCollections:(id)a3 userInterfaceIdiom:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v8 count];
  v10 = +[NSBundle mainBundle];
  v11 = v10;
  if (v9 == 1)
  {
    v12 = [v10 localizedStringForKey:@"[Collections] Alert's title when deleting a guide" value:@"localized string not found" table:0];
    v13 = [v8 firstObject];

    v14 = [v13 title];
    v15 = v14;
    v16 = &stru_1016631F0;
    if (v14)
    {
      v16 = v14;
    }

    v17 = [NSString stringWithFormat:v12, v16];

    v18 = 0;
  }

  else
  {
    v19 = [v10 localizedStringForKey:@"[Collections] Alert's title when deleting guides" value:@"localized string not found" table:0];
    v17 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v19, [v8 count]);

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"[Collections] Alert's subtitle when deleting guides" value:@"localized string not found" table:0];
    v20 = [v8 count];

    v18 = [NSString localizedStringWithFormat:v12, v20];
  }

  v21 = [UIAlertController alertControllerWithTitle:v17 message:v18 preferredStyle:a4 == 5];
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"[Collection] Alert's delete button title" value:@"localized string not found" table:0];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100CCE88C;
  v34[3] = &unk_101660728;
  v24 = v7;
  v35 = v24;
  v25 = [UIAlertAction actionWithTitle:v23 style:2 handler:v34];

  [v25 setAccessibilityIdentifier:@"CollectionDeleteAction"];
  [v21 addAction:v25];
  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"[Collection] Alert's cancel button title" value:@"localized string not found" table:0];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100CCE8A0;
  v32[3] = &unk_101660728;
  v33 = v24;
  v28 = v24;
  v29 = [UIAlertAction actionWithTitle:v27 style:1 handler:v32];

  [v29 setAccessibilityIdentifier:@"CollectionCancelAction"];
  [v21 addAction:v29];
  [v21 setPreferredAction:v29];
  v30 = [v21 view];
  [v30 setAccessibilityIdentifier:@"CollectionDeleteAlert"];

  return v21;
}

@end