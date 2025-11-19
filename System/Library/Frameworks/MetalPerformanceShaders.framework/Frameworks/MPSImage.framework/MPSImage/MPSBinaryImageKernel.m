@interface MPSBinaryImageKernel
- (BOOL)encodeToCommandBuffer:(id)commandBuffer inPlacePrimaryTexture:(id *)inPlacePrimaryTexture secondaryTexture:(id)secondaryTexture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator;
- (BOOL)encodeToCommandBuffer:(id)commandBuffer primaryTexture:(id)primaryTexture inPlaceSecondaryTexture:(id *)inPlaceSecondaryTexture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator;
- (MPSBinaryImageKernel)init;
- (MPSBinaryImageKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSBinaryImageKernel)initWithDevice:(id)device;
- (MPSRegion)primarySourceRegionForDestinationSize:(SEL)a3;
- (MPSRegion)secondarySourceRegionForDestinationSize:(SEL)a3;
- (MTLRegion)clipRect;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImage:(id)a5 secondaryImage:(id)a6 destinationImage:(id)a7;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryTexture:(id)a5 secondaryTexture:(id)a6 destinationTexture:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)setClipRect:(MTLRegion *)clipRect;
- (void)setPrimaryOffset:(MPSOffset *)primaryOffset;
- (void)setSecondaryOffset:(MPSOffset *)secondaryOffset;
@end

@implementation MPSBinaryImageKernel

- (MPSBinaryImageKernel)init
{
  v3 = MTLCreateSystemDefaultDevice();
  if (v3)
  {

    return objc_msgSend_initWithDevice_(self, v4, v3, v5, v6, v7);
  }

  else
  {

    return 0;
  }
}

- (MPSBinaryImageKernel)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSBinaryImageKernel;
  result = [(MPSKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_secondaryOffset.y = 0;
    result->_secondaryOffset.z = 0;
    result->_secondaryOffset.x = 0;
    result->_primaryOffset.y = 0;
    result->_primaryOffset.z = 0;
    result->_primaryOffset.x = 0;
    result->_secondaryEdgeMode = 0;
    result->_primaryEdgeMode = 0;
    v5 = *(MEMORY[0x277CD7200] + 16);
    v4 = *(MEMORY[0x277CD7200] + 32);
    *&result->_clipRect.origin.x = *MEMORY[0x277CD7200];
    *&result->_clipRect.origin.z = v5;
    *&result->_clipRect.size.height = v4;
    result->_checkFlags = 1;
    result->_encode = 0;
    result->_encodeData = 0;
    result->_preferredTileSize = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v11.receiver = self;
  v11.super_class = MPSBinaryImageKernel;
  result = [(MPSKernel *)&v11 copyWithZone:a3 device:a4];
  if (result)
  {
    z = self->_primaryOffset.z;
    *(result + 136) = *&self->_primaryOffset.x;
    *(result + 19) = z;
    v7 = self->_secondaryOffset.z;
    *(result + 10) = *&self->_secondaryOffset.x;
    *(result + 22) = v7;
    *(result + 23) = self->_primaryEdgeMode;
    *(result + 24) = self->_secondaryEdgeMode;
    v9 = *&self->_clipRect.origin.z;
    v8 = *&self->_clipRect.size.height;
    *(result + 88) = *&self->_clipRect.origin.x;
    *(result + 104) = v9;
    *(result + 120) = v8;
    *(result + 50) = self->_checkFlags;
    *(result + 26) = self->_encode;
    encodeData = self->_encodeData;
    if (encodeData == self)
    {
      encodeData = result;
    }

    *(result + 27) = encodeData;
  }

  return result;
}

- (id)debugDescription
{
  if (!dladdr(self->_encode, &v14))
  {
    v14.dli_sname = "<NULL>";
  }

  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSBinaryImageKernel;
  v4 = [(MPSKernel *)&v13 debugDescription];
  v9 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
  if (!v9)
  {
    v9 = &stru_284C92500;
  }

  v10 = "MPSImageEdgeModeZero";
  if (self->_primaryEdgeMode == 1)
  {
    v11 = "MPSImageEdgeModeClamp";
  }

  else
  {
    v11 = "MPSImageEdgeModeZero";
  }

  if (self->_secondaryEdgeMode == 1)
  {
    v10 = "MPSImageEdgeModeClamp";
  }

  return objc_msgSend_stringWithFormat_(v3, v5, @"%@ %@\n\tprimaryOffset: {%ld,%ld,%ld}\n\tsecondaryOffset: {%ld,%ld,%ld}\n\tclip: origin{%lu,%lu,%lu} size{%lu,%lu,%lu}\n\tdevice: %p\n\tprimary edge mode: %s\n\tsecondary edge mode: %s\n\tEncode Proc:         %s", v6, v7, v8, v4, v9, *&self->_primaryOffset.x, self->_primaryOffset.z, *&self->_secondaryOffset.x, self->_secondaryOffset.z, *&self->_clipRect.origin.x, *&self->_clipRect.origin.z, self->_clipRect.size.height, self->_clipRect.size.depth, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2], v11, v10, v14.dli_sname);
}

