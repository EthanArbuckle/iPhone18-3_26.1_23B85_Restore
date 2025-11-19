@interface BKExpandedWebContentViewControllerAccessibility
- (id)contentView;
@end

@implementation BKExpandedWebContentViewControllerAccessibility

- (id)contentView
{
  v4.receiver = self;
  v4.super_class = BKExpandedWebContentViewControllerAccessibility;
  v2 = [(BKExpandedWebContentViewControllerAccessibility *)&v4 contentView];
  [v2 imaxSetIdentification:@"PreviewContentView"];

  return v2;
}

@end