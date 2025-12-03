@interface MPSExternalCNNPoolingAverage
- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options sourceTexture:(id)texture sourceInfo:(id *)info destinationTexture:(id)destinationTexture destinationInfo:(id *)destinationInfo zeroPadSizeX:(unint64_t)self0 zeroPadSizeY:(unint64_t)self1;
@end

@implementation MPSExternalCNNPoolingAverage

- (unint64_t)encodeToCommandBuffer:(id)buffer computeCommandEncoder:(id)encoder options:(unint64_t)options sourceTexture:(id)texture sourceInfo:(id *)info destinationTexture:(id)destinationTexture destinationInfo:(id *)destinationInfo zeroPadSizeX:(unint64_t)self0 zeroPadSizeY:(unint64_t)self1
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