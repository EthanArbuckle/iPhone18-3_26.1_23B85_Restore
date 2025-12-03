@interface AXMPixelBufferWrapper
+ (AXMPixelBufferWrapper)wrapperWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation;
- (AXMPixelBufferWrapper)init;
- (CGSize)orientedSize;
- (CGSize)unorientedSize;
- (id)_initWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation;
- (void)dealloc;
@end

@implementation AXMPixelBufferWrapper

+ (AXMPixelBufferWrapper)wrapperWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation
{
  v4 = [[AXMPixelBufferWrapper alloc] _initWithPixelBuffer:buffer orientation:*&orientation];

  return v4;
}

- (AXMPixelBufferWrapper)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"use wrapperWithPixelBuffer:"];

  return 0;
}

- (id)_initWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation
{
  v8.receiver = self;
  v8.super_class = AXMPixelBufferWrapper;
  v6 = [(AXMPixelBufferWrapper *)&v8 init];
  if (v6)
  {
    v6->_pixelBuffer = CVPixelBufferRetain(buffer);
    v6->_orientation = orientation;
  }

  return v6;
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CVPixelBufferRelease(pixelBuffer);
  }

  v4.receiver = self;
  v4.super_class = AXMPixelBufferWrapper;
  [(AXMPixelBufferWrapper *)&v4 dealloc];
}

- (CGSize)unorientedSize
{
  Width = CVPixelBufferGetWidth(self->_pixelBuffer);
  Height = CVPixelBufferGetHeight(self->_pixelBuffer);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (CGSize)orientedSize
{
  v3 = [(AXMPixelBufferWrapper *)self orientation]- 5;
  [(AXMPixelBufferWrapper *)self unorientedSize];
  if (v3 >= 4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v3 < 4)
  {
    v4 = v5;
  }

  v7 = v6;
  result.height = v7;
  result.width = v4;
  return result;
}

@end