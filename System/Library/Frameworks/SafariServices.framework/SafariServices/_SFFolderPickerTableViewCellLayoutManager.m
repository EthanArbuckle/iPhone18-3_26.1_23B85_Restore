@interface _SFFolderPickerTableViewCellLayoutManager
- (CGRect)textRectForCell:(id)a3 rowWidth:(double)a4 forSizing:(BOOL)a5;
- (UIEdgeInsets)_layoutMarginsForCell:(id)a3;
- (void)layoutSubviewsOfCell:(id)a3;
@end

@implementation _SFFolderPickerTableViewCellLayoutManager

- (void)layoutSubviewsOfCell:(id)a3
{
  v4 = a3;
  [(_SFFolderPickerTableViewCellLayoutManager *)self _layoutMarginsForCell:v4];
  [v4 setLayoutMargins:?];
  v5.receiver = self;
  v5.super_class = _SFFolderPickerTableViewCellLayoutManager;
  [(UITableViewCellLayoutManagerValue1 *)&v5 layoutSubviewsOfCell:v4];
}

- (UIEdgeInsets)_layoutMarginsForCell:(id)a3
{
  [(UITableViewCellLayoutManager *)self contentIndentationForCell:a3];
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

- (CGRect)textRectForCell:(id)a3 rowWidth:(double)a4 forSizing:(BOOL)a5
{
  v5 = a5;
  v30.receiver = self;
  v30.super_class = _SFFolderPickerTableViewCellLayoutManager;
  v8 = a3;
  [(UITableViewCellLayoutManager *)&v30 textRectForCell:v8 rowWidth:v5 forSizing:a4];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v29 = v15;
  v16 = *MEMORY[0x1E69DDCE0];
  v17 = *(MEMORY[0x1E69DDCE0] + 8);
  v19 = *(MEMORY[0x1E69DDCE0] + 16);
  v18 = *(MEMORY[0x1E69DDCE0] + 24);
  v20 = [v8 _shouldReverseLayoutDirection];
  [(UITableViewCellLayoutManager *)self contentIndentationForCell:v8];
  v22 = v21;

  if (v20)
  {
    v23 = v17;
  }

  else
  {
    v23 = -v22;
  }

  if (v20)
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