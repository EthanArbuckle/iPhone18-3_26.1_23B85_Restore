@interface PKSelectionView
- (BOOL)_exactlyOneExternalElementSelected;
- (BOOL)canConvertToShapeWithAction:(SEL)a3 withSender:(id)a4 handled:(BOOL *)a5;
- (BOOL)containsPoint:(CGPoint)a3 forInputType:(int64_t)a4;
- (BOOL)lassoContainsPoint:(CGPoint)a3;
- (BOOL)supportsSnapToShape;
- (CGAffineTransform)selectionDrawingStrokeTransform;
- (CGAffineTransform)selectionDrawingTransform;
- (CGAffineTransform)userTransform;
- (CGPoint)offsetInTouchView;
- (CGRect)editMenuTargetRect;
- (PKSelectionView)initWithFrame:(CGRect)a3 strokeSelection:(id)a4 selectionController:(id)a5 selectionType:(int64_t)a6;
- (id)_accessibilityUserTestingChildren;
- (id)_currentAttachment;
- (id)_selectionViewGestures;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)keyCommands;
- (id)shapeMenuActions;
- (id)shapeSupportCache;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (void)_commitDragToAttachment;
- (void)_dragWillBegin;
- (void)_findTranscriptionWithCompletion:(id)a3;
- (void)_handleDoubleTapInputAtPoint:(CGPoint)a3;
- (void)_resetDragState;
- (void)animateViewToOriginalPosition;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)convertToShapes:(id)a3;
- (void)copy:(id)a3;
- (void)copyTranscription:(id)a3;
- (void)createSticker:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)delete:(id)a3;
- (void)didBeginDraggingSelection;
- (void)didDoubleTap;
- (void)didEndGestureWithTranslation:(CGPoint)a3;
- (void)dragEnded:(CGPoint)a3;
- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)dragSelection:(id)a3;
- (void)duplicate:(id)a3;
- (void)generateStrokeImageForPasteAndDND;
- (void)hideStrokeImageView;
- (void)insertSpace:(id)a3;
- (void)makeViewAliveAtLocation:(CGPoint)a3;
- (void)paste:(id)a3;
- (void)performDidEndGestureWithTranslation:(CGPoint)a3;
- (void)refine:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSelectionDrawingStrokeTransform:(CGAffineTransform *)a3;
- (void)setSelectionDrawingTransform:(CGAffineTransform *)a3;
- (void)setUserTransform:(CGAffineTransform *)a3;
- (void)straighten:(id)a3;
- (void)toggleEditMenu;
- (void)transformBegan;
- (void)transformCancelled;
- (void)transformChanged:(CGAffineTransform *)a3;
- (void)transformEnded;
- (void)translate:(id)a3;
- (void)updateLocationForDrop:(CGPoint)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation PKSelectionView

- (PKSelectionView)initWithFrame:(CGRect)a3 strokeSelection:(id)a4 selectionController:(id)a5 selectionType:(int64_t)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v44.receiver = self;
  v44.super_class = PKSelectionView;
  v15 = [(PKAdornmentView *)&v44 initWithFrame:v13 strokeSelection:v14 selectionController:a6 selectionType:x, y, width, height];
  v16 = v15;
  v17 = v15;
  if (v15)
  {
    [(PKSelectionView *)v15 setAccessibilityIdentifier:@"com.apple.pencilkit.selectionView"];
    v18 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v17 action:sel_toggleEditMenu];
    editMenuGR = v17->_editMenuGR;
    v17->_editMenuGR = v18;

    [(UITapGestureRecognizer *)v17->_editMenuGR setNumberOfTapsRequired:1];
    v20 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v17 action:sel_didDoubleTap];
    doubleTapGR = v17->_doubleTapGR;
    v17->_doubleTapGR = v20;

    [(UITapGestureRecognizer *)v17->_doubleTapGR setNumberOfTapsRequired:2];
    if (a6)
    {
      v22 = a6 == 6;
    }

    else
    {
      v22 = 1;
    }

    v23 = !v22;
    [(UITapGestureRecognizer *)v17->_doubleTapGR setEnabled:v23];
    v24 = [MEMORY[0x1E69DC938] currentDevice];
    v25 = [v24 userInterfaceIdiom];

    if (v25)
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

    v17->_selectionType = a6;
    v31 = [(PKAdornmentView *)v17 selectionController];
    v32 = [v13 drawing];
    [(PKSelectionController *)v31 _selectionDrawingTransformForDrawing:v32, v43];
    v34 = v43[1];
    v33 = v43[2];
    *&v16->_selectionDrawingTransform.a = v43[0];
    *&v16->_selectionDrawingTransform.c = v34;
    *&v16->_selectionDrawingTransform.tx = v33;

    v35 = [(PKAdornmentView *)v17 selectionController];
    v36 = [v13 drawing];
    v16->_originalStrokeFrame.origin.x = [(PKSelectionController *)v35 calculateFrameForSelectionView:v13 inDrawing:v36];
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

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKSelectionView;
  [(PKSelectionView *)&v8 willMoveToWindow:v4];
  v5 = [(PKAdornmentView *)self selectionRenderer];
  [v5 _setupSelectionAdornment];

  if (v4)
  {
    [(PKSelectionView *)self becomeFirstResponder];
  }

  else
  {
    v6 = [(PKAdornmentView *)self selectionController];
    v7 = [(PKSelectionController *)v6 selectionInteraction];
    [v7 _willRemoveSelectionView:self];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v13 = [(PKAdornmentView *)self selectionController];
    v14 = [(PKSelectionController *)v13 selectionInteraction];
    [v14 _didEndDraggingSelection:self];
  }
}

