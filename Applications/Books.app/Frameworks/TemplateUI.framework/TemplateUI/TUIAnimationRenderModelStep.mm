@interface TUIAnimationRenderModelStep
- (TUIAnimationRenderModelStep)initWithStepStartTime:(double)a3 duration:(double)a4 renderModel:(id)a5 animatedKeyPaths:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation TUIAnimationRenderModelStep

- (TUIAnimationRenderModelStep)initWithStepStartTime:(double)a3 duration:(double)a4 renderModel:(id)a5 animatedKeyPaths:(id)a6
{
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = TUIAnimationRenderModelStep;
  v13 = [(TUIAnimationRenderModelStep *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_stepStartTime = a3;
    v13->_stepDuration = a4;
    objc_storeStrong(&v13->_renderModel, a5);
    v15 = [v12 copy];
    keyPaths = v14->_keyPaths;
    v14->_keyPaths = v15;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUIAnimationRenderModelStep allocWithZone:a3];
  stepStartTime = self->_stepStartTime;
  stepDuration = self->_stepDuration;
  renderModel = self->_renderModel;
  keyPaths = self->_keyPaths;

  return [(TUIAnimationRenderModelStep *)v4 initWithStepStartTime:renderModel duration:keyPaths renderModel:stepStartTime animatedKeyPaths:stepDuration];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:@"<"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 addObject:v5];

  v6 = [NSString stringWithFormat:@" %p", self];
  [v3 addObject:v6];

  v7 = [NSString stringWithFormat:@" startTime: %g", *&self->_stepStartTime];
  [v3 addObject:v7];

  v8 = [NSString stringWithFormat:@" duration: %g", *&self->_stepDuration];
  [v3 addObject:v8];

  [v3 addObject:@" keyPaths: "];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = self->_keyPaths;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v25;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if (v12)
        {
          [v3 addObject:{@", "}];
        }

        [v3 addObject:v15];
        [v3 addObject:@" = "];
        if ([v15 isEqualToString:@"alpha"])
        {
          [(TUIRenderModelAnimatable *)self->_renderModel alpha];
          v17 = [NSString stringWithFormat:@"%g", v16];
        }

        else
        {
          if (![v15 isEqualToString:@"transform"])
          {
            goto LABEL_16;
          }

          renderModel = self->_renderModel;
          if (renderModel)
          {
            [(TUIRenderModelAnimatable *)renderModel transform];
          }

          else
          {
            memset(&transform, 0, sizeof(transform));
          }

          v17 = NSStringFromCGAffineTransform(&transform);
        }

        v19 = v17;
        [v3 addObject:v17];

LABEL_16:
        v12 = 1;
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v20 = [NSString stringWithFormat:@" renderModel: %p", self->_renderModel];
  [v3 addObject:v20];

  [v3 addObject:@">"];
  v21 = [v3 componentsJoinedByString:&stru_264550];

  return v21;
}

@end