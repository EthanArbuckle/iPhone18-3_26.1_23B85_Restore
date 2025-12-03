@interface BKSegmentedControl
- ($F0C0194F19B8DA0DC4F6EEC222945A9A)_appearanceStruct;
- (BKSegmentedControl)initWithItems:(id)items;
- (CGPoint)frameOffset;
- (CGSize)textShadowOffset;
- (void)updateAppearance;
@end

@implementation BKSegmentedControl

- (BKSegmentedControl)initWithItems:(id)items
{
  v6.receiver = self;
  v6.super_class = BKSegmentedControl;
  v3 = [(BKSegmentedControl *)&v6 initWithItems:items];
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
  background = [(BKSegmentedControl *)self background];

  if (background)
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
  font = [(BKSegmentedControl *)self font];
  if (font)
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
  textColor = [(BKSegmentedControl *)self textColor];
  controlSize = [(BKSegmentedControl *)self controlSize];
  if (controlSize == 1)
  {
    [(BKSegmentedControl *)self dividerMini];
  }

  else
  {
    [(BKSegmentedControl *)self divider];
  }
  v8 = ;
  dividerLeftPressed = [(BKSegmentedControl *)self dividerLeftPressed];
  if (dividerLeftPressed)
  {
    dividerLeftPressed2 = [(BKSegmentedControl *)self dividerLeftPressed];
  }

  else
  {
    dividerLeftPressed2 = v8;
  }

  v11 = dividerLeftPressed2;

  dividerRightPressed = [(BKSegmentedControl *)self dividerRightPressed];
  if (dividerRightPressed)
  {
    dividerRightPressed2 = [(BKSegmentedControl *)self dividerRightPressed];
  }

  else
  {
    dividerRightPressed2 = v8;
  }

  v14 = dividerRightPressed2;

  if (controlSize == 1)
  {
    backgroundMini = [(BKSegmentedControl *)self backgroundMini];
    [(BKSegmentedControl *)self backgroundSelectedMini];
  }

  else
  {
    backgroundMini = [(BKSegmentedControl *)self background];
    [(BKSegmentedControl *)self backgroundSelected];
  }
  v16 = ;
  [(BKSegmentedControl *)self textShadowOffset];
  retstr->var3.var0 = backgroundMini;
  retstr->var3.var1 = v8;
  retstr->var3.var2 = v8;
  retstr->var3.var3 = textColor;
  retstr->var3.var4 = 0;
  retstr->var3.var5.width = v17;
  retstr->var3.var5.height = v18;
  retstr->var4.var0 = v16;
  retstr->var4.var1 = v11;
  retstr->var4.var2 = v14;
  retstr->var4.var3 = textColor;
  retstr->var4.var4 = 0;
  retstr->var4.var5.width = v17;
  retstr->var4.var5.height = v18;
  retstr->var5.var0 = backgroundMini;
  retstr->var5.var1 = v8;
  retstr->var5.var2 = v8;
  retstr->var5.var3 = textColor;
  retstr->var5.var4 = 0;
  retstr->var5.var5.width = v17;
  retstr->var5.var5.height = v18;
  retstr->var6.var0 = backgroundMini;
  retstr->var6.var1 = v8;
  retstr->var6.var2 = v8;
  retstr->var6.var3 = textColor;
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