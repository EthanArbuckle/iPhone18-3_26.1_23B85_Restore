@interface MapsEdgeConstraints
+ (MapsEdgeConstraints)edgeConstraintsWithTop:(id)a3 leading:(id)a4 bottom:(id)a5 trailing:(id)a6;
+ (MapsEdgeConstraints)edgeConstraintsWithTop:(id)a3 left:(id)a4 bottom:(id)a5 right:(id)a6;
- (NSArray)activeConstraints;
- (NSArray)allConstraints;
- (void)setConstantsFromEdgeInsets:(UIEdgeInsets)a3;
@end

@implementation MapsEdgeConstraints

- (NSArray)allConstraints
{
  v3 = [NSMutableArray arrayWithCapacity:4];
  v4 = [(MapsEdgeConstraints *)self topConstraint];

  if (v4)
  {
    v5 = [(MapsEdgeConstraints *)self topConstraint];
    [v3 addObject:v5];
  }

  v6 = [(MapsEdgeConstraints *)self leftConstraint];

  if (v6)
  {
    v7 = [(MapsEdgeConstraints *)self leftConstraint];
  }

  else
  {
    v8 = [(MapsEdgeConstraints *)self leadingConstraint];

    if (!v8)
    {
      goto LABEL_8;
    }

    v7 = [(MapsEdgeConstraints *)self leadingConstraint];
  }

  v9 = v7;
  [v3 addObject:v7];

LABEL_8:
  v10 = [(MapsEdgeConstraints *)self bottomConstraint];

  if (v10)
  {
    v11 = [(MapsEdgeConstraints *)self bottomConstraint];
    [v3 addObject:v11];
  }

  v12 = [(MapsEdgeConstraints *)self rightConstraint];

  if (v12)
  {
    v13 = [(MapsEdgeConstraints *)self rightConstraint];
  }

  else
  {
    v14 = [(MapsEdgeConstraints *)self trailingConstraint];

    if (!v14)
    {
      goto LABEL_15;
    }

    v13 = [(MapsEdgeConstraints *)self trailingConstraint];
  }

  v15 = v13;
  [v3 addObject:v13];

LABEL_15:
  v16 = [v3 copy];

  return v16;
}

- (void)setConstantsFromEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(MapsEdgeConstraints *)self topConstraint];
  [v8 setConstant:top];

  v9 = [(MapsEdgeConstraints *)self leadingConstraint];
  v10 = v9;
  if (v9)
  {
    [v9 setConstant:left];
  }

  else
  {
    v11 = [(MapsEdgeConstraints *)self leftConstraint];
    [v11 setConstant:left];
  }

  v12 = [(MapsEdgeConstraints *)self bottomConstraint];
  [v12 setConstant:bottom];

  v13 = [(MapsEdgeConstraints *)self trailingConstraint];
  v15 = v13;
  if (v13)
  {
    [v13 setConstant:right];
  }

  else
  {
    v14 = [(MapsEdgeConstraints *)self rightConstraint];
    [v14 setConstant:right];
  }
}

- (NSArray)activeConstraints
{
  v3 = [NSMutableArray arrayWithCapacity:4];
  v4 = [(MapsEdgeConstraints *)self topConstraint];
  v5 = [v4 isActive];

  if (v5)
  {
    v6 = [(MapsEdgeConstraints *)self topConstraint];
    [v3 addObject:v6];
  }

  v7 = [(MapsEdgeConstraints *)self leftConstraint];
  v8 = [v7 isActive];

  if (v8)
  {
    v9 = [(MapsEdgeConstraints *)self leftConstraint];
  }

  else
  {
    v10 = [(MapsEdgeConstraints *)self leadingConstraint];
    v11 = [v10 isActive];

    if (!v11)
    {
      goto LABEL_8;
    }

    v9 = [(MapsEdgeConstraints *)self leadingConstraint];
  }

  v12 = v9;
  [v3 addObject:v9];

LABEL_8:
  v13 = [(MapsEdgeConstraints *)self bottomConstraint];
  v14 = [v13 isActive];

  if (v14)
  {
    v15 = [(MapsEdgeConstraints *)self bottomConstraint];
    [v3 addObject:v15];
  }

  v16 = [(MapsEdgeConstraints *)self rightConstraint];
  v17 = [v16 isActive];

  if (v17)
  {
    v18 = [(MapsEdgeConstraints *)self rightConstraint];
  }

  else
  {
    v19 = [(MapsEdgeConstraints *)self trailingConstraint];
    v20 = [v19 isActive];

    if (!v20)
    {
      goto LABEL_15;
    }

    v18 = [(MapsEdgeConstraints *)self trailingConstraint];
  }

  v21 = v18;
  [v3 addObject:v18];

LABEL_15:
  v22 = [v3 copy];

  return v22;
}

+ (MapsEdgeConstraints)edgeConstraintsWithTop:(id)a3 left:(id)a4 bottom:(id)a5 right:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(MapsEdgeConstraints);
  [(MapsEdgeConstraints *)v13 setTopConstraint:v12];

  [(MapsEdgeConstraints *)v13 setLeftConstraint:v11];
  [(MapsEdgeConstraints *)v13 setBottomConstraint:v10];

  [(MapsEdgeConstraints *)v13 setRightConstraint:v9];

  return v13;
}

+ (MapsEdgeConstraints)edgeConstraintsWithTop:(id)a3 leading:(id)a4 bottom:(id)a5 trailing:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(MapsEdgeConstraints);
  [(MapsEdgeConstraints *)v13 setTopConstraint:v12];

  [(MapsEdgeConstraints *)v13 setLeadingConstraint:v11];
  [(MapsEdgeConstraints *)v13 setBottomConstraint:v10];

  [(MapsEdgeConstraints *)v13 setTrailingConstraint:v9];

  return v13;
}

@end