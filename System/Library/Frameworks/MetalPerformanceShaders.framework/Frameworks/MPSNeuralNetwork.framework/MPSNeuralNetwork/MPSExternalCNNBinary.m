@interface MPSExternalCNNBinary
- (unint64_t)encodeToCommandBuffer:(id)a3 computeCommandEncoder:(id)a4 options:(unint64_t)a5 primaryTexture:(id)a6 primaryInfo:(id *)a7 secondaryTexture:(id)a8 secondaryInfo:(id *)a9 destinationTexture:(id)a10 destinationInfo:(id *)a11;
@end

@implementation MPSExternalCNNBinary

- (unint64_t)encodeToCommandBuffer:(id)a3 computeCommandEncoder:(id)a4 options:(unint64_t)a5 primaryTexture:(id)a6 primaryInfo:(id *)a7 secondaryTexture:(id)a8 secondaryInfo:(id *)a9 destinationTexture:(id)a10 destinationInfo:(id *)a11
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