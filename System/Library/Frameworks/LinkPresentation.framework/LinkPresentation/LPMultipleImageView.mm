@interface LPMultipleImageView
- (CGRect)_computeRectForImageAtIndex:(unint64_t)index fittingSize:(CGSize *)size width:(double *)width height:(double *)height size:(CGSize)a7 multipleImageLayout:(unint64_t)layout;
- (CGSize)_availableSizeForImageNumber:(unint64_t)number withLayout:(unint64_t)layout withinSize:(CGSize)result applyingLayout:(BOOL)applyingLayout;
- (CGSize)layoutImagesForSize:(CGSize)size applyingLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LPMultipleImageView)initWithHost:(id)host images:(id)images style:(id)style;
- (void)ensureImageViews;
- (void)layoutComponentView;
@end

@implementation LPMultipleImageView

- (LPMultipleImageView)initWithHost:(id)host images:(id)images style:(id)style
{
  hostCopy = host;
  imagesCopy = images;
  styleCopy = style;
  v17.receiver = self;
  v17.super_class = LPMultipleImageView;
  v11 = [(LPComponentView *)&v17 initWithHost:hostCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_images, images);
    objc_storeStrong(&v12->_style, style);
    if ([(NSArray *)v12->_images count]>= 5)
    {
      v13 = [(NSArray *)v12->_images subarrayWithRange:0, 4];
      images = v12->_images;
      v12->_images = v13;
    }

    v15 = v12;
  }

  return v12;
}

- (void)ensureImageViews
{
  if (self->_imageViews)
  {
    return;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  imageViews = self->_imageViews;
  self->_imageViews = v3;

  v5 = computeMultipleImageLayoutForImages(self->_images);
  v25 = [[LPPointUnit alloc] initWithValue:1.0];
  for (i = 0; i < [(NSArray *)self->_images count]; ++i)
  {
    v7 = [(NSArray *)self->_images objectAtIndexedSubscript:i];
    v8 = [(LPImageViewStyle *)self->_style copy];
    v9 = +[LPPointUnit zero];
    padding = [v8 padding];
    [padding setBottom:v9];

    v11 = +[LPPointUnit zero];
    padding2 = [v8 padding];
    [padding2 setTop:v11];

    v13 = +[LPPointUnit zero];
    padding3 = [v8 padding];
    [padding3 setTrailing:v13];

    v15 = +[LPPointUnit zero];
    padding4 = [v8 padding];
    [padding4 setLeading:v15];

    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        padding5 = [v8 padding];
        if (i)
        {
          [padding5 setTop:v25];
        }

        else
        {
          [padding5 setBottom:v25];
        }
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_28;
        }

        padding5 = [v8 padding];
        if (i)
        {
          [padding5 setLeading:v25];
        }

        else
        {
          [padding5 setTrailing:v25];
        }
      }

      goto LABEL_27;
    }

    if (v5 == 3)
    {
      if (i == 1)
      {
        goto LABEL_22;
      }

      if (i)
      {
LABEL_26:
        padding6 = [v8 padding];
        [padding6 setLeading:v25];

        padding5 = [v8 padding];
        [padding5 setTop:v25];
        goto LABEL_27;
      }
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_28;
      }

      if (i == 2)
      {
        padding7 = [v8 padding];
        [padding7 setLeading:v25];

        padding8 = [v8 padding];
        [padding8 setTop:v25];

        padding5 = [v8 padding];
        [padding5 setBottom:v25];
        goto LABEL_27;
      }

      if (i == 1)
      {
LABEL_22:
        padding9 = [v8 padding];
        [padding9 setLeading:v25];

        padding5 = [v8 padding];
        [padding5 setBottom:v25];
        goto LABEL_27;
      }

      if (i)
      {
        goto LABEL_26;
      }
    }

    padding5 = [v8 padding];
    [padding5 setTrailing:v25];
LABEL_27:

LABEL_28:
    [v8 setScalingMode:2];
    v22 = [LPImageView alloc];
    host = [(LPComponentView *)self host];
    v24 = [(LPImageView *)v22 initWithHost:host image:v7 properties:0 style:v8];

    [(NSMutableArray *)self->_imageViews addObject:v24];
    [(LPMultipleImageView *)self addSubview:v24];
  }
}

