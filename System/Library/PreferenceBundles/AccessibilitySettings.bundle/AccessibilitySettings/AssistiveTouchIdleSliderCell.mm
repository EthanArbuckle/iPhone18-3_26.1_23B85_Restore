@interface AssistiveTouchIdleSliderCell
- (double)initialValue;
- (void)_updateRightLabelWithValue:(double)value;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AssistiveTouchIdleSliderCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = AssistiveTouchIdleSliderCell;
  [(AssistiveTouchIdleSliderCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(AssistiveTouchIdleSliderCell *)self initialValue];
  [(AssistiveTouchIdleSliderCell *)self _updateRightLabelWithValue:?];
}

- (void)_updateRightLabelWithValue:(double)value
{
  v4 = AXFormatFloatWithPercentage();
  [(AssistiveTouchIdleSliderCell *)self setLabelText:v4];

  v5 = objc_initWeak(&location, self);
  slider = [(AssistiveTouchIdleSliderCell *)self slider];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __59__AssistiveTouchIdleSliderCell__updateRightLabelWithValue___block_invoke;
  v7[3] = &unk_255F00;
  objc_copyWeak(&v8, &location);
  [slider _setAccessibilityValueBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

id __59__AssistiveTouchIdleSliderCell__updateRightLabelWithValue___block_invoke(uint64_t a1)
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
  v6 = v5;
  v7 = +[AXSettings sharedInstance];
  [v7 setAssistiveTouchIdleOpacity:v6];

  [draggedCopy value];
  v9 = v8;

  [(AssistiveTouchIdleSliderCell *)self _updateRightLabelWithValue:v9];
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  [drag value];
  v4 = v3;
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchIdleOpacity:v4];
}

- (double)initialValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchIdleOpacity];
  v4 = v3;

  return v4;
}

@end