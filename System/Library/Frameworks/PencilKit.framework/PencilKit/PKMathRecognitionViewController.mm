@interface PKMathRecognitionViewController
- (PKMathRecognitionViewController)initWithController:(id)controller view:(id)view delegate:(id)delegate;
- (UIViewController)viewControllerForPresentingUI;
- (double)mathRecognitionControllerTimestampForLatestUserInteraction:(id)interaction;
- (id)adjustedSelectedStrokes:(id)strokes selectionPath:(id)path;
- (id)contextMenuController:(id)controller imageForItemUUID:(id)d;
- (id)drawing;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)hitTest:(CGPoint)test;
- (id)overlayDrawingController;
- (id)overlayViews;
- (id)recognitionManager;
- (id)resultViewForItemUUID:(id)d;
- (id)tiledView;
- (id)view;
- (uint64_t)_handleSingleTapAtDrawingLocation:(int)location fromHover:(CGFloat)hover fromTapStroke:(CGFloat)stroke;
- (uint64_t)cancelOpenPopoverForAddingGraph;
- (uint64_t)cancelOpenPopoverForHint;
- (void)_cleanupAfterScrubbing;
- (void)_cleanupTypesetViewController;
- (void)_commitSetShouldSolve:(uint64_t)solve undoable:(void *)undoable item:;
- (void)_emitMathUsageForItem:(uint64_t)item usage:(uint64_t)usage recognitionLatency:(uint64_t)latency synthesisLatency:(uint64_t)synthesisLatency hadOldResult:;
- (void)_imageViewForStrokes:(void *)strokes drawing:(void *)drawing completion:;
- (void)_presentResult:(void *)result mathItem:(void *)item defaultAnimationType:(int)type fromHint:(char)hint hadOldResult:;
- (void)_scrubVariable:(void *)variable item:(uint64_t)item openAsCompact:;
- (void)_sendUpdatedResult:(void *)result strokes:(void *)strokes uuid:;
- (void)_showDetectionAnimationForItem:(void *)item;
- (void)_triggerAlternativesMenuForToken:(uint64_t)token;
- (void)_triggerPopupToAddGraphForItem:(uint64_t)item;
- (void)_triggerPopupToSolveItem:(char)item supportCopy:;
- (void)_updateDrawingOverlayCache;
- (void)contextMenuController:(id)controller addGraphForItemUUID:(id)d addToExisting:(BOOL)existing graphableVariable:(id)variable;
- (void)contextMenuController:(id)controller dismissErrorForItem:(id)item token:(id)token;
- (void)contextMenuController:(id)controller removeResultForItemUUID:(id)d;
- (void)contextMenuController:(id)controller solveItemUUID:(id)d;
- (void)dealloc;
- (void)didBeginDrawing;
- (void)didEraseStrokes:(id)strokes;
- (void)dismissPopovers;
- (void)drawingTransform;
- (void)drawingTransformFromDelegate;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)eraserMovedToLocation:(CGPoint)location;
- (void)hideMathFloatingLabelView;
- (void)hideScrubber;
- (void)hoverController:(id)controller holdGestureMeanInputPoint:(id *)point latestInputPoint:(id *)inputPoint;
- (void)layoutSubviews;
- (void)mathRecognitionController:(id)controller didEraseStrokesInExpressions:(id)expressions;
- (void)mathRecognitionController:(id)controller didUpdateExpressions:(id)expressions newItems:(id)items removedItems:(id)removedItems mathItems:(id)mathItems;
- (void)mathRecognitionController:(id)controller solveStateChangedForExpressions:(id)expressions mathItems:(id)items;
- (void)mathResult:(id)result itemUUID:(id)d;
- (void)mathResultAttributionImage:(id)image darkModeImage:(id)modeImage string:(id)string date:(id)date itemUUID:(id)d;
- (void)openPopoverForAddingGraph;
- (void)openPopoverForHint;
- (void)overlayController:(id)controller imageViewForStrokes:(id)strokes completion:(id)completion;
- (void)overlayController:(id)controller willUpdateView:(id)view animationDuration:(double)duration;
- (void)redrawSubviews;
- (void)regenerateResultsIfNecessary;
- (void)registerRecentlyCreatedLocalStroke:(id)stroke;
- (void)removedFromView;
- (void)scrubberController:(id)controller valueDidChange:(id)change;
- (void)setContextMenuController:(uint64_t)controller;
- (void)setItemAttributes:(id)attributes forItemUUID:(id)d;
- (void)setItemAttributes:(void *)attributes forItem:;
- (void)setSolvingStyle:(int64_t)style;
- (void)setTokens:(id)tokens forItemUUID:(id)d graphable:(BOOL)graphable graphableVariables:(id)variables;
- (void)setTokens:(void *)tokens forItem:(int)item graphable:(void *)graphable graphableVariables:;
- (void)setupPreferredUpdatesIntervalForSolvingStyle:(uint64_t)style;
@end

@implementation PKMathRecognitionViewController

- (PKMathRecognitionViewController)initWithController:(id)controller view:(id)view delegate:(id)delegate
{
  v65 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewCopy = view;
  delegateCopy = delegate;
  v62.receiver = self;
  v62.super_class = PKMathRecognitionViewController;
  v12 = [(PKMathRecognitionViewController *)&v62 init];
  if (v12)
  {
    v13 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v64 = controllerCopy;
      _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Creating PKMathRecognitionViewController for: %p", buf, 0xCu);
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v12[105] = [standardUserDefaults BOOLForKey:@"internalSettings.drawing.disableMathAlternatives"];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v12[106] = [standardUserDefaults2 BOOLForKey:@"internalSettings.drawing.disableMathErrors"];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v17 = *(v12 + 2);
    *(v12 + 2) = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v19 = *(v12 + 4);
    *(v12 + 4) = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v21 = *(v12 + 3);
    *(v12 + 3) = dictionary3;

    [viewCopy bounds];
    *(v12 + 18) = v22;
    *(v12 + 19) = v23;
    *(v12 + 20) = v24;
    *(v12 + 21) = v25;
    v26 = [MEMORY[0x1E695DFA8] set];
    v27 = *(v12 + 22);
    *(v12 + 22) = v26;

    v28 = [MEMORY[0x1E695DFA8] set];
    v29 = *(v12 + 23);
    *(v12 + 23) = v28;

    [v12 setSolvingStyle:0];
    [v12 setShouldCacheDrawingForResults:1];
    objc_storeWeak(v12 + 30, delegateCopy);
    objc_storeWeak(v12 + 31, viewCopy);
    objc_storeStrong(v12 + 32, controller);
    effectiveUserInterfaceLayoutDirection = [viewCopy effectiveUserInterfaceLayoutDirection];
    if (controllerCopy)
    {
      controllerCopy[88] = effectiveUserInterfaceLayoutDirection == 1;
    }

    [*(v12 + 32) setDelegate:v12];
    v31 = (v12 + 192);
    if (objc_opt_respondsToSelector())
    {
      v32 = 8;
    }

    else
    {
      v32 = 0;
    }

    *v31 = *(v12 + 48) & 0xFFFFFFF7 | v32;
    *v31 = *v31 & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v33 = 16;
    }

    else
    {
      v33 = 0;
    }

    *v31 = *v31 & 0xFFFFFFEF | v33;
    if (objc_opt_respondsToSelector())
    {
      v34 = 2;
    }

    else
    {
      v34 = 0;
    }

    *v31 = *v31 & 0xFFFFFFFD | v34;
    if (objc_opt_respondsToSelector())
    {
      v35 = 4;
    }

    else
    {
      v35 = 0;
    }

    *v31 = *v31 & 0xFFFFFFFB | v35;
    if (objc_opt_respondsToSelector())
    {
      v36 = 32;
    }

    else
    {
      v36 = 0;
    }

    *v31 = *v31 & 0xFFFFFFDF | v36;
    if (objc_opt_respondsToSelector())
    {
      v37 = 64;
    }

    else
    {
      v37 = 0;
    }

    *v31 = *v31 & 0xFFFFFFBF | v37;
    if (objc_opt_respondsToSelector())
    {
      v38 = 128;
    }

    else
    {
      v38 = 0;
    }

    *v31 = *v31 & 0xFFFFFF7F | v38;
    if (objc_opt_respondsToSelector())
    {
      v39 = 256;
    }

    else
    {
      v39 = 0;
    }

    *v31 = *v31 & 0xFFFFFEFF | v39;
    if (objc_opt_respondsToSelector())
    {
      v40 = 512;
    }

    else
    {
      v40 = 0;
    }

    *v31 = *v31 & 0xFFFFFDFF | v40;
    if (objc_opt_respondsToSelector())
    {
      v41 = 1024;
    }

    else
    {
      v41 = 0;
    }

    *v31 = *v31 & 0xFFFFFBFF | v41;
    if (objc_opt_respondsToSelector())
    {
      v42 = 2048;
    }

    else
    {
      v42 = 0;
    }

    *v31 = *v31 & 0xFFFFF7FF | v42;
    if (objc_opt_respondsToSelector())
    {
      v43 = 4096;
    }

    else
    {
      v43 = 0;
    }

    *v31 = *v31 & 0xFFFFEFFF | v43;
    if (objc_opt_respondsToSelector())
    {
      v44 = 0x2000;
    }

    else
    {
      v44 = 0;
    }

    *v31 = *v31 & 0xFFFFDFFF | v44;
    v45 = objc_opt_respondsToSelector();
    v46 = *v31;
    if (v45)
    {
      v47 = 0x4000;
    }

    else
    {
      v47 = 0;
    }

    v48 = v46 & 0xFFFF3FFF | v47;
    v49 = (4 * v46) & 0x8000;
    if (v45)
    {
      v49 = 0x8000;
    }

    *v31 = v48 | v49;
    if (objc_opt_respondsToSelector())
    {
      v50 = 0x10000;
    }

    else
    {
      v50 = 0;
    }

    *v31 = *v31 & 0xFFFEFFFF | v50;
    if (objc_opt_respondsToSelector())
    {
      v51 = 0x20000;
    }

    else
    {
      v51 = 0;
    }

    *v31 = *v31 & 0xFFFDFFFF | v51;
    if (objc_opt_respondsToSelector())
    {
      v52 = 0x40000;
    }

    else
    {
      v52 = 0;
    }

    *v31 = *v31 & 0xFFFBFFFF | v52;
    if (objc_opt_respondsToSelector())
    {
      v53 = 0x80000;
    }

    else
    {
      v53 = 0;
    }

    *v31 = *v31 & 0xFFF7FFFF | v53;
    if (objc_opt_respondsToSelector())
    {
      v54 = 0x100000;
    }

    else
    {
      v54 = 0;
    }

    *v31 = *v31 & 0xFFEFFFFF | v54;
    objc_initWeak(buf, v12);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __68__PKMathRecognitionViewController_initWithController_view_delegate___block_invoke;
    v60[3] = &unk_1E82D7C88;
    objc_copyWeak(&v61, buf);
    [PKHoverSettings checkIfHoverIsSupported:v60];
    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __68__PKMathRecognitionViewController_initWithController_view_delegate___block_invoke_2;
    v58[3] = &unk_1E82D7FB0;
    objc_copyWeak(&v59, buf);
    v56 = [viewCopy registerForTraitChanges:systemTraitsAffectingColorAppearance withHandler:v58];

    [(PKMathRecognitionViewController *)v12 setupPreferredUpdatesIntervalForSolvingStyle:?];
    objc_destroyWeak(&v59);
    objc_destroyWeak(&v61);
    objc_destroyWeak(buf);
  }

  return v12;
}

void __68__PKMathRecognitionViewController_initWithController_view_delegate___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 && WeakRetained)
  {
    v8 = WeakRetained;
    v4 = [(PKMathRecognitionViewController *)WeakRetained tiledView];
    v5 = [[PKHoverController alloc] initWithDelegate:v8 view:v4];
    v6 = v8[25];
    v8[25] = v5;

    v7 = v8[25];
    if (v7)
    {
      v7[435] = 1;
    }

    WeakRetained = v8;
  }
}

- (id)tiledView
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 30);
    selfCopy = [WeakRetained mathViewControllerTiledView:selfCopy];
  }

  return selfCopy;
}

void __68__PKMathRecognitionViewController_initWithController_view_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[35];
    if (v2)
    {
      v3 = WeakRetained;
      [*(v2 + 16) dismissMenu];
      WeakRetained = v3;
    }
  }
}

- (void)setupPreferredUpdatesIntervalForSolvingStyle:(uint64_t)style
{
  v9 = *MEMORY[0x1E69E9840];
  if (style)
  {
    v3 = 0.0;
    if (a2 == 1)
    {
      v3 = 0.5;
    }

    if (a2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0.3;
    }

    v5 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = v4;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Update preferred updates interval: %g", &v7, 0xCu);
    }

    recognitionManager = [(PKMathRecognitionViewController *)*(style + 256) recognitionManager];
    [(PKRecognitionSessionManager *)recognitionManager setMathPreferredUpdatesInterval:v4];
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  [(PKMathRecognitionViewController *)self removedFromView];
  v3 = os_log_create("com.apple.pencilkit", "Math");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      controller = self->_controller;
    }

    else
    {
      controller = 0;
    }

    *buf = 134217984;
    v7 = controller;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Tearing down PKMathRecognitionViewController for: %p", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = PKMathRecognitionViewController;
  [(PKMathRecognitionViewController *)&v5 dealloc];
}

- (id)view
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 31);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)overlayDrawingController
{
  if (self)
  {
    selfCopy = self;
    if (self[33] || [self solvingStyle] == 2)
    {
      solvingStyle = [selfCopy solvingStyle];
      v4 = selfCopy[33];
      if (solvingStyle != 2 || !v4)
      {
        goto LABEL_9;
      }

      [(PKOverlayDrawingController *)v4 removedFromView];
      WeakRetained = selfCopy[33];
      selfCopy[33] = 0;
    }

    else
    {
      v6 = [PKOverlayDrawingController alloc];
      WeakRetained = objc_loadWeakRetained(selfCopy + 31);
      v7 = [(PKOverlayDrawingController *)&v6->super.isa initForView:selfCopy delegate:?];
      v8 = selfCopy[33];
      selfCopy[33] = v7;
    }

    v4 = selfCopy[33];
LABEL_9:
    self = v4;
    v1 = vars8;
  }

  return self;
}

- (id)recognitionManager
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 13);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)setSolvingStyle:(int64_t)style
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_solvingStyle != style)
  {
    [(PKMathRecognitionViewController *)self setupPreferredUpdatesIntervalForSolvingStyle:style];
  }

  self->_solvingStyle = style;
  if ([(PKMathRecognitionViewController *)self solvingStyle]!= 2 && !self->_overlayDrawingController)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allValues = [(NSMutableDictionary *)self->_currentMathItemsLookup allValues];
    v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          currentResultsLookup = self->_currentResultsLookup;
          uuid = [v10 uuid];
          v13 = [(NSMutableDictionary *)currentResultsLookup objectForKeyedSubscript:uuid];

          if (v13 && [v10 shouldSolveMathFlagIsSet])
          {
            [(PKMathRecognitionViewController *)self _presentResult:v13 mathItem:v10 defaultAnimationType:2 fromHint:0 hadOldResult:1];
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  if ([(PKMathRecognitionViewController *)self solvingStyle])
  {
    if ([(PKMathRecognitionViewController *)self solvingStyle]!= 1)
    {
      [(PKOverlayDrawingController *)self->_overlayDrawingController removeAllTokens];
    }
  }
}

- (void)_presentResult:(void *)result mathItem:(void *)item defaultAnimationType:(int)type fromHint:(char)hint hadOldResult:
{
  HIDWORD(v48) = type;
  v77 = *MEMORY[0x1E69E9840];
  newValue = a2;
  resultCopy = result;
  if (self)
  {
    v8 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      expression = [resultCopy expression];
      *buf = 138478083;
      v74 = expression;
      v75 = 2113;
      v76 = newValue;
      _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Presenting result for expression: %{private}@, result: %{private}@", buf, 0x16u);
    }

    tiledView = [(PKMathRecognitionViewController *)self tiledView];
    uuid = [resultCopy uuid];
    overlayDrawingController = [(PKMathRecognitionViewController *)self overlayDrawingController];
    [resultCopy bounds];
    v15 = [(PKOverlayDrawingController *)overlayDrawingController viewForUUID:uuid estimatedFrameForNewView:v11, v12, v13, v14];

    if (v15)
    {
      v16 = *(v15 + 53);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    if ([v17 isEqual:newValue])
    {
      if (v15)
      {
        v19 = v15[54];
        v18 = v15[55];
        v20 = v15[56];
        v21 = v15[57];
      }

      else
      {
        v18 = 0.0;
        v20 = 0.0;
        v21 = 0.0;
        v19 = 0.0;
      }

      [resultCopy boundsForTriggerStrokes];
      v79.origin.x = v22;
      v79.origin.y = v23;
      v79.size.width = v24;
      v79.size.height = v25;
      v78.origin.x = v19;
      v78.origin.y = v18;
      v78.size.width = v20;
      v78.size.height = v21;
      v26 = CGRectEqualToRect(v78, v79);

      if (v26)
      {
        v28 = os_log_create("com.apple.pencilkit", "Math");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          expression2 = [resultCopy expression];
          *buf = 138478083;
          v74 = expression2;
          v75 = 2113;
          v76 = newValue;
          _os_log_impl(&dword_1C7CCA000, v28, OS_LOG_TYPE_DEFAULT, "Already had correct result for expression: %{private}@, result: %{private}@", buf, 0x16u);
        }

LABEL_19:
        goto LABEL_20;
      }
    }

    else
    {
    }

    [(PKOverlayDrawingView *)v15 hideImageViewWithDuration:v27, 0.1];
    if (v15)
    {
      objc_setProperty_nonatomic_copy(v15, v30, newValue, 424);
      [resultCopy boundsForTriggerStrokes];
      *(v15 + 54) = v31;
      *(v15 + 55) = v32;
      *(v15 + 56) = v33;
      *(v15 + 57) = v34;
    }

    else
    {
      [resultCopy boundsForTriggerStrokes];
    }

    LODWORD(v48) = *(self + 88) != 0;
    objc_initWeak(buf, self);
    [tiledView inputScale];
    v36 = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke;
    aBlock[3] = &unk_1E82DAF60;
    v37 = newValue;
    v72 = v37;
    v38 = _Block_copy(aBlock);
    if ((*(self + 194) & 0x10) != 0)
    {
      WeakRetained = objc_loadWeakRetained((self + 240));
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_2;
      v67[3] = &unk_1E82DAF88;
      v68 = WeakRetained;
      selfCopy = self;
      v70 = uuid;
      v40 = WeakRetained;
      v41 = _Block_copy(v67);

      v38 = v41;
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v43 = v42;
    recognitionManager = [(PKMathRecognitionViewController *)*(self + 256) recognitionManager];
    drawing = [(PKMathRecognitionViewController *)self drawing];
    v46 = objc_loadWeakRetained((self + 248));
    tintColor = [v46 tintColor];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_3;
    v57[3] = &unk_1E82DB050;
    objc_copyWeak(v63, buf);
    v58 = resultCopy;
    v59 = v37;
    selfCopy2 = self;
    v64 = v49;
    v65 = v50;
    v61 = tiledView;
    v62 = v15;
    v63[1] = item;
    hintCopy = hint;
    v63[2] = v43;
    [(PKRecognitionSessionManager *)recognitionManager synthesizeDrawingForMathResultBlock:v38 fallbackText:v59 drawing:drawing mathItem:v58 inkColor:tintColor inputScale:v57 completion:v36];

    objc_destroyWeak(v63);
    objc_destroyWeak(buf);
    goto LABEL_19;
  }

LABEL_20:
}

