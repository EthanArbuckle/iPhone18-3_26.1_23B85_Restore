@interface EMKOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (EMKOverlayViewAccessibility)initWithView:(id)a3 anchorRect:(CGRect)a4 emojiTokenList:(id)a5 selectionHandler:(id)a6;
- (void)setView:(id)a3 anchorRect:(CGRect)a4;
@end

@implementation EMKOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EMKOverlayView" hasInstanceMethod:@"initWithView: anchorRect: emojiTokenList: selectionHandler:" withFullSignature:{"@", "@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", "@?", 0}];
  [v3 validateClass:@"EMKEmojiTokenList" hasInstanceMethod:@"emojiTokenArray" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EMFEmojiToken"];
  [v3 validateClass:@"EMFEmojiToken" hasInstanceMethod:@"string" withFullSignature:{"@", 0}];
}

- (EMKOverlayViewAccessibility)initWithView:(id)a3 anchorRect:(CGRect)a4 emojiTokenList:(id)a5 selectionHandler:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v37.receiver = self;
  v37.super_class = EMKOverlayViewAccessibility;
  v16 = [(EMKOverlayViewAccessibility *)&v37 initWithView:v13 anchorRect:v14 emojiTokenList:v15 selectionHandler:x, y, width, height];
  v17 = [(EMKOverlayViewAccessibility *)v16 safeValueForKey:@"_overlayRect"];
  [v17 rectValue];
  v19 = v18;
  v21 = v20;

  v22 = [MEMORY[0x29EDB8DE8] array];
  objc_opt_class();
  v23 = __UIAccessibilitySafeClass();
  v24 = [v23 safeValueForKey:@"emojiTokenArray"];
  v25 = __UIAccessibilityCastAsClass();

  v36 = v15;
  if ([v25 count])
  {
    v26 = 0;
    v27 = v21 + 6.0;
    do
    {
      v28 = [v25 objectAtIndex:v26];
      v29 = [[EMKEmojiOverlayElement alloc] initWithAccessibilityContainer:v16];
      v30 = v26 + 1;
      -[EMKEmojiOverlayElement setRowRange:](v29, "setRowRange:", v26, [v25 count]);
      [(EMKEmojiOverlayElement *)v29 setAccessibilityFrame:v19 + v26 * 36.0 + 10.0 + (v26 + 1) * 4.0, v27, 36.0, 43.0];
      v31 = [v28 safeValueForKey:@"string"];
      [(EMKEmojiOverlayElement *)v29 setAccessibilityLabel:v31];
      [v22 addObject:v29];

      v26 = v30;
    }

    while ([v25 count] > v30);
  }

  [(EMKOverlayViewAccessibility *)v16 setAccessibilityElements:v22];
  v32 = *MEMORY[0x29EDC7F10];
  v33 = [(EMKOverlayViewAccessibility *)v16 accessibilityElements];
  v34 = [v33 firstObject];
  UIAccessibilityPostNotification(v32, v34);

  return v16;
}

- (void)setView:(id)a3 anchorRect:(CGRect)a4
{
  v18.receiver = self;
  v18.super_class = EMKOverlayViewAccessibility;
  [(EMKOverlayViewAccessibility *)&v18 setView:a3 anchorRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  v5 = [(EMKOverlayViewAccessibility *)self safeValueForKey:@"_overlayRect"];
  [v5 rectValue];
  v7 = v6;
  v9 = v8;

  v10 = [(EMKOverlayViewAccessibility *)self accessibilityElements];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    v13 = v9 + 6.0;
    do
    {
      v14 = v12 + 1;
      v15 = v7 + v12 * 36.0 + 10.0 + (v12 + 1) * 4.0;
      v16 = [(EMKOverlayViewAccessibility *)self accessibilityElements];
      v17 = [v16 objectAtIndex:v12];

      [v17 setAccessibilityFrame:{v15, v13, 36.0, 43.0}];
      v12 = v14;
    }

    while (v14 != v11);
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end