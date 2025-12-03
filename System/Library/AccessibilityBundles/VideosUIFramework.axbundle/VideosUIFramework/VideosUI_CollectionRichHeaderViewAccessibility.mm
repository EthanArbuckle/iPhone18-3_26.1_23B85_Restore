@interface VideosUI_CollectionRichHeaderViewAccessibility
- (id)_axHeaderTextContentElement;
- (id)accessibilityElements;
@end

@implementation VideosUI_CollectionRichHeaderViewAccessibility

- (id)_axHeaderTextContentElement
{
  _axHeaderTextContentElementStorage = [(VideosUI_CollectionRichHeaderViewAccessibility *)self _axHeaderTextContentElementStorage];
  if (!_axHeaderTextContentElementStorage)
  {
    _axHeaderTextContentElementStorage = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [_axHeaderTextContentElementStorage setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __77__VideosUI_CollectionRichHeaderViewAccessibility__axHeaderTextContentElement__block_invoke;
    v12[3] = &unk_29F31C480;
    objc_copyWeak(&v13, &location);
    [_axHeaderTextContentElementStorage _setAccessibilityFrameBlock:v12];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __77__VideosUI_CollectionRichHeaderViewAccessibility__axHeaderTextContentElement__block_invoke_2;
    v10[3] = &unk_29F31C4A8;
    objc_copyWeak(&v11, &location);
    [_axHeaderTextContentElementStorage _setAccessibilityActivateBlock:v10];
    v5 = MEMORY[0x29EDCA5F8];
    v6 = 3221225472;
    v7 = __77__VideosUI_CollectionRichHeaderViewAccessibility__axHeaderTextContentElement__block_invoke_4;
    v8 = &unk_29F31C4D0;
    objc_copyWeak(&v9, &location);
    [_axHeaderTextContentElementStorage _setAccessibilityTraitsBlock:&v5];
    [(VideosUI_CollectionRichHeaderViewAccessibility *)self _axSetHeaderTextContentElementStorage:_axHeaderTextContentElementStorage, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return _axHeaderTextContentElementStorage;
}

- (id)accessibilityElements
{
  if (AXDoesRequestingClientDeserveAutomation())
  {
    accessibilityElements = [(VideosUI_CollectionRichHeaderViewAccessibility *)self safeArrayForKey:@"subviews"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VideosUI_CollectionRichHeaderViewAccessibility;
    accessibilityElements = [(VideosUI_CollectionRichHeaderViewAccessibility *)&v5 accessibilityElements];
  }

  return accessibilityElements;
}

@end