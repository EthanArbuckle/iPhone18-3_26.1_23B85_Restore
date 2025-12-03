@interface MapsActivityViewController
- (MapsActivityViewController)initWithShareItem:(id)item;
- (MapsActivityViewControllerDelegate)mapsActivityDelegate;
- (void)mapkitActivityViewController:(id)controller postCompletedActivityOfType:(id)type completed:(BOOL)completed;
@end

@implementation MapsActivityViewController

- (MapsActivityViewControllerDelegate)mapsActivityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapsActivityDelegate);

  return WeakRetained;
}

- (void)mapkitActivityViewController:(id)controller postCompletedActivityOfType:(id)type completed:(BOOL)completed
{
  completedCopy = completed;
  typeCopy = type;
  mapsActivityDelegate = [(MapsActivityViewController *)self mapsActivityDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    mapsActivityDelegate2 = [(MapsActivityViewController *)self mapsActivityDelegate];
    [mapsActivityDelegate2 mapsActivityViewController:self activityCompleted:1];
  }

  if ([typeCopy isEqualToString:UIActivityTypePrint])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10077E428;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if ([SendToRoutingAppActivity isActivityForType:typeCopy])
  {
    mapsActivityDelegate3 = [(MapsActivityViewController *)self mapsActivityDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      mapsActivityDelegate4 = [(MapsActivityViewController *)self mapsActivityDelegate];
      [mapsActivityDelegate4 mapsActivityViewControllerPresentRoutingApps:self];
    }
  }

  v14 = +[MKMapService sharedService];
  v15 = v14;
  if (completedCopy)
  {
    v16 = 17;
  }

  else
  {
    v16 = 4;
  }

  [v14 captureUserAction:v16 onTarget:622 eventValue:typeCopy];
}

- (MapsActivityViewController)initWithShareItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = MapsActivityViewController;
  v5 = [(MapsActivityViewController *)&v8 initWithShareItem:itemCopy];
  if (v5)
  {
    if (qword_10195D208 != -1)
    {
      dispatch_once(&qword_10195D208, &stru_101628AC8);
    }

    v6 = qword_10195D200;
    if (os_log_type_enabled(qword_10195D200, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v10 = v5;
      v11 = 2112;
      v12 = itemCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with share item: %@", buf, 0x16u);
    }

    [(MapsActivityViewController *)v5 setActivityControllerDelegate:v5];
  }

  return v5;
}

@end