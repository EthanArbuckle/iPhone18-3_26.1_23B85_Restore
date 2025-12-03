@interface UIView(CNSensitiveContentBlurView)
- (id)constrainViewToEdgesConstraints:()CNSensitiveContentBlurView;
@end

@implementation UIView(CNSensitiveContentBlurView)

- (id)constrainViewToEdgesConstraints:()CNSensitiveContentBlurView
{
  v19[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  topAnchor = [v4 topAnchor];
  topAnchor2 = [self topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19[0] = v16;
  bottomAnchor = [v4 bottomAnchor];
  bottomAnchor2 = [self bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[1] = v7;
  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [self leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[2] = v10;
  trailingAnchor = [v4 trailingAnchor];

  trailingAnchor2 = [self trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];

  return v14;
}

@end