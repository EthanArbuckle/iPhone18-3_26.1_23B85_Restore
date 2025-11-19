@interface MPSCNNPoolingMax
- (MPSCNNPoolingMax)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNPoolingMax)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)resultStateForSourceImage:(id)a3 sourceStates:(id)a4 destinationImage:(id)a5;
- (id)temporaryResultStateForCommandBuffer:(id)a3 sourceImage:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6;
@end

@implementation MPSCNNPoolingMax

- (MPSCNNPoolingMax)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY
{
  v24.receiver = self;
  v24.super_class = MPSCNNPoolingMax;
  v7 = [(MPSCNNPooling *)&v24 initWithDevice:device kernelWidth:kernelWidth kernelHeight:kernelHeight strideInPixelsX:strideInPixelsX strideInPixelsY:strideInPixelsY];
  v15 = v7;
  if (v7)
  {
    v7->super.super._encode = sub_239D05AE8;
    v7->super.super._batchEncode = sub_239D05AF0;
    v7->super.super._checkFlags |= 0x8422u;
    v16 = objc_msgSend_newPlugin(v7, v8, v9, v10, v11, v12, v13, v14);
    objc_msgSend_setPlugin_(v15, v17, v16, v18, v19, v20, v21, v22);
  }

  return v15;
}

- (MPSCNNPoolingMax)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v21.receiver = self;
  v21.super_class = MPSCNNPoolingMax;
  v4 = [(MPSCNNPooling *)&v21 initWithCoder:aDecoder device:device];
  v12 = v4;
  if (v4)
  {
    v4->super.super._encode = sub_239D05AE8;
    v4->super.super._batchEncode = sub_239D05AF0;
    v4->super.super._checkFlags |= 0x8422u;
    v13 = objc_msgSend_newPlugin(v4, v5, v6, v7, v8, v9, v10, v11);
    objc_msgSend_setPlugin_(v12, v14, v13, v15, v16, v17, v18, v19);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v22.receiver = self;
  v22.super_class = MPSCNNPoolingMax;
  v5 = [(MPSCNNPooling *)&v22 copyWithZone:a3 device:a4];
  v13 = v5;
  if (v5)
  {
    *(v5 + 36) = sub_239D05AE8;
    *(v5 + 37) = sub_239D05AF0;
    *(v5 + 38) = v5;
    *(v5 + 70) = self->super.super._checkFlags | 0x8422;
    v14 = objc_msgSend_newPlugin(v5, v6, v7, v8, v9, v10, v11, v12);
    objc_msgSend_setPlugin_(v13, v15, v14, v16, v17, v18, v19, v20);
  }

  return v13;
}

