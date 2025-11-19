@interface SceneManager
- (SceneManager)init;
- (void)createInitialAppScene;
- (void)createInputUIScene;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4;
- (void)workspace:(id)a3 didAddScene:(id)a4;
- (void)workspace:(id)a3 willRemoveScene:(id)a4;
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
  v2 = [(SceneManager *)self workspace];
  v3 = [v2 createScene:&stru_100028C98];

  [v3 updateSettings:&stru_100028CD8];
  [v3 activate:0];
}

- (void)createInputUIScene
{
  v2 = [(SceneManager *)self workspace];
  v3 = [v2 createScene:&stru_100028D18];

  +[FBDisplayManager mainConfiguration];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001022C;
  v6 = v5[3] = &unk_100028D40;
  v4 = v6;
  [v3 performUpdate:v5];
  [v3 activate:0];
}

- (void)sceneDidActivate:(id)a3
{
  v4 = a3;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100012CD4(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = [(SceneManager *)self scenes];
  [v13 addObject:v4];

  v14 = [(SceneManager *)self rootWindowScenePresentationBinder];
  [v14 addScene:v4];
}

- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = sub_100012608();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100012D4C(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = [(SceneManager *)self scenes];
  [v14 removeObject:v5];

  v15 = [(SceneManager *)self rootWindowScenePresentationBinder];
  [v15 removeScene:v5];
}

- (void)workspace:(id)a3 didAddScene:(id)a4
{
  v5 = a4;
  v6 = sub_100012608();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100012DC4(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  [v5 setDelegate:self];
}

- (void)workspace:(id)a3 willRemoveScene:(id)a4
{
  v4 = a4;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100012E3C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  [v4 setDelegate:0];
}

@end