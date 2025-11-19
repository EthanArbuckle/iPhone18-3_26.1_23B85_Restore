@interface CustomRoomMusicVideoCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation CustomRoomMusicVideoCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.CustomRoomMusicVideoCell" hasInstanceMethod:@"headlineText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.CustomRoomMusicVideoCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.CustomRoomMusicVideoCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.CustomRoomMusicVideoCell" hasInstanceMethod:@"descriptionText" withFullSignature:{"@", 0}];
}

@end