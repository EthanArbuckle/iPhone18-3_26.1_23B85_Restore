@interface NTKUltraCubeImageContainerView
- (NSArray)imageFilters;
- (NTKUltraCubeImageContainerView)initWithFrame:(CGRect)frame;
- (void)_generateMaskingLayerForImage:(id)image;
- (void)_updateTransform;
- (void)applyColorRamp:(id)ramp colorRampAmount:(double)amount monochromeColorMatrix:(id)matrix;
- (void)removeColorRamp;
- (void)setContentAlpha:(double)alpha;
- (void)setContentRoll:(double)roll pitch:(double)pitch;
- (void)setContentScale:(double)scale;
- (void)setContentsMultiplyByWhite:(double)white alpha:(double)alpha;
- (void)setImage:(id)image;
- (void)setImageBlur:(double)blur;
- (void)setImageFilters:(id)filters;
@end

@implementation NTKUltraCubeImageContainerView

- (NTKUltraCubeImageContainerView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = NTKUltraCubeImageContainerView;
  v3 = [(NTKUltraCubeImageContainerView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setImage:(id)image
{
  imageView = self->_imageView;
  imageCopy = image;
  layer = [(UIImageView *)imageView layer];
  [layer setMask:0];

  [(UIImageView *)self->_imageView setImage:imageCopy];
  [(NTKUltraCubeImageContainerView *)self _generateMaskingLayerForImage:imageCopy];
}

- (void)_generateMaskingLayerForImage:(id)image
{
  imageCopy = image;
  v5 = +[CALayer layer];
  maskingImageLayer = self->_maskingImageLayer;
  self->_maskingImageLayer = v5;

  [(NTKUltraCubeImageContainerView *)self bounds];
  [(CALayer *)self->_maskingImageLayer setFrame:?];
  cGImage = [imageCopy CGImage];

  Copy = CGImageCreateCopy(cGImage);
  [(CALayer *)self->_maskingImageLayer setContents:Copy];
}

- (NSArray)imageFilters
{
  layer = [(UIImageView *)self->_imageView layer];
  filters = [layer filters];

  return filters;
}

- (void)setImageFilters:(id)filters
{
  imageView = self->_imageView;
  filtersCopy = filters;
  layer = [(UIImageView *)imageView layer];
  [layer setFilters:filtersCopy];
}

- (void)setContentAlpha:(double)alpha
{
  if (self->_contentAlpha != alpha)
  {
    self->_contentAlpha = alpha;
    [(UIView *)self->_contentView setAlpha:?];
  }
}

- (void)setContentsMultiplyByWhite:(double)white alpha:(double)alpha
{
  if (self->_contentsMultiplyWhite != white || self->_contentsMultiplyAlpha != alpha)
  {
    self->_contentsMultiplyWhite = white;
    self->_contentsMultiplyAlpha = alpha;
    v5 = [UIColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
    cGColor = [v5 CGColor];

    layer = [(UIView *)self->_contentView layer];
    [layer setContentsMultiplyColor:cGColor];
  }
}

- (void)setContentScale:(double)scale
{
  if (self->_contentScale != scale)
  {
    self->_contentScale = scale;
    [(NTKUltraCubeImageContainerView *)self _updateTransform];
  }
}

- (void)setContentRoll:(double)roll pitch:(double)pitch
{
  if (self->_contentRoll != roll || self->_contentPitch != pitch)
  {
    self->_contentRoll = roll;
    self->_contentPitch = pitch;
    [(NTKUltraCubeImageContainerView *)self _updateTransform];
  }
}

- (void)applyColorRamp:(id)ramp colorRampAmount:(double)amount monochromeColorMatrix:(id)matrix
{
  rampCopy = ramp;
  matrixCopy = matrix;
  layer = [(UIImageView *)self->_imageView layer];
  mask = [layer mask];

  if (!mask)
  {
    maskingImageLayer = self->_maskingImageLayer;
    layer2 = [(UIImageView *)self->_imageView layer];
    [layer2 setMask:maskingImageLayer];
  }

  [NTKPhotosColorPalette applyColorRamp:rampCopy colorRampAmount:matrixCopy monochromeColorMatrix:self->_imageView toView:amount];
}

- (void)removeColorRamp
{
  [NTKPhotosColorPalette removeColorRampFromView:self->_imageView];
  layer = [(UIImageView *)self->_imageView layer];
  [layer setMask:0];
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

- (void)setImageBlur:(double)blur
{
  if (self->_imageBlur != blur)
  {
    self->_imageBlur = blur;
    layer = [(UIImageView *)self->_imageView layer];
    filters = [layer filters];
    v6 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = filters;
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
          name = [v12 name];
          v14 = [name isEqualToString:@"NTKUltraCubeContentViewBlurFilter"];

          if ((v14 & 1) == 0)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    if (fabs(blur) >= 0.00000011920929)
    {
      v15 = [CAFilter filterWithType:kCAFilterGaussianBlur];
      [v15 setValue:&__kCFBooleanTrue forKey:@"inputHardEdges"];
      [v15 setValue:&__kCFBooleanTrue forKey:@"inputNormalizeEdges"];
      [v15 setValue:@"low" forKey:@"inputQuality"];
      [v15 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
      [v15 setName:@"NTKUltraCubeContentViewBlurFilter"];
      v16 = [NSNumber numberWithDouble:blur];
      [v15 setValue:v16 forKey:@"inputRadius"];

      [v6 addObject:v15];
    }

    [layer setFilters:{v6, v17}];
  }
}

@end