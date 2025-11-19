@interface ASBackgroundObserver
- (ASBackgroundObserver)initWithViewController:(id)a3 block:(id)a4;
- (UIViewController)viewController;
- (void)_hostDidEnterBackground:(id)a3;
- (void)_sceneDidEnterBackground:(id)a3;
- (void)dealloc;
@end

@implementation ASBackgroundObserver

- (ASBackgroundObserver)initWithViewController:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASBackgroundObserver *)self init];
  objc_storeWeak(&v8->_viewController, v7);

  v9 = _Block_copy(v6);
  block = v8->_block;
  v8->_block = v9;

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:v8 selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
  [v11 addObserver:v8 selector:sel__hostDidEnterBackground_ name:@"_UIViewServiceHostDidEnterBackgroundNotification" object:0];

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASBackgroundObserver;
  [(ASBackgroundObserver *)&v4 dealloc];
}

- (void)_sceneDidEnterBackground:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v5 = [WeakRetained viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];

  if (!v7 || ([v9 object], v8 = objc_claimAutoreleasedReturnValue(), v8, v7 == v8))
  {
    (*(self->_block + 2))();
  }
}

- (void)_hostDidEnterBackground:(id)a3
{
  v4 = [a3 object];
  v10 = [v4 parentViewController];

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  if (WeakRetained == v10)
  {
    v9 = WeakRetained;
  }

  else
  {
    do
    {
      v6 = [WeakRetained parentViewController];

      if (v6)
      {
        v7 = [WeakRetained parentViewController];
      }

      else
      {
        v8 = [WeakRetained presentingViewController];

        if (!v8)
        {
          goto LABEL_10;
        }

        v7 = [WeakRetained presentingViewController];
      }

      v9 = v7;

      WeakRetained = v9;
    }

    while (v9 != v10);
  }

  (*(self->_block + 2))();
  WeakRetained = v9;
LABEL_10:
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end