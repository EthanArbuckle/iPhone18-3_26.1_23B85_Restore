@interface MapsEdgeConstraints
+ (MapsEdgeConstraints)edgeConstraintsWithTop:(id)top leading:(id)leading bottom:(id)bottom trailing:(id)trailing;
+ (MapsEdgeConstraints)edgeConstraintsWithTop:(id)top left:(id)left bottom:(id)bottom right:(id)right;
- (NSArray)activeConstraints;
- (NSArray)allConstraints;
- (void)setConstantsFromEdgeInsets:(UIEdgeInsets)insets;
@end

@implementation MapsEdgeConstraints

- (NSArray)allConstraints
{
  v3 = [NSMutableArray arrayWithCapacity:4];
  topConstraint = [(MapsEdgeConstraints *)self topConstraint];

  if (topConstraint)
  {
    topConstraint2 = [(MapsEdgeConstraints *)self topConstraint];
    [v3 addObject:topConstraint2];
  }

  leftConstraint = [(MapsEdgeConstraints *)self leftConstraint];

  if (leftConstraint)
  {
    leftConstraint2 = [(MapsEdgeConstraints *)self leftConstraint];
  }

  else
  {
    leadingConstraint = [(MapsEdgeConstraints *)self leadingConstraint];

    if (!leadingConstraint)
    {
      goto LABEL_8;
    }

    leftConstraint2 = [(MapsEdgeConstraints *)self leadingConstraint];
  }

  v9 = leftConstraint2;
  [v3 addObject:leftConstraint2];

LABEL_8:
  bottomConstraint = [(MapsEdgeConstraints *)self bottomConstraint];

  if (bottomConstraint)
  {
    bottomConstraint2 = [(MapsEdgeConstraints *)self bottomConstraint];
    [v3 addObject:bottomConstraint2];
  }

  rightConstraint = [(MapsEdgeConstraints *)self rightConstraint];

  if (rightConstraint)
  {
    rightConstraint2 = [(MapsEdgeConstraints *)self rightConstraint];
  }

  else
  {
    trailingConstraint = [(MapsEdgeConstraints *)self trailingConstraint];

    if (!trailingConstraint)
    {
      goto LABEL_15;
    }

    rightConstraint2 = [(MapsEdgeConstraints *)self trailingConstraint];
  }

  v15 = rightConstraint2;
  [v3 addObject:rightConstraint2];

LABEL_15:
  v16 = [v3 copy];

  return v16;
}

- (void)setConstantsFromEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  topConstraint = [(MapsEdgeConstraints *)self topConstraint];
  [topConstraint setConstant:top];

  leadingConstraint = [(MapsEdgeConstraints *)self leadingConstraint];
  v10 = leadingConstraint;
  if (leadingConstraint)
  {
    [leadingConstraint setConstant:left];
  }

  else
  {
    leftConstraint = [(MapsEdgeConstraints *)self leftConstraint];
    [leftConstraint setConstant:left];
  }

  bottomConstraint = [(MapsEdgeConstraints *)self bottomConstraint];
  [bottomConstraint setConstant:bottom];

  trailingConstraint = [(MapsEdgeConstraints *)self trailingConstraint];
  v15 = trailingConstraint;
  if (trailingConstraint)
  {
    [trailingConstraint setConstant:right];
  }

  else
  {
    rightConstraint = [(MapsEdgeConstraints *)self rightConstraint];
    [rightConstraint setConstant:right];
  }
}

- (NSArray)activeConstraints
{
  v3 = [NSMutableArray arrayWithCapacity:4];
  topConstraint = [(MapsEdgeConstraints *)self topConstraint];
  isActive = [topConstraint isActive];

  if (isActive)
  {
    topConstraint2 = [(MapsEdgeConstraints *)self topConstraint];
    [v3 addObject:topConstraint2];
  }

  leftConstraint = [(MapsEdgeConstraints *)self leftConstraint];
  isActive2 = [leftConstraint isActive];

  if (isActive2)
  {
    leftConstraint2 = [(MapsEdgeConstraints *)self leftConstraint];
  }

  else
  {
    leadingConstraint = [(MapsEdgeConstraints *)self leadingConstraint];
    isActive3 = [leadingConstraint isActive];

    if (!isActive3)
    {
      goto LABEL_8;
    }

    leftConstraint2 = [(MapsEdgeConstraints *)self leadingConstraint];
  }

  v12 = leftConstraint2;
  [v3 addObject:leftConstraint2];

LABEL_8:
  bottomConstraint = [(MapsEdgeConstraints *)self bottomConstraint];
  isActive4 = [bottomConstraint isActive];

  if (isActive4)
  {
    bottomConstraint2 = [(MapsEdgeConstraints *)self bottomConstraint];
    [v3 addObject:bottomConstraint2];
  }

  rightConstraint = [(MapsEdgeConstraints *)self rightConstraint];
  isActive5 = [rightConstraint isActive];

  if (isActive5)
  {
    rightConstraint2 = [(MapsEdgeConstraints *)self rightConstraint];
  }

  else
  {
    trailingConstraint = [(MapsEdgeConstraints *)self trailingConstraint];
    isActive6 = [trailingConstraint isActive];

    if (!isActive6)
    {
      goto LABEL_15;
    }

    rightConstraint2 = [(MapsEdgeConstraints *)self trailingConstraint];
  }

  v21 = rightConstraint2;
  [v3 addObject:rightConstraint2];

LABEL_15:
  v22 = [v3 copy];

  return v22;
}

+ (MapsEdgeConstraints)edgeConstraintsWithTop:(id)top left:(id)left bottom:(id)bottom right:(id)right
{
  rightCopy = right;
  bottomCopy = bottom;
  leftCopy = left;
  topCopy = top;
  v13 = objc_alloc_init(MapsEdgeConstraints);
  [(MapsEdgeConstraints *)v13 setTopConstraint:topCopy];

  [(MapsEdgeConstraints *)v13 setLeftConstraint:leftCopy];
  [(MapsEdgeConstraints *)v13 setBottomConstraint:bottomCopy];

  [(MapsEdgeConstraints *)v13 setRightConstraint:rightCopy];

  return v13;
}

+ (MapsEdgeConstraints)edgeConstraintsWithTop:(id)top leading:(id)leading bottom:(id)bottom trailing:(id)trailing
{
  trailingCopy = trailing;
  bottomCopy = bottom;
  leadingCopy = leading;
  topCopy = top;
  v13 = objc_alloc_init(MapsEdgeConstraints);
  [(MapsEdgeConstraints *)v13 setTopConstraint:topCopy];

  [(MapsEdgeConstraints *)v13 setLeadingConstraint:leadingCopy];
  [(MapsEdgeConstraints *)v13 setBottomConstraint:bottomCopy];

  [(MapsEdgeConstraints *)v13 setTrailingConstraint:trailingCopy];

  return v13;
}

@end