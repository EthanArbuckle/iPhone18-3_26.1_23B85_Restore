@interface BKExpandedWebContentViewControllerAccessibility
- (id)contentView;
@end

@implementation BKExpandedWebContentViewControllerAccessibility

- (id)contentView
{
  v4.receiver = self;
  v4.super_class = BKExpandedWebContentViewControllerAccessibility;
  contentView = [(BKExpandedWebContentViewControllerAccessibility *)&v4 contentView];
  [contentView imaxSetIdentification:@"PreviewContentView"];

  return contentView;
}

@end