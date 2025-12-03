@interface PrintController
- (BOOL)_isInBackground;
- (BOOL)_searchResults:(id)results areFarAwayFromView:(id)view;
- (PrintController)initWithMapView:(id)view delegate:(id)delegate;
- (PrintControllerDelegate)delegate;
- (id)_printControllerForRoute:(id)route searchString:(id)string;
- (id)_printControllerForSearchString:(id)string searchResults:(id)results title:(id)title subTitle:(id)subTitle;
- (id)_printInfoForSearchString:(id)string route:(id)route title:(id)title;
- (id)_rendererForRoute:(id)route;
- (id)_rendererForSearchResults:(id)results title:(id)title subTitle:(id)subTitle;
- (id)mapRegion:(id)region insetLat:(double)lat insetLng:(double)lng;
- (void)_endBackgroundTask;
- (void)_print:(id)_print;
- (void)orientationDidChange;
- (void)orientationWillChange;
- (void)printInteractionControllerDidPresentPrinterOptions:(id)options;
- (void)printInteractionControllerWillStartJob:(id)job;
- (void)printRoute:(id)route searchString:(id)string;
- (void)printSearchString:(id)string searchResults:(id)results title:(id)title subTitle:(id)subTitle;
@end

@implementation PrintController

- (PrintControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)printInteractionControllerWillStartJob:(id)job
{
  v4 = +[UIApplication sharedApplication];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10072B338;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  self->_printTaskBackgroundIdentifier = [v4 beginBackgroundTaskWithExpirationHandler:v5];
}

- (void)printInteractionControllerDidPresentPrinterOptions:(id)options
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained printControllerDidPresentPrinterOptions:self];
}

