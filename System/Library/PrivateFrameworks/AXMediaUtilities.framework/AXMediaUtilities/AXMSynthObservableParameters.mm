@interface AXMSynthObservableParameters
+ (id)defaultParameters;
- (AXMSynthObservableParameters)init;
- (NSDictionary)dictionaryRepresentation;
- (id)getValueForParameter:(id)a3;
- (void)notifyObserversOfValueChange:(id)a3 forParameter:(id)a4;
- (void)removeParameterObserver:(id)a3;
- (void)setValue:(id)a3 forParameter:(id)a4;
@end

@implementation AXMSynthObservableParameters

- (AXMSynthObservableParameters)init
{
  v10.receiver = self;
  v10.super_class = AXMSynthObservableParameters;
  v2 = [(AXMSynthObservableParameters *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    supportedParameters = v2->_supportedParameters;
    v2->_supportedParameters = v3;

    v5 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    parameterObservers = v2->_parameterObservers;
    v2->_parameterObservers = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    parameterValues = v2->_parameterValues;
    v2->_parameterValues = v7;

    [(AXMSynthObservableParameters *)v2 addSupportedParameters];
  }

  return v2;
}

- (NSDictionary)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [(AXMSynthObservableParameters *)self supportedParameters];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(AXMSynthObservableParameters *)self getValueForParameter:v8, v12];
        [v3 setObject:v9 forKeyedSubscript:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)removeParameterObserver:(id)a3
{
  v5 = a3;
  for (i = 0; i < [(NSPointerArray *)self->_parameterObservers count]; ++i)
  {
    if ([(NSPointerArray *)self->_parameterObservers pointerAtIndex:i]== v5)
    {
      if (i != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSPointerArray *)self->_parameterObservers removePointerAtIndex:i];
      }

      break;
    }
  }
}

- (void)notifyObserversOfValueChange:(id)a3 forParameter:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_parameterObservers;
  v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11++) parameterValueDidChange:v6 forParameter:{v7, v12}];
      }

      while (v9 != v11);
      v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setValue:(id)a3 forParameter:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(AXMSynthObservableParameters *)self assertParameterIsSupported:v6])
  {
    [(NSMutableDictionary *)self->_parameterValues setObject:v7 forKeyedSubscript:v6];
    [(AXMSynthObservableParameters *)self notifyObserversOfValueChange:v7 forParameter:v6];
  }
}

- (id)getValueForParameter:(id)a3
{
  v4 = a3;
  if ([(AXMSynthObservableParameters *)self isParameterSupported:v4])
  {
    v5 = [(NSMutableDictionary *)self->_parameterValues objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)defaultParameters
{
  v2 = objc_alloc_init(AXMSynthObservableParameters);

  return v2;
}

@end