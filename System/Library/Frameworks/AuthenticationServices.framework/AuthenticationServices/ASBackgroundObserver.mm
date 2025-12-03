@interface ASBackgroundObserver
- (ASBackgroundObserver)initWithViewController:(id)controller block:(id)block;
- (UIViewController)viewController;
- (void)_hostDidEnterBackground:(id)background;
- (void)_sceneDidEnterBackground:(id)background;
- (void)dealloc;
@end

@implementation ASBackgroundObserver

- (ASBackgroundObserver)initWithViewController:(id)controller block:(id)block
{
  blockCopy = block;
  controllerCopy = controller;
  v8 = [(ASBackgroundObserver *)self init];
  objc_storeWeak(&v8->_viewController, controllerCopy);

  v9 = _Block_copy(blockCopy);
  block = v8->_block;
  v8->_block = v9;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v8 selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
  [defaultCenter addObserver:v8 selector:sel__hostDidEnterBackground_ name:@"_UIViewServiceHostDidEnterBackgroundNotification" object:0];

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASBackgroundObserver;
  [(ASBackgroundObserver *)&v4 dealloc];
}

- (void)_sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  viewIfLoaded = [WeakRetained viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];

  if (!windowScene || ([backgroundCopy object], v8 = objc_claimAutoreleasedReturnValue(), v8, windowScene == v8))
  {
    (*(self->_block + 2))();
  }
}

- (void)_hostDidEnterBackground:(id)background
{
  object = [background object];
  parentViewController = [object parentViewController];

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  if (WeakRetained == parentViewController)
  {
    v9 = WeakRetained;
  }

  else
  {
    do
    {
      parentViewController2 = [WeakRetained parentViewController];

      if (parentViewController2)
      {
        parentViewController3 = [WeakRetained parentViewController];
      }

      else
      {
        presentingViewController = [WeakRetained presentingViewController];

        if (!presentingViewController)
        {
          goto LABEL_10;
        }

        parentViewController3 = [WeakRetained presentingViewController];
      }

      v9 = parentViewController3;

      WeakRetained = v9;
    }

    while (v9 != parentViewController);
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