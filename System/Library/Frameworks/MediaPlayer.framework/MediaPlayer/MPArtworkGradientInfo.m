@interface MPArtworkGradientInfo
- (MPArtworkGradientInfo)initWithColor:(id)a3 y1:(double)a4 y2:(double)a5;
@end

@implementation MPArtworkGradientInfo

- (MPArtworkGradientInfo)initWithColor:(id)a3 y1:(double)a4 y2:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = MPArtworkGradientInfo;
  v10 = [(MPArtworkGradientInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_y1 = a4;
    v10->_y2 = a5;
    objc_storeStrong(&v10->_color, a3);
  }

  return v11;
}

@end