@interface UIView
+ (void)rc_beginDisablingAnimations;
+ (void)rc_endDisablingAnimations;
+ (void)rc_performAnimateableChangesWithAnimationDuration:(double)duration setupBlock:(id)block animatablesBlock:(id)animatablesBlock completion:(id)completion;
- (BOOL)rc_canAnimate;
- (BOOL)rc_isProperDescendantOfView:(id)view;
- (id)_rc_constraintsByNameDictionary:(BOOL)dictionary;
- (id)_rc_constraintsNamed:(id)named;
- (void)rc_addConstraint:(id)constraint;
- (void)rc_addConstraints:(id)constraints;
- (void)rc_removeConstraint:(id)constraint;
- (void)rc_removeConstraints:(id)constraints;
- (void)rc_removeConstraintsNamed:(id)named;
- (void)rc_removeNamedConstraints;
- (void)rc_setNamedConstraints:(id)constraints forName:(id)name;
- (void)rc_showAllViewBoundsRecursively:(BOOL)recursively;
- (void)rc_updateConstraintsAndLayoutSubtree;
@end

@implementation UIView

- (void)rc_showAllViewBoundsRecursively:(BOOL)recursively
{
  recursivelyCopy = recursively;
  v5 = arc4random_uniform(0xFFu) / 255.0;
  v6 = arc4random_uniform(0xFFu) / 255.0;
  v7 = [UIColor colorWithRed:v5 green:v6 blue:arc4random_uniform(0xFFu) / 255.0 alpha:0.400000006];
  [(UIView *)self setBackgroundColor:v7];

  if (recursivelyCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subviews = [(UIView *)self subviews];
    v9 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v13 + 1) + 8 * v12) rc_showAllViewBoundsRecursively:1];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (BOOL)rc_canAnimate
{
  if (!+[UIView areAnimationsEnabled])
  {
    return 0;
  }

  window = [(UIView *)self window];
  v4 = window != 0;

  return v4;
}

+ (void)rc_beginDisablingAnimations
{
  if (!qword_823F8++)
  {
    [UIView setAnimationsEnabled:0];
  }
}

+ (void)rc_endDisablingAnimations
{
  if (!--qword_823F8)
  {
    [UIView setAnimationsEnabled:1];
  }
}

+ (void)rc_performAnimateableChangesWithAnimationDuration:(double)duration setupBlock:(id)block animatablesBlock:(id)animatablesBlock completion:(id)completion
{
  blockCopy = block;
  animatablesBlockCopy = animatablesBlock;
  completionCopy = completion;
  if (blockCopy)
  {
    [UIView performWithoutAnimation:blockCopy];
  }

  if (+[UIView areAnimationsEnabled])
  {
    [UIView animateWithDuration:animatablesBlockCopy animations:completionCopy completion:duration];
  }

  else
  {
    if (animatablesBlockCopy)
    {
      animatablesBlockCopy[2](animatablesBlockCopy);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }
}

- (void)rc_updateConstraintsAndLayoutSubtree
{
  [(UIView *)self setNeedsUpdateConstraints];
  [(UIView *)self setNeedsLayout];

  [(UIView *)self layoutBelowIfNeeded];
}

- (BOOL)rc_isProperDescendantOfView:(id)view
{
  if (view == self)
  {
    return 0;
  }

  else
  {
    return [(UIView *)self isDescendantOfView:?];
  }
}

- (void)rc_removeConstraint:(id)constraint
{
  if (constraint)
  {
    [(UIView *)self removeConstraint:?];
  }
}

- (void)rc_removeConstraints:(id)constraints
{
  if (constraints)
  {
    [(UIView *)self removeConstraints:?];
  }
}

- (void)rc_addConstraint:(id)constraint
{
  if (constraint)
  {
    [(UIView *)self addConstraint:?];
  }
}

- (void)rc_addConstraints:(id)constraints
{
  if (constraints)
  {
    [(UIView *)self addConstraints:?];
  }
}

- (id)_rc_constraintsByNameDictionary:(BOOL)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_getAssociatedObject(self, "_rc_constraintsByNameStorageKey");
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !dictionaryCopy;
  }

  if (!v6)
  {
    v5 = +[NSMutableDictionary dictionary];
    objc_setAssociatedObject(self, "_rc_constraintsByNameStorageKey", v5, &stru_2E8.segname[9]);
  }

  return v5;
}

- (id)_rc_constraintsNamed:(id)named
{
  namedCopy = named;
  v5 = [(UIView *)self _rc_constraintsByNameDictionary:0];
  v6 = [v5 objectForKey:namedCopy];

  return v6;
}

- (void)rc_setNamedConstraints:(id)constraints forName:(id)name
{
  constraintsCopy = constraints;
  nameCopy = name;
  if (constraintsCopy)
  {
    v7 = [(UIView *)self _rc_constraintsNamed:nameCopy];

    if (v7)
    {
      [(UIView *)self rc_removeConstraintsNamed:nameCopy];
    }

    v8 = [(UIView *)self _rc_constraintsByNameDictionary:1];
    constraints = [constraintsCopy constraints];

    if (constraints)
    {
      constraints2 = [constraintsCopy constraints];
      [(UIView *)self addConstraints:constraints2];
    }

    [v8 setObject:constraintsCopy forKey:nameCopy];
  }

  else
  {
    [(UIView *)self rc_removeConstraintsNamed:nameCopy];
  }
}

- (void)rc_removeConstraintsNamed:(id)named
{
  namedCopy = named;
  v4 = [(UIView *)self _rc_constraintsNamed:?];
  v5 = v4;
  if (v4)
  {
    constraints = [v4 constraints];

    if (constraints)
    {
      constraints2 = [v5 constraints];
      [(UIView *)self removeConstraints:constraints2];
    }

    v8 = [(UIView *)self _rc_constraintsByNameDictionary:0];
    [v8 removeObjectForKey:namedCopy];
  }
}

- (void)rc_removeNamedConstraints
{
  v3 = [(UIView *)self _rc_constraintsByNameDictionary:0];
  allKeys = [v3 allKeys];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = allKeys;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(UIView *)self rc_removeConstraintsNamed:*(*(&v10 + 1) + 8 * v9), v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end