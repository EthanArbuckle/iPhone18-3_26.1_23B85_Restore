@interface VOTImageExplorerDocumentElement
- (id)accessibilityLabel;
- (id)description;
@end

@implementation VOTImageExplorerDocumentElement

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  accessibilityLabel = [(VOTImageExplorerDocumentElement *)self accessibilityLabel];
  [(VOTImageExplorerElement *)self accessibilityFrame];
  v6 = NSStringFromCGRect(v10);
  v7 = [NSString stringWithFormat:@"%@, Label: %@, Frame: %@", v4, accessibilityLabel, v6];

  return v7;
}

- (id)accessibilityLabel
{
  feature = [(VOTImageExplorerElement *)self feature];
  v3 = +[AXMVisionFeature nameForOCRType:](AXMVisionFeature, "nameForOCRType:", [feature ocrFeatureType]);

  return v3;
}

@end