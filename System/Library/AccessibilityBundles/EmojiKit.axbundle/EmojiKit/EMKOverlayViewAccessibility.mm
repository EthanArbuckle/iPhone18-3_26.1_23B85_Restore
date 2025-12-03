@interface EMKOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (EMKOverlayViewAccessibility)initWithView:(id)view anchorRect:(CGRect)rect emojiTokenList:(id)list selectionHandler:(id)handler;
- (void)setView:(id)view anchorRect:(CGRect)rect;
@end

@implementation EMKOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EMKOverlayView" hasInstanceMethod:@"initWithView: anchorRect: emojiTokenList: selectionHandler:" withFullSignature:{"@", "@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", "@?", 0}];
  [validationsCopy validateClass:@"EMKEmojiTokenList" hasInstanceMethod:@"emojiTokenArray" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EMFEmojiToken"];
  [validationsCopy validateClass:@"EMFEmojiToken" hasInstanceMethod:@"string" withFullSignature:{"@", 0}];
}

- (EMKOverlayViewAccessibility)initWithView:(id)view anchorRect:(CGRect)rect emojiTokenList:(id)list selectionHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  listCopy = list;
  handlerCopy = handler;
  v37.receiver = self;
  v37.super_class = EMKOverlayViewAccessibility;
  height = [(EMKOverlayViewAccessibility *)&v37 initWithView:viewCopy anchorRect:listCopy emojiTokenList:handlerCopy selectionHandler:x, y, width, height];
  v17 = [(EMKOverlayViewAccessibility *)height safeValueForKey:@"_overlayRect"];
  [v17 rectValue];
  v19 = v18;
  v21 = v20;

  array = [MEMORY[0x29EDB8DE8] array];
  objc_opt_class();
  v23 = __UIAccessibilitySafeClass();
  v24 = [v23 safeValueForKey:@"emojiTokenArray"];
  v25 = __UIAccessibilityCastAsClass();

  v36 = handlerCopy;
  if ([v25 count])
  {
    v26 = 0;
    v27 = v21 + 6.0;
    do
    {
      v28 = [v25 objectAtIndex:v26];
      v29 = [[EMKEmojiOverlayElement alloc] initWithAccessibilityContainer:height];
      v30 = v26 + 1;
      -[EMKEmojiOverlayElement setRowRange:](v29, "setRowRange:", v26, [v25 count]);
      [(EMKEmojiOverlayElement *)v29 setAccessibilityFrame:v19 + v26 * 36.0 + 10.0 + (v26 + 1) * 4.0, v27, 36.0, 43.0];
      v31 = [v28 safeValueForKey:@"string"];
      [(EMKEmojiOverlayElement *)v29 setAccessibilityLabel:v31];
      [array addObject:v29];

      v26 = v30;
    }

    while ([v25 count] > v30);
  }

  [(EMKOverlayViewAccessibility *)height setAccessibilityElements:array];
  v32 = *MEMORY[0x29EDC7F10];
  accessibilityElements = [(EMKOverlayViewAccessibility *)height accessibilityElements];
  firstObject = [accessibilityElements firstObject];
  UIAccessibilityPostNotification(v32, firstObject);

  return height;
}

- (void)setView:(id)view anchorRect:(CGRect)rect
{
  v18.receiver = self;
  v18.super_class = EMKOverlayViewAccessibility;
  [(EMKOverlayViewAccessibility *)&v18 setView:view anchorRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = [(EMKOverlayViewAccessibility *)self safeValueForKey:@"_overlayRect"];
  [v5 rectValue];
  v7 = v6;
  v9 = v8;

  accessibilityElements = [(EMKOverlayViewAccessibility *)self accessibilityElements];
  v11 = [accessibilityElements count];

  if (v11)
  {
    v12 = 0;
    v13 = v9 + 6.0;
    do
    {
      v14 = v12 + 1;
      v15 = v7 + v12 * 36.0 + 10.0 + (v12 + 1) * 4.0;
      accessibilityElements2 = [(EMKOverlayViewAccessibility *)self accessibilityElements];
      v17 = [accessibilityElements2 objectAtIndex:v12];

      [v17 setAccessibilityFrame:{v15, v13, 36.0, 43.0}];
      v12 = v14;
    }

    while (v14 != v11);
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end