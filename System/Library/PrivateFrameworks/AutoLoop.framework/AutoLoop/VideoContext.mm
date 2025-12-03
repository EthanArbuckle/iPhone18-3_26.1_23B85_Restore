@interface VideoContext
- (BOOL)pixelBuffer:(__CVBuffer *)buffer conformsToImage:(id)image;
- (VideoContext)initWithWriter:(id)writer pixelFormatFlags:(unsigned int)flags colorManagement:(BOOL)management;
- (__CVBuffer)createPixelBuffer;
- (__CVBuffer)createPixelBuffer:(unint64_t)buffer height:(unint64_t)height;
- (__CVBuffer)pixelBufferFromImage:(id)image withAttachFrom:(__CVBuffer *)from;
- (int)appendFrame:(id)frame frameTime:(id *)time srcPixBuf:(__CVBuffer *)buf;
@end

@implementation VideoContext

- (VideoContext)initWithWriter:(id)writer pixelFormatFlags:(unsigned int)flags colorManagement:(BOOL)management
{
  v20[1] = *MEMORY[0x277D85DE8];
  writerCopy = writer;
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

    if (!management)
    {
      null = [MEMORY[0x277CBEB68] null];
      [v13 setObject:null forKeyedSubscript:*MEMORY[0x277CBF948]];
    }

    v15 = [MEMORY[0x277CBF740] contextWithOptions:v13];
    ciCtx = v10->ciCtx;
    v10->ciCtx = v15;

    objc_storeStrong(&v10->writer, writer);
    v10->pixelFormatFlags = flags;
    v10->_colorManagement = management;
  }

  return v10;
}

- (__CVBuffer)createPixelBuffer:(unint64_t)buffer height:(unint64_t)height
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
    v12 = CVPixelBufferCreate(0, buffer, height, pixelFormat, pixelAttrs, &pixelBufferOut);
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

- (__CVBuffer)pixelBufferFromImage:(id)image withAttachFrom:(__CVBuffer *)from
{
  imageCopy = image;
  [imageCopy extent];
  v9 = [(VideoContext *)self createPixelBuffer:v7 height:v8];
  if (v9)
  {
    if (from)
    {
      CVBufferPropagateAttachments(from, v9);
    }

    [(CIContext *)self->ciCtx render:imageCopy toCVPixelBuffer:v9];
  }

  else
  {
    NSLog(&cfstr_ErrorObtaining_1.isa);
  }

  return v9;
}

- (BOOL)pixelBuffer:(__CVBuffer *)buffer conformsToImage:(id)image
{
  imageCopy = image;
  if (CVPixelBufferIsPlanar(buffer))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidth(buffer);
    HeightOfPlane = CVPixelBufferGetHeight(buffer);
  }

  v8 = HeightOfPlane;
  [imageCopy extent];
  if (v9 == WidthOfPlane)
  {
    [imageCopy extent];
    v11 = v10 == v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int)appendFrame:(id)frame frameTime:(id *)time srcPixBuf:(__CVBuffer *)buf
{
  frameCopy = frame;
  if (self->_colorManagement)
  {
    v9 = [(VideoContext *)self pixelBufferFromImage:frameCopy withAttachFrom:buf];
  }

  else
  {
    v9 = [(VideoContext *)self pixelBufferFromImage:frameCopy];
  }

  v10 = v9;
  if (v9)
  {
    if (buf && !self->_colorManagement)
    {
      CVBufferPropagateAttachments(buf, v9);
    }

    writer = self->writer;
    v16 = *&time->var0;
    var3 = time->var3;
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