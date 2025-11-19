@interface ExtensionsDebugController
- (void)_addSectionWithMapsExtensionPointName:(id)a3;
- (void)prepareContent;
- (void)setExtensions:(id)a3;
@end

@implementation ExtensionsDebugController

- (void)setExtensions:(id)a3
{
  objc_storeStrong(&self->_extensions, a3);

  [(MapsDebugValuesViewController *)self rebuildSections];
}

- (void)_addSectionWithMapsExtensionPointName:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_extensions objectForKeyedSubscript:v4];

  if (v5)
  {
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100CFFD84;
    v7[3] = &unk_101658D78;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    v6 = [(MapsDebugValuesViewController *)self addSectionWithTitle:v8 content:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)prepareContent
{
  v3 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Restaurant Reservations" content:&stru_101651080];
  v4 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Car Extension" content:&stru_1016510A0];
  if (!self->_extManager)
  {
    objc_initWeak(&location, self);
    v5 = +[_MXExtensionManager _lookupPolicyForAllExtensions];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100D00330;
    v10[3] = &unk_10165F290;
    objc_copyWeak(&v11, &location);
    v6 = [_MXExtensionManager managerWithExtensionLookupPolicy:v5 updateHandler:v10];
    extManager = self->_extManager;
    self->_extManager = v6;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  if (self->_extensions)
  {
    v13[0] = kMapsExtensionPointNameServices;
    v13[1] = kMapsExtensionPointNameServicesUI;
    v8 = [NSArray arrayWithObjects:v13 count:2];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100D0049C;
    v9[3] = &unk_1016510F0;
    v9[4] = self;
    [v8 enumerateObjectsUsingBlock:v9];
  }
}

@end