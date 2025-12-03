@interface PKSqueezePaletteStrokeWeightButton
- (double)initWithStrokeWeight:(void *)weight;
@end

@implementation PKSqueezePaletteStrokeWeightButton

- (double)initWithStrokeWeight:(void *)weight
{
  if (!weight)
  {
    return 0;
  }

  v9.receiver = weight;
  v9.super_class = PKSqueezePaletteStrokeWeightButton;
  v3 = objc_msgSendSuper2(&v9, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[93] = a2;
    objc_initWeak(&location, v3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__PKSqueezePaletteStrokeWeightButton_initWithStrokeWeight___block_invoke;
    v6[3] = &unk_1E82D9230;
    objc_copyWeak(&v7, &location);
    [v4 setPointerStyleProvider:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v4;
}

id __59__PKSqueezePaletteStrokeWeightButton_initWithStrokeWeight___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (v9 = WeakRetained, v10 = objc_loadWeakRetained((a1 + 32)), v11 = [v10 isSelected], v10, v9, (v11 & 1) == 0))
  {
    v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v6];
    v14 = [MEMORY[0x1E69DCDA8] effectWithPreview:v13];
    v12 = [MEMORY[0x1E69DCDD0] styleWithEffect:v14 shape:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end