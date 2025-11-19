@interface WaypointRichCornerDialView
- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)a3;
- (id)_symbolSizeAdjustmentsForDevice:(id)a3;
- (id)initFullColorImageViewWithDevice:(id)a3;
- (id)monochromeOtherViews;
@end

@implementation WaypointRichCornerDialView

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = WaypointRichCornerDialView;
  return [(WaypointBaseRichDialView *)&v4 initFullColorImageViewWithDevice:a3];
}

- (id)monochromeOtherViews
{
  v17[3] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_needleView(self, a2, v2, v3);
  v9 = objc_msgSend_ticksView(self, v6, v7, v8, v5);
  v17[1] = v9;
  v13 = objc_msgSend_waypointView(self, v10, v11, v12);
  v17[2] = v13;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v17, 3);

  return v15;
}

- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)a3
{
  result = sub_23BD32378(self, a4);
  v6 = unk_27E1C4D50;
  *&retstr->var3.height = xmmword_27E1C4D40;
  *&retstr->var4.height = v6;
  *&retstr->var6 = qword_27E1C4D60;
  v7 = *&qword_27E1C4D30;
  *&retstr->var0 = xmmword_27E1C4D20;
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
    v8 = *(&off_278B94198 + v4 - 2);
  }

  return v8;
}

@end