@interface PPKPhotosMediaView
- (BOOL)isHDRAllowed;
- (CGRect)stillImageContentsRect;
- (PPKPhotosMediaView)initWithFrame:(CGRect)frame;
- (PPKPhotosMediaView)initWithImage:(CGImage *)image orientation:(int64_t)orientation;
- (PPKPhotosMediaView)initWithImage:(id)image;
- (PPKPhotosMediaView)initWithImageData:(id)data;
- (PPKPhotosMediaView)initWithImageURL:(id)l;
- (PPKPhotosMediaViewImageAnalysisInteractionContext)imageAnalysisContext;
- (UIView)imageAnalysisInteractionHostView;
- (void)_ensureImageAnalysisControllerIfNecessary;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)mode;
- (void)setImage:(CGImage *)image orientation:(int64_t)orientation;
- (void)setImage:(id)image;
- (void)setImageAnalysisInteractionHostView:(id)view;
- (void)setImageAnalysisOrientation:(int64_t)orientation;
- (void)setIsHDRAllowed:(BOOL)allowed animated:(BOOL)animated;
- (void)setIsImageAnalysisEnabled:(BOOL)enabled;
- (void)setStillImageContentsRect:(CGRect)rect;
- (void)setURL:(id)l;
@end

@implementation PPKPhotosMediaView

- (PPKPhotosMediaView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PPKPhotosMediaView;
  v3 = [(PPKPhotosMediaView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_isImageAnalysisEnabled = 1;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v5 = getPXDisplayAssetViewClass_softClass;
    v15 = getPXDisplayAssetViewClass_softClass;
    if (!getPXDisplayAssetViewClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getPXDisplayAssetViewClass_block_invoke;
      v11[3] = &unk_1E845C110;
      v11[4] = &v12;
      __getPXDisplayAssetViewClass_block_invoke(v11);
      v5 = v13[3];
    }

    v6 = v5;
    _Block_object_dispose(&v12, 8);
    v7 = objc_alloc_init(v5);
    assetView = v4->_assetView;
    v4->_assetView = v7;

    [(PXDisplayAssetView *)v4->_assetView setContentMode:[(PPKPhotosMediaView *)v4 contentMode]];
    [(PPKPhotosMediaView *)v4 setIsHDRAllowed:0 animated:0];
    [(PPKPhotosMediaView *)v4 addSubview:v4->_assetView];
  }

  return v4;
}

- (PPKPhotosMediaView)initWithImageData:(id)data
{
  v4 = MEMORY[0x1E69DCAB8];
  dataCopy = data;
  v6 = [[v4 alloc] initWithData:dataCopy];

  v7 = [(PPKPhotosMediaView *)self initWithImage:v6];
  return v7;
}

- (PPKPhotosMediaView)initWithImageURL:(id)l
{
  lCopy = l;
  v5 = [(PPKPhotosMediaView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = objc_alloc_init(getPXFileBackedUIMediaProviderClass());
    assetView = [(PPKPhotosMediaView *)v5 assetView];
    [assetView setMediaProvider:v6];

    v8 = [objc_alloc(getPXFileBackedAssetClass()) initWithURL:lCopy];
    assetView2 = [(PPKPhotosMediaView *)v5 assetView];
    [assetView2 setAsset:v8];
  }

  return v5;
}

- (PPKPhotosMediaView)initWithImage:(CGImage *)image orientation:(int64_t)orientation
{
  v5 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:image imageOrientation:orientation];
  v6 = [(PPKPhotosMediaView *)self initWithImage:v5];

  return v6;
}

- (PPKPhotosMediaView)initWithImage:(id)image
{
  imageCopy = image;
  v5 = [(PPKPhotosMediaView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = objc_alloc_init(_ImageAssetMediaProvider);
    assetView = [(PPKPhotosMediaView *)v5 assetView];
    [assetView setMediaProvider:v6];

    v8 = [[_ImageAsset alloc] initWithImage:imageCopy];
    assetView2 = [(PPKPhotosMediaView *)v5 assetView];
    [assetView2 setAsset:v8];
  }

  return v5;
}

- (void)setContentMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = PPKPhotosMediaView;
  [(PPKPhotosMediaView *)&v6 setContentMode:?];
  assetView = [(PPKPhotosMediaView *)self assetView];
  [assetView setContentMode:mode];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  v5 = objc_alloc_init(_ImageAssetMediaProvider);
  assetView = [(PPKPhotosMediaView *)self assetView];
  [assetView setMediaProvider:v5];

  v8 = [[_ImageAsset alloc] initWithImage:imageCopy];
  assetView2 = [(PPKPhotosMediaView *)self assetView];
  [assetView2 setAsset:v8];
}

- (void)setURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(getPXFileBackedUIMediaProviderClass());
  assetView = [(PPKPhotosMediaView *)self assetView];
  [assetView setMediaProvider:v5];

  v8 = [objc_alloc(getPXFileBackedAssetClass()) initWithURL:lCopy];
  assetView2 = [(PPKPhotosMediaView *)self assetView];
  [assetView2 setAsset:v8];
}

