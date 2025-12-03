@interface MusicPlaylistEditingPickerOverlayAccessibility
- (id)newAccessoryView;
@end

@implementation MusicPlaylistEditingPickerOverlayAccessibility

- (id)newAccessoryView
{
  v5.receiver = self;
  v5.super_class = MusicPlaylistEditingPickerOverlayAccessibility;
  newAccessoryView = [(MusicPlaylistEditingPickerOverlayAccessibility *)&v5 newAccessoryView];
  [newAccessoryView setIsAccessibilityElement:1];
  [newAccessoryView setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v3 = accessibilityMusicLocalizedString(@"add.to.playlist");
  [newAccessoryView setAccessibilityLabel:v3];

  return newAccessoryView;
}

@end