- (void)generateStrokeImageForPasteAndDND
{
  v3 = [(PKAdornmentView *)self selectionController];
  v4 = [(PKAdornmentView *)self strokeSelection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PKSelectionView_generateStrokeImageForPasteAndDND__block_invoke;
  v5[3] = &unk_1E82D6638;
  v5[4] = self;
  [(PKSelectionController *)v3 generateImageForStrokeSelection:v4 scaleStrategy:1 highlighted:0 withCompletion:v5];
}

void __52__PKSelectionView_generateStrokeImageForPasteAndDND__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) strokeSelection];
  [v3 setStrokeImage:v4];
}

- (BOOL)containsPoint:(CGPoint)a3 forInputType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
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
    v10 = [(PKAdornmentView *)self selectionController];
    v11 = v10;
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained((v10 + 120));
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
    v15 = [(PKAdornmentView *)self selectionController];
    v16 = v15;
    if (v15)
    {
      v17 = objc_loadWeakRetained((v15 + 120));
    }

    else
    {
      v17 = 0;
    }

    v18 = [(PKAdornmentView *)self strokeSelection];
    v19 = [v18 drawing];
    if (v17)
    {
      [v17 transformFromViewToStrokeSpaceInDrawing:v19];
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
    v20 = [(PKAdornmentView *)self strokeSelection];
    v21 = [v20 strokes];

    v22 = [v21 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v22)
    {
      v23 = vaddq_f64(v49, vmlaq_n_f64(vmulq_n_f64(v48, v51), v50, v52));
      v24 = *v54;
      if (a4)
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
            objc_enumerationMutation(v21);
          }

          if ([*(*(&v53 + 1) + 8 * i) intersectsPoint:*&v26 boundsOutset:v25 minimumStrokeThreshold:v25])
          {

            return 1;
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v53 objects:v60 count:16];
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

  v28 = [(PKAdornmentView *)self selectionController];
  v29 = v28;
  if (v28)
  {
    v30 = objc_loadWeakRetained((v28 + 120));
  }

  else
  {
    v30 = 0;
  }

  [(PKSelectionView *)self convertPoint:v30 toView:x, y];
  v32 = v31;
  v34 = v33;

  v35 = [(PKAdornmentView *)self selectionController];
  v36 = v35;
  if (v35)
  {
    v37 = objc_loadWeakRetained((v35 + 120));
  }

  else
  {
    v37 = 0;
  }

  v38 = [(PKAdornmentView *)self strokeSelection];
  v39 = [v38 drawing];
  if (v37)
  {
    [v37 transformFromViewToStrokeSpaceInDrawing:v39];
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

  v46 = [(PKAdornmentView *)self selectionController];
  v47 = [(PKSelectionView *)self _currentAttachment];
  v8 = [(PKSelectionController *)v46 _selectedExternalElementsContainsPoint:v47 inAttachment:v45 + v34 * v42 + v40 * v32, v44 + v34 * v43 + v41 * v32];

  return v8;
}

- (BOOL)lassoContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v32 = *MEMORY[0x1E69E9840];
  v6 = [(PKAdornmentView *)self strokeSelection];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(PKAdornmentView *)self selectionController];
  v16 = [(PKAdornmentView *)self strokeSelection];
  v17 = [v16 drawing];
  [(PKSelectionController *)v15 _selectionDrawingTransformForDrawing:v17, &v29];
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
    v19 = [(PKAdornmentView *)self selectionRenderer];
    v20 = v19 == 0;

    if (v20)
    {
      return 0;
    }

    else
    {
      v21 = [(PKAdornmentView *)self selectionRenderer];
      v22 = [v21 lassoPath];
      v23 = v22;
      v24 = [v22 CGPath];
      v33.x = x;
      v33.y = y;
      v25 = CGPathContainsPoint(v24, 0, v33, 0);
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
  v3 = [(PKAdornmentView *)self selectionController];
  v22 = v3;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = [WeakRetained editMenuVisible];

  v6 = [(PKAdornmentView *)self selectionController];
  if (v5)
  {
    v23 = v6;
    if (v6)
    {
      v7 = objc_loadWeakRetained((v6 + 120));
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 editMenuInteraction];
    [v8 dismissMenu];
  }

  else
  {
    if (v6)
    {
      v9 = *(v6 + 112);

      if (v9)
      {
        return;
      }
    }

    if (([(PKSelectionView *)self isFirstResponder]& 1) == 0)
    {
      [(PKSelectionView *)self becomeFirstResponder];
    }

    v24 = [(PKAdornmentView *)self selectionRenderer];
    [v24 editMenuLocation];
    v11 = v10;
    v13 = v12;

    v14 = [(PKAdornmentView *)self selectionController];
    v25 = v14;
    if (v14)
    {
      v15 = objc_loadWeakRetained((v14 + 120));
    }

    else
    {
      v15 = 0;
    }

    [(PKSelectionView *)self convertPoint:v15 toView:v11, v13];
    v17 = v16;
    v19 = v18;

    v23 = [MEMORY[0x1E69DC9D8] configurationWithIdentifier:@"PKEditMenuConfigurationIdentifier" sourcePoint:{v17, v19}];
    v20 = [(PKAdornmentView *)self selectionController];
    v7 = v20;
    if (v20)
    {
      v8 = objc_loadWeakRetained((v20 + 120));
    }

    else
    {
      v8 = 0;
    }

    v21 = [v8 editMenuInteraction];
    [v21 presentEditMenuWithConfiguration:v23];
  }
}

