@interface _NowPlayingArtViewAccessibility
- (void)setArtworkView:(id)view;
@end

@implementation _NowPlayingArtViewAccessibility

- (void)setArtworkView:(id)view
{
  v5.receiver = self;
  v5.super_class = _NowPlayingArtViewAccessibility;
  viewCopy = view;
  [(_NowPlayingArtViewAccessibility *)&v5 setArtworkView:viewCopy];
  [viewCopy setIsAccessibilityElement:{1, v5.receiver, v5.super_class}];
  v4 = accessibilityLocalizedString(@"album.art.no.artist");
  [viewCopy setAccessibilityLabel:v4];
}

@end