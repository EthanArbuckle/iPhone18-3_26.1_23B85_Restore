@interface LPImageStackView
+ (void)initialize;
- (CGSize)_layoutImagesForSize:(CGSize)size applyingLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LPImageStackView)initWithHost:(id)host images:(id)images style:(id)style;
- (void)layoutComponentView;
@end

@implementation LPImageStackView

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    stackedImageVerticalOffset = 0xC018000000000000;
  }
}

- (LPImageStackView)initWithHost:(id)host images:(id)images style:(id)style
{
  v52 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  imagesCopy = images;
  styleCopy = style;
  v50.receiver = self;
  v50.super_class = LPImageStackView;
  v39 = hostCopy;
  v9 = [(LPComponentView *)&v50 initWithHost:hostCopy];
  v42 = v9;
  v10 = v9;
  if (v9)
  {
    layer = [(LPImageStackView *)v9 layer];
    [layer setMasksToBounds:0];

    objc_storeStrong(&v42->_images, images);
    objc_storeStrong(&v42->_style, style);
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
    fixedSize = [(LPImageViewStyle *)v42->_style fixedSize];
    width = [fixedSize width];
    [width value];
    v19 = v18;

    cornerRadius = [(LPImageViewStyle *)v42->_style cornerRadius];
    [cornerRadius value];
    v22 = v21;

    v45 = [(LPImageViewStyle *)v42->_style copy];
    [(LPImageViewStyle *)v45 setDarkeningAmount:0.3];
    v23 = [[LPPointUnit alloc] initWithValue:(v19 + -8.0) / v19 * v22];
    [(LPImageViewStyle *)v45 setCornerRadius:v23];

    v24 = [LPPointUnit alloc];
    fixedFallbackImageSize = [(LPImageViewStyle *)v45 fixedFallbackImageSize];
    [fixedFallbackImageSize value];
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
          host = [(LPComponentView *)v10 host];
          style = v45;
          if (v30)
          {
            style = v42->_style;
          }

          v36 = [(LPImageView *)v33 initWithHost:host image:v32 properties:v44 style:style];

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
  lastObject = [(NSMutableArray *)self->_imageViews lastObject];
  [lastObject installDarkeningViewIfNeeded];

  [(LPImageStackView *)self bounds];

  [(LPImageStackView *)self _layoutImagesForSize:1 applyingLayout:v4, v5];
}

- (CGSize)_layoutImagesForSize:(CGSize)size applyingLayout:(BOOL)layout
{
  if (layout)
  {
    [(LPImageStackView *)self bounds:size.width];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    firstObject = [(NSMutableArray *)self->_imageViews firstObject];
    [firstObject setFrame:{v6, v8, v10, v12}];

    v27.origin.x = v6;
    v27.origin.y = v8;
    v27.size.width = v10;
    v27.size.height = v12;
    v28 = CGRectInset(v27, 4.0, 4.0);
    x = v28.origin.x;
    width = v28.size.width;
    height = v28.size.height;
    v17 = *&stackedImageVerticalOffset + v28.origin.y;
    lastObject = [(NSMutableArray *)self->_imageViews lastObject];
    [lastObject setFrame:{x, v17, width, height}];
  }

  v19 = [(LPImageViewStyle *)self->_style fixedSize:size.width];
  [v19 asSize];
  v21 = v20;
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(LPImageStackView *)self _layoutImagesForSize:0 applyingLayout:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end