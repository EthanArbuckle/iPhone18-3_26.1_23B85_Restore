@interface SCMADVideoSessionTTRFrame
- (SCMADVideoSessionTTRFrame)initWithPixelBuffer:(__CVBuffer *)a3 timestamp:(id *)a4 orientation:(unsigned int)a5;
@end

@implementation SCMADVideoSessionTTRFrame

- (SCMADVideoSessionTTRFrame)initWithPixelBuffer:(__CVBuffer *)a3 timestamp:(id *)a4 orientation:(unsigned int)a5
{
  v5 = *&a5;
  v16.receiver = self;
  v16.super_class = SCMADVideoSessionTTRFrame;
  v8 = [(SCMADVideoSessionTTRFrame *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc(getMADVideoSessionTTRFrameClass());
    v14 = *&a4->var0;
    var3 = a4->var3;
    v10 = [v9 initWithPixelBuffer:a3 timestamp:&v14 orientation:v5];
    v11 = *(v8 + 2);
    *(v8 + 2) = v10;

    *(v8 + 1) = a3;
    v12 = *&a4->var0;
    *(v8 + 5) = a4->var3;
    *(v8 + 24) = v12;
  }

  return v8;
}

@end