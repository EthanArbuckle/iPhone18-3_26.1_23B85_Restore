@interface ExperimentsDebugController
- (void)dealloc;
- (void)prepareContent;
@end

@implementation ExperimentsDebugController

- (void)prepareContent
{
  v3 = +[GEOExperimentConfiguration sharedConfiguration];
  [v3 addExperimentObserver:self queue:&_dispatch_main_q];

  v4 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:&stru_10162A8C0];
  +[GEOExperimentConfiguration sharedConfiguration];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1007DD214;
  v11 = v10[3] = &unk_1016612C8;
  v5 = v11;
  v6 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v10];
  v7 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:&stru_10162A940];
  v8 = +[GEOExperimentConfiguration sharedConfiguration];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007DD378;
  v9[3] = &unk_10162A9C8;
  v9[4] = self;
  [v8 _debug_forEachExperimentType:v9];
}

- (void)dealloc
{
  v3 = +[GEOExperimentConfiguration sharedConfiguration];
  [v3 removeExperimentObserver:self];

  v4.receiver = self;
  v4.super_class = ExperimentsDebugController;
  [(MapsDebugValuesViewController *)&v4 dealloc];
}

@end