@interface VOTImageExplorerDocumentElement
- (id)accessibilityLabel;
- (id)description;
@end

@implementation VOTImageExplorerDocumentElement

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(VOTImageExplorerDocumentElement *)self accessibilityLabel];
  [(VOTImageExplorerElement *)self accessibilityFrame];
  v6 = NSStringFromCGRect(v10);
  v7 = [NSString stringWithFormat:@"%@, Label: %@, Frame: %@", v4, v5, v6];

  return v7;
}

- (id)accessibilityLabel
{
  v2 = [(VOTImageExplorerElement *)self feature];
  v3 = +[AXMVisionFeature nameForOCRType:](AXMVisionFeature, "nameForOCRType:", [v2 ocrFeatureType]);

  return v3;
}

@end