@interface SBHLibraryCategoryPodIconViewAccessibility
- (CGRect)accessibilityFrameForScrolling;
@end

@implementation SBHLibraryCategoryPodIconViewAccessibility

- (CGRect)accessibilityFrameForScrolling
{
  selfCopy = [(SBHLibraryCategoryPodIconViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:0];
  v4 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [selfCopy accessibilityFrameForScrolling];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

uint64_t __76__SBHLibraryCategoryPodIconViewAccessibility_accessibilityFrameForScrolling__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Sbhlibrarypodi_1.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end