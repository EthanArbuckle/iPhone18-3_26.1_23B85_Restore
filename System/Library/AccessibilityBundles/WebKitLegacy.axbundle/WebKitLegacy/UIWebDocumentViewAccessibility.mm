@interface UIWebDocumentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHasTextOperations;
- (BOOL)_accessibilityIsFirstElementForFocus;
- (BOOL)_accessibilityIsScrollAncestor;
- (BOOL)_accessibilityScrollToFrame:(CGRect)a3 forView:(id)a4;
- (BOOL)_accessibilityScrollingEnabled;
- (BOOL)accessibilityScrollDownPage;
- (BOOL)accessibilityScrollLeftPage;
- (BOOL)accessibilityScrollRightPage;
- (BOOL)accessibilityScrollUpPage;
- (CGRect)_accessibilityContentFrame;
- (CGRect)accessibilityFrame;
- (id)_accessibilityAttributedValueForRange:(_NSRange *)a3;
- (id)_accessibilityDataDetectorScheme:(CGPoint)a3;
- (id)_accessibilityDocumentView;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityResponderElement;
- (id)_accessibilityRootObject;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySpeakThisString;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (int64_t)accessibilityContainerType;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityDocumentView;
- (void)_accessibilityZoomAtPoint:(CGPoint)a3 zoomIn:(BOOL)a4;
- (void)_axZoomToCenterWithScale:(CGPoint)a3 scale:(double)a4;
- (void)clearSelection;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)handleKeyWebEvent:(id)a3;
- (void)paste:(id)a3;
- (void)selectAll:(id)a3;
- (void)setSelectedDOMRange:(id)a3 affinity:(unint64_t)a4;
- (void)setSelectedTextRange:(id)a3;
- (void)stopLoading:(id)a3;
- (void)toggleBoldface:(id)a3;
- (void)toggleItalics:(id)a3;
- (void)toggleUnderline:(id)a3;
- (void)webView:(id)a3 didFailLoadWithError:(id)a4 forFrame:(id)a5;
- (void)webView:(id)a3 didFinishLoadForFrame:(id)a4;
- (void)webView:(id)a3 willShowFullScreenForPlugInView:(id)a4;
@end

@implementation UIWebDocumentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIScrollView" hasInstanceMethod:@"_zoomToCenter: scale: duration:" withFullSignature:{"v", "{CGPoint=dd}", "d", "d", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"_focusedOrMainFrame" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"_zoomedDocumentScale" withFullSignature:{"d", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"approximateNodeAtViewportLocation:" withFullSignature:{"@", "^{CGPoint=dd}", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"clearSelection" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"didEndZoom" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"didZoom" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"hasEditableSelection" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"hasSelection" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"inputDelegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"keyboardInputShouldDelete:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"maximumScale" withFullSignature:{"f", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"minimumScale" withFullSignature:{"f", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"redrawScaledDocument" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"setSelectedDOMRange: affinity:" withFullSignature:{"v", "@", "Q", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"stopLoading:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"textInputTraits" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"toggleBoldface:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"toggleItalics:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"toggleUnderline:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"updatesScrollView" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"webView: didFinishLoadForFrame:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"webView: willShowFullScreenForPlugInView:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"willStartZoom" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceMethod:@"handleKeyWebEvent:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceVariable:@"_documentScale" withType:"f"];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceVariable:@"_plugInViews" withType:"^{__CFDictionary=}"];
  [v3 validateClass:@"UIWebDocumentView" hasInstanceVariable:@"_webView" withType:"WebView"];
  [v3 validateClass:@"UIWebDocumentView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIWebDocumentView"];
  [v3 validateClass:@"WebView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"_accessibleSubviews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DOMNode" hasInstanceMethod:@"handleKeyWebEvent:" withFullSignature:{"v", "@", 0}];
}

- (void)stopLoading:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v6 stopLoading:a3];
  v3 = *MEMORY[0x29EDC75E8];
  LODWORD(v4) = -1.0;
  v5 = [MEMORY[0x29EDBA070] numberWithFloat:v4];
  UIAccessibilityPostNotification(v3, v5);
}

