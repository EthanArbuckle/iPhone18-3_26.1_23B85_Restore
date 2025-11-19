@interface PPKMarkupViewController
+ (BOOL)_isInLowMemoryEnvironment;
+ (BOOL)hasPrivateImageMetadata:(id)a3;
+ (id)_contentTypeForData:(id)a3;
+ (id)_contentTypeForImageSource:(CGImageSource *)a3;
+ (id)_contentTypeForURL:(id)a3;
+ (id)cleanImageMetadataFromData:(id)a3;
+ (id)supportedOutputTypes;
- (BOOL)_findInteractionEnabled;
- (BOOL)_hasPDFContent;
- (BOOL)annotationEditingEnabled;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)encryptPrivateMetadata;
- (BOOL)formFillingEnabled;
- (BOOL)isTouchInThumbnailView:(id)a3;
- (BOOL)markupContainerViewController:(id)a3 shouldOpenLink:(id)a4;
- (BOOL)needsToolPickerContentInsetActiveForTraitCollection:(id)a3;
- (BOOL)pencilAlwaysDraws;
- (BOOL)resignFirstResponder;
- (BOOL)showThumbnailViewForMultipage;
- (BOOL)toolbarHidden;
- (BOOL)validateRedo:(id)a3;
- (BOOL)validateUndo:(id)a3;
- (BOOL)writeToURL:(id)a3 embeddingSourceImageAndEditModel:(BOOL)a4 contentType:(id)a5 error:(id *)a6;
- (BOOL)writeToURL:(id)a3 embeddingSourceImageAndEditModel:(BOOL)a4 error:(id *)a5;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (BOOL)writeToURL:(id)a3 options:(id)a4 error:(id *)a5;
- (CGSize)adjustedSourceImageSize;
- (MarkupViewControllerDelegate)delegate;
- (NSString)hostProcessBundleIdentifier;
- (NSString)imageDescription;
- (NSString)outputType;
- (PPKMarkupViewController)init;
- (PPKMarkupViewController)initWithCoder:(id)a3;
- (PPKMarkupViewController)initWithImageAnalysisEnabled:(BOOL)a3;
- (UIEdgeInsets)activeMinimumContentInsetsForTraitCollection:(id)a3;
- (UIFindInteraction)_findInteraction;
- (UIScrollView)contentViewScrollView;
- (UTType)outputContentType;
- (id)createArchivedModelData;
- (id)dataRepresentationWithError:(id *)a3;
- (id)undoManager;
- (unint64_t)currentPDFPageIndex;
- (void)_ppkMarkupViewControllerCommonInit;
- (void)_setFindInteractionEnabled:(BOOL)a3;
- (void)loadWithData:(id)a3 archivedModelData:(id)a4 placeholderImage:(id)a5 completionHandler:(id)a6;
- (void)loadWithURL:(id)a3 archivedModelData:(id)a4 placeholderImage:(id)a5 completionHandler:(id)a6;
- (void)markupContainerViewController:(id)a3 wantsToEnterFullscreen:(BOOL)a4;
- (void)redo:(id)a3;
- (void)revert;
- (void)setAllEditingDisabled:(BOOL)a3;
- (void)setAnnotationEditingEnabled:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCurrentPDFPageIndex:(unint64_t)a3;
- (void)setEncryptPrivateMetadata:(BOOL)a3;
- (void)setFormFillingEnabled:(BOOL)a3;
- (void)setFormFillingEnabled:(BOOL)a3 didUseBanner:(BOOL)a4;
- (void)setImageDescription:(id)a3;
- (void)setPencilAlwaysDraws:(BOOL)a3;
- (void)setShowThumbnailViewForMultipage:(BOOL)a3;
- (void)setToolbarHidden:(BOOL)a3;
- (void)setToolbarHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)undo:(id)a3;
- (void)updateContentInsets;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewSafeAreaInsetsDidChange;
- (void)writeToURL:(id)a3 embeddingSourceImageAndEditModel:(BOOL)a4 contentType:(id)a5 options:(id)a6 completionHandler:(id)a7;
@end

