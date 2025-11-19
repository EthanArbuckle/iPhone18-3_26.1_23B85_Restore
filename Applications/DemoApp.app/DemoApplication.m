@interface DemoApplication
- (void)applicationDidFinishLaunching:(id)a3;
- (void)sendEvent:(id)a3;
@end

@implementation DemoApplication

- (void)applicationDidFinishLaunching:(id)a3
{
  v4 = [UIWindow alloc];
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v6 = [v4 initWithFrame:?];
  window = self->_window;
  self->_window = v6;

  v8 = [[DemoPlayerViewController alloc] initWithNibName:0 bundle:0];
  playerViewController = self->_playerViewController;
  self->_playerViewController = v8;

  [(UIWindow *)self->_window setRootViewController:self->_playerViewController];
  v10 = self->_window;

  [(UIWindow *)v10 makeKeyAndVisible];
}

- (void)sendEvent:(id)a3
{
  v6.receiver = self;
  v6.super_class = DemoApplication;
  v4 = a3;
  [(DemoApplication *)&v6 sendEvent:v4];
  v5 = [v4 type];

  if (!v5)
  {
    [(DemoApplication *)self suspend];
  }
}

@end