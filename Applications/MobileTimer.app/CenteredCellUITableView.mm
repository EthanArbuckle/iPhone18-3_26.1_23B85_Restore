@interface CenteredCellUITableView
- (CGRect)keyboardFrame;
- (void)layoutSubviews;
@end

@implementation CenteredCellUITableView

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = CenteredCellUITableView;
  [(CenteredCellUITableView *)&v34 layoutSubviews];
  [(CenteredCellUITableView *)self rowHeight];
  v4 = v3;
  [(CenteredCellUITableView *)self sectionHeaderHeight];
  v6 = v4 + v5;
  [(CenteredCellUITableView *)self sectionFooterHeight];
  v8 = v6 + v7;
  window = [(CenteredCellUITableView *)self window];
  [(CenteredCellUITableView *)self bounds];
  [window convertRect:self fromView:?];
  v37.origin.x = v10;
  v37.origin.y = v11;
  v37.size.width = v12;
  v37.size.height = v13;
  v35 = CGRectIntersection(self->_keyboardFrame, v37);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;

  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  IsEmpty = CGRectIsEmpty(v36);
  v19 = 20.0;
  if (!IsEmpty)
  {
    v19 = height;
  }

  v20 = v8 + v19;
  if (height <= 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v8;
  }

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [(CenteredCellUITableView *)self bounds];
  v26 = (v25 - v20) * 0.5 - v21;
  v27 = floorf(v26);
  [(CenteredCellUITableView *)self contentInset];
  if (left != v31 || (v28 == v27 ? (v32 = right == v30) : (v32 = 0), v32 ? (v33 = bottom == v29) : (v33 = 0), !v33))
  {
    [(CenteredCellUITableView *)self setContentInset:v27, left, bottom, right];
  }
}

- (CGRect)keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end