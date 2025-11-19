@interface AMDFeature
+ (BOOL)getDoubleFromObject:(id)a3 copyToValue:(double *)a4 withRemapDictionary:(id)a5 andPostRemapOperation:(id)a6;
+ (BOOL)getFloatFromObject:(id)a3 copyToValue:(float *)a4 withRemapDictionary:(id)a5 andPostRemapOperation:(id)a6;
+ (BOOL)getIntFromObject:(id)a3 copyToValue:(int *)a4 withRemapDictionary:(id)a5 andPostRemapOperation:(id)a6;
+ (id)featureFromValue:(id)a3;
+ (void)copyDoubleValues:(int)a3 fromArray:(id)a4 toBuffer:(double *)a5 withDefaultValue:(double)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
+ (void)copyFloat32Values:(int)a3 fromArray:(id)a4 toBuffer:(float *)a5 withDefaultValue:(float)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
+ (void)copyInt32Values:(int)a3 fromArray:(id)a4 toBuffer:(int *)a5 withDefaultValue:(int)a6 withRemapData:(id)a7 andPostRemapOperation:(id)a8;
+ (void)copyInt32Values:(int)a3 fromArray:(id)a4 toBuffer:(int *)a5 withDefaultValue:(int)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
+ (void)copyInt32Values:(int)a3 fromArray:(id)a4 toBuffer:(int *)a5 withDefaultValue:(int)a6 withRemapInfo:(id)a7 andPostRemapOperation:(id)a8;
- (AMDFeature)initWithValue:(id)a3;
- (id)stringValue;
- (unint64_t)getCount;
- (void)copyDoubleValues:(int)a3 toBuffer:(double *)a4 withDefaultValue:(double)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
- (void)copyFloat32Values:(int)a3 toBuffer:(float *)a4 withDefaultValue:(float)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
- (void)copyInt32Values:(int)a3 toBuffer:(int *)a4 withDefaultValue:(int)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
- (void)copyInt32Values:(int)a3 toBuffer:(int *)a4 withDefaultValue:(int)a5 withMapOp:(id)a6 withRemapInfo:(id)a7 andPostRemapOperation:(id)a8;
- (void)setPostRemapOperation:(id)a3;
- (void)setRemapInfo:(id)a3;
- (void)setShape:(id)a3;
@end

@implementation AMDFeature

- (AMDFeature)initWithValue:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AMDFeature;
  v8 = [(AMDFeature *)&v6 init];
  objc_storeStrong(&v8, v8);
  [(AMDFeature *)v8 set_value:location[0]];
  [(AMDFeature *)v8 set_dataType:0];
  [(AMDFeature *)v8 set_remapInfo:0];
  [(AMDFeature *)v8 set_postRemapOperation:0];
  [(AMDFeature *)v8 set_shape:0];
  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)setRemapInfo:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AMDFeature *)v4 set_remapInfo:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setPostRemapOperation:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AMDFeature *)v4 set_postRemapOperation:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setShape:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AMDFeature *)v4 set_shape:location[0]];
  objc_storeStrong(location, 0);
}

- (unint64_t)getCount
{
  v2 = [(AMDFeature *)self _value];
  v4 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
  return v4;
}

- (id)stringValue
{
  v4 = [(AMDFeature *)self _value];
  v7 = 0;
  v5 = 0;
  if (v4)
  {
    v8 = [(AMDFeature *)self _value];
    v7 = 1;
    v6 = [v8 stringValue];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](v6);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v10 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  MEMORY[0x277D82BD8](v4);

  return v10;
}

- (void)copyInt32Values:(int)a3 toBuffer:(int *)a4 withDefaultValue:(int)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v11 = 0;
  objc_storeStrong(&v11, a7);
  v10 = 0;
  objc_storeStrong(&v10, a8);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyInt32Values:(int)a3 toBuffer:(int *)a4 withDefaultValue:(int)a5 withMapOp:(id)a6 withRemapInfo:(id)a7 andPostRemapOperation:(id)a8
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v11 = 0;
  objc_storeStrong(&v11, a7);
  v10 = 0;
  objc_storeStrong(&v10, a8);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyFloat32Values:(int)a3 toBuffer:(float *)a4 withDefaultValue:(float)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v11 = 0;
  objc_storeStrong(&v11, a7);
  v10 = 0;
  objc_storeStrong(&v10, a8);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyDoubleValues:(int)a3 toBuffer:(double *)a4 withDefaultValue:(double)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  location[2] = a4;
  location[1] = *&a5;
  location[0] = 0;
  objc_storeStrong(location, a6);
  v11 = 0;
  objc_storeStrong(&v11, a7);
  v10 = 0;
  objc_storeStrong(&v10, a8);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

