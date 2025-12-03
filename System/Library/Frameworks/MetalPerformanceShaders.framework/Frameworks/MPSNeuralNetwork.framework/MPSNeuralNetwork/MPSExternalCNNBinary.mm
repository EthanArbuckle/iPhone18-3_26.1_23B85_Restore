@interface MPSExternalCNNBinary
- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options primaryTexture:(id)texture primaryInfo:(id *)info secondaryTexture:(id)secondaryTexture secondaryInfo:(id *)secondaryInfo destinationTexture:(id)self0 destinationInfo:(id *)self1;
@end

@implementation MPSExternalCNNBinary

- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options primaryTexture:(id)texture primaryInfo:(id *)info secondaryTexture:(id)secondaryTexture secondaryInfo:(id *)secondaryInfo destinationTexture:(id)self0 destinationInfo:(id *)self1
{
  if (MTLReportFailureTypeEnabled())
  {
    v19 = objc_opt_class();
    v21 = NSStringFromClass(v19);
    MTLReportFailure();
  }

  objc_msgSend_doesNotRecognizeSelector_(self, v13, a2, v14, v15, v16, v17, v18, v21);
  return 0;
}

@end