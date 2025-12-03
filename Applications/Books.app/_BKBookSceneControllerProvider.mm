@interface _BKBookSceneControllerProvider
- (BKAppSceneManager)sceneManager;
- (_BKBookSceneControllerProvider)initWithSceneManager:(id)manager requestAssetID:(id)d;
- (void)provideSceneController:(id)controller;
@end

@implementation _BKBookSceneControllerProvider

- (_BKBookSceneControllerProvider)initWithSceneManager:(id)manager requestAssetID:(id)d
{
  managerCopy = manager;
  dCopy = d;
  v11.receiver = self;
  v11.super_class = _BKBookSceneControllerProvider;
  v8 = [(_BKBookSceneControllerProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_sceneManager, managerCopy);
    objc_storeStrong(&v9->_requestAssetID, d);
  }

  return v9;
}

- (void)provideSceneController:(id)controller
{
  controllerCopy = controller;
  sceneManager = [(_BKBookSceneControllerProvider *)self sceneManager];
  requestAssetID = [(_BKBookSceneControllerProvider *)self requestAssetID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100197358;
  v8[3] = &unk_100A09DC0;
  v9 = controllerCopy;
  v7 = controllerCopy;
  [sceneManager requestBookSceneWithAssetID:requestAssetID completion:v8];
}

- (BKAppSceneManager)sceneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);

  return WeakRetained;
}

@end