@interface PPKGPInProcessMagicPaperViewController
+ (__CVBuffer)_createPixelBufferFromUIImage:(id)image pixelFormat:(unsigned int)format;
+ (id)_uiImageFromPixelBuffer:(__CVBuffer *)buffer;
+ (id)decodeRecipeData:(id)data;
+ (id)promptsFromRecipeData:(id)data;
+ (void)preload;
+ (void)prewarmEffectWithCompletion:(id)completion;
- (BOOL)becomeFirstResponder;
- (BOOL)generateCaptionFromImage;
- (BOOL)isAnimating;
- (BOOL)isUpscaleRequestSupported;
- (CGRect)magicViewFullFrame;
- (NSData)encodedRecipe;
- (PPKGPInProcessMagicPaperViewController)initWithTokenProvider:(id)provider;
- (PPKGPInProcessMagicPaperViewControllerDelegate)delegate;
- (PPKMagicGenerativePlaygroundTokenProvider)tokenProvider;
- (UIImage)sketchImage;
- (UIImage)sketchMask;
- (UIImage)sourceImage;
- (double)sketchComplexityMeasure;
- (double)sourceImageRatio;
- (id)_getOrCreateDrawOnImageRecipe;
- (id)_getOrCreateRecipe;
- (id)_titleElements;
- (id)concepts;
- (id)promptElements;
- (id)suggestions;
- (int64_t)sanitizationCategory;
- (void)_finalizeDueToFirstResponderChange;
- (void)_handleFirstResponderDidChangeNotification:(id)notification;
- (void)_setDrawOnImageRecipe:(id)recipe;
- (void)_setRecipe:(id)recipe;
- (void)addConcepts:(id)concepts;
- (void)addSuggestions:(id)suggestions;
- (void)beginRecipe;
- (void)commitRecipe;
- (void)finishSelectionWithPath:(CGPath *)path pencilLocation:(CGPoint)location;
- (void)magicPaperViewController:(id)controller didGenerateImage:(id)image;
- (void)magicPaperViewControllerDidCancel:(id)cancel;
- (void)magicPaperViewControllerViewDidAppear:(id)appear;
- (void)magicPaperViewControllerViewDidDisappear:(id)disappear;
- (void)setConcepts:(id)concepts;
- (void)setEncodedRecipe:(id)recipe;
- (void)setGenerateCaptionFromImage:(BOOL)image;
- (void)setIsAnimating:(BOOL)animating;
- (void)setPromptElements:(id)elements;
- (void)setSanitizationCategory:(int64_t)category;
- (void)setSketchComplexityMeasure:(double)measure;
- (void)setSketchImage:(id)image;
- (void)setSketchMask:(id)mask;
- (void)setSourceImage:(id)image;
- (void)setSourceImageRatio:(double)ratio;
- (void)setState:(id)state;
- (void)setSuggestions:(id)suggestions;
- (void)setTitle:(id)title;
- (void)startSelectionWithPath:(CGPath *)path pencilLocation:(CGPoint)location;
- (void)updateSelectionWithPath:(CGPath *)path pencilLocation:(CGPoint)location;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation PPKGPInProcessMagicPaperViewController

+ (void)preload
{
  if (preload_onceToken != -1)
  {
    +[PPKGPInProcessMagicPaperViewController preload];
  }
}

id __49__PPKGPInProcessMagicPaperViewController_preload__block_invoke()
{
  getGPInProcessMagicPaperViewControllerClass();

  return getGPRecipeClass();
}

