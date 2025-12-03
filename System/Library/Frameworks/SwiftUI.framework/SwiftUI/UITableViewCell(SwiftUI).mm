@interface UITableViewCell(SwiftUI)
- (double)swiftui_defaultRowHeight;
@end

@implementation UITableViewCell(SwiftUI)

- (double)swiftui_defaultRowHeight
{
  layoutManager = [self layoutManager];
  [self frame];
  [layoutManager intrinsicContentSizeForCell:self rowWidth:v3];
  v5 = v4;

  return v5;
}

@end