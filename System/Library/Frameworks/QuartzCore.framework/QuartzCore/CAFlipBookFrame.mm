@interface CAFlipBookFrame
- (CGRect)rawSurfaceFrame;
- (id)_initWithPresentationTime:(unint64_t)time frameId:(unint64_t)id generation:(unsigned int)generation apl:(float)apl aplDimming:(float)dimming memoryUsage:(unint64_t)usage inverted:(BOOL)inverted userInfo:(id)self0;
- (void)dealloc;
- (void)setRawSurface:(__IOSurface *)surface;
- (void)setSurface:(__IOSurface *)surface;
@end

@implementation CAFlipBookFrame

- (void)setSurface:(__IOSurface *)surface
{
  surface = self->_surface;
  if (surface != surface)
  {
    if (surface)
    {
      CFRelease(surface);
    }

    self->_surface = 0;
    if (surface)
    {
      self->_surface = CFRetain(surface);
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

- (void)setRawSurface:(__IOSurface *)surface
{
  rawSurface = self->_rawSurface;
  if (rawSurface != surface)
  {
    if (rawSurface)
    {
      CFRelease(rawSurface);
    }

    self->_rawSurface = 0;
    if (surface)
    {
      self->_rawSurface = CFRetain(surface);
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

- (id)_initWithPresentationTime:(unint64_t)time frameId:(unint64_t)id generation:(unsigned int)generation apl:(float)apl aplDimming:(float)dimming memoryUsage:(unint64_t)usage inverted:(BOOL)inverted userInfo:(id)self0
{
  v23 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CAFlipBookFrame;
  v18 = [(CAFlipBookFrame *)&v22 init];
  v19 = v18;
  if (v18)
  {
    *(v18 + 1) = time;
    *(v18 + 2) = id;
    *(v18 + 6) = generation;
    *(v18 + 7) = apl;
    *(v18 + 8) = dimming;
    *(v18 + 5) = usage;
    *(v18 + 6) = 0;
    v20 = *(MEMORY[0x1E695F050] + 16);
    *(v18 + 56) = *MEMORY[0x1E695F050];
    *(v18 + 72) = v20;
    *(v18 + 11) = 0;
    v18[104] = inverted;
    *(v18 + 12) = info;
  }

  return v19;
}

@end