- (void)webView:(id)a3 didFailLoadWithError:(id)a4 forFrame:(id)a5
{
  v8.receiver = self;
  v8.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v8 webView:a3 didFailLoadWithError:a4 forFrame:a5];
  v5 = *MEMORY[0x29EDC75E8];
  LODWORD(v6) = -1.0;
  v7 = [MEMORY[0x29EDBA070] numberWithFloat:v6];
  UIAccessibilityPostNotification(v5, v7);
}

- (void)webView:(id)a3 willShowFullScreenForPlugInView:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v7 webView:a3 willShowFullScreenForPlugInView:a4];
  v4 = *MEMORY[0x29EDC75E8];
  LODWORD(v5) = 1.0;
  v6 = [MEMORY[0x29EDBA070] numberWithFloat:v5];
  UIAccessibilityPostNotification(v4, v6);
}

- (void)setSelectedDOMRange:(id)a3 affinity:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v4 setSelectedDOMRange:a3 affinity:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC74D0], 0);
}

- (void)copy:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v4 copy:a3];
  [(UIWebDocumentViewAccessibility *)self _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC18]];
}

- (void)cut:(id)a3
{
  v4 = *MEMORY[0x29EDBDC18];
  v5 = a3;
  [(UIWebDocumentViewAccessibility *)self _accessibilityIgnoreNextPostPasteboardTextOperation:v4];
  v6.receiver = self;
  v6.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v6 cut:v5];

  [(UIWebDocumentViewAccessibility *)self _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC20]];
}

- (void)paste:(id)a3
{
  v4 = *MEMORY[0x29EDBDC50];
  v5 = a3;
  [(UIWebDocumentViewAccessibility *)self _accessibilityPostPasteboardTextForOperation:v4];
  v6.receiver = self;
  v6.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v6 paste:v5];
}

- (void)selectAll:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v5 selectAll:a3];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = UIKitAccessibilityLocalizedString();
  UIAccessibilityPostNotification(v3, v4);
}

- (void)toggleBoldface:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v5 toggleBoldface:a3];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = UIKitAccessibilityLocalizedString();
  UIAccessibilityPostNotification(v3, v4);
}

- (void)toggleItalics:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v5 toggleItalics:a3];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = UIKitAccessibilityLocalizedString();
  UIAccessibilityPostNotification(v3, v4);
}

- (void)toggleUnderline:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v5 toggleUnderline:a3];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = UIKitAccessibilityLocalizedString();
  UIAccessibilityPostNotification(v3, v4);
}

- (void)_axZoomToCenterWithScale:(CGPoint)a3 scale:(double)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"enclosingScrollView"];
  v9 = v8;
  if (v8 && [v8 safeBoolForKey:@"isZoomEnabled"])
  {
    if (objc_opt_respondsToSelector())
    {
      [(UIWebDocumentViewAccessibility *)self willZoomToLocation:x atScale:y forDuration:a4, 0.1];
    }

    v10 = v9;
    AXPerformSafeBlock();
  }
}

- (void)_accessibilityZoomAtPoint:(CGPoint)a3 zoomIn:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  WebThreadLock();
  v34 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"enclosingScrollView"];
  [v34 convertPoint:self fromView:{x, y}];
  v9 = v8;
  v11 = v10;
  v12 = [v34 safeValueForKey:@"_zoomScale"];
  [v12 floatValue];
  v14 = v13;

  v15 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"_documentScale"];
  [v15 floatValue];
  v17 = v16;

  v18 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"minimumScale"];
  [v18 floatValue];
  v20 = v19;

  v21 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"maximumScale"];
  [v21 floatValue];
  v23 = v22;

  v24 = v20 / v17;
  v25 = v23 / v17;
  v26 = ((v23 / v17) + -1.0) / 10.0;
  if (v14 < 1.0)
  {
    v26 = (1.0 - (v20 / v17)) / 5.0;
  }

  v27 = v26;
  if (!v4)
  {
    v27 = -v27;
  }

  v28 = v27 + v14;
  if (v28 < v24)
  {
    v28 = v24;
  }

  if (v28 > v25)
  {
    v28 = v25;
  }

  [(UIWebDocumentViewAccessibility *)self _axZoomToCenterWithScale:v9 scale:v11, v28];
  v29 = *MEMORY[0x29EDC7EA8];
  v30 = MEMORY[0x29EDBA0F8];
  v31 = UIKitAccessibilityLocalizedString();
  v32 = AXFormatInteger();
  v33 = [v30 stringWithFormat:v31, v32];
  UIAccessibilityPostNotification(v29, v33);

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7428], 0);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)setSelectedTextRange:(id)a3
{
  v3.receiver = self;
  v3.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v3 setSelectedTextRange:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC74D0], 0);
}

