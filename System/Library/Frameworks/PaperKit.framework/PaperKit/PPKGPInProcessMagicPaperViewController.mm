@interface PPKGPInProcessMagicPaperViewController
+ (__CVBuffer)_createPixelBufferFromUIImage:(id)a3 pixelFormat:(unsigned int)a4;
+ (id)_uiImageFromPixelBuffer:(__CVBuffer *)a3;
+ (id)decodeRecipeData:(id)a3;
+ (id)promptsFromRecipeData:(id)a3;
+ (void)preload;
+ (void)prewarmEffectWithCompletion:(id)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)generateCaptionFromImage;
- (BOOL)isAnimating;
- (BOOL)isUpscaleRequestSupported;
- (CGRect)magicViewFullFrame;
- (NSData)encodedRecipe;
- (PPKGPInProcessMagicPaperViewController)initWithTokenProvider:(id)a3;
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
- (void)_handleFirstResponderDidChangeNotification:(id)a3;
- (void)_setDrawOnImageRecipe:(id)a3;
- (void)_setRecipe:(id)a3;
- (void)addConcepts:(id)a3;
- (void)addSuggestions:(id)a3;
- (void)beginRecipe;
- (void)commitRecipe;
- (void)finishSelectionWithPath:(CGPath *)a3 pencilLocation:(CGPoint)a4;
- (void)magicPaperViewController:(id)a3 didGenerateImage:(id)a4;
- (void)magicPaperViewControllerDidCancel:(id)a3;
- (void)magicPaperViewControllerViewDidAppear:(id)a3;
- (void)magicPaperViewControllerViewDidDisappear:(id)a3;
- (void)setConcepts:(id)a3;
- (void)setEncodedRecipe:(id)a3;
- (void)setGenerateCaptionFromImage:(BOOL)a3;
- (void)setIsAnimating:(BOOL)a3;
- (void)setPromptElements:(id)a3;
- (void)setSanitizationCategory:(int64_t)a3;
- (void)setSketchComplexityMeasure:(double)a3;
- (void)setSketchImage:(id)a3;
- (void)setSketchMask:(id)a3;
- (void)setSourceImage:(id)a3;
- (void)setSourceImageRatio:(double)a3;
- (void)setState:(id)a3;
- (void)setSuggestions:(id)a3;
- (void)setTitle:(id)a3;
- (void)startSelectionWithPath:(CGPath *)a3 pencilLocation:(CGPoint)a4;
- (void)updateSelectionWithPath:(CGPath *)a3 pencilLocation:(CGPoint)a4;
- (void)viewIsAppearing:(BOOL)a3;
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

+ (void)prewarmEffectWithCompletion:(id)a3
{
  v3 = a3;
  getGPInProcessMagicPaperViewControllerClass();
  if (objc_opt_respondsToSelector())
  {
    GPInProcessMagicPaperViewControllerClass = getGPInProcessMagicPaperViewControllerClass();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__PPKGPInProcessMagicPaperViewController_prewarmEffectWithCompletion___block_invoke;
    v5[3] = &unk_1E845C3E8;
    v6 = v3;
    [GPInProcessMagicPaperViewControllerClass prewarmEffectAndKeepItInMemory:0 withCompletion:v5];
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }
}

- (PPKGPInProcessMagicPaperViewController)initWithTokenProvider:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PPKGPInProcessMagicPaperViewController;
  v5 = [(PPKGPInProcessMagicPaperViewController *)&v14 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AFC8]);
    discreteUndoManager = v5->_discreteUndoManager;
    v5->_discreteUndoManager = v6;

    [(PPKGPInProcessMagicPaperViewController *)v5 setTokenProvider:v4];
    v8 = [objc_alloc(getGPInProcessMagicPaperViewControllerClass()) initWithUndoManager:v5->_discreteUndoManager];
    [v8 setDelegate:v5];
    [(PPKGPInProcessMagicPaperViewController *)v5 setMagicPaperVC:v8];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v5 selector:sel__handleFirstResponderDidChangeNotification_ name:*MEMORY[0x1E69DEB18] object:0];

    v10 = objc_alloc_init(PPKGPMagicPaperImageGenerationEvent);
    imageGenerationEvent = v5->_imageGenerationEvent;
    v5->_imageGenerationEvent = v10;

    v12 = [MEMORY[0x1E696AFB0] UUID];
    [(PPKGPMagicPaperImageGenerationEvent *)v5->_imageGenerationEvent setSessionID:v12];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = PPKGPInProcessMagicPaperViewController;
  v3 = [(PPKGPInProcessMagicPaperViewController *)&v5 becomeFirstResponder];
  if (v3)
  {
    [(PPKGPInProcessMagicPaperViewController *)self setWasFirstResponderAtLeastOnce:1];
  }

  return v3;
}

