@interface CRLiOSInspectorTableCellImageButton
- (CRLiOSInspectorTableViewCell)parentCell;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
@end

@implementation CRLiOSInspectorTableCellImageButton

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = CRLiOSInspectorTableCellImageButton;
  [(CRLiOSInspectorTableCellImageButton *)&v6 setImage:a3 forState:a4];
  v5 = [(CRLiOSInspectorTableCellImageButton *)self parentCell];
  [v5 p_imageDidChange];
}

- (CRLiOSInspectorTableViewCell)parentCell
{
  WeakRetained = objc_loadWeakRetained(&self->_parentCell);

  return WeakRetained;
}

@end