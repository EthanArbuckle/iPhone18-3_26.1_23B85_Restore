@interface VNBlurSignature
+ (id)computeBlurSignatureForGrayscaleImage:(__CVBuffer *)image error:(id *)error;
- (VNBlurSignature)initWithSignatureData:(void *)data;
- (void)dealloc;
@end

@implementation VNBlurSignature

- (VNBlurSignature)initWithSignatureData:(void *)data
{
  v5.receiver = self;
  v5.super_class = VNBlurSignature;
  result = [(VNBlurSignature *)&v5 init];
  if (result)
  {
    result->_signatureData = data;
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

+ (id)computeBlurSignatureForGrayscaleImage:(__CVBuffer *)image error:(id *)error
{
  CVPixelBufferLockBaseAddress(image, 1uLL);
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  BytesPerRow = CVPixelBufferGetBytesPerRow(image);
  v17.data = CVPixelBufferGetBaseAddress(image);
  v17.height = Height;
  v17.width = Width;
  v17.rowBytes = BytesPerRow;
  v16 = 0;
  v15 = 0;
  v10 = vision::mod::image_quality::BlurMeasure::computeEdgeBasedBlurScoreForPlanar8Image(&v17, &v15, 0, 0.0, 0, &v16, v9);
  CVPixelBufferUnlockBaseAddress(image, 1uLL);
  if (v10 == 2688)
  {
    v11 = [VNBlurSignature alloc];
    v12 = [(VNBlurSignature *)v11 initWithSignatureData:v16];
  }

  else
  {
    if (error)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error while computing blur score: %s", CVML_getStatusDescription(v10)];
      *error = [VNError errorWithCode:3 message:v13];
    }

    v12 = 0;
  }

  return v12;
}

@end