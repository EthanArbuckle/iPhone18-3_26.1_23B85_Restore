@interface AMDScalarFeature
- (AMDScalarFeature)initWithValue:(id)a3;
- (id)stringValue;
- (void)copyDoubleValues:(int)a3 toBuffer:(double *)a4 withDefaultValue:(double)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
- (void)copyFloat32Values:(int)a3 toBuffer:(float *)a4 withDefaultValue:(float)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
- (void)copyInt32Values:(int)a3 toBuffer:(int *)a4 withDefaultValue:(int)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
@end

@implementation AMDScalarFeature

- (AMDScalarFeature)initWithValue:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AMDScalarFeature;
  v8 = [(AMDFeature *)&v6 initWithValue:location[0]];
  objc_storeStrong(&v8, v8);
  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)stringValue
{
  v5 = [(AMDFeature *)self _value];
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (v5)
  {
    v13 = [(AMDFeature *)self _value];
    v12 = 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(AMDFeature *)self _value];
      v10 = 1;
      v4 = v11;
    }

    else
    {
      v9 = [(AMDFeature *)self _value];
      v8 = 1;
      v7 = [v9 stringValue];
      v6 = 1;
      v4 = v7;
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
    MEMORY[0x277D82BD8](v7);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  MEMORY[0x277D82BD8](v5);

  return v15;
}

- (void)copyInt32Values:(int)a3 toBuffer:(int *)a4 withDefaultValue:(int)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v14 = 0;
  objc_storeStrong(&v14, a7);
  v13 = 0;
  objc_storeStrong(&v13, a8);
  if (v18 != 1)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v21, v18);
      _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "trying to get %d values (!= 1) from NumericFeature", v21, 8u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v8 = [(AMDFeature *)v20 _value];
  v9 = [AMDFeature getIntFromObject:"getIntFromObject:copyToValue:withRemapDictionary:andPostRemapOperation:" copyToValue:? withRemapDictionary:? andPostRemapOperation:?];
  MEMORY[0x277D82BD8](v8);
  if (!v9)
  {
    *v17 = v16;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)copyFloat32Values:(int)a3 toBuffer:(float *)a4 withDefaultValue:(float)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v14 = 0;
  objc_storeStrong(&v14, a7);
  v13 = 0;
  objc_storeStrong(&v13, a8);
  if (v18 != 1)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v21, v18);
      _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "trying to get %d values (!= 1) from NumericFeature", v21, 8u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v8 = [(AMDFeature *)v20 _value];
  v9 = [AMDFeature getFloatFromObject:"getFloatFromObject:copyToValue:withRemapDictionary:andPostRemapOperation:" copyToValue:? withRemapDictionary:? andPostRemapOperation:?];
  MEMORY[0x277D82BD8](v8);
  if (!v9)
  {
    *v17 = v16;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)copyDoubleValues:(int)a3 toBuffer:(double *)a4 withDefaultValue:(double)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v14 = 0;
  objc_storeStrong(&v14, a7);
  v13 = 0;
  objc_storeStrong(&v13, a8);
  if (v18 != 1)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v21, v18);
      _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "trying to get %d values (!= 1) from NumericFeature", v21, 8u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v8 = [(AMDFeature *)v20 _value];
  v9 = [AMDFeature getDoubleFromObject:"getDoubleFromObject:copyToValue:withRemapDictionary:andPostRemapOperation:" copyToValue:? withRemapDictionary:? andPostRemapOperation:?];
  MEMORY[0x277D82BD8](v8);
  if (!v9)
  {
    *v17 = v16;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

@end