- (id)_getOrCreateRecipe
{
  v3 = [(PPKGPInProcessMagicPaperViewController *)self influxRecipe];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_3:
    v6 = v5;
    goto LABEL_5;
  }

  v7 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v6 = [v7 recipe];

  if (!v6)
  {
    v5 = [objc_alloc(getGPRecipeClass()) initWithPromptElements:MEMORY[0x1E695E0F0]];
    goto LABEL_3;
  }

LABEL_5:

  return v6;
}

- (id)_getOrCreateDrawOnImageRecipe
{
  v2 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateRecipe];
  v3 = [v2 drawOnImageRecipe];
  if (!v3)
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
    v3 = [[v4 alloc] initWithBaseImage:0 sketchImage:0 sketchMask:0 baseImageRatio:1 sketchComplexityMeasure:0 generateCaptionFromImage:1 sanitizationCategory:1.0 drawOnImageAssignmentOptions:1.0];
  }

  return v3;
}

- (void)_setDrawOnImageRecipe:(id)a3
{
  v4 = a3;
  v5 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateRecipe];
  [v5 setDrawOnImageRecipe:v4];

  [(PPKGPInProcessMagicPaperViewController *)self _setRecipe:v5];
}

- (void)_setRecipe:(id)a3
{
  v6 = a3;
  v4 = [(PPKGPInProcessMagicPaperViewController *)self influxRecipe];

  if (v4)
  {
    [(PPKGPInProcessMagicPaperViewController *)self setInfluxRecipe:v6];
  }

  else
  {
    v5 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
    [v5 setRecipe:v6];
  }
}

- (void)beginRecipe
{
  v3 = [(PPKGPInProcessMagicPaperViewController *)self influxRecipe];
  if (!v3)
  {
    v4 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateRecipe];
    [(PPKGPInProcessMagicPaperViewController *)self setInfluxRecipe:v4];

    v3 = 0;
  }
}

- (void)commitRecipe
{
  v3 = [(PPKGPInProcessMagicPaperViewController *)self influxRecipe];
  if (v3)
  {
    v5 = v3;
    v4 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
    [v4 setRecipe:v5];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = PPKGPInProcessMagicPaperViewController;
  [(PPKGPInProcessMagicPaperViewController *)&v31 viewIsAppearing:a3];
  v4 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v5 = [v4 view];
  v6 = [v5 superview];
  v7 = [(PPKGPInProcessMagicPaperViewController *)self view];

  if (v6 != v7)
  {
    v8 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
    v9 = [v8 view];

    v10 = [(PPKGPInProcessMagicPaperViewController *)self view];
    [v10 addSubview:v9];

    v11 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
    [(PPKGPInProcessMagicPaperViewController *)self addChildViewController:v11];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = MEMORY[0x1E696ACD8];
    v28 = [v9 bottomAnchor];
    v29 = [(PPKGPInProcessMagicPaperViewController *)self view];
    v27 = [v29 bottomAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v32[0] = v26;
    v24 = [v9 topAnchor];
    v25 = [(PPKGPInProcessMagicPaperViewController *)self view];
    v23 = [v25 topAnchor];
    v21 = [v24 constraintEqualToAnchor:v23];
    v32[1] = v21;
    [v9 leadingAnchor];
    v12 = v30 = v4;
    v13 = [(PPKGPInProcessMagicPaperViewController *)self view];
    v14 = [v13 leadingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v32[2] = v15;
    v16 = [v9 trailingAnchor];
    v17 = [(PPKGPInProcessMagicPaperViewController *)self view];
    v18 = [v17 trailingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v32[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v22 activateConstraints:v20];

    v4 = v30;
  }
}

- (NSData)encodedRecipe
{
  v2 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v3 = [v2 recipe];
  v4 = [v3 additionalMetadata];

  return v4;
}

- (void)setEncodedRecipe:(id)a3
{
  v4 = a3;
  v5 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateRecipe];
  [v5 setAdditionalMetadata:v4];

  [(PPKGPInProcessMagicPaperViewController *)self _setRecipe:v5];
}

+ (__CVBuffer)_createPixelBufferFromUIImage:(id)a3 pixelFormat:(unsigned int)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 CIImage];
  if (v6 || [v5 CGImage] && (v6 = objc_msgSend(objc_alloc(MEMORY[0x1E695F658]), "initWithCGImage:", objc_msgSend(v5, "CGImage"))) != 0)
  {
    v7 = v6;
    [v6 extent];
    if (v8 != 512 || ([v7 extent], v9 != 512))
    {
      v10 = [MEMORY[0x1E695F648] lanczosScaleTransformFilter];
      [v10 setInputImage:v7];
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
      [v10 setScale:v15];
      LODWORD(v16) = 1.0;
      [v10 setAspectRatio:v16];
      v17 = [v10 outputImage];

      v7 = v17;
    }

    v25 = 0;
    v28 = *MEMORY[0x1E69660D8];
    v26 = *MEMORY[0x1E696CE60];
    v27 = &unk_1F4F83300;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:{1, 0}];
    v29[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

    v20 = 0;
    if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], 0x200uLL, 0x200uLL, a4, v19, &v25))
    {
      v21 = objc_alloc_init(MEMORY[0x1E695F620]);
      if (a4 == 1111970369)
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

+ (id)_uiImageFromPixelBuffer:(__CVBuffer *)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a3];
    v5 = [MEMORY[0x1E695F620] contextWithOptions:0];
    Width = CVPixelBufferGetWidth(v3);
    v7 = [v5 createCGImage:v4 fromRect:{0.0, 0.0, Width, CVPixelBufferGetHeight(v3)}];
    if (v7)
    {
      v8 = v7;
      v3 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v7];
      CGImageRelease(v8);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setState:(id)a3
{
  v4 = a3;
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
  [v4 frame];
  v12 = [v7 initWithFrame:objc_msgSend(v4 isEditing:{"isEditing"), v8, v9, v10, v11}];
  v13 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  [v13 setState:v12];
}

