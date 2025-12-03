@interface PKDataDetectorItem
+ (id)dataDetectorItemWithQueryItem:(id)item sessionManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (DDScannerResult)scannerResult;
- (PKDataDetectorItemDelegate)delegate;
- (__DDResult)coreResult;
- (id)_baselinePath;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewInContainerView:(id)view frame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location view:(id)view identifier:(id)identifier sourceRect:(CGRect)rect;
- (id)drawing;
- (id)strokeColor;
- (id)updatedDataDetectorContextForView:(id)view sourceRect:(CGRect)rect;
- (unint64_t)hash;
- (void)_highlightForView:(id)view viewTransform:(CGAffineTransform *)transform drawingTransform:(CGAffineTransform *)drawingTransform highlightTransform:(CGAffineTransform *)highlightTransform completion:(id)completion;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)handleTapForMenuForInteraction:(id)interaction location:(CGPoint)location view:(id)view viewTransform:(CGAffineTransform *)transform drawingTransform:(CGAffineTransform *)drawingTransform;
- (void)handleTapForMenuForInteraction:(id)interaction location:(CGPoint)location view:(id)view viewTransform:(CGAffineTransform *)transform drawingTransform:(CGAffineTransform *)drawingTransform highlightTransform:(CGAffineTransform *)highlightTransform sourceRect:(CGRect)rect;
@end

@implementation PKDataDetectorItem

