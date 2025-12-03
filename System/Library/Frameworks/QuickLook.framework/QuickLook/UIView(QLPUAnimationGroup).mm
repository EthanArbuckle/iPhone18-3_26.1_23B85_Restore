@interface UIView(QLPUAnimationGroup)
+ (void)_qlpu_animateViews:()QLPUAnimationGroup withAnimationBlock:completionHandler:;
+ (void)qlpu_animateViews:()QLPUAnimationGroup usingDefaultDampedSpringWithDelay:initialSpringVelocity:options:animations:completion:;
+ (void)qlpu_animateViews:()QLPUAnimationGroup usingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:animations:completion:;
+ (void)qlpu_animateViews:()QLPUAnimationGroup withDuration:delay:options:animations:completion:;
+ (void)qlpu_animateViews:()QLPUAnimationGroup withDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:;
- (id)_qlpu_animationDictionary;
@end

@implementation UIView(QLPUAnimationGroup)

+ (void)qlpu_animateViews:()QLPUAnimationGroup withDuration:delay:options:animations:completion:
{
  v14 = a7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__UIView_QLPUAnimationGroup__qlpu_animateViews_withDuration_delay_options_animations_completion___block_invoke;
  v16[3] = &unk_278B58750;
  v18 = a2;
  v19 = a3;
  v20 = a6;
  v17 = v14;
  v15 = v14;
  [self _qlpu_animateViews:a5 withAnimationBlock:v16 completionHandler:a8];
}

+ (void)qlpu_animateViews:()QLPUAnimationGroup withDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:
{
  v18 = a9;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __142__UIView_QLPUAnimationGroup__qlpu_animateViews_withDuration_delay_usingSpringWithDamping_initialSpringVelocity_options_animations_completion___block_invoke;
  v20[3] = &unk_278B58778;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a8;
  v21 = v18;
  v19 = v18;
  [self _qlpu_animateViews:a7 withAnimationBlock:v20 completionHandler:a10];
}

+ (void)qlpu_animateViews:()QLPUAnimationGroup usingDefaultDampedSpringWithDelay:initialSpringVelocity:options:animations:completion:
{
  v14 = a7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __134__UIView_QLPUAnimationGroup__qlpu_animateViews_usingDefaultDampedSpringWithDelay_initialSpringVelocity_options_animations_completion___block_invoke;
  v16[3] = &unk_278B58750;
  v18 = a2;
  v19 = a3;
  v20 = a6;
  v17 = v14;
  v15 = v14;
  [self _qlpu_animateViews:a5 withAnimationBlock:v16 completionHandler:a8];
}

+ (void)qlpu_animateViews:()QLPUAnimationGroup usingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:animations:completion:
{
  v22 = a11;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __147__UIView_QLPUAnimationGroup__qlpu_animateViews_usingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion___block_invoke;
  v24[3] = &unk_278B587A0;
  v26 = a2;
  v27 = a3;
  v28 = a10;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v25 = v22;
  v23 = v22;
  [self _qlpu_animateViews:a9 withAnimationBlock:v24 completionHandler:a12];
}

+ (void)_qlpu_animateViews:()QLPUAnimationGroup withAnimationBlock:completionHandler:
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v40 = a4;
  v39 = a5;
  firstObject = [v7 firstObject];
  layer = [firstObject layer];

  v38 = layer;
  v37 = [[QLPULayerAnimationGroup alloc] initWithReferenceLayer:layer];
  [QLPUAnimationGroup pushAnimationGroup:?];
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v7;
  v45 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v45)
  {
    v43 = *v67;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v67 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v66 + 1) + 8 * i);
        layer2 = [v11 layer];
        animationKeys = [layer2 animationKeys];
        if ([animationKeys count])
        {
          v48 = v11;
          v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(animationKeys, "count")}];
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v15 = animationKeys;
          v16 = [v15 countByEnumeratingWithState:&v62 objects:v72 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v63;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v63 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v62 + 1) + 8 * j);
                v21 = [layer2 animationForKey:v20];
                if (v21)
                {
                  [v14 setObject:v21 forKeyedSubscript:v20];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v62 objects:v72 count:16];
            }

            while (v17);
          }

          [strongToStrongObjectsMapTable setObject:v14 forKey:v48];
        }
      }

      v45 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v45);
  }

  if (v39)
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __86__UIView_QLPUAnimationGroup___qlpu_animateViews_withAnimationBlock_completionHandler___block_invoke;
    v60[3] = &unk_278B583E8;
    v61 = v39;
    [(QLPUAnimationGroup *)v37 setCompletionHandler:v60];
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __86__UIView_QLPUAnimationGroup___qlpu_animateViews_withAnimationBlock_completionHandler___block_invoke_2;
  v58[3] = &unk_278B571B8;
  v22 = v37;
  v59 = v22;
  v40[2](v40, v58);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obja = obj;
  v46 = [obja countByEnumeratingWithState:&v54 objects:v71 count:16];
  if (v46)
  {
    v44 = *v55;
    do
    {
      v23 = 0;
      do
      {
        if (*v55 != v44)
        {
          objc_enumerationMutation(obja);
        }

        v49 = v23;
        v24 = *(*(&v54 + 1) + 8 * v23);
        layer3 = [v24 layer];
        v26 = [strongToStrongObjectsMapTable objectForKey:v24];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        animationKeys2 = [layer3 animationKeys];
        v28 = [animationKeys2 countByEnumeratingWithState:&v50 objects:v70 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v51;
          do
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v51 != v30)
              {
                objc_enumerationMutation(animationKeys2);
              }

              v32 = *(*(&v50 + 1) + 8 * k);
              v33 = [v26 objectForKeyedSubscript:v32];
              v34 = [layer3 animationForKey:v32];
              if (v34 != v33)
              {
                v35 = [[QLPULayerAnimation alloc] initWithLayer:layer3 key:v32];
                [(QLPUAnimationGroup *)v22 addSubAnimationGroup:v35];
              }
            }

            v29 = [animationKeys2 countByEnumeratingWithState:&v50 objects:v70 count:16];
          }

          while (v29);
        }

        v23 = v49 + 1;
      }

      while (v49 + 1 != v46);
      v46 = [obja countByEnumeratingWithState:&v54 objects:v71 count:16];
    }

    while (v46);
  }

  [QLPUAnimationGroup popAnimationGroup:v22];
  v36 = *MEMORY[0x277D85DE8];
}

- (id)_qlpu_animationDictionary
{
  v18 = *MEMORY[0x277D85DE8];
  layer = [self layer];
  animationKeys = [layer animationKeys];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(animationKeys, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = animationKeys;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [layer animationForKey:{v9, v13}];
        [v3 setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

@end