- (CGRect)editMenuTargetRect
{
  v3 = [(PKAdornmentView *)self selectionRenderer];
  [v3 editMenuLocation];
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

- (void)cut:(id)a3
{
  v5 = a3;
  v4 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)v4 cut:v5];
}

- (void)copy:(id)a3
{
  v5 = a3;
  v4 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)v4 copy:v5];
}

- (void)delete:(id)a3
{
  v5 = a3;
  v4 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)v4 delete:v5];
}

- (void)paste:(id)a3
{
  v5 = a3;
  v4 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)v4 paste:v5];
}

- (void)duplicate:(id)a3
{
  v5 = a3;
  v4 = [(PKAdornmentView *)self selectionController];
  [PKSelectionController duplicate:v4];
}

- (void)copyTranscription:(id)a3
{
  v5 = a3;
  v4 = [(PKAdornmentView *)self selectionController];
  [PKSelectionController copyTranscription:v4];
}

- (void)createSticker:(id)a3
{
  v5 = a3;
  v4 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)v4 createSticker:v5];
}

- (void)translate:(id)a3
{
  v5 = a3;
  v4 = [(PKAdornmentView *)self selectionController];
  [PKSelectionController translate:v4];
}

- (void)straighten:(id)a3
{
  v5 = a3;
  v4 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)v4 straighten:v5];
}

- (void)refine:(id)a3
{
  v5 = a3;
  v4 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)v4 refine:v5];
}

