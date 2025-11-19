@interface WKContentView_QSExtras
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityShouldShowSpeakBubble;
- (BOOL)_accessibilityShouldShowSpeakLanguageBubble;
- (BOOL)_accessibilityShouldShowSpeakSpellOut;
- (BOOL)_accessibilityShouldUpdateQuickSpeakContent;
- (BOOL)_accessibilitySystemShouldShowSpeakBubble;
- (id)_accessibilityQuickSpeakContent;
- (id)_accessibilityRetrieveRectsForGuanularity:(int64_t)a3 atSelectionOffset:(int64_t)a4 wordText:(id)a5;
- (id)_webTextRectsFromWKTextRects:(id)a3;
- (unint64_t)_axSelectedTextLength;
- (void)_accessibilityDidGetSelectionRects:(id)a3 withGranularity:(int64_t)a4 atOffset:(int64_t)a5;
- (void)_accessibilityQuickSpeakContent;
- (void)_axWaitForSpeakSelectionContentResults;
- (void)_axWaitForSpeakSelectionRectResultsForGuanularity:(int64_t)a3 atSelectionOffset:(int64_t)a4 wordText:(id)a5;
- (void)_selectionChanged;
- (void)accessibilitySpeakSelectionSetContent:(id)a3;
@end

@implementation WKContentView_QSExtras

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WKContentView" hasInstanceMethod:@"selectedText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WKContentView" hasInstanceMethod:@"accessibilityRetrieveSpeakSelectionContent" withFullSignature:{"v", 0}];
  [v3 validateClass:@"WebSelectionRect" hasInstanceMethod:@"rect" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"WKContentView" hasInstanceMethod:@"_accessibilityRetrieveRectsEnclosingSelectionOffset:withGranularity:" withFullSignature:{"v", "q", "q", 0}];
  [v3 validateClass:@"WKContentView" hasInstanceMethod:@"_accessibilityRetrieveRectsAtSelectionOffset:withText:" withFullSignature:{"v", "q", "@", 0}];
  [v3 validateClass:@"WKContentView" hasInstanceMethod:@"_selectionChanged" withFullSignature:{"v", 0}];
  [v3 validateClass:@"WKContentView" hasInstanceMethod:@"_accessibilityStoreSelection" withFullSignature:{"v", 0}];
  [v3 validateClass:@"WKContentView" hasInstanceMethod:@"_accessibilityClearSelection" withFullSignature:{"v", 0}];
  [v3 validateClass:@"WKTextRange"];
  [v3 validateClass:@"WKContentView" hasInstanceMethod:@"selectedTextRange" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WKTextRange" hasInstanceMethod:@"selectedTextLength" withFullSignature:{"Q", 0}];
}

- (BOOL)_accessibilitySystemShouldShowSpeakBubble
{
  if (![(WKContentView_QSExtras *)self _accessibilitySystemShouldShowSpeakBubbleCommon])
  {
    return 0;
  }

  v3 = +[AXQuickSpeak sharedInstance];
  v4 = ([v3 isPaused] & 1) != 0 || -[WKContentView_QSExtras _accessibilityShouldShowSpeakBubble](self, "_accessibilityShouldShowSpeakBubble");

  return v4;
}

- (void)_selectionChanged
{
  v7.receiver = self;
  v7.super_class = WKContentView_QSExtras;
  [(WKContentView_QSExtras *)&v7 _selectionChanged];
  v3 = [(WKContentView_QSExtras *)self _accessibilityValueForKey:@"AXSelectionRange"];
  objc_opt_class();
  v4 = [(WKContentView_QSExtras *)self safeValueForKey:@"selectedTextRange"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v3 isEqual:v5];
  if (!v5)
  {
    [(WKContentView_QSExtras *)self _accessibilityRemoveValueForKey:@"AXSelectionRange"];
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [(WKContentView_QSExtras *)self _accessibilitySetValue:v5 forKey:@"AXSelectionRange" storageMode:0];
  if ((v6 & 1) == 0)
  {
LABEL_3:
    [(WKContentView_QSExtras *)self _accessibilityRemoveValueForKey:@"AXSpeakSelectionString"];
  }

LABEL_4:
}

- (void)_axWaitForSpeakSelectionContentResults
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C1E5000, a2, OS_LOG_TYPE_ERROR, "WKContentView: Caught exception while waiting for results: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

- (BOOL)_accessibilityShouldShowSpeakBubble
{
  v3 = [(WKContentView_QSExtras *)self safeValueForKey:@"selectedTextRange"];
  v4 = __UIAccessibilitySafeClass();

  LOBYTE(v3) = [v4 isEmpty];
  if (v3)
  {
    return 0;
  }

  else
  {
    return [(WKContentView_QSExtras *)self _accessibilitySystemShouldShowSpeakBubbleCommon];
  }
}

- (BOOL)_accessibilityShouldShowSpeakSpellOut
{
  v3 = [(WKContentView_QSExtras *)self safeValueForKey:@"selectedTextRange"];
  v4 = __UIAccessibilitySafeClass();

  LOBYTE(v3) = [v4 isEmpty];
  if (v3)
  {
    return 0;
  }

  else
  {
    return [(WKContentView_QSExtras *)self _accessibilitySystemShouldShowSpeakSpellOut];
  }
}

- (BOOL)_accessibilityShouldShowSpeakLanguageBubble
{
  v3 = [(WKContentView_QSExtras *)self safeValueForKey:@"selectedTextRange"];
  v4 = __UIAccessibilitySafeClass();

  LOBYTE(v3) = [v4 isEmpty];
  if (v3)
  {
    return 0;
  }

  else
  {
    return [(WKContentView_QSExtras *)self _accessibilitySystemShouldShowSpeakBubbleCommon];
  }
}

- (BOOL)_accessibilityShouldUpdateQuickSpeakContent
{
  v2 = [(WKContentView_QSExtras *)self _accessibilityQuickSpeakContent];
  v3 = [v2 length] == 0;

  return v3;
}

- (void)accessibilitySpeakSelectionSetContent:(id)a3
{
  v4 = a3;
  v5 = AXLogSpeakSelection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(WKContentView_QSExtras *)v4 accessibilitySpeakSelectionSetContent:v5];
  }

  [(WKContentView_QSExtras *)self _accessibilitySetRetainedValue:v4 forKey:@"AXSpeakSelectionString"];
  v6 = [(WKContentView_QSExtras *)self safeValueForKey:@"_accessibilityCacheContentIfNecessary"];
  [(WKContentView_QSExtras *)self _accessibilitySetBoolValue:0 forKey:@"AXRetrievingContent"];
}

