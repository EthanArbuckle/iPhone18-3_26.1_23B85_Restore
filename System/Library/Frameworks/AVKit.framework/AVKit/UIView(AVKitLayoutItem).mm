@interface UIView(AVKitLayoutItem)
- (id)avkit_constraintsFromCenterAnchorsToCenterAnchorsOfItem:()AVKitLayoutItem;
- (id)avkit_constraintsFromCenterAndDimensionAnchorsToCenterAndDimensionAnchorsOfItem:()AVKitLayoutItem;
- (id)avkit_constraintsFromDimensionAnchorsToSize:()AVKitLayoutItem;
@end

@implementation UIView(AVKitLayoutItem)

- (id)avkit_constraintsFromCenterAndDimensionAnchorsToCenterAndDimensionAnchorsOfItem:()AVKitLayoutItem
{
  v19[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  centerXAnchor = [self centerXAnchor];
  centerXAnchor2 = [v4 centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v19[0] = v16;
  centerYAnchor = [self centerYAnchor];
  centerYAnchor2 = [v4 centerYAnchor];
  v7 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v19[1] = v7;
  widthAnchor = [self widthAnchor];
  widthAnchor2 = [v4 widthAnchor];
  v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v19[2] = v10;
  heightAnchor = [self heightAnchor];
  heightAnchor2 = [v4 heightAnchor];

  v13 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];

  return v14;
}

- (id)avkit_constraintsFromCenterAnchorsToCenterAnchorsOfItem:()AVKitLayoutItem
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  centerXAnchor = [self centerXAnchor];
  centerXAnchor2 = [v4 centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v13[0] = v7;
  centerYAnchor = [self centerYAnchor];
  centerYAnchor2 = [v4 centerYAnchor];

  v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  return v11;
}

- (id)avkit_constraintsFromDimensionAnchorsToSize:()AVKitLayoutItem
{
  v12[2] = *MEMORY[0x1E69E9840];
  widthAnchor = [self widthAnchor];
  v7 = [widthAnchor constraintEqualToConstant:a2];
  v12[0] = v7;
  heightAnchor = [self heightAnchor];
  v9 = [heightAnchor constraintEqualToConstant:a3];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  return v10;
}

@end