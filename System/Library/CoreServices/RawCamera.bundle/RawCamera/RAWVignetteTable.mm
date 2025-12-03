@interface RAWVignetteTable
- (BOOL)makeMapImages;
- (id)outputImage;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation RAWVignetteTable

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (objc_msgSend_hasPrefix_(keyCopy, v8, @"inputVignetteTableData", v9, v10))
  {
    vigImg = self->vigImg;
    self->vigImg = 0;
  }

  v12.receiver = self;
  v12.super_class = RAWVignetteTable;
  [(RAWVignetteTable *)&v12 setValue:valueCopy forKey:keyCopy];
}

- (BOOL)makeMapImages
{
  v50[3] = *MEMORY[0x277D85DE8];
  if (!self->vigImg)
  {
    v6 = objc_msgSend_intValue(self->inputVignetteTableDataSize, a2, v2, v3, v4);
    if (v6 < 1)
    {
      return 0;
    }

    v22 = v6;
    v10 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v7, ((8 * v6) & 0x3FFFFFFF0) + 16, v8, v9);
    v11 = v10;
    v16 = objc_msgSend_mutableBytes(v11, v12, v13, v14, v15);
    v21 = objc_msgSend_bytes(self->inputVignetteTableData, v17, v18, v19, v20);
    v43 = v22;
    v22 = v22;
    v44 = vdupq_n_s64(1uLL);
    do
    {
      v48 = 0;
      v47 = *v21;
      dest.rowBytes = 2;
      src.data = &v47;
      *&src.height = v44;
      src.rowBytes = 4;
      dest.data = &v48;
      *&dest.height = v44;
      vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
      v27.i16[1] = 15360;
      v27.i32[1] = 1006648320;
      v27.i16[0] = v48;
      v28 = vzip1_s16(v27, v27);
      v28.i16[2] = v48;
      *v16++ = v28;
      ++v21;
      --v22;
    }

    while (v22);
    v29 = MEMORY[0x277CBF758];
    v30 = objc_msgSend_length(v10, v23, v24, v25, v26);
    v31 = *MEMORY[0x277CBFA00];
    v49[0] = *MEMORY[0x277CBFA38];
    v49[1] = v31;
    v50[0] = MEMORY[0x277CBEC38];
    v50[1] = MEMORY[0x277CBEC38];
    v49[2] = *MEMORY[0x277CBFA40];
    v36 = objc_msgSend_null(MEMORY[0x277CBEB68], v32, v33, v34, v35);
    v50[2] = v36;
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v50, v49, 3);
    v40 = objc_msgSend_imageWithBitmapData_bytesPerRow_size_format_options_(v29, v39, v10, v30, *MEMORY[0x277CBF9D8], v38, v43, 1.0);
    vigImg = self->vigImg;
    self->vigImg = v40;
  }

  return 1;
}

- (id)outputImage
{
  v68[3] = *MEMORY[0x277D85DE8];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    goto LABEL_16;
  }

  objc_msgSend_extent(inputImage, a2, v2, v3, v4);
  x = v70.origin.x;
  y = v70.origin.y;
  width = v70.size.width;
  height = v70.size.height;
  if (CGRectIsInfinite(v70))
  {
    NSLog(&cfstr_Rawvignettetab_0.isa);
LABEL_4:
    v15 = self->inputImage;
    goto LABEL_17;
  }

  if (objc_msgSend_intValue(self->inputVignetteTableDataSize, v11, v12, v13, v14) >= 1 && objc_msgSend_makeMapImages(self, v16, v17, v18, v19))
  {
    if (!self->vigImg)
    {
      goto LABEL_4;
    }

    v20 = sub_23378E104();
    v21 = v20;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v21, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWVignetteTable", &unk_233945DBE, buf, 2u);
    }

    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_233743D34;
    v66[3] = &unk_2789EE800;
    v66[4] = self;
    v22 = MEMORY[0x2383AC810](v66);
    v27 = objc_msgSend_intValue(self->inputVignetteTableDataSize, v23, v24, v25, v26);
    v28 = hypot(width * 0.5, height * 0.5);
    v33 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v29, v30, v31, v32, x + width * 0.5, y + height * 0.5, ((v27 + -1.0) / v28), 0.5);
    v34 = self->inputImage;
    v38 = self->inputColorSpace;
    if (v38)
    {
      v39 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v34, v35, v38, v36, v37);

      v34 = v39;
    }

    v40 = objc_msgSend_kernelWithName_(GainMapKernels, v35, @"vignetteCorrectionTable", v36, v37);
    objc_msgSend_extent(v34, v41, v42, v43, v44);
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = sub_233743DBC;
    v64[3] = &unk_2789EE950;
    vigImg = self->vigImg;
    LODWORD(v65) = v27;
    v68[0] = v34;
    v68[1] = vigImg;
    v68[2] = v33;
    v56 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v54, v68, 3, v55, MEMORY[0x277D85DD0], 3221225472, sub_233743DBC, &unk_2789EE950, v65);
    v15 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v40, v57, v64, v56, v58, v46, v48, v50, v52);

    if (v38)
    {
      v62 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v15, v59, v38, v60, v61);

      v15 = v62;
    }

    v22[2](v22);
  }

  else
  {
LABEL_16:
    v15 = 0;
  }

LABEL_17:

  return v15;
}

@end