@interface GAXSBActivityBannerObserverOverride
- (BOOL)shouldHandleActivityItem:(id)item;
@end

@implementation GAXSBActivityBannerObserverOverride

- (BOOL)shouldHandleActivityItem:(id)item
{
  itemCopy = item;
  v5 = +[GAXSpringboard sharedInstance];
  v6 = [itemCopy safeValueForKey:@"descriptor"];
  v7 = [v6 safeStringForKey:@"platterTargetBundleIdentifier"];

  v8 = [v7 isEqualToString:@"com.apple.NetworkEndpointPickerUI"];
  if ([v5 isActive])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = GAXSBActivityBannerObserverOverride;
    v10 = [(GAXSBActivityBannerObserverOverride *)&v12 shouldHandleActivityItem:itemCopy];
  }

  return v10;
}

@end