- (BOOL)_accessibilityHasTextOperations
{
  v2 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"hasSelection"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)webView:(id)a3 didFinishLoadForFrame:(id)a4
{
  v6 = a4;
  v23.receiver = self;
  v23.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v23 webView:a3 didFinishLoadForFrame:v6];
  v7 = [*MEMORY[0x29EDC8008] _accessibilityBundleIdentifier];
  if (!webView_didFinishLoadForFrame__appsOKToPost)
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDB8D80]) initWithObjects:{@"com.apple.mobilesafari", @"com.apple.Preferences", 0}];
    v9 = webView_didFinishLoadForFrame__appsOKToPost;
    webView_didFinishLoadForFrame__appsOKToPost = v8;
  }

  v10 = [v6 dataSource];
  v11 = [v10 request];
  v12 = [v11 URL];
  if ([v12 isFileURL])
  {
  }

  else
  {
    [v6 dataSource];
    v22 = self;
    v14 = v13 = v7;
    v15 = [v14 request];
    v16 = [v15 URL];
    v17 = [v16 absoluteString];
    v18 = [v17 isEqualToString:@"about:blank"];

    v7 = v13;
    if ((v18 & 1) == 0)
    {
      [(UIWebDocumentViewAccessibility *)v22 bounds];
      if (v19 >= 100.0)
      {
        v20 = [(UIWebDocumentViewAccessibility *)v22 safeValueForKey:@"superview"];

        if (v20)
        {
          if ([webView_didFinishLoadForFrame__appsOKToPost containsObject:v13])
          {
            v21 = [v6 parentFrame];

            if (!v21)
            {
              UIAccessibilityPostNotification(*MEMORY[0x29EDC75E8], 0);
            }
          }
        }
      }
    }
  }
}

- (BOOL)_accessibilityScrollingEnabled
{
  v2 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"_scroller"];
  v3 = [v2 _accessibilityScrollingEnabled];

  return v3;
}

- (id)_accessibilityDataDetectorScheme:(CGPoint)a3
{
  WebThreadLock();
  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v22) = 0;
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v5 = [v4 window];
    UIAccessibilitySceneReferencePointToScreenPoint();
    [v5 convertPoint:0 fromWindow:?];
    [v5 convertPoint:v4 toView:?];
    v7 = v6;
    v9 = v8;
    v26 = v6;
    v27 = v8;
    v10 = [(UIWebDocumentViewAccessibility *)self approximateNodeAtViewportLocation:&v26];
    if (vabdd_f64(v9, v27) > 2.0)
    {
      goto LABEL_16;
    }

    if (vabdd_f64(v7, v26) > 2.0)
    {
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    if (!NSClassFromString(&cfstr_Dddetectioncon.isa))
    {
      goto LABEL_16;
    }

    v11 = [v10 absoluteLinkURL];
    v12 = [v11 absoluteString];
    v13 = [v12 hasPrefix:@"x-apple-data-detectors:"];

    if (!v13)
    {
      goto LABEL_16;
    }

    v14 = [NSClassFromString(&cfstr_Dddetectioncon.isa) sharedController];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v15 = v14;
    v21 = v10;
    AXPerformSafeBlock();
    if (v23[3])
    {
      Category = DDResultGetCategory();
      Type = DDResultGetType();
      v18 = 1;
      if (Category <= 3)
      {
        switch(Category)
        {
          case 1:
            v18 = 0;
            self = @"http";
            break;
          case 2:
            v18 = 0;
            self = @"tel";
            break;
          case 3:
            v18 = 0;
            self = @"address";
            break;
        }
      }

      else if (Category > 5)
      {
        if (Category == 6)
        {
          v18 = 0;
          self = @"money";
        }

        else if (Category == 7)
        {
          v18 = 0;
          self = @"propername";
        }
      }

      else if (Category == 4)
      {
        v18 = 0;
        self = @"event";
      }

      else
      {
        v19 = Type;
        if (CFStringCompare(Type, *MEMORY[0x29EDC0F48], 0))
        {
          v18 = CFStringCompare(v19, *MEMORY[0x29EDC0F40], 0) != kCFCompareEqualTo;
          self = @"item-number";
        }

        else
        {
          v18 = 0;
          self = @"tracking-number";
        }
      }
    }

    else
    {
      v18 = 0;
      self = 0;
    }

    _Block_object_dispose(&v22, 8);
    if (v18)
    {
LABEL_16:
      self = 0;
    }
  }

  else
  {
    _AXAssert();
    return 0;
  }

  return self;
}

