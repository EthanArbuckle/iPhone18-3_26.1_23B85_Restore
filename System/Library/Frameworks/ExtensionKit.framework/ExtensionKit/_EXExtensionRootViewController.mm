@interface _EXExtensionRootViewController
- (void)embedViewController:(id)controller;
@end

@implementation _EXExtensionRootViewController

- (void)embedViewController:(id)controller
{
  v25[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  embededViewController = [(_EXExtensionRootViewController *)self embededViewController];
  if (controllerCopy)
  {
    view = [controllerCopy view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    view2 = [(_EXExtensionRootViewController *)self view];
    [view2 addSubview:view];

    view3 = [(_EXExtensionRootViewController *)self view];
    v18 = MEMORY[0x1E696ACD8];
    leftAnchor = [view leftAnchor];
    leftAnchor2 = [view3 leftAnchor];
    v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v25[0] = v21;
    topAnchor = [view topAnchor];
    topAnchor2 = [view3 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[1] = v17;
    rightAnchor = [view rightAnchor];
    rightAnchor2 = [view3 rightAnchor];
    v10 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v25[2] = v10;
    bottomAnchor = [view bottomAnchor];
    [view3 bottomAnchor];
    v12 = v24 = embededViewController;
    v13 = [bottomAnchor constraintEqualToAnchor:v12];
    v25[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v18 activateConstraints:v14];

    embededViewController = v24;
    [(_EXExtensionRootViewController *)self setEmbededViewController:controllerCopy];
    [(_EXExtensionRootViewController *)self addChildViewController:controllerCopy];
  }

  if (embededViewController)
  {
    [embededViewController removeFromParentViewController];
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end