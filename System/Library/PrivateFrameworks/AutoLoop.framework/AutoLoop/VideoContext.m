@interface VideoContext
- (BOOL)pixelBuffer:(__CVBuffer *)a3 conformsToImage:(id)a4;
- (VideoContext)initWithWriter:(id)a3 pixelFormatFlags:(unsigned int)a4 colorManagement:(BOOL)a5;
- (__CVBuffer)createPixelBuffer;
- (__CVBuffer)createPixelBuffer:(unint64_t)a3 height:(unint64_t)a4;
- (__CVBuffer)pixelBufferFromImage:(id)a3 withAttachFrom:(__CVBuffer *)a4;
- (int)appendFrame:(id)a3 frameTime:(id *)a4 srcPixBuf:(__CVBuffer *)a5;
@end

@implementation VideoContext

- (VideoContext)initWithWriter:(id)a3 pixelFormatFlags:(unsigned int)a4 colorManagement:(BOOL)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v18.receiver = self;
  v18.super_class = VideoContext;
  v10 = [(VideoContext *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CBEB38]);
    v19 = *MEMORY[0x277CBF910];
    v20[0] = MEMORY[0x277CBEC28];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v13 = [v11 initWithDictionary:v12];

    if (!a5)
    {
      v14 = [MEMORY[0x277CBEB68] null];
      [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277CBF948]];
    }

    v15 = [MEMORY[0x277CBF740] contextWithOptions:v13];
    ciCtx = v10->ciCtx;
    v10->ciCtx = v15;

    objc_storeStrong(&v10->writer, a3);
    v10->pixelFormatFlags = a4;
    v10->_colorManagement = a5;
  }

  return v10;
}

- (__CVBuffer)createPixelBuffer:(unint64_t)a3 height:(unint64_t)a4
{
  writer = self->writer;
  if (!writer)
  {
    pixelAttrs = self->pixelAttrs;
    if (pixelAttrs)
    {
      pixelFormat = self->pixelFormat;
    }

    else
    {
      v10 = sub_241903CF4(self->pixelFormatFlags, 0);
      v11 = self->pixelAttrs;
      self->pixelAttrs = v10;

      if (!self->pixelAttrs)
      {
        NSLog(&cfstr_Createpixelbuf.isa);
        return 0;
      }

      pixelFormat = sub_241904B20(self->pixelFormatFlags);
      self->pixelFormat = pixelFormat;
      pixelAttrs = self->pixelAttrs;
    }

    pixelBufferOut = 0;
    v12 = CVPixelBufferCreate(0, a3, a4, pixelFormat, pixelAttrs, &pixelBufferOut);
    if (!v12)
    {
      return pixelBufferOut;
    }

    NSLog(&cfstr_Cvpixelbufferc.isa, v12);
    return 0;
  }

  return MEMORY[0x2821F9670](writer, sel_createPixelBuffer);
}

- (__CVBuffer)createPixelBuffer
{
  writer = self->writer;
  if (writer)
  {

    return MEMORY[0x2821F9670](writer, sel_createPixelBuffer);
  }

  else
  {
    NSLog(&cfstr_VideocontextEr.isa, a2);
    return 0;
  }
}

- (__CVBuffer)pixelBufferFromImage:(id)a3 withAttachFrom:(__CVBuffer *)a4
{
  v6 = a3;
  [v6 extent];
  v9 = [(VideoContext *)self createPixelBuffer:v7 height:v8];
  if (v9)
  {
    if (a4)
    {
      CVBufferPropagateAttachments(a4, v9);
    }

    [(CIContext *)self->ciCtx render:v6 toCVPixelBuffer:v9];
  }

  else
  {
    NSLog(&cfstr_ErrorObtaining_1.isa);
  }

  return v9;
}

- (BOOL)pixelBuffer:(__CVBuffer *)a3 conformsToImage:(id)a4
{
  v5 = a4;
  if (CVPixelBufferIsPlanar(a3))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidth(a3);
    HeightOfPlane = CVPixelBufferGetHeight(a3);
  }

  v8 = HeightOfPlane;
  [v5 extent];
  if (v9 == WidthOfPlane)
  {
    [v5 extent];
    v11 = v10 == v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int)appendFrame:(id)a3 frameTime:(id *)a4 srcPixBuf:(__CVBuffer *)a5
{
  v8 = a3;
  if (self->_colorManagement)
  {
    v9 = [(VideoContext *)self pixelBufferFromImage:v8 withAttachFrom:a5];
  }

  else
  {
    v9 = [(VideoContext *)self pixelBufferFromImage:v8];
  }

  v10 = v9;
  if (v9)
  {
    if (a5 && !self->_colorManagement)
    {
      CVBufferPropagateAttachments(a5, v9);
    }

    writer = self->writer;
    v16 = *&a4->var0;
    var3 = a4->var3;
    v12 = [(VideoWriter *)writer addFrameAsPixelBuf:v10 atFrameTime:&v16];
    v13 = v12;
    if (v12)
    {
      NSLog(&cfstr_VideocontextAp_0.isa, v12);
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    CFRelease(v10);
  }

  else
  {
    NSLog(&cfstr_VideocontextAp.isa);
    v14 = -1;
  }

  return v14;
}

@end