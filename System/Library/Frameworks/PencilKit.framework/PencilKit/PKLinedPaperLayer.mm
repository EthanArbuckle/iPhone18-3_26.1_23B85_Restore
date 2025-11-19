@interface PKLinedPaperLayer
- (PKLinedPaperLayer)initWithLinedPaperLayerDelegate:(id)a3;
- (PKLinedPaperLayerDelegate)linedPaperLayerDelegate;
- (id)_attachmentContainerView;
- (id)_linedPaper;
- (id)_traitCollection;
- (void)updateLinesFromAttachmentBounds:(CGRect)a3;
- (void)updateSublayersFromAttachmentBounds:(CGRect)a3;
@end

@implementation PKLinedPaperLayer

- (PKLinedPaperLayer)initWithLinedPaperLayerDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKLinedPaperLayer;
  v5 = [(PKLinedPaperLayer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_linedPaperLayerDelegate, v4);
  }

  return v6;
}

- (id)_traitCollection
{
  v3 = [(PKLinedPaperLayer *)self linedPaperLayerDelegate];
  v4 = [v3 linedPaperLayerTraitCollection:self];

  return v4;
}

- (id)_attachmentContainerView
{
  v3 = [(PKLinedPaperLayer *)self linedPaperLayerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PKLinedPaperLayer *)self linedPaperLayerDelegate];
    v6 = [v5 linedPaperLayerAttachmentContainerView:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_linedPaper
{
  v3 = [(PKLinedPaperLayer *)self linedPaperLayerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PKLinedPaperLayer *)self linedPaperLayerDelegate];
    v6 = [v5 linedPaperLayerLinedPaper:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateLinesFromAttachmentBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v5 = [(PKLinedPaperLayer *)self _linedPaper];
  memset(&v25, 0, sizeof(v25));
  v6 = [(PKLinedPaperLayer *)self linedPaperLayerDelegate];
  v7 = v6;
  if (v6)
  {
    [v6 drawingTransform];
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  v8 = sqrt(v25.b * v25.b + v25.a * v25.a);
  v26.size.height = height / v8;
  v24 = v25;
  v26.size.width = 768.0;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v27 = CGRectApplyAffineTransform(v26, &v24);
  x = v27.origin.x;
  y = v27.origin.y;
  v11 = v27.size.width;
  v12 = v27.size.height;
  [v5 horizontalInset];
  v14 = v8 * v13;
  v23 = x;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = v11;
  v28.size.height = v12;
  v29 = CGRectInset(v28, v14, 0.0);
  v15 = v29.origin.x;
  v16 = v29.origin.y;
  v17 = v29.size.width;
  v18 = v29.size.height;
  [v5 lineSpacing];
  v20 = v8 * v19;
  if (v8 * v19 > 0.0)
  {
    v21 = floor(width * y / -768.0);
    v16 = v16 + v21 - ceil(v21 / v20) * v20;
    v18 = v18 + v20;
  }

  [(PKLinedPaperLayer *)self setFrame:v15, v16, v17, v18];
  [(PKLinedPaperLayer *)self updateSublayersFromAttachmentBounds:v23, y, v11, v12];
  [MEMORY[0x1E6979518] commit];
}

- (void)updateSublayersFromAttachmentBounds:(CGRect)a3
{
  width = a3.size.width;
  v80 = *MEMORY[0x1E69E9840];
  v5 = [(PKLinedPaperLayer *)self _linedPaper:a3.origin.x];
  v61 = [(PKLinedPaperLayer *)self _attachmentContainerView];
  if (v5 && v61)
  {
    [(PKLinedPaperLayer *)self bounds];
    v7 = v6;
    [(PKLinedPaperLayer *)self bounds];
    v9 = v8;
    v10 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v10 scale];
    v12 = v11;

    [v5 lineSpacing];
    v59 = v13;
    v60 = v14;
    v15 = [(PKLinedPaperLayer *)self sublayers];
    v16 = [v15 count];

    [(PKLinedPaperLayer *)self bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [v61 layer];
    [(PKLinedPaperLayer *)self convertRect:v25 toLayer:v18, v20, v22, v24];
    v27 = v26;
    v29 = v28;

    v30 = [(PKLinedPaperLayer *)self _traitCollection];
    if ([v30 userInterfaceStyle] == 2)
    {
      [MEMORY[0x1E69DC888] pk_linedPaperLineColor_dark];
    }

    else
    {
      [MEMORY[0x1E69DC888] pk_linedPaperLineColor_light];
    }
    v36 = ;

    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__PKLinedPaperLayer_updateSublayersFromAttachmentBounds___block_invoke;
    aBlock[3] = &unk_1E82DB728;
    v68 = &v70;
    v69 = v16;
    aBlock[4] = self;
    v32 = v36;
    v67 = v32;
    v37 = _Block_copy(aBlock);
    [v5 lineSpacing];
    v38 = width / 768.0;
    if (v39 > 1.0)
    {
      v40 = fmod(v29, v38 * v60);
      v41 = 0;
      do
      {
        v42 = v37[2](v37);
        [v42 setFrame:{0.0, round(v12 * (v38 * v60 * v41)) / v12 - v40, v7, 1.0}];
        [v42 frame];
        v44 = v43 + 1.0 <= v9;

        ++v41;
      }

      while (v44);
    }

    [v5 lineSpacing];
    if (v45 > 1.0)
    {
      v46 = 0;
      v47 = v38 * v59;
      do
      {
        v48 = v37[2](v37);
        [v48 setFrame:{round(v12 * (v27 + v46 * v47)) / v12 + -0.5 - v27, 0.0, 1.0, v9}];
        [v48 frame];
        v50 = v49 + 1.0 <= v7;

        ++v46;
      }

      while (v50);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v51 = [(PKLinedPaperLayer *)self sublayers];
    v52 = [v51 countByEnumeratingWithState:&v62 objects:v78 count:16];
    if (v52)
    {
      v53 = *v63;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v63 != v53)
          {
            objc_enumerationMutation(v51);
          }

          v55 = *(*(&v62 + 1) + 8 * i);
          v56 = v32;
          [v55 setBackgroundColor:{objc_msgSend(v32, "CGColor")}];
        }

        v52 = [v51 countByEnumeratingWithState:&v62 objects:v78 count:16];
      }

      while (v52);
    }

    while (v16 > v71[3])
    {
      v57 = [(PKLinedPaperLayer *)self sublayers];
      v58 = [v57 objectAtIndexedSubscript:--v16];
      [v58 removeFromSuperlayer];
    }

    _Block_object_dispose(&v70, 8);
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v31 = [(PKLinedPaperLayer *)self sublayers];
    v32 = [v31 copy];

    v33 = [v32 countByEnumeratingWithState:&v74 objects:v79 count:16];
    if (v33)
    {
      v34 = *v75;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v75 != v34)
          {
            objc_enumerationMutation(v32);
          }

          [*(*(&v74 + 1) + 8 * j) removeFromSuperlayer];
        }

        v33 = [v32 countByEnumeratingWithState:&v74 objects:v79 count:16];
      }

      while (v33);
    }
  }
}

id __57__PKLinedPaperLayer_updateSublayersFromAttachmentBounds___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56))
  {
    v3 = objc_alloc_init(MEMORY[0x1E6979398]);
    [v3 setBackgroundColor:{objc_msgSend(*(a1 + 40), "CGColor")}];
    [*(a1 + 32) addSublayer:v3];
  }

  else
  {
    v2 = [*(a1 + 32) sublayers];
    v3 = [v2 objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
  }

  ++*(*(*(a1 + 48) + 8) + 24);

  return v3;
}

- (PKLinedPaperLayerDelegate)linedPaperLayerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_linedPaperLayerDelegate);

  return WeakRetained;
}

@end