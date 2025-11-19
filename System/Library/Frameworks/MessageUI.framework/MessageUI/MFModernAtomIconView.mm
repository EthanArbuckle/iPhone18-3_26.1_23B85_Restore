@interface MFModernAtomIconView
- (CGPoint)drawingOffset;
- (double)preferredWidth;
- (void)drawRect:(CGRect)a3;
@end

@implementation MFModernAtomIconView

- (void)drawRect:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = MFModernAtomIconView;
  [(MFModernAtomIconView *)&v14 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(MFModernAtomIconView *)self effectiveUserInterfaceLayoutDirection];
  v5 = v4 == 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  if (v4)
  {
    [(MFModernAtomIconView *)self bounds];
    v7 = v6;
    [(MFModernAtomIconView *)self drawingOffset];
    v9 = v7 - v8;
  }

  else
  {
    [(MFModernAtomIconView *)self drawingOffset];
  }

  *&v13[3] = v9;
  v10 = [(MFModernAtomIconView *)self iconImages];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__MFModernAtomIconView_drawRect___block_invoke;
  v11[3] = &unk_1E8070468;
  v12 = v5;
  v11[4] = self;
  v11[5] = v13;
  [v10 enumerateObjectsUsingBlock:v11];

  _Block_object_dispose(v13, 8);
}

void __33__MFModernAtomIconView_drawRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v12 = v3;
  if (*(a1 + 48) == 1)
  {
    [v3 drawingOffset];
    v6 = v5;
  }

  else
  {
    [v3 size];
    v8 = v7;
    [v12 drawingOffset];
    v6 = -(v8 + v9);
  }

  [*(a1 + 32) drawingOffset];
  [v12 drawingOffset];
  [v12 size];
  UIRoundToViewScale();
  [v12 drawAtPoint:{v4 + v6, v10}];
  [v12 size];
  [*(a1 + 32) iconPadding];
  UIRoundToViewScale();
  if (!*(a1 + 48))
  {
    v11 = -v11;
  }

  *(*(*(a1 + 40) + 8) + 24) = v11 + *(*(*(a1 + 40) + 8) + 24);
}

- (double)preferredWidth
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  [(MFModernAtomIconView *)self drawingOffset];
  v11 = v3;
  v4 = [(MFModernAtomIconView *)self iconImages];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MFModernAtomIconView_preferredWidth__block_invoke;
  v7[3] = &unk_1E8070490;
  v7[4] = self;
  v7[5] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __38__MFModernAtomIconView_preferredWidth__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 size];
  [*(a1 + 32) iconPadding];
  [v4 drawingOffset];
  UIRoundToViewScale();
  *(*(*(a1 + 40) + 8) + 24) = v3 + *(*(*(a1 + 40) + 8) + 24);
}

- (CGPoint)drawingOffset
{
  x = self->_drawingOffset.x;
  y = self->_drawingOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end