@interface SceneManager
- (SceneManager)init;
- (void)createInitialAppScene;
- (void)createInputUIScene;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context;
- (void)workspace:(id)workspace didAddScene:(id)scene;
- (void)workspace:(id)workspace willRemoveScene:(id)scene;
@end

@implementation SceneManager

- (SceneManager)init
{
  v13.receiver = self;
  v13.super_class = SceneManager;
  v3 = [(SceneManager *)&v13 self];

  if (v3)
  {
    v4 = [UIRootWindowScenePresentationBinder alloc];
    v5 = +[FBDisplayManager mainConfiguration];
    v6 = [v4 initWithPriority:0 displayConfiguration:v5];
    rootWindowScenePresentationBinder = v3->_rootWindowScenePresentationBinder;
    v3->_rootWindowScenePresentationBinder = v6;

    v8 = [[FBSceneWorkspace alloc] initWithIdentifier:@"com.apple.Device-Recovery-Assistant"];
    workspace = v3->_workspace;
    v3->_workspace = v8;

    [(FBSceneWorkspace *)v3->_workspace setDelegate:v3];
    v10 = objc_opt_new();
    scenes = v3->_scenes;
    v3->_scenes = v10;
  }

  return v3;
}

- (void)createInitialAppScene
{
  workspace = [(SceneManager *)self workspace];
  v3 = [workspace createScene:&stru_100028C98];

  [v3 updateSettings:&stru_100028CD8];
  [v3 activate:0];
}

- (void)createInputUIScene
{
  workspace = [(SceneManager *)self workspace];
  v3 = [workspace createScene:&stru_100028D18];

  +[FBDisplayManager mainConfiguration];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001022C;
  v6 = v5[3] = &unk_100028D40;
  v4 = v6;
  [v3 performUpdate:v5];
  [v3 activate:0];
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100012CD4(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  scenes = [(SceneManager *)self scenes];
  [scenes addObject:activateCopy];

  rootWindowScenePresentationBinder = [(SceneManager *)self rootWindowScenePresentationBinder];
  [rootWindowScenePresentationBinder addScene:activateCopy];
}

- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context
{
  deactivateCopy = deactivate;
  v6 = sub_100012608();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100012D4C(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  scenes = [(SceneManager *)self scenes];
  [scenes removeObject:deactivateCopy];

  rootWindowScenePresentationBinder = [(SceneManager *)self rootWindowScenePresentationBinder];
  [rootWindowScenePresentationBinder removeScene:deactivateCopy];
}

- (void)workspace:(id)workspace didAddScene:(id)scene
{
  sceneCopy = scene;
  v6 = sub_100012608();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100012DC4(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  [sceneCopy setDelegate:self];
}

- (void)workspace:(id)workspace willRemoveScene:(id)scene
{
  sceneCopy = scene;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100012E3C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  [sceneCopy setDelegate:0];
}

@end