@interface NTKGalleonSignalStrengthView
- (NTKGalleonSignalStrengthView)initWithFrame:(CGRect)frame;
- (void)setPalette:(id)palette;
@end

@implementation NTKGalleonSignalStrengthView

- (NTKGalleonSignalStrengthView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_alloc_init(MEMORY[0x277D2BFF8]);
  objc_msgSend_setDotDiameter_(v8, v9, v10, v11, 7.5);
  v14.receiver = self;
  v14.super_class = NTKGalleonSignalStrengthView;
  height = [(NTKExplorerStatusView *)&v14 initWithFrame:v8 dotLayoutConstraints:0 dotColorOptions:x, y, width, height];

  return height;
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  paletteCopy = palette;
  v20 = objc_alloc_init(MEMORY[0x277D2BFF0]);
  v9 = objc_msgSend_signalStrengthColor(paletteCopy, v6, v7, v8);
  objc_msgSend_setConnectedDotColor_(v20, v10, v9, v11);

  v15 = objc_msgSend_signalStrengthColor(paletteCopy, v12, v13, v14);

  objc_msgSend_setNoServiceDotColor_(v20, v16, v15, v17);
  objc_msgSend_setDotColorOptions_(self, v18, v20, v19);
}

@end