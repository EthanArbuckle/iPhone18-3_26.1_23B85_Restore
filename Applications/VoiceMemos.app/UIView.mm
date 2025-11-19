@interface UIView
+ (void)rc_beginDisablingAnimations;
+ (void)rc_endDisablingAnimations;
+ (void)rc_performAnimateableChangesWithAnimationDuration:(double)a3 setupBlock:(id)a4 animatablesBlock:(id)a5 completion:(id)a6;
- (BOOL)rc_canAnimate;
- (BOOL)rc_isProperDescendantOfView:(id)a3;
- (CGSize)size;
- (id)_rc_constraintsByNameDictionary:(BOOL)a3;
- (id)_rc_constraintsNamed:(id)a3;
- (id)associatedConstraints;
- (void)addConstraintWithView:(id)a3 attribute:(int64_t)a4 viewAttribute:(int64_t)a5 scale:(double)a6 padding:(double)a7;
- (void)addSubviewAndCenter:(id)a3;
- (void)addSubviewAndPinToEdges:(id)a3;
- (void)alignBottomLeadingToBottomLeadingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignBottomLeadingToBottomMarginLeadingMarginOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignBottomLeadingToBottomMarginLeadingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignBottomLeftToBottomLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignBottomLeftToBottomRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignBottomLeftToTopLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignBottomLeftToTopRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignBottomRightToBottomLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignBottomRightToBottomRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignBottomRightToTopLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignBottomRightToTopRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignBottomTrailingToBottomTrailingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignCenterBottomToCenterBottomOfView:(id)a3 padding:(double)a4;
- (void)alignCenterBottomToCenterTopOfView:(id)a3 padding:(double)a4;
- (void)alignCenterLeadingToCenterLeadingMarginOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignCenterLeadingToCenterLeadingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignCenterLeadingToCenterTrailingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignCenterLeftToCenterLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignCenterLeftToCenterRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignCenterRightToCenterLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignCenterRightToCenterRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignCenterToCenterOfView:(id)a3;
- (void)alignCenterToCenterOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignCenterTopToCenterBottomOfView:(id)a3 padding:(double)a4;
- (void)alignCenterTopToCenterTopOfView:(id)a3 padding:(double)a4;
- (void)alignCenterTrailingToCenterLeadingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignCenterTrailingToCenterTrailingMarginOfView:(id)a3 padding:(double)a4;
- (void)alignCenterTrailingToCenterTrailingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopLeadingToTopLeadingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopLeadingToTopMarginLeadingMarginOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopLeadingToTopMarginLeadingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopLeftToBottomCenterOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopLeftToBottomLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopLeftToBottomRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopLeftToTopLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopLeftToTopRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopRightToBottomCenterOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopRightToBottomLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopRightToBottomRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopRightToTopLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopRightToTopRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopTrailingToTopMarginTrailingMarginOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)alignTopTrailingToTopTrailingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)constrainHeightBetweenTopView:(id)a3 bottomView:(id)a4 topPadding:(double)a5 bottomPadding:(double)a6;
- (void)constrainSize:(CGSize)a3;
- (void)constrainSizeAndAlignCenterToCenterOfView:(id)a3 sizePaddingX:(double)a4 sizePaddingY:(double)a5 centerPaddingX:(double)a6 centerPaddingY:(double)a7;
- (void)constrainSizeWithView:(id)a3 paddingX:(double)a4 paddingY:(double)a5;
- (void)rc_addConstraint:(id)a3;
- (void)rc_addConstraints:(id)a3;
- (void)rc_removeConstraint:(id)a3;
- (void)rc_removeConstraints:(id)a3;
- (void)rc_removeConstraintsNamed:(id)a3;
- (void)rc_removeGlassBackground;
- (void)rc_removeNamedConstraints;
- (void)rc_setGlassBackground;
- (void)rc_setNamedConstraints:(id)a3 forName:(id)a4;
- (void)rc_showAllViewBoundsRecursively:(BOOL)a3;
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
  v3 = [(UIView *)self associatedConstraints];
  v5 = [v3 allValues];

  v4 = [(UIView *)self superview];
  [v4 removeConstraints:v5];

  [(UIView *)self resetAssociatedConstraints];
}

