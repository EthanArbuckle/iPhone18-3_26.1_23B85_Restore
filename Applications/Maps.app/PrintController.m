@interface PrintController
- (BOOL)_isInBackground;
- (BOOL)_searchResults:(id)a3 areFarAwayFromView:(id)a4;
- (PrintController)initWithMapView:(id)a3 delegate:(id)a4;
- (PrintControllerDelegate)delegate;
- (id)_printControllerForRoute:(id)a3 searchString:(id)a4;
- (id)_printControllerForSearchString:(id)a3 searchResults:(id)a4 title:(id)a5 subTitle:(id)a6;
- (id)_printInfoForSearchString:(id)a3 route:(id)a4 title:(id)a5;
- (id)_rendererForRoute:(id)a3;
- (id)_rendererForSearchResults:(id)a3 title:(id)a4 subTitle:(id)a5;
- (id)mapRegion:(id)a3 insetLat:(double)a4 insetLng:(double)a5;
- (void)_endBackgroundTask;
- (void)_print:(id)a3;
- (void)orientationDidChange;
- (void)orientationWillChange;
- (void)printInteractionControllerDidPresentPrinterOptions:(id)a3;
- (void)printInteractionControllerWillStartJob:(id)a3;
- (void)printRoute:(id)a3 searchString:(id)a4;
- (void)printSearchString:(id)a3 searchResults:(id)a4 title:(id)a5 subTitle:(id)a6;
@end

@implementation PrintController

- (PrintControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)printInteractionControllerWillStartJob:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10072B338;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  self->_printTaskBackgroundIdentifier = [v4 beginBackgroundTaskWithExpirationHandler:v5];
}

- (void)printInteractionControllerDidPresentPrinterOptions:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained printControllerDidPresentPrinterOptions:self];
}

- (id)_printInfoForSearchString:(id)a3 route:(id)a4 title:(id)a5
{
  v6 = a3;
  v7 = +[UIPrintInfo printInfo];
  [v7 setOutputType:0];
  [v7 setOrientation:1];
  if (v6)
  {
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (a4)
    {
      v10 = @"Directions Title [Printing]";
    }

    else
    {
      v10 = @"Search Result Title [Printing]";
    }

    v13 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
    v14 = [NSString stringWithFormat:v13, v6];
    [v7 setJobName:v14];
  }

  else
  {
    v11 = +[NSBundle mainBundle];
    v9 = v11;
    if (a4)
    {
      v12 = @"PrintController_Directions";
    }

    else
    {
      v12 = @"PrintController_Untitled";
    }

    v13 = [v11 localizedStringForKey:v12 value:@"localized string not found" table:0];
    [v7 setJobName:v13];
  }

  return v7;
}

- (id)_rendererForSearchResults:(id)a3 title:(id)a4 subTitle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] && !-[PrintController _searchResults:areFarAwayFromView:](self, "_searchResults:areFarAwayFromView:", v8, self->_mapView))
  {
    v11 = [[SearchResultsPageRenderer alloc] initWithSearchResults:v8 title:v9 subTitle:v10 mapView:self->_mapView];
  }

  else
  {
    v11 = [[SimpleMapPageRenderer alloc] initWithMapView:self->_mapView];
  }

  v12 = v11;

  return v12;
}

- (id)_rendererForRoute:(id)a3
{
  v4 = a3;
  v5 = [[MapRoutePageRenderer alloc] initWithRoute:v4 mapView:self->_mapView];

  return v5;
}

- (BOOL)_searchResults:(id)a3 areFarAwayFromView:(id)a4
{
  v5 = a3;
  [a4 visibleMapRect];
  v25 = MKMapRectInset(v24, -v24.size.width, -v24.size.height);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v17 + 1) + 8 * i) coordinate];
        v23 = MKMapPointForCoordinate(v22);
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        if (MKMapRectContainsPoint(v26, v23))
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