@implementation PPKMarkupViewController

- (PPKMarkupViewController)init
{
  v5.receiver = self;
  v5.super_class = PPKMarkupViewController;
  v2 = [(PPKMarkupViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PPKMarkupViewController *)v2 _ppkMarkupViewControllerCommonInit];
  }

  return v3;
}

- (PPKMarkupViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PPKMarkupViewController;
  v3 = [(PPKMarkupViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PPKMarkupViewController *)v3 _ppkMarkupViewControllerCommonInit];
  }

  return v4;
}

- (PPKMarkupViewController)initWithImageAnalysisEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PPKMarkupViewController *)self init];
  v5 = v4;
  if (v4)
  {
    v6 = [(PPKMarkupViewController *)v4 markupContainerVC];
    [v6 setIsImageAnalysisEnabled:v3];
  }

  return v5;
}

- (void)_ppkMarkupViewControllerCommonInit
{
  v3 = objc_alloc_init(PPKMarkupContainerViewController);
  [(PPKMarkupViewController *)self setMarkupContainerVC:v3];

  v4 = [(PPKMarkupViewController *)self markupContainerVC];
  [v4 setDelegate:self];
}

- (void)viewDidLoad
{
  v28[4] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PPKMarkupViewController;
  [(PPKMarkupViewController *)&v26 viewDidLoad];
  v3 = [(PPKMarkupViewController *)self markupContainerVC];
  [(PPKMarkupViewController *)self addChildViewController:v3];

  v4 = [(PPKMarkupViewController *)self view];
  v5 = [(PPKMarkupViewController *)self markupContainerVC];
  v6 = [v5 view];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:v6];
  v24 = [v6 topAnchor];
  v23 = [v4 topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v28[0] = v22;
  v21 = [v6 bottomAnchor];
  v20 = [v4 bottomAnchor];
  v7 = [v21 constraintEqualToAnchor:v20];
  v28[1] = v7;
  v8 = [v6 leadingAnchor];
  v25 = v4;
  v9 = [v4 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v28[2] = v10;
  v11 = [v6 trailingAnchor];
  v12 = [v4 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v28[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  [(PPKMarkupViewController *)self setFullViewLayoutConstraints:v14];

  v15 = MEMORY[0x1E696ACD8];
  v16 = [(PPKMarkupViewController *)self fullViewLayoutConstraints];
  [v15 activateConstraints:v16];

  v17 = [(PPKMarkupViewController *)self markupContainerVC];
  [v17 didMoveToParentViewController:self];

  [(PPKMarkupViewController *)self updateContentInsets];
  v27 = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v19 = [(PPKMarkupViewController *)self registerForTraitChanges:v18 withAction:sel_horizontalSizeClassDidChange];
}

- (BOOL)canBecomeFirstResponder
{
  v3 = [(PPKMarkupViewController *)self markupContainerVC];
  v4 = [v3 documentIsLocked];

  if (v4)
  {
    return 0;
  }

  v6 = [(PPKMarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 controllerCanBecomeFirstResponder:self];
  }

  else
  {
    v7 = [(PPKMarkupViewController *)self markupContainerVC];
    v5 = [v7 canBecomeFirstResponder];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)canResignFirstResponder
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 canResignFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (UIFindInteraction)_findInteraction
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 findInteraction];

  return v3;
}

- (void)_setFindInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PPKMarkupViewController *)self markupContainerVC];
  [v4 setFindInteractionEnabled:v3];
}

- (BOOL)_findInteractionEnabled
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 findInteractionEnabled];

  return v3;
}

- (void)loadWithData:(id)a3 archivedModelData:(id)a4 placeholderImage:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [PPKMarkupViewController _contentTypeForData:v13];
  [(PPKMarkupViewController *)self setSourceContentType:v14];

  v15 = [(PPKMarkupViewController *)self markupContainerVC];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__PPKMarkupViewController_loadWithData_archivedModelData_placeholderImage_completionHandler___block_invoke;
  v17[3] = &unk_1E845C0C8;
  v18 = v10;
  v16 = v10;
  [v15 loadFromData:v13 with:v12 placeholderImage:v11 completionHandler:v17];
}