- (BOOL)encodeToCommandBuffer:(id)commandBuffer primaryTexture:(id)primaryTexture inPlaceSecondaryTexture:(id *)inPlaceSecondaryTexture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator
{
  v8 = *inPlaceSecondaryTexture;
  v9 = *MEMORY[0x277CD7350];
  v10 = *(&self->super.super.isa + v9);
  v11 = objc_msgSend_pixelFormat(primaryTexture, a2, commandBuffer, primaryTexture, inPlaceSecondaryTexture, copyAllocator);
  PixelInfo = MPSDevice::GetPixelInfo(v10, v11, MPSImageFeatureChannelFormatNone);
  v13 = PixelInfo;
  v185[0] = PixelInfo;
  v14 = *(&self->super.super.isa + v9);
  v20 = objc_msgSend_pixelFormat(v8, v15, v16, v17, v18, v19);
  v21 = MPSDevice::GetPixelInfo(v14, v20, MPSImageFeatureChannelFormatNone);
  v22 = v21;
  v184 = v21;
  v182 = 0u;
  v183 = 0u;
  v181 = 0u;
  *v172 = objc_msgSend_width(v8, v23, v24, v25, v26, v27);
  *&v172[8] = objc_msgSend_height(v8, v28, v29, v30, v31, v32);
  *&v172[16] = 1;
  v33 = *&self->_clipRect.origin.z;
  *v175 = *&self->_clipRect.origin.x;
  *&v175[16] = v33;
  *&v175[32] = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v181, v172, v175);
  v39 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v39) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v150 = objc_opt_class();
      v163 = NSStringFromClass(v150);
      MTLReportFailure();
    }

    if (!primaryTexture && MTLReportFailureTypeEnabled())
    {
      v151 = objc_opt_class();
      v163 = NSStringFromClass(v151);
      MTLReportFailure();
    }

    if (!v8 && MTLReportFailureTypeEnabled())
    {
      v152 = objc_opt_class();
      v163 = NSStringFromClass(v152);
      MTLReportFailure();
    }

    v40 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v39) & ~*(&self->super.super.isa + v40)) != 0 && MTLReportFailureTypeEnabled())
    {
      v153 = objc_opt_class();
      v163 = NSStringFromClass(v153);
      v165 = *(&self->super.super.isa + v39) & ~*(&self->super.super.isa + v40);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(primaryTexture, v34, v35, v36, v37, v38);
      if (objc_msgSend_textureType(primaryTexture, v41, v42, v43, v44, v45) != 2 && MTLReportFailureTypeEnabled())
      {
        v163 = primaryTexture;
        MTLReportFailure();
      }

      objc_msgSend_textureType(v8, v46, v47, v48, v49, v50, v163, v165);
      if (objc_msgSend_textureType(v8, v51, v52, v53, v54, v55) != 2 && MTLReportFailureTypeEnabled())
      {
        v163 = v8;
        MTLReportFailure();
      }

      if (v182 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    v56 = v22 & 0x3FF;
    if ((~LODWORD(v185[0]) & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v163 = primaryTexture;
      v165 = v13 & 0x3FF;
      MTLReportFailure();
    }

    if ((~v184 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v163 = v8;
      v165 = v56;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40) == 0 && (v185[0] & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v163 = primaryTexture;
      v165 = v13 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x80) == 0 && (v184 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v163 = v8;
      v165 = v56;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 4) != 0 && (v185[0] & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v163 = primaryTexture;
      v165 = v13 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x10) != 0 && (v184 & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v163 = v8;
      v165 = v56;
      MTLReportFailure();
    }
  }

  if ((v184 & 0x200000000000) == 0)
  {
    goto LABEL_32;
  }

  v57 = objc_alloc(MEMORY[0x277CD7210]);
  v66 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v57, v58, commandBuffer, 0, v59, v60);
  *v172 = v66;
  *&v172[8] = self;
  if ((*(&self->super.super.isa + v39) & 0x18) != 0)
  {
    v62 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v62 || (v67 = objc_opt_class(), v68 = NSStringFromClass(v67), objc_msgSend_setLabel_(self, v69, v68, v70, v71, v72), (v62 = v68) != 0))
    {
      objc_msgSend_setLabel_(v66, v61, v62, v63, v64, v65, v163, v165);
    }
  }

  if (!v183 || !*(&v182 + 1))
  {
    objc_msgSend_endEncoding(v66, v61, v62, v63, v64, v65, v163);

    return 1;
  }

  *&v175[24] = v181;
  *&v175[40] = v182;
  v176 = v183;
  v177 = *&self->_primaryOffset.x;
  z = self->_primaryOffset.z;
  v179 = *&self->_secondaryOffset.x;
  v180 = self->_secondaryOffset.z;
  *v175 = v185;
  *&v175[8] = &v184;
  v178 = z;
  *&v175[16] = &v184;
  if ((*(&self->super.super.isa + v39) & 8) != 0)
  {
    v156 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (!v156)
    {
      v157 = objc_opt_class();
      v156 = NSStringFromClass(v157);
    }

    objc_msgSend_pushDebugGroup_(v66, v61, v156, v63, v64, v65, v163);
    v74 = v66;
  }

  else
  {
    v74 = 0;
  }

  v80 = (self->_encode)(self->_encodeData, v66, commandBuffer, primaryTexture, v8, v8, v175);
  if (v74)
  {
    objc_msgSend_popDebugGroup(v74, v75, v76, v77, v78, v79);
  }

  objc_msgSend_endEncoding(v66, v75, v76, v77, v78, v79, v163);

  if (!v80)
  {
    return 1;
  }

LABEL_32:
  if (!copyAllocator)
  {
    return 0;
  }

  v81 = (*(copyAllocator + 2))(copyAllocator, self, commandBuffer, v8);
  if (!v81)
  {
    return 0;
  }

  v87 = v81;
  if ((*(&self->super.super.isa + v39) & 1) == 0)
  {
    if (v8 == v81 || (objc_msgSend_isEqual_(v8, v82, v81, v84, v85, v86), objc_msgSend_isEqual_(v8, v88, v87, v89, v90, v91)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v92 = objc_opt_class();
        v163 = NSStringFromClass(v92);
        MTLReportFailure();
      }
    }
  }

  v93 = *(&self->super.super.isa + v9);
  v94 = objc_msgSend_pixelFormat(v87, v82, v83, v84, v85, v86, v163);
  v95 = MPSDevice::GetPixelInfo(v93, v94, MPSImageFeatureChannelFormatNone);
  v174 = v95;
  v171.width = objc_msgSend_width(v87, v96, v97, v98, v99, v100);
  v171.height = objc_msgSend_height(v87, v101, v102, v103, v104, v105);
  v171.depth = 1;
  v106 = *&self->_clipRect.origin.z;
  *&v170.origin.x = *&self->_clipRect.origin.x;
  *&v170.origin.z = v106;
  *&v170.size.height = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(v172, &v171, &v170);
  v181 = *v172;
  v182 = *&v172[16];
  v183 = v173;
  v112 = *(&self->super.super.isa + v39);
  if ((v112 & 1) == 0)
  {
    v113 = *MEMORY[0x277CD7348];
    if ((v112 & ~*(&self->super.super.isa + v113)) != 0 && MTLReportFailureTypeEnabled())
    {
      v158 = objc_opt_class();
      v164 = NSStringFromClass(v158);
      v165 = *(&self->super.super.isa + v39) & ~*(&self->super.super.isa + v113);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(v87, v107, v108, v109, v110, v111);
      if (objc_msgSend_textureType(v87, v114, v115, v116, v117, v118) != 2)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v164 = v87;
          MTLReportFailure();
        }
      }
    }

    if ((~v95 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v164 = v87;
      v165 = v95 & 0x3FF;
      MTLReportFailure();
    }

    if ((v95 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v164 = v87;
      v165 = v95 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 2) == 0 && ((LODWORD(v185[0]) ^ v95) & 0xF0000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v159 = SLODWORD(v185[0]) >> 28;
      v160 = objc_opt_class();
      v165 = v95 >> 28;
      v166 = NSStringFromClass(v160);
      v164 = v159;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40000) == 0)
    {
      if (self->_primaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v161 = objc_opt_class();
        v164 = NSStringFromClass(v161);
        MTLReportFailure();
      }

      if (self->_secondaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v162 = objc_opt_class();
        v164 = NSStringFromClass(v162);
        MTLReportFailure();
      }
    }
  }

  *&v175[24] = v181;
  *&v175[40] = v182;
  v176 = v183;
  v177 = *&self->_primaryOffset.x;
  v119 = self->_primaryOffset.z;
  v179 = *&self->_secondaryOffset.x;
  v180 = self->_secondaryOffset.z;
  *v175 = v185;
  *&v175[8] = &v184;
  v178 = v119;
  *&v175[16] = &v174;
  v120 = objc_alloc(MEMORY[0x277CD7210]);
  v128 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v120, v121, commandBuffer, 0, v122, v123);
  *v172 = v128;
  *&v172[8] = self;
  if ((*(&self->super.super.isa + v39) & 0x18) != 0)
  {
    v129 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v129 || (v130 = objc_opt_class(), v131 = NSStringFromClass(v130), objc_msgSend_setLabel_(self, v132, v131, v133, v134, v135), (v129 = v131) != 0))
    {
      objc_msgSend_setLabel_(v128, v124, v129, v125, v126, v127, v164, v165, v166);
    }
  }

  if ((*(&self->super.super.isa + v39) & 8) != 0)
  {
    v154 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (!v154)
    {
      v155 = objc_opt_class();
      v154 = NSStringFromClass(v155);
    }

    objc_msgSend_pushDebugGroup_(v128, v124, v154, v125, v126, v127, v164);
    v136 = v128;
  }

  else
  {
    v136 = 0;
  }

  v142 = (self->_encode)(self->_encodeData, v128, commandBuffer, primaryTexture, v8, v87, v175);
  if (v136)
  {
    objc_msgSend_popDebugGroup(v136, v137, v138, v139, v140, v141);
  }

  v143 = v142 == 0;
  if (v142)
  {
  }

  else
  {

    *inPlaceSecondaryTexture = v87;
  }

  objc_msgSend_endEncoding(v128, v144, v145, v146, v147, v148, v164);

  return v143;
}

