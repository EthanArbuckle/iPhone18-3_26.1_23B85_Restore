@interface AEHighlightColorEditorControllerAccessibility
- (id)_imaxAddNoteButton;
- (id)_imaxColorControls;
- (id)_imaxDeleteButton;
- (id)_imaxRightArrowButton;
- (id)_imaxShareButton;
- (void)_axEnumerateButtonsUsingBlock:(id)block;
- (void)dealloc;
- (void)didShow;
- (void)p_updateAppearance;
- (void)releaseOutlets;
- (void)showColorControlsMenu:(id)menu;
- (void)viewDidLoad;
@end

@implementation AEHighlightColorEditorControllerAccessibility

- (void)_axEnumerateButtonsUsingBlock:(id)block
{
  blockCopy = block;
  _imaxColorControls = [(AEHighlightColorEditorControllerAccessibility *)self _imaxColorControls];
  _imaxAddNoteButton = [(AEHighlightColorEditorControllerAccessibility *)self _imaxAddNoteButton];
  _imaxDeleteButton = [(AEHighlightColorEditorControllerAccessibility *)self _imaxDeleteButton];
  _imaxShareButton = [(AEHighlightColorEditorControllerAccessibility *)self _imaxShareButton];
  _imaxRightArrowButton = [(AEHighlightColorEditorControllerAccessibility *)self _imaxRightArrowButton];
  v33 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = _imaxRightArrowButton;
    v26 = _imaxShareButton;
    v27 = _imaxDeleteButton;
    v28 = _imaxAddNoteButton;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = _imaxColorControls;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        v16 = [v15 imaxValueForKey:{@"tag", v25, v26, v27, v28, v29}];
        blockCopy[2](blockCopy, v15, [v16 unsignedIntegerValue], &v33);

        if (v33)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    _imaxDeleteButton = v27;
    _imaxAddNoteButton = v28;
    _imaxRightArrowButton = v25;
    _imaxShareButton = v26;
  }

  v17 = _imaxAddNoteButton;
  v34[0] = v17;
  v18 = _imaxDeleteButton;
  v34[1] = v18;
  v19 = _imaxShareButton;
  v34[2] = v19;
  v20 = _imaxRightArrowButton;
  v34[3] = v20;
  if ((v33 & 1) == 0)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = v34[v22];
      if (v23)
      {
        blockCopy[2](blockCopy, v23, 0, &v33);
        v21 = v33;
      }

      if (v22 > 2)
      {
        break;
      }

      ++v22;
    }

    while ((v21 & 1) == 0);
  }

  for (i = 3; i != -1; --i)
  {
  }
}

- (void)dealloc
{
  [(AEHighlightColorEditorControllerAccessibility *)self _axClearReferencesToSelfInButtons];
  v3.receiver = self;
  v3.super_class = AEHighlightColorEditorControllerAccessibility;
  [(AEHighlightColorEditorControllerAccessibility *)&v3 dealloc];
}

- (void)releaseOutlets
{
  [(AEHighlightColorEditorControllerAccessibility *)self _axClearReferencesToSelfInButtons];
  v3.receiver = self;
  v3.super_class = AEHighlightColorEditorControllerAccessibility;
  [(AEHighlightColorEditorControllerAccessibility *)&v3 releaseOutlets];
}

