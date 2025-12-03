@interface VTTestProcessorConfiguration
- (VTTestProcessorConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height flags:(int64_t)flags;
- (void)dealloc;
@end

@implementation VTTestProcessorConfiguration

- (VTTestProcessorConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height flags:(int64_t)flags
{
  v26[4] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = VTTestProcessorConfiguration;
  v8 = [(VTTestProcessorConfiguration *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v8->_frameWidth = width;
    v8->_frameHeight = height;
    v8->_flags = flags;
    v10 = [&unk_1F039F9F8 copy];
    v11 = MEMORY[0x1E6966130];
    v9->_frameSupportedPixelFormats = v10;
    v12 = *v11;
    v26[0] = &unk_1F039F9B0;
    v13 = *MEMORY[0x1E6966208];
    v23[0] = v12;
    v23[1] = v13;
    v26[1] = [MEMORY[0x1E696AD98] numberWithInteger:width];
    v24 = *MEMORY[0x1E69660B8];
    v14 = v24;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:height];
    v25 = *MEMORY[0x1E69660D8];
    v16 = v25;
    v17 = MEMORY[0x1E695E0F8];
    v26[2] = v15;
    v26[3] = MEMORY[0x1E695E0F8];
    v9->_sourcePixelBufferAttributes = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v23 count:{4), "copy"}];
    v22[0] = &unk_1F039F9B0;
    v21[0] = v12;
    v21[1] = v13;
    v22[1] = [MEMORY[0x1E696AD98] numberWithInteger:width];
    v21[2] = v14;
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:height];
    v21[3] = v16;
    v22[2] = v18;
    v22[3] = v17;
    v9->_destinationPixelBufferAttributes = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:{4), "copy"}];
  }

  else
  {
    [VTTestProcessorConfiguration initWithFrameWidth:frameHeight:flags:];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTTestProcessorConfiguration;
  [(VTTestProcessorConfiguration *)&v3 dealloc];
}

@end