@interface _BKBookSceneControllerProvider
- (BKAppSceneManager)sceneManager;
- (_BKBookSceneControllerProvider)initWithSceneManager:(id)a3 requestAssetID:(id)a4;
- (void)provideSceneController:(id)a3;
@end

@implementation _BKBookSceneControllerProvider

- (_BKBookSceneControllerProvider)initWithSceneManager:(id)a3 requestAssetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _BKBookSceneControllerProvider;
  v8 = [(_BKBookSceneControllerProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_sceneManager, v6);
    objc_storeStrong(&v9->_requestAssetID, a4);
  }

  return v9;
}

- (void)provideSceneController:(id)a3
{
  v4 = a3;
  v5 = [(_BKBookSceneControllerProvider *)self sceneManager];
  v6 = [(_BKBookSceneControllerProvider *)self requestAssetID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100197358;
  v8[3] = &unk_100A09DC0;
  v9 = v4;
  v7 = v4;
  [v5 requestBookSceneWithAssetID:v6 completion:v8];
}

- (BKAppSceneManager)sceneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);

  return WeakRetained;
}

@end