@interface PKSqueezePaletteViewMiniPaletteLayout
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (PKSqueezePaletteView)paletteView;
- (double)_defaultToolsContentClipIndicatorAngle;
- (double)toolAngle:(id)a3;
- (id)_selectedTool;
- (id)initWithUndoButton:(void *)a3 redoButton:(void *)a4 drawingTools:(void *)a5 selectedToolIndex:(void *)a6 eraserToolIndex:(void *)a7 visibleToolsCount:(void *)a8 multicolorButton:(double)a9 moreButton:(void *)a10 startAngle:;
- (uint64_t)_canSelectTool:(uint64_t)a3 atIndex:;
- (uint64_t)_updateClipIndicatorView;
- (uint64_t)_updateMoreButtonConstraints;
- (uint64_t)_updateMulticolorButtonConstraints;
- (void)_handlePanGesture:(id)a3;
- (void)_performDrawingToolTapAction:(uint64_t)a1;
- (void)_performMoreButtonTapAction;
- (void)_performMulticolorButtonTapAction;
- (void)_selectTool:(uint64_t)a1;
- (void)_updateColorUIStyle;
- (void)expandedToolsLayout:(id)a3 didChangeDrawingTools:(id)a4;
- (void)handlePencilInteractionDidTap:(int64_t)a3;
- (void)setPaletteView:(id)a3;
- (void)setupUI;
- (void)updateUI;
- (void)willTransitionToLayout:(id)a3;
@end

@implementation PKSqueezePaletteViewMiniPaletteLayout

- (id)initWithUndoButton:(void *)a3 redoButton:(void *)a4 drawingTools:(void *)a5 selectedToolIndex:(void *)a6 eraserToolIndex:(void *)a7 visibleToolsCount:(void *)a8 multicolorButton:(double)a9 moreButton:(void *)a10 startAngle:
{
  v42 = a2;
  v41 = a3;
  v19 = a4;
  v40 = a8;
  v20 = a10;
  if (a1)
  {
    v46.receiver = a1;
    v46.super_class = PKSqueezePaletteViewMiniPaletteLayout;
    v21 = objc_msgSendSuper2(&v46, sel_init);
    a1 = v21;
    if (v21)
    {
      *(v21 + 34) = a9;
      objc_storeStrong(v21 + 37, a2);
      objc_storeStrong(a1 + 38, a3);
      v22 = [[PKSqueezePaletteViewUndoRedoLayout alloc] initWithUndoButton:a1[38] redoButton:a9 startAngle:?];
      v23 = a1[1];
      a1[1] = v22;

      v24 = a1[1];
      if (v24)
      {
        objc_storeWeak(v24 + 12, a1);
      }

      v25 = [v19 copy];
      v26 = a1[39];
      a1[39] = v25;

      a1[40] = a5;
      a1[41] = a6;
      a1[42] = a7;
      objc_storeStrong(a1 + 43, a8);
      objc_storeStrong(a1 + 44, a10);
      v27 = PKSqueezePaletteBeforeToolsSpacing;
      a1[2] = PKSqueezePaletteButtonInterItemSpacing;
      a1[3] = v27;
      v28 = PKSqueezePaletteAfterToolsSpacing;
      a1[4] = PKSqueezePaletteToolsInterItemSpacing;
      a1[5] = v28;
      v29 = -[PKFloatArray initWithCapacity:]([PKFloatArray alloc], [a1[39] count]);
      v30 = a1[6];
      a1[6] = v29;

      *(a1 + 5) = vdupq_n_s64(0x4042800000000000uLL);
      a1[12] = PKSqueezePaletteToolContainerWidth;
      v31 = objc_alloc_init(PKSqueezePaletteClipIndicatorView);
      v32 = a1[22];
      a1[22] = v31;

      v33 = objc_alloc_init(PKViewWithHitTestHandler);
      v34 = a1[20];
      a1[20] = v33;

      objc_initWeak(&location, a1);
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __175__PKSqueezePaletteViewMiniPaletteLayout_initWithUndoButton_redoButton_drawingTools_selectedToolIndex_eraserToolIndex_visibleToolsCount_multicolorButton_moreButton_startAngle___block_invoke;
      newValue[3] = &unk_1E82D7970;
      objc_copyWeak(&v44, &location);
      v36 = a1[20];
      if (v36)
      {
        objc_setProperty_nonatomic_copy(v36, v35, newValue, 408);
      }

      v37 = [MEMORY[0x1E69794A0] layer];
      v38 = a1[21];
      a1[21] = v37;

      objc_destroyWeak(&v44);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

id __175__PKSqueezePaletteViewMiniPaletteLayout_initWithUndoButton_redoButton_drawingTools_selectedToolIndex_eraserToolIndex_visibleToolsCount_multicolorButton_moreButton_startAngle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = v6;
  v9 = v5;
  if (WeakRetained && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ((v10 = objc_loadWeakRetained(WeakRetained + 36), (v11 = v10) == 0) ? (v12 = 0) : (v12 = *(v10 + 71)), (v13 = v12, v13, v11, v13 != WeakRetained) || (v15 = [WeakRetained[39] indexOfObject:v8], v15 != 0x7FFFFFFFFFFFFFFFLL) && v15 < WeakRetained[42]))
  {
    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setPaletteView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_paletteView, obj);
    undoRedoLayout = self->_undoRedoLayout;
    v7 = v5;
    [(PKSqueezePaletteViewUndoRedoLayout *)undoRedoLayout setPaletteView:obj];
  }
}

- (void)_performDrawingToolTapAction:(uint64_t)a1
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138477827;
      v6 = v3;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "drawing tool tapped: %{private}@", &v5, 0xCu);
    }

    [(PKSqueezePaletteViewMiniPaletteLayout *)a1 _selectTool:v3];
  }
}