- (void)insertSpace:(id)a3
{
  v5 = a3;
  v4 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)v4 insertSpace:v5];
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  if ([(PKSelectionView *)self canPerformAction:a3 withSender:a4])
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(PKSelectionView *)self selectionType]== 6 || self->_isDragging)
  {
    v8 = 0;
  }

  else if (v7 && [v7 type] == 11)
  {
    v22.receiver = self;
    v22.super_class = PKSelectionView;
    v8 = [(PKSelectionView *)&v22 hitTest:v7 withEvent:x, y];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PKSelectionView;
    v10 = [(PKSelectionView *)&v21 hitTest:v7 withEvent:x, y];
    v11 = [v7 touchesForView:v10];
    v12 = [v11 anyObject];

    v13 = [v12 type] == 2;
    v14 = [(PKAdornmentView *)self selectionController];
    v15 = [(PKSelectionController *)v14 selectionInteraction];
    v16 = [v15 knobsContainPoint:v13 forInputType:{x, y}];

    if (v16)
    {
      v17 = [(PKAdornmentView *)self selectionController];
      v18 = v17;
      if (v17)
      {
        v19 = *(v17 + 160);
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
        v20 = self;
      }

      else
      {
        v20 = v10;
      }

      v8 = v20;
    }
  }

  return v8;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PKAdornmentView *)self selectionController];
  v7 = [(PKSelectionController *)v6 selectionInteraction];
  v8 = [v7 _dragShouldBeginForSession:v5];

  if (v8)
  {
    [v5 locationInView:self];
    self->_offsetInTouchView.x = v9;
    self->_offsetInTouchView.y = v10;
    [(PKSelectionView *)self frame];
    self->_originalStrokeFrame.origin.x = v11;
    self->_originalStrokeFrame.origin.y = v12;
    self->_originalStrokeFrame.size.width = v13;
    self->_originalStrokeFrame.size.height = v14;
    v15 = [(PKAdornmentView *)self selectionController];
    v16 = [(PKAdornmentView *)self strokeSelection];
    v17 = [v16 externalElements];
    v18 = [(PKSelectionView *)self _currentAttachment];
    v19 = [(PKSelectionController *)v15 _itemProviderForExternalElements:v17 inAttachment:v18];
    v20 = [(PKAdornmentView *)self strokeSelection];
    [v20 setExternalElementsItemProvider:v19];

    v21 = objc_alloc(MEMORY[0x1E696ACA0]);
    v22 = [(PKAdornmentView *)self strokeSelection];
    v23 = [v21 initWithObject:v22];

    v24 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v23];
    v25 = [(PKAdornmentView *)self strokeSelection];
    [v5 setLocalContext:v25];

    v28[0] = v24;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  }

  else
  {
    v26 = MEMORY[0x1E695E0F0];
  }

  return v26;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
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
  v14 = [MEMORY[0x1E69DC888] clearColor];
  [v13 setBackgroundColor:v14];

  v15 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v16 = [(PKAdornmentView *)self strokeSelection];
  v17 = [v16 strokeImage];
  v18 = [v17 combinedImage];
  v19 = [v15 initWithImage:v18];

  [v19 _setContinuousCornerRadius:13.0];
  v20 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v19 parameters:v13 target:v12];

  return v20;
}

- (void)transformBegan
{
  v3 = [(PKAdornmentView *)self selectionController];
  v4 = [(PKAdornmentView *)self strokeSelection];
  v5 = [(PKAdornmentView *)self strokeSelection];
  v6 = [v5 drawing];
  self->_originalStrokeFrame.origin.x = [(PKSelectionController *)v3 calculateFrameForSelectionView:v4 inDrawing:v6];
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
  v13 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)v13 didBeginDraggingSelection];

  [(PKSelectionView *)self didBeginDraggingSelection];
}

- (void)transformChanged:(CGAffineTransform *)a3
{
  v5 = *&a3->c;
  v4 = *&a3->tx;
  *&self->_resizeTransform.a = *&a3->a;
  *&self->_resizeTransform.c = v5;
  *&self->_resizeTransform.tx = v4;
  v6 = *&a3->c;
  *&v15.a = *&a3->a;
  *&v15.c = v6;
  *&v15.tx = *&a3->tx;
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

  v3 = [(PKAdornmentView *)self selectionController];
  if (v3)
  {
    v5 = *&self->_resizeTransform.c;
    v4 = *&self->_resizeTransform.tx;
    *(v3 + 168) = *&self->_resizeTransform.a;
    *(v3 + 184) = v5;
    *(v3 + 200) = v4;
  }

  [(PKSelectionView *)self _cleanupDragState];
  v8 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)v8 didEndDraggingSelection];
}

- (void)dragEnded:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v6 recordDragSelection];

  v7 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v7 logSelectionAction:1];

  [(PKSelectionView *)self didEndGestureWithTranslation:x, y];
  v8 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)v8 didEndDraggingSelection];
}

- (void)transformCancelled
{
  [(PKSelectionView *)self _resetDragState];
  v3 = [(PKAdornmentView *)self selectionController];
  [(PKSelectionController *)v3 didEndDraggingSelection];
}

