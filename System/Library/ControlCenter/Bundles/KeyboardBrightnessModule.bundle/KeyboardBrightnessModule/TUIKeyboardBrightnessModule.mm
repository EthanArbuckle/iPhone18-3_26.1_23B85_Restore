@interface TUIKeyboardBrightnessModule
- (id)backgroundViewControllerForContext:(id)context;
- (id)contentViewControllerForContext:(id)context;
@end

@implementation TUIKeyboardBrightnessModule

- (id)contentViewControllerForContext:(id)context
{
  v4 = objc_alloc_init(TUIKeyboardBrightnessModuleViewController);
  v5 = MEMORY[0x29EDB9F48];
  v6 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v5, v7, v6, v8, v9);
  v14 = objc_msgSend_objectForInfoDictionaryKey_(v10, v11, *MEMORY[0x29EDB8EB8], v12, v13);
  objc_msgSend_setTitle_(v4, v15, v14, v16, v17);

  v18 = MEMORY[0x29EDC7AC8];
  v19 = MEMORY[0x29EDB9F48];
  v20 = objc_opt_class();
  v24 = objc_msgSend_bundleForClass_(v19, v21, v20, v22, v23);
  v27 = objc_msgSend_imageNamed_inBundle_(v18, v25, @"KeyboardBrightness", v24, v26);
  objc_msgSend_setGlyphImage_(v4, v28, v27, v29, v30);

  v35 = objc_msgSend_systemBlueColor(MEMORY[0x29EDC7A00], v31, v32, v33, v34);
  objc_msgSend_setSelectedGlyphColor_(v4, v36, v35, v37, v38);

  objc_storeStrong(&self->_viewController, v4);

  return v4;
}

- (id)backgroundViewControllerForContext:(id)context
{
  v4 = objc_alloc_init(TUIKeyboardBrightnessBackgroundViewController);
  objc_storeStrong(&self->_backgroundViewController, v4);

  return v4;
}

@end