- (id)drawing
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 30);
    selfCopy = [WeakRetained mathViewControllerDrawing:selfCopy];
  }

  return selfCopy;
}

- (void)drawingTransformFromDelegate
{
  WeakRetained = objc_loadWeakRetained((a2 + 240));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained mathViewControllerDrawingTransform:a2];
    WeakRetained = v5;
  }

  else
  {
    self[1] = 0u;
    self[2] = 0u;
    *self = 0u;
  }
}

- (void)drawingTransform
{
  self[1] = 0u;
  self[2] = 0u;
  *self = 0u;
  if (a2)
  {
    [(PKMathRecognitionViewController *)self drawingTransformFromDelegate];
    if ((*(a2 + 192) & 0x20) != 0)
    {
      WeakRetained = objc_loadWeakRetained((a2 + 240));
      drawing = [(PKMathRecognitionViewController *)a2 drawing];
      v8 = [WeakRetained mathViewController:a2 coordinateSpaceForDrawing:drawing];

      if (v8)
      {
        v6 = objc_loadWeakRetained((a2 + 248));
        PK_transformToConvertFromCoordinateSpaceToCoordinateSpace(v8, v6, v9);
        v7 = v9[1];
        *self = v9[0];
        self[1] = v7;
        self[2] = v9[2];
      }
    }
  }
}

- (void)layoutSubviews
{
  width = self->_currentViewBounds.size.width;
  view = [(PKMathRecognitionViewController *)&self->super.isa view];
  [view bounds];
  self->_currentViewBounds.origin.x = v5;
  self->_currentViewBounds.origin.y = v6;
  self->_currentViewBounds.size.width = v7;
  self->_currentViewBounds.size.height = v8;

  if (vabdd_f64(width, self->_currentViewBounds.size.width) >= 0.00999999978)
  {
    [(PKMathRecognitionViewController *)self dismissPopovers];
  }

  overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
  [(PKOverlayDrawingController *)overlayDrawingController viewDidLayout];
}

- (void)redrawSubviews
{
  overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
  if (overlayDrawingController)
  {
    v3 = overlayDrawingController;
    [overlayDrawingController _updateDrawingViews];
    overlayDrawingController = v3;
  }
}

- (id)overlayViews
{
  overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
  allViews = [(PKOverlayDrawingController *)overlayDrawingController allViews];

  return allViews;
}

- (id)resultViewForItemUUID:(id)d
{
  dCopy = d;
  overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
  v6 = [(PKOverlayDrawingController *)overlayDrawingController existingViewForUUID:dCopy];

  imageView = [(PKOverlayDrawingView *)v6 imageView];

  return imageView;
}

- (void)removedFromView
{
  alternativedEditMenuInteraction = self->_alternativedEditMenuInteraction;
  if (alternativedEditMenuInteraction)
  {
    view = [(UIEditMenuInteraction *)alternativedEditMenuInteraction view];
    [view removeInteraction:self->_alternativedEditMenuInteraction];

    v5 = self->_alternativedEditMenuInteraction;
    self->_alternativedEditMenuInteraction = 0;
  }

  [(PKOverlayDrawingController *)self->_overlayDrawingController removedFromView];
  if (self->_scrubberController)
  {
    [(PKMathRecognitionViewController *)self hideScrubber];
  }

  if (self->_mathFloatingLabelView)
  {
    [(PKMathRecognitionViewController *)self hideMathFloatingLabelView];
  }

  if (self->_typesetViewController)
  {
    [(PKMathRecognitionViewController *)self _cleanupTypesetViewController];
  }

  popoverHintItemUUID = self->_popoverHintItemUUID;
  self->_popoverHintItemUUID = 0;

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_openPopoverForHint object:0];
  addGraphItemUUID = self->_addGraphItemUUID;
  self->_addGraphItemUUID = 0;

  v8 = MEMORY[0x1E69E58C0];

  [v8 cancelPreviousPerformRequestsWithTarget:self selector:sel_openPopoverForAddingGraph object:0];
}

- (void)_cleanupTypesetViewController
{
  if (self)
  {
    v2 = *(self + 48);
    if (v2 && (*(self + 194) & 8) != 0)
    {
      WeakRetained = objc_loadWeakRetained((self + 240));
      [WeakRetained mathViewControllerDidDismissPopoverUI:self];

      v2 = *(self + 48);
    }

    *(self + 48) = 0;

    [*(self + 56) _setVisibilityUpdatesEnabled:1];
    v4 = *(self + 56);
    *(self + 56) = 0;
  }
}

- (uint64_t)cancelOpenPopoverForHint
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 120);
    *(result + 120) = 0;

    v3 = MEMORY[0x1E69E58C0];

    return [v3 cancelPreviousPerformRequestsWithTarget:v1 selector:sel_openPopoverForHint object:0];
  }

  return result;
}

- (uint64_t)cancelOpenPopoverForAddingGraph
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 128);
    *(result + 128) = 0;

    v3 = MEMORY[0x1E69E58C0];

    return [v3 cancelPreviousPerformRequestsWithTarget:v1 selector:sel_openPopoverForAddingGraph object:0];
  }

  return result;
}

- (void)_updateDrawingOverlayCache
{
  if ([(PKMathRecognitionViewController *)self shouldCacheDrawingForResults])
  {
    overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
    drawing = [(PKMathRecognitionViewController *)&self->super.isa drawing];
    v8 = [(PKOverlayDrawingController *)overlayDrawingController drawingForAllResultsForSourceDrawing:drawing];

    v5 = +[PKDrawingOverlayCache sharedCache];
    drawing2 = [(PKMathRecognitionViewController *)&self->super.isa drawing];
    uuid = [drawing2 uuid];
    [(PKDrawingOverlayCache *)v5 setOverlayDrawing:v8 forDrawingUUID:uuid];
  }
}

- (void)setTokens:(void *)tokens forItem:(int)item graphable:(void *)graphable graphableVariables:
{
  graphableCopy = graphable;
  if (self)
  {
    v13 = graphableCopy;
    tokensCopy = tokens;
    v11 = a2;
    v12 = objc_alloc_init(PKMathRecognitionItemAttributes);
    [(PKMathRecognitionItemAttributes *)v12 setTokens:v11];

    if (item)
    {
      [(PKMathRecognitionItemAttributes *)v12 setExpressionFeatures:1];
    }

    [(PKMathRecognitionItemAttributes *)v12 setGraphableVariables:v13];
    [(PKMathRecognitionViewController *)self setItemAttributes:v12 forItem:tokensCopy];

    graphableCopy = v13;
  }
}

- (void)setTokens:(id)tokens forItemUUID:(id)d graphable:(BOOL)graphable graphableVariables:(id)variables
{
  graphableCopy = graphable;
  tokensCopy = tokens;
  variablesCopy = variables;
  v11 = [(NSMutableDictionary *)self->_currentMathItemsLookup objectForKeyedSubscript:d];
  if (v11)
  {
    [(PKMathRecognitionViewController *)&self->super.isa setTokens:tokensCopy forItem:v11 graphable:graphableCopy graphableVariables:variablesCopy];
  }
}

- (void)setItemAttributes:(id)attributes forItemUUID:(id)d
{
  attributesCopy = attributes;
  v6 = [(NSMutableDictionary *)self->_currentMathItemsLookup objectForKeyedSubscript:d];
  if (v6)
  {
    [(PKMathRecognitionViewController *)&self->super.isa setItemAttributes:attributesCopy forItem:v6];
  }
}

- (void)setItemAttributes:(void *)attributes forItem:
{
  v106[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  attributesCopy = attributes;
  v7 = attributesCopy;
  if (self)
  {
    v83 = v5;
    if ([attributesCopy isLowConfidenceMath])
    {
      v9 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        expression = [v7 expression];
        *buf = 138477827;
        *&buf[4] = expression;
        _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Set low confidence math for: %{private}@", buf, 0xCu);
      }

      v11 = v7;
      v13 = v11;
      if (v11)
      {
        objc_setProperty_nonatomic_copy(v11, v12, 0, 144);
      }

      [(PKMathRecognitionItem *)v13 _setIsGraphable:MEMORY[0x1E695E0F0] graphableVariables:?];
      v14 = objc_alloc_init(PKMathRecognitionToken);
      [(PKMathRecognitionToken *)v14 setItem:v13];
      expression2 = [v13 expression];
      [(PKMathRecognitionToken *)v14 setText:expression2];

      expression3 = [v13 expression];
      -[PKMathRecognitionToken setCharacterRange:](v14, "setCharacterRange:", 0, [expression3 length]);

      [v13 bounds];
      [(PKMathRecognitionToken *)v14 setBounds:?];
      v17 = _PencilKitBundle();
      v18 = [v17 localizedStringForKey:@"Unsupported or unrecognized math" value:@"Unsupported or unrecognized math" table:@"Localizable"];

      v19 = objc_alloc_init(PKMathRecognitionError);
      [(PKMathRecognitionError *)v19 setErrorString:v18];
      *buf = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
      [(PKMathRecognitionToken *)v14 setErrors:v20];

      characterRangeForTriggerSymbol = [(PKMathRecognitionItem *)v13 characterRangeForTriggerSymbol];
      if (characterRangeForTriggerSymbol != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = characterRangeForTriggerSymbol;
        v24 = v22;
        v25 = [(PKMathRecognitionItem *)v13 _strokeIndexesForCharacterRange:characterRangeForTriggerSymbol, v22];
        v107.origin.x = [(PKMathRecognitionItem *)v13 _boundsForStrokeIndexes:v25];
        x = v107.origin.x;
        y = v107.origin.y;
        width = v107.size.width;
        height = v107.size.height;
        if (!CGRectIsNull(v107))
        {
          [(PKMathRecognitionToken *)v14 setCharacterRange:v23, v24];
          [(PKMathRecognitionToken *)v14 setBounds:x, y, width, height];
        }
      }

      v106[0] = v14;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:1];
      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v30, v31, 104);
      }

      if ((![self solvingStyle] || objc_msgSend(self, "solvingStyle") == 1) && ((-[PKMathRecognitionItem isRecentlyModified](v13) & 1) != 0 || (-[PKMathRecognitionViewController overlayDrawingController](self), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "uuid"), v33 = objc_claimAutoreleasedReturnValue(), v34 = -[PKOverlayDrawingController hasVisibleTokensForItem:](v32, v33), v33, v32, v34)))
      {
        overlayDrawingController = [(PKMathRecognitionViewController *)self overlayDrawingController];
        if (v13)
        {
          v36 = v13[13];
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;
        [(PKOverlayDrawingController *)overlayDrawingController setTokens:v37 item:v13];
      }

      else
      {
        overlayDrawingController = [(PKMathRecognitionViewController *)self overlayDrawingController];
        [(PKOverlayDrawingController *)overlayDrawingController removeTokensFor:v13];
      }

      v5 = v83;
    }

    else
    {
      if (v7)
      {
        objc_setProperty_nonatomic_copy(v7, v8, v5, 144);
      }

      selfCopy = self;
      indexSet = [MEMORY[0x1E696AD50] indexSet];
      tokens = [v5 tokens];
      graphableVariables = [v5 graphableVariables];
      isGraphable = [v5 isGraphable];
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      obj = tokens;
      v39 = [obj countByEnumeratingWithState:&v91 objects:v105 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = 0;
        v42 = *v92;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v92 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v44 = *(*(&v91 + 1) + 8 * i);
            [v44 setItem:v7];
            characterRange = [v44 characterRange];
            v47 = v45;
            if (v45)
            {
              v48 = [(PKMathRecognitionItem *)v7 _strokeIndexesForCharacterRange:characterRange, v45];
              [v44 setBounds:{-[PKMathRecognitionItem _boundsForStrokeIndexes:](v7, v48)}];
            }

            if ((*(selfCopy + 106) & 1) != 0 || ([v7 isEvaluationExpected] & 1) == 0)
            {
              [v44 setErrors:0];
            }

            errors = [v44 errors];
            v50 = [errors count];

            if (v50)
            {
              ++v41;
              if (!v47 || characterRange == 0x7FFFFFFFFFFFFFFFLL)
              {
                v53 = os_log_create("com.apple.pencilkit", "Math");
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C7CCA000, v53, OS_LOG_TYPE_DEFAULT, "Invalid range for error token", buf, 2u);
                }
              }

              else
              {
                characterRange2 = [v44 characterRange];
                [indexSet addIndexesInRange:{characterRange2, v52}];
              }
            }
          }

          v40 = [obj countByEnumeratingWithState:&v91 objects:v105 count:16];
        }

        while (v40);
      }

      else
      {
        v41 = 0;
      }

      v54 = os_log_create("com.apple.pencilkit", "Math");
      v55 = graphableVariables;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v56 = [obj count];
        expression4 = [v7 expression];
        v58 = [graphableVariables count];
        *buf = 134219011;
        *&buf[4] = v56;
        v97 = 2113;
        v98 = expression4;
        v99 = 1024;
        v100 = isGraphable;
        v101 = 2048;
        v102 = v58;
        v103 = 2048;
        v104 = v41;
        _os_log_impl(&dword_1C7CCA000, v54, OS_LOG_TYPE_DEFAULT, "Set tokens: %lu, %{private}@, graphable: %{BOOL}d, variables: %lu, num errors: %lu", buf, 0x30u);
      }

      v60 = selfCopy;
      if (*(selfCopy + 105))
      {
        v5 = v83;
      }

      else
      {
        alternativesTokens = [(PKMathRecognitionItem *)v7 alternativesTokens];
        v5 = v83;
        if ([alternativesTokens count])
        {
          array = [MEMORY[0x1E695DF70] array];
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v63 = alternativesTokens;
          v64 = [v63 countByEnumeratingWithState:&v87 objects:v95 count:16];
          if (v64)
          {
            v65 = v64;
            v66 = *v88;
            do
            {
              for (j = 0; j != v65; ++j)
              {
                if (*v88 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                v68 = *(*(&v87 + 1) + 8 * j);
                characterRange3 = [v68 characterRange];
                if (([indexSet containsIndexesInRange:{characterRange3, v70}] & 1) == 0)
                {
                  [array addObject:v68];
                }
              }

              v65 = [v63 countByEnumeratingWithState:&v87 objects:v95 count:16];
            }

            while (v65);
          }

          if ([array count])
          {
            v71 = [obj arrayByAddingObjectsFromArray:array];

            obj = v71;
          }

          v60 = selfCopy;
          v55 = graphableVariables;
        }
      }

      if (v7)
      {
        objc_setProperty_nonatomic_copy(v7, v59, obj, 104);
      }

      if ((![v60 solvingStyle] || objc_msgSend(v60, "solvingStyle") == 1) && ((-[PKMathRecognitionItem isRecentlyModified](v7) & 1) != 0 || (-[PKMathRecognitionViewController overlayDrawingController](v60), v72 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "uuid"), v73 = objc_claimAutoreleasedReturnValue(), v74 = -[PKOverlayDrawingController hasVisibleTokensForItem:](v72, v73), v73, v72, v74)))
      {
        overlayDrawingController2 = [(PKMathRecognitionViewController *)v60 overlayDrawingController];
        [(PKOverlayDrawingController *)overlayDrawingController2 setTokens:v7 item:?];
      }

      else
      {
        overlayDrawingController2 = [(PKMathRecognitionViewController *)v60 overlayDrawingController];
        [(PKOverlayDrawingController *)overlayDrawingController2 removeTokensFor:v7];
      }

      [(PKMathRecognitionItem *)v7 _setIsGraphable:isGraphable graphableVariables:v55];
      if (isGraphable && ![v55 count] && -[PKMathRecognitionItem isRecentlyModified](v7) && -[PKMathRecognitionItem isRecentlyCreated](v7) && (!objc_msgSend(v60, "solvingStyle") || objc_msgSend(v60, "solvingStyle") == 1))
      {
        v76 = v60[23];
        uuid = [v7 uuid];
        LOBYTE(v76) = [v76 containsObject:uuid];

        if ((v76 & 1) == 0)
        {
          v78 = v60[16];
          v60[16] = 0;

          [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:v60 selector:sel_openPopoverForAddingGraph object:0];
          uuid2 = [v7 uuid];
          v80 = v60[16];
          v60[16] = uuid2;

          [v60 performSelector:sel_openPopoverForAddingGraph withObject:0 afterDelay:{-[PKMathRecognitionItem _remainingDelayForTargetDelay:](v7, 1.0)}];
        }
      }
    }
  }
}

