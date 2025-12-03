@interface MPSUnaryImageKernel
- (BOOL)encodeToCommandBuffer:(id)commandBuffer inPlaceTexture:(id *)texture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (MPSUnaryImageKernel)init;
- (MPSUnaryImageKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSUnaryImageKernel)initWithDevice:(id)device;
- (MTLRegion)clipRect;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image destinationImage:(id)destinationImage;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sources:(id)sources destination:(id)destination kernelDAGObject:(id)object;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRect:(MTLRegion *)clipRect;
- (void)setOffset:(MPSOffset *)offset;
@end

@implementation MPSUnaryImageKernel

- (MPSUnaryImageKernel)init
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

- (MPSUnaryImageKernel)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSUnaryImageKernel;
  result = [(MPSKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_offset.y = 0;
    result->_offset.z = 0;
    result->_offset.x = 0;
    v4 = *MEMORY[0x277CD7200];
    v5 = *(MEMORY[0x277CD7200] + 32);
    *&result->_clipRect.origin.z = *(MEMORY[0x277CD7200] + 16);
    *&result->_clipRect.size.height = v5;
    *&result->_clipRect.origin.x = v4;
    result->_edgeMode = 0;
    result->_checkFlags = 513;
    result->_encode = 0;
    result->_encodeData = 0;
    result->_getPreferredTileSize = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSUnaryImageKernel;
  result = [(MPSKernel *)&v10 copyWithZone:zone device:device];
  if (result)
  {
    z = self->_offset.z;
    *(result + 88) = *&self->_offset.x;
    *(result + 13) = z;
    *(result + 20) = self->_edgeMode;
    v8 = *&self->_clipRect.origin.z;
    v7 = *&self->_clipRect.size.height;
    *(result + 7) = *&self->_clipRect.origin.x;
    *(result + 8) = v8;
    *(result + 9) = v7;
    *(result + 42) = self->_checkFlags;
    *(result + 22) = self->_encode;
    encodeData = self->_encodeData;
    if (encodeData == self)
    {
      encodeData = result;
    }

    *(result + 24) = encodeData;
  }

  return result;
}

- (id)debugDescription
{
  if (!dladdr(self->_encode, &v18))
  {
    v18.dli_sname = "<NULL>";
  }

  v3 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = MPSUnaryImageKernel;
  v4 = [(MPSKernel *)&v17 debugDescription];
  v9 = *&self->_offset.x;
  z = self->_offset.z;
  v11 = *&self->_clipRect.origin.x;
  v12 = *&self->_clipRect.origin.z;
  height = self->_clipRect.size.height;
  depth = self->_clipRect.size.depth;
  v15 = (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2];
  if (self->_edgeMode == 1)
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\toffset:        {%ld,%ld,%ld}\n\tclip:          origin{%lu,%lu,%lu} size{%lu,%lu,%lu}\n\tdevice:        %p\n\tedge mode:     %s\n\tEncode Proc:   %s", v6, v7, v8, v4, v9, z, v11, v12, height, depth, v15, "MPSImageEdgeModeClamp", v18.dli_sname);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\toffset:        {%ld,%ld,%ld}\n\tclip:          origin{%lu,%lu,%lu} size{%lu,%lu,%lu}\n\tdevice:        %p\n\tedge mode:     %s\n\tEncode Proc:   %s", v6, v7, v8, v4, v9, z, v11, v12, height, depth, v15, "MPSImageEdgeModeZero", v18.dli_sname);
  }
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
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
  *&retstr->origin.x = vcvtq_f64_s64(*&self->_offset.x);
  retstr->origin.z = self->_offset.z;
  *&retstr->size.width = vcvtq_f64_u64(*(&v11[1] + 8));
  retstr->size.depth = v11[2].u64[1];
  return result;
}

