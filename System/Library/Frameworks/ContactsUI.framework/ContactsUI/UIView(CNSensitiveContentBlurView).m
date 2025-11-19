@interface UIView(CNSensitiveContentBlurView)
- (id)constrainViewToEdgesConstraints:()CNSensitiveContentBlurView;
@end

@implementation UIView(CNSensitiveContentBlurView)

- (id)constrainViewToEdgesConstraints:()CNSensitiveContentBlurView
{
  v19[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = [v4 topAnchor];
  v17 = [a1 topAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v19[0] = v16;
  v5 = [v4 bottomAnchor];
  v6 = [a1 bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [v4 leadingAnchor];
  v9 = [a1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[2] = v10;
  v11 = [v4 trailingAnchor];

  v12 = [a1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];

  return v14;
}

@end