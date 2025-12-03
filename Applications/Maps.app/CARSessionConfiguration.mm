@interface CARSessionConfiguration
- (CARScreenInfo)_maps_primaryScreen;
@end

@implementation CARSessionConfiguration

- (CARScreenInfo)_maps_primaryScreen
{
  v3 = +[CarDisplayController sharedInstance];
  screen = [v3 screen];
  _displayID = [screen _displayID];

  screens = [(CARSessionConfiguration *)self screens];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100FB09A8;
  v10[3] = &unk_10165FE40;
  v11 = _displayID;
  v7 = _displayID;
  v8 = sub_100030774(screens, v10);

  return v8;
}

@end