@interface ARUIAnimatableProperty
- (ARUIAnimatableProperty)initWithGetter:(id)getter setter:(id)setter;
- (id)currentValue;
- (id)endValue;
- (id)startValue;
- (void)addPropertyAnimation:(id)animation;
- (void)removeAllPropertyAnimations;
- (void)setValueImmediate:(id)immediate;
- (void)update:(double)update;
@end

@implementation ARUIAnimatableProperty

- (ARUIAnimatableProperty)initWithGetter:(id)getter setter:(id)setter
{
  getterCopy = getter;
  setterCopy = setter;
  v14.receiver = self;
  v14.super_class = ARUIAnimatableProperty;
  v8 = [(ARUIAnimatableProperty *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x1D3875270](getterCopy);
    getter = v8->_getter;
    v8->_getter = v9;

    v11 = MEMORY[0x1D3875270](setterCopy);
    setter = v8->_setter;
    v8->_setter = v11;
  }

  return v8;
}

- (void)setValueImmediate:(id)immediate
{
  immediateCopy = immediate;
  [(ARUIAnimatableProperty *)self removeAllPropertyAnimations];
  (*(self->_setter + 2))();
}

- (void)addPropertyAnimation:(id)animation
{
  animationCopy = animation;
  animations = self->_animations;
  v8 = animationCopy;
  if (!animations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_animations;
    self->_animations = v6;

    animationCopy = v8;
    animations = self->_animations;
  }

  [(NSMutableArray *)animations addObject:animationCopy];
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

- (void)update:(double)update
{
  selfCopy = self;
  v38 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_animations count])
  {
    return;
  }

  firstObject = [(NSMutableArray *)selfCopy->_animations firstObject];
  _startValue = [firstObject _startValue];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = selfCopy->_animations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v26 = selfCopy;
    v27 = firstObject;
    v10 = 0;
    v11 = *v33;
    v12 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        v14 = _startValue;
        if (*v33 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        isFinishedAnimating = [v15 isFinishedAnimating];
        [v15 update:update];
        _startValue = [v15 valueByAddingCurrentValueToValue:_startValue];

        isFinishedAnimating2 = [v15 isFinishedAnimating];
        v18 = isFinishedAnimating2;
        if ((isFinishedAnimating & 1) == 0 && isFinishedAnimating2)
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
      _endValue = _startValue;
      selfCopy = v26;
      firstObject = v27;
      currentValue = v26->_currentValue;
      v26->_currentValue = _endValue;
      goto LABEL_19;
    }

    selfCopy = v26;
    firstObject = v27;
  }

  else
  {

    v10 = 0;
  }

  currentValue = [(NSMutableArray *)selfCopy->_animations lastObject];
  _endValue = [currentValue _endValue];

  [(ARUIAnimatableProperty *)selfCopy removeAllPropertyAnimations];
LABEL_19:

  (*(selfCopy->_setter + 2))();
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
  lastObject = [(NSMutableArray *)self->_animations lastObject];
  _startValue = [lastObject _startValue];
  if (!_startValue)
  {
    _startValue = [(ARUIAnimatableProperty *)self currentValue];
  }

  return _startValue;
}

- (id)endValue
{
  lastObject = [(NSMutableArray *)self->_animations lastObject];
  _endValue = [lastObject _endValue];
  if (!_endValue)
  {
    _endValue = [(ARUIAnimatableProperty *)self currentValue];
  }

  return _endValue;
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