- (BOOL)encodeToCommandBuffer:(id)commandBuffer inPlacePrimaryTexture:(id *)inPlacePrimaryTexture secondaryTexture:(id)secondaryTexture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator
{
  v9 = *inPlacePrimaryTexture;
  v10 = *MEMORY[0x277CD7350];
  v11 = *(&self->super.super.isa + v10);
  v12 = objc_msgSend_pixelFormat(*inPlacePrimaryTexture, a2, commandBuffer, inPlacePrimaryTexture, secondaryTexture, copyAllocator);
  PixelInfo = MPSDevice::GetPixelInfo(v11, v12, MPSImageFeatureChannelFormatNone);
  v14 = PixelInfo;
  v189[0] = PixelInfo;
  v15 = *(&self->super.super.isa + v10);
  v172 = secondaryTexture;
  v21 = objc_msgSend_pixelFormat(secondaryTexture, v16, v17, v18, v19, v20);
  v22 = MPSDevice::GetPixelInfo(v15, v21, MPSImageFeatureChannelFormatNone);
  v23 = v22;
  v188 = v22;
  v186 = 0u;
  v187 = 0u;
  v185 = 0u;
  *v176 = objc_msgSend_width(v9, v24, v25, v26, v27, v28);
  *&v176[8] = objc_msgSend_height(v9, v29, v30, v31, v32, v33);
  *&v176[16] = 1;
  v34 = *&self->_clipRect.origin.z;
  *v179 = *&self->_clipRect.origin.x;
  *&v179[16] = v34;
  *&v179[32] = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v185, v176, v179);
  v40 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v40) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v152 = objc_opt_class();
      v167 = NSStringFromClass(v152);
      MTLReportFailure();
    }

    if (!v9 && MTLReportFailureTypeEnabled())
    {
      v153 = objc_opt_class();
      v167 = NSStringFromClass(v153);
      MTLReportFailure();
    }

    if (!secondaryTexture && MTLReportFailureTypeEnabled())
    {
      v154 = objc_opt_class();
      v167 = NSStringFromClass(v154);
      MTLReportFailure();
    }

    v41 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v40) & ~*(&self->super.super.isa + v41)) != 0 && MTLReportFailureTypeEnabled())
    {
      v155 = objc_opt_class();
      v167 = NSStringFromClass(v155);
      v169 = *(&self->super.super.isa + v40) & ~*(&self->super.super.isa + v41);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(v9, v35, v36, v37, v38, v39);
      if (objc_msgSend_textureType(v9, v42, v43, v44, v45, v46) != 2 && MTLReportFailureTypeEnabled())
      {
        v167 = v9;
        MTLReportFailure();
      }

      if (v186 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      objc_msgSend_textureType(secondaryTexture, v47, v48, v49, v50, v51, v167, v169);
      if (objc_msgSend_textureType(secondaryTexture, v52, v53, v54, v55, v56) != 2 && MTLReportFailureTypeEnabled())
      {
        v167 = secondaryTexture;
        MTLReportFailure();
      }
    }

    v57 = v23 & 0x3FF;
    if ((~LODWORD(v189[0]) & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v167 = v9;
      v169 = v14 & 0x3FF;
      MTLReportFailure();
    }

    if ((~v188 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v167 = secondaryTexture;
      v169 = v57;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40) == 0 && (v189[0] & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v167 = v9;
      v169 = v14 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x80) == 0 && (v188 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v167 = secondaryTexture;
      v169 = v57;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 4) != 0 && (v189[0] & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v167 = v9;
      v169 = v14 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x10) != 0 && (v188 & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v167 = secondaryTexture;
      v169 = v57;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40000) == 0)
    {
      if (self->_primaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v158 = objc_opt_class();
        v167 = NSStringFromClass(v158);
        MTLReportFailure();
      }

      if (self->_secondaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v159 = objc_opt_class();
        v167 = NSStringFromClass(v159);
        MTLReportFailure();
      }
    }
  }

  if ((v188 & 0x200000000000) == 0)
  {
    goto LABEL_35;
  }

  v58 = objc_alloc(MEMORY[0x277CD7210]);
  v67 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v58, v59, commandBuffer, 0, v60, v61);
  *v176 = v67;
  *&v176[8] = self;
  if ((*(&self->super.super.isa + v40) & 0x18) != 0)
  {
    v63 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v63 || (v68 = objc_opt_class(), v69 = NSStringFromClass(v68), objc_msgSend_setLabel_(self, v70, v69, v71, v72, v73), (v63 = v69) != 0))
    {
      objc_msgSend_setLabel_(v67, v62, v63, v64, v65, v66, v167, v169);
    }
  }

  if (!v187 || !*(&v186 + 1))
  {
    objc_msgSend_endEncoding(v67, v62, v63, v64, v65, v66, v167);

    return 1;
  }

  *&v179[24] = v185;
  *&v179[40] = v186;
  v180 = v187;
  v181 = *&self->_primaryOffset.x;
  v74 = *&self->_secondaryOffset.x;
  z = self->_secondaryOffset.z;
  *v179 = v189;
  *&v179[8] = &v188;
  v75 = self->_primaryOffset.z;
  v183 = v74;
  v182 = v75;
  *&v179[16] = v189;
  if ((*(&self->super.super.isa + v40) & 8) != 0)
  {
    v160 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (!v160)
    {
      v161 = objc_opt_class();
      v160 = NSStringFromClass(v161);
    }

    objc_msgSend_pushDebugGroup_(v67, v62, v160, v64, v65, v66, v167);
    v76 = v67;
  }

  else
  {
    v76 = 0;
  }

  v82 = (self->_encode)(self->_encodeData, v67, commandBuffer, v9, secondaryTexture, v9, v179);
  if (v76)
  {
    objc_msgSend_popDebugGroup(v76, v77, v78, v79, v80, v81);
  }

  objc_msgSend_endEncoding(v67, v77, v78, v79, v80, v81, v167);

  if (!v82)
  {
    return 1;
  }

