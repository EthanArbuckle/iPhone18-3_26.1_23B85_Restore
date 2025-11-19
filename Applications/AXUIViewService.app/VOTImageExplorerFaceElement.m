@interface VOTImageExplorerFaceElement
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation VOTImageExplorerFaceElement

- (id)accessibilityLabel
{
  v3 = [(VOTImageExplorerElement *)self feature];
  v4 = [v3 faceDetectionResult];
  v5 = [v4 name];

  v6 = [(VOTImageExplorerElement *)self feature];
  v7 = [v6 faceDetectionResult];
  v8 = [v7 attributes];

  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    v9 = [(VOTImageExplorerElement *)self feature];
    v10 = [v9 mediaAnalysisFaceDetectionResult];
    v11 = [v10 name];

    v12 = [(VOTImageExplorerElement *)self feature];
    v13 = [v12 mediaAnalysisFaceDetectionResult];
    v14 = [v13 attributes];

    v5 = v11;
    v8 = v14;
  }

  [v8 setExcludeOptions:{+[AXMVisionFeatureFaceAttributes defaultExcludeOptions](AXMVisionFeatureFaceAttributes, "defaultExcludeOptions")}];
  v17 = [v8 accessibilityLabelForAttributes];
  v15 = __UIAXStringForVariables();

  return v15;
}

- (id)accessibilityValue
{
  v3 = [(VOTImageExplorerElement *)self feature];
  v4 = +[AXMVisionFeature localizedStringForLocation:isSubjectImplicit:](AXMVisionFeature, "localizedStringForLocation:isSubjectImplicit:", [v3 locationUsingThirds:0 withFlippedYAxis:{-[VOTImageExplorerElement flippedYAxis](self, "flippedYAxis")}], 1);

  return v4;
}

- (CGRect)accessibilityFrame
{
  v3 = [(VOTImageExplorerFaceElement *)self accessibilityContainer];
  v4 = [(VOTImageExplorerElement *)self feature];
  [v4 normalizedFrame];
  [v3 frame];
  [(VOTImageExplorerElement *)self flippedYAxis];
  UIAccessibilityFrameForBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(VOTImageExplorerFaceElement *)self peopleFeature];

  if (v13)
  {
    v14 = [(VOTImageExplorerFaceElement *)self peopleFeature];
    [v14 normalizedFrame];
    [v3 frame];
    UIAccessibilityFrameForBounds();
    v16 = v15;
    v18 = v17;

    v12 = v18 - vabdd_f64(v16, v8);
  }

  v19 = v6;
  v20 = v8;
  v21 = v10;
  v22 = v12;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

@end