- (void)_scrubVariable:(void *)variable item:(uint64_t)item openAsCompact:
{
  v83 = *MEMORY[0x1E69E9840];
  v8 = a2;
  variableCopy = variable;
  if (self)
  {
    [self hideScrubber];
    expression = [variableCopy expression];
    v11 = expression;
    if (v8)
    {
      v12 = v8[5];
      v13 = v8[6];
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v14 = [expression substringWithRange:{v12, v13}];

    v15 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      expression2 = [variableCopy expression];
      LODWORD(buf.a) = 138478083;
      *(&buf.a + 4) = expression2;
      WORD2(buf.b) = 2113;
      *(&buf.b + 6) = v14;
      _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "Opening scrubber for expression: %{private}@, variable: %{private}@", &buf, 0x16u);
    }

    memset(&buf, 0, sizeof(buf));
    [(PKMathRecognitionViewController *)&buf drawingTransform];
    obj = a2;
    if (v8)
    {
      v17 = v8[4];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v19 = [(PKMathRecognitionItem *)variableCopy _boundsForStrokeIndexes:v18];
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v81 = buf;
    v84.origin.x = v19;
    v84.origin.y = v21;
    v84.size.width = v23;
    v84.size.height = v25;
    v85 = CGRectApplyAffineTransform(v84, &v81);
    x = v85.origin.x;
    y = v85.origin.y;
    width = v85.size.width;
    height = v85.size.height;
    WeakRetained = objc_loadWeakRetained((self + 248));
    window = [WeakRetained window];
    rootViewController = [window rootViewController];
    view = [rootViewController view];

    v34 = objc_loadWeakRetained((self + 240));
    v35 = [v34 mathViewController:self createScrubberControllerForView:view delegate:self];

    v36 = objc_loadWeakRetained((self + 248));
    v80 = view;
    [v36 convertRect:view toView:{x, y, width, height}];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v79 = v35;
    objc_storeStrong((self + 64), v35);
    *(self + 72) = item;
    if ((*(self + 194) & 4) != 0)
    {
      v45 = objc_loadWeakRetained((self + 240));
      [v45 mathViewController:self willPresentPopoverUI:0];
    }

    v46 = objc_loadWeakRetained((self + 248));
    window2 = [v46 window];
    v48 = [PKToolPicker activeToolPickerForWindow:window2];
    v49 = *(self + 56);
    *(self + 56) = v48;

    [*(self + 56) _setVisibilityUpdatesEnabled:0];
    v50 = *(self + 64);
    v51 = [(PKMathRecognitionItem *)variableCopy _stringForVariable:v8];
    [v50 showScrubberFor:v51 frame:item compact:{v38, v40, v42, v44}];

    v52 = [PKLiveMathVariable alloc];
    drawing = [(PKMathRecognitionViewController *)self drawing];
    v54 = drawing;
    v55 = v8;
    v56 = variableCopy;
    if (v52)
    {
      *&v81.a = v52;
      *&v81.b = PKLiveMathVariable;
      v57 = [(CGAffineTransform *)&v81 init];
      v52 = v57;
      if (v57)
      {
        objc_storeStrong(v57 + 2, drawing);
        objc_storeStrong(&v52->_variable, obj);
        objc_storeStrong(&v52->_mathItem, variable);
        v58 = *MEMORY[0x1E695F050];
        v59 = *(MEMORY[0x1E695F050] + 16);
        v52->_calculatedFitBounds.origin = *MEMORY[0x1E695F050];
        v52->_calculatedFitBounds.size = v59;
        v52->_calculatedFitBoundsForExtraLeadingSlack.origin = v58;
        v52->_calculatedFitBoundsForExtraLeadingSlack.size = v59;
        v77 = variableCopy;
        v60 = v14;
        if (v8)
        {
          v61 = v55[4];
        }

        else
        {
          v61 = 0;
        }

        v62 = v61;
        v63 = [(PKMathRecognitionItem *)v56 _strokesForStrokeIndexes:v62];

        originalStrokes = v52->_originalStrokes;
        v52->_originalStrokes = v63;
        v65 = v63;

        v66 = [objc_alloc(objc_opt_class()) initWithStrokes:v65 fromDrawing:v54];
        originalStrokesDrawing = v52->_originalStrokesDrawing;
        v52->_originalStrokesDrawing = v66;

        [(PKDrawing *)v52->_originalStrokesDrawing bounds];
        v69 = v68;
        v71 = v70;
        v73 = v72;
        v75 = v74;

        v52->_originalStrokesBounds.origin.x = v69;
        v52->_originalStrokesBounds.origin.y = v71;
        v52->_originalStrokesBounds.size.width = v73;
        v52->_originalStrokesBounds.size.height = v75;
        v14 = v60;
        variableCopy = v77;
      }
    }

    v76 = *(self + 88);
    *(self + 88) = v52;

    if (*(self + 72) == 1)
    {
      [self performSelector:sel_hideScrubber withObject:0 afterDelay:3.0];
    }
  }
}

- (void)_triggerAlternativesMenuForToken:(uint64_t)token
{
  v4 = a2;
  [v4 bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if (!CGRectIsNull(v20))
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    [(PKMathRecognitionViewController *)&v17 drawingTransform];
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MidX = CGRectGetMidX(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v9 = [MEMORY[0x1E69DC9D8] configurationWithIdentifier:@"token" sourcePoint:{vaddq_f64(v19, vmlaq_n_f64(vmulq_n_f64(v18, CGRectGetMinY(v22)), v17, MidX))}];
    objc_storeStrong((token + 96), a2);
    if ((*(token + 194) & 4) != 0)
    {
      WeakRetained = objc_loadWeakRetained((token + 240));
      [WeakRetained mathViewController:token willPresentPopoverUI:2];
    }

    v11 = *(token + 272);
    if (!v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:token];
      v13 = *(token + 272);
      *(token + 272) = v12;

      v14 = objc_loadWeakRetained((token + 248));
      [v14 addInteraction:*(token + 272)];

      v11 = *(token + 272);
    }

    v15 = v11;
    [v15 presentEditMenuWithConfiguration:v9];
  }
}

- (void)_triggerPopupToAddGraphForItem:(uint64_t)item
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (item)
  {
    v4 = *(item + 128);
    *(item + 128) = 0;

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:item selector:sel_openPopoverForAddingGraph object:0];
    WeakRetained = objc_loadWeakRetained((item + 248));
    window = [WeakRetained window];

    if (!window)
    {
      v18 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_ERROR, "No window when trying to open popover to graph.", buf, 2u);
      }

      goto LABEL_21;
    }

    if ((*(item + 192) & 8) != 0)
    {
      v43.origin.x = [(PKMathRecognitionItem *)v3 boundsForAnyEqualSign];
      x = v43.origin.x;
      y = v43.origin.y;
      width = v43.size.width;
      height = v43.size.height;
      if (CGRectIsNull(v43) || (-[PKMathRecognitionViewController drawing](item), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v3 isValidForDrawing:v11], v11, (v12 & 1) == 0))
      {
        v18 = os_log_create("com.apple.pencilkit", "Math");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          expression = [v3 expression];
          *buf = 138477827;
          *&buf[4] = expression;
          _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "Expression is not valid anymore: %{private}@", buf, 0xCu);
        }
      }

      else
      {
        v13 = os_log_create("com.apple.pencilkit", "Math");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          expression2 = [v3 expression];
          *buf = 138477827;
          *&buf[4] = expression2;
          _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Open popover to graph: %{private}@", buf, 0xCu);
        }

        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = width;
        v44.size.height = height;
        MidX = CGRectGetMidX(v44);
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        MinY = CGRectGetMinY(v45);
        v40 = 0u;
        v41 = 0u;
        *buf = 0u;
        [(PKMathRecognitionViewController *)buf drawingTransform];
        v34 = v40;
        v35 = v41;
        v36 = *buf;
        v15 = v3;
        v16 = v15;
        if ((*(item + 192) & 2) != 0)
        {
          v46.origin.x = [(PKMathRecognitionItem *)v15 boundsForAnyEqualSign];
          v20 = v46.origin.x;
          v21 = v46.origin.y;
          v22 = v46.size.width;
          v23 = v46.size.height;
          v33 = CGRectGetMidX(v46);
          v47.origin.x = v20;
          v47.origin.y = v21;
          v47.size.width = v22;
          v47.size.height = v23;
          MidY = CGRectGetMidY(v47);
          v25 = objc_loadWeakRetained((item + 240));
          uuid = [v16 uuid];
          v27 = [v25 mathViewController:item expressionIdentifiersForCompatibleGraphNearLocation:uuid expressionUUID:{v33, MidY}];

          if (v27)
          {
            uuid2 = [v16 uuid];
            uUIDString = [uuid2 UUIDString];
            v17 = [v27 containsObject:uUIDString] ^ 1;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v30 = objc_loadWeakRetained((item + 248));
        item = [(PKMathContextMenuController *)x insertGraphControllerForItem:width tapBounds:height alsoShowAddToExisiting:PKMathContextMenuController view:v16 delegate:v17, v30, item];

        v32 = *(item + 280);
        *(item + 280) = item;
        v18 = item;

        if (v18)
        {
          [(objc_class *)v18[2].isa _presentMenuAtLocation:vaddq_f64(v35, vmlaq_n_f64(vmulq_n_f64(v34, MinY), v36, MidX))];
        }
      }

LABEL_21:
    }
  }
}

- (void)setContextMenuController:(uint64_t)controller
{
  if (controller)
  {
    objc_storeStrong((controller + 280), a2);
  }
}

- (void)openPopoverForAddingGraph
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_addGraphItemUUID)
  {
    v3 = [(NSMutableDictionary *)self->_currentMathItemsLookup objectForKeyedSubscript:?];
    addGraphItemUUID = self->_addGraphItemUUID;
    self->_addGraphItemUUID = 0;

    if (self->_contextMenuController)
    {
      v5 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Context menu already open when trying to open popover for graphing.", &v15, 2u);
      }
    }

    else if (v3)
    {
      if ((*(v3 + 48) & 1) != 0 || (v6 = *(v3 + 56), v7 = [v6 count], v6, v7))
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v9 = v8 - [(PKMathRecognitionItem *)v3 mostRecentStrokeTimestamp];
        if (os_variant_has_internal_ui())
        {
          v10 = _PKSignpostLog();
          if (os_signpost_enabled(v10))
          {
            v15 = 134217984;
            v16 = v9;
            _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MathRecognitionToInsertGraph", "%f", &v15, 0xCu);
          }

          v11 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            LOWORD(v15) = 0;
            _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_INFO, "DISCRETE MathRecognitionToInsertGraph", &v15, 2u);
          }

          v12 = os_log_create("com.apple.pencilkit", "Math");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 134217984;
            v16 = v9;
            _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_DEFAULT, "MathRecognitionToInsertGraph: %g", &v15, 0xCu);
          }
        }

        expressionsWeCreatedGraphsFor = self->_expressionsWeCreatedGraphsFor;
        uuid = [v3 uuid];
        [(NSMutableSet *)expressionsWeCreatedGraphsFor addObject:uuid];

        [(PKMathRecognitionViewController *)self _triggerPopupToAddGraphForItem:v3];
        [(PKMathRecognitionViewController *)self _emitMathUsageForItem:v3 usage:2 recognitionLatency:(v9 * 1000.0) synthesisLatency:0 hadOldResult:0];
      }
    }
  }
}

- (void)_emitMathUsageForItem:(uint64_t)item usage:(uint64_t)usage recognitionLatency:(uint64_t)latency synthesisLatency:(uint64_t)synthesisLatency hadOldResult:
{
  v25[4] = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = v11;
  if (self)
  {
    hasAnyErrors = [(PKMathRecognitionItem *)v11 hasAnyErrors];
    isVerticalExpression = [v12 isVerticalExpression];
    v24[0] = @"error_state";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:hasAnyErrors];
    v25[0] = v15;
    v24[1] = @"event_type";
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:item];
    v25[1] = v16;
    v24[2] = @"expression_edit_after_result";
    v17 = [MEMORY[0x1E696AD98] numberWithBool:synthesisLatency];
    v25[2] = v17;
    v24[3] = @"expression_is_vertical";
    v18 = [MEMORY[0x1E696AD98] numberWithBool:isVerticalExpression];
    v25[3] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
    v20 = [v19 mutableCopy];

    if (usage >= 1 && [(PKMathRecognitionItem *)v12 isRecentlyModified])
    {
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:usage];
      [v20 setObject:v21 forKeyedSubscript:@"recognition_latency"];
    }

    if (latency >= 1)
    {
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:latency];
      [v20 setObject:v22 forKeyedSubscript:@"synthesis_latency"];
    }

    v23 = v20;
    AnalyticsSendEventLazy();
  }
}

- (void)openPopoverForHint
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_popoverHintItemUUID)
  {
    v3 = [(NSMutableDictionary *)self->_currentMathItemsLookup objectForKeyedSubscript:?];
    popoverHintItemUUID = self->_popoverHintItemUUID;
    self->_popoverHintItemUUID = 0;

    if (self->_contextMenuController)
    {
      v5 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Context menu already open when trying to open popover for hint.", &v11, 2u);
      }
    }

    else if (v3)
    {
      if (os_variant_has_internal_ui())
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v7 = v6;
        mostRecentStrokeTimestamp = [(PKMathRecognitionItem *)v3 mostRecentStrokeTimestamp];
        v9 = _PKSignpostLog();
        if (os_signpost_enabled(v9))
        {
          v11 = 134217984;
          v12 = v7 - mostRecentStrokeTimestamp;
          _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MathRecognitionToHint", "%f", &v11, 0xCu);
        }

        v10 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_INFO, "DISCRETE MathRecognitionToHint", &v11, 2u);
        }
      }

      [(PKMathRecognitionViewController *)self _showDetectionAnimationForItem:v3];
      [(PKMathRecognitionViewController *)self _triggerPopupToSolveItem:v3 supportCopy:0];
    }
  }
}

- (void)_showDetectionAnimationForItem:(void *)item
{
  v3 = a2;
  if (item)
  {
    objc_initWeak(&location, item);
    tiledView = [(PKMathRecognitionViewController *)item tiledView];
    strokes = [v3 strokes];
    if ([strokes count] && objc_msgSend(v3, "shouldBeSolved") && -[PKMathRecognitionItem isRecentlyModified](v3))
    {
      drawing = [(PKMathRecognitionViewController *)item drawing];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __66__PKMathRecognitionViewController__showDetectionAnimationForItem___block_invoke;
      v15[3] = &unk_1E82DAF38;
      objc_copyWeak(&v17, &location);
      v15[4] = item;
      v16 = tiledView;
      v7 = strokes;
      v8 = drawing;
      v9 = v15;
      tiledView2 = [(PKMathRecognitionViewController *)item tiledView];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __75__PKMathRecognitionViewController__maskImageForStrokes_drawing_completion___block_invoke;
      v19[3] = &unk_1E82DAF10;
      v20 = tiledView2;
      v11 = v7;
      v21 = v11;
      v12 = v8;
      v22 = v12;
      v13 = v9;
      v23 = v13;
      v14 = tiledView2;
      [(PKMathRecognitionViewController *)item _imageViewForStrokes:v11 drawing:v12 completion:v19];

      objc_destroyWeak(&v17);
    }

    objc_destroyWeak(&location);
  }
}

- (void)_triggerPopupToSolveItem:(char)item supportCopy:
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = *(self + 120);
    *(self + 120) = 0;

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_openPopoverForHint object:0];
    WeakRetained = objc_loadWeakRetained((self + 248));
    window = [WeakRetained window];

    v9 = os_log_create("com.apple.pencilkit", "Math");
    v10 = v9;
    if (window)
    {
      v11 = v9;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        expression = [v5 expression];
        LODWORD(buf.a) = 138477827;
        *(&buf.a + 4) = expression;
        _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Trigger popover to solve: %{private}@", &buf, 0xCu);
      }

      [v5 boundsForTriggerStrokes];
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
      if (CGRectIsNull(v31) || (-[PKMathRecognitionViewController drawing](self), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v5 isValidForDrawing:v17], v17, (v18 & 1) == 0))
      {
        v10 = os_log_create("com.apple.pencilkit", "Math");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          expression2 = [v5 expression];
          LODWORD(buf.a) = 138477827;
          *(&buf.a + 4) = expression2;
          _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Expression is not valid anymore: %{private}@", &buf, 0xCu);
        }
      }

      else
      {
        [(PKMathRecognitionViewController *)&buf drawingTransform];
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        v33 = CGRectApplyAffineTransform(v32, &buf);
        v19 = v33.origin.x;
        v20 = v33.origin.y;
        v21 = v33.size.width;
        v22 = v33.size.height;
        MidX = CGRectGetMidX(v33);
        v34.origin.x = v19;
        v34.origin.y = v20;
        v34.size.width = v21;
        v34.size.height = v22;
        MidY = CGRectGetMidY(v34);
        v24 = objc_loadWeakRetained((self + 248));
        v25 = [(PKMathContextMenuController *)x mathSolvingControllerForItem:width tapBounds:height supportCopy:PKMathContextMenuController view:v5 delegate:item, v24, self];

        v26 = *(self + 280);
        *(self + 280) = v25;
        v10 = v25;

        if (v10)
        {
          [(objc_class *)v10[2].isa _presentMenuAtLocation:MidX, MidY];
        }
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.a) = 0;
      _os_log_error_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_ERROR, "No window when trying to trigger popup to solve.", &buf, 2u);
    }
  }
}

