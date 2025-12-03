@interface PSSpecifier
+ (void)updateSpecifiers:(id)specifiers withTarget:(id)target;
@end

@implementation PSSpecifier

+ (void)updateSpecifiers:(id)specifiers withTarget:(id)target
{
  specifiersCopy = specifiers;
  targetCopy = target;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = specifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) setTarget:{targetCopy, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end