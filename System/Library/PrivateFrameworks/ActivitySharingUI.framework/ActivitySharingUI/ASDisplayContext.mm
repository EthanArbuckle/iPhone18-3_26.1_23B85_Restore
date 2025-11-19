@interface ASDisplayContext
+ (id)_companionContext;
+ (id)_gizmoContext;
+ (id)displayContextWithName:(id)a3;
+ (void)_contentSizeChangeForContext:(id)a3 withBlock:(id)a4;
- (id)keyColorForDisplayMode:(int64_t)a3;
- (id)titleColorForDisplayMode:(int64_t)a3;
@end

@implementation ASDisplayContext

void __37__ASDisplayContext__companionContext__block_invoke()
{
  v29[3] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(ASDisplayContext);
  v1 = _companionContext___companionContext;
  _companionContext___companionContext = v0;

  v2 = [MEMORY[0x277D74300] fu_sausageFontOfSize:46.0];
  [_companionContext___companionContext setDataFont:v2];

  v3 = [MEMORY[0x277D74300] fu_sausageFontOfSize:30.0];
  [_companionContext___companionContext setMultilineDataFont:v3];

  v4 = [_companionContext___companionContext dataFont];
  v5 = SmallCapsFontForFont(v4);
  [_companionContext___companionContext setUnitFont:v5];

  v6 = [_companionContext___companionContext multilineDataFont];
  v7 = SmallCapsFontForFont(v6);
  [_companionContext___companionContext setMultilineUnitFont:v7];

  v28[0] = &unk_2850F9BB0;
  v8 = [MEMORY[0x277CE8E80] energyColors];
  v9 = [v8 nonGradientTextColor];
  v29[0] = v9;
  v28[1] = &unk_2850F9BC8;
  v10 = [MEMORY[0x277CE8E80] briskColors];
  v11 = [v10 nonGradientTextColor];
  v29[1] = v11;
  v28[2] = &unk_2850F9BE0;
  v12 = [MEMORY[0x277CE8E80] energyColors];
  v13 = [v12 nonGradientTextColor];
  v29[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  [_companionContext___companionContext setTitleColors:v14];

  v26[0] = &unk_2850F9BF8;
  v25 = [MEMORY[0x277CE8E80] energyColors];
  v15 = [v25 nonGradientTextColor];
  v27[0] = v15;
  v26[1] = &unk_2850F9BB0;
  v16 = [MEMORY[0x277CE8E80] energyColors];
  v17 = [v16 nonGradientTextColor];
  v27[1] = v17;
  v26[2] = &unk_2850F9BC8;
  v18 = [MEMORY[0x277CE8E80] briskColors];
  v19 = [v18 nonGradientTextColor];
  v27[2] = v19;
  v26[3] = &unk_2850F9C10;
  v20 = [MEMORY[0x277D75348] lightGrayColor];
  v27[3] = v20;
  v26[4] = &unk_2850F9BE0;
  v21 = [MEMORY[0x277CE8E80] energyColors];
  v22 = [v21 nonGradientTextColor];
  v27[4] = v22;
  v26[5] = &unk_2850F9C28;
  v23 = [MEMORY[0x277D75348] lightGrayColor];
  v27[5] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:6];
  [_companionContext___companionContext setKeyColors:v24];
}

void __37__ASDisplayContext__companionContext__block_invoke_27(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x277D76918];
  v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:0x8000 options:0];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
  [_companionContext___companionContext setDescriptionFont:v4];

  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:v3];
  [_companionContext___companionContext setNameFont:v5];

  v6 = *(_companionContext___companionContext + 72);
  *(_companionContext___companionContext + 72) = v2;
}

+ (id)_companionContext
{
  if (_companionContext_onceToken != -1)
  {
    +[ASDisplayContext _companionContext];
  }

  [a1 _contentSizeChangeForContext:_companionContext___companionContext withBlock:&__block_literal_global_30];
  v3 = _companionContext___companionContext;

  return v3;
}

+ (void)_contentSizeChangeForContext:(id)a3 withBlock:(id)a4
{
  v10 = a4;
  v5 = MEMORY[0x277D75128];
  v6 = a3;
  v7 = [v5 sharedApplication];
  v8 = [v7 preferredContentSizeCategory];

  v9 = v6[9];
  if (([v8 isEqualToString:v9] & 1) == 0)
  {
    v10[2](v10, v8);
  }
}

+ (id)_gizmoContext
{
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:0x8000 options:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASDisplayContext__gizmoContext__block_invoke;
  block[3] = &unk_278C52F18;
  v4 = v3;
  v13 = v4;
  if (_gizmoContext_onceToken[0] != -1)
  {
    dispatch_once(_gizmoContext_onceToken, block);
  }

  v5 = _gizmoContext___gizmoContext;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__ASDisplayContext__gizmoContext__block_invoke_2;
  v10[3] = &unk_278C53370;
  v11 = v4;
  v6 = v4;
  [a1 _contentSizeChangeForContext:v5 withBlock:v10];
  v7 = _gizmoContext___gizmoContext;
  v8 = _gizmoContext___gizmoContext;

  return v7;
}

