@interface QLPULayerAnimationGroup
- (QLPULayerAnimationGroup)initWithReferenceLayer:(id)layer;
- (double)currentTime;
- (void)updateAnimations;
@end

@implementation QLPULayerAnimationGroup

- (QLPULayerAnimationGroup)initWithReferenceLayer:(id)layer
{
  layerCopy = layer;
  v9.receiver = self;
  v9.super_class = QLPULayerAnimationGroup;
  v6 = [(QLPUTimedAnimationGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_referenceLayer, layer);
    [(QLPULayerAnimationGroup *)v7 currentTime];
    [(QLPUTimedAnimationGroup *)v7 setBeginTime:?];
  }

  return v7;
}

- (double)currentTime
{
  referenceLayer = [(QLPULayerAnimationGroup *)self referenceLayer];
  [referenceLayer convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;

  return v4;
}

- (void)updateAnimations
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = QLPULayerAnimationGroup;
  [(QLPUTimedAnimationGroup *)&v23 updateAnimations];
  isPaused = [(QLPUAnimationGroup *)self isPaused];
  [(QLPUTimedAnimationGroup *)self elapsedTime];
  v5 = v4;
  [(QLPUTimedAnimationGroup *)self beginTime];
  v7 = v6;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  subAnimationGroups = [(QLPUAnimationGroup *)self subAnimationGroups];
  v9 = [subAnimationGroups countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(subAnimationGroups);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (isPaused)
          {
            v14 = 0.0;
            v15 = 0.0;
            v16 = v13;
            v17 = v5;
          }

          else
          {
            LODWORD(v14) = 1.0;
            v17 = 0.0;
            v16 = v13;
            v15 = v7;
          }

          [v16 setSpeed:v14 timeOffset:v17 beginTime:v15];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [subAnimationGroups countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end