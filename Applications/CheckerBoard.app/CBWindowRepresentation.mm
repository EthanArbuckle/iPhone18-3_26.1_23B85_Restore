@interface CBWindowRepresentation
+ (id)windowRepresentationForIdentifier:(id)identifier;
- (CBWindowDelegate)windowManager;
- (CBWindowRepresentation)initWithIdentifier:(id)identifier;
- (NSString)description;
- (void)didLaunchApp;
- (void)dismissViewControllerAnimated:(BOOL)animated;
- (void)setBackgroundTunnel:(BOOL)tunnel;
- (void)viewControllerDidDismiss;
- (void)willLaunchApp;
@end

@implementation CBWindowRepresentation

+ (id)windowRepresentationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy];

  return v5;
}

- (CBWindowRepresentation)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CBWindowRepresentation;
  v6 = [(CBWindowRepresentation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  identifier = [(CBWindowRepresentation *)self identifier];
  v5 = [NSString stringWithFormat:@"<%@:%p -> %@>", v3, self, identifier];

  return v5;
}

- (void)setBackgroundTunnel:(BOOL)tunnel
{
  tunnelCopy = tunnel;
  self->_backgroundTunnel = tunnel;
  windowManager = [(CBWindowRepresentation *)self windowManager];
  [windowManager window:self changedBackgroundTunnel:tunnelCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated
{
  windowManager = [(CBWindowRepresentation *)self windowManager];
  [windowManager windowWillDismiss:self];

  windowManager2 = [(CBWindowRepresentation *)self windowManager];
  [windowManager2 windowDidDismiss:self];
}

- (void)viewControllerDidDismiss
{
  windowManager = [(CBWindowRepresentation *)self windowManager];
  [windowManager windowWillDismiss:self];

  windowManager2 = [(CBWindowRepresentation *)self windowManager];
  [windowManager2 windowDidDismiss:self];
}

- (void)willLaunchApp
{
  windowManager = [(CBWindowRepresentation *)self windowManager];
  [windowManager windowWillAppear:self];
}

- (void)didLaunchApp
{
  windowManager = [(CBWindowRepresentation *)self windowManager];
  [windowManager windowDidAppear:self];
}

- (CBWindowDelegate)windowManager
{
  WeakRetained = objc_loadWeakRetained(&self->_windowManager);

  return WeakRetained;
}

@end