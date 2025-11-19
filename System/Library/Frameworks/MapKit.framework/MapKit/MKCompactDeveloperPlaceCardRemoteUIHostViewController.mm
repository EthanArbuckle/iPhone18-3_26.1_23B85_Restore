@interface MKCompactDeveloperPlaceCardRemoteUIHostViewController
- (MKCompactDeveloperPlaceCardRemoteUIHostViewController)initWithMapItem:(id)a3;
- (void)_configureConnection:(id)a3;
@end

@implementation MKCompactDeveloperPlaceCardRemoteUIHostViewController

- (void)_configureConnection:(id)a3
{
  v4 = [a3 remoteObjectProxy];
  mapItem = self->_mapItem;
  v6 = +[MKSystemController sharedInstance];
  v7.receiver = self;
  v7.super_class = MKCompactDeveloperPlaceCardRemoteUIHostViewController;
  [v4 configureWithMapItem:mapItem idiom:objc_msgSend(v6 interfaceStyle:{"userInterfaceIdiom"), -[MKPlaceCardRemoteUIHostViewController _mapkit_userInterfaceStyle](&v7, sel__mapkit_userInterfaceStyle)}];
}

- (MKCompactDeveloperPlaceCardRemoteUIHostViewController)initWithMapItem:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F16E5410];
  v7 = objc_alloc_init(MKCompactDeveloperPlaceCardLoadingView);
  v10.receiver = self;
  v10.super_class = MKCompactDeveloperPlaceCardRemoteUIHostViewController;
  v8 = [(MKPlaceCardRemoteUIHostViewController *)&v10 initWithSceneIdentifier:@"MKCompactAccessoryPlaceCardScene" remoteObjectInterface:v6 placeholderView:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, a3);
  }

  return v8;
}

@end