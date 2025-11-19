@interface PDFPageLayerSelectionEffect
- (PDFPageLayerSelectionEffect)initWithPDFPageLayer:(id)a3;
- (id)compositingFilterWithRenderingProperties:(id)a3;
- (void)_generateRects;
- (void)addSelection:(id)a3;
- (void)setSelections:(id)a3;
- (void)update;
- (void)updateColor:(unint64_t)a3;
- (void)updateCompositingMode;
@end

@implementation PDFPageLayerSelectionEffect

- (PDFPageLayerSelectionEffect)initWithPDFPageLayer:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PDFPageLayerSelectionEffect;
  v5 = [(PDFPageLayerEffect *)&v11 initWithPDFPageLayer:v4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6979398]);
    v7 = v5->super._private;
    rootSelectionLayer = v7->rootSelectionLayer;
    v7->rootSelectionLayer = v6;

    v9 = v5->super._private->rootSelectionLayer;
    [v4 bounds];
    [(CALayer *)v9 setFrame:?];
    [(PDFPageLayerSelectionEffect *)v5 addSublayer:v5->super._private->rootSelectionLayer];
  }

  return v5;
}

- (void)update
{
  [(PDFPageLayerSelectionEffect *)self updateColor:self->super._private->lastFocusState];

  [(PDFPageLayerSelectionEffect *)self updateCompositingMode];
}

- (void)setSelections:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = self->super._private;
  selections = v5->selections;
  v5->selections = v4;

  [(PDFPageLayerSelectionEffect *)self _generateRects];
}

- (void)addSelection:(id)a3
{
  v4 = a3;
  selections = self->super._private->selections;
  v10 = v4;
  if (!selections)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->super._private;
    v8 = v7->selections;
    v7->selections = v6;

    v4 = v10;
    selections = self->super._private->selections;
  }

  v9 = [v4 copy];
  [(NSMutableArray *)selections addObject:v9];

  [(PDFPageLayerSelectionEffect *)self _generateRects];
}

