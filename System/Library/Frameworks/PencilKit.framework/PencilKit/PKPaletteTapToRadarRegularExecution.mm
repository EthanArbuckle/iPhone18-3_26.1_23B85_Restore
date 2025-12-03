@interface PKPaletteTapToRadarRegularExecution
- (void)_dismiss;
- (void)run;
@end

@implementation PKPaletteTapToRadarRegularExecution

- (void)run
{
  v23.receiver = self;
  v23.super_class = PKPaletteTapToRadarRegularExecution;
  [(PKPaletteTapToRadarCommandExecution *)&v23 run];
  configuration = [(PKPaletteTapToRadarCommandExecution *)self configuration];
  debugSharpenerLog = [configuration debugSharpenerLog];

  v5 = [[PKTextInputDebugRadarViewController alloc] initWithSharpenerLog:debugSharpenerLog];
  [(PKTextInputDebugRadarViewController *)v5 setDelegate:self];
  v6 = objc_alloc(MEMORY[0x1E69DD2E8]);
  configuration2 = [(PKPaletteTapToRadarCommandExecution *)self configuration];
  presentationViewController = [configuration2 presentationViewController];
  view = [presentationViewController view];
  window = [view window];
  windowScene = [window windowScene];
  v12 = [v6 initWithWindowScene:windowScene];
  window = self->_window;
  self->_window = v12;

  v14 = objc_alloc_init(MEMORY[0x1E69DD258]);
  [(UIWindow *)self->_window setRootViewController:v14];

  configuration3 = [(PKPaletteTapToRadarCommandExecution *)self configuration];
  presentationViewController2 = [configuration3 presentationViewController];
  view2 = [presentationViewController2 view];
  window2 = [view2 window];
  [window2 windowLevel];
  [(UIWindow *)self->_window setWindowLevel:v19 + -0.1];

  [(UIWindow *)self->_window makeKeyAndVisible];
  v20 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  [v20 setModalPresentationStyle:2];
  presentationController = [v20 presentationController];
  [presentationController setDelegate:self];

  rootViewController = [(UIWindow *)self->_window rootViewController];
  [rootViewController presentViewController:v20 animated:1 completion:0];
}

- (void)_dismiss
{
  [(UIWindow *)self->_window setHidden:1];
  window = self->_window;
  self->_window = 0;
}

@end