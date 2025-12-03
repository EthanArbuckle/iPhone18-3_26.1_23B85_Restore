@interface UIViewController
- (id)recursiveDescription;
- (void)addDescriptionToString:(id)string indentLevel:(int64_t)level;
@end

@implementation UIViewController

- (id)recursiveDescription
{
  v3 = [NSMutableString stringWithFormat:&stru_10658];
  [(UIViewController *)self addDescriptionToString:v3 indentLevel:0];

  return v3;
}

- (void)addDescriptionToString:(id)string indentLevel:(int64_t)level
{
  stringCopy = string;
  v7 = [&stru_10658 stringByPaddingToLength:level withString:@" " startingAtIndex:0];
  [stringCopy appendString:v7];
  v8 = [(UIViewController *)self debugDescription];
  view = [(UIViewController *)self view];
  [view frame];
  v10 = NSStringFromCGRect(v22);
  [stringCopy appendFormat:@"%@, %@", v8, v10];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v12 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        [stringCopy appendFormat:@"\n%@>", v7];
        [v16 addDescriptionToString:stringCopy indentLevel:level + 1];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

@end