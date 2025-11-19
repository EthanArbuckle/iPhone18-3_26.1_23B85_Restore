@interface NTKLeghornCylindricalPickerView
- (NTKLeghornCylindricalPickerView)initWithFrame:(CGRect)a3;
- (NTKLeghornCylindricalPickerViewDelegate)delegate;
- (void)setCellHeight:(double)a3;
- (void)setFarthestCellScaleFactor:(double)a3;
- (void)setItems:(id)a3;
@end

@implementation NTKLeghornCylindricalPickerView

- (NTKLeghornCylindricalPickerView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = NTKLeghornCylindricalPickerView;
  v3 = [(NTKLeghornCylindricalPickerView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setItems:(id)a3
{
  objc_storeStrong(&self->_items, a3);
  v7 = a3;
  objc_msgSend_invalidateLayout(self->_layout, v5, v6);
}

- (void)setFarthestCellScaleFactor:(double)a3
{
  objc_msgSend_setFarthestCellScaleFactor_(self->_layout, a2, a3);
  layout = self->_layout;

  objc_msgSend_invalidateLayout(layout, v4, v5);
}

- (void)setCellHeight:(double)a3
{
  self->_cellHeight = a3;
  objc_msgSend_bounds(self, a2, a3);
  objc_msgSend_setItemSize_(self->_layout, v5, v6, a3);
  layout = self->_layout;

  objc_msgSend_invalidateLayout(layout, v7, v8);
}

- (NTKLeghornCylindricalPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end