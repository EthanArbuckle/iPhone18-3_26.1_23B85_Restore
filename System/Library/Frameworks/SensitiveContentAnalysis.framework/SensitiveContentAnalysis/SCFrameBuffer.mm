@interface SCFrameBuffer
- (SCFrameBuffer)initWithInterval:(double)a3 maxFrames:(unint64_t)a4;
- (void)bufferFrame:(__CVBuffer *)a3 timestamp:(id *)a4 orientation:(unsigned int)a5;
- (void)dealloc;
- (void)dumpFramesWithCompletionHandler:(id)a3;
@end

@implementation SCFrameBuffer

- (SCFrameBuffer)initWithInterval:(double)a3 maxFrames:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = SCFrameBuffer;
  v6 = [(SCFrameBuffer *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    frames = v6->_frames;
    v6->_frames = v7;

    v6->_maxFrames = a4;
    v6->_bufferInterval = a3;
    v6->_frameLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)dealloc
{
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CFRelease(pixelBufferPool);
  }

  transferSession = self->_transferSession;
  if (transferSession)
  {
    CFRelease(transferSession);
  }

  v5.receiver = self;
  v5.super_class = SCFrameBuffer;
  [(SCFrameBuffer *)&v5 dealloc];
}

- (void)bufferFrame:(__CVBuffer *)a3 timestamp:(id *)a4 orientation:(unsigned int)a5
{
  v5 = *&a5;
  v27[4] = *MEMORY[0x1E69E9840];
  p_pixelBufferPool = &self->_pixelBufferPool;
  if (!self->_pixelBufferPool)
  {
    v26[0] = *MEMORY[0x1E6966130];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(a3)];
    v27[0] = v10;
    v26[1] = *MEMORY[0x1E6966208];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetWidth(a3)];
    v27[1] = v11;
    v26[2] = *MEMORY[0x1E69660B8];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetHeight(a3)];
    v26[3] = *MEMORY[0x1E69660D8];
    v27[2] = v12;
    v27[3] = MEMORY[0x1E695E0F8];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

    CVPixelBufferPoolCreate(0, 0, v13, p_pixelBufferPool);
  }

  p_transferSession = &self->_transferSession;
  if (!self->_transferSession)
  {
    VTPixelTransferSessionCreate(0, &self->_transferSession);
  }

  v15 = *p_pixelBufferPool;
  if (*p_pixelBufferPool)
  {
    if (*p_transferSession)
    {
      pixelBufferOut = 0;
      if (!CVPixelBufferPoolCreatePixelBuffer(0, v15, &pixelBufferOut))
      {
        if (!VTPixelTransferSessionTransferImage(*p_transferSession, a3, pixelBufferOut))
        {
          v16 = [SCMADVideoSessionTTRFrame alloc];
          v24 = *a4;
          v17 = [(SCMADVideoSessionTTRFrame *)v16 initWithPixelBuffer:pixelBufferOut timestamp:&v24 orientation:v5];
          os_unfair_lock_lock(&self->_frameLock);
          if ([(NSMutableArray *)self->_frames count]>= self->_maxFrames)
          {
            [(NSMutableArray *)self->_frames removeObjectAtIndex:0];
          }

          v24 = *a4;
          v18 = [(NSMutableArray *)self->_frames firstObject];
          if (v18)
          {
            v19 = v18;
            do
            {
              [v19 timestamp];
              v21 = v24;
              CMTimeSubtract(&time, &v21, &rhs);
              if (CMTimeGetSeconds(&time) <= self->_bufferInterval)
              {
                break;
              }

              [(NSMutableArray *)self->_frames removeObjectAtIndex:0];
              v20 = [(NSMutableArray *)self->_frames firstObject];

              v19 = v20;
            }

            while (v20);
          }

          [(NSMutableArray *)self->_frames addObject:v17];
          os_unfair_lock_unlock(&self->_frameLock);
        }

        CFRelease(pixelBufferOut);
      }
    }
  }
}

- (void)dumpFramesWithCompletionHandler:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_frameLock);
  v4 = self->_frames;
  v5 = objc_opt_new();
  frames = self->_frames;
  self->_frames = v5;

  os_unfair_lock_unlock(&self->_frameLock);
  v7[2](v7, v4);
}

@end