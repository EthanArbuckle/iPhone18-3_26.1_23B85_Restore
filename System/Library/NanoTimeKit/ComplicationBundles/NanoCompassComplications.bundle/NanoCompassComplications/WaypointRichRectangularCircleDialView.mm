@interface WaypointRichRectangularCircleDialView
- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)a3;
- (id)_symbolSizeAdjustmentsForDevice:(id)a3;
- (id)initFullColorImageViewWithDevice:(id)a3;
@end

@implementation WaypointRichRectangularCircleDialView

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = WaypointRichRectangularCircleDialView;
  return [(WaypointBaseRichDialView *)&v4 initFullColorImageViewWithDevice:a3];
}

- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)a3
{
  result = sub_23BD334FC(self, a4);
  v6 = unk_27E1C4DE0;
  *&retstr->var3.height = xmmword_27E1C4DD0;
  *&retstr->var4.height = v6;
  *&retstr->var6 = qword_27E1C4DF0;
  v7 = *&qword_27E1C4DC0;
  *&retstr->var0 = xmmword_27E1C4DB0;
  *&retstr->var2 = v7;
  return result;
}

- (id)_symbolSizeAdjustmentsForDevice:(id)a3
{
  v4 = objc_msgSend_sizeClass(a3, a2, a3, v3);
  if ((v4 - 2) >= 8)
  {
    v8 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v5, v6, v7);
  }

  else
  {
    v8 = qword_278B941D8[v4 - 2];
  }

  return v8;
}

@end