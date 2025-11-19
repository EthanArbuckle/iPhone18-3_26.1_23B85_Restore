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
  v18 = [a1 centerXAnchor];
  v17 = [v4 centerXAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v19[0] = v16;
  v5 = [a1 centerYAnchor];
  v6 = [v4 centerYAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [a1 widthAnchor];
  v9 = [v4 widthAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[2] = v10;
  v11 = [a1 heightAnchor];
  v12 = [v4 heightAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];

  return v14;
}

- (id)avkit_constraintsFromCenterAnchorsToCenterAnchorsOfItem:()AVKitLayoutItem
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 centerXAnchor];
  v6 = [v4 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v13[0] = v7;
  v8 = [a1 centerYAnchor];
  v9 = [v4 centerYAnchor];

  v10 = [v8 constraintEqualToAnchor:v9];
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  return v11;
}

- (id)avkit_constraintsFromDimensionAnchorsToSize:()AVKitLayoutItem
{
  v12[2] = *MEMORY[0x1E69E9840];
  v6 = [a1 widthAnchor];
  v7 = [v6 constraintEqualToConstant:a2];
  v12[0] = v7;
  v8 = [a1 heightAnchor];
  v9 = [v8 constraintEqualToConstant:a3];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  return v10;
}

@end