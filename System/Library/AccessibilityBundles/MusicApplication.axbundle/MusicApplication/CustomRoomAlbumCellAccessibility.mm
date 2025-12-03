@interface CustomRoomAlbumCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation CustomRoomAlbumCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.CustomRoomAlbumCell" hasInstanceMethod:@"headlineText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.CustomRoomAlbumCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.CustomRoomAlbumCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.CustomRoomAlbumCell" hasInstanceMethod:@"descriptionText" withFullSignature:{"@", 0}];
}

@end