- (void)_selectTool:(uint64_t)a1
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (-[PKSqueezePaletteViewMiniPaletteLayout _canSelectTool:atIndex:](a1, v3, [*(a1 + 312) indexOfObject:v3]))
  {
    v4 = [(PKSqueezePaletteViewMiniPaletteLayout *)a1 _selectedTool];
    v5 = v4;
    if (v4 && v4 == v3)
    {
      v6 = [(PKFloatArray *)*(a1 + 48) floatAtIndex:?];
      v7 = v3[102];
      v8 = [v7 _barButtonItemsProvider];

      v9 = v3[102];
      v10 = [v9 _isEraserTool];

      if (v10)
      {
        v11 = [[PKSqueezePaletteViewExpandedEraserToolLayoutContext alloc] initWithDrawingTool:v3 toolAngle:a1 previousLayout:v6];
        WeakRetained = objc_loadWeakRetained((a1 + 288));
        v13 = WeakRetained;
        if (WeakRetained)
        {
          v14 = *(WeakRetained + 70);
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        v16 = [(PKSqueezePaletteViewLayoutFactory *)v15 makeExpandedEraserToolLayoutWithContext:v11];

        v17 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_10;
        }

        LOWORD(v40) = 0;
        v18 = "Navigate to expanded eraser tool layout";
LABEL_9:
        _os_log_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_DEFAULT, v18, &v40, 2u);
LABEL_10:

        v19 = objc_loadWeakRetained((a1 + 288));
        [(PKSqueezePaletteView *)v19 setCurrentLayout:v16];
        goto LABEL_37;
      }

      if (v8)
      {
        v25 = v3[102];
        v11 = (v8)[2](v8, v25);

        if (![v11 count])
        {
LABEL_38:

          goto LABEL_39;
        }

        v16 = [[PKSqueezePaletteViewExpandedLassoToolLayoutContext alloc] initWithDrawingTool:v3 toolAngle:v11 barButtonItems:a1 previousLayout:v6];
        v26 = objc_loadWeakRetained((a1 + 288));
        v27 = v26;
        if (v26)
        {
          v28 = *(v26 + 70);
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;
        v19 = [(PKSqueezePaletteViewLayoutFactory *)v29 makeExpandedLassoToolLayoutWithContext:v16];

        v30 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 134217984;
          v41 = [v11 count];
          _os_log_impl(&dword_1C7CCA000, v30, OS_LOG_TYPE_DEFAULT, "Navigate to expanded lasso tool layout, bar button items: %ld", &v40, 0xCu);
        }

        v31 = objc_loadWeakRetained((a1 + 288));
        [(PKSqueezePaletteView *)v31 setCurrentLayout:v19];

LABEL_37:
        goto LABEL_38;
      }

      v11 = v3[102];
      v32 = [v11 _configuration];
      v16 = v32;
      if (v32 && [v32 supportsStrokeWeight] && v16[16] == 1)
      {

LABEL_32:
        v11 = [[PKSqueezePaletteViewExpandedInkingToolLayoutContext alloc] initWithDrawingTool:v3 toolAngle:a1 previousLayout:v6];
        v36 = objc_loadWeakRetained((a1 + 288));
        v37 = v36;
        if (v36)
        {
          v38 = *(v36 + 70);
        }

        else
        {
          v38 = 0;
        }

        v39 = v38;
        v16 = [(PKSqueezePaletteViewLayoutFactory *)v39 makeExpandedInkingToolLayoutWithContext:v11];

        v17 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_10;
        }

        LOWORD(v40) = 0;
        v18 = "Navigate to expanded inking tool layout";
        goto LABEL_9;
      }

      v19 = v3[102];
      v33 = [v19 _configuration];
      v34 = v33;
      if (!v33 || ![v33 supportsOpacity])
      {

        goto LABEL_37;
      }

      v35 = v34[17];

      if (v35 == 1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v3)
      {
        v20 = v3[102];
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v22 = [v21 _isRulerTool];

      if (!v22)
      {
        [(PKSqueezePaletteDrawingTool *)v5 setSelected:1 animated:0 completion:?];
        *(a1 + 320) = [*(a1 + 312) indexOfObject:v3];
        *(a1 + 256) = [(PKSqueezePaletteViewMiniPaletteLayout *)a1 _defaultToolsContentClipIndicatorAngle];
        [(PKSqueezePaletteDrawingTool *)v3 setSelected:1 animated:0 completion:?];
        v8 = objc_loadWeakRetained((a1 + 288));
        if (v3)
        {
          v24 = v3[102];
        }

        else
        {
          v24 = 0;
        }

        v11 = v24;
        [(PKSqueezePaletteView *)v8 _didSelectTool:v11 atIndex:*(a1 + 320)];
        goto LABEL_38;
      }

      v8 = [[PKSqueezePaletteViewTapRulerAction alloc] initWithRulerTool:v3];
      [(PKSqueezePaletteViewTapRulerAction *)v8 performAction];
      v23 = objc_loadWeakRetained((a1 + 288));
      [(PKSqueezePaletteView *)v23 _didTapRuler];
    }

LABEL_39:
  }
}

- (uint64_t)_canSelectTool:(uint64_t)a3 atIndex:
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!a1)
  {
    goto LABEL_13;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v7 = "can't select an untracked tool";
      v8 = v6;
      v9 = 2;
LABEL_11:
      _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, v7, &v16, v9);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 288));
  if (v5)
  {
    v11 = v5[102];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [(PKSqueezePaletteView *)WeakRetained _canSelectTool:v12 atIndex:a3];

  if ((v13 & 1) == 0)
  {
    v6 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138477827;
      v17 = v5;
      v7 = "can't select tool: %{private}@";
      v8 = v6;
      v9 = 12;
      goto LABEL_11;
    }

LABEL_12:

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v14 = 1;
LABEL_14:

  return v14;
}

- (id)_selectedTool
{
  if (a1)
  {
    if (*(a1 + 320) == 0x7FFFFFFFFFFFFFFFLL)
    {
      a1 = 0;

      return a1;
    }

    a1 = [*(a1 + 312) objectAtIndexedSubscript:v1];
  }

  return a1;
}

- (double)_defaultToolsContentClipIndicatorAngle
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 336);
  if (!v2)
  {
    return 1.79769313e308;
  }

  v3 = [(PKFloatArray *)*(a1 + 48) floatAtIndex:?];
  if (*(a1 + 320) == 2)
  {
    v4 = 17.0;
  }

  else
  {
    v4 = 10.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 288));
  if (WeakRetained)
  {
    v6 = WeakRetained[62];
  }

  else
  {
    v6 = 0.0;
  }

  v7 = v3 + v4 / v6;

  return v7;
}

- (void)_performMulticolorButtonTapAction
{
  if (!a1)
  {
    return;
  }

  v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v24[0] = 0;
    _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "multicolor button tapped", v24, 2u);
  }

  v3 = [PKSqueezePaletteViewExpandedColorsLayoutContext alloc];
  v4 = [(PKSqueezePaletteViewMiniPaletteLayout *)a1 _selectedTool];
  v5 = [(PKSqueezePaletteViewExpandedColorsLayoutContext *)&v3->super.isa initWithSelectedTool:v4 multicolorButton:*(a1 + 344) multicolorButtonAngle:a1 previousLayout:*(a1 + 104)];

  WeakRetained = objc_loadWeakRetained((a1 + 288));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[72];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 4);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
LABEL_7:
  v11 = v10;

  v12 = objc_loadWeakRetained((a1 + 288));
  v13 = v12;
  if (!v12)
  {
    v15 = 0;
    goto LABEL_17;
  }

  v14 = v12[72];
  v15 = v14;
  if (!v14)
  {
LABEL_17:
    v16 = 0;
    goto LABEL_10;
  }

  v16 = *(v14 + 5);
LABEL_10:
  v17 = v16;

  v18 = objc_loadWeakRetained((a1 + 288));
  v19 = v18;
  if (v18)
  {
    v20 = *(v18 + 70);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  v22 = [(PKSqueezePaletteViewLayoutFactory *)v21 makeExpandedColorsLayoutWithContext:v5 colors:v11 selectedColor:v17];

  v23 = objc_loadWeakRetained((a1 + 288));
  [(PKSqueezePaletteView *)v23 setCurrentLayout:v22];
}

- (void)_performMoreButtonTapAction
{
  if (a1)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "more button tapped", v13, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 288));
    if (WeakRetained && (v4 = WeakRetained[72]) != 0)
    {
      v5 = *(v4 + 8);

      if (v5 == 1)
      {
        v6 = [[PKSqueezePaletteViewExpandedOptionsLayoutContext alloc] initMoreButtonAngle:a1 previousLayout:*(a1 + 112)];
        v7 = objc_loadWeakRetained((a1 + 288));
        v8 = v7;
        if (v7)
        {
          v9 = *(v7 + 70);
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        v11 = [(PKSqueezePaletteViewLayoutFactory *)v10 makeExpandedOptionsLayoutWithContext:v6];

        v12 = objc_loadWeakRetained((a1 + 288));
        [(PKSqueezePaletteView *)v12 setCurrentLayout:v11];

        goto LABEL_12;
      }
    }

    else
    {
    }

    v6 = objc_loadWeakRetained((a1 + 288));
    [(PKSqueezePaletteView *)v6 _didTapMoreOptionsButton:?];
LABEL_12:
  }
}

