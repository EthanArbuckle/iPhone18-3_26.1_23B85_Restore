@interface UIStackView
+ (id)_maps_Spacer:(double)a3 visibilityModel:(id)a4;
+ (id)_maps_StackWithAxis:(int64_t)a3;
- (id)_maps_deepArrangedSubviewsExcluding:(id)a3;
- (void)_addArrangedSubview:(id)a3 layoutPriority:(unint64_t)a4;
- (void)_addArrangedSubview:(id)a3 layoutPriority:(unint64_t)a4 padding:(BannerContentPadding)a5;
- (void)_configureSpacerIfNeeded:(id)a3 layoutPriority:(unint64_t)a4;
- (void)_maps_removeArrangedSubview:(id)a3;
- (void)_maps_setArrangedSubviews:(id)a3;
- (void)_maps_setArrangedSubviews:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation UIStackView

- (void)_maps_removeArrangedSubview:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(UIStackView *)self subviews];
    v5 = [v4 containsObject:v6];

    if (v5)
    {
      [(UIStackView *)self removeArrangedSubview:v6];
      [v6 removeFromSuperview];
    }
  }
}

- (void)_maps_setArrangedSubviews:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  if (a4)
  {
    v10 = [(UIStackView *)self arrangedSubviews];
    v11 = [v9 differenceFromArray:v10];

    if ([v11 hasChanges])
    {
      v12 = +[GroupAnimation animation];
      [v12 setDuration:UINavigationControllerHideShowBarDuration];
      v13 = [v11 removals];
      v14 = [v13 count];

      if (v14)
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1005FBFC4;
        v29[3] = &unk_101661A90;
        v30 = v11;
        v31 = self;
        [v12 addAnimations:v29];
      }

      v15 = +[GroupAnimation animation];
      [v15 setDuration:UINavigationControllerHideShowBarDuration];
      [v15 setPreventsAnimationDuringPreparation:1];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1005FC0F0;
      v26[3] = &unk_101661A90;
      v9 = v11;
      v27 = v9;
      v28 = self;
      [v15 addPreparation:v26];
      v16 = [v9 insertions];
      v17 = [v16 count];

      if (v17)
      {
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1005FC2F4;
        v24[3] = &unk_101661B18;
        v25 = v9;
        [v15 addAnimations:v24];
      }

      if (v8)
      {
        [v15 addCompletion:v8];
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
      v9 = v11;
    }
  }

  else
  {
    [(UIStackView *)self _maps_setArrangedSubviews:v9];
  }
}

- (void)_maps_setArrangedSubviews:(id)a3
{
  v4 = a3;
  v5 = [(UIStackView *)self arrangedSubviews];
  v6 = [NSMutableArray arrayWithArray:v5];

  if (([v6 isEqualToArray:v4] & 1) == 0)
  {
    [v6 removeObjectsInArray:v4];
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
    v12 = v4;
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

- (id)_maps_deepArrangedSubviewsExcluding:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(UIStackView *)self arrangedSubviews];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 containsObject:v11] & 1) == 0)
        {
          v12 = [v11 _maps_deepArrangedSubviews];
          [v5 addObjectsFromArray:v12];
        }

        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (void)_addArrangedSubview:(id)a3 layoutPriority:(unint64_t)a4 padding:(BannerContentPadding)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v11 = a3;
  if (var0 != 0.0)
  {
    v9 = [UIStackView _maps_Spacer:v11 visibilityModel:var0];
    [(UIStackView *)self _maps_addArrangedContentHuggingSubview:v9];
  }

  [(UIStackView *)self _addArrangedSubview:v11 layoutPriority:a4];
  if (var1 != 0.0)
  {
    v10 = [UIStackView _maps_Spacer:v11 visibilityModel:var1];
    [(UIStackView *)self _maps_addArrangedContentHuggingSubview:v10];
  }
}

- (void)_addArrangedSubview:(id)a3 layoutPriority:(unint64_t)a4
{
  v14 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIStackView *)self _configureSpacerIfNeeded:v14 layoutPriority:a4];
  }

  if (a4 == 1)
  {
    v7 = 250.0;
  }

  else
  {
    if (a4)
    {
      goto LABEL_8;
    }

    [v14 contentHuggingPriorityForAxis:{-[UIStackView axis](self, "axis")}];
    v7 = fmaxf(v6, 750.0);
  }

  v8 = [(UIStackView *)self axis];
  *&v9 = v7;
  [v14 setContentHuggingPriority:v8 forAxis:v9];
LABEL_8:
  [v14 contentCompressionResistancePriorityForAxis:{-[UIStackView axis](self, "axis")}];
  v11 = fmaxf(v10, 750.0);
  v12 = [(UIStackView *)self axis];
  *&v13 = v11;
  [v14 setContentCompressionResistancePriority:v12 forAxis:v13];
  [(UIStackView *)self addArrangedSubview:v14];
}

- (void)_configureSpacerIfNeeded:(id)a3 layoutPriority:(unint64_t)a4
{
  v9 = a3;
  if ([v9 axis] == -1)
  {
    [v9 setAxis:{-[UIStackView axis](self, "axis")}];
    if ([(UIStackView *)self axis]== 1)
    {
      [v9 heightAnchor];
    }

    else
    {
      [v9 widthAnchor];
    }
    v6 = ;
    if (a4 == 1)
    {
      [v9 minLength];
      v7 = [v6 constraintGreaterThanOrEqualToConstant:?];
    }

    else
    {
      if (a4)
      {
LABEL_10:

        goto LABEL_11;
      }

      [v9 minLength];
      v7 = [v6 constraintEqualToConstant:?];
    }

    v8 = v7;
    [v7 setActive:1];

    goto LABEL_10;
  }

LABEL_11:
}

+ (id)_maps_Spacer:(double)a3 visibilityModel:(id)a4
{
  v5 = a4;
  v6 = [[BannerContentSpacerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(BannerContentSpacerView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BannerContentSpacerView *)v6 setMinLength:a3];
  [(BannerContentVisibilityProxyView *)v6 setVisibilityModel:v5];

  return v6;
}

+ (id)_maps_StackWithAxis:(int64_t)a3
{
  v4 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setDistribution:0];
  [v4 setAlignment:0];
  [v4 setAxis:a3];

  return v4;
}

@end