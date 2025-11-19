@interface AXCCShortcutModule
- (AXCCShortcutModule)init;
- (BOOL)isSelected;
- (id)glyphState;
- (void)expandModule;
- (void)openAccessibilityShortcutSettings;
- (void)optionToggled;
@end

@implementation AXCCShortcutModule

- (AXCCShortcutModule)init
{
  v39.receiver = self;
  v39.super_class = AXCCShortcutModule;
  v2 = [(AXCCShortcutModule *)&v39 init];
  if (v2)
  {
    v3 = [AXCCShortcutModuleViewController alloc];
    v5 = objc_msgSend_initWithNibName_bundle_(v3, v4, 0, 0);
    contentViewController = v2->_contentViewController;
    v2->_contentViewController = v5;

    objc_msgSend_setShortcutDelegate_(v2->_contentViewController, v7, v2);
    objc_msgSend_setModule_(v2->_contentViewController, v8, v2);
    v9 = v2->_contentViewController;
    v10 = MEMORY[0x29EDC7AC8];
    v11 = MEMORY[0x29EDB9F48];
    v12 = objc_opt_class();
    v14 = objc_msgSend_bundleForClass_(v11, v13, v12);
    v16 = objc_msgSend_imageNamed_inBundle_(v10, v15, @"AccessibilityIcon", v14);
    objc_msgSend_setGlyphImage_(v9, v17, v16);

    v18 = v2->_contentViewController;
    v19 = MEMORY[0x29EDC7AC8];
    v20 = MEMORY[0x29EDB9F48];
    v21 = objc_opt_class();
    v23 = objc_msgSend_bundleForClass_(v20, v22, v21);
    v25 = objc_msgSend_imageNamed_inBundle_(v19, v24, @"AccessibilityIcon", v23);
    objc_msgSend_setSelectedGlyphImage_(v18, v26, v25);

    v27 = v2->_contentViewController;
    v30 = objc_msgSend_systemBlueColor(MEMORY[0x29EDC7A00], v28, v29);
    objc_msgSend_setSelectedGlyphColor_(v27, v31, v30);

    if ((objc_msgSend_isExpanded(v2->_contentViewController, v32, v33) & 1) == 0)
    {
      isSelected = objc_msgSend_isSelected(v2, v34, v35);
      objc_msgSend_setSelected_(v2->_contentViewController, v37, isSelected);
    }
  }

  return v2;
}

- (id)glyphState
{
  if (objc_msgSend_appearsSelected(self, a2, v2))
  {
    return @"enabled";
  }

  else
  {
    return @"disabled";
  }
}

- (void)optionToggled
{
  if ((objc_msgSend_isExpanded(self->_contentViewController, a2, v2) & 1) == 0)
  {
    isSelected = objc_msgSend_isSelected(self, v4, v5);
    contentViewController = self->_contentViewController;

    objc_msgSend_setSelected_(contentViewController, v6, isSelected);
  }
}

- (void)openAccessibilityShortcutSettings
{
  v7 = objc_msgSend_URLWithString_(MEMORY[0x29EDB8E70], a2, @"prefs:root=ACCESSIBILITY&path=TRIPLE_CLICK_TITLE");
  v5 = objc_msgSend_contentModuleContext(self, v3, v4);
  objc_msgSend_openURL_completionHandler_(v5, v6, v7, 0);
}

- (void)expandModule
{
  v4 = objc_msgSend_visibleShortcuts(self->_contentViewController, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7 == 1)
  {
    v10 = objc_msgSend_visibleShortcuts(self->_contentViewController, v8, v9);
    v13 = objc_msgSend_firstObject(v10, v11, v12);
    v16 = objc_msgSend_intValue(v13, v14, v15);

    v18 = objc_msgSend_valueForTripleClickOption_(MEMORY[0x29EDBDFB8], v17, v16);
    v21 = objc_msgSend_contentModuleContext(self, v19, v20);
    v22 = MEMORY[0x29EDC0CF0];
    v25 = objc_msgSend_titleForTripleClickOption_(MEMORY[0x29EDBDFB8], v23, v16);
    if (v18)
    {
      objc_msgSend_statusUpdateWithMessage_type_(v22, v24, v25, 2);
    }

    else
    {
      objc_msgSend_statusUpdateWithMessage_type_(v22, v24, v25, 1);
    }
    v26 = ;
    objc_msgSend_enqueueStatusUpdate_(v21, v27, v26);

    objc_msgSend_setSelected_(self->_contentViewController, v28, v18 ^ 1u);
    v30 = MEMORY[0x29EDBDFB8];

    objc_msgSend_toggleTripleClickOption_(v30, v29, v16);
  }

  else
  {
    v33 = objc_msgSend_contentModuleContext(self, v8, v9);
    objc_msgSend_requestExpandModule(v33, v31, v32);
  }
}

- (BOOL)isSelected
{
  v20 = *MEMORY[0x29EDCA608];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = objc_msgSend_visibleShortcuts(self->_contentViewController, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v15, v19, 16);
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = MEMORY[0x29EDBDFB8];
        v11 = objc_msgSend_intValue(*(*(&v15 + 1) + 8 * i), v5, v6);
        if (objc_msgSend_valueForTripleClickOption_(v10, v12, v11))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v15, v19, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x29EDCA608];
  return v7;
}

@end