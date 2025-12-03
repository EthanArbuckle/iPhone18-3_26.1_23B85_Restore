@interface NSLayoutConstraint(AXExtensions)
+ (id)ax_constraintsToMakeItem:()AXExtensions sameDimensionsAsItem:;
- (void)ax_removeFromContainer;
@end

@implementation NSLayoutConstraint(AXExtensions)

+ (id)ax_constraintsToMakeItem:()AXExtensions sameDimensionsAsItem:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [&unk_1F4051C78 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(&unk_1F4051C78);
        }

        integerValue = [*(*(&v15 + 1) + 8 * i) integerValue];
        v13 = [MEMORY[0x1E696ACD8] constraintWithItem:v5 attribute:integerValue relatedBy:0 toItem:v6 attribute:integerValue multiplier:1.0 constant:0.0];
        [array addObject:v13];
      }

      v9 = [&unk_1F4051C78 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return array;
}

- (void)ax_removeFromContainer
{
  firstItem = [self firstItem];
  secondItem = [self secondItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = firstItem;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = secondItem;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v4)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  else
  {
    v10 = [v4 ax_firstCommonAncestorWithView:v6];
  }

  v11 = v10;
  if (v10)
  {
    while (1)
    {
      constraints = [v11 constraints];
      v13 = [constraints containsObject:self];

      if (v13)
      {
        break;
      }

      superview = [v11 superview];

      v11 = superview;
      if (!superview)
      {
        goto LABEL_21;
      }
    }

    [v11 removeConstraint:self];
  }

LABEL_21:
}

@end