LABEL_35:
  if (!copyAllocator)
  {
    return 0;
  }

  v83 = (*(copyAllocator + 2))(copyAllocator, self, commandBuffer, v9);
  if (!v83)
  {
    return 0;
  }

  v89 = v83;
  if ((*(&self->super.super.isa + v40) & 1) == 0)
  {
    if (v9 == v83 || (objc_msgSend_isEqual_(v9, v84, v83, v86, v87, v88), objc_msgSend_isEqual_(v9, v90, v89, v91, v92, v93)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v94 = objc_opt_class();
        v167 = NSStringFromClass(v94);
        MTLReportFailure();
      }
    }
  }

  v95 = *(&self->super.super.isa + v10);
  v96 = objc_msgSend_pixelFormat(v89, v84, v85, v86, v87, v88, v167);
  v97 = MPSDevice::GetPixelInfo(v95, v96, MPSImageFeatureChannelFormatNone);
  v178 = v97;
  v175.width = objc_msgSend_width(v89, v98, v99, v100, v101, v102);
  v175.height = objc_msgSend_height(v89, v103, v104, v105, v106, v107);
  v175.depth = 1;
  v108 = *&self->_clipRect.origin.z;
  *&v174.origin.x = *&self->_clipRect.origin.x;
  *&v174.origin.z = v108;
  *&v174.size.height = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(v176, &v175, &v174);
  v185 = *v176;
  v186 = *&v176[16];
  v187 = v177;
  v114 = *(&self->super.super.isa + v40);
  if ((v114 & 1) == 0)
  {
    v115 = *MEMORY[0x277CD7348];
    if ((v114 & ~*(&self->super.super.isa + v115)) != 0 && MTLReportFailureTypeEnabled())
    {
      v162 = objc_opt_class();
      v168 = NSStringFromClass(v162);
      v169 = *(&self->super.super.isa + v40) & ~*(&self->super.super.isa + v115);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(v89, v109, v110, v111, v112, v113);
      if (objc_msgSend_textureType(v89, v116, v117, v118, v119, v120) != 2)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v168 = v89;
          MTLReportFailure();
        }
      }
    }

    if ((~v97 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v168 = v89;
      v169 = v97 & 0x3FF;
      MTLReportFailure();
    }

    if ((v97 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v168 = v89;
      v169 = v97 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 2) == 0 && ((LODWORD(v189[0]) ^ v97) & 0xF0000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v163 = SLODWORD(v189[0]) >> 28;
      v164 = objc_opt_class();
      v169 = v97 >> 28;
      v170 = NSStringFromClass(v164);
      v168 = v163;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40000) == 0)
    {
      if (self->_primaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v165 = objc_opt_class();
        v168 = NSStringFromClass(v165);
        MTLReportFailure();
      }

      if (self->_secondaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v166 = objc_opt_class();
        v168 = NSStringFromClass(v166);
        MTLReportFailure();
      }
    }
  }

  *&v179[24] = v185;
  *&v179[40] = v186;
  v180 = v187;
  v181 = *&self->_primaryOffset.x;
  v121 = self->_primaryOffset.z;
  v183 = *&self->_secondaryOffset.x;
  z = self->_secondaryOffset.z;
  *v179 = v189;
  *&v179[8] = &v188;
  v182 = v121;
  *&v179[16] = &v178;
  v122 = objc_alloc(MEMORY[0x277CD7210]);
  v130 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v122, v123, commandBuffer, 0, v124, v125);
  *v176 = v130;
  *&v176[8] = self;
  if ((*(&self->super.super.isa + v40) & 0x18) != 0)
  {
    v131 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v131 || (v132 = objc_opt_class(), v133 = NSStringFromClass(v132), objc_msgSend_setLabel_(self, v134, v133, v135, v136, v137), (v131 = v133) != 0))
    {
      objc_msgSend_setLabel_(v130, v126, v131, v127, v128, v129, v168, v169, v170);
    }
  }

  if ((*(&self->super.super.isa + v40) & 8) != 0)
  {
    v156 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (!v156)
    {
      v157 = objc_opt_class();
      v156 = NSStringFromClass(v157);
    }

    objc_msgSend_pushDebugGroup_(v130, v126, v156, v127, v128, v129, v168);
    v138 = v130;
  }

  else
  {
    v138 = 0;
  }

  v144 = (self->_encode)(self->_encodeData, v130, commandBuffer, v9, v172, v89, v179);
  if (v138)
  {
    objc_msgSend_popDebugGroup(v138, v139, v140, v141, v142, v143);
  }

  v145 = v144 == 0;
  if (v144)
  {
  }

  else
  {

    *inPlacePrimaryTexture = v89;
  }

  objc_msgSend_endEncoding(v130, v146, v147, v148, v149, v150, v168);

  return v145;
}

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryTexture:(id)a5 secondaryTexture:(id)a6 destinationTexture:(id)a7
{
  v12 = *MEMORY[0x277CD7350];
  v13 = *(&self->super.super.isa + v12);
  v14 = objc_msgSend_pixelFormat(a5, a2, a3, a4, a5, a6);
  PixelInfo = MPSDevice::GetPixelInfo(v13, v14, MPSImageFeatureChannelFormatNone);
  v16 = PixelInfo;
  v150 = PixelInfo;
  v17 = *(&self->super.super.isa + v12);
  v23 = objc_msgSend_pixelFormat(a6, v18, v19, v20, v21, v22);
  v24 = MPSDevice::GetPixelInfo(v17, v23, MPSImageFeatureChannelFormatNone);
  v25 = v24;
  v149 = v24;
  v26 = *(&self->super.super.isa + v12);
  v32 = objc_msgSend_pixelFormat(a7, v27, v28, v29, v30, v31);
  v33 = MPSDevice::GetPixelInfo(v26, v32, MPSImageFeatureChannelFormatNone);
  v34 = v33;
  v148 = v33;
  v146 = 0u;
  v147 = 0u;
  v145 = 0u;
  v144.width = objc_msgSend_width(a7, v35, v36, v37, v38, v39);
  v144.height = objc_msgSend_height(a7, v40, v41, v42, v43, v44);
  v144.depth = 1;
  v45 = *&self->_clipRect.origin.z;
  *v138 = *&self->_clipRect.origin.x;
  *&v138[16] = v45;
  *&v138[32] = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v145, &v144, v138);
  v51 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v51) & 1) == 0)
  {
    if (!a4 && MTLReportFailureTypeEnabled())
    {
      v118 = objc_opt_class();
      v134 = NSStringFromClass(v118);
      MTLReportFailure();
    }

    if (!a5 && MTLReportFailureTypeEnabled())
    {
      v119 = objc_opt_class();
      v134 = NSStringFromClass(v119);
      MTLReportFailure();
    }

    if (!a6 && MTLReportFailureTypeEnabled())
    {
      v120 = objc_opt_class();
      v134 = NSStringFromClass(v120);
      MTLReportFailure();
    }

    if (!a7 && MTLReportFailureTypeEnabled())
    {
      v121 = objc_opt_class();
      v134 = NSStringFromClass(v121);
      MTLReportFailure();
    }

    v52 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v51) & ~*(&self->super.super.isa + v52)) != 0 && MTLReportFailureTypeEnabled())
    {
      v122 = objc_opt_class();
      v134 = NSStringFromClass(v122);
      v135 = *(&self->super.super.isa + v51) & ~*(&self->super.super.isa + v52);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(a5, v46, v47, v48, v49, v50);
      if (objc_msgSend_textureType(a5, v53, v54, v55, v56, v57) != 2 && MTLReportFailureTypeEnabled())
      {
        v134 = a5;
        MTLReportFailure();
      }

      objc_msgSend_textureType(a6, v58, v59, v60, v61, v62, v134, v135);
      if (objc_msgSend_textureType(a6, v63, v64, v65, v66, v67) != 2 && MTLReportFailureTypeEnabled())
      {
        v134 = a6;
        MTLReportFailure();
      }
    }

    v68 = v25 & 0x3FF;
    if ((~v150 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v134 = a5;
      v135 = v16 & 0x3FF;
      MTLReportFailure();
    }

    if ((~v149 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v134 = a6;
      v135 = v68;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40) == 0 && (v150 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v134 = a5;
      v135 = v16 & 0x3FF;
      MTLReportFailure();
    }

    v69 = v34 & 0x3FF;
    if ((self->_checkFlags & 0x80) == 0 && (v149 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v134 = a6;
      v135 = v68;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x100) == 0 && (v148 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v134 = a7;
      v135 = v69;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 4) != 0 && (v150 & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v134 = a5;
      v135 = v16 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x10) != 0 && (v149 & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v134 = a6;
      v135 = v68;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(a7, v46, v47, v48, v49, v50);
      if (objc_msgSend_textureType(a7, v70, v71, v72, v73, v74) != 2 && MTLReportFailureTypeEnabled())
      {
        v134 = a7;
        MTLReportFailure();
      }

      if (v146 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    if ((~v148 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v134 = a7;
      v135 = v69;
      MTLReportFailure();
    }

    if ((v148 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v134 = a7;
      v135 = v69;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 2) == 0 && ((v150 ^ v148) & 0xF0000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v127 = v150 >> 28;
      v128 = v148 >> 28;
      v129 = objc_opt_class();
      v135 = v128;
      v136 = NSStringFromClass(v129);
      v134 = v127;
      MTLReportFailure();
    }

    if (a5 == a7 || (objc_msgSend_isEqual_(a5, v46, a7, v48, v49, v50), objc_msgSend_isEqual_(a5, v75, a7, v76, v77, v78)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v83 = objc_opt_class();
        v134 = NSStringFromClass(v83);
        MTLReportFailure();
      }
    }

    if (a6 == a7 || (objc_msgSend_isEqual_(a6, v79, a7, v80, v81, v82), objc_msgSend_isEqual_(a6, v84, a7, v85, v86, v87)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v88 = objc_opt_class();
        v134 = NSStringFromClass(v88);
        MTLReportFailure();
      }
    }

    if ((self->_checkFlags & 0x40000) == 0)
    {
      if (self->_primaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v130 = objc_opt_class();
        v134 = NSStringFromClass(v130);
        MTLReportFailure();
      }

      if (self->_secondaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v131 = objc_opt_class();
        v134 = NSStringFromClass(v131);
        MTLReportFailure();
      }
    }
  }

  if (v147 && *(&v146 + 1))
  {
    *&v138[24] = v145;
    *v138 = &v150;
    *&v138[8] = &v149;
    *&v138[16] = &v148;
    *&v138[40] = v146;
    v139 = v147;
    v140 = *&self->_primaryOffset.x;
    z = self->_primaryOffset.z;
    v142 = *&self->_secondaryOffset.x;
    v143 = self->_secondaryOffset.z;
    v89 = a3;
    if (a3)
    {
      if ((*(&self->super.super.isa + v51) & 8) != 0)
      {
        v123 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
        if (!v123)
        {
          v124 = objc_opt_class();
          v125 = NSStringFromClass(v124);
          v89 = a3;
          v123 = v125;
        }

        v126 = v89;
        objc_msgSend_pushDebugGroup_(v89, v89, v123, v48, v49, v50, v134, v135, v136);
        v90 = v126;
      }

      else
      {
        v90 = 0;
      }

      (self->_encode)(self->_encodeData);
      if (v90)
      {
        objc_msgSend_popDebugGroup(v90, v91, v92, v93, v94, v95);
      }
    }

    else
    {
      v96 = objc_alloc(MEMORY[0x277CD7210]);
      v104 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v96, v97, a4, 0, v98, v99);
      v144.width = v104;
      v144.height = self;
      if ((*(&self->super.super.isa + v51) & 0x18) != 0)
      {
        v105 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
        if (v105 || (v106 = objc_opt_class(), v107 = NSStringFromClass(v106), objc_msgSend_setLabel_(self, v108, v107, v109, v110, v111), (v105 = v107) != 0))
        {
          objc_msgSend_setLabel_(v104, v100, v105, v101, v102, v103, v134, v135, v136);
        }
      }

      if ((*(&self->super.super.isa + v51) & 8) != 0)
      {
        v132 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
        if (!v132)
        {
          v133 = objc_opt_class();
          v132 = NSStringFromClass(v133);
        }

        objc_msgSend_pushDebugGroup_(v104, v100, v132, v101, v102, v103, v134);
        v112 = v104;
      }

      else
      {
        v112 = 0;
      }

      (self->_encode)(self->_encodeData, v104, a4, a5, a6, a7, v138);
      if (v112)
      {
        objc_msgSend_popDebugGroup(v112, v113, v114, v115, v116, v117);
      }

      objc_msgSend_endEncoding(v104, v113, v114, v115, v116, v117, v134);
    }
  }
}

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImage:(id)a5 secondaryImage:(id)a6 destinationImage:(id)a7
{
  v11 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v11) & 1) == 0)
  {
    if (!a4)
    {
      v25 = a3;
      v26 = MTLReportFailureTypeEnabled();
      a3 = v25;
      a4 = 0;
      if (v26)
      {
        v27 = objc_opt_class();
        v97 = NSStringFromClass(v27);
        MTLReportFailure();
        a3 = v25;
        a4 = 0;
      }
    }

    if (!a5)
    {
      v28 = a4;
      v29 = a3;
      v30 = MTLReportFailureTypeEnabled();
      a3 = v29;
      a4 = v28;
      if (v30)
      {
        v31 = objc_opt_class();
        v97 = NSStringFromClass(v31);
        MTLReportFailure();
        a3 = v29;
        a4 = v28;
      }
    }

    if (!a6)
    {
      v32 = a4;
      v33 = a3;
      v34 = MTLReportFailureTypeEnabled();
      a3 = v33;
      a4 = v32;
      if (v34)
      {
        v35 = objc_opt_class();
        v97 = NSStringFromClass(v35);
        MTLReportFailure();
        a3 = v33;
        a4 = v32;
      }
    }

    if (!a7)
    {
      v36 = a4;
      v37 = a3;
      v38 = MTLReportFailureTypeEnabled();
      a3 = v37;
      a4 = v36;
      if (v38)
      {
        v39 = objc_opt_class();
        v97 = NSStringFromClass(v39);
        MTLReportFailure();
        a3 = v37;
        a4 = v36;
      }
    }

    v12 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v11) & ~*(&self->super.super.isa + v12)) != 0)
    {
      v40 = a4;
      v41 = a3;
      v42 = MTLReportFailureTypeEnabled();
      a3 = v41;
      a4 = v40;
      if (v42)
      {
        v43 = objc_opt_class();
        v97 = NSStringFromClass(v43);
        v98 = *(&self->super.super.isa + v11) & ~*(&self->super.super.isa + v12);
        MTLReportFailure();
        a3 = v41;
        a4 = v40;
      }
    }

    if ((self->_checkFlags & 0x800) == 0)
    {
      v13 = MEMORY[0x277CD72F8];
      if (*(a5 + *MEMORY[0x277CD72F8]) >= 5uLL)
      {
        v56 = a4;
        v57 = a3;
        v58 = MTLReportFailureTypeEnabled();
        a3 = v57;
        a4 = v56;
        if (v58)
        {
          v59 = objc_opt_class();
          v97 = NSStringFromClass(v59);
          v98 = a5;
          MTLReportFailure();
          a3 = v57;
          a4 = v56;
        }
      }

      if (*(a6 + *v13) >= 5uLL)
      {
        v60 = a4;
        v61 = a3;
        v62 = MTLReportFailureTypeEnabled();
        a3 = v61;
        a4 = v60;
        if (v62)
        {
          v63 = objc_opt_class();
          v97 = NSStringFromClass(v63);
          v98 = a6;
          MTLReportFailure();
          a3 = v61;
          a4 = v60;
        }
      }

      if (*(a7 + *v13) >= 5uLL)
      {
        v64 = a4;
        v65 = a3;
        v66 = MTLReportFailureTypeEnabled();
        a3 = v65;
        a4 = v64;
        if (v66)
        {
          v67 = objc_opt_class();
          v97 = NSStringFromClass(v67);
          v98 = a7;
          MTLReportFailure();
          a3 = v65;
          a4 = v64;
        }
      }
    }

    v14 = MEMORY[0x277CD72F0];
    if (*(a5 + *MEMORY[0x277CD72F0]) == 5)
    {
      v44 = a4;
      v45 = a3;
      v46 = MTLReportFailureTypeEnabled();
      a3 = v45;
      a4 = v44;
      if (v46)
      {
        v47 = objc_opt_class();
        v97 = NSStringFromClass(v47);
        MTLReportFailure();
        a3 = v45;
        a4 = v44;
      }
    }

    if (*(a6 + *v14) == 5)
    {
      v48 = a4;
      v49 = a3;
      v50 = MTLReportFailureTypeEnabled();
      a3 = v49;
      a4 = v48;
      if (v50)
      {
        v51 = objc_opt_class();
        v97 = NSStringFromClass(v51);
        MTLReportFailure();
        a3 = v49;
        a4 = v48;
      }
    }

    if (*(a7 + *v14) == 5)
    {
      v52 = a4;
      v53 = a3;
      v54 = MTLReportFailureTypeEnabled();
      a3 = v53;
      a4 = v52;
      if (v54)
      {
        v55 = objc_opt_class();
        v97 = NSStringFromClass(v55);
        MTLReportFailure();
        a3 = v53;
        a4 = v52;
      }
    }
  }

  if (a5 && a6 && a7)
  {
    v100 = a3;
    v101 = a4;
    v15 = *MEMORY[0x277CD7320];
    v16 = (a5 + v15);
    v17 = (a6 + v15);
    v18 = (a7 + v15);
    v19 = *(a5 + v15 + 56);
    v20 = *(a6 + v15 + 56);
    v102 = v20;
    if ((*(&self->super.super.isa + v11) & 1) == 0)
    {
      v21 = MEMORY[0x277CD7490];
      if ((*(a5 + v15 + 56) & 1) != 0 && !*(a5 + *MEMORY[0x277CD7490]))
      {
        v93 = MTLReportFailureTypeEnabled();
        v20 = v102;
        if (v93)
        {
          v94 = objc_opt_class();
          v97 = NSStringFromClass(v94);
          v98 = a5;
          MTLReportFailure();
          v20 = v102;
        }
      }

      if ((v20 & 1) != 0 && !*(a6 + *v21) && MTLReportFailureTypeEnabled())
      {
        v95 = objc_opt_class();
        v97 = NSStringFromClass(v95);
        v98 = a6;
        MTLReportFailure();
      }

      if ((v18[7] & 1) != 0 && !*(a7 + *v21) && MTLReportFailureTypeEnabled())
      {
        v96 = objc_opt_class();
        v97 = NSStringFromClass(v96);
        v98 = a7;
        MTLReportFailure();
      }
    }

    explicit = atomic_load_explicit(v16, memory_order_acquire);
    if (explicit)
    {
      v23 = atomic_load_explicit(v17, memory_order_acquire);
      if (v23)
      {
        goto LABEL_26;
      }
    }

    else
    {
      MPSAutoTexture::AllocateTexture(v16, 0);
      explicit = atomic_load_explicit(v16, memory_order_acquire);
      v23 = atomic_load_explicit(v17, memory_order_acquire);
      if (v23)
      {
LABEL_26:
        v24 = atomic_load_explicit(v18, memory_order_acquire);
        if (v24)
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      }
    }

    MPSAutoTexture::AllocateTexture(v17, 0);
    v23 = atomic_load_explicit(v17, memory_order_acquire);
    v24 = atomic_load_explicit(v18, memory_order_acquire);
    if (v24)
    {
LABEL_27:
      if (*(&self->super.super.isa + v11))
      {
        goto LABEL_35;
      }

LABEL_32:
      if (!explicit)
      {
        v68 = v24;
        v69 = MTLReportFailureTypeEnabled();
        v24 = v68;
        if (v69)
        {
          v70 = objc_opt_class();
          v97 = NSStringFromClass(v70);
          v98 = objc_msgSend_debugDescription(a5, v71, v72, v73, v74, v75);
          MTLReportFailure();
          v24 = v68;
        }
      }

      if (!v23)
      {
        v76 = v24;
        v77 = MTLReportFailureTypeEnabled();
        v24 = v76;
        if (v77)
        {
          v78 = objc_opt_class();
          v97 = NSStringFromClass(v78);
          v98 = objc_msgSend_debugDescription(a6, v79, v80, v81, v82, v83);
          MTLReportFailure();
          v24 = v76;
        }
      }

      if (!v24)
      {
        v84 = MTLReportFailureTypeEnabled();
        v24 = 0;
        if (v84)
        {
          v85 = objc_opt_class();
          v86 = NSStringFromClass(v85);
          v99 = objc_msgSend_debugDescription(a7, v87, v88, v89, v90, v91);
          MTLReportFailure();
          objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryTexture_secondaryTexture_destinationTexture_(self, v92, v100, v101, explicit, v23, 0, v86, v99);
          goto LABEL_36;
        }
      }

LABEL_35:
      objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryTexture_secondaryTexture_destinationTexture_(self, a2, v100, v101, explicit, v23, v24, v97, v98);
LABEL_36:
      if (v19)
      {
        MPSDecrementReadCount(a5);
      }

      if (v102)
      {

        MPSDecrementReadCount(a6);
      }

      return;
    }

LABEL_31:
    MPSAutoTexture::AllocateTexture(v18, 0);
    v24 = atomic_load_explicit(v18, memory_order_acquire);
    if (*(&self->super.super.isa + v11))
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }
}