- (void)setImage:(CGImage *)image orientation:(int64_t)orientation
{
  v5 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:image imageOrientation:orientation];
  [(PPKPhotosMediaView *)self setImage:v5];
}

- (CGRect)stillImageContentsRect
{
  assetView = [(PPKPhotosMediaView *)self assetView];
  [assetView stillImageContentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setStillImageContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  assetView = [(PPKPhotosMediaView *)self assetView];
  [assetView setStillImageContentsRect:{x, y, width, height}];
}

- (void)layoutSubviews
{
  [(PPKPhotosMediaView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  assetView = [(PPKPhotosMediaView *)self assetView];
  [assetView setFrame:{v4, v6, v8, v10}];
}

- (PPKPhotosMediaViewImageAnalysisInteractionContext)imageAnalysisContext
{
  [(PPKPhotosMediaView *)self _ensureImageAnalysisControllerIfNecessary];

  return [(PPKPhotosMediaView *)self analysisController];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PPKPhotosMediaView;
  [(PPKPhotosMediaView *)&v4 didMoveToWindow];
  window = [(PPKPhotosMediaView *)self window];

  if (window)
  {
    [(PPKPhotosMediaView *)self _ensureImageAnalysisControllerIfNecessary];
  }
}

- (void)_ensureImageAnalysisControllerIfNecessary
{
  analysisController = [(PPKPhotosMediaView *)self analysisController];
  if (!analysisController)
  {
    if (![(PPKPhotosMediaView *)self isImageAnalysisEnabled])
    {
      return;
    }

    v4 = [_PhotosMediaViewAnalysisController alloc];
    assetView = self->_assetView;
    WeakRetained = objc_loadWeakRetained(&self->_imageAnalysisInteractionHostView);
    v6 = [(_PhotosMediaViewAnalysisController *)v4 initWithAssetView:assetView interactionHostView:WeakRetained analysisOrientation:self->_imageAnalysisOrientation];
    analysisController = self->_analysisController;
    self->_analysisController = v6;

    analysisController = WeakRetained;
  }
}

- (void)setIsImageAnalysisEnabled:(BOOL)enabled
{
  self->_isImageAnalysisEnabled = enabled;
  if (enabled)
  {
    [(PPKPhotosMediaView *)self _ensureImageAnalysisControllerIfNecessary];
  }

  else
  {
    analysisController = self->_analysisController;
    self->_analysisController = 0;
  }
}

- (void)setImageAnalysisInteractionHostView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_imageAnalysisInteractionHostView);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_imageAnalysisInteractionHostView, obj);
    [(_PhotosMediaViewAnalysisController *)self->_analysisController setInteractionHostView:obj];
  }
}

- (void)setImageAnalysisOrientation:(int64_t)orientation
{
  if (self->_imageAnalysisOrientation != orientation)
  {
    self->_imageAnalysisOrientation = orientation;
    [(_PhotosMediaViewAnalysisController *)self->_analysisController setAnalysisOrientation:?];
  }
}

- (BOOL)isHDRAllowed
{
  assetView = [(PPKPhotosMediaView *)self assetView];
  v3 = [assetView preferredImageDynamicRange] == 2;

  return v3;
}

- (void)setIsHDRAllowed:(BOOL)allowed animated:(BOOL)animated
{
  animatedCopy = animated;
  if ((_os_feature_enabled_impl() & allowed) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  assetView = [(PPKPhotosMediaView *)self assetView];
  preferredImageDynamicRange = [assetView preferredImageDynamicRange];

  if (preferredImageDynamicRange != v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__PPKPhotosMediaView_setIsHDRAllowed_animated___block_invoke;
    aBlock[3] = &unk_1E845C3C0;
    aBlock[4] = self;
    aBlock[5] = v6;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (animatedCopy)
    {
      v11 = MEMORY[0x1E69DD250];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __47__PPKPhotosMediaView_setIsHDRAllowed_animated___block_invoke_2;
      v12[3] = &unk_1E845C3E8;
      v13 = v9;
      [v11 animateWithSpringDuration:0 bounce:v12 initialSpringVelocity:0 delay:2.0 options:0.0 animations:0.0 completion:0.0];
    }

    else
    {
      v9[2](v9);
    }
  }
}

void __47__PPKPhotosMediaView_setIsHDRAllowed_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) assetView];
  [v2 setPreferredImageDynamicRange:v1];
}

- (UIView)imageAnalysisInteractionHostView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageAnalysisInteractionHostView);

  return WeakRetained;
}

@end