@interface AMDFeature
+ (BOOL)getDoubleFromObject:(id)object copyToValue:(double *)value withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
+ (BOOL)getFloatFromObject:(id)object copyToValue:(float *)value withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
+ (BOOL)getIntFromObject:(id)object copyToValue:(int *)value withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
+ (id)featureFromValue:(id)value;
+ (void)copyDoubleValues:(int)values fromArray:(id)array toBuffer:(double *)buffer withDefaultValue:(double)value withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
+ (void)copyFloat32Values:(int)values fromArray:(id)array toBuffer:(float *)buffer withDefaultValue:(float)value withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
+ (void)copyInt32Values:(int)values fromArray:(id)array toBuffer:(int *)buffer withDefaultValue:(int)value withRemapData:(id)data andPostRemapOperation:(id)operation;
+ (void)copyInt32Values:(int)values fromArray:(id)array toBuffer:(int *)buffer withDefaultValue:(int)value withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
+ (void)copyInt32Values:(int)values fromArray:(id)array toBuffer:(int *)buffer withDefaultValue:(int)value withRemapInfo:(id)info andPostRemapOperation:(id)operation;
- (AMDFeature)initWithValue:(id)value;
- (id)stringValue;
- (unint64_t)getCount;
- (void)copyDoubleValues:(int)values toBuffer:(double *)buffer withDefaultValue:(double)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
- (void)copyFloat32Values:(int)values toBuffer:(float *)buffer withDefaultValue:(float)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
- (void)copyInt32Values:(int)values toBuffer:(int *)buffer withDefaultValue:(int)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation;
- (void)copyInt32Values:(int)values toBuffer:(int *)buffer withDefaultValue:(int)value withMapOp:(id)op withRemapInfo:(id)info andPostRemapOperation:(id)operation;
- (void)setPostRemapOperation:(id)operation;
- (void)setRemapInfo:(id)info;
- (void)setShape:(id)shape;
@end

@implementation AMDFeature

- (AMDFeature)initWithValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AMDFeature;
  selfCopy = [(AMDFeature *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDFeature *)selfCopy set_value:location[0]];
  [(AMDFeature *)selfCopy set_dataType:0];
  [(AMDFeature *)selfCopy set_remapInfo:0];
  [(AMDFeature *)selfCopy set_postRemapOperation:0];
  [(AMDFeature *)selfCopy set_shape:0];
  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)setRemapInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  [(AMDFeature *)selfCopy set_remapInfo:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setPostRemapOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  [(AMDFeature *)selfCopy set_postRemapOperation:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setShape:(id)shape
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, shape);
  [(AMDFeature *)selfCopy set_shape:location[0]];
  objc_storeStrong(location, 0);
}

- (unint64_t)getCount
{
  _value = [(AMDFeature *)self _value];
  v4 = _value != 0;
  MEMORY[0x277D82BD8](_value);
  return v4;
}

- (id)stringValue
{
  _value = [(AMDFeature *)self _value];
  v7 = 0;
  v5 = 0;
  if (_value)
  {
    _value2 = [(AMDFeature *)self _value];
    v7 = 1;
    stringValue = [_value2 stringValue];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](stringValue);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v10 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](stringValue);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](_value2);
  }

  MEMORY[0x277D82BD8](_value);

  return v10;
}

- (void)copyInt32Values:(int)values toBuffer:(int *)buffer withDefaultValue:(int)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  selfCopy = self;
  v16 = a2;
  valuesCopy = values;
  bufferCopy = buffer;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, op);
  v11 = 0;
  objc_storeStrong(&v11, dictionary);
  v10 = 0;
  objc_storeStrong(&v10, operation);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyInt32Values:(int)values toBuffer:(int *)buffer withDefaultValue:(int)value withMapOp:(id)op withRemapInfo:(id)info andPostRemapOperation:(id)operation
{
  selfCopy = self;
  v16 = a2;
  valuesCopy = values;
  bufferCopy = buffer;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, op);
  v11 = 0;
  objc_storeStrong(&v11, info);
  v10 = 0;
  objc_storeStrong(&v10, operation);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyFloat32Values:(int)values toBuffer:(float *)buffer withDefaultValue:(float)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  selfCopy = self;
  v16 = a2;
  valuesCopy = values;
  bufferCopy = buffer;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, op);
  v11 = 0;
  objc_storeStrong(&v11, dictionary);
  v10 = 0;
  objc_storeStrong(&v10, operation);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyDoubleValues:(int)values toBuffer:(double *)buffer withDefaultValue:(double)value withMapOp:(id)op withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  selfCopy = self;
  v14 = a2;
  valuesCopy = values;
  location[2] = buffer;
  location[1] = *&value;
  location[0] = 0;
  objc_storeStrong(location, op);
  v11 = 0;
  objc_storeStrong(&v11, dictionary);
  v10 = 0;
  objc_storeStrong(&v10, operation);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

