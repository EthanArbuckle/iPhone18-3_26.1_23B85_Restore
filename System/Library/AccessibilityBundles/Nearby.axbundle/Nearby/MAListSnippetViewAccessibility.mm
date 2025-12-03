@interface MAListSnippetViewAccessibility
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation MAListSnippetViewAccessibility

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = MAListSnippetViewAccessibility;
  v4 = [(MAListSnippetViewAccessibility *)&v11 tableView:view cellForRowAtIndexPath:path];
  reuseIdentifier = [v4 reuseIdentifier];
  v6 = [reuseIdentifier isEqualToString:@"YelpAttribution"];

  if (v6)
  {
    v7 = AXMapsAssistantUILocString(@"YELP_REVIEWS");
    [v4 setAccessibilityLabel:v7];
  }

  else
  {
    v8 = [v4 safeValueForKey:@"resultView"];
    v7 = v8;
    if (v8)
    {
      accessibilityLabel = [v8 accessibilityLabel];
      [v4 setAccessibilityLabel:accessibilityLabel];
    }
  }

  return v4;
}

@end