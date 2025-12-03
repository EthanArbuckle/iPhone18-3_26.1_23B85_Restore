@interface UIView
+ (void)rc_beginDisablingAnimations;
+ (void)rc_endDisablingAnimations;
+ (void)rc_performAnimateableChangesWithAnimationDuration:(double)duration setupBlock:(id)block animatablesBlock:(id)animatablesBlock completion:(id)completion;
- (BOOL)rc_canAnimate;
- (BOOL)rc_isProperDescendantOfView:(id)view;
- (CGSize)size;
- (id)_rc_constraintsByNameDictionary:(BOOL)dictionary;
- (id)_rc_constraintsNamed:(id)named;
- (id)associatedConstraints;
- (void)addConstraintWithView:(id)view attribute:(int64_t)attribute viewAttribute:(int64_t)viewAttribute scale:(double)scale padding:(double)padding;
- (void)addSubviewAndCenter:(id)center;
- (void)addSubviewAndPinToEdges:(id)edges;
- (void)alignBottomLeadingToBottomLeadingOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignBottomLeadingToBottomMarginLeadingMarginOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignBottomLeadingToBottomMarginLeadingOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignBottomLeftToBottomLeftOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignBottomLeftToBottomRightOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignBottomLeftToTopLeftOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignBottomLeftToTopRightOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignBottomRightToBottomLeftOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignBottomRightToBottomRightOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignBottomRightToTopLeftOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignBottomRightToTopRightOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignBottomTrailingToBottomTrailingOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignCenterBottomToCenterBottomOfView:(id)view padding:(double)padding;
- (void)alignCenterBottomToCenterTopOfView:(id)view padding:(double)padding;
- (void)alignCenterLeadingToCenterLeadingMarginOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignCenterLeadingToCenterLeadingOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignCenterLeadingToCenterTrailingOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignCenterLeftToCenterLeftOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignCenterLeftToCenterRightOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignCenterRightToCenterLeftOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignCenterRightToCenterRightOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignCenterToCenterOfView:(id)view;
- (void)alignCenterToCenterOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignCenterTopToCenterBottomOfView:(id)view padding:(double)padding;
- (void)alignCenterTopToCenterTopOfView:(id)view padding:(double)padding;
- (void)alignCenterTrailingToCenterLeadingOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignCenterTrailingToCenterTrailingMarginOfView:(id)view padding:(double)padding;
- (void)alignCenterTrailingToCenterTrailingOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopLeadingToTopLeadingOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopLeadingToTopMarginLeadingMarginOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopLeadingToTopMarginLeadingOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopLeftToBottomCenterOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopLeftToBottomLeftOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopLeftToBottomRightOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopLeftToTopLeftOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopLeftToTopRightOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopRightToBottomCenterOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopRightToBottomLeftOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopRightToBottomRightOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopRightToTopLeftOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopRightToTopRightOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopTrailingToTopMarginTrailingMarginOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)alignTopTrailingToTopTrailingOfView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)constrainHeightBetweenTopView:(id)view bottomView:(id)bottomView topPadding:(double)padding bottomPadding:(double)bottomPadding;
- (void)constrainSize:(CGSize)size;
- (void)constrainSizeAndAlignCenterToCenterOfView:(id)view sizePaddingX:(double)x sizePaddingY:(double)y centerPaddingX:(double)paddingX centerPaddingY:(double)paddingY;
- (void)constrainSizeWithView:(id)view paddingX:(double)x paddingY:(double)y;
- (void)rc_addConstraint:(id)constraint;
- (void)rc_addConstraints:(id)constraints;
- (void)rc_removeConstraint:(id)constraint;
- (void)rc_removeConstraints:(id)constraints;
- (void)rc_removeConstraintsNamed:(id)named;
- (void)rc_removeGlassBackground;
- (void)rc_removeNamedConstraints;
- (void)rc_setGlassBackground;
- (void)rc_setNamedConstraints:(id)constraints forName:(id)name;
- (void)rc_showAllViewBoundsRecursively:(BOOL)recursively;
- (void)rc_updateConstraintsAndLayoutSubtree;
- (void)removeAllConstraints;
- (void)resetAssociatedConstraints;
@end

@implementation UIView

- (void)resetAssociatedConstraints
{
  v3 = +[NSMutableDictionary dictionary];
  [(UIView *)self setAssociatedConstraints:v3];
}

