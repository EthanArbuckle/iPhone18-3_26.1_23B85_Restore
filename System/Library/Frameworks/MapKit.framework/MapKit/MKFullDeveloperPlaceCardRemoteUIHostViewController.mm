@interface MKFullDeveloperPlaceCardRemoteUIHostViewController
- (id)initAsAccessoryWithMapItem:(id)a3 dismissButtonDisplayed:(BOOL)a4;
- (id)initAsStandAloneWithMapItem:(id)a3 dismissButtonDisplayed:(BOOL)a4 hideInlineMap:(BOOL)a5;
- (void)_configureConnection:(id)a3;
@end

@implementation MKFullDeveloperPlaceCardRemoteUIHostViewController

- (void)_configureConnection:(id)a3
{
  isStandAlonePlaceCard = self->_isStandAlonePlaceCard;
  v5 = [a3 remoteObjectProxy];
  mapItem = self->_mapItem;
  if (isStandAlonePlaceCard)
  {
    hideInlineMap = self->_hideInlineMap;
    v8 = +[MKSystemController sharedInstance];
    v10.receiver = self;
    v10.super_class = MKFullDeveloperPlaceCardRemoteUIHostViewController;
    [v5 configureWithMapItem:mapItem hideInlineMap:hideInlineMap idiom:objc_msgSend(v8 interfaceStyle:{"userInterfaceIdiom"), -[MKPlaceCardRemoteUIHostViewController _mapkit_userInterfaceStyle](&v10, sel__mapkit_userInterfaceStyle)}];
  }

  else
  {
    v8 = +[MKSystemController sharedInstance];
    v9.receiver = self;
    v9.super_class = MKFullDeveloperPlaceCardRemoteUIHostViewController;
    [v5 configureWithMapItem:mapItem idiom:objc_msgSend(v8 interfaceStyle:{"userInterfaceIdiom"), -[MKPlaceCardRemoteUIHostViewController _mapkit_userInterfaceStyle](&v9, sel__mapkit_userInterfaceStyle)}];
  }
}

- (id)initAsStandAloneWithMapItem:(id)a3 dismissButtonDisplayed:(BOOL)a4 hideInlineMap:(BOOL)a5
{
  v9 = a3;
  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F16E5470];
  v11 = objc_alloc_init(MKFullDeveloperPlaceCardLoadingView);
  v14.receiver = self;
  v14.super_class = MKFullDeveloperPlaceCardRemoteUIHostViewController;
  v12 = [(MKPlaceCardRemoteUIHostViewController *)&v14 initWithSceneIdentifier:@"MKStandAlonePlaceCardScene" remoteObjectInterface:v10 placeholderView:v11];

  if (v12)
  {
    v12->_isStandAlonePlaceCard = 1;
    objc_storeStrong(&v12->_mapItem, a3);
    v12->_dismissButtonDisplayed = a4;
    v12->_hideInlineMap = a5;
  }

  return v12;
}

- (id)initAsAccessoryWithMapItem:(id)a3 dismissButtonDisplayed:(BOOL)a4
{
  v7 = a3;
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F16E5410];
  v9 = objc_alloc_init(MKFullDeveloperPlaceCardLoadingView);
  v12.receiver = self;
  v12.super_class = MKFullDeveloperPlaceCardRemoteUIHostViewController;
  v10 = [(MKPlaceCardRemoteUIHostViewController *)&v12 initWithSceneIdentifier:@"MKFullAccessoryPlaceCardScene" remoteObjectInterface:v8 placeholderView:v9];

  if (v10)
  {
    v10->_isStandAlonePlaceCard = 0;
    objc_storeStrong(&v10->_mapItem, a3);
    v10->_dismissButtonDisplayed = a4;
    v10->_hideInlineMap = 1;
  }

  return v10;
}

@end