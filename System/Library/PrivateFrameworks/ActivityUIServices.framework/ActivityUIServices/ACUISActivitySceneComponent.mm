@interface ACUISActivitySceneComponent
- (ACUISActivitySceneComponent)initWithScene:(id)scene;
- (BOOL)isActivityScene:(id)scene;
- (UIScene)_scene;
- (void)_handleGestureChange:(id)change;
- (void)_handleGestureDependencyChange:(id)change;
- (void)_handleGestureState:(int64_t)state;
- (void)_sendActions:(id)actions;
- (void)_windowBecameHidden:(id)hidden;
- (void)_windowDidBecomeVisible:(id)visible;
- (void)dealloc;
@end

@implementation ACUISActivitySceneComponent

void __35__ACUISActivitySceneComponent_load__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == objc_opt_class())
  {
    v3 = MEMORY[0x1E69DCE70];
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    [v3 _registerSceneComponentClass:v4 withKey:@"ACUISActivitySceneComponentKey" predicate:v5];
  }
}

- (void)dealloc
{
  [(NSMapTable *)self->_dependencyRecognizersPerWindow removeAllObjects];
  [(NSMapTable *)self->_recognizersPerWindow removeAllObjects];
  [(BSAbsoluteMachTimer *)self->_delayedGestureActionTimer invalidate];
  delayedGestureActionTimer = self->_delayedGestureActionTimer;
  self->_delayedGestureActionTimer = 0;

  v4.receiver = self;
  v4.super_class = ACUISActivitySceneComponent;
  [(ACUISActivitySceneComponent *)&v4 dealloc];
}

- (ACUISActivitySceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  v14.receiver = self;
  v14.super_class = ACUISActivitySceneComponent;
  v5 = [(ACUISActivitySceneComponent *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    dependencyRecognizersPerWindow = v6->_dependencyRecognizersPerWindow;
    v6->_dependencyRecognizersPerWindow = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    recognizersPerWindow = v6->_recognizersPerWindow;
    v6->_recognizersPerWindow = weakToStrongObjectsMapTable2;

    if ([(ACUISActivitySceneComponent *)v6 isActivityScene:sceneCopy])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v6 selector:sel__windowDidBecomeVisible_ name:*MEMORY[0x1E69DE7B8] object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v6 selector:sel__windowBecameHidden_ name:*MEMORY[0x1E69DE7A8] object:0];
    }
  }

  return v6;
}

- (BOOL)isActivityScene:(id)scene
{
  session = [scene session];
  role = [session role];

  if ([role isEqualToString:@"ActivitySceneSessionRoleListItem"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [role isEqualToString:@"ActivitySceneSessionRoleAmbient"];
  }

  return v5;
}

- (void)_windowDidBecomeVisible:(id)visible
{
  visibleCopy = visible;
  v5 = _sceneComponentLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18E60F000, v5, OS_LOG_TYPE_DEFAULT, "windowBecameVisible", buf, 2u);
  }

  object = [visibleCopy object];

  if (object)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(NSMapTable *)self->_dependencyRecognizersPerWindow objectForKey:object];
      if (!v7)
      {
        v8 = [[ACUISDependencyGestureRecognizer alloc] initWithTarget:self action:sel__handleGestureDependencyChange_];
        v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{NSClassFromString(&cfstr_Mruslider.isa), 0}];
        [(ACUISDependencyGestureRecognizer *)v8 setObservedControlClasses:v9];

        rootViewController = [object rootViewController];
        view = [rootViewController view];
        [view addGestureRecognizer:v8];

        [(NSMapTable *)self->_dependencyRecognizersPerWindow setObject:v8 forKey:object];
      }

      v12 = [(NSMapTable *)self->_recognizersPerWindow objectForKey:object];
      if (!v12)
      {
        v13 = [[ACUISGestureRecognizer alloc] initWithTarget:self action:sel__handleGestureChange_];
        rootViewController2 = [object rootViewController];
        view2 = [rootViewController2 view];
        [view2 addGestureRecognizer:v13];

        [(NSMapTable *)self->_recognizersPerWindow setObject:v13 forKey:object];
      }
    }
  }
}

