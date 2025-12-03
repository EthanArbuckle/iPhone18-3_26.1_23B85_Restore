@interface NSLayoutConstraint(NSLayoutConstraint_AVKitAdditions)
+ (id)avkit_constraintsFromEdgesOfItem:()NSLayoutConstraint_AVKitAdditions toEdgesOfItem:;
+ (id)avkit_constraintsFromEdgesOfItem:()NSLayoutConstraint_AVKitAdditions toLeadingAnchor:topAnchor:trailingAnchor:bottomAnchor:priority:;
+ (id)avkit_constraintsFromLeadingAndTrailingEdgesOfItem:()NSLayoutConstraint_AVKitAdditions toEdgesOfItem:;
+ (id)avkit_constraintsFromTopAndBottomEdgesOfItem:()NSLayoutConstraint_AVKitAdditions toEdgesOfItem:;
@end

@implementation NSLayoutConstraint(NSLayoutConstraint_AVKitAdditions)

+ (id)avkit_constraintsFromTopAndBottomEdgesOfItem:()NSLayoutConstraint_AVKitAdditions toEdgesOfItem:
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  topAnchor = [v6 topAnchor];
  topAnchor2 = [v5 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v15[0] = v9;
  bottomAnchor = [v6 bottomAnchor];

  bottomAnchor2 = [v5 bottomAnchor];

  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v15[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  return v13;
}

+ (id)avkit_constraintsFromLeadingAndTrailingEdgesOfItem:()NSLayoutConstraint_AVKitAdditions toEdgesOfItem:
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  leadingAnchor = [v6 leadingAnchor];
  leadingAnchor2 = [v5 leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v15[0] = v9;
  trailingAnchor = [v6 trailingAnchor];

  trailingAnchor2 = [v5 trailingAnchor];

  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v15[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  return v13;
}

+ (id)avkit_constraintsFromEdgesOfItem:()NSLayoutConstraint_AVKitAdditions toEdgesOfItem:
{
  v21[4] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  leadingAnchor = [v6 leadingAnchor];
  leadingAnchor2 = [v5 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v18;
  topAnchor = [v6 topAnchor];
  topAnchor2 = [v5 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[1] = v9;
  trailingAnchor = [v6 trailingAnchor];
  trailingAnchor2 = [v5 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[2] = v12;
  bottomAnchor = [v6 bottomAnchor];

  bottomAnchor2 = [v5 bottomAnchor];

  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];

  return v16;
}

+ (id)avkit_constraintsFromEdgesOfItem:()NSLayoutConstraint_AVKitAdditions toLeadingAnchor:topAnchor:trailingAnchor:bottomAnchor:priority:
{
  v32[4] = *MEMORY[0x1E69E9840];
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  leadingAnchor = [v17 leadingAnchor];
  *&v19 = self;
  v20 = [leadingAnchor avkit_constraintEqualToAnchor:v16 priority:v19];

  v32[0] = v20;
  topAnchor = [v17 topAnchor];
  *&v22 = self;
  v23 = [topAnchor avkit_constraintEqualToAnchor:v15 priority:v22];

  v32[1] = v23;
  trailingAnchor = [v17 trailingAnchor];
  *&v25 = self;
  v26 = [trailingAnchor avkit_constraintEqualToAnchor:v14 priority:v25];

  v32[2] = v26;
  bottomAnchor = [v17 bottomAnchor];

  *&v28 = self;
  v29 = [bottomAnchor avkit_constraintEqualToAnchor:v13 priority:v28];

  v32[3] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];

  return v30;
}

@end