- (MPSRegion)primarySourceRegionForDestinationSize:(SEL)a3
{
  memset(v11, 0, sizeof(v11));
  v6 = *&destinationSize->width;
  v10.depth = destinationSize->depth;
  v7 = *&self->_clipRect.origin.z;
  *&v9.origin.x = *&self->_clipRect.origin.x;
  *&v9.origin.z = v7;
  *&v9.size.height = *&self->_clipRect.size.height;
  *&v10.width = v6;
  result = MPSGetEffectiveClipRegion(v11[0].i64, &v10, &v9);
  *&retstr->origin.x = vcvtq_f64_s64(*&self->_primaryOffset.x);
  retstr->origin.z = self->_primaryOffset.z;
  *&retstr->size.width = vcvtq_f64_u64(*(&v11[1] + 8));
  retstr->size.depth = v11[2].u64[1];
  return result;
}

- (MPSRegion)secondarySourceRegionForDestinationSize:(SEL)a3
{
  memset(v11, 0, sizeof(v11));
  v6 = *&destinationSize->width;
  v10.depth = destinationSize->depth;
  v7 = *&self->_clipRect.origin.z;
  *&v9.origin.x = *&self->_clipRect.origin.x;
  *&v9.origin.z = v7;
  *&v9.size.height = *&self->_clipRect.size.height;
  *&v10.width = v6;
  result = MPSGetEffectiveClipRegion(v11[0].i64, &v10, &v9);
  *&retstr->origin.x = vcvtq_f64_s64(*&self->_secondaryOffset.x);
  retstr->origin.z = self->_secondaryOffset.z;
  *&retstr->size.width = vcvtq_f64_u64(*(&v11[1] + 8));
  retstr->size.depth = v11[2].u64[1];
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v47.receiver = self;
  v47.super_class = MPSBinaryImageKernel;
  [(MPSKernel *)&v47 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_primaryOffset.x, @"MPSImageBinaryKernel.offset1.x", v6, v7);
  objc_msgSend_encodeInt64_forKey_(a3, v8, self->_primaryOffset.y, @"MPSImageBinaryKernel.offset1.y", v9, v10);
  objc_msgSend_encodeInt64_forKey_(a3, v11, self->_primaryOffset.z, @"MPSImageBinaryKernel.offset1.z", v12, v13);
  objc_msgSend_encodeInt64_forKey_(a3, v14, self->_secondaryOffset.x, @"MPSImageBinaryKernel.offset2.x", v15, v16);
  objc_msgSend_encodeInt64_forKey_(a3, v17, self->_secondaryOffset.y, @"MPSImageBinaryKernel.offset2.y", v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, self->_secondaryOffset.z, @"MPSImageBinaryKernel.offset2.z", v21, v22);
  objc_msgSend_encodeInt64_forKey_(a3, v23, self->_clipRect.origin.x, @"MPSImageBinaryKernel.clipRect.origin.x", v24, v25);
  objc_msgSend_encodeInt64_forKey_(a3, v26, self->_clipRect.origin.y, @"MPSImageBinaryKernel.clipRect.origin.y", v27, v28);
  objc_msgSend_encodeInt64_forKey_(a3, v29, self->_clipRect.origin.z, @"MPSImageBinaryKernel.clipRect.origin.z", v30, v31);
  objc_msgSend_encodeInt64_forKey_(a3, v32, self->_clipRect.size.width, @"MPSImageBinaryKernel.clipRect.size.width", v33, v34);
  objc_msgSend_encodeInt64_forKey_(a3, v35, self->_clipRect.size.height, @"MPSImageBinaryKernel.clipRect.size.height", v36, v37);
  objc_msgSend_encodeInt64_forKey_(a3, v38, self->_clipRect.size.depth, @"MPSImageBinaryKernel.clipRect.size.depth", v39, v40);
  objc_msgSend_encodeInt64_forKey_(a3, v41, self->_primaryEdgeMode, @"MPSImageBinaryKernel.edgeMode1", v42, v43);
  objc_msgSend_encodeInt64_forKey_(a3, v44, self->_secondaryEdgeMode, @"MPSImageBinaryKernel.edgeMode2", v45, v46);
}

