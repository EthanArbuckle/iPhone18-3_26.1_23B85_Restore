@interface _SFFolderPickerTableViewCellLayoutManager
- (CGRect)textRectForCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing;
- (UIEdgeInsets)_layoutMarginsForCell:(id)cell;
- (void)layoutSubviewsOfCell:(id)cell;
@end

@implementation _SFFolderPickerTableViewCellLayoutManager

- (void)layoutSubviewsOfCell:(id)cell
{
  cellCopy = cell;
  [(_SFFolderPickerTableViewCellLayoutManager *)self _layoutMarginsForCell:cellCopy];
  [cellCopy setLayoutMargins:?];
  v5.receiver = self;
  v5.super_class = _SFFolderPickerTableViewCellLayoutManager;
  [(UITableViewCellLayoutManagerValue1 *)&v5 layoutSubviewsOfCell:cellCopy];
}

- (UIEdgeInsets)_layoutMarginsForCell:(id)cell
{
  [(UITableViewCellLayoutManager *)self contentIndentationForCell:cell];
  v4 = v3 + 16.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 16.0;
  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

- (CGRect)textRectForCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing
{
  sizingCopy = sizing;
  v30.receiver = self;
  v30.super_class = _SFFolderPickerTableViewCellLayoutManager;
  cellCopy = cell;
  [(UITableViewCellLayoutManager *)&v30 textRectForCell:cellCopy rowWidth:sizingCopy forSizing:width];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v29 = v15;
  v16 = *MEMORY[0x1E69DDCE0];
  v17 = *(MEMORY[0x1E69DDCE0] + 8);
  v19 = *(MEMORY[0x1E69DDCE0] + 16);
  v18 = *(MEMORY[0x1E69DDCE0] + 24);
  _shouldReverseLayoutDirection = [cellCopy _shouldReverseLayoutDirection];
  [(UITableViewCellLayoutManager *)self contentIndentationForCell:cellCopy];
  v22 = v21;

  if (_shouldReverseLayoutDirection)
  {
    v23 = v17;
  }

  else
  {
    v23 = -v22;
  }

  if (_shouldReverseLayoutDirection)
  {
    v24 = -v22;
  }

  else
  {
    v24 = v18;
  }

  v25 = v10 + v23;
  v26 = v16 + v12;
  v27 = v14 - (v23 + v24);
  v28 = v29 - (v16 + v19);
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

@end