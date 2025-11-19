@interface _EXSceneHostViewController
- (_EXSceneHostViewController)initWithExtensionProcess:(id)a3 sessionUUID:(id)a4 role:(id)a5;
- (void)loadView;
@end

@implementation _EXSceneHostViewController

- (_EXSceneHostViewController)initWithExtensionProcess:(id)a3 sessionUUID:(id)a4 role:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _EXSceneHostViewController;
  v12 = [(_EXSceneHostViewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionUUID, a4);
    objc_storeStrong(&v13->_extensionProcess, a3);
    objc_storeStrong(&v13->_role, a5);
  }

  return v13;
}

- (void)loadView
{
  v3 = [_EXSceneHostView alloc];
  v4 = [(_EXSceneHostViewController *)self extensionProcess];
  v5 = [(_EXSceneHostViewController *)self sessionUUID];
  v6 = [(_EXSceneHostView *)v3 initWithExtensionProcess:v4 sessionUUID:v5 role:self->_role];

  [(_EXSceneHostView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_EXSceneHostView *)v6 creatScene];
  [(_EXSceneHostViewController *)self setView:v6];
}

@end