void __67__UIWebDocumentViewAccessibility__accessibilityDataDetectorScheme___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [*(a1 + 40) absoluteLinkURL];
  v3 = [*(a1 + 48) safeValueForKey:@"_webView"];
  v4 = [v3 safeValueForKey:@"mainFrame"];
  *(*(*(a1 + 56) + 8) + 24) = [v2 _resultForURL:v5 forContainer:v4 context:0];
}

- (id)accessibilityLabel
{
  v2 = [(UIWebDocumentViewAccessibility *)self accessibilityUserDefinedLabel];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)_accessibilityScrollStatus
{
  v2 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"_scroller"];
  v3 = [v2 _accessibilityScrollStatus];

  return v3;
}

- (void)clearSelection
{
  v2.receiver = self;
  v2.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v2 clearSelection];
  UIAccessibilityPostNotification(0x3FEu, 0);
}

- (BOOL)accessibilityScrollUpPage
{
  v2 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"_scroller"];
  v3 = [v2 accessibilityScrollUpPage];

  return v3;
}

- (BOOL)accessibilityScrollDownPage
{
  v2 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"_scroller"];
  v3 = [v2 accessibilityScrollDownPage];

  return v3;
}

- (BOOL)accessibilityScrollRightPage
{
  v2 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"_scroller"];
  v3 = [v2 accessibilityScrollRightPage];

  return v3;
}

- (BOOL)accessibilityScrollLeftPage
{
  v2 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"_scroller"];
  v3 = [v2 accessibilityScrollLeftPage];

  return v3;
}

- (id)_accessibilityAttributedValueForRange:(_NSRange *)a3
{
  v5 = [(UIWebDocumentViewAccessibility *)self _accessibilityRootObject];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v12 = MEMORY[0x29EDCA5F8];
  v13 = 3221225472;
  v14 = __72__UIWebDocumentViewAccessibility__accessibilityAttributedValueForRange___block_invoke;
  v15 = &unk_29F321680;
  v17 = &v19;
  v6 = v5;
  v16 = v6;
  v18 = a3;
  AXPerformSafeBlock();
  v7 = v20[5];

  _Block_object_dispose(&v19, 8);
  if (![v7 length])
  {
    v8 = [v6 _accessibilityAttributedValueForRange:a3];

    v7 = v8;
  }

  if (![v7 length])
  {
    v11.receiver = self;
    v11.super_class = UIWebDocumentViewAccessibility;
    v9 = [(UIWebDocumentViewAccessibility *)&v11 _accessibilityAttributedValueForRange:a3];

    v7 = v9;
  }

  return v7;
}

uint64_t __72__UIWebDocumentViewAccessibility__accessibilityAttributedValueForRange___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) attributedStringForRange:{**(a1 + 48), *(*(a1 + 48) + 8)}];

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityIsFirstElementForFocus
{
  if (axIsSafari())
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UIWebDocumentViewAccessibility;
  return [(UIWebDocumentViewAccessibility *)&v4 _accessibilityIsFirstElementForFocus];
}

