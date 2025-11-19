@interface MapsDragDestinationHandler
- (BOOL)_handleString:(id)a3 nearCoordinate:(CLLocationCoordinate2D)a4;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)handleCalendarEvents:(id)a3;
- (BOOL)handleMapItems:(id)a3;
- (BOOL)handleStrings:(id)a3;
- (BOOL)handleURLs:(id)a3;
- (BOOL)handleVCards:(id)a3;
- (MapsDragDestinationHandler)init;
- (MapsDragDestinationHandlerDelegate)delegate;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)beginDrop:(id)a3;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)endDrop:(id)a3;
- (void)performDrop:(id)a3 finishingAtLocation:(CGPoint)a4 inView:(id)a5;
@end

@implementation MapsDragDestinationHandler

- (MapsDragDestinationHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_handleString:(id)a3 nearCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3;
  v8 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  UInteger = GEOConfigGetUInteger();
  v10 = [v7 stringByTrimmingCharactersInSet:v8];

  if ([v10 length] > UInteger)
  {
    v11 = [v10 rangeOfComposedCharacterSequencesForRange:{0, UInteger}];
    v13 = [v10 substringWithRange:{v11, v12}];

    v10 = v13;
  }

  v14 = [v10 length];
  if (v14)
  {
    v15 = [(MapsDragDestinationHandler *)self delegate];
    [v15 mapsDragDestinationHandler:self didReceiveString:v10 nearCoordinate:{latitude, longitude}];
  }

  return v14 != 0;
}

- (BOOL)handleStrings:(id)a3
{
  v4 = a3;
  v31 = 0;
  v5 = DDScannerCreate();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (!v6)
  {
    v21 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = *v28;
  longitude = kCLLocationCoordinate2DInvalid.longitude;
  v23 = *v28;
  v24 = v5;
LABEL_3:
  v10 = 0;
  v25 = v7;
  while (1)
  {
    if (*v28 != v8)
    {
      objc_enumerationMutation(obj);
    }

    v11 = *(*(&v27 + 1) + 8 * v10);
    if (!v5 || !DDScannerScanString())
    {
      goto LABEL_17;
    }

    v12 = DDScannerCopyResultsWithOptions();
    Count = CFArrayGetCount(v12);
    if (Count >= 1)
    {
      break;
    }

LABEL_16:
    CFRelease(v12);
    v8 = v23;
    v5 = v24;
    v7 = v25;
LABEL_17:
    if ([(MapsDragDestinationHandler *)self _handleString:v11 nearCoordinate:kCLLocationCoordinate2DInvalid.latitude, longitude])
    {
      goto LABEL_23;
    }

    if (++v10 == v7)
    {
      v7 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      v21 = 0;
      if (!v7)
      {
        goto LABEL_24;
      }

      goto LABEL_3;
    }
  }

  v14 = Count;
  v15 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v12, v15);
    v16 = DDResultGetMatchedString();
    if (DDResultGetCategory() != 1 || ![v16 length])
    {
      goto LABEL_15;
    }

    v17 = [NSURL URLWithString:v16];
    v18 = v17;
    if (v17)
    {
      v32 = v17;
      v19 = [NSArray arrayWithObjects:&v32 count:1];
      v20 = [(MapsDragDestinationHandler *)self handleURLs:v19];

      if (v20)
      {
        break;
      }
    }

LABEL_15:
    if (v14 == ++v15)
    {
      goto LABEL_16;
    }
  }

  CFRelease(v12);
LABEL_23:
  v21 = 1;
LABEL_24:

  return v21;
}

