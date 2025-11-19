@interface UITextViewInvertColorsAccessibility
- (BOOL)keyboardInputChanged:(id)a3;
- (void)_accessibilityLoadInvertColors;
- (void)paste:(id)a3;
- (void)setAttributedText:(id)a3;
@end

@implementation UITextViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(UITextViewInvertColorsAccessibility *)self attributedText];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_C230;
  v5[3] = &unk_44790;
  v5[4] = self;
  v5[5] = &v6;
  [v3 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:objc_msgSend(v3 usingBlock:{"length"), 0, v5}];
  if (*(v7 + 24) == 1)
  {
    v4 = v3;
    AXPerformBlockAsynchronouslyOnMainThread();
  }

  _Block_object_dispose(&v6, 8);
}

- (void)paste:(id)a3
{
  v4.receiver = self;
  v4.super_class = UITextViewInvertColorsAccessibility;
  [(UITextViewInvertColorsAccessibility *)&v4 paste:a3];
  [(UITextViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)setAttributedText:(id)a3
{
  v4.receiver = self;
  v4.super_class = UITextViewInvertColorsAccessibility;
  [(UITextViewInvertColorsAccessibility *)&v4 setAttributedText:a3];
  if (![(UITextViewInvertColorsAccessibility *)self _axIgnoreNextAttributedText])
  {
    [(UITextViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
  }
}

- (BOOL)keyboardInputChanged:(id)a3
{
  v6.receiver = self;
  v6.super_class = UITextViewInvertColorsAccessibility;
  v4 = [(UITextViewInvertColorsAccessibility *)&v6 keyboardInputChanged:a3];
  [(UITextViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
  return v4;
}

@end