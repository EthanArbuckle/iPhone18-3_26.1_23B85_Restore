@interface PKSelectionView
- (BOOL)_exactlyOneExternalElementSelected;
- (BOOL)canConvertToShapeWithAction:(SEL)action withSender:(id)sender handled:(BOOL *)handled;
- (BOOL)containsPoint:(CGPoint)point forInputType:(int64_t)type;
- (BOOL)lassoContainsPoint:(CGPoint)point;
- (BOOL)supportsSnapToShape;
- (CGAffineTransform)selectionDrawingStrokeTransform;
- (CGAffineTransform)selectionDrawingTransform;
- (CGAffineTransform)userTransform;
- (CGPoint)offsetInTouchView;
- (CGRect)editMenuTargetRect;
- (PKSelectionView)initWithFrame:(CGRect)frame strokeSelection:(id)selection selectionController:(id)controller selectionType:(int64_t)type;
- (id)_accessibilityUserTestingChildren;
- (id)_currentAttachment;
- (id)_selectionViewGestures;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)keyCommands;
- (id)shapeMenuActions;
- (id)shapeSupportCache;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (void)_commitDragToAttachment;
- (void)_dragWillBegin;
- (void)_findTranscriptionWithCompletion:(id)completion;
- (void)_handleDoubleTapInputAtPoint:(CGPoint)point;
- (void)_resetDragState;
- (void)animateViewToOriginalPosition;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)convertToShapes:(id)shapes;
- (void)copy:(id)copy;
- (void)copyTranscription:(id)transcription;
- (void)createSticker:(id)sticker;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)didBeginDraggingSelection;
- (void)didDoubleTap;
- (void)didEndGestureWithTranslation:(CGPoint)translation;
- (void)dragEnded:(CGPoint)ended;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragSelection:(id)selection;
- (void)duplicate:(id)duplicate;
- (void)generateStrokeImageForPasteAndDND;
- (void)hideStrokeImageView;
- (void)insertSpace:(id)space;
- (void)makeViewAliveAtLocation:(CGPoint)location;
- (void)paste:(id)paste;
- (void)performDidEndGestureWithTranslation:(CGPoint)translation;
- (void)refine:(id)refine;
- (void)setFrame:(CGRect)frame;
- (void)setSelectionDrawingStrokeTransform:(CGAffineTransform *)transform;
- (void)setSelectionDrawingTransform:(CGAffineTransform *)transform;
- (void)setUserTransform:(CGAffineTransform *)transform;
- (void)straighten:(id)straighten;
- (void)toggleEditMenu;
- (void)transformBegan;
- (void)transformCancelled;
- (void)transformChanged:(CGAffineTransform *)changed;
- (void)transformEnded;
- (void)translate:(id)translate;
- (void)updateLocationForDrop:(CGPoint)drop;
- (void)willMoveToWindow:(id)window;
@end

@implementation PKSelectionView

- (PKSelectionView)initWithFrame:(CGRect)frame strokeSelection:(id)selection selectionController:(id)controller selectionType:(int64_t)type
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selectionCopy = selection;
  controllerCopy = controller;
  v44.receiver = self;
  v44.super_class = PKSelectionView;
  height = [(PKAdornmentView *)&v44 initWithFrame:selectionCopy strokeSelection:controllerCopy selectionController:type selectionType:x, y, width, height];
  v16 = height;
  v17 = height;
  if (height)
  {
    [(PKSelectionView *)height setAccessibilityIdentifier:@"com.apple.pencilkit.selectionView"];
    v18 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v17 action:sel_toggleEditMenu];
    editMenuGR = v17->_editMenuGR;
    v17->_editMenuGR = v18;

    [(UITapGestureRecognizer *)v17->_editMenuGR setNumberOfTapsRequired:1];
    v20 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v17 action:sel_didDoubleTap];
    doubleTapGR = v17->_doubleTapGR;
    v17->_doubleTapGR = v20;

    [(UITapGestureRecognizer *)v17->_doubleTapGR setNumberOfTapsRequired:2];
    if (type)
    {
      v22 = type == 6;
    }

    else
    {
      v22 = 1;
    }

    v23 = !v22;
    [(UITapGestureRecognizer *)v17->_doubleTapGR setEnabled:v23];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      v26 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:v17];
      dragInteraction = v17->_dragInteraction;
      v17->_dragInteraction = v26;

      [(PKSelectionView *)v17 addInteraction:v17->_dragInteraction];
    }

    v28 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v17 action:sel_dragSelection_];
    dragGR = v17->_dragGR;
    v17->_dragGR = v28;

    [(UILongPressGestureRecognizer *)v17->_dragGR setName:@"PKSelectionDragGesture"];
    [(UILongPressGestureRecognizer *)v17->_dragGR setMinimumPressDuration:0.0];
    if (PKIsDeviceLocked())
    {
      v30 = v17->_dragInteraction;
      if (v30)
      {
        [(UIDragInteraction *)v30 setEnabled:0];
      }
    }

    v17->_selectionType = type;
    selectionController = [(PKAdornmentView *)v17 selectionController];
    drawing = [selectionCopy drawing];
    [(PKSelectionController *)selectionController _selectionDrawingTransformForDrawing:drawing, v43];
    v34 = v43[1];
    v33 = v43[2];
    *&v16->_selectionDrawingTransform.a = v43[0];
    *&v16->_selectionDrawingTransform.c = v34;
    *&v16->_selectionDrawingTransform.tx = v33;

    selectionController2 = [(PKAdornmentView *)v17 selectionController];
    drawing2 = [selectionCopy drawing];
    v16->_originalStrokeFrame.origin.x = [(PKSelectionController *)selectionController2 calculateFrameForSelectionView:selectionCopy inDrawing:drawing2];
    v16->_originalStrokeFrame.origin.y = v37;
    v16->_originalStrokeFrame.size.width = v38;
    v16->_originalStrokeFrame.size.height = v39;

    v41 = *(MEMORY[0x1E695EFD0] + 16);
    v40 = *(MEMORY[0x1E695EFD0] + 32);
    *&v16->_resizeTransform.a = *MEMORY[0x1E695EFD0];
    *&v16->_resizeTransform.c = v41;
    *&v16->_resizeTransform.tx = v40;
  }

  return v17;
}

- (id)_selectionViewGestures
{
  v5[3] = *MEMORY[0x1E69E9840];
  editMenuGR = self->_editMenuGR;
  v5[0] = self->_dragGR;
  v5[1] = editMenuGR;
  v5[2] = self->_doubleTapGR;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

- (void)dealloc
{
  if (self->_dragInteraction)
  {
    [(PKSelectionView *)self removeInteraction:?];
  }

  v3.receiver = self;
  v3.super_class = PKSelectionView;
  [(PKSelectionView *)&v3 dealloc];
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = PKSelectionView;
  [(PKSelectionView *)&v8 willMoveToWindow:windowCopy];
  selectionRenderer = [(PKAdornmentView *)self selectionRenderer];
  [selectionRenderer _setupSelectionAdornment];

  if (windowCopy)
  {
    [(PKSelectionView *)self becomeFirstResponder];
  }

  else
  {
    selectionController = [(PKAdornmentView *)self selectionController];
    selectionInteraction = [(PKSelectionController *)selectionController selectionInteraction];
    [selectionInteraction _willRemoveSelectionView:self];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PKSelectionView *)self frame];
  v17.origin.x = v8;
  v17.origin.y = v9;
  v17.size.width = v10;
  v17.size.height = v11;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v12 = CGRectEqualToRect(v16, v17);
  v15.receiver = self;
  v15.super_class = PKSelectionView;
  [(PKSelectionView *)&v15 setFrame:x, y, width, height];
  if (!v12)
  {
    selectionController = [(PKAdornmentView *)self selectionController];
    selectionInteraction = [(PKSelectionController *)selectionController selectionInteraction];
    [selectionInteraction _didEndDraggingSelection:self];
  }
}

- (void)generateStrokeImageForPasteAndDND
{
  selectionController = [(PKAdornmentView *)self selectionController];
  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PKSelectionView_generateStrokeImageForPasteAndDND__block_invoke;
  v5[3] = &unk_1E82D6638;
  v5[4] = self;
  [(PKSelectionController *)selectionController generateImageForStrokeSelection:strokeSelection scaleStrategy:1 highlighted:0 withCompletion:v5];
}

