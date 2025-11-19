@interface AXMeasureLabelAccessibilityElement
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrameInContainerSpace;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)labelRender;
- (unint64_t)accessibilityTraits;
@end

@implementation AXMeasureLabelAccessibilityElement

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v3 = [(AXMeasureLabelAccessibilityElement *)self labelRender];
  v4 = [v3 safeValueForKey:@"labelNode"];
  v5 = __UIAccessibilityCastAsClass();

  if (v5)
  {
    [v5 alpha];
    v7 = v6 > 0.0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)accessibilityLabel
{
  v3 = [(AXMeasureLabelAccessibilityElement *)self labelRender];
  v4 = [v3 safeIntegerForKey:@"state"] - 3;

  if (v4 < 2)
  {
    v5 = @"CURRENT_MEASUREMENT";
LABEL_7:
    v6 = accessibilityLocalizedString(v5);
    goto LABEL_8;
  }

  if ([(AXMeasureLabelAccessibilityElement *)self isRectangleArea])
  {
    v5 = @"RECTANGLE_AREA";
    goto LABEL_7;
  }

  if ([(AXMeasureLabelAccessibilityElement *)self isRectangleSideLength])
  {
    v5 = @"RECTANGLE_SIDE_LENGTH";
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)accessibilityValue
{
  v2 = [(AXMeasureLabelAccessibilityElement *)self labelRender];
  v3 = [v2 safeStringForKey:@"speakableString"];

  return v3;
}

- (CGRect)accessibilityFrameInContainerSpace
{
  v2 = [(AXMeasureLabelAccessibilityElement *)self labelRender];
  [v2 safeCGRectForKey:@"accessibilityFrameForLabelContainer"];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7FA0];
  v3 = [(AXMeasureLabelAccessibilityElement *)self labelRender];
  v4 = [v3 safeIntegerForKey:@"state"] - 3;

  v5 = MEMORY[0x29EDC7FF0];
  if (v4 >= 2)
  {
    v5 = MEMORY[0x29EDC7F70];
  }

  return *v5 | v2;
}

- (id)labelRender
{
  WeakRetained = objc_loadWeakRetained(&self->_labelRender);

  return WeakRetained;
}

@end