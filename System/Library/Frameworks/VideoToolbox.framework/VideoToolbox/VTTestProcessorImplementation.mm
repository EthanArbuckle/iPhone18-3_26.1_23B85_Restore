@interface VTTestProcessorImplementation
- (BOOL)processWithParams:(id)a3 error:(id *)a4;
- (BOOL)startSessionWithConfiguration:(id)a3 error:(id *)a4;
- (VTTestProcessorImplementation)init;
- (void)dealloc;
@end

@implementation VTTestProcessorImplementation

- (VTTestProcessorImplementation)init
{
  v3.receiver = self;
  v3.super_class = VTTestProcessorImplementation;
  result = [(VTTestProcessorImplementation *)&v3 init];
  result->_pixelTransferSession = 0;
  return result;
}

- (BOOL)startSessionWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = [a3 flags];
  self->_flags = v6;
  if ((v6 & 1) == 0)
  {
    return VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &self->_pixelTransferSession) == 0;
  }

  if ((v6 & 4) != 0)
  {
    v8 = @"com.apple.testProcessor";
    v9 = -1;
  }

  else
  {
    v8 = @"VTFrameProcessorErrorDomain";
    v9 = -19735;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:v8 code:v9 userInfo:0];
  result = 0;
  *a4 = v10;
  return result;
}

- (BOOL)processWithParams:(id)a3 error:(id *)a4
{
  flags = self->_flags;
  if ((flags & 2) != 0)
  {
    if ((flags & 4) != 0)
    {
      v10 = @"com.apple.testProcessor";
      v11 = -2;
    }

    else
    {
      v10 = @"VTFrameProcessorErrorDomain";
      v11 = -19735;
    }

    v12 = 0;
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:v10 code:v11 userInfo:0];
  }

  else
  {
    v7 = [objc_msgSend(a3 "sourceFrame")];
    if (v7)
    {
      v8 = CFRetain(v7);
    }

    else
    {
      v8 = 0;
    }

    v13 = [objc_msgSend(a3 "destinationFrame")];
    if (v13)
    {
      v14 = CFRetain(v13);
      v15 = v14;
      if (v8 && v14)
      {
        v12 = VTPixelTransferSessionTransferImage(self->_pixelTransferSession, v8, v14) == 0;
        CFRelease(v8);
LABEL_13:
        CFRelease(v15);
        return v12;
      }

      if (v8)
      {
        CFRelease(v8);
      }

      v12 = 0;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v8)
      {
        CFRelease(v8);
      }

      return 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VTTestProcessorImplementation;
  [(VTTestProcessorImplementation *)&v2 dealloc];
}

@end