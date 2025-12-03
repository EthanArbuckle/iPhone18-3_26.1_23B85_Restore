@interface SCMADVideoSessionTTRFrame
- (SCMADVideoSessionTTRFrame)initWithPixelBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp orientation:(unsigned int)orientation;
@end

@implementation SCMADVideoSessionTTRFrame

- (SCMADVideoSessionTTRFrame)initWithPixelBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp orientation:(unsigned int)orientation
{
  v5 = *&orientation;
  v16.receiver = self;
  v16.super_class = SCMADVideoSessionTTRFrame;
  v8 = [(SCMADVideoSessionTTRFrame *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc(getMADVideoSessionTTRFrameClass());
    v14 = *&timestamp->var0;
    var3 = timestamp->var3;
    v10 = [v9 initWithPixelBuffer:buffer timestamp:&v14 orientation:v5];
    v11 = *(v8 + 2);
    *(v8 + 2) = v10;

    *(v8 + 1) = buffer;
    v12 = *&timestamp->var0;
    *(v8 + 5) = timestamp->var3;
    *(v8 + 24) = v12;
  }

  return v8;
}

@end