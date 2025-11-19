@interface CNAvatarCardActionsTableView
- (CGSize)intrinsicContentSize;
@end

@implementation CNAvatarCardActionsTableView

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x1E69DE788];
  v4 = [(CNAvatarCardActionsTableView *)self numberOfRowsInSection:0];
  [(CNAvatarCardActionsTableView *)self rowHeight];
  v6 = v5 * v4;
  v7 = v3;
  result.height = v6;
  result.width = v7;
  return result;
}

@end