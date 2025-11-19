@interface _SBHLibraryPodIconListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
@end

@implementation _SBHLibraryPodIconListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBHLibraryPodFolderView"];
  [v3 validateClass:@"SBHLibraryPodFolderView" hasInstanceMethod:@"librarySearchControllerScrollViewDelegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHLibrarySearchController"];
  [v3 validateClass:@"SBHLibrarySearchController" hasInstanceMethod:@"setActive:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"UIScrollView" hasInstanceMethod:@"_minimumContentOffset" withFullSignature:{"{CGPoint=dd}", 0}];
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = [(_SBHLibraryPodIconListViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v6 = v5;
  if (a3 == 3 && ([v5 contentOffset], v8 = v7, objc_msgSend(v6, "safeCGPointForKey:", @"_minimumContentOffset"), v8 == v9))
  {
    v10 = [(_SBHLibraryPodIconListViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbhlibrarypodf_1.isa)];
    v11 = [v10 safeValueForKey:@"librarySearchControllerScrollViewDelegate"];
    v12 = __UIAccessibilitySafeClass();

    v16 = v12;
    v13 = v12;
    AXPerformSafeBlock();

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end