uint64_t __93__PPKMarkupViewController_loadWithData_archivedModelData_placeholderImage_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadWithURL:(id)a3 archivedModelData:(id)a4 placeholderImage:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [PPKMarkupViewController _contentTypeForURL:v13];
  [(PPKMarkupViewController *)self setSourceContentType:v14];

  v15 = [(PPKMarkupViewController *)self markupContainerVC];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__PPKMarkupViewController_loadWithURL_archivedModelData_placeholderImage_completionHandler___block_invoke;
  v17[3] = &unk_1E845C0C8;
  v18 = v10;
  v16 = v10;
  [v15 loadFromURL:v13 with:v12 placeholderImage:v11 completionHandler:v17];
}

uint64_t __92__PPKMarkupViewController_loadWithURL_archivedModelData_placeholderImage_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)writeToURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PPKMarkupViewController *)self markupContainerVC];
  v11 = [(PPKMarkupViewController *)self outputContentType];
  LOBYTE(a5) = [v10 writeTo:v9 imageType:v11 error:a5 embeddingSourceImageAndEditModel:1 options:v8];

  return a5;
}

- (BOOL)writeToURL:(id)a3 embeddingSourceImageAndEditModel:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(PPKMarkupViewController *)self markupContainerVC];
  v10 = [(PPKMarkupViewController *)self outputContentType];
  LOBYTE(a5) = [v9 writeTo:v8 imageType:v10 error:a5 embeddingSourceImageAndEditModel:v6];

  return a5;
}

- (BOOL)writeToURL:(id)a3 embeddingSourceImageAndEditModel:(BOOL)a4 contentType:(id)a5 error:(id *)a6
{
  v7 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [(PPKMarkupViewController *)self markupContainerVC];
  LOBYTE(a6) = [v12 writeTo:v11 imageType:v10 error:a6 embeddingSourceImageAndEditModel:v7];

  return a6;
}

- (void)writeToURL:(id)a3 embeddingSourceImageAndEditModel:(BOOL)a4 contentType:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v9 = a4;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [(PPKMarkupViewController *)self markupContainerVC];
  [v16 writeTo:v15 imageType:v14 embeddingSourceImageAndEditModel:v9 options:v13 completionHandler:v12];
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PPKMarkupViewController *)self markupContainerVC];
  v8 = [(PPKMarkupViewController *)self outputContentType];
  LOBYTE(a4) = [v7 writeTo:v6 imageType:v8 error:a4 embeddingSourceImageAndEditModel:1];

  return a4;
}

- (id)dataRepresentationWithError:(id *)a3
{
  v4 = [(PPKMarkupViewController *)self markupContainerVC];
  v5 = [v4 dataRepresentationWithError:a3];

  return v5;
}

- (id)createArchivedModelData
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 archivedModelData];

  return v3;
}

- (BOOL)encryptPrivateMetadata
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 encryptPrivateMetadata];

  return v3;
}

- (void)setEncryptPrivateMetadata:(BOOL)a3
{
  v3 = a3;
  v5 = [(PPKMarkupViewController *)self markupContainerVC];
  [v5 setEncryptPrivateMetadata:v3];

  self->_encryptPrivateMetadata = v3;
}

- (UIScrollView)contentViewScrollView
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 contentViewScrollView];

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(PPKMarkupViewController *)self markupContainerVC];
  [v5 setBackgroundColor:v4];
}

- (BOOL)annotationEditingEnabled
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 annotationEditingEnabled];

  return v3;
}

- (BOOL)_hasPDFContent
{
  v2 = [(PPKMarkupViewController *)self sourceContentType];
  v3 = [v2 conformsToType:*MEMORY[0x1E6982F10]];

  return v3;
}

