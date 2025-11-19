@interface AltitudeRichCornerDialView
- (id)_newBottomView;
- (id)_newTopView;
@end

@implementation AltitudeRichCornerDialView

- (id)_newTopView
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = NanoCompassComplicationImageNamed(@"Altitude/Corner/Top");
  v6 = objc_msgSend_initWithImage_(v2, v4, v3, v5);

  return v6;
}

- (id)_newBottomView
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = NanoCompassComplicationImageNamed(@"Altitude/Corner/Bottom");
  v6 = objc_msgSend_initWithImage_(v2, v4, v3, v5);

  return v6;
}

@end