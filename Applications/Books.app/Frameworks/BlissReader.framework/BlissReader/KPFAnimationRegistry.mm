@interface KPFAnimationRegistry
- (KPFAnimationRegistry)init;
- (void)dealloc;
@end

@implementation KPFAnimationRegistry

- (KPFAnimationRegistry)init
{
  v26.receiver = self;
  v26.super_class = KPFAnimationRegistry;
  v2 = [(KPFAnimationRegistry *)&v26 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = +[NSMutableDictionary dictionary];
    supportedAnimations = [objc_opt_class() supportedAnimations];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [supportedAnimations countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(supportedAnimations);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [(NSBundle *)v3 classNamed:v10];
          if (v11)
          {
            [v4 setObject:v11 forKey:v10];
          }
        }

        v7 = [supportedAnimations countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v7);
    }

    allValues = [v4 allValues];
    v2->mClassesForAnimationName = objc_alloc_init(NSMutableDictionary);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [allValues countByEnumeratingWithState:&v18 objects:v27 count:16];
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
            objc_enumerationMutation(allValues);
          }

          -[NSMutableDictionary setObject:forKey:](v2->mClassesForAnimationName, "setObject:forKey:", *(*(&v18 + 1) + 8 * j), [*(*(&v18 + 1) + 8 * j) animationName]);
        }

        v14 = [allValues countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v14);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KPFAnimationRegistry;
  [(KPFAnimationRegistry *)&v3 dealloc];
}

@end