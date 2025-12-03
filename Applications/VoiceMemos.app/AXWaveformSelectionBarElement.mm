@interface AXWaveformSelectionBarElement
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)isWaveformOverview;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityIncreaseValue:(BOOL)value isThreeFingerScroll:(BOOL)scroll;
@end

@implementation AXWaveformSelectionBarElement

- (BOOL)isWaveformOverview
{
  v5 = 0;
  accessibilityContainer = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v3 = [accessibilityContainer safeValueForKey:@"_isOverView"];
  [v3 getValue:&v5];

  return v5;
}

- (id)accessibilityLabel
{
  v7 = 0;
  accessibilityContainer = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v4 = [accessibilityContainer safeValueForKey:@"_insertMode"];
  [v4 getValue:&v7];

  if (v7 != 1)
  {
    [(AXWaveformSelectionBarElement *)self isWaveformOverview];
  }

  [(AXWaveformSelectionBarElement *)self adjustsStartTime];
  v5 = RCLocalizedFrameworkString();

  return v5;
}

- (id)accessibilityValue
{
  v3 = [(AXWaveformSelectionBarElement *)self accessibilityContainer:0];
  v4 = [v3 safeValueForKey:@"_selectedTimeRange"];
  [v4 getValue:&v7];

  [(AXWaveformSelectionBarElement *)self adjustsStartTime];
  v5 = UIAXTimeStringForDuration();

  return v5;
}

- (CGRect)accessibilityFrame
{
  accessibilityContainer = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  NSClassFromString(@"RCWaveformSelectionOverlay");
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    sub_1001B7158(self, a2);
  }

  accessibilityContainer2 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v7 = [accessibilityContainer2 safeValueForKey:@"_selectionRect"];
  [v7 CGRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  accessibilityContainer3 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v17 = [accessibilityContainer3 safeValueForKey:@"_xAdjustmentAmount"];
  [v17 floatValue];
  v19 = v18;

  if ([(AXWaveformSelectionBarElement *)self adjustsStartTime])
  {
    v30.origin.x = v9;
    v30.origin.y = v11;
    v30.size.width = v13;
    v30.size.height = v15;
    MaxX = CGRectGetMinX(v30) + v19;
  }

  else
  {
    v31.origin.x = v9;
    v31.origin.y = v11;
    v31.size.width = v13;
    v31.size.height = v15;
    MaxX = CGRectGetMaxX(v31);
  }

  accessibilityContainer4 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v32.size.width = 10.0;
  v32.origin.x = MaxX;
  v32.origin.y = v11;
  v32.size.height = v15;
  v33 = UIAccessibilityConvertFrameToScreenCoordinates(v32, accessibilityContainer4);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AXWaveformSelectionBarElement;
  return UIAccessibilityTraitAdjustable | [(AXWaveformSelectionBarElement *)&v3 accessibilityTraits];
}

- (void)_accessibilityIncreaseValue:(BOOL)value isThreeFingerScroll:(BOOL)scroll
{
  valueCopy = value;
  v34[0] = 0;
  v34[1] = 0;
  accessibilityContainer = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v7 = [accessibilityContainer safeValueForKey:@"_selectedTimeRange"];
  [v7 getValue:v34];

  v33 = 0.0;
  accessibilityContainer2 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v9 = [accessibilityContainer2 safeValueForKey:@"_assetDuration"];
  [v9 getValue:&v33];

  [(AXWaveformSelectionBarElement *)self isWaveformOverview];
  adjustsStartTime = [(AXWaveformSelectionBarElement *)self adjustsStartTime];
  if (valueCopy)
  {
    if (adjustsStartTime)
    {
      goto LABEL_5;
    }
  }

  else if (adjustsStartTime)
  {
LABEL_5:
    RCTimeRangeMake();
    v12 = v11;
    v14 = v13;
    v15 = 0;
    v16 = 1;
    goto LABEL_7;
  }

  RCTimeRangeMake();
  v12 = v17;
  v14 = v18;
  v16 = 0;
  v15 = 1;
LABEL_7:
  if ((RCTimeRangeEqualToTimeRange() & 1) == 0)
  {
    accessibilityContainer3 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
    v20 = [accessibilityContainer3 safeValueForKey:@"_delegate"];
    accessibilityContainer4 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
    [v20 waveformSelectionOverlay:accessibilityContainer4 willChangeSelectedTimeRange:v16 isTrackingMin:v15 isTrackingMax:{v12, v14}];
    v23 = v22;
    v25 = v24;

    if (v23 >= 0.0 && v25 <= v33)
    {
      accessibilityContainer5 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
      [accessibilityContainer5 setSelectedTimeRange:{v23, v25}];
    }
  }

  accessibilityContainer6 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v29 = [accessibilityContainer6 safeValueForKey:@"_delegate"];
  accessibilityContainer7 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  [v29 waveformSelectionOverlay:accessibilityContainer7 didFinishTrackingSelectionBeginTime:v16 endTime:v15 assetCurrentTime:0];

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, self);
  v31 = UIAccessibilityAnnouncementNotification;
  accessibilityValue = [(AXWaveformSelectionBarElement *)self accessibilityValue];
  UIAccessibilityPostNotification(v31, accessibilityValue);
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v5 = 0;
  if (scroll == 3)
  {
    goto LABEL_4;
  }

  if (scroll == 4)
  {
    v5 = 1;
LABEL_4:
    [(AXWaveformSelectionBarElement *)self _accessibilityIncreaseValue:v5 isThreeFingerScroll:1, v3, v4];
    LOBYTE(v5) = 1;
  }

  return v5;
}

@end