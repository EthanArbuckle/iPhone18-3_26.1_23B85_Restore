@interface CARSessionConfiguration
- (CARScreenInfo)_maps_primaryScreen;
@end

@implementation CARSessionConfiguration

- (CARScreenInfo)_maps_primaryScreen
{
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 screen];
  v5 = [v4 _displayID];

  v6 = [(CARSessionConfiguration *)self screens];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100FB09A8;
  v10[3] = &unk_10165FE40;
  v11 = v5;
  v7 = v5;
  v8 = sub_100030774(v6, v10);

  return v8;
}

@end