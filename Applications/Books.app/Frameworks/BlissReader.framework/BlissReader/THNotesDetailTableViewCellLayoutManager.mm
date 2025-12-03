@interface THNotesDetailTableViewCellLayoutManager
- (CGRect)editControlEndingRectForCell:(id)cell forNewEditingState:(BOOL)state;
- (CGRect)editControlStartingRectForCell:(id)cell forNewEditingState:(BOOL)state;
@end

@implementation THNotesDetailTableViewCellLayoutManager

- (CGRect)editControlStartingRectForCell:(id)cell forNewEditingState:(BOOL)state
{
  v16.receiver = self;
  v16.super_class = THNotesDetailTableViewCellLayoutManager;
  [(THNotesDetailTableViewCellLayoutManager *)&v16 editControlStartingRectForCell:cell forNewEditingState:state];
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

- (CGRect)editControlEndingRectForCell:(id)cell forNewEditingState:(BOOL)state
{
  stateCopy = state;
  v18.receiver = self;
  v18.super_class = THNotesDetailTableViewCellLayoutManager;
  [THNotesDetailTableViewCellLayoutManager editControlEndingRectForCell:"editControlEndingRectForCell:forNewEditingState:" forNewEditingState:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (stateCopy && +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [cell semanticContentAttribute]) == UIUserInterfaceLayoutDirectionLeftToRight)
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