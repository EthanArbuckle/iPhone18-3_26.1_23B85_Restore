@interface PKStrokeSelectionImageConfig
- (BOOL)isEqual:(id)equal;
- (CGRect)imageViewBounds;
- (CGRect)strokeBounds;
- (CGSize)imageSize;
- (PKStrokeSelectionImageConfig)initWithStrokeBounds:(CGRect)bounds imageViewBounds:(CGRect)viewBounds scale:(double)scale imageSize:(CGSize)size invertedColors:(BOOL)colors rotated:(BOOL)rotated sixChannel:(BOOL)channel transparentBlending:(BOOL)self0 highlighted:(BOOL)self1 extendedDynamicRange:(BOOL)self2;
- (unint64_t)hash;
@end

@implementation PKStrokeSelectionImageConfig

- (PKStrokeSelectionImageConfig)initWithStrokeBounds:(CGRect)bounds imageViewBounds:(CGRect)viewBounds scale:(double)scale imageSize:(CGSize)size invertedColors:(BOOL)colors rotated:(BOOL)rotated sixChannel:(BOOL)channel transparentBlending:(BOOL)self0 highlighted:(BOOL)self1 extendedDynamicRange:(BOOL)self2
{
  height_low = LOBYTE(size.height);
  width_low = LOBYTE(size.width);
  height = viewBounds.size.height;
  width = viewBounds.size.width;
  y = viewBounds.origin.y;
  x = viewBounds.origin.x;
  v22 = bounds.size.height;
  v23 = bounds.size.width;
  v24 = bounds.origin.y;
  v25 = bounds.origin.x;
  result = [(PKStrokeSelectionImageConfig *)self init];
  if (result)
  {
    result->_strokeBounds.origin.y = v24;
    result->_strokeBounds.size.width = v23;
    result->_strokeBounds.size.height = v22;
    result->_imageViewBounds.origin.x = x;
    result->_imageViewBounds.origin.y = y;
    result->_imageViewBounds.size.width = width;
    result->_imageViewBounds.size.height = height;
    result->_scale = scale;
    *&result->_imageSize.width = highlighted;
    result->_imageSize.height = v27;
    result->_strokeBounds.origin.x = v25;
    result->_invertedColors = width_low;
    result->_rotated = height_low;
    result->_sixChannel = colors;
    result->_transparentBlending = rotated;
    result->_highlighted = channel;
    result->_extendedDynamicRange = blending;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = PKHashBytes(&self->_strokeBounds, 32);
  v4 = PKHashBytes(&self->_imageViewBounds, 32) ^ v3;
  v5 = PKHashBytes(&self->_scale, 8);
  return v4 ^ v5 ^ PKHashBytes(&self->_imageSize, 16) ^ self->_invertedColors ^ (2 * self->_rotated);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [v5 strokeBounds];
    v23.origin.x = v6;
    v23.origin.y = v7;
    v23.size.width = v8;
    v23.size.height = v9;
    if (!CGRectEqualToRect(self->_strokeBounds, v23))
    {
      goto LABEL_11;
    }

    [v5 imageViewBounds];
    v24.origin.x = v10;
    v24.origin.y = v11;
    v24.size.width = v12;
    v24.size.height = v13;
    if (!CGRectEqualToRect(self->_imageViewBounds, v24))
    {
      goto LABEL_11;
    }

    scale = self->_scale;
    [v5 scale];
    if (scale != v15)
    {
      goto LABEL_11;
    }

    [v5 imageSize];
    v17 = 0;
    if (self->_imageSize.width != v18 || self->_imageSize.height != v16)
    {
      goto LABEL_12;
    }

    invertedColors = self->_invertedColors;
    if (invertedColors == [v5 invertedColors] && (rotated = self->_rotated, rotated == objc_msgSend(v5, "rotated")))
    {
      sixChannel = self->_sixChannel;
      v17 = sixChannel == [v5 sixChannel];
    }

    else
    {
LABEL_11:
      v17 = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (CGRect)strokeBounds
{
  x = self->_strokeBounds.origin.x;
  y = self->_strokeBounds.origin.y;
  width = self->_strokeBounds.size.width;
  height = self->_strokeBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)imageViewBounds
{
  x = self->_imageViewBounds.origin.x;
  y = self->_imageViewBounds.origin.y;
  width = self->_imageViewBounds.size.width;
  height = self->_imageViewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end