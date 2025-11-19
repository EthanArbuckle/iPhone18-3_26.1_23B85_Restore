@interface PKSqueezePaletteViewTapRulerAction
- (id)initWithRulerTool:(id *)a1;
- (void)performAction;
@end

@implementation PKSqueezePaletteViewTapRulerAction

- (id)initWithRulerTool:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PKSqueezePaletteViewTapRulerAction;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

- (void)performAction
{
  if (a1)
  {
    objc_initWeak(&location, *(a1 + 8));
    v2 = *(a1 + 8);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __51__PKSqueezePaletteViewTapRulerAction_performAction__block_invoke;
    v3[3] = &unk_1E82D7C88;
    objc_copyWeak(&v4, &location);
    [(PKSqueezePaletteDrawingTool *)v2 setSelected:1 animated:v3 completion:?];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __51__PKSqueezePaletteViewTapRulerAction_performAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKSqueezePaletteDrawingTool *)WeakRetained setSelected:1 animated:0 completion:?];
}

@end