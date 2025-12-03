@interface VOTImageExplorerTextElement
- (AXMVisionFeature)parentTextFeature;
- (BOOL)isHeader;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)range;
- (CGRect)accessibilityFrame;
- (NSString)description;
- (_NSRange)accessibilityColumnRange;
- (_NSRange)accessibilityRowRange;
- (id)accessibilityLabel;
- (id)parentAccessibilityContainer;
@end

@implementation VOTImageExplorerTextElement

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  accessibilityLabel = [(VOTImageExplorerTextElement *)self accessibilityLabel];
  [(VOTImageExplorerTextElement *)self accessibilityFrame];
  v6 = NSStringFromCGRect(v10);
  v7 = [NSString stringWithFormat:@"%@, Label: %@, Frame: %@, Row: %li, Column: %li", v4, accessibilityLabel, v6, [(VOTImageExplorerTextElement *)self rowIndex], [(VOTImageExplorerTextElement *)self columnIndex]];

  return v7;
}

- (BOOL)isHeader
{
  feature = [(VOTImageExplorerElement *)self feature];
  v3 = [feature ocrFeatureType] == 12;

  return v3;
}

- (_NSRange)accessibilityRowRange
{
  rowIndex = [(VOTImageExplorerTextElement *)self rowIndex];
  v3 = 1;
  result.length = v3;
  result.location = rowIndex;
  return result;
}

- (_NSRange)accessibilityColumnRange
{
  columnIndex = [(VOTImageExplorerTextElement *)self columnIndex];
  v3 = 1;
  result.length = v3;
  result.location = columnIndex;
  return result;
}

- (id)accessibilityLabel
{
  feature = [(VOTImageExplorerElement *)self feature];
  value = [feature value];

  return value;
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ([(VOTImageExplorerTextElement *)self accessibilityContainerType]== 4)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    feature = [(VOTImageExplorerElement *)self feature];
    [feature boundingBoxForRange:{location, length}];

    parentAccessibilityContainer = [(VOTImageExplorerTextElement *)self parentAccessibilityContainer];
    [parentAccessibilityContainer frame];
    UIAccessibilityFrameForBounds();
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)accessibilityFrame
{
  parentAccessibilityContainer = [(VOTImageExplorerTextElement *)self parentAccessibilityContainer];
  parentTextFeature = [(VOTImageExplorerTextElement *)self parentTextFeature];
  ocrFeatureType = [parentTextFeature ocrFeatureType];

  if (ocrFeatureType == 16)
  {
    parentTextFeature2 = [(VOTImageExplorerTextElement *)self parentTextFeature];
    [parentTextFeature2 normalizedFrame];
    [parentAccessibilityContainer frame];
    [(VOTImageExplorerElement *)self flippedYAxis];

    UIAccessibilityFrameForBounds();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    feature = [(VOTImageExplorerElement *)self feature];
    [feature normalizedFrame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    flippedYAxis = [(VOTImageExplorerElement *)self flippedYAxis];
    v25 = 1.0 - v19 - v23;
    if (!flippedYAxis)
    {
      v25 = v19;
    }

    v26 = v14 * v25;

    v36.origin.x = v12 * v17;
    v36.origin.y = v26;
    v36.size.width = v12 * v21;
    v36.size.height = v14 * v23;
    v37 = CGRectOffset(v36, v8, v10);
  }

  else
  {
    feature2 = [(VOTImageExplorerElement *)self feature];
    [feature2 normalizedFrame];
    [parentAccessibilityContainer frame];
    [(VOTImageExplorerElement *)self flippedYAxis];

    UIAccessibilityFrameForBounds();
  }

  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;

  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (id)parentAccessibilityContainer
{
  accessibilityContainer = [(VOTImageExplorerTextElement *)self accessibilityContainer];
  v2AccessibilityContainer = [accessibilityContainer accessibilityContainer];

  return v2AccessibilityContainer;
}

- (AXMVisionFeature)parentTextFeature
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTextFeature);

  return WeakRetained;
}

@end