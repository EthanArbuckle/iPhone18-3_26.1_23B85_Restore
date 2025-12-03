@interface VOTImageExplorerFaceElement
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation VOTImageExplorerFaceElement

- (id)accessibilityLabel
{
  feature = [(VOTImageExplorerElement *)self feature];
  faceDetectionResult = [feature faceDetectionResult];
  name = [faceDetectionResult name];

  feature2 = [(VOTImageExplorerElement *)self feature];
  faceDetectionResult2 = [feature2 faceDetectionResult];
  attributes = [faceDetectionResult2 attributes];

  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    feature3 = [(VOTImageExplorerElement *)self feature];
    mediaAnalysisFaceDetectionResult = [feature3 mediaAnalysisFaceDetectionResult];
    name2 = [mediaAnalysisFaceDetectionResult name];

    feature4 = [(VOTImageExplorerElement *)self feature];
    mediaAnalysisFaceDetectionResult2 = [feature4 mediaAnalysisFaceDetectionResult];
    attributes2 = [mediaAnalysisFaceDetectionResult2 attributes];

    name = name2;
    attributes = attributes2;
  }

  [attributes setExcludeOptions:{+[AXMVisionFeatureFaceAttributes defaultExcludeOptions](AXMVisionFeatureFaceAttributes, "defaultExcludeOptions")}];
  accessibilityLabelForAttributes = [attributes accessibilityLabelForAttributes];
  v15 = __UIAXStringForVariables();

  return v15;
}

- (id)accessibilityValue
{
  feature = [(VOTImageExplorerElement *)self feature];
  v4 = +[AXMVisionFeature localizedStringForLocation:isSubjectImplicit:](AXMVisionFeature, "localizedStringForLocation:isSubjectImplicit:", [feature locationUsingThirds:0 withFlippedYAxis:{-[VOTImageExplorerElement flippedYAxis](self, "flippedYAxis")}], 1);

  return v4;
}

- (CGRect)accessibilityFrame
{
  accessibilityContainer = [(VOTImageExplorerFaceElement *)self accessibilityContainer];
  feature = [(VOTImageExplorerElement *)self feature];
  [feature normalizedFrame];
  [accessibilityContainer frame];
  [(VOTImageExplorerElement *)self flippedYAxis];
  UIAccessibilityFrameForBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  peopleFeature = [(VOTImageExplorerFaceElement *)self peopleFeature];

  if (peopleFeature)
  {
    peopleFeature2 = [(VOTImageExplorerFaceElement *)self peopleFeature];
    [peopleFeature2 normalizedFrame];
    [accessibilityContainer frame];
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