- (uint64_t)_handleSingleTapAtDrawingLocation:(int)location fromHover:(CGFloat)hover fromTapStroke:(CGFloat)stroke
{
  v223 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v7 = result;
  if ([result solvingStyle] && objc_msgSend(v7, "solvingStyle") != 1)
  {
    return 0;
  }

  tiledView = [(PKMathRecognitionViewController *)v7 tiledView];
  v9 = [tiledView ink];
  if ([v9 _isEraserInk])
  {

    result = 0;
    if (a2 & 1) != 0 || (location)
    {
      return result;
    }
  }

  else
  {
  }

  [*(v7 + 256) processDelayedItemsIfNecessary];
  if (a2)
  {
    goto LABEL_10;
  }

  if (*(v7 + 280))
  {
    return 1;
  }

  if (*(v7 + 88))
  {
    [v7 hideScrubber];
    return 1;
  }

  if (*(v7 + 40))
  {
    [v7 hideMathFloatingLabelView];
    return 1;
  }

  if (*(v7 + 104))
  {
    return 1;
  }

  [(PKMathRecognitionViewController *)v7 cancelOpenPopoverForHint];
  [(PKMathRecognitionViewController *)v7 cancelOpenPopoverForAddingGraph];
LABEL_10:
  [(PKMathRecognitionViewController *)&buf drawingTransform];
  v184 = *&buf.c;
  v185 = *&buf.tx;
  v186 = *&buf.a;
  memset(&v216, 0, sizeof(v216));
  [(PKMathRecognitionViewController *)&v216 drawingTransform];
  v218 = v216;
  DKD_CGAffineTransformDecompose(&v218, &buf);
  a = buf.a;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  allValues = [*(v7 + 8) allValues];
  v12 = [allValues countByEnumeratingWithState:&v212 objects:v221 count:16];
  v191 = v7;
  v187 = a2;
  if (!v12)
  {

    v58 = 0;
    v14 = 0;
    v57 = 0;
    goto LABEL_60;
  }

  v13 = v12;
  v192 = 0;
  v14 = 0;
  v15 = a + a;
  v16 = a2 | location;
  v17 = *v213;
  v18 = a * -6.0;
  v19 = v15 + v15;
  v188 = *v213;
  v189 = allValues;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v213 != v17)
      {
        objc_enumerationMutation(allValues);
      }

      v21 = *(*(&v212 + 1) + 8 * i);
      drawing = [(PKMathRecognitionViewController *)v7 drawing];
      v23 = [v21 isValidForDrawing:drawing];

      if (!v23)
      {
        continue;
      }

      tappableStrokes = [v21 tappableStrokes];
      [PKDrawing _boundingBoxForStrokeArray:tappableStrokes];
      x = v25;
      y = v27;
      width = v29;
      height = v31;

      v226.origin.x = x;
      v226.origin.y = y;
      v226.size.width = width;
      v226.size.height = height;
      if (!CGRectIsNull(v226))
      {
        if (v16)
        {
          if (width <= v15 * 4.0)
          {
            goto LABEL_22;
          }

          v33 = 0.0;
          v34 = x;
          v35 = y;
          v36 = width;
          v37 = height;
          v38 = v15;
        }

        else
        {
          v34 = x;
          v35 = y;
          v36 = width;
          v37 = height;
          v38 = v18;
          v33 = v18;
        }

        v227 = CGRectInset(*&v34, v38, v33);
        x = v227.origin.x;
        y = v227.origin.y;
        width = v227.size.width;
        height = v227.size.height;
LABEL_22:
        v228.origin.x = x;
        v228.origin.y = y;
        v228.size.width = width;
        v228.size.height = height;
        v224.y = stroke;
        v224.x = hover;
        if (CGRectContainsPoint(v228, v224))
        {
          v56 = v21;

          v192 = v56;
          goto LABEL_55;
        }
      }

      if (_os_feature_enabled_impl() && (~*(v7 + 192) & 0x2C0) == 0 && (!v21 || (v21[76] & 1) == 0))
      {
        v210 = 0u;
        v211 = 0u;
        v208 = 0u;
        v209 = 0u;
        scrubbableVariables = [v21 scrubbableVariables];
        v40 = [scrubbableVariables countByEnumeratingWithState:&v208 objects:v220 count:16];
        if (v40)
        {
          v41 = v40;
          v190 = v14;
          v42 = *v209;
LABEL_29:
          v43 = 0;
          while (1)
          {
            if (*v209 != v42)
            {
              objc_enumerationMutation(scrubbableVariables);
            }

            v44 = *(*(&v208 + 1) + 8 * v43);
            if (v44)
            {
              v45 = v44[4];
            }

            else
            {
              v45 = 0;
            }

            v46 = v45;
            v47 = [(PKMathRecognitionItem *)v21 _boundsForStrokeIndexes:v46];
            v49 = v48;
            v51 = v50;
            v53 = v52;

            if (v16 && v51 > v19 && v53 > v19)
            {
              v229.origin.x = v47;
              v229.origin.y = v49;
              v229.size.width = v51;
              v229.size.height = v53;
              v230 = CGRectInset(v229, v15, v15);
              v47 = v230.origin.x;
              v49 = v230.origin.y;
              v51 = v230.size.width;
              v53 = v230.size.height;
            }

            v231.origin.x = v47;
            v231.origin.y = v49;
            v231.size.width = v51;
            v231.size.height = v53;
            v225.y = stroke;
            v225.x = hover;
            if (CGRectContainsPoint(v231, v225))
            {
              break;
            }

            if (v41 == ++v43)
            {
              v54 = [scrubbableVariables countByEnumeratingWithState:&v208 objects:v220 count:16];
              v41 = v54;
              if (!v54)
              {
                v14 = v190;
                goto LABEL_45;
              }

              goto LABEL_29;
            }
          }

          v55 = v21;

          v14 = v44;
          v192 = v55;
LABEL_45:
          v7 = v191;
          v17 = v188;
          allValues = v189;
        }
      }
    }

    v13 = [allValues countByEnumeratingWithState:&v212 objects:v221 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_55:

  v57 = v192;
  v58 = v192 != 0;
  if (v187 && v192)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    if (v59 - [(PKMathRecognitionItem *)v192 mostRecentStrokeTimestamp]< 1.5)
    {
      v90 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&dword_1C7CCA000, v90, OS_LOG_TYPE_DEFAULT, "Skipping hover and hold action since we just created this math item.", &buf, 2u);
      }

      v217 = 0;
      goto LABEL_112;
    }

    v58 = 1;
  }

LABEL_60:
  pointa = vaddq_f64(v185, vmlaq_n_f64(vmulq_n_f64(v184, stroke), v186, hover));
  overlayDrawingController = [(PKMathRecognitionViewController *)v7 overlayDrawingController];
  v61 = pointa.y;
  v62 = [(PKOverlayDrawingController *)overlayDrawingController tokenAtLocation:pointa.y];

  if (v62)
  {
    errors = [v62 errors];
    firstObject = [errors firstObject];
    errorString = [firstObject errorString];
    v66 = [errorString length];

    if (v66)
    {
      [v62 bounds];
      if (CGRectIsEmpty(v232))
      {
        v67 = os_log_create("com.apple.pencilkit", "Math");
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.a) = 0;
          _os_log_error_impl(&dword_1C7CCA000, v67, OS_LOG_TYPE_ERROR, "Unable to find bounds for token, using hit test location instead", &buf, 2u);
        }

        v68 = v57;
        v69 = v14;

        v70 = v191;
      }

      else
      {
        v68 = v57;
        v69 = v14;
        [v62 bounds];
        pointb = CGRectGetMidX(v233);
        [v62 bounds];
        MinY = CGRectGetMinY(v234);
        v70 = v191;
        [(PKMathRecognitionViewController *)&buf drawingTransform];
        pointa = vaddq_f64(*&buf.tx, vmlaq_n_f64(vmulq_n_f64(*&buf.c, MinY), *&buf.a, pointb));
        v61 = pointa.y;
      }

      errors2 = [v62 errors];
      firstObject2 = [errors2 firstObject];
      errorString2 = [firstObject2 errorString];

      errors3 = [v62 errors];
      firstObject3 = [errors3 firstObject];
      errorReasonString = [firstObject3 errorReasonString];

      item = [v62 item];
      [v62 bounds];
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v87 = v86;
      view = [(PKMathRecognitionViewController *)v70 view];
      v89 = [(PKMathContextMenuController *)v81 mathErrorControllerForItem:v83 token:v85 tapBounds:v87 errorString:PKMathContextMenuController errorReasonString:item view:v62 delegate:errorString2, errorReasonString, view, v70];

      [(PKMathRecognitionViewController *)v70 setContextMenuController:v89];
      if (v89)
      {
        [v89[2] _presentMenuAtLocation:{pointa.x, v61}];
      }

      v217 = 1;

      v14 = v69;
      v57 = v68;
      goto LABEL_111;
    }

    if ([v62 type] == 4)
    {
      alternatives = [v62 alternatives];
      v72 = [alternatives count];

      if (v72)
      {
        [(PKMathRecognitionViewController *)v191 _triggerAlternativesMenuForToken:v62];
LABEL_110:
        v217 = 1;
        goto LABEL_111;
      }
    }
  }

  if (v14)
  {
    if (*(v191 + 88))
    {
      [v191 hideScrubber];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __93__PKMathRecognitionViewController__handleSingleTapAtDrawingLocation_fromHover_fromTapStroke___block_invoke;
      block[3] = &unk_1E82DAEC0;
      block[4] = v191;
      v205 = v14;
      v206 = v57;
      v207 = v187;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [(PKMathRecognitionViewController *)v191 _scrubVariable:v14 item:v57 openAsCompact:v187];
    }

    goto LABEL_110;
  }

  if (v58)
  {
    if (v57 && (*(v57 + 48) & 1) != 0)
    {
      if ((*(v191 + 192) & 8) == 0)
      {
LABEL_116:
        v128 = os_log_create("com.apple.pencilkit", "Math");
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          expression = [v57 expression];
          LODWORD(buf.a) = 138477827;
          *(&buf.a + 4) = expression;
          _os_log_impl(&dword_1C7CCA000, v128, OS_LOG_TYPE_DEFAULT, "Tapped on expression: %{private}@", &buf, 0xCu);
        }

        [v191 hideMathFloatingLabelView];
        expressionToPresent = [v57 expressionToPresent];
        if ([expressionToPresent length])
        {
          if ([(PKMathRecognitionItem *)v57 hasAnyErrorsOrAlternatives])
          {
            overlayDrawingController2 = [(PKMathRecognitionViewController *)v191 overlayDrawingController];
            uuid = [v57 uuid];
            v132 = [(PKOverlayDrawingController *)overlayDrawingController2 hasVisibleTokensForItem:uuid];

            if (!v132)
            {
              overlayDrawingController3 = [(PKMathRecognitionViewController *)v191 overlayDrawingController];
              if (v57)
              {
                v134 = *(v57 + 104);
              }

              else
              {
                v134 = 0;
              }

              v135 = v134;
              [(PKOverlayDrawingController *)overlayDrawingController3 setTokens:v135 item:v57];
            }
          }

          v136 = *(v191 + 16);
          uuid2 = [v57 uuid];
          v138 = [v136 objectForKeyedSubscript:uuid2];

          if (([v57 shouldSolveMathFlagIsSet] & 1) == 0 && objc_msgSend(v57, "shouldBeSolved") && objc_msgSend(v138, "length"))
          {
            [(PKMathRecognitionViewController *)v191 _triggerPopupToSolveItem:v57 supportCopy:1];
            v217 = 1;
          }

          else
          {
            overlayDrawingController4 = [(PKMathRecognitionViewController *)v191 overlayDrawingController];
            uuid3 = [v57 uuid];
            v141 = [(PKOverlayDrawingController *)overlayDrawingController4 existingViewForUUID:uuid3];

            v193 = v57;
            if (v138 && [v57 shouldSolveMathFlagIsSet])
            {
              if (!v141)
              {
                v142 = os_log_create("com.apple.pencilkit", "Math");
                if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.a) = 0;
                  _os_log_impl(&dword_1C7CCA000, v142, OS_LOG_TYPE_DEFAULT, "Recreating missing result view", &buf, 2u);
                }

                [(PKMathRecognitionViewController *)v191 _presentResult:v138 mathItem:v57 defaultAnimationType:2 fromHint:0 hadOldResult:1];
              }

              if ([v57 isVerticalExpression])
              {
                boundsForVerticalExpressionLine = [(PKMathRecognitionItem *)v57 boundsForVerticalExpressionLine];
              }

              else
              {
                boundsForVerticalExpressionLine = [(PKMathRecognitionItem *)v57 boundsForAnyEqualSign];
              }

              v179 = boundsForVerticalExpressionLine;
              v180 = v144;
              v181 = v145;
              v182 = v146;
              view2 = [(PKMathRecognitionViewController *)v191 view];
              v191 = [(PKMathContextMenuController *)v179 mathResultControllerForItem:v180 tapBounds:v181 view:v182 delegate:PKMathContextMenuController, v57, view2, v191];

              objc_storeStrong((v191 + 280), v191);
              if (v191)
              {
                [v191[2] _presentMenuAtLocation:pointa];
              }

              v148 = v62;
            }

            else
            {
              overlayDrawingController5 = [(PKMathRecognitionViewController *)v191 overlayDrawingController];
              v148 = [(PKOverlayDrawingController *)overlayDrawingController5 tokenAtLocation:pointa.y];

              if (v148 && ([v148 errors], v149 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v149, "firstObject"), v150 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v150, "errorString"), v151 = objc_claimAutoreleasedReturnValue(), v152 = objc_msgSend(v151, "length"), v151, v150, v149, v152))
              {
                v196 = v141;
                errors4 = [v148 errors];
                firstObject4 = [errors4 firstObject];
                v191 = [firstObject4 errorString];

                errors5 = [v148 errors];
                firstObject5 = [errors5 firstObject];
                errorReasonString2 = [firstObject5 errorReasonString];

                item2 = [v148 item];
                [v148 bounds];
                v161 = v160;
                v163 = v162;
                v165 = v164;
                v167 = v166;
                view3 = [(PKMathRecognitionViewController *)v191 view];
                v1912 = [(PKMathContextMenuController *)v161 mathErrorControllerForItem:v163 token:v165 tapBounds:v167 errorString:PKMathContextMenuController errorReasonString:item2 view:v148 delegate:v191, errorReasonString2, view3, v191];

                objc_storeStrong((v191 + 280), v1912);
                if (v1912)
                {
                  [v1912[2] _presentMenuAtLocation:pointa];
                }

                v141 = v196;
              }

              else
              {
                if ([v193 isVerticalExpression])
                {
                  boundsForVerticalExpressionLine2 = [(PKMathRecognitionItem *)v193 boundsForVerticalExpressionLine];
                }

                else
                {
                  boundsForVerticalExpressionLine2 = [(PKMathRecognitionItem *)v193 boundsForAnyEqualSign];
                }

                v174 = boundsForVerticalExpressionLine2;
                v175 = v171;
                v176 = v172;
                v177 = v173;
                view4 = [(PKMathRecognitionViewController *)v191 view];
                v191 = [(PKMathContextMenuController *)v174 mathCopyControllerForItem:v175 tapBounds:v176 view:v177 delegate:PKMathContextMenuController, v193, view4, v191];

                objc_storeStrong((v191 + 280), v191);
                if (v191)
                {
                  [v191[2] _presentMenuAtLocation:pointa];
                }
              }
            }

            v217 = 1;
            v62 = v148;
            v57 = v193;
          }

          goto LABEL_153;
        }

LABEL_128:

        v217 = 0;
LABEL_153:
        v14 = 0;
        goto LABEL_111;
      }
    }

    else
    {
      graphableVariables = [(PKMathRecognitionItem *)v57 graphableVariables];
      if (![graphableVariables count])
      {

        goto LABEL_116;
      }

      v127 = *(v191 + 192);

      if ((v127 & 8) == 0)
      {
        goto LABEL_116;
      }
    }

    [(PKMathRecognitionViewController *)v191 _triggerPopupToAddGraphForItem:v57];
    goto LABEL_110;
  }

  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  overlayDrawingController6 = [(PKMathRecognitionViewController *)v191 overlayDrawingController];
  expressionToPresent = [(PKOverlayDrawingController *)overlayDrawingController6 allViews];

  v93 = [expressionToPresent countByEnumeratingWithState:&v200 objects:v219 count:16];
  if (!v93)
  {
    goto LABEL_128;
  }

  v94 = v93;
  v95 = v57;
  v96 = *v201;
  while (2)
  {
    v97 = 0;
LABEL_90:
    if (*v201 != v96)
    {
      objc_enumerationMutation(expressionToPresent);
    }

    v98 = *(*(&v200 + 1) + 8 * v97);
    [v98 frame];
    if (!CGRectContainsPoint(v235, pointa))
    {
LABEL_97:
      if (v94 == ++v97)
      {
        v101 = [expressionToPresent countByEnumeratingWithState:&v200 objects:v219 count:16];
        v94 = v101;
        if (!v101)
        {
          v57 = v95;
          goto LABEL_128;
        }

        continue;
      }

      goto LABEL_90;
    }

    break;
  }

  if (!v98)
  {
    v99 = 0;
    goto LABEL_96;
  }

  v99 = v98[52];
  if (!v99 || ([*(v191 + 8) objectForKeyedSubscript:v99], (v100 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_96:

    goto LABEL_97;
  }

  v102 = v100;
  [v98 bounds];
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  view5 = [(PKMathRecognitionViewController *)v191 view];
  [v98 convertRect:view5 toView:{v104, v106, v108, v110}];
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;

  memset(&buf, 0, sizeof(buf));
  [(PKMathRecognitionViewController *)&v218 drawingTransform];
  CGAffineTransformInvert(&buf, &v218);
  v218 = buf;
  v236.origin.x = v113;
  v236.origin.y = v115;
  v236.size.width = v117;
  v236.size.height = v119;
  v237 = CGRectApplyAffineTransform(v236, &v218);
  v120 = v237.origin.x;
  v121 = v237.origin.y;
  v122 = v237.size.width;
  v123 = v237.size.height;
  view6 = [(PKMathRecognitionViewController *)v191 view];
  v1913 = [(PKMathContextMenuController *)v120 mathResultControllerForItem:v121 tapBounds:v122 view:v123 delegate:PKMathContextMenuController, v102, view6, v191];

  objc_storeStrong((v191 + 280), v1913);
  if (v1913)
  {
    [v1913[2] _presentMenuAtLocation:pointa];
  }

  v217 = 1;

  v14 = 0;
  v57 = v95;
LABEL_111:

LABEL_112:
  return v217;
}

- (void)didEraseStrokes:(id)strokes
{
  v34 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(strokesCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = strokesCopy;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        _strokeUUID = [*(*(&v28 + 1) + 8 * i) _strokeUUID];
        [v5 addObject:_strokeUUID];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_regenerateResultsIfNecessary object:0];
    [(PKMathRecognitionViewController *)self performSelector:sel_regenerateResultsIfNecessary withObject:0 afterDelay:2.0];
    goto LABEL_22;
  }

  v23 = v6;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allValues = [(NSMutableDictionary *)self->_currentMathItemsLookup allValues];
  v13 = [allValues countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v15 = *v25;
  do
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v25 != v15)
      {
        objc_enumerationMutation(allValues);
      }

      v17 = *(*(&v24 + 1) + 8 * j);
      expressionsWithActiveAnimations = self->_expressionsWithActiveAnimations;
      uuid = [v17 uuid];
      if (([(NSMutableSet *)expressionsWithActiveAnimations containsObject:uuid]& 1) == 0)
      {
        strokeUUIDs = [(PKMathRecognitionItem *)v17 strokeUUIDs];
        v21 = [v5 intersectsSet:strokeUUIDs];

        if (!v21)
        {
          continue;
        }

        overlayDrawingController = self->_overlayDrawingController;
        uuid = [v17 uuid];
        [(PKOverlayDrawingController *)&overlayDrawingController->super.isa removeViewForUUID:uuid animated:1];
      }
    }

    v14 = [allValues countByEnumeratingWithState:&v24 objects:v32 count:16];
  }

  while (v14);
LABEL_20:

  v6 = v23;
LABEL_22:
}

