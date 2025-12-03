@interface PKPaletteTapToRadarScreenshotsExecution
- (void)run;
@end

@implementation PKPaletteTapToRadarScreenshotsExecution

- (void)run
{
  v9.receiver = self;
  v9.super_class = PKPaletteTapToRadarScreenshotsExecution;
  [(PKPaletteTapToRadarCommandExecution *)&v9 run];
  configuration = [(PKPaletteTapToRadarCommandExecution *)self configuration];
  debugSharpenerLog = [configuration debugSharpenerLog];

  v5 = [[PKTextInputDebugRadarViewController alloc] initWithSharpenerLog:debugSharpenerLog];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  [v6 setModalPresentationStyle:2];
  configuration2 = [(PKPaletteTapToRadarCommandExecution *)self configuration];
  presentationViewController = [configuration2 presentationViewController];
  [presentationViewController presentViewController:v6 animated:1 completion:0];
}

@end