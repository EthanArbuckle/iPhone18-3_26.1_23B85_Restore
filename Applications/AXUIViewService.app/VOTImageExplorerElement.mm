@interface VOTImageExplorerElement
- (CGRect)accessibilityFrame;
- (id)_accessibilityScrollStatus;
@end

@implementation VOTImageExplorerElement

- (CGRect)accessibilityFrame
{
  v3 = [(VOTImageExplorerElement *)self accessibilityContainer];
  v4 = [(VOTImageExplorerElement *)self feature];
  [v4 normalizedFrame];
  [v3 frame];
  [(VOTImageExplorerElement *)self flippedYAxis];

  UIAccessibilityFrameForBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)_accessibilityScrollStatus
{
  v3 = [(VOTImageExplorerElement *)self feature];
  v4 = +[AXMVisionFeature localizedStringForLocation:isSubjectImplicit:](AXMVisionFeature, "localizedStringForLocation:isSubjectImplicit:", [v3 locationUsingThirds:0 withFlippedYAxis:{-[VOTImageExplorerElement flippedYAxis](self, "flippedYAxis")}], 1);

  return v4;
}

@end