- (void)_handlePanGesture:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);
  [v4 locationInView:WeakRetained];
  v7 = v6;
  v9 = v8;

  v10 = objc_loadWeakRetained(&self->_paletteView);
  [v10 bounds];
  MidX = CGRectGetMidX(v79);
  v12 = objc_loadWeakRetained(&self->_paletteView);
  [v12 bounds];
  MidY = CGRectGetMidY(v80);

  v14 = atan2(v9 - MidY, v7 - MidX);
  v15 = fmod(v14, 6.28318531);
  v16 = 0.0;
  if (v14 <= 6.28318531 && v14 >= 0.0)
  {
    v15 = v14;
  }

  if (v15 < 0.0)
  {
    v15 = v15 + 6.28318531;
  }

  if (v15 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v15;
  }

  v19 = [v4 state];
  switch(v19)
  {
    case 3:
      self->_endPanGestureAngleOnArc = v18;
      [(NSArray *)self->_drawingTools enumerateObjectsUsingBlock:&__block_literal_global_15];
      v29 = [(PKFloatArray *)self->_toolAngles floatAtIndex:?];
      v30 = objc_loadWeakRetained(&self->_paletteView);
      if (v30)
      {
        v16 = v30[64];
      }

      if (v29 - v16 >= 0.5)
      {
        v39 = [(PKFloatArray *)self->_toolAnglesBeforePanning copy];
        toolAngles = self->_toolAngles;
        self->_toolAngles = v39;

        undoRedoLayout = self->_undoRedoLayout;
        if (undoRedoLayout)
        {
          undoRedoLayout->_undoButtonAngle = self->_initialUndoButtonAngle;
          [(PKSqueezePaletteViewUndoRedoLayout *)undoRedoLayout _updateUndoButtonConstraints];
          v42 = self->_undoRedoLayout;
          if (v42)
          {
            v42->_redoButtonAngle = self->_initialRedoButtonAngle;
            [(PKSqueezePaletteViewUndoRedoLayout *)v42 _updateRedoButtonConstraints];
          }
        }

        *&self->_multicolorButtonAngle = *&self->_initialMulticolorButtonAngle;
        self->_toolsContentClippingIndicatorAngle = self->_initialToolsContentClippingIndicatorAngle;
        if ([(NSArray *)self->_drawingTools count])
        {
          v43 = 0;
          v44 = *MEMORY[0x1E695EFF8];
          v45 = *(MEMORY[0x1E695EFF8] + 8);
          do
          {
            v46 = objc_loadWeakRetained(&self->_paletteView);
            v47 = v46;
            if (v46)
            {
              v48 = v46[62];
            }

            else
            {
              v48 = 0.0;
            }

            v49 = [(PKFloatArray *)self->_toolAngles floatAtIndex:v43];
            v50 = PKPointOnArc(v44, v45, v48, v49);
            v52 = v51;

            v53 = [(NSArray *)self->_toolCenterXConstraints objectAtIndexedSubscript:v43];
            [v53 setConstant:v50];

            v54 = [(NSArray *)self->_toolCenterYConstraints objectAtIndexedSubscript:v43];
            [v54 setConstant:v52];

            ++v43;
          }

          while (v43 < [(NSArray *)self->_drawingTools count]);
        }

        [(PKSqueezePaletteViewMiniPaletteLayout *)self updateUI];
      }

      else
      {
        drawingTools = self->_drawingTools;
        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v77[2] = __59__PKSqueezePaletteViewMiniPaletteLayout__handlePanGesture___block_invoke_4;
        v77[3] = &unk_1E82D7998;
        v77[4] = self;
        [(NSArray *)drawingTools enumerateObjectsUsingBlock:v77];
        v32 = [[PKSqueezePaletteViewExpandedToolsLayoutContext alloc] initWithPreviousLayout:?];
        v33 = objc_loadWeakRetained(&self->_paletteView);
        v34 = v33;
        if (v33)
        {
          v35 = *(v33 + 70);
        }

        else
        {
          v35 = 0;
        }

        v36 = v35;
        v37 = [(PKSqueezePaletteViewLayoutFactory *)v36 makeExpandedToolsLayoutWithContext:v32 drawingTools:self->_drawingTools selectedToolIndex:self->_selectedToolIndex visibleToolsCount:self->_visibleToolsCount delegate:self];

        v38 = objc_loadWeakRetained(&self->_paletteView);
        [(PKSqueezePaletteView *)v38 setCurrentLayout:v37];
      }

      break;
    case 2:
      v26 = objc_loadWeakRetained(&self->_paletteView);
      if (v26)
      {
        v27 = v26[480];
        startPanGestureAngleOnArc = self->_startPanGestureAngleOnArc;

        if (v27 == 1)
        {
          if (v18 > startPanGestureAngleOnArc)
          {
            break;
          }

          goto LABEL_41;
        }
      }

      else
      {
        startPanGestureAngleOnArc = self->_startPanGestureAngleOnArc;
      }

      if (v18 < startPanGestureAngleOnArc)
      {
        break;
      }

LABEL_41:
      v55 = [(PKFloatArray *)self->_toolAnglesBeforePanning floatAtIndex:?]+ v18 - self->_startPanGestureAngleOnArc;
      v56 = objc_loadWeakRetained(&self->_paletteView);
      v57 = v56;
      if (v56)
      {
        v58 = *(v56 + 480);
        v59 = objc_loadWeakRetained(&self->_paletteView);
        if (v58)
        {
          if (v59)
          {
            v60 = 512;
LABEL_50:
            v61 = *&v59[v60];
LABEL_51:

            if (v55 < v61)
            {
              break;
            }

            if ([(NSArray *)self->_drawingTools count])
            {
              v62 = 0;
              v63 = *MEMORY[0x1E695EFF8];
              v64 = *(MEMORY[0x1E695EFF8] + 8);
              do
              {
                v65 = [(PKFloatArray *)self->_toolAnglesBeforePanning floatAtIndex:v62]+ v18 - self->_startPanGestureAngleOnArc;
                [(PKFloatArray *)self->_toolAngles setFloat:v62 atIndex:v65];
                v66 = objc_loadWeakRetained(&self->_paletteView);
                v67 = v66;
                if (v66)
                {
                  v68 = v66[62];
                }

                else
                {
                  v68 = 0.0;
                }

                v69 = PKPointOnArc(v63, v64, v68, v65);
                v71 = v70;

                v72 = [(NSArray *)self->_toolCenterXConstraints objectAtIndexedSubscript:v62];
                [v72 setConstant:v69];

                v73 = [(NSArray *)self->_toolCenterYConstraints objectAtIndexedSubscript:v62];
                [v73 setConstant:v71];

                ++v62;
              }

              while (v62 < [(NSArray *)self->_drawingTools count]);
            }

            v74 = self->_undoRedoLayout;
            if (v74)
            {
              v74->_undoButtonAngle = self->_initialUndoButtonAngle + v18 - self->_startPanGestureAngleOnArc;
              [(PKSqueezePaletteViewUndoRedoLayout *)v74 _updateUndoButtonConstraints];
              v75 = self->_undoRedoLayout;
              if (v75)
              {
                v75->_redoButtonAngle = self->_initialRedoButtonAngle + v18 - self->_startPanGestureAngleOnArc;
                [(PKSqueezePaletteViewUndoRedoLayout *)v75 _updateRedoButtonConstraints];
              }
            }

            *&v76 = v18 - self->_startPanGestureAngleOnArc;
            *&self->_multicolorButtonAngle = vsubq_f64(*&self->_initialMulticolorButtonAngle, vdupq_lane_s64(v76, 0));
            self->_toolsContentClippingIndicatorAngle = self->_initialToolsContentClippingIndicatorAngle - *&v76;
            [(PKSqueezePaletteViewMiniPaletteLayout *)self updateUI];
            v24 = self->_drawingTools;
            v25 = &__block_literal_global_15;
            goto LABEL_17;
          }

          goto LABEL_64;
        }
      }

      else
      {
        v59 = objc_loadWeakRetained(&self->_paletteView);
      }

      if (v59)
      {
        v60 = 520;
        goto LABEL_50;
      }

LABEL_64:
      v61 = 0.0;
      goto LABEL_51;
    case 1:
      self->_startPanGestureLocation.y = v9;
      self->_startPanGestureAngleOnArc = v18;
      self->_startPanGestureLocation.x = v7;
      v20 = [(PKFloatArray *)self->_toolAngles copy];
      toolAnglesBeforePanning = self->_toolAnglesBeforePanning;
      self->_toolAnglesBeforePanning = v20;

      v22 = self->_undoRedoLayout;
      if (v22)
      {
        self->_initialUndoButtonAngle = v22->_undoButtonAngle;
        redoButtonAngle = v22->_redoButtonAngle;
      }

      else
      {
        self->_initialUndoButtonAngle = 0.0;
        redoButtonAngle = 0.0;
      }

      self->_initialRedoButtonAngle = redoButtonAngle;
      *&self->_initialMulticolorButtonAngle = *&self->_multicolorButtonAngle;
      self->_initialToolsContentClippingIndicatorAngle = self->_toolsContentClippingIndicatorAngle;
      v24 = self->_drawingTools;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __59__PKSqueezePaletteViewMiniPaletteLayout__handlePanGesture___block_invoke;
      v78[3] = &unk_1E82D7998;
      v78[4] = self;
      v25 = v78;
LABEL_17:
      [(NSArray *)v24 enumerateObjectsUsingBlock:v25];
      break;
  }
}

