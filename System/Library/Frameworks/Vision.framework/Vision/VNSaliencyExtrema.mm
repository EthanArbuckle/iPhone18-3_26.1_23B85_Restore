@interface VNSaliencyExtrema
- (CGRect)computeRectFromExtremaUsingThreshold:(float)threshold vImage:(vImage_Buffer *)image;
- (VNSaliencyExtrema)init;
- (void)updateExtrema:(float)extrema x:(int)x y:(int)y;
@end

@implementation VNSaliencyExtrema

- (CGRect)computeRectFromExtremaUsingThreshold:(float)threshold vImage:(vImage_Buffer *)image
{
  x = self->_extrema[0].x;
  v7 = x;
  if (v7 > 0.0 && v7 < 3.4028e38)
  {
    y = self->_extrema[0].y;
    v10 = image->data + image->rowBytes * y;
    v11 = *&v10[4 * (v7 + -1.0)];
    x = x - (1.0 - ((threshold - v11) / (*&v10[4 * v7] - v11)));
    self->_extrema[0].x = x;
  }

  v12 = self->_extrema[1].x;
  v13 = v12;
  if (v13 > -1.0 && v13 < (image->width - 1))
  {
    v15 = self->_extrema[1].y;
    v16 = image->data + image->rowBytes * v15;
    v17 = *&v16[4 * (v13 + 1.0)];
    v12 = v12 + (1.0 - ((threshold - v17) / (*&v16[4 * v13] - v17)));
    self->_extrema[1].x = v12;
  }

  v18 = self->_extrema[2].y;
  v19 = v18;
  if (v19 > 0.0 && v19 < 3.4028e38)
  {
    v21 = self->_extrema[2].x;
    v22 = v21;
    rowBytes = image->rowBytes;
    v24 = *(image->data + 4 * v21 + rowBytes * (v19 + -1.0));
    v18 = v18 - (1.0 - ((threshold - v24) / (*(image->data + 4 * v22 + rowBytes * v19) - v24)));
    self->_extrema[2].y = v18;
  }

  v25 = self->_extrema[3].y;
  v26 = v25;
  if (v26 > -1.0 && v26 < (image->height - 1))
  {
    v28 = self->_extrema[3].x;
    v29 = image->rowBytes;
    v30 = *(image->data + 4 * v28 + v29 * (v26 + 1.0));
    v25 = v25 + (1.0 - ((threshold - v30) / (*(image->data + 4 * v28 + v29 * v26) - v30)));
    self->_extrema[3].y = v25;
  }

  v31 = v12 - x;
  v32 = v25 - v18;
  v51 = CGRectStandardize(*&x);
  v52 = CGRectInset(v51, v51.size.width * -0.05, v51.size.height * -0.05);
  v55.size.width = (image->width - 1);
  v55.size.height = (image->height - 1);
  v33 = 0.0;
  v55.origin.x = 0.0;
  v55.origin.y = 0.0;
  v53 = CGRectIntersection(v52, v55);
  v34 = v53.origin.x;
  width = v53.size.width;
  height = v53.size.height;
  v37 = image->height - (v53.origin.y + v53.size.height);
  v53.origin.y = v37;
  IsNull = CGRectIsNull(v53);
  v39 = 1.0;
  v40 = 0.0;
  v41 = 1.0;
  if (!IsNull)
  {
    v42 = image->height;
    v43 = image->width;
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    if (v43)
    {
      v45 = v34 / v43;
      v46 = width / v43;
    }

    v47 = 0.0;
    if (v42)
    {
      v44 = v37 / v42;
      v47 = height / v42;
    }

    v48 = 0;
    *(&v40 - 1) = CGRectIntersection(*(&v40 - 1), *&v45);
    v33 = v49;
  }

  v50 = v33;
  result.size.height = v41;
  result.size.width = v39;
  result.origin.y = v40;
  result.origin.x = v50;
  return result;
}

- (void)updateExtrema:(float)extrema x:(int)x y:(int)y
{
  xCopy = x;
  x = self->_extrema[0].x;
  if (x > x || x == x && self->_extremeValues[0] < extrema)
  {
    self->_extrema[0].x = xCopy;
    self->_extrema[0].y = y;
    self->_extremeValues[0] = extrema;
  }

  v7 = self->_extrema[1].x;
  if (v7 < xCopy || v7 == xCopy && self->_extremeValues[1] < extrema)
  {
    self->_extrema[1].x = xCopy;
    self->_extrema[1].y = y;
    self->_extremeValues[1] = extrema;
  }

  yCopy = y;
  y = self->_extrema[2].y;
  if (y > y || y == y && self->_extremeValues[2] < extrema)
  {
    self->_extrema[2].x = xCopy;
    self->_extrema[2].y = yCopy;
    self->_extremeValues[2] = extrema;
  }

  v10 = self->_extrema[3].y;
  if (v10 < yCopy || v10 == yCopy && self->_extremeValues[3] < extrema)
  {
    self->_extrema[3].x = xCopy;
    self->_extrema[3].y = yCopy;
    self->_extremeValues[3] = extrema;
  }
}

- (VNSaliencyExtrema)init
{
  v6.receiver = self;
  v6.super_class = VNSaliencyExtrema;
  v2 = [(VNSaliencyExtrema *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = xmmword_1A6038C00;
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
    *(v2 + 3) = 0xBFF0000000000000;
    *(v2 + 3) = xmmword_1A6038C00;
    *(v2 + 8) = 0xBFF0000000000000;
    v4 = v2;
  }

  return v3;
}

@end