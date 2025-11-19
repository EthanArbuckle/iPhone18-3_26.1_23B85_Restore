@interface NTKParmesanColorPalette
+ (id)colorRampFiltersForMonochromeColorMatrix:(id)a3 fromPalette:(id)a4 toPalette:(id)a5 transitionFraction:(double)a6;
- (BOOL)isCompositePalette;
- (BOOL)isGlassOption;
- (BOOL)isPlainOption;
- (BOOL)isTritoneOption;
- (BOOL)isVibrantOption;
- (NTKParmesanColorPalette)init;
- (double)frostAmount;
- (id)_generateGlassSwatchImageWithBackgroundColor:(id)a3 size:(CGSize)a4;
- (id)_monocolorRampColor;
- (id)colorRampImage;
- (id)colorRampsIndex;
- (id)colorRampsIndexByColorName;
- (id)monocolorRampImage;
- (id)swatchImageForSize:(CGSize)a3;
- (id)swatchPrimaryColor;
- (id)tritoneColors;
@end

@implementation NTKParmesanColorPalette

- (NTKParmesanColorPalette)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = NTKParmesanColorPalette;
  return [(NTKFaceColorPalette *)&v5 initWithFaceClass:v3];
}

- (BOOL)isPlainOption
{
  v4 = objc_msgSend_configuration(self, a2, v2, v3);
  v8 = objc_msgSend_colorOption(v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"plain", v10);

  return isEqualToString;
}

- (BOOL)isGlassOption
{
  isGlassEnabled = objc_msgSend_isGlassEnabled(_TtC30NTKParmesanFaceBundleCompanion23DigitalTimeViewFeatures, a2, v2, v3);
  if (isGlassEnabled)
  {
    v9 = objc_msgSend_configuration(self, v6, v7, v8);
    v13 = objc_msgSend_colorOption(v9, v10, v11, v12);
    v16 = objc_msgSend_containsString_(v13, v14, @"glass", v15);

    LOBYTE(isGlassEnabled) = v16;
  }

  return isGlassEnabled;
}

- (double)frostAmount
{
  isGlassEnabled = objc_msgSend_isGlassEnabled(_TtC30NTKParmesanFaceBundleCompanion23DigitalTimeViewFeatures, a2, v2, v3);
  result = 1.0;
  if (isGlassEnabled)
  {
    v10 = objc_msgSend_configuration(self, v6, v7, v8, 1.0);
    v14 = objc_msgSend_colorOption(v10, v11, v12, v13);
    isEqualToString = objc_msgSend_isEqualToString_(v14, v15, @"glass_05", v16);

    result = 1.0;
    if (isEqualToString)
    {
      return 0.5;
    }
  }

  return result;
}

- (BOOL)isVibrantOption
{
  v4 = objc_msgSend_configuration(self, a2, v2, v3);
  v8 = objc_msgSend_colorOption(v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"vibrant", v10);

  return isEqualToString;
}

- (BOOL)isTritoneOption
{
  v4 = objc_msgSend_configuration(self, a2, v2, v3);
  v8 = objc_msgSend_colorOption(v4, v5, v6, v7);
  v11 = objc_msgSend_containsString_(v8, v9, @"tritone", v10);

  return v11;
}

