@interface VSBindingInfo
- (VSBindingInfo)init;
- (VSBindingInfo)initWithObservedObject:(id)a3 keyPath:(id)a4 options:(id)a5;
- (id)value;
- (id)weakObservedObject;
- (void)requireExpectedConcurrency;
- (void)setValue:(id)a3;
@end

@implementation VSBindingInfo

- (VSBindingInfo)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSBindingInfo)initWithObservedObject:(id)a3 keyPath:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_11:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPath parameter must not be nil."];
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The observedObject parameter must not be nil."];
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_12:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The options parameter must not be nil."];
LABEL_4:
  v35.receiver = self;
  v35.super_class = VSBindingInfo;
  v11 = [(VSBindingInfo *)&v35 init];
  v12 = v11;
  if (v11)
  {
    v11->_unsafeObservedObject = v8;
    objc_storeWeak(&v11->_weakObservedObject, v8);
    v13 = [v9 copy];
    keyPath = v12->_keyPath;
    v12->_keyPath = v13;

    v15 = [v10 objectForKey:@"VSValueTransformerBindingOption"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = MEMORY[0x277CBEAD8];
          v19 = *MEMORY[0x277CBE660];
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          [v18 raise:v19 format:{@"Unexpectedly, transformerOption was %@, instead of NSValueTransformer.", v21}];
        }

        v22 = v17;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = MEMORY[0x277CCAE68];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v24 = MEMORY[0x277CBEAD8];
            v25 = *MEMORY[0x277CBE660];
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            [v24 raise:v25 format:{@"Unexpectedly, transformerOption was %@, instead of NSString.", v27}];
          }

          v28 = [v23 valueTransformerForName:v17];
          v22 = v28;
          if (v28)
          {
            v29 = v28;
          }

          else
          {
            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"There is no value transformer named '%@'.", v17}];
          }
        }

        else
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Invalid value transformer option %@", v17}];
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 0;
    }

    v30 = [v10 copy];
    options = v12->_options;
    v12->_options = v30;

    valueTransformer = v12->_valueTransformer;
    v12->_valueTransformer = v22;
    v33 = v22;
  }

  return v12;
}

- (void)setValue:(id)a3
{
  v9 = a3;
  v4 = [(VSBindingInfo *)self valueTransformer];
  v5 = v4;
  v6 = v9;
  if (v4)
  {
    v6 = [v4 reverseTransformedValue:v9];
  }

  v7 = [(VSBindingInfo *)self weakObservedObject];
  v8 = [(VSBindingInfo *)self keyPath];
  [v7 setValue:v6 forKeyPath:v8];
}

- (id)value
{
  v3 = [(VSBindingInfo *)self weakObservedObject];
  v4 = [(VSBindingInfo *)self keyPath];
  v5 = [v3 valueForKeyPath:v4];

  v6 = [(VSBindingInfo *)self valueTransformer];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 transformedValue:v5];

    v5 = v8;
  }

  return v5;
}

- (void)requireExpectedConcurrency
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_23AB8E000, log, OS_LOG_TYPE_FAULT, "Running on underlying queue %@ instead of required underlying queue %@", &v3, 0x16u);
}

- (id)weakObservedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObservedObject);

  return WeakRetained;
}

@end