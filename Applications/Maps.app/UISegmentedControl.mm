@interface UISegmentedControl
- (void)_maps_setItems:(id)a3;
@end

@implementation UISegmentedControl

- (void)_maps_setItems:(id)a3
{
  v4 = a3;
  [(UISegmentedControl *)self removeAllSegments];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(UISegmentedControl *)self insertSegmentWithTitle:v10 atIndex:[(UISegmentedControl *)self numberOfSegments] animated:0];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(UISegmentedControl *)self insertSegmentWithImage:v10 atIndex:[(UISegmentedControl *)self numberOfSegments] animated:0];
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end