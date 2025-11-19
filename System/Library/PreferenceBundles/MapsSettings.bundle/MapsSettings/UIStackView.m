@interface UIStackView
- (void)_maps_removeArrangedSubview:(id)a3;
- (void)_maps_setArrangedSubviews:(id)a3;
- (void)_maps_setArrangedSubviews:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation UIStackView

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
        v29[2] = sub_16D34;
        v29[3] = &unk_7FAF0;
        v30 = v11;
        v31 = self;
        [v12 addAnimations:v29];
      }

      v15 = +[GroupAnimation animation];
      [v15 setDuration:UINavigationControllerHideShowBarDuration];
      [v15 setPreventsAnimationDuringPreparation:1];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_16E60;
      v26[3] = &unk_7FAF0;
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
        v24[2] = sub_17064;
        v24[3] = &unk_69228;
        v25 = v9;
        [v15 addAnimations:v24];
      }

      if (v8)
      {
        [v15 addCompletion:v8];
      }

      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_17174;
      v22 = &unk_7FC30;
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

@end