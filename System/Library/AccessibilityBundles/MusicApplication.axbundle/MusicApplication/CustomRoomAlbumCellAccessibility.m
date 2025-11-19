@interface CustomRoomAlbumCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation CustomRoomAlbumCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.CustomRoomAlbumCell" hasInstanceMethod:@"headlineText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.CustomRoomAlbumCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.CustomRoomAlbumCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.CustomRoomAlbumCell" hasInstanceMethod:@"descriptionText" withFullSignature:{"@", 0}];
}

@end