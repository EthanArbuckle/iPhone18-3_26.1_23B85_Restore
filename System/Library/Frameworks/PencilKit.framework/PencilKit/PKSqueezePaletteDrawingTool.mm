@interface PKSqueezePaletteDrawingTool
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGAffineTransform)_makeTransformForPointerInteractionVisible:(int)a3;
- (id)initWithTool:(void *)a1;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (uint64_t)resetPointerInteractionTransform;
- (void)_updateUI;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setDragging:(uint64_t)a1;
- (void)setSelected:(int)a3 animated:(void *)a4 completion:;
- (void)setTool:(uint64_t)a1;
@end

@implementation PKSqueezePaletteDrawingTool

- (id)initWithTool:(void *)a1
{
  v39[6] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v38.receiver = a1;
    v38.super_class = PKSqueezePaletteDrawingTool;
    v4 = objc_msgSendSuper2(&v38, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    if (v4)
    {
      v5 = [v3 copy];
      v37 = v3;
      v6 = *(v4 + 102);
      *(v4 + 102) = v5;

      *(v4 + 96) = PKSqueezePaletteToolWidth;
      v7 = objc_alloc_init(PKPaletteToolViewFactory);
      v8 = *(v4 + 94);
      *(v4 + 94) = v7;

      *(v4 + 97) = 0;
      v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v10 = *(v4 + 95);
      *(v4 + 95) = v9;

      [*(v4 + 95) setUserInteractionEnabled:0];
      [*(v4 + 95) setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = [*(v4 + 95) layer];
      [v11 setMasksToBounds:0];

      [v4 addSubview:*(v4 + 95)];
      v12 = [(PKPaletteToolViewFactory *)*(v4 + 94) makePaletteToolViewForTool:?];
      v13 = *(v4 + 93);
      *(v4 + 93) = v12;

      [*(v4 + 93) setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(v4 + 95) addSubview:*(v4 + 93)];
      v14 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v4];
      v15 = *(v4 + 99);
      *(v4 + 99) = v14;

      [v4 addInteraction:*(v4 + 99)];
      v16 = [*(v4 + 95) topAnchor];
      v17 = [v4 topAnchor];
      v18 = [v16 constraintEqualToAnchor:v17 constant:*(v4 + 97)];
      v19 = *(v4 + 98);
      *(v4 + 98) = v18;

      v31 = MEMORY[0x1E696ACD8];
      v39[0] = *(v4 + 98);
      v36 = [*(v4 + 95) bottomAnchor];
      v35 = [v4 bottomAnchor];
      v34 = [v36 constraintEqualToAnchor:v35 constant:*&PKSqueezePaletteToolHoverOffsetY];
      v39[1] = v34;
      v33 = [*(v4 + 95) widthAnchor];
      v32 = [v4 widthAnchor];
      v30 = [v33 constraintEqualToAnchor:v32];
      v39[2] = v30;
      v20 = [*(v4 + 93) topAnchor];
      v21 = [*(v4 + 95) topAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      v39[3] = v22;
      v23 = [*(v4 + 93) centerXAnchor];
      v24 = [*(v4 + 95) centerXAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];
      v39[4] = v25;
      v26 = [*(v4 + 93) widthAnchor];
      v27 = [v26 constraintEqualToConstant:*(v4 + 96)];
      v39[5] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:6];
      [v31 activateConstraints:v28];

      v3 = v37;
      [v4 setHitTestInsets:{-16.0, 0.0, -10.0, 0.0}];
      [(PKSqueezePaletteDrawingTool *)v4 _updateUI];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateUI
{
  if (a1)
  {
    [*(a1 + 744) setSelectedToolOffsetEnabled:0];
    [*(a1 + 744) setSelected:{objc_msgSend(a1, "isSelected")}];
    [*(a1 + 744) setUserInteractionEnabled:0];
    [*(a1 + 744) setEdgeLocation:4];
    [*(a1 + 744) setAllowHDR:*(a1 + 801)];
    v2 = [a1 isSelected];
    v3 = 0;
    if ((v2 & 1) == 0)
    {
      v3 = *(a1 + 800) == 0;
    }

    [*(a1 + 792) setEnabled:v3];
    if (*(a1 + 800) == 1)
    {
      [(PKSqueezePaletteDrawingTool *)a1 resetPointerInteractionTransform];
    }

    v4 = [a1 isSelected];
    v5 = 8.0;
    if (v4)
    {
      v5 = -16.0;
    }

    *(a1 + 776) = v5;
    [*(a1 + 784) setConstant:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 744) _setOverrideLabelCenterOffsetYHandler:&__block_literal_global_16];
    }

    [*(a1 + 744) setColorUserInterfaceStyle:*(a1 + 824)];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [*(a1 + 744) toolName];
    v8 = [v6 stringWithFormat:@"MiniPalette-Tool-%@", v7];
    [a1 setAccessibilityIdentifier:v8];

    v9 = [*(a1 + 744) toolName];
    [a1 setAccessibilityLabel:v9];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(PKSqueezePaletteDrawingTool *)self hitTestInsets];
  v9.f64[1] = v8;
  v11.f64[1] = v10;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *MEMORY[0x1E69DDCE0]), vceqq_f64(v11, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    v29.receiver = self;
    v29.super_class = PKSqueezePaletteDrawingTool;
    v26 = [(PKSqueezePaletteDrawingTool *)&v29 pointInside:v7 withEvent:x, y];
  }

  else
  {
    [(PKSqueezePaletteDrawingTool *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(PKSqueezePaletteDrawingTool *)self hitTestInsets];
    v21 = v15 + v20;
    v24 = v17 - (v22 + v23);
    v31.size.height = v19 - (v20 + v25);
    v31.origin.x = v13 + v22;
    v31.origin.y = v21;
    v31.size.width = v24;
    v30.x = x;
    v30.y = y;
    v26 = CGRectContainsPoint(v31, v30);
  }

  v27 = v26;

  return v27;
}

- (void)setSelected:(int)a3 animated:(void *)a4 completion:
{
  v7 = a4;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = PKSqueezePaletteDrawingTool;
    objc_msgSendSuper2(&v9, sel_setSelected_, a2);
    [(PKSqueezePaletteDrawingTool *)a1 _updateUI];
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __63__PKSqueezePaletteDrawingTool_setSelected_animated_completion___block_invoke;
      v8[3] = &unk_1E82D7148;
      v8[4] = a1;
      [PKPaletteToolViewAnimation performSelectionAnimations:v8 completion:v7];
    }
  }
}

