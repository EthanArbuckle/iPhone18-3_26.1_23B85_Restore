@interface PKDataDetectorItem
+ (id)dataDetectorItemWithQueryItem:(id)a3 sessionManager:(id)a4;
- (BOOL)isEqual:(id)a3;
- (DDScannerResult)scannerResult;
- (PKDataDetectorItemDelegate)delegate;
- (__DDResult)coreResult;
- (id)_baselinePath;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewInContainerView:(id)a5 frame:(CGRect)a6;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4 view:(id)a5 identifier:(id)a6 sourceRect:(CGRect)a7;
- (id)drawing;
- (id)strokeColor;
- (id)updatedDataDetectorContextForView:(id)a3 sourceRect:(CGRect)a4;
- (unint64_t)hash;
- (void)_highlightForView:(id)a3 viewTransform:(CGAffineTransform *)a4 drawingTransform:(CGAffineTransform *)a5 highlightTransform:(CGAffineTransform *)a6 completion:(id)a7;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)handleTapForMenuForInteraction:(id)a3 location:(CGPoint)a4 view:(id)a5 viewTransform:(CGAffineTransform *)a6 drawingTransform:(CGAffineTransform *)a7;
- (void)handleTapForMenuForInteraction:(id)a3 location:(CGPoint)a4 view:(id)a5 viewTransform:(CGAffineTransform *)a6 drawingTransform:(CGAffineTransform *)a7 highlightTransform:(CGAffineTransform *)a8 sourceRect:(CGRect)a9;
@end

@implementation PKDataDetectorItem

+ (id)dataDetectorItemWithQueryItem:(id)a3 sessionManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 strokeIdentifiers];
  v8 = [(PKRecognitionSessionManager *)v6 drawing];
  valid = HasValidInkForDetectionItem(v7, v8);

  if (valid)
  {
    v10 = [(PKDetectionItem *)[PKDataDetectorItem alloc] initWithSessionManager:v6];
    [(PKDetectionItem *)v10 setQueryItem:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)drawing
{
  v2 = [(PKDetectionItem *)self sessionManager];
  v3 = [(PKRecognitionSessionManager *)v2 drawing];

  return v3;
}

- (id)_baselinePath
{
  v2 = [(PKDetectionItem *)self queryItem];
  v3 = [v2 baselinePath];

  return v3;
}

- (id)strokeColor
{
  v3 = [(PKDataDetectorItem *)self scannerResult];
  v4 = [v3 coreResult];
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
    v6 = v5(v4, 0);

    if (v6)
    {
      v7 = [(PKDetectionItem *)self inkColor];

      if (!v7)
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
      v10 = [(PKDetectionItem *)self inkColor];
      v11 = [v8 lightUnderlineColorFromTextColor:v10];
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
  v2 = [(PKDetectionItem *)self queryItem];
  v3 = [v2 scannerResult];

  return v3;
}

- (__DDResult)coreResult
{
  v2 = [(PKDetectionItem *)self queryItem];
  v3 = [v2 scannerResult];
  v4 = [v3 coreResult];

  return v4;
}

- (unint64_t)hash
{
  v2 = [(PKDetectionItem *)self queryItem];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKDetectionItem *)self queryItem];
      v6 = [(PKDetectionItem *)v4 queryItem];
      v7 = [v5 isEqual:v6];
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

- (id)updatedDataDetectorContextForView:(id)a3 sourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [(PKDataDetectorItem *)self delegate];
  v12 = [v11 dataDetectorItemAllItems:self];

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

  v15 = [(PKDataDetectorItem *)self scannerResult];
  v16 = [v15 value];
  v17 = [v16 length];

  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = [(PKDataDetectorItem *)self scannerResult];
  v19 = [v18 value];
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

  [v10 setObject:v19 forKeyedSubscript:*v20];

LABEL_11:
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  if (CGRectIsEmpty(v34))
  {
    [v9 bounds];
    x = v22;
    y = v23;
    width = v24;
    height = v25;
  }

  v26 = [getDDContextMenuActionClass() updateContext:v10 withSourceRect:{x, y, width, height}];

  return v26;
}

