@interface UIInlineTextCompletionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)acceptTextCompletionWithInteraction:(int64_t)interaction wordTerminator:(id)terminator outputHandledByCaller:(BOOL)caller;
@end

@implementation UIInlineTextCompletionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIInlineTextCompletionController" hasInstanceMethod:@"acceptTextCompletionWithInteraction:wordTerminator:outputHandledByCaller:" withFullSignature:{"q", "@", "B", 0}];
  objc_storeStrong(v4, obj);
}

- (id)acceptTextCompletionWithInteraction:(int64_t)interaction wordTerminator:(id)terminator outputHandledByCaller:(BOOL)caller
{
  selfCopy = self;
  v19 = a2;
  interactionCopy = interaction;
  location = 0;
  objc_storeStrong(&location, terminator);
  callerCopy = caller;
  v14.receiver = selfCopy;
  v14.super_class = UIInlineTextCompletionControllerAccessibility;
  v15 = [(UIInlineTextCompletionControllerAccessibility *)&v14 acceptTextCompletionWithInteraction:interactionCopy wordTerminator:location outputHandledByCaller:caller];
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  voiceOverInlineTextCompletionInsertionFeedback = [mEMORY[0x29EDBDFA0] voiceOverInlineTextCompletionInsertionFeedback];
  *&v5 = MEMORY[0x29EDC9740](mEMORY[0x29EDBDFA0]).n128_u64[0];
  v12 = 0;
  v11 = 0;
  if ((voiceOverInlineTextCompletionInsertionFeedback & 4) != 0)
  {
    candidate = [v15 candidate];
    v12 = 1;
    v11 = [candidate length] != 0;
  }

  if (v12)
  {
    MEMORY[0x29EDC9740](candidate);
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