- (CGRect)_computeRectForImageAtIndex:(unint64_t)index fittingSize:(CGSize *)size width:(double *)width height:(double *)height size:(CGSize)a7 multipleImageLayout:(unint64_t)layout
{
  height = a7.height;
  width = a7.width;
  _lp_isLTR = [(UIView *)self _lp_isLTR];
  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  widthCopy = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  if (index <= 1)
  {
    if (index)
    {
      if (index != 1)
      {
        goto LABEL_32;
      }

      if (layout == 1)
      {
        v17 = *height;
        v19 = size->height;
        *height = *height + v19;
        v16 = 0.0;
LABEL_20:
        widthCopy = width;
        goto LABEL_32;
      }

      widthCopy = size->width;
      if (_lp_isLTR)
      {
        v16 = width - widthCopy;
        v19 = size->height;
        *width = widthCopy + *width;
        v17 = 0.0;
        goto LABEL_32;
      }

      v19 = size->height;
      *width = widthCopy + *width;
      v17 = 0.0;
LABEL_29:
      v16 = 0.0;
      goto LABEL_32;
    }

    if (layout == 1)
    {
      v20 = size->width;
      v19 = size->height;
      v17 = 0.0;
    }

    else
    {
      if (!_lp_isLTR)
      {
        v20 = size->width;
        if (layout)
        {
          v16 = width - v20;
          v19 = size->height;
          v17 = 0.0;
          width = size->width;
        }

        else
        {
          width = *(MEMORY[0x1E695F058] + 16);
        }

        goto LABEL_19;
      }

      v20 = size->width;
      v19 = size->height;
      v17 = 0.0;
      width = size->width;
    }

    v16 = 0.0;
LABEL_19:
    *width = v20 + *width;
    *height = size->height + *height;
    goto LABEL_20;
  }

  if (index == 2)
  {
    if (layout != 3 || !_lp_isLTR)
    {
      if (layout != 3)
      {
        if (_lp_isLTR)
        {
          widthCopy = size->width;
          v19 = size->height;
          v16 = width - size->width;
          v17 = height + v19 * -2.0;
          goto LABEL_32;
        }

        widthCopy = size->width;
        v19 = size->height;
        v17 = height + v19 * -2.0;
        goto LABEL_29;
      }

LABEL_22:
      widthCopy = size->width;
      v19 = size->height;
      v17 = height - v19;
      goto LABEL_29;
    }
  }

  else
  {
    if (index != 3)
    {
      goto LABEL_32;
    }

    if (!_lp_isLTR)
    {
      goto LABEL_22;
    }
  }

  widthCopy = size->width;
  v19 = size->height;
  v16 = width - size->width;
  v17 = height - v19;
LABEL_32:
  result.size.height = v19;
  result.size.width = widthCopy;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGSize)_availableSizeForImageNumber:(unint64_t)number withLayout:(unint64_t)layout withinSize:(CGSize)result applyingLayout:(BOOL)applyingLayout
{
  height = result.height;
  width = result.width;
  v8 = fmin(result.width, result.height);
  if (applyingLayout)
  {
    v8 = width;
  }

  else
  {
    result.height = v8;
  }

  if (layout > 2)
  {
    if (layout == 3)
    {
      v8 = width * 0.5;
      if (number)
      {
        result.height = result.height * 0.5;
      }
    }

    else if (layout == 4)
    {
      if (number)
      {
        v8 = width * 0.333333333;
        result.height = result.height * 0.333333333;
      }

      else
      {
        v8 = width * 0.666666667;
      }
    }
  }

  else
  {
    v9 = height * 0.5;
    v10 = width * 0.5;
    if (layout != 2)
    {
      v10 = v8;
    }

    if (layout == 1)
    {
      result.height = v9;
    }

    else
    {
      v8 = v10;
    }
  }

  result.width = v8;
  return result;
}

- (CGSize)layoutImagesForSize:(CGSize)size applyingLayout:(BOOL)layout
{
  layoutCopy = layout;
  height = size.height;
  width = size.width;
  v27 = 0;
  v28 = 0.0;
  v8 = computeMultipleImageLayoutForImages(self->_images);
  if ([(NSArray *)self->_images count])
  {
    v9 = 0;
    do
    {
      v10 = [(NSArray *)self->_images objectAtIndexedSubscript:v9, *&v25, v26];
      v11 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:v9];
      [(LPMultipleImageView *)self _availableSizeForImageNumber:v9 withLayout:v8 withinSize:layoutCopy applyingLayout:width, height];
      v14 = v12;
      v25 = 0.0;
      v26 = 0;
      if (layoutCopy)
      {
        v25 = v12;
        v26 = v13;
      }

      else
      {
        if (v8 == 1)
        {
          platformImage = [v10 platformImage];
          [platformImage _lp_pixelSize];
          sizeFittingInsideSizeMaintainingAspectRatio(v16, v17, width, 1.79769313e308);
        }

        else
        {
          platformImage = [v10 platformImage];
          [platformImage _lp_pixelSize];
          v18 = minimumSizeByComponent(v20, v21, v14);
        }

        v25 = v18;
        v26 = v19;
      }

      [(LPMultipleImageView *)self _computeRectForImageAtIndex:v9 fittingSize:&v25 width:&v28 height:&v27 size:v8 multipleImageLayout:width, height];
      if (layoutCopy)
      {
        [v11 setFrame:?];
      }

      ++v9;
    }

    while (v9 < [(NSArray *)self->_images count]);
    v22 = v28;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = minimumSizeByComponent(width, height, v22);
  result.height = v24;
  result.width = v23;
  return result;
}

- (void)layoutComponentView
{
  [(LPMultipleImageView *)self ensureImageViews];
  [(LPMultipleImageView *)self bounds];

  [(LPMultipleImageView *)self layoutImagesForSize:1 applyingLayout:v3, v4];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  padding = [(LPImageViewStyle *)self->_style padding];
  [padding asInsetsForLTR:{-[UIView _lp_isLTR](self, "_lp_isLTR")}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(LPMultipleImageView *)self layoutImagesForSize:0 applyingLayout:width - (v10 + v14), height - (v8 + v12)];
  v17 = ceil(v15) - (-v14 - v10);
  v18 = ceil(v16) - (-v12 - v8);
  result.height = v18;
  result.width = v17;
  return result;
}

@end