- (BOOL)handleURLs:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(MapsDragDestinationHandler *)self delegate];
        LOBYTE(v9) = [v10 mapsDragDestinationHandler:self didReceiveURL:v9];

        if (v9)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)handleCalendarEvents:(id)a3
{
  v4 = a3;
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_1008038B8;
  v61[3] = &unk_10162AF50;
  v61[4] = self;
  v5 = objc_retainBlock(v61);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v6 = v4;
  v41 = [v6 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v41)
  {
    v39 = self;
    v7 = *v58;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
    v46 = v5;
    v44 = v6;
    v40 = *v58;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v58 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v57 + 1) + 8 * v9);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v42 = v10;
        v43 = v9;
        v11 = [v10 calendar];
        v12 = [v11 components];

        obj = v12;
        v48 = [v12 countByEnumeratingWithState:&v53 objects:v64 count:16];
        if (v48)
        {
          v13 = *v54;
          v45 = *v54;
          do
          {
            v14 = 0;
            do
            {
              if (*v54 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v53 + 1) + 8 * v14);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = v15;
                v17 = [v16 x_apple_activity];
                v18 = [v17 firstObject];

                if (v18)
                {
                  v19 = [v18 value];
                  if (v19 && ([_MKURLParser isValidMapURL:v19]& 1) != 0)
                  {
                    v63 = v19;
                    v37 = [NSArray arrayWithObjects:&v63 count:1];
                    [(MapsDragDestinationHandler *)v39 handleURLs:v37];
                    goto LABEL_46;
                  }
                }

                v51 = 0u;
                v52 = 0u;
                v49 = 0u;
                v50 = 0u;
                v20 = [v16 components];
                v21 = [v20 countByEnumeratingWithState:&v49 objects:v62 count:16];
                if (v21)
                {
                  v22 = v21;
                  v23 = *v50;
LABEL_18:
                  v24 = 0;
                  while (1)
                  {
                    if (*v50 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = *(*(&v49 + 1) + 8 * v24);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v26 = [v25 x_apple_structured_location];
                      if (v26)
                      {
                        break;
                      }
                    }

                    if (v22 == ++v24)
                    {
                      v22 = [v20 countByEnumeratingWithState:&v49 objects:v62 count:16];
                      if (v22)
                      {
                        goto LABEL_18;
                      }

                      goto LABEL_25;
                    }
                  }

                  v19 = v26;

                  v5 = v46;
                  if (v46[2](v46, v19))
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
LABEL_25:

                  v27 = [v16 summary];
                  v19 = [v27 length];

                  if (v19)
                  {
                    v19 = [(MapsDragDestinationHandler *)v39 delegate];
                    v37 = [v16 summary];
                    [v19 mapsDragDestinationHandler:v39 didReceiveString:v37 nearCoordinate:{kCLLocationCoordinate2DInvalid.latitude, longitude}];
                    v5 = v46;
                    goto LABEL_46;
                  }

                  v5 = v46;
                }

                v13 = v45;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_34;
                }

                v16 = v15;
                v28 = [v16 x_apple_structured_location];
                if (v28)
                {
                  v18 = v28;
                  if ((v5[2])(v5, v28))
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  v29 = [v16 location];
                  v30 = [v29 length];

                  if (v30)
                  {
                    v19 = [(MapsDragDestinationHandler *)v39 delegate];
                    v37 = [v16 location];
                    [v19 mapsDragDestinationHandler:v39 didReceiveString:v37 nearCoordinate:{kCLLocationCoordinate2DInvalid.latitude, longitude}];
                    v18 = 0;
LABEL_46:

LABEL_47:
LABEL_48:

                    v36 = 1;
                    v6 = v44;
                    goto LABEL_49;
                  }

                  v18 = 0;
                }
              }

LABEL_34:
              v14 = v14 + 1;
            }

            while (v14 != v48);
            v31 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
            v48 = v31;
          }

          while (v31);
        }

        v32 = [v42 data];
        v33 = [NSString alloc];
        v34 = [v42 data];
        v35 = [v33 initWithData:v34 encoding:4];
        NSLog(@"No calendar data was found in this .ics data:\n%@\n%@", v32, v35);

        v6 = v44;
        v9 = v43 + 1;
        v7 = v40;
      }

      while ((v43 + 1) != v41);
      v36 = 0;
      v41 = [v44 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (!v41)
      {
        goto LABEL_49;
      }
    }
  }

  v36 = 0;
