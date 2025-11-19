@interface LPMultipleImageView
- (CGRect)_computeRectForImageAtIndex:(unint64_t)a3 fittingSize:(CGSize *)a4 width:(double *)a5 height:(double *)a6 size:(CGSize)a7 multipleImageLayout:(unint64_t)a8;
- (CGSize)_availableSizeForImageNumber:(unint64_t)a3 withLayout:(unint64_t)a4 withinSize:(CGSize)result applyingLayout:(BOOL)a6;
- (CGSize)layoutImagesForSize:(CGSize)a3 applyingLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPMultipleImageView)initWithHost:(id)a3 images:(id)a4 style:(id)a5;
- (void)ensureImageViews;
- (void)layoutComponentView;
@end

@implementation LPMultipleImageView

- (LPMultipleImageView)initWithHost:(id)a3 images:(id)a4 style:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = LPMultipleImageView;
  v11 = [(LPComponentView *)&v17 initWithHost:v8];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_images, a4);
    objc_storeStrong(&v12->_style, a5);
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
    v10 = [v8 padding];
    [v10 setBottom:v9];

    v11 = +[LPPointUnit zero];
    v12 = [v8 padding];
    [v12 setTop:v11];

    v13 = +[LPPointUnit zero];
    v14 = [v8 padding];
    [v14 setTrailing:v13];

    v15 = +[LPPointUnit zero];
    v16 = [v8 padding];
    [v16 setLeading:v15];

    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v17 = [v8 padding];
        if (i)
        {
          [v17 setTop:v25];
        }

        else
        {
          [v17 setBottom:v25];
        }
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_28;
        }

        v17 = [v8 padding];
        if (i)
        {
          [v17 setLeading:v25];
        }

        else
        {
          [v17 setTrailing:v25];
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
        v21 = [v8 padding];
        [v21 setLeading:v25];

        v17 = [v8 padding];
        [v17 setTop:v25];
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
        v19 = [v8 padding];
        [v19 setLeading:v25];

        v20 = [v8 padding];
        [v20 setTop:v25];

        v17 = [v8 padding];
        [v17 setBottom:v25];
        goto LABEL_27;
      }

      if (i == 1)
      {
LABEL_22:
        v18 = [v8 padding];
        [v18 setLeading:v25];

        v17 = [v8 padding];
        [v17 setBottom:v25];
        goto LABEL_27;
      }

      if (i)
      {
        goto LABEL_26;
      }
    }

    v17 = [v8 padding];
    [v17 setTrailing:v25];
LABEL_27:

LABEL_28:
    [v8 setScalingMode:2];
    v22 = [LPImageView alloc];
    v23 = [(LPComponentView *)self host];
    v24 = [(LPImageView *)v22 initWithHost:v23 image:v7 properties:0 style:v8];

    [(NSMutableArray *)self->_imageViews addObject:v24];
    [(LPMultipleImageView *)self addSubview:v24];
  }
}

- (CGRect)_computeRectForImageAtIndex:(unint64_t)a3 fittingSize:(CGSize *)a4 width:(double *)a5 height:(double *)a6 size:(CGSize)a7 multipleImageLayout:(unint64_t)a8
{
  height = a7.height;
  width = a7.width;
  v15 = [(UIView *)self _lp_isLTR];
  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  v18 = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_32;
      }

      if (a8 == 1)
      {
        v17 = *a6;
        v19 = a4->height;
        *a6 = *a6 + v19;
        v16 = 0.0;
LABEL_20:
        v18 = width;
        goto LABEL_32;
      }

      v18 = a4->width;
      if (v15)
      {
        v16 = width - v18;
        v19 = a4->height;
        *a5 = v18 + *a5;
        v17 = 0.0;
        goto LABEL_32;
      }

      v19 = a4->height;
      *a5 = v18 + *a5;
      v17 = 0.0;
LABEL_29:
      v16 = 0.0;
      goto LABEL_32;
    }

    if (a8 == 1)
    {
      v20 = a4->width;
      v19 = a4->height;
      v17 = 0.0;
    }

    else
    {
      if (!v15)
      {
        v20 = a4->width;
        if (a8)
        {
          v16 = width - v20;
          v19 = a4->height;
          v17 = 0.0;
          width = a4->width;
        }

        else
        {
          width = *(MEMORY[0x1E695F058] + 16);
        }

        goto LABEL_19;
      }

      v20 = a4->width;
      v19 = a4->height;
      v17 = 0.0;
      width = a4->width;
    }

    v16 = 0.0;
LABEL_19:
    *a5 = v20 + *a5;
    *a6 = a4->height + *a6;
    goto LABEL_20;
  }

  if (a3 == 2)
  {
    if (a8 != 3 || !v15)
    {
      if (a8 != 3)
      {
        if (v15)
        {
          v18 = a4->width;
          v19 = a4->height;
          v16 = width - a4->width;
          v17 = height + v19 * -2.0;
          goto LABEL_32;
        }

        v18 = a4->width;
        v19 = a4->height;
        v17 = height + v19 * -2.0;
        goto LABEL_29;
      }

LABEL_22:
      v18 = a4->width;
      v19 = a4->height;
      v17 = height - v19;
      goto LABEL_29;
    }
  }

  else
  {
    if (a3 != 3)
    {
      goto LABEL_32;
    }

    if (!v15)
    {
      goto LABEL_22;
    }
  }

  v18 = a4->width;
  v19 = a4->height;
  v16 = width - a4->width;
  v17 = height - v19;
LABEL_32:
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGSize)_availableSizeForImageNumber:(unint64_t)a3 withLayout:(unint64_t)a4 withinSize:(CGSize)result applyingLayout:(BOOL)a6
{
  height = result.height;
  width = result.width;
  v8 = fmin(result.width, result.height);
  if (a6)
  {
    v8 = width;
  }

  else
  {
    result.height = v8;
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v8 = width * 0.5;
      if (a3)
      {
        result.height = result.height * 0.5;
      }
    }

    else if (a4 == 4)
    {
      if (a3)
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
    if (a4 != 2)
    {
      v10 = v8;
    }

    if (a4 == 1)
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

- (CGSize)layoutImagesForSize:(CGSize)a3 applyingLayout:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
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
      [(LPMultipleImageView *)self _availableSizeForImageNumber:v9 withLayout:v8 withinSize:v4 applyingLayout:width, height];
      v14 = v12;
      v25 = 0.0;
      v26 = 0;
      if (v4)
      {
        v25 = v12;
        v26 = v13;
      }

      else
      {
        if (v8 == 1)
        {
          v15 = [v10 platformImage];
          [v15 _lp_pixelSize];
          sizeFittingInsideSizeMaintainingAspectRatio(v16, v17, width, 1.79769313e308);
        }

        else
        {
          v15 = [v10 platformImage];
          [v15 _lp_pixelSize];
          v18 = minimumSizeByComponent(v20, v21, v14);
        }

        v25 = v18;
        v26 = v19;
      }

      [(LPMultipleImageView *)self _computeRectForImageAtIndex:v9 fittingSize:&v25 width:&v28 height:&v27 size:v8 multipleImageLayout:width, height];
      if (v4)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(LPImageViewStyle *)self->_style padding];
  [v6 asInsetsForLTR:{-[UIView _lp_isLTR](self, "_lp_isLTR")}];
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