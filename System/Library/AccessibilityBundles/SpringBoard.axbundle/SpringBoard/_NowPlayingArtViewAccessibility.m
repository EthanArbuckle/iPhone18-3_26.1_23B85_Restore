@interface _NowPlayingArtViewAccessibility
- (void)setArtworkView:(id)a3;
@end

@implementation _NowPlayingArtViewAccessibility

- (void)setArtworkView:(id)a3
{
  v5.receiver = self;
  v5.super_class = _NowPlayingArtViewAccessibility;
  v3 = a3;
  [(_NowPlayingArtViewAccessibility *)&v5 setArtworkView:v3];
  [v3 setIsAccessibilityElement:{1, v5.receiver, v5.super_class}];
  v4 = accessibilityLocalizedString(@"album.art.no.artist");
  [v3 setAccessibilityLabel:v4];
}

@end