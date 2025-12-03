@interface CRLiOSInspectorTableCellImageView
- (CRLiOSInspectorTableViewCell)parentCell;
- (void)setContentMode:(int64_t)mode;
- (void)setImage:(id)image;
@end

@implementation CRLiOSInspectorTableCellImageView

- (void)setImage:(id)image
{
  v5.receiver = self;
  v5.super_class = CRLiOSInspectorTableCellImageView;
  [(CRLiOSInspectorTableCellImageView *)&v5 setImage:image];
  parentCell = [(CRLiOSInspectorTableCellImageView *)self parentCell];
  [parentCell p_imageDidChange];
}

- (void)setContentMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = CRLiOSInspectorTableCellImageView;
  [(CRLiOSInspectorTableCellImageView *)&v5 setContentMode:mode];
  parentCell = [(CRLiOSInspectorTableCellImageView *)self parentCell];
  [parentCell p_imageDidChange];
}

- (CRLiOSInspectorTableViewCell)parentCell
{
  WeakRetained = objc_loadWeakRetained(&self->_parentCell);

  return WeakRetained;
}

@end