void __59__PKSqueezePaletteViewMiniPaletteLayout__handlePanGesture___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 288));
  [WeakRetained bringSubviewToFront:v3];
}

- (uint64_t)_updateMulticolorButtonConstraints
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 288));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = WeakRetained[62];
    }

    else
    {
      v4 = 0.0;
    }

    v5 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v4, *(v1 + 104));
    v7 = v6;

    [*(v1 + 224) setConstant:v5];
    v8 = *(v1 + 232);

    return [v8 setConstant:v7];
  }

  return result;
}

- (uint64_t)_updateMoreButtonConstraints
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 288));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = WeakRetained[62];
    }

    else
    {
      v4 = 0.0;
    }

    v5 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v4, *(v1 + 112));
    v7 = v6;

    [*(v1 + 240) setConstant:v5];
    v8 = *(v1 + 248);

    return [v8 setConstant:v7];
  }

  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_panGestureRecognizer == a3)
  {
    visibleToolsCount = self->_visibleToolsCount;
    if (visibleToolsCount >= [(NSArray *)self->_drawingTools count])
    {
      v7 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_paletteView);
      [v6 locationInView:WeakRetained];
      v11 = v10;
      v13 = v12;

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = self->_drawingTools;
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v26 + 1) + 8 * i);
            v20 = objc_loadWeakRetained(&self->_paletteView);
            [v20 convertPoint:v19 toView:{v11, v13, v26}];
            v22 = v21;
            v24 = v23;

            [v19 bounds];
            v32.x = v22;
            v32.y = v24;
            if (CGRectContainsPoint(v33, v32))
            {
              v7 = 1;
              goto LABEL_15;
            }
          }

          v16 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v7 = 0;
LABEL_15:
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)expandedToolsLayout:(id)a3 didChangeDrawingTools:(id)a4
{
  v5 = [a4 copy];
  drawingTools = self->_drawingTools;
  self->_drawingTools = v5;
}

