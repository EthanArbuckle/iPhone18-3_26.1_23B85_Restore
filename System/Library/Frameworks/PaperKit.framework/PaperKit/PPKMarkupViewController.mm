@interface PPKMarkupViewController
+ (BOOL)_isInLowMemoryEnvironment;
+ (BOOL)hasPrivateImageMetadata:(id)metadata;
+ (id)_contentTypeForData:(id)data;
+ (id)_contentTypeForImageSource:(CGImageSource *)source;
+ (id)_contentTypeForURL:(id)l;
+ (id)cleanImageMetadataFromData:(id)data;
+ (id)supportedOutputTypes;
- (BOOL)_findInteractionEnabled;
- (BOOL)_hasPDFContent;
- (BOOL)annotationEditingEnabled;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)encryptPrivateMetadata;
- (BOOL)formFillingEnabled;
- (BOOL)isTouchInThumbnailView:(id)view;
- (BOOL)markupContainerViewController:(id)controller shouldOpenLink:(id)link;
- (BOOL)needsToolPickerContentInsetActiveForTraitCollection:(id)collection;
- (BOOL)pencilAlwaysDraws;
- (BOOL)resignFirstResponder;
- (BOOL)showThumbnailViewForMultipage;
- (BOOL)toolbarHidden;
- (BOOL)validateRedo:(id)redo;
- (BOOL)validateUndo:(id)undo;
- (BOOL)writeToURL:(id)l embeddingSourceImageAndEditModel:(BOOL)model contentType:(id)type error:(id *)error;
- (BOOL)writeToURL:(id)l embeddingSourceImageAndEditModel:(BOOL)model error:(id *)error;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (BOOL)writeToURL:(id)l options:(id)options error:(id *)error;
- (CGSize)adjustedSourceImageSize;
- (MarkupViewControllerDelegate)delegate;
- (NSString)hostProcessBundleIdentifier;
- (NSString)imageDescription;
- (NSString)outputType;
- (PPKMarkupViewController)init;
- (PPKMarkupViewController)initWithCoder:(id)coder;
- (PPKMarkupViewController)initWithImageAnalysisEnabled:(BOOL)enabled;
- (UIEdgeInsets)activeMinimumContentInsetsForTraitCollection:(id)collection;
- (UIFindInteraction)_findInteraction;
- (UIScrollView)contentViewScrollView;
- (UTType)outputContentType;
- (id)createArchivedModelData;
- (id)dataRepresentationWithError:(id *)error;
- (id)undoManager;
- (unint64_t)currentPDFPageIndex;
- (void)_ppkMarkupViewControllerCommonInit;
- (void)_setFindInteractionEnabled:(BOOL)enabled;
- (void)loadWithData:(id)data archivedModelData:(id)modelData placeholderImage:(id)image completionHandler:(id)handler;
- (void)loadWithURL:(id)l archivedModelData:(id)data placeholderImage:(id)image completionHandler:(id)handler;
- (void)markupContainerViewController:(id)controller wantsToEnterFullscreen:(BOOL)fullscreen;
- (void)redo:(id)redo;
- (void)revert;
- (void)setAllEditingDisabled:(BOOL)disabled;
- (void)setAnnotationEditingEnabled:(BOOL)enabled;
- (void)setBackgroundColor:(id)color;
- (void)setCurrentPDFPageIndex:(unint64_t)index;
- (void)setEncryptPrivateMetadata:(BOOL)metadata;
- (void)setFormFillingEnabled:(BOOL)enabled;
- (void)setFormFillingEnabled:(BOOL)enabled didUseBanner:(BOOL)banner;
- (void)setImageDescription:(id)description;
- (void)setPencilAlwaysDraws:(BOOL)draws;
- (void)setShowThumbnailViewForMultipage:(BOOL)multipage;
- (void)setToolbarHidden:(BOOL)hidden;
- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)undo:(id)undo;
- (void)updateContentInsets;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewSafeAreaInsetsDidChange;
- (void)writeToURL:(id)l embeddingSourceImageAndEditModel:(BOOL)model contentType:(id)type options:(id)options completionHandler:(id)handler;
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

- (PPKMarkupViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PPKMarkupViewController;
  v3 = [(PPKMarkupViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PPKMarkupViewController *)v3 _ppkMarkupViewControllerCommonInit];
  }

  return v4;
}