- (BOOL)isAnimating
{
  v2 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v3 = [v2 isAnimating];

  return v3;
}

- (void)setIsAnimating:(BOOL)a3
{
  v3 = a3;
  v4 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  [v4 setIsAnimating:v3];
}

- (UIImage)sourceImage
{
  v2 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v3 = [v2 recipe];
  v4 = [v3 drawOnImageRecipe];
  v5 = +[PPKGPInProcessMagicPaperViewController _uiImageFromPixelBuffer:](PPKGPInProcessMagicPaperViewController, "_uiImageFromPixelBuffer:", [v4 baseImage]);

  return v5;
}

- (void)setSourceImage:(id)a3
{
  v6 = a3;
  v4 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  if (v6)
  {
    v5 = [PPKGPInProcessMagicPaperViewController _createPixelBufferFromUIImage:v6 pixelFormat:1111970369];
  }

  else
  {
    v5 = 0;
  }

  [v4 setBaseImage:v5];
  [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:v4];
}

- (double)sourceImageRatio
{
  v3 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v4 = [v3 recipe];
  v5 = [v4 drawOnImageRecipe];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1.0;
  }

  v7 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v8 = [v7 recipe];
  v9 = [v8 drawOnImageRecipe];
  [v9 baseImageRatio];
  v11 = v10;

  return v11;
}

- (void)setSourceImageRatio:(double)a3
{
  v5 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  if (objc_opt_respondsToSelector())
  {
    [v5 setBaseImageRatio:a3];
    [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:v5];
  }
}

- (UIImage)sketchImage
{
  v2 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v3 = [v2 recipe];
  v4 = [v3 drawOnImageRecipe];
  v5 = +[PPKGPInProcessMagicPaperViewController _uiImageFromPixelBuffer:](PPKGPInProcessMagicPaperViewController, "_uiImageFromPixelBuffer:", [v4 sketchImage]);

  return v5;
}

- (void)setSketchImage:(id)a3
{
  v4 = a3;
  v6 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  v5 = [PPKGPInProcessMagicPaperViewController _createPixelBufferFromUIImage:v4 pixelFormat:1111970369];

  [v6 setSketchImage:v5];
  [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:v6];
}

- (UIImage)sketchMask
{
  v2 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v3 = [v2 recipe];
  v4 = [v3 drawOnImageRecipe];
  v5 = +[PPKGPInProcessMagicPaperViewController _uiImageFromPixelBuffer:](PPKGPInProcessMagicPaperViewController, "_uiImageFromPixelBuffer:", [v4 sketchMask]);

  return v5;
}

