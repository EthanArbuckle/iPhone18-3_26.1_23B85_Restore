@interface BKActionController
- (BKActionController)init;
- (BKActionControllerDelegate)delegate;
- (BKViewController)ancestorViewController;
- (BOOL)_hasValidActions;
- (id)activityItems;
- (id)barButtonItem;
- (void)_setActivities;
- (void)cancelActions;
- (void)dealloc;
- (void)showActionControls:(id)controls;
@end

@implementation BKActionController

- (BKActionController)init
{
  v10.receiver = self;
  v10.super_class = BKActionController;
  v2 = [(BKActionController *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    includedActivityTypes = v2->_includedActivityTypes;
    v2->_includedActivityTypes = v3;

    v5 = objc_opt_new();
    excludedActivityTypes = v2->_excludedActivityTypes;
    v2->_excludedActivityTypes = v5;

    v7 = objc_opt_new();
    applicationActivities = v2->_applicationActivities;
    v2->_applicationActivities = v7;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BKActionController;
  [(BKActionController *)&v4 dealloc];
}

- (void)cancelActions
{
  if (self->_showsPrint)
  {
    if ([(BKActionController *)self canPrintBook])
    {
      v2 = NSClassFromString(@"UIPrintInteractionController");
      if (v2)
      {
        sharedPrintController = [(objc_class *)v2 sharedPrintController];
        [sharedPrintController dismissAnimated:1];
      }
    }
  }
}

- (id)barButtonItem
{
  if ([(BKActionController *)self _hasValidActions]&& !self->_actionButton)
  {
    v3 = [UIBarButtonItem bc_readingExperienceBarItem:@"square.and.arrow.up" target:self action:"showActionControls:"];
    actionButton = self->_actionButton;
    self->_actionButton = v3;
  }

  v5 = self->_actionButton;

  return v5;
}

- (void)_setActivities
{
  if (self->_showsEmail && [(BKActionController *)self canEmailBook])
  {
    [(NSMutableArray *)self->_includedActivityTypes addObject:UIActivityTypeMail];
    [(NSMutableArray *)self->_includedActivityTypes addObject:UIActivityTypeMessage];
  }

  if (self->_showsPrint && [(BKActionController *)self canPrintBook])
  {
    includedActivityTypes = self->_includedActivityTypes;

    [(NSMutableArray *)includedActivityTypes addObject:UIActivityTypePrint];
  }
}

- (id)activityItems
{
  v3 = [BKActivityURLItemSource alloc];
  bookInfo = [(BKActionController *)self bookInfo];
  bookBundlePath = [bookInfo bookBundlePath];
  v6 = [(BKActivityURLItemSource *)v3 initWithPath:bookBundlePath];

  v7 = [NSMutableArray arrayWithObject:v6];

  return v7;
}

- (void)showActionControls:(id)controls
{
  controlsCopy = controls;
  [(NSMutableArray *)self->_includedActivityTypes removeAllObjects];
  [(NSMutableArray *)self->_excludedActivityTypes removeAllObjects];
  [(NSMutableArray *)self->_applicationActivities removeAllObjects];
  [(BKActionController *)self _setActivities];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_40390;
  v11[3] = &unk_1E3B28;
  objc_copyWeak(&v13, &location);
  v5 = controlsCopy;
  v12 = v5;
  v6 = objc_retainBlock(v11);
  v7 = +[BCProgressKitController sharedController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_40704;
  v9[3] = &unk_1E3B50;
  v8 = v6;
  v10 = v8;
  [v7 activeContextWithCompletion:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (BOOL)_hasValidActions
{
  if ([(BKActionController *)self canEmailBook])
  {
    return 1;
  }

  return [(BKActionController *)self canPrintBook];
}

- (BKViewController)ancestorViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_ancestorViewController);

  return WeakRetained;
}

- (BKActionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end