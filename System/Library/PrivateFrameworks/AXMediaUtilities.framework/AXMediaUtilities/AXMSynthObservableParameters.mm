@interface AXMSynthObservableParameters
+ (id)defaultParameters;
- (AXMSynthObservableParameters)init;
- (NSDictionary)dictionaryRepresentation;
- (id)getValueForParameter:(id)parameter;
- (void)notifyObserversOfValueChange:(id)change forParameter:(id)parameter;
- (void)removeParameterObserver:(id)observer;
- (void)setValue:(id)value forParameter:(id)parameter;
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

    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    parameterObservers = v2->_parameterObservers;
    v2->_parameterObservers = weakObjectsPointerArray;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    parameterValues = v2->_parameterValues;
    v2->_parameterValues = dictionary;

    [(AXMSynthObservableParameters *)v2 addSupportedParameters];
  }

  return v2;
}

- (NSDictionary)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
        [dictionary setObject:v9 forKeyedSubscript:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [dictionary copy];

  return v10;
}

- (void)removeParameterObserver:(id)observer
{
  observerCopy = observer;
  for (i = 0; i < [(NSPointerArray *)self->_parameterObservers count]; ++i)
  {
    if ([(NSPointerArray *)self->_parameterObservers pointerAtIndex:i]== observerCopy)
    {
      if (i != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSPointerArray *)self->_parameterObservers removePointerAtIndex:i];
      }

      break;
    }
  }
}

- (void)notifyObserversOfValueChange:(id)change forParameter:(id)parameter
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  parameterCopy = parameter;
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

        [*(*(&v12 + 1) + 8 * v11++) parameterValueDidChange:changeCopy forParameter:{parameterCopy, v12}];
      }

      while (v9 != v11);
      v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setValue:(id)value forParameter:(id)parameter
{
  valueCopy = value;
  parameterCopy = parameter;
  if ([(AXMSynthObservableParameters *)self assertParameterIsSupported:parameterCopy])
  {
    [(NSMutableDictionary *)self->_parameterValues setObject:valueCopy forKeyedSubscript:parameterCopy];
    [(AXMSynthObservableParameters *)self notifyObserversOfValueChange:valueCopy forParameter:parameterCopy];
  }
}

- (id)getValueForParameter:(id)parameter
{
  parameterCopy = parameter;
  if ([(AXMSynthObservableParameters *)self isParameterSupported:parameterCopy])
  {
    v5 = [(NSMutableDictionary *)self->_parameterValues objectForKeyedSubscript:parameterCopy];
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