- (void)rc_showAllViewBoundsRecursively:(BOOL)a3
{
  v3 = a3;
  v5 = arc4random_uniform(0xFFu) / 255.0;
  v6 = arc4random_uniform(0xFFu) / 255.0;
  v7 = [UIColor colorWithRed:v5 green:v6 blue:arc4random_uniform(0xFFu) / 255.0 alpha:0.400000006];
  [(UIView *)self setBackgroundColor:v7];

  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [(UIView *)self subviews];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12) rc_showAllViewBoundsRecursively:1];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

  v3 = [(UIView *)self window];
  v4 = v3 != 0;

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

+ (void)rc_performAnimateableChangesWithAnimationDuration:(double)a3 setupBlock:(id)a4 animatablesBlock:(id)a5 completion:(id)a6
{
  v11 = a4;
  v9 = a5;
  v10 = a6;
  if (v11)
  {
    [UIView performWithoutAnimation:v11];
  }

  if (+[UIView areAnimationsEnabled])
  {
    [UIView animateWithDuration:v9 animations:v10 completion:a3];
  }

  else
  {
    if (v9)
    {
      v9[2](v9);
    }

    if (v10)
    {
      v10[2](v10, 1);
    }
  }
}

- (void)rc_updateConstraintsAndLayoutSubtree
{
  [(UIView *)self setNeedsUpdateConstraints];
  [(UIView *)self setNeedsLayout];

  [(UIView *)self layoutBelowIfNeeded];
}

- (BOOL)rc_isProperDescendantOfView:(id)a3
{
  if (a3 == self)
  {
    return 0;
  }

  else
  {
    return [(UIView *)self isDescendantOfView:?];
  }
}

- (void)rc_removeConstraint:(id)a3
{
  if (a3)
  {
    [(UIView *)self removeConstraint:?];
  }
}

- (void)rc_removeConstraints:(id)a3
{
  if (a3)
  {
    [(UIView *)self removeConstraints:?];
  }
}

- (void)rc_addConstraint:(id)a3
{
  if (a3)
  {
    [(UIView *)self addConstraint:?];
  }
}

- (void)rc_addConstraints:(id)a3
{
  if (a3)
  {
    [(UIView *)self addConstraints:?];
  }
}

- (id)_rc_constraintsByNameDictionary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_getAssociatedObject(self, "_rc_constraintsByNameStorageKey");
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
  }

  if (!v6)
  {
    v5 = +[NSMutableDictionary dictionary];
    objc_setAssociatedObject(self, "_rc_constraintsByNameStorageKey", v5, 0x301);
  }

  return v5;
}

- (id)_rc_constraintsNamed:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self _rc_constraintsByNameDictionary:0];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)rc_setNamedConstraints:(id)a3 forName:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    v7 = [(UIView *)self _rc_constraintsNamed:v6];

    if (v7)
    {
      [(UIView *)self rc_removeConstraintsNamed:v6];
    }

    v8 = [(UIView *)self _rc_constraintsByNameDictionary:1];
    v9 = [v11 constraints];

    if (v9)
    {
      v10 = [v11 constraints];
      [(UIView *)self addConstraints:v10];
    }

    [v8 setObject:v11 forKey:v6];
  }

  else
  {
    [(UIView *)self rc_removeConstraintsNamed:v6];
  }
}

- (void)rc_removeConstraintsNamed:(id)a3
{
  v9 = a3;
  v4 = [(UIView *)self _rc_constraintsNamed:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 constraints];

    if (v6)
    {
      v7 = [v5 constraints];
      [(UIView *)self removeConstraints:v7];
    }

    v8 = [(UIView *)self _rc_constraintsByNameDictionary:0];
    [v8 removeObjectForKey:v9];
  }
}

