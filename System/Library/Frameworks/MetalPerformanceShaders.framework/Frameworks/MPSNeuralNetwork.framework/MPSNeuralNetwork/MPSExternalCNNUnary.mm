@interface MPSExternalCNNUnary
- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options pluginOptions:(unint64_t)pluginOptions sourceTexture:(id)texture sourceInfo:(id *)info destinationTexture:(id)destinationTexture destinationInfo:(id *)self0;
- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options sourceTexture:(id)texture sourceInfo:(id *)info destinationTexture:(id)destinationTexture destinationInfo:(id *)destinationInfo;
@end

@implementation MPSExternalCNNUnary

- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options sourceTexture:(id)texture sourceInfo:(id *)info destinationTexture:(id)destinationTexture destinationInfo:(id *)destinationInfo
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

- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options pluginOptions:(unint64_t)pluginOptions sourceTexture:(id)texture sourceInfo:(id *)info destinationTexture:(id)destinationTexture destinationInfo:(id *)self0
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