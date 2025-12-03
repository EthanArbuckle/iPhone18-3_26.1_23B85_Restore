@interface ARUIAnimatableObject
- (BOOL)areAnimationsInProgress;
- (id)_animatablePropertyForType:(unint64_t)type;
- (id)_newAnimatablePropertyForType:(unint64_t)type;
- (id)endingValueForPropertyType:(unint64_t)type;
- (void)addAnimation:(id)animation forPropertyType:(unint64_t)type;
- (void)removeAllAnimationsForPropertyType:(unint64_t)type;
- (void)setValue:(id)value forPropertyType:(unint64_t)type;
- (void)update:(double)update;
@end

@implementation ARUIAnimatableObject

- (void)update:(double)update
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_animatableProperties allValues];
  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v8++) update:update];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setValue:(id)value forPropertyType:(unint64_t)type
{
  valueCopy = value;
  [(ARUIAnimatableObject *)self removeAllAnimationsForPropertyType:type];
  v7 = [(ARUIAnimatableObject *)self _animatablePropertyForType:type];
  [v7 setValueImmediate:valueCopy];
}

- (void)addAnimation:(id)animation forPropertyType:(unint64_t)type
{
  animationCopy = animation;
  if (!self->_animatableProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    animatableProperties = self->_animatableProperties;
    self->_animatableProperties = v6;
  }

  v8 = [(ARUIAnimatableObject *)self _animatablePropertyForType:type];
  endValue = [v8 endValue];
  currentValue = [v8 currentValue];
  [animationCopy _setStartValue:endValue];
  [animationCopy _setCurrentValue:currentValue];
  [v8 addPropertyAnimation:animationCopy];
}

- (void)removeAllAnimationsForPropertyType:(unint64_t)type
{
  v3 = [(ARUIAnimatableObject *)self _animatablePropertyForType:type];
  [v3 removeAllPropertyAnimations];
}

- (BOOL)areAnimationsInProgress
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_animatableProperties allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        if (![*(*(&v7 + 1) + 8 * i) isFinishedAnimating])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)_animatablePropertyForType:(unint64_t)type
{
  animatableProperties = self->_animatableProperties;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)animatableProperties objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [(ARUIAnimatableObject *)self _newAnimatablePropertyForType:type];
    v8 = self->_animatableProperties;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (id)endingValueForPropertyType:(unint64_t)type
{
  v3 = [(ARUIAnimatableObject *)self _animatablePropertyForType:type];
  endValue = [v3 endValue];

  return endValue;
}

- (id)_newAnimatablePropertyForType:(unint64_t)type
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end