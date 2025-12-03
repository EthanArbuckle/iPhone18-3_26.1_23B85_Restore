@interface SCATModernMenuGestureFreehandItem
+ (SCATModernMenuGestureFreehandItem)itemWithIdentifier:(id)identifier delegate:(id)delegate title:(id)title imagePrefixForTouchDependentGlyph:(id)glyph shouldRotate:(BOOL)rotate activateBehavior:(unint64_t)behavior;
- (BOOL)handleActivateWithElement:(id)element;
- (void)setFocused:(BOOL)focused;
@end

@implementation SCATModernMenuGestureFreehandItem

+ (SCATModernMenuGestureFreehandItem)itemWithIdentifier:(id)identifier delegate:(id)delegate title:(id)title imagePrefixForTouchDependentGlyph:(id)glyph shouldRotate:(BOOL)rotate activateBehavior:(unint64_t)behavior
{
  rotateCopy = rotate;
  glyphCopy = glyph;
  v15 = [self itemWithIdentifier:identifier delegate:delegate title:title imageName:0 activateBehavior:behavior];
  [v15 setImagePrefixForTouchDependentGlyph:glyphCopy];

  [v15 setShouldRotate:rotateCopy];
  [v15 setPreferredNumberOfTitleLines:1];

  return v15;
}

- (BOOL)handleActivateWithElement:(id)element
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SCATModernMenuGestureFreehandItem;
  v5 = [(SCATModernMenuItem *)&v13 handleActivateWithElement:elementCopy];
  isDisabled = [(SCATModernMenuItem *)self isDisabled];
  v7 = +[SCATScannerManager sharedManager];
  v8 = v7;
  if (isDisabled)
  {
    [v7 beginScanningWithFocusContext:0];
  }

  else
  {
    v9 = +[SCATScannerManager sharedManager];
    activeElementManager = [v9 activeElementManager];
    v11 = [SCATFocusContext focusContextWithElement:elementCopy elementManager:activeElementManager selectBehavior:0 options:0];
    [v8 beginScanningWithFocusContext:v11];
  }

  return v5;
}

- (void)setFocused:(BOOL)focused
{
  if (self->_focused != focused)
  {
    focusedCopy = focused;
    self->_focused = focused;
    delegate = [(SCATModernMenuItem *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(SCATModernMenuItem *)self delegate];
      [delegate2 menuItem:self didBecomeFocused:focusedCopy];
    }
  }
}

@end