- (BOOL)needsToolPickerContentInsetActiveForTraitCollection:(id)a3
{
  v4 = a3;
  if ([(PPKMarkupViewController *)self annotationEditingEnabled])
  {
    if ([v4 userInterfaceIdiom])
    {
      v5 = [v4 horizontalSizeClass] == 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)viewSafeAreaInsetsDidChange
{
  v13.receiver = self;
  v13.super_class = PPKMarkupViewController;
  [(PPKMarkupViewController *)&v13 viewSafeAreaInsetsDidChange];
  v3 = [(PPKMarkupViewController *)self traitCollection];
  [(PPKMarkupViewController *)self activeMinimumContentInsetsForTraitCollection:v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PPKMarkupViewController *)self markupContainerVC];
  [v12 setMinimumContentInsets:{v5, v7, v9, v11}];
}

- (UIEdgeInsets)activeMinimumContentInsetsForTraitCollection:(id)a3
{
  v4 = a3;
  if ([(PPKMarkupViewController *)self annotationEditingEnabled])
  {
    v5 = [(PPKMarkupViewController *)self view];
    [v5 safeAreaInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    if ([(PPKMarkupViewController *)self needsToolPickerContentInsetActiveForTraitCollection:v4])
    {
      v11 = v11 + 75.0;
    }
  }

  else
  {
    v7 = *MEMORY[0x1E69DDCE0];
    v9 = *(MEMORY[0x1E69DDCE0] + 8);
    v11 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)updateContentInsets
{
  v3 = [(PPKMarkupViewController *)self traitCollection];
  [(PPKMarkupViewController *)self activeMinimumContentInsetsForTraitCollection:v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PPKMarkupViewController *)self markupContainerVC];
  [v12 setMinimumContentInsets:{v5, v7, v9, v11}];

  v14 = *MEMORY[0x1E69DDCE0];
  v13 = *(MEMORY[0x1E69DDCE0] + 8);
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  v15 = *(MEMORY[0x1E69DDCE0] + 24);
  v17 = [(PPKMarkupViewController *)self markupContainerVC];
  if ([v17 annotationEditingEnabled])
  {
    v18 = [(PPKMarkupViewController *)self traitCollection];
    v19 = [(PPKMarkupViewController *)self needsToolPickerContentInsetActiveForTraitCollection:v18];

    if (v19)
    {
      v15 = 0.0;
      v16 = 75.0;
      v13 = 0.0;
      v14 = 0.0;
    }
  }

  else
  {
  }

  v20 = [(PPKMarkupViewController *)self markupContainerVC];
  [v20 setAdditionalSafeAreaInsets:{v14, v13, v16, v15}];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PPKMarkupViewController;
  [(PPKMarkupViewController *)&v4 viewIsAppearing:a3];
  [(PPKMarkupViewController *)self updateContentInsets];
}

- (void)setAnnotationEditingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PPKMarkupViewController *)self markupContainerVC];
  [v5 setAnnotationEditingEnabled:v3];

  [(PPKMarkupViewController *)self updateContentInsets];
}

- (void)setFormFillingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PPKMarkupViewController *)self markupContainerVC];
  [v4 setFormFillingEnabled:v3];
}

- (void)setFormFillingEnabled:(BOOL)a3 didUseBanner:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(PPKMarkupViewController *)self markupContainerVC];
  [v6 setFormFillingEnabled:v5 didUseBanner:v4];
}

- (BOOL)formFillingEnabled
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 formFillingEnabled];

  return v3;
}

- (BOOL)toolbarHidden
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 toolbarHidden];

  return v3;
}

- (void)setToolbarHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(PPKMarkupViewController *)self markupContainerVC];
  [v4 setToolbarHidden:v3];
}

- (void)setToolbarHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v5 = [(PPKMarkupViewController *)self markupContainerVC:a3];
  [v5 setToolbarHidden:v4];
}

- (unint64_t)currentPDFPageIndex
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 currentPDFPageIndex];

  return v3;
}

- (void)setCurrentPDFPageIndex:(unint64_t)a3
{
  v4 = [(PPKMarkupViewController *)self markupContainerVC];
  [v4 setCurrentPDFPageIndex:a3];
}

- (BOOL)pencilAlwaysDraws
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 pencilAlwaysDraws];

  return v3;
}