- (void)hideStrokeImageView
{
  v11.receiver = self;
  v11.super_class = PKSelectionView;
  [(PKAdornmentView *)&v11 hideStrokeImageView];
  v3 = [(PKAdornmentView *)self selectionController];
  v4 = [(PKAdornmentView *)self strokeSelection];
  [(PKSelectionController *)v3 setImageOnSelectionViewForStrokeSelection:v4 withCompletion:0];

  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v10[0] = *MEMORY[0x1E695EFD0];
  v10[1] = v5;
  v10[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PKSelectionView *)self setTransform:v10];
  v6 = [(PKAdornmentView *)self selectionController];
  v7 = [(PKAdornmentView *)self strokeSelection];
  v8 = [(PKAdornmentView *)self strokeSelection];
  v9 = [v8 drawing];
  [(PKSelectionView *)self setFrame:[(PKSelectionController *)v6 calculateFrameForSelectionView:v7 inDrawing:v9]];
}

- (void)dragSelection:(id)a3
{
  v4 = a3;
  v5 = [(PKAdornmentView *)self selectionController];
  if (!v5 || (v6 = v5[112], v5, (v6 & 1) == 0))
  {
    v7 = [(PKAdornmentView *)self selectionController];
    v8 = [(PKSelectionController *)v7 topView];

    [v4 locationInView:v8];
    v10 = v9;
    v12 = v11;
    x = self->_initialDragPosition.x;
    y = self->_initialDragPosition.y;
    v15 = [(PKSelectionView *)self _currentAttachment];
    if ([v4 state] == 1)
    {
      self->_initialDragPosition.x = v10;
      self->_initialDragPosition.y = v12;
      [(PKSelectionView *)self transformBegan];
    }

    else
    {
      v16 = v10 - x;
      v17 = v12 - y;
      if ([v4 state] == 2)
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
        v26 = [(PKAdornmentView *)self selectionController];
        v27 = [(PKSelectionController *)v26 autoscrollForPointIfNecessary:v10, v12];
        v29 = v28;

        v30 = v29 + self->_currentScrollOffset.y;
        self->_currentScrollOffset.x = v27 + self->_currentScrollOffset.x;
        self->_currentScrollOffset.y = v30;
        if (v15)
        {
          [v15 drawingTransform];
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
        v42 = [(PKAdornmentView *)self selectionController];
        v43 = [(PKAdornmentView *)self strokeSelection];
        v44 = [v43 externalElements];
        v45 = *(MEMORY[0x1E695EFD0] + 16);
        *&v47.a = *MEMORY[0x1E695EFD0];
        *&v47.c = v45;
        *&v47.tx = *(MEMORY[0x1E695EFD0] + 32);
        CGAffineTransformTranslate(&v48, &v47, tx + (v46 - v30) * c + a * v16, ty + (v46 - v30) * d + b * v16);
        [(PKSelectionController *)v42 _didDragExternalElements:v44 withTransform:&v48 inAttachment:v15];
      }

      else if ([v4 state] == 3)
      {
        [(PKSelectionView *)self dragEnded:v16, v12 - y];
        if (v16 == *MEMORY[0x1E695EFF8] && v17 == *(MEMORY[0x1E695EFF8] + 8))
        {
          v32 = [(PKAdornmentView *)self selectionController];
          v33 = v32;
          v34 = v32 ? objc_loadWeakRetained((v32 + 120)) : 0;
          v35 = [v34 editMenuVisible];

          if ((v35 & 1) == 0)
          {
            [(PKSelectionView *)self toggleEditMenu];
          }
        }
      }

      else if ([v4 state] == 4 || objc_msgSend(v4, "state") == 5)
      {
        [(PKSelectionView *)self transformCancelled];
      }
    }
  }
}

