@interface AMDListFeature
- (AMDListFeature)initWithValue:(id)a3;
- (unint64_t)getCount;
- (void)copyDoubleValues:(int)a3 toBuffer:(double *)a4 withDefaultValue:(double)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
- (void)copyFloat32Values:(int)a3 toBuffer:(float *)a4 withDefaultValue:(float)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
- (void)copyInt32Values:(int)a3 toBuffer:(int *)a4 withDefaultValue:(int)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8;
@end

@implementation AMDListFeature

- (AMDListFeature)initWithValue:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AMDListFeature;
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
  v10 = v17;
  v11 = [(AMDFeature *)v19 _value];
  [AMDFeature copyInt32Values:"copyInt32Values:fromArray:toBuffer:withDefaultValue:withRemapDictionary:andPostRemapOperation:" fromArray:v10 toBuffer:? withDefaultValue:? withRemapDictionary:? andPostRemapOperation:?];
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyFloat32Values:(int)a3 toBuffer:(float *)a4 withDefaultValue:(float)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
{
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
  v11 = v18;
  v12 = [(AMDFeature *)v20 _value];
  *&v8 = v16;
  [AMDFeature copyFloat32Values:"copyFloat32Values:fromArray:toBuffer:withDefaultValue:withRemapDictionary:andPostRemapOperation:" fromArray:v11 toBuffer:v8 withDefaultValue:? withRemapDictionary:? andPostRemapOperation:?];
  MEMORY[0x277D82BD8](v12);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
}

- (void)copyDoubleValues:(int)a3 toBuffer:(double *)a4 withDefaultValue:(double)a5 withMapOp:(id)a6 withRemapDictionary:(id)a7 andPostRemapOperation:(id)a8
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
  v10 = v17;
  v11 = [(AMDFeature *)v19 _value];
  [AMDFeature copyDoubleValues:"copyDoubleValues:fromArray:toBuffer:withDefaultValue:withRemapDictionary:andPostRemapOperation:" fromArray:v10 toBuffer:v15 withDefaultValue:? withRemapDictionary:? andPostRemapOperation:?];
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

@end