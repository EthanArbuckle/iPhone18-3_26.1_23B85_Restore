@interface PKSqueezePaletteDrawingTool
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGAffineTransform)_makeTransformForPointerInteractionVisible:(int)visible;
- (id)initWithTool:(void *)tool;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (uint64_t)resetPointerInteractionTransform;
- (void)_updateUI;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setDragging:(uint64_t)dragging;
- (void)setSelected:(int)selected animated:(void *)animated completion:;
- (void)setTool:(uint64_t)tool;
@end

@implementation PKSqueezePaletteDrawingTool

- (id)initWithTool:(void *)tool
{
  v39[6] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (tool)
  {
    v38.receiver = tool;
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
      layer = [*(v4 + 95) layer];
      [layer setMasksToBounds:0];

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
      topAnchor = [*(v4 + 95) topAnchor];
      topAnchor2 = [v4 topAnchor];
      v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:*(v4 + 97)];
      v19 = *(v4 + 98);
      *(v4 + 98) = v18;

      v31 = MEMORY[0x1E696ACD8];
      v39[0] = *(v4 + 98);
      bottomAnchor = [*(v4 + 95) bottomAnchor];
      bottomAnchor2 = [v4 bottomAnchor];
      v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:*&PKSqueezePaletteToolHoverOffsetY];
      v39[1] = v34;
      widthAnchor = [*(v4 + 95) widthAnchor];
      widthAnchor2 = [v4 widthAnchor];
      v30 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v39[2] = v30;
      topAnchor3 = [*(v4 + 93) topAnchor];
      topAnchor4 = [*(v4 + 95) topAnchor];
      v22 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v39[3] = v22;
      centerXAnchor = [*(v4 + 93) centerXAnchor];
      centerXAnchor2 = [*(v4 + 95) centerXAnchor];
      v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v39[4] = v25;
      widthAnchor3 = [*(v4 + 93) widthAnchor];
      v27 = [widthAnchor3 constraintEqualToConstant:*(v4 + 96)];
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
  if (self)
  {
    [*(self + 744) setSelectedToolOffsetEnabled:0];
    [*(self + 744) setSelected:{objc_msgSend(self, "isSelected")}];
    [*(self + 744) setUserInteractionEnabled:0];
    [*(self + 744) setEdgeLocation:4];
    [*(self + 744) setAllowHDR:*(self + 801)];
    isSelected = [self isSelected];
    v3 = 0;
    if ((isSelected & 1) == 0)
    {
      v3 = *(self + 800) == 0;
    }

    [*(self + 792) setEnabled:v3];
    if (*(self + 800) == 1)
    {
      [(PKSqueezePaletteDrawingTool *)self resetPointerInteractionTransform];
    }

    isSelected2 = [self isSelected];
    v5 = 8.0;
    if (isSelected2)
    {
      v5 = -16.0;
    }

    *(self + 776) = v5;
    [*(self + 784) setConstant:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(self + 744) _setOverrideLabelCenterOffsetYHandler:&__block_literal_global_16];
    }

    [*(self + 744) setColorUserInterfaceStyle:*(self + 824)];
    v6 = MEMORY[0x1E696AEC0];
    toolName = [*(self + 744) toolName];
    v8 = [v6 stringWithFormat:@"MiniPalette-Tool-%@", toolName];
    [self setAccessibilityIdentifier:v8];

    toolName2 = [*(self + 744) toolName];
    [self setAccessibilityLabel:toolName2];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  [(PKSqueezePaletteDrawingTool *)self hitTestInsets];
  v9.f64[1] = v8;
  v11.f64[1] = v10;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *MEMORY[0x1E69DDCE0]), vceqq_f64(v11, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    v29.receiver = self;
    v29.super_class = PKSqueezePaletteDrawingTool;
    v26 = [(PKSqueezePaletteDrawingTool *)&v29 pointInside:eventCopy withEvent:x, y];
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

- (void)setSelected:(int)selected animated:(void *)animated completion:
{
  animatedCopy = animated;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = PKSqueezePaletteDrawingTool;
    objc_msgSendSuper2(&v9, sel_setSelected_, a2);
    [(PKSqueezePaletteDrawingTool *)self _updateUI];
    if (selected)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __63__PKSqueezePaletteDrawingTool_setSelected_animated_completion___block_invoke;
      v8[3] = &unk_1E82D7148;
      v8[4] = self;
      [PKPaletteToolViewAnimation performSelectionAnimations:v8 completion:animatedCopy];
    }
  }
}