- (void)setTool:(uint64_t)a1
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (!v4)
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Tool parameter can not be nil." userInfo:0];
      objc_exception_throw(v17);
    }

    if (*(a1 + 816) != v4)
    {
      objc_storeStrong((a1 + 816), a2);
      [*(a1 + 744) removeFromSuperview];
      v6 = *(a1 + 744);
      *(a1 + 744) = 0;

      v7 = [(PKPaletteToolViewFactory *)*(a1 + 752) makePaletteToolViewForTool:?];
      v8 = *(a1 + 744);
      *(a1 + 744) = v7;

      [*(a1 + 744) setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(a1 + 760) addSubview:*(a1 + 744)];
      v18 = MEMORY[0x1E696ACD8];
      v19 = [*(a1 + 744) topAnchor];
      v9 = [*(a1 + 760) topAnchor];
      v10 = [v19 constraintEqualToAnchor:v9];
      v20[0] = v10;
      v11 = [*(a1 + 744) centerXAnchor];
      v12 = [*(a1 + 760) centerXAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v20[1] = v13;
      v14 = [*(a1 + 744) widthAnchor];
      v15 = [v14 constraintEqualToConstant:*(a1 + 768)];
      v20[2] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
      [v18 activateConstraints:v16];

      [(PKSqueezePaletteDrawingTool *)a1 _updateUI];
    }
  }
}

- (void)setDragging:(uint64_t)a1
{
  if (a1 && *(a1 + 800) != a2)
  {
    *(a1 + 800) = a2;
    [*(a1 + 792) invalidate];

    [(PKSqueezePaletteDrawingTool *)a1 _updateUI];
  }
}

- (uint64_t)resetPointerInteractionTransform
{
  if (result)
  {
    v1 = result;
    result = [result isSelected];
    if ((result & 1) == 0)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = __63__PKSqueezePaletteDrawingTool_resetPointerInteractionTransform__block_invoke;
      v2[3] = &unk_1E82D7148;
      v2[4] = v1;
      return [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v2];
    }
  }

  return result;
}

uint64_t __63__PKSqueezePaletteDrawingTool_resetPointerInteractionTransform__block_invoke(uint64_t a1)
{
  [(PKSqueezePaletteDrawingTool *)&v5 _makeTransformForPointerInteractionVisible:0];
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

- (CGAffineTransform)_makeTransformForPointerInteractionVisible:(int)a3
{
  v3 = result;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a2 + 101);
    [WeakRetained toolAngle:a2];
    v8 = v7;

    if (a3)
    {
      v9 = *&PKSqueezePaletteToolHoverOffsetY;
    }

    else
    {
      v9 = -*&PKSqueezePaletteToolHoverOffsetY;
    }

    *&v3->a = 0u;
    *&v3->c = 0u;
    *&v3->tx = 0u;
    [a2 transform];
    v10 = sin(v8);
    return CGAffineTransformTranslate(v3, &v11, 0.0, v10 * v9);
  }

  else
  {
    *&result->c = 0u;
    *&result->tx = 0u;
    *&result->a = 0u;
  }

  return result;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v7 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__PKSqueezePaletteDrawingTool_pointerInteraction_willEnterRegion_animator___block_invoke;
  v9[3] = &unk_1E82D6E70;
  v10 = v7;
  v11 = self;
  v8 = v7;
  [a5 addAnimations:v9];
}

void __75__PKSqueezePaletteDrawingTool_pointerInteraction_willEnterRegion_animator___block_invoke(uint64_t a1)
{
  [(PKSqueezePaletteDrawingTool *)&v4 _makeTransformForPointerInteractionVisible:1];
  v2 = [*(a1 + 32) view];
  v3 = v4;
  [v2 setTransform:&v3];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v7 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PKSqueezePaletteDrawingTool_pointerInteraction_willExitRegion_animator___block_invoke;
  v9[3] = &unk_1E82D6E70;
  v10 = v7;
  v11 = self;
  v8 = v7;
  [a5 addAnimations:v9];
}

void __74__PKSqueezePaletteDrawingTool_pointerInteraction_willExitRegion_animator___block_invoke(uint64_t a1)
{
  [(PKSqueezePaletteDrawingTool *)&v4 _makeTransformForPointerInteractionVisible:0];
  v2 = [*(a1 + 32) view];
  v3 = v4;
  [v2 setTransform:&v3];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  [a5 rect];
  v5 = MEMORY[0x1E69DCDC0];

  return [v5 regionWithRect:0 identifier:?];
}

@end