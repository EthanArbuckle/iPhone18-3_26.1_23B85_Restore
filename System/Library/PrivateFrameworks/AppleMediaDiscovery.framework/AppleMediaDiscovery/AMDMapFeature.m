@interface AMDMapFeature
- (AMDMapFeature)initWithValue:(id)a3;
- (id)getArrayForOp:(id)a3;
- (unint64_t)getCount;
- (void)copyDoubleValues:(int)a3 toBuffer:(double *)a4 withDefaultValue:(double)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
- (void)copyFloat32Values:(int)a3 toBuffer:(float *)a4 withDefaultValue:(float)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
- (void)copyInt32Values:(int)a3 toBuffer:(int *)a4 withDefaultValue:(int)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
- (void)copyInt32Values:(int)a3 toBuffer:(int *)a4 withDefaultValue:(int)a5 withMapOp:(id)a6 withRemapInfo:(id)a7 andPostRemapOperation:(id)a8;
@end

@implementation AMDMapFeature

- (AMDMapFeature)initWithValue:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AMDMapFeature;
  v8 = [(AMDFeature *)&v6 initWithValue:location[0]];
  objc_storeStrong(&v8, v8);
  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (unint64_t)getCount
{
  v4 = [(AMDFeature *)self _value];
  v5 = 0;
  if (v4)
  {
    v6 = [(AMDFeature *)self _value];
    v5 = 1;
    v3 = [v6 count];
  }

  else
  {
    v3 = 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v4);
  return v3;
}

- (void)copyInt32Values:(int)a3 toBuffer:(int *)a4 withDefaultValue:(int)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v12 = 0;
  objc_storeStrong(&v12, a7);
  v11 = 0;
  objc_storeStrong(&v11, a8);
  v10 = [(AMDMapFeature *)v18 getArrayForOp:location];
  if (v10)
  {
    [AMDFeature copyInt32Values:v16 fromArray:v10 toBuffer:v15 withDefaultValue:v14 withRemapInfo:v12 andPostRemapOperation:v11];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyInt32Values:(int)a3 toBuffer:(int *)a4 withDefaultValue:(int)a5 withMapOp:(id)a6 withRemapInfo:(id)a7 andPostRemapOperation:(id)a8
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v12 = 0;
  objc_storeStrong(&v12, a7);
  v11 = 0;
  objc_storeStrong(&v11, a8);
  v10 = [(AMDMapFeature *)v18 getArrayForOp:location];
  if (v10)
  {
    [AMDFeature copyInt32Values:v16 fromArray:v10 toBuffer:v15 withDefaultValue:v14 withRemapInfo:v12 andPostRemapOperation:v11];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyFloat32Values:(int)a3 toBuffer:(float *)a4 withDefaultValue:(float)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v13 = 0;
  objc_storeStrong(&v13, a7);
  v12 = 0;
  objc_storeStrong(&v12, a8);
  v11 = [(AMDMapFeature *)v19 getArrayForOp:location];
  if (v11)
  {
    *&v8 = v15;
    [AMDFeature copyFloat32Values:v17 fromArray:v11 toBuffer:v16 withDefaultValue:v13 withRemapDictionary:v12 andPostRemapOperation:v8];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyDoubleValues:(int)a3 toBuffer:(double *)a4 withDefaultValue:(double)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v12 = 0;
  objc_storeStrong(&v12, a7);
  v11 = 0;
  objc_storeStrong(&v11, a8);
  v10 = [(AMDMapFeature *)v18 getArrayForOp:location];
  if (v10)
  {
    [AMDFeature copyDoubleValues:v16 fromArray:v10 toBuffer:v15 withDefaultValue:v12 withRemapDictionary:v11 andPostRemapOperation:v14];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (id)getArrayForOp:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v59 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v57 = 0;
  if ([location[0] isEqualToString:@"keys_order_asc_by_value"])
  {
    v48 = [(AMDFeature *)v59 _value];
    v3 = [v48 keysSortedByValueUsingComparator:&__block_literal_global_0];
    v4 = v57;
    v57 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v48);
  }

  else if ([location[0] isEqualToString:@"keys_order_desc_by_value"])
  {
    v47 = [(AMDFeature *)v59 _value];
    v5 = [v47 keysSortedByValueUsingComparator:&__block_literal_global_110];
    v6 = v57;
    v57 = v5;
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v47);
  }

  else if ([location[0] isEqualToString:@"values_order_asc_by_value"])
  {
    v46 = [(AMDFeature *)v59 _value];
    v45 = [v46 allValues];
    v7 = [v45 sortedArrayUsingComparator:&__block_literal_global_115];
    v8 = v57;
    v57 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
  }

  else if ([location[0] isEqualToString:@"values_order_desc_by_value"])
  {
    v44 = [(AMDFeature *)v59 _value];
    v43 = [v44 allValues];
    v9 = [v43 sortedArrayUsingComparator:&__block_literal_global_120];
    v10 = v57;
    v57 = v9;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
  }

  else if ([location[0] isEqualToString:@"keys_order_asc_by_key"])
  {
    v42 = [(AMDFeature *)v59 _value];
    v41 = [v42 allKeys];
    v11 = [v41 sortedArrayUsingComparator:&__block_literal_global_125];
    v12 = v57;
    v57 = v11;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
  }

  else if ([location[0] isEqualToString:@"keys_order_desc_by_key"])
  {
    v40 = [(AMDFeature *)v59 _value];
    v39 = [v40 allKeys];
    v13 = [v39 sortedArrayUsingComparator:&__block_literal_global_130];
    v14 = v57;
    v57 = v13;
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
  }

  else if ([location[0] isEqualToString:@"values_order_asc_by_key"])
  {
    v36 = [(AMDFeature *)v59 _value];
    v35 = [v36 allKeys];
    v56 = [v35 sortedArrayUsingComparator:&__block_literal_global_135];
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
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
        v30 = [(AMDFeature *)v59 _value];
        v29 = [v30 objectForKey:v54];
        [v28 addObject:?];
        MEMORY[0x277D82BD8](v29);
        MEMORY[0x277D82BD8](v30);
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
    v25 = [(AMDFeature *)v59 _value];
    v24 = [v25 allKeys];
    v52 = [v24 sortedArrayUsingComparator:&__block_literal_global_141];
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
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
        v19 = [(AMDFeature *)v59 _value];
        v18 = [v19 objectForKey:v50];
        [v17 addObject:?];
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](v19);
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