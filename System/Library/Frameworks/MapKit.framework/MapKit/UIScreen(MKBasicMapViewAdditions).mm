@interface UIScreen(MKBasicMapViewAdditions)
- (id)_mapkit_display;
@end

@implementation UIScreen(MKBasicMapViewAdditions)

- (id)_mapkit_display
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];

  if (mainScreen == self)
  {
    mainDisplay = [MEMORY[0x1E6979328] mainDisplay];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v4 = [self displayLinkWithTarget:null selector:sel_isEqual_];

    display = [v4 display];
    v6 = display;
    if (display)
    {
      mainDisplay2 = display;
    }

    else
    {
      mainDisplay2 = [MEMORY[0x1E6979328] mainDisplay];
    }

    mainDisplay = mainDisplay2;
  }

  return mainDisplay;
}

@end