- (void)setSketchMask:(id)a3
{
  v4 = a3;
  v6 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  v5 = [PPKGPInProcessMagicPaperViewController _createPixelBufferFromUIImage:v4 pixelFormat:1278226488];

  [v6 setSketchMask:v5];
  [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:v6];
}

- (double)sketchComplexityMeasure
{
  v2 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v3 = [v2 recipe];
  v4 = [v3 drawOnImageRecipe];
  [v4 sketchComplexityMeasure];
  v6 = v5;

  return v6;
}

- (void)setSketchComplexityMeasure:(double)a3
{
  v5 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  [v5 setSketchComplexityMeasure:a3];
  [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:v5];
}

- (BOOL)generateCaptionFromImage
{
  v3 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v4 = [v3 recipe];
  v5 = [v4 drawOnImageRecipe];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v8 = [v7 recipe];
  v9 = [v8 drawOnImageRecipe];
  v10 = [v9 generateCaptionFromImage];

  return v10;
}

- (void)setGenerateCaptionFromImage:(BOOL)a3
{
  v3 = a3;
  v5 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  if (objc_opt_respondsToSelector())
  {
    [v5 setGenerateCaptionFromImage:v3];
    [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:v5];
  }
}

- (int64_t)sanitizationCategory
{
  v2 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v3 = [v2 recipe];
  v4 = [v3 drawOnImageRecipe];
  v5 = [v4 sanitizationCategory];

  return v5;
}

- (void)setSanitizationCategory:(int64_t)a3
{
  v5 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateDrawOnImageRecipe];
  [v5 setSanitizationCategory:a3];
  [(PPKGPInProcessMagicPaperViewController *)self _setDrawOnImageRecipe:v5];
}

- (CGRect)magicViewFullFrame
{
  v3 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
    [v5 magicViewFullFrame];
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

- (void)startSelectionWithPath:(CGPath *)a3 pencilLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  [v7 startSelectionWithPath:a3 atPencilLocation:{x, y}];
}

- (void)updateSelectionWithPath:(CGPath *)a3 pencilLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  [v7 updateSelectionWithPath:a3 atPencilLocation:{x, y}];
}

- (void)finishSelectionWithPath:(CGPath *)a3 pencilLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  [v7 finishSelectionWithPath:a3 atPencilLocation:{x, y}];
}

- (id)promptElements
{
  v2 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateRecipe];
  v3 = [v2 promptElements];

  return v3;
}

- (void)setPromptElements:(id)a3
{
  v4 = a3;
  v5 = [(PPKGPInProcessMagicPaperViewController *)self _getOrCreateRecipe];
  [v5 setPromptElements:v4];

  [(PPKGPInProcessMagicPaperViewController *)self _setRecipe:v5];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isTitle == false"];
  v7 = [v5 filteredArrayUsingPredicate:v6];
  v9 = [v7 mutableCopy];

  v8 = [objc_alloc(getGPPromptElementClass()) initWithText:v4];
  [v8 setTitle:v4];

  [v9 addObject:v8];
  [(PPKGPInProcessMagicPaperViewController *)self setPromptElements:v9];
}

