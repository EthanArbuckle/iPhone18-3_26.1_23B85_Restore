@interface VCImageMirroringConverter
- (VCImageMirroringConverter)initWithWidth:(unint64_t)a3 height:(unint64_t)a4 formatType:(unsigned int)a5;
@end

@implementation VCImageMirroringConverter

- (VCImageMirroringConverter)initWithWidth:(unint64_t)a3 height:(unint64_t)a4 formatType:(unsigned int)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCImageMirroringConverter;
  v7 = [(VCImageRotationConverterBase *)&v10 initWithRotationAngle:0 formatType:*&a5];
  v8 = v7;
  if (v7 && ![(VCImageConverterBase *)v7 setUpBufferPoolForOutputWidth:a3 outputHeight:a4])
  {

    return 0;
  }

  return v8;
}

@end