@interface AltitudeRichXLDialView
- (CircularLayoutConstants)_layoutConstantsForDevice:(id)device;
- (id)unitFont;
- (id)valueFont;
@end

@implementation AltitudeRichXLDialView

- (CircularLayoutConstants)_layoutConstantsForDevice:(id)device
{
  p_layoutConstants = &self->_layoutConstants;
  sub_23BD2B63C(self, device);
  v4 = *&qword_27E1C4B28;
  v5 = *&qword_27E1C4B30;
  v6 = *&qword_27E1C4B38;
  v7 = *&qword_27E1C4B40;
  *&p_layoutConstants->lineSpacing = qword_27E1C4B28;
  p_layoutConstants->symbolSize = v5;
  p_layoutConstants->unitFontSize = v6;
  p_layoutConstants->valueFontSize = v7;
  result.valueFontSize = v7;
  result.unitFontSize = v6;
  result.symbolSize = v5;
  result.lineSpacing = v4;
  return result;
}

- (id)unitFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD2B4A4;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C4B10 != -1)
  {
    dispatch_once(&qword_27E1C4B10, block);
  }

  return qword_27E1C4B00;
}

- (id)valueFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD2B5CC;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C4B20 != -1)
  {
    dispatch_once(&qword_27E1C4B20, block);
  }

  return qword_27E1C4B18;
}

@end