- (id)_titleElements
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isTitle == true"];
  v6 = [v4 filteredArrayUsingPredicate:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PPKGPInProcessMagicPaperViewController__titleElements__block_invoke;
  v10[3] = &unk_1E845C528;
  v11 = v3;
  v7 = v3;
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
  v4 = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PPKGPInProcessMagicPaperViewController_suggestions__block_invoke;
  v7[3] = &unk_1E845C528;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

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

- (void)addSuggestions:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v6 = [v5 mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
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

- (void)setSuggestions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"needsSuggestableConceptsExtraction == false"];
  v7 = [v5 filteredArrayUsingPredicate:v6];
  v8 = [v7 mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v4;
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
  v4 = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PPKGPInProcessMagicPaperViewController_concepts__block_invoke;
  v7[3] = &unk_1E845C528;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

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

- (void)addConcepts:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v6 = [v5 mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
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

- (void)setConcepts:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PPKGPInProcessMagicPaperViewController *)self promptElements];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"needsConceptsExtraction == false"];
  v7 = [v5 filteredArrayUsingPredicate:v6];
  v8 = [v7 mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v4;
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

- (void)_handleFirstResponderDidChangeNotification:(id)a3
{
  v19 = a3;
  if ([(PPKGPInProcessMagicPaperViewController *)self wasFirstResponderAtLeastOnce])
  {
    if ([(PPKGPInProcessMagicPaperViewController *)self isViewLoaded])
    {
      v4 = [(PPKGPInProcessMagicPaperViewController *)self view];
      v5 = [v4 window];

      if (v5)
      {
        v6 = [v19 userInfo];
        v7 = [v6 objectForKey:@"UIWindowFirstResponderUserInfoKey"];

        if (v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = v7;
            v9 = [(PPKGPInProcessMagicPaperViewController *)self view];
            v10 = [v9 window];
            v11 = [(PPKGPInProcessMagicPaperViewController *)v8 _responderWindow];

            if (v10 == v11 && [(PPKGPInProcessMagicPaperViewController *)self isUpscaleRequestSupported])
            {
              v12 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
              v13 = v12;
              if (v12)
              {
                if ([v12 isViewLoaded])
                {
                  v14 = [v13 view];
                  v15 = [v14 window];

                  if (v15)
                  {
                    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__finalizeDueToFirstResponderChange object:0];
                    while (v8 != self)
                    {
                      v16 = [(PPKGPInProcessMagicPaperViewController *)self view];

                      if (v8 == v16)
                      {
                        break;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v17 = [(PPKGPInProcessMagicPaperViewController *)v8 superview];
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

                        v17 = [(PPKGPInProcessMagicPaperViewController *)v8 parentViewController];
                      }

                      v18 = v17;

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
  v2 = [(PPKGPInProcessMagicPaperViewController *)self magicPaperVC];
  [v2 upscaleIfPossible];
}

+ (id)promptsFromRecipeData:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(getGPGenerationRecipeDataClass()) initWithUnderlyingData:v3];

  v5 = [v4 getRecipeInfo];
  v6 = [v5 objectForKey:@"prompt"];
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

+ (id)decodeRecipeData:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [objc_alloc(getGPGenerationRecipeDataClass()) initWithUnderlyingData:v4];

  v7 = [v6 getRecipeInfo];
  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"inputDict"];
    v8 = [v6 getDrawOnImageRecipe];
    v9 = v8;
    if (v8)
    {
      if ([v8 baseImage])
      {
        v10 = +[PPKGPInProcessMagicPaperViewController _uiImageFromPixelBuffer:](PPKGPInProcessMagicPaperViewController, "_uiImageFromPixelBuffer:", [v9 baseImage]);
        v11 = UIImagePNGRepresentation(v10);
        [v5 setObject:v11 forKeyedSubscript:@"sourceImage"];
      }

      if ([v9 sketchImage])
      {
        v12 = +[PPKGPInProcessMagicPaperViewController _uiImageFromPixelBuffer:](PPKGPInProcessMagicPaperViewController, "_uiImageFromPixelBuffer:", [v9 sketchImage]);
        v13 = UIImagePNGRepresentation(v12);
        [v5 setObject:v13 forKeyedSubscript:@"sketchImage"];
      }

      if ([v9 sketchMask])
      {
        v14 = +[PPKGPInProcessMagicPaperViewController _uiImageFromPixelBuffer:](PPKGPInProcessMagicPaperViewController, "_uiImageFromPixelBuffer:", [v9 sketchMask]);
        v15 = UIImagePNGRepresentation(v14);
        [v5 setObject:v15 forKeyedSubscript:@"sketchMask"];
      }
    }

    v16 = v5;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)magicPaperViewControllerViewDidAppear:(id)a3
{
  v4 = [(PPKGPInProcessMagicPaperViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 magicPaperViewControllerViewDidAppear:self];
  }
}

- (void)magicPaperViewControllerViewDidDisappear:(id)a3
{
  v4 = [(PPKGPInProcessMagicPaperViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 magicPaperViewControllerViewDidDisappear:self];
  }
}

- (void)magicPaperViewController:(id)a3 didGenerateImage:(id)a4
{
  v6 = a4;
  v5 = [(PPKGPInProcessMagicPaperViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 magicPaperViewController:self didGenerateImage:v6];
  }
}

- (void)magicPaperViewControllerDidCancel:(id)a3
{
  v4 = [(PPKGPInProcessMagicPaperViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 magicPaperViewControllerDidCancel:self];
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