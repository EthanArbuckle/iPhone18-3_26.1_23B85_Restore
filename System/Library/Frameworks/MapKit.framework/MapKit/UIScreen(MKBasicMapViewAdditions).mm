@interface UIScreen(MKBasicMapViewAdditions)
- (id)_mapkit_display;
@end

@implementation UIScreen(MKBasicMapViewAdditions)

- (id)_mapkit_display
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];

  if (v2 == a1)
  {
    v8 = [MEMORY[0x1E6979328] mainDisplay];
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
    v4 = [a1 displayLinkWithTarget:v3 selector:sel_isEqual_];

    v5 = [v4 display];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E6979328] mainDisplay];
    }

    v8 = v7;
  }

  return v8;
}

@end