- (void)setupUI
{
  v159 = *MEMORY[0x1E69E9840];
  [(PKSqueezePaletteViewUndoRedoLayout *)self->_undoRedoLayout setupUI];
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (!WeakRetained)
  {
    return;
  }

  objc_initWeak(&location, self);
  v153[0] = MEMORY[0x1E69E9820];
  v153[1] = 3221225472;
  v153[2] = __48__PKSqueezePaletteViewMiniPaletteLayout_setupUI__block_invoke;
  v153[3] = &unk_1E82D69B8;
  objc_copyWeak(&v154, &location);
  [(UIView *)self->_multicolorButton _set_pk_longSqueezeAction:v153];
  v151[0] = MEMORY[0x1E69E9820];
  v151[1] = 3221225472;
  v151[2] = __48__PKSqueezePaletteViewMiniPaletteLayout_setupUI__block_invoke_2;
  v151[3] = &unk_1E82D69B8;
  objc_copyWeak(&v152, &location);
  [(UIButton *)self->_moreButton _set_pk_longSqueezeAction:v151];
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v4 = self->_drawingTools;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v147 objects:v158 count:16];
  if (!v5)
  {

LABEL_12:
    visibleToolsCount = self->_visibleToolsCount;
    v10 = visibleToolsCount < [(NSArray *)self->_drawingTools count];
    goto LABEL_13;
  }

  v6 = *v148;
  v7 = MEMORY[0x1E69E9820];
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v148 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v147 + 1) + 8 * i);
      objc_initWeak(&from, v9);
      v144[0] = v7;
      v144[1] = 3221225472;
      v144[2] = __48__PKSqueezePaletteViewMiniPaletteLayout_setupUI__block_invoke_3;
      v144[3] = &unk_1E82D79E0;
      objc_copyWeak(&v145, &location);
      objc_copyWeak(&v146, &from);
      [v9 _set_pk_longSqueezeAction:v144];
      objc_destroyWeak(&v146);
      objc_destroyWeak(&v145);
      objc_destroyWeak(&from);
    }

    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v147 objects:v158 count:16];
  }

  while (v5);

  if (self)
  {
    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:
  self->_clipIndicatorViewVisible = v10;
  v12 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handlePanGesture_];
  panGestureRecognizer = self->_panGestureRecognizer;
  self->_panGestureRecognizer = v12;

  [(UIPanGestureRecognizer *)self->_panGestureRecognizer setDelegate:self];
  v14 = objc_loadWeakRetained(&self->_paletteView);
  [v14 addGestureRecognizer:self->_panGestureRecognizer];

  [(PKViewWithHitTestHandler *)self->_toolsContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = objc_loadWeakRetained(&self->_paletteView);
  v16 = v15;
  if (v15)
  {
    v17 = *(v15 + 68);
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  [v18 addSubview:self->_toolsContentView];

  v121 = MEMORY[0x1E696ACD8];
  v128 = [(PKViewWithHitTestHandler *)self->_toolsContentView topAnchor];
  v19 = objc_loadWeakRetained(&self->_paletteView);
  v132 = v19;
  if (v19)
  {
    v20 = *(v19 + 68);
  }

  else
  {
    v20 = 0;
  }

  v118 = v20;
  v130 = [v118 topAnchor];
  v127 = [v128 constraintEqualToAnchor:v130];
  v157[0] = v127;
  v124 = [(PKViewWithHitTestHandler *)self->_toolsContentView leadingAnchor];
  v21 = objc_loadWeakRetained(&self->_paletteView);
  v126 = v21;
  if (v21)
  {
    v22 = *(v21 + 68);
  }

  else
  {
    v22 = 0;
  }

  v119 = v22;
  v125 = [v119 leadingAnchor];
  v123 = [v124 constraintEqualToAnchor:v125];
  v157[1] = v123;
  v122 = [(PKViewWithHitTestHandler *)self->_toolsContentView trailingAnchor];
  v23 = objc_loadWeakRetained(&self->_paletteView);
  v24 = v23;
  if (v23)
  {
    v25 = *(v23 + 68);
  }

  else
  {
    v25 = 0;
  }

  v120 = v25;
  v26 = [v120 trailingAnchor];
  v27 = [v122 constraintEqualToAnchor:v26];
  v157[2] = v27;
  v28 = [(PKViewWithHitTestHandler *)self->_toolsContentView bottomAnchor];
  v29 = objc_loadWeakRetained(&self->_paletteView);
  v30 = v29;
  if (v29)
  {
    v31 = *(v29 + 68);
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;
  v33 = [v32 bottomAnchor];
  v34 = [v28 constraintEqualToAnchor:v33];
  v157[3] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v157 count:4];
  [v121 activateConstraints:v35];

  from = 0;
  p_from = &from;
  v142 = 0x2020000000;
  v36 = objc_loadWeakRetained(&self->_paletteView);
  v37 = v36;
  if (v36)
  {
    v38 = v36[65];
  }

  else
  {
    v38 = 0.0;
  }

  beforeToolSpace = self->_beforeToolSpace;
  v40 = objc_loadWeakRetained(&self->_paletteView);
  if (v40)
  {
    v41 = v40[62];
  }

  else
  {
    v41 = 0.0;
  }

  v143 = v38 + beforeToolSpace / v41;
  v42 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_drawingTools, "count")}];
  v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_drawingTools, "count")}];
  drawingTools = self->_drawingTools;
  v136[0] = MEMORY[0x1E69E9820];
  v136[1] = 3221225472;
  v136[2] = __48__PKSqueezePaletteViewMiniPaletteLayout_setupUI__block_invoke_4;
  v136[3] = &unk_1E82D7A08;
  v136[4] = self;
  v139 = &from;
  v133 = v42;
  v137 = v133;
  v131 = v43;
  v138 = v131;
  [(NSArray *)drawingTools enumerateObjectsUsingBlock:v136];
  v45 = [v133 copy];
  toolCenterXConstraints = self->_toolCenterXConstraints;
  self->_toolCenterXConstraints = v45;

  v47 = [v131 copy];
  toolCenterYConstraints = self->_toolCenterYConstraints;
  self->_toolCenterYConstraints = v47;

  v49 = self->_visibleToolsCount;
  if (v49)
  {
    v50 = [(PKFloatArray *)self->_toolAngles floatAtIndex:?];
  }

  else
  {
    v50 = *(p_from + 3);
  }

  [(PKSqueezePaletteMulticolorSwatchButton *)self->_multicolorButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PKSqueezePaletteMulticolorSwatchButton *)self->_multicolorButton addTarget:self action:sel__didTapMulticolorButton_ forControlEvents:64];
  v51 = objc_loadWeakRetained(&self->_paletteView);
  v52 = v51;
  if (v51)
  {
    v53 = *(v51 + 69);
  }

  else
  {
    v53 = 0;
  }

  v54 = v53;
  [v54 addSubview:self->_multicolorButton];

  [(NSLayoutConstraint *)self->_multicolorButtonCenterXConstraint setActive:0];
  [(NSLayoutConstraint *)self->_multicolorButtonCenterYConstraint setActive:0];
  v55 = [(PKSqueezePaletteMulticolorSwatchButton *)self->_multicolorButton centerXAnchor];
  v56 = objc_loadWeakRetained(&self->_paletteView);
  v57 = [v56 centerXAnchor];
  v58 = [v55 constraintEqualToAnchor:v57];
  multicolorButtonCenterXConstraint = self->_multicolorButtonCenterXConstraint;
  self->_multicolorButtonCenterXConstraint = v58;

  v60 = [(PKSqueezePaletteMulticolorSwatchButton *)self->_multicolorButton centerYAnchor];
  v61 = objc_loadWeakRetained(&self->_paletteView);
  v62 = [v61 centerYAnchor];
  v63 = [v60 constraintEqualToAnchor:v62];
  multicolorButtonCenterYConstraint = self->_multicolorButtonCenterYConstraint;
  self->_multicolorButtonCenterYConstraint = v63;

  height = self->_buttonSize.height;
  afterToolSpace = self->_afterToolSpace;
  v67 = objc_loadWeakRetained(&self->_paletteView);
  if (v67)
  {
    v68 = v67[62];
  }

  else
  {
    v68 = 0.0;
  }

  self->_multicolorButtonAngle = v50 + (height + afterToolSpace) / v68;

  [(PKSqueezePaletteViewMiniPaletteLayout *)self _updateMulticolorButtonConstraints];
  [(UIButton *)self->_moreButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_moreButton addTarget:self action:sel__didTapMoreButton_ forControlEvents:64];
  v69 = objc_loadWeakRetained(&self->_paletteView);
  v70 = v69;
  if (v69)
  {
    v71 = *(v69 + 69);
  }

  else
  {
    v71 = 0;
  }

  v72 = v71;
  [v72 addSubview:self->_moreButton];

  [(NSLayoutConstraint *)self->_moreButtonCenterXConstraint setActive:0];
  [(NSLayoutConstraint *)self->_moreButtonCenterYConstraint setActive:0];
  v73 = [(UIButton *)self->_moreButton centerXAnchor];
  v74 = objc_loadWeakRetained(&self->_paletteView);
  v75 = [v74 centerXAnchor];
  v76 = [v73 constraintEqualToAnchor:v75];
  moreButtonCenterXConstraint = self->_moreButtonCenterXConstraint;
  self->_moreButtonCenterXConstraint = v76;

  v78 = [(UIButton *)self->_moreButton centerYAnchor];
  v79 = objc_loadWeakRetained(&self->_paletteView);
  v80 = [v79 centerYAnchor];
  v81 = [v78 constraintEqualToAnchor:v80];
  moreButtonCenterYConstraint = self->_moreButtonCenterYConstraint;
  self->_moreButtonCenterYConstraint = v81;

  multicolorButtonAngle = self->_multicolorButtonAngle;
  v84 = self->_buttonSize.height;
  interButtonSpace = self->_interButtonSpace;
  v86 = objc_loadWeakRetained(&self->_paletteView);
  if (v86)
  {
    v87 = v86[62];
  }

  else
  {
    v87 = 0.0;
  }

  self->_moreButtonAngle = multicolorButtonAngle + (v84 + interButtonSpace) / v87;

  [(PKSqueezePaletteViewMiniPaletteLayout *)self _updateMoreButtonConstraints];
  v129 = MEMORY[0x1E696ACD8];
  v88 = [(PKSqueezePaletteMulticolorSwatchButton *)self->_multicolorButton heightAnchor];
  v89 = [v88 constraintEqualToConstant:self->_buttonSize.height];
  v156[0] = v89;
  v90 = [(PKSqueezePaletteMulticolorSwatchButton *)self->_multicolorButton widthAnchor];
  v91 = [v90 constraintEqualToConstant:self->_buttonSize.width];
  v92 = self->_multicolorButtonCenterXConstraint;
  v93 = self->_multicolorButtonCenterYConstraint;
  v156[1] = v91;
  v156[2] = v92;
  v156[3] = v93;
  v94 = [(UIButton *)self->_moreButton heightAnchor];
  v95 = [v94 constraintEqualToConstant:self->_buttonSize.height];
  v156[4] = v95;
  v96 = [(UIButton *)self->_moreButton widthAnchor];
  v97 = [v96 constraintEqualToConstant:self->_buttonSize.width];
  v98 = self->_moreButtonCenterXConstraint;
  v99 = self->_moreButtonCenterYConstraint;
  v156[5] = v97;
  v156[6] = v98;
  v156[7] = v99;
  v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:8];
  [v129 activateConstraints:v100];

  self->_toolsContentClippingIndicatorAngle = [(PKSqueezePaletteViewMiniPaletteLayout *)self _defaultToolsContentClipIndicatorAngle];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v101 = objc_loadWeakRetained(&self->_paletteView);
  v102 = v101;
  if (v101)
  {
    v103 = v101[63];
  }

  else
  {
    v103 = 0.0;
  }

  [(CAShapeLayer *)self->_toolsContentClippingShapeMask setLineWidth:v103 + *&PKSqueezePaletteViewToolsContentClippingShapeMaskExtraLineWidth];

  [(CAShapeLayer *)self->_toolsContentClippingShapeMask setLineCap:*MEMORY[0x1E6979E70]];
  [(CAShapeLayer *)self->_toolsContentClippingShapeMask setFillColor:0];
  v104 = [MEMORY[0x1E69DC888] blackColor];
  v105 = v104;
  -[CAShapeLayer setStrokeColor:](self->_toolsContentClippingShapeMask, "setStrokeColor:", [v104 CGColor]);

  toolsContentClippingShapeMask = self->_toolsContentClippingShapeMask;
  v107 = [(PKViewWithHitTestHandler *)self->_toolsContentView layer];
  [v107 setMask:toolsContentClippingShapeMask];

  [MEMORY[0x1E6979518] commit];
  v108 = objc_loadWeakRetained(&self->_paletteView);
  v109 = v108;
  if (v108)
  {
    v110 = *(v108 + 69);
  }

  else
  {
    v110 = 0;
  }

  v111 = v110;
  [v111 addSubview:self->_clipIndicatorView];

  [(PKSqueezePaletteViewMiniPaletteLayout *)self _updateClipIndicatorView];
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __48__PKSqueezePaletteViewMiniPaletteLayout_setupUI__block_invoke_5;
  newValue[3] = &unk_1E82D69B8;
  objc_copyWeak(&v135, &location);
  v112 = objc_loadWeakRetained(&self->_paletteView);
  v114 = v112;
  if (v112)
  {
    objc_setProperty_nonatomic_copy(v112, v113, newValue, 592);
  }

  v115 = objc_loadWeakRetained(&self->_paletteView);
  v116 = v115;
  if (v115)
  {
    v117 = v115[64];
  }

  else
  {
    v117 = 0.0;
  }

  [(PKSqueezePaletteView *)v115 updateUIStartAngle:1 endAngle:v117 clockwise:self->_moreButtonAngle animated:?];

  objc_destroyWeak(&v135);
  _Block_object_dispose(&from, 8);
  objc_destroyWeak(&v152);
  objc_destroyWeak(&v154);
  objc_destroyWeak(&location);
}

