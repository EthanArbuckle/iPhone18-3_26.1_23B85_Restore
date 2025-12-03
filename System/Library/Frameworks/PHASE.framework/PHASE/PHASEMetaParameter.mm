@interface PHASEMetaParameter
- (MetaParameterValueProtocol)delegate;
- (PHASEMetaParameter)init;
- (PHASEMetaParameter)initWithUID:(id)d delegate:(id)delegate;
- (void)setValue:(id)value;
@end

@implementation PHASEMetaParameter

- (PHASEMetaParameter)init
{
  [(PHASEMetaParameter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEMetaParameter)initWithUID:(id)d delegate:(id)delegate
{
  dCopy = d;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = PHASEMetaParameter;
  v9 = [(PHASEMetaParameter *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, d);
    v10->_registeredGlobally = 0;
    objc_storeWeak(&v10->_delegate, delegateCopy);
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
      selfCopy = self;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      [v21 doubleValue];
      v11 = v10;
      [(PHASEMetaParameter *)selfCopy minimum];
      v13 = v12;
      [(PHASEMetaParameter *)selfCopy maximum];
      v15 = PHASEGetPropertyBounded<double>(v8, v9, v11, v13, v14);

      v16 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
      v17 = selfCopy->_value;
      selfCopy->_value = v16;

      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      [WeakRetained setMetaParameter:selfCopy->_identifier value:v15 withTimeInterval:0.0];

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
      selfCopy = objc_loadWeakRetained(&self->_delegate);
      [(PHASEMetaParameter *)selfCopy setMetaParameter:self->_identifier value:self->_value];
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