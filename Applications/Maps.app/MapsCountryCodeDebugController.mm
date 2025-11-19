@interface MapsCountryCodeDebugController
- (MapsCountryCodeDebugController)init;
- (id)_countryCode;
- (void)_countryChanged:(id)a3;
- (void)_setCountryCode:(id)a3;
- (void)prepareContent;
@end

@implementation MapsCountryCodeDebugController

- (void)prepareContent
{
  objc_initWeak(&location, self);
  v3 = [objc_opt_class() _knownCountryCodes];
  v4 = [objc_opt_class() _namesOfCountriesWithKnownCodes];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_100DA04F8;
  v28[4] = sub_100DA0508;
  v29 = 0;
  v5 = +[NSMutableArray array];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100DA0510;
  v23[3] = &unk_101653EE8;
  v27 = v28;
  v23[4] = self;
  v6 = v3;
  v24 = v6;
  v7 = v4;
  v25 = v7;
  v8 = v5;
  v26 = v8;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100DA0704;
  v21[3] = &unk_101653F10;
  objc_copyWeak(&v22, &location);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100DA0750;
  v19[3] = &unk_10165D828;
  objc_copyWeak(&v20, &location);
  v9 = [MapsDebugCheckmarkRowsGroup rowsGroupContainingRows:0 withContent:v23 get:v21 set:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100DA07AC;
  v18[3] = &unk_101659738;
  v18[4] = v28;
  v10 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100DA07C0;
  v16[3] = &unk_1016612C8;
  v11 = v8;
  v17 = v11;
  v12 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100DA08C0;
  v14[3] = &unk_10165E0A8;
  objc_copyWeak(&v15, &location);
  v13 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v14];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);

  _Block_object_dispose(v28, 8);
  objc_destroyWeak(&location);
}

- (void)_setCountryCode:(id)a3
{
  v4 = a3;
  if ([v4 length] && (+[NSLocale ISOCountryCodes](NSLocale, "ISOCountryCodes"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v4), v5, (v6 & 1) == 0))
  {
    v7 = [NSString stringWithFormat:@"%@ Is not a valid ISO Country Code", v4];
    v8 = [UIAlertController alertControllerWithTitle:@"Oops" message:v7 preferredStyle:1];
    v9 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
    [v8 addAction:v9];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100DA0DA0;
    v11[3] = &unk_101661B18;
    v11[4] = self;
    [(MapsCountryCodeDebugController *)self presentViewController:v8 animated:1 completion:v11];
  }

  else
  {
    GEOConfigSetBOOL();
    if (v4)
    {
      GEOConfigSetString();
    }

    else
    {
      _GEOConfigRemoveValue();
    }

    v10 = +[GEOCountryConfiguration sharedConfiguration];
    [v10 updateProvidersForCurrentCountry];

    [(MapsDebugValuesViewController *)self reloadData];
  }
}

- (id)_countryCode
{
  if (GEOConfigGetBOOL())
  {
    v2 = GEOConfigGetString();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_countryChanged:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 objectForKeyedSubscript:GEODeviceCountryCodeKey];
  actualCountry = self->_actualCountry;
  self->_actualCountry = v4;

  [(MapsDebugValuesViewController *)self rebuildSections];
}

- (MapsCountryCodeDebugController)init
{
  v8.receiver = self;
  v8.super_class = MapsCountryCodeDebugController;
  v2 = [(MapsDebugValuesViewController *)&v8 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_countryChanged:" name:GEOCountryConfigurationCountryCodeDidChangeNotification object:0];

    v4 = +[GEOCountryConfiguration sharedConfiguration];
    v5 = [v4 countryCode];
    actualCountry = v2->_actualCountry;
    v2->_actualCountry = v5;
  }

  return v2;
}

@end