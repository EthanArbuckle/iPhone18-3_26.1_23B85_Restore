@interface NTKGalleonTickView
+ (id)galleon_newTickViewWithDevice:(id)a3 numberOfTicks:(unint64_t)a4 tickSizes:(id)a5;
- ($0B56E7081CBE040606E62B6BB81BA072)sizeRange;
- (NTKGalleonTickView)initWithDevice:(id)a3 dialDiameter:(double)a4 numberOfTicks:(unint64_t)a5 tickSizes:(id)a6;
- (void)_setTickColor:(id)a3;
- (void)galleon_setProgress:(double)a3;
- (void)setTintColor:(id)a3;
@end

@implementation NTKGalleonTickView

- (NTKGalleonTickView)initWithDevice:(id)a3 dialDiameter:(double)a4 numberOfTicks:(unint64_t)a5 tickSizes:(id)a6
{
  var1 = a6.var1.var1;
  var0 = a6.var1.var0;
  v8 = a6.var0.var1;
  v9 = a6.var0.var0;
  v86[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  objc_storeStrong(&self->_device, a3);
  v82.receiver = self;
  v82.super_class = NTKGalleonTickView;
  v15 = [(NTKGalleonTickView *)&v82 initWithFrame:0.0, 0.0, a4, a4];
  v19 = v15;
  if (v15)
  {
    v15->_diameter = a4;
    v15->_numberOfTicks = a5;
    v15->_sizeRange.widthRange.minimum = v9;
    v15->_sizeRange.widthRange.maximum = v8;
    v15->_sizeRange.heightRange.minimum = var0;
    v15->_sizeRange.heightRange.maximum = var1;
    v20 = objc_msgSend_layer(v15, v16, v17, v18);
    v85 = @"instanceColor";
    v24 = objc_msgSend_null(MEMORY[0x277CBEB68], v21, v22, v23);
    v86[0] = v24;
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v86, &v85, 1);
    objc_msgSend_setActions_(v20, v27, v26, v28);

    objc_msgSend_setFillMode_(v20, v29, *MEMORY[0x277CDA230], v30);
    v34 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v31, v32, v33);
    v35 = v34;
    v39 = objc_msgSend_CGColor(v35, v36, v37, v38);
    objc_msgSend_setInstanceColor_(v20, v40, v39, v41);

    objc_msgSend_setInstanceCount_(v20, v42, a5, v43);
    CATransform3DMakeRotation(&v81, 6.28318531 / a5, 0.0, 0.0, 1.0);
    objc_msgSend_setInstanceTransform_(v20, v44, &v81, v45);
    v49 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], v46, v47, v48);
    objc_msgSend_screenScale(v49, v50, v51, v52);
    objc_msgSend_setRasterizationScale_(v20, v53, v54, v55);

    v59 = objc_msgSend_null(MEMORY[0x277CBEB68], v56, v57, v58);
    v83[0] = @"affineTransform";
    v83[1] = @"backgroundColor";
    v84[0] = v59;
    v84[1] = v59;
    v83[2] = @"bounds";
    v83[3] = @"contentsMultiplyColor";
    v84[2] = v59;
    v84[3] = v59;
    v83[4] = @"hidden";
    v83[5] = @"instanceCount";
    v84[4] = v59;
    v84[5] = v59;
    v83[6] = @"instanceDelay";
    v83[7] = @"instanceTransform";
    v84[6] = v59;
    v84[7] = v59;
    v83[8] = @"opacity";
    v83[9] = @"position";
    v84[8] = v59;
    v84[9] = v59;
    v83[10] = @"transform";
    v84[10] = v59;
    v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, v84, v83, 11);
    v65 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v62, v63, v64);
    tickLayer = v19->_tickLayer;
    v19->_tickLayer = v65;

    objc_msgSend_setActions_(v19->_tickLayer, v67, v61, v68);
    objc_msgSend_addSublayer_(v20, v69, v19->_tickLayer, v70);
    v74 = objc_msgSend_tintColor(v19, v71, v72, v73);
    objc_msgSend__setTickColor_(v19, v75, v74, v76);

    objc_msgSend_galleon_setProgress_(v19, v77, v78, v79, 0.0);
  }

  return v19;
}

- (void)_setTickColor:(id)a3
{
  tickLayer = self->_tickLayer;
  v5 = a3;
  v10 = objc_msgSend_CGColor(a3, v6, v7, v8);

  objc_msgSend_setBackgroundColor_(tickLayer, v9, v10, v11);
}

- (void)galleon_setProgress:(double)a3
{
  v4 = NTKGalleonTickSizePercentageValue(self->_sizeRange.widthRange.minimum, self->_sizeRange.widthRange.maximum, self->_sizeRange.heightRange.minimum, self->_sizeRange.heightRange.maximum, a3);
  v6 = v5;
  objc_msgSend_bounds(self->_tickLayer, v7, v8, v9);
  if (v4 != v14 || v6 != v13)
  {
    objc_msgSend_setBounds_(self->_tickLayer, v10, v11, v12, 0.0, 0.0, v4, v6);
    if (v4 >= v6)
    {
      v19 = v6;
    }

    else
    {
      v19 = v4;
    }

    objc_msgSend_setCornerRadius_(self->_tickLayer, v16, v17, v18, v19 * 0.5);
    tickLayer = self->_tickLayer;
    v24 = self->_diameter * 0.5;

    objc_msgSend_setPosition_(tickLayer, v20, v21, v22, v24, v6 * 0.5);
  }
}

- (void)setTintColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKGalleonTickView;
  v4 = a3;
  [(NTKGalleonTickView *)&v7 setTintColor:v4];
  objc_msgSend__setTickColor_(self, v5, v4, v6, v7.receiver, v7.super_class);
}

- ($0B56E7081CBE040606E62B6BB81BA072)sizeRange
{
  minimum = self->_sizeRange.widthRange.minimum;
  maximum = self->_sizeRange.widthRange.maximum;
  v4 = self->_sizeRange.heightRange.minimum;
  v5 = self->_sizeRange.heightRange.maximum;
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = maximum;
  result.var0.var0 = minimum;
  return result;
}

+ (id)galleon_newTickViewWithDevice:(id)a3 numberOfTicks:(unint64_t)a4 tickSizes:(id)a5
{
  var1 = a5.var1.var1;
  var0 = a5.var1.var0;
  v7 = a5.var0.var1;
  v8 = a5.var0.var0;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v10 = a3;
  _NTKGalleonLayoutConstants(v10, &v20);
  v11 = *&v20;
  v12 = *&v20 + *&v21 * -2.0;
  v13 = [NTKGalleonTickView alloc];
  v15 = objc_msgSend_initWithDevice_dialDiameter_numberOfTicks_tickSizes_(v13, v14, v10, a4, v12, v8, v7, var0, var1);

  objc_msgSend_setCenter_(v15, v16, v17, v18, v11 * 0.5, v11 * 0.5);

  return v15;
}

@end