- (id)_printInfoForSearchString:(id)string route:(id)route title:(id)title
{
  stringCopy = string;
  v7 = +[UIPrintInfo printInfo];
  [v7 setOutputType:0];
  [v7 setOrientation:1];
  if (stringCopy)
  {
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (route)
    {
      v10 = @"Directions Title [Printing]";
    }

    else
    {
      v10 = @"Search Result Title [Printing]";
    }

    v13 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
    stringCopy = [NSString stringWithFormat:v13, stringCopy];
    [v7 setJobName:stringCopy];
  }

  else
  {
    v11 = +[NSBundle mainBundle];
    v9 = v11;
    if (route)
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

- (id)_rendererForSearchResults:(id)results title:(id)title subTitle:(id)subTitle
{
  resultsCopy = results;
  titleCopy = title;
  subTitleCopy = subTitle;
  if ([resultsCopy count] && !-[PrintController _searchResults:areFarAwayFromView:](self, "_searchResults:areFarAwayFromView:", resultsCopy, self->_mapView))
  {
    v11 = [[SearchResultsPageRenderer alloc] initWithSearchResults:resultsCopy title:titleCopy subTitle:subTitleCopy mapView:self->_mapView];
  }

  else
  {
    v11 = [[SimpleMapPageRenderer alloc] initWithMapView:self->_mapView];
  }

  v12 = v11;

  return v12;
}

- (id)_rendererForRoute:(id)route
{
  routeCopy = route;
  v5 = [[MapRoutePageRenderer alloc] initWithRoute:routeCopy mapView:self->_mapView];

  return v5;
}

- (BOOL)_searchResults:(id)results areFarAwayFromView:(id)view
{
  resultsCopy = results;
  [view visibleMapRect];
  v25 = MKMapRectInset(v24, -v24.size.width, -v24.size.height);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = resultsCopy;
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

- (id)mapRegion:(id)region insetLat:(double)lat insetLng:(double)lng
{
  regionCopy = region;
  v8 = objc_alloc_init(GEOMapRegion);
  [regionCopy southLat];
  v9 = lat * 0.5;
  v11 = v10 + v9;
  v12 = -90.0;
  if (v11 > -90.0)
  {
    [regionCopy southLat];
    v12 = v13 + v9;
  }

  [v8 setSouthLat:v12];
  [regionCopy northLat];
  v15 = v14 - v9;
  v16 = 90.0;
  if (v15 < 90.0)
  {
    [regionCopy northLat];
    v16 = v17 - v9;
  }

  [v8 setNorthLat:v16];
  [regionCopy westLng];
  v18 = lng * 0.5;
  v20 = v19 + v18;
  v21 = -180.0;
  if (v20 > -180.0)
  {
    [regionCopy westLng];
    v21 = v22 + v18;
  }

  [v8 setWestLng:v21];
  [regionCopy eastLng];
  v24 = v23 - v18;
  v25 = 180.0;
  if (v24 < 180.0)
  {
    [regionCopy eastLng];
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
    userInterfaceIdiom = [v4 userInterfaceIdiom];

    if (userInterfaceIdiom != 5)
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
    userInterfaceIdiom = [v4 userInterfaceIdiom];

    if (userInterfaceIdiom != 5)
    {
      return;
    }
  }

  isShowingPopover = self->_isShowingPopover;
  self->_shouldShowPopoverAfterOrientationChange = isShowingPopover;
  if (isShowingPopover)
  {
    printPageRenderer = [(UIPrintInteractionController *)self->_pic printPageRenderer];
    v7 = +[UIPrintInteractionController sharedPrintController];
    [v7 dismissAnimated:0];

    [(UIPrintInteractionController *)self->_pic setPrintPageRenderer:printPageRenderer];
  }
}

- (void)printSearchString:(id)string searchResults:(id)results title:(id)title subTitle:(id)subTitle
{
  v7 = [(PrintController *)self _printControllerForSearchString:string searchResults:results title:title subTitle:subTitle];
  pic = self->_pic;
  self->_pic = v7;

  v9 = self->_pic;

  [(PrintController *)self _print:v9];
}

- (void)_print:(id)_print
{
  _printCopy = _print;
  [_printCopy setDelegate:self];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10072BBD4;
  v17[3] = &unk_101627A00;
  v17[4] = self;
  v5 = objc_retainBlock(v17);
  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained popoverPresentationRectForPrintController:self];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [_printCopy presentFromRect:self->_presentationView inView:1 animated:v5 completionHandler:{v10, v12, v14, v16}];
    self->_isShowingPopover = 1;
  }

  else
  {
    [_printCopy presentAnimated:1 completionHandler:v5];
  }
}

- (void)printRoute:(id)route searchString:(id)string
{
  v5 = [(PrintController *)self _printControllerForRoute:route searchString:string];
  pic = self->_pic;
  self->_pic = v5;

  v7 = self->_pic;

  [(PrintController *)self _print:v7];
}

- (id)_printControllerForSearchString:(id)string searchResults:(id)results title:(id)title subTitle:(id)subTitle
{
  subTitleCopy = subTitle;
  titleCopy = title;
  resultsCopy = results;
  stringCopy = string;
  v14 = +[UIPrintInteractionController sharedPrintController];
  v15 = [(PrintController *)self _printInfoForSearchString:stringCopy route:0 title:titleCopy];

  [v14 setPrintInfo:v15];
  v16 = [(PrintController *)self _rendererForSearchResults:resultsCopy title:titleCopy subTitle:subTitleCopy];

  [v14 setPrintPageRenderer:v16];

  return v14;
}

- (id)_printControllerForRoute:(id)route searchString:(id)string
{
  stringCopy = string;
  routeCopy = route;
  v8 = +[UIPrintInteractionController sharedPrintController];
  v9 = [(PrintController *)self _printInfoForSearchString:stringCopy route:routeCopy title:0];

  [v8 setPrintInfo:v9];
  v10 = [(PrintController *)self _rendererForRoute:routeCopy];

  [v8 setPrintPageRenderer:v10];

  return v8;
}

- (void)_endBackgroundTask
{
  if ([(PrintController *)self isPrinting])
  {
    if ([(PrintController *)self _isInBackground])
    {
      delegate = [UIApp delegate];
      [delegate sendDidEnterBackgroundNotification];
    }

    v4 = +[UIApplication sharedApplication];
    [v4 endBackgroundTask:self->_printTaskBackgroundIdentifier];

    self->_printTaskBackgroundIdentifier = UIBackgroundTaskInvalid;
  }
}

- (BOOL)_isInBackground
{
  v2 = +[UIApplication sharedApplication];
  applicationState = [v2 applicationState];

  if (applicationState != 1)
  {
    return applicationState == 2;
  }

  v5 = +[UIApplication sharedApplication];
  isSuspendedUnderLock = [v5 isSuspendedUnderLock];

  return isSuspendedUnderLock;
}

- (PrintController)initWithMapView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PrintController;
  v9 = [(PrintController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapView, view);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

@end