- (BOOL)encodeToCommandBuffer:(id)commandBuffer inPlaceTexture:(id *)texture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator
{
  v10 = *texture;
  v11 = *MEMORY[0x277CD7350];
  v12 = *(&self->super.super.isa + v11);
  v13 = objc_msgSend_pixelFormat(*texture, a2, commandBuffer, texture, copyAllocator, v5);
  PixelInfo = MPSDevice::GetPixelInfo(v12, v13, MPSImageFeatureChannelFormatNone);
  v15 = PixelInfo;
  v150[0] = PixelInfo;
  v148 = 0u;
  v149 = 0u;
  v147 = 0u;
  *v139 = objc_msgSend_width(v10, v16, v17, v18, v19, v20);
  *&v139[8] = objc_msgSend_height(v10, v21, v22, v23, v24, v25);
  *&v139[16] = 1;
  v26 = *&self->_clipRect.origin.z;
  *&v142.origin.x = *&self->_clipRect.origin.x;
  *&v142.origin.z = v26;
  *&v142.size.height = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v147, v139, &v142);
  v32 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v32) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v126 = objc_opt_class();
      v133 = NSStringFromClass(v126);
      MTLReportFailure();
    }

    if (!v10 && MTLReportFailureTypeEnabled())
    {
      v127 = objc_opt_class();
      v133 = NSStringFromClass(v127);
      MTLReportFailure();
    }

    v33 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v32) & ~*(&self->super.super.isa + v33)) != 0 && MTLReportFailureTypeEnabled())
    {
      v128 = objc_opt_class();
      v133 = NSStringFromClass(v128);
      v135 = *(&self->super.super.isa + v32) & ~*(&self->super.super.isa + v33);
      MTLReportFailure();
    }

    objc_msgSend_textureType(v10, v27, v28, v29, v30, v31, v133, v135);
    if (objc_msgSend_textureType(v10, v34, v35, v36, v37, v38) != 2 && MTLReportFailureTypeEnabled())
    {
      v133 = v10;
      MTLReportFailure();
    }

    v39 = v15 & 0x3FF;
    if (v148 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((~LODWORD(v150[0]) & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v133 = v10;
      v135 = v39;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40) == 0 && (v150[0] & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v133 = v10;
      v135 = v39;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 4) != 0 && (v150[0] & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v133 = v10;
      v135 = v39;
      MTLReportFailure();
    }
  }

  if ((v150[0] & 0x200000000000) == 0)
  {
    goto LABEL_20;
  }

  v40 = objc_alloc(MEMORY[0x277CD7210]);
  v49 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v40, v41, commandBuffer, 0, v42, v43);
  *v139 = v49;
  *&v139[8] = self;
  if ((*(&self->super.super.isa + v32) & 0x18) != 0)
  {
    v45 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v45 || (v50 = objc_opt_class(), v51 = NSStringFromClass(v50), objc_msgSend_setLabel_(self, v52, v51, v53, v54, v55), (v45 = v51) != 0))
    {
      objc_msgSend_setLabel_(v49, v44, v45, v46, v47, v48, v133, v135);
    }
  }

  if (!v149 || !*(&v148 + 1))
  {
    objc_msgSend_endEncoding(v49, v44, v45, v46, v47, v48, v133);

    return 1;
  }

  *&v142.origin.z = v147;
  *&v142.size.height = v148;
  v142.origin.x = v150;
  v142.origin.y = v150;
  v56 = *&self->_offset.x;
  v143 = v149;
  v144 = v56;
  z = self->_offset.z;
  v146 = 0;
  v57 = sub_23993C100(self, v49, commandBuffer, v10, v10, &v142);
  objc_msgSend_endEncoding(v49, v58, v59, v60, v61, v62);

  if (!v57)
  {
    return 1;
  }

