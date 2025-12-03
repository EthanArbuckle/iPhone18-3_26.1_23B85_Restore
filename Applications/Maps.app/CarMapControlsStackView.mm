@interface CarMapControlsStackView
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
@end

@implementation CarMapControlsStackView

- (NSArray)focusOrderSubItems
{
  [(CarMapControlsStackView *)self alpha];
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
      arrangedSubviews = [(CarMapControlsStackView *)selfCopy arrangedSubviews];
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
      arrangedSubviews = [(CarMapControlsStackView *)selfCopy subviews];
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

- (NSArray)preferredFocusEnvironments
{
  [(CarMapControlsStackView *)self alpha];
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
      arrangedSubviews = [(CarMapControlsStackView *)selfCopy arrangedSubviews];
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
      arrangedSubviews = [(CarMapControlsStackView *)selfCopy subviews];
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

@end