@interface UIStackView
+ (id)_maps_Spacer:(double)spacer visibilityModel:(id)model;
+ (id)_maps_StackWithAxis:(int64_t)axis;
- (id)_maps_deepArrangedSubviewsExcluding:(id)excluding;
- (void)_addArrangedSubview:(id)subview layoutPriority:(unint64_t)priority;
- (void)_addArrangedSubview:(id)subview layoutPriority:(unint64_t)priority padding:(BannerContentPadding)padding;
- (void)_configureSpacerIfNeeded:(id)needed layoutPriority:(unint64_t)priority;
- (void)_maps_removeArrangedSubview:(id)subview;
- (void)_maps_setArrangedSubviews:(id)subviews;
- (void)_maps_setArrangedSubviews:(id)subviews animated:(BOOL)animated completion:(id)completion;
@end

@implementation UIStackView

- (void)_maps_removeArrangedSubview:(id)subview
{
  subviewCopy = subview;
  if (subviewCopy)
  {
    subviews = [(UIStackView *)self subviews];
    v5 = [subviews containsObject:subviewCopy];

    if (v5)
    {
      [(UIStackView *)self removeArrangedSubview:subviewCopy];
      [subviewCopy removeFromSuperview];
    }
  }
}

- (void)_maps_setArrangedSubviews:(id)subviews animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  subviewsCopy = subviews;
  if (animated)
  {
    arrangedSubviews = [(UIStackView *)self arrangedSubviews];
    v11 = [subviewsCopy differenceFromArray:arrangedSubviews];

    if ([v11 hasChanges])
    {
      v12 = +[GroupAnimation animation];
      [v12 setDuration:UINavigationControllerHideShowBarDuration];
      removals = [v11 removals];
      v14 = [removals count];

      if (v14)
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1005FBFC4;
        v29[3] = &unk_101661A90;
        v30 = v11;
        selfCopy = self;
        [v12 addAnimations:v29];
      }

      v15 = +[GroupAnimation animation];
      [v15 setDuration:UINavigationControllerHideShowBarDuration];
      [v15 setPreventsAnimationDuringPreparation:1];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1005FC0F0;
      v26[3] = &unk_101661A90;
      subviewsCopy = v11;
      v27 = subviewsCopy;
      selfCopy2 = self;
      [v15 addPreparation:v26];
      insertions = [subviewsCopy insertions];
      v17 = [insertions count];

      if (v17)
      {
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1005FC2F4;
        v24[3] = &unk_101661B18;
        v25 = subviewsCopy;
        [v15 addAnimations:v24];
      }

      if (completionCopy)
      {
        [v15 addCompletion:completionCopy];
      }

      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_1005FC404;
      v22 = &unk_101661738;
      v23 = v15;
      v18 = v15;
      [v12 addCompletion:&v19];
      [v12 runWithCurrentOptions];
    }

    else
    {
      subviewsCopy = v11;
    }
  }

  else
  {
    [(UIStackView *)self _maps_setArrangedSubviews:subviewsCopy];
  }
}

- (void)_maps_setArrangedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  arrangedSubviews = [(UIStackView *)self arrangedSubviews];
  v6 = [NSMutableArray arrayWithArray:arrangedSubviews];

  if (([v6 isEqualToArray:subviewsCopy] & 1) == 0)
  {
    [v6 removeObjectsInArray:subviewsCopy];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(UIStackView *)self _maps_removeArrangedSubview:*(*(&v22 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = subviewsCopy;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v18 + 1) + 8 * j);
          [(UIStackView *)self removeArrangedSubview:v17, v18];
          [(UIStackView *)self addArrangedSubview:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }
  }
}

- (id)_maps_deepArrangedSubviewsExcluding:(id)excluding
{
  excludingCopy = excluding;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  arrangedSubviews = [(UIStackView *)self arrangedSubviews];
  v7 = [arrangedSubviews countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([excludingCopy containsObject:v11] & 1) == 0)
        {
          _maps_deepArrangedSubviews = [v11 _maps_deepArrangedSubviews];
          [v5 addObjectsFromArray:_maps_deepArrangedSubviews];
        }

        [v5 addObject:v11];
      }

      v8 = [arrangedSubviews countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (void)_addArrangedSubview:(id)subview layoutPriority:(unint64_t)priority padding:(BannerContentPadding)padding
{
  var1 = padding.var1;
  var0 = padding.var0;
  subviewCopy = subview;
  if (var0 != 0.0)
  {
    v9 = [UIStackView _maps_Spacer:subviewCopy visibilityModel:var0];
    [(UIStackView *)self _maps_addArrangedContentHuggingSubview:v9];
  }

  [(UIStackView *)self _addArrangedSubview:subviewCopy layoutPriority:priority];
  if (var1 != 0.0)
  {
    v10 = [UIStackView _maps_Spacer:subviewCopy visibilityModel:var1];
    [(UIStackView *)self _maps_addArrangedContentHuggingSubview:v10];
  }
}

- (void)_addArrangedSubview:(id)subview layoutPriority:(unint64_t)priority
{
  subviewCopy = subview;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIStackView *)self _configureSpacerIfNeeded:subviewCopy layoutPriority:priority];
  }

  if (priority == 1)
  {
    v7 = 250.0;
  }

  else
  {
    if (priority)
    {
      goto LABEL_8;
    }

    [subviewCopy contentHuggingPriorityForAxis:{-[UIStackView axis](self, "axis")}];
    v7 = fmaxf(v6, 750.0);
  }

  axis = [(UIStackView *)self axis];
  *&v9 = v7;
  [subviewCopy setContentHuggingPriority:axis forAxis:v9];
LABEL_8:
  [subviewCopy contentCompressionResistancePriorityForAxis:{-[UIStackView axis](self, "axis")}];
  v11 = fmaxf(v10, 750.0);
  axis2 = [(UIStackView *)self axis];
  *&v13 = v11;
  [subviewCopy setContentCompressionResistancePriority:axis2 forAxis:v13];
  [(UIStackView *)self addArrangedSubview:subviewCopy];
}

- (void)_configureSpacerIfNeeded:(id)needed layoutPriority:(unint64_t)priority
{
  neededCopy = needed;
  if ([neededCopy axis] == -1)
  {
    [neededCopy setAxis:{-[UIStackView axis](self, "axis")}];
    if ([(UIStackView *)self axis]== 1)
    {
      [neededCopy heightAnchor];
    }

    else
    {
      [neededCopy widthAnchor];
    }
    v6 = ;
    if (priority == 1)
    {
      [neededCopy minLength];
      v7 = [v6 constraintGreaterThanOrEqualToConstant:?];
    }

    else
    {
      if (priority)
      {
LABEL_10:

        goto LABEL_11;
      }

      [neededCopy minLength];
      v7 = [v6 constraintEqualToConstant:?];
    }

    v8 = v7;
    [v7 setActive:1];

    goto LABEL_10;
  }

LABEL_11:
}

+ (id)_maps_Spacer:(double)spacer visibilityModel:(id)model
{
  modelCopy = model;
  v6 = [[BannerContentSpacerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(BannerContentSpacerView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BannerContentSpacerView *)v6 setMinLength:spacer];
  [(BannerContentVisibilityProxyView *)v6 setVisibilityModel:modelCopy];

  return v6;
}

+ (id)_maps_StackWithAxis:(int64_t)axis
{
  v4 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setDistribution:0];
  [v4 setAlignment:0];
  [v4 setAxis:axis];

  return v4;
}

@end