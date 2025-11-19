@interface _MLCANEMatMulParameters
+ (id)matMulUnitParametersWith:(id)a3 transposeXParams:(id)a4 transposeYParams:(id)a5 finalTransposeParams:(id)a6 gocParams:(id)a7;
- (_MLCANEMatMulParameters)initWithMatMulParams:(id)a3 transposeXParams:(id)a4 transposeYParams:(id)a5 finalTransposeParams:(id)a6 gocParams:(id)a7;
@end

@implementation _MLCANEMatMulParameters

+ (id)matMulUnitParametersWith:(id)a3 transposeXParams:(id)a4 transposeYParams:(id)a5 finalTransposeParams:(id)a6 gocParams:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithMatMulParams:v16 transposeXParams:v15 transposeYParams:v14 finalTransposeParams:v13 gocParams:v12];

  return v17;
}

- (_MLCANEMatMulParameters)initWithMatMulParams:(id)a3 transposeXParams:(id)a4 transposeYParams:(id)a5 finalTransposeParams:(id)a6 gocParams:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = _MLCANEMatMulParameters;
  v17 = [(_MLCANEMatMulParameters *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_matMulParams, a3);
    objc_storeStrong(&v18->_transposeXParams, a4);
    objc_storeStrong(&v18->_transposeYParams, a5);
    objc_storeStrong(&v18->_finalTransposeParams, a6);
    objc_storeStrong(&v18->_gocParams, a7);
  }

  return v18;
}

@end