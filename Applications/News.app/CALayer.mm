@interface CALayer
- (id)_fr_undoInvertColorsFilter;
- (void)fr_accessibilityUndoInvertColorsIfNecessary;
@end

@implementation CALayer

- (void)fr_accessibilityUndoInvertColorsIfNecessary
{
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  v4 = [(CALayer *)self _fr_undoInvertColorsFilter];
  if (IsInvertColorsEnabled)
  {
    if (v4)
    {
      goto LABEL_9;
    }

    v8 = [CAFilter filterWithType:kCAFilterColorInvert];
    [v8 setName:@"kFRAXUndoInvertColorsFilter"];
    v5 = [(CALayer *)self filters];
    v6 = [v5 mutableCopy];

    if (!v6)
    {
      v6 = objc_opt_new();
    }

    [v6 addObject:v8];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v8 = v4;
    v7 = [(CALayer *)self filters];
    v6 = [v7 mutableCopy];

    [v6 removeObject:v8];
  }

  [(CALayer *)self setFilters:v6];

  v4 = v8;
LABEL_9:
}

- (id)_fr_undoInvertColorsFilter
{
  v2 = [(CALayer *)self filters];
  v3 = [v2 fc_firstObjectPassingTest:&stru_1000C2578];

  return v3;
}

@end