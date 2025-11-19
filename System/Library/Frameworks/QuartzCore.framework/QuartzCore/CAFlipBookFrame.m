@interface CAFlipBookFrame
- (CGRect)rawSurfaceFrame;
- (id)_initWithPresentationTime:(unint64_t)a3 frameId:(unint64_t)a4 generation:(unsigned int)a5 apl:(float)a6 aplDimming:(float)a7 memoryUsage:(unint64_t)a8 inverted:(BOOL)a9 userInfo:(id)a10;
- (void)dealloc;
- (void)setRawSurface:(__IOSurface *)a3;
- (void)setSurface:(__IOSurface *)a3;
@end

@implementation CAFlipBookFrame

- (void)setSurface:(__IOSurface *)a3
{
  surface = self->_surface;
  if (surface != a3)
  {
    if (surface)
    {
      CFRelease(surface);
    }

    self->_surface = 0;
    if (a3)
    {
      self->_surface = CFRetain(a3);
    }
  }
}

- (CGRect)rawSurfaceFrame
{
  x = self->_rawSurfaceFrame.origin.x;
  y = self->_rawSurfaceFrame.origin.y;
  width = self->_rawSurfaceFrame.size.width;
  height = self->_rawSurfaceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setRawSurface:(__IOSurface *)a3
{
  rawSurface = self->_rawSurface;
  if (rawSurface != a3)
  {
    if (rawSurface)
    {
      CFRelease(rawSurface);
    }

    self->_rawSurface = 0;
    if (a3)
    {
      self->_rawSurface = CFRetain(a3);
    }
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  rawSurface = self->_rawSurface;
  if (rawSurface)
  {
    CFRelease(rawSurface);
    self->_rawSurface = 0;
  }

  surface = self->_surface;
  if (surface)
  {
    CFRelease(surface);
    self->_surface = 0;
  }

  self->_userInfo = 0;
  v5.receiver = self;
  v5.super_class = CAFlipBookFrame;
  [(CAFlipBookFrame *)&v5 dealloc];
}

- (id)_initWithPresentationTime:(unint64_t)a3 frameId:(unint64_t)a4 generation:(unsigned int)a5 apl:(float)a6 aplDimming:(float)a7 memoryUsage:(unint64_t)a8 inverted:(BOOL)a9 userInfo:(id)a10
{
  v23 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CAFlipBookFrame;
  v18 = [(CAFlipBookFrame *)&v22 init];
  v19 = v18;
  if (v18)
  {
    *(v18 + 1) = a3;
    *(v18 + 2) = a4;
    *(v18 + 6) = a5;
    *(v18 + 7) = a6;
    *(v18 + 8) = a7;
    *(v18 + 5) = a8;
    *(v18 + 6) = 0;
    v20 = *(MEMORY[0x1E695F050] + 16);
    *(v18 + 56) = *MEMORY[0x1E695F050];
    *(v18 + 72) = v20;
    *(v18 + 11) = 0;
    v18[104] = a9;
    *(v18 + 12) = a10;
  }

  return v19;
}

@end