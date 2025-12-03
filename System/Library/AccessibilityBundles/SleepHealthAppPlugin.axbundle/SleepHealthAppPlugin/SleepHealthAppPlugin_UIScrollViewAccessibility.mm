@interface SleepHealthAppPlugin_UIScrollViewAccessibility
- (BOOL)_axIsSleepGalleryPagingScrollView;
- (CGSize)_axPageSize;
- (UIEdgeInsets)_accessibilityVisibleContentInset;
- (id)_accessibilityScrollStatus;
@end

@implementation SleepHealthAppPlugin_UIScrollViewAccessibility

- (BOOL)_axIsSleepGalleryPagingScrollView
{
  accessibilityIdentification = [(SleepHealthAppPlugin_UIScrollViewAccessibility *)self accessibilityIdentification];
  v3 = [accessibilityIdentification isEqualToString:@"SleepGalleryPagingScrollView"];

  return v3;
}

- (id)_accessibilityScrollStatus
{
  if ([(SleepHealthAppPlugin_UIScrollViewAccessibility *)self _axIsSleepGalleryPagingScrollView])
  {
    v3 = [(SleepHealthAppPlugin_UIScrollViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 _accessibilityFindDescendant:&__block_literal_global_0];
      if (v5)
      {
        v6 = v5;
        accessibilityLabel = [v5 accessibilityLabel];

        goto LABEL_11;
      }

      v8 = AXLogValidations();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SleepHealthAppPlugin_UIScrollViewAccessibility *)v8 _accessibilityScrollStatus];
      }
    }

    else
    {
      v8 = AXLogValidations();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SleepHealthAppPlugin_UIScrollViewAccessibility *)v8 _accessibilityScrollStatus];
      }
    }
  }

  v10.receiver = self;
  v10.super_class = SleepHealthAppPlugin_UIScrollViewAccessibility;
  accessibilityLabel = [(SleepHealthAppPlugin_UIScrollViewAccessibility *)&v10 _accessibilityScrollStatus];
LABEL_11:

  return accessibilityLabel;
}

- (CGSize)_axPageSize
{
  v18.receiver = self;
  v18.super_class = SleepHealthAppPlugin_UIScrollViewAccessibility;
  [(SleepHealthAppPlugin_UIScrollViewAccessibility *)&v18 _axPageSize];
  v4 = v3;
  v6 = v5;
  if ([(SleepHealthAppPlugin_UIScrollViewAccessibility *)self _axIsSleepGalleryPagingScrollView])
  {
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    [v7 contentInset];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v4 = v4 - (v11 + v15);
    v6 = v6 - (v9 + v13);
  }

  v16 = v4;
  v17 = v6;
  result.height = v17;
  result.width = v16;
  return result;
}

- (UIEdgeInsets)_accessibilityVisibleContentInset
{
  if ([(SleepHealthAppPlugin_UIScrollViewAccessibility *)self _axIsSleepGalleryPagingScrollView])
  {
    v3 = *MEMORY[0x29EDC80C8];
    v4 = *(MEMORY[0x29EDC80C8] + 8);
    v5 = *(MEMORY[0x29EDC80C8] + 16);
    v6 = *(MEMORY[0x29EDC80C8] + 24);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SleepHealthAppPlugin_UIScrollViewAccessibility;
    [(SleepHealthAppPlugin_UIScrollViewAccessibility *)&v7 _accessibilityVisibleContentInset];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end