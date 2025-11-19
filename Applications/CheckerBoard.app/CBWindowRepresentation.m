@interface CBWindowRepresentation
+ (id)windowRepresentationForIdentifier:(id)a3;
- (CBWindowDelegate)windowManager;
- (CBWindowRepresentation)initWithIdentifier:(id)a3;
- (NSString)description;
- (void)didLaunchApp;
- (void)dismissViewControllerAnimated:(BOOL)a3;
- (void)setBackgroundTunnel:(BOOL)a3;
- (void)viewControllerDidDismiss;
- (void)willLaunchApp;
@end

@implementation CBWindowRepresentation

+ (id)windowRepresentationForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:v4];

  return v5;
}

- (CBWindowRepresentation)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CBWindowRepresentation;
  v6 = [(CBWindowRepresentation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(CBWindowRepresentation *)self identifier];
  v5 = [NSString stringWithFormat:@"<%@:%p -> %@>", v3, self, v4];

  return v5;
}

- (void)setBackgroundTunnel:(BOOL)a3
{
  v3 = a3;
  self->_backgroundTunnel = a3;
  v5 = [(CBWindowRepresentation *)self windowManager];
  [v5 window:self changedBackgroundTunnel:v3];
}

- (void)dismissViewControllerAnimated:(BOOL)a3
{
  v4 = [(CBWindowRepresentation *)self windowManager];
  [v4 windowWillDismiss:self];

  v5 = [(CBWindowRepresentation *)self windowManager];
  [v5 windowDidDismiss:self];
}

- (void)viewControllerDidDismiss
{
  v3 = [(CBWindowRepresentation *)self windowManager];
  [v3 windowWillDismiss:self];

  v4 = [(CBWindowRepresentation *)self windowManager];
  [v4 windowDidDismiss:self];
}

- (void)willLaunchApp
{
  v3 = [(CBWindowRepresentation *)self windowManager];
  [v3 windowWillAppear:self];
}

- (void)didLaunchApp
{
  v3 = [(CBWindowRepresentation *)self windowManager];
  [v3 windowDidAppear:self];
}

- (CBWindowDelegate)windowManager
{
  WeakRetained = objc_loadWeakRetained(&self->_windowManager);

  return WeakRetained;
}

@end