- (void)regenerateResultsIfNecessary
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allValues = [(NSMutableDictionary *)self->_currentMathItemsLookup allValues];
  v4 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
    *&v5 = 138477827;
    v19 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        currentResultsLookup = self->_currentResultsLookup;
        uuid = [v9 uuid];
        v12 = [(NSMutableDictionary *)currentResultsLookup objectForKeyedSubscript:uuid];

        overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
        uuid2 = [v9 uuid];
        v15 = [(PKOverlayDrawingController *)overlayDrawingController existingViewForUUID:uuid2];

        if ([v12 length])
        {
          if ([v9 shouldSolveMathFlagIsSet] && v15 == 0)
          {
            v17 = os_log_create("com.apple.pencilkit", "Math");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              expression = [v9 expression];
              *buf = v19;
              v25 = expression;
              _os_log_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_DEFAULT, "Regenerating missing results view for: %{private}@", buf, 0xCu);
            }

            [(PKMathRecognitionViewController *)self _presentResult:v12 mathItem:v9 defaultAnimationType:2 fromHint:0 hadOldResult:1];
          }
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }
}

- (void)eraserMovedToLocation:(CGPoint)location
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(&self->_delegateFlags + 1) & 0x80) != 0)
  {
    y = location.y;
    x = location.x;
    [(PKMathRecognitionViewController *)buf drawingTransform];
    v13 = vaddq_f64(v16, vmlaq_n_f64(vmulq_n_f64(v15, y), *buf, x));
    overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
    v5 = [(PKOverlayDrawingController *)overlayDrawingController drawingViewAtLocation:v13.f64[1]];

    if (v5)
    {
      v6 = v5[52];
      if (v6)
      {
        v7 = [(NSMutableDictionary *)self->_currentMathItemsLookup objectForKeyedSubscript:v6];
        v8 = v7;
        if (v7 && [v7 shouldSolveMathFlagIsSet])
        {
          v9 = os_log_create("com.apple.pencilkit", "Math");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            expression = [v8 expression];
            *buf = 138477827;
            *&buf[4] = expression;
            _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Remove result for: %{private}@", buf, 0xCu);
          }

          [(PKMathRecognitionViewController *)self _commitSetShouldSolve:1 undoable:v8 item:?];
        }

        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
LABEL_11:
  }
}

- (void)_commitSetShouldSolve:(uint64_t)solve undoable:(void *)undoable item:
{
  v18 = *MEMORY[0x1E69E9840];
  undoableCopy = undoable;
  v8 = undoableCopy;
  if (self && (*(self + 193) & 0x80) != 0)
  {
    heroStroke = [(PKMathRecognitionItem *)undoableCopy heroStroke];
    if (heroStroke)
    {
      v10 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        expression = [v8 expression];
        v15[0] = 67109379;
        v15[1] = a2;
        v16 = 2113;
        v17 = expression;
        _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Commit set should solve: %{BOOL}d, for: %{private}@", v15, 0x12u);
      }

      v12 = *(self + 192);
      WeakRetained = objc_loadWeakRetained((self + 240));
      v14 = WeakRetained;
      if ((v12 & 0x4000) != 0)
      {
        [WeakRetained mathViewController:self setShouldSolve:a2 item:v8 heroStroke:heroStroke flag:0x20000000000 undoable:solve];
      }

      else
      {
        [WeakRetained mathViewController:self setShouldSolve:a2 item:v8 heroStroke:heroStroke flag:0x20000000000];
      }
    }
  }
}

- (void)didBeginDrawing
{
  [(PKMathRecognitionViewController *)self cancelOpenPopoverForHint];
  [(PKMathRecognitionViewController *)self cancelOpenPopoverForAddingGraph];
  overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
  [(PKOverlayDrawingController *)overlayDrawingController didBeginDrawing];
}

- (void)dismissPopovers
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PKMathRecognitionViewController_dismissPopovers__block_invoke;
  block[3] = &unk_1E82D7148;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __50__PKMathRecognitionViewController_dismissPopovers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) activeScrubberView];
  v3 = v2 != 0;
  if (v2)
  {
    [*(a1 + 32) hideScrubber];
  }

  v4 = *(a1 + 32);
  if (*(v4 + 40))
  {
    [*(a1 + 32) hideMathFloatingLabelView];
    v4 = *(a1 + 32);
    v3 = 1;
  }

  if (!*(v4 + 48))
  {
    goto LABEL_16;
  }

  v5 = [v4 viewControllerForPresentingUI];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 248));
    v7 = [WeakRetained nextResponder];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = WeakRetained;
LABEL_11:
      v5 = v7;
      WeakRetained = v8;
      v8 = v5;
    }

    else
    {
      while (1)
      {
        v8 = v7;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v7 = [v7 nextResponder];
        objc_opt_class();
        WeakRetained = v8;
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_11;
        }
      }

      v5 = 0;
    }

    if (!v5)
    {
      v9 = objc_loadWeakRetained((v4 + 248));
      v10 = [v9 window];
      v5 = [v10 rootViewController];
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__PKMathRecognitionViewController_dismissPopovers__block_invoke_2;
  v13[3] = &unk_1E82D7148;
  v13[4] = *(a1 + 32);
  [v5 dismissViewControllerAnimated:1 completion:v13];

  v4 = *(a1 + 32);
  if (v4)
  {
LABEL_16:
    v11 = *(v4 + 280);
    if (v11)
    {
      [*(v11 + 16) dismissMenu];
    }
  }

  if (v3)
  {
    v12 = [(PKMathRecognitionViewController *)*(a1 + 32) tiledView];
    [v12 _pauseHoverPreviewForTimeInterval:0.1];
  }
}

- (id)hitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  activeScrubberView = [(PKCalculateScrubberController *)self->_scrubberController activeScrubberView];
  if (activeScrubberView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentView);
    [WeakRetained convertPoint:activeScrubberView toView:{x, y}];
    v9 = v8;
    v11 = v10;

    v12 = [activeScrubberView hitTest:0 withEvent:{v9, v11}];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43__PKMathRecognitionViewController_hitTest___block_invoke;
      block[3] = &unk_1E82D7148;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v14 = activeScrubberView;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)adjustedSelectedStrokes:(id)strokes selectionPath:(id)path
{
  v75 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  pathCopy = path;
  v8 = [MEMORY[0x1E695DFA8] set];
  if ([pathCopy CGPath])
  {
    v58 = pathCopy;
    v59 = strokesCopy;
    [pathCopy bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    memset(&v72, 0, sizeof(v72));
    [(PKMathRecognitionViewController *)&v71 drawingTransform];
    CGAffineTransformInvert(&v72, &v71);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
    allViews = [(PKOverlayDrawingController *)overlayDrawingController allViews];

    v19 = [allViews countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v19)
    {
      v20 = v19;
      v62 = *v68;
      v60 = allViews;
      selfCopy = self;
      do
      {
        v21 = 0;
        do
        {
          if (*v68 != v62)
          {
            objc_enumerationMutation(allViews);
          }

          v22 = *(*(&v67 + 1) + 8 * v21);
          imageView = [(PKOverlayDrawingView *)v22 imageView];

          if (imageView)
          {
            view = [(PKMathRecognitionViewController *)&self->super.isa view];
            imageView2 = [(PKOverlayDrawingView *)v22 imageView];
            [imageView2 bounds];
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v33 = v32;
            imageView3 = [(PKOverlayDrawingView *)v22 imageView];
            [view convertRect:imageView3 fromView:{v27, v29, v31, v33}];
            v36 = v35;
            v38 = v37;
            v40 = v39;
            v42 = v41;

            v71 = v72;
            v77.origin.x = v36;
            v77.origin.y = v38;
            v77.size.width = v40;
            v77.size.height = v42;
            v78 = CGRectApplyAffineTransform(v77, &v71);
            v79.origin.x = v10;
            v79.origin.y = v12;
            v79.size.width = v14;
            v79.size.height = v16;
            if (CGRectIntersectsRect(v78, v79))
            {
              if (CGPathIntersectsRect())
              {
                if (v22)
                {
                  v43 = *(v22 + 416);
                }

                else
                {
                  v43 = 0;
                }

                v44 = v43;
                v45 = [(NSMutableDictionary *)self->_currentMathItemsLookup objectForKeyedSubscript:v44];
                v46 = v45;
                if (v45)
                {
                  v65 = 0u;
                  v66 = 0u;
                  v63 = 0u;
                  v64 = 0u;
                  strokes = [v45 strokes];
                  v48 = [strokes countByEnumeratingWithState:&v63 objects:v73 count:16];
                  if (v48)
                  {
                    v49 = v48;
                    v50 = *v64;
                    do
                    {
                      for (i = 0; i != v49; ++i)
                      {
                        if (*v64 != v50)
                        {
                          objc_enumerationMutation(strokes);
                        }

                        _strokeUUID = [*(*(&v63 + 1) + 8 * i) _strokeUUID];
                        [v8 addObject:_strokeUUID];
                      }

                      v49 = [strokes countByEnumeratingWithState:&v63 objects:v73 count:16];
                    }

                    while (v49);
                  }

                  self = selfCopy;
                  allViews = v60;
                }
              }
            }
          }

          ++v21;
        }

        while (v21 != v20);
        v53 = [allViews countByEnumeratingWithState:&v67 objects:v74 count:16];
        v20 = v53;
      }

      while (v53);
    }

    pathCopy = v58;
    strokesCopy = v59;
  }

  if ([v8 count])
  {
    allObjects = [strokesCopy allObjects];
    [v8 addObjectsFromArray:allObjects];

    v55 = [v8 copy];
  }

  else
  {
    v55 = strokesCopy;
  }

  v56 = v55;

  return v56;
}

- (void)overlayController:(id)controller imageViewForStrokes:(id)strokes completion:(id)completion
{
  completionCopy = completion;
  strokesCopy = strokes;
  tiledView = [(PKMathRecognitionViewController *)&self->super.isa tiledView];
  drawing = [(PKMathRecognitionViewController *)&self->super.isa drawing];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__PKMathRecognitionViewController_overlayController_imageViewForStrokes_completion___block_invoke;
  v13[3] = &unk_1E82DAEE8;
  v14 = tiledView;
  selfCopy = self;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = tiledView;
  [(PKMathRecognitionViewController *)self _imageViewForStrokes:strokesCopy drawing:drawing completion:v13];
}

void __84__PKMathRecognitionViewController_overlayController_imageViewForStrokes_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  [v21 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 32);
  v12 = [(PKMathRecognitionViewController *)*(a1 + 40) view];
  [v11 convertRect:v12 toView:{v4, v6, v8, v10}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v21 setFrame:{v14, v16, v18, v20}];
  (*(*(a1 + 48) + 16))();
}

- (void)_imageViewForStrokes:(void *)strokes drawing:(void *)drawing completion:
{
  v7 = a2;
  strokesCopy = strokes;
  drawingCopy = drawing;
  if (self)
  {
    tiledView = [(PKMathRecognitionViewController *)self tiledView];
    if ((*(self + 192) & 0x20) != 0 && (WeakRetained = objc_loadWeakRetained((self + 240)), [WeakRetained mathViewController:self coordinateSpaceForDrawing:strokesCopy], v12 = objc_claimAutoreleasedReturnValue(), WeakRetained, v12))
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      [(PKMathRecognitionViewController *)&v16 drawingTransformFromDelegate];
      selectionController = [tiledView selectionController];
      v15[0] = v16;
      v15[1] = v17;
      v15[2] = v18;
      [(PKSelectionController *)selectionController _imageViewForStrokes:v7 drawing:strokesCopy drawingTransform:v15 coordinateSpace:v12 completion:drawingCopy];
    }

    else
    {
      selectionController2 = [tiledView selectionController];
      [(PKSelectionController *)selectionController2 _imageViewForStrokes:v7 drawing:strokesCopy completion:drawingCopy];
    }
  }
}

- (void)overlayController:(id)controller willUpdateView:(id)view animationDuration:(double)duration
{
  tiledView = [(PKMathRecognitionViewController *)&self->super.isa tiledView];
  [tiledView _pauseHoverPreviewForTimeInterval:0.5];
}

void __75__PKMathRecognitionViewController__maskImageForStrokes_drawing_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 selectionController];
  [(PKSelectionController *)v5 _maskImageForStrokes:*(a1 + 48) drawing:v4 imageView:*(a1 + 56) completion:?];
}

- (void)mathRecognitionController:(id)controller didUpdateExpressions:(id)expressions newItems:(id)items removedItems:(id)removedItems mathItems:(id)mathItems
{
  v86 = *MEMORY[0x1E69E9840];
  expressionsCopy = expressions;
  itemsCopy = items;
  removedItemsCopy = removedItems;
  mathItemsCopy = mathItems;
  [(PKMathRecognitionViewController *)self cancelOpenPopoverForHint];
  [(PKMathRecognitionViewController *)self cancelOpenPopoverForAddingGraph];
  v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(mathItemsCopy, "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = mathItemsCopy;
  v14 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
  v63 = expressionsCopy;
  if (v14)
  {
    v15 = v14;
    v16 = *v76;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v76 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v75 + 1) + 8 * i);
        currentMathItemsLookup = self->_currentMathItemsLookup;
        uuid = [v18 uuid];
        v21 = [(NSMutableDictionary *)currentMathItemsLookup objectForKeyedSubscript:uuid];

        uuid2 = [v18 uuid];
        [v13 setObject:v18 forKeyedSubscript:uuid2];

        if (v21)
        {
          uuid3 = [v18 uuid];
          if ([expressionsCopy containsObject:uuid3])
          {
          }

          else
          {
            uuid4 = [v18 uuid];
            v25 = [itemsCopy containsObject:uuid4];

            expressionsCopy = v63;
            if ((v25 & 1) == 0)
            {
              [(PKMathRecognitionItem *)v18 _updateFromOldItem:v21];
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v15);
  }

  v26 = [v13 copy];
  v27 = self->_currentMathItemsLookup;
  self->_currentMathItemsLookup = v26;

  v28 = [itemsCopy setByAddingObjectsFromSet:expressionsCopy];
  v29 = [v28 mutableCopy];

  v30 = [removedItemsCopy mutableCopy];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v61 = v29;
  v64 = [v29 copy];
  v31 = [v64 countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v72;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v72 != v33)
        {
          objc_enumerationMutation(v64);
        }

        v35 = *(*(&v71 + 1) + 8 * j);
        v36 = [v13 objectForKeyedSubscript:v35];
        if (!v36)
        {
          goto LABEL_31;
        }

        v37 = [itemsCopy containsObject:v35];
        v38 = os_log_create("com.apple.pencilkit", "Math");
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
        if (v37)
        {
          if (v39)
          {
            expression = [v36 expression];
            [v36 sortIndex];
            *buf = 138478083;
            v81 = expression;
            v82 = 2048;
            v83 = v41;
            v42 = v38;
            v43 = "New expression: %{private}@, sortOrder: %g";
LABEL_24:
            _os_log_impl(&dword_1C7CCA000, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 0x16u);
          }
        }

        else if (v39)
        {
          expression = [v36 expression];
          [v36 sortIndex];
          *buf = 138478083;
          v81 = expression;
          v82 = 2048;
          v83 = v44;
          v42 = v38;
          v43 = "Updated expression: %{private}@, sortOrder: %g";
          goto LABEL_24;
        }

        if (![v36 shouldBeSolved] || (-[PKMathRecognitionViewController drawing](&self->super.isa), v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v36, "isValidForDrawing:", v45), v45, (v46 & 1) == 0))
        {
          drawing = [(PKMathRecognitionViewController *)&self->super.isa drawing];
          v48 = [v36 isValidForDrawing:drawing];

          if ((v48 & 1) == 0)
          {
            v49 = os_log_create("com.apple.pencilkit", "Math");
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              expression2 = [v36 expression];
              *buf = 138477827;
              v81 = expression2;
              _os_log_impl(&dword_1C7CCA000, v49, OS_LOG_TYPE_DEFAULT, "Detected stale item: %{private}@", buf, 0xCu);
            }
          }

LABEL_31:
          [v30 addObject:v35];
        }
      }

      v32 = [v64 countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v32);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v51 = v30;
  v52 = [v51 countByEnumeratingWithState:&v67 objects:v79 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v68;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v68 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v67 + 1) + 8 * k);
        overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
        [(PKOverlayDrawingController *)overlayDrawingController removeViewForUUID:v56 animated:1];
      }

      v53 = [v51 countByEnumeratingWithState:&v67 objects:v79 count:16];
    }

    while (v53);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained mathViewController:self didUpdateExpressions:v63 newExpressions:itemsCopy removedExpressions:removedItemsCopy mathItems:obj];

  overlayDrawingController2 = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
  v60 = overlayDrawingController2;
  if (overlayDrawingController2)
  {
    [(PKOverlayDrawingController *)overlayDrawingController2 _removeOldTokenViewsExcludeItems:v63];
  }
}

- (double)mathRecognitionControllerTimestampForLatestUserInteraction:(id)interaction
{
  tiledView = [(PKMathRecognitionViewController *)&self->super.isa tiledView];
  [tiledView timestampForLatestUserInteraction];
  v6 = v5;

  if ((*(&self->_delegateFlags + 2) & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained mathViewControllerTimestampForLatestUserInteraction:self];
    v6 = v8;
  }

  return v6;
}

- (void)mathRecognitionController:(id)controller solveStateChangedForExpressions:(id)expressions mathItems:(id)items
{
  v47 = *MEMORY[0x1E69E9840];
  expressionsCopy = expressions;
  itemsCopy = items;
  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        uuid = [v15 uuid];
        [v9 setObject:v15 forKeyedSubscript:uuid];

        currentMathItemsLookup = self->_currentMathItemsLookup;
        uuid2 = [v15 uuid];
        v19 = [(NSMutableDictionary *)currentMathItemsLookup objectForKeyedSubscript:uuid2];

        if (v19)
        {
          [(PKMathRecognitionItem *)v15 _updateFromOldItem:v19];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v12);
  }

  v20 = [v9 copy];
  v21 = self->_currentMathItemsLookup;
  self->_currentMathItemsLookup = v20;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = expressionsCopy;
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (!v23)
  {

LABEL_27:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    goto LABEL_28;
  }

  v24 = v23;
  v36 = v10;
  v25 = *v38;
  do
  {
    for (j = 0; j != v24; ++j)
    {
      if (*v38 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v27 = *(*(&v37 + 1) + 8 * j);
      v28 = [v9 objectForKeyedSubscript:v27];
      if ([v28 shouldSolveMathFlagIsSet])
      {
        overlayDrawingController2 = [(NSMutableDictionary *)self->_currentResultsLookup objectForKeyedSubscript:v27];
        overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
        v31 = [(PKOverlayDrawingController *)overlayDrawingController existingViewForUUID:v27];

        if (v31)
        {
          v32 = 1;
        }

        else
        {
          v32 = overlayDrawingController2 == 0;
        }

        if (!v32)
        {
          [(PKMathRecognitionViewController *)self _presentResult:overlayDrawingController2 mathItem:v28 defaultAnimationType:2 fromHint:0 hadOldResult:0];
        }
      }

      else
      {
        overlayDrawingController2 = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
        [(PKOverlayDrawingController *)overlayDrawingController2 removeViewForUUID:v27 animated:1];
      }
    }

    v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
  }

  while (v24);

  v10 = v36;
  if (self)
  {
    goto LABEL_27;
  }

  WeakRetained = 0;
LABEL_28:
  v34 = [MEMORY[0x1E695DFD8] set];
  v35 = [MEMORY[0x1E695DFD8] set];
  [WeakRetained mathViewController:self didUpdateExpressions:v22 newExpressions:v34 removedExpressions:v35 mathItems:v10];
}