void __52__PKSelectionView_generateStrokeImageForPasteAndDND__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) strokeSelection];
  [v3 setStrokeImage:v4];
}

- (BOOL)containsPoint:(CGPoint)point forInputType:(int64_t)type
{
  y = point.y;
  x = point.x;
  v61 = *MEMORY[0x1E69E9840];
  if ([(PKSelectionView *)self selectionType]== 6)
  {
    return 0;
  }

  [(PKSelectionView *)self bounds];
  v62.x = x;
  v62.y = y;
  if (!CGRectContainsPoint(v63, v62))
  {
    return 0;
  }

  if ([(PKSelectionView *)self selectionType]&& [(PKSelectionView *)self selectionType]!= 6)
  {
    selectionController = [(PKAdornmentView *)self selectionController];
    v11 = selectionController;
    if (selectionController)
    {
      WeakRetained = objc_loadWeakRetained((selectionController + 120));
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained convertPoint:self fromView:{x, y}];
    v51 = v14;
    v52 = v13;

    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    selectionController2 = [(PKAdornmentView *)self selectionController];
    v16 = selectionController2;
    if (selectionController2)
    {
      v17 = objc_loadWeakRetained((selectionController2 + 120));
    }

    else
    {
      v17 = 0;
    }

    strokeSelection = [(PKAdornmentView *)self strokeSelection];
    drawing = [strokeSelection drawing];
    if (v17)
    {
      [v17 transformFromViewToStrokeSpaceInDrawing:drawing];
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
    }

    v48 = v58;
    v49 = v59;
    v50 = v57;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    strokeSelection2 = [(PKAdornmentView *)self strokeSelection];
    strokes = [strokeSelection2 strokes];

    v22 = [strokes countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v22)
    {
      v23 = vaddq_f64(v49, vmlaq_n_f64(vmulq_n_f64(v48, v51), v50, v52));
      v24 = *v54;
      if (type)
      {
        v25 = 10.0;
      }

      else
      {
        v25 = 20.0;
      }

      v26 = v23;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v54 != v24)
          {
            objc_enumerationMutation(strokes);
          }

          if ([*(*(&v53 + 1) + 8 * i) intersectsPoint:*&v26 boundsOutset:v25 minimumStrokeThreshold:v25])
          {

            return 1;
          }
        }

        v22 = [strokes countByEnumeratingWithState:&v53 objects:v60 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }
  }

  else if ([(PKSelectionView *)self lassoContainsPoint:x, y])
  {
    return 1;
  }

  selectionController3 = [(PKAdornmentView *)self selectionController];
  v29 = selectionController3;
  if (selectionController3)
  {
    v30 = objc_loadWeakRetained((selectionController3 + 120));
  }

  else
  {
    v30 = 0;
  }

  [(PKSelectionView *)self convertPoint:v30 toView:x, y];
  v32 = v31;
  v34 = v33;

  selectionController4 = [(PKAdornmentView *)self selectionController];
  v36 = selectionController4;
  if (selectionController4)
  {
    v37 = objc_loadWeakRetained((selectionController4 + 120));
  }

  else
  {
    v37 = 0;
  }

  strokeSelection3 = [(PKAdornmentView *)self strokeSelection];
  drawing2 = [strokeSelection3 drawing];
  if (v37)
  {
    [v37 transformFromViewToStrokeSpaceInDrawing:drawing2];
    v41 = v57.f64[1];
    v40 = v57.f64[0];
    v43 = v58.f64[1];
    v42 = v58.f64[0];
    v44 = v59.f64[1];
    v45 = v59.f64[0];
  }

  else
  {
    v44 = 0.0;
    v43 = 0.0;
    v41 = 0.0;
    v45 = 0.0;
    v42 = 0.0;
    v40 = 0.0;
  }

  selectionController5 = [(PKAdornmentView *)self selectionController];
  _currentAttachment = [(PKSelectionView *)self _currentAttachment];
  v8 = [(PKSelectionController *)selectionController5 _selectedExternalElementsContainsPoint:_currentAttachment inAttachment:v45 + v34 * v42 + v40 * v32, v44 + v34 * v43 + v41 * v32];

  return v8;
}

- (BOOL)lassoContainsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v32 = *MEMORY[0x1E69E9840];
  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  [strokeSelection bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  selectionController = [(PKAdornmentView *)self selectionController];
  strokeSelection2 = [(PKAdornmentView *)self strokeSelection];
  drawing = [strokeSelection2 drawing];
  [(PKSelectionController *)selectionController _selectionDrawingTransformForDrawing:drawing, &v29];
  v30 = v29;
  DKD_CGAffineTransformDecompose(&v30, &v31);
  a = v31.a;

  memset(&v31, 0, sizeof(v31));
  CGAffineTransformMakeTranslation(&v31, -v8, -v10);
  memset(&v30, 0, sizeof(v30));
  CGAffineTransformMakeScale(&v30, a, a);
  t1 = v31;
  memset(&v29, 0, sizeof(v29));
  v27 = v30;
  CGAffineTransformConcat(&v29, &t1, &v27);
  t1 = v29;
  v35.origin.x = v8;
  v35.origin.y = v10;
  v35.size.width = v12;
  v35.size.height = v14;
  v36 = CGRectApplyAffineTransform(v35, &t1);
  if (v36.size.width < 44.0 || v36.size.height < 44.0)
  {
    UIRectGetCenter();
    UIRectCenteredAboutPoint();
    v34.x = x;
    v34.y = y;
    return CGRectContainsPoint(v37, v34);
  }

  else
  {
    selectionRenderer = [(PKAdornmentView *)self selectionRenderer];
    v20 = selectionRenderer == 0;

    if (v20)
    {
      return 0;
    }

    else
    {
      selectionRenderer2 = [(PKAdornmentView *)self selectionRenderer];
      lassoPath = [selectionRenderer2 lassoPath];
      v23 = lassoPath;
      cGPath = [lassoPath CGPath];
      v33.x = x;
      v33.y = y;
      v25 = CGPathContainsPoint(cGPath, 0, v33, 0);
    }
  }

  return v25;
}

- (id)keyCommands
{
  v19[5] = *MEMORY[0x1E69E9840];
  v18 = _PencilKitBundle();
  v17 = [v18 localizedStringForKey:@"Copy strokes" value:@"Copy strokes" table:@"Localizable"];
  v16 = __30__PKSelectionView_keyCommands__block_invoke(@"c", 0x100000, sel_copy_, v17);
  v19[0] = v16;
  v15 = _PencilKitBundle();
  v14 = [v15 localizedStringForKey:@"Cut strokes" value:@"Cut strokes" table:@"Localizable"];
  v13 = __30__PKSelectionView_keyCommands__block_invoke(@"x", 0x100000, sel_cut_, v14);
  v19[1] = v13;
  v2 = _PencilKitBundle();
  v3 = [v2 localizedStringForKey:@"Paste strokes" value:@"Paste strokes" table:@"Localizable"];
  v4 = __30__PKSelectionView_keyCommands__block_invoke(@"v", 0x100000, sel_paste_, v3);
  v19[2] = v4;
  v5 = _PencilKitBundle();
  v6 = [v5 localizedStringForKey:@"Duplicate strokes" value:@"Duplicate strokes" table:@"Localizable"];
  v7 = __30__PKSelectionView_keyCommands__block_invoke(@"d", 0x100000, sel_duplicate_, v6);
  v19[3] = v7;
  v8 = _PencilKitBundle();
  v9 = [v8 localizedStringForKey:@"Delete strokes" value:@"Delete strokes" table:@"Localizable"];
  v10 = __30__PKSelectionView_keyCommands__block_invoke(@"\b", 0, sel_delete_, v9);
  v19[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];

  return v11;
}

id __30__PKSelectionView_keyCommands__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:a1 modifierFlags:a2 action:a3];
  [v8 setDiscoverabilityTitle:v7];

  return v8;
}