+ (void)prewarmEffectWithCompletion:(id)completion
{
  completionCopy = completion;
  getGPInProcessMagicPaperViewControllerClass();
  if (objc_opt_respondsToSelector())
  {
    GPInProcessMagicPaperViewControllerClass = getGPInProcessMagicPaperViewControllerClass();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__PPKGPInProcessMagicPaperViewController_prewarmEffectWithCompletion___block_invoke;
    v5[3] = &unk_1E845C3E8;
    v6 = completionCopy;
    [GPInProcessMagicPaperViewControllerClass prewarmEffectAndKeepItInMemory:0 withCompletion:v5];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (PPKGPInProcessMagicPaperViewController)initWithTokenProvider:(id)provider
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = PPKGPInProcessMagicPaperViewController;
  v5 = [(PPKGPInProcessMagicPaperViewController *)&v14 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AFC8]);
    discreteUndoManager = v5->_discreteUndoManager;
    v5->_discreteUndoManager = v6;

    [(PPKGPInProcessMagicPaperViewController *)v5 setTokenProvider:providerCopy];
    v8 = [objc_alloc(getGPInProcessMagicPaperViewControllerClass()) initWithUndoManager:v5->_discreteUndoManager];
    [v8 setDelegate:v5];
    [(PPKGPInProcessMagicPaperViewController *)v5 setMagicPaperVC:v8];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__handleFirstResponderDidChangeNotification_ name:*MEMORY[0x1E69DEB18] object:0];

    v10 = objc_alloc_init(PPKGPMagicPaperImageGenerationEvent);
    imageGenerationEvent = v5->_imageGenerationEvent;
    v5->_imageGenerationEvent = v10;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(PPKGPMagicPaperImageGenerationEvent *)v5->_imageGenerationEvent setSessionID:uUID];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = PPKGPInProcessMagicPaperViewController;
  becomeFirstResponder = [(PPKGPInProcessMagicPaperViewController *)&v5 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    [(PPKGPInProcessMagicPaperViewController *)self setWasFirstResponderAtLeastOnce:1];
  }

  return becomeFirstResponder;
}

- (id)_getOrCreateRecipe
{
  influxRecipe = [(PPKGPInProcessMagicPaperViewController *)self influxRecipe];
  v4 = influxRecipe;
  if (influxRecipe)
  {
    v5 = influxRecipe;
LABEL_3:
    recipe = v5;
    goto LABEL_5;
  }

  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  recipe = [magicPaperVC recipe];

  if (!recipe)
  {
    v5 = [objc_alloc(getGPRecipeClass()) initWithPromptElements:MEMORY[0x1E695E0F0]];
    goto LABEL_3;
  }

LABEL_5:

  return recipe;
}

- (id)_getOrCreateDrawOnImageRecipe
{
  _getOrCreateRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateRecipe];
  drawOnImageRecipe = [_getOrCreateRecipe drawOnImageRecipe];
  if (!drawOnImageRecipe)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v4 = getGPDrawOnImageRecipeClass_softClass;
    v11 = getGPDrawOnImageRecipeClass_softClass;
    if (!getGPDrawOnImageRecipeClass_softClass)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getGPDrawOnImageRecipeClass_block_invoke;
      v7[3] = &unk_1E845C110;
      v7[4] = &v8;
      __getGPDrawOnImageRecipeClass_block_invoke(v7);
      v4 = v9[3];
    }

    v5 = v4;
    _Block_object_dispose(&v8, 8);
    drawOnImageRecipe = [[v4 alloc] initWithBaseImage:0 sketchImage:0 sketchMask:0 baseImageRatio:1 sketchComplexityMeasure:0 generateCaptionFromImage:1 sanitizationCategory:1.0 drawOnImageAssignmentOptions:1.0];
  }

  return drawOnImageRecipe;
}

- (void)_setDrawOnImageRecipe:(id)recipe
{
  recipeCopy = recipe;
  _getOrCreateRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateRecipe];
  [_getOrCreateRecipe setDrawOnImageRecipe:recipeCopy];

  [(PPKGPInProcessMagicPaperViewController *)self _setRecipe:_getOrCreateRecipe];
}

- (void)_setRecipe:(id)recipe
{
  recipeCopy = recipe;
  influxRecipe = [(PPKGPInProcessMagicPaperViewController *)self influxRecipe];

  if (influxRecipe)
  {
    [(PPKGPInProcessMagicPaperViewController *)self setInfluxRecipe:recipeCopy];
  }

  else
  {
    magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
    [magicPaperVC setRecipe:recipeCopy];
  }
}

- (void)beginRecipe
{
  influxRecipe = [(PPKGPInProcessMagicPaperViewController *)self influxRecipe];
  if (!influxRecipe)
  {
    _getOrCreateRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateRecipe];
    [(PPKGPInProcessMagicPaperViewController *)self setInfluxRecipe:_getOrCreateRecipe];

    influxRecipe = 0;
  }
}

