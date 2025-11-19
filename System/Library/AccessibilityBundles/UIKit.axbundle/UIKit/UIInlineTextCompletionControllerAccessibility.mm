@interface UIInlineTextCompletionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)acceptTextCompletionWithInteraction:(int64_t)a3 wordTerminator:(id)a4 outputHandledByCaller:(BOOL)a5;
@end

@implementation UIInlineTextCompletionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIInlineTextCompletionController" hasInstanceMethod:@"acceptTextCompletionWithInteraction:wordTerminator:outputHandledByCaller:" withFullSignature:{"q", "@", "B", 0}];
  objc_storeStrong(v4, obj);
}

- (id)acceptTextCompletionWithInteraction:(int64_t)a3 wordTerminator:(id)a4 outputHandledByCaller:(BOOL)a5
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v16 = a5;
  v14.receiver = v20;
  v14.super_class = UIInlineTextCompletionControllerAccessibility;
  v15 = [(UIInlineTextCompletionControllerAccessibility *)&v14 acceptTextCompletionWithInteraction:v18 wordTerminator:location outputHandledByCaller:a5];
  v9 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v10 = [v9 voiceOverInlineTextCompletionInsertionFeedback];
  *&v5 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  v12 = 0;
  v11 = 0;
  if ((v10 & 4) != 0)
  {
    v13 = [v15 candidate];
    v12 = 1;
    v11 = [v13 length] != 0;
  }

  if (v12)
  {
    MEMORY[0x29EDC9740](v13);
  }

  if (v11)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], 0);
  }

  v7 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);

  return v7;
}

@end