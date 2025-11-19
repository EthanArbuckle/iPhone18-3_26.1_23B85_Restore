@interface MTPodcastPlaylistCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation MTPodcastPlaylistCellAccessibility

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = MTPodcastPlaylistCellAccessibility;
  v3 = [(MTPodcastPlaylistCellAccessibility *)&v8 accessibilityTraits];
  v4 = [(MTPodcastPlaylistCellAccessibility *)self safeValueForKey:@"isAdded"];
  v5 = [v4 BOOLValue];

  v6 = *MEMORY[0x29EDC7FC0];
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | v3;
}

@end