- (void)toggleEditMenu
{
  selectionController = [(PKAdornmentView *)self selectionController];
  v22 = selectionController;
  if (selectionController)
  {
    WeakRetained = objc_loadWeakRetained((selectionController + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  editMenuVisible = [WeakRetained editMenuVisible];

  selectionController2 = [(PKAdornmentView *)self selectionController];
  if (editMenuVisible)
  {
    v23 = selectionController2;
    if (selectionController2)
    {
      v7 = objc_loadWeakRetained((selectionController2 + 120));
    }

    else
    {
      v7 = 0;
    }

    editMenuInteraction = [v7 editMenuInteraction];
    [editMenuInteraction dismissMenu];
  }

  else
  {
    if (selectionController2)
    {
      v9 = *(selectionController2 + 112);

      if (v9)
      {
        return;
      }
    }

    if (([(PKSelectionView *)self isFirstResponder]& 1) == 0)
    {
      [(PKSelectionView *)self becomeFirstResponder];
    }

    selectionRenderer = [(PKAdornmentView *)self selectionRenderer];
    [selectionRenderer editMenuLocation];
    v11 = v10;
    v13 = v12;

    selectionController3 = [(PKAdornmentView *)self selectionController];
    v25 = selectionController3;
    if (selectionController3)
    {
      v15 = objc_loadWeakRetained((selectionController3 + 120));
    }

    else
    {
      v15 = 0;
    }

    [(PKSelectionView *)self convertPoint:v15 toView:v11, v13];
    v17 = v16;
    v19 = v18;

    v23 = [MEMORY[0x1E69DC9D8] configurationWithIdentifier:@"PKEditMenuConfigurationIdentifier" sourcePoint:{v17, v19}];
    selectionController4 = [(PKAdornmentView *)self selectionController];
    v7 = selectionController4;
    if (selectionController4)
    {
      editMenuInteraction = objc_loadWeakRetained((selectionController4 + 120));
    }

    else
    {
      editMenuInteraction = 0;
    }

    v8EditMenuInteraction = [editMenuInteraction editMenuInteraction];
    [v8EditMenuInteraction presentEditMenuWithConfiguration:v23];
  }
}

- (CGRect)editMenuTargetRect
{
  selectionRenderer = [(PKAdornmentView *)self selectionRenderer];
  [selectionRenderer editMenuLocation];
  v5 = v4;
  v7 = v6;

  v8 = v5 == *MEMORY[0x1E695EFF8] && v7 == *(MEMORY[0x1E695EFF8] + 8);
  if (v8 || ((-[PKAdornmentView selectionController](self, "selectionController"), v9 = objc_claimAutoreleasedReturnValue(), (v10 = v9) == 0) ? (v11 = 0) : (v11 = *(v9 + 128)), v12 = v11, [v12 externalElements], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v10, v13))
  {
    [(PKSelectionView *)self bounds];
  }

  else
  {
    v14 = v5 + -2.5;
    v15 = v7 + -2.5;
    v16 = 5.0;
    v17 = 5.0;
  }

  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  selectionController = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)selectionController cut:cutCopy];
}

- (void)copy:(id)copy
{
  copyCopy = copy;
  selectionController = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)selectionController copy:copyCopy];
}

- (void)delete:(id)delete
{
  deleteCopy = delete;
  selectionController = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)selectionController delete:deleteCopy];
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  selectionController = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)selectionController paste:pasteCopy];
}

- (void)duplicate:(id)duplicate
{
  duplicateCopy = duplicate;
  selectionController = [(PKAdornmentView *)self selectionController];
  [PKSelectionController duplicate:selectionController];
}

- (void)copyTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  selectionController = [(PKAdornmentView *)self selectionController];
  [PKSelectionController copyTranscription:selectionController];
}

- (void)createSticker:(id)sticker
{
  stickerCopy = sticker;
  selectionController = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)selectionController createSticker:stickerCopy];
}

- (void)translate:(id)translate
{
  translateCopy = translate;
  selectionController = [(PKAdornmentView *)self selectionController];
  [PKSelectionController translate:selectionController];
}

- (void)straighten:(id)straighten
{
  straightenCopy = straighten;
  selectionController = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)selectionController straighten:straightenCopy];
}

- (void)refine:(id)refine
{
  refineCopy = refine;
  selectionController = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)selectionController refine:refineCopy];
}

- (void)insertSpace:(id)space
{
  spaceCopy = space;
  selectionController = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)selectionController insertSpace:spaceCopy];
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  if ([(PKSelectionView *)self canPerformAction:action withSender:sender])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(PKSelectionView *)self selectionType]== 6 || self->_isDragging)
  {
    v8 = 0;
  }

  else if (eventCopy && [eventCopy type] == 11)
  {
    v22.receiver = self;
    v22.super_class = PKSelectionView;
    v8 = [(PKSelectionView *)&v22 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PKSelectionView;
    v10 = [(PKSelectionView *)&v21 hitTest:eventCopy withEvent:x, y];
    v11 = [eventCopy touchesForView:v10];
    anyObject = [v11 anyObject];

    v13 = [anyObject type] == 2;
    selectionController = [(PKAdornmentView *)self selectionController];
    selectionInteraction = [(PKSelectionController *)selectionController selectionInteraction];
    v16 = [selectionInteraction knobsContainPoint:v13 forInputType:{x, y}];

    if (v16)
    {
      selectionController2 = [(PKAdornmentView *)self selectionController];
      v18 = selectionController2;
      if (selectionController2)
      {
        v19 = *(selectionController2 + 160);
      }

      else
      {
        v19 = 0;
      }

      v8 = v19;
    }

    else
    {
      if ([(PKSelectionView *)self containsPoint:v13 forInputType:x, y])
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = v10;
      }

      v8 = selfCopy;
    }
  }

  return v8;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v28[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  selectionController = [(PKAdornmentView *)self selectionController];
  selectionInteraction = [(PKSelectionController *)selectionController selectionInteraction];
  v8 = [selectionInteraction _dragShouldBeginForSession:sessionCopy];

  if (v8)
  {
    [sessionCopy locationInView:self];
    self->_offsetInTouchView.x = v9;
    self->_offsetInTouchView.y = v10;
    [(PKSelectionView *)self frame];
    self->_originalStrokeFrame.origin.x = v11;
    self->_originalStrokeFrame.origin.y = v12;
    self->_originalStrokeFrame.size.width = v13;
    self->_originalStrokeFrame.size.height = v14;
    selectionController2 = [(PKAdornmentView *)self selectionController];
    strokeSelection = [(PKAdornmentView *)self strokeSelection];
    externalElements = [strokeSelection externalElements];
    _currentAttachment = [(PKSelectionView *)self _currentAttachment];
    v19 = [(PKSelectionController *)selectionController2 _itemProviderForExternalElements:externalElements inAttachment:_currentAttachment];
    strokeSelection2 = [(PKAdornmentView *)self strokeSelection];
    [strokeSelection2 setExternalElementsItemProvider:v19];

    v21 = objc_alloc(MEMORY[0x1E696ACA0]);
    strokeSelection3 = [(PKAdornmentView *)self strokeSelection];
    v23 = [v21 initWithObject:strokeSelection3];

    v24 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v23];
    strokeSelection4 = [(PKAdornmentView *)self strokeSelection];
    [sessionCopy setLocalContext:strokeSelection4];

    v28[0] = v24;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  }

  else
  {
    v26 = MEMORY[0x1E695E0F0];
  }

  return v26;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  v6 = objc_alloc(MEMORY[0x1E69DC9A8]);
  [(PKSelectionView *)self bounds];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  MidX = CGRectGetMidX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v12 = [v6 initWithContainer:self center:{MidX, CGRectGetMidY(v24)}];
  v13 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v13 setBackgroundColor:clearColor];

  v15 = objc_alloc(MEMORY[0x1E69DCAE0]);
  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  strokeImage = [strokeSelection strokeImage];
  combinedImage = [strokeImage combinedImage];
  v19 = [v15 initWithImage:combinedImage];

  [v19 _setContinuousCornerRadius:13.0];
  v20 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v19 parameters:v13 target:v12];

  return v20;
}