- (id)mapRegion:(id)a3 insetLat:(double)a4 insetLng:(double)a5
{
  v7 = a3;
  v8 = objc_alloc_init(GEOMapRegion);
  [v7 southLat];
  v9 = a4 * 0.5;
  v11 = v10 + v9;
  v12 = -90.0;
  if (v11 > -90.0)
  {
    [v7 southLat];
    v12 = v13 + v9;
  }

  [v8 setSouthLat:v12];
  [v7 northLat];
  v15 = v14 - v9;
  v16 = 90.0;
  if (v15 < 90.0)
  {
    [v7 northLat];
    v16 = v17 - v9;
  }

  [v8 setNorthLat:v16];
  [v7 westLng];
  v18 = a5 * 0.5;
  v20 = v19 + v18;
  v21 = -180.0;
  if (v20 > -180.0)
  {
    [v7 westLng];
    v21 = v22 + v18;
  }

  [v8 setWestLng:v21];
  [v7 eastLng];
  v24 = v23 - v18;
  v25 = 180.0;
  if (v24 < 180.0)
  {
    [v7 eastLng];
    v25 = v26 - v18;
  }

  [v8 setEastLng:v25];

  return v8;
}

- (void)orientationDidChange
{
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 != 5)
    {
      return;
    }
  }

  if (self->_shouldShowPopoverAfterOrientationChange)
  {

    [(PrintController *)self print];
  }
}

- (void)orientationWillChange
{
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 != 5)
    {
      return;
    }
  }

  isShowingPopover = self->_isShowingPopover;
  self->_shouldShowPopoverAfterOrientationChange = isShowingPopover;
  if (isShowingPopover)
  {
    v8 = [(UIPrintInteractionController *)self->_pic printPageRenderer];
    v7 = +[UIPrintInteractionController sharedPrintController];
    [v7 dismissAnimated:0];

    [(UIPrintInteractionController *)self->_pic setPrintPageRenderer:v8];
  }
}

- (void)printSearchString:(id)a3 searchResults:(id)a4 title:(id)a5 subTitle:(id)a6
{
  v7 = [(PrintController *)self _printControllerForSearchString:a3 searchResults:a4 title:a5 subTitle:a6];
  pic = self->_pic;
  self->_pic = v7;

  v9 = self->_pic;

  [(PrintController *)self _print:v9];
}

- (void)_print:(id)a3
{
  v4 = a3;
  [v4 setDelegate:self];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10072BBD4;
  v17[3] = &unk_101627A00;
  v17[4] = self;
  v5 = objc_retainBlock(v17);
  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained popoverPresentationRectForPrintController:self];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v4 presentFromRect:self->_presentationView inView:1 animated:v5 completionHandler:{v10, v12, v14, v16}];
    self->_isShowingPopover = 1;
  }

  else
  {
    [v4 presentAnimated:1 completionHandler:v5];
  }
}

- (void)printRoute:(id)a3 searchString:(id)a4
{
  v5 = [(PrintController *)self _printControllerForRoute:a3 searchString:a4];
  pic = self->_pic;
  self->_pic = v5;

  v7 = self->_pic;

  [(PrintController *)self _print:v7];
}

- (id)_printControllerForSearchString:(id)a3 searchResults:(id)a4 title:(id)a5 subTitle:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[UIPrintInteractionController sharedPrintController];
  v15 = [(PrintController *)self _printInfoForSearchString:v13 route:0 title:v11];

  [v14 setPrintInfo:v15];
  v16 = [(PrintController *)self _rendererForSearchResults:v12 title:v11 subTitle:v10];

  [v14 setPrintPageRenderer:v16];

  return v14;
}

- (id)_printControllerForRoute:(id)a3 searchString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[UIPrintInteractionController sharedPrintController];
  v9 = [(PrintController *)self _printInfoForSearchString:v6 route:v7 title:0];

  [v8 setPrintInfo:v9];
  v10 = [(PrintController *)self _rendererForRoute:v7];

  [v8 setPrintPageRenderer:v10];

  return v8;
}

- (void)_endBackgroundTask
{
  if ([(PrintController *)self isPrinting])
  {
    if ([(PrintController *)self _isInBackground])
    {
      v3 = [UIApp delegate];
      [v3 sendDidEnterBackgroundNotification];
    }

    v4 = +[UIApplication sharedApplication];
    [v4 endBackgroundTask:self->_printTaskBackgroundIdentifier];

    self->_printTaskBackgroundIdentifier = UIBackgroundTaskInvalid;
  }
}

- (BOOL)_isInBackground
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 applicationState];

  if (v3 != 1)
  {
    return v3 == 2;
  }

  v5 = +[UIApplication sharedApplication];
  v6 = [v5 isSuspendedUnderLock];

  return v6;
}

- (PrintController)initWithMapView:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PrintController;
  v9 = [(PrintController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapView, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

@end