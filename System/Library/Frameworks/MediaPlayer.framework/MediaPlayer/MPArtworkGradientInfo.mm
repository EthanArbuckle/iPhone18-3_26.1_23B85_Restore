@interface MPArtworkGradientInfo
- (MPArtworkGradientInfo)initWithColor:(id)color y1:(double)y1 y2:(double)y2;
@end

@implementation MPArtworkGradientInfo

- (MPArtworkGradientInfo)initWithColor:(id)color y1:(double)y1 y2:(double)y2
{
  colorCopy = color;
  v13.receiver = self;
  v13.super_class = MPArtworkGradientInfo;
  v10 = [(MPArtworkGradientInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_y1 = y1;
    v10->_y2 = y2;
    objc_storeStrong(&v10->_color, color);
  }

  return v11;
}

@end