void __33__ASDisplayContext__gizmoContext__block_invoke(uint64_t a1)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(ASDisplayContext);
  v3 = _gizmoContext___gizmoContext;
  _gizmoContext___gizmoContext = v2;

  v4 = [MEMORY[0x277D74300] fontWithDescriptor:*(a1 + 32) size:0.0];
  [_gizmoContext___gizmoContext setNameFont:v4];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:*(a1 + 32) size:0.0];
  [_gizmoContext___gizmoContext setDataFont:v5];

  v6 = [MEMORY[0x277D74300] fontWithDescriptor:*(a1 + 32) size:0.0];
  [_gizmoContext___gizmoContext setDescriptionFont:v6];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:*(a1 + 32) size:0.0];
  [_gizmoContext___gizmoContext setMultilineDataFont:v7];

  v8 = [_gizmoContext___gizmoContext dataFont];
  v9 = SmallCapsFontForFont(v8);
  [_gizmoContext___gizmoContext setUnitFont:v9];

  v10 = [_gizmoContext___gizmoContext multilineDataFont];
  v11 = SmallCapsFontForFont(v10);
  [_gizmoContext___gizmoContext setMultilineUnitFont:v11];

  v32[0] = &unk_2850F9BB0;
  v12 = [MEMORY[0x277CE8E80] energyColors];
  v13 = [v12 nonGradientTextColor];
  v33[0] = v13;
  v32[1] = &unk_2850F9BC8;
  v14 = [MEMORY[0x277CE8E80] briskColors];
  v15 = [v14 nonGradientTextColor];
  v33[1] = v15;
  v32[2] = &unk_2850F9BE0;
  v16 = [MEMORY[0x277CE8E80] energyColors];
  v17 = [v16 nonGradientTextColor];
  v33[2] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  [_gizmoContext___gizmoContext setTitleColors:v18];

  v30[0] = &unk_2850F9BF8;
  v29 = [MEMORY[0x277CE8E80] energyColors];
  v19 = [v29 nonGradientTextColor];
  v31[0] = v19;
  v30[1] = &unk_2850F9BB0;
  v20 = [MEMORY[0x277CE8E80] energyColors];
  v21 = [v20 nonGradientTextColor];
  v31[1] = v21;
  v30[2] = &unk_2850F9BC8;
  v22 = [MEMORY[0x277CE8E80] briskColors];
  v23 = [v22 nonGradientTextColor];
  v31[2] = v23;
  v30[3] = &unk_2850F9C10;
  v24 = [MEMORY[0x277D75348] lightGrayColor];
  v31[3] = v24;
  v30[4] = &unk_2850F9BE0;
  v25 = [MEMORY[0x277CE8E80] energyColors];
  v26 = [v25 nonGradientTextColor];
  v31[4] = v26;
  v30[5] = &unk_2850F9C28;
  v27 = [MEMORY[0x277D75348] lightGrayColor];
  v31[5] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:6];
  [_gizmoContext___gizmoContext setKeyColors:v28];
}

void __33__ASDisplayContext__gizmoContext__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:*(a1 + 32) size:0.0];
  [_gizmoContext___gizmoContext setNameFont:v4];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:*(a1 + 32) size:0.0];
  [_gizmoContext___gizmoContext setDataFont:v5];

  v6 = [MEMORY[0x277D74300] fontWithDescriptor:*(a1 + 32) size:0.0];
  [_gizmoContext___gizmoContext setDescriptionFont:v6];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:*(a1 + 32) size:0.0];
  [_gizmoContext___gizmoContext setMultilineDataFont:v7];

  v8 = [_gizmoContext___gizmoContext dataFont];
  v9 = SmallCapsFontForFont(v8);
  [_gizmoContext___gizmoContext setUnitFont:v9];

  v10 = [_gizmoContext___gizmoContext multilineDataFont];
  v11 = SmallCapsFontForFont(v10);
  [_gizmoContext___gizmoContext setMultilineUnitFont:v11];

  v12 = *(_gizmoContext___gizmoContext + 72);
  *(_gizmoContext___gizmoContext + 72) = v3;
}

+ (id)displayContextWithName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ASDisplayContextCompanion"])
  {
    v4 = +[ASDisplayContext _companionContext];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"ASDisplayContextGizmo"])
  {
    v4 = +[ASDisplayContext _gizmoContext];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)titleColorForDisplayMode:(int64_t)a3
{
  v5 = [(ASDisplayContext *)self titleColors];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = [(ASDisplayContext *)self titleColors];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v10 = [v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = [MEMORY[0x277D75348] whiteColor];
  }

  return v10;
}

- (id)keyColorForDisplayMode:(int64_t)a3
{
  v5 = [(ASDisplayContext *)self keyColors];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = [(ASDisplayContext *)self keyColors];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v10 = [v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = [MEMORY[0x277D75348] whiteColor];
  }

  return v10;
}

@end