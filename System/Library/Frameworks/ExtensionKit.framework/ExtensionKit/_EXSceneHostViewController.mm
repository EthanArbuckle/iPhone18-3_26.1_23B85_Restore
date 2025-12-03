@interface _EXSceneHostViewController
- (_EXSceneHostViewController)initWithExtensionProcess:(id)process sessionUUID:(id)d role:(id)role;
- (void)loadView;
@end

@implementation _EXSceneHostViewController

- (_EXSceneHostViewController)initWithExtensionProcess:(id)process sessionUUID:(id)d role:(id)role
{
  processCopy = process;
  dCopy = d;
  roleCopy = role;
  v15.receiver = self;
  v15.super_class = _EXSceneHostViewController;
  v12 = [(_EXSceneHostViewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionUUID, d);
    objc_storeStrong(&v13->_extensionProcess, process);
    objc_storeStrong(&v13->_role, role);
  }

  return v13;
}

- (void)loadView
{
  v3 = [_EXSceneHostView alloc];
  extensionProcess = [(_EXSceneHostViewController *)self extensionProcess];
  sessionUUID = [(_EXSceneHostViewController *)self sessionUUID];
  v6 = [(_EXSceneHostView *)v3 initWithExtensionProcess:extensionProcess sessionUUID:sessionUUID role:self->_role];

  [(_EXSceneHostView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_EXSceneHostView *)v6 creatScene];
  [(_EXSceneHostViewController *)self setView:v6];
}

@end