- (void)setTool:(uint64_t)tool
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (tool)
  {
    if (!v4)
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Tool parameter can not be nil." userInfo:0];
      objc_exception_throw(v17);
    }

    if (*(tool + 816) != v4)
    {
      objc_storeStrong((tool + 816), a2);
      [*(tool + 744) removeFromSuperview];
      v6 = *(tool + 744);
      *(tool + 744) = 0;

      v7 = [(PKPaletteToolViewFactory *)*(tool + 752) makePaletteToolViewForTool:?];
      v8 = *(tool + 744);
      *(tool + 744) = v7;

      [*(tool + 744) setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(tool + 760) addSubview:*(tool + 744)];
      v18 = MEMORY[0x1E696ACD8];
      topAnchor = [*(tool + 744) topAnchor];
      topAnchor2 = [*(tool + 760) topAnchor];
      v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v20[0] = v10;
      centerXAnchor = [*(tool + 744) centerXAnchor];
      centerXAnchor2 = [*(tool + 760) centerXAnchor];
      v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v20[1] = v13;
      widthAnchor = [*(tool + 744) widthAnchor];
      v15 = [widthAnchor constraintEqualToConstant:*(tool + 768)];
      v20[2] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
      [v18 activateConstraints:v16];

      [(PKSqueezePaletteDrawingTool *)tool _updateUI];
    }
  }
}

- (void)setDragging:(uint64_t)dragging
{
  if (dragging && *(dragging + 800) != a2)
  {
    *(dragging + 800) = a2;
    [*(dragging + 792) invalidate];

    [(PKSqueezePaletteDrawingTool *)dragging _updateUI];
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

- (CGAffineTransform)_makeTransformForPointerInteractionVisible:(int)visible
{
  v3 = result;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a2 + 101);
    [WeakRetained toolAngle:a2];
    v8 = v7;

    if (visible)
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

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  interactionCopy = interaction;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__PKSqueezePaletteDrawingTool_pointerInteraction_willEnterRegion_animator___block_invoke;
  v9[3] = &unk_1E82D6E70;
  v10 = interactionCopy;
  selfCopy = self;
  v8 = interactionCopy;
  [animator addAnimations:v9];
}

void __75__PKSqueezePaletteDrawingTool_pointerInteraction_willEnterRegion_animator___block_invoke(uint64_t a1)
{
  [(PKSqueezePaletteDrawingTool *)&v4 _makeTransformForPointerInteractionVisible:1];
  v2 = [*(a1 + 32) view];
  v3 = v4;
  [v2 setTransform:&v3];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  interactionCopy = interaction;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PKSqueezePaletteDrawingTool_pointerInteraction_willExitRegion_animator___block_invoke;
  v9[3] = &unk_1E82D6E70;
  v10 = interactionCopy;
  selfCopy = self;
  v8 = interactionCopy;
  [animator addAnimations:v9];
}

void __74__PKSqueezePaletteDrawingTool_pointerInteraction_willExitRegion_animator___block_invoke(uint64_t a1)
{
  [(PKSqueezePaletteDrawingTool *)&v4 _makeTransformForPointerInteractionVisible:0];
  v2 = [*(a1 + 32) view];
  v3 = v4;
  [v2 setTransform:&v3];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  [region rect];
  v5 = MEMORY[0x1E69DCDC0];

  return [v5 regionWithRect:0 identifier:?];
}

@end