+ (id)featureFromValue:(id)value
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  if (location[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v3 = [AMDScalarFeature alloc];
      v20 = [(AMDScalarFeature *)v3 initWithValue:location[0]];
      v18 = 1;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }

      v17 = MEMORY[0x277D82BE0](location[0]);
      if ([v17 count])
      {
        firstObject = [v17 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        MEMORY[0x277D82BD8](firstObject);
        if (isKindOfClass & 1) != 0 || (v11 = [v17 firstObject], objc_opt_class(), v12 = objc_opt_isKindOfClass(), MEMORY[0x277D82BD8](v11), (v12))
        {
          v20 = [[AMDListFeature alloc] initWithValue:v17];
          v18 = 1;
        }

        else
        {
          firstObject2 = [v17 firstObject];
          objc_opt_class();
          v10 = objc_opt_isKindOfClass();
          MEMORY[0x277D82BD8](firstObject2);
          if (v10)
          {
            v20 = [[AMDMultiArrayFeature alloc] initWithValue:v17];
            v18 = 1;
          }

          else
          {
            v18 = 0;
          }
        }
      }

      else
      {
        v4 = [AMDListFeature alloc];
        v20 = [(AMDListFeature *)v4 initWithValue:MEMORY[0x277CBEBF8]];
        v18 = 1;
      }

      objc_storeStrong(&v17, 0);
      if (!v18)
      {
LABEL_31:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_25;
        }

        v16 = MEMORY[0x277D82BE0](location[0]);
        if ([v16 count])
        {
          allValues = [v16 allValues];
          firstObject3 = [allValues firstObject];
          MEMORY[0x277D82BD8](allValues);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v20 = [[AMDMapFeature alloc] initWithValue:v16];
            v18 = 1;
          }

          else
          {
            v18 = 0;
          }

          objc_storeStrong(&firstObject3, 0);
        }

        else
        {
          v5 = [AMDMapFeature alloc];
          v20 = [(AMDMapFeature *)v5 initWithValue:MEMORY[0x277CBEC10]];
          v18 = 1;
        }

        objc_storeStrong(&v16, 0);
        if (!v18)
        {
LABEL_25:
          v20 = 0;
          v18 = 1;
        }
      }
    }
  }

  else
  {
    v20 = 0;
    v18 = 1;
  }

  objc_storeStrong(location, 0);
  v6 = v20;

  return v6;
}

+ (BOOL)getIntFromObject:(id)object copyToValue:(int *)value withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, object);
  valueCopy = value;
  v27 = 0;
  objc_storeStrong(&v27, dictionary);
  v26 = 0;
  objc_storeStrong(&v26, operation);
  v25 = MEMORY[0x277D82BE0](location[0]);
  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v27 objectForKey:location[0]];
      v7 = v25;
      v25 = v6;
      MEMORY[0x277D82BD8](v7);
    }

    else
    {
      v13 = v27;
      stringValue = [location[0] stringValue];
      v8 = [v13 objectForKey:?];
      v9 = v25;
      v25 = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](stringValue);
    }
  }

  if (v25)
  {
    intValue = [v25 intValue];
    v21 = 0;
    v12 = 0;
    if (v26)
    {
      getPostRemapOperationName = [v26 getPostRemapOperationName];
      v21 = 1;
      v12 = getPostRemapOperationName != 0;
    }

    if (v21)
    {
      MEMORY[0x277D82BD8](getPostRemapOperationName);
    }

    if (!v12)
    {
      goto LABEL_26;
    }

    getPostRemapOperationName2 = [v26 getPostRemapOperationName];
    if ([getPostRemapOperationName2 isEqualToString:@"hash"])
    {
      getHashOpModValue = [v26 getHashOpModValue];
      intValue %= [getHashOpModValue intValue];
      MEMORY[0x277D82BD8](getHashOpModValue);
    }

    else if ([getPostRemapOperationName2 isEqualToString:@"truncate"])
    {
      getTruncateOpMinValue = [v26 getTruncateOpMinValue];
      if (getTruncateOpMinValue && intValue < [getTruncateOpMinValue intValue])
      {
        v30 = 0;
        v24 = 1;
      }

      else
      {
        getTruncateOpMaxValue = [v26 getTruncateOpMaxValue];
        if (getTruncateOpMaxValue && intValue > [getTruncateOpMaxValue intValue])
        {
          v30 = 0;
          v24 = 1;
        }

        else
        {
          v24 = 0;
        }

        objc_storeStrong(&getTruncateOpMaxValue, 0);
      }

      objc_storeStrong(&getTruncateOpMinValue, 0);
      if (v24)
      {
LABEL_25:
        objc_storeStrong(&getPostRemapOperationName2, 0);
        if (v24)
        {
          goto LABEL_27;
        }

LABEL_26:
        *valueCopy = intValue;
        v30 = 1;
        v24 = 1;
        goto LABEL_27;
      }
    }

    v24 = 0;
    goto LABEL_25;
  }

  v30 = 0;
  v24 = 1;
