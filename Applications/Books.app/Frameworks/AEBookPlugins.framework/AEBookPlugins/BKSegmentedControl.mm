@interface BKSegmentedControl
- ($F0C0194F19B8DA0DC4F6EEC222945A9A)_appearanceStruct;
- (BKSegmentedControl)initWithItems:(id)a3;
- (CGPoint)frameOffset;
- (CGSize)textShadowOffset;
- (void)updateAppearance;
@end

@implementation BKSegmentedControl

- (BKSegmentedControl)initWithItems:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKSegmentedControl;
  v3 = [(BKSegmentedControl *)&v6 initWithItems:a3];
  v4 = v3;
  if (v3)
  {
    [(BKSegmentedControl *)v3 setFont:0];
    [(BKSegmentedControl *)v4 updateAppearance];
  }

  return v4;
}

- (void)updateAppearance
{
  v3 = [(BKSegmentedControl *)self background];

  if (v3)
  {
    [(BKSegmentedControl *)self _appearanceStruct:0];
    [(BKSegmentedControl *)self _setSegmentedControlAppearance:&v4];
  }
}

- ($F0C0194F19B8DA0DC4F6EEC222945A9A)_appearanceStruct
{
  *&retstr->var7 = 0;
  retstr->var6.var5 = 0u;
  *&retstr->var6.var3 = 0u;
  *&retstr->var6.var1 = 0u;
  *&retstr->var5.var5.height = 0u;
  *&retstr->var5.var4 = 0u;
  *&retstr->var5.var2 = 0u;
  *&retstr->var5.var0 = 0u;
  retstr->var4.var5 = 0u;
  *&retstr->var4.var3 = 0u;
  *&retstr->var4.var1 = 0u;
  *&retstr->var3.var5.height = 0u;
  *&retstr->var3.var4 = 0u;
  *&retstr->var3.var2 = 0u;
  *&retstr->var3.var0 = 0u;
  v5 = [(BKSegmentedControl *)self font];
  if (v5)
  {
    [(BKSegmentedControl *)self font];
  }

  else
  {
    [UIFont boldSystemFontOfSize:12.0];
  }
  v6 = ;

  retstr->var0 = v6;
  retstr->var1 = 0.0;
  retstr->var2 = 0.0;
  retstr->var7 = 1;
  v20 = [(BKSegmentedControl *)self textColor];
  v7 = [(BKSegmentedControl *)self controlSize];
  if (v7 == 1)
  {
    [(BKSegmentedControl *)self dividerMini];
  }

  else
  {
    [(BKSegmentedControl *)self divider];
  }
  v8 = ;
  v9 = [(BKSegmentedControl *)self dividerLeftPressed];
  if (v9)
  {
    v10 = [(BKSegmentedControl *)self dividerLeftPressed];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [(BKSegmentedControl *)self dividerRightPressed];
  if (v12)
  {
    v13 = [(BKSegmentedControl *)self dividerRightPressed];
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;

  if (v7 == 1)
  {
    v15 = [(BKSegmentedControl *)self backgroundMini];
    [(BKSegmentedControl *)self backgroundSelectedMini];
  }

  else
  {
    v15 = [(BKSegmentedControl *)self background];
    [(BKSegmentedControl *)self backgroundSelected];
  }
  v16 = ;
  [(BKSegmentedControl *)self textShadowOffset];
  retstr->var3.var0 = v15;
  retstr->var3.var1 = v8;
  retstr->var3.var2 = v8;
  retstr->var3.var3 = v20;
  retstr->var3.var4 = 0;
  retstr->var3.var5.width = v17;
  retstr->var3.var5.height = v18;
  retstr->var4.var0 = v16;
  retstr->var4.var1 = v11;
  retstr->var4.var2 = v14;
  retstr->var4.var3 = v20;
  retstr->var4.var4 = 0;
  retstr->var4.var5.width = v17;
  retstr->var4.var5.height = v18;
  retstr->var5.var0 = v15;
  retstr->var5.var1 = v8;
  retstr->var5.var2 = v8;
  retstr->var5.var3 = v20;
  retstr->var5.var4 = 0;
  retstr->var5.var5.width = v17;
  retstr->var5.var5.height = v18;
  retstr->var6.var0 = v15;
  retstr->var6.var1 = v8;
  retstr->var6.var2 = v8;
  retstr->var6.var3 = v20;
  retstr->var6.var4 = 0;
  retstr->var6.var5.width = v17;
  retstr->var6.var5.height = v18;

  return result;
}

- (CGSize)textShadowOffset
{
  width = self->_textShadowOffset.width;
  height = self->_textShadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)frameOffset
{
  x = self->_frameOffset.x;
  y = self->_frameOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end