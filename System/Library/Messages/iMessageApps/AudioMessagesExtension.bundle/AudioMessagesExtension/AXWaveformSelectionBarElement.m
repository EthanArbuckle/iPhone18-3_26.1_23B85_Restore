@interface AXWaveformSelectionBarElement
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)isWaveformOverview;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityIncreaseValue:(BOOL)a3 isThreeFingerScroll:(BOOL)a4;
@end

@implementation AXWaveformSelectionBarElement

- (BOOL)isWaveformOverview
{
  v5 = 0;
  v2 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v3 = [v2 safeValueForKey:@"_isOverView"];
  [v3 getValue:&v5];

  return v5;
}

- (id)accessibilityLabel
{
  v10 = 0;
  v3 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v4 = [v3 safeValueForKey:@"_insertMode"];
  [v4 getValue:&v10];

  if (v10 == 1)
  {
    if ([(AXWaveformSelectionBarElement *)self adjustsStartTime])
    {
      v5 = @"WAVEFORM_SELECTION_START_TIME_BAR";
    }

    else
    {
      v5 = @"WAVEFORM_SELECTION_END_TIME_BAR";
    }
  }

  else
  {
    v6 = [(AXWaveformSelectionBarElement *)self isWaveformOverview];
    v7 = [(AXWaveformSelectionBarElement *)self adjustsStartTime];
    if (v6)
    {
      if (v7)
      {
        v5 = @"AX_TRIM_OVERVIEW_WAVEFORM_START";
      }

      else
      {
        v5 = @"AX_TRIM_OVERVIEW_WAVEFORM_END";
      }
    }

    else if (v7)
    {
      v5 = @"AX_TRIM_DETAIL_WAVEFORM_START";
    }

    else
    {
      v5 = @"AX_TRIM_DETAIL_WAVEFORM_END";
    }
  }

  v8 = RCLocalizedFrameworkString(v5);

  return v8;
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
  v3 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v4 = [v3 safeValueForKey:@"_selectionRect"];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v14 = [v13 safeValueForKey:@"_xAdjustmentAmount"];
  [v14 floatValue];
  v16 = v15;

  if ([(AXWaveformSelectionBarElement *)self adjustsStartTime])
  {
    v27.origin.x = v6;
    v27.origin.y = v8;
    v27.size.width = v10;
    v27.size.height = v12;
    MaxX = CGRectGetMinX(v27) + v16;
  }

  else
  {
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    MaxX = CGRectGetMaxX(v28);
  }

  v18 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v29.size.width = 10.0;
  v29.origin.x = MaxX;
  v29.origin.y = v8;
  v29.size.height = v12;
  v30 = UIAccessibilityConvertFrameToScreenCoordinates(v29, v18);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AXWaveformSelectionBarElement;
  return UIAccessibilityTraitAdjustable | [(AXWaveformSelectionBarElement *)&v3 accessibilityTraits];
}

- (void)_accessibilityIncreaseValue:(BOOL)a3 isThreeFingerScroll:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v41 = 0.0;
  v42 = 0.0;
  v7 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v8 = [v7 safeValueForKey:@"_selectedTimeRange"];
  [v8 getValue:&v41];

  v10 = v41;
  v9 = v42;
  v40 = 0.0;
  v11 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v12 = [v11 safeValueForKey:@"_assetDuration"];
  [v12 getValue:&v40];

  v13 = [(AXWaveformSelectionBarElement *)self isWaveformOverview];
  v14 = 10.0;
  v15 = 6.0;
  if (!v13)
  {
    v15 = 10.0;
    v14 = 20.0;
  }

  if (v4)
  {
    v14 = v15;
  }

  v16 = v40 / v14;
  v17 = [(AXWaveformSelectionBarElement *)self adjustsStartTime];
  if (v5)
  {
    if (v17)
    {
      v18 = 0.0;
      if (v10 + v16 >= 0.0)
      {
        v18 = v10 + v16;
        if (v10 + v16 >= v9)
        {
          v18 = v9;
        }
      }

LABEL_13:
      v19 = RCTimeRangeMake(v18, v9);
      v21 = v20;
      v22 = 0;
      v23 = 1;
      goto LABEL_21;
    }

    v24 = v40;
    if (v9 + v16 <= v40)
    {
      v24 = v9 + v16;
    }
  }

  else
  {
    if (v17)
    {
      v18 = v10 - v16;
      if (v10 - v16 < 0.0)
      {
        v18 = 0.0;
      }

      goto LABEL_13;
    }

    v24 = v40;
    if (v9 - v16 <= v40)
    {
      v24 = v9 - v16;
      if (v9 - v16 <= v10)
      {
        v24 = v10;
      }
    }
  }

  v19 = RCTimeRangeMake(v10, v24);
  v21 = v25;
  v23 = 0;
  v22 = 1;
LABEL_21:
  if (!RCTimeRangeEqualToTimeRange(v41, v42, v19, v21))
  {
    v26 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
    v27 = [v26 safeValueForKey:@"_delegate"];
    v28 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
    [v27 waveformSelectionOverlay:v28 willChangeSelectedTimeRange:v23 isTrackingMin:v22 isTrackingMax:{v19, v21}];
    v30 = v29;
    v32 = v31;

    if (v30 >= 0.0 && v32 <= v40)
    {
      v34 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
      [v34 setSelectedTimeRange:{v30, v32}];
    }
  }

  v35 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v36 = [v35 safeValueForKey:@"_delegate"];
  v37 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  [v36 waveformSelectionOverlay:v37 didFinishTrackingSelectionBeginTime:v23 endTime:v22 assetCurrentTime:0];

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, self);
  v38 = UIAccessibilityAnnouncementNotification;
  v39 = [(AXWaveformSelectionBarElement *)self accessibilityValue];
  UIAccessibilityPostNotification(v38, v39);
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = 0;
  if (a3 == 3)
  {
    goto LABEL_4;
  }

  if (a3 == 4)
  {
    v5 = 1;
LABEL_4:
    [(AXWaveformSelectionBarElement *)self _accessibilityIncreaseValue:v5 isThreeFingerScroll:1, v3, v4];
    LOBYTE(v5) = 1;
  }

  return v5;
}

@end