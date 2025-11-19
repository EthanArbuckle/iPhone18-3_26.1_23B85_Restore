@interface UIView(AXConstraintBasedLayout)
- (id)ax_addedConstraintForLayoutAttribute:()AXConstraintBasedLayout relatedBy:toItem:attribute:multiplier:constant:priority:;
- (id)ax_firstCommonAncestorWithView:()AXConstraintBasedLayout;
- (id)ax_pinConstraintsInAllDimensionsToView:()AXConstraintBasedLayout;
- (uint64_t)_ax_depth;
- (void)ax_setContentHuggingAndCompressionResistance:()AXConstraintBasedLayout;
@end

@implementation UIView(AXConstraintBasedLayout)

- (id)ax_addedConstraintForLayoutAttribute:()AXConstraintBasedLayout relatedBy:toItem:attribute:multiplier:constant:priority:
{
  v16 = a8;
  v17 = [MEMORY[0x1E696ACD8] constraintWithItem:a1 attribute:a6 relatedBy:a7 toItem:v16 attribute:a9 multiplier:a2 constant:a3];
  *&v18 = a4;
  [v17 setPriority:v18];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [a1 ax_firstCommonAncestorWithView:v16];
      [v19 addConstraint:v17];
    }

    else
    {
      [a1 addConstraint:v17];
    }
  }

  return v17;
}

- (uint64_t)_ax_depth
{
  v1 = a1;
  if (!v1)
  {
    return -1;
  }

  v2 = v1;
  v3 = -1;
  do
  {
    v4 = [v2 superview];

    ++v3;
    v2 = v4;
  }

  while (v4);
  return v3;
}

- (id)ax_firstCommonAncestorWithView:()AXConstraintBasedLayout
{
  v4 = a3;
  v5 = a1;
  v6 = v4;
  v7 = [v5 _ax_depth];
  v8 = [v6 _ax_depth];
  if (v8 < v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v8 < v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v8 < v7)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  if (v8 < v7)
  {
    v12 = v6;
  }

  else
  {
    v12 = v5;
  }

  if (v9 >= v10)
  {
    v13 = v11;
  }

  else
  {
    do
    {
      v13 = [v11 superview];

      --v10;
      v11 = v13;
    }

    while (v9 < v10);
  }

  v14 = 0;
  if (v12 && v13)
  {
    while (v12 != v13)
    {
      v15 = [v12 superview];

      v16 = [v13 superview];

      v14 = 0;
      if (v15)
      {
        v12 = v15;
        v13 = v16;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v15 = v12;
    v16 = v13;
    v14 = v15;
  }

  else
  {
    v16 = v13;
    v15 = v12;
  }

LABEL_25:

  return v14;
}

- (id)ax_pinConstraintsInAllDimensionsToView:()AXConstraintBasedLayout
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:4];
  v7 = [a1 ax_addedConstraintForLayoutAttribute:3 asEqualToLayoutAttribute:3 ofView:v5];
  [v6 addObject:v7];

  v8 = [a1 ax_addedConstraintForLayoutAttribute:2 asEqualToLayoutAttribute:2 ofView:v5];
  [v6 addObject:v8];

  v9 = [a1 ax_addedConstraintForLayoutAttribute:4 asEqualToLayoutAttribute:4 ofView:v5];
  [v6 addObject:v9];

  v10 = [a1 ax_addedConstraintForLayoutAttribute:1 asEqualToLayoutAttribute:1 ofView:v5];

  [v6 addObject:v10];

  return v6;
}

- (void)ax_setContentHuggingAndCompressionResistance:()AXConstraintBasedLayout
{
  v8 = result;
  v9 = *&AXLayoutPriorityIgnored;
  if (*&a2 > *&AXLayoutPriorityIgnored)
  {
    result = [result setContentHuggingPriority:0 forAxis:?];
    v9 = *&AXLayoutPriorityIgnored;
  }

  if (a3 > v9)
  {
    *&a2 = a3;
    result = [v8 setContentHuggingPriority:1 forAxis:a2];
    v9 = *&AXLayoutPriorityIgnored;
  }

  if (a4 > v9)
  {
    *&a2 = a4;
    result = [v8 setContentCompressionResistancePriority:0 forAxis:a2];
    v9 = *&AXLayoutPriorityIgnored;
  }

  if (a5 > v9)
  {
    *&a2 = a4;

    return [v8 setContentCompressionResistancePriority:1 forAxis:a2];
  }

  return result;
}

@end