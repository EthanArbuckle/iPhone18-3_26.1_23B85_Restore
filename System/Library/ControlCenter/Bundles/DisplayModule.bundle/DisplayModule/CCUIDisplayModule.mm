@interface CCUIDisplayModule
- (id)_brightnessGlyphPackageDescriptionForContext:(id)context;
- (id)_brightnessGlyphStateForBrightnessLevel:(double)level;
- (id)backgroundViewControllerForContext:(id)context;
- (id)contentViewControllerForContext:(id)context;
- (void)displayModuleViewController:(id)controller brightnessDidChange:(float)change;
@end

@implementation CCUIDisplayModule

- (id)contentViewControllerForContext:(id)context
{
  contextCopy = context;
  v5 = [CCUIDisplayModuleViewController alloc];
  v7 = objc_msgSend_initWithNibName_bundle_(v5, v6, 0, 0);
  moduleViewController = self->_moduleViewController;
  self->_moduleViewController = v7;

  v9 = self->_moduleViewController;
  v11 = objc_msgSend__brightnessGlyphPackageDescriptionForContext_(self, v10, contextCopy);

  objc_msgSend_setGlyphPackageDescription_(v9, v12, v11);
  v13 = self->_moduleViewController;
  objc_msgSend_currentBrightness(v13, v14, v15);
  v19 = objc_msgSend__brightnessGlyphStateForBrightnessLevel_(self, v17, v18, v16);
  objc_msgSend_setGlyphState_(v13, v20, v19);

  objc_msgSend_setDelegate_(self->_moduleViewController, v21, self);
  v22 = self->_moduleViewController;

  return v22;
}

- (id)backgroundViewControllerForContext:(id)context
{
  contextCopy = context;
  v5 = [CCUIDisplayBackgroundViewController alloc];
  v7 = objc_msgSend_initWithNibName_bundle_(v5, v6, 0, 0);
  backgroundViewController = self->_backgroundViewController;
  self->_backgroundViewController = v7;

  v9 = self->_backgroundViewController;
  v11 = objc_msgSend__brightnessGlyphPackageDescriptionForContext_(self, v10, contextCopy);

  objc_msgSend_setHeaderGlyphPackageDescription_(v9, v12, v11);
  v13 = self->_backgroundViewController;
  objc_msgSend_currentBrightness(self->_moduleViewController, v14, v15);
  v19 = objc_msgSend__brightnessGlyphStateForBrightnessLevel_(self, v17, v18, v16);
  objc_msgSend_setHeaderGlyphState_(v13, v20, v19);

  v21 = self->_backgroundViewController;

  return v21;
}

- (void)displayModuleViewController:(id)controller brightnessDidChange:(float)change
{
  v7 = objc_msgSend__brightnessGlyphStateForBrightnessLevel_(self, a2, controller, change);
  objc_msgSend_setGlyphState_(self->_moduleViewController, v5, v7);
  objc_msgSend_setHeaderGlyphState_(self->_backgroundViewController, v6, v7);
}

- (id)_brightnessGlyphPackageDescriptionForContext:(id)context
{
  v3 = MEMORY[0x29EDC0CA0];
  v4 = MEMORY[0x29EDB9F48];
  v5 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v4, v6, v5);
  v9 = objc_msgSend_descriptionForPackageNamed_inBundle_(v3, v8, @"Brightness", v7);

  return v9;
}

- (id)_brightnessGlyphStateForBrightnessLevel:(double)level
{
  if (level < 0.33)
  {
    return @"min";
  }

  if (level >= 1.0)
  {
    v4 = @"max";
  }

  else
  {
    v4 = @"full";
  }

  if (level >= 0.66)
  {
    return v4;
  }

  else
  {
    return @"mid";
  }
}

@end