@interface BKJSAAppWindowProvider
- (BKAppSceneManager)sceneManager;
- (BKJSAAppWindowProvider)initWithSceneManager:(id)manager;
- (id)windowFromOptions:(id)options;
@end

@implementation BKJSAAppWindowProvider

- (BKJSAAppWindowProvider)initWithSceneManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = BKJSAAppWindowProvider;
  v5 = [(BKJSAAppWindowProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sceneManager, managerCopy);
  }

  return v6;
}

- (id)windowFromOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:BCTransactionOptionsTransactionKey];
  originatingSceneController = [v5 originatingSceneController];
  v7 = BUProtocolCast();

  v8 = +[BKSceneControllerUtilities sceneTypeKey];
  v9 = [optionsCopy objectForKeyedSubscript:v8];

  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    bk_window = [v7 bk_window];
  }

  else
  {
    v11 = [BKSceneControllerUtilities sceneTypeFrom:v9];
    sceneManager = [(BKJSAAppWindowProvider *)self sceneManager];
    v13 = +[BKSceneControllerUtilities assetIDKey];
    v14 = [optionsCopy objectForKeyedSubscript:v13];
    bk_window = [sceneManager windowFromSceneType:v11 assetID:v14];
  }

  return bk_window;
}

- (BKAppSceneManager)sceneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);

  return WeakRetained;
}

@end