@interface ABPKCropParams
- (ABPKCropParams)initWithAspectRatio:(float)a3 andInputResolution:(CGSize)a4;
- (ABPKCropParams)initWithInputResolution:(CGSize)a3 andOutputResolution:(CGSize)a4;
@end

@implementation ABPKCropParams

- (ABPKCropParams)initWithInputResolution:(CGSize)a3 andOutputResolution:(CGSize)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a3.width / height;
  *&v6 = v6;
  return [(ABPKCropParams *)self initWithAspectRatio:v6 andInputResolution:width];
}

- (ABPKCropParams)initWithAspectRatio:(float)a3 andInputResolution:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v15.receiver = self;
  v15.super_class = ABPKCropParams;
  v7 = [(ABPKCropParams *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v9 = width / height;
    if (v9 == a3)
    {
      *&v7->_offsetHeight = 0;
      v7->_height = height;
      v10 = 20;
    }

    else if (v9 <= a3)
    {
      v12 = (width / a3);
      v7->_height = v12;
      v7->_width = width;
      v7->_offsetWidth = 0;
      if (v12)
      {
        v7->_height = --v12;
      }

      width = (height - v12) * 0.5;
      v10 = 8;
    }

    else
    {
      v11 = (height * a3);
      v7->_height = height;
      v7->_width = v11;
      v7->_offsetHeight = 0;
      if (v11)
      {
        v7->_width = --v11;
      }

      width = (width - v11) * 0.5;
      v10 = 12;
    }

    *(&v7->super.isa + v10) = width;
    v13 = v7;
  }

  return v8;
}

@end