- (id)_accessibilityQuickSpeakContent
{
  if (([(WKContentView_QSExtras *)self _accessibilityBoolValueForKey:@"AXIsCachingContent"]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    [(WKContentView_QSExtras *)self _accessibilitySetBoolValue:1 forKey:@"AXIsCachingContent"];
    [(WKContentView_QSExtras *)self _axWaitForSpeakSelectionContentResults];
    [(WKContentView_QSExtras *)self _accessibilitySetBoolValue:0 forKey:@"AXIsCachingContent"];
    v3 = [(WKContentView_QSExtras *)self _accessibilityValueForKey:@"AXSpeakSelectionString"];
    v4 = AXLogSpeakSelection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(WKContentView_QSExtras *)v3 _accessibilityQuickSpeakContent];
    }
  }

  return v3;
}

- (id)_webTextRectsFromWKTextRects:(id)a3
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) safeValueForKey:{@"rect", v13}];
        [v4 axSafelyAddObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x29EDCA608];

  return v4;
}

- (id)_accessibilityRetrieveRectsForGuanularity:(int64_t)a3 atSelectionOffset:(int64_t)a4 wordText:(id)a5
{
  [(WKContentView_QSExtras *)self _axWaitForSpeakSelectionRectResultsForGuanularity:a3 atSelectionOffset:a4 wordText:a5];
  if (a3 == 1)
  {
    v7 = [(WKContentView_QSExtras *)self accessibilityQSWordRects];
  }

  else if (a3 == 2)
  {
    v7 = [(WKContentView_QSExtras *)self accessibilityQSSentenceRects];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_axWaitForSpeakSelectionRectResultsForGuanularity:(int64_t)a3 atSelectionOffset:(int64_t)a4 wordText:(id)a5
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = a5;
  [(WKContentView_QSExtras *)self _accessibilitySetBoolValue:1 forKey:@"AXRetrievingRects"];
  v7 = v6;
  AXPerformSafeBlock();
  Current = CFAbsoluteTimeGetCurrent();
  for (i = *MEMORY[0x29EDB8FC0]; [(WKContentView_QSExtras *)self _accessibilityBoolValueForKey:@"AXRetrievingRects"]; CFRunLoopRunInMode(i, 0.025, 1u))
  {
    v10 = CFAbsoluteTimeGetCurrent();
    v11 = _AXSInUnitTestMode() ? 1.0 : 0.2;
    if (v10 - Current >= v11)
    {
      break;
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityDidGetSelectionRects:(id)a3 withGranularity:(int64_t)a4 atOffset:(int64_t)a5
{
  v7 = a3;
  [(WKContentView_QSExtras *)self _accessibilitySetBoolValue:0 forKey:@"AXRetrievingRects"];
  v10 = [(WKContentView_QSExtras *)self _webTextRectsFromWKTextRects:v7];

  if (a4 == 1)
  {
    v8 = [(WKContentView_QSExtras *)self accessibilitySetQSWordRects:v10];
  }

  else
  {
    v9 = v10;
    if (a4 != 2)
    {
      goto LABEL_6;
    }

    v8 = [(WKContentView_QSExtras *)self accessibilitySetQSSentenceRects:v10];
  }

  v9 = v10;
LABEL_6:

  MEMORY[0x2A1C71028](v8, v9);
}

- (unint64_t)_axSelectedTextLength
{
  v2 = [(WKContentView_QSExtras *)self safeValueForKey:@"selectedTextRange"];
  v3 = [v2 safeUnsignedIntegerForKey:@"selectedTextLength"];

  return v3;
}

- (void)accessibilitySpeakSelectionSetContent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138477827;
  v4 = a1;
  _os_log_debug_impl(&dword_29C1E5000, a2, OS_LOG_TYPE_DEBUG, "WebKit content setting AXSpeakSelectionString '%{private}@'", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityQuickSpeakContent
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138477827;
  v4 = a1;
  _os_log_debug_impl(&dword_29C1E5000, a2, OS_LOG_TYPE_DEBUG, "WebKit content requesting AXSpeakSelectionString: '%{private}@'", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end