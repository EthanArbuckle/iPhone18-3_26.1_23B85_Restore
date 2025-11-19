@interface ARUIAnimatableProperty
- (ARUIAnimatableProperty)initWithGetter:(id)a3 setter:(id)a4;
- (id)currentValue;
- (id)endValue;
- (id)startValue;
- (void)addPropertyAnimation:(id)a3;
- (void)removeAllPropertyAnimations;
- (void)setValueImmediate:(id)a3;
- (void)update:(double)a3;
@end

@implementation ARUIAnimatableProperty

- (ARUIAnimatableProperty)initWithGetter:(id)a3 setter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ARUIAnimatableProperty;
  v8 = [(ARUIAnimatableProperty *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x1D3875270](v6);
    getter = v8->_getter;
    v8->_getter = v9;

    v11 = MEMORY[0x1D3875270](v7);
    setter = v8->_setter;
    v8->_setter = v11;
  }

  return v8;
}

- (void)setValueImmediate:(id)a3
{
  v4 = a3;
  [(ARUIAnimatableProperty *)self removeAllPropertyAnimations];
  (*(self->_setter + 2))();
}

- (void)addPropertyAnimation:(id)a3
{
  v4 = a3;
  animations = self->_animations;
  v8 = v4;
  if (!animations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_animations;
    self->_animations = v6;

    v4 = v8;
    animations = self->_animations;
  }

  [(NSMutableArray *)animations addObject:v4];
}

- (void)removeAllPropertyAnimations
{
  [(NSMutableArray *)self->_animations removeAllObjects];
  startValue = self->_startValue;
  self->_startValue = 0;

  endValue = self->_endValue;
  self->_endValue = 0;

  currentValue = self->_currentValue;
  self->_currentValue = 0;
}

- (void)update:(double)a3
{
  v4 = self;
  v38 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_animations count])
  {
    return;
  }

  v5 = [(NSMutableArray *)v4->_animations firstObject];
  v6 = [v5 _startValue];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v4->_animations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v26 = v4;
    v27 = v5;
    v10 = 0;
    v11 = *v33;
    v12 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        v14 = v6;
        if (*v33 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [v15 isFinishedAnimating];
        [v15 update:a3];
        v6 = [v15 valueByAddingCurrentValueToValue:v6];

        v17 = [v15 isFinishedAnimating];
        v18 = v17;
        if ((v16 & 1) == 0 && v17)
        {
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v10 addObject:v15];
        }

        v12 &= v18;
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);

    if (!v12)
    {
      v20 = v6;
      v4 = v26;
      v5 = v27;
      currentValue = v26->_currentValue;
      v26->_currentValue = v20;
      goto LABEL_19;
    }

    v4 = v26;
    v5 = v27;
  }

  else
  {

    v10 = 0;
  }

  currentValue = [(NSMutableArray *)v4->_animations lastObject];
  v20 = [currentValue _endValue];

  [(ARUIAnimatableProperty *)v4 removeAllPropertyAnimations];
LABEL_19:

  (*(v4->_setter + 2))();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v28 + 1) + 8 * j) callAndReleaseCompletionHandler];
      }

      v23 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v23);
  }
}

- (id)startValue
{
  v3 = [(NSMutableArray *)self->_animations lastObject];
  v4 = [v3 _startValue];
  if (!v4)
  {
    v4 = [(ARUIAnimatableProperty *)self currentValue];
  }

  return v4;
}

- (id)endValue
{
  v3 = [(NSMutableArray *)self->_animations lastObject];
  v4 = [v3 _endValue];
  if (!v4)
  {
    v4 = [(ARUIAnimatableProperty *)self currentValue];
  }

  return v4;
}

- (id)currentValue
{
  currentValue = self->_currentValue;
  if (!currentValue)
  {
    v4 = (*(self->_getter + 2))();
    v5 = self->_currentValue;
    self->_currentValue = v4;

    currentValue = self->_currentValue;
  }

  return currentValue;
}

@end