- (void)mathRecognitionController:(id)controller didEraseStrokesInExpressions:(id)expressions
{
  v19 = *MEMORY[0x1E69E9840];
  expressionsCopy = expressions;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [expressionsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(expressionsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        uuidForLatestLiveVariableExpression = self->_uuidForLatestLiveVariableExpression;
        if (!uuidForLatestLiveVariableExpression || ([(NSUUID *)uuidForLatestLiveVariableExpression isEqual:*(*(&v14 + 1) + 8 * v9)]& 1) == 0)
        {
          v12 = [(NSMutableDictionary *)self->_currentMathItemsLookup objectForKeyedSubscript:v10];
          if (v12 && ([(NSMutableSet *)self->_expressionsWithActiveAnimations containsObject:v10]& 1) == 0)
          {
            [(PKOverlayDrawingController *)&self->_overlayDrawingController->super.isa removeViewForUUID:v10 animated:1];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [expressionsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = self->_uuidForLatestLiveVariableExpression;
  self->_uuidForLatestLiveVariableExpression = 0;
}

- (void)hideMathFloatingLabelView
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_hideMathFloatingLabelView object:0];
  [(UIView *)self->_mathFloatingLabelView removeFromSuperview];
  mathFloatingLabelView = self->_mathFloatingLabelView;
  self->_mathFloatingLabelView = 0;
}

void __66__PKMathRecognitionViewController__showDetectionAnimationForItem___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v26 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v12 = [(PKMathRecognitionViewController *)*(a1 + 32) view];
    v13 = [v12 tintColor];
    v14 = [v26 imageWithTintColor:v13];

    v15 = *(a1 + 40);
    v16 = objc_loadWeakRetained(WeakRetained + 31);
    [v15 convertRect:v16 toView:{a3, a4, a5, a6}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [(PKMathRecognitionViewController *)WeakRetained overlayDrawingController];
    [(PKOverlayDrawingController *)v25 showDetectionAnimationWithImage:v14 frame:v18, v20, v22, v24];

    v26 = v14;
  }
}

- (void)_sendUpdatedResult:(void *)result strokes:(void *)strokes uuid:
{
  v10 = a2;
  resultCopy = result;
  strokesCopy = strokes;
  if (self)
  {
    if (*(self + 193))
    {
      WeakRetained = objc_loadWeakRetained((self + 240));
      [WeakRetained mathViewController:self updatedResult:v10 strokes:resultCopy expressionUUID:strokesCopy];
    }

    if ([self shouldCacheDrawingForResults])
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateDrawingOverlayCache object:0];
      [self performSelector:sel__updateDrawingOverlayCache withObject:0 afterDelay:0.1];
    }
  }
}

- (void)mathResult:(id)result itemUUID:(id)d
{
  v43 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  dCopy = d;
  v8 = [(NSMutableDictionary *)self->_currentMathItemsLookup objectForKeyedSubscript:dCopy];
  v9 = v8;
  if (v8 && -[NSObject shouldBeSolved](v8, "shouldBeSolved") && [resultCopy length])
  {
    drawing = [(PKMathRecognitionViewController *)&self->super.isa drawing];
    if (([v9 isValidForDrawing:drawing]& 1) != 0)
    {
      isLowConfidenceMath = [v9 isLowConfidenceMath];

      if (!isLowConfidenceMath)
      {
        currentResultsLookup = self->_currentResultsLookup;
        uuid = [v9 uuid];
        v14 = [(NSMutableDictionary *)currentResultsLookup objectForKeyedSubscript:uuid];

        v15 = self->_currentResultsLookup;
        uuid2 = [v9 uuid];
        [(NSMutableDictionary *)v15 setObject:resultCopy forKeyedSubscript:uuid2];

        drawing2 = [(PKMathRecognitionViewController *)&self->super.isa drawing];
        v18 = [(PKMathRecognitionItem *)v9 _heroStrokeInDrawing:drawing2];

        if ([(PKMathRecognitionViewController *)self solvingStyle])
        {
          if (([v9 shouldSolveMathFlagIsSet]& 1) == 0)
          {
            if ([(PKMathRecognitionItem *)v9 isRecentlyModified]&& [(PKMathRecognitionViewController *)self solvingStyle]== 1)
            {
              uuid3 = [v9 uuid];
              popoverHintItemUUID = self->_popoverHintItemUUID;
              self->_popoverHintItemUUID = uuid3;

              [(PKMathRecognitionViewController *)self performSelector:sel_openPopoverForHint withObject:0 afterDelay:[(PKMathRecognitionItem *)v9 _remainingDelayForTargetDelay:?]];
            }

            goto LABEL_37;
          }
        }

        else
        {
          isRecentlyModified = [(PKMathRecognitionItem *)v9 isRecentlyModified];
          v31 = isRecentlyModified;
          if ((*(&self->_delegateFlags + 1) & 0x80) != 0 && isRecentlyModified && v18 && ([v9 shouldSolveMathFlagIsSet]& 1) == 0)
          {
            [(PKMathRecognitionViewController *)self _commitSetShouldSolve:0 undoable:v9 item:?];
          }

          else if ((([v9 shouldSolveMathFlagIsSet]| v31) & 1) == 0)
          {
LABEL_37:
            v32 = os_log_create("com.apple.pencilkit", "Math");
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              expression = [v9 expression];
              v35 = 138478083;
              v36 = expression;
              v37 = 2113;
              v38 = resultCopy;
              _os_log_impl(&dword_1C7CCA000, v32, OS_LOG_TYPE_DEFAULT, "Should not show results for expression: %{private}@, result: %{private}@", &v35, 0x16u);
            }

            [(PKMathRecognitionItem *)v9 _logRecentlyModifiedAndCreated];
            overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
            [(PKOverlayDrawingController *)overlayDrawingController hideImageForUUID:dCopy];

            [(PKMathRecognitionViewController *)self _sendUpdatedResult:MEMORY[0x1E695E0F0] strokes:dCopy uuid:?];
            goto LABEL_42;
          }
        }

        [(PKMathRecognitionViewController *)self _presentResult:resultCopy mathItem:v9 defaultAnimationType:2 fromHint:0 hadOldResult:v14 != 0];
LABEL_42:

        goto LABEL_29;
      }
    }

    else
    {
    }
  }

  if ([v9 shouldBeSolved])
  {
    v21 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      expression2 = [v9 expression];
      drawing3 = [(PKMathRecognitionViewController *)&self->super.isa drawing];
      v35 = 138478595;
      v36 = expression2;
      v37 = 2113;
      v38 = resultCopy;
      v39 = 1024;
      v40 = [v9 isValidForDrawing:drawing3];
      v41 = 1024;
      isLowConfidenceMath2 = [v9 isLowConfidenceMath];
      _os_log_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEFAULT, "Skipping presenting result for expression: %{private}@, result: %{private}@, valid: %{BOOL}d, lowConfidence: %{BOOL}d", &v35, 0x22u);
    }
  }

  overlayDrawingController2 = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
  [(PKOverlayDrawingController *)overlayDrawingController2 hideImageForUUID:dCopy];

  [(PKMathRecognitionViewController *)self _sendUpdatedResult:MEMORY[0x1E695E0F0] strokes:dCopy uuid:?];
  if (v9)
  {
    liveVariable = self->_liveVariable;
    if (liveVariable)
    {
      liveVariable = liveVariable->_mathItem;
    }

    v26 = liveVariable;
    if (v26 == v9 || ![(PKMathRecognitionItem *)v9 isRecentlyModified])
    {
      goto LABEL_27;
    }

    v27 = [(NSMutableDictionary *)self->_currentResultsLookup objectForKeyedSubscript:dCopy];
    if (v27)
    {
    }

    else
    {
      if (([(PKMathRecognitionItem *)v9 hasAnyErrors]& 1) != 0)
      {
LABEL_27:

        goto LABEL_28;
      }

      shouldBeSolved = [v9 shouldBeSolved];

      if (!shouldBeSolved)
      {
        goto LABEL_28;
      }
    }

    v26 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      expression3 = [v9 expression];
      v35 = 138477827;
      v36 = expression3;
      _os_log_impl(&dword_1C7CCA000, v26, OS_LOG_TYPE_DEFAULT, "Detected math item with no result and no error: %{private}@", &v35, 0xCu);
    }

    goto LABEL_27;
  }

LABEL_28:
  [(NSMutableDictionary *)self->_currentResultsLookup setObject:0 forKeyedSubscript:dCopy];
  [(NSMutableDictionary *)self->_currentResultsAttributionLookup setObject:0 forKeyedSubscript:dCopy];
  [(NSMutableDictionary *)self->_currentResultsDrawings setObject:0 forKeyedSubscript:dCopy];
LABEL_29:
}

- (void)mathResultAttributionImage:(id)image darkModeImage:(id)modeImage string:(id)string date:(id)date itemUUID:(id)d
{
  imageCopy = image;
  modeImageCopy = modeImage;
  stringCopy = string;
  dateCopy = date;
  if (imageCopy && modeImageCopy)
  {
    dCopy = d;
    dCopy2 = objc_alloc_init(PKMathResultAttribution);
    [(PKMathResultAttribution *)dCopy2 setImage:imageCopy];
    [(PKMathResultAttribution *)dCopy2 setDarkModeImage:modeImageCopy];
    [(PKMathResultAttribution *)dCopy2 setDate:dateCopy];
    [(PKMathResultAttribution *)dCopy2 setString:stringCopy];
    [(NSMutableDictionary *)self->_currentResultsAttributionLookup setObject:dCopy2 forKeyedSubscript:dCopy];
  }

  else
  {
    currentResultsAttributionLookup = self->_currentResultsAttributionLookup;
    dCopy2 = d;
    [(NSMutableDictionary *)currentResultsAttributionLookup setObject:0 forKeyedSubscript:dCopy2];
  }
}

id __112__PKMathRecognitionViewController__emitMathUsageForItem_usage_recognitionLatency_synthesisLatency_hadOldResult___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) copy];

  return v1;
}

void __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_3(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v5 = [v3 strokes];
    v6 = *(a1 + 32);
    v7 = [(PKMathRecognitionViewController *)WeakRetained drawing];
    LOBYTE(v6) = [v6 isValidForDrawing:v7];

    if (v6)
    {
      v8 = WeakRetained[4];
      v9 = [*(a1 + 32) uuid];
      [v8 setObject:v3 forKeyedSubscript:v9];
    }

    else
    {
      v10 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        [*(a1 + 32) expression];
        v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138477827;
        v72 = v11;
        _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Synthesize found invalid math item for expression: %{private}@", buf, 0xCu);
      }

      v12 = WeakRetained[4];
      v13 = [*(a1 + 32) uuid];
      [v12 setObject:0 forKeyedSubscript:v13];

      v5 = MEMORY[0x1E695E0F0];
    }

    [PKDrawing _boundingBoxForStrokeArray:v5];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(PKMathRecognitionViewController *)WeakRetained drawing];
    v23 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) expression];
      v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v25 = *(a1 + 40);
      *buf = 138478083;
      v72 = v24;
      v73 = 2113;
      v74 = v25;
      _os_log_impl(&dword_1C7CCA000, v23, OS_LOG_TYPE_DEFAULT, "Updating drawing view for: %{private}@, result: %{private}@", buf, 0x16u);
    }

    v80.origin.x = v15;
    v80.origin.y = v17;
    v80.size.width = v19;
    v80.size.height = v21;
    MaxX = CGRectGetMaxX(v80);
    [*(a1 + 48) canvasWidth];
    v28 = v27;
    [*(a1 + 48) canvasWidth];
    if (v29 <= 0.0 || ![v5 count] || (v30 = *(a1 + 48)) != 0 && (-[PKMathRecognitionViewController tiledView](v30), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "selectionController"), v32 = objc_claimAutoreleasedReturnValue(), v33 = -[PKSelectionController hasStrokesOrElementsSelection](v32), v32, v31, (v33 & 1) != 0) || (*(a1 + 96) & 1) != 0 || (v34 = MaxX - v28, v34 <= 4.0) || (-[PKMathRecognitionItem isRecentlyModified](*(a1 + 32)) & 1) == 0 && *(a1 + 97) != 1)
    {
      if (*(a1 + 96))
      {
        v47 = 0;
      }

      else
      {
        v47 = *(a1 + 80);
        if ([(PKMathRecognitionItem *)*(a1 + 32) isRecentlyModified]&& (*(a1 + 98) & 1) == 0)
        {
          if ((*(a1 + 97) & 1) == 0)
          {
            [(PKMathRecognitionViewController *)WeakRetained _showDetectionAnimationForItem:?];
          }

          v47 = 1;
        }
      }

      v46 = [(PKMathRecognitionViewController *)WeakRetained overlayDrawingController];
      [(PKOverlayDrawingController *)v46 updateDrawingView:v5 strokes:v47 animationType:*(a1 + 40) result:0 imageView:?];
    }

    else
    {
      v35 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v35, OS_LOG_TYPE_DEFAULT, "Triggering wink animation", buf, 2u);
      }

      v36 = v34 + 20.0;
      [*(a1 + 32) bounds];
      v38 = v37;
      [v3 bounds];
      v40 = fmax(1.0 - v36 / (v38 + v39), 0.5);
      v41 = WeakRetained[22];
      v42 = [*(a1 + 32) uuid];
      [v41 addObject:v42];

      v43 = [(PKMathRecognitionViewController *)WeakRetained overlayDrawingController];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_163;
      v61[3] = &unk_1E82DB028;
      v62 = *(a1 + 32);
      v63 = WeakRetained;
      v64 = *(a1 + 56);
      v44 = v22;
      v45 = *(a1 + 48);
      v65 = v44;
      v66 = v45;
      v70 = v40;
      v67 = *(a1 + 64);
      v68 = v5;
      v69 = *(a1 + 40);
      [WeakRetained overlayController:v43 imageViewForStrokes:v68 completion:v61];

      v46 = v62;
    }

    v48 = *(a1 + 40);
    v49 = [*(a1 + 32) uuid];
    [(PKMathRecognitionViewController *)WeakRetained _sendUpdatedResult:v48 strokes:v5 uuid:v49];

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v51 = v50;
    v52 = [(PKMathRecognitionItem *)*(a1 + 32) mostRecentStrokeTimestamp];
    if (v51 - v52 < 5.0)
    {
      v53 = *(a1 + 88);
      if ([v5 count])
      {
        if ((*(a1 + 96) & 1) == 0 && ![*(a1 + 48) solvingStyle])
        {
          v54 = os_log_create("com.apple.pencilkit", "Math");
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134284289;
            v72 = v52;
            v73 = 2049;
            v74 = v51;
            v75 = 2049;
            v76 = v51 - v52;
            v77 = 2049;
            v78 = v51 - v53;
            _os_log_impl(&dword_1C7CCA000, v54, OS_LOG_TYPE_DEFAULT, "Most recent stroke timestamp: %{private}f, Synthesized drawing timestamp: %{private}f, MathRecognitionToDrawing: %{private}f, SynthesizeTimeInterval: %{private}f", buf, 0x2Au);
          }

          if (os_variant_has_internal_ui())
          {
            v55 = _PKSignpostLog();
            if (os_signpost_enabled(v55))
            {
              *buf = 134217984;
              v72 = v51 - v52;
              _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v55, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MathRecognitionToDrawing", "%f", buf, 0xCu);
            }

            v56 = os_log_create("com.apple.pencilkit", "");
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1C7CCA000, v56, OS_LOG_TYPE_INFO, "DISCRETE MathRecognitionToDrawing", buf, 2u);
            }
          }

          if (*(a1 + 96))
          {
            v57 = 3;
          }

          else
          {
            v57 = 1;
          }

          [(PKMathRecognitionViewController *)*(a1 + 48) _emitMathUsageForItem:v57 usage:((*(a1 + 88) - v52) * 1000.0) recognitionLatency:((v51 - *(a1 + 88)) * 1000.0) synthesisLatency:*(a1 + 98) hadOldResult:?];
        }
      }
    }

    v58 = dispatch_time(0, 100000000);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_167;
    v59[3] = &unk_1E82D69B8;
    objc_copyWeak(&v60, (a1 + 72));
    dispatch_after(v58, MEMORY[0x1E69E96A0], v59);
    objc_destroyWeak(&v60);
  }
}

void __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_163(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) strokes];
  v5 = [PKStroke copyStrokes:v4 hidden:1];

  v6 = *(a1 + 40);
  v7 = [(PKMathRecognitionViewController *)v6 overlayDrawingController];
  v8 = [*(a1 + 32) strokes];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_2_165;
  v15[3] = &unk_1E82DB000;
  v16 = *(a1 + 48);
  v17 = v5;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v18 = v9;
  v19 = v10;
  v26 = *(a1 + 96);
  v12 = *(a1 + 40);
  v20 = v3;
  v21 = v12;
  v22 = v11;
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = *(a1 + 32);
  v13 = v3;
  v14 = v5;
  [v6 overlayController:v7 imageViewForStrokes:v8 completion:v15];
}

