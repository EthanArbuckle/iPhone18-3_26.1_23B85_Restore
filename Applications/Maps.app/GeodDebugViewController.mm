@interface GeodDebugViewController
- (void)prepareContent;
@end

@implementation GeodDebugViewController

- (void)prepareContent
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100602B60;
  v4[3] = &unk_10165E0A8;
  objc_copyWeak(&v5, &location);
  v3 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"MUIDs" content:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end