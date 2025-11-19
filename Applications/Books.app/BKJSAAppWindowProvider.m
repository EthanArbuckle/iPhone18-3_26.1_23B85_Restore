@interface BKJSAAppWindowProvider
- (BKAppSceneManager)sceneManager;
- (BKJSAAppWindowProvider)initWithSceneManager:(id)a3;
- (id)windowFromOptions:(id)a3;
@end

@implementation BKJSAAppWindowProvider

- (BKJSAAppWindowProvider)initWithSceneManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BKJSAAppWindowProvider;
  v5 = [(BKJSAAppWindowProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sceneManager, v4);
  }

  return v6;
}

- (id)windowFromOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:BCTransactionOptionsTransactionKey];
  v6 = [v5 originatingSceneController];
  v7 = BUProtocolCast();

  v8 = +[BKSceneControllerUtilities sceneTypeKey];
  v9 = [v4 objectForKeyedSubscript:v8];

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
    v15 = [v7 bk_window];
  }

  else
  {
    v11 = [BKSceneControllerUtilities sceneTypeFrom:v9];
    v12 = [(BKJSAAppWindowProvider *)self sceneManager];
    v13 = +[BKSceneControllerUtilities assetIDKey];
    v14 = [v4 objectForKeyedSubscript:v13];
    v15 = [v12 windowFromSceneType:v11 assetID:v14];
  }

  return v15;
}

- (BKAppSceneManager)sceneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);

  return WeakRetained;
}

@end