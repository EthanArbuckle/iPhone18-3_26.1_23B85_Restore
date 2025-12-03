@interface AMDListFeature
- (AMDListFeature)initWithValue:(id)value;
- (unint64_t)getCount;
- (void)copyDoubleValues:(int)values toBuffer:(double *)buffer withDefaultValue:(double)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
- (void)copyFloat32Values:(int)values toBuffer:(float *)buffer withDefaultValue:(float)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
- (void)copyInt32Values:(int)values toBuffer:(int *)buffer withDefaultValue:(int)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
@end

@implementation AMDListFeature

- (AMDListFeature)initWithValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AMDListFeature;
  selfCopy = [(AMDFeature *)&v6 initWithValue:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (unint64_t)getCount
{
  _value = [(AMDFeature *)self _value];
  v5 = 0;
  if (_value)
  {
    _value2 = [(AMDFeature *)self _value];
    v5 = 1;
    v3 = [_value2 count];
  }

  else
  {
    v3 = 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](_value2);
  }

  MEMORY[0x277D82BD8](_value);
  return v3;
}

- (void)copyInt32Values:(int)values toBuffer:(int *)buffer withDefaultValue:(int)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  selfCopy = self;
  v18 = a2;
  valuesCopy = values;
  bufferCopy = buffer;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, op);
  v13 = 0;
  objc_storeStrong(&v13, dictionary);
  v12 = 0;
  objc_storeStrong(&v12, operation);
  v10 = valuesCopy;
  _value = [(AMDFeature *)selfCopy _value];
  [AMDFeature copyInt32Values:"copyInt32Values:fromArray:toBuffer:withDefaultValue:withRemapDictionary:andPostRemapOperation:" fromArray:v10 toBuffer:? withDefaultValue:? withRemapDictionary:? andPostRemapOperation:?];
  MEMORY[0x277D82BD8](_value);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyFloat32Values:(int)values toBuffer:(float *)buffer withDefaultValue:(float)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
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
  v11 = valuesCopy;
  _value = [(AMDFeature *)selfCopy _value];
  *&v8 = valueCopy;
  [AMDFeature copyFloat32Values:"copyFloat32Values:fromArray:toBuffer:withDefaultValue:withRemapDictionary:andPostRemapOperation:" fromArray:v11 toBuffer:v8 withDefaultValue:? withRemapDictionary:? andPostRemapOperation:?];
  MEMORY[0x277D82BD8](_value);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyDoubleValues:(int)values toBuffer:(double *)buffer withDefaultValue:(double)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  selfCopy = self;
  v18 = a2;
  valuesCopy = values;
  bufferCopy = buffer;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, op);
  v13 = 0;
  objc_storeStrong(&v13, dictionary);
  v12 = 0;
  objc_storeStrong(&v12, operation);
  v10 = valuesCopy;
  _value = [(AMDFeature *)selfCopy _value];
  [AMDFeature copyDoubleValues:"copyDoubleValues:fromArray:toBuffer:withDefaultValue:withRemapDictionary:andPostRemapOperation:" fromArray:v10 toBuffer:valueCopy withDefaultValue:? withRemapDictionary:? andPostRemapOperation:?];
  MEMORY[0x277D82BD8](_value);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

@end