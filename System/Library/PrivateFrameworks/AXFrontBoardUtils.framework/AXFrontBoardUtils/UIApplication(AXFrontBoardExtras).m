@interface UIApplication(AXFrontBoardExtras)
- (id)_accessibilityRecentlyActivatedApplicationBundleIdentifiers;
- (void)_accessibilityAddRecentlyActivatedBundleIdFromSwitcher:()AXFrontBoardExtras;
@end

@implementation UIApplication(AXFrontBoardExtras)

- (void)_accessibilityAddRecentlyActivatedBundleIdFromSwitcher:()AXFrontBoardExtras
{
  v3 = _accessibilityAddRecentlyActivatedBundleIdFromSwitcher__onceToken;
  v4 = a3;
  v6 = v4;
  if (v3 == -1)
  {
    v5 = v4;
  }

  else
  {
    [UIApplication(AXFrontBoardExtras) _accessibilityAddRecentlyActivatedBundleIdFromSwitcher:];
    v5 = v6;
  }

  [_accessibilityBundleIdsRecentlyActivatedFromSwitcher addObject:v5];
}

- (id)_accessibilityRecentlyActivatedApplicationBundleIdentifiers
{
  if (_accessibilityBundleIdsRecentlyActivatedFromSwitcher)
  {
    v0 = _accessibilityBundleIdsRecentlyActivatedFromSwitcher;
  }

  else
  {
    v0 = [MEMORY[0x277CBEB98] set];
  }

  return v0;
}

@end