@interface WaypointExtraLargeRichCircularDialView
- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)device;
- (id)_symbolSizeAdjustmentsForDevice:(id)device;
- (id)initFullColorImageViewWithDevice:(id)device;
@end

@implementation WaypointExtraLargeRichCircularDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = WaypointExtraLargeRichCircularDialView;
  return [(WaypointBaseRichDialView *)&v4 initFullColorImageViewWithDevice:device];
}

- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)device
{
  result = sub_23BD37B48(self, a4);
  v6 = unk_27E1C4F98;
  *&retstr->var3.height = xmmword_27E1C4F88;
  *&retstr->var4.height = v6;
  *&retstr->var6 = qword_27E1C4FA8;
  v7 = *&qword_27E1C4F78;
  *&retstr->var0 = xmmword_27E1C4F68;
  *&retstr->var2 = v7;
  return result;
}

- (id)_symbolSizeAdjustmentsForDevice:(id)device
{
  v4 = objc_msgSend_sizeClass(device, a2, device, v3);
  if ((v4 - 2) >= 8)
  {
    v8 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v5, v6, v7);
  }

  else
  {
    v8 = qword_278B94328[v4 - 2];
  }

  return v8;
}

@end