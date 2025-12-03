@interface CRLiOSInspectorTableCellImageButton
- (CRLiOSInspectorTableViewCell)parentCell;
- (void)setImage:(id)image forState:(unint64_t)state;
@end

@implementation CRLiOSInspectorTableCellImageButton

- (void)setImage:(id)image forState:(unint64_t)state
{
  v6.receiver = self;
  v6.super_class = CRLiOSInspectorTableCellImageButton;
  [(CRLiOSInspectorTableCellImageButton *)&v6 setImage:image forState:state];
  parentCell = [(CRLiOSInspectorTableCellImageButton *)self parentCell];
  [parentCell p_imageDidChange];
}

- (CRLiOSInspectorTableViewCell)parentCell
{
  WeakRetained = objc_loadWeakRetained(&self->_parentCell);

  return WeakRetained;
}

@end