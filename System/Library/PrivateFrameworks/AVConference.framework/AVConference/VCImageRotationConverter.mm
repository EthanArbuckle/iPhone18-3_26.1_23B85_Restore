@interface VCImageRotationConverter
- (VCImageRotationConverter)initWithRotationAngle:(unsigned int)angle width:(unint64_t)width height:(unint64_t)height formatType:(unsigned int)type;
@end

@implementation VCImageRotationConverter

- (VCImageRotationConverter)initWithRotationAngle:(unsigned int)angle width:(unint64_t)width height:(unint64_t)height formatType:(unsigned int)type
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCImageRotationConverter;
  v9 = [(VCImageRotationConverterBase *)&v14 initWithRotationAngle:*&angle formatType:*&type];
  v10 = v9;
  if (v9)
  {
    if (angle == 90 || angle == 270)
    {
      [(VCImageConverterBase *)v9 setUpBufferPoolForOutputWidth:height outputHeight:width];
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCImageRotationConverter initWithRotationAngle:v11 width:angle height:v12 formatType:?];
        }
      }

      return 0;
    }
  }

  return v10;
}

- (void)initWithRotationAngle:(os_log_t)log width:height:formatType:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCImageRotationConverter initWithRotationAngle:width:height:formatType:]";
  v7 = 1024;
  v8 = 19;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Rotation angle %d is not supported (Only 90 and 270 are valid).", &v3, 0x22u);
}

@end