void __48__PKSqueezePaletteViewMiniPaletteLayout_setupUI__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKSqueezePaletteViewMiniPaletteLayout *)WeakRetained _performMulticolorButtonTapAction];
}

void __48__PKSqueezePaletteViewMiniPaletteLayout_setupUI__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKSqueezePaletteViewMiniPaletteLayout *)WeakRetained _performMoreButtonTapAction];
}

void __48__PKSqueezePaletteViewMiniPaletteLayout_setupUI__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [(PKSqueezePaletteViewMiniPaletteLayout *)WeakRetained _performDrawingToolTapAction:v2];
}

void __48__PKSqueezePaletteViewMiniPaletteLayout_setupUI__block_invoke_4(uint64_t a1, void *a2, unint64_t a3)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v4 = a2;
  [v4 setSelected:0];
  if (v4)
  {
    objc_storeWeak(v4 + 101, *(a1 + 32));
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addTarget:*(a1 + 32) action:sel__didTapDrawingTool_ forControlEvents:64];
  [*(*(a1 + 32) + 160) addSubview:v4];
  v5 = [v4 centerXAnchor];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 288));
  v7 = [WeakRetained centerXAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];

  v9 = [v4 centerYAnchor];
  v10 = objc_loadWeakRetained((*(a1 + 32) + 288));
  v11 = [v10 centerYAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];

  v13 = *(*(*(a1 + 56) + 8) + 24);
  v14 = *(a1 + 32);
  v15 = *(v14 + 96) + *(v14 + 32);
  v16 = objc_loadWeakRetained((v14 + 288));
  v17 = 0.0;
  v18 = 0.0;
  if (v16)
  {
    v18 = v16[62];
  }

  v19 = v13 + v15 / v18;

  v20 = objc_loadWeakRetained((*(a1 + 32) + 288));
  v21 = v20;
  if (v20)
  {
    v17 = v20[62];
  }

  v22 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v17, v19);
  v24 = v23;

  [v8 setConstant:v22];
  [v12 setConstant:v24];
  v25 = MEMORY[0x1E696ACD8];
  v37[0] = v8;
  v37[1] = v12;
  v35 = v12;
  v26 = [v4 widthAnchor];
  v27 = [v26 constraintEqualToConstant:*(*(a1 + 32) + 96)];
  v37[2] = v27;
  v28 = [v4 heightAnchor];
  v29 = objc_loadWeakRetained((*(a1 + 32) + 288));
  v30 = v29;
  v31 = v8;
  if (v29)
  {
    v32 = v29[63];
  }

  else
  {
    v32 = 0.0;
  }

  v33 = [v28 constraintEqualToConstant:v32];
  v37[3] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v25 activateConstraints:v34];

  [*(a1 + 40) addObject:v31];
  [*(a1 + 48) addObject:v35];
  [(PKFloatArray *)*(*(a1 + 32) + 48) setFloat:a3 atIndex:v19];
  *(*(*(a1 + 56) + 8) + 24) = v19;
  [v4 _pk_show];
}

- (uint64_t)_updateClipIndicatorView
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 184);
    v3 = *(result + 176);
    result = v2 == 1 ? [v3 _pk_show] : objc_msgSend(v3, "_pk_hide");
    if (*(v1 + 336))
    {
      WeakRetained = objc_loadWeakRetained((v1 + 288));
      [WeakRetained bounds];
      UIRectGetCenter();
      v6 = v5;
      v8 = v7;

      v9 = objc_loadWeakRetained((v1 + 288));
      v10 = v9;
      v11 = 0.0;
      if (v9)
      {
        v11 = v9[62];
      }

      PKPointOnArc(v6, v8, v11, *(v1 + 256));

      v12 = *(v1 + 176);
      v13 = *(MEMORY[0x1E695EFD0] + 16);
      *&v17.a = *MEMORY[0x1E695EFD0];
      *&v17.c = v13;
      *&v17.tx = *(MEMORY[0x1E695EFD0] + 32);
      [v12 setTransform:&v17];

      v14 = objc_loadWeakRetained((v1 + 288));
      UIRectIntegralWithViewScale();
      [*(v1 + 176) setFrame:?];

      CGAffineTransformMakeRotation(&v16, *(v1 + 256) + -1.57079633);
      v15 = *(v1 + 176);
      v17 = v16;
      return [v15 setTransform:&v17];
    }
  }

  return result;
}