- (void)rc_removeNamedConstraints
{
  v3 = [(UIView *)self _rc_constraintsByNameDictionary:0];
  v4 = [v3 allKeys];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
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

- (void)alignTopLeftToTopLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToTopConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeftToLeftConstraintWithView:v8 padding:a4];
}

- (void)alignTopLeftToTopRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToTopConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeftToRightConstraintWithView:v8 padding:a4];
}

- (void)alignTopLeftToBottomLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeftToLeftConstraintWithView:v8 padding:a4];
}

- (void)alignTopLeftToBottomRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeftToRightConstraintWithView:v8 padding:a4];
}

- (void)alignTopLeftToBottomCenterOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeftToCenterConstraintWithView:v8 padding:a4];
}

- (void)alignTopLeadingToTopLeadingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToTopConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeadingToLeadingConstraintWithView:v8 padding:a4];
}

- (void)alignTopLeadingToTopMarginLeadingMarginOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToTopMarginConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeadingToLeadingMarginConstraintWithView:v8 padding:a4];
}

- (void)alignTopLeadingToTopMarginLeadingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToTopMarginConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeadingToLeadingConstraintWithView:v8 padding:a4];
}

- (void)alignTopRightToTopRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToTopConstraintWithView:v8 padding:a5];
  [(UIView *)self addRightToRightConstraintWithView:v8 padding:a4];
}

- (void)alignTopRightToTopLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToTopConstraintWithView:v8 padding:a5];
  [(UIView *)self addRightToLeftConstraintWithView:v8 padding:a4];
}

- (void)alignTopRightToBottomRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addRightToRightConstraintWithView:v8 padding:a4];
}

- (void)alignTopRightToBottomLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addRightToLeftConstraintWithView:v8 padding:a4];
}

- (void)alignTopRightToBottomCenterOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addRightToCenterConstraintWithView:v8 padding:a4];
}

- (void)alignTopTrailingToTopTrailingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToTopConstraintWithView:v8 padding:a5];
  [(UIView *)self addTrailingToTrailingConstraintWithView:v8 padding:a4];
}

- (void)alignTopTrailingToTopMarginTrailingMarginOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToTopMarginConstraintWithView:v8 padding:a5];
  [(UIView *)self addTrailingToTrailingMarginConstraintWithView:v8 padding:a4];
}

- (void)alignBottomLeftToBottomLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addBottomToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeftToLeftConstraintWithView:v8 padding:a4];
}

- (void)alignBottomLeftToBottomRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addBottomToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeftToRightConstraintWithView:v8 padding:a4];
}

- (void)alignBottomLeftToTopLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addBottomToTopConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeftToLeftConstraintWithView:v8 padding:a4];
}

- (void)alignBottomLeftToTopRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addTopToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeftToRightConstraintWithView:v8 padding:a4];
}

- (void)alignBottomLeadingToBottomLeadingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addBottomToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeadingToLeadingConstraintWithView:v8 padding:a4];
}

- (void)alignBottomLeadingToBottomMarginLeadingMarginOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addBottomToBottomMarginConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeadingToLeadingMarginConstraintWithView:v8 padding:a4];
}

- (void)alignBottomLeadingToBottomMarginLeadingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addBottomToBottomMarginConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeadingToLeadingConstraintWithView:v8 padding:a4];
}

- (void)alignBottomRightToBottomRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addBottomToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addRightToRightConstraintWithView:v8 padding:a4];
}

- (void)alignBottomRightToBottomLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addBottomToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addRightToLeftConstraintWithView:v8 padding:a4];
}

- (void)alignBottomRightToTopRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addBottomToTopConstraintWithView:v8 padding:a5];
  [(UIView *)self addRightToRightConstraintWithView:v8 padding:a4];
}