+ (id)dataDetectorItemWithQueryItem:(id)item sessionManager:(id)manager
{
  itemCopy = item;
  managerCopy = manager;
  strokeIdentifiers = [itemCopy strokeIdentifiers];
  drawing = [(PKRecognitionSessionManager *)managerCopy drawing];
  valid = HasValidInkForDetectionItem(strokeIdentifiers, drawing);

  if (valid)
  {
    v10 = [(PKDetectionItem *)[PKDataDetectorItem alloc] initWithSessionManager:managerCopy];
    [(PKDetectionItem *)v10 setQueryItem:itemCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)drawing
{
  sessionManager = [(PKDetectionItem *)self sessionManager];
  drawing = [(PKRecognitionSessionManager *)sessionManager drawing];

  return drawing;
}

- (id)_baselinePath
{
  queryItem = [(PKDetectionItem *)self queryItem];
  baselinePath = [queryItem baselinePath];

  return baselinePath;
}

- (id)strokeColor
{
  scannerResult = [(PKDataDetectorItem *)self scannerResult];
  coreResult = [scannerResult coreResult];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v5 = _MergedGlobals_152;
  v21 = _MergedGlobals_152;
  if (!_MergedGlobals_152)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = ___ZL42getDDShouldUseLightLinksForResultSymbolLocv_block_invoke;
    v16 = &unk_1E82D97A8;
    v17 = &v18;
    ___ZL42getDDShouldUseLightLinksForResultSymbolLocv_block_invoke(&v13);
    v5 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (v5)
  {
    v6 = v5(coreResult, 0);

    if (v6)
    {
      inkColor = [(PKDetectionItem *)self inkColor];

      if (!inkColor)
      {
        [(PKDetectionItem *)self _generatePaths];
      }

      v18 = 0;
      v19 = &v18;
      v20 = 0x2050000000;
      v8 = qword_1ED6A5238;
      v21 = qword_1ED6A5238;
      if (!qword_1ED6A5238)
      {
        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = ___ZL29getDDDetectionControllerClassv_block_invoke;
        v16 = &unk_1E82D97A8;
        v17 = &v18;
        ___ZL29getDDDetectionControllerClassv_block_invoke(&v13);
        v8 = v19[3];
      }

      v9 = v8;
      _Block_object_dispose(&v18, 8);
      inkColor2 = [(PKDetectionItem *)self inkColor];
      v11 = [v8 lightUnderlineColorFromTextColor:inkColor2];
    }

    else
    {
      v11 = 0;
    }

    return v11;
  }

  else
  {
    dlerror();
    result = abort_report_np();
    __break(1u);
  }

  return result;
}

- (DDScannerResult)scannerResult
{
  queryItem = [(PKDetectionItem *)self queryItem];
  scannerResult = [queryItem scannerResult];

  return scannerResult;
}

- (__DDResult)coreResult
{
  queryItem = [(PKDetectionItem *)self queryItem];
  scannerResult = [queryItem scannerResult];
  coreResult = [scannerResult coreResult];

  return coreResult;
}

- (unint64_t)hash
{
  queryItem = [(PKDetectionItem *)self queryItem];
  v3 = [queryItem hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      queryItem = [(PKDetectionItem *)self queryItem];
      queryItem2 = [(PKDetectionItem *)equalCopy queryItem];
      v7 = [queryItem isEqual:queryItem2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (PKDataDetectorItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)updatedDataDetectorContextForView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  v10 = objc_opt_new();
  delegate = [(PKDataDetectorItem *)self delegate];
  v12 = [delegate dataDetectorItemAllItems:self];

  if (v12)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v13 = _MergedGlobals_156;
    v32 = _MergedGlobals_156;
    if (!_MergedGlobals_156)
    {
      v14 = DataDetectorsUILibrary();
      v30[3] = dlsym(v14, "kDataDetectorsAllResultsKey");
      _MergedGlobals_156 = v30[3];
      v13 = v30[3];
    }

    _Block_object_dispose(&v29, 8);
    if (!v13)
    {
      goto LABEL_16;
    }

    [v10 setObject:v12 forKeyedSubscript:*v13];
  }

  scannerResult = [(PKDataDetectorItem *)self scannerResult];
  value = [scannerResult value];
  v17 = [value length];

  if (!v17)
  {
    goto LABEL_11;
  }

  scannerResult2 = [(PKDataDetectorItem *)self scannerResult];
  value2 = [scannerResult2 value];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v20 = qword_1ED6A52A0;
  v32 = qword_1ED6A52A0;
  if (!qword_1ED6A52A0)
  {
    v21 = DataDetectorsUILibrary();
    v30[3] = dlsym(v21, "kDataDetectorsMiddleText");
    qword_1ED6A52A0 = v30[3];
    v20 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v20)
  {
LABEL_16:
    dlerror();
    v28 = abort_report_np();
    _Block_object_dispose(&v29, 8);
    _Unwind_Resume(v28);
  }

  [v10 setObject:value2 forKeyedSubscript:*v20];

LABEL_11:
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  if (CGRectIsEmpty(v34))
  {
    [viewCopy bounds];
    x = v22;
    y = v23;
    width = v24;
    height = v25;
  }

  v26 = [getDDContextMenuActionClass() updateContext:v10 withSourceRect:{x, y, width, height}];

  return v26;
}

- (void)handleTapForMenuForInteraction:(id)interaction location:(CGPoint)location view:(id)view viewTransform:(CGAffineTransform *)transform drawingTransform:(CGAffineTransform *)drawingTransform
{
  v7 = *&transform->c;
  v12[0] = *&transform->a;
  v12[1] = v7;
  v12[2] = *&transform->tx;
  v8 = *&drawingTransform->c;
  v11[0] = *&drawingTransform->a;
  v11[1] = v8;
  v11[2] = *&drawingTransform->tx;
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  v10[0] = *MEMORY[0x1E695EFD0];
  v10[1] = v9;
  v10[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PKDataDetectorItem *)self handleTapForMenuForInteraction:interaction location:view view:v12 viewTransform:v11 drawingTransform:v10 highlightTransform:location.x sourceRect:location.y, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
}

- (void)handleTapForMenuForInteraction:(id)interaction location:(CGPoint)location view:(id)view viewTransform:(CGAffineTransform *)transform drawingTransform:(CGAffineTransform *)drawingTransform highlightTransform:(CGAffineTransform *)highlightTransform sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v17 = location.y;
  v18 = location.x;
  interactionCopy = interaction;
  viewCopy = view;
  objc_initWeak(&location, self);
  height = [(PKDataDetectorItem *)self updatedDataDetectorContextForView:viewCopy sourceRect:x, y, width, height];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __148__PKDataDetectorItem_InteractionSupport__handleTapForMenuForInteraction_location_view_viewTransform_drawingTransform_highlightTransform_sourceRect___block_invoke;
  v32[3] = &unk_1E82DAE30;
  objc_copyWeak(v36, &location);
  v23 = viewCopy;
  v33 = v23;
  v36[1] = *&v18;
  v36[2] = *&v17;
  v24 = interactionCopy;
  v34 = v24;
  v25 = height;
  v35 = v25;
  v26 = *&transform->c;
  v31[0] = *&transform->a;
  v31[1] = v26;
  v31[2] = *&transform->tx;
  v27 = *&drawingTransform->c;
  v30[0] = *&drawingTransform->a;
  v30[1] = v27;
  v30[2] = *&drawingTransform->tx;
  v28 = *&highlightTransform->c;
  v29[0] = *&highlightTransform->a;
  v29[1] = v28;
  v29[2] = *&highlightTransform->tx;
  [(PKDataDetectorItem *)self _highlightForView:v23 viewTransform:v31 drawingTransform:v30 highlightTransform:v29 completion:v32];

  objc_destroyWeak(v36);
  objc_destroyWeak(&location);
}

void __148__PKDataDetectorItem_InteractionSupport__handleTapForMenuForInteraction_location_view_viewTransform_drawingTransform_highlightTransform_sourceRect___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    DDContextMenuActionClass = getDDContextMenuActionClass();
    v4 = [v5 scannerResult];
    [DDContextMenuActionClass performDefaultActionWithResult:objc_msgSend(v4 inView:"coreResult") atLocation:*(a1 + 32) withMenuInteraction:*(a1 + 40) context:{*(a1 + 48), *(a1 + 64), *(a1 + 72)}];

    WeakRetained = v5;
  }
}