void __48__PKSqueezePaletteViewMiniPaletteLayout_setupUI__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v1 = objc_loadWeakRetained(WeakRetained + 36);
    [v1 bounds];
    UIRectGetCenter();
    v3 = v2;
    v5 = v4;

    v6 = objc_loadWeakRetained(WeakRetained + 36);
    [v6 bounds];
    [WeakRetained[21] setFrame:?];

    v7 = MEMORY[0x1E69DC728];
    v8 = objc_loadWeakRetained(WeakRetained + 36);
    v9 = v8;
    if (v8)
    {
      v10 = v8[62];
    }

    else
    {
      v10 = 0.0;
    }

    v11 = v10 + *&PKSqueezePaletteViewToolsContentClippingShapeMaskExtraLineWidth * 0.5;
    v12 = objc_loadWeakRetained(WeakRetained + 36);
    v13 = v12;
    if (v12)
    {
      v14 = *(v12 + 480);
    }

    else
    {
      v14 = 0;
    }

    v15 = [v7 bezierPathWithArcCenter:v14 & 1 radius:v3 startAngle:v5 endAngle:v11 clockwise:{0.0, 6.28318531}];
    [WeakRetained[21] setPath:{objc_msgSend(v15, "CGPath")}];

    [MEMORY[0x1E6979518] commit];
    [(PKSqueezePaletteViewMiniPaletteLayout *)WeakRetained _updateClipIndicatorView];
  }
}

- (void)updateUI
{
  [(PKSqueezePaletteViewUndoRedoLayout *)self->_undoRedoLayout updateUI];
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (!WeakRetained)
  {
    return;
  }

  drawingTools = self->_drawingTools;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __49__PKSqueezePaletteViewMiniPaletteLayout_updateUI__block_invoke;
  v32[3] = &unk_1E82D7998;
  v32[4] = self;
  [(NSArray *)drawingTools enumerateObjectsUsingBlock:v32];
  [(PKSqueezePaletteViewMiniPaletteLayout *)self _updateColorUIStyle];
  [(UIView *)self->_multicolorButton _pk_show];
  [(UIButton *)self->_moreButton _pk_show];
  [(PKSqueezePaletteViewMiniPaletteLayout *)self _updateMulticolorButtonConstraints];
  [(PKSqueezePaletteViewMiniPaletteLayout *)self _updateMoreButtonConstraints];
  CGAffineTransformMakeRotation(&v31, self->_moreButtonAngle + 1.57079633);
  moreButton = self->_moreButton;
  v30 = v31;
  [(UIButton *)moreButton setTransform:&v30];
  CGAffineTransformMakeRotation(&v29, self->_multicolorButtonAngle + 1.57079633);
  multicolorButton = self->_multicolorButton;
  v30 = v29;
  [(PKSqueezePaletteMulticolorSwatchButton *)multicolorButton setTransform:&v30];
  [(PKSqueezePaletteViewMiniPaletteLayout *)self _updateClipIndicatorView];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v7 = [(PKViewWithHitTestHandler *)self->_toolsContentView layer];
  v8 = [v7 mask];
  toolsContentClippingShapeMask = self->_toolsContentClippingShapeMask;

  clipIndicatorViewVisible = self->_clipIndicatorViewVisible;
  if (clipIndicatorViewVisible && v8 != toolsContentClippingShapeMask)
  {
    v11 = self->_toolsContentClippingShapeMask;
LABEL_8:
    v12 = [(PKViewWithHitTestHandler *)self->_toolsContentView layer];
    [v12 setMask:v11];

    goto LABEL_9;
  }

  if (!clipIndicatorViewVisible && v8 == toolsContentClippingShapeMask)
  {
    v11 = 0;
    goto LABEL_8;
  }

LABEL_9:
  [(CAShapeLayer *)self->_toolsContentClippingShapeMask setStrokeEnd:self->_toolsContentClippingIndicatorAngle / 6.28318531 + 0.0];
  [MEMORY[0x1E6979518] commit];
  v13 = [(PKSqueezePaletteViewMiniPaletteLayout *)self _selectedTool];
  [v13 setSelected:1];

  v14 = objc_loadWeakRetained(&self->_paletteView);
  v15 = v14;
  if (!v14)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v16 = v14[72];
  v17 = v16;
  if (!v16)
  {
LABEL_21:
    v18 = 0;
    goto LABEL_12;
  }

  v18 = *(v16 + 5);
LABEL_12:
  v19 = v18;
  [(PKSqueezePaletteMulticolorSwatchButton *)self->_multicolorButton setColor:v19];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v20 = objc_loadWeakRetained(&self->_paletteView);
  v21 = v20;
  v22 = 0.0;
  v23 = 0.0;
  if (v20)
  {
    v23 = v20[64];
  }

  v24 = objc_loadWeakRetained(&self->_paletteView);
  v25 = v24;
  if (v24)
  {
    v22 = *(v24 + 63) * 0.5;
  }

  v26 = objc_loadWeakRetained(&self->_paletteView);
  v27 = 0.0;
  if (v26)
  {
    v27 = v26[62];
  }

  v28 = v23 - v22 / v27;

  [(CAShapeLayer *)self->_toolsContentClippingShapeMask setStrokeStart:v28 / 6.28318531 + 0.0];
  [MEMORY[0x1E6979518] commit];
}

void __49__PKSqueezePaletteViewMiniPaletteLayout_updateUI__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [(PKSqueezePaletteDrawingTool *)v5 resetPointerInteractionTransform];
  v6 = [*(a1 + 32) paletteView];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 576);
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 6) > 1.0;
      if (!v5)
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_4:
  if (*(v5 + 801) != v10)
  {
    *(v5 + 801) = v10;
    [v5[93] setAllowHDR:*(v5 + 801)];
  }

LABEL_6:

  v11 = [(PKFloatArray *)*(*(a1 + 32) + 48) floatAtIndex:a3];
  CGAffineTransformMakeRotation(&v13, v11 + 1.57079633);
  v12 = v13;
  [v5 setTransform:&v12];
}

- (void)_updateColorUIStyle
{
  if (a1)
  {
    v2 = *(a1 + 312);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__PKSqueezePaletteViewMiniPaletteLayout__updateColorUIStyle__block_invoke;
    v7[3] = &unk_1E82D7998;
    v7[4] = a1;
    [v2 enumerateObjectsUsingBlock:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 288));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = *(WeakRetained + 73);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 344);
    if (v6)
    {
      if (*(v6 + 760) != v5)
      {
        *(v6 + 760) = v5;
        [(PKSqueezePaletteMulticolorSwatchButton *)v6 _updateUI];
      }
    }
  }
}

