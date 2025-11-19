@interface AVUnifiedPlayerPlaybackControlsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVUnifiedPlayerPlaybackControlsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"_playbackMetadataViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVUnifiedPlayerPlaybackMetadataViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"overlayViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVxOverlayViewController" hasInstanceMethod:@"collectionViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVxCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceVariable:@"_transportBar" withType:"UIView<AVTransportControlsProviding>"];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceVariable:@"_infoPanelViewController" withType:"AVInfoPanelViewController"];
  [v3 validateClass:@"AVInfoMenuController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = AVUnifiedPlayerPlaybackControlsViewControllerAccessibility;
  [(AVUnifiedPlayerPlaybackControlsViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(AVUnifiedPlayerPlaybackControlsViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __104__AVUnifiedPlayerPlaybackControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F298FD0;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityElementsBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __104__AVUnifiedPlayerPlaybackControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x29EDB8DE8] array];
  v3 = [WeakRetained safeValueForKeyPath:@"_playbackMetadataViewController.view"];
  v4 = [v3 safeArrayForKey:@"subviews"];
  [v2 axSafelyAddObjectsFromArray:v4];

  v5 = [WeakRetained safeValueForKeyPath:@"_overlayViewController.collectionViewController.collectionView"];
  [v2 axSafelyAddObject:v5];

  v6 = [WeakRetained safeValueForKey:@"_transportBar"];
  [v2 axSafelyAddObject:v6];

  v7 = [WeakRetained safeValueForKeyPath:@"_infoPanelViewController._tabBarController.collectionView"];
  [v2 axSafelyAddObject:v7];

  return v2;
}

@end