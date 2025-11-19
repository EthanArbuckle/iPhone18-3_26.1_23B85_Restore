@interface MusicPlaylistEditingPickerOverlayAccessibility
- (id)newAccessoryView;
@end

@implementation MusicPlaylistEditingPickerOverlayAccessibility

- (id)newAccessoryView
{
  v5.receiver = self;
  v5.super_class = MusicPlaylistEditingPickerOverlayAccessibility;
  v2 = [(MusicPlaylistEditingPickerOverlayAccessibility *)&v5 newAccessoryView];
  [v2 setIsAccessibilityElement:1];
  [v2 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v3 = accessibilityMusicLocalizedString(@"add.to.playlist");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

@end