- (void)willTransitionToLayout:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PKSqueezePaletteViewUndoRedoLayout *)self->_undoRedoLayout willTransitionToLayout:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  undoButton = self->_undoButton;
  if (isKindOfClass)
  {
    [(UIButton *)undoButton _pk_show];
    [(UIButton *)self->_redoButton _pk_show];
  }

  else
  {
    [(UIButton *)undoButton _pk_hide];
    [(UIButton *)self->_redoButton _pk_hide];
  }

  objc_opt_class();
  v7 = objc_opt_isKindOfClass() & 1;
  drawingTools = self->_drawingTools;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__PKSqueezePaletteViewMiniPaletteLayout_willTransitionToLayout___block_invoke;
  v22[3] = &__block_descriptor_33_e25_v32__0__UIButton_8Q16_B24l;
  v23 = v7;
  [(NSArray *)drawingTools enumerateObjectsUsingBlock:v22];
  [(UIView *)self->_multicolorButton _pk_hide];
  [(UIButton *)self->_moreButton _pk_hide];
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);
  [WeakRetained removeGestureRecognizer:self->_panGestureRecognizer];

  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_toolCenterXConstraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_toolCenterYConstraints];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4)
    {
      v10 = v4[3];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    [(PKMathResultAttribution *)v11 setString:?];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self->_multicolorButton _pk_show];
    [(PKSqueezePaletteMulticolorSwatchButton *)self->_multicolorButton removeTarget:self action:sel__didTapMulticolorButton_ forControlEvents:64];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v11 = [(NSArray *)self->_drawingTools objectAtIndexedSubscript:self->_selectedToolIndex];
    [v11 _pk_show];
LABEL_13:
  }

LABEL_14:
  self->_clipIndicatorViewVisible = 0;
  [(PKSqueezePaletteViewMiniPaletteLayout *)self _updateClipIndicatorView];
  v12 = [(PKViewWithHitTestHandler *)self->_toolsContentView layer];
  [v12 setMask:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = self->_drawingTools;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * i) removeTarget:self action:sel__didTapDrawingTool_ forControlEvents:{64, v18}];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v15);
  }
}

uint64_t __64__PKSqueezePaletteViewMiniPaletteLayout_willTransitionToLayout___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    return [a2 _pk_show];
  }

  else
  {
    return [a2 _pk_hide];
  }
}

- (void)handlePencilInteractionDidTap:(int64_t)a3
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = +[PKStatisticsManager sharedStatisticsManager];
  [PKStatisticsManager recordPencilAction:v5 doubleTap:?];

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4 && self)
      {
        v9 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Show ink attributes.", buf, 2u);
        }

        v10 = [(PKSqueezePaletteViewMiniPaletteLayout *)self _selectedTool];
        [(PKSqueezePaletteViewMiniPaletteLayout *)self _selectTool:v10];
      }

      return;
    }

    if (!self)
    {
      return;
    }

    v20 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_DEFAULT, "Show color palette.", buf, 2u);
    }

    objc_initWeak(&location, self);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __86__PKSqueezePaletteViewMiniPaletteLayout__performPencilPreferredActionShowColorPalette__block_invoke;
    v37 = &unk_1E82D7A50;
    objc_copyWeak(v38, &location);
    WeakRetained = objc_loadWeakRetained(&self->_paletteView);
    v23 = WeakRetained;
    if (WeakRetained)
    {
      objc_setProperty_nonatomic_copy(WeakRetained, v22, buf, 600);
    }

    v24 = objc_loadWeakRetained(&self->_paletteView);
    v25 = v24;
    if (v24)
    {
      v26 = v24[72];
      v27 = v26;
      if (v26)
      {
        v28 = *(v26 + 5);
LABEL_42:
        v29 = v28;

        v30 = objc_loadWeakRetained(&self->_paletteView);
        [(PKSqueezePaletteView *)v30 _didTapMulticolorButton:v29 currentSelectedColor:?];

        objc_destroyWeak(v38);
        objc_destroyWeak(&location);
        return;
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = 0;
    goto LABEL_42;
  }

  if (a3 != 1)
  {
    if (a3 == 2 && self)
    {
      if (self->_selectedToolIndex == 1)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      v7 = [(NSArray *)self->_drawingTools objectAtIndex:v6];
      v8 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Switch to previous tool.", buf, 2u);
      }

      [(PKSqueezePaletteViewMiniPaletteLayout *)self _selectTool:v7];
    }

    return;
  }

  if (!self)
  {
    return;
  }

  switchToEraserAction = self->_switchToEraserAction;
  if (switchToEraserAction || (v12 = [[PKSqueezePaletteViewSwitchToEraserAction alloc] initWitEraserToolIndex:[(NSArray *)self->_drawingTools count] toolsCount:?], v13 = self->_switchToEraserAction, self->_switchToEraserAction = v12, v13, (switchToEraserAction = self->_switchToEraserAction) != 0))
  {
    selectedToolIndex = self->_selectedToolIndex;
    v15 = switchToEraserAction->_selectedToolIndex;
    if (v15 != selectedToolIndex)
    {
      switchToEraserAction->_lastSelectedToolIndex = v15;
      switchToEraserAction->_selectedToolIndex = selectedToolIndex;
      if (v15 == 0x7FFFFFFFFFFFFFFFLL && switchToEraserAction->_eraserToolIndex == selectedToolIndex)
      {
        if (selectedToolIndex + 1 < switchToEraserAction->_toolsCount)
        {
          ++selectedToolIndex;
        }

        switchToEraserAction->_lastSelectedToolIndex = selectedToolIndex;
      }
    }
  }

  [(PKSqueezePaletteViewSwitchToEraserAction *)&self->_switchToEraserAction->super.isa performAction];
  v17 = self->_switchToEraserAction;
  if (v17)
  {
    v18 = v17->_selectedToolIndex;
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v31 = [(NSArray *)self->_drawingTools count];
        v33 = self->_selectedToolIndex;
        eraserToolIndex = self->_eraserToolIndex;
        *buf = 134284033;
        *&buf[4] = v31;
        *&buf[12] = 2049;
        *&buf[14] = eraserToolIndex;
        *&buf[22] = 2049;
        v37 = v33;
        _os_log_error_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_ERROR, "Unable to perform switch to eraser action: next tool couldn't be determined. tools count: %{private}lu, eraser tool index: %{private}lu, selected tool index: %{private}lu", buf, 0x20u);
      }

      return;
    }
  }

  else
  {
    v18 = 0;
  }

  v34 = [(NSArray *)self->_drawingTools objectAtIndex:v18];
  [(PKSqueezePaletteViewMiniPaletteLayout *)self _selectTool:v34];
}

void __86__PKSqueezePaletteViewMiniPaletteLayout__performPencilPreferredActionShowColorPalette__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (WeakRetained)
  {
    v7 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v16 = v6;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Update multicolor button color from extended color picker, color: %{private}@", buf, 0xCu);
    }

    v8 = [(PKSqueezePaletteViewMiniPaletteLayout *)WeakRetained _selectedTool];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 816);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 _copyWithColor:v6];
    [(PKSqueezePaletteDrawingTool *)v9 setTool:v12];

    [(PKSqueezePaletteMulticolorSwatchButton *)*(WeakRetained + 43) setColor:v6];
    v13 = objc_loadWeakRetained(WeakRetained + 36);
    [(PKSqueezePaletteView *)v13 _didSelectColor:v6 isFromExtendedColorPicker:1 isContinuousColorSelection:a3];
  }
}

void __60__PKSqueezePaletteViewMiniPaletteLayout__updateColorUIStyle__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 288));
  if (WeakRetained)
  {
    v5 = WeakRetained[73];
  }

  else
  {
    v5 = 0;
  }

  v6 = WeakRetained;
  if (v3 && *(v3 + 103) != v5)
  {
    *(v3 + 103) = v5;
    [*(v3 + 93) setColorUserInterfaceStyle:?];
  }
}

- (double)toolAngle:(id)a3
{
  v4 = [(NSArray *)self->_drawingTools indexOfObject:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0.0;
  }

  v6 = v4;
  toolAngles = self->_toolAngles;

  return [(PKFloatArray *)toolAngles floatAtIndex:v6];
}

- (PKSqueezePaletteView)paletteView
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  return WeakRetained;
}

@end