- (void)commitRecipe
{
  influxRecipe = [(PPKGPInProcessMagicPaperViewController *)self influxRecipe];
  if (influxRecipe)
  {
    v5 = influxRecipe;
    magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
    [magicPaperVC setRecipe:v5];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = PPKGPInProcessMagicPaperViewController;
  [(PPKGPInProcessMagicPaperViewController *)&v31 viewIsAppearing:appearing];
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  view = [magicPaperVC view];
  superview = [view superview];
  view2 = [(PPKGPInProcessMagicPaperViewController *)self view];

  if (superview != view2)
  {
    magicPaperVC2 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
    view3 = [magicPaperVC2 view];

    view4 = [(PPKGPInProcessMagicPaperViewController *)self view];
    [view4 addSubview:view3];

    magicPaperVC3 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
    [(PPKGPInProcessMagicPaperViewController *)self addChildViewController:magicPaperVC3];

    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = MEMORY[0x1E696ACD8];
    bottomAnchor = [view3 bottomAnchor];
    view5 = [(PPKGPInProcessMagicPaperViewController *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v32[0] = v26;
    topAnchor = [view3 topAnchor];
    view6 = [(PPKGPInProcessMagicPaperViewController *)self view];
    topAnchor2 = [view6 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[1] = v21;
    [view3 leadingAnchor];
    v12 = v30 = magicPaperVC;
    view7 = [(PPKGPInProcessMagicPaperViewController *)self view];
    leadingAnchor = [view7 leadingAnchor];
    v15 = [v12 constraintEqualToAnchor:leadingAnchor];
    v32[2] = v15;
    trailingAnchor = [view3 trailingAnchor];
    view8 = [(PPKGPInProcessMagicPaperViewController *)self view];
    trailingAnchor2 = [view8 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v32[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v22 activateConstraints:v20];

    magicPaperVC = v30;
  }
}

- (NSData)encodedRecipe
{
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  recipe = [magicPaperVC recipe];
  additionalMetadata = [recipe additionalMetadata];

  return additionalMetadata;
}

- (void)setEncodedRecipe:(id)recipe
{
  recipeCopy = recipe;
  _getOrCreateRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateRecipe];
  [_getOrCreateRecipe setAdditionalMetadata:recipeCopy];

  [(PPKGPInProcessMagicPaperViewController *)self _setRecipe:_getOrCreateRecipe];
}

+ (__CVBuffer)_createPixelBufferFromUIImage:(id)image pixelFormat:(unsigned int)format
{
  v29[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  cIImage = [imageCopy CIImage];
  if (cIImage || [imageCopy CGImage] && (cIImage = objc_msgSend(objc_alloc(MEMORY[0x1E695F658]), "initWithCGImage:", objc_msgSend(imageCopy, "CGImage"))) != 0)
  {
    v7 = cIImage;
    [cIImage extent];
    if (v8 != 512 || ([v7 extent], v9 != 512))
    {
      lanczosScaleTransformFilter = [MEMORY[0x1E695F648] lanczosScaleTransformFilter];
      [lanczosScaleTransformFilter setInputImage:v7];
      [v7 extent];
      v12 = v11;
      [v7 extent];
      if (v12 >= v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }

      v15 = 512.0 / v14;
      *&v15 = v15;
      [lanczosScaleTransformFilter setScale:v15];
      LODWORD(v16) = 1.0;
      [lanczosScaleTransformFilter setAspectRatio:v16];
      outputImage = [lanczosScaleTransformFilter outputImage];

      v7 = outputImage;
    }

    v25 = 0;
    v28 = *MEMORY[0x1E69660D8];
    v26 = *MEMORY[0x1E696CE60];
    v27 = &unk_1F4F83300;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:{1, 0}];
    v29[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

    v20 = 0;
    if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], 0x200uLL, 0x200uLL, format, v19, &v25))
    {
      v21 = objc_alloc_init(MEMORY[0x1E695F620]);
      if (format == 1111970369)
      {
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
      }

      else
      {
        DeviceRGB = CGColorSpaceCreateDeviceGray();
      }

      v23 = DeviceRGB;
      if (DeviceRGB)
      {
        [v21 render:v7 toCVPixelBuffer:v25 bounds:DeviceRGB colorSpace:{0.0, 0.0, 512.0, 512.0}];
        CGColorSpaceRelease(v23);
        v20 = v25;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)_uiImageFromPixelBuffer:(__CVBuffer *)buffer
{
  bufferCopy = buffer;
  if (buffer)
  {
    v4 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:buffer];
    v5 = [MEMORY[0x1E695F620] contextWithOptions:0];
    Width = CVPixelBufferGetWidth(bufferCopy);
    v7 = [v5 createCGImage:v4 fromRect:{0.0, 0.0, Width, CVPixelBufferGetHeight(bufferCopy)}];
    if (v7)
    {
      v8 = v7;
      bufferCopy = [MEMORY[0x1E69DCAB8] imageWithCGImage:v7];
      CGImageRelease(v8);
    }

    else
    {
      bufferCopy = 0;
    }
  }

  return bufferCopy;
}

- (void)setState:(id)state
{
  stateCopy = state;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v5 = getGPMagicPaperStateClass_softClass;
  v18 = getGPMagicPaperStateClass_softClass;
  if (!getGPMagicPaperStateClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getGPMagicPaperStateClass_block_invoke;
    v14[3] = &unk_1E845C110;
    v14[4] = &v15;
    __getGPMagicPaperStateClass_block_invoke(v14);
    v5 = v16[3];
  }

  v6 = v5;
  _Block_object_dispose(&v15, 8);
  v7 = [v5 alloc];
  [stateCopy frame];
  v12 = [v7 initWithFrame:objc_msgSend(stateCopy isEditing:{"isEditing"), v8, v9, v10, v11}];
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  [magicPaperVC setState:v12];
}

- (BOOL)isAnimating
{
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  isAnimating = [magicPaperVC isAnimating];

  return isAnimating;
}

- (void)setIsAnimating:(BOOL)animating
{
  animatingCopy = animating;
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  [magicPaperVC setIsAnimating:animatingCopy];
}

- (UIImage)sourceImage
{
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  recipe = [magicPaperVC recipe];
  drawOnImageRecipe = [recipe drawOnImageRecipe];
  v5 = +[PPKGPInProcessMagicPaperViewController _uiImageFromPixelBuffer:](PPKGPInProcessMagicPaperViewController, "_uiImageFromPixelBuffer:", [drawOnImageRecipe baseImage]);

  return v5;
}

- (void)setSourceImage:(id)image
{
  imageCopy = image;
  _getOrCreateDrawOnImageRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  if (imageCopy)
  {
    v5 = [PPKGPInProcessMagicPaperViewController _createPixelBufferFromUIImage:imageCopy pixelFormat:1111970369];
  }

  else
  {
    v5 = 0;
  }

  [_getOrCreateDrawOnImageRecipe setBaseImage:v5];
  [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:_getOrCreateDrawOnImageRecipe];
}

- (double)sourceImageRatio
{
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  recipe = [magicPaperVC recipe];
  drawOnImageRecipe = [recipe drawOnImageRecipe];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1.0;
  }

  magicPaperVC2 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  recipe2 = [magicPaperVC2 recipe];
  drawOnImageRecipe2 = [recipe2 drawOnImageRecipe];
  [drawOnImageRecipe2 baseImageRatio];
  v11 = v10;

  return v11;
}

- (void)setSourceImageRatio:(double)ratio
{
  _getOrCreateDrawOnImageRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  if (objc_opt_respondsToSelector())
  {
    [_getOrCreateDrawOnImageRecipe setBaseImageRatio:ratio];
    [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:_getOrCreateDrawOnImageRecipe];
  }
}

- (UIImage)sketchImage
{
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  recipe = [magicPaperVC recipe];
  drawOnImageRecipe = [recipe drawOnImageRecipe];
  v5 = +[PPKGPInProcessMagicPaperViewController _uiImageFromPixelBuffer:](PPKGPInProcessMagicPaperViewController, "_uiImageFromPixelBuffer:", [drawOnImageRecipe sketchImage]);

  return v5;
}

- (void)setSketchImage:(id)image
{
  imageCopy = image;
  _getOrCreateDrawOnImageRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  v5 = [PPKGPInProcessMagicPaperViewController _createPixelBufferFromUIImage:imageCopy pixelFormat:1111970369];

  [_getOrCreateDrawOnImageRecipe setSketchImage:v5];
  [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:_getOrCreateDrawOnImageRecipe];
}

- (UIImage)sketchMask
{
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  recipe = [magicPaperVC recipe];
  drawOnImageRecipe = [recipe drawOnImageRecipe];
  v5 = +[PPKGPInProcessMagicPaperViewController _uiImageFromPixelBuffer:](PPKGPInProcessMagicPaperViewController, "_uiImageFromPixelBuffer:", [drawOnImageRecipe sketchMask]);

  return v5;
}

- (void)setSketchMask:(id)mask
{
  maskCopy = mask;
  _getOrCreateDrawOnImageRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  v5 = [PPKGPInProcessMagicPaperViewController _createPixelBufferFromUIImage:maskCopy pixelFormat:1278226488];

  [_getOrCreateDrawOnImageRecipe setSketchMask:v5];
  [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:_getOrCreateDrawOnImageRecipe];
}

- (double)sketchComplexityMeasure
{
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  recipe = [magicPaperVC recipe];
  drawOnImageRecipe = [recipe drawOnImageRecipe];
  [drawOnImageRecipe sketchComplexityMeasure];
  v6 = v5;

  return v6;
}

- (void)setSketchComplexityMeasure:(double)measure
{
  _getOrCreateDrawOnImageRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  [_getOrCreateDrawOnImageRecipe setSketchComplexityMeasure:measure];
  [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:_getOrCreateDrawOnImageRecipe];
}

- (BOOL)generateCaptionFromImage
{
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  recipe = [magicPaperVC recipe];
  drawOnImageRecipe = [recipe drawOnImageRecipe];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  magicPaperVC2 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  recipe2 = [magicPaperVC2 recipe];
  drawOnImageRecipe2 = [recipe2 drawOnImageRecipe];
  generateCaptionFromImage = [drawOnImageRecipe2 generateCaptionFromImage];

  return generateCaptionFromImage;
}

- (void)setGenerateCaptionFromImage:(BOOL)image
{
  imageCopy = image;
  _getOrCreateDrawOnImageRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  if (objc_opt_respondsToSelector())
  {
    [_getOrCreateDrawOnImageRecipe setGenerateCaptionFromImage:imageCopy];
    [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:_getOrCreateDrawOnImageRecipe];
  }
}

- (int64_t)sanitizationCategory
{
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  recipe = [magicPaperVC recipe];
  drawOnImageRecipe = [recipe drawOnImageRecipe];
  sanitizationCategory = [drawOnImageRecipe sanitizationCategory];

  return sanitizationCategory;
}

- (void)setSanitizationCategory:(int64_t)category
{
  _getOrCreateDrawOnImageRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  [_getOrCreateDrawOnImageRecipe setSanitizationCategory:category];
  [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:_getOrCreateDrawOnImageRecipe];
}

- (CGRect)magicViewFullFrame
{
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    magicPaperVC2 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
    [magicPaperVC2 magicViewFullFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)startSelectionWithPath:(CGPath *)path pencilLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  [magicPaperVC startSelectionWithPath:path atPencilLocation:{x, y}];
}

- (void)updateSelectionWithPath:(CGPath *)path pencilLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  [magicPaperVC updateSelectionWithPath:path atPencilLocation:{x, y}];
}

- (void)finishSelectionWithPath:(CGPath *)path pencilLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  [magicPaperVC finishSelectionWithPath:path atPencilLocation:{x, y}];
}

- (id)promptElements
{
  _getOrCreateRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateRecipe];
  promptElements = [_getOrCreateRecipe promptElements];

  return promptElements;
}