- (MPSBinaryImageKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v65.receiver = self;
  v65.super_class = MPSBinaryImageKernel;
  v5 = [(MPSKernel *)&v65 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 1) << 8 == 256)
  {
    v5->_primaryOffset.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageBinaryKernel.offset1.x", v7, v8, v9);
    v10->_primaryOffset.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSImageBinaryKernel.offset1.y", v12, v13, v14);
    v10->_primaryOffset.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v15, @"MPSImageBinaryKernel.offset1.z", v16, v17, v18);
    v10->_secondaryOffset.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSImageBinaryKernel.offset2.x", v20, v21, v22);
    v10->_secondaryOffset.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v23, @"MPSImageBinaryKernel.offset2.y", v24, v25, v26);
    v10->_secondaryOffset.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v27, @"MPSImageBinaryKernel.offset2.z", v28, v29, v30);
    v10->_clipRect.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v31, @"MPSImageBinaryKernel.clipRect.origin.x", v32, v33, v34);
    v10->_clipRect.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v35, @"MPSImageBinaryKernel.clipRect.origin.y", v36, v37, v38);
    v10->_clipRect.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v39, @"MPSImageBinaryKernel.clipRect.origin.z", v40, v41, v42);
    v10->_clipRect.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v43, @"MPSImageBinaryKernel.clipRect.size.width", v44, v45, v46);
    v10->_clipRect.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v47, @"MPSImageBinaryKernel.clipRect.size.height", v48, v49, v50);
    v10->_clipRect.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v51, @"MPSImageBinaryKernel.clipRect.size.depth", v52, v53, v54);
    v10->_primaryEdgeMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v55, @"MPSImageBinaryKernel.edgeMode1", v56, v57, v58);
    v10->_secondaryEdgeMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v59, @"MPSImageBinaryKernel.edgeMode2", v60, v61, v62);
    v10->_checkFlags = 1;
    v10->_encode = 0;
    v10->_encodeData = 0;
    v10->_preferredTileSize = 0;
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v64 = objc_opt_class();
    NSStringFromClass(v64);
    MTLReportFailure();
  }

  return 0;
}

- (void)setPrimaryOffset:(MPSOffset *)primaryOffset
{
  z = primaryOffset->z;
  *&self->_primaryOffset.x = *&primaryOffset->x;
  self->_primaryOffset.z = z;
}

- (void)setSecondaryOffset:(MPSOffset *)secondaryOffset
{
  z = secondaryOffset->z;
  *&self->_secondaryOffset.x = *&secondaryOffset->x;
  self->_secondaryOffset.z = z;
}

- (MTLRegion)clipRect
{
  v3 = *&self[2].origin.y;
  *&retstr->origin.x = *&self[1].size.depth;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[2].size.width;
  return self;
}

- (void)setClipRect:(MTLRegion *)clipRect
{
  v4 = *&clipRect->origin.z;
  v3 = *&clipRect->size.height;
  *&self->_clipRect.origin.x = *&clipRect->origin.x;
  *&self->_clipRect.origin.z = v4;
  *&self->_clipRect.size.height = v3;
}

@end