@interface VNBlurSignature
+ (id)computeBlurSignatureForGrayscaleImage:(__CVBuffer *)a3 error:(id *)a4;
- (VNBlurSignature)initWithSignatureData:(void *)a3;
- (void)dealloc;
@end

@implementation VNBlurSignature

- (VNBlurSignature)initWithSignatureData:(void *)a3
{
  v5.receiver = self;
  v5.super_class = VNBlurSignature;
  result = [(VNBlurSignature *)&v5 init];
  if (result)
  {
    result->_signatureData = a3;
  }

  return result;
}

- (void)dealloc
{
  signatureData = self->_signatureData;
  if (signatureData)
  {
    free(signatureData[2]);
    free(signatureData);
  }

  v4.receiver = self;
  v4.super_class = VNBlurSignature;
  [(VNBlurSignature *)&v4 dealloc];
}

+ (id)computeBlurSignatureForGrayscaleImage:(__CVBuffer *)a3 error:(id *)a4
{
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v17.data = CVPixelBufferGetBaseAddress(a3);
  v17.height = Height;
  v17.width = Width;
  v17.rowBytes = BytesPerRow;
  v16 = 0;
  v15 = 0;
  v10 = vision::mod::image_quality::BlurMeasure::computeEdgeBasedBlurScoreForPlanar8Image(&v17, &v15, 0, 0.0, 0, &v16, v9);
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  if (v10 == 2688)
  {
    v11 = [VNBlurSignature alloc];
    v12 = [(VNBlurSignature *)v11 initWithSignatureData:v16];
  }

  else
  {
    if (a4)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error while computing blur score: %s", CVML_getStatusDescription(v10)];
      *a4 = [VNError errorWithCode:3 message:v13];
    }

    v12 = 0;
  }

  return v12;
}

@end