@interface ARUIAnimatableObject
- (BOOL)areAnimationsInProgress;
- (id)_animatablePropertyForType:(unint64_t)a3;
- (id)_newAnimatablePropertyForType:(unint64_t)a3;
- (id)endingValueForPropertyType:(unint64_t)a3;
- (void)addAnimation:(id)a3 forPropertyType:(unint64_t)a4;
- (void)removeAllAnimationsForPropertyType:(unint64_t)a3;
- (void)setValue:(id)a3 forPropertyType:(unint64_t)a4;
- (void)update:(double)a3;
@end

@implementation ARUIAnimatableObject

- (void)update:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableDictionary *)self->_animatableProperties allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) update:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setValue:(id)a3 forPropertyType:(unint64_t)a4
{
  v6 = a3;
  [(ARUIAnimatableObject *)self removeAllAnimationsForPropertyType:a4];
  v7 = [(ARUIAnimatableObject *)self _animatablePropertyForType:a4];
  [v7 setValueImmediate:v6];
}

- (void)addAnimation:(id)a3 forPropertyType:(unint64_t)a4
{
  v11 = a3;
  if (!self->_animatableProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    animatableProperties = self->_animatableProperties;
    self->_animatableProperties = v6;
  }

  v8 = [(ARUIAnimatableObject *)self _animatablePropertyForType:a4];
  v9 = [v8 endValue];
  v10 = [v8 currentValue];
  [v11 _setStartValue:v9];
  [v11 _setCurrentValue:v10];
  [v8 addPropertyAnimation:v11];
}

- (void)removeAllAnimationsForPropertyType:(unint64_t)a3
{
  v3 = [(ARUIAnimatableObject *)self _animatablePropertyForType:a3];
  [v3 removeAllPropertyAnimations];
}

- (BOOL)areAnimationsInProgress
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_animatableProperties allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v7 + 1) + 8 * i) isFinishedAnimating])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (id)_animatablePropertyForType:(unint64_t)a3
{
  animatableProperties = self->_animatableProperties;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)animatableProperties objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [(ARUIAnimatableObject *)self _newAnimatablePropertyForType:a3];
    v8 = self->_animatableProperties;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (id)endingValueForPropertyType:(unint64_t)a3
{
  v3 = [(ARUIAnimatableObject *)self _animatablePropertyForType:a3];
  v4 = [v3 endValue];

  return v4;
}

- (id)_newAnimatablePropertyForType:(unint64_t)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end