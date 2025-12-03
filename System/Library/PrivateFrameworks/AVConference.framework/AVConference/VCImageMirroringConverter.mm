@interface VCImageMirroringConverter
- (VCImageMirroringConverter)initWithWidth:(unint64_t)width height:(unint64_t)height formatType:(unsigned int)type;
@end

@implementation VCImageMirroringConverter

- (VCImageMirroringConverter)initWithWidth:(unint64_t)width height:(unint64_t)height formatType:(unsigned int)type
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCImageMirroringConverter;
  v7 = [(VCImageRotationConverterBase *)&v10 initWithRotationAngle:0 formatType:*&type];
  v8 = v7;
  if (v7 && ![(VCImageConverterBase *)v7 setUpBufferPoolForOutputWidth:width outputHeight:height])
  {

    return 0;
  }

  return v8;
}

@end