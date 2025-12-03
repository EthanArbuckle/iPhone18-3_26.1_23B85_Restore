@interface _MLCANEMatMulParameters
+ (id)matMulUnitParametersWith:(id)with transposeXParams:(id)params transposeYParams:(id)yParams finalTransposeParams:(id)transposeParams gocParams:(id)gocParams;
- (_MLCANEMatMulParameters)initWithMatMulParams:(id)params transposeXParams:(id)xParams transposeYParams:(id)yParams finalTransposeParams:(id)transposeParams gocParams:(id)gocParams;
@end

@implementation _MLCANEMatMulParameters

+ (id)matMulUnitParametersWith:(id)with transposeXParams:(id)params transposeYParams:(id)yParams finalTransposeParams:(id)transposeParams gocParams:(id)gocParams
{
  gocParamsCopy = gocParams;
  transposeParamsCopy = transposeParams;
  yParamsCopy = yParams;
  paramsCopy = params;
  withCopy = with;
  v17 = [[self alloc] initWithMatMulParams:withCopy transposeXParams:paramsCopy transposeYParams:yParamsCopy finalTransposeParams:transposeParamsCopy gocParams:gocParamsCopy];

  return v17;
}

- (_MLCANEMatMulParameters)initWithMatMulParams:(id)params transposeXParams:(id)xParams transposeYParams:(id)yParams finalTransposeParams:(id)transposeParams gocParams:(id)gocParams
{
  paramsCopy = params;
  xParamsCopy = xParams;
  yParamsCopy = yParams;
  transposeParamsCopy = transposeParams;
  gocParamsCopy = gocParams;
  v21.receiver = self;
  v21.super_class = _MLCANEMatMulParameters;
  v17 = [(_MLCANEMatMulParameters *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_matMulParams, params);
    objc_storeStrong(&v18->_transposeXParams, xParams);
    objc_storeStrong(&v18->_transposeYParams, yParams);
    objc_storeStrong(&v18->_finalTransposeParams, transposeParams);
    objc_storeStrong(&v18->_gocParams, gocParams);
  }

  return v18;
}

@end