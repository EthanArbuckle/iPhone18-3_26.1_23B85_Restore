@interface AltitudeModularSmallView
- (id)initFullColorImageViewWithDevice:(id)device;
@end

@implementation AltitudeModularSmallView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = AltitudeModularSmallView;
  v5 = [(AltitudeModularSmallView *)&v16 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_setDevice_(v5, v6, deviceCopy, v7);
    v12 = objc_msgSend_greenColor(MEMORY[0x277D75348], v9, v10, v11);
    objc_msgSend_setBackgroundColor_(v8, v13, v12, v14);
  }

  return v8;
}

@end