@interface MRUViewServiceRoutingViewAccessibility
- (void)updateVisibility;
@end

@implementation MRUViewServiceRoutingViewAccessibility

- (void)updateVisibility
{
  v2.receiver = self;
  v2.super_class = MRUViewServiceRoutingViewAccessibility;
  [(MRUViewServiceRoutingViewAccessibility *)&v2 updateVisibility];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end