@interface NTKGalleonSignalStrengthView
- (NTKGalleonSignalStrengthView)initWithFrame:(CGRect)a3;
- (void)setPalette:(id)a3;
@end

@implementation NTKGalleonSignalStrengthView

- (NTKGalleonSignalStrengthView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(MEMORY[0x277D2BFF8]);
  objc_msgSend_setDotDiameter_(v8, v9, v10, v11, 7.5);
  v14.receiver = self;
  v14.super_class = NTKGalleonSignalStrengthView;
  v12 = [(NTKExplorerStatusView *)&v14 initWithFrame:v8 dotLayoutConstraints:0 dotColorOptions:x, y, width, height];

  return v12;
}

- (void)setPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);
  v5 = a3;
  v20 = objc_alloc_init(MEMORY[0x277D2BFF0]);
  v9 = objc_msgSend_signalStrengthColor(v5, v6, v7, v8);
  objc_msgSend_setConnectedDotColor_(v20, v10, v9, v11);

  v15 = objc_msgSend_signalStrengthColor(v5, v12, v13, v14);

  objc_msgSend_setNoServiceDotColor_(v20, v16, v15, v17);
  objc_msgSend_setDotColorOptions_(self, v18, v20, v19);
}

@end