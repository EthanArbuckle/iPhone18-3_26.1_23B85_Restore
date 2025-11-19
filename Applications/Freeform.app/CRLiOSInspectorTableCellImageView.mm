@interface CRLiOSInspectorTableCellImageView
- (CRLiOSInspectorTableViewCell)parentCell;
- (void)setContentMode:(int64_t)a3;
- (void)setImage:(id)a3;
@end

@implementation CRLiOSInspectorTableCellImageView

- (void)setImage:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLiOSInspectorTableCellImageView;
  [(CRLiOSInspectorTableCellImageView *)&v5 setImage:a3];
  v4 = [(CRLiOSInspectorTableCellImageView *)self parentCell];
  [v4 p_imageDidChange];
}

- (void)setContentMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CRLiOSInspectorTableCellImageView;
  [(CRLiOSInspectorTableCellImageView *)&v5 setContentMode:a3];
  v4 = [(CRLiOSInspectorTableCellImageView *)self parentCell];
  [v4 p_imageDidChange];
}

- (CRLiOSInspectorTableViewCell)parentCell
{
  WeakRetained = objc_loadWeakRetained(&self->_parentCell);

  return WeakRetained;
}

@end