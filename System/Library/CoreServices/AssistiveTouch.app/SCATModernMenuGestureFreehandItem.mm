@interface SCATModernMenuGestureFreehandItem
+ (SCATModernMenuGestureFreehandItem)itemWithIdentifier:(id)a3 delegate:(id)a4 title:(id)a5 imagePrefixForTouchDependentGlyph:(id)a6 shouldRotate:(BOOL)a7 activateBehavior:(unint64_t)a8;
- (BOOL)handleActivateWithElement:(id)a3;
- (void)setFocused:(BOOL)a3;
@end

@implementation SCATModernMenuGestureFreehandItem

+ (SCATModernMenuGestureFreehandItem)itemWithIdentifier:(id)a3 delegate:(id)a4 title:(id)a5 imagePrefixForTouchDependentGlyph:(id)a6 shouldRotate:(BOOL)a7 activateBehavior:(unint64_t)a8
{
  v9 = a7;
  v14 = a6;
  v15 = [a1 itemWithIdentifier:a3 delegate:a4 title:a5 imageName:0 activateBehavior:a8];
  [v15 setImagePrefixForTouchDependentGlyph:v14];

  [v15 setShouldRotate:v9];
  [v15 setPreferredNumberOfTitleLines:1];

  return v15;
}

- (BOOL)handleActivateWithElement:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SCATModernMenuGestureFreehandItem;
  v5 = [(SCATModernMenuItem *)&v13 handleActivateWithElement:v4];
  v6 = [(SCATModernMenuItem *)self isDisabled];
  v7 = +[SCATScannerManager sharedManager];
  v8 = v7;
  if (v6)
  {
    [v7 beginScanningWithFocusContext:0];
  }

  else
  {
    v9 = +[SCATScannerManager sharedManager];
    v10 = [v9 activeElementManager];
    v11 = [SCATFocusContext focusContextWithElement:v4 elementManager:v10 selectBehavior:0 options:0];
    [v8 beginScanningWithFocusContext:v11];
  }

  return v5;
}

- (void)setFocused:(BOOL)a3
{
  if (self->_focused != a3)
  {
    v3 = a3;
    self->_focused = a3;
    v5 = [(SCATModernMenuItem *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(SCATModernMenuItem *)self delegate];
      [v7 menuItem:self didBecomeFocused:v3];
    }
  }
}

@end