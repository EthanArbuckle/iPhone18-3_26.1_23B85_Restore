@interface CNPREditorColorPalette
+ (id)standardPalette;
- (CNPREditorColorPalette)initWithEditorColorPalette:(id)palette;
- (id)colors;
@end

@implementation CNPREditorColorPalette

- (id)colors
{
  array = [MEMORY[0x1E695DF70] array];
  colors = [(PREditorColorPalette *)self->_wrappedEditorColorPalette colors];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__CNPREditorColorPalette_colors__block_invoke;
  v7[3] = &unk_1E74E7488;
  v5 = array;
  v8 = v5;
  [colors enumerateObjectsUsingBlock:v7];

  return v5;
}

void __32__CNPREditorColorPalette_colors__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 color];
  [v2 addObject:v3];
}

- (CNPREditorColorPalette)initWithEditorColorPalette:(id)palette
{
  paletteCopy = palette;
  v9.receiver = self;
  v9.super_class = CNPREditorColorPalette;
  v6 = [(CNPREditorColorPalette *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedEditorColorPalette, palette);
  }

  return v7;
}

+ (id)standardPalette
{
  v2 = [CNPREditorColorPalette alloc];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getPREditorColorPaletteClass_softClass;
  v12 = getPREditorColorPaletteClass_softClass;
  if (!getPREditorColorPaletteClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getPREditorColorPaletteClass_block_invoke;
    v8[3] = &unk_1E74E7518;
    v8[4] = &v9;
    __getPREditorColorPaletteClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  standardPalette = [v3 standardPalette];
  v6 = [(CNPREditorColorPalette *)v2 initWithEditorColorPalette:standardPalette];

  return v6;
}

@end