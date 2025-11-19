@interface CKMessagesComplicationSpecs
- (BOOL)unreadCountShouldBeDrawnOnBubbleForFamily:(int64_t)a3;
- (CGSize)canvasSizeCircular;
- (CGSize)canvasSizeCircularMedium;
- (CGSize)canvasSizeCircularSmall;
- (CGSize)canvasSizeCircularXL;
- (CGSize)canvasSizeCorner;
- (CGSize)canvasSizeCornerSmall;
- (CGSize)canvasSizeExtraLarge;
- (CGSize)canvasSizeForFamily:(int64_t)a3;
- (CGSize)canvasSizeForFamily:(int64_t)a3 andTemplate:(id)a4;
- (CGSize)canvasSizeModularSmall;
- (CGSize)canvasSizeUtilitarianLarge;
- (CGSize)canvasSizeUtilitarianSmall;
- (CGSize)canvasSizeUtilitarianSmallFlat;
- (CKMessagesComplicationSpecs)initWithDevice:(id)a3;
- (double)imageFramePaddingForFamily:(int64_t)a3;
- (double)verticalTextOffsetForFamily:(int64_t)a3 withTextBounds:(CGRect)a4;
- (void)configureDeviceDependentSpecsForDevice:(id)a3;
@end

@implementation CKMessagesComplicationSpecs

- (CKMessagesComplicationSpecs)initWithDevice:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CKMessagesComplicationSpecs;
  v5 = [(CKMessagesComplicationSpecs *)&v13 init];
  v11 = v5;
  if (v5)
  {
    objc_msgSend_configureDeviceDependentSpecsForDevice_(v5, v6, v7, v8, v9, v10, v4);
  }

  return v11;
}

- (void)configureDeviceDependentSpecsForDevice:(id)a3
{
  v4 = MEMORY[0x277CBBAF8];
  v5 = a3;
  v6 = [v4 alloc];
  v63 = objc_msgSend_initWithDevice_identitySizeClass_(v6, v7, v8, v9, v10, v11, v5, 2);

  objc_msgSend_scaledSize_withOverride_forSizeClass_(v63, v12, 29.0, 29.0, 26.0, 26.0, 0);
  self->_canvasSizeModularSmall.width = v13;
  self->_canvasSizeModularSmall.height = v14;
  objc_msgSend_scaledSize_(v63, v15, 18.0, 18.0, v16, v17);
  self->_canvasSizeUtilitarianSmall.width = v18;
  self->_canvasSizeUtilitarianSmall.height = v19;
  objc_msgSend_scaledSize_(v63, v20, 12.0, 12.0, v21, v22);
  self->_canvasSizeUtilitarianSmallFlat.width = v23;
  self->_canvasSizeUtilitarianSmallFlat.height = v24;
  objc_msgSend_scaledSize_(v63, v25, 10.0, 10.0, v26, v27);
  self->_canvasSizeUtilitarianLarge.width = v28;
  self->_canvasSizeUtilitarianLarge.height = v29;
  objc_msgSend_scaledSize_withOverride_forSizeClass_(v63, v30, 18.0, 18.0, 16.0, 16.0, 0);
  self->_canvasSizeCircularSmall.width = v31;
  self->_canvasSizeCircularSmall.height = v32;
  objc_msgSend_scaledSize_(v63, v33, 42.0, 42.0, v34, v35);
  self->_canvasSizeCircular.width = v36;
  self->_canvasSizeCircular.height = v37;
  objc_msgSend_scaledSize_(v63, v38, 25.0, 25.0, v39, v40);
  self->_canvasSizeCircularMedium.width = v41;
  self->_canvasSizeCircularMedium.height = v42;
  objc_msgSend_scaledSize_(v63, v43, 120.0, 120.0, v44, v45);
  self->_canvasSizeCircularXL.width = v46;
  self->_canvasSizeCircularXL.height = v47;
  objc_msgSend_scaledSize_(v63, v48, 32.0, 32.0, v49, v50);
  self->_canvasSizeCorner.width = v51;
  self->_canvasSizeCorner.height = v52;
  objc_msgSend_scaledSize_(v63, v53, 20.0, 20.0, v54, v55);
  self->_canvasSizeCornerSmall.width = v56;
  self->_canvasSizeCornerSmall.height = v57;
  objc_msgSend_scaledSize_(v63, v58, 101.5, 101.5, v59, v60);
  self->_canvasSizeExtraLarge.width = v61;
  self->_canvasSizeExtraLarge.height = v62;
}

- (double)verticalTextOffsetForFamily:(int64_t)a3 withTextBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], a2, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  v15 = objc_msgSend_deviceCategory(v9, v10, v11, v12, v13, v14);

  if (v15 < 2)
  {
    result = 0.0;
    if (*MEMORY[0x277CBB668] != a3)
    {
      result = -1.0;
      if ((a3 - 2) <= 0xA)
      {
        return dbl_23BD21CC0[a3 - 2];
      }
    }
  }

  else
  {
    result = 0.0;
    if (a3 <= 0xC && ((1 << a3) & 0x1600) != 0)
    {
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      return ceil(CGRectGetHeight(v17) * 0.1);
    }
  }

  return result;
}