LABEL_49:

  return v36;
}

- (BOOL)handleVCards:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) contacts];
        v10 = [v9 firstObject];

        if (v10)
        {
          v12 = [(MapsDragDestinationHandler *)self delegate];
          v11 = [v12 mapsDragDestinationHandler:self didReceiveVCard:v10];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)handleMapItems:(id)a3
{
  v4 = [a3 firstObject];
  if (v4)
  {
    v5 = [(MapsDragDestinationHandler *)self delegate];
    [v5 mapsDragDestinationHandler:self didReceiveMapItem:v4];
  }

  return v4 != 0;
}

- (void)endDrop:(id)a3
{
  if (!self->_dropConcluded)
  {
    analyticsGroup = self->_analyticsGroup;
    if (analyticsGroup)
    {
      dispatch_group_notify(analyticsGroup, &_dispatch_main_q, &stru_10162AF28);
    }
  }

  self->_dropLocation = CGPointZero;
  self->_dropConcluded = 0;
  v5 = self->_analyticsGroup;
  self->_analyticsGroup = 0;
}

- (void)performDrop:(id)a3 finishingAtLocation:(CGPoint)a4 inView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  analyticsGroup = self->_analyticsGroup;
  if (analyticsGroup)
  {
    self->_dropLocation.x = x;
    self->_dropLocation.y = y;
    self->_dropConcluded = 1;
    v12 = analyticsGroup;
    v71[0] = 0;
    v71[1] = v71;
    v71[2] = 0x3032000000;
    v71[3] = sub_1008043D0;
    v71[4] = sub_1008043E0;
    v72 = 0;
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x3032000000;
    v69[3] = sub_1008043D0;
    v69[4] = sub_1008043E0;
    v70 = 0;
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v68 = 0;
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x3032000000;
    v65[3] = sub_1008043D0;
    v65[4] = sub_1008043E0;
    v66 = 0;
    v13 = dispatch_group_create();
    if ([v9 canLoadObjectsOfClass:objc_opt_class()])
    {
      dispatch_group_enter(v13);
      dispatch_group_enter(v12);
      v14 = objc_opt_class();
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_1008043E8;
      v59[3] = &unk_10162AF08;
      v62 = v67;
      v59[4] = self;
      v63 = v71;
      v64 = v69;
      v60 = v13;
      v61 = v12;
      v15 = [v9 loadObjectsOfClass:v14 completion:v59];
    }

    v16 = dispatch_group_create();
    if ([v9 canLoadObjectsOfClass:objc_opt_class()])
    {
      dispatch_group_enter(v16);
      dispatch_group_enter(v12);
      v17 = objc_opt_class();
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_1008044C0;
      v51[3] = &unk_10162AEB8;
      v52 = v13;
      v53 = self;
      v56 = v67;
      v57 = v69;
      v58 = v65;
      v54 = v16;
      v55 = v12;
      v18 = [v9 loadObjectsOfClass:v17 completion:v51];
    }

    v19 = dispatch_group_create();
    if ([v9 canLoadObjectsOfClass:objc_opt_class()])
    {
      dispatch_group_enter(v19);
      dispatch_group_enter(v12);
      v20 = objc_opt_class();
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1008045A4;
      v43[3] = &unk_10162AEB8;
      v44 = v16;
      v45 = self;
      v48 = v67;
      v49 = v69;
      v50 = v65;
      v46 = v19;
      v47 = v12;
      v21 = [v9 loadObjectsOfClass:v20 completion:v43];
    }

    v22 = dispatch_group_create();
    if ([v9 canLoadObjectsOfClass:objc_opt_class()])
    {
      dispatch_group_enter(v22);
      dispatch_group_enter(v12);
      v23 = objc_opt_class();
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100804688;
      v35[3] = &unk_10162AEB8;
      v36 = v19;
      v37 = self;
      v40 = v67;
      v41 = v69;
      v42 = v65;
      v38 = v22;
      v39 = v12;
      v24 = [v9 loadObjectsOfClass:v23 completion:v35];
    }

    if ([v9 canLoadObjectsOfClass:objc_opt_class()])
    {
      dispatch_group_enter(v12);
      v25 = objc_opt_class();
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10080476C;
      v28[3] = &unk_10162AF08;
      v32 = v67;
      v33 = v65;
      v29 = v22;
      v30 = self;
      v34 = v69;
      v31 = v12;
      v26 = [v9 loadObjectsOfClass:v25 completion:v28];
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10080483C;
    v27[3] = &unk_1016597A0;
    v27[4] = v65;
    v27[5] = v67;
    v27[6] = v69;
    v27[7] = v71;
    dispatch_group_notify(v12, &_dispatch_main_q, v27);

    _Block_object_dispose(v65, 8);
    _Block_object_dispose(v67, 8);
    _Block_object_dispose(v69, 8);

    _Block_object_dispose(v71, 8);
  }
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 view];
  [v6 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [v7 view];

  [(MapsDragDestinationHandler *)self performDrop:v6 finishingAtLocation:v13 inView:v10, v12];
}