- (void)updateColor:(unint64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  self->super._private->lastFocusState = a3;
  WeakRetained = objc_loadWeakRetained(&self->super._private->pageLayer);
  v17 = [WeakRetained renderingProperties];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(CALayer *)self->super._private->rootSelectionLayer sublayers];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = v10[6];
          v12 = v11;
          if (v11)
          {
            v13 = [v11 color];
            if (!v13)
            {
              if (a3)
              {
                +[PDFSelection defaultInactiveColor];
              }

              else
              {
                +[PDFSelection defaultActiveColor];
              }
              v14 = ;
              v13 = [v17 resolvedColor:v14];
            }

            if ([v10 backgroundColor])
            {
              [v10 setBackgroundColor:{objc_msgSend(v13, "CGColor")}];
            }

            if ([v10 borderColor])
            {
              [v10 setBorderColor:{objc_msgSend(v13, "CGColor")}];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [MEMORY[0x1E6979518] commit];
}

- (id)compositingFilterWithRenderingProperties:(id)a3
{
  v3 = [a3 isDarkMode];
  v4 = MEMORY[0x1E6979D18];
  if (!v3)
  {
    v4 = MEMORY[0x1E6979CA8];
  }

  v5 = *v4;

  return v5;
}

- (void)updateCompositingMode
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->super._private->pageLayer);
  v4 = [WeakRetained renderingProperties];
  v5 = [(PDFPageLayerSelectionEffect *)self compositingFilterWithRenderingProperties:v4];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CALayer *)self->super._private->rootSelectionLayer setCompositingFilter:v5];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CALayer *)self->super._private->rootSelectionLayer sublayers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 setCompositingFilter:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)_generateRects
{
  v72 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->super._private->pageLayer);
  v2 = [WeakRetained page];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v51 = [WeakRetained renderingProperties];
    v50 = [(PDFPageLayerSelectionEffect *)self compositingFilterWithRenderingProperties:v51];
    [(CALayer *)self->super._private->rootSelectionLayer setCompositingFilter:v50];
    v4 = self->super._private->selections;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v4;
    v60 = [(NSMutableArray *)obj countByEnumeratingWithState:&v67 objects:v71 count:16];
    if (v60)
    {
      v59 = *v68;
      __asm { FMOV            V0.2D, #6.0 }

      v54 = _Q0;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v68 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v67 + 1) + 8 * i);
          v12 = [v11 cgSelections];
          v13 = v12;
          if (v12)
          {
            Count = CFArrayGetCount(v12);
            if (Count >= 1)
            {
              v15 = 0;
              while (1)
              {
                CFArrayGetValueAtIndex(v13, v15);
                Page = CGPDFSelectionGetPage();
                if (Page == [v2 pageRef])
                {
                  break;
                }

                if (Count == ++v15)
                {
                  goto LABEL_21;
                }
              }

              NumberOfRectsAndTransforms = CGPDFSelectionGetNumberOfRectsAndTransforms();
              if (NumberOfRectsAndTransforms >= 1)
              {
                for (j = 0; j != NumberOfRectsAndTransforms; ++j)
                {
                  v19 = objc_alloc_init(SelectionRectInfo);
                  CGPDFSelectionGetRectAndTransform();
                  objc_storeWeak(&v19->selection, v11);
                  v19->type = 0;
                  [v3 addObject:v19];
                }
              }

              NumberOfTableRectsAndTransforms = CGPDFSelectionGetNumberOfTableRectsAndTransforms();
              if (NumberOfTableRectsAndTransforms >= 1)
              {
                for (k = 0; k != NumberOfTableRectsAndTransforms; ++k)
                {
                  v22 = objc_alloc_init(SelectionRectInfo);
                  CGPDFSelectionGetTableRectAndTransform();
                  objc_storeWeak(&v22->selection, v11);
                  v22->type = 1;
                  [v3 addObject:v22];
                }
              }

              if (CGPDFSelectionGetType() == 3)
              {
                v23 = objc_alloc_init(SelectionRectInfo);
                v24 = MEMORY[0x1E695EFD0];
                v56 = *(MEMORY[0x1E695EFD0] + 16);
                v57 = *MEMORY[0x1E695EFD0];
                *&v23->transform.a = *MEMORY[0x1E695EFD0];
                *&v23->transform.c = v56;
                v55 = *(v24 + 32);
                *&v23->transform.tx = v55;
                objc_storeWeak(&v23->selection, v11);
                CGPDFSelectionGetTableSelectionRect();
                v23->rect.origin.x = v25;
                v23->rect.origin.y = v26;
                v23->rect.size.width = v27;
                v23->rect.size.height = v28;
                v23->type = 1;
                [v3 addObject:v23];
                x = v23->rect.origin.x;
                y = v23->rect.origin.y;
                width = v23->rect.size.width;
                height = v23->rect.size.height;
                v33 = objc_alloc_init(SelectionRectInfo);
                *&v33->transform.a = v57;
                *&v33->transform.c = v56;
                *&v33->transform.tx = v55;
                objc_storeWeak(&v33->selection, v11);
                v34 = x + -1.75;
                v35 = y + -1.25;
                v36 = width + 3.5;
                v37 = height + 2.5;
                v73.origin.x = v34;
                v73.origin.y = v35;
                v73.size.width = v36;
                v73.size.height = v37;
                MinX = CGRectGetMinX(v73);
                v74.origin.x = v34;
                v74.origin.y = v35;
                v74.size.width = v36;
                v74.size.height = v37;
                MaxY = CGRectGetMaxY(v74);
                v33->rect.origin.x = MinX + -3.0 + 0.75;
                v33->rect.origin.y = MaxY + -3.0 + -0.75;
                v33->rect.size = v54;
                v33->type = 3;
                [v3 addObject:v33];
                v40 = objc_alloc_init(SelectionRectInfo);
                *&v40->transform.a = v57;
                *&v40->transform.c = v56;
                *&v40->transform.tx = v55;
                objc_storeWeak(&v40->selection, v11);
                v75.origin.x = v34;
                v75.origin.y = v35;
                v75.size.width = v36;
                v75.size.height = v37;
                MaxX = CGRectGetMaxX(v75);
                v76.origin.x = v34;
                v76.origin.y = v35;
                v76.size.width = v36;
                v76.size.height = v37;
                MinY = CGRectGetMinY(v76);
                v40->rect.origin.x = MaxX + -3.0 + -0.75;
                v40->rect.origin.y = MinY + -3.0 + 0.75;
                v40->rect.size = v54;
                v40->type = 3;
                [v3 addObject:v40];
              }
            }
          }

LABEL_21:
          ;
        }

        v60 = [(NSMutableArray *)obj countByEnumeratingWithState:&v67 objects:v71 count:16];
      }

      while (v60);
    }

    v43 = self;
    if (!self->super._private->selectionEffectLayers)
    {
      v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v45 = self->super._private;
      selectionEffectLayers = v45->selectionEffectLayers;
      v45->selectionEffectLayers = v44;

      v43 = self;
    }

    objc_initWeak(&location, v43);
    v47 = self->super._private->selectionEffectLayers;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __45__PDFPageLayerSelectionEffect__generateRects__block_invoke;
    v63[3] = &unk_1E8151C50;
    objc_copyWeak(&v65, &location);
    v48 = v50;
    v64 = v48;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __45__PDFPageLayerSelectionEffect__generateRects__block_invoke_2;
    v61[3] = &unk_1E8151C78;
    v49 = v51;
    v62 = v49;
    UpdateRectTransformDictionary(v47, v3, 0, v63, v61);

    objc_destroyWeak(&v65);
    objc_destroyWeak(&location);
  }
}

