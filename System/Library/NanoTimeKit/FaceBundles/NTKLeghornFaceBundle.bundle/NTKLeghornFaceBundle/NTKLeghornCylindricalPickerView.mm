@interface NTKLeghornCylindricalPickerView
- (NTKLeghornCylindricalPickerView)initWithFrame:(CGRect)frame;
- (NTKLeghornCylindricalPickerViewDelegate)delegate;
- (void)setCellHeight:(double)height;
- (void)setFarthestCellScaleFactor:(double)factor;
- (void)setItems:(id)items;
@end

@implementation NTKLeghornCylindricalPickerView

- (NTKLeghornCylindricalPickerView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = NTKLeghornCylindricalPickerView;
  v3 = [(NTKLeghornCylindricalPickerView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_cellHeight = 23.0;
    v5 = objc_alloc_init(MEMORY[0x277CFA778]);
    layout = v4->_layout;
    v4->_layout = v5;

    objc_msgSend_bounds(v4, v7, v8);
    objc_msgSend_setItemSize_(v4->_layout, v9, v10, v4->_cellHeight);
    v13 = objc_msgSend_clearColor(MEMORY[0x277D75348], v11, v12);
    objc_msgSend_setBackgroundColor_(v4, v14, v15, v13);
  }

  return v4;
}

- (void)setItems:(id)items
{
  objc_storeStrong(&self->_items, items);
  itemsCopy = items;
  objc_msgSend_invalidateLayout(self->_layout, v5, v6);
}

- (void)setFarthestCellScaleFactor:(double)factor
{
  objc_msgSend_setFarthestCellScaleFactor_(self->_layout, a2, factor);
  layout = self->_layout;

  objc_msgSend_invalidateLayout(layout, v4, v5);
}

- (void)setCellHeight:(double)height
{
  self->_cellHeight = height;
  objc_msgSend_bounds(self, a2, height);
  objc_msgSend_setItemSize_(self->_layout, v5, v6, height);
  layout = self->_layout;

  objc_msgSend_invalidateLayout(layout, v7, v8);
}

- (NTKLeghornCylindricalPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end