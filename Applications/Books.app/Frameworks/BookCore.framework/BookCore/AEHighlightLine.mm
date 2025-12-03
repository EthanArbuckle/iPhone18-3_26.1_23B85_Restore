@interface AEHighlightLine
- (CGRect)currentLineRect;
- (CGRect)fullLineRect;
- (void)dealloc;
- (void)setMultiplyImage:(CGImage *)image;
@end

@implementation AEHighlightLine

- (void)dealloc
{
  [(AEHighlightLine *)self setMultiplyImage:0];
  v3.receiver = self;
  v3.super_class = AEHighlightLine;
  [(AEHighlightLine *)&v3 dealloc];
}

- (void)setMultiplyImage:(CGImage *)image
{
  mMultiplyImage = self->mMultiplyImage;
  if (mMultiplyImage != image)
  {
    if (mMultiplyImage)
    {
      CFRelease(mMultiplyImage);
    }

    self->mMultiplyImage = 0;
    if (image)
    {
      self->mMultiplyImage = CFRetain(image);
    }
  }
}

- (CGRect)fullLineRect
{
  x = self->mFullLineRect.origin.x;
  y = self->mFullLineRect.origin.y;
  width = self->mFullLineRect.size.width;
  height = self->mFullLineRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)currentLineRect
{
  x = self->mCurrentLineRect.origin.x;
  y = self->mCurrentLineRect.origin.y;
  width = self->mCurrentLineRect.size.width;
  height = self->mCurrentLineRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end