- (id)associatedConstraints
{
  v3 = objc_getAssociatedObject(self, "associatedConstraints");
  if (!v3)
  {
    [(UIView *)self resetAssociatedConstraints];
  }

  return v3;
}

- (void)removeAllConstraints
{
  associatedConstraints = [(UIView *)self associatedConstraints];
  allValues = [associatedConstraints allValues];

  superview = [(UIView *)self superview];
  [superview removeConstraints:allValues];

  [(UIView *)self resetAssociatedConstraints];
}

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
  if (!qword_1002D6FD0++)
  {
    [UIView setAnimationsEnabled:0];
  }
}

+ (void)rc_endDisablingAnimations
{
  if (!--qword_1002D6FD0)
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
    objc_setAssociatedObject(self, "_rc_constraintsByNameStorageKey", v5, 0x301);
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

- (CGSize)size
{
  [(UIView *)self frame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)alignTopLeftToTopLeftOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToTopConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeftToLeftConstraintWithView:viewCopy padding:x];
}

- (void)alignTopLeftToTopRightOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToTopConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeftToRightConstraintWithView:viewCopy padding:x];
}

- (void)alignTopLeftToBottomLeftOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeftToLeftConstraintWithView:viewCopy padding:x];
}

- (void)alignTopLeftToBottomRightOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeftToRightConstraintWithView:viewCopy padding:x];
}

- (void)alignTopLeftToBottomCenterOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeftToCenterConstraintWithView:viewCopy padding:x];
}

- (void)alignTopLeadingToTopLeadingOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToTopConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeadingToLeadingConstraintWithView:viewCopy padding:x];
}

- (void)alignTopLeadingToTopMarginLeadingMarginOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToTopMarginConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeadingToLeadingMarginConstraintWithView:viewCopy padding:x];
}

- (void)alignTopLeadingToTopMarginLeadingOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToTopMarginConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeadingToLeadingConstraintWithView:viewCopy padding:x];
}

- (void)alignTopRightToTopRightOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToTopConstraintWithView:viewCopy padding:y];
  [(UIView *)self addRightToRightConstraintWithView:viewCopy padding:x];
}

- (void)alignTopRightToTopLeftOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToTopConstraintWithView:viewCopy padding:y];
  [(UIView *)self addRightToLeftConstraintWithView:viewCopy padding:x];
}

- (void)alignTopRightToBottomRightOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addRightToRightConstraintWithView:viewCopy padding:x];
}

- (void)alignTopRightToBottomLeftOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addRightToLeftConstraintWithView:viewCopy padding:x];
}

- (void)alignTopRightToBottomCenterOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addRightToCenterConstraintWithView:viewCopy padding:x];
}

- (void)alignTopTrailingToTopTrailingOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToTopConstraintWithView:viewCopy padding:y];
  [(UIView *)self addTrailingToTrailingConstraintWithView:viewCopy padding:x];
}

- (void)alignTopTrailingToTopMarginTrailingMarginOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToTopMarginConstraintWithView:viewCopy padding:y];
  [(UIView *)self addTrailingToTrailingMarginConstraintWithView:viewCopy padding:x];
}

- (void)alignBottomLeftToBottomLeftOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addBottomToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeftToLeftConstraintWithView:viewCopy padding:x];
}

- (void)alignBottomLeftToBottomRightOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addBottomToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeftToRightConstraintWithView:viewCopy padding:x];
}

- (void)alignBottomLeftToTopLeftOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addBottomToTopConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeftToLeftConstraintWithView:viewCopy padding:x];
}

- (void)alignBottomLeftToTopRightOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addTopToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeftToRightConstraintWithView:viewCopy padding:x];
}

- (void)alignBottomLeadingToBottomLeadingOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addBottomToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeadingToLeadingConstraintWithView:viewCopy padding:x];
}

- (void)alignBottomLeadingToBottomMarginLeadingMarginOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addBottomToBottomMarginConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeadingToLeadingMarginConstraintWithView:viewCopy padding:x];
}

- (void)alignBottomLeadingToBottomMarginLeadingOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addBottomToBottomMarginConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeadingToLeadingConstraintWithView:viewCopy padding:x];
}

- (void)alignBottomRightToBottomRightOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addBottomToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addRightToRightConstraintWithView:viewCopy padding:x];
}

- (void)alignBottomRightToBottomLeftOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addBottomToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addRightToLeftConstraintWithView:viewCopy padding:x];
}

- (void)alignBottomRightToTopRightOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addBottomToTopConstraintWithView:viewCopy padding:y];
  [(UIView *)self addRightToRightConstraintWithView:viewCopy padding:x];
}

- (void)alignBottomRightToTopLeftOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addBottomToTopConstraintWithView:viewCopy padding:y];
  [(UIView *)self addRightToLeftConstraintWithView:viewCopy padding:x];
}

- (void)alignBottomTrailingToBottomTrailingOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addBottomToBottomConstraintWithView:viewCopy padding:y];
  [(UIView *)self addTrailingToTrailingConstraintWithView:viewCopy padding:x];
}

- (void)alignCenterTopToCenterTopOfView:(id)view padding:(double)padding
{
  viewCopy = view;
  [(UIView *)self addCenterXConstraintWithView:viewCopy];
  [(UIView *)self addTopToTopConstraintWithView:viewCopy padding:padding];
}

- (void)alignCenterTopToCenterBottomOfView:(id)view padding:(double)padding
{
  viewCopy = view;
  [(UIView *)self addCenterXConstraintWithView:viewCopy];
  [(UIView *)self addTopToBottomConstraintWithView:viewCopy padding:padding];
}

- (void)alignCenterBottomToCenterBottomOfView:(id)view padding:(double)padding
{
  viewCopy = view;
  [(UIView *)self addCenterXConstraintWithView:viewCopy];
  [(UIView *)self addBottomToBottomConstraintWithView:viewCopy padding:padding];
}

- (void)alignCenterBottomToCenterTopOfView:(id)view padding:(double)padding
{
  viewCopy = view;
  [(UIView *)self addCenterXConstraintWithView:viewCopy];
  [(UIView *)self addBottomToTopConstraintWithView:viewCopy padding:padding];
}

- (void)alignCenterLeftToCenterLeftOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addCenterYConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeftToLeftConstraintWithView:viewCopy padding:x];
}

- (void)alignCenterLeftToCenterRightOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addCenterYConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeftToRightConstraintWithView:viewCopy padding:x];
}

- (void)alignCenterRightToCenterRightOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addCenterYConstraintWithView:viewCopy padding:y];
  [(UIView *)self addRightToRightConstraintWithView:viewCopy padding:x];
}

- (void)alignCenterRightToCenterLeftOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addCenterYConstraintWithView:viewCopy padding:y];
  [(UIView *)self addRightToLeftConstraintWithView:viewCopy padding:x];
}

- (void)alignCenterLeadingToCenterLeadingOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addCenterYConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeadingToLeadingConstraintWithView:viewCopy padding:x];
}

- (void)alignCenterLeadingToCenterLeadingMarginOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addCenterYConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeadingToLeadingMarginConstraintWithView:viewCopy padding:x];
}

- (void)alignCenterLeadingToCenterTrailingOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addCenterYConstraintWithView:viewCopy padding:y];
  [(UIView *)self addLeadingToTrailingConstraintWithView:viewCopy padding:x];
}

- (void)alignCenterTrailingToCenterTrailingOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addCenterYConstraintWithView:viewCopy padding:y];
  [(UIView *)self addTrailingToTrailingConstraintWithView:viewCopy padding:x];
}

- (void)alignCenterTrailingToCenterLeadingOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addCenterYConstraintWithView:viewCopy padding:y];
  [(UIView *)self addTrailingToLeadingConstraintWithView:viewCopy padding:x];
}

- (void)alignCenterTrailingToCenterTrailingMarginOfView:(id)view padding:(double)padding
{
  viewCopy = view;
  [(UIView *)self addConstraintWithView:viewCopy attribute:6 viewAttribute:18 padding:padding];
  [(UIView *)self addCenterYConstraintWithView:viewCopy];
}

- (void)alignCenterToCenterOfView:(id)view
{
  viewCopy = view;
  [(UIView *)self addCenterXConstraintWithView:viewCopy];
  [(UIView *)self addCenterYConstraintWithView:viewCopy];
}

- (void)alignCenterToCenterOfView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addCenterXConstraintWithView:viewCopy padding:x];
  [(UIView *)self addCenterYConstraintWithView:viewCopy padding:y];
}

