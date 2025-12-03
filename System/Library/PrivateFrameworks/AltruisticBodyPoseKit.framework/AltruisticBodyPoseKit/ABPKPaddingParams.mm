@interface ABPKPaddingParams
- (ABPKPaddingParams)initWithInputResolution:(CGSize)resolution andOutputResolution:(CGSize)outputResolution;
@end

@implementation ABPKPaddingParams

- (ABPKPaddingParams)initWithInputResolution:(CGSize)resolution andOutputResolution:(CGSize)outputResolution
{
  height = outputResolution.height;
  width = outputResolution.width;
  v6 = resolution.height;
  v7 = resolution.width;
  v23.receiver = self;
  v23.super_class = ABPKPaddingParams;
  v8 = [(ABPKPaddingParams *)&v23 init];
  v9 = v8;
  if (v8)
  {
    v10 = v6;
    v11 = v7 / v10;
    v12 = height;
    v13 = v12;
    v14 = width / v13;
    if (v11 == v14)
    {
      *&v8->_offsetHeight = 0;
      v8->_height = height;
      v8->_width = width;
      v15 = v13 / v6;
      v8->_scale = v15;
    }

    else if (v11 <= v14)
    {
      v19 = v13 / v6;
      v8->_scale = v19;
      v20 = (v7 * v19) & 0xFFFFFFFE;
      v8->_height = height;
      v8->_width = v20;
      v8->_offsetHeight = 0;
      v8->_offsetWidth = ((width - v20) * 0.5);
    }

    else
    {
      v16 = width;
      v17 = v16 / v7;
      v8->_scale = v17;
      v18 = (v6 * v17) & 0xFFFFFFFE;
      v8->_height = v18;
      v8->_width = width;
      *&v8->_offsetHeight = ((height - v18) * 0.5);
    }

    v21 = v8;
  }

  return v9;
}

@end