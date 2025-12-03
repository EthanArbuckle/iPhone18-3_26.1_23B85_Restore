@interface NTKGalleonRadialLabelView
- ($F24F406B2B787EFB06265DBA3D28CBD5)paddingRange;
- (NTKGalleonRadialLabelView)initWithDialDiameter:(double)diameter rightSideUp:(BOOL)up labels:(id)labels paddingRange:(id)range;
- (void)_positionLabels;
- (void)_setupImageLabels;
- (void)galleon_setProgress:(double)progress;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation NTKGalleonRadialLabelView

- (NTKGalleonRadialLabelView)initWithDialDiameter:(double)diameter rightSideUp:(BOOL)up labels:(id)labels paddingRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  labelsCopy = labels;
  v37.receiver = self;
  v37.super_class = NTKGalleonRadialLabelView;
  diameter = [(NTKGalleonRadialLabelView *)&v37 initWithFrame:0.0, 0.0, diameter, diameter];
  v16 = diameter;
  if (diameter)
  {
    v17 = objc_msgSend_layer(diameter, v13, v14, v15);
    objc_msgSend_setContentsFormat_(v17, v18, *MEMORY[0x277CDA0C8], v19);
    v23 = objc_msgSend_galleon_degreeFont(MEMORY[0x277CBBB08], v20, v21, v22);
    labelFont = v16->_labelFont;
    v16->_labelFont = v23;

    v16->_diameter = diameter;
    v16->_rightSideUp = up;
    v28 = objc_msgSend_copy(labelsCopy, v25, v26, v27);
    labels = v16->_labels;
    v16->_labels = v28;

    v16->_paddingRange.minimum = var0;
    v16->_paddingRange.maximum = var1;
    objc_msgSend_tintColorDidChange(v16, v30, v31, v32);
    objc_msgSend__setupImageLabels(v16, v33, v34, v35);
  }

  return v16;
}

- (void)tintColorDidChange
{
  v16 = objc_msgSend_tintColor(self, a2, v2, v3);
  v8 = objc_msgSend_layer(self, v5, v6, v7);
  v9 = v16;
  v13 = objc_msgSend_CGColor(v16, v10, v11, v12);
  objc_msgSend_setContentsMultiplyColor_(v8, v14, v13, v15);
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = NTKGalleonRadialLabelView;
  [(NTKGalleonRadialLabelView *)&v20 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = NTKGalleonFloatRangePercentageValue(self->_paddingRange.minimum, self->_paddingRange.maximum, self->_progress);
  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  v15 = CGRectEqualToRect(v21, self->_layoutFrame);
  v16 = CLKFloatEqualsFloat();
  if (!v15 || (v16 & 1) == 0)
  {
    self->_layoutFrame.origin.x = v7;
    self->_layoutFrame.origin.y = v9;
    self->_layoutFrame.size.width = v11;
    self->_layoutFrame.size.height = v13;
    self->_layoutPadding = v14;
    objc_msgSend__positionLabels(self, v17, v18, v19);
  }
}

- (void)galleon_setProgress:(double)progress
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_progress = progress;

    objc_msgSend_setNeedsLayout(self, v5, v6, v7);
  }
}

- (void)_setupImageLabels
{
  v3 = self->_labelFont;
  labels = self->_labels;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BEA02BC;
  v9[3] = &unk_278B9EF48;
  v9[4] = self;
  v10 = v3;
  v5 = v3;
  v6 = labels;
  objc_msgSend_enumerateObjectsUsingBlock_(v6, v7, v9, v8);
}

- (void)_positionLabels
{
  objc_msgSend_capHeight(self->_labelFont, a2, v2, v3);
  v6 = v5;
  diameter = self->_diameter;
  v8 = NTKGalleonFloatRangePercentageValue(self->_paddingRange.minimum, self->_paddingRange.maximum, self->_progress);
  rightSideUp = self->_rightSideUp;
  v13 = objc_msgSend_subviews(self, v10, v11, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23BEA0474;
  v16[3] = &unk_278B9EF68;
  *&v16[4] = diameter;
  *&v16[5] = diameter * 0.5;
  *&v16[6] = diameter * 0.5;
  v16[7] = v6;
  *&v16[8] = v8;
  v17 = rightSideUp;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v14, v16, v15);
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)paddingRange
{
  minimum = self->_paddingRange.minimum;
  maximum = self->_paddingRange.maximum;
  result.var1 = maximum;
  result.var0 = minimum;
  return result;
}

@end