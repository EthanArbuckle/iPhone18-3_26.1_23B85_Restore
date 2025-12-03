@interface VCImageRotationConverterBase
- (VCImageRotationConverterBase)initWithRotationAngle:(unsigned int)angle formatType:(unsigned int)type;
- (void)dealloc;
@end

@implementation VCImageRotationConverterBase

- (VCImageRotationConverterBase)initWithRotationAngle:(unsigned int)angle formatType:(unsigned int)type
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCImageRotationConverterBase;
  v5 = [(VCImageConverterBase *)&v9 initWithFormatType:*&type];
  v6 = v5;
  if (v5)
  {
    v5->_rotationAngle = angle;
    VTImageRotationSessionCreate();
    v7 = MEMORY[0x1E6983D00];
    if (!angle)
    {
      v7 = MEMORY[0x1E6983D08];
    }

    MEMORY[0x1E128B1B0](v6->_rotationSession, *v7, *MEMORY[0x1E695E4D0]);
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B190](self->_rotationSession, a2);
  VTImageRotationSessionRelease();
  v3.receiver = self;
  v3.super_class = VCImageRotationConverterBase;
  [(VCImageConverterBase *)&v3 dealloc];
}

@end