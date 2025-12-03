@interface AVMutableCaptionRegion
- (AVCaptionLength)height;
- (AVCaptionPoint)origin;
- (AVCaptionPosition)endPosition;
- (AVCaptionPosition)position;
- (AVCaptionRegionDisplayAlignment)displayAlignment;
- (AVCaptionRegionScroll)scroll;
- (AVCaptionRegionWritingMode)writingMode;
- (AVCaptionSize)size;
- (AVMutableCaptionRegion)init;
- (AVMutableCaptionRegion)initWithFigMutableCaptionRegion:(OpaqueFigCaptionRegion *)region;
- (AVMutableCaptionRegion)initWithIdentifier:(NSString *)identifier;
- (void)setOrigin:(AVCaptionPoint *)origin;
- (void)setSize:(AVCaptionSize *)size;
@end

@implementation AVMutableCaptionRegion

- (AVMutableCaptionRegion)initWithFigMutableCaptionRegion:(OpaqueFigCaptionRegion *)region
{
  v4.receiver = self;
  v4.super_class = AVMutableCaptionRegion;
  return [(AVCaptionRegion *)&v4 initWithFigCaptionRegion:region];
}

- (AVMutableCaptionRegion)initWithIdentifier:(NSString *)identifier
{
  v4.receiver = self;
  v4.super_class = AVMutableCaptionRegion;
  return [(AVCaptionRegion *)&v4 initWithIdentifier:identifier];
}

- (AVMutableCaptionRegion)init
{
  v3 = 0;
  if (!FigCaptionRegionCreateMutable())
  {
    return [(AVMutableCaptionRegion *)self initWithFigMutableCaptionRegion:0];
  }

  return v3;
}

- (AVCaptionPosition)position
{
  v3.receiver = self;
  v3.super_class = AVMutableCaptionRegion;
  return [(AVCaptionRegion *)&v3 position];
}

- (AVCaptionPosition)endPosition
{
  v3.receiver = self;
  v3.super_class = AVMutableCaptionRegion;
  return [(AVCaptionRegion *)&v3 endPosition];
}

- (AVCaptionLength)height
{
  v3.receiver = self;
  v3.super_class = AVMutableCaptionRegion;
  return [(AVCaptionRegion *)&v3 height];
}

- (AVCaptionRegionScroll)scroll
{
  v3.receiver = self;
  v3.super_class = AVMutableCaptionRegion;
  return [(AVCaptionRegion *)&v3 scroll];
}

- (AVCaptionRegionDisplayAlignment)displayAlignment
{
  v3.receiver = self;
  v3.super_class = AVMutableCaptionRegion;
  return [(AVCaptionRegion *)&v3 displayAlignment];
}

- (AVCaptionRegionWritingMode)writingMode
{
  v3.receiver = self;
  v3.super_class = AVMutableCaptionRegion;
  return [(AVCaptionRegion *)&v3 writingMode];
}

- (AVCaptionPoint)origin
{
  v4.receiver = self;
  v4.super_class = AVMutableCaptionRegion;
  return [(AVCaptionPoint *)&v4 origin];
}

- (void)setOrigin:(AVCaptionPoint *)origin
{
  y = origin->y;
  v4[0] = origin->x;
  v4[1] = y;
  [(AVCaptionRegion *)self _setOrigin:v4];
}

- (AVCaptionSize)size
{
  v4.receiver = self;
  v4.super_class = AVMutableCaptionRegion;
  return [(AVCaptionSize *)&v4 size];
}

- (void)setSize:(AVCaptionSize *)size
{
  height = size->height;
  v4[0] = size->width;
  v4[1] = height;
  [(AVCaptionRegion *)self _setSize:v4];
}

@end