@interface _BKSceneControllerWrapper
- (BKSceneControlling)sceneController;
- (_BKSceneControllerWrapper)initWithSceneController:(id)controller;
@end

@implementation _BKSceneControllerWrapper

- (_BKSceneControllerWrapper)initWithSceneController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _BKSceneControllerWrapper;
  v5 = [(_BKSceneControllerWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sceneController, controllerCopy);
  }

  return v6;
}

- (BKSceneControlling)sceneController
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneController);

  return WeakRetained;
}

@end