void __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_2_165(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _setAdditionalStrokes:*(a1 + 40) inDrawing:*(a1 + 48) completion:&__block_literal_global_66];
  v4 = [(PKMathRecognitionViewController *)*(a1 + 56) view];
  [v4 addSubview:v3];

  v5 = [(PKMathRecognitionViewController *)*(a1 + 56) view];
  [v5 addSubview:*(a1 + 64)];

  [v3 frame];
  v7 = v6;
  v9 = v8;
  v46 = v11;
  v47 = v10;
  DKDScaleRectAroundPoint(v6, v8, v10, v11, v6, v8, *(a1 + 112));
  v41 = v13;
  v42 = v12;
  v39 = v15;
  v40 = v14;
  [*(a1 + 64) frame];
  v44 = v17;
  v45 = v16;
  v43 = v18;
  v20 = v19;
  DKDScaleRectAroundPoint(v16, v17, v18, v19, v7, v9, *(a1 + 112));
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = MEMORY[0x1E69DD250];
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_4;
  v81[3] = &unk_1E82D7148;
  v82 = *(a1 + 64);
  [v29 performWithoutAnimation:v81];
  v30 = MEMORY[0x1E69DD250];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_5;
  v79[3] = &unk_1E82D7148;
  v80 = *(a1 + 64);
  [v30 animateWithDuration:v79 animations:0.2];
  v31 = MEMORY[0x1E69DD250];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_6;
  v68[3] = &unk_1E82DAFB0;
  v69 = *(a1 + 64);
  v71 = v22;
  v72 = v24;
  v73 = v26;
  v74 = v28;
  v32 = v3;
  v70 = v32;
  v75 = v42;
  v76 = v41;
  v77 = v40;
  v78 = v39;
  [v31 _animateUsingSpringWithDuration:0 delay:v68 options:0 mass:0.57 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:30.0 completion:0.0];
  v33 = MEMORY[0x1E69DD250];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_7;
  v57[3] = &unk_1E82DAFB0;
  v58 = *(a1 + 64);
  v60 = v45;
  v61 = v44;
  v62 = v43;
  v63 = v20;
  v59 = v32;
  v64 = v7;
  v65 = v9;
  v66 = v47;
  v67 = v46;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_8;
  v49[3] = &unk_1E82DAFD8;
  v50 = *(a1 + 32);
  v51 = *(a1 + 48);
  v52 = v59;
  *&v34 = *(a1 + 64);
  *(&v34 + 1) = *(a1 + 72);
  v48 = v34;
  v35 = *(a1 + 80);
  v36 = *(a1 + 88);
  *&v37 = v35;
  *(&v37 + 1) = v36;
  v53 = v48;
  v54 = v37;
  v55 = *(a1 + 96);
  v56 = *(a1 + 104);
  v38 = v59;
  [v33 _animateUsingSpringWithDuration:0 delay:v57 options:v49 mass:0.57 stiffness:0.97 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
}

uint64_t __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

uint64_t __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

void __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_9;
    v12[3] = &unk_1E82D7148;
    v13 = *(a1 + 48);
    [v3 _setAdditionalStrokes:MEMORY[0x1E695E0F0] inDrawing:v4 completion:v12];
    [*(a1 + 56) removeFromSuperview];
    v5 = [(PKMathRecognitionViewController *)*(a1 + 64) overlayDrawingController];
    [(PKOverlayDrawingController *)v5 updateDrawingView:*(a1 + 80) strokes:0 animationType:*(a1 + 88) result:*(a1 + 56) imageView:?];

    v6 = *(*(a1 + 64) + 176);
    v7 = [*(a1 + 96) uuid];
    [v6 removeObject:v7];

    v8 = *(a1 + 64);
    if (*(v8 + 194))
    {
      WeakRetained = objc_loadWeakRetained((v8 + 240));
      v10 = *(a1 + 64);
      v11 = [*(a1 + 96) strokes];
      [WeakRetained mathViewController:v10 selectStrokes:v11];
    }
  }
}

void __102__PKMathRecognitionViewController__presentResult_mathItem_defaultAnimationType_fromHint_hadOldResult___block_invoke_167(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[24] & 1) != 0)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 30);
    [v2 mathViewControllerUpdateFrameForContainer:v3];

    WeakRetained = v3;
  }
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  actionsCopy = actions;
  array = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  if (self->_alternativedEditMenuInteraction == interactionCopy)
  {
    alternatives = [(PKMathRecognitionToken *)self->_currentMenuToken alternatives];
    v13 = [alternatives count];

    if (v13)
    {
      v35 = actionsCopy;
      v36 = configurationCopy;
      v37 = interactionCopy;
      v14 = self->_currentMenuToken;
      item = [(PKMathRecognitionToken *)v14 item];
      v15 = 0;
      v38 = v41;
      while (1)
      {
        v16 = [(PKMathRecognitionToken *)self->_currentMenuToken alternatives:v35];
        v17 = [v16 count];

        if (v15 >= v17)
        {
          break;
        }

        alternatives2 = [(PKMathRecognitionToken *)self->_currentMenuToken alternatives];
        v19 = [alternatives2 objectAtIndexedSubscript:v15];

        v20 = v19;
        renderableAlternatives = [(PKMathRecognitionToken *)self->_currentMenuToken renderableAlternatives];
        v22 = [renderableAlternatives count];

        v23 = v20;
        if (v15 < v22)
        {
          renderableAlternatives2 = [(PKMathRecognitionToken *)self->_currentMenuToken renderableAlternatives];
          v23 = [renderableAlternatives2 objectAtIndexedSubscript:v15];
        }

        v25 = v23;
        if ((*(&self->_delegateFlags + 1) & 8) != 0)
        {
          v27 = +[PKMathTypesetViewController fontSize];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v26 = [WeakRetained mathViewController:self createTypesetImageForExpression:v25 latex:1 fontSize:v27];
        }

        else
        {
          v26 = 0;
        }

        v29 = MEMORY[0x1E69DC628];
        if (v26)
        {
          v30 = &stru_1F476BD20;
        }

        else
        {
          v30 = v20;
        }

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v41[0] = __93__PKMathRecognitionViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke;
        v41[1] = &unk_1E82DB078;
        objc_copyWeak(&v45, &location);
        v42 = v14;
        v43 = item;
        v31 = v20;
        v44 = v31;
        v32 = [v29 actionWithTitle:v30 image:v26 identifier:0 handler:v40];
        [array addObject:v32];

        objc_destroyWeak(&v45);
        ++v15;
      }

      configurationCopy = v36;
      interactionCopy = v37;
      actionsCopy = v35;
    }
  }

  v33 = [MEMORY[0x1E69DCC60] menuWithChildren:array];
  objc_destroyWeak(&location);

  return v33;
}

void __93__PKMathRecognitionViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  if (WeakRetained)
  {
    v8 = [v6 uuid];
    v9 = [*(WeakRetained + 1) objectForKeyedSubscript:v8];

    if (v9 == v6)
    {
      v11 = [v6 expression];
      v12 = [v11 mutableCopy];

      v13 = [v5 characterRange];
      v15 = [v12 substringWithRange:v13, v14];
      v16 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478339;
        v35 = v7;
        v36 = 2113;
        v37 = v15;
        v38 = 2113;
        v39 = v12;
        _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEFAULT, "Selected alternative: %{private}@, original: %{private}@, in: %{private}@", buf, 0x20u);
      }

      v31 = v15;

      v17 = [v5 characterRange];
      [v12 replaceCharactersInRange:v17 withString:v18, v7];
      v19 = [(PKMathRecognitionItem *)v6 heroStroke];
      v20 = v19;
      if ((*(WeakRetained + 193) & 0x80) != 0 && v19 && ([v6 shouldSolveMathFlagIsSet] & 1) == 0)
      {
        [(PKMathRecognitionViewController *)WeakRetained _commitSetShouldSolve:1 undoable:v6 item:?];
      }

      [(PKMathRecognitionItem *)v6 _updatePreferredTranscriptionChangingToken:v5 withAlternative:v7];
      [(PKMathRecognitionController *)*(WeakRetained + 32) _updateExpressionForItem:v6 expression:v12];
      [*(WeakRetained + 1) allValues];
      v32 = v5;
      v21 = v30 = v12;
      v22 = objc_loadWeakRetained(WeakRetained + 30);
      v29 = v20;
      v23 = [MEMORY[0x1E695DFD8] setWithObject:v8];
      [MEMORY[0x1E695DFD8] set];
      v24 = v8;
      v26 = v25 = v7;
      v27 = [MEMORY[0x1E695DFD8] set];
      [v22 mathViewController:WeakRetained didUpdateExpressions:v23 newExpressions:v26 removedExpressions:v27 mathItems:v21];

      v7 = v25;
      v8 = v24;

      v10 = v30;
      v5 = v32;
    }

    else
    {
      v10 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_ERROR, "Math item changed before selecting alternative.", buf, 2u);
      }
    }
  }

  v33 = objc_loadWeakRetained((a1 + 56));
  v28 = [(PKMathRecognitionViewController *)v33 overlayDrawingController];
  [(PKOverlayDrawingController *)v28 removeToken:?];
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__PKMathRecognitionViewController_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke;
  v7[3] = &unk_1E82D7148;
  v7[4] = self;
  [animator addCompletion:{v7, configuration}];
  currentMenuToken = self->_currentMenuToken;
  self->_currentMenuToken = 0;
}

void __96__PKMathRecognitionViewController_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 104) = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 48) && (*(v2 + 194) & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 240));
    [WeakRetained mathViewControllerDidDismissPopoverUI:*(a1 + 32)];
  }
}

BOOL __79__PKMathRecognitionViewController__fitBoundsForVariable_needExtraLeadingSlack___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= a4)
  {
    return 0;
  }

  if ((*(*(a1 + 32) + 16))())
  {
    return 1;
  }

  v8 = a3 + 1;
  do
  {
    v9 = v8;
    if (a4 == v8)
    {
      break;
    }

    v10 = (*(*(a1 + 32) + 16))();
    v8 = v9 + 1;
  }

  while (!v10);
  return v9 < a4;
}

