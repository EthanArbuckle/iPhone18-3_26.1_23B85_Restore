@interface PKImageView
- (PKImageView)initWithFrame:(CGRect)frame;
- (PKImageView)initWithImage:(id)image;
- (id)_createViewWithImage:(id)image compositingFiler:(id)filer;
- (void)_updateAddLayer;
- (void)_updateImageLayer;
- (void)_updateLayerFrames;
- (void)_updateMulLayer;
- (void)setAddImage:(id)image;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(id)image;
- (void)setMulImage:(id)image;
- (void)setupWithDrawing:(id)drawing imageSize:(CGSize)size scale:(double)scale strokeSpaceClipRect:(CGRect)rect sixChannel:(BOOL)channel extendedDynamicRange:(BOOL)range;
@end

@implementation PKImageView

- (PKImageView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PKImageView;
  v3 = [(PKImageView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(PKImageView *)v3 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(PKImageView *)v4 layer];
    [layer2 setAllowsGroupOpacity:0];
  }

  return v4;
}

- (PKImageView)initWithImage:(id)image
{
  imageCopy = image;
  v11.receiver = self;
  v11.super_class = PKImageView;
  v6 = [(PKImageView *)&v11 init];
  v7 = v6;
  if (v6)
  {
    layer = [(PKImageView *)v6 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(PKImageView *)v7 layer];
    [layer2 setAllowsGroupOpacity:0];

    objc_storeStrong(&v7->_image, image);
    [(PKImageView *)v7 _updateImageLayer];
  }

  return v7;
}

- (void)setupWithDrawing:(id)drawing imageSize:(CGSize)size scale:(double)scale strokeSpaceClipRect:(CGRect)rect sixChannel:(BOOL)channel extendedDynamicRange:(BOOL)range
{
  rangeCopy = range;
  channelCopy = channel;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = size.height;
  v16 = size.width;
  drawingCopy = drawing;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__8;
  v42 = __Block_byref_object_dispose__8;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__8;
  v36 = __Block_byref_object_dispose__8;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__8;
  v30 = __Block_byref_object_dispose__8;
  v31 = 0;
  scale = [[PKImageRenderer alloc] initWithSize:0 scale:channelCopy renderQueue:0 sixChannelBlending:rangeCopy transparentBlending:v16 extendedDynamicRange:v15, scale];
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  -[PKImageRenderer setInvertColors:](scale, "setInvertColors:", [currentTraitCollection userInterfaceStyle] == 2);

  v21 = dispatch_semaphore_create(0);
  v22 = v21;
  if (channelCopy)
  {
    v23 = v25;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __100__PKImageView_setupWithDrawing_imageSize_scale_strokeSpaceClipRect_sixChannel_extendedDynamicRange___block_invoke;
    v25[3] = &unk_1E82D8290;
    v25[5] = &v32;
    v25[6] = &v26;
    v25[4] = v21;
    [(PKImageRenderer *)scale sixChannelCGRenderDrawing:drawingCopy clippedToStrokeSpaceRect:v25 scale:x completion:y, width, height, scale];
  }

  else
  {
    v23 = v24;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __100__PKImageView_setupWithDrawing_imageSize_scale_strokeSpaceClipRect_sixChannel_extendedDynamicRange___block_invoke_2;
    v24[3] = &unk_1E82D82B8;
    v24[5] = &v38;
    v24[4] = v21;
    [(PKImageRenderer *)scale renderDrawing:drawingCopy clippedToStrokeSpaceRect:v24 scale:x completion:y, width, height, scale];
  }

  dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  [(PKImageView *)self setImage:v39[5]];
  [(PKImageView *)self setMulImage:v27[5]];
  [(PKImageView *)self setAddImage:v33[5]];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
}

intptr_t __100__PKImageView_setupWithDrawing_imageSize_scale_strokeSpaceClipRect_sixChannel_extendedDynamicRange___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a2];
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if (a3)
  {
    v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a3];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = a1[4];

  return dispatch_semaphore_signal(v11);
}

void __100__PKImageView_setupWithDrawing_imageSize_scale_strokeSpaceClipRect_sixChannel_extendedDynamicRange___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = PKImageView;
  [(PKImageView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PKImageView *)self _updateLayerFrames];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(PKImageView *)self _updateImageLayer];
    [MEMORY[0x1E6979518] commit];
    imageCopy = v6;
  }
}