- (void)setPencilAlwaysDraws:(BOOL)a3
{
  v3 = a3;
  v4 = [(PPKMarkupViewController *)self markupContainerVC];
  [v4 setPencilAlwaysDraws:v3];
}

+ (id)supportedOutputTypes
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = [*MEMORY[0x1E6982F10] identifier];
  v13[0] = v2;
  v3 = [*MEMORY[0x1E6982E58] identifier];
  v13[1] = v3;
  v4 = [*MEMORY[0x1E6982F28] identifier];
  v13[2] = v4;
  v5 = [*MEMORY[0x1E6983008] identifier];
  v13[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];

  if (_os_feature_enabled_impl())
  {
    v7 = [*MEMORY[0x1E6982E00] identifier];
    v12[0] = v7;
    v8 = [*MEMORY[0x1E6982E10] identifier];
    v12[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v10 = [v6 arrayByAddingObjectsFromArray:v9];

    v6 = v10;
  }

  return v6;
}

- (CGSize)adjustedSourceImageSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)undoManager
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 undoManager];

  return v3;
}

- (void)setAllEditingDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PPKMarkupViewController *)self markupContainerVC];
  [v4 setAllEditingDisabled:v3];
}

- (UTType)outputContentType
{
  v3 = _os_feature_enabled_impl();
  v4 = [(PPKMarkupViewController *)self sourceContentType];
  v5 = *MEMORY[0x1E6982F10];
  if ([v4 conformsToType:*MEMORY[0x1E6982F10]])
  {
    goto LABEL_10;
  }

  v5 = *MEMORY[0x1E6982F28];
  if ([v4 conformsToType:*MEMORY[0x1E6982F28]])
  {
    goto LABEL_10;
  }

  v5 = *MEMORY[0x1E6983008];
  if ([v4 conformsToType:*MEMORY[0x1E6983008]])
  {
    goto LABEL_10;
  }

  v5 = *MEMORY[0x1E6982E58];
  if ([v4 conformsToType:*MEMORY[0x1E6982E58]])
  {
    goto LABEL_10;
  }

  if (!v3 || (v6 = *MEMORY[0x1E6982E00], ([v4 conformsToType:*MEMORY[0x1E6982E00]] & 1) == 0) && (v6 = *MEMORY[0x1E6982E10], (objc_msgSend(v4, "conformsToType:", *MEMORY[0x1E6982E10]) & 1) == 0))
  {
    if (![v4 conformsToType:*MEMORY[0x1E6982E30]])
    {
      v15 = [v4 identifier];
      NSLog(&cfstr_SNullOutputcon.isa, "[PPKMarkupViewController outputContentType]", v15);

      v7 = 0;
LABEL_11:
      if ((v3 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_10:
    v7 = v5;
    goto LABEL_11;
  }

  v7 = v6;
LABEL_12:
  if ([v7 conformsToType:*MEMORY[0x1E6982E30]])
  {
    v8 = *MEMORY[0x1E6982E00];
    if (([v7 isEqual:*MEMORY[0x1E6982E00]] & 1) == 0)
    {
      v9 = [(PPKMarkupViewController *)self markupContainerVC];
      v10 = [v9 shouldSaveHDRImage];

      v11 = [(PPKMarkupViewController *)self markupContainerVC];
      v12 = [v11 canChangeImageFileFormat];

      NSLog(&cfstr_MarkupConvertT.isa, v10, v12);
      if (v10)
      {
        if (v12)
        {
          v13 = v8;

          v7 = v13;
        }
      }
    }
  }

LABEL_17:

  return v7;
}

+ (id)_contentTypeForImageSource:(CGImageSource *)a3
{
  if (a3)
  {
    v3 = CGImageSourceGetType(a3);
    if (v3)
    {
      v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_contentTypeForURL:(id)a3
{
  v3 = CGImageSourceCreateWithURL(a3, 0);
  if (v3)
  {
    v4 = v3;
    v5 = [PPKMarkupViewController _contentTypeForImageSource:v3];
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_contentTypeForData:(id)a3
{
  v3 = CGImageSourceCreateWithData(a3, 0);
  if (v3)
  {
    v4 = v3;
    v5 = [PPKMarkupViewController _contentTypeForImageSource:v3];
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_isInLowMemoryEnvironment
{
  if (_isInLowMemoryEnvironment_onceToken != -1)
  {
    +[PPKMarkupViewController _isInLowMemoryEnvironment];
  }

  return _isInLowMemoryEnvironment_sIsLowMemoryEnvironment;
}

void __52__PPKMarkupViewController__isInLowMemoryEnvironment__block_invoke()
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v2 arguments];
  v1 = [v0 firstObject];

  if (v1)
  {
    _isInLowMemoryEnvironment_sIsLowMemoryEnvironment = [v1 containsString:@".appex/"];
  }
}

- (NSString)hostProcessBundleIdentifier
{
  hostProcessBundleIdentifier = self->_hostProcessBundleIdentifier;
  if (!hostProcessBundleIdentifier)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = self->_hostProcessBundleIdentifier;
    self->_hostProcessBundleIdentifier = v5;

    hostProcessBundleIdentifier = self->_hostProcessBundleIdentifier;
  }

  return hostProcessBundleIdentifier;
}

+ (id)cleanImageMetadataFromData:(id)a3
{
  v3 = a3;
  v4 = [getMUImageReaderClass() cleanImageMetadataFromData:v3];

  return v4;
}

+ (BOOL)hasPrivateImageMetadata:(id)a3
{
  v3 = a3;
  v4 = [getMUImageReaderClass() hasPrivateImageMetadata:v3];

  return v4;
}

- (BOOL)isTouchInThumbnailView:(id)a3
{
  v4 = a3;
  v5 = [(PPKMarkupViewController *)self markupContainerVC];
  v6 = [v5 isTouchInThumbnailView:v4];

  return v6;
}

- (void)setShowThumbnailViewForMultipage:(BOOL)a3
{
  v3 = a3;
  v4 = [(PPKMarkupViewController *)self markupContainerVC];
  [v4 setShowThumbnailViewForMultipage:v3];
}

- (BOOL)showThumbnailViewForMultipage
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 showThumbnailViewForMultipage];

  return v3;
}

- (void)setImageDescription:(id)a3
{
  v4 = a3;
  v5 = [(PPKMarkupViewController *)self markupContainerVC];
  [v5 setImageDescription:v4];
}

- (NSString)imageDescription
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  v3 = [v2 imageDescription];

  return v3;
}

- (BOOL)validateRedo:(id)a3
{
  v4 = a3;
  v5 = [(PPKMarkupViewController *)self markupContainerVC];
  v6 = [v5 validateRedo:v4];

  return v6;
}

- (BOOL)validateUndo:(id)a3
{
  v4 = a3;
  v5 = [(PPKMarkupViewController *)self markupContainerVC];
  v6 = [v5 validateUndo:v4];

  return v6;
}

- (void)undo:(id)a3
{
  v4 = a3;
  v5 = [(PPKMarkupViewController *)self markupContainerVC];
  [v5 undo:v4];
}

- (void)redo:(id)a3
{
  v4 = a3;
  v5 = [(PPKMarkupViewController *)self markupContainerVC];
  [v5 redo:v4];
}

- (void)revert
{
  v2 = [(PPKMarkupViewController *)self markupContainerVC];
  [v2 revert:0];
}

- (BOOL)markupContainerViewController:(id)a3 shouldOpenLink:(id)a4
{
  v5 = a4;
  v6 = [(PPKMarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 controller:self shouldOpenLinkAtURL:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)markupContainerViewController:(id)a3 wantsToEnterFullscreen:(BOOL)a4
{
  v4 = a4;
  v6 = [(PPKMarkupViewController *)self delegate];
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 markupViewController:self didChangeShowingSignaturesUI:v4];
      v7 = v9;
    }
  }
}

- (NSString)outputType
{
  v2 = [(PPKMarkupViewController *)self outputContentType];
  v3 = [v2 identifier];

  return v3;
}

- (MarkupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end