- (void)transformBegan
{
  selectionController = [(PKAdornmentView *)self selectionController];
  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  strokeSelection2 = [(PKAdornmentView *)self strokeSelection];
  drawing = [strokeSelection2 drawing];
  self->_originalStrokeFrame.origin.x = [(PKSelectionController *)selectionController calculateFrameForSelectionView:strokeSelection inDrawing:drawing];
  self->_originalStrokeFrame.origin.y = v7;
  self->_originalStrokeFrame.size.width = v8;
  self->_originalStrokeFrame.size.height = v9;

  v10 = MEMORY[0x1E695EFF8];
  self->_offsetInTouchView = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFD0] + 32);
  v12 = *MEMORY[0x1E695EFD0];
  *&self->_resizeTransform.c = *(MEMORY[0x1E695EFD0] + 16);
  *&self->_resizeTransform.tx = v11;
  *&self->_resizeTransform.a = v12;
  self->_currentScrollOffset = *v10;
  [(PKSelectionView *)self _dragWillBegin];
  selectionController2 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)selectionController2 didBeginDraggingSelection];

  [(PKSelectionView *)self didBeginDraggingSelection];
}

- (void)transformChanged:(CGAffineTransform *)changed
{
  v5 = *&changed->c;
  v4 = *&changed->tx;
  *&self->_resizeTransform.a = *&changed->a;
  *&self->_resizeTransform.c = v5;
  *&self->_resizeTransform.tx = v4;
  v6 = *&changed->c;
  *&v15.a = *&changed->a;
  *&v15.c = v6;
  *&v15.tx = *&changed->tx;
  p_originalStrokeFrame = &self->_originalStrokeFrame;
  *&v4 = self->_originalStrokeFrame.origin.x;
  *&v6 = self->_originalStrokeFrame.origin.y;
  width = self->_originalStrokeFrame.size.width;
  height = self->_originalStrokeFrame.size.height;
  MidX = CGRectGetMidX(*&v4);
  MidY = CGRectGetMidY(*p_originalStrokeFrame);
  CGAffineTransformMakeTranslation(&t1, MidX, MidY);
  [(PKSelectionView *)self selectionDrawingStrokeTransform];
  CGAffineTransformConcat(&v14, &t1, &v12);
  DKDTransformInTransformSpace(&v15, &v14, &v16);
  v15 = v16;
  [(PKSelectionView *)self setTransform:&v15];
}

- (void)transformEnded
{
  v6 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v6 recordDragSelection];

  v7 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v7 logSelectionAction:1];

  selectionController = [(PKAdornmentView *)self selectionController];
  if (selectionController)
  {
    v5 = *&self->_resizeTransform.c;
    v4 = *&self->_resizeTransform.tx;
    *(selectionController + 168) = *&self->_resizeTransform.a;
    *(selectionController + 184) = v5;
    *(selectionController + 200) = v4;
  }

  [(PKSelectionView *)self _cleanupDragState];
  selectionController2 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)selectionController2 didEndDraggingSelection];
}

- (void)dragEnded:(CGPoint)ended
{
  y = ended.y;
  x = ended.x;
  v6 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v6 recordDragSelection];

  v7 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v7 logSelectionAction:1];

  [(PKSelectionView *)self didEndGestureWithTranslation:x, y];
  selectionController = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)selectionController didEndDraggingSelection];
}

- (void)transformCancelled
{
  [(PKSelectionView *)self _resetDragState];
  selectionController = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)selectionController didEndDraggingSelection];
}

- (void)hideStrokeImageView
{
  v11.receiver = self;
  v11.super_class = PKSelectionView;
  [(PKAdornmentView *)&v11 hideStrokeImageView];
  selectionController = [(PKAdornmentView *)self selectionController];
  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  [(PKSelectionController *)selectionController setImageOnSelectionViewForStrokeSelection:strokeSelection withCompletion:0];

  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v10[0] = *MEMORY[0x1E695EFD0];
  v10[1] = v5;
  v10[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PKSelectionView *)self setTransform:v10];
  selectionController2 = [(PKAdornmentView *)self selectionController];
  strokeSelection2 = [(PKAdornmentView *)self strokeSelection];
  strokeSelection3 = [(PKAdornmentView *)self strokeSelection];
  drawing = [strokeSelection3 drawing];
  [(PKSelectionView *)self setFrame:[(PKSelectionController *)selectionController2 calculateFrameForSelectionView:strokeSelection2 inDrawing:drawing]];
}

- (void)dragSelection:(id)selection
{
  selectionCopy = selection;
  selectionController = [(PKAdornmentView *)self selectionController];
  if (!selectionController || (v6 = selectionController[112], selectionController, (v6 & 1) == 0))
  {
    selectionController2 = [(PKAdornmentView *)self selectionController];
    topView = [(PKSelectionController *)selectionController2 topView];

    [selectionCopy locationInView:topView];
    v10 = v9;
    v12 = v11;
    x = self->_initialDragPosition.x;
    y = self->_initialDragPosition.y;
    _currentAttachment = [(PKSelectionView *)self _currentAttachment];
    if ([selectionCopy state] == 1)
    {
      self->_initialDragPosition.x = v10;
      self->_initialDragPosition.y = v12;
      [(PKSelectionView *)self transformBegan];
    }

    else
    {
      v16 = v10 - x;
      v17 = v12 - y;
      if ([selectionCopy state] == 2)
      {
        v18 = self->_originalStrokeFrame.origin.x;
        v19 = self->_originalStrokeFrame.origin.y;
        [(PKSelectionView *)self frame];
        v21 = v20;
        v46 = v17;
        [(PKSelectionView *)self frame];
        height = v49.size.height;
        v23 = v16 + v18;
        v24 = v46 + v19;
        v49.origin.x = v16 + v18;
        v49.origin.y = v24;
        v49.size.width = v21;
        MidX = CGRectGetMidX(v49);
        v50.origin.x = v23;
        v50.origin.y = v24;
        v50.size.width = v21;
        v50.size.height = height;
        [(PKSelectionView *)self setCenter:MidX, CGRectGetMidY(v50)];
        selectionController3 = [(PKAdornmentView *)self selectionController];
        v27 = [(PKSelectionController *)selectionController3 autoscrollForPointIfNecessary:v10, v12];
        v29 = v28;

        v30 = v29 + self->_currentScrollOffset.y;
        self->_currentScrollOffset.x = v27 + self->_currentScrollOffset.x;
        self->_currentScrollOffset.y = v30;
        if (_currentAttachment)
        {
          [_currentAttachment drawingTransform];
        }

        else
        {
          memset(&v47, 0, sizeof(v47));
        }

        CGAffineTransformInvert(&v48, &v47);
        a = v48.a;
        b = v48.b;
        c = v48.c;
        d = v48.d;
        tx = v48.tx;
        ty = v48.ty;
        selectionController4 = [(PKAdornmentView *)self selectionController];
        strokeSelection = [(PKAdornmentView *)self strokeSelection];
        externalElements = [strokeSelection externalElements];
        v45 = *(MEMORY[0x1E695EFD0] + 16);
        *&v47.a = *MEMORY[0x1E695EFD0];
        *&v47.c = v45;
        *&v47.tx = *(MEMORY[0x1E695EFD0] + 32);
        CGAffineTransformTranslate(&v48, &v47, tx + (v46 - v30) * c + a * v16, ty + (v46 - v30) * d + b * v16);
        [(PKSelectionController *)selectionController4 _didDragExternalElements:externalElements withTransform:&v48 inAttachment:_currentAttachment];
      }

      else if ([selectionCopy state] == 3)
      {
        [(PKSelectionView *)self dragEnded:v16, v12 - y];
        if (v16 == *MEMORY[0x1E695EFF8] && v17 == *(MEMORY[0x1E695EFF8] + 8))
        {
          selectionController5 = [(PKAdornmentView *)self selectionController];
          v33 = selectionController5;
          v34 = selectionController5 ? objc_loadWeakRetained((selectionController5 + 120)) : 0;
          editMenuVisible = [v34 editMenuVisible];

          if ((editMenuVisible & 1) == 0)
          {
            [(PKSelectionView *)self toggleEditMenu];
          }
        }
      }

      else if ([selectionCopy state] == 4 || objc_msgSend(selectionCopy, "state") == 5)
      {
        [(PKSelectionView *)self transformCancelled];
      }
    }
  }
}

