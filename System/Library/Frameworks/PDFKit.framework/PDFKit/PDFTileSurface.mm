@interface PDFTileSurface
- (void)releaseSurface;
@end

@implementation PDFTileSurface

- (void)releaseSurface
{
  type = self->type;
  if ((type - 1) >= 2)
  {
    if (type)
    {
      return;
    }

    p_cgImageRef = &self->cgImageRef;
    CGImageRelease(self->cgImageRef);
  }

  else
  {
    p_cgImageRef = &self->ioSurfaceRef;
    IOSurfaceDecrementUseCount(self->ioSurfaceRef);
    CFRelease(*p_cgImageRef);
  }

  *p_cgImageRef = 0;
}

@end