- (void)alignBottomRightToTopLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addBottomToTopConstraintWithView:v8 padding:a5];
  [(UIView *)self addRightToLeftConstraintWithView:v8 padding:a4];
}

- (void)alignBottomTrailingToBottomTrailingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addBottomToBottomConstraintWithView:v8 padding:a5];
  [(UIView *)self addTrailingToTrailingConstraintWithView:v8 padding:a4];
}

- (void)alignCenterTopToCenterTopOfView:(id)a3 padding:(double)a4
{
  v6 = a3;
  [(UIView *)self addCenterXConstraintWithView:v6];
  [(UIView *)self addTopToTopConstraintWithView:v6 padding:a4];
}

- (void)alignCenterTopToCenterBottomOfView:(id)a3 padding:(double)a4
{
  v6 = a3;
  [(UIView *)self addCenterXConstraintWithView:v6];
  [(UIView *)self addTopToBottomConstraintWithView:v6 padding:a4];
}

- (void)alignCenterBottomToCenterBottomOfView:(id)a3 padding:(double)a4
{
  v6 = a3;
  [(UIView *)self addCenterXConstraintWithView:v6];
  [(UIView *)self addBottomToBottomConstraintWithView:v6 padding:a4];
}

- (void)alignCenterBottomToCenterTopOfView:(id)a3 padding:(double)a4
{
  v6 = a3;
  [(UIView *)self addCenterXConstraintWithView:v6];
  [(UIView *)self addBottomToTopConstraintWithView:v6 padding:a4];
}

- (void)alignCenterLeftToCenterLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addCenterYConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeftToLeftConstraintWithView:v8 padding:a4];
}

- (void)alignCenterLeftToCenterRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addCenterYConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeftToRightConstraintWithView:v8 padding:a4];
}

- (void)alignCenterRightToCenterRightOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addCenterYConstraintWithView:v8 padding:a5];
  [(UIView *)self addRightToRightConstraintWithView:v8 padding:a4];
}

- (void)alignCenterRightToCenterLeftOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addCenterYConstraintWithView:v8 padding:a5];
  [(UIView *)self addRightToLeftConstraintWithView:v8 padding:a4];
}

- (void)alignCenterLeadingToCenterLeadingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addCenterYConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeadingToLeadingConstraintWithView:v8 padding:a4];
}

- (void)alignCenterLeadingToCenterLeadingMarginOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addCenterYConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeadingToLeadingMarginConstraintWithView:v8 padding:a4];
}

- (void)alignCenterLeadingToCenterTrailingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addCenterYConstraintWithView:v8 padding:a5];
  [(UIView *)self addLeadingToTrailingConstraintWithView:v8 padding:a4];
}

- (void)alignCenterTrailingToCenterTrailingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addCenterYConstraintWithView:v8 padding:a5];
  [(UIView *)self addTrailingToTrailingConstraintWithView:v8 padding:a4];
}

- (void)alignCenterTrailingToCenterLeadingOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addCenterYConstraintWithView:v8 padding:a5];
  [(UIView *)self addTrailingToLeadingConstraintWithView:v8 padding:a4];
}

- (void)alignCenterTrailingToCenterTrailingMarginOfView:(id)a3 padding:(double)a4
{
  v6 = a3;
  [(UIView *)self addConstraintWithView:v6 attribute:6 viewAttribute:18 padding:a4];
  [(UIView *)self addCenterYConstraintWithView:v6];
}

- (void)alignCenterToCenterOfView:(id)a3
{
  v4 = a3;
  [(UIView *)self addCenterXConstraintWithView:v4];
  [(UIView *)self addCenterYConstraintWithView:v4];
}

- (void)alignCenterToCenterOfView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addCenterXConstraintWithView:v8 padding:a4];
  [(UIView *)self addCenterYConstraintWithView:v8 padding:a5];
}

