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
  v17 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:a6 relatedBy:a7 toItem:v16 attribute:a9 multiplier:a2 constant:a3];
  *&v18 = a4;
  [v17 setPriority:v18];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [self ax_firstCommonAncestorWithView:v16];
      [v19 addConstraint:v17];
    }

    else
    {
      [self addConstraint:v17];
    }
  }

  return v17;
}

- (uint64_t)_ax_depth
{
  selfCopy = self;
  if (!selfCopy)
  {
    return -1;
  }

  v2 = selfCopy;
  v3 = -1;
  do
  {
    superview = [v2 superview];

    ++v3;
    v2 = superview;
  }

  while (superview);
  return v3;
}

- (id)ax_firstCommonAncestorWithView:()AXConstraintBasedLayout
{
  v4 = a3;
  selfCopy = self;
  v6 = v4;
  _ax_depth = [selfCopy _ax_depth];
  _ax_depth2 = [v6 _ax_depth];
  if (_ax_depth2 < _ax_depth)
  {
    v9 = _ax_depth2;
  }

  else
  {
    v9 = _ax_depth;
  }

  if (_ax_depth2 < _ax_depth)
  {
    v10 = _ax_depth;
  }

  else
  {
    v10 = _ax_depth2;
  }

  if (_ax_depth2 < _ax_depth)
  {
    v11 = selfCopy;
  }

  else
  {
    v11 = v6;
  }

  if (_ax_depth2 < _ax_depth)
  {
    v12 = v6;
  }

  else
  {
    v12 = selfCopy;
  }

  if (v9 >= v10)
  {
    superview = v11;
  }

  else
  {
    do
    {
      superview = [v11 superview];

      --v10;
      v11 = superview;
    }

    while (v9 < v10);
  }

  v14 = 0;
  if (v12 && superview)
  {
    while (v12 != superview)
    {
      superview2 = [v12 superview];

      v13Superview = [superview superview];

      v14 = 0;
      if (superview2)
      {
        v12 = superview2;
        superview = v13Superview;
        if (v13Superview)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    superview2 = v12;
    v13Superview = superview;
    v14 = superview2;
  }

  else
  {
    v13Superview = superview;
    superview2 = v12;
  }

LABEL_25:

  return v14;
}

- (id)ax_pinConstraintsInAllDimensionsToView:()AXConstraintBasedLayout
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:4];
  v7 = [self ax_addedConstraintForLayoutAttribute:3 asEqualToLayoutAttribute:3 ofView:v5];
  [v6 addObject:v7];

  v8 = [self ax_addedConstraintForLayoutAttribute:2 asEqualToLayoutAttribute:2 ofView:v5];
  [v6 addObject:v8];

  v9 = [self ax_addedConstraintForLayoutAttribute:4 asEqualToLayoutAttribute:4 ofView:v5];
  [v6 addObject:v9];

  v10 = [self ax_addedConstraintForLayoutAttribute:1 asEqualToLayoutAttribute:1 ofView:v5];

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