- (void)setAddImage:(id)image
{
  imageCopy = image;
  if (self->_addImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_addImage, image);
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(PKImageView *)self _updateAddLayer];
    [MEMORY[0x1E6979518] commit];
    imageCopy = v6;
  }
}

- (void)setMulImage:(id)image
{
  imageCopy = image;
  if (self->_mulImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_mulImage, image);
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(PKImageView *)self _updateMulLayer];
    [MEMORY[0x1E6979518] commit];
    imageCopy = v6;
  }
}

- (id)_createViewWithImage:(id)image compositingFiler:(id)filer
{
  v6 = MEMORY[0x1E69DD250];
  filerCopy = filer;
  imageCopy = image;
  v9 = objc_alloc_init(v6);
  layer = [v9 layer];
  [(PKImageView *)self bounds];
  [layer setFrame:?];
  [layer setOpaque:0];
  [layer setAllowsGroupOpacity:0];
  [layer setAllowsGroupBlending:0];
  v11 = [MEMORY[0x1E6979378] filterWithType:filerCopy];

  [layer setCompositingFilter:v11];
  cGImage = [imageCopy CGImage];

  [layer setContents:cGImage];

  return v9;
}

- (void)_updateImageLayer
{
  image = self->_image;
  imageView = self->_imageView;
  if (!image)
  {
    [(UIView *)imageView removeFromSuperview];
    v6 = self->_imageView;
    self->_imageView = 0;
    goto LABEL_5;
  }

  if (imageView)
  {
    cGImage = [(UIImage *)image CGImage];
    layer = [(UIView *)self->_imageView layer];
    [(UIView *)layer setContents:cGImage];
    v6 = layer;
LABEL_5:

    return;
  }

  v7 = [PKImageView _createViewWithImage:"_createViewWithImage:compositingFiler:" compositingFiler:?];
  v8 = self->_imageView;
  self->_imageView = v7;

  v9 = self->_imageView;

  [(PKImageView *)self insertSubview:v9 atIndex:0];
}

- (void)_updateAddLayer
{
  addImage = self->_addImage;
  addView = self->_addView;
  if (!addImage)
  {
    [(UIView *)addView removeFromSuperview];
    v6 = self->_addView;
    self->_addView = 0;
    goto LABEL_5;
  }

  if (addView)
  {
    cGImage = [(UIImage *)addImage CGImage];
    layer = [(UIView *)self->_addView layer];
    [(UIView *)layer setContents:cGImage];
    v6 = layer;
LABEL_5:

    return;
  }

  v7 = [PKImageView _createViewWithImage:"_createViewWithImage:compositingFiler:" compositingFiler:?];
  v8 = self->_addView;
  self->_addView = v7;

  v9 = self->_addView;
  if (self->_mulView)
  {

    [(PKImageView *)self insertSubview:v9 aboveSubview:?];
  }

  else
  {

    [(PKImageView *)self addSubview:v9];
  }
}

- (void)_updateMulLayer
{
  mulImage = self->_mulImage;
  mulView = self->_mulView;
  if (!mulImage)
  {
    [(UIView *)mulView removeFromSuperview];
    v6 = self->_mulView;
    self->_mulView = 0;
    goto LABEL_5;
  }

  if (mulView)
  {
    cGImage = [(UIImage *)mulImage CGImage];
    layer = [(UIView *)self->_mulView layer];
    [(UIView *)layer setContents:cGImage];
    v6 = layer;
LABEL_5:

    return;
  }

  v7 = [PKImageView _createViewWithImage:"_createViewWithImage:compositingFiler:" compositingFiler:?];
  v8 = self->_mulView;
  self->_mulView = v7;

  v9 = self->_mulView;
  if (self->_addView)
  {

    [(PKImageView *)self insertSubview:v9 belowSubview:?];
  }

  else
  {

    [(PKImageView *)self addSubview:v9];
  }
}

- (void)_updateLayerFrames
{
  [(PKImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_imageView setFrame:?];
  [(UIView *)self->_addView setFrame:v4, v6, v8, v10];
  mulView = self->_mulView;

  [(UIView *)mulView setFrame:v4, v6, v8, v10];
}

@end