- (PPKMarkupViewController)initWithImageAnalysisEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = [(PPKMarkupViewController *)self init];
  v5 = v4;
  if (v4)
  {
    markupContainerVC = [(PPKMarkupViewController *)v4 markupContainerVC];
    [markupContainerVC setIsImageAnalysisEnabled:enabledCopy];
  }

  return v5;
}

- (void)_ppkMarkupViewControllerCommonInit
{
  v3 = objc_alloc_init(PPKMarkupContainerViewController);
  [(PPKMarkupViewController *)self setMarkupContainerVC:v3];

  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setDelegate:self];
}

- (void)viewDidLoad
{
  v28[4] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PPKMarkupViewController;
  [(PPKMarkupViewController *)&v26 viewDidLoad];
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [(PPKMarkupViewController *)self addChildViewController:markupContainerVC];

  view = [(PPKMarkupViewController *)self view];
  markupContainerVC2 = [(PPKMarkupViewController *)self markupContainerVC];
  view2 = [markupContainerVC2 view];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:view2];
  topAnchor = [view2 topAnchor];
  topAnchor2 = [view topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[0] = v22;
  bottomAnchor = [view2 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v28[1] = v7;
  leadingAnchor = [view2 leadingAnchor];
  v25 = view;
  leadingAnchor2 = [view leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v28[2] = v10;
  trailingAnchor = [view2 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v28[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  [(PPKMarkupViewController *)self setFullViewLayoutConstraints:v14];

  v15 = MEMORY[0x1E696ACD8];
  fullViewLayoutConstraints = [(PPKMarkupViewController *)self fullViewLayoutConstraints];
  [v15 activateConstraints:fullViewLayoutConstraints];

  markupContainerVC3 = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC3 didMoveToParentViewController:self];

  [(PPKMarkupViewController *)self updateContentInsets];
  v27 = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v19 = [(PPKMarkupViewController *)self registerForTraitChanges:v18 withAction:sel_horizontalSizeClassDidChange];
}

- (BOOL)canBecomeFirstResponder
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  documentIsLocked = [markupContainerVC documentIsLocked];

  if (documentIsLocked)
  {
    return 0;
  }

  delegate = [(PPKMarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    canBecomeFirstResponder = [delegate controllerCanBecomeFirstResponder:self];
  }

  else
  {
    markupContainerVC2 = [(PPKMarkupViewController *)self markupContainerVC];
    canBecomeFirstResponder = [markupContainerVC2 canBecomeFirstResponder];
  }

  return canBecomeFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  becomeFirstResponder = [markupContainerVC becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)canResignFirstResponder
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  canResignFirstResponder = [markupContainerVC canResignFirstResponder];

  return canResignFirstResponder;
}

- (BOOL)resignFirstResponder
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  resignFirstResponder = [markupContainerVC resignFirstResponder];

  return resignFirstResponder;
}

- (UIFindInteraction)_findInteraction
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  findInteraction = [markupContainerVC findInteraction];

  return findInteraction;
}

- (void)_setFindInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setFindInteractionEnabled:enabledCopy];
}

- (BOOL)_findInteractionEnabled
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  findInteractionEnabled = [markupContainerVC findInteractionEnabled];

  return findInteractionEnabled;
}

- (void)loadWithData:(id)data archivedModelData:(id)modelData placeholderImage:(id)image completionHandler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  modelDataCopy = modelData;
  dataCopy = data;
  v14 = [PPKMarkupViewController _contentTypeForData:dataCopy];
  [(PPKMarkupViewController *)self setSourceContentType:v14];

  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__PPKMarkupViewController_loadWithData_archivedModelData_placeholderImage_completionHandler___block_invoke;
  v17[3] = &unk_1E845C0C8;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [markupContainerVC loadFromData:dataCopy with:modelDataCopy placeholderImage:imageCopy completionHandler:v17];
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

- (void)loadWithURL:(id)l archivedModelData:(id)data placeholderImage:(id)image completionHandler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  dataCopy = data;
  lCopy = l;
  v14 = [PPKMarkupViewController _contentTypeForURL:lCopy];
  [(PPKMarkupViewController *)self setSourceContentType:v14];

  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__PPKMarkupViewController_loadWithURL_archivedModelData_placeholderImage_completionHandler___block_invoke;
  v17[3] = &unk_1E845C0C8;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [markupContainerVC loadFromURL:lCopy with:dataCopy placeholderImage:imageCopy completionHandler:v17];
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