- (void)showColorControlsMenu:(id)menu
{
  v8.receiver = self;
  v8.super_class = AEHighlightColorEditorControllerAccessibility;
  [(AEHighlightColorEditorControllerAccessibility *)&v8 showColorControlsMenu:menu];
  v4 = [(AEHighlightColorEditorControllerAccessibility *)self imaxValueForKey:@"colorControls"];
  v5 = [v4 imaxValueForKey:@"subviews"];

  if ([v5 count])
  {
    v6 = IMAccessibilityMoveToElementNotification;
    v7 = [v5 objectAtIndex:0];
    UIAccessibilityPostNotification(v6, v7);
  }
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = AEHighlightColorEditorControllerAccessibility;
  [(AEHighlightColorEditorControllerAccessibility *)&v27 viewDidLoad];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_80A4C;
  v26[3] = &unk_2CB258;
  v26[4] = self;
  [(AEHighlightColorEditorControllerAccessibility *)self _axEnumerateButtonsUsingBlock:v26];
  v3 = [(AEHighlightColorEditorControllerAccessibility *)self imaxValueForKey:@"calloutBar"];
  v4 = [v3 imaxValueForKey:@"controls"];

  if ([(AEHighlightColorEditorControllerAccessibility *)self imaxBoolValueForKey:@"p_shouldShowCompactMenu"])
  {
    v25 = 0;
    v5 = objc_opt_class();
    v6 = [v4 objectAtIndex:0];
    v7 = __IMAccessibilityCastAsClass(v5, v6, 1, &v25);

    if (v25 == 1)
    {
      abort();
    }

    v8 = IMAXLocString(@"highlight.colors");
    [v7 setAccessibilityLabel:v8];

    [v7 setIsAccessibilityElement:1];
    [v7 setAccessibilityTraits:IMAccessibilityTraitMenuItem];
  }

  v9 = [(AEHighlightColorEditorControllerAccessibility *)self imaxValueForKey:@"annotation"];
  v10 = [v9 imaxValueForKey:@"annotationNote"];
  v11 = [v10 length];

  if (v11)
  {
    v12 = @"edit.annotation";
  }

  else
  {
    v12 = @"create.annotation";
  }

  v13 = IMAXLocString(v12);
  _imaxAddNoteButton = [(AEHighlightColorEditorControllerAccessibility *)self _imaxAddNoteButton];
  [_imaxAddNoteButton setAccessibilityLabel:v13];

  v15 = IMAccessibilityTraitMenuItem;
  _imaxAddNoteButton2 = [(AEHighlightColorEditorControllerAccessibility *)self _imaxAddNoteButton];
  [_imaxAddNoteButton2 setAccessibilityTraits:v15];

  v17 = IMAXLocString(@"delete.annotation");
  _imaxDeleteButton = [(AEHighlightColorEditorControllerAccessibility *)self _imaxDeleteButton];
  [_imaxDeleteButton setAccessibilityLabel:v17];

  v19 = IMAccessibilityTraitMenuItem;
  _imaxDeleteButton2 = [(AEHighlightColorEditorControllerAccessibility *)self _imaxDeleteButton];
  [_imaxDeleteButton2 setAccessibilityTraits:v19];

  v21 = IMAXLocString(@"show.next.items.menu.button");
  _imaxRightArrowButton = [(AEHighlightColorEditorControllerAccessibility *)self _imaxRightArrowButton];
  [_imaxRightArrowButton setAccessibilityLabel:v21];

  v23 = IMAccessibilityTraitMenuItem;
  _imaxRightArrowButton2 = [(AEHighlightColorEditorControllerAccessibility *)self _imaxRightArrowButton];
  [_imaxRightArrowButton2 setAccessibilityTraits:v23];
}

- (void)didShow
{
  v17.receiver = self;
  v17.super_class = AEHighlightColorEditorControllerAccessibility;
  [(AEHighlightColorEditorControllerAccessibility *)&v17 didShow];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_80C80;
  v15 = sub_80C90;
  v16 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_80C80;
  v9 = sub_80C90;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_80C98;
  v4[3] = &unk_2CB280;
  v4[4] = &v11;
  v4[5] = &v5;
  [(AEHighlightColorEditorControllerAccessibility *)self _axEnumerateButtonsUsingBlock:v4];
  v3 = v6[5];
  if (!v3)
  {
    objc_storeStrong(v6 + 5, v12[5]);
    v3 = v6[5];
  }

  UIAccessibilityPostNotification(IMAccessibilityMoveToElementNotification, v3);
  _Block_object_dispose(&v5, 8);

  _Block_object_dispose(&v11, 8);
}

- (void)p_updateAppearance
{
  v3.receiver = self;
  v3.super_class = AEHighlightColorEditorControllerAccessibility;
  [(AEHighlightColorEditorControllerAccessibility *)&v3 p_updateAppearance];
  [(AEHighlightColorEditorControllerAccessibility *)self _axEnumerateButtonsUsingBlock:&stru_2CB2A0];
}

- (id)_imaxColorControls
{
  v7 = 0;
  v3 = objc_opt_class();
  v4 = [(AEHighlightColorEditorControllerAccessibility *)self imaxValueForKey:@"colorControls"];
  v5 = __IMAccessibilityCastAsClass(v3, v4, 1, &v7);

  if (v7 == 1)
  {
    abort();
  }

  return v5;
}

- (id)_imaxAddNoteButton
{
  v7 = 0;
  v3 = objc_opt_class();
  v4 = [(AEHighlightColorEditorControllerAccessibility *)self imaxValueForKey:@"addNoteButton"];
  v5 = __IMAccessibilityCastAsClass(v3, v4, 1, &v7);

  if (v7 == 1)
  {
    abort();
  }

  return v5;
}

- (id)_imaxDeleteButton
{
  v7 = 0;
  v3 = objc_opt_class();
  v4 = [(AEHighlightColorEditorControllerAccessibility *)self imaxValueForKey:@"deleteButton"];
  v5 = __IMAccessibilityCastAsClass(v3, v4, 1, &v7);

  if (v7 == 1)
  {
    abort();
  }

  return v5;
}

- (id)_imaxShareButton
{
  v7 = 0;
  v3 = objc_opt_class();
  v4 = [(AEHighlightColorEditorControllerAccessibility *)self imaxValueForKey:@"shareButton"];
  v5 = __IMAccessibilityCastAsClass(v3, v4, 1, &v7);

  if (v7 == 1)
  {
    abort();
  }

  return v5;
}

- (id)_imaxRightArrowButton
{
  v7 = 0;
  v3 = objc_opt_class();
  v4 = [(AEHighlightColorEditorControllerAccessibility *)self imaxValueForKey:@"rightArrowButton"];
  v5 = __IMAccessibilityCastAsClass(v3, v4, 1, &v7);

  if (v7 == 1)
  {
    abort();
  }

  return v5;
}

@end