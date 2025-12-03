@interface MapsRecordAnIssueDebugController
- (void)beginRecordingAndCreatePanView;
- (void)prepareContent;
@end

@implementation MapsRecordAnIssueDebugController

- (void)beginRecordingAndCreatePanView
{
  view = [(MapsRecordAnIssueDebugController *)self view];
  window = [view window];

  v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  v6 = +[UIColor grayColor];
  [v5 setColor:v6];

  [window frame];
  v8 = v7 * 0.5;
  [window frame];
  [v5 setCenter:{v8, v9 * 0.5}];
  [window addSubview:v5];
  [v5 startAnimating];
  v10 = [MapsEventRecorder initializeDefaultRecorderWithTapToRadar:[(MapsRecordAnIssueDebugController *)self tapToRadarEnabled] window:window];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1005E9310;
  v13[3] = &unk_101661A40;
  v13[4] = self;
  v14 = window;
  v15 = v5;
  v11 = v5;
  v12 = window;
  [v10 beginRecordingWithCompletion:v13];
}

- (void)prepareContent
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005E9508;
  v4[3] = &unk_10165E0A8;
  objc_copyWeak(&v5, &location);
  v3 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Record" content:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end