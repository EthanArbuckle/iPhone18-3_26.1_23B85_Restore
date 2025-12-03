@interface ICSinglePixelLineView
- (id)addSizeConstraint;
- (id)findSizeLayoutConstraintIfExists;
- (void)setUpHeightConstraintIfNecessary;
- (void)updateConstraints;
@end

@implementation ICSinglePixelLineView

- (void)updateConstraints
{
  [(ICSinglePixelLineView *)self setUpHeightConstraintIfNecessary];
  v3.receiver = self;
  v3.super_class = ICSinglePixelLineView;
  [(ICSinglePixelLineView *)&v3 updateConstraints];
}

- (void)setUpHeightConstraintIfNecessary
{
  if (![(ICSinglePixelLineView *)self hasSetUpSizeConstraint])
  {
    v3 = +[UIColor tableSeparatorLightColor];
    [(ICSinglePixelLineView *)self setBackgroundColor:v3];

    v4 = +[UIScreen mainScreen];
    [v4 scale];
    v6 = 1.0 / v5;

    findSizeLayoutConstraintIfExists = [(ICSinglePixelLineView *)self findSizeLayoutConstraintIfExists];
    if (!findSizeLayoutConstraintIfExists)
    {
      findSizeLayoutConstraintIfExists = [(ICSinglePixelLineView *)self addSizeConstraint];
    }

    v8 = findSizeLayoutConstraintIfExists;
    [findSizeLayoutConstraintIfExists setConstant:v6];
    [(ICSinglePixelLineView *)self setHasSetUpSizeConstraint:1];
  }
}

- (id)findSizeLayoutConstraintIfExists
{
  sizeLayoutAttribute = [(ICSinglePixelLineView *)self sizeLayoutAttribute];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  constraints = [(ICSinglePixelLineView *)self constraints];
  v5 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v16;
  do
  {
    v9 = 0;
    do
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(constraints);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      if ([v10 firstAttribute] == sizeLayoutAttribute)
      {
        firstItem = [v10 firstItem];
        if (firstItem != self)
        {
          goto LABEL_8;
        }

        secondItem = [v10 secondItem];

        if (!secondItem)
        {
          firstItem = v7;
          v7 = v10;
LABEL_8:
        }
      }

      v9 = v9 + 1;
    }

    while (v6 != v9);
    v13 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
    v6 = v13;
  }

  while (v13);
LABEL_16:

  return v7;
}

- (id)addSizeConstraint
{
  sizeLayoutAttribute = [(ICSinglePixelLineView *)self sizeLayoutAttribute];
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = [NSLayoutConstraint constraintWithItem:self attribute:sizeLayoutAttribute relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0 / v5];

  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  [NSLayoutConstraint activateConstraints:v7];

  return v6;
}

@end