- (void)setPromptElements:(id)elements
{
  elementsCopy = elements;
  _getOrCreateRecipe = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateRecipe];
  [_getOrCreateRecipe setPromptElements:elementsCopy];

  [(PPKGPInProcessMagicPaperViewController *)self _setRecipe:_getOrCreateRecipe];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  promptElements = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isTitle == false"];
  v7 = [promptElements filteredArrayUsingPredicate:v6];
  v9 = [v7 mutableCopy];

  v8 = [objc_alloc(getGPPromptElementClass()) initWithText:titleCopy];
  [v8 setTitle:titleCopy];

  [v9 addObject:v8];
  [(PPKGPInProcessMagicPaperViewController *)self setPromptElements:v9];
}

- (id)_titleElements
{
  array = [MEMORY[0x1E695DF70] array];
  promptElements = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isTitle == true"];
  v6 = [promptElements filteredArrayUsingPredicate:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PPKGPInProcessMagicPaperViewController__titleElements__block_invoke;
  v10[3] = &unk_1E845C528;
  v11 = array;
  v7 = array;
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];

  return v8;
}

void __56__PPKGPInProcessMagicPaperViewController__titleElements__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 text];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 text];
    [v4 addObject:v5];
  }
}

- (id)suggestions
{
  v3 = objc_opt_new();
  promptElements = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PPKGPInProcessMagicPaperViewController_suggestions__block_invoke;
  v7[3] = &unk_1E845C528;
  v5 = v3;
  v8 = v5;
  [promptElements enumerateObjectsUsingBlock:v7];

  return v5;
}

