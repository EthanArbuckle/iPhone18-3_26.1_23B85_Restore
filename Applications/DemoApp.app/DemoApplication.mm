@interface DemoApplication
- (void)applicationDidFinishLaunching:(id)launching;
- (void)sendEvent:(id)event;
@end

@implementation DemoApplication

- (void)applicationDidFinishLaunching:(id)launching
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

- (void)sendEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = DemoApplication;
  eventCopy = event;
  [(DemoApplication *)&v6 sendEvent:eventCopy];
  type = [eventCopy type];

  if (!type)
  {
    [(DemoApplication *)self suspend];
  }
}

@end