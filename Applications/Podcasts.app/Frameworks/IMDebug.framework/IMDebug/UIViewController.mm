@interface UIViewController
- (id)recursiveDescription;
- (void)addDescriptionToString:(id)a3 indentLevel:(int64_t)a4;
@end

@implementation UIViewController

- (id)recursiveDescription
{
  v3 = [NSMutableString stringWithFormat:&stru_10658];
  [(UIViewController *)self addDescriptionToString:v3 indentLevel:0];

  return v3;
}

- (void)addDescriptionToString:(id)a3 indentLevel:(int64_t)a4
{
  v6 = a3;
  v7 = [&stru_10658 stringByPaddingToLength:a4 withString:@" " startingAtIndex:0];
  [v6 appendString:v7];
  v8 = [(UIViewController *)self debugDescription];
  v9 = [(UIViewController *)self view];
  [v9 frame];
  v10 = NSStringFromCGRect(v22);
  [v6 appendFormat:@"%@, %@", v8, v10];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(UIViewController *)self childViewControllers];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        [v6 appendFormat:@"\n%@>", v7];
        [v16 addDescriptionToString:v6 indentLevel:a4 + 1];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

@end