+ (id)featureFromValue:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
        v13 = [v17 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        MEMORY[0x277D82BD8](v13);
        if (isKindOfClass & 1) != 0 || (v11 = [v17 firstObject], objc_opt_class(), v12 = objc_opt_isKindOfClass(), MEMORY[0x277D82BD8](v11), (v12))
        {
          v20 = [[AMDListFeature alloc] initWithValue:v17];
          v18 = 1;
        }

        else
        {
          v9 = [v17 firstObject];
          objc_opt_class();
          v10 = objc_opt_isKindOfClass();
          MEMORY[0x277D82BD8](v9);
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
          v8 = [v16 allValues];
          v15 = [v8 firstObject];
          MEMORY[0x277D82BD8](v8);
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

          objc_storeStrong(&v15, 0);
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

+ (BOOL)getIntFromObject:(id)a3 copyToValue:(int *)a4 withRemapDictionary:(id)a5 andPostRemapOperation:(id)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = a4;
  v27 = 0;
  objc_storeStrong(&v27, a5);
  v26 = 0;
  objc_storeStrong(&v26, a6);
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
      v14 = [location[0] stringValue];
      v8 = [v13 objectForKey:?];
      v9 = v25;
      v25 = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v14);
    }
  }

  if (v25)
  {
    v23 = [v25 intValue];
    v21 = 0;
    v12 = 0;
    if (v26)
    {
      v22 = [v26 getPostRemapOperationName];
      v21 = 1;
      v12 = v22 != 0;
    }

    if (v21)
    {
      MEMORY[0x277D82BD8](v22);
    }

    if (!v12)
    {
      goto LABEL_26;
    }

    v20 = [v26 getPostRemapOperationName];
    if ([v20 isEqualToString:@"hash"])
    {
      v11 = [v26 getHashOpModValue];
      v23 %= [v11 intValue];
      MEMORY[0x277D82BD8](v11);
    }

    else if ([v20 isEqualToString:@"truncate"])
    {
      v19 = [v26 getTruncateOpMinValue];
      if (v19 && v23 < [v19 intValue])
      {
        v30 = 0;
        v24 = 1;
      }

      else
      {
        v18 = [v26 getTruncateOpMaxValue];
        if (v18 && v23 > [v18 intValue])
        {
          v30 = 0;
          v24 = 1;
        }

        else
        {
          v24 = 0;
        }

        objc_storeStrong(&v18, 0);
      }

      objc_storeStrong(&v19, 0);
      if (v24)
      {
LABEL_25:
        objc_storeStrong(&v20, 0);
        if (v24)
        {
          goto LABEL_27;
        }

LABEL_26:
        *v28 = v23;
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

+ (BOOL)getFloatFromObject:(id)a3 copyToValue:(float *)a4 withRemapDictionary:(id)a5 andPostRemapOperation:(id)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = a4;
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v28 = 0;
  objc_storeStrong(&v28, a6);
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
      v17 = [location[0] stringValue];
      v8 = [v16 objectForKey:?];
      v9 = v27;
      v27 = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v17);
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
      v24 = [v28 getPostRemapOperationName];
      v23 = 1;
      v15 = [v24 isEqualToString:@"truncate"];
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

    v22 = [v28 getTruncateOpMinValue];
    if (v22 && ([v22 floatValue], v12 = *&v11, *&v11 = v25, v25 < v12))
    {
      v32 = 0;
      v26 = 1;
    }

    else
    {
      v21 = [v28 getTruncateOpMaxValue];
      if (v21 && ([v21 floatValue], v25 > v13))
      {
        v32 = 0;
        v26 = 1;
      }

      else
      {
        v26 = 0;
      }

      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v22, 0);
    if (!v26)
    {
LABEL_21:
      *v30 = v25;
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

+ (BOOL)getDoubleFromObject:(id)a3 copyToValue:(double *)a4 withRemapDictionary:(id)a5 andPostRemapOperation:(id)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = a4;
  v30 = 0;
  objc_storeStrong(&v30, a5);
  v29 = 0;
  objc_storeStrong(&v29, a6);
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
      v18 = [location[0] stringValue];
      v8 = [v17 objectForKey:?];
      v9 = v28;
      v28 = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v18);
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
      v25 = [v29 getPostRemapOperationName];
      v24 = 1;
      v16 = [v25 isEqualToString:@"truncate"];
    }

    if (v24)
    {
      MEMORY[0x277D82BD8](v25);
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_21;
    }

    v23 = [v29 getTruncateOpMinValue];
    if (v23 && ([v23 doubleValue], v13 = v12, v11 = v26, v26 < v13))
    {
      v33 = 0;
      v27 = 1;
    }

    else
    {
      v22 = [v29 getTruncateOpMaxValue];
      if (v22 && ([v22 doubleValue], v26 > v14))
      {
        v33 = 0;
        v27 = 1;
      }

      else
      {
        v27 = 0;
      }

      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v23, 0);
    if (!v27)
    {
LABEL_21:
      *v31 = v26;
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

+ (void)copyInt32Values:(int)a3 fromArray:(id)a4 toBuffer:(int *)a5 withDefaultValue:(int)a6 withRemapInfo:(id)a7 andPostRemapOperation:(id)a8
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v15 = a5;
  v14 = a6;
  v13 = 0;
  objc_storeStrong(&v13, a7);
  v12 = 0;
  objc_storeStrong(&v12, a8);
  if (v17)
  {
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [v19 copyInt32Values:v17 fromArray:location toBuffer:v15 withDefaultValue:v14 withRemapData:v13 andPostRemapOperation:v12];
    }

    else
    {
      [v19 copyInt32Values:v17 fromArray:location toBuffer:v15 withDefaultValue:v14 withRemapDictionary:v13 andPostRemapOperation:v12];
    }
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

+ (void)copyInt32Values:(int)a3 fromArray:(id)a4 toBuffer:(int *)a5 withDefaultValue:(int)a6 withRemapData:(id)a7 andPostRemapOperation:(id)a8
{
  v76 = *MEMORY[0x277D85DE8];
  v71 = a1;
  v70 = a2;
  v69 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v67 = a5;
  v66 = a6;
  v65 = 0;
  objc_storeStrong(&v65, a7);
  v64 = 0;
  objc_storeStrong(&v64, a8);
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
  v60 = [v26 bytes];
  v59 = 0;
  v58 = *v60;
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_4_0_4_0(v74, v69, v58);
    _os_log_debug_impl(&dword_240CB9000, oslog, type, "copyInt32Values: %d values, remap from binary data (%d entries)", v74, 0xEu);
  }

  objc_storeStrong(&oslog, 0);
  v60 = (v60 + 4);
  v55 = 0;
  v54 = [v63 count];
  for (i = 0; i < v58; ++i)
  {
    v59 = v60;
    v60 = (v60 + 4);
    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v60++];
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
      v45 = [v46 intValue];
      if (v45 == -1)
      {
        v51 = 8;
        goto LABEL_47;
      }

      v43 = 0;
      v14 = 0;
      if (v64)
      {
        v44 = [v64 getPostRemapOperationName];
        v43 = 1;
        v14 = v44 != 0;
      }

      if (v43)
      {
        MEMORY[0x277D82BD8](v44);
      }

      if (v14)
      {
        break;
      }

LABEL_44:
      *v67++ = v45;
      if (++v55 == v69)
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

    v42 = [v64 getPostRemapOperationName];
    if ([v42 isEqualToString:@"hash"])
    {
      v12 = v45;
      v13 = [v64 getHashOpModValue];
      v45 = v12 % [v13 intValue];
      MEMORY[0x277D82BD8](v13);
    }

    else if ([v42 isEqualToString:@"truncate"])
    {
      v41 = [v64 getTruncateOpMinValue];
      if (v41 && (v11 = v45, v11 < [v41 intValue]))
      {
        v51 = 8;
      }

      else
      {
        v40 = [v64 getTruncateOpMaxValue];
        if (v40 && (v10 = v45, v10 > [v40 intValue]))
        {
          v51 = 8;
        }

        else
        {
          v51 = 0;
        }

        objc_storeStrong(&v40, 0);
      }

      objc_storeStrong(&v41, 0);
      if (v51)
      {
LABEL_43:
        objc_storeStrong(&v42, 0);
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
  while (v55 < v69)
  {
    v9 = v67++;
    *v9 = v66;
    ++v55;
  }

  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)copyInt32Values:(int)a3 fromArray:(id)a4 toBuffer:(int *)a5 withDefaultValue:(int)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = a1;
  v33 = a2;
  v32 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v30 = a5;
  v29 = a6;
  v28 = 0;
  objc_storeStrong(&v28, a7);
  v27 = 0;
  objc_storeStrong(&v27, a8);
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v16 = v32;
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
      if ([AMDFeature getIntFromObject:v23 copyToValue:v30 withRemapDictionary:v28 andPostRemapOperation:v27])
      {
        ++v30;
        if (++v24 == v32)
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
  while (v24 < v32)
  {
    v8 = v30++;
    *v8 = v29;
    ++v24;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)copyFloat32Values:(int)a3 fromArray:(id)a4 toBuffer:(float *)a5 withDefaultValue:(float)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = a1;
  v29 = a2;
  v28 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v26 = a5;
  v25 = a6;
  v24 = 0;
  objc_storeStrong(&v24, a7);
  v23 = 0;
  objc_storeStrong(&v23, a8);
  if (v28)
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
        if ([AMDFeature getFloatFromObject:v20 copyToValue:v26 withRemapDictionary:v24 andPostRemapOperation:v23])
        {
          ++v26;
          if (++v21 == v28)
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
    while (v21 < v28)
    {
      v8 = v26++;
      *v8 = v25;
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

+ (void)copyDoubleValues:(int)a3 fromArray:(id)a4 toBuffer:(double *)a5 withDefaultValue:(double)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = a1;
  v29 = a2;
  v28 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v26 = a5;
  v25 = a6;
  v24 = 0;
  objc_storeStrong(&v24, a7);
  v23 = 0;
  objc_storeStrong(&v23, a8);
  if (v28)
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
        if ([AMDFeature getDoubleFromObject:v20 copyToValue:v26 withRemapDictionary:v24 andPostRemapOperation:v23])
        {
          ++v26;
          if (++v21 == v28)
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
    while (v21 < v28)
    {
      v8 = v26++;
      *v8 = v25;
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