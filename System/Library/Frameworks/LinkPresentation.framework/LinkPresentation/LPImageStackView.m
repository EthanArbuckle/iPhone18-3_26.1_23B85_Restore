@interface LPImageStackView
+ (void)initialize;
- (CGSize)_layoutImagesForSize:(CGSize)a3 applyingLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPImageStackView)initWithHost:(id)a3 images:(id)a4 style:(id)a5;
- (void)layoutComponentView;
@end

@implementation LPImageStackView

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    stackedImageVerticalOffset = 0xC018000000000000;
  }
}

- (LPImageStackView)initWithHost:(id)a3 images:(id)a4 style:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v40 = a4;
  v41 = a5;
  v50.receiver = self;
  v50.super_class = LPImageStackView;
  v39 = v8;
  v9 = [(LPComponentView *)&v50 initWithHost:v8];
  v42 = v9;
  v10 = v9;
  if (v9)
  {
    v11 = [(LPImageStackView *)v9 layer];
    [v11 setMasksToBounds:0];

    objc_storeStrong(&v42->_images, a4);
    objc_storeStrong(&v42->_style, a5);
    if ([(NSArray *)v42->_images count]>= 3)
    {
      v12 = [(NSArray *)v42->_images subarrayWithRange:0, 2];
      images = v42->_images;
      v42->_images = v12;
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    imageViews = v10->_imageViews;
    v10->_imageViews = v14;

    v44 = objc_alloc_init(LPImagePresentationProperties);
    [(LPImagePresentationProperties *)v44 setShouldApplyBackground:1];
    [(LPImagePresentationProperties *)v44 setRequireFixedSize:1];
    v16 = [(LPImageViewStyle *)v42->_style fixedSize];
    v17 = [v16 width];
    [v17 value];
    v19 = v18;

    v20 = [(LPImageViewStyle *)v42->_style cornerRadius];
    [v20 value];
    v22 = v21;

    v45 = [(LPImageViewStyle *)v42->_style copy];
    [(LPImageViewStyle *)v45 setDarkeningAmount:0.3];
    v23 = [[LPPointUnit alloc] initWithValue:(v19 + -8.0) / v19 * v22];
    [(LPImageViewStyle *)v45 setCornerRadius:v23];

    v24 = [LPPointUnit alloc];
    v25 = [(LPImageViewStyle *)v45 fixedFallbackImageSize];
    [v25 value];
    v27 = [(LPPointUnit *)v24 initWithValue:v26 + -8.0];
    [(LPImageViewStyle *)v45 setFixedFallbackImageSize:v27];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v42->_images;
    v28 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v28)
    {
      v29 = *v47;
      v30 = 1;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v46 + 1) + 8 * i);
          v33 = [LPImageView alloc];
          v34 = [(LPComponentView *)v10 host];
          style = v45;
          if (v30)
          {
            style = v42->_style;
          }

          v36 = [(LPImageView *)v33 initWithHost:v34 image:v32 properties:v44 style:style];

          [(NSMutableArray *)v10->_imageViews addObject:v36];
          [(UIView *)v10 _lp_insertSubview:v36 belowSubview:0];

          v30 = 0;
        }

        v28 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v51 count:16];
        v30 = 0;
      }

      while (v28);
    }

    v37 = v10;
  }

  return v10;
}

- (void)layoutComponentView
{
  v3 = [(NSMutableArray *)self->_imageViews lastObject];
  [v3 installDarkeningViewIfNeeded];

  [(LPImageStackView *)self bounds];

  [(LPImageStackView *)self _layoutImagesForSize:1 applyingLayout:v4, v5];
}

- (CGSize)_layoutImagesForSize:(CGSize)a3 applyingLayout:(BOOL)a4
{
  if (a4)
  {
    [(LPImageStackView *)self bounds:a3.width];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(NSMutableArray *)self->_imageViews firstObject];
    [v13 setFrame:{v6, v8, v10, v12}];

    v27.origin.x = v6;
    v27.origin.y = v8;
    v27.size.width = v10;
    v27.size.height = v12;
    v28 = CGRectInset(v27, 4.0, 4.0);
    x = v28.origin.x;
    width = v28.size.width;
    height = v28.size.height;
    v17 = *&stackedImageVerticalOffset + v28.origin.y;
    v18 = [(NSMutableArray *)self->_imageViews lastObject];
    [v18 setFrame:{x, v17, width, height}];
  }

  v19 = [(LPImageViewStyle *)self->_style fixedSize:a3.width];
  [v19 asSize];
  v21 = v20;
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(LPImageStackView *)self _layoutImagesForSize:0 applyingLayout:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end