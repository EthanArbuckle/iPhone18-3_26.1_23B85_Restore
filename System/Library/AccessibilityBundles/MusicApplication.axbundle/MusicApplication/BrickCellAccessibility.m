@interface BrickCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation BrickCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.BrickCell" hasInstanceMethod:@"headline" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.BrickCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.BrickCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
}

@end