- (void)handleTapForMenuForInteraction:(id)a3 location:(CGPoint)a4 view:(id)a5 viewTransform:(CGAffineTransform *)a6 drawingTransform:(CGAffineTransform *)a7
{
  v7 = *&a6->c;
  v12[0] = *&a6->a;
  v12[1] = v7;
  v12[2] = *&a6->tx;
  v8 = *&a7->c;
  v11[0] = *&a7->a;
  v11[1] = v8;
  v11[2] = *&a7->tx;
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  v10[0] = *MEMORY[0x1E695EFD0];
  v10[1] = v9;
  v10[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PKDataDetectorItem *)self handleTapForMenuForInteraction:a3 location:a5 view:v12 viewTransform:v11 drawingTransform:v10 highlightTransform:a4.x sourceRect:a4.y, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
}

- (void)handleTapForMenuForInteraction:(id)a3 location:(CGPoint)a4 view:(id)a5 viewTransform:(CGAffineTransform *)a6 drawingTransform:(CGAffineTransform *)a7 highlightTransform:(CGAffineTransform *)a8 sourceRect:(CGRect)a9
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v17 = a4.y;
  v18 = a4.x;
  v20 = a3;
  v21 = a5;
  objc_initWeak(&location, self);
  v22 = [(PKDataDetectorItem *)self updatedDataDetectorContextForView:v21 sourceRect:x, y, width, height];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __148__PKDataDetectorItem_InteractionSupport__handleTapForMenuForInteraction_location_view_viewTransform_drawingTransform_highlightTransform_sourceRect___block_invoke;
  v32[3] = &unk_1E82DAE30;
  objc_copyWeak(v36, &location);
  v23 = v21;
  v33 = v23;
  v36[1] = *&v18;
  v36[2] = *&v17;
  v24 = v20;
  v34 = v24;
  v25 = v22;
  v35 = v25;
  v26 = *&a6->c;
  v31[0] = *&a6->a;
  v31[1] = v26;
  v31[2] = *&a6->tx;
  v27 = *&a7->c;
  v30[0] = *&a7->a;
  v30[1] = v27;
  v30[2] = *&a7->tx;
  v28 = *&a8->c;
  v29[0] = *&a8->a;
  v29[1] = v28;
  v29[2] = *&a8->tx;
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

- (void)_highlightForView:(id)a3 viewTransform:(CGAffineTransform *)a4 drawingTransform:(CGAffineTransform *)a5 highlightTransform:(CGAffineTransform *)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a7;
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
  v14 = [(PKDetectionItem *)self itemSpaceBaselinePath];
  v15 = [v14 CGPath];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__PKDataDetectorItem_InteractionSupport___highlightForView_viewTransform_drawingTransform_highlightTransform_completion___block_invoke;
  block[3] = &unk_1E82DAE58;
  block[4] = &v46;
  block[5] = &v40;
  CGPathApplyWithBlock(v15, block);

  v16 = [(PKDetectionItem *)self itemSpaceBoundsPath];
  v17 = [v16 copy];

  v18 = *&a5->c;
  *&v38.a = *&a5->a;
  *&v38.c = v18;
  *&v38.tx = *&a5->tx;
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
  v25 = *&a4->c;
  *&v38.a = *&a4->a;
  *&v38.c = v25;
  *&v38.tx = *&a4->tx;
  v53 = CGRectApplyAffineTransform(v52, &v38);
  v26 = *&a6->c;
  *&v38.a = *&a6->a;
  *&v38.c = v26;
  *&v38.tx = *&a6->tx;
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

  [v12 addSubview:v27];
  v31 = dispatch_time(0, 100000000);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __121__PKDataDetectorItem_InteractionSupport___highlightForView_viewTransform_drawingTransform_highlightTransform_completion___block_invoke_2;
  v34[3] = &unk_1E82D7AE8;
  v35 = v27;
  v36 = v13;
  v32 = v13;
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

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4 view:(id)a5 identifier:(id)a6 sourceRect:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v13 = a6;
  v14 = a5;
  DDContextMenuActionClass = getDDContextMenuActionClass();
  v16 = [(PKDataDetectorItem *)self scannerResult];
  v17 = [v16 coreResult];
  v18 = [(PKDataDetectorItem *)self updatedDataDetectorContextForView:v14 sourceRect:x, y, width, height];
  v19 = [DDContextMenuActionClass contextMenuConfigurationWithResult:v17 inView:v14 context:v18 menuIdentifier:v13];

  return v19;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewInContainerView:(id)a5 frame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a5;
  v12 = [(PKDetectionItem *)self image];
  v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v12];
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
  v18 = [objc_alloc(MEMORY[0x1E69DCE38]) initWithContainer:v11 center:{MidX, MidY}];

  v19 = [v16 initWithView:v13 parameters:v17 target:v18];

  return v19;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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
    [v8 performPreviewActionForMenuWithAnimator:v9];
  }
}

@end