LABEL_27:
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  return v30 & 1;
}

+ (BOOL)getFloatFromObject:(id)object copyToValue:(float *)value withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, object);
  valueCopy = value;
  v29 = 0;
  objc_storeStrong(&v29, dictionary);
  v28 = 0;
  objc_storeStrong(&v28, operation);
  v27 = MEMORY[0x277D82BE0](location[0]);
  if (v29)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v29 objectForKey:location[0]];
      v7 = v27;
      v27 = v6;
      MEMORY[0x277D82BD8](v7);
    }

    else
    {
      v16 = v29;
      stringValue = [location[0] stringValue];
      v8 = [v16 objectForKey:?];
      v9 = v27;
      v27 = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](stringValue);
    }
  }

  if (v27)
  {
    [v27 floatValue];
    v25 = v10;
    v23 = 0;
    v15 = 0;
    if (v28)
    {
      getPostRemapOperationName = [v28 getPostRemapOperationName];
      v23 = 1;
      v15 = [getPostRemapOperationName isEqualToString:@"truncate"];
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](getPostRemapOperationName);
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

    getTruncateOpMinValue = [v28 getTruncateOpMinValue];
    if (getTruncateOpMinValue && ([getTruncateOpMinValue floatValue], v12 = *&v11, *&v11 = v25, v25 < v12))
    {
      v32 = 0;
      v26 = 1;
    }

    else
    {
      getTruncateOpMaxValue = [v28 getTruncateOpMaxValue];
      if (getTruncateOpMaxValue && ([getTruncateOpMaxValue floatValue], v25 > v13))
      {
        v32 = 0;
        v26 = 1;
      }

      else
      {
        v26 = 0;
      }

      objc_storeStrong(&getTruncateOpMaxValue, 0);
    }

    objc_storeStrong(&getTruncateOpMinValue, 0);
    if (!v26)
    {
LABEL_21:
      *valueCopy = v25;
      v32 = 1;
      v26 = 1;
    }
  }

  else
  {
    v32 = 0;
    v26 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  return v32 & 1;
}