- (BOOL)writeToURL:(id)l options:(id)options error:(id *)error
{
  optionsCopy = options;
  lCopy = l;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  outputContentType = [(PPKMarkupViewController *)self outputContentType];
  LOBYTE(error) = [markupContainerVC writeTo:lCopy imageType:outputContentType error:error embeddingSourceImageAndEditModel:1 options:optionsCopy];

  return error;
}

- (BOOL)writeToURL:(id)l embeddingSourceImageAndEditModel:(BOOL)model error:(id *)error
{
  modelCopy = model;
  lCopy = l;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  outputContentType = [(PPKMarkupViewController *)self outputContentType];
  LOBYTE(error) = [markupContainerVC writeTo:lCopy imageType:outputContentType error:error embeddingSourceImageAndEditModel:modelCopy];

  return error;
}

- (BOOL)writeToURL:(id)l embeddingSourceImageAndEditModel:(BOOL)model contentType:(id)type error:(id *)error
{
  modelCopy = model;
  typeCopy = type;
  lCopy = l;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  LOBYTE(error) = [markupContainerVC writeTo:lCopy imageType:typeCopy error:error embeddingSourceImageAndEditModel:modelCopy];

  return error;
}

- (void)writeToURL:(id)l embeddingSourceImageAndEditModel:(BOOL)model contentType:(id)type options:(id)options completionHandler:(id)handler
{
  modelCopy = model;
  handlerCopy = handler;
  optionsCopy = options;
  typeCopy = type;
  lCopy = l;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC writeTo:lCopy imageType:typeCopy embeddingSourceImageAndEditModel:modelCopy options:optionsCopy completionHandler:handlerCopy];
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  lCopy = l;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  outputContentType = [(PPKMarkupViewController *)self outputContentType];
  LOBYTE(error) = [markupContainerVC writeTo:lCopy imageType:outputContentType error:error embeddingSourceImageAndEditModel:1];

  return error;
}

- (id)dataRepresentationWithError:(id *)error
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  v5 = [markupContainerVC dataRepresentationWithError:error];

  return v5;
}

- (id)createArchivedModelData
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  archivedModelData = [markupContainerVC archivedModelData];

  return archivedModelData;
}

- (BOOL)encryptPrivateMetadata
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  encryptPrivateMetadata = [markupContainerVC encryptPrivateMetadata];

  return encryptPrivateMetadata;
}

- (void)setEncryptPrivateMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setEncryptPrivateMetadata:metadataCopy];

  self->_encryptPrivateMetadata = metadataCopy;
}

- (UIScrollView)contentViewScrollView
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  contentViewScrollView = [markupContainerVC contentViewScrollView];

  return contentViewScrollView;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setBackgroundColor:colorCopy];
}

- (BOOL)annotationEditingEnabled
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  annotationEditingEnabled = [markupContainerVC annotationEditingEnabled];

  return annotationEditingEnabled;
}

- (BOOL)_hasPDFContent
{
  sourceContentType = [(PPKMarkupViewController *)self sourceContentType];
  v3 = [sourceContentType conformsToType:*MEMORY[0x1E6982F10]];

  return v3;
}

- (BOOL)needsToolPickerContentInsetActiveForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(PPKMarkupViewController *)self annotationEditingEnabled])
  {
    if ([collectionCopy userInterfaceIdiom])
    {
      v5 = [collectionCopy horizontalSizeClass] == 1;
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
  traitCollection = [(PPKMarkupViewController *)self traitCollection];
  [(PPKMarkupViewController *)self activeMinimumContentInsetsForTraitCollection:traitCollection];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setMinimumContentInsets:{v5, v7, v9, v11}];
}

