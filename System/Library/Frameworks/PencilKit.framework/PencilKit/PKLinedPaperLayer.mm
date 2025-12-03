@interface PKLinedPaperLayer
- (PKLinedPaperLayer)initWithLinedPaperLayerDelegate:(id)delegate;
- (PKLinedPaperLayerDelegate)linedPaperLayerDelegate;
- (id)_attachmentContainerView;
- (id)_linedPaper;
- (id)_traitCollection;
- (void)updateLinesFromAttachmentBounds:(CGRect)bounds;
- (void)updateSublayersFromAttachmentBounds:(CGRect)bounds;
@end

@implementation PKLinedPaperLayer

- (PKLinedPaperLayer)initWithLinedPaperLayerDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = PKLinedPaperLayer;
  v5 = [(PKLinedPaperLayer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_linedPaperLayerDelegate, delegateCopy);
  }

  return v6;
}

- (id)_traitCollection
{
  linedPaperLayerDelegate = [(PKLinedPaperLayer *)self linedPaperLayerDelegate];
  v4 = [linedPaperLayerDelegate linedPaperLayerTraitCollection:self];

  return v4;
}

- (id)_attachmentContainerView
{
  linedPaperLayerDelegate = [(PKLinedPaperLayer *)self linedPaperLayerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    linedPaperLayerDelegate2 = [(PKLinedPaperLayer *)self linedPaperLayerDelegate];
    v6 = [linedPaperLayerDelegate2 linedPaperLayerAttachmentContainerView:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_linedPaper
{
  linedPaperLayerDelegate = [(PKLinedPaperLayer *)self linedPaperLayerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    linedPaperLayerDelegate2 = [(PKLinedPaperLayer *)self linedPaperLayerDelegate];
    v6 = [linedPaperLayerDelegate2 linedPaperLayerLinedPaper:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateLinesFromAttachmentBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  _linedPaper = [(PKLinedPaperLayer *)self _linedPaper];
  memset(&v25, 0, sizeof(v25));
  linedPaperLayerDelegate = [(PKLinedPaperLayer *)self linedPaperLayerDelegate];
  v7 = linedPaperLayerDelegate;
  if (linedPaperLayerDelegate)
  {
    [linedPaperLayerDelegate drawingTransform];
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
  [_linedPaper horizontalInset];
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
  [_linedPaper lineSpacing];
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

- (void)updateSublayersFromAttachmentBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v80 = *MEMORY[0x1E69E9840];
  v5 = [(PKLinedPaperLayer *)self _linedPaper:bounds.origin.x];
  _attachmentContainerView = [(PKLinedPaperLayer *)self _attachmentContainerView];
  if (v5 && _attachmentContainerView)
  {
    [(PKLinedPaperLayer *)self bounds];
    v7 = v6;
    [(PKLinedPaperLayer *)self bounds];
    v9 = v8;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v12 = v11;

    [v5 lineSpacing];
    v59 = v13;
    v60 = v14;
    sublayers = [(PKLinedPaperLayer *)self sublayers];
    v16 = [sublayers count];

    [(PKLinedPaperLayer *)self bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    layer = [_attachmentContainerView layer];
    [(PKLinedPaperLayer *)self convertRect:layer toLayer:v18, v20, v22, v24];
    v27 = v26;
    v29 = v28;

    _traitCollection = [(PKLinedPaperLayer *)self _traitCollection];
    if ([_traitCollection userInterfaceStyle] == 2)
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
    sublayers2 = [(PKLinedPaperLayer *)self sublayers];
    v52 = [sublayers2 countByEnumeratingWithState:&v62 objects:v78 count:16];
    if (v52)
    {
      v53 = *v63;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v63 != v53)
          {
            objc_enumerationMutation(sublayers2);
          }

          v55 = *(*(&v62 + 1) + 8 * i);
          v56 = v32;
          [v55 setBackgroundColor:{objc_msgSend(v32, "CGColor")}];
        }

        v52 = [sublayers2 countByEnumeratingWithState:&v62 objects:v78 count:16];
      }

      while (v52);
    }

    while (v16 > v71[3])
    {
      sublayers3 = [(PKLinedPaperLayer *)self sublayers];
      v58 = [sublayers3 objectAtIndexedSubscript:--v16];
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
    sublayers4 = [(PKLinedPaperLayer *)self sublayers];
    v32 = [sublayers4 copy];

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