@interface MKMapViewAccessibility__Maps__MapKit
- (id)snapshotImageWithScale:(double)a3;
@end

@implementation MKMapViewAccessibility__Maps__MapKit

- (id)snapshotImageWithScale:(double)a3
{
  v5 = *MEMORY[0x29EDC7F10];
  _UIAccessibilityBlockPostingOfNotification();
  v8.receiver = self;
  v8.super_class = MKMapViewAccessibility__Maps__MapKit;
  v6 = [(MKMapViewAccessibility__Maps__MapKit *)&v8 snapshotImageWithScale:a3];
  _UIAccessibilityUnblockPostingOfNotification();

  return v6;
}

@end