LABEL_20:
  if (!copyAllocator)
  {
    return 0;
  }

  v63 = (*(copyAllocator + 2))(copyAllocator, self, commandBuffer, v10);
  if (!v63)
  {
    return 0;
  }

  v69 = v63;
  if ((*(&self->super.super.isa + v32) & 1) == 0)
  {
    if (v10 == v63 || (objc_msgSend_isEqual_(v10, v64, v63, v66, v67, v68), objc_msgSend_isEqual_(v10, v70, v69, v71, v72, v73)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v74 = objc_opt_class();
        v133 = NSStringFromClass(v74);
        MTLReportFailure();
      }
    }
  }

  v75 = *(&self->super.super.isa + v11);
  v76 = objc_msgSend_pixelFormat(v69, v64, v65, v66, v67, v68, v133);
  v77 = MPSDevice::GetPixelInfo(v75, v76, MPSImageFeatureChannelFormatNone);
  v141 = v77;
  v138.width = objc_msgSend_width(v69, v78, v79, v80, v81, v82);
  v138.height = objc_msgSend_height(v69, v83, v84, v85, v86, v87);
  v138.depth = 1;
  v88 = *&self->_clipRect.origin.z;
  *&v137.origin.x = *&self->_clipRect.origin.x;
  *&v137.origin.z = v88;
  *&v137.size.height = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(v139, &v138, &v137);
  v147 = *v139;
  v148 = *&v139[16];
  v149 = v140;
  v94 = *(&self->super.super.isa + v32);
  if ((v94 & 1) == 0)
  {
    v95 = *MEMORY[0x277CD7348];
    if ((v94 & ~*(&self->super.super.isa + v95)) != 0 && MTLReportFailureTypeEnabled())
    {
      v129 = objc_opt_class();
      v134 = NSStringFromClass(v129);
      v135 = *(&self->super.super.isa + v32) & ~*(&self->super.super.isa + v95);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(v69, v89, v90, v91, v92, v93);
      if (objc_msgSend_textureType(v69, v96, v97, v98, v99, v100) != 2)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v134 = v69;
          MTLReportFailure();
        }
      }
    }

    if ((~v77 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v134 = v69;
      v135 = v77 & 0x3FF;
      MTLReportFailure();
    }

    if ((v77 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v134 = v69;
      v135 = v77 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 2) == 0 && ((LODWORD(v150[0]) ^ v77) & 0xF0000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v130 = SLODWORD(v150[0]) >> 28;
      v131 = objc_opt_class();
      v135 = v77 >> 28;
      v136 = NSStringFromClass(v131);
      v134 = v130;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40000) == 0 && self->_edgeMode >= 2 && MTLReportFailureTypeEnabled())
    {
      v132 = objc_opt_class();
      v134 = NSStringFromClass(v132);
      MTLReportFailure();
    }
  }

  *&v142.origin.z = v147;
  *&v142.size.height = v148;
  v142.origin.x = v150;
  v142.origin.y = &v141;
  v101 = *&self->_offset.x;
  v143 = v149;
  v144 = v101;
  z = self->_offset.z;
  v146 = 0;
  v102 = objc_alloc(MEMORY[0x277CD7210]);
  v110 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v102, v103, commandBuffer, 0, v104, v105);
  *v139 = v110;
  *&v139[8] = self;
  if ((*(&self->super.super.isa + v32) & 0x18) != 0)
  {
    v111 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v111 || (v112 = objc_opt_class(), v113 = NSStringFromClass(v112), objc_msgSend_setLabel_(self, v114, v113, v115, v116, v117), (v111 = v113) != 0))
    {
      objc_msgSend_setLabel_(v110, v106, v111, v107, v108, v109, v134, v135, v136);
    }
  }

  v118 = sub_23993C100(self, v110, commandBuffer, v10, v69, &v142);
  v119 = v118 == 0;
  if (v118)
  {
  }

  else
  {

    *texture = v69;
  }

  objc_msgSend_endEncoding(v110, v120, v121, v122, v123, v124, v134);

  return v119;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sources:(id)sources destination:(id)destination kernelDAGObject:(id)object
{
  v7 = ***(objc_msgSend_graph(object, a2, encoder, buffer, sources, destination) + 56);
  v8 = **(v7 + 8);
  if (*(*(v7 + 8) + 8) != v8)
  {
    v9 = *(*v8 + 16);
    v11 = *v9;
    v10 = v9[1];
    if (v10 != v11)
    {
      if (((v10 - v11) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_239955CF4();
    }

    v12 = **(v7 + 24);
    if (*(*(v7 + 24) + 8) == v12)
    {
      sub_239955C4C();
    }

    if ((*(*(*v12 + 16) + 8) - **(*v12 + 16)) >= 0)
    {
      operator new();
    }

    sub_239955CF4();
  }

  sub_239955C4C();
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture
{
  encoderCopy = encoder;
  memset(v301, 0, sizeof(v301));
  v302.width = objc_msgSend_width(destinationTexture, a2, encoder, buffer, texture, destinationTexture);
  v302.height = objc_msgSend_height(destinationTexture, v11, v12, v13, v14, v15);
  v302.depth = objc_msgSend_arrayLength(destinationTexture, v16, v17, v18, v19, v20);
  v21 = *&self->_clipRect.origin.z;
  *v294 = *&self->_clipRect.origin.x;
  *&v294[16] = v21;
  *&v294[32] = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(v301, &v302, v294);
  v22 = *MEMORY[0x277CD7350];
  v23 = *(&self->super.super.isa + v22);
  v29 = objc_msgSend_pixelFormat(texture, v24, v25, v26, v27, v28);
  PixelInfo = MPSDevice::GetPixelInfo(v23, v29, MPSImageFeatureChannelFormatNone);
  v31 = PixelInfo;
  v300 = PixelInfo;
  v32 = *(&self->super.super.isa + v22);
  v38 = objc_msgSend_pixelFormat(destinationTexture, v33, v34, v35, v36, v37);
  v39 = MPSDevice::GetPixelInfo(v32, v38, MPSImageFeatureChannelFormatNone);
  v299 = v39;
  v45 = *MEMORY[0x277CD7378];
  v293 = encoderCopy;
  if (*(&self->super.super.isa + v45))
  {
    goto LABEL_45;
  }

  v46 = v39;
  if (!buffer && MTLReportFailureTypeEnabled())
  {
    v272 = objc_opt_class();
    v287 = NSStringFromClass(v272);
    MTLReportFailure();
  }

  if (!texture && MTLReportFailureTypeEnabled())
  {
    v273 = objc_opt_class();
    v287 = NSStringFromClass(v273);
    MTLReportFailure();
  }

  if (!destinationTexture && MTLReportFailureTypeEnabled())
  {
    v274 = objc_opt_class();
    v287 = NSStringFromClass(v274);
    MTLReportFailure();
  }

  v47 = *MEMORY[0x277CD7348];
  if ((*(&self->super.super.isa + v45) & ~*(&self->super.super.isa + v47)) != 0 && MTLReportFailureTypeEnabled())
  {
    v275 = objc_opt_class();
    v287 = NSStringFromClass(v275);
    v289 = *(&self->super.super.isa + v45) & ~*(&self->super.super.isa + v47);
    MTLReportFailure();
  }

  v48 = (v31 & 0x3FF);
  checkFlags = self->_checkFlags;
  objc_msgSend_textureType(texture, v40, v41, v42, v43, v44, v287, v289);
  if ((checkFlags & 0x200) != 0)
  {
    objc_msgSend_textureType(destinationTexture, v50, v51, v52, v53, v54);
    v64 = objc_msgSend_textureType(texture, v59, v60, v61, v62, v63);
    if (v64 != objc_msgSend_textureType(destinationTexture, v65, v66, v67, v68, v69) && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy5 = destinationTexture;
      textureCopy = texture;
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(texture, v70, v71, v72, v73, v74, destinationTextureCopy5, textureCopy);
    objc_msgSend_arrayLength(destinationTexture, v75, v76, v77, v78, v79);
    v85 = objc_msgSend_arrayLength(texture, v80, v81, v82, v83, v84);
    if (v85 != objc_msgSend_arrayLength(destinationTexture, v86, v87, v88, v89, v90) && MTLReportFailureTypeEnabled())
    {
      v277 = objc_msgSend_arrayLength(destinationTexture, v55, v276, v56, v57, v58);
      textureCopy2 = texture;
      v292 = objc_msgSend_arrayLength(texture, v278, v279, v280, v281, v282);
      destinationTextureCopy5 = destinationTexture;
      textureCopy = v277;
      goto LABEL_120;
    }
  }

  else if (objc_msgSend_textureType(texture, v50, v51, v52, v53, v54) != 2 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = texture;
LABEL_120:
    MTLReportFailure();
  }

  if ((~v300 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = texture;
    textureCopy = v48;
    MTLReportFailure();
  }

  if ((self->_checkFlags & 0x40) == 0 && (v300 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = texture;
    textureCopy = v48;
    MTLReportFailure();
  }

  if ((self->_checkFlags & 4) != 0 && (v300 & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = texture;
    textureCopy = v48;
    MTLReportFailure();
  }

  if (*&v301[1] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((~v299 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = destinationTexture;
    textureCopy = (v46 & 0x3FF);
    MTLReportFailure();
  }

  if ((v299 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = destinationTexture;
    textureCopy = (v46 & 0x3FF);
    MTLReportFailure();
  }

  if ((self->_checkFlags & 0x100) == 0 && (v299 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = destinationTexture;
    textureCopy = (v46 & 0x3FF);
    MTLReportFailure();
  }

  if ((self->_checkFlags & 2) == 0 && ((v300 ^ v299) & 0xF0000000) != 0 && MTLReportFailureTypeEnabled())
  {
    v283 = v300 >> 28;
    v284 = v299 >> 28;
    v285 = objc_opt_class();
    textureCopy = v284;
    textureCopy2 = NSStringFromClass(v285);
    destinationTextureCopy5 = v283;
    MTLReportFailure();
  }

  if (texture == destinationTexture || (objc_msgSend_isEqual_(texture, v55, destinationTexture, v56, v57, v58), objc_msgSend_isEqual_(texture, v91, destinationTexture, v92, v93, v94)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      v100 = objc_opt_class();
      destinationTextureCopy5 = NSStringFromClass(v100);
      MTLReportFailure();
    }
  }

  if ((self->_checkFlags & 0x40000) == 0 && self->_edgeMode >= 2 && MTLReportFailureTypeEnabled())
  {
    v286 = objc_opt_class();
    destinationTextureCopy5 = NSStringFromClass(v286);
    MTLReportFailure();
  }

  if (objc_msgSend_textureType(texture, v95, v96, v97, v98, v99, destinationTextureCopy5, textureCopy, textureCopy2, v292) == 2)
  {
    if (self->_offset.z && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(&v301[2] + 1) != 1 && MTLReportFailureTypeEnabled())
    {
LABEL_134:
      MTLReportFailure();
    }
  }

  else
  {
    objc_msgSend_arrayLength(texture, v101, v102, v103, v104, v105);
    z = self->_offset.z;
    if ((z >= objc_msgSend_arrayLength(texture, v107, v108, v109, v110, v111) || self->_offset.z < 0) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(texture, v112, v113, v114, v115, v116);
    v117 = *(&v301[2] + 1) + self->_offset.z;
    if (v117 > objc_msgSend_arrayLength(texture, v118, v119, v120, v121, v122) && MTLReportFailureTypeEnabled())
    {
      goto LABEL_134;
    }
  }

  if (objc_msgSend_textureType(destinationTexture, v101, v102, v103, v104, v105) == 2)
  {
    if (*&v301[1] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(&v301[2] + 1) != 1 && MTLReportFailureTypeEnabled())
    {
LABEL_140:
      MTLReportFailure();
    }
  }

  else
  {
    objc_msgSend_arrayLength(destinationTexture, v40, v41, v42, v43, v44);
    v123 = *&v301[1];
    if (v123 >= objc_msgSend_arrayLength(destinationTexture, v124, v125, v126, v127, v128) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(destinationTexture, v129, v130, v131, v132, v133);
    v134 = *(&v301[2] + 1) + *&v301[1];
    if (v134 > objc_msgSend_arrayLength(destinationTexture, v135, v136, v137, v138, v139) && MTLReportFailureTypeEnabled())
    {
      goto LABEL_140;
    }
  }

LABEL_45:
  if (*&v301[2] && *(&v301[1] + 1))
  {
    *v294 = &v300;
    *&v294[8] = &v299;
    *&v294[16] = v301[0];
    *&v294[32] = 0;
    *&v294[40] = *(&v301[1] + 8);
    v295 = 1;
    v296 = *&self->_offset.x;
    v297 = 0;
    v298 = 0;
    if (encoderCopy)
    {
      if (*(&v301[2] + 1))
      {
        v140 = 0;
        textureCopy7 = texture;
        destinationTextureCopy6 = destinationTexture;
        do
        {
          if (objc_msgSend_textureType(texture, v40, v41, v42, v43, v44) == 3)
          {
            v148 = objc_msgSend_pixelFormat(texture, v143, v144, v145, v146, v147);
            textureCopy7 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(textureCopy7, v149, v148, 2, 0, 1, v140 + self->_offset.z, 1);
          }

          if (objc_msgSend_textureType(destinationTexture, v143, v144, v145, v146, v147) == 3)
          {
            v155 = objc_msgSend_pixelFormat(destinationTexture, v150, v151, v152, v153, v154);
            destinationTextureCopy6 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(destinationTextureCopy6, v156, v155, 2, 0, 1, v140 + *&v301[1], 1);
          }

          sub_23993C100(self, encoderCopy, buffer, textureCopy7, destinationTextureCopy6, v294);
          if ((objc_msgSend_retainedReferences(buffer, v157, v158, v159, v160, v161) & 1) == 0)
          {
            if (textureCopy7 != texture && textureCopy7)
            {
              v162 = objc_msgSend_userDictionary(buffer, v40, v41, v42, v43, v44);
              v167 = objc_msgSend_objectForKey_(v162, v163, @"_MPSCommandBufferRetainListKey", v164, v165, v166);
              if (!v167)
              {
                v172 = objc_alloc_init(MEMORY[0x277CBEB18]);
                objc_msgSend_setObject_forKey_(v162, v173, v172, @"_MPSCommandBufferRetainListKey", v174, v175);

                v302.width = MEMORY[0x277D85DD0];
                v302.height = 3221225472;
                v302.depth = sub_23993D9F0;
                v303 = &unk_278AC37A8;
                v304 = @"_MPSCommandBufferRetainListKey";
                objc_msgSend_addCompletedHandler_(buffer, v176, &v302, v177, v178, v179);
                v167 = v172;
                encoderCopy = v293;
              }

              objc_msgSend_addObject_(v167, v168, textureCopy7, v169, v170, v171);
            }

            if (destinationTextureCopy6 != destinationTexture && destinationTextureCopy6)
            {
              v180 = objc_msgSend_userDictionary(buffer, v40, v41, v42, v43, v44);
              v185 = objc_msgSend_objectForKey_(v180, v181, @"_MPSCommandBufferRetainListKey", v182, v183, v184);
              if (!v185)
              {
                v190 = objc_alloc_init(MEMORY[0x277CBEB18]);
                objc_msgSend_setObject_forKey_(v180, v191, v190, @"_MPSCommandBufferRetainListKey", v192, v193);

                v302.width = MEMORY[0x277D85DD0];
                v302.height = 3221225472;
                v302.depth = sub_23993D9F0;
                v303 = &unk_278AC37A8;
                v304 = @"_MPSCommandBufferRetainListKey";
                objc_msgSend_addCompletedHandler_(buffer, v194, &v302, v195, v196, v197);
                v185 = v190;
                encoderCopy = v293;
              }

              objc_msgSend_addObject_(v185, v186, destinationTextureCopy6, v187, v188, v189);
            }
          }

          if (textureCopy7 != texture)
          {
          }

          if (destinationTextureCopy6 != destinationTexture)
          {
          }

          ++v140;
        }

        while (v140 < *(&v301[2] + 1));
      }
    }

    else
    {
      v198 = objc_alloc(MEMORY[0x277CD7210]);
      v207 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v198, v199, buffer, 0, v200, v201);
      if ((*(&self->super.super.isa + v45) & 0x18) != 0)
      {
        v203 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
        if (v203 || (v208 = objc_opt_class(), v209 = NSStringFromClass(v208), objc_msgSend_setLabel_(self, v210, v209, v211, v212, v213), (v203 = v209) != 0))
        {
          objc_msgSend_setLabel_(v207, v202, v203, v204, v205, v206);
        }
      }

      if (*(&v301[2] + 1))
      {
        v214 = 0;
        textureCopy8 = texture;
        destinationTextureCopy7 = destinationTexture;
        do
        {
          if (objc_msgSend_textureType(texture, v202, v203, v204, v205, v206) == 3)
          {
            v222 = objc_msgSend_pixelFormat(texture, v217, v218, v219, v220, v221);
            textureCopy8 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(texture, v223, v222, 2, 0, 1, v214 + self->_offset.z, 1);
          }

          if (objc_msgSend_textureType(destinationTexture, v217, v218, v219, v220, v221) == 3)
          {
            v229 = objc_msgSend_pixelFormat(destinationTexture, v224, v225, v226, v227, v228);
            destinationTextureCopy7 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(destinationTexture, v230, v229, 2, 0, 1, v214 + *&v301[1], 1);
          }

          sub_23993C100(self, v207, buffer, textureCopy8, destinationTextureCopy7, v294);
          if ((objc_msgSend_retainedReferences(buffer, v231, v232, v233, v234, v235) & 1) == 0)
          {
            if (textureCopy8 != texture && textureCopy8)
            {
              v236 = objc_msgSend_userDictionary(buffer, v202, v203, v204, v205, v206);
              v241 = objc_msgSend_objectForKey_(v236, v237, @"_MPSCommandBufferRetainListKey", v238, v239, v240);
              if (!v241)
              {
                v246 = objc_alloc_init(MEMORY[0x277CBEB18]);
                objc_msgSend_setObject_forKey_(v236, v247, v246, @"_MPSCommandBufferRetainListKey", v248, v249);

                v302.width = MEMORY[0x277D85DD0];
                v302.height = 3221225472;
                v302.depth = sub_23993D9F0;
                v303 = &unk_278AC37A8;
                v304 = @"_MPSCommandBufferRetainListKey";
                objc_msgSend_addCompletedHandler_(buffer, v250, &v302, v251, v252, v253);
                v241 = v246;
              }

              objc_msgSend_addObject_(v241, v242, textureCopy8, v243, v244, v245);
            }

            if (destinationTextureCopy7 != destinationTexture && destinationTextureCopy7)
            {
              v254 = objc_msgSend_userDictionary(buffer, v202, v203, v204, v205, v206);
              v259 = objc_msgSend_objectForKey_(v254, v255, @"_MPSCommandBufferRetainListKey", v256, v257, v258);
              if (!v259)
              {
                v264 = objc_alloc_init(MEMORY[0x277CBEB18]);
                objc_msgSend_setObject_forKey_(v254, v265, v264, @"_MPSCommandBufferRetainListKey", v266, v267);

                v302.width = MEMORY[0x277D85DD0];
                v302.height = 3221225472;
                v302.depth = sub_23993D9F0;
                v303 = &unk_278AC37A8;
                v304 = @"_MPSCommandBufferRetainListKey";
                objc_msgSend_addCompletedHandler_(buffer, v268, &v302, v269, v270, v271);
                v259 = v264;
              }

              objc_msgSend_addObject_(v259, v260, destinationTextureCopy7, v261, v262, v263);
            }
          }

          if (textureCopy8 != texture)
          {
          }

          if (destinationTextureCopy7 != destinationTexture)
          {
          }

          ++v214;
        }

        while (v214 < *(&v301[2] + 1));
      }

      objc_msgSend_endEncoding(v207, v202, v203, v204, v205, v206);
    }
  }
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image destinationImage:(id)destinationImage
{
  v8 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v8) & 1) == 0)
  {
    if (!buffer)
    {
      selfCopy = self;
      encoderCopy = encoder;
      v27 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy;
      buffer = 0;
      v28 = v27;
      self = selfCopy;
      if (v28)
      {
        v29 = objc_opt_class();
        v109 = NSStringFromClass(v29);
        MTLReportFailure();
        self = selfCopy;
        encoder = encoderCopy;
        buffer = 0;
      }
    }

    if (!image)
    {
      selfCopy2 = self;
      bufferCopy = buffer;
      encoderCopy2 = encoder;
      v33 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy2;
      buffer = bufferCopy;
      v34 = v33;
      self = selfCopy2;
      if (v34)
      {
        v35 = objc_opt_class();
        v109 = NSStringFromClass(v35);
        MTLReportFailure();
        self = selfCopy2;
        encoder = encoderCopy2;
        buffer = bufferCopy;
      }
    }

    if (!destinationImage)
    {
      selfCopy3 = self;
      bufferCopy2 = buffer;
      encoderCopy3 = encoder;
      v39 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy3;
      buffer = bufferCopy2;
      v40 = v39;
      self = selfCopy3;
      if (v40)
      {
        v41 = objc_opt_class();
        v109 = NSStringFromClass(v41);
        MTLReportFailure();
        self = selfCopy3;
        encoder = encoderCopy3;
        buffer = bufferCopy2;
      }
    }

    v9 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v8) & ~*(&self->super.super.isa + v9)) != 0)
    {
      selfCopy4 = self;
      bufferCopy3 = buffer;
      encoderCopy4 = encoder;
      v45 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy4;
      buffer = bufferCopy3;
      v46 = v45;
      self = selfCopy4;
      if (v46)
      {
        v47 = objc_opt_class();
        v109 = NSStringFromClass(v47);
        destinationImageCopy2 = *(&selfCopy4->super.super.isa + v8) & ~*(&selfCopy4->super.super.isa + v9);
        MTLReportFailure();
        self = selfCopy4;
        encoder = encoderCopy4;
        buffer = bufferCopy3;
      }
    }

    if ((self->_checkFlags & 0x800) == 0)
    {
      v10 = MEMORY[0x277CD72F8];
      if (*(image + *MEMORY[0x277CD72F8]) >= 5uLL)
      {
        selfCopy5 = self;
        bufferCopy4 = buffer;
        encoderCopy5 = encoder;
        v63 = MTLReportFailureTypeEnabled();
        encoder = encoderCopy5;
        buffer = bufferCopy4;
        v64 = v63;
        self = selfCopy5;
        if (v64)
        {
          v65 = objc_opt_class();
          v109 = NSStringFromClass(v65);
          destinationImageCopy2 = image;
          MTLReportFailure();
          self = selfCopy5;
          encoder = encoderCopy5;
          buffer = bufferCopy4;
        }
      }

      if (*(destinationImage + *v10) >= 5uLL)
      {
        selfCopy6 = self;
        bufferCopy5 = buffer;
        encoderCopy6 = encoder;
        v69 = MTLReportFailureTypeEnabled();
        encoder = encoderCopy6;
        buffer = bufferCopy5;
        v70 = v69;
        self = selfCopy6;
        if (v70)
        {
          v71 = objc_opt_class();
          v109 = NSStringFromClass(v71);
          destinationImageCopy2 = destinationImage;
          MTLReportFailure();
          self = selfCopy6;
          encoder = encoderCopy6;
          buffer = bufferCopy5;
        }
      }
    }

    v11 = MEMORY[0x277CD72F0];
    if (*(image + *MEMORY[0x277CD72F0]) == 5)
    {
      selfCopy7 = self;
      bufferCopy6 = buffer;
      encoderCopy7 = encoder;
      v51 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy7;
      buffer = bufferCopy6;
      v52 = v51;
      self = selfCopy7;
      if (v52)
      {
        v53 = objc_opt_class();
        v109 = NSStringFromClass(v53);
        MTLReportFailure();
        self = selfCopy7;
        encoder = encoderCopy7;
        buffer = bufferCopy6;
      }
    }

    if (*(destinationImage + *v11) == 5)
    {
      selfCopy8 = self;
      bufferCopy7 = buffer;
      encoderCopy8 = encoder;
      v57 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy8;
      buffer = bufferCopy7;
      v58 = v57;
      self = selfCopy8;
      if (v58)
      {
        v59 = objc_opt_class();
        v109 = NSStringFromClass(v59);
        MTLReportFailure();
        self = selfCopy8;
        encoder = encoderCopy8;
        buffer = bufferCopy7;
      }
    }
  }

  if (image && destinationImage)
  {
    v12 = *MEMORY[0x277CD7320];
    v13 = (image + v12);
    v14 = (destinationImage + v12);
    v15 = *(image + v12 + 56);
    if ((*(&self->super.super.isa + v8) & 1) == 0)
    {
      v16 = MEMORY[0x277CD7490];
      if ((*(image + v12 + 56) & 1) != 0 && !*(image + *MEMORY[0x277CD7490]))
      {
        selfCopy9 = self;
        bufferCopy8 = buffer;
        encoderCopy9 = encoder;
        v100 = MTLReportFailureTypeEnabled();
        v16 = MEMORY[0x277CD7490];
        encoder = encoderCopy9;
        buffer = bufferCopy8;
        v101 = v100;
        self = selfCopy9;
        if (v101)
        {
          v102 = objc_opt_class();
          v109 = NSStringFromClass(v102);
          destinationImageCopy2 = image;
          MTLReportFailure();
          v16 = MEMORY[0x277CD7490];
          self = selfCopy9;
          encoder = encoderCopy9;
          buffer = bufferCopy8;
        }
      }

      if ((v14[7] & 1) != 0 && !*(destinationImage + *v16))
      {
        selfCopy10 = self;
        bufferCopy9 = buffer;
        encoderCopy10 = encoder;
        v106 = MTLReportFailureTypeEnabled();
        encoder = encoderCopy10;
        buffer = bufferCopy9;
        v107 = v106;
        self = selfCopy10;
        if (v107)
        {
          v108 = objc_opt_class();
          v109 = NSStringFromClass(v108);
          destinationImageCopy2 = destinationImage;
          MTLReportFailure();
          self = selfCopy10;
          encoder = encoderCopy10;
          buffer = bufferCopy9;
        }
      }
    }

    explicit = atomic_load_explicit(v13, memory_order_acquire);
    if (explicit)
    {
      v18 = atomic_load_explicit(v14, memory_order_acquire);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      selfCopy11 = self;
      bufferCopy10 = buffer;
      encoderCopy11 = encoder;
      MPSAutoTexture::AllocateTexture(v13, 0);
      self = selfCopy11;
      encoder = encoderCopy11;
      buffer = bufferCopy10;
      explicit = atomic_load_explicit(v13, memory_order_acquire);
      v18 = atomic_load_explicit(v14, memory_order_acquire);
      if (v18)
      {
LABEL_20:
        if (*(&self->super.super.isa + v8))
        {
          goto LABEL_26;
        }

LABEL_24:
        if (!explicit)
        {
          selfCopy12 = self;
          bufferCopy11 = buffer;
          encoderCopy12 = encoder;
          v75 = v18;
          v76 = MTLReportFailureTypeEnabled();
          v18 = v75;
          encoder = encoderCopy12;
          buffer = bufferCopy11;
          v77 = v76;
          self = selfCopy12;
          if (v77)
          {
            v78 = objc_opt_class();
            v109 = NSStringFromClass(v78);
            destinationImageCopy2 = objc_msgSend_debugDescription(image, v79, v80, v81, v82, v83);
            MTLReportFailure();
            v18 = v75;
            self = selfCopy12;
            encoder = encoderCopy12;
            buffer = bufferCopy11;
          }
        }

        if (!v18)
        {
          selfCopy13 = self;
          bufferCopy12 = buffer;
          encoderCopy13 = encoder;
          v87 = MTLReportFailureTypeEnabled();
          v18 = 0;
          encoder = encoderCopy13;
          buffer = bufferCopy12;
          v88 = v87;
          self = selfCopy13;
          if (v88)
          {
            v89 = objc_opt_class();
            v90 = NSStringFromClass(v89);
            v111 = objc_msgSend_debugDescription(destinationImage, v91, v92, v93, v94, v95);
            MTLReportFailure();
            objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceTexture_destinationTexture_(selfCopy13, v96, encoderCopy13, bufferCopy12, explicit, 0, v90, v111);
LABEL_27:
            if (v15)
            {

              MPSDecrementReadCount(image);
            }

            return;
          }
        }

LABEL_26:
        objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceTexture_destinationTexture_(self, a2, encoder, buffer, explicit, v18, v109, destinationImageCopy2);
        goto LABEL_27;
      }
    }

    selfCopy14 = self;
    bufferCopy13 = buffer;
    encoderCopy14 = encoder;
    MPSAutoTexture::AllocateTexture(v14, 0);
    self = selfCopy14;
    encoder = encoderCopy14;
    buffer = bufferCopy13;
    v18 = atomic_load_explicit(v14, memory_order_acquire);
    if (*(&selfCopy14->super.super.isa + v8))
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v35.receiver = self;
  v35.super_class = MPSUnaryImageKernel;
  [(MPSKernel *)&v35 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_offset.x, @"MPSImageUnaryKernel.offset.x", v6, v7);
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_offset.y, @"MPSImageUnaryKernel.offset.y", v9, v10);
  objc_msgSend_encodeInt64_forKey_(coder, v11, self->_offset.z, @"MPSImageUnaryKernel.offset.z", v12, v13);
  objc_msgSend_encodeInt64_forKey_(coder, v14, self->_clipRect.origin.x, @"MPSImageUnaryKernel.clipRect.origin.x", v15, v16);
  objc_msgSend_encodeInt64_forKey_(coder, v17, self->_clipRect.origin.y, @"MPSImageUnaryKernel.clipRect.origin.y", v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_clipRect.origin.z, @"MPSImageUnaryKernel.clipRect.origin.z", v21, v22);
  objc_msgSend_encodeInt64_forKey_(coder, v23, self->_clipRect.size.width, @"MPSImageUnaryKernel.clipRect.size.width", v24, v25);
  objc_msgSend_encodeInt64_forKey_(coder, v26, self->_clipRect.size.height, @"MPSImageUnaryKernel.clipRect.size.height", v27, v28);
  objc_msgSend_encodeInt64_forKey_(coder, v29, self->_clipRect.size.depth, @"MPSImageUnaryKernel.clipRect.size.depth", v30, v31);
  objc_msgSend_encodeInt64_forKey_(coder, v32, self->_edgeMode, @"MPSImageUnaryKernel.edgeMode", v33, v34);
}

- (MPSUnaryImageKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v49.receiver = self;
  v49.super_class = MPSUnaryImageKernel;
  v5 = [(MPSKernel *)&v49 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 1) << 8 == 256)
  {
    v5->_offset.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageUnaryKernel.offset.x", v7, v8, v9);
    v10->_offset.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSImageUnaryKernel.offset.y", v12, v13, v14);
    v10->_offset.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v15, @"MPSImageUnaryKernel.offset.z", v16, v17, v18);
    v10->_clipRect.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSImageUnaryKernel.clipRect.origin.x", v20, v21, v22);
    v10->_clipRect.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v23, @"MPSImageUnaryKernel.clipRect.origin.y", v24, v25, v26);
    v10->_clipRect.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v27, @"MPSImageUnaryKernel.clipRect.origin.z", v28, v29, v30);
    v10->_clipRect.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v31, @"MPSImageUnaryKernel.clipRect.size.width", v32, v33, v34);
    v10->_clipRect.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v35, @"MPSImageUnaryKernel.clipRect.size.height", v36, v37, v38);
    v10->_clipRect.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v39, @"MPSImageUnaryKernel.clipRect.size.depth", v40, v41, v42);
    v10->_edgeMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v43, @"MPSImageUnaryKernel.edgeMode", v44, v45, v46);
    v10->_checkFlags = 513;
    v10->_encode = 0;
    v10->_encodeData = 0;
    v10->_getPreferredTileSize = 0;
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v48 = objc_opt_class();
    NSStringFromClass(v48);
    MTLReportFailure();
  }

  return 0;
}

- (void)setOffset:(MPSOffset *)offset
{
  z = offset->z;
  *&self->_offset.x = *&offset->x;
  self->_offset.z = z;
}

- (MTLRegion)clipRect
{
  v3 = *&self[2].size.height;
  *&retstr->origin.x = *&self[2].origin.z;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[3].origin.x;
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