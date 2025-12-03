@interface UIAccessibilityPDFElement
- (CGRect)accessibilityFrame;
- (CGRect)frame;
@end

@implementation UIAccessibilityPDFElement

- (CGRect)frame
{
  accessibilityContainer = [(UIAccessibilityPDFElement *)self accessibilityContainer];
  v3AccessibilityContainer = [accessibilityContainer accessibilityContainer];

  v5 = [v3AccessibilityContainer safeValueForKey:@"_scroller"];
  v6 = v5;
  if (v5)
  {
    [v5 bounds];
    v8 = v7;
    [v6 _accessibilityContentSize];
    v10 = v9;
    v12 = v11 / [(UIAccessibilityPDFElement *)self pageCount];
    v13 = v12 * [(UIAccessibilityPDFElement *)self page];
  }

  else
  {
    v8 = *MEMORY[0x29EDB90E0];
    v13 = *(MEMORY[0x29EDB90E0] + 8);
    v10 = *(MEMORY[0x29EDB90E0] + 16);
    v12 = *(MEMORY[0x29EDB90E0] + 24);
  }

  v14 = v8;
  v15 = v13;
  v16 = v10;
  v17 = v12;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)accessibilityFrame
{
  [(UIAccessibilityPDFElement *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  accessibilityContainer = [(UIAccessibilityPDFElement *)self accessibilityContainer];
  v11AccessibilityContainer = [accessibilityContainer accessibilityContainer];

  v13 = [v11AccessibilityContainer safeValueForKey:@"_scroller"];
  window = [v13 window];
  [v13 convertRect:window toView:{v4, v6, v8, v10}];
  [window convertRect:0 toWindow:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

@end