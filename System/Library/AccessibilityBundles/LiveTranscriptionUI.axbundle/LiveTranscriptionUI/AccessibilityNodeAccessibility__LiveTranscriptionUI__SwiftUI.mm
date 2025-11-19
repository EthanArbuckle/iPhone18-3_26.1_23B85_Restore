@interface AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI
- (BOOL)_accessibilityIsRealtimeElement;
- (id)accessibilityAttributedLabel;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI

- (int64_t)_accessibilityExpandedStatus
{
  v3 = [(AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AXLCNubbit"];

  if (!v4)
  {
    goto LABEL_7;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v9 = MEMORY[0x29EDCA5F8];
  v10 = 3221225472;
  v11 = __92__AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI__accessibilityExpandedStatus__block_invoke;
  v12 = &unk_29F2C9EF0;
  v13 = self;
  v14 = &v15;
  AXPerformSafeBlock();
  v5 = v16[5];
  _Block_object_dispose(&v15, 8);

  if (v5)
  {
    if ([v5 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
LABEL_7:
    v8.receiver = self;
    v8.super_class = AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI;
    return [(AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI *)&v8 _accessibilityExpandedStatus];
  }

  return v6;
}

- (id)accessibilityAttributedLabel
{
  v15[1] = *MEMORY[0x29EDCA608];
  v13.receiver = self;
  v13.super_class = AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI;
  v3 = [(AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI *)&v13 accessibilityAttributedLabel];
  v4 = [(AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI *)self accessibilityIdentifier];
  v5 = [v4 isEqualToString:@"AXLCCaptionText"];

  if (v5)
  {
    v6 = [v3 string];
    v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];

    v8 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithStringOrAttributedString:v7];
    v14 = *MEMORY[0x29EDBD878];
    v15[0] = MEMORY[0x29EDB8EB0];
    v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v8 setAttributes:v9];

    v10 = [v8 attributedString];

    v3 = v10;
  }

  v11 = *MEMORY[0x29EDCA608];

  return v3;
}

- (BOOL)_accessibilityIsRealtimeElement
{
  v3 = [(AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AXLCCaptionText"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI;
  return [(AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI *)&v6 _accessibilityIsRealtimeElement];
}

@end