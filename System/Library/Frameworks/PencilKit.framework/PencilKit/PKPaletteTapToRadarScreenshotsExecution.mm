@interface PKPaletteTapToRadarScreenshotsExecution
- (void)run;
@end

@implementation PKPaletteTapToRadarScreenshotsExecution

- (void)run
{
  v9.receiver = self;
  v9.super_class = PKPaletteTapToRadarScreenshotsExecution;
  [(PKPaletteTapToRadarCommandExecution *)&v9 run];
  v3 = [(PKPaletteTapToRadarCommandExecution *)self configuration];
  v4 = [v3 debugSharpenerLog];

  v5 = [[PKTextInputDebugRadarViewController alloc] initWithSharpenerLog:v4];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  [v6 setModalPresentationStyle:2];
  v7 = [(PKPaletteTapToRadarCommandExecution *)self configuration];
  v8 = [v7 presentationViewController];
  [v8 presentViewController:v6 animated:1 completion:0];
}

@end