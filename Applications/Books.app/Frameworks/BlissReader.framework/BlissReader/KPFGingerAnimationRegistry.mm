@interface KPFGingerAnimationRegistry
- (Class)effectClassWithName:(id)name andType:(id)type;
- (KPFGingerAnimationRegistry)init;
- (id)p_animationTypeNumberFromString:(id)string;
- (void)dealloc;
@end

@implementation KPFGingerAnimationRegistry

- (KPFGingerAnimationRegistry)init
{
  v38.receiver = self;
  v38.super_class = KPFGingerAnimationRegistry;
  v2 = [(KPFGingerAnimationRegistry *)&v38 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = +[NSMutableDictionary dictionary];
    supportedAnimations = [objc_opt_class() supportedAnimations];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = [supportedAnimations countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(supportedAnimations);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          v11 = [(NSBundle *)v3 classNamed:v10];
          if (v11)
          {
            [v4 setObject:v11 forKeyedSubscript:v10];
          }
        }

        v7 = [supportedAnimations countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v7);
    }

    allValues = [v4 allValues];
    v2->mClassesForTypeAndName = objc_alloc_init(NSMutableDictionary);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = allValues;
    v25 = [allValues countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v25)
    {
      v24 = *v31;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v30 + 1) + 8 * j);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          supportedTypes = [v14 supportedTypes];
          v16 = [supportedTypes countByEnumeratingWithState:&v26 objects:v39 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v27;
            do
            {
              for (k = 0; k != v17; k = k + 1)
              {
                if (*v27 != v18)
                {
                  objc_enumerationMutation(supportedTypes);
                }

                v20 = *(*(&v26 + 1) + 8 * k);
                v21 = [(NSMutableDictionary *)v2->mClassesForTypeAndName objectForKeyedSubscript:v20];
                if (!v21)
                {
                  v21 = +[NSMutableDictionary dictionary];
                  [(NSMutableDictionary *)v2->mClassesForTypeAndName setObject:v21 forKeyedSubscript:v20];
                }

                [v21 setObject:v14 forKeyedSubscript:{objc_msgSend(v14, "animationName")}];
              }

              v17 = [supportedTypes countByEnumeratingWithState:&v26 objects:v39 count:16];
            }

            while (v17);
          }
        }

        v25 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v25);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KPFGingerAnimationRegistry;
  [(KPFGingerAnimationRegistry *)&v3 dealloc];
}

- (id)p_animationTypeNumberFromString:(id)string
{
  KNAnimationTypeFromKPFAnimationType(string);
  v3 = KNAnimationTypeAsNumber();
  [v3 intValue];
  return v3;
}

- (Class)effectClassWithName:(id)name andType:(id)type
{
  v5 = [(NSMutableDictionary *)self->mClassesForTypeAndName objectForKeyedSubscript:[(KPFGingerAnimationRegistry *)self p_animationTypeNumberFromString:type]];

  return [v5 objectForKeyedSubscript:name];
}

@end