- (void)constrainHeightBetweenTopView:(id)a3 bottomView:(id)a4 topPadding:(double)a5 bottomPadding:(double)a6
{
  v10 = a4;
  [(UIView *)self alignCenterTopToCenterBottomOfView:a3 padding:a5];
  [(UIView *)self alignCenterBottomToCenterTopOfView:v10 padding:a6];
}

- (void)constrainSize:(CGSize)a3
{
  height = a3.height;
  [(UIView *)self addConstraintWithAttribute:7 constant:a3.width];

  [(UIView *)self addConstraintWithAttribute:8 constant:height];
}

- (void)constrainSizeWithView:(id)a3 paddingX:(double)a4 paddingY:(double)a5
{
  v8 = a3;
  [(UIView *)self addConstraintWithView:v8 attribute:7 padding:a4];
  [(UIView *)self addConstraintWithView:v8 attribute:8 padding:a5];
}

- (void)constrainSizeAndAlignCenterToCenterOfView:(id)a3 sizePaddingX:(double)a4 sizePaddingY:(double)a5 centerPaddingX:(double)a6 centerPaddingY:(double)a7
{
  v12 = a3;
  [(UIView *)self constrainSizeWithView:v12 paddingX:a4 paddingY:a5];
  [(UIView *)self alignCenterToCenterOfView:v12 paddingX:a6 paddingY:a7];
}

- (void)addConstraintWithView:(id)a3 attribute:(int64_t)a4 viewAttribute:(int64_t)a5 scale:(double)a6 padding:(double)a7
{
  v23 = a3;
  v12 = [(UIView *)self associatedConstraints];
  v13 = [NSNumber numberWithInteger:a4];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = [v14 secondItem];
    if (v15 == v23 && [v14 secondAttribute] == a5)
    {
      [v14 multiplier];
      v17 = v16;

      if (v17 == a6)
      {
        [v14 setConstant:a7];
        v18 = [(UIView *)self superview];
        [v18 addConstraint:v14];
        goto LABEL_9;
      }
    }

    else
    {
    }

    v19 = [(UIView *)self superview];
    [v19 removeConstraint:v14];
  }

  [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [NSLayoutConstraint constraintWithItem:self attribute:a4 relatedBy:0 toItem:v23 attribute:a5 multiplier:a6 constant:a7];

  v21 = [(UIView *)self superview];
  [v21 addConstraint:v20];

  v18 = [(UIView *)self associatedConstraints];
  v22 = [NSNumber numberWithInteger:a4];
  [v18 setObject:v20 forKeyedSubscript:v22];

  v14 = v20;
LABEL_9:
}

- (void)addSubviewAndPinToEdges:(id)a3
{
  v4 = a3;
  [(UIView *)self addSubview:v4];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = _NSDictionaryOfVariableBindings(@"subviewToAddAndPin", v4, 0);
  v6 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-0-[subviewToAddAndPin]-0-|", 0, 0, v5);
  [(UIView *)self addConstraints:v6];

  v8 = _NSDictionaryOfVariableBindings(@"subviewToAddAndPin", v4, 0);

  v7 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-0-[subviewToAddAndPin]-0-|", 0, 0, v8);
  [(UIView *)self addConstraints:v7];
}

- (void)addSubviewAndCenter:(id)a3
{
  v4 = a3;
  [(UIView *)self addSubview:v4];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [NSLayoutConstraint constraintWithItem:v4 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(UIView *)self addConstraint:v5];

  v6 = [NSLayoutConstraint constraintWithItem:v4 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

  [(UIView *)self addConstraint:v6];
}

- (void)rc_setGlassBackground
{
  v3 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v3 - 8, v4);
  v5 = self;
  static _Glass._GlassVariant.regular.getter();
  v6[3] = type metadata accessor for _Glass();
  v6[4] = &protocol witness table for _Glass;
  sub_100015800(v6);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

- (void)rc_removeGlassBackground
{
  v2 = self;
  UIView._background.setter();
}

@end