- (double)imageFramePaddingForFamily:(int64_t)a3
{
  if (*MEMORY[0x277CBB668] == a3)
  {
    return 0.1;
  }

  result = 0.0;
  if ((a3 - 8) <= 4)
  {
    return dbl_23BD21D18[a3 - 8];
  }

  return result;
}

- (BOOL)unreadCountShouldBeDrawnOnBubbleForFamily:(int64_t)a3
{
  if (*MEMORY[0x277CBB668] == a3)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = 0x16D5u >> a3;
    if (a3 > 0xC)
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

- (CGSize)canvasSizeForFamily:(int64_t)a3
{
  objc_msgSend_canvasSizeForFamily_andTemplate_(self, a2, v3, v4, v5, v6, a3, 0);
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)canvasSizeForFamily:(int64_t)a3 andTemplate:(id)a4
{
  v7 = a4;
  if (*MEMORY[0x277CBB668] != a3)
  {
    if (a3 > 6)
    {
      if (a3 <= 8)
      {
        if (a3 == 7)
        {
          objc_msgSend_canvasSizeExtraLarge(self, v6, v8, v9, v10, v11);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_canvasSizeCornerSmall(self, v18, v19, v20, v21, v22);
          }

          else
          {
            objc_msgSend_canvasSizeCorner(self, v18, v19, v20, v21, v22);
          }
        }

        goto LABEL_3;
      }

      if ((a3 - 9) < 2)
      {
        objc_msgSend_canvasSizeCircular(self, v6, v8, v9, v10, v11);
        goto LABEL_3;
      }

      if (a3 == 12)
      {
        objc_msgSend_canvasSizeCircularXL(self, v6, v8, v9, v10, v11);
        goto LABEL_3;
      }
    }

    else if (a3 <= 2)
    {
      if (!a3)
      {
        objc_msgSend_canvasSizeModularSmall(self, v6, v8, v9, v10, v11);
        goto LABEL_3;
      }

      if (a3 == 2)
      {
        objc_msgSend_canvasSizeUtilitarianSmall(self, v6, v8, v9, v10, v11);
        goto LABEL_3;
      }
    }

    else
    {
      switch(a3)
      {
        case 3:
          objc_msgSend_canvasSizeUtilitarianLarge(self, v6, v8, v9, v10, v11);
          goto LABEL_3;
        case 4:
          objc_msgSend_canvasSizeCircularSmall(self, v6, v8, v9, v10, v11);
          goto LABEL_3;
        case 6:
          objc_msgSend_canvasSizeUtilitarianSmallFlat(self, v6, v8, v9, v10, v11);
          goto LABEL_3;
      }
    }

    v14 = *MEMORY[0x277CBF3A8];
    v15 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_4;
  }

  objc_msgSend_canvasSizeCircularMedium(self, v6, v8, v9, v10, v11);
LABEL_3:
  v14 = v12;
  v15 = v13;
LABEL_4:

  v16 = v14;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)canvasSizeModularSmall
{
  width = self->_canvasSizeModularSmall.width;
  height = self->_canvasSizeModularSmall.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeUtilitarianSmall
{
  width = self->_canvasSizeUtilitarianSmall.width;
  height = self->_canvasSizeUtilitarianSmall.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeUtilitarianSmallFlat
{
  width = self->_canvasSizeUtilitarianSmallFlat.width;
  height = self->_canvasSizeUtilitarianSmallFlat.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeUtilitarianLarge
{
  width = self->_canvasSizeUtilitarianLarge.width;
  height = self->_canvasSizeUtilitarianLarge.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeCircular
{
  width = self->_canvasSizeCircular.width;
  height = self->_canvasSizeCircular.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeCircularSmall
{
  width = self->_canvasSizeCircularSmall.width;
  height = self->_canvasSizeCircularSmall.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeCircularMedium
{
  width = self->_canvasSizeCircularMedium.width;
  height = self->_canvasSizeCircularMedium.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeCircularXL
{
  width = self->_canvasSizeCircularXL.width;
  height = self->_canvasSizeCircularXL.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeCorner
{
  width = self->_canvasSizeCorner.width;
  height = self->_canvasSizeCorner.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeCornerSmall
{
  width = self->_canvasSizeCornerSmall.width;
  height = self->_canvasSizeCornerSmall.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)canvasSizeExtraLarge
{
  width = self->_canvasSizeExtraLarge.width;
  height = self->_canvasSizeExtraLarge.height;
  result.height = height;
  result.width = width;
  return result;
}

@end