@interface AENotePopoverEditorController
- (AEAnnotationEditorDelegate)delegate;
- (AENotePopoverEditorController)init;
- (BOOL)popoverControllerShouldDismissPopover:(id)a3;
- (CGSize)p_popoverSize;
- (unint64_t)p_permittedArrowDirectionsWithRect:(CGRect)a3 view:(id)a4;
- (void)dealloc;
- (void)hide;
- (void)noteEditorViewControllerDidEndEditing:(id)a3;
- (void)p_didHide;
- (void)p_didShow;
- (void)p_willHide;
- (void)p_willShow;
- (void)presentFromRect:(CGRect)a3 view:(id)a4;
- (void)setAnnotationTheme:(id)a3;
- (void)setTheme:(id)a3;
@end

@implementation AENotePopoverEditorController

- (AENotePopoverEditorController)init
{
  v8.receiver = self;
  v8.super_class = AENotePopoverEditorController;
  v2 = [(AENotePopoverEditorController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(AENoteEditorViewController);
    noteEditorViewController = v2->_noteEditorViewController;
    v2->_noteEditorViewController = v3;

    [(AENoteEditorViewController *)v2->_noteEditorViewController setDelegate:v2];
    v5 = [[UIPopoverController alloc] initWithContentViewController:v2->_noteEditorViewController];
    popoverController = v2->_popoverController;
    v2->_popoverController = v5;

    [(UIPopoverController *)v2->_popoverController setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(AENoteEditorViewController *)self->_noteEditorViewController setDelegate:0];
  [(UIPopoverController *)self->_popoverController setDelegate:0];
  v3.receiver = self;
  v3.super_class = AENotePopoverEditorController;
  [(AENotePopoverEditorController *)&v3 dealloc];
}

- (void)presentFromRect:(CGRect)a3 view:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(AENotePopoverEditorController *)self p_permittedArrowDirectionsWithRect:v9 view:x, y, width, height];
  if ((v10 & 0xC) != 0)
  {
    v11 = [v9 window];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    size = CGRectZero.size;
    slice.origin = CGRectZero.origin;
    slice.size = size;
    remainder.origin = slice.origin;
    remainder.size = size;
    v21 = v13;
    size.width = v15;
    v22 = v17;
    v23 = v19;
    CGRectDivide(*(&size - 8), &slice, &remainder, v19 * 0.5, CGRectMinYEdge);
    [v9 convertRect:0 fromView:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [v9 convertRect:0 fromView:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
    r2_24 = v33;
    v40 = v32;
    r2_8 = v35;
    r2_16 = v34;
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v49.origin.x = v25;
    v49.origin.y = v27;
    v49.size.width = v29;
    v49.size.height = v31;
    v44 = CGRectIntersection(v43, v49);
    if (v44.size.height > 0.0)
    {
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v50.origin.y = r2_24;
      v50.origin.x = v40;
      v50.size.height = r2_8;
      v50.size.width = r2_16;
      v46 = CGRectIntersection(v45, v50);
      if (v46.size.height > 0.0)
      {
        v47.origin.x = x;
        v47.origin.y = y;
        v47.size.width = width;
        v47.size.height = height;
        v51.origin.x = v25;
        v51.origin.y = v27;
        v51.size.width = v29;
        v51.size.height = v31;
        v48 = CGRectIntersection(v47, v51);
        x = v48.origin.x;
        y = v48.origin.y;
        width = v48.size.width;
        height = v48.size.height;
      }
    }
  }

  [(AENotePopoverEditorController *)self p_willShow];
  v36 = [(AENotePopoverEditorController *)self popoverController];
  [v36 presentPopoverFromRect:v9 inView:v10 permittedArrowDirections:1 animated:{x, y, width, height}];

  [(AENotePopoverEditorController *)self p_didShow];
}

- (void)hide
{
  [(AENotePopoverEditorController *)self p_willHide];
  v3 = [(AENotePopoverEditorController *)self popoverController];
  [v3 dismissPopoverAnimated:1];

  [(AENotePopoverEditorController *)self p_didHide];
}

- (void)setTheme:(id)a3
{
  v5 = a3;
  p_theme = &self->_theme;
  if (self->_theme != v5)
  {
    objc_storeStrong(p_theme, a3);
    v7 = [(AENotePopoverEditorController *)self annotation];

    if (v7)
    {
      v8 = [(AENotePopoverEditorController *)self theme];
      v9 = [v8 annotationPageTheme];

      v10 = [(AENotePopoverEditorController *)self annotation];
      v11 = [v10 annotationStyle];
      v12 = [(AENotePopoverEditorController *)self annotation];
      v13 = +[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", v11, v9, [v12 annotationIsUnderline]);

      if (v13)
      {
        [(AENotePopoverEditorController *)self setAnnotationTheme:v13];
      }
    }

    theme = self->_theme;
    v15 = [(AENotePopoverEditorController *)self noteEditorViewController];
    v16 = [v15 textView];
    [(IMTheme *)theme stylizeKeyboard:v16];
  }

  _objc_release_x1(p_theme);
}

- (void)setAnnotationTheme:(id)a3
{
  v5 = a3;
  p_annotationTheme = &self->_annotationTheme;
  if (self->_annotationTheme != v5)
  {
    objc_storeStrong(p_annotationTheme, a3);
    v7 = [(AENotePopoverEditorController *)self annotationTheme];
    v8 = [v7 noteTextColor];
    v9 = [(AENotePopoverEditorController *)self noteEditorViewController];
    v10 = [v9 textView];
    [v10 setTextColor:v8];

    v11 = [(AENotePopoverEditorController *)self annotationTheme];
    v12 = [v11 noteFillColor];
    v13 = [(AENotePopoverEditorController *)self popoverController];
    [v13 setBackgroundColor:v12];

    v14 = [(AENotePopoverEditorController *)self annotationTheme];
    v15 = [v14 noteFillColor];
    v16 = [(AENotePopoverEditorController *)self popoverController];
    v17 = [v16 contentViewController];
    v18 = [v17 viewIfLoaded];
    [v18 setBackgroundColor:v15];
  }

  _objc_release_x1(p_annotationTheme);
}

- (BOOL)popoverControllerShouldDismissPopover:(id)a3
{
  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
  {
    [(AENotePopoverEditorController *)self p_willHide];
  }

  return 1;
}

- (void)noteEditorViewControllerDidEndEditing:(id)a3
{
  v4 = a3;
  v8 = [(AENotePopoverEditorController *)self delegate];
  v5 = [(AENotePopoverEditorController *)self annotation];
  v6 = [v4 textView];

  v7 = [v6 text];
  [v8 editorController:self editedAnnotation:v5 toText:v7];
}

- (void)p_willShow
{
  v3 = [(AENotePopoverEditorController *)self annotationTheme];
  v4 = [v3 noteFillColor];
  v5 = [(AENotePopoverEditorController *)self popoverController];
  [v5 setBackgroundColor:v4];

  v6 = [(AENotePopoverEditorController *)self annotationTheme];
  v7 = [v6 noteFillColor];
  v8 = [(AENotePopoverEditorController *)self popoverController];
  v9 = [v8 contentViewController];
  v10 = [v9 viewIfLoaded];
  [v10 setBackgroundColor:v7];

  v11 = [(AENotePopoverEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 willShowAnnotationEditor:self];
  }
}

- (void)p_didShow
{
  v4 = [(AENotePopoverEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 didShowAnnotationEditor:self];
  }

  if ([(AENotePopoverEditorController *)self editsOnLaunch])
  {
    v3 = [(AENotePopoverEditorController *)self noteEditorViewController];
    [v3 beginEditing];
  }
}

- (void)p_willHide
{
  v3 = [(AENotePopoverEditorController *)self noteEditorViewController];
  [v3 endEditing];

  v4 = [(AENotePopoverEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 willHideAnnotationEditor:self];
  }
}

- (void)p_didHide
{
  v3 = [(AENotePopoverEditorController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 didHideAnnotationEditor:self];
  }
}

- (unint64_t)p_permittedArrowDirectionsWithRect:(CGRect)a3 view:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(AENotePopoverEditorController *)self preferVerticalPresentation];
  [(AENotePopoverEditorController *)self p_popoverSize];
  v12 = v11;
  v14 = v13;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v45 = CGRectGetMinY(v46) - v14;
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v43 = v14 + CGRectGetMaxY(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  v15 = CGRectGetMinX(v48) - v12;
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v44 = v12 + CGRectGetMaxX(v49);
  v16 = [(AENotePopoverEditorController *)self noteEditorViewController];
  v17 = [v16 bc_windowForViewController];
  v18 = [v17 windowScene];
  v19 = [v18 interfaceOrientation];

  p_y = &CGRectZero.origin.y;
  p_size = &CGRectZero.size;
  p_height = &CGRectZero.size.height;
  v23 = CGRectZero.origin.x;
  if ((v19 - 1) <= 3)
  {
    p_height = (&unk_2A41C0 + 8 * (v19 - 1));
    p_size = (&unk_2A41E0 + 8 * (v19 - 1));
    p_y = (&unk_2A4200 + 8 * (v19 - 1));
    v23 = 0.0;
  }

  [v9 convertRect:0 fromView:{v23, *p_y, p_size->width, *p_height}];
  v24 = CGRectGetMinY(v50) + -10.0;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  MinY = CGRectGetMinY(v51);
  v26 = v24 + -28.5 + -17.5;
  [v9 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v52.origin.x = v28;
  v52.origin.y = v30;
  v52.size.width = v32;
  v52.size.height = v34;
  v35 = v44 <= CGRectGetWidth(v52) + -10.0;
  v36 = MinY <= v26 && v15 >= 10.0;
  if (MinY > v26)
  {
    v35 = 0;
  }

  if (!v10)
  {
    v42 = MinY <= v26;
    if (v15 < 10.0)
    {
      v42 = v35;
    }

    v37 = v45;
    if (v42)
    {
      goto LABEL_11;
    }

    return (v43 <= v24) | (2 * (v37 >= 10.0));
  }

  v37 = v45;
  if (v45 >= 10.0 || v43 <= v24)
  {
    return (v43 <= v24) | (2 * (v37 >= 10.0));
  }

LABEL_11:
  v38 = !v35;
  v39 = 4;
  if (v38)
  {
    v39 = 0;
  }

  v38 = !v36;
  v40 = 8;
  if (v38)
  {
    v40 = 0;
  }

  return v39 | v40;
}

- (CGSize)p_popoverSize
{
  v2 = [(AENotePopoverEditorController *)self noteEditorViewController];
  [v2 preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v6 + 13.0;
  v8 = v4;
  result.height = v7;
  result.width = v8;
  return result;
}

- (AEAnnotationEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end