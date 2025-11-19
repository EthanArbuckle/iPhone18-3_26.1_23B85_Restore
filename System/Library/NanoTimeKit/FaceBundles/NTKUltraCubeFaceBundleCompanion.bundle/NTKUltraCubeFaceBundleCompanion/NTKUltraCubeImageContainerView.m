@interface NTKUltraCubeImageContainerView
- (NSArray)imageFilters;
- (NTKUltraCubeImageContainerView)initWithFrame:(CGRect)a3;
- (void)_generateMaskingLayerForImage:(id)a3;
- (void)_updateTransform;
- (void)applyColorRamp:(id)a3 colorRampAmount:(double)a4 monochromeColorMatrix:(id)a5;
- (void)removeColorRamp;
- (void)setContentAlpha:(double)a3;
- (void)setContentRoll:(double)a3 pitch:(double)a4;
- (void)setContentScale:(double)a3;
- (void)setContentsMultiplyByWhite:(double)a3 alpha:(double)a4;
- (void)setImage:(id)a3;
- (void)setImageBlur:(double)a3;
- (void)setImageFilters:(id)a3;
@end

@implementation NTKUltraCubeImageContainerView

- (NTKUltraCubeImageContainerView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = NTKUltraCubeImageContainerView;
  v3 = [(NTKUltraCubeImageContainerView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    [(NTKUltraCubeImageContainerView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    contentView = v3->_contentView;
    v3->_contentView = v5;

    [(NTKUltraCubeImageContainerView *)v3 addSubview:v3->_contentView];
    v7 = [UIImageView alloc];
    [(NTKUltraCubeImageContainerView *)v3 bounds];
    v8 = [v7 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v8;

    [(UIView *)v3->_contentView addSubview:v3->_imageView];
    v3->_contentAlpha = 1.0;
    v3->_contentScale = 1.0;
    v3->_contentsMultiplyAlpha = 1.0;
    v3->_contentsMultiplyWhite = 1.0;
    v3->_contentRoll = 0.0;
    v3->_contentPitch = 0.0;
    [(NTKUltraCubeImageContainerView *)v3 _updateTransform];
  }

  return v3;
}

- (void)setImage:(id)a3
{
  imageView = self->_imageView;
  v6 = a3;
  v5 = [(UIImageView *)imageView layer];
  [v5 setMask:0];

  [(UIImageView *)self->_imageView setImage:v6];
  [(NTKUltraCubeImageContainerView *)self _generateMaskingLayerForImage:v6];
}

- (void)_generateMaskingLayerForImage:(id)a3
{
  v4 = a3;
  v5 = +[CALayer layer];
  maskingImageLayer = self->_maskingImageLayer;
  self->_maskingImageLayer = v5;

  [(NTKUltraCubeImageContainerView *)self bounds];
  [(CALayer *)self->_maskingImageLayer setFrame:?];
  v7 = [v4 CGImage];

  Copy = CGImageCreateCopy(v7);
  [(CALayer *)self->_maskingImageLayer setContents:Copy];
}

- (NSArray)imageFilters
{
  v2 = [(UIImageView *)self->_imageView layer];
  v3 = [v2 filters];

  return v3;
}

- (void)setImageFilters:(id)a3
{
  imageView = self->_imageView;
  v4 = a3;
  v5 = [(UIImageView *)imageView layer];
  [v5 setFilters:v4];
}

- (void)setContentAlpha:(double)a3
{
  if (self->_contentAlpha != a3)
  {
    self->_contentAlpha = a3;
    [(UIView *)self->_contentView setAlpha:?];
  }
}

- (void)setContentsMultiplyByWhite:(double)a3 alpha:(double)a4
{
  if (self->_contentsMultiplyWhite != a3 || self->_contentsMultiplyAlpha != a4)
  {
    self->_contentsMultiplyWhite = a3;
    self->_contentsMultiplyAlpha = a4;
    v5 = [UIColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
    v6 = [v5 CGColor];

    v7 = [(UIView *)self->_contentView layer];
    [v7 setContentsMultiplyColor:v6];
  }
}

- (void)setContentScale:(double)a3
{
  if (self->_contentScale != a3)
  {
    self->_contentScale = a3;
    [(NTKUltraCubeImageContainerView *)self _updateTransform];
  }
}

- (void)setContentRoll:(double)a3 pitch:(double)a4
{
  if (self->_contentRoll != a3 || self->_contentPitch != a4)
  {
    self->_contentRoll = a3;
    self->_contentPitch = a4;
    [(NTKUltraCubeImageContainerView *)self _updateTransform];
  }
}

- (void)applyColorRamp:(id)a3 colorRampAmount:(double)a4 monochromeColorMatrix:(id)a5
{
  v13 = a3;
  v8 = a5;
  v9 = [(UIImageView *)self->_imageView layer];
  v10 = [v9 mask];

  if (!v10)
  {
    maskingImageLayer = self->_maskingImageLayer;
    v12 = [(UIImageView *)self->_imageView layer];
    [v12 setMask:maskingImageLayer];
  }

  [NTKPhotosColorPalette applyColorRamp:v13 colorRampAmount:v8 monochromeColorMatrix:self->_imageView toView:a4];
}

- (void)removeColorRamp
{
  [NTKPhotosColorPalette removeColorRampFromView:self->_imageView];
  v3 = [(UIImageView *)self->_imageView layer];
  [v3 setMask:0];
}

- (void)_updateTransform
{
  memset(&v10, 0, sizeof(v10));
  contentRoll = self->_contentRoll;
  contentPitch = self->_contentPitch;
  if (fabs(contentRoll) >= 0.00000011920929 || fabs(contentPitch) >= 0.00000011920929 || fabs(self->_contentScale + -1.0) >= 0.00000011920929)
  {
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeTranslation(&v9, contentRoll, contentPitch);
    contentScale = self->_contentScale;
    v8 = v9;
    CGAffineTransformScale(&v10, &v8, contentScale, contentScale);
  }

  else
  {
    v5 = *&CGAffineTransformIdentity.c;
    *&v10.a = *&CGAffineTransformIdentity.a;
    *&v10.c = v5;
    *&v10.tx = *&CGAffineTransformIdentity.tx;
  }

  contentView = self->_contentView;
  v9 = v10;
  [(UIView *)contentView setTransform:&v9];
}

- (void)setImageBlur:(double)a3
{
  if (self->_imageBlur != a3)
  {
    self->_imageBlur = a3;
    v4 = [(UIImageView *)self->_imageView layer];
    v5 = [v4 filters];
    v6 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 name];
          v14 = [v13 isEqualToString:@"NTKUltraCubeContentViewBlurFilter"];

          if ((v14 & 1) == 0)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    if (fabs(a3) >= 0.00000011920929)
    {
      v15 = [CAFilter filterWithType:kCAFilterGaussianBlur];
      [v15 setValue:&__kCFBooleanTrue forKey:@"inputHardEdges"];
      [v15 setValue:&__kCFBooleanTrue forKey:@"inputNormalizeEdges"];
      [v15 setValue:@"low" forKey:@"inputQuality"];
      [v15 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
      [v15 setName:@"NTKUltraCubeContentViewBlurFilter"];
      v16 = [NSNumber numberWithDouble:a3];
      [v15 setValue:v16 forKey:@"inputRadius"];

      [v6 addObject:v15];
    }

    [v4 setFilters:{v6, v17}];
  }
}

@end