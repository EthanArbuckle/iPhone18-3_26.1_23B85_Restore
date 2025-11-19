@interface PDFHighlightDetectedFormFieldsEffectLayer
- (PDFHighlightDetectedFormFieldsEffectLayer)initWithPage:(id)a3;
- (id)_addRect:(CGRect)a3 withColor:(id)a4 backgroundColor:(id)a5 labelText:(id)a6 itemIndex:(unint64_t)a7;
- (void)updateVisibleLayers;
@end

@implementation PDFHighlightDetectedFormFieldsEffectLayer

- (PDFHighlightDetectedFormFieldsEffectLayer)initWithPage:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PDFHighlightDetectedFormFieldsEffectLayer;
  v5 = [(PDFHighlightDetectedFormFieldsEffectLayer *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_page, v4);
    v6->_displayBox = 1;
    [v4 boundsForBox:1];
    v6->_cropBox.origin.x = v7;
    v6->_cropBox.origin.y = v8;
    v6->_cropBox.size.width = v9;
    v6->_cropBox.size.height = v10;
    v11 = [MEMORY[0x1E695DF70] array];
    addedSublayers = v6->_addedSublayers;
    v6->_addedSublayers = v11;
  }

  return v6;
}

- (void)updateVisibleLayers
{
  v18 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_addedSublayers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * v7++) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_addedSublayers removeAllObjects];
  if (GetDefaultsWriteHighlightDetectedAnnotations())
  {
    WeakRetained = objc_loadWeakRetained(&self->_page);
    v9 = objc_opt_new();
    v10 = [WeakRetained annotationsIfAvail];
    if (v10)
    {
      [v9 addObjectsFromArray:v10];
    }

    v11 = [WeakRetained detectedAnnotations];

    if (v11)
    {
      [v9 addObjectsFromArray:v11];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__PDFHighlightDetectedFormFieldsEffectLayer_updateVisibleLayers__block_invoke;
    v12[3] = &unk_1E81524C0;
    v12[4] = self;
    [v9 enumerateObjectsUsingBlock:v12];
  }

  [MEMORY[0x1E6979518] commit];
}

void __64__PDFHighlightDetectedFormFieldsEffectLayer_updateVisibleLayers__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = a2;
  if ([v22 fieldType] != -1)
  {
    v5 = [v22 valueForAnnotationKey:@"/AAPL:SFF"];

    if (v5)
    {
      [MEMORY[0x1E69DC888] systemRedColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }
    v6 = ;
    [v22 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    if ([v22 isAutofillNewContextStart])
    {
      v15 = [MEMORY[0x1E69DC888] systemGreenColor];
      v16 = [v15 colorWithAlphaComponent:0.25];
    }

    else
    {
      v16 = 0;
    }

    [*(a1 + 32) bounds];
    v18 = v17;
    v24.origin.x = v8;
    v24.origin.y = v10;
    v24.size.width = v12;
    v24.size.height = v14;
    v19 = v18 - CGRectGetMaxY(v24);
    v20 = [v22 autoFillTextContentType];
    v21 = [*(a1 + 32) _addRect:v6 withColor:v16 backgroundColor:v20 labelText:a3 itemIndex:{v8, v19, v12, v14}];
    [*(*(a1 + 32) + 96) addObject:v21];
  }
}

- (id)_addRect:(CGRect)a3 withColor:(id)a4 backgroundColor:(id)a5 labelText:(id)a6 itemIndex:(unint64_t)a7
{
  width = a3.size.width;
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = x - self->_cropBox.origin.x;
  v17 = y - self->_cropBox.origin.y;
  v18 = *MEMORY[0x1E695EFD0];
  v19 = *(MEMORY[0x1E695EFD0] + 8);
  v20 = *(MEMORY[0x1E695EFD0] + 16);
  v21 = *(MEMORY[0x1E695EFD0] + 24);
  v22 = *(MEMORY[0x1E695EFD0] + 32);
  v23 = *(MEMORY[0x1E695EFD0] + 40);
  v24 = v22 + v17 * v20 + *MEMORY[0x1E695EFD0] * v16;
  v25 = v23 + v17 * v21 + v19 * v16;
  v26 = objc_alloc_init(MEMORY[0x1E6979398]);
  [v26 setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v33[0] = v18;
  *&v33[1] = v19;
  *&v33[2] = v20;
  *&v33[3] = v21;
  *&v33[4] = v22;
  *&v33[5] = v23;
  [v26 setAffineTransform:v33];
  [v26 setPosition:{v24, v25}];
  [v26 setBounds:{0.0, 0.0, width, height}];
  [v26 setBorderColor:{objc_msgSend(v13, "CGColor")}];
  [v26 setBorderWidth:1.0];
  if (v14)
  {
    [v26 setBackgroundColor:{objc_msgSend(v14, "CGColor")}];
  }

  if (v15)
  {
    v27 = objc_alloc_init(MEMORY[0x1E6979508]);
    [v27 setFont:@"Helvetica-Bold"];
    [v27 setFontSize:8.0];
    [v26 bounds];
    v36 = CGRectInset(v35, 2.0, 0.0);
    [v27 setFrame:{v36.origin.x, v36.origin.y, v36.size.width, v36.size.height}];
    [v27 setString:v15];
    [v27 setAlignmentMode:*MEMORY[0x1E6979570]];
    [v27 setForegroundColor:{objc_msgSend(v13, "CGColor")}];
    [v27 setContentsScale:4.0];
    [v26 addSublayer:v27];
  }

  if (a7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = objc_alloc_init(MEMORY[0x1E6979508]);
    [v28 setFont:@"Helvetica-Bold"];
    [v28 setFontSize:8.0];
    [v26 bounds];
    v38 = CGRectInset(v37, 2.0, 0.0);
    [v28 setFrame:{v38.origin.x, v38.origin.y, v38.size.width, v38.size.height}];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%lu)", a7];
    [v28 setString:v29];

    [v28 setAlignmentMode:*MEMORY[0x1E6979580]];
    [v28 setForegroundColor:{objc_msgSend(v13, "CGColor")}];
    [v28 setContentsScale:4.0];
    [v26 addSublayer:v28];
  }

  [v26 setZPosition:100.0];
  [(PDFHighlightDetectedFormFieldsEffectLayer *)self addSublayer:v26];

  return v26;
}

@end