- (void)performDidEndGestureWithTranslation:(CGPoint)translation
{
  v77[5] = *MEMORY[0x1E69E9840];
  y = self->_originalStrokeFrame.origin.y;
  x = self->_originalStrokeFrame.origin.x;
  b = self->_resizeTransform.b;
  c = self->_resizeTransform.c;
  d = self->_resizeTransform.d;
  a = self->_resizeTransform.a;
  tx = self->_resizeTransform.tx;
  ty = self->_resizeTransform.ty;
  v7 = MEMORY[0x1E696B098];
  [(PKSelectionView *)self center];
  v75[0] = v8;
  v75[1] = v9;
  v10 = [v7 valueWithBytes:v75 objCType:"{CGPoint=dd}"];
  v77[0] = v10;
  v11 = MEMORY[0x1E696B098];
  [(PKSelectionView *)self frame];
  v12 = v78.origin.x;
  v13 = v78.origin.y;
  width = v78.size.width;
  height = v78.size.height;
  MaxX = CGRectGetMaxX(v78);
  v79.origin.x = v12;
  v79.origin.y = v13;
  v79.size.width = width;
  v79.size.height = height;
  *v74 = MaxX;
  v74[1] = CGRectGetMaxY(v79);
  v17 = [v11 valueWithBytes:v74 objCType:"{CGPoint=dd}"];
  v77[1] = v17;
  v18 = MEMORY[0x1E696B098];
  [(PKSelectionView *)self frame];
  v19 = v80.origin.x;
  v20 = v80.origin.y;
  v21 = v80.size.width;
  v22 = v80.size.height;
  v23 = CGRectGetMaxX(v80);
  v81.origin.x = v19;
  v81.origin.y = v20;
  v81.size.width = v21;
  v81.size.height = v22;
  *v73 = v23;
  v73[1] = CGRectGetMinY(v81);
  v24 = [v18 valueWithBytes:v73 objCType:"{CGPoint=dd}"];
  v77[2] = v24;
  v25 = MEMORY[0x1E696B098];
  [(PKSelectionView *)self frame];
  v26 = v82.origin.x;
  v27 = v82.origin.y;
  v28 = v82.size.width;
  v29 = v82.size.height;
  MinX = CGRectGetMinX(v82);
  v83.origin.x = v26;
  v83.origin.y = v27;
  v83.size.width = v28;
  v83.size.height = v29;
  *v72 = MinX;
  v72[1] = CGRectGetMinY(v83);
  v31 = [v25 valueWithBytes:v72 objCType:"{CGPoint=dd}"];
  v77[3] = v31;
  v32 = MEMORY[0x1E696B098];
  [(PKSelectionView *)self frame];
  v33 = v84.origin.x;
  v34 = v84.origin.y;
  v35 = v84.size.width;
  v36 = v84.size.height;
  v37 = CGRectGetMinX(v84);
  v85.origin.x = v33;
  v85.origin.y = v34;
  v85.size.width = v35;
  v85.size.height = v36;
  *v71 = v37;
  v71[1] = CGRectGetMaxY(v85);
  v38 = [v32 valueWithBytes:v71 objCType:"{CGPoint=dd}"];
  v77[4] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:5];

  v70 = 0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v40 = v39;
  v41 = [v40 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v41)
  {
    v42 = *v67;
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v67 != v42)
        {
          objc_enumerationMutation(v40);
        }

        v44 = *(*(&v66 + 1) + 8 * i);
        selectionController = [(PKAdornmentView *)self selectionController];
        [v44 CGPointValue];
        LOBYTE(v44) = [(PKSelectionController *)selectionController _isValidDropPointForStrokes:v46 didInsertNewAttachment:v47];

        if (v44)
        {
          v48 = 1;
          goto LABEL_11;
        }
      }

      v41 = [v40 countByEnumeratingWithState:&v66 objects:v76 count:16];
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  v48 = 0;
LABEL_11:

  _currentAttachment = [(PKSelectionView *)self _currentAttachment];
  if (v48 && (-[PKAdornmentView selectionController](self, "selectionController"), v50 = objc_claimAutoreleasedReturnValue(), -[PKAdornmentView strokeSelection](self, "strokeSelection"), v51 = objc_claimAutoreleasedReturnValue(), [v51 externalElements], v52 = objc_claimAutoreleasedReturnValue(), v53 = tx + (translation.y + y) * c + a * (translation.x + x), v54 = -[PKSelectionController _externalElements:locationOutOfBounds:inAttachment:](v50, v52, _currentAttachment, v53, ty + (translation.y + y) * d + b * (translation.x + x)), v52, v51, v50, (v54 & 1) == 0))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PKSelectionView_performDidEndGestureWithTranslation___block_invoke;
    block[3] = &unk_1E82D6610;
    block[4] = self;
    *&block[5] = v53;
    *&block[6] = ty + (translation.y + y) * d + b * (translation.x + x);
    v55 = dispatch_block_create(0, block);
    finishDragToAttachmentBlock = self->_finishDragToAttachmentBlock;
    self->_finishDragToAttachmentBlock = v55;

    if (v70 == 1)
    {
      v57 = dispatch_time(0, 1000000000);
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __55__PKSelectionView_performDidEndGestureWithTranslation___block_invoke_2;
      v64[3] = &unk_1E82D6388;
      v64[4] = self;
      dispatch_after(v57, MEMORY[0x1E69E96A0], v64);
    }

    else
    {
      [(PKSelectionView *)self _commitDragToAttachment];
    }
  }

  else
  {
    [(PKSelectionView *)self _resetDragState];
  }
}

uint64_t __55__PKSelectionView_performDidEndGestureWithTranslation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionController];
  [(PKSelectionController *)v2 didMoveStrokeSelectionToLocation:*(a1 + 48)];

  v3 = [*(a1 + 32) selectionController];
  v4 = [*(a1 + 32) strokeSelection];
  v5 = [v4 externalElements];
  v6 = [*(a1 + 32) _currentAttachment];
  [(PKSelectionController *)v3 _didEndDraggingExternalElements:v5 inAttachment:v6];

  v7 = *(a1 + 32);

  return [v7 _cleanupDragState];
}

uint64_t __55__PKSelectionView_performDidEndGestureWithTranslation___block_invoke_2(uint64_t result)
{
  if (*(*(result + 32) + 584))
  {
    v1 = result;
    v2 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *v3 = 0;
      _os_log_fault_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_FAULT, "Text attachment was not created at the bottom of the note in time for the selection drag to finish", v3, 2u);
    }

    return [*(v1 + 32) _commitDragToAttachment];
  }

  return result;
}

- (void)didEndGestureWithTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  selectionRenderer = [(PKAdornmentView *)self selectionRenderer];

  if (selectionRenderer)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__PKSelectionView_didEndGestureWithTranslation___block_invoke;
    v8[3] = &unk_1E82D6388;
    v8[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__PKSelectionView_didEndGestureWithTranslation___block_invoke_2;
    v7[3] = &unk_1E82D64F8;
    v7[4] = self;
    *&v7[5] = x;
    *&v7[6] = y;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:4 animations:v8 completion:v7];
  }

  else
  {

    [(PKSelectionView *)self performDidEndGestureWithTranslation:x, y];
  }
}

void __48__PKSelectionView_didEndGestureWithTranslation___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) selectionRenderer];
  [v1 _didEndDraggingSelection];
}

- (void)_commitDragToAttachment
{
  finishDragToAttachmentBlock = self->_finishDragToAttachmentBlock;
  if (finishDragToAttachmentBlock)
  {
    finishDragToAttachmentBlock[2](finishDragToAttachmentBlock, a2);
    v4 = self->_finishDragToAttachmentBlock;
    self->_finishDragToAttachmentBlock = 0;
  }
}

- (void)_resetDragState
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v12 = *MEMORY[0x1E695EFD0];
  v13 = v4;
  v14 = *(MEMORY[0x1E695EFD0] + 32);
  [(PKSelectionView *)self setTransform:&v12];
  [(PKSelectionView *)self setFrame:self->_originalStrokeFrame.origin.x, self->_originalStrokeFrame.origin.y, self->_originalStrokeFrame.size.width, self->_originalStrokeFrame.size.height];
  v5 = v3[1];
  v12 = *v3;
  v13 = v5;
  v14 = v3[2];
  selectionController = [(PKAdornmentView *)self selectionController];
  if (selectionController)
  {
    v7 = v13;
    *(selectionController + 168) = v12;
    *(selectionController + 184) = v7;
    *(selectionController + 200) = v14;
  }

  selectionController2 = [(PKAdornmentView *)self selectionController];
  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  externalElements = [strokeSelection externalElements];
  _currentAttachment = [(PKSelectionView *)self _currentAttachment];
  [(PKSelectionController *)selectionController2 _resetExternalElements:externalElements inAttachment:_currentAttachment];

  [(PKSelectionView *)self _cleanupDragState];
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  [(PKSelectionView *)self setAlpha:interaction, begin, 0.3];
  v5 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v5 recordDragAndDropSelection];

  [(PKSelectionView *)self _resetDragState];
  selectionController = [(PKAdornmentView *)self selectionController];
  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  externalElements = [strokeSelection externalElements];
  _currentAttachment = [(PKSelectionView *)self _currentAttachment];
  [(PKSelectionController *)selectionController _dragInteractionWillBeginForExternalElements:externalElements inAttachment:_currentAttachment];

  [(PKSelectionView *)self _dragWillBegin];
}

