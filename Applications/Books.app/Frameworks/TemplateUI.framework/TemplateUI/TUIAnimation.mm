@interface TUIAnimation
- ($2940F3BBF0C500EC413214967FDB6F62)timing;
- (id)_animationRenderModelForStep:(id)step sourceRenderModel:(id)model;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)generateRenderModelsFromSource:(id)source;
- (void)setTiming:(id *)timing;
@end

@implementation TUIAnimation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TUIAnimation allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    v4->_delay = self->_delay;
    v4->_duration = self->_duration;
    v4->_options = self->_options;
    v6 = *&self->_timing.mass;
    v7 = *&self->_timing.damping;
    v4->_timing.initialVelocity.dy = self->_timing.initialVelocity.dy;
    *&v4->_timing.damping = v7;
    *&v4->_timing.mass = v6;
    v8 = [(NSArray *)self->_steps copy];
    steps = v5->_steps;
    v5->_steps = v8;

    v10 = [(TUIAnimationStep *)self->_from copy];
    from = v5->_from;
    v5->_from = v10;

    v12 = [(TUIAnimationStep *)self->_to copy];
    to = v5->_to;
    v5->_to = v12;
  }

  return v5;
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

  v7 = [NSString stringWithFormat:@" delay: %g", *&self->_delay];
  [v3 addObject:v7];

  v8 = [NSString stringWithFormat:@" duration: %g", *&self->_duration];
  [v3 addObject:v8];

  v9 = [NSNumber numberWithUnsignedInteger:self->_options];
  v10 = [NSString stringWithFormat:@" options: %@", v9];
  [v3 addObject:v10];

  [v3 addObject:@" timing: "];
  v11 = *&self->_timing.damping;
  v31[0] = *&self->_timing.mass;
  v31[1] = v11;
  dy = self->_timing.initialVelocity.dy;
  v12 = NSStringFromTUISpringTimingParameters(v31);
  [v3 addObject:v12];

  v13 = [(TUIAnimationStep *)self->_from description];
  v14 = [NSString stringWithFormat:@" from: %@", v13];
  [v3 addObject:v14];

  v15 = [(TUIAnimationStep *)self->_to description];
  v16 = [NSString stringWithFormat:@" to: %@", v15];
  [v3 addObject:v16];

  [v3 addObject:@" steps: { "];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = self->_steps;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v28;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v27 + 1) + 8 * i);
        if (v20)
        {
          [v3 addObject:{@", "}];
        }

        v24 = [v23 description];
        [v3 addObject:v24];

        v20 = 1;
      }

      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v19);

    [v3 addObject:@" "];
  }

  else
  {
  }

  [v3 addObject:@"}>"];
  v25 = [v3 componentsJoinedByString:&stru_264550];

  return v25;
}

- ($2940F3BBF0C500EC413214967FDB6F62)timing
{
  v3 = *&self[1].var3.dy;
  *&retstr->var0 = *&self[1].var2;
  *&retstr->var2 = v3;
  retstr->var3.dy = self[2].var1;
  return self;
}

- (void)setTiming:(id *)timing
{
  v3 = *&timing->var0;
  v4 = *&timing->var2;
  self->_timing.initialVelocity.dy = timing->var3.dy;
  *&self->_timing.damping = v4;
  *&self->_timing.mass = v3;
}

- (id)generateRenderModelsFromSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  steps = [(TUIAnimation *)self steps];
  v7 = [steps countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(steps);
        }

        v11 = [(TUIAnimation *)self _animationRenderModelForStep:*(*(&v23 + 1) + 8 * i) sourceRenderModel:sourceCopy];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [steps countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v12 = objc_alloc_init(TUIAnimationRenderModel);
  [(TUIAnimation *)self delay];
  [(TUIAnimationRenderModel *)v12 setDelay:?];
  [(TUIAnimation *)self duration];
  [(TUIAnimationRenderModel *)v12 setDuration:?];
  [(TUIAnimationRenderModel *)v12 setOptions:[(TUIAnimationRenderModel *)v12 options]| [(TUIAnimation *)self options]];
  [(TUIAnimation *)self timing];
  v18[0] = v20;
  v18[1] = v21;
  v19 = v22;
  [(TUIAnimationRenderModel *)v12 setTiming:v18];
  [(TUIAnimationRenderModel *)v12 setModels:v5];
  from = [(TUIAnimation *)self from];
  v14 = [(TUIAnimation *)self _animationRenderModelForStep:from sourceRenderModel:sourceCopy];
  [(TUIAnimationRenderModel *)v12 setFrom:v14];

  v15 = [(TUIAnimation *)self to];
  v16 = [(TUIAnimation *)self _animationRenderModelForStep:v15 sourceRenderModel:sourceCopy];
  [(TUIAnimationRenderModel *)v12 setTo:v16];

  return v12;
}

- (id)_animationRenderModelForStep:(id)step sourceRenderModel:(id)model
{
  stepCopy = step;
  modelCopy = model;
  if (stepCopy)
  {
    values = [stepCopy values];
    v8 = modelCopy;
    v9 = values;
    v10 = v8;
    v11 = v10;
    if ([v9 count])
    {
      v32 = stepCopy;
      v11 = [v10 copyWithZone:0];
      v31 = v10;

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      keyEnumerator = [v9 keyEnumerator];
      v13 = [keyEnumerator countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v38;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v38 != v15)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v17 = *(*(&v37 + 1) + 8 * i);
            v18 = [v9 objectForKeyedSubscript:v17];
            if ([v17 isEqualToString:@"alpha"])
            {
              v19 = objc_opt_class();
              v20 = TUIDynamicCast(v19, v18);
              v21 = v20;
              if (v20)
              {
                [v20 doubleValue];
                [v11 setAlpha:?];
              }
            }

            else if ([v17 isEqualToString:@"transform"])
            {
              memset(&v36, 0, sizeof(v36));
              if (v18)
              {
                [v18 CGAffineTransformValue];
              }

              if (v11)
              {
                [v11 transform];
              }

              else
              {
                memset(&t1, 0, sizeof(t1));
              }

              t2 = v36;
              CGAffineTransformConcat(&v35, &t1, &t2);
              t1 = v35;
              [v11 setTransform:&t1];
            }
          }

          v14 = [keyEnumerator countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v14);
      }

      stepCopy = v32;
      v10 = v31;
    }

    v22 = [TUIAnimationRenderModelStep alloc];
    [stepCopy startTime];
    v24 = v23;
    [stepCopy duration];
    v26 = v25;
    values2 = [stepCopy values];
    allKeys = [values2 allKeys];
    v29 = [(TUIAnimationRenderModelStep *)v22 initWithStepStartTime:v11 duration:allKeys renderModel:v24 animatedKeyPaths:v26];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

@end