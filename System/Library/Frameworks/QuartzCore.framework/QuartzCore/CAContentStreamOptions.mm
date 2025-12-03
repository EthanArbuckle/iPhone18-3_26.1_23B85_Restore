@interface CAContentStreamOptions
- (CGRect)destinationRect;
- (CGRect)sourceRect;
- (CGSize)frameSize;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDestinationRect:(CGRect)rect;
- (void)setFrameSize:(CGSize)size;
- (void)setSourceRect:(CGRect)rect;
@end

@implementation CAContentStreamOptions

- (void)setDestinationRect:(CGRect)rect
{
  v4 = *MEMORY[0x1E69E9840];
  src = rect;
  objc_copyStruct(&self->_destinationRect, &src, 32, 1, 0);
}

- (CGRect)destinationRect
{
  dest[4] = *MEMORY[0x1E69E9840];
  objc_copyStruct(dest, &self->_destinationRect, 32, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  v4 = *&dest[2];
  v5 = *&dest[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setSourceRect:(CGRect)rect
{
  v4 = *MEMORY[0x1E69E9840];
  src = rect;
  objc_copyStruct(&self->_sourceRect, &src, 32, 1, 0);
}

- (CGRect)sourceRect
{
  dest[4] = *MEMORY[0x1E69E9840];
  objc_copyStruct(dest, &self->_sourceRect, 32, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  v4 = *&dest[2];
  v5 = *&dest[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrameSize:(CGSize)size
{
  v4 = *MEMORY[0x1E69E9840];
  src = size;
  objc_copyStruct(&self->_frameSize, &src, 16, 1, 0);
}

- (CGSize)frameSize
{
  dest[2] = *MEMORY[0x1E69E9840];
  objc_copyStruct(dest, &self->_frameSize, 16, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    [v4 setTargetDisplayId:{-[CAContentStreamOptions targetDisplayId](self, "targetDisplayId")}];
    [v4 setPixelFormat:-[CAContentStreamOptions pixelFormat](self, "pixelFormat")];
    [(CAContentStreamOptions *)self frameSize];
    [v4 setFrameSize:?];
    [v4 setQueueDepth:{-[CAContentStreamOptions queueDepth](self, "queueDepth")}];
    [(CAContentStreamOptions *)self minimumFrameTime];
    [v4 setMinimumFrameTime:?];
    [v4 setAlwaysScaleToFit:{-[CAContentStreamOptions alwaysScaleToFit](self, "alwaysScaleToFit")}];
    [(CAContentStreamOptions *)self sourceRect];
    [v4 setSourceRect:?];
    [(CAContentStreamOptions *)self destinationRect];
    [v4 setDestinationRect:?];
    [v4 setPreserveAspectRatioKey:{-[CAContentStreamOptions preserveAspectRatioKey](self, "preserveAspectRatioKey")}];
    [v4 setColorSpaceKey:{-[CAContentStreamOptions colorSpaceKey](self, "colorSpaceKey")}];
    [v4 setBackgroundColorKey:{-[CAContentStreamOptions backgroundColorKey](self, "backgroundColorKey")}];
    [v4 setShowCursorKey:{-[CAContentStreamOptions showCursorKey](self, "showCursorKey")}];
    [v4 setYCbCrMatrix:{-[CAContentStreamOptions YCbCrMatrix](self, "YCbCrMatrix")}];
    [v4 setChromaLocation:{-[CAContentStreamOptions ChromaLocation](self, "ChromaLocation")}];
  }

  return v4;
}

@end