- (id)tritoneColors
{
  v20[3] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isTritoneOption(self, a2, v2, v3))
  {
    v8 = objc_msgSend_toColor1(self, v5, v6, v7);
    v12 = objc_msgSend_toColor2(self, v9, v10, v11, v8);
    v20[1] = v12;
    v16 = objc_msgSend_toColor3(self, v13, v14, v15);
    v20[2] = v16;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v20, 3);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (objc_msgSend_isPlainOption(self, a2, v3, v4))
  {
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      objc_msgSend_sizeForSwatchStyle_(MEMORY[0x277D2BFE8], v8, 0, v10);
      width = v12;
      height = v13;
    }

    v14 = objc_msgSend_blackColor(MEMORY[0x277D75348], v8, v9, v10);
    v76.width = width;
    v76.height = height;
    UIGraphicsBeginImageContextWithOptions(v76, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    objc_msgSend_set(v14, v16, v17, v18);
    v80.origin.x = 0.0;
    v80.origin.y = 0.0;
    v80.size.width = width;
    v80.size.height = height;
    CGContextFillEllipseInRect(CurrentContext, v80);
    v19 = UIGraphicsGetCurrentContext();
    Image = CGBitmapContextCreateImage(v19);
    UIGraphicsEndImageContext();
    v77.width = width;
    v77.height = height;
    UIGraphicsBeginImageContextWithOptions(v77, 0, 0.0);
    v21 = UIGraphicsGetCurrentContext();
    v81.origin.x = 0.0;
    v81.origin.y = 0.0;
    v81.size.width = width;
    v81.size.height = height;
    CGContextClipToMask(v21, v81, Image);
    objc_msgSend_set(v14, v22, v23, v24);
    transform.b = 0.0;
    transform.c = 0.0;
    transform.a = 1.0;
    *&transform.d = xmmword_23C001120;
    transform.ty = height;
    CGContextConcatCTM(v21, &transform);
    v25 = NTKImageNamed();
    v26 = v25;
    v30 = objc_msgSend_CGImage(v26, v27, v28, v29);
    v82.origin.x = 0.0;
    v82.origin.y = 0.0;
    v82.size.width = width;
    v82.size.height = height;
    CGContextDrawImage(v21, v82, v30);
    v31 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGImageRelease(Image);

    goto LABEL_9;
  }

  if (objc_msgSend_isGlassOption(self, v8, v9, v10))
  {
    v35 = objc_msgSend_primaryColor(self, v32, v33, v34);
    v31 = objc_msgSend__generateGlassSwatchImageWithBackgroundColor_size_(self, v36, v35, v37, width, height);

    goto LABEL_12;
  }

  if (objc_msgSend_isVibrantOption(self, v32, v33, v34))
  {
    v14 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v39, v40, v41, 0.874509804, 0.874509804, 0.874509804, 1.0);
    v45 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v42, v43, v44, 0.435294118, 0.435294118, 0.435294118, 1.0);
    v31 = NTKSwatchTwoColorGradientImage();

LABEL_9:
    goto LABEL_12;
  }

  if (objc_msgSend_isTritoneOption(self, v39, v40, v41))
  {
    v14 = objc_msgSend_tritoneColors(self, v46, v47, v48);
    v31 = NTKSwatchColorSectorsImage();
    goto LABEL_9;
  }

  if (objc_msgSend_isCompositePalette(self, v46, v47, v48))
  {
    v14 = objc_msgSend_colorRampImage(self, v49, v50, v51);
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      objc_msgSend_sizeForSwatchStyle_(MEMORY[0x277D2BFE8], v52, 0, v53);
      width = v55;
      height = v56;
    }

    v78.width = width;
    v78.height = height;
    UIGraphicsBeginImageContextWithOptions(v78, 0, 0.0);
    v57 = UIGraphicsGetCurrentContext();
    v61 = objc_msgSend_blackColor(MEMORY[0x277D75348], v58, v59, v60);
    objc_msgSend_set(v61, v62, v63, v64);

    v83.origin.x = 0.0;
    v83.origin.y = 0.0;
    v83.size.width = width;
    v83.size.height = height;
    CGContextFillEllipseInRect(v57, v83);
    v65 = UIGraphicsGetCurrentContext();
    v66 = CGBitmapContextCreateImage(v65);
    UIGraphicsEndImageContext();
    v79.width = width;
    v79.height = height;
    UIGraphicsBeginImageContextWithOptions(v79, 0, 0.0);
    v67 = UIGraphicsGetCurrentContext();
    v84.origin.x = 0.0;
    v84.origin.y = 0.0;
    v84.size.width = width;
    v84.size.height = height;
    CGContextClipToMask(v67, v84, v66);
    CGContextTranslateCTM(v67, width * 0.5, height * 0.5);
    CGContextRotateCTM(v67, -2.35619449);
    CGContextTranslateCTM(v67, width * -0.5, height * -0.5);
    v68 = v14;
    v72 = objc_msgSend_CGImage(v68, v69, v70, v71);
    v85.origin.x = 0.0;
    v85.origin.y = 0.0;
    v85.size.width = width;
    v85.size.height = height;
    CGContextDrawImage(v67, v85, v72);
    v31 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGImageRelease(v66);
    goto LABEL_9;
  }

  v73.receiver = self;
  v73.super_class = NTKParmesanColorPalette;
  v31 = [(NTKFaceColorPalette *)&v73 swatchImageForSize:width, height];