+ (BOOL)getDoubleFromObject:(id)object copyToValue:(double *)value withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, object);
  valueCopy = value;
  v30 = 0;
  objc_storeStrong(&v30, dictionary);
  v29 = 0;
  objc_storeStrong(&v29, operation);
  v28 = MEMORY[0x277D82BE0](location[0]);
  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v30 objectForKey:location[0]];
      v7 = v28;
      v28 = v6;
      MEMORY[0x277D82BD8](v7);
    }

    else
    {
      v17 = v30;
      stringValue = [location[0] stringValue];
      v8 = [v17 objectForKey:?];
      v9 = v28;
      v28 = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](stringValue);
    }
  }

  if (v28)
  {
    [v28 doubleValue];
    v26 = v10;
    v24 = 0;
    v16 = 0;
    if (v29)
    {
      getPostRemapOperationName = [v29 getPostRemapOperationName];
      v24 = 1;
      v16 = [getPostRemapOperationName isEqualToString:@"truncate"];
    }

    if (v24)
    {
      MEMORY[0x277D82BD8](getPostRemapOperationName);
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_21;
    }

    getTruncateOpMinValue = [v29 getTruncateOpMinValue];
    if (getTruncateOpMinValue && ([getTruncateOpMinValue doubleValue], v13 = v12, v11 = v26, v26 < v13))
    {
      v33 = 0;
      v27 = 1;
    }

    else
    {
      getTruncateOpMaxValue = [v29 getTruncateOpMaxValue];
      if (getTruncateOpMaxValue && ([getTruncateOpMaxValue doubleValue], v26 > v14))
      {
        v33 = 0;
        v27 = 1;
      }

      else
      {
        v27 = 0;
      }

      objc_storeStrong(&getTruncateOpMaxValue, 0);
    }

    objc_storeStrong(&getTruncateOpMinValue, 0);
    if (!v27)
    {
LABEL_21:
      *valueCopy = v26;
      v33 = 1;
      v27 = 1;
    }
  }

  else
  {
    v33 = 0;
    v27 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  return v33 & 1;
}

+ (void)copyInt32Values:(int)values fromArray:(id)array toBuffer:(int *)buffer withDefaultValue:(int)value withRemapInfo:(id)info andPostRemapOperation:(id)operation
{
  selfCopy = self;
  v18 = a2;
  valuesCopy = values;
  location = 0;
  objc_storeStrong(&location, array);
  bufferCopy = buffer;
  valueCopy = value;
  v13 = 0;
  objc_storeStrong(&v13, info);
  v12 = 0;
  objc_storeStrong(&v12, operation);
  if (valuesCopy)
  {
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [selfCopy copyInt32Values:valuesCopy fromArray:location toBuffer:bufferCopy withDefaultValue:valueCopy withRemapData:v13 andPostRemapOperation:v12];
    }

    else
    {
      [selfCopy copyInt32Values:valuesCopy fromArray:location toBuffer:bufferCopy withDefaultValue:valueCopy withRemapDictionary:v13 andPostRemapOperation:v12];
    }
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

+ (void)copyInt32Values:(int)values fromArray:(id)array toBuffer:(int *)buffer withDefaultValue:(int)value withRemapData:(id)data andPostRemapOperation:(id)operation
{
  v76 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v70 = a2;
  valuesCopy = values;
  location = 0;
  objc_storeStrong(&location, array);
  bufferCopy = buffer;
  valueCopy = value;
  v65 = 0;
  objc_storeStrong(&v65, data);
  v64 = 0;
  objc_storeStrong(&v64, operation);
  v37 = objc_alloc(MEMORY[0x277CBEB38]);
  v63 = [v37 initWithCapacity:{objc_msgSend(location, "count")}];
  memset(__b, 0, sizeof(__b));
  v38 = MEMORY[0x277D82BE0](location);
  v39 = [v38 countByEnumeratingWithState:__b objects:v75 count:16];
  if (v39)
  {
    v30 = *__b[2];
    v31 = 0;
    v32 = v39;
    while (1)
    {
      v29 = v31;
      if (*__b[2] != v30)
      {
        objc_enumerationMutation(v38);
      }

      v62 = *(__b[1] + 8 * v31);
      v27 = v63;
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v62, "longLongValue")}];
      [v27 setObject:&unk_2852BA620 forKey:?];
      MEMORY[0x277D82BD8](v28);
      ++v31;
      if (v29 + 1 >= v32)
      {
        v31 = 0;
        v32 = [v38 countByEnumeratingWithState:__b objects:v75 count:16];
        if (!v32)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v38);
  v26 = v65;
  v8 = v65;
  bytes = [v26 bytes];
  v59 = 0;
  v58 = *bytes;
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_4_0_4_0(v74, valuesCopy, v58);
    _os_log_debug_impl(&dword_240CB9000, oslog, type, "copyInt32Values: %d values, remap from binary data (%d entries)", v74, 0xEu);
  }

  objc_storeStrong(&oslog, 0);
  bytes = (bytes + 4);
  v55 = 0;
  v54 = [v63 count];
  for (i = 0; i < v58; ++i)
  {
    v59 = bytes;
    bytes = (bytes + 4);
    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*bytes++];
    v25 = [v63 objectForKey:v52];
    MEMORY[0x277D82BD8](v25);
    if (!v25)
    {
      goto LABEL_14;
    }

    v23 = v63;
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v59];
    [v23 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v24);
    if (++v55 == v54)
    {
      v51 = 4;
    }

    else
    {
LABEL_14:
      v51 = 0;
    }

    objc_storeStrong(&v52, 0);
    if (v51)
    {
      break;
    }
  }

  v50 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v49 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_4_0_8_0(v73, v55, [location count]);
    _os_log_debug_impl(&dword_240CB9000, v50, v49, "Mapped %d of %lu input values", v73, 0x12u);
  }

  objc_storeStrong(&v50, 0);
  v55 = 0;
  memset(v47, 0, sizeof(v47));
  v21 = MEMORY[0x277D82BE0](location);
  v22 = [v21 countByEnumeratingWithState:v47 objects:v72 count:16];
  if (v22)
  {
    v18 = *v47[2];
    v19 = 0;
    v20 = v22;
    while (1)
    {
      v17 = v19;
      if (*v47[2] != v18)
      {
        objc_enumerationMutation(v21);
      }

      v48 = *(v47[1] + 8 * v19);
      v15 = v63;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v48, "longLongValue")}];
      v46 = [v15 objectForKey:?];
      MEMORY[0x277D82BD8](v16);
      intValue = [v46 intValue];
      if (intValue == -1)
      {
        v51 = 8;
        goto LABEL_47;
      }

      v43 = 0;
      v14 = 0;
      if (v64)
      {
        getPostRemapOperationName = [v64 getPostRemapOperationName];
        v43 = 1;
        v14 = getPostRemapOperationName != 0;
      }

      if (v43)
      {
        MEMORY[0x277D82BD8](getPostRemapOperationName);
      }

      if (v14)
      {
        break;
      }