- (void)_highlightForView:(id)view viewTransform:(CGAffineTransform *)transform drawingTransform:(CGAffineTransform *)drawingTransform highlightTransform:(CGAffineTransform *)highlightTransform completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3010000000;
  v50 = 0;
  v51 = 0;
  v49 = "";
  v40 = 0;
  v41 = &v40;
  v42 = 0x3010000000;
  v44 = 0;
  v45 = 0;
  v43 = "";
  itemSpaceBaselinePath = [(PKDetectionItem *)self itemSpaceBaselinePath];
  cGPath = [itemSpaceBaselinePath CGPath];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__PKDataDetectorItem_InteractionSupport___highlightForView_viewTransform_drawingTransform_highlightTransform_completion___block_invoke;
  block[3] = &unk_1E82DAE58;
  block[4] = &v46;
  block[5] = &v40;
  CGPathApplyWithBlock(cGPath, block);

  itemSpaceBoundsPath = [(PKDetectionItem *)self itemSpaceBoundsPath];
  v17 = [itemSpaceBoundsPath copy];

  v18 = *&drawingTransform->c;
  *&v38.a = *&drawingTransform->a;
  *&v38.c = v18;
  *&v38.tx = *&drawingTransform->tx;
  [v17 applyTransform:&v38];
  v19 = atan2(v41[5] - v47[5], v41[4] - v47[4]);
  v20 = fabs(v19);
  if (v20 > 0.157079633)
  {
    [v17 bounds];
    v22 = v21;
    v24 = v23;
    CGAffineTransformMakeTranslation(&v38, v21 * -0.5, v23 * -0.5);
    [v17 applyTransform:&v38];
    CGAffineTransformMakeRotation(&v38, -v19);
    [v17 applyTransform:&v38];
    CGAffineTransformMakeTranslation(&v38, v22 * 0.5, v24 * 0.5);
    [v17 applyTransform:&v38];
  }

  [v17 bounds];
  v25 = *&transform->c;
  *&v38.a = *&transform->a;
  *&v38.c = v25;
  *&v38.tx = *&transform->tx;
  v53 = CGRectApplyAffineTransform(v52, &v38);
  v26 = *&highlightTransform->c;
  *&v38.a = *&highlightTransform->a;
  *&v38.c = v26;
  *&v38.tx = *&highlightTransform->tx;
  v54 = CGRectApplyAffineTransform(v53, &v38);
  v27 = [objc_alloc(MEMORY[0x1E69DD500]) initWithFrame:{v54.origin.x, v54.origin.y, v54.size.width, v54.size.height}];
  [v27 setOpaque:0];
  if (v20 > 0.157079633)
  {
    CGAffineTransformMakeRotation(&v37, v19);
    v38 = v37;
    [v27 setTransform:&v38];
  }

  [v27 bounds];
  v29 = v28 * 0.5;
  if (v28 * 0.5 > 6.0)
  {
    v29 = 6.0;
  }

  [v27 setCornerRadius:v29];
  v30 = [MEMORY[0x1E69DC888] colorWithWhite:0.101960784 alpha:0.3];
  [v27 setColor:v30];

  [viewCopy addSubview:v27];
  v31 = dispatch_time(0, 100000000);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __121__PKDataDetectorItem_InteractionSupport___highlightForView_viewTransform_drawingTransform_highlightTransform_completion___block_invoke_2;
  v34[3] = &unk_1E82D7AE8;
  v35 = v27;
  v36 = completionCopy;
  v32 = completionCopy;
  v33 = v27;
  dispatch_after(v31, MEMORY[0x1E69E96A0], v34);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
}

