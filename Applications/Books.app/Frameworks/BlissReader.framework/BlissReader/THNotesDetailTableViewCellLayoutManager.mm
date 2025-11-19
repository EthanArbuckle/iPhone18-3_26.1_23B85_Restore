@interface THNotesDetailTableViewCellLayoutManager
- (CGRect)editControlEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4;
- (CGRect)editControlStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4;
@end

@implementation THNotesDetailTableViewCellLayoutManager

- (CGRect)editControlStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4
{
  v16.receiver = self;
  v16.super_class = THNotesDetailTableViewCellLayoutManager;
  [(THNotesDetailTableViewCellLayoutManager *)&v16 editControlStartingRectForCell:a3 forNewEditingState:a4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(THNotesDetailTableViewCellLayoutManagerDelegate *)self->_delegate editControlCenteringRect];
  v11 = CGRectGetMidY(v17) + v10 * -0.5;
  v12 = floorf(v11);
  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (CGRect)editControlEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4
{
  v4 = a4;
  v18.receiver = self;
  v18.super_class = THNotesDetailTableViewCellLayoutManager;
  [THNotesDetailTableViewCellLayoutManager editControlEndingRectForCell:"editControlEndingRectForCell:forNewEditingState:" forNewEditingState:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v4 && +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [a3 semanticContentAttribute]) == UIUserInterfaceLayoutDirectionLeftToRight)
  {
    v8 = v8 + 29.0;
  }

  [(THNotesDetailTableViewCellLayoutManagerDelegate *)self->_delegate editControlCenteringRect];
  v13 = CGRectGetMidY(v19) + v12 * -0.5;
  v14 = floorf(v13);
  v15 = v8;
  v16 = v10;
  v17 = v12;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

@end