LABEL_44:
      *bufferCopy++ = intValue;
      if (++v55 == valuesCopy)
      {
        v51 = 7;
      }

      else
      {
        v51 = 0;
      }

LABEL_47:
      objc_storeStrong(&v46, 0);
      if (v51 && v51 != 8)
      {
        goto LABEL_52;
      }

      ++v19;
      if (v17 + 1 >= v20)
      {
        v19 = 0;
        v20 = [v21 countByEnumeratingWithState:v47 objects:v72 count:16];
        if (!v20)
        {
          goto LABEL_51;
        }
      }
    }

    getPostRemapOperationName2 = [v64 getPostRemapOperationName];
    if ([getPostRemapOperationName2 isEqualToString:@"hash"])
    {
      v12 = intValue;
      getHashOpModValue = [v64 getHashOpModValue];
      intValue = v12 % [getHashOpModValue intValue];
      MEMORY[0x277D82BD8](getHashOpModValue);
    }

    else if ([getPostRemapOperationName2 isEqualToString:@"truncate"])
    {
      getTruncateOpMinValue = [v64 getTruncateOpMinValue];
      if (getTruncateOpMinValue && (v11 = intValue, v11 < [getTruncateOpMinValue intValue]))
      {
        v51 = 8;
      }

      else
      {
        getTruncateOpMaxValue = [v64 getTruncateOpMaxValue];
        if (getTruncateOpMaxValue && (v10 = intValue, v10 > [getTruncateOpMaxValue intValue]))
        {
          v51 = 8;
        }

        else
        {
          v51 = 0;
        }

        objc_storeStrong(&getTruncateOpMaxValue, 0);
      }

      objc_storeStrong(&getTruncateOpMinValue, 0);
      if (v51)
      {
LABEL_43:
        objc_storeStrong(&getPostRemapOperationName2, 0);
        if (v51)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }
    }

    v51 = 0;
    goto LABEL_43;
  }

LABEL_51:
  v51 = 0;
