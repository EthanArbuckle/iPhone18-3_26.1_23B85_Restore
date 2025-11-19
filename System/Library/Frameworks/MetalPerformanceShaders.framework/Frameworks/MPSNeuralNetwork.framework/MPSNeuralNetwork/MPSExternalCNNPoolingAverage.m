@interface MPSExternalCNNPoolingAverage
- (unint64_t)encodeToCommandBuffer:(id)a3 computeCommandEncoder:(id)a4 options:(unint64_t)a5 sourceTexture:(id)a6 sourceInfo:(id *)a7 destinationTexture:(id)a8 destinationInfo:(id *)a9 zeroPadSizeX:(unint64_t)a10 zeroPadSizeY:(unint64_t)a11;
@end

@implementation MPSExternalCNNPoolingAverage

- (unint64_t)encodeToCommandBuffer:(id)a3 computeCommandEncoder:(id)a4 options:(unint64_t)a5 sourceTexture:(id)a6 sourceInfo:(id *)a7 destinationTexture:(id)a8 destinationInfo:(id *)a9 zeroPadSizeX:(unint64_t)a10 zeroPadSizeY:(unint64_t)a11
{
  v13 = MTLReportFailureTypeEnabled();
  v20 = *MEMORY[0x277CD72E0];
  if (v13)
  {
    v21 = objc_opt_class();
    v23 = NSStringFromClass(v21);
    MTLReportFailure();
  }

  objc_msgSend_doesNotRecognizeSelector_(*(&self->super.super.super.isa + v20), v14, a2, v15, v16, v17, v18, v19, v23);
  return 0;
}

@end