- (void)performDidEndGestureWithTranslation:(CGPoint)a3
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
        v45 = [(PKAdornmentView *)self selectionController];
        [v44 CGPointValue];
        LOBYTE(v44) = [(PKSelectionController *)v45 _isValidDropPointForStrokes:v46 didInsertNewAttachment:v47];

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

  v49 = [(PKSelectionView *)self _currentAttachment];
  if (v48 && (-[PKAdornmentView selectionController](self, "selectionController"), v50 = objc_claimAutoreleasedReturnValue(), -[PKAdornmentView strokeSelection](self, "strokeSelection"), v51 = objc_claimAutoreleasedReturnValue(), [v51 externalElements], v52 = objc_claimAutoreleasedReturnValue(), v53 = tx + (a3.y + y) * c + a * (a3.x + x), v54 = -[PKSelectionController _externalElements:locationOutOfBounds:inAttachment:](v50, v52, v49, v53, ty + (a3.y + y) * d + b * (a3.x + x)), v52, v51, v50, (v54 & 1) == 0))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PKSelectionView_performDidEndGestureWithTranslation___block_invoke;
    block[3] = &unk_1E82D6610;
    block[4] = self;
    *&block[5] = v53;
    *&block[6] = ty + (a3.y + y) * d + b * (a3.x + x);
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

- (void)didEndGestureWithTranslation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKAdornmentView *)self selectionRenderer];

  if (v6)
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
  v6 = [(PKAdornmentView *)self selectionController];
  if (v6)
  {
    v7 = v13;
    *(v6 + 168) = v12;
    *(v6 + 184) = v7;
    *(v6 + 200) = v14;
  }

  v8 = [(PKAdornmentView *)self selectionController];
  v9 = [(PKAdornmentView *)self strokeSelection];
  v10 = [v9 externalElements];
  v11 = [(PKSelectionView *)self _currentAttachment];
  [(PKSelectionController *)v8 _resetExternalElements:v10 inAttachment:v11];

  [(PKSelectionView *)self _cleanupDragState];
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  [(PKSelectionView *)self setAlpha:a3, a4, 0.3];
  v5 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v5 recordDragAndDropSelection];

  [(PKSelectionView *)self _resetDragState];
  v6 = [(PKAdornmentView *)self selectionController];
  v7 = [(PKAdornmentView *)self strokeSelection];
  v8 = [v7 externalElements];
  v9 = [(PKSelectionView *)self _currentAttachment];
  [(PKSelectionController *)v6 _dragInteractionWillBeginForExternalElements:v8 inAttachment:v9];

  [(PKSelectionView *)self _dragWillBegin];
}

- (void)_dragWillBegin
{
  v3 = [(PKAdornmentView *)self selectionController];
  v4 = v3;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained editMenuVisible];

  if (v6)
  {
    [(PKSelectionView *)self toggleEditMenu];
  }

  [(PKAdornmentView *)self _liftStrokesOutOfTiledView];
  v7 = [(PKAdornmentView *)self selectionRenderer];
  [v7 _didBeginDraggingSelection];

  self->_isDragging = 1;
}

- (void)makeViewAliveAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  self->_isDragging = 0;
  if ((a5 & 0xFFFFFFFFFFFFFFFDLL) != 0)
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

  v10 = [(PKAdornmentView *)self selectionController];
  v11 = [(PKAdornmentView *)self strokeSelection];
  v12 = [v11 externalElements];
  v13 = [(PKSelectionView *)self _currentAttachment];
  [(PKSelectionController *)v10 _dragInteractionWillEndForExternalElements:v12 withOperation:a5 inAttachment:v13];
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

- (void)updateLocationForDrop:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PKSelectionView *)self frame];
  v6 = x - self->_offsetInTouchView.x;
  v7 = y - self->_offsetInTouchView.y;

  [(PKSelectionView *)self setFrame:v6, v7];
}