- (UIEdgeInsets)activeMinimumContentInsetsForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(PPKMarkupViewController *)self annotationEditingEnabled])
  {
    view = [(PPKMarkupViewController *)self view];
    [view safeAreaInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    if ([(PPKMarkupViewController *)self needsToolPickerContentInsetActiveForTraitCollection:collectionCopy])
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
  traitCollection = [(PPKMarkupViewController *)self traitCollection];
  [(PPKMarkupViewController *)self activeMinimumContentInsetsForTraitCollection:traitCollection];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setMinimumContentInsets:{v5, v7, v9, v11}];

  v14 = *MEMORY[0x1E69DDCE0];
  v13 = *(MEMORY[0x1E69DDCE0] + 8);
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  v15 = *(MEMORY[0x1E69DDCE0] + 24);
  markupContainerVC2 = [(PPKMarkupViewController *)self markupContainerVC];
  if ([markupContainerVC2 annotationEditingEnabled])
  {
    traitCollection2 = [(PPKMarkupViewController *)self traitCollection];
    v19 = [(PPKMarkupViewController *)self needsToolPickerContentInsetActiveForTraitCollection:traitCollection2];

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

  markupContainerVC3 = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC3 setAdditionalSafeAreaInsets:{v14, v13, v16, v15}];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = PPKMarkupViewController;
  [(PPKMarkupViewController *)&v4 viewIsAppearing:appearing];
  [(PPKMarkupViewController *)self updateContentInsets];
}

- (void)setAnnotationEditingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setAnnotationEditingEnabled:enabledCopy];

  [(PPKMarkupViewController *)self updateContentInsets];
}

- (void)setFormFillingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setFormFillingEnabled:enabledCopy];
}

- (void)setFormFillingEnabled:(BOOL)enabled didUseBanner:(BOOL)banner
{
  bannerCopy = banner;
  enabledCopy = enabled;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setFormFillingEnabled:enabledCopy didUseBanner:bannerCopy];
}

- (BOOL)formFillingEnabled
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  formFillingEnabled = [markupContainerVC formFillingEnabled];

  return formFillingEnabled;
}

- (BOOL)toolbarHidden
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  toolbarHidden = [markupContainerVC toolbarHidden];

  return toolbarHidden;
}

- (void)setToolbarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setToolbarHidden:hiddenCopy];
}

- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated
{
  hiddenCopy = hidden;
  v5 = [(PPKMarkupViewController *)self markupContainerVC:hidden];
  [v5 setToolbarHidden:hiddenCopy];
}

- (unint64_t)currentPDFPageIndex
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  currentPDFPageIndex = [markupContainerVC currentPDFPageIndex];

  return currentPDFPageIndex;
}

- (void)setCurrentPDFPageIndex:(unint64_t)index
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setCurrentPDFPageIndex:index];
}

- (BOOL)pencilAlwaysDraws
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  pencilAlwaysDraws = [markupContainerVC pencilAlwaysDraws];

  return pencilAlwaysDraws;
}

- (void)setPencilAlwaysDraws:(BOOL)draws
{
  drawsCopy = draws;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setPencilAlwaysDraws:drawsCopy];
}

+ (id)supportedOutputTypes
{
  v13[4] = *MEMORY[0x1E69E9840];
  identifier = [*MEMORY[0x1E6982F10] identifier];
  v13[0] = identifier;
  identifier2 = [*MEMORY[0x1E6982E58] identifier];
  v13[1] = identifier2;
  identifier3 = [*MEMORY[0x1E6982F28] identifier];
  v13[2] = identifier3;
  identifier4 = [*MEMORY[0x1E6983008] identifier];
  v13[3] = identifier4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];

  if (_os_feature_enabled_impl())
  {
    identifier5 = [*MEMORY[0x1E6982E00] identifier];
    v12[0] = identifier5;
    identifier6 = [*MEMORY[0x1E6982E10] identifier];
    v12[1] = identifier6;
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
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  undoManager = [markupContainerVC undoManager];

  return undoManager;
}

- (void)setAllEditingDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setAllEditingDisabled:disabledCopy];
}