LABEL_12:

  return v31;
}

- (BOOL)isCompositePalette
{
  v5 = MEMORY[0x277D2C0B0];
  v6 = objc_msgSend_pigmentEditOption(self, a2, v2, v3);
  v10 = objc_msgSend_identifier(v6, v7, v8, v9);
  v13 = objc_msgSend_multitoneColorNames_(v5, v11, v10, v12);

  v19.receiver = self;
  v19.super_class = NTKParmesanColorPalette;
  v17 = [(NTKFaceColorPalette *)&v19 isCompositePalette]|| objc_msgSend_count(v13, v14, v15, v16) > 1;

  return v17;
}

- (id)colorRampsIndex
{
  v5 = objc_msgSend_pigmentEditOption(self, a2, v2, v3);
  v9 = objc_msgSend_identifier(v5, v6, v7, v8);

  if (objc_msgSend_duotone(self, v10, v11, v12) && (objc_msgSend_isCompositePalette(self, v13, v14, v15) & 1) == 0)
  {
    v16 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v13, v9, @"duotone");

    v9 = v16;
  }

  v17 = objc_msgSend_colorRampsIndexByColorName(self, v13, v14, v15);
  v20 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v9, v19);

  if (!v20)
  {
    v24 = objc_msgSend_colorRampsIndexByColorName(self, v21, v22, v23);
    v28 = objc_msgSend_configuration(self, v25, v26, v27);
    v32 = objc_msgSend_colorOption(v28, v29, v30, v31);
    v20 = objc_msgSend_objectForKeyedSubscript_(v24, v33, v32, v34);
  }

  return v20;
}

- (id)colorRampImage
{
  if (objc_msgSend_isPlainOption(self, a2, v2, v3) & 1) != 0 || (objc_msgSend_isGlassOption(self, v5, v6, v7) & 1) != 0 || (objc_msgSend_isVibrantOption(self, v8, v9, v10))
  {
    v14 = 0;
  }

  else
  {
    v16 = objc_msgSend_imageAsset(self, v11, v12, v13);
    v20 = objc_msgSend_colorRampsIndex(self, v17, v18, v19);
    v24 = v20;
    if (v20)
    {
      objc_msgSend_intValue(v20, v21, v22, v23);
    }

    else
    {
      objc_msgSend_size(v16, v21, v22, v23);
      v30 = v29;
      objc_msgSend_scale(v16, v31, v32, v33);
      v28 = v30 * v34 + -1.0;
    }

    objc_msgSend_size(v16, v25, v26, v27, v28);
    v14 = NTKCropImage();
  }

  return v14;
}

- (id)monocolorRampImage
{
  if (objc_msgSend_isPlainOption(self, a2, v2, v3) & 1) != 0 || (objc_msgSend_isGlassOption(self, v5, v6, v7) & 1) != 0 || (objc_msgSend_isVibrantOption(self, v8, v9, v10))
  {
    v14 = 0;
  }

  else
  {
    v16 = objc_msgSend__monocolorRampColor(self, v11, v12, v13);
    v21.width = 1.0;
    v21.height = 1.0;
    UIGraphicsBeginImageContextWithOptions(v21, 1, 1.0);
    objc_msgSend_setFill(v16, v17, v18, v19);
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = 1.0;
    v22.size.height = 1.0;
    UIRectFill(v22);
    v14 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v14;
}

- (id)_monocolorRampColor
{
  if (objc_msgSend_isCompositePalette(self, a2, v2, v3))
  {
    v8 = objc_msgSend_paletteAtIndex_(self, v5, 0, v7);
    v12 = objc_msgSend_primaryColor(v8, v9, v10, v11);
  }

  else
  {
    v12 = objc_msgSend_primaryColor(self, v5, v6, v7);
  }

  return v12;
}

- (id)swatchPrimaryColor
{
  if (objc_msgSend_isCompositePalette(self, a2, v2, v3))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKParmesanColorPalette;
    v5 = [(NTKFaceColorPalette *)&v7 swatchPrimaryColor];
  }

  return v5;
}

- (id)colorRampsIndexByColorName
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF2C1E0;
  block[3] = &unk_278BA73C0;
  block[4] = v5;
  if (qword_27E1E3108 != -1)
  {
    dispatch_once(&qword_27E1E3108, block);
  }

  v2 = qword_27E1E3110;
  _Block_object_dispose(v5, 8);

  return v2;
}