- (void)_dragWillBegin
{
  selectionController = [(PKAdornmentView *)self selectionController];
  v4 = selectionController;
  if (selectionController)
  {
    WeakRetained = objc_loadWeakRetained((selectionController + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  editMenuVisible = [WeakRetained editMenuVisible];

  if (editMenuVisible)
  {
    [(PKSelectionView *)self toggleEditMenu];
  }

  [(PKAdornmentView *)self _liftStrokesOutOfTiledView];
  selectionRenderer = [(PKAdornmentView *)self selectionRenderer];
  [selectionRenderer _didBeginDraggingSelection];

  self->_isDragging = 1;
}

- (void)makeViewAliveAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(PKSelectionView *)self frame];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__PKSelectionView_makeViewAliveAtLocation___block_invoke;
  v10[3] = &unk_1E82D6520;
  v10[4] = self;
  *&v10[5] = x;
  *&v10[6] = y;
  v10[7] = v6;
  v10[8] = v7;
  v10[9] = v8;
  v10[10] = v9;
  [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:4 animations:v10 completion:0];
}

uint64_t __43__PKSelectionView_makeViewAliveAtLocation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40) - *(*(a1 + 32) + 640), *(a1 + 48) - *(*(a1 + 32) + 648), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 32);

  return [v2 setAlpha:1.0];
}

- (void)animateViewToOriginalPosition
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__PKSelectionView_animateViewToOriginalPosition__block_invoke;
  v2[3] = &unk_1E82D6388;
  v2[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:4 animations:v2 completion:0];
}

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  interactionCopy = interaction;
  sessionCopy = session;
  self->_isDragging = 0;
  if ((operation & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v14[4] = self;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__PKSelectionView_dragInteraction_session_willEndWithOperation___block_invoke_3;
    v15[3] = &unk_1E82D6388;
    v15[4] = self;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__PKSelectionView_dragInteraction_session_willEndWithOperation___block_invoke_4;
    v14[3] = &unk_1E82D6548;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:4 animations:v15 completion:v14];
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __64__PKSelectionView_dragInteraction_session_willEndWithOperation___block_invoke;
    v17[3] = &unk_1E82D6388;
    v17[4] = self;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__PKSelectionView_dragInteraction_session_willEndWithOperation___block_invoke_2;
    v16[3] = &unk_1E82D6548;
    v16[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:4 animations:v17 completion:v16];
  }

  selectionController = [(PKAdornmentView *)self selectionController];
  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  externalElements = [strokeSelection externalElements];
  _currentAttachment = [(PKSelectionView *)self _currentAttachment];
  [(PKSelectionController *)selectionController _dragInteractionWillEndForExternalElements:externalElements withOperation:operation inAttachment:_currentAttachment];
}

void __64__PKSelectionView_dragInteraction_session_willEndWithOperation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(*(a1 + 32) + 464), *(*(a1 + 32) + 472), *(*(a1 + 32) + 480), *(*(a1 + 32) + 488)}];
  [*(a1 + 32) setAlpha:1.0];
  v2 = [*(a1 + 32) selectionRenderer];
  [v2 _didEndDraggingSelection];
}

void __64__PKSelectionView_dragInteraction_session_willEndWithOperation___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = [*(a1 + 32) selectionRenderer];
  [v2 _didEndDraggingSelection];
}

- (void)updateLocationForDrop:(CGPoint)drop
{
  y = drop.y;
  x = drop.x;
  [(PKSelectionView *)self frame];
  v6 = x - self->_offsetInTouchView.x;
  v7 = y - self->_offsetInTouchView.y;

  [(PKSelectionView *)self setFrame:v6, v7];
}

- (void)didBeginDraggingSelection
{
  selectionController = [(PKAdornmentView *)self selectionController];
  v3 = selectionController;
  if (selectionController)
  {
    WeakRetained = objc_loadWeakRetained((selectionController + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  scrollView = [WeakRetained scrollView];

  panGestureRecognizer = [scrollView panGestureRecognizer];
  state = [panGestureRecognizer state];

  if (state != 2)
  {
    panGestureRecognizer2 = [scrollView panGestureRecognizer];
    [panGestureRecognizer2 setEnabled:0];

    panGestureRecognizer3 = [scrollView panGestureRecognizer];
    [panGestureRecognizer3 setEnabled:1];
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  externalElements = [strokeSelection externalElements];

  if (externalElements)
  {
    if ([(PKSelectionView *)self _exactlyOneExternalElementSelected])
    {
      selectionController = [(PKAdornmentView *)self selectionController];
      strokeSelection2 = [(PKAdornmentView *)self strokeSelection];
      externalElements2 = [strokeSelection2 externalElements];
      firstObject = [externalElements2 firstObject];
      _currentAttachment = [(PKSelectionView *)self _currentAttachment];
      v13 = [(PKSelectionController *)selectionController _contextMenuInteraction:interactionCopy configurationForExternalElement:firstObject inAttachment:_currentAttachment];
    }

    else
    {
      v14 = MEMORY[0x1E69DC628];
      v15 = _PencilKitBundle();
      v16 = [v15 localizedStringForKey:@"Copy" value:@"Copy" table:@"Localizable"];
      v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __73__PKSelectionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
      v40[3] = &unk_1E82D6570;
      v40[4] = self;
      v18 = [v14 actionWithTitle:v16 image:v17 identifier:0 handler:v40];

      v19 = MEMORY[0x1E69DC628];
      v20 = _PencilKitBundle();
      v21 = [v20 localizedStringForKey:@"Share" value:@"Share" table:@"Localizable"];
      v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __73__PKSelectionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
      v39[3] = &unk_1E82D6570;
      v39[4] = self;
      v23 = [v19 actionWithTitle:v21 image:v22 identifier:0 handler:v39];

      v24 = MEMORY[0x1E69DC628];
      v25 = _PencilKitBundle();
      v26 = [v25 localizedStringForKey:@"Delete" value:@"Delete" table:@"Localizable"];
      v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __73__PKSelectionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4;
      v38[3] = &unk_1E82D6570;
      v38[4] = self;
      v28 = [v24 actionWithTitle:v26 image:v27 identifier:0 handler:v38];

      [v28 setAttributes:2];
      v29 = MEMORY[0x1E69DC8D8];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __73__PKSelectionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_5;
      v34[3] = &unk_1E82D6598;
      v30 = v18;
      v35 = v30;
      v31 = v23;
      v36 = v31;
      v32 = v28;
      v37 = v32;
      v13 = [v29 configurationWithIdentifier:0 previewProvider:0 actionProvider:v34];
    }

    self->_displayingContextMenu = v13 != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __73__PKSelectionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionController];
  [(PKSelectionController *)v2 copy:?];
}

void __73__PKSelectionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKSelectionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
  aBlock[3] = &unk_1E82D6388;
  aBlock[4] = *(a1 + 32);
  v1 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v1[2](v1);
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], v1);
  }
}

void __73__PKSelectionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v3 = [*(a1 + 32) strokeSelection];
  v4 = [v3 strokeImage];
  v5 = [v4 combinedImage];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v7 = [v2 initWithActivityItems:v6 applicationActivities:0];

  v8 = *(a1 + 32);
  v9 = [v7 popoverPresentationController];
  [v9 setSourceView:v8];

  [v7 setModalTransitionStyle:0];
  v10 = [*(a1 + 32) window];
  v11 = [v10 rootViewController];
  [v11 presentViewController:v7 animated:1 completion:0];
}

