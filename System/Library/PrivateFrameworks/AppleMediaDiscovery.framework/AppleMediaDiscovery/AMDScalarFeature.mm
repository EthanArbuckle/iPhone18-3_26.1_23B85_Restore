@interface AMDScalarFeature
- (AMDScalarFeature)initWithValue:(id)value;
- (id)stringValue;
- (void)copyDoubleValues:(int)values toBuffer:(double *)buffer withDefaultValue:(double)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
- (void)copyFloat32Values:(int)values toBuffer:(float *)buffer withDefaultValue:(float)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
- (void)copyInt32Values:(int)values toBuffer:(int *)buffer withDefaultValue:(int)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
@end

@implementation AMDScalarFeature

- (AMDScalarFeature)initWithValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AMDScalarFeature;
  selfCopy = [(AMDFeature *)&v6 initWithValue:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)stringValue
{
  _value = [(AMDFeature *)self _value];
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (_value)
  {
    _value2 = [(AMDFeature *)self _value];
    v12 = 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _value3 = [(AMDFeature *)self _value];
      v10 = 1;
      v4 = _value3;
    }

    else
    {
      _value4 = [(AMDFeature *)self _value];
      v8 = 1;
      stringValue = [_value4 stringValue];
      v6 = 1;
      v4 = stringValue;
    }

    v2 = MEMORY[0x277D82BE0](v4);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v15 = v2;
  if (v6)
  {
    MEMORY[0x277D82BD8](stringValue);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](_value4);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](_value3);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](_value2);
  }

  MEMORY[0x277D82BD8](_value);

  return v15;
}

- (void)copyInt32Values:(int)values toBuffer:(int *)buffer withDefaultValue:(int)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v19 = a2;
  valuesCopy = values;
  bufferCopy = buffer;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, op);
  v14 = 0;
  objc_storeStrong(&v14, dictionary);
  v13 = 0;
  objc_storeStrong(&v13, operation);
  if (valuesCopy != 1)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v21, valuesCopy);
      _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "trying to get %d values (!= 1) from NumericFeature", v21, 8u);
    }

    objc_storeStrong(&oslog, 0);
  }

  _value = [(AMDFeature *)selfCopy _value];
  v9 = [AMDFeature getIntFromObject:"getIntFromObject:copyToValue:withRemapDictionary:andPostRemapOperation:" copyToValue:? withRemapDictionary:? andPostRemapOperation:?];
  MEMORY[0x277D82BD8](_value);
  if (!v9)
  {
    *bufferCopy = valueCopy;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)copyFloat32Values:(int)values toBuffer:(float *)buffer withDefaultValue:(float)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v19 = a2;
  valuesCopy = values;
  bufferCopy = buffer;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, op);
  v14 = 0;
  objc_storeStrong(&v14, dictionary);
  v13 = 0;
  objc_storeStrong(&v13, operation);
  if (valuesCopy != 1)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v21, valuesCopy);
      _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "trying to get %d values (!= 1) from NumericFeature", v21, 8u);
    }

    objc_storeStrong(&oslog, 0);
  }

  _value = [(AMDFeature *)selfCopy _value];
  v9 = [AMDFeature getFloatFromObject:"getFloatFromObject:copyToValue:withRemapDictionary:andPostRemapOperation:" copyToValue:? withRemapDictionary:? andPostRemapOperation:?];
  MEMORY[0x277D82BD8](_value);
  if (!v9)
  {
    *bufferCopy = valueCopy;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)copyDoubleValues:(int)values toBuffer:(double *)buffer withDefaultValue:(double)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v19 = a2;
  valuesCopy = values;
  bufferCopy = buffer;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, op);
  v14 = 0;
  objc_storeStrong(&v14, dictionary);
  v13 = 0;
  objc_storeStrong(&v13, operation);
  if (valuesCopy != 1)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v21, valuesCopy);
      _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "trying to get %d values (!= 1) from NumericFeature", v21, 8u);
    }

    objc_storeStrong(&oslog, 0);
  }

  _value = [(AMDFeature *)selfCopy _value];
  v9 = [AMDFeature getDoubleFromObject:"getDoubleFromObject:copyToValue:withRemapDictionary:andPostRemapOperation:" copyToValue:? withRemapDictionary:? andPostRemapOperation:?];
  MEMORY[0x277D82BD8](_value);
  if (!v9)
  {
    *bufferCopy = valueCopy;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

@end