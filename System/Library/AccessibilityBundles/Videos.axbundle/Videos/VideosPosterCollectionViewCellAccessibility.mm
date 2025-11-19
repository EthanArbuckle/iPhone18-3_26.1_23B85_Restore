@interface VideosPosterCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsDeletable;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation VideosPosterCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosCollectionViewController"];
  [v3 validateClass:@"VideosPosterCollectionViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosPosterCollectionViewCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosPosterCollectionViewCell" hasInstanceMethod:@"editingButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosPosterCollectionViewCell" hasInstanceMethod:@"showCloudIcon" withFullSignature:{"B", 0}];
  [v3 validateClass:@"VideosPosterCollectionViewCell" hasInstanceMethod:@"artworkView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosPosterCollectionViewCell" hasInstanceMethod:@"badgeCount" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"VideosArtworkView" hasInstanceMethod:@"placeholderTitle" withFullSignature:{"@", 0}];
}

- (BOOL)_axIsDeletable
{
  v2 = [(VideosPosterCollectionViewCellAccessibility *)self safeValueForKey:@"editingButton"];
  v3 = [v2 _accessibilityViewIsVisible];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(VideosPosterCollectionViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(VideosPosterCollectionViewCellAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v20 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  if (![v6 length])
  {
    v7 = [(VideosPosterCollectionViewCellAccessibility *)self safeValueForKey:@"artworkView"];
    v8 = [v7 safeValueForKey:@"placeholderTitle"];

    v6 = v8;
  }

  v21 = [(VideosPosterCollectionViewCellAccessibility *)self _accessibilityValueForKey:@"AXArtistName"];
  v9 = __UIAXStringForVariables();

  if ([(VideosPosterCollectionViewCellAccessibility *)self safeBoolForKey:@"showCloudIcon", v21, @"__AXStringForVariablesSentinel"])
  {
    v22 = accessibilityLocalizedString(@"in.icloud.badge");
    v24 = @"__AXStringForVariablesSentinel";
    v10 = __UIAXStringForVariables();

    v9 = v10;
  }

  if ([(VideosPosterCollectionViewCellAccessibility *)self _axIsDeletable:v22])
  {
    v11 = MEMORY[0x29EDBA0F8];
    v12 = accessibilityLocalizedString(@"video.thumbnail.delete");
    v13 = [v11 stringWithFormat:v12, v9];

    v9 = v13;
  }

  v14 = [(VideosPosterCollectionViewCellAccessibility *)self safeUnsignedIntegerForKey:@"badgeCount"];
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x29EDBA0F8];
    v17 = accessibilityLocalizedString(@"unplayed.episodes.count");
    v23 = [v16 stringWithFormat:v17, v15];
    v18 = __UIAXStringForVariables();

    v9 = v18;
  }

  return v9;
}

- (id)accessibilityHint
{
  if ([(VideosPosterCollectionViewCellAccessibility *)self _axIsDeletable])
  {
    v2 = accessibilityLocalizedString(@"video.thumbnail.delete.hint");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(VideosPosterCollectionViewCellAccessibility *)self _axIsDeletable])
  {
    v3 = [(VideosPosterCollectionViewCellAccessibility *)self safeValueForKey:@"editingButton"];
    [v3 accessibilityActivationPoint];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VideosPosterCollectionViewCellAccessibility;
    [(VideosPosterCollectionViewCellAccessibility *)&v10 accessibilityActivationPoint];
  }

  result.y = v9;
  result.x = v8;
  return result;
}

@end