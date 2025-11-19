@interface _BKSceneControllerWrapper
- (BKSceneControlling)sceneController;
- (_BKSceneControllerWrapper)initWithSceneController:(id)a3;
@end

@implementation _BKSceneControllerWrapper

- (_BKSceneControllerWrapper)initWithSceneController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _BKSceneControllerWrapper;
  v5 = [(_BKSceneControllerWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sceneController, v4);
  }

  return v6;
}

- (BKSceneControlling)sceneController
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneController);

  return WeakRetained;
}

@end