- (void)scrubberController:(id)controller valueDidChange:(id)change
{
  controllerCopy = controller;
  changeCopy = change;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_hideScrubber object:0];
  if (!self->_scrubberController)
  {
    goto LABEL_62;
  }

  tiledView = [(PKMathRecognitionViewController *)&self->super.isa tiledView];
  [tiledView _pauseHoverPreviewForTimeInterval:0.5];
  v117 = tiledView;
  [tiledView inputScale];
  v125 = v9;
  objc_initWeak(&location, self);
  v126 = [changeCopy hasPrefix:@"-"];
  v10 = self->_controller;
  v124 = v10;
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&v10[1].super.isa);
  }

  else
  {
    WeakRetained = 0;
  }

  liveVariable = self->_liveVariable;
  if (liveVariable)
  {
    liveVariable = liveVariable->_originalStrokesDrawing;
  }

  v118 = liveVariable;
  v12 = self->_liveVariable;
  v127 = changeCopy;
  selfCopy = self;
  if (v12)
  {
    width = v12->_originalStrokesBounds.size.width;
    y = v12->_originalStrokesBounds.origin.y;
    x = v12->_originalStrokesBounds.origin.x;
    height = v12->_originalStrokesBounds.size.height;
    v13 = v12;
    if (v126)
    {
      v14 = v13->_calculatedFitBoundsForExtraLeadingSlack.origin.x;
      v15 = v13->_calculatedFitBoundsForExtraLeadingSlack.origin.y;
      v16 = v13->_calculatedFitBoundsForExtraLeadingSlack.size.width;
      v17 = v13->_calculatedFitBoundsForExtraLeadingSlack.size.height;
      goto LABEL_9;
    }

    v23 = v13->_calculatedFitBounds.origin.x;
    v22 = v13->_calculatedFitBounds.origin.y;
    v24 = v13->_calculatedFitBounds.size.width;
    v25 = v13->_calculatedFitBounds.size.height;
LABEL_13:
    v142.origin.x = v23;
    v142.origin.y = v22;
    v142.size.width = v24;
    v142.size.height = v25;
    if (!CGRectIsNull(v142))
    {
      if (v12)
      {
        v19 = v12->_calculatedFitBounds.origin.x;
        v18 = v12->_calculatedFitBounds.origin.y;
        v21 = v12->_calculatedFitBounds.size.width;
        v20 = v12->_calculatedFitBounds.size.height;
        goto LABEL_33;
      }

LABEL_69:
      v20 = 0.0;
      v21 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      goto LABEL_33;
    }

LABEL_14:
    if (v12)
    {
      v114 = v12->_originalStrokes;
      mathItem = v12->_mathItem;
    }

    else
    {
      v114 = 0;
      mathItem = 0;
    }

    strokes = [(PKMathRecognitionItem *)mathItem strokes];
    if (v12)
    {
      [(PKMathRecognitionItem *)v12->_mathItem bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v106 = v12->_originalStrokesBounds.origin.x;
      rect = v12->_originalStrokesBounds.origin.y;
      v35 = v12->_originalStrokesBounds.size.width;
      v36 = v12->_originalStrokesBounds.size.height;
    }

    else
    {
      [0 bounds];
      v28 = v101;
      v30 = v102;
      v32 = v103;
      v34 = v104;
      v35 = 0.0;
      rect = 0.0;
      v36 = 0.0;
      v106 = 0.0;
    }

    v108 = v35;
    if (v35 >= v36)
    {
      v37 = v35;
    }

    else
    {
      v37 = v36;
    }

    v116 = [strokes mutableCopy];
    [v116 removeObjectsInArray:v114];
    memset(&v141, 0, sizeof(v141));
    [(PKMathRecognitionViewController *)&v141 drawingTransform];
    memset(&v140, 0, sizeof(v140));
    v139 = v141;
    CGAffineTransformInvert(&v140, &v139);
    v139 = v141;
    v143.origin.x = v28 - v37;
    v143.origin.y = v30;
    v143.size.width = v32 + v37 * 2.0;
    v143.size.height = v34;
    v144 = CGRectApplyAffineTransform(v143, &v139);
    v145.origin.x = DKDRoundedRectForScale(v144.origin.x, v144.origin.y, v144.size.width, v144.size.height, 1.0);
    v146 = CGRectInset(v145, -1.0, -1.0);
    v38 = v146.size.width;
    v39 = v146.size.height;
    v139 = v140;
    v147 = CGRectApplyAffineTransform(v146, &v139);
    v40 = v147.origin.x;
    v41 = v147.origin.y;
    v42 = v147.size.width;
    v43 = v147.size.height;
    v44 = objc_loadWeakRetained(&self->_parentView);
    traitCollection = [v44 traitCollection];
    [traitCollection displayScale];
    v47 = v46;

    v48 = fmax(v47, 1.0);
    v49 = [[PKImageRenderer alloc] initSyncWithSize:v38 scale:v39, v48];
    v139.a = 0.0;
    *&v139.b = &v139;
    *&v139.c = 0x3032000000;
    *&v139.d = __Block_byref_object_copy__23;
    *&v139.tx = __Block_byref_object_dispose__23;
    v139.ty = 0.0;
    v138[0] = MEMORY[0x1E69E9820];
    v138[1] = 3221225472;
    v138[2] = __79__PKMathRecognitionViewController__fitBoundsForVariable_needExtraLeadingSlack___block_invoke;
    v138[3] = &unk_1E82DB0A0;
    v138[4] = &v139;
    [v49 renderStrokes:v116 clippedToStrokeSpaceRect:v138 scale:v40 completion:{v41, v42, v43, v48}];
    cGImage = [*(*&v139.b + 40) CGImage];
    v51 = CGImageGetWidth(cGImage);
    v52 = CGImageGetHeight(cGImage);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v54 = 4 * v51;
    v112 = malloc_type_calloc(v52 * 4 * v51, 1uLL, 0x100004077774924uLL);
    v113 = v51;
    v55 = CGBitmapContextCreate(v112, v51, v52, 8uLL, 4 * v51, DeviceRGB, 0x4001u);
    CGColorSpaceRelease(DeviceRGB);
    v148.size.height = v52;
    v148.origin.x = 0.0;
    v148.origin.y = 0.0;
    v148.size.width = v113;
    CGContextDrawImage(v55, v148, cGImage);
    CGContextRelease(v55);
    memset(&v137, 0, sizeof(v137));
    CGAffineTransformMakeScale(&t1, v42 / v113, v42 / v113);
    CGAffineTransformMakeTranslation(&t2, v40, v41);
    CGAffineTransformConcat(&v137, &t1, &t2);
    t2 = v137;
    memset(&t1, 0, sizeof(t1));
    CGAffineTransformInvert(&t1, &t2);
    t2 = t1;
    v149.origin.x = v106;
    v149.size.width = v108;
    v149.origin.y = rect;
    v149.size.height = v36;
    v150 = CGRectApplyAffineTransform(v149, &t2);
    v56 = DKDRoundedRectForScale(v150.origin.x, v150.origin.y, v150.size.width, v150.size.height, 1.0);
    v58 = v57;
    v60 = v59;
    v62 = v61;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__PKMathRecognitionViewController__fitBoundsForVariable_needExtraLeadingSlack___block_invoke_2;
    aBlock[3] = &__block_descriptor_56_e11_B24__0q8q16l;
    aBlock[4] = v112;
    aBlock[5] = v54;
    aBlock[6] = 4;
    v63 = _Block_copy(aBlock);
    v132[0] = MEMORY[0x1E69E9820];
    v132[1] = 3221225472;
    v132[2] = __79__PKMathRecognitionViewController__fitBoundsForVariable_needExtraLeadingSlack___block_invoke_3;
    v132[3] = &unk_1E82DB0E8;
    v64 = v63;
    v133 = v64;
    v65 = _Block_copy(v132);
    if (v60 >= v62)
    {
      v66 = v60;
    }

    else
    {
      v66 = v62;
    }

    if (v48 * 8.0 >= v66)
    {
      v67 = v48 * 8.0;
    }

    else
    {
      v67 = v66;
    }

    v151.origin.x = v56;
    v151.origin.y = v58;
    v151.size.width = v60;
    v151.size.height = v62;
    MinX = CGRectGetMinX(v151);
    v152.origin.x = v56;
    v152.origin.y = v58;
    v152.size.width = v60;
    v152.size.height = v62;
    MinY = CGRectGetMinY(v152);
    v109 = v64;
    v153.origin.x = v56;
    v153.origin.y = v58;
    v153.size.width = v60;
    v153.size.height = v62;
    v105 = v49;
    v107 = controllerCopy;
    v70 = MinX;
    recta = v67;
    MaxY = CGRectGetMaxY(v153);
    v72 = (MinX - v67) & ~((MinX - v67) >> 63);
    v73 = 2.0;
    if (v126)
    {
      v73 = 6.0;
    }

    if (v72 <= v70)
    {
      v77 = (v73 * v48) + v70;
      v78 = MinX;
      while (!v65[2](v65, v78, MinY, MaxY))
      {
        v74 = v78 - 1;
        --v77;
        if (v78-- <= v72)
        {
          goto LABEL_42;
        }
      }

      if (v77 >= v70)
      {
        v74 = MinX;
      }

      else
      {
        v74 = v77;
      }
    }

    else
    {
      v74 = MinX;
    }

LABEL_42:
    v154.origin.x = v56;
    v154.origin.y = v58;
    v154.size.width = v60;
    v154.size.height = v62;
    MaxX = CGRectGetMaxX(v154);
    v81 = MaxX;
    if (v113 >= MaxX + recta)
    {
      v82 = MaxX + recta;
    }

    else
    {
      v82 = v113;
    }

    if (v82 > v81)
    {
      v83 = v81 - (v48 + v48);
      v84 = MaxX;
      while (!v65[2](v65, v84, MinY, MaxY))
      {
        ++v84;
        ++v83;
        if (v82 == v84)
        {
          v81 = v82;
          goto LABEL_52;
        }
      }

      if (v83 > v81)
      {
        v81 = v83;
      }
    }

LABEL_52:
    self = selfCopy;
    free(v112);
    v155.origin.x = v74;
    v155.size.width = (v81 - v74);
    t2 = v137;
    v155.origin.y = v58;
    v155.size.height = v62;
    v156 = CGRectApplyAffineTransform(v155, &t2);
    v19 = v156.origin.x;
    v18 = v156.origin.y;
    v21 = v156.size.width;
    v20 = v156.size.height;
    v76 = v118;
    v75 = WeakRetained;
    if (v12)
    {
      v12->_calculatedFitBounds = v156;
    }

    _Block_object_dispose(&v139, 8);
    controllerCopy = v107;
    goto LABEL_55;
  }

  v14 = 0.0;
  width = 0.0;
  y = 0.0;
  x = 0.0;
  height = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v22 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v23 = 0.0;
  if ((v126 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (CGRectIsNull(*&v14))
  {
    goto LABEL_14;
  }

  if (!v12)
  {
    goto LABEL_69;
  }

  v19 = v12->_calculatedFitBoundsForExtraLeadingSlack.origin.x;
  v18 = v12->_calculatedFitBoundsForExtraLeadingSlack.origin.y;
  v21 = v12->_calculatedFitBoundsForExtraLeadingSlack.size.width;
  v20 = v12->_calculatedFitBoundsForExtraLeadingSlack.size.height;
LABEL_33:
  v76 = v118;
  v75 = WeakRetained;
LABEL_55:

  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = __69__PKMathRecognitionViewController_scrubberController_valueDidChange___block_invoke;
  v129[3] = &unk_1E82DB110;
  objc_copyWeak(&v130, &location);
  [(PKRecognitionSessionManager *)v75 synthesizeDrawingForText:v127 sourceDrawing:v76 originalBounds:v129 fitInBounds:x inputScale:y completion:width, height, v19, v18, v21, v20, v85, v86, v87, v88, v125];

  v89 = self->_liveVariable;
  if (v89)
  {
    v89 = v89->_mathItem;
  }

  v90 = v89;
  v91 = self->_liveVariable;
  if (v91)
  {
    v91 = v91->_variable;
  }

  v92 = v91;
  [(PKMathRecognitionItem *)v90 _updateVariable:v92 valueString:v127];

  v93 = selfCopy->_liveVariable;
  if (v93)
  {
    v93 = v93->_mathItem;
  }

  v94 = v93;
  uuid = [(PKLiveMathVariable *)v94 uuid];
  v96 = [MEMORY[0x1E695DFD8] setWithObject:uuid];
  v97 = objc_loadWeakRetained(&selfCopy->_delegate);
  v98 = [MEMORY[0x1E695DFD8] set];
  v99 = [MEMORY[0x1E695DFD8] set];
  allValues = [(NSMutableDictionary *)selfCopy->_currentMathItemsLookup allValues];
  [v97 mathViewController:selfCopy didUpdateExpressions:v96 newExpressions:v98 removedExpressions:v99 mathItems:allValues];

  objc_destroyWeak(&v130);
  objc_destroyWeak(&location);

  changeCopy = v127;
  self = selfCopy;
LABEL_62:
  if (self->_shouldAutohideScrubber)
  {
    [(PKMathRecognitionViewController *)self performSelector:sel_hideScrubber withObject:0 afterDelay:3.0];
  }
}

void __69__PKMathRecognitionViewController_scrubberController_valueDidChange___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  val = objc_loadWeakRetained((a1 + 32));
  v10 = v9;
  v11 = v8;
  v12 = v7;
  if (val)
  {
    objc_initWeak(&location, val);
    v13 = [(PKMathRecognitionViewController *)val tiledView];
    v14 = [v13 selectionController];
    v15 = [v10 strokes];
    v16 = [(PKMathRecognitionViewController *)val drawing];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __98__PKMathRecognitionViewController__updateLiveVariableWithDrawing_tokenSymbols_tokenStrokeIndexes___block_invoke;
    v18[3] = &unk_1E82DB138;
    objc_copyWeak(&v22, &location);
    v19 = v10;
    v20 = v11;
    v21 = v12;
    [(PKSelectionController *)v14 _imageViewForStrokes:v15 drawing:v16 completion:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (void)_cleanupAfterScrubbing
{
  if (self)
  {
    v2 = *(self + 64);
    if (v2 && (*(self + 194) & 8) != 0)
    {
      WeakRetained = objc_loadWeakRetained((self + 240));
      [WeakRetained mathViewControllerDidDismissPopoverUI:self];

      v2 = *(self + 64);
    }

    *(self + 64) = 0;

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_hideScrubber object:0];
    [*(self + 56) _setVisibilityUpdatesEnabled:1];
    v4 = *(self + 56);
    *(self + 56) = 0;

    v5 = *(self + 88);
    if (!v5)
    {
      goto LABEL_40;
    }

    if ((*(v5 + 8) != 1 || (v6 = objc_loadWeakRetained((self + 240)), [v6 mathViewController:self setHiddenStrokes:MEMORY[0x1E695E0F0]], v6, (v7 = *(self + 88)) != 0) && (*(v7 + 8) = 0, (v5 = *(self + 88)) != 0)) && ((v8 = *(v5 + 32)) == 0 || (v9 = *(v8 + 32), *(v8 + 32) = 0, v9, (v5 = *(self + 88)) != 0)))
    {
      v10 = *(v5 + 56);
    }

    else
    {
      v10 = 0;
    }

    strokes = [v10 strokes];
    v12 = [strokes count];

    if (!v12)
    {
      goto LABEL_38;
    }

    v13 = *(self + 88);
    if (v13)
    {
      v13 = v13[4];
    }

    v14 = v13;
    uuid = [v14 uuid];
    v16 = *(self + 80);
    *(self + 80) = uuid;

    v17 = objc_loadWeakRetained((self + 240));
    v18 = *(self + 88);
    if (v18)
    {
      v19 = v18[5];
      v18 = v18[7];
    }

    else
    {
      v19 = 0;
    }

    v20 = v18;
    v21 = v19;
    strokes2 = [v20 strokes];
    [v17 mathViewController:self replaceStrokes:v21 withStrokes:strokes2];

    v23 = *(self + 88);
    if (v23)
    {
      v23 = v23[4];
    }

    v24 = v23;
    mathResult = [(PKMathRecognitionItem *)v24 mathResult];
    v26 = objc_opt_respondsToSelector();

    if ((v26 & 1) == 0)
    {
LABEL_38:
      v54 = *(self + 88);
      if (v54)
      {
        v55 = *(v54 + 64);
LABEL_41:
        [v55 removeFromSuperview];
        v56 = *(self + 88);
        *(self + 88) = 0;

        return;
      }

LABEL_40:
      v55 = 0;
      goto LABEL_41;
    }

    v27 = *(self + 88);
    if (v27)
    {
      v27 = v27[4];
    }

    v28 = v27;
    mathResult2 = [(PKMathRecognitionItem *)v28 mathResult];
    v30 = *(self + 88);
    if (v30)
    {
      v31 = *(v30 + 24);
      v32 = v31;
      if (v31)
      {
        v33 = *(v31 + 4);
LABEL_25:
        v34 = v33;
        v35 = *(self + 88);
        if (v35)
        {
          v36 = v35[9];
          v37 = v35[10];
          v35 = v35[7];
        }

        else
        {
          v37 = 0;
          v36 = 0;
        }

        v38 = v35;
        v39 = v37;
        v40 = v36;
        cHDrawing = [v38 CHDrawing];
        v42 = [mathResult2 newResultWithScrubbedStrokes:v34 scrubbedValueTokens:v40 scrubbedValueStrokeIndexes:v39 scrubbedValueDrawing:cHDrawing];

        if (v42)
        {
          v43 = *(self + 88);
          if (v43)
          {
            v44 = *(v43 + 32);
          }

          else
          {
            v44 = 0;
          }

          strokes3 = [v44 strokes];
          v46 = [strokes3 mutableCopy];

          v47 = *(self + 88);
          if (v47)
          {
            v48 = *(v47 + 40);
          }

          else
          {
            v48 = 0;
          }

          [v46 removeObjectsInArray:v48];
          v49 = *(self + 88);
          if (v49)
          {
            v50 = *(v49 + 56);
          }

          else
          {
            v50 = 0;
          }

          strokes4 = [v50 strokes];
          [v46 addObjectsFromArray:strokes4];

          recognitionManager = [(PKMathRecognitionViewController *)*(self + 256) recognitionManager];
          v53 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v46];
          [(PKRecognitionSessionManager *)recognitionManager cacheTranscription:v42 strokeGroup:v53];
        }

        else
        {
          v46 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *v57 = 0;
            _os_log_error_impl(&dword_1C7CCA000, v46, OS_LOG_TYPE_ERROR, "Unable to add scrubbed expression in the transcription cache.", v57, 2u);
          }
        }

        goto LABEL_38;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = 0;
    goto LABEL_25;
  }
}

void __98__PKMathRecognitionViewController__updateLiveVariableWithDrawing_tokenSymbols_tokenStrokeIndexes___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  v10 = v7;
  v11 = v4;
  if (WeakRetained && WeakRetained[11])
  {
    v12 = [(PKMathRecognitionViewController *)WeakRetained tiledView];
    v13 = WeakRetained[11];
    if (!v13 || (v13[8] & 1) == 0)
    {
      v14 = objc_loadWeakRetained(WeakRetained + 30);
      v15 = WeakRetained[11];
      v16 = v15 ? v15[5] : 0;
      [v14 mathViewController:WeakRetained setHiddenStrokes:v16];

      v17 = WeakRetained[11];
      if (v17)
      {
        v17[8] = 1;
      }
    }

    [v11 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = objc_loadWeakRetained(WeakRetained + 31);
    [v12 convertRect:v26 toView:{v19, v21, v23, v25}];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    [v11 setFrame:{v28, v30, v32, v34}];
    v35 = WeakRetained[11];
    if (v35)
    {
      v36 = v35[8];
    }

    else
    {
      v36 = 0;
    }

    [v36 removeFromSuperview];
    v37 = objc_loadWeakRetained(WeakRetained + 31);
    [v37 addSubview:v11];

    v38 = WeakRetained[11];
    if (v38)
    {
      objc_storeStrong(v38 + 8, a2);
      v39 = WeakRetained[11];
      if (v39)
      {
        objc_storeStrong(v39 + 7, v6);
        v40 = WeakRetained[11];
        if (v40)
        {
          objc_storeStrong(v40 + 9, v5);
          v41 = WeakRetained[11];
          if (v41)
          {
            objc_storeStrong(v41 + 10, v7);
          }
        }
      }
    }
  }
}

- (void)hideScrubber
{
  [(PKCalculateScrubberController *)self->_scrubberController hideScrubber];

  [(PKMathRecognitionViewController *)self _cleanupAfterScrubbing];
}

- (void)hoverController:(id)controller holdGestureMeanInputPoint:(id *)point latestInputPoint:(id *)inputPoint
{
  x = inputPoint->var0.var0.x;
  y = inputPoint->var0.var0.y;
  tiledView = [(PKMathRecognitionViewController *)&self->super.isa tiledView];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentView);
  }

  else
  {
    WeakRetained = 0;
  }

  [tiledView convertPoint:WeakRetained toView:{x, y}];
  v16 = v11;
  v18 = v10;

  if (self)
  {
    v12 = objc_loadWeakRetained(&self->_parentView);
  }

  else
  {
    v12 = 0;
  }

  [v12 bounds];
  v22.y = v17;
  v22.x = v19;
  v13 = CGRectContainsPoint(v23, v22);

  if (v13)
  {
    memset(&v21, 0, sizeof(v21));
    [(PKMathRecognitionViewController *)&v20 drawingTransform];
    CGAffineTransformInvert(&v21, &v20);
    v14 = vaddq_f64(*&v21.tx, vmlaq_n_f64(vmulq_n_f64(*&v21.c, v17), *&v21.a, v19));
    if ([(PKMathRecognitionViewController *)self _handleSingleTapAtDrawingLocation:0 fromHover:v14.f64[0] fromTapStroke:v14.f64[1]])
    {
      tiledView2 = [(PKMathRecognitionViewController *)&self->super.isa tiledView];
      [tiledView2 _pauseHoverPreviewForTimeInterval:0.5];
    }
  }
}

- (void)contextMenuController:(id)controller removeResultForItemUUID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = [(NSMutableDictionary *)self->_currentMathItemsLookup objectForKeyedSubscript:d];
    if (v5)
    {
      drawing = [(PKMathRecognitionViewController *)&self->super.isa drawing];
      v7 = [(PKMathRecognitionItem *)v5 _heroStrokeInDrawing:drawing];

      if (v7)
      {
        v8 = os_log_create("com.apple.pencilkit", "Math");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          expression = [v5 expression];
          v10 = 138477827;
          v11 = expression;
          _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Remove result for: %{private}@", &v10, 0xCu);
        }

        if ([v5 shouldSolveMathFlagIsSet])
        {
          if ((*(&self->_delegateFlags + 1) & 0x80) != 0)
          {
            [(PKMathRecognitionViewController *)self _commitSetShouldSolve:1 undoable:v5 item:?];
          }
        }
      }
    }
  }
}

- (void)contextMenuController:(id)controller solveItemUUID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_currentResultsLookup objectForKeyedSubscript:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [(NSMutableDictionary *)self->_currentMathItemsLookup objectForKeyedSubscript:dCopy];
    if (v8)
    {
      [(PKMathRecognitionViewController *)self _commitSetShouldSolve:1 undoable:v8 item:?];
      [(PKMathRecognitionViewController *)self _presentResult:v7 mathItem:v8 defaultAnimationType:1 fromHint:1 hadOldResult:1];
    }
  }
}

- (id)contextMenuController:(id)controller imageForItemUUID:(id)d
{
  v5 = [(NSMutableDictionary *)self->_currentMathItemsLookup objectForKeyedSubscript:d];
  v6 = v5;
  if (!v5 || (*(&self->_delegateFlags + 1) & 0x18) == 0)
  {
    v14 = 0;
    goto LABEL_18;
  }

  v7 = v5;
  currentResultsLookup = self->_currentResultsLookup;
  uuid = [v7 uuid];
  v10 = [(NSMutableDictionary *)currentResultsLookup objectForKeyedSubscript:uuid];

  v11 = +[PKMathTypesetViewController fontSize];
  delegateFlags = self->_delegateFlags;
  if ((*&delegateFlags & 0x1000) == 0)
  {
    goto LABEL_10;
  }

  if ([v10 length])
  {
    shouldSolveMathFlagIsSet = [v7 shouldSolveMathFlagIsSet];
  }

  else
  {
    shouldSolveMathFlagIsSet = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  uuid2 = [v7 uuid];
  v14 = [WeakRetained mathViewController:self createTypesetImageForItemUUID:uuid2 showResult:shouldSolveMathFlagIsSet fontSize:v11];

  if (!v14)
  {
    delegateFlags = self->_delegateFlags;
LABEL_10:
    if ((*&delegateFlags & 0x800) != 0)
    {
      expressionToPresent = [v7 expressionToPresent];
      if ([v10 length] && (objc_msgSend(v7, "isVerticalExpression") & 1) == 0 && objc_msgSend(v7, "shouldSolveMathFlagIsSet"))
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %@", expressionToPresent, v10];

        expressionToPresent = v18;
      }

      v19 = objc_loadWeakRetained(&self->_delegate);
      v14 = [v19 mathViewController:self createTypesetImageForExpression:expressionToPresent latex:1 fontSize:v11];
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_18:

  return v14;
}

- (void)contextMenuController:(id)controller dismissErrorForItem:(id)item token:(id)token
{
  tokenCopy = token;
  overlayDrawingController = [(PKMathRecognitionViewController *)&self->super.isa overlayDrawingController];
  [(PKOverlayDrawingController *)overlayDrawingController removeToken:tokenCopy];
}

- (void)contextMenuController:(id)controller addGraphForItemUUID:(id)d addToExisting:(BOOL)existing graphableVariable:(id)variable
{
  existingCopy = existing;
  v39 = *MEMORY[0x1E69E9840];
  variableCopy = variable;
  uUIDString = [d UUIDString];
  v10 = variableCopy;
  if (self)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uUIDString];
    if (v11 && (*&self->_delegateFlags & 8) != 0)
    {
      v30 = existingCopy;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      allValues = [(NSMutableDictionary *)self->_currentMathItemsLookup allValues];
      v13 = [allValues countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v33;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(allValues);
            }

            v17 = *(*(&v32 + 1) + 8 * i);
            uuid = [v17 uuid];
            v19 = [uuid isEqual:v11];

            if (v19)
            {
              v41.origin.x = [(PKMathRecognitionItem *)v17 boundsForAnyEqualSign];
              x = v41.origin.x;
              y = v41.origin.y;
              width = v41.size.width;
              height = v41.size.height;
              MidX = CGRectGetMidX(v41);
              v42.origin.x = x;
              v42.origin.y = y;
              v42.size.width = width;
              v42.size.height = height;
              MidY = CGRectGetMidY(v42);
              v26 = os_log_create("com.apple.pencilkit", "Math");
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                expression = [v17 expression];
                *buf = 138477827;
                v37 = expression;
                _os_log_impl(&dword_1C7CCA000, v26, OS_LOG_TYPE_DEFAULT, "Adding graph for expression: %{private}@", buf, 0xCu);
              }

              WeakRetained = objc_loadWeakRetained(&self->_delegate);
              expression2 = [v17 expression];
              [WeakRetained mathViewController:self addGraphForExpression:expression2 variable:v10 range:uUIDString identifier:v30 expressionLocation:*MEMORY[0x1E695F058] addToExisting:{*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), MidX, MidY}];

              goto LABEL_16;
            }
          }

          v14 = [allValues countByEnumeratingWithState:&v32 objects:v38 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }
}

- (void)registerRecentlyCreatedLocalStroke:(id)stroke
{
  strokeCopy = stroke;
  v4 = +[PKLocalStrokeTracker sharedInstance];
  [(PKLocalStrokeTracker *)v4 addStroke:strokeCopy];
}

- (UIViewController)viewControllerForPresentingUI
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerForPresentingUI);

  return WeakRetained;
}

@end