void __53__PPKGPInProcessMagicPaperViewController_suggestions__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 needsSuggestableConceptsExtraction])
  {
    v3 = [v4 text];
    [*(a1 + 32) addObject:v3];
  }
}

- (void)addSuggestions:(id)suggestions
{
  v19 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  promptElements = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v6 = [promptElements mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = suggestionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 length])
        {
          v13 = [objc_alloc(getGPPromptElementClass()) initWithText:v12];
          [v13 setNeedsSuggestableConceptsExtraction:1];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(PPKGPInProcessMagicPaperViewController *)self setPromptElements:v6];
}

- (void)setSuggestions:(id)suggestions
{
  v21 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  promptElements = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"needsSuggestableConceptsExtraction == false"];
  v7 = [promptElements filteredArrayUsingPredicate:v6];
  v8 = [v7 mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = suggestionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 length])
        {
          v15 = [objc_alloc(getGPPromptElementClass()) initWithText:v14];
          [v15 setNeedsSuggestableConceptsExtraction:1];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(PPKGPInProcessMagicPaperViewController *)self setPromptElements:v8];
}

- (id)concepts
{
  v3 = objc_opt_new();
  promptElements = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PPKGPInProcessMagicPaperViewController_concepts__block_invoke;
  v7[3] = &unk_1E845C528;
  v5 = v3;
  v8 = v5;
  [promptElements enumerateObjectsUsingBlock:v7];

  return v5;
}