void __73__PKSelectionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionController];
  [(PKSelectionController *)v2 delete:?];
}

id __73__PKSelectionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_5(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69DCC60];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:3];
  v3 = [v1 menuWithTitle:@"Edit Selection" children:v2];

  return v3;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  if ([(PKSelectionView *)self _exactlyOneExternalElementSelected])
  {
    selectionController = [(PKAdornmentView *)self selectionController];
    strokeSelection = [(PKAdornmentView *)self strokeSelection];
    externalElements = [strokeSelection externalElements];
    firstObject = [externalElements firstObject];
    _currentAttachment = [(PKSelectionView *)self _currentAttachment];
    v13 = [(PKSelectionController *)selectionController _contextMenuInteraction:interactionCopy previewForHighlightingMenuWithConfiguration:configurationCopy forExternalElement:firstObject inAttachment:_currentAttachment];
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E69DCE38]);
    [(PKSelectionView *)self bounds];
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    MidX = CGRectGetMidX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    selectionController = [v14 initWithContainer:self center:{MidX, CGRectGetMidY(v27)}];
    strokeSelection = objc_alloc_init(MEMORY[0x1E69DCE28]);
    v20 = objc_alloc(MEMORY[0x1E69DCAE0]);
    strokeSelection2 = [(PKAdornmentView *)self strokeSelection];
    strokeImage = [strokeSelection2 strokeImage];
    combinedImage = [strokeImage combinedImage];
    externalElements = [v20 initWithImage:combinedImage];

    [externalElements _setContinuousCornerRadius:13.0];
    v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:externalElements parameters:strokeSelection target:selectionController];
  }

  return v13;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  if ([(PKSelectionView *)self _exactlyOneExternalElementSelected])
  {
    selectionController = [(PKAdornmentView *)self selectionController];
    strokeSelection = [(PKAdornmentView *)self strokeSelection];
    externalElements = [strokeSelection externalElements];
    firstObject = [externalElements firstObject];
    _currentAttachment = [(PKSelectionView *)self _currentAttachment];
    [(PKSelectionController *)selectionController _contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configurationCopy animator:animatorCopy forExternalElement:firstObject inAttachment:_currentAttachment];
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  self->_displayingContextMenu = 0;
  if ([(PKSelectionView *)self _exactlyOneExternalElementSelected])
  {
    selectionController = [(PKAdornmentView *)self selectionController];
    strokeSelection = [(PKAdornmentView *)self strokeSelection];
    externalElements = [strokeSelection externalElements];
    firstObject = [externalElements firstObject];
    _currentAttachment = [(PKSelectionView *)self _currentAttachment];
    [(PKSelectionController *)selectionController _contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy forExternalElement:firstObject inAttachment:_currentAttachment];
  }
}

- (BOOL)_exactlyOneExternalElementSelected
{
  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  strokes = [strokeSelection strokes];
  if ([strokes count])
  {
    v5 = 0;
  }

  else
  {
    strokeSelection2 = [(PKAdornmentView *)self strokeSelection];
    externalElements = [strokeSelection2 externalElements];
    v5 = [externalElements count] == 1;
  }

  return v5;
}

- (void)didDoubleTap
{
  doubleTapGR = self->_doubleTapGR;
  selectionController = [(PKAdornmentView *)self selectionController];
  v5 = selectionController;
  if (selectionController)
  {
    WeakRetained = objc_loadWeakRetained((selectionController + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  [(UITapGestureRecognizer *)doubleTapGR locationInView:WeakRetained];
  v8 = v7;
  v10 = v9;

  [(PKSelectionView *)self _handleDoubleTapInputAtPoint:v8, v10];
}

- (void)_handleDoubleTapInputAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  touches = [(UITapGestureRecognizer *)self->_doubleTapGR touches];
  firstObject = [touches firstObject];
  type = [firstObject type];

  v9 = type == 2;
  selectionController = [(PKAdornmentView *)self selectionController];
  v11 = [(PKSelectionController *)selectionController _drawingForSelectionRect:y, 5.0, 5.0];

  selectionController2 = [(PKAdornmentView *)self selectionController];
  v13 = selectionController2;
  if (selectionController2)
  {
    WeakRetained = objc_loadWeakRetained((selectionController2 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained pointInStrokeSpace:v11 inDrawing:{x, y}];
  v16 = v15;
  v18 = v17;

  selectionType = self->_selectionType;
  if (selectionType != 5)
  {
    selectionController3 = [(PKAdornmentView *)self selectionController];
    strokeSelection = [(PKAdornmentView *)self strokeSelection];
    strokes = [strokeSelection strokes];
    array = [strokes array];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __48__PKSelectionView__handleDoubleTapInputAtPoint___block_invoke;
    v24[3] = &unk_1E82D65C0;
    v26 = selectionType + 1;
    v24[4] = self;
    v25 = v11;
    [(PKSelectionController *)selectionController3 fetchStrokesToSelectAtPoint:v25 inDrawing:v26 withSelectionType:v9 inputType:array existingSelection:v24 completion:v16, v18];
  }
}

void __48__PKSelectionView__handleDoubleTapInputAtPoint___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v3 recordSmartSelectionEventWithType:*(a1 + 48) contentType:objc_msgSend(v6 gestureInvoked:{"contentType"), 1}];

  v4 = [*(a1 + 32) selectionController];
  v5 = [v6 intersectedStrokes];
  [(PKSelectionController *)v4 selectStrokes:v5 forSelectionType:*(a1 + 48) inDrawing:*(a1 + 40)];
}

- (id)_currentAttachment
{
  selectionController = [(PKAdornmentView *)self selectionController];
  v4 = selectionController;
  if (selectionController)
  {
    WeakRetained = objc_loadWeakRetained((selectionController + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  drawing = [strokeSelection drawing];
  uuid = [drawing uuid];
  v9 = [WeakRetained attachmentForUUID:uuid];

  return v9;
}

- (void)_findTranscriptionWithCompletion:(id)completion
{
  completionCopy = completion;
  selectionController = [(PKAdornmentView *)self selectionController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PKSelectionView__findTranscriptionWithCompletion___block_invoke;
  v7[3] = &unk_1E82D65E8;
  v7[4] = self;
  v6 = completionCopy;
  v8 = v6;
  [(PKSelectionController *)selectionController findTranscriptionWithCompletion:v7];
}

void __52__PKSelectionView__findTranscriptionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 transcription];
  [*(a1 + 32) setAccessibilityValue:v3];

  v4 = *(a1 + 40);
  v5 = [v6 transcription];
  (*(v4 + 16))(v4, v5);
}

- (id)_accessibilityUserTestingChildren
{
  selectionRenderer = [(PKAdornmentView *)self selectionRenderer];

  if (selectionRenderer)
  {
    v4 = MEMORY[0x1E695DF70];
    v11.receiver = self;
    v11.super_class = PKSelectionView;
    _accessibilityUserTestingChildren = [(PKSelectionView *)&v11 _accessibilityUserTestingChildren];
    _accessibilityUserTestingChildren3 = [v4 arrayWithArray:_accessibilityUserTestingChildren];

    selectionRenderer2 = [(PKAdornmentView *)self selectionRenderer];
    _accessibilityUserTestingChildren2 = [selectionRenderer2 _accessibilityUserTestingChildren];
    [_accessibilityUserTestingChildren3 addObjectsFromArray:_accessibilityUserTestingChildren2];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PKSelectionView;
    _accessibilityUserTestingChildren3 = [(PKSelectionView *)&v10 _accessibilityUserTestingChildren];
  }

  return _accessibilityUserTestingChildren3;
}

- (CGPoint)offsetInTouchView
{
  x = self->_offsetInTouchView.x;
  y = self->_offsetInTouchView.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)selectionDrawingTransform
{
  v3 = *&self[14].a;
  *&retstr->a = *&self[13].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[14].c;
  return self;
}

- (void)setSelectionDrawingTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_selectionDrawingTransform.a = *&transform->a;
  *&self->_selectionDrawingTransform.c = v4;
  *&self->_selectionDrawingTransform.tx = v3;
}

- (CGAffineTransform)selectionDrawingStrokeTransform
{
  v3 = *&self[15].a;
  *&retstr->a = *&self[14].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[15].c;
  return self;
}

- (void)setSelectionDrawingStrokeTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_selectionDrawingStrokeTransform.a = *&transform->a;
  *&self->_selectionDrawingStrokeTransform.c = v4;
  *&self->_selectionDrawingStrokeTransform.tx = v3;
}

- (CGAffineTransform)userTransform
{
  v3 = *&self[16].a;
  *&retstr->a = *&self[15].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[16].c;
  return self;
}

- (void)setUserTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_userTransform.a = *&transform->a;
  *&self->_userTransform.c = v4;
  *&self->_userTransform.tx = v3;
}

- (BOOL)supportsSnapToShape
{
  shapeSupportCache = [(PKSelectionView *)self shapeSupportCache];
  v3 = shapeSupportCache;
  if (shapeSupportCache)
  {
    shapeSupportCache = shapeSupportCache[1];
  }

  v4 = [shapeSupportCache count] != 0;

  return v4;
}

- (id)shapeMenuActions
{
  array = [MEMORY[0x1E695DF70] array];
  shapeSupportCache = [(PKSelectionView *)self shapeSupportCache];
  v5 = shapeSupportCache;
  if (shapeSupportCache)
  {
    shapeSupportCache = shapeSupportCache[1];
  }

  if ([shapeSupportCache count])
  {
    if (v5)
    {
      v6 = v5[1];
    }

    else
    {
      v6 = 0;
    }

    v7 = +[PKShape snapToShapeActionNameForNumShapes:](PKShape, "snapToShapeActionNameForNumShapes:", [v6 count]);
    v8 = MEMORY[0x1E69DC628];
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"star"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__PKSelectionView_ShapeSupport__shapeMenuActions__block_invoke;
    v12[3] = &unk_1E82DC098;
    v12[4] = self;
    v10 = [v8 actionWithTitle:v7 image:v9 identifier:0 handler:v12];

    [array addObject:v10];
  }

  return array;
}

- (id)shapeSupportCache
{
  v38 = *MEMORY[0x1E69E9840];
  selectionController = [(PKAdornmentView *)self selectionController];
  v4 = selectionController;
  if (selectionController)
  {
    WeakRetained = objc_loadWeakRetained((selectionController + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  if (![WeakRetained allowSnapToShape])
  {
    v8 = 0;
    goto LABEL_37;
  }

  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  strokes = [strokeSelection strokes];

  if ([strokes count] && objc_msgSend(strokes, "count") <= 8)
  {
    v8 = objc_getAssociatedObject(self, shapeSupportCache_kAssociatedObjectKey);
    if (v8)
    {
      goto LABEL_36;
    }

    object = self;
    [WeakRetained inputScale];
    v10 = v9;
    value = objc_alloc_init(PKSelectionViewShapeSupportCache);
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(strokes, "count")}];
    v12 = objc_alloc_init(PKShapeDrawingController);
    v13 = v12;
    if (v12)
    {
      v12->_shapeRecognitionOn = 1;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = strokes;
    v14 = strokes;
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v15)
    {
LABEL_24:

      v22 = [v11 count];
      v8 = value;
      if (v22 == [v14 count])
      {
        v23 = [v11 copy];
        if (value)
        {
          objc_storeStrong(&value->_shapes, v23);
        }

        array = [v14 array];
        if (value)
        {
          objc_storeStrong(&value->_originalStrokes, array);
        }

        if ([v11 count] == 1)
        {
          firstObject = [v11 firstObject];
          type = [firstObject type];
          if (value)
          {
            value->_shapeType = type;
          }
        }

        else if (value)
        {
          value->_shapeType = 0;
        }
      }

      objc_setAssociatedObject(object, shapeSupportCache_kAssociatedObjectKey, value, 0x301);

      strokes = v29;
      goto LABEL_36;
    }

    v16 = v15;
    v17 = *v34;
LABEL_13:
    v18 = 0;
    while (1)
    {
      if (*v34 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v33 + 1) + 8 * v18);
      if ([v19 _shapeType])
      {
        goto LABEL_22;
      }

      _strokeData = [v19 _strokeData];
      if (![_strokeData hasValidPointTimestampData])
      {
        goto LABEL_21;
      }

      _strokeMask = [v19 _strokeMask];

      if (!_strokeMask)
      {
        break;
      }

LABEL_22:
      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (!v16)
        {
          goto LABEL_24;
        }

        goto LABEL_13;
      }
    }

    v32 = 0;
    memset(v31, 0, sizeof(v31));
    _strokeData = [(PKShapeDrawingController *)v13 shapeFromStroke:v19 inputScale:v31 averageInputPoint:0 allowedShapeTypes:v10];
    if (_strokeData)
    {
      [v11 addObject:_strokeData];
    }

LABEL_21:

    goto LABEL_22;
  }

  v8 = 0;
LABEL_36:

LABEL_37:

  return v8;
}