LABEL_52:
  MEMORY[0x277D82BD8](v21);
  while (v55 < valuesCopy)
  {
    v9 = bufferCopy++;
    *v9 = valueCopy;
    ++v55;
  }

  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)copyInt32Values:(int)values fromArray:(id)array toBuffer:(int *)buffer withDefaultValue:(int)value withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  v37 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v33 = a2;
  valuesCopy = values;
  location = 0;
  objc_storeStrong(&location, array);
  bufferCopy = buffer;
  valueCopy = value;
  v28 = 0;
  objc_storeStrong(&v28, dictionary);
  v27 = 0;
  objc_storeStrong(&v27, operation);
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v16 = valuesCopy;
    v17 = v28 != 0;
    if (v28)
    {
      v15 = [v28 count];
    }

    else
    {
      v15 = 0;
    }

    __os_log_helper_16_0_3_4_0_4_0_8_0(v36, v16, v17, v15);
    _os_log_debug_impl(&dword_240CB9000, oslog, type, "copyInt32Values: %d values, remap from dict, has remap dict: %d, sizee: %lu", v36, 0x18u);
  }

  objc_storeStrong(&oslog, 0);
  v24 = 0;
  memset(__b, 0, sizeof(__b));
  v13 = MEMORY[0x277D82BE0](location);
  v14 = [v13 countByEnumeratingWithState:__b objects:v35 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(v13);
      }

      v23 = *(__b[1] + 8 * v11);
      if ([AMDFeature getIntFromObject:v23 copyToValue:bufferCopy withRemapDictionary:v28 andPostRemapOperation:v27])
      {
        ++bufferCopy;
        if (++v24 == valuesCopy)
        {
          break;
        }
      }

      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [v13 countByEnumeratingWithState:__b objects:v35 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v13);
  while (v24 < valuesCopy)
  {
    v8 = bufferCopy++;
    *v8 = valueCopy;
    ++v24;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)copyFloat32Values:(int)values fromArray:(id)array toBuffer:(float *)buffer withDefaultValue:(float)value withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v29 = a2;
  valuesCopy = values;
  location = 0;
  objc_storeStrong(&location, array);
  bufferCopy = buffer;
  valueCopy = value;
  v24 = 0;
  objc_storeStrong(&v24, dictionary);
  v23 = 0;
  objc_storeStrong(&v23, operation);
  if (valuesCopy)
  {
    v21 = 0;
    memset(__b, 0, sizeof(__b));
    v13 = MEMORY[0x277D82BE0](location);
    v14 = [v13 countByEnumeratingWithState:__b objects:v31 count:16];
    if (v14)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(__b[1] + 8 * v11);
        if ([AMDFeature getFloatFromObject:v20 copyToValue:bufferCopy withRemapDictionary:v24 andPostRemapOperation:v23])
        {
          ++bufferCopy;
          if (++v21 == valuesCopy)
          {
            break;
          }
        }

        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [v13 countByEnumeratingWithState:__b objects:v31 count:16];
          if (!v12)
          {
            goto LABEL_12;
          }
        }
      }

      v22 = 2;
    }

    else
    {
LABEL_12:
      v22 = 0;
    }

    MEMORY[0x277D82BD8](v13);
    while (v21 < valuesCopy)
    {
      v8 = bufferCopy++;
      *v8 = valueCopy;
      ++v21;
    }

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)copyDoubleValues:(int)values fromArray:(id)array toBuffer:(double *)buffer withDefaultValue:(double)value withRemapDictionary:(id)dictionary andPostRemapOperation:(id)operation
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v29 = a2;
  valuesCopy = values;
  location = 0;
  objc_storeStrong(&location, array);
  bufferCopy = buffer;
  valueCopy = value;
  v24 = 0;
  objc_storeStrong(&v24, dictionary);
  v23 = 0;
  objc_storeStrong(&v23, operation);
  if (valuesCopy)
  {
    v21 = 0;
    memset(__b, 0, sizeof(__b));
    v13 = MEMORY[0x277D82BE0](location);
    v14 = [v13 countByEnumeratingWithState:__b objects:v31 count:16];
    if (v14)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(__b[1] + 8 * v11);
        if ([AMDFeature getDoubleFromObject:v20 copyToValue:bufferCopy withRemapDictionary:v24 andPostRemapOperation:v23])
        {
          ++bufferCopy;
          if (++v21 == valuesCopy)
          {
            break;
          }
        }

        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [v13 countByEnumeratingWithState:__b objects:v31 count:16];
          if (!v12)
          {
            goto LABEL_12;
          }
        }
      }

      v22 = 2;
    }

    else
    {
LABEL_12:
      v22 = 0;
    }

    MEMORY[0x277D82BD8](v13);
    while (v21 < valuesCopy)
    {
      v8 = bufferCopy++;
      *v8 = valueCopy;
      ++v21;
    }

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

@end