void __50__PPKGPInProcessMagicPaperViewController_concepts__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 needsConceptsExtraction])
  {
    v3 = [v4 text];
    [*(a1 + 32) addObject:v3];
  }
}

- (void)addConcepts:(id)concepts
{
  v19 = *MEMORY[0x1E69E9840];
  conceptsCopy = concepts;
  promptElements = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v6 = [promptElements mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = conceptsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 length])
        {
          v13 = [objc_alloc(getGPPromptElementClass()) initWithText:v12];
          [v13 setNeedsConceptsExtraction:1];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(PPKGPInProcessMagicPaperViewController *)self setPromptElements:v6];
}

- (void)setConcepts:(id)concepts
{
  v21 = *MEMORY[0x1E69E9840];
  conceptsCopy = concepts;
  promptElements = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"needsConceptsExtraction == false"];
  v7 = [promptElements filteredArrayUsingPredicate:v6];
  v8 = [v7 mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = conceptsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 length])
        {
          v15 = [objc_alloc(getGPPromptElementClass()) initWithText:v14];
          [v15 setNeedsConceptsExtraction:1];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(PPKGPInProcessMagicPaperViewController *)self setPromptElements:v8];
}

- (BOOL)isUpscaleRequestSupported
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PPKGPInProcessMagicPaperViewController_isUpscaleRequestSupported__block_invoke;
  block[3] = &unk_1E845C250;
  block[4] = self;
  if (isUpscaleRequestSupported_onceToken != -1)
  {
    dispatch_once(&isUpscaleRequestSupported_onceToken, block);
  }

  return isUpscaleRequestSupported_isSupported;
}

void __67__PPKGPInProcessMagicPaperViewController_isUpscaleRequestSupported__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) magicPaperVC];
  isUpscaleRequestSupported_isSupported = objc_opt_respondsToSelector() & 1;
}

