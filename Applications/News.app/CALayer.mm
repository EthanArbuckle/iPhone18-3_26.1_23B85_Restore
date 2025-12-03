@interface CALayer
- (id)_fr_undoInvertColorsFilter;
- (void)fr_accessibilityUndoInvertColorsIfNecessary;
@end

@implementation CALayer

- (void)fr_accessibilityUndoInvertColorsIfNecessary
{
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  _fr_undoInvertColorsFilter = [(CALayer *)self _fr_undoInvertColorsFilter];
  if (IsInvertColorsEnabled)
  {
    if (_fr_undoInvertColorsFilter)
    {
      goto LABEL_9;
    }

    v8 = [CAFilter filterWithType:kCAFilterColorInvert];
    [v8 setName:@"kFRAXUndoInvertColorsFilter"];
    filters = [(CALayer *)self filters];
    v6 = [filters mutableCopy];

    if (!v6)
    {
      v6 = objc_opt_new();
    }

    [v6 addObject:v8];
  }

  else
  {
    if (!_fr_undoInvertColorsFilter)
    {
      goto LABEL_9;
    }

    v8 = _fr_undoInvertColorsFilter;
    filters2 = [(CALayer *)self filters];
    v6 = [filters2 mutableCopy];

    [v6 removeObject:v8];
  }

  [(CALayer *)self setFilters:v6];

  _fr_undoInvertColorsFilter = v8;
LABEL_9:
}

- (id)_fr_undoInvertColorsFilter
{
  filters = [(CALayer *)self filters];
  v3 = [filters fc_firstObjectPassingTest:&stru_1000C2578];

  return v3;
}

@end