- (id)resultStateForSourceImage:(id)a3 sourceStates:(id)a4 destinationImage:(id)a5
{
  kernelWidth_low = LOWORD(self->super.super._kernelWidth);
  kernelHeight_low = LOWORD(self->super.super._kernelHeight);
  LOWORD(v108) = self->super.super._kernelWidth;
  v103 = __PAIR64__(kernelHeight_low, kernelWidth_low);
  v13 = vand_s8(__PAIR64__(kernelHeight_low, kernelWidth_low), 0xFFFF0000FFFFLL);
  objc_msgSend_offset(self, a2, a3, a4, a5, v5, v6, v7);
  v14.i16[0] = v111;
  v102 = v14;
  objc_msgSend_offset(self, v15, v16, v17, v18, v19, v20, v21);
  v22 = v102;
  v22.i16[2] = v110;
  v23 = vsub_s32(v22, vshr_n_u32(vshr_n_s32(vshl_n_s32(vsra_n_u32(v103, v13, 0xFuLL), 0x10uLL), 0x10uLL), 1uLL));
  HIWORD(v107) = v23.i16[2];
  LOWORD(v107) = v23.i16[0];
  v104 = objc_msgSend_strideInPixelsX(self, v24, v25, v26, v27, v28, v29, v30);
  v38 = objc_msgSend_strideInPixelsY(self, v31, v32, v33, v34, v35, v36, v37);
  HIWORD(v106) = WORD2(v104);
  LOWORD(v106) = v104;
  v46 = objc_msgSend_width(a5, v39, v40, v41, v42, v43, v44, v45);
  v54 = objc_msgSend_height(a5, v47, v48, v49, v50, v51, v52, v53);
  v62 = objc_msgSend_width(a3, v55, v56, v57, v58, v59, v60, v61);
  v70 = objc_msgSend_height(a3, v63, v64, v65, v66, v67, v68, v69);
  v75.i64[1] = -1;
  v76.i32[0] = v106 << 16;
  v76.i16[3] = v38;
  v77 = vshr_n_s32(v76, 0x10uLL);
  *v78.i8 = vmul_s32(v77, vadd_s32(__PAIR64__(v54, v46), -1));
  v77.i32[0] = v108 << 16;
  v77.i16[3] = kernelHeight_low;
  v79.i32[0] = v107 << 16;
  v79.i32[1] = v107;
  v79.i32[2] = v107 << 16;
  v79.i32[3] = v107;
  v78.u64[1] = vsra_n_s32(-1, v77, 0x10uLL);
  v80 = vsraq_n_s32(v78, v79, 0x10uLL);
  v75.i64[0] = __PAIR64__(v70, v62);
  v77.i32[0] = vmovn_s32(vcgtq_s32(v75, v80)).u32[0];
  v77.i32[1] = vmovn_s32(vcgtq_s32(v80, v75)).i32[1];
  if ((vminv_u16(v77) & 1) != 0 && self->super.super._kernelWidth <= 0xF && self->super.super._kernelHeight <= 0xF && *(a3 + *MEMORY[0x277CD7310]) < 2uLL)
  {
    v82 = sub_239D05FA8(0, self, a3, a5, v71, v72, v73, v74);
    objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v83, v82, a3, a4, a5, v84, v85);
    if ((*(&self->super.super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v86 = MEMORY[0x277CCACA8];
      v87 = objc_opt_class();
      v88 = NSStringFromClass(v87);
      v95 = objc_msgSend_stringWithFormat_(v86, v89, @"created by %@", v90, v91, v92, v93, v94, v88);
      objc_msgSend_setLabel_(v82, v96, v95, v97, v98, v99, v100, v101);
    }

    return v82;
  }

  else
  {
    v109.receiver = self;
    v109.super_class = MPSCNNPoolingMax;
    return [(MPSCNNKernel *)&v109 resultStateForSourceImage:a3 sourceStates:a4 destinationImage:a5];
  }
}

- (id)temporaryResultStateForCommandBuffer:(id)a3 sourceImage:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6
{
  kernelWidth_low = LOWORD(self->super.super._kernelWidth);
  kernelHeight_low = LOWORD(self->super.super._kernelHeight);
  LOWORD(v109) = self->super.super._kernelWidth;
  v103 = __PAIR64__(kernelHeight_low, kernelWidth_low);
  v13 = vand_s8(__PAIR64__(kernelHeight_low, kernelWidth_low), 0xFFFF0000FFFFLL);
  objc_msgSend_offset(self, a2, a3, a4, a5, a6, v6, v7);
  v14.i16[0] = v112;
  v102 = v14;
  objc_msgSend_offset(self, v15, v16, v17, v18, v19, v20, v21);
  v22 = v102;
  v22.i16[2] = v111;
  v23 = vsub_s32(v22, vshr_n_u32(vshr_n_s32(vshl_n_s32(vsra_n_u32(v103, v13, 0xFuLL), 0x10uLL), 0x10uLL), 1uLL));
  HIWORD(v108) = v23.i16[2];
  LOWORD(v108) = v23.i16[0];
  v104 = objc_msgSend_strideInPixelsX(self, v24, v25, v26, v27, v28, v29, v30);
  v38 = objc_msgSend_strideInPixelsY(self, v31, v32, v33, v34, v35, v36, v37);
  HIWORD(v107) = WORD2(v104);
  LOWORD(v107) = v104;
  v46 = objc_msgSend_width(a6, v39, v40, v41, v42, v43, v44, v45);
  v54 = objc_msgSend_height(a6, v47, v48, v49, v50, v51, v52, v53);
  v62 = objc_msgSend_width(a4, v55, v56, v57, v58, v59, v60, v61);
  v70 = objc_msgSend_height(a4, v63, v64, v65, v66, v67, v68, v69);
  v75.i64[1] = -1;
  v76.i32[0] = v107 << 16;
  v76.i16[3] = v38;
  v77 = vshr_n_s32(v76, 0x10uLL);
  *v78.i8 = vmul_s32(v77, vadd_s32(__PAIR64__(v54, v46), -1));
  v77.i32[0] = v109 << 16;
  v77.i16[3] = kernelHeight_low;
  v79.i32[0] = v108 << 16;
  v79.i32[1] = v108;
  v79.i32[2] = v108 << 16;
  v79.i32[3] = v108;
  v78.u64[1] = vsra_n_s32(-1, v77, 0x10uLL);
  v80 = vsraq_n_s32(v78, v79, 0x10uLL);
  v75.i64[0] = __PAIR64__(v70, v62);
  v77.i32[0] = vmovn_s32(vcgtq_s32(v75, v80)).u32[0];
  v77.i32[1] = vmovn_s32(vcgtq_s32(v80, v75)).i32[1];
  if ((vminv_u16(v77) & 1) != 0 && self->super.super._kernelWidth <= 0xF && self->super.super._kernelHeight <= 0xF && *(a4 + *MEMORY[0x277CD7310]) < 2uLL)
  {
    v82 = sub_239D05FA8(a3, self, a4, a6, v71, v72, v73, v74);
    objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v83, v82, a4, a5, a6, v84, v85);
    if ((*(&self->super.super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v86 = MEMORY[0x277CCACA8];
      v87 = objc_opt_class();
      v88 = NSStringFromClass(v87);
      v95 = objc_msgSend_stringWithFormat_(v86, v89, @"created by %@", v90, v91, v92, v93, v94, v88);
      objc_msgSend_setLabel_(v82, v96, v95, v97, v98, v99, v100, v101);
    }

    return v82;
  }

  else
  {
    v110.receiver = self;
    v110.super_class = MPSCNNPoolingMax;
    return [(MPSCNNKernel *)&v110 temporaryResultStateForCommandBuffer:a3 sourceImage:a4 sourceStates:a5 destinationImage:a6];
  }
}

@end