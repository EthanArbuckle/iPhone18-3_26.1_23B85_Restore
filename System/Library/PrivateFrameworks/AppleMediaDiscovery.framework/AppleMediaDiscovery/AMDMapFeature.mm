@interface AMDMapFeature
- (AMDMapFeature)initWithValue:(id)value;
- (id)getArrayForOp:(id)op;
- (unint64_t)getCount;
- (void)copyDoubleValues:(int)values toBuffer:(double *)buffer withDefaultValue:(double)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
- (void)copyFloat32Values:(int)values toBuffer:(float *)buffer withDefaultValue:(float)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
- (void)copyInt32Values:(int)values toBuffer:(int *)buffer withDefaultValue:(int)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
- (void)copyInt32Values:(int)values toBuffer:(int *)buffer withDefaultValue:(int)value withMapOp:(id)op withRemapInfo:(id)info andPostRemapOperation:(id)operation;
@end

@implementation AMDMapFeature

- (AMDMapFeature)initWithValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AMDMapFeature;
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
  v17 = a2;
  valuesCopy = values;
  bufferCopy = buffer;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, op);
  v12 = 0;
  objc_storeStrong(&v12, dictionary);
  v11 = 0;
  objc_storeStrong(&v11, operation);
  v10 = [(AMDMapFeature *)selfCopy getArrayForOp:location];
  if (v10)
  {
    [AMDFeature copyInt32Values:valuesCopy fromArray:v10 toBuffer:bufferCopy withDefaultValue:valueCopy withRemapInfo:v12 andPostRemapOperation:v11];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyInt32Values:(int)values toBuffer:(int *)buffer withDefaultValue:(int)value withMapOp:(id)op withRemapInfo:(id)info andPostRemapOperation:(id)operation
{
  selfCopy = self;
  v17 = a2;
  valuesCopy = values;
  bufferCopy = buffer;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, op);
  v12 = 0;
  objc_storeStrong(&v12, info);
  v11 = 0;
  objc_storeStrong(&v11, operation);
  v10 = [(AMDMapFeature *)selfCopy getArrayForOp:location];
  if (v10)
  {
    [AMDFeature copyInt32Values:valuesCopy fromArray:v10 toBuffer:bufferCopy withDefaultValue:valueCopy withRemapInfo:v12 andPostRemapOperation:v11];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyFloat32Values:(int)values toBuffer:(float *)buffer withDefaultValue:(float)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
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
  v11 = [(AMDMapFeature *)selfCopy getArrayForOp:location];
  if (v11)
  {
    *&v8 = valueCopy;
    [AMDFeature copyFloat32Values:valuesCopy fromArray:v11 toBuffer:bufferCopy withDefaultValue:v13 withRemapDictionary:v12 andPostRemapOperation:v8];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyDoubleValues:(int)values toBuffer:(double *)buffer withDefaultValue:(double)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  selfCopy = self;
  v17 = a2;
  valuesCopy = values;
  bufferCopy = buffer;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, op);
  v12 = 0;
  objc_storeStrong(&v12, dictionary);
  v11 = 0;
  objc_storeStrong(&v11, operation);
  v10 = [(AMDMapFeature *)selfCopy getArrayForOp:location];
  if (v10)
  {
    [AMDFeature copyDoubleValues:valuesCopy fromArray:v10 toBuffer:bufferCopy withDefaultValue:v12 withRemapDictionary:v11 andPostRemapOperation:valueCopy];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (id)getArrayForOp:(id)op
{
  v62 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, op);
  v57 = 0;
  if ([location[0] isEqualToString:@"keys_order_asc_by_value"])
  {
    _value = [(AMDFeature *)selfCopy _value];
    v3 = [_value keysSortedByValueUsingComparator:&__block_literal_global_0];
    v4 = v57;
    v57 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](_value);
  }

  else if ([location[0] isEqualToString:@"keys_order_desc_by_value"])
  {
    _value2 = [(AMDFeature *)selfCopy _value];
    v5 = [_value2 keysSortedByValueUsingComparator:&__block_literal_global_110];
    v6 = v57;
    v57 = v5;
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](_value2);
  }

  else if ([location[0] isEqualToString:@"values_order_asc_by_value"])
  {
    _value3 = [(AMDFeature *)selfCopy _value];
    allValues = [_value3 allValues];
    v7 = [allValues sortedArrayUsingComparator:&__block_literal_global_115];
    v8 = v57;
    v57 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](allValues);
    MEMORY[0x277D82BD8](_value3);
  }

  else if ([location[0] isEqualToString:@"values_order_desc_by_value"])
  {
    _value4 = [(AMDFeature *)selfCopy _value];
    allValues2 = [_value4 allValues];
    v9 = [allValues2 sortedArrayUsingComparator:&__block_literal_global_120];
    v10 = v57;
    v57 = v9;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](allValues2);
    MEMORY[0x277D82BD8](_value4);
  }

  else if ([location[0] isEqualToString:@"keys_order_asc_by_key"])
  {
    _value5 = [(AMDFeature *)selfCopy _value];
    allKeys = [_value5 allKeys];
    v11 = [allKeys sortedArrayUsingComparator:&__block_literal_global_125];
    v12 = v57;
    v57 = v11;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](allKeys);
    MEMORY[0x277D82BD8](_value5);
  }

  else if ([location[0] isEqualToString:@"keys_order_desc_by_key"])
  {
    _value6 = [(AMDFeature *)selfCopy _value];
    allKeys2 = [_value6 allKeys];
    v13 = [allKeys2 sortedArrayUsingComparator:&__block_literal_global_130];
    v14 = v57;
    v57 = v13;
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](allKeys2);
    MEMORY[0x277D82BD8](_value6);
  }

  else if ([location[0] isEqualToString:@"values_order_asc_by_key"])
  {
    _value7 = [(AMDFeature *)selfCopy _value];
    allKeys3 = [_value7 allKeys];
    v56 = [allKeys3 sortedArrayUsingComparator:&__block_literal_global_135];
    MEMORY[0x277D82BD8](allKeys3);
    MEMORY[0x277D82BD8](_value7);
    v55 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v56, "count")}];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v56);
    v38 = [obj countByEnumeratingWithState:__b objects:v61 count:16];
    if (v38)
    {
      v32 = *__b[2];
      v33 = 0;
      v34 = v38;
      while (1)
      {
        v31 = v33;
        if (*__b[2] != v32)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(__b[1] + 8 * v33);
        v28 = v55;
        _value8 = [(AMDFeature *)selfCopy _value];
        v29 = [_value8 objectForKey:v54];
        [v28 addObject:?];
        MEMORY[0x277D82BD8](v29);
        MEMORY[0x277D82BD8](_value8);
        ++v33;
        if (v31 + 1 >= v34)
        {
          v33 = 0;
          v34 = [obj countByEnumeratingWithState:__b objects:v61 count:16];
          if (!v34)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    objc_storeStrong(&v57, v55);
    objc_storeStrong(&v55, 0);
    objc_storeStrong(&v56, 0);
  }

  else if ([location[0] isEqualToString:@"values_order_desc_by_key"])
  {
    _value9 = [(AMDFeature *)selfCopy _value];
    allKeys4 = [_value9 allKeys];
    v52 = [allKeys4 sortedArrayUsingComparator:&__block_literal_global_141];
    MEMORY[0x277D82BD8](allKeys4);
    MEMORY[0x277D82BD8](_value9);
    v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v52, "count")}];
    memset(v49, 0, sizeof(v49));
    v26 = MEMORY[0x277D82BE0](v52);
    v27 = [v26 countByEnumeratingWithState:v49 objects:v60 count:16];
    if (v27)
    {
      v21 = *v49[2];
      v22 = 0;
      v23 = v27;
      while (1)
      {
        v20 = v22;
        if (*v49[2] != v21)
        {
          objc_enumerationMutation(v26);
        }

        v50 = *(v49[1] + 8 * v22);
        v17 = v51;
        _value10 = [(AMDFeature *)selfCopy _value];
        v18 = [_value10 objectForKey:v50];
        [v17 addObject:?];
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](_value10);
        ++v22;
        if (v20 + 1 >= v23)
        {
          v22 = 0;
          v23 = [v26 countByEnumeratingWithState:v49 objects:v60 count:16];
          if (!v23)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v26);
    objc_storeStrong(&v57, v51);
    objc_storeStrong(&v51, 0);
    objc_storeStrong(&v52, 0);
  }

  v16 = MEMORY[0x277D82BE0](v57);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v16;
}