- (void)beginDrop:(id)a3
{
  v4 = dispatch_group_create();
  analyticsGroup = self->_analyticsGroup;
  self->_analyticsGroup = v4;

  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:17004 onTarget:0 eventValue:0 placeActionDetails:0];
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v4 = [UIApplication sharedMapsDelegate:a3];
  v5 = [v4 chromeViewController];
  v6 = [v5 topIOSBasedContext];
  v7 = [v4 appCoordinator];
  v8 = [v7 baseModeController];
  v9 = v6 == v8;

  v10 = [[UIDropProposal alloc] initWithDropOperation:2 * v9];

  return v10;
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[UIApplication sharedMapsDelegate];
  v9 = [v8 chromeViewController];
  v10 = [v9 topIOSBasedContext];
  v11 = [v8 appCoordinator];
  v12 = [v11 baseModeController];

  if (v10 == v12)
  {
    v14 = [v7 localDragSession];

    v15 = [v7 localDragSession];
    v16 = [v15 localContext];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
      if (v17)
      {
        v23 = [v6 view];
        v18 = [v23 window];
        v19 = [v18 windowScene];
        v20 = [v17 windowScene];
        v21 = v19 != v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    if ([(MapsDragDestinationHandler *)self allowsSameSceneDrops]|| !v14 || v21)
    {
      v13 = [v7 hasItemsConformingToTypeIdentifiers:self->_validDropTypes];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (MapsDragDestinationHandler)init
{
  v13.receiver = self;
  v13.super_class = MapsDragDestinationHandler;
  v2 = [(MapsDragDestinationHandler *)&v13 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    v4 = +[MKMapItem readableTypeIdentifiersForItemProvider];
    [v3 addObjectsFromArray:v4];

    v5 = +[MapsDropVCardReader readableTypeIdentifiersForItemProvider];
    [v3 addObjectsFromArray:v5];

    v6 = +[MapsDropCalendarEventReader readableTypeIdentifiersForItemProvider];
    [v3 addObjectsFromArray:v6];

    v7 = +[NSURL readableTypeIdentifiersForItemProvider];
    [v3 addObjectsFromArray:v7];

    v8 = +[NSString readableTypeIdentifiersForItemProvider];
    [v3 addObjectsFromArray:v8];

    v9 = [UTTypeVCard identifier];
    [v3 addObject:v9];

    v10 = [v3 copy];
    validDropTypes = v2->_validDropTypes;
    v2->_validDropTypes = v10;
  }

  return v2;
}

@end