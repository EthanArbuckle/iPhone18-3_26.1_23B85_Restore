@interface SBPictureInPictureWindowAccessibility
- (CGRect)accessibilityFrame;
@end

@implementation SBPictureInPictureWindowAccessibility

- (CGRect)accessibilityFrame
{
  v3 = NSClassFromString(&cfstr_Pglayerhostvie.isa);
  if (v3 && ([(SBPictureInPictureWindowAccessibility *)self _accessibilityDescendantOfType:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    [v4 accessibilityFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = SBPictureInPictureWindowAccessibility;
    [(SBPictureInPictureWindowAccessibility *)&v22 accessibilityFrame];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

@end