- (UTType)outputContentType
{
  v3 = _os_feature_enabled_impl();
  sourceContentType = [(PPKMarkupViewController *)self sourceContentType];
  v5 = *MEMORY[0x1E6982F10];
  if ([sourceContentType conformsToType:*MEMORY[0x1E6982F10]])
  {
    goto LABEL_10;
  }

  v5 = *MEMORY[0x1E6982F28];
  if ([sourceContentType conformsToType:*MEMORY[0x1E6982F28]])
  {
    goto LABEL_10;
  }

  v5 = *MEMORY[0x1E6983008];
  if ([sourceContentType conformsToType:*MEMORY[0x1E6983008]])
  {
    goto LABEL_10;
  }

  v5 = *MEMORY[0x1E6982E58];
  if ([sourceContentType conformsToType:*MEMORY[0x1E6982E58]])
  {
    goto LABEL_10;
  }

  if (!v3 || (v6 = *MEMORY[0x1E6982E00], ([sourceContentType conformsToType:*MEMORY[0x1E6982E00]] & 1) == 0) && (v6 = *MEMORY[0x1E6982E10], (objc_msgSend(sourceContentType, "conformsToType:", *MEMORY[0x1E6982E10]) & 1) == 0))
  {
    if (![sourceContentType conformsToType:*MEMORY[0x1E6982E30]])
    {
      identifier = [sourceContentType identifier];
      NSLog(&cfstr_SNullOutputcon.isa, "[PPKMarkupViewController outputContentType]", identifier);

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
      markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
      shouldSaveHDRImage = [markupContainerVC shouldSaveHDRImage];

      markupContainerVC2 = [(PPKMarkupViewController *)self markupContainerVC];
      canChangeImageFileFormat = [markupContainerVC2 canChangeImageFileFormat];

      NSLog(&cfstr_MarkupConvertT.isa, shouldSaveHDRImage, canChangeImageFileFormat);
      if (shouldSaveHDRImage)
      {
        if (canChangeImageFileFormat)
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

+ (id)_contentTypeForImageSource:(CGImageSource *)source
{
  if (source)
  {
    v3 = CGImageSourceGetType(source);
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

+ (id)_contentTypeForURL:(id)l
{
  v3 = CGImageSourceCreateWithURL(l, 0);
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

+ (id)_contentTypeForData:(id)data
{
  v3 = CGImageSourceCreateWithData(data, 0);
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
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = self->_hostProcessBundleIdentifier;
    self->_hostProcessBundleIdentifier = bundleIdentifier;

    hostProcessBundleIdentifier = self->_hostProcessBundleIdentifier;
  }

  return hostProcessBundleIdentifier;
}

+ (id)cleanImageMetadataFromData:(id)data
{
  dataCopy = data;
  v4 = [getMUImageReaderClass() cleanImageMetadataFromData:dataCopy];

  return v4;
}

+ (BOOL)hasPrivateImageMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [getMUImageReaderClass() hasPrivateImageMetadata:metadataCopy];

  return v4;
}

- (BOOL)isTouchInThumbnailView:(id)view
{
  viewCopy = view;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  v6 = [markupContainerVC isTouchInThumbnailView:viewCopy];

  return v6;
}

- (void)setShowThumbnailViewForMultipage:(BOOL)multipage
{
  multipageCopy = multipage;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setShowThumbnailViewForMultipage:multipageCopy];
}

- (BOOL)showThumbnailViewForMultipage
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  showThumbnailViewForMultipage = [markupContainerVC showThumbnailViewForMultipage];

  return showThumbnailViewForMultipage;
}

- (void)setImageDescription:(id)description
{
  descriptionCopy = description;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC setImageDescription:descriptionCopy];
}

- (NSString)imageDescription
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  imageDescription = [markupContainerVC imageDescription];

  return imageDescription;
}

- (BOOL)validateRedo:(id)redo
{
  redoCopy = redo;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  v6 = [markupContainerVC validateRedo:redoCopy];

  return v6;
}

- (BOOL)validateUndo:(id)undo
{
  undoCopy = undo;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  v6 = [markupContainerVC validateUndo:undoCopy];

  return v6;
}

- (void)undo:(id)undo
{
  undoCopy = undo;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC undo:undoCopy];
}

- (void)redo:(id)redo
{
  redoCopy = redo;
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC redo:redoCopy];
}

- (void)revert
{
  markupContainerVC = [(PPKMarkupViewController *)self markupContainerVC];
  [markupContainerVC revert:0];
}

- (BOOL)markupContainerViewController:(id)controller shouldOpenLink:(id)link
{
  linkCopy = link;
  delegate = [(PPKMarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate controller:self shouldOpenLinkAtURL:linkCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)markupContainerViewController:(id)controller wantsToEnterFullscreen:(BOOL)fullscreen
{
  fullscreenCopy = fullscreen;
  delegate = [(PPKMarkupViewController *)self delegate];
  v7 = delegate;
  if (delegate)
  {
    v9 = delegate;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 markupViewController:self didChangeShowingSignaturesUI:fullscreenCopy];
      v7 = v9;
    }
  }
}

- (NSString)outputType
{
  outputContentType = [(PPKMarkupViewController *)self outputContentType];
  identifier = [outputContentType identifier];

  return identifier;
}

- (MarkupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end