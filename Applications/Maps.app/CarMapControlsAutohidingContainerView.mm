@interface CarMapControlsAutohidingContainerView
- (CGSize)intrinsicContentSize;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (void)addSubview:(id)subview;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
@end

@implementation CarMapControlsAutohidingContainerView

- (CGSize)intrinsicContentSize
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [(CarMapControlsAutohidingContainerView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v16 + 1) + 8 * i) intrinsicContentSize];
        v7 = v9 + v7;
      }

      v5 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  subviews2 = [(CarMapControlsAutohidingContainerView *)self subviews];
  v11 = [subviews2 count];

  if (v11 >= 2)
  {
    subviews3 = [(CarMapControlsAutohidingContainerView *)self subviews];
    [subviews3 count];
  }

  UIRoundToViewScale();
  v14 = v13;
  v15 = 36.0;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CarMapControlsAutohidingContainerView;
  [(CarMapControlsAutohidingContainerView *)&v7 layoutSubviews];
  [(CarMapControlsAutohidingContainerView *)self frame];
  v4 = ceil(v3);
  [(CarMapControlsAutohidingContainerView *)self intrinsicContentSize];
  v6 = 0.0;
  if (v4 >= floor(v5))
  {
    v6 = 1.0;
  }

  [(CarMapControlsAutohidingContainerView *)self setAlpha:v6];
}

- (NSArray)preferredFocusEnvironments
{
  [(CarMapControlsAutohidingContainerView *)self alpha];
  if (v3 == 0.0)
  {
    v4 = &__NSArray0__struct;
  }

  else
  {
    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      arrangedSubviews = [(CarMapControlsAutohidingContainerView *)selfCopy arrangedSubviews];
      v7 = +[NSMutableArray array];
      v8 = [arrangedSubviews sortedArrayUsingComparator:&stru_1016329C8];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              focusOrderSubItems = [v13 focusOrderSubItems];
              [v7 addObjectsFromArray:focusOrderSubItems];
            }

            else
            {
              [v7 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v10);
      }
    }

    else
    {
      arrangedSubviews = [(CarMapControlsAutohidingContainerView *)selfCopy subviews];
      v7 = +[NSMutableArray array];
      v8 = [arrangedSubviews sortedArrayUsingComparator:&stru_1016329C8];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v8);
            }

            v19 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              focusOrderSubItems2 = [v19 focusOrderSubItems];
              [v7 addObjectsFromArray:focusOrderSubItems2];
            }

            else
            {
              [v7 addObject:v19];
            }
          }

          v16 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v16);
      }
    }

    v21 = [v7 copy];

    if ([v21 count])
    {
      firstObject = [v21 firstObject];
      v28 = firstObject;
      v4 = [NSArray arrayWithObjects:&v28 count:1];
    }

    else
    {
      v4 = &__NSArray0__struct;
    }
  }

  return v4;
}

- (NSArray)focusOrderSubItems
{
  [(CarMapControlsAutohidingContainerView *)self alpha];
  if (v3 == 0.0)
  {
    v4 = &__NSArray0__struct;
  }

  else
  {
    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      arrangedSubviews = [(CarMapControlsAutohidingContainerView *)selfCopy arrangedSubviews];
      v7 = +[NSMutableArray array];
      v8 = [arrangedSubviews sortedArrayUsingComparator:&stru_1016329C8];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v23;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v22 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              focusOrderSubItems = [v13 focusOrderSubItems];
              [v7 addObjectsFromArray:focusOrderSubItems];
            }

            else
            {
              [v7 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v10);
      }
    }

    else
    {
      arrangedSubviews = [(CarMapControlsAutohidingContainerView *)selfCopy subviews];
      v7 = +[NSMutableArray array];
      v8 = [arrangedSubviews sortedArrayUsingComparator:&stru_1016329C8];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v8);
            }

            v19 = *(*(&v22 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              focusOrderSubItems2 = [v19 focusOrderSubItems];
              [v7 addObjectsFromArray:focusOrderSubItems2];
            }

            else
            {
              [v7 addObject:v19];
            }
          }

          v16 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v16);
      }
    }

    v4 = [v7 copy];
  }

  return v4;
}

- (void)addSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = CarMapControlsAutohidingContainerView;
  [(CarMapControlsAutohidingContainerView *)&v4 addSubview:subview];
  [(CarMapControlsAutohidingContainerView *)self invalidateIntrinsicContentSize];
}

- (void)setAlpha:(double)alpha
{
  [(CarMapControlsAutohidingContainerView *)self alpha];
  v6 = v5;
  v10.receiver = self;
  v10.super_class = CarMapControlsAutohidingContainerView;
  [(CarMapControlsAutohidingContainerView *)&v10 setAlpha:alpha];
  [(CarMapControlsAutohidingContainerView *)self alpha];
  if (v6 != v7)
  {
    v8 = sub_100090D58();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      [(CarMapControlsAutohidingContainerView *)self alpha];
      *buf = 134218240;
      v12 = v6;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Changing alpha from %f to %f", buf, 0x16u);
    }

    [(CarMapControlsAutohidingContainerView *)self setNeedsFocusUpdate];
  }

  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

@end