BOOL __31__AMDMapFeature_getArrayForOp___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  [location[0] doubleValue];
  v7 = v3;
  [v9 doubleValue];
  v8 = v7 >= v4;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8;
}

BOOL __31__AMDMapFeature_getArrayForOp___block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  [location[0] doubleValue];
  v7 = v3;
  [v9 doubleValue];
  v8 = v7 <= v4;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8;
}

BOOL __31__AMDMapFeature_getArrayForOp___block_invoke_3(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  [location[0] doubleValue];
  v7 = v3;
  [v9 doubleValue];
  v8 = v7 >= v4;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8;
}

BOOL __31__AMDMapFeature_getArrayForOp___block_invoke_4(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  [location[0] doubleValue];
  v7 = v3;
  [v9 doubleValue];
  v8 = v7 <= v4;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8;
}

uint64_t __31__AMDMapFeature_getArrayForOp___block_invoke_5(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 compare:location[0]];
  }

  else
  {
    [location[0] doubleValue];
    v6 = v3;
    [v8 doubleValue];
    v10 = v6 <= v4;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v10;
}

uint64_t __31__AMDMapFeature_getArrayForOp___block_invoke_6(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [location[0] compare:v8];
  }

  else
  {
    [location[0] doubleValue];
    v6 = v3;
    [v8 doubleValue];
    v10 = v6 >= v4;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v10;
}

uint64_t __31__AMDMapFeature_getArrayForOp___block_invoke_7(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 compare:location[0]];
  }

  else
  {
    [location[0] doubleValue];
    v6 = v3;
    [v8 doubleValue];
    v10 = v6 <= v4;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v10;
}

uint64_t __31__AMDMapFeature_getArrayForOp___block_invoke_8(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [location[0] compare:v8];
  }

  else
  {
    [location[0] doubleValue];
    v6 = v3;
    [v8 doubleValue];
    v10 = v6 >= v4;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v10;
}

@end