- (void)_windowBecameHidden:(id)hidden
{
  hiddenCopy = hidden;
  v5 = _sceneComponentLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_18E60F000, v5, OS_LOG_TYPE_DEFAULT, "_windowBecameHidden", v10, 2u);
  }

  object = [hiddenCopy object];

  v7 = [(NSMapTable *)self->_dependencyRecognizersPerWindow objectForKey:object];
  if (v7)
  {
    rootViewController = [object rootViewController];
    view = [rootViewController view];
    [view removeGestureRecognizer:v7];

    [(NSMapTable *)self->_dependencyRecognizersPerWindow removeObjectForKey:object];
  }
}

- (void)_handleGestureDependencyChange:(id)change
{
  if ([change state] == 3)
  {
    v4 = _sceneComponentLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_18E60F000, v4, OS_LOG_TYPE_DEFAULT, "UIControl was tapped", v8, 2u);
    }

    v5 = MEMORY[0x1E695DFD8];
    v6 = [[ACUISActivitySceneAction alloc] initWithCommand:1];
    v7 = [v5 setWithObject:v6];

    [(ACUISActivitySceneComponent *)self _sendActions:v7];
  }
}

- (void)_handleGestureState:(int64_t)state
{
  if (state == 3)
  {
    v4 = _sceneComponentLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_18E60F000, v4, OS_LOG_TYPE_DEFAULT, "Gesture ended", v11, 2u);
    }

    v6 = 3;
    goto LABEL_13;
  }

  if (state == 2)
  {
    v4 = _sceneComponentLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Gesture changed";
      v6 = 2;
      v7 = buf;
      goto LABEL_8;
    }

LABEL_9:
    v6 = 2;
    goto LABEL_13;
  }

  if (state != 1)
  {
    return;
  }

  v4 = _sceneComponentLogger();
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_9;
  }

  v13 = 0;
  v5 = "Gesture began";
  v6 = 2;
  v7 = &v13;
LABEL_8:
  _os_log_impl(&dword_18E60F000, v4, OS_LOG_TYPE_DEFAULT, v5, v7, 2u);
LABEL_13:

  v8 = MEMORY[0x1E695DFD8];
  v9 = [[ACUISActivitySceneAction alloc] initWithCommand:v6];
  v10 = [v8 setWithObject:v9];

  [(ACUISActivitySceneComponent *)self _sendActions:v10];
}

- (void)_handleGestureChange:(id)change
{
  changeCopy = change;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  state = [changeCopy state];
  if ((v14[3] | 2) == 3)
  {
    [(ACUISActivitySceneComponent *)self _handleGestureState:?];
  }

  else if (!self->_delayedGestureActionTimer)
  {
    objc_initWeak(&location, self);
    v5 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"ACUISActivitySceneComponent.delayedGestureActionTimer"];
    delayedGestureActionTimer = self->_delayedGestureActionTimer;
    self->_delayedGestureActionTimer = v5;

    v7 = self->_delayedGestureActionTimer;
    v8 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__ACUISActivitySceneComponent__handleGestureChange___block_invoke;
    v10[3] = &unk_1E7262778;
    objc_copyWeak(&v11, &location);
    v10[4] = &v13;
    [(BSAbsoluteMachTimer *)v7 scheduleWithFireInterval:v8 leewayInterval:v10 queue:1.0 handler:0.0];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v13, 8);
}

void __52__ACUISActivitySceneComponent__handleGestureChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleGestureState:*(*(*(a1 + 32) + 8) + 24)];
  if (WeakRetained)
  {
    [WeakRetained[4] invalidate];
    v2 = WeakRetained[4];
    WeakRetained[4] = 0;
  }
}

- (void)_sendActions:(id)actions
{
  actionsCopy = actions;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  _FBSScene = [WeakRetained _FBSScene];
  [_FBSScene sendActions:actionsCopy];
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end