uint64_t __121__PKDataDetectorItem_InteractionSupport___highlightForView_viewTransform_drawingTransform_highlightTransform_completion___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  if (*a2 > 1)
  {
    if (v2 == 2)
    {
      v4 = *(*(result + 40) + 8);
      v5 = *(*(a2 + 8) + 16);
      goto LABEL_12;
    }

    if (v2 == 3)
    {
      *(*(*(result + 40) + 8) + 32) = *(*(a2 + 8) + 32);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = *(result + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v3 = *(result + 40);
LABEL_10:
      v4 = *(v3 + 8);
      v5 = **(a2 + 8);
LABEL_12:
      *(v4 + 32) = v5;
    }
  }

  return result;
}

uint64_t __121__PKDataDetectorItem_InteractionSupport___highlightForView_viewTransform_drawingTransform_highlightTransform_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location view:(id)view identifier:(id)identifier sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  identifierCopy = identifier;
  viewCopy = view;
  DDContextMenuActionClass = getDDContextMenuActionClass();
  scannerResult = [(PKDataDetectorItem *)self scannerResult];
  coreResult = [scannerResult coreResult];
  height = [(PKDataDetectorItem *)self updatedDataDetectorContextForView:viewCopy sourceRect:x, y, width, height];
  v19 = [DDContextMenuActionClass contextMenuConfigurationWithResult:coreResult inView:viewCopy context:height menuIdentifier:identifierCopy];

  return v19;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewInContainerView:(id)view frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  image = [(PKDetectionItem *)self image];
  v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:image];
  [v13 setFrame:{0.0, 0.0, width, height}];
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidY = CGRectGetMidY(v23);
  v16 = objc_alloc(MEMORY[0x1E69DD070]);
  v17 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v18 = [objc_alloc(MEMORY[0x1E69DCE38]) initWithContainer:viewCopy center:{MidX, MidY}];

  v19 = [v16 initWithView:v13 parameters:v17 target:v18];

  return v19;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v10 = getDDContextMenuConfigurationClass_softClass;
  v16 = getDDContextMenuConfigurationClass_softClass;
  if (!getDDContextMenuConfigurationClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getDDContextMenuConfigurationClass_block_invoke;
    v12[3] = &unk_1E82D6498;
    v12[4] = &v13;
    __getDDContextMenuConfigurationClass_block_invoke(v12);
    v10 = v14[3];
  }

  v11 = v10;
  _Block_object_dispose(&v13, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [configurationCopy performPreviewActionForMenuWithAnimator:animatorCopy];
  }
}

@end