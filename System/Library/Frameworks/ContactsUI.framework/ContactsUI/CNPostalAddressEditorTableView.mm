@interface CNPostalAddressEditorTableView
- (CGSize)intrinsicContentSize;
@end

@implementation CNPostalAddressEditorTableView

- (CGSize)intrinsicContentSize
{
  v3 = [(CNPostalAddressEditorTableView *)self numberOfRowsInSection:0];
  [(CNPostalAddressEditorTableView *)self rowHeight];
  v5 = v4 * v3;
  v6 = *MEMORY[0x1E69DE788];
  result.height = v5;
  result.width = v6;
  return result;
}

@end