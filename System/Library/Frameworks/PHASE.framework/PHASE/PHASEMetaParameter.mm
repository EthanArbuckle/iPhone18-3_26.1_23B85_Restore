@interface PHASEMetaParameter
- (MetaParameterValueProtocol)delegate;
- (PHASEMetaParameter)init;
- (PHASEMetaParameter)initWithUID:(id)a3 delegate:(id)a4;
- (void)setValue:(id)value;
@end

@implementation PHASEMetaParameter

- (PHASEMetaParameter)init
{
  [(PHASEMetaParameter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEMetaParameter)initWithUID:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PHASEMetaParameter;
  v9 = [(PHASEMetaParameter *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v10->_registeredGlobally = 0;
    objc_storeWeak(&v10->_delegate, v8);
    v11 = v10;
  }

  return v10;
}

- (void)setValue:(id)value
{
  v21 = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = self;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      [v21 doubleValue];
      v11 = v10;
      [(PHASEMetaParameter *)v6 minimum];
      v13 = v12;
      [(PHASEMetaParameter *)v6 maximum];
      v15 = PHASEGetPropertyBounded<double>(v8, v9, v11, v13, v14);

      v16 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
      v17 = v6->_value;
      v6->_value = v16;

      WeakRetained = objc_loadWeakRetained(&v6->_delegate);
      [WeakRetained setMetaParameter:v6->_identifier value:v15 withTimeInterval:0.0];

LABEL_7:
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_value, value);
      v6 = objc_loadWeakRetained(&self->_delegate);
      [(PHASEMetaParameter *)v6 setMetaParameter:self->_identifier value:self->_value];
      goto LABEL_7;
    }
  }

  v19 = MEMORY[0x277CBEAD8];
  v20 = objc_opt_class();
  [v19 raise:@"API Misuse" format:{@"Cannot set on object of type %@ to metaparameter of type %@", v20, objc_opt_class()}];
LABEL_9:
}

- (MetaParameterValueProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end