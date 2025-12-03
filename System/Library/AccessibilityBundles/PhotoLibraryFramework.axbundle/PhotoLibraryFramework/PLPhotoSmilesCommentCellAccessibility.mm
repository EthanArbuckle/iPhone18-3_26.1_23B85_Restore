@interface PLPhotoSmilesCommentCellAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
@end

@implementation PLPhotoSmilesCommentCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(PLPhotoSmilesCommentCellAccessibility *)self safeValueForKey:@"_smileContentLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(PLPhotoSmilesCommentCellAccessibility *)self safeValueForKey:@"smileImageButton"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end