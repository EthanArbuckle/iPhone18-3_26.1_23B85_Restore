@interface _AvailableExperimentsDebugController
- (void)prepareContent;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _AvailableExperimentsDebugController

- (void)prepareContent
{
  v3 = self->_availableExperiments;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007DD6C4;
  v6[3] = &unk_1016612C8;
  v7 = v3;
  v4 = v3;
  v5 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v6];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = _AvailableExperimentsDebugController;
  [(MapsDebugValuesViewController *)&v8 viewWillAppear:appear];
  objc_initWeak(&location, self);
  v4 = +[GEOExperimentConfiguration sharedConfiguration];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007DE208;
  v5[3] = &unk_10165F290;
  objc_copyWeak(&v6, &location);
  [v4 _debug_fetchAllAvailableExperiments:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end