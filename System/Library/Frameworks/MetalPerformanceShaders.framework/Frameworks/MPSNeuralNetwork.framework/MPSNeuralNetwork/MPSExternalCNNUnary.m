@interface MPSExternalCNNUnary
- (unint64_t)encodeToCommandBuffer:(id)a3 computeCommandEncoder:(id)a4 options:(unint64_t)a5 pluginOptions:(unint64_t)a6 sourceTexture:(id)a7 sourceInfo:(id *)a8 destinationTexture:(id)a9 destinationInfo:(id *)a10;
- (unint64_t)encodeToCommandBuffer:(id)a3 computeCommandEncoder:(id)a4 options:(unint64_t)a5 sourceTexture:(id)a6 sourceInfo:(id *)a7 destinationTexture:(id)a8 destinationInfo:(id *)a9;
@end

@implementation MPSExternalCNNUnary

- (unint64_t)encodeToCommandBuffer:(id)a3 computeCommandEncoder:(id)a4 options:(unint64_t)a5 sourceTexture:(id)a6 sourceInfo:(id *)a7 destinationTexture:(id)a8 destinationInfo:(id *)a9
{
  if (MTLReportFailureTypeEnabled())
  {
    v17 = objc_opt_class();
    v19 = NSStringFromClass(v17);
    MTLReportFailure();
  }

  objc_msgSend_doesNotRecognizeSelector_(self, v11, a2, v12, v13, v14, v15, v16, v19);
  return 0;
}

- (unint64_t)encodeToCommandBuffer:(id)a3 computeCommandEncoder:(id)a4 options:(unint64_t)a5 pluginOptions:(unint64_t)a6 sourceTexture:(id)a7 sourceInfo:(id *)a8 destinationTexture:(id)a9 destinationInfo:(id *)a10
{
  if (MTLReportFailureTypeEnabled())
  {
    v18 = objc_opt_class();
    v20 = NSStringFromClass(v18);
    MTLReportFailure();
  }

  objc_msgSend_doesNotRecognizeSelector_(self, v12, a2, v13, v14, v15, v16, v17, v20);
  return 0;
}

@end