- (void)didBeginDraggingSelection
{
  v2 = [(PKAdornmentView *)self selectionController];
  v3 = v2;
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v9 = [WeakRetained scrollView];

  v5 = [v9 panGestureRecognizer];
  v6 = [v5 state];

  if (v6 != 2)
  {
    v7 = [v9 panGestureRecognizer];
    [v7 setEnabled:0];

    v8 = [v9 panGestureRecognizer];
    [v8 setEnabled:1];
  }
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = [(PKAdornmentView *)self strokeSelection];
  v7 = [v6 externalElements];

  if (v7)
  {
    if ([(PKSelectionView *)self _exactlyOneExternalElementSelected])
    {
      v8 = [(PKAdornmentView *)self selectionController];
      v9 = [(PKAdornmentView *)self strokeSelection];
      v10 = [v9 externalElements];
      v11 = [v10 firstObject];
      v12 = [(PKSelectionView *)self _currentAttachment];
      v13 = [(PKSelectionController *)v8 _contextMenuInteraction:v5 configurationForExternalElement:v11 inAttachment:v12];
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

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKSelectionView *)self _exactlyOneExternalElementSelected])
  {
    v8 = [(PKAdornmentView *)self selectionController];
    v9 = [(PKAdornmentView *)self strokeSelection];
    v10 = [v9 externalElements];
    v11 = [v10 firstObject];
    v12 = [(PKSelectionView *)self _currentAttachment];
    v13 = [(PKSelectionController *)v8 _contextMenuInteraction:v6 previewForHighlightingMenuWithConfiguration:v7 forExternalElement:v11 inAttachment:v12];
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
    v8 = [v14 initWithContainer:self center:{MidX, CGRectGetMidY(v27)}];
    v9 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    v20 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v21 = [(PKAdornmentView *)self strokeSelection];
    v22 = [v21 strokeImage];
    v23 = [v22 combinedImage];
    v10 = [v20 initWithImage:v23];

    [v10 _setContinuousCornerRadius:13.0];
    v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v10 parameters:v9 target:v8];
  }

  return v13;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if ([(PKSelectionView *)self _exactlyOneExternalElementSelected])
  {
    v10 = [(PKAdornmentView *)self selectionController];
    v11 = [(PKAdornmentView *)self strokeSelection];
    v12 = [v11 externalElements];
    v13 = [v12 firstObject];
    v14 = [(PKSelectionView *)self _currentAttachment];
    [(PKSelectionController *)v10 _contextMenuInteraction:v15 willDisplayMenuForConfiguration:v8 animator:v9 forExternalElement:v13 inAttachment:v14];
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  self->_displayingContextMenu = 0;
  if ([(PKSelectionView *)self _exactlyOneExternalElementSelected])
  {
    v10 = [(PKAdornmentView *)self selectionController];
    v11 = [(PKAdornmentView *)self strokeSelection];
    v12 = [v11 externalElements];
    v13 = [v12 firstObject];
    v14 = [(PKSelectionView *)self _currentAttachment];
    [(PKSelectionController *)v10 _contextMenuInteraction:v15 willEndForConfiguration:v8 animator:v9 forExternalElement:v13 inAttachment:v14];
  }
}

- (BOOL)_exactlyOneExternalElementSelected
{
  v3 = [(PKAdornmentView *)self strokeSelection];
  v4 = [v3 strokes];
  if ([v4 count])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(PKAdornmentView *)self strokeSelection];
    v7 = [v6 externalElements];
    v5 = [v7 count] == 1;
  }

  return v5;
}

- (void)didDoubleTap
{
  doubleTapGR = self->_doubleTapGR;
  v4 = [(PKAdornmentView *)self selectionController];
  v5 = v4;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 120));
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

- (void)_handleDoubleTapInputAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITapGestureRecognizer *)self->_doubleTapGR touches];
  v7 = [v6 firstObject];
  v8 = [v7 type];

  v9 = v8 == 2;
  v10 = [(PKAdornmentView *)self selectionController];
  v11 = [(PKSelectionController *)v10 _drawingForSelectionRect:y, 5.0, 5.0];

  v12 = [(PKAdornmentView *)self selectionController];
  v13 = v12;
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained((v12 + 120));
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
    v20 = [(PKAdornmentView *)self selectionController];
    v21 = [(PKAdornmentView *)self strokeSelection];
    v22 = [v21 strokes];
    v23 = [v22 array];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __48__PKSelectionView__handleDoubleTapInputAtPoint___block_invoke;
    v24[3] = &unk_1E82D65C0;
    v26 = selectionType + 1;
    v24[4] = self;
    v25 = v11;
    [(PKSelectionController *)v20 fetchStrokesToSelectAtPoint:v25 inDrawing:v26 withSelectionType:v9 inputType:v23 existingSelection:v24 completion:v16, v18];
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
  v3 = [(PKAdornmentView *)self selectionController];
  v4 = v3;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [(PKAdornmentView *)self strokeSelection];
  v7 = [v6 drawing];
  v8 = [v7 uuid];
  v9 = [WeakRetained attachmentForUUID:v8];

  return v9;
}

- (void)_findTranscriptionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKAdornmentView *)self selectionController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PKSelectionView__findTranscriptionWithCompletion___block_invoke;
  v7[3] = &unk_1E82D65E8;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [(PKSelectionController *)v5 findTranscriptionWithCompletion:v7];
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
  v3 = [(PKAdornmentView *)self selectionRenderer];

  if (v3)
  {
    v4 = MEMORY[0x1E695DF70];
    v11.receiver = self;
    v11.super_class = PKSelectionView;
    v5 = [(PKSelectionView *)&v11 _accessibilityUserTestingChildren];
    v6 = [v4 arrayWithArray:v5];

    v7 = [(PKAdornmentView *)self selectionRenderer];
    v8 = [v7 _accessibilityUserTestingChildren];
    [v6 addObjectsFromArray:v8];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PKSelectionView;
    v6 = [(PKSelectionView *)&v10 _accessibilityUserTestingChildren];
  }

  return v6;
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