PDFSelectionLayer *__45__PDFPageLayerSelectionEffect__generateRects__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v17 = 0;
    goto LABEL_23;
  }

  v5 = objc_alloc_init(PDFSelectionLayer);
  v6 = v5;
  v7 = (v3 + 48);
  _Q2 = *(v3 + 2);
  _D3 = 0.5;
  __asm
  {
    FMLA            D5, D3, V2.D[1]
    FMOV            V1.2D, #-0.5
  }

  v16 = vmlaq_f64(vaddq_f64(*(v3 + 5), vmlaq_n_f64(vmulq_n_f64(*(v3 + 4), _D5), *(v3 + 3), *(v3 + 2) + _Q2.f64[0] * 0.5)), _Q1, _Q2);
  if ((*(v3 + 24) - 1) > 2)
  {
    v5->type = 0;
  }

  else
  {
    v5->type = 3;
    v16 = vaddq_f64(v16, xmmword_1C1D79E60);
    _Q2 = vaddq_f64(_Q2, xmmword_1C1D79E70);
  }

  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v16, v16), vceqq_f64(_Q2, _Q2))))) & 1) == 0)
  {
    v18 = v16.f64[1];
    v19 = _Q2.f64[1];
    v31 = v16.f64[0];
    v32 = _Q2.f64[0];
    [(PDFSelectionLayer *)v5 setFrame:?];
    v20 = *(v3 + 4);
    v33 = *v7;
    v34 = v20;
    v35 = *(v3 + 5);
    [(PDFSelectionLayer *)v6 setAffineTransform:&v33];
    v21 = objc_loadWeakRetained(v3 + 1);
    v22 = [v21 color];

    if (!v22)
    {
      v22 = +[PDFSelection defaultActiveColor];
    }

    v23 = *(v3 + 24);
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        -[PDFSelectionLayer setBorderColor:](v6, "setBorderColor:", [v22 CGColor]);
        [(PDFSelectionLayer *)v6 setBorderWidth:1.5];
        [(PDFSelectionLayer *)v6 setCornerRadius:1.5];
        [(PDFSelectionLayer *)v6 setFrame:v31, v18, v32, v19];
        v26 = *(v3 + 4);
        v33 = *v7;
        v34 = v26;
        v35 = *(v3 + 5);
        [(PDFSelectionLayer *)v6 setAffineTransform:&v33];
        v27 = [*(WeakRetained[6] + 112) sublayers];
        [v27 makeObjectsPerformSelector:sel_removeFromSuperlayer];

        goto LABEL_19;
      }

      if (v23 == 3)
      {
        [(PDFSelectionLayer *)v6 setBounds:0.0, 0.0, 6.0, 6.0];
        [(PDFSelectionLayer *)v6 setPosition:v31 + v32 * 0.5, v18 + v19 * 0.5];
        [(PDFSelectionLayer *)v6 setCornerRadius:3.0];
        v24 = [MEMORY[0x1E69DC888] whiteColor];
        -[PDFSelectionLayer setBackgroundColor:](v6, "setBackgroundColor:", [v24 CGColor]);

        -[PDFSelectionLayer setBorderColor:](v6, "setBorderColor:", [v22 CGColor]);
        [(PDFSelectionLayer *)v6 setBorderWidth:1.5];
        v25 = 700.0;
LABEL_20:
        [(PDFSelectionLayer *)v6 setZPosition:v25];
      }
    }

    else
    {
      if (!v23)
      {
        -[PDFSelectionLayer setBackgroundColor:](v6, "setBackgroundColor:", [v22 CGColor]);
        goto LABEL_19;
      }

      if (v23 == 1)
      {
        -[PDFSelectionLayer setBorderColor:](v6, "setBorderColor:", [v22 CGColor]);
        [(PDFSelectionLayer *)v6 setBorderWidth:1.5];
        [(PDFSelectionLayer *)v6 setCornerRadius:1.5];
LABEL_19:
        v25 = 200.0;
        goto LABEL_20;
      }
    }

    v28 = objc_loadWeakRetained(v3 + 1);
    selection = v6->selection;
    v6->selection = v28;

    [(PDFSelectionLayer *)v6 setZPosition:-300.0];
    [(PDFSelectionLayer *)v6 setCompositingFilter:*(a1 + 32)];
    [*(WeakRetained[6] + 112) addSublayer:v6];
    v17 = v6;

    goto LABEL_22;
  }

  v17 = 0;
LABEL_22:

LABEL_23:

  return v17;
}

void __45__PDFPageLayerSelectionEffect__generateRects__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained(v10 + 1);
    objc_storeStrong(v6 + 6, WeakRetained);
    v8 = [WeakRetained color];
    if (!v8)
    {
      v8 = +[PDFSelection defaultActiveColor];
    }

    if (!*(v10 + 24))
    {
      v9 = [*(a1 + 32) resolvedColor:v8];
      [v6 setBackgroundColor:{objc_msgSend(v9, "CGColor")}];
    }
  }
}

@end