- (BOOL)canConvertToShapeWithAction:(SEL)action withSender:(id)sender handled:(BOOL *)handled
{
  senderCopy = sender;
  if (sel_convertToShapes_ == action)
  {
    shapeSupportCache = [(PKSelectionView *)self shapeSupportCache];
    v12 = shapeSupportCache;
    if (shapeSupportCache)
    {
      shapeSupportCache = shapeSupportCache[1];
    }

    v9 = [shapeSupportCache count] != 0;

    if (handled)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    if (handled)
    {
LABEL_3:
      *handled = sel_convertToShapes_ == action;
    }
  }

  return v9;
}

- (void)convertToShapes:(id)shapes
{
  v46 = *MEMORY[0x1E69E9840];
  shapeSupportCache = [(PKSelectionView *)self shapeSupportCache];
  v5 = shapeSupportCache;
  if (shapeSupportCache)
  {
    v6 = *(shapeSupportCache + 16);
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = v7;
  selectionController = [(PKAdornmentView *)self selectionController];
  v10 = selectionController;
  if (selectionController)
  {
    WeakRetained = objc_loadWeakRetained((selectionController + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  drawing = [strokeSelection drawing];

  if ([v6 count])
  {
    v14 = [v6 count];
    if (v14 == [v8 count] && drawing && WeakRetained)
    {
      v34 = v5;
      v31 = drawing;
      v32 = WeakRetained;
      if (v5)
      {
        v15 = v5[1];
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v30 = +[PKShape snapToShapeActionNameForNumShapes:](PKShape, "snapToShapeActionNameForNumShapes:", [v16 count]);

      v17 = +[PKSelectionStatisticsManager sharedStatisticsManager];
      [v17 logSelectionAction:8];

      v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v33 = v8;
      v19 = v8;
      v20 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v42;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v42 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v41 + 1) + 8 * i);
            v25 = +[PKStatisticsManager sharedStatisticsManager];
            -[PKStatisticsManager recordCreateShapeWithType:fromMenu:multiple:](v25, [v24 type], 1, objc_msgSend(v19, "count") > 1);

            strokes = [v24 strokes];
            [v18 addObjectsFromArray:strokes];
          }

          v21 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v21);
      }

      selectionController2 = [(PKAdornmentView *)self selectionController];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __49__PKSelectionView_ShapeSupport__convertToShapes___block_invoke;
      v35[3] = &unk_1E82DA380;
      drawing = v31;
      v36 = v31;
      v37 = v6;
      v38 = v18;
      v39 = v30;
      WeakRetained = v32;
      v40 = v32;
      v28 = v30;
      v29 = v18;
      [(PKSelectionController *)selectionController2 clearSelectionIfNecessaryWithCompletion:v35];

      v5 = v34;
      v8 = v33;
    }
  }
}

void __49__PKSelectionView_ShapeSupport__convertToShapes___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) undoableDeleteStrokes:*(a1 + 40)];
  v3 = [*(a1 + 32) undoableAddNewStrokes:*(a1 + 48)];
  [v2 setActionName:*(a1 + 56)];
  [v3 setActionName:*(a1 + 56)];
  v4 = *(a1 + 64);
  v5 = [v4 canvasView];
  v10[0] = v3;
  v10[1] = v2;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [v4 canvasView:v5 registerUndoCommands:v6];

  [*(a1 + 64) didChangeDrawing:*(a1 + 32)];
  v7 = *(a1 + 64);
  v9 = *(a1 + 32);
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  [v7 _selectionRefreshWithChangeToDrawings:v8 completion:&__block_literal_global_80];
}

@end