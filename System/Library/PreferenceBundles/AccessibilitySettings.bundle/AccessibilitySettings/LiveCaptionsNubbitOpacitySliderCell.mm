@interface LiveCaptionsNubbitOpacitySliderCell
- (double)initialValue;
- (void)_updateRightLabelWithValue:(double)value;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation LiveCaptionsNubbitOpacitySliderCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = LiveCaptionsNubbitOpacitySliderCell;
  [(LiveCaptionsNubbitOpacitySliderCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(LiveCaptionsNubbitOpacitySliderCell *)self initialValue];
  [(LiveCaptionsNubbitOpacitySliderCell *)self _updateRightLabelWithValue:?];
}

- (void)_updateRightLabelWithValue:(double)value
{
  v4 = AXFormatFloatWithPercentage();
  [(LiveCaptionsNubbitOpacitySliderCell *)self setLabelText:v4];

  v5 = objc_initWeak(&location, self);
  slider = [(LiveCaptionsNubbitOpacitySliderCell *)self slider];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __66__LiveCaptionsNubbitOpacitySliderCell__updateRightLabelWithValue___block_invoke;
  v7[3] = &unk_255F00;
  objc_copyWeak(&v8, &location);
  [slider _setAccessibilityValueBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

id __66__LiveCaptionsNubbitOpacitySliderCell__updateRightLabelWithValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initialValue];
  v2 = AXFormatFloatWithPercentage();

  return v2;
}

- (void)handleSliderBeingDragged:(id)dragged
{
  draggedCopy = dragged;
  [draggedCopy value];
  [draggedCopy setValue:0 animated:?];
  [draggedCopy value];
  [NSNumber numberWithFloat:?];
  _AXSLiveCaptionsSetNubbitIdleOpacity();
  [draggedCopy value];
  v6 = v5;

  [(LiveCaptionsNubbitOpacitySliderCell *)self _updateRightLabelWithValue:v6];
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  [drag value];
  [NSNumber numberWithFloat:?];

  _AXSLiveCaptionsSetNubbitIdleOpacity();
}

- (double)initialValue
{
  v2 = _AXSLiveCaptionsNubbitIdleOpacity();
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

@end