@interface NTKLeghornPickerCollectionViewCell
- (NTKLeghornPickerCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation NTKLeghornPickerCollectionViewCell

- (NTKLeghornPickerCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v39.receiver = self;
  v39.super_class = NTKLeghornPickerCollectionViewCell;
  v7 = [(NTKLeghornPickerCollectionViewCell *)&v39 initWithFrame:?];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D756B8]);
    v10 = objc_msgSend_initWithFrame_(v8, v9, x, y, width, height);
    label = v7->_label;
    v7->_label = v10;

    v14 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v12, v13);
    objc_msgSend_setTextColor_(v7->_label, v15, v16, v14);

    objc_msgSend_setTextAlignment_(v7->_label, v17, v18, 1);
    objc_msgSend_setNumberOfLines_(v7->_label, v19, v20, 0);
    v23 = objc_msgSend_layer(v7->_label, v21, v22);
    objc_msgSend_setAnchorPoint_(v23, v24, 0.5, 0.5);

    v27 = objc_msgSend_contentView(v7, v25, v26);
    objc_msgSend_addSubview_(v27, v28, v29, v7->_label);

    v32 = objc_msgSend_layer(v7, v30, v31);
    v35 = objc_msgSend_layer(v7->_label, v33, v34);
    objc_msgSend_setLabelLayer_(v32, v36, v37, v35);
  }

  return v7;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = NTKLeghornPickerCollectionViewCell;
  [(NTKLeghornPickerCollectionViewCell *)&v27 layoutSubviews];
  v5 = objc_msgSend_contentView(self, v3, v4);
  objc_msgSend_bounds(v5, v6, v7);
  v9 = v8;
  objc_msgSend_bounds(self, v10, v11);
  objc_msgSend_setBounds_(self->_label, v12, 0.0, 0.0, v9);

  v15 = objc_msgSend_contentView(self, v13, v14);
  objc_msgSend_bounds(v15, v16, v17);
  v19 = v18 * 0.5;
  v22 = objc_msgSend_contentView(self, v20, v21);
  objc_msgSend_bounds(v22, v23, v24);
  objc_msgSend_setCenter_(self->_label, v26, v19, v25 * 0.5);
}

@end