@interface PDFPageIconLayer
- (PDFDocument)document;
- (PDFPageIconLayer)initWithSize:(CGSize)a3;
- (void)_updateUI;
- (void)setFrame:(CGRect)a3;
- (void)setPrefersOverlaySelection:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateAsPageIndex:(int)a3 forDocument:(id)a4;
@end

@implementation PDFPageIconLayer

- (PDFPageIconLayer)initWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = PDFPageIconLayer;
  v5 = [(PDFPageIconLayer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PDFPageIconLayer *)v5 setFrame:0.0, 0.0, width, height];
    v7 = [MEMORY[0x1E69DC888] lightGrayColor];
    -[PDFPageIconLayer setBorderColor:](v6, "setBorderColor:", [v7 CGColor]);

    [(PDFPageIconLayer *)v6 setBorderWidth:1.0];
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    -[PDFPageIconLayer setBackgroundColor:](v6, "setBackgroundColor:", [v8 CGColor]);

    [(PDFPageIconLayer *)v6 setContentsGravity:*MEMORY[0x1E6979DE8]];
    [(PDFPageIconLayer *)v6 setZPosition:0.0];
    objc_storeWeak(&v6->_document, 0);
    v6->_pageIndex = 0;
    v6->_needsUpdate = 0;
    v6->_selected = 0;
    v6->_prefersOverlaySelection = 0;
    [(PDFPageIconLayer *)v6 _updateUI];
  }

  return v6;
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(PDFPageIconLayer *)self _updateUI];
  }
}

- (void)setPrefersOverlaySelection:(BOOL)a3
{
  if (self->_prefersOverlaySelection != a3)
  {
    self->_prefersOverlaySelection = a3;
    [(PDFPageIconLayer *)self _updateUI];
  }
}

- (void)_updateUI
{
  if (!self->_prefersOverlaySelection)
  {
    overlay = self->_overlay;
LABEL_6:
    [(CALayer *)overlay removeFromSuperlayer];
    v5 = self->_overlay;
    self->_overlay = 0;

    return;
  }

  selected = self->_selected;
  overlay = self->_overlay;
  if (selected)
  {
    if (!overlay)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!overlay)
  {
    v6 = [MEMORY[0x1E6979398] layer];
    v7 = self->_overlay;
    self->_overlay = v6;

    v8 = self->_overlay;
    [(PDFPageIconLayer *)self frame];
    [(CALayer *)v8 setFrame:?];
    v9 = self->_overlay;
    v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    -[CALayer setBackgroundColor:](v9, "setBackgroundColor:", [v10 CGColor]);

    v11 = self->_overlay;

    [(PDFPageIconLayer *)self addSublayer:v11];
  }
}

- (PDFDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6.receiver = self;
  v6.super_class = PDFPageIconLayer;
  [(PDFPageIconLayer *)&v6 setFrame:a3.origin.x, a3.origin.y];
  self->_frameSize.width = width;
  self->_frameSize.height = height;
  [(PDFPageIconLayer *)self _updateUI];
}

- (void)updateAsPageIndex:(int)a3 forDocument:(id)a4
{
  v6 = a4;
  if (updateAsPageIndex_forDocument__onceToken[0] != -1)
  {
    [PDFPageIconLayer updateAsPageIndex:forDocument:];
  }

  if (self->_needsUpdate)
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_document);
  if (WeakRetained != v6)
  {

LABEL_7:
    objc_storeWeak(&self->_document, v6);
    self->_pageIndex = a3;
    self->_needsUpdate = 0;
    objc_initWeak(&location, self);
    v9 = updateAsPageIndex_forDocument__gIconsQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__PDFPageIconLayer_updateAsPageIndex_forDocument___block_invoke_2;
    v10[3] = &unk_1E8152780;
    objc_copyWeak(&v12, &location);
    v11 = v6;
    v13 = a3;
    dispatch_async(v9, v10);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    goto LABEL_8;
  }

  pageIndex = self->_pageIndex;

  if (pageIndex != a3)
  {
    goto LABEL_7;
  }

LABEL_8:
}

void __50__PDFPageIconLayer_updateAsPageIndex_forDocument___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("PDFIconsView", v2);
  v1 = updateAsPageIndex_forDocument__gIconsQueue;
  updateAsPageIndex_forDocument__gIconsQueue = v0;
}

void __50__PDFPageIconLayer_updateAsPageIndex_forDocument___block_invoke_2(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 6);
    v5 = v4;
    if (v4 && *(a1 + 32) == v4 && *(a1 + 48) == *(v3 + 14))
    {
      BackingScaleFactor = PDFScreenGetBackingScaleFactor();
      v7 = BackingScaleFactor * v3[8];
      v8 = BackingScaleFactor * v3[9];
      v9 = [v5 pageAtIndex:*(a1 + 48)];
      v15[0] = @"PDFPageImageProperty_DrawBookmark";
      v15[1] = @"PDFPageImageProperty_DrawAnnotations";
      v16[0] = MEMORY[0x1E695E110];
      v16[1] = MEMORY[0x1E695E118];
      v15[2] = @"PDFPageImageProperty_WithRotation";
      v16[2] = MEMORY[0x1E695E118];
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
      v11 = [v9 imageOfSize:1 forBox:v10 withOptions:{v7, v8}];

      if ([v11 CGImage] && *(a1 + 32) == v5 && *(a1 + 48) == *(v3 + 14))
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __50__PDFPageIconLayer_updateAsPageIndex_forDocument___block_invoke_3;
        block[3] = &unk_1E8150FF8;
        v13 = v3;
        v14 = v11;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }
  }
}

uint64_t __50__PDFPageIconLayer_updateAsPageIndex_forDocument___block_invoke_3(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(a1 + 32) setContents:{objc_msgSend(*(a1 + 40), "CGImage")}];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

@end