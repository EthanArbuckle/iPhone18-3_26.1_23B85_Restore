@interface RoutePlanningEbikeOptions
- (void)_prepareForCycling;
@end

@implementation RoutePlanningEbikeOptions

- (void)_prepareForCycling
{
  objc_initWeak(&location, self);
  if (!self->super._countryObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = +[NSOperationQueue mainQueue];
    v5 = GEOCountryConfigurationCountryCodeDidChangeNotification;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100A761DC;
    v10[3] = &unk_10165FBE8;
    objc_copyWeak(&v11, &location);
    v6 = [v3 addObserverForName:v5 object:0 queue:v4 usingBlock:v10];
    countryObserver = self->super._countryObserver;
    self->super._countryObserver = v6;

    objc_destroyWeak(&v11);
  }

  if (sub_10072B0F0())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100A7621C;
    v8[3] = &unk_10165E0A8;
    objc_copyWeak(&v9, &location);
    [(PreferenceValuesDataSource *)self addSectionWithTitle:0 content:v8];
    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

@end