@interface CustomRoomMusicVideoCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation CustomRoomMusicVideoCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.CustomRoomMusicVideoCell" hasInstanceMethod:@"headlineText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.CustomRoomMusicVideoCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.CustomRoomMusicVideoCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.CustomRoomMusicVideoCell" hasInstanceMethod:@"descriptionText" withFullSignature:{"@", 0}];
}

@end