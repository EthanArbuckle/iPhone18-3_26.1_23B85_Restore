@interface UITableViewCell(SwiftUI)
- (double)swiftui_defaultRowHeight;
@end

@implementation UITableViewCell(SwiftUI)

- (double)swiftui_defaultRowHeight
{
  v2 = [a1 layoutManager];
  [a1 frame];
  [v2 intrinsicContentSizeForCell:a1 rowWidth:v3];
  v5 = v4;

  return v5;
}

@end