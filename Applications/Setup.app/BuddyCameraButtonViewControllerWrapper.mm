@interface BuddyCameraButtonViewControllerWrapper
- (BuddyCameraButtonViewControllerDelegate)delegate;
- (void)cameraButtonBuddyViewControllerDidFinish:(id)a3;
- (void)createViewController:(id)a3;
@end

@implementation BuddyCameraButtonViewControllerWrapper

- (void)createViewController:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = objc_alloc_init(sub_1000F7718());
  [v13 setDelegate:v15];
  objc_initWeak(&from, v15);
  v3 = v13;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000F782C;
  v8 = &unk_10032CCE8;
  objc_copyWeak(&v11, &from);
  v10 = location[0];
  v9 = v13;
  [v3 loadAssetsWithCompletion:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)cameraButtonBuddyViewControllerDidFinish:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyCameraButtonViewControllerWrapper *)v6 delegate];
  [(BuddyCameraButtonViewControllerDelegate *)v3 cameraButtonViewControllerDidFinish:location[0], v3];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (BuddyCameraButtonViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end