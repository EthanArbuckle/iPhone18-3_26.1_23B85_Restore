@interface ASTDwellMovementToleranceSliderCell
- (ASTDwellMovementToleranceSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (double)initialValue;
- (double)maximumValue;
- (double)minimumValue;
- (id)accessibilityValue;
- (void)handleSliderBeingDragged:(id)dragged;
@end

@implementation ASTDwellMovementToleranceSliderCell

- (ASTDwellMovementToleranceSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  identifierCopy = identifier;
  specifierCopy = specifier;
  v30.receiver = self;
  v30.super_class = ASTDwellMovementToleranceSliderCell;
  v10 = [(ASTDwellMovementToleranceSliderCell *)&v30 initWithStyle:style reuseIdentifier:identifierCopy specifier:specifierCopy];
  if (v10)
  {
    v11 = [specifierCopy propertyForKey:@"DwellMovementToleranceClientType"];

    if (v11)
    {
      v12 = [specifierCopy propertyForKey:@"DwellMovementToleranceClientType"];
      v10->_clientType = [v12 unsignedIntegerValue];

      [(ASTDwellMovementToleranceSliderCell *)v10 minimumValue];
      v14 = v13;
      slider = [(ASTDwellMovementToleranceSliderCell *)v10 slider];
      *&v16 = v14;
      [slider setMinimumValue:v16];

      [(ASTDwellMovementToleranceSliderCell *)v10 maximumValue];
      v18 = v17;
      slider2 = [(ASTDwellMovementToleranceSliderCell *)v10 slider];
      *&v20 = v18;
      [slider2 setMaximumValue:v20];

      [(ASTDwellMovementToleranceSliderCell *)v10 initialValue];
      v22 = v21;
      slider3 = [(ASTDwellMovementToleranceSliderCell *)v10 slider];
      *&v24 = v22;
      [slider3 setValue:v24];

      objc_initWeak(&location, v10);
      slider4 = [(ASTDwellMovementToleranceSliderCell *)v10 slider];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = __79__ASTDwellMovementToleranceSliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke;
      v27[3] = &unk_255F00;
      objc_copyWeak(&v28, &location);
      [slider4 setAccessibilityValueBlock:v27];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }

  return v10;
}

id __79__ASTDwellMovementToleranceSliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessibilityValue];

  return v2;
}

- (void)handleSliderBeingDragged:(id)dragged
{
  draggedCopy = dragged;
  [draggedCopy value];
  [draggedCopy setValue:0 animated:?];
  [draggedCopy value];
  v6 = v5;

  v7 = roundf(v6);
  clientType = [(ASTDwellMovementToleranceSliderCell *)self clientType];
  if (clientType)
  {
    if (clientType != 1)
    {
      return;
    }

    v9 = +[AXSettings sharedInstance];
    [v9 setSwitchControlCameraPointPickerDwellMovementToleranceRadius:v7];
  }

  else
  {
    v9 = +[AXSettings sharedInstance];
    [v9 setAssistiveTouchMouseDwellControlMovementToleranceRadius:v7];
  }
}

- (double)maximumValue
{
  clientType = [(ASTDwellMovementToleranceSliderCell *)self clientType];
  if (clientType)
  {
    if (clientType != 1)
    {
      return result;
    }

    v4 = &kAXSSwitchControlHeadTrackingDwellMovementToleranceMax;
  }

  else
  {
    v4 = &kAXSAssistiveTouchMouseDwellControlMovementToleranceMax;
  }

  return *v4;
}

- (double)minimumValue
{
  clientType = [(ASTDwellMovementToleranceSliderCell *)self clientType];
  if (clientType)
  {
    if (clientType != 1)
    {
      return result;
    }

    v4 = &kAXSSwitchControlHeadTrackingDwellMovementToleranceMin;
  }

  else
  {
    v4 = &kAXSAssistiveTouchMouseDwellControlMovementToleranceMin;
  }

  return *v4;
}

- (double)initialValue
{
  clientType = [(ASTDwellMovementToleranceSliderCell *)self clientType];
  if (!clientType)
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchMouseDwellControlMovementToleranceRadius];
    goto LABEL_5;
  }

  if (clientType == 1)
  {
    v4 = +[AXSettings sharedInstance];
    [v4 switchControlCameraPointPickerDwellMovementToleranceRadius];
LABEL_5:
    v2 = v5;
  }

  return v2;
}

- (id)accessibilityValue
{
  v3 = [NSNumber alloc];
  [(ASTDwellMovementToleranceSliderCell *)self initialValue];
  v5 = v4 + v4;
  *&v5 = v5;
  v6 = [v3 initWithFloat:v5];
  v7 = settingsLocString(@"NUMBER_OF_POINTS", @"HandSettings");
  v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v7, [v6 intValue]);

  return v8;
}

@end