- (void)_handleFirstResponderDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  if ([(PPKGPInProcessMagicPaperViewController *)self wasFirstResponderAtLeastOnce])
  {
    if ([(PPKGPInProcessMagicPaperViewController *)self isViewLoaded])
    {
      view = [(PPKGPInProcessMagicPaperViewController *)self view];
      window = [view window];

      if (window)
      {
        userInfo = [notificationCopy userInfo];
        v7 = [userInfo objectForKey:@"UIWindowFirstResponderUserInfoKey"];

        if (v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = v7;
            view2 = [(PPKGPInProcessMagicPaperViewController *)self view];
            window2 = [view2 window];
            _responderWindow = [(PPKGPInProcessMagicPaperViewController *)v8 _responderWindow];

            if (window2 == _responderWindow && [(PPKGPInProcessMagicPaperViewController *)self isUpscaleRequestSupported])
            {
              magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
              v13 = magicPaperVC;
              if (magicPaperVC)
              {
                if ([magicPaperVC isViewLoaded])
                {
                  view3 = [v13 view];
                  window3 = [view3 window];

                  if (window3)
                  {
                    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__finalizeDueToFirstResponderChange object:0];
                    while (v8 != self)
                    {
                      view4 = [(PPKGPInProcessMagicPaperViewController *)self view];

                      if (v8 == view4)
                      {
                        break;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        superview = [(PPKGPInProcessMagicPaperViewController *)v8 superview];
                      }

                      else
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {

LABEL_21:
                          [(PPKGPInProcessMagicPaperViewController *)self performSelectorOnMainThread:sel__finalizeDueToFirstResponderChange withObject:0 waitUntilDone:0];
                          v8 = 0;
                          break;
                        }

                        superview = [(PPKGPInProcessMagicPaperViewController *)v8 parentViewController];
                      }

                      v18 = superview;

                      v8 = v18;
                      if (!v18)
                      {
                        goto LABEL_21;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)_finalizeDueToFirstResponderChange
{
  magicPaperVC = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  [magicPaperVC upscaleIfPossible];
}

+ (id)promptsFromRecipeData:(id)data
{
  dataCopy = data;
  v4 = [objc_alloc(getGPGenerationRecipeDataClass()) initWithUnderlyingData:dataCopy];

  getRecipeInfo = [v4 getRecipeInfo];
  v6 = [getRecipeInfo objectForKey:@"prompt"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 firstObject], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass))
  {
    v9 = [v6 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)decodeRecipeData:(id)data
{
  v3 = MEMORY[0x1E695DF90];
  dataCopy = data;
  dictionary = [v3 dictionary];
  v6 = [objc_alloc(getGPGenerationRecipeDataClass()) initWithUnderlyingData:dataCopy];

  getRecipeInfo = [v6 getRecipeInfo];
  if (getRecipeInfo)
  {
    [dictionary setObject:getRecipeInfo forKeyedSubscript:@"inputDict"];
    getDrawOnImageRecipe = [v6 getDrawOnImageRecipe];
    v9 = getDrawOnImageRecipe;
    if (getDrawOnImageRecipe)
    {
      if ([getDrawOnImageRecipe baseImage])
      {
        v10 = +[PPKGPInProcessMagicPaperViewController _uiImageFromPixelBuffer:](PPKGPInProcessMagicPaperViewController, "_uiImageFromPixelBuffer:", [v9 baseImage]);
        v11 = UIImagePNGRepresentation(v10);
        [dictionary setObject:v11 forKeyedSubscript:@"sourceImage"];
      }

      if ([v9 sketchImage])
      {
        v12 = +[PPKGPInProcessMagicPaperViewController _uiImageFromPixelBuffer:](PPKGPInProcessMagicPaperViewController, "_uiImageFromPixelBuffer:", [v9 sketchImage]);
        v13 = UIImagePNGRepresentation(v12);
        [dictionary setObject:v13 forKeyedSubscript:@"sketchImage"];
      }

      if ([v9 sketchMask])
      {
        v14 = +[PPKGPInProcessMagicPaperViewController _uiImageFromPixelBuffer:](PPKGPInProcessMagicPaperViewController, "_uiImageFromPixelBuffer:", [v9 sketchMask]);
        v15 = UIImagePNGRepresentation(v14);
        [dictionary setObject:v15 forKeyedSubscript:@"sketchMask"];
      }
    }

    v16 = dictionary;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)magicPaperViewControllerViewDidAppear:(id)appear
{
  delegate = [(PPKGPInProcessMagicPaperViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate magicPaperViewControllerViewDidAppear:self];
  }
}

- (void)magicPaperViewControllerViewDidDisappear:(id)disappear
{
  delegate = [(PPKGPInProcessMagicPaperViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate magicPaperViewControllerViewDidDisappear:self];
  }
}

- (void)magicPaperViewController:(id)controller didGenerateImage:(id)image
{
  imageCopy = image;
  delegate = [(PPKGPInProcessMagicPaperViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate magicPaperViewController:self didGenerateImage:imageCopy];
  }
}

- (void)magicPaperViewControllerDidCancel:(id)cancel
{
  delegate = [(PPKGPInProcessMagicPaperViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate magicPaperViewControllerDidCancel:self];
  }
}

- (PPKGPInProcessMagicPaperViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PPKMagicGenerativePlaygroundTokenProvider)tokenProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tokenProvider);

  return WeakRetained;
}

@end