- (void)setSelectionDrawingTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_selectionDrawingTransform.a = *&a3->a;
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

- (void)setSelectionDrawingStrokeTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_selectionDrawingStrokeTransform.a = *&a3->a;
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

- (void)setUserTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_userTransform.a = *&a3->a;
  *&self->_userTransform.c = v4;
  *&self->_userTransform.tx = v3;
}

- (BOOL)supportsSnapToShape
{
  v2 = [(PKSelectionView *)self shapeSupportCache];
  v3 = v2;
  if (v2)
  {
    v2 = v2[1];
  }

  v4 = [v2 count] != 0;

  return v4;
}

- (id)shapeMenuActions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PKSelectionView *)self shapeSupportCache];
  v5 = v4;
  if (v4)
  {
    v4 = v4[1];
  }

  if ([v4 count])
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

    [v3 addObject:v10];
  }

  return v3;
}

- (id)shapeSupportCache
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(PKAdornmentView *)self selectionController];
  v4 = v3;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 120));
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

  v6 = [(PKAdornmentView *)self strokeSelection];
  v7 = [v6 strokes];

  if ([v7 count] && objc_msgSend(v7, "count") <= 8)
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
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
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
    v29 = v7;
    v14 = v7;
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

        v24 = [v14 array];
        if (value)
        {
          objc_storeStrong(&value->_originalStrokes, v24);
        }

        if ([v11 count] == 1)
        {
          v25 = [v11 firstObject];
          v26 = [v25 type];
          if (value)
          {
            value->_shapeType = v26;
          }
        }

        else if (value)
        {
          value->_shapeType = 0;
        }
      }

      objc_setAssociatedObject(object, shapeSupportCache_kAssociatedObjectKey, value, 0x301);

      v7 = v29;
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

      v20 = [v19 _strokeData];
      if (![v20 hasValidPointTimestampData])
      {
        goto LABEL_21;
      }

      v21 = [v19 _strokeMask];

      if (!v21)
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
    v20 = [(PKShapeDrawingController *)v13 shapeFromStroke:v19 inputScale:v31 averageInputPoint:0 allowedShapeTypes:v10];
    if (v20)
    {
      [v11 addObject:v20];
    }

LABEL_21:

    goto LABEL_22;
  }

  v8 = 0;
LABEL_36:

LABEL_37:

  return v8;
}

- (BOOL)canConvertToShapeWithAction:(SEL)a3 withSender:(id)a4 handled:(BOOL *)a5
{
  v8 = a4;
  if (sel_convertToShapes_ == a3)
  {
    v11 = [(PKSelectionView *)self shapeSupportCache];
    v12 = v11;
    if (v11)
    {
      v11 = v11[1];
    }

    v9 = [v11 count] != 0;

    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    if (a5)
    {
LABEL_3:
      *a5 = sel_convertToShapes_ == a3;
    }
  }

  return v9;
}

- (void)convertToShapes:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = [(PKSelectionView *)self shapeSupportCache];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 16);
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = v7;
  v9 = [(PKAdornmentView *)self selectionController];
  v10 = v9;
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v12 = [(PKAdornmentView *)self strokeSelection];
  v13 = [v12 drawing];

  if ([v6 count])
  {
    v14 = [v6 count];
    if (v14 == [v8 count] && v13 && WeakRetained)
    {
      v34 = v5;
      v31 = v13;
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

            v26 = [v24 strokes];
            [v18 addObjectsFromArray:v26];
          }

          v21 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v21);
      }

      v27 = [(PKAdornmentView *)self selectionController];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __49__PKSelectionView_ShapeSupport__convertToShapes___block_invoke;
      v35[3] = &unk_1E82DA380;
      v13 = v31;
      v36 = v31;
      v37 = v6;
      v38 = v18;
      v39 = v30;
      WeakRetained = v32;
      v40 = v32;
      v28 = v30;
      v29 = v18;
      [(PKSelectionController *)v27 clearSelectionIfNecessaryWithCompletion:v35];

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