- (id)_accessibilityDocumentView
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v3 = getWebThreadLockSymbolLoc_ptr;
  v13 = getWebThreadLockSymbolLoc_ptr;
  if (!getWebThreadLockSymbolLoc_ptr)
  {
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __getWebThreadLockSymbolLoc_block_invoke;
    v9[3] = &unk_29F3216A8;
    v9[4] = &v10;
    __getWebThreadLockSymbolLoc_block_invoke(v9);
    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v3)
  {
    [UIWebDocumentViewAccessibility _accessibilityDocumentView];
  }

  v3();
  v4 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"_webView"];
  v5 = [v4 mainFrame];
  v6 = [v5 frameView];
  v7 = [v6 documentView];

  return v7;
}

- (id)_accessibilityRootObject
{
  v2 = [(UIWebDocumentViewAccessibility *)self _accessibilityDocumentView];
  v3 = [v2 safeValueForKey:@"accessibilityRootElement"];

  return v3;
}

- (id)_accessibilityResponderElement
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = [(UIWebDocumentViewAccessibility *)self _accessibilityRootObject];
  NSClassFromString(&cfstr_Webpdfview.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
    v4 = v2;
  }

  else
  {
    v4 = [v2 safeValueForKey:@"accessibilityFocusedUIElement"];

    v5 = [v4 accessibilityTraits];
    if ((*MEMORY[0x29EDC7528] & v5) != 0)
    {
      v4 = v4;
      v3 = v4;
    }

    else
    {
      v6 = [NSClassFromString(&cfstr_Uiperipheralho.isa) safeValueForKey:@"sharedInstance"];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 safeValueForKey:@"_hostView"];
        [v8 _accessibleSubviews];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = v19 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v16 + 1) + 8 * i);
              if ([v14 _accessibilityServesAsFirstElement])
              {
                v3 = v14;

                goto LABEL_17;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        if ([v9 count])
        {
          v3 = [v9 objectAtIndex:0];
        }

        else
        {
          v3 = 0;
        }

LABEL_17:
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = [(UIWebDocumentViewAccessibility *)self _accessibilityValueForKey:@"AXDocumentSeenChildren"];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) _accessibilityRemoveValueForKey:@"AXWebDocumentViewKey"];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v8 dealloc];
}

- (id)accessibilityElements
{
  v6[1] = *MEMORY[0x29EDCA608];
  v2 = [(UIWebDocumentViewAccessibility *)self _accessibilityRootObject];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)_accessibilityContentFrame
{
  v2 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"_scroller"];
  [v2 _accessibilityContentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)_accessibilityScrollToFrame:(CGRect)a3 forView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"updatesScrollView"];
  v10 = [v9 BOOLValue];

  if ((v10 & 1) == 0)
  {
    v11 = [MEMORY[0x29EDB9F48] mainBundle];
    v12 = [v11 bundleIdentifier];
    v13 = [v12 isEqualToString:@"com.apple.purplebuddy"];

    if (!v13)
    {
      return 0;
    }
  }

  v14 = [(UIWebDocumentViewAccessibility *)self safeValueForKey:@"_scroller"];
  v15 = [v14 _accessibilityScrollToFrame:0 forView:{x, y, width, height}];

  return v15;
}

- (BOOL)_accessibilityIsScrollAncestor
{
  v3 = [(UIWebDocumentViewAccessibility *)self isAccessibilityUserDefinedScrollAncestor];

  if (!v3)
  {
    return 1;
  }

  v4 = [(UIWebDocumentViewAccessibility *)self isAccessibilityUserDefinedScrollAncestor];
  v5 = [v4 BOOLValue];

  return v5;
}

- (int64_t)accessibilityContainerType
{
  v3 = [(UIWebDocumentViewAccessibility *)self accessibilityUserDefinedTraits];
  if (v3)
  {
    v8.receiver = self;
    v8.super_class = UIWebDocumentViewAccessibility;
    v4 = [(UIWebDocumentViewAccessibility *)&v8 accessibilityContainerType];
  }

  else
  {
    v5 = [(UIWebDocumentViewAccessibility *)self storedAccessibilityContainerType];

    if (v5)
    {
      v6 = [(UIWebDocumentViewAccessibility *)self storedAccessibilityContainerType];
      v4 = [v6 integerValue];
    }

    else
    {
      v4 = 4;
    }
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(UIWebDocumentViewAccessibility *)self accessibilityUserDefinedTraits];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = *MEMORY[0x29EDC7FA0];
  }

  return v4;
}