- (void)constrainHeightBetweenTopView:(id)view bottomView:(id)bottomView topPadding:(double)padding bottomPadding:(double)bottomPadding
{
  bottomViewCopy = bottomView;
  [(UIView *)self alignCenterTopToCenterBottomOfView:view padding:padding];
  [(UIView *)self alignCenterBottomToCenterTopOfView:bottomViewCopy padding:bottomPadding];
}

- (void)constrainSize:(CGSize)size
{
  height = size.height;
  [(UIView *)self addConstraintWithAttribute:7 constant:size.width];

  [(UIView *)self addConstraintWithAttribute:8 constant:height];
}

- (void)constrainSizeWithView:(id)view paddingX:(double)x paddingY:(double)y
{
  viewCopy = view;
  [(UIView *)self addConstraintWithView:viewCopy attribute:7 padding:x];
  [(UIView *)self addConstraintWithView:viewCopy attribute:8 padding:y];
}

- (void)constrainSizeAndAlignCenterToCenterOfView:(id)view sizePaddingX:(double)x sizePaddingY:(double)y centerPaddingX:(double)paddingX centerPaddingY:(double)paddingY
{
  viewCopy = view;
  [(UIView *)self constrainSizeWithView:viewCopy paddingX:x paddingY:y];
  [(UIView *)self alignCenterToCenterOfView:viewCopy paddingX:paddingX paddingY:paddingY];
}

- (void)addConstraintWithView:(id)view attribute:(int64_t)attribute viewAttribute:(int64_t)viewAttribute scale:(double)scale padding:(double)padding
{
  viewCopy = view;
  associatedConstraints = [(UIView *)self associatedConstraints];
  v13 = [NSNumber numberWithInteger:attribute];
  v14 = [associatedConstraints objectForKeyedSubscript:v13];

  if (v14)
  {
    secondItem = [v14 secondItem];
    if (secondItem == viewCopy && [v14 secondAttribute] == viewAttribute)
    {
      [v14 multiplier];
      v17 = v16;

      if (v17 == scale)
      {
        [v14 setConstant:padding];
        superview = [(UIView *)self superview];
        [superview addConstraint:v14];
        goto LABEL_9;
      }
    }

    else
    {
    }

    superview2 = [(UIView *)self superview];
    [superview2 removeConstraint:v14];
  }

  [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [NSLayoutConstraint constraintWithItem:self attribute:attribute relatedBy:0 toItem:viewCopy attribute:viewAttribute multiplier:scale constant:padding];

  superview3 = [(UIView *)self superview];
  [superview3 addConstraint:v20];

  superview = [(UIView *)self associatedConstraints];
  v22 = [NSNumber numberWithInteger:attribute];
  [superview setObject:v20 forKeyedSubscript:v22];

  v14 = v20;
LABEL_9:
}

- (void)addSubviewAndPinToEdges:(id)edges
{
  edgesCopy = edges;
  [(UIView *)self addSubview:edgesCopy];
  [edgesCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = _NSDictionaryOfVariableBindings(@"subviewToAddAndPin", edgesCopy, 0);
  v6 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-0-[subviewToAddAndPin]-0-|", 0, 0, v5);
  [(UIView *)self addConstraints:v6];

  v8 = _NSDictionaryOfVariableBindings(@"subviewToAddAndPin", edgesCopy, 0);

  v7 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-0-[subviewToAddAndPin]-0-|", 0, 0, v8);
  [(UIView *)self addConstraints:v7];
}

- (void)addSubviewAndCenter:(id)center
{
  centerCopy = center;
  [(UIView *)self addSubview:centerCopy];
  [centerCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [NSLayoutConstraint constraintWithItem:centerCopy attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(UIView *)self addConstraint:v5];

  v6 = [NSLayoutConstraint constraintWithItem:centerCopy attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

  [(UIView *)self addConstraint:v6];
}

- (void)rc_setGlassBackground
{
  v3 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v3 - 8, v4);
  selfCopy = self;
  static _Glass._GlassVariant.regular.getter();
  v6[3] = type metadata accessor for _Glass();
  v6[4] = &protocol witness table for _Glass;
  sub_100015800(v6);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

- (void)rc_removeGlassBackground
{
  selfCopy = self;
  UIView._background.setter();
}

@end