- (id)_generateGlassSwatchImageWithBackgroundColor:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = MEMORY[0x277CCA8D8];
  v7 = a3;
  v8 = objc_opt_class();
  v11 = objc_msgSend_bundleForClass_(v6, v9, v8, v10);
  v14 = NTKImageNamedFromBundle();
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    objc_msgSend_sizeForSwatchStyle_(MEMORY[0x277D2BFE8], v12, 0, v13);
    width = v16;
    height = v17;
  }

  v40.width = width;
  v40.height = height;
  UIGraphicsBeginImageContextWithOptions(v40, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v22 = objc_msgSend_blackColor(MEMORY[0x277D75348], v19, v20, v21);
  objc_msgSend_set(v22, v23, v24, v25);

  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  v42.size.width = width;
  v42.size.height = height;
  CGContextFillEllipseInRect(CurrentContext, v42);
  v26 = UIGraphicsGetCurrentContext();
  Image = CGBitmapContextCreateImage(v26);
  UIGraphicsEndImageContext();
  v41.width = width;
  v41.height = height;
  UIGraphicsBeginImageContextWithOptions(v41, 0, 0.0);
  v28 = UIGraphicsGetCurrentContext();
  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = width;
  v43.size.height = height;
  CGContextClipToMask(v28, v43, Image);
  objc_msgSend_setFill(v7, v29, v30, v31);

  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  v44.size.width = width;
  v44.size.height = height;
  CGContextFillRect(v28, v44);
  v32 = v14;
  v36 = objc_msgSend_CGImage(v32, v33, v34, v35);
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = width;
  v45.size.height = height;
  CGContextDrawImage(v28, v45, v36);
  v37 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  CGImageRelease(Image);

  return v37;
}

+ (id)colorRampFiltersForMonochromeColorMatrix:(id)a3 fromPalette:(id)a4 toPalette:(id)a5 transitionFraction:(double)a6
{
  v59[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  v13 = NTKIsDefaultMonochromeColorMatrix();
  if (objc_msgSend_isPlainOption(v10, v14, v15, v16))
  {
    v20 = NTKInterpolateColorMatrixToIdentity();

    v24 = v11;
    if (v13)
    {
LABEL_3:
      v25 = objc_msgSend_monocolorRampImage(v24, v21, v22, v23);
      goto LABEL_7;
    }
  }

  else
  {
    if (!objc_msgSend_isPlainOption(v11, v17, v18, v19))
    {
      if (v13)
      {
        v50 = objc_msgSend_monocolorRampImage(v10, v28, v29, v30);
        objc_msgSend_monocolorRampImage(v11, v51, v52, v53);
      }

      else
      {
        v50 = objc_msgSend_colorRampImage(v10, v28, v29, v30);
        objc_msgSend_colorRampImage(v11, v54, v55, v56);
      }
      v57 = ;
      v31 = NTKInterpolateBetweenImages();

      a6 = 1.0;
      v20 = v12;
      if (v31)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    v20 = NTKInterpolateColorMatrixToIdentity();

    a6 = 1.0 - a6;
    v24 = v10;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v25 = objc_msgSend_colorRampImage(v24, v21, v22, v23);
LABEL_7:
  v31 = v25;
  if (v25)
  {
LABEL_8:
    v32 = objc_msgSend_filterWithType_(MEMORY[0x277CD9EA0], v26, *MEMORY[0x277CDA2C0], v27);
    objc_msgSend_setValue_forKey_(v32, v33, v20, @"inputColorMatrix");
    v36 = objc_msgSend_filterWithType_(MEMORY[0x277CD9EA0], v34, *MEMORY[0x277CDA588], v35);
    v40 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v37, v38, v39, a6);
    objc_msgSend_setValue_forKey_(v36, v41, v40, @"inputAmount");

    v42 = v31;
    v46 = objc_msgSend_CGImage(v42, v43, v44, v45);
    objc_msgSend_setValue_forKey_(v36, v47, v46, @"inputColorMap");
    v59[0] = v32;
    v59[1] = v36;
    v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v59, 2);

    goto LABEL_14;
  }

LABEL_13:
  v49 = MEMORY[0x277CBEBF8];
LABEL_14:

  return v49;
}

@end