- (CGRect)accessibilityFrame
{
  v14.receiver = self;
  v14.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v14 accessibilityFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (axIsSafari())
  {
    v10 = v5 + 20.0;
  }

  else
  {
    v10 = v5;
  }

  v11 = v3;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v11;
  return result;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v33 = *MEMORY[0x29EDCA608];
  v7 = a4;
  if (![(UIWebDocumentViewAccessibility *)self pointInside:v7 withEvent:x, y])
  {
    v14 = 0;
    goto LABEL_34;
  }

  if (!_accessibilityHitTest_withEvent__AXObjectWrapperClass)
  {
    _accessibilityHitTest_withEvent__AXObjectWrapperClass = NSClassFromString(&cfstr_Webaccessibili.isa);
  }

  [-[UIWebDocumentViewAccessibility _axPluginViews](self "_axPluginViews")];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v31 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        [v13 convertPoint:self fromView:{x, y, v28}];
        v14 = [v13 hitTest:v7 withEvent:?];

        if ([v14 isAccessibilityElement])
        {

          goto LABEL_33;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v8 = [(UIWebDocumentViewAccessibility *)self _accessibilityDocumentView];
  [v8 convertPoint:0 fromView:{x, y}];
  v16 = v15;
  v18 = v17;
  if ([v7 _accessibilityAutomationHitTest])
  {
    [(UIWebDocumentViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"AXIgnoreFuzzyHitTesting"];
  }

  v14 = [v8 accessibilityHitTest:{v16, v18, v28}];
  if (v14)
  {
    do
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v19 = [v14 safeValueForKey:@"isAttachment"];
      v20 = [v19 BOOLValue];

      if (!v20)
      {
        break;
      }

      v21 = [v14 safeValueForKey:@"attachmentView"];
      v22 = [v21 safeValueForKey:@"contentView"];
      v23 = [v22 safeValueForKey:@"documentView"];

      [v23 convertPoint:0 fromView:{x, y}];
      v24 = [v23 accessibilityHitTest:?];
      v25 = v24;
      if (v24 == v14)
      {

        break;
      }

      v14 = v25;
    }

    while (v25);
  }

  if ([v7 _accessibilityAutomationHitTest])
  {
    [(UIWebDocumentViewAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"AXIgnoreFuzzyHitTesting"];
  }

  if ([v14 isAccessibilityElement])
  {
    if (v14)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v26 = [(UIWebDocumentViewAccessibility *)self __accessibilityHitTest:v7 withEvent:x, y];
  if (!v26)
  {
    if (![(UIWebDocumentViewAccessibility *)self pointInside:v7 withEvent:x, y])
    {
      v14 = 0;
      goto LABEL_33;
    }

    v26 = self;
  }

  v14 = v26;
LABEL_33:

LABEL_34:

  return v14;
}

- (id)_accessibilitySpeakThisString
{
  v2 = self;
  v3 = [(UIWebDocumentViewAccessibility *)v2 selectedTextRange];
  v4 = [(UIWebDocumentViewAccessibility *)v2 beginningOfDocument];
  v5 = [(UIWebDocumentViewAccessibility *)v2 endOfDocument];
  v6 = [(UIWebDocumentViewAccessibility *)v2 textRangeFromPosition:v4 toPosition:v5];
  v10.receiver = v2;
  v10.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v10 setSelectedTextRange:v6];
  v7 = [(UIWebDocumentViewAccessibility *)v2 textInRange:v6];
  v9.receiver = v2;
  v9.super_class = UIWebDocumentViewAccessibility;
  [(UIWebDocumentViewAccessibility *)&v9 setSelectedTextRange:v3];

  return v7;
}

- (void)handleKeyWebEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIWebDocumentViewAccessibility;
  v3 = a3;
  [(UIWebDocumentViewAccessibility *)&v4 handleKeyWebEvent:v3];
  sendNotificationAfterHandlingWebKeyEventIfNeeded(v3);
}

- (void)_accessibilityDocumentView
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void get_WebThreadLock(void)"];
  [v0 handleFailureInFunction:v1 file:@"UIWebDocumentViewAccessibility.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

@end