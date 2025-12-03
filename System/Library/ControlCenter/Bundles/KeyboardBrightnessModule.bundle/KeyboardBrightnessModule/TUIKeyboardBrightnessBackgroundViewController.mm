@interface TUIKeyboardBrightnessBackgroundViewController
- (TUIKeyboardBrightnessBackgroundViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation TUIKeyboardBrightnessBackgroundViewController

- (TUIKeyboardBrightnessBackgroundViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v23.receiver = self;
  v23.super_class = TUIKeyboardBrightnessBackgroundViewController;
  v4 = [(TUIKeyboardBrightnessBackgroundViewController *)&v23 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = MEMORY[0x29EDC7AC8];
    v6 = MEMORY[0x29EDB9F48];
    v7 = objc_opt_class();
    v11 = objc_msgSend_bundleForClass_(v6, v8, v7, v9, v10);
    v14 = objc_msgSend_imageNamed_inBundle_(v5, v12, @"KeyboardBrightness", v11, v13);

    v18 = objc_msgSend_imageWithRenderingMode_(v14, v15, 2, v16, v17);

    objc_msgSend_setHeaderGlyphImage_(v4, v19, v18, v20, v21);
  }

  return v4;
}

@end