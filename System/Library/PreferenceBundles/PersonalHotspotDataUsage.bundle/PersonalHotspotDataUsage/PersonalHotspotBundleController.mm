@interface PersonalHotspotBundleController
- (PSListController)parentController;
- (PersonalHotspotBundleController)initWithParentListController:(id)controller;
- (id)_specifiersWithMainSpecifier:(id)specifier;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)dealloc;
@end

@implementation PersonalHotspotBundleController

- (PersonalHotspotBundleController)initWithParentListController:(id)controller
{
  v6.receiver = self;
  v6.super_class = PersonalHotspotBundleController;
  controllerCopy = controller;
  v4 = [(PersonalHotspotBundleController *)&v6 initWithParentListController:controllerCopy];
  objc_storeWeak(&v4->_parentController, controllerCopy);

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PersonalHotspotBundleController;
  [(PersonalHotspotBundleController *)&v4 dealloc];
}

- (id)specifiersWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1178;
  v16 = sub_1188;
  v17 = 0;
  if (+[NSThread isMainThread])
  {
    v5 = [(PersonalHotspotBundleController *)self _specifiersWithMainSpecifier:specifierCopy];
    v6 = v13[5];
    v13[5] = v5;
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1190;
    block[3] = &unk_C490;
    v11 = &v12;
    block[4] = self;
    v10 = specifierCopy;
    dispatch_sync(&_dispatch_main_q, block);
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_specifiersWithMainSpecifier:(id)specifier
{
  v3 = objc_alloc_init(PersonalHotspotDataUsageRootSpecifier);
  v4 = v3;
  if (v3)
  {
    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (PSListController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end