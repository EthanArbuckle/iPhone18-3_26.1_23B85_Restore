@interface MPSUnaryImageKernel
- (BOOL)encodeToCommandBuffer:(id)commandBuffer inPlaceTexture:(id *)texture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)a3;
- (MPSUnaryImageKernel)init;
- (MPSUnaryImageKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSUnaryImageKernel)initWithDevice:(id)device;
- (MTLRegion)clipRect;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImage:(id)a5 destinationImage:(id)a6;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceTexture:(id)a5 destinationTexture:(id)a6;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sources:(id)a5 destination:(id)a6 kernelDAGObject:(id)a7;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v10.receiver = self;
  v10.super_class = MPSUnaryImageKernel;
  result = [(MPSKernel *)&v10 copyWithZone:a3 device:a4];
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

- (MPSRegion)sourceRegionForDestinationSize:(SEL)a3
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

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sources:(id)a5 destination:(id)a6 kernelDAGObject:(id)a7
{
  v7 = ***(objc_msgSend_graph(a7, a2, a3, a4, a5, a6) + 56);
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

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceTexture:(id)a5 destinationTexture:(id)a6
{
  v9 = a3;
  memset(v301, 0, sizeof(v301));
  v302.width = objc_msgSend_width(a6, a2, a3, a4, a5, a6);
  v302.height = objc_msgSend_height(a6, v11, v12, v13, v14, v15);
  v302.depth = objc_msgSend_arrayLength(a6, v16, v17, v18, v19, v20);
  v21 = *&self->_clipRect.origin.z;
  *v294 = *&self->_clipRect.origin.x;
  *&v294[16] = v21;
  *&v294[32] = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(v301, &v302, v294);
  v22 = *MEMORY[0x277CD7350];
  v23 = *(&self->super.super.isa + v22);
  v29 = objc_msgSend_pixelFormat(a5, v24, v25, v26, v27, v28);
  PixelInfo = MPSDevice::GetPixelInfo(v23, v29, MPSImageFeatureChannelFormatNone);
  v31 = PixelInfo;
  v300 = PixelInfo;
  v32 = *(&self->super.super.isa + v22);
  v38 = objc_msgSend_pixelFormat(a6, v33, v34, v35, v36, v37);
  v39 = MPSDevice::GetPixelInfo(v32, v38, MPSImageFeatureChannelFormatNone);
  v299 = v39;
  v45 = *MEMORY[0x277CD7378];
  v293 = v9;
  if (*(&self->super.super.isa + v45))
  {
    goto LABEL_45;
  }

  v46 = v39;
  if (!a4 && MTLReportFailureTypeEnabled())
  {
    v272 = objc_opt_class();
    v287 = NSStringFromClass(v272);
    MTLReportFailure();
  }

  if (!a5 && MTLReportFailureTypeEnabled())
  {
    v273 = objc_opt_class();
    v287 = NSStringFromClass(v273);
    MTLReportFailure();
  }

  if (!a6 && MTLReportFailureTypeEnabled())
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
  objc_msgSend_textureType(a5, v40, v41, v42, v43, v44, v287, v289);
  if ((checkFlags & 0x200) != 0)
  {
    objc_msgSend_textureType(a6, v50, v51, v52, v53, v54);
    v64 = objc_msgSend_textureType(a5, v59, v60, v61, v62, v63);
    if (v64 != objc_msgSend_textureType(a6, v65, v66, v67, v68, v69) && MTLReportFailureTypeEnabled())
    {
      v288 = a6;
      v290 = a5;
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(a5, v70, v71, v72, v73, v74, v288, v290);
    objc_msgSend_arrayLength(a6, v75, v76, v77, v78, v79);
    v85 = objc_msgSend_arrayLength(a5, v80, v81, v82, v83, v84);
    if (v85 != objc_msgSend_arrayLength(a6, v86, v87, v88, v89, v90) && MTLReportFailureTypeEnabled())
    {
      v277 = objc_msgSend_arrayLength(a6, v55, v276, v56, v57, v58);
      v291 = a5;
      v292 = objc_msgSend_arrayLength(a5, v278, v279, v280, v281, v282);
      v288 = a6;
      v290 = v277;
      goto LABEL_120;
    }
  }

  else if (objc_msgSend_textureType(a5, v50, v51, v52, v53, v54) != 2 && MTLReportFailureTypeEnabled())
  {
    v288 = a5;
LABEL_120:
    MTLReportFailure();
  }

  if ((~v300 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
  {
    v288 = a5;
    v290 = v48;
    MTLReportFailure();
  }

  if ((self->_checkFlags & 0x40) == 0 && (v300 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
  {
    v288 = a5;
    v290 = v48;
    MTLReportFailure();
  }

  if ((self->_checkFlags & 4) != 0 && (v300 & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
  {
    v288 = a5;
    v290 = v48;
    MTLReportFailure();
  }

  if (*&v301[1] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((~v299 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
  {
    v288 = a6;
    v290 = (v46 & 0x3FF);
    MTLReportFailure();
  }

  if ((v299 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
  {
    v288 = a6;
    v290 = (v46 & 0x3FF);
    MTLReportFailure();
  }

  if ((self->_checkFlags & 0x100) == 0 && (v299 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
  {
    v288 = a6;
    v290 = (v46 & 0x3FF);
    MTLReportFailure();
  }

  if ((self->_checkFlags & 2) == 0 && ((v300 ^ v299) & 0xF0000000) != 0 && MTLReportFailureTypeEnabled())
  {
    v283 = v300 >> 28;
    v284 = v299 >> 28;
    v285 = objc_opt_class();
    v290 = v284;
    v291 = NSStringFromClass(v285);
    v288 = v283;
    MTLReportFailure();
  }

  if (a5 == a6 || (objc_msgSend_isEqual_(a5, v55, a6, v56, v57, v58), objc_msgSend_isEqual_(a5, v91, a6, v92, v93, v94)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      v100 = objc_opt_class();
      v288 = NSStringFromClass(v100);
      MTLReportFailure();
    }
  }

  if ((self->_checkFlags & 0x40000) == 0 && self->_edgeMode >= 2 && MTLReportFailureTypeEnabled())
  {
    v286 = objc_opt_class();
    v288 = NSStringFromClass(v286);
    MTLReportFailure();
  }

  if (objc_msgSend_textureType(a5, v95, v96, v97, v98, v99, v288, v290, v291, v292) == 2)
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
    objc_msgSend_arrayLength(a5, v101, v102, v103, v104, v105);
    z = self->_offset.z;
    if ((z >= objc_msgSend_arrayLength(a5, v107, v108, v109, v110, v111) || self->_offset.z < 0) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(a5, v112, v113, v114, v115, v116);
    v117 = *(&v301[2] + 1) + self->_offset.z;
    if (v117 > objc_msgSend_arrayLength(a5, v118, v119, v120, v121, v122) && MTLReportFailureTypeEnabled())
    {
      goto LABEL_134;
    }
  }

  if (objc_msgSend_textureType(a6, v101, v102, v103, v104, v105) == 2)
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
    objc_msgSend_arrayLength(a6, v40, v41, v42, v43, v44);
    v123 = *&v301[1];
    if (v123 >= objc_msgSend_arrayLength(a6, v124, v125, v126, v127, v128) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(a6, v129, v130, v131, v132, v133);
    v134 = *(&v301[2] + 1) + *&v301[1];
    if (v134 > objc_msgSend_arrayLength(a6, v135, v136, v137, v138, v139) && MTLReportFailureTypeEnabled())
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
    if (v9)
    {
      if (*(&v301[2] + 1))
      {
        v140 = 0;
        v141 = a5;
        v142 = a6;
        do
        {
          if (objc_msgSend_textureType(a5, v40, v41, v42, v43, v44) == 3)
          {
            v148 = objc_msgSend_pixelFormat(a5, v143, v144, v145, v146, v147);
            v141 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v141, v149, v148, 2, 0, 1, v140 + self->_offset.z, 1);
          }

          if (objc_msgSend_textureType(a6, v143, v144, v145, v146, v147) == 3)
          {
            v155 = objc_msgSend_pixelFormat(a6, v150, v151, v152, v153, v154);
            v142 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v142, v156, v155, 2, 0, 1, v140 + *&v301[1], 1);
          }

          sub_23993C100(self, v9, a4, v141, v142, v294);
          if ((objc_msgSend_retainedReferences(a4, v157, v158, v159, v160, v161) & 1) == 0)
          {
            if (v141 != a5 && v141)
            {
              v162 = objc_msgSend_userDictionary(a4, v40, v41, v42, v43, v44);
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
                objc_msgSend_addCompletedHandler_(a4, v176, &v302, v177, v178, v179);
                v167 = v172;
                v9 = v293;
              }

              objc_msgSend_addObject_(v167, v168, v141, v169, v170, v171);
            }

            if (v142 != a6 && v142)
            {
              v180 = objc_msgSend_userDictionary(a4, v40, v41, v42, v43, v44);
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
                objc_msgSend_addCompletedHandler_(a4, v194, &v302, v195, v196, v197);
                v185 = v190;
                v9 = v293;
              }

              objc_msgSend_addObject_(v185, v186, v142, v187, v188, v189);
            }
          }

          if (v141 != a5)
          {
          }

          if (v142 != a6)
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
      v207 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v198, v199, a4, 0, v200, v201);
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
        v215 = a5;
        v216 = a6;
        do
        {
          if (objc_msgSend_textureType(a5, v202, v203, v204, v205, v206) == 3)
          {
            v222 = objc_msgSend_pixelFormat(a5, v217, v218, v219, v220, v221);
            v215 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(a5, v223, v222, 2, 0, 1, v214 + self->_offset.z, 1);
          }

          if (objc_msgSend_textureType(a6, v217, v218, v219, v220, v221) == 3)
          {
            v229 = objc_msgSend_pixelFormat(a6, v224, v225, v226, v227, v228);
            v216 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(a6, v230, v229, 2, 0, 1, v214 + *&v301[1], 1);
          }

          sub_23993C100(self, v207, a4, v215, v216, v294);
          if ((objc_msgSend_retainedReferences(a4, v231, v232, v233, v234, v235) & 1) == 0)
          {
            if (v215 != a5 && v215)
            {
              v236 = objc_msgSend_userDictionary(a4, v202, v203, v204, v205, v206);
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
                objc_msgSend_addCompletedHandler_(a4, v250, &v302, v251, v252, v253);
                v241 = v246;
              }

              objc_msgSend_addObject_(v241, v242, v215, v243, v244, v245);
            }

            if (v216 != a6 && v216)
            {
              v254 = objc_msgSend_userDictionary(a4, v202, v203, v204, v205, v206);
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
                objc_msgSend_addCompletedHandler_(a4, v268, &v302, v269, v270, v271);
                v259 = v264;
              }

              objc_msgSend_addObject_(v259, v260, v216, v261, v262, v263);
            }
          }

          if (v215 != a5)
          {
          }

          if (v216 != a6)
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

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImage:(id)a5 destinationImage:(id)a6
{
  v8 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v8) & 1) == 0)
  {
    if (!a4)
    {
      v25 = self;
      v26 = a3;
      v27 = MTLReportFailureTypeEnabled();
      a3 = v26;
      a4 = 0;
      v28 = v27;
      self = v25;
      if (v28)
      {
        v29 = objc_opt_class();
        v109 = NSStringFromClass(v29);
        MTLReportFailure();
        self = v25;
        a3 = v26;
        a4 = 0;
      }
    }

    if (!a5)
    {
      v30 = self;
      v31 = a4;
      v32 = a3;
      v33 = MTLReportFailureTypeEnabled();
      a3 = v32;
      a4 = v31;
      v34 = v33;
      self = v30;
      if (v34)
      {
        v35 = objc_opt_class();
        v109 = NSStringFromClass(v35);
        MTLReportFailure();
        self = v30;
        a3 = v32;
        a4 = v31;
      }
    }

    if (!a6)
    {
      v36 = self;
      v37 = a4;
      v38 = a3;
      v39 = MTLReportFailureTypeEnabled();
      a3 = v38;
      a4 = v37;
      v40 = v39;
      self = v36;
      if (v40)
      {
        v41 = objc_opt_class();
        v109 = NSStringFromClass(v41);
        MTLReportFailure();
        self = v36;
        a3 = v38;
        a4 = v37;
      }
    }

    v9 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v8) & ~*(&self->super.super.isa + v9)) != 0)
    {
      v42 = self;
      v43 = a4;
      v44 = a3;
      v45 = MTLReportFailureTypeEnabled();
      a3 = v44;
      a4 = v43;
      v46 = v45;
      self = v42;
      if (v46)
      {
        v47 = objc_opt_class();
        v109 = NSStringFromClass(v47);
        v110 = *(&v42->super.super.isa + v8) & ~*(&v42->super.super.isa + v9);
        MTLReportFailure();
        self = v42;
        a3 = v44;
        a4 = v43;
      }
    }

    if ((self->_checkFlags & 0x800) == 0)
    {
      v10 = MEMORY[0x277CD72F8];
      if (*(a5 + *MEMORY[0x277CD72F8]) >= 5uLL)
      {
        v60 = self;
        v61 = a4;
        v62 = a3;
        v63 = MTLReportFailureTypeEnabled();
        a3 = v62;
        a4 = v61;
        v64 = v63;
        self = v60;
        if (v64)
        {
          v65 = objc_opt_class();
          v109 = NSStringFromClass(v65);
          v110 = a5;
          MTLReportFailure();
          self = v60;
          a3 = v62;
          a4 = v61;
        }
      }

      if (*(a6 + *v10) >= 5uLL)
      {
        v66 = self;
        v67 = a4;
        v68 = a3;
        v69 = MTLReportFailureTypeEnabled();
        a3 = v68;
        a4 = v67;
        v70 = v69;
        self = v66;
        if (v70)
        {
          v71 = objc_opt_class();
          v109 = NSStringFromClass(v71);
          v110 = a6;
          MTLReportFailure();
          self = v66;
          a3 = v68;
          a4 = v67;
        }
      }
    }

    v11 = MEMORY[0x277CD72F0];
    if (*(a5 + *MEMORY[0x277CD72F0]) == 5)
    {
      v48 = self;
      v49 = a4;
      v50 = a3;
      v51 = MTLReportFailureTypeEnabled();
      a3 = v50;
      a4 = v49;
      v52 = v51;
      self = v48;
      if (v52)
      {
        v53 = objc_opt_class();
        v109 = NSStringFromClass(v53);
        MTLReportFailure();
        self = v48;
        a3 = v50;
        a4 = v49;
      }
    }

    if (*(a6 + *v11) == 5)
    {
      v54 = self;
      v55 = a4;
      v56 = a3;
      v57 = MTLReportFailureTypeEnabled();
      a3 = v56;
      a4 = v55;
      v58 = v57;
      self = v54;
      if (v58)
      {
        v59 = objc_opt_class();
        v109 = NSStringFromClass(v59);
        MTLReportFailure();
        self = v54;
        a3 = v56;
        a4 = v55;
      }
    }
  }

  if (a5 && a6)
  {
    v12 = *MEMORY[0x277CD7320];
    v13 = (a5 + v12);
    v14 = (a6 + v12);
    v15 = *(a5 + v12 + 56);
    if ((*(&self->super.super.isa + v8) & 1) == 0)
    {
      v16 = MEMORY[0x277CD7490];
      if ((*(a5 + v12 + 56) & 1) != 0 && !*(a5 + *MEMORY[0x277CD7490]))
      {
        v97 = self;
        v98 = a4;
        v99 = a3;
        v100 = MTLReportFailureTypeEnabled();
        v16 = MEMORY[0x277CD7490];
        a3 = v99;
        a4 = v98;
        v101 = v100;
        self = v97;
        if (v101)
        {
          v102 = objc_opt_class();
          v109 = NSStringFromClass(v102);
          v110 = a5;
          MTLReportFailure();
          v16 = MEMORY[0x277CD7490];
          self = v97;
          a3 = v99;
          a4 = v98;
        }
      }

      if ((v14[7] & 1) != 0 && !*(a6 + *v16))
      {
        v103 = self;
        v104 = a4;
        v105 = a3;
        v106 = MTLReportFailureTypeEnabled();
        a3 = v105;
        a4 = v104;
        v107 = v106;
        self = v103;
        if (v107)
        {
          v108 = objc_opt_class();
          v109 = NSStringFromClass(v108);
          v110 = a6;
          MTLReportFailure();
          self = v103;
          a3 = v105;
          a4 = v104;
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
      v19 = self;
      v20 = a4;
      v21 = a3;
      MPSAutoTexture::AllocateTexture(v13, 0);
      self = v19;
      a3 = v21;
      a4 = v20;
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
          v72 = self;
          v73 = a4;
          v74 = a3;
          v75 = v18;
          v76 = MTLReportFailureTypeEnabled();
          v18 = v75;
          a3 = v74;
          a4 = v73;
          v77 = v76;
          self = v72;
          if (v77)
          {
            v78 = objc_opt_class();
            v109 = NSStringFromClass(v78);
            v110 = objc_msgSend_debugDescription(a5, v79, v80, v81, v82, v83);
            MTLReportFailure();
            v18 = v75;
            self = v72;
            a3 = v74;
            a4 = v73;
          }
        }

        if (!v18)
        {
          v84 = self;
          v85 = a4;
          v86 = a3;
          v87 = MTLReportFailureTypeEnabled();
          v18 = 0;
          a3 = v86;
          a4 = v85;
          v88 = v87;
          self = v84;
          if (v88)
          {
            v89 = objc_opt_class();
            v90 = NSStringFromClass(v89);
            v111 = objc_msgSend_debugDescription(a6, v91, v92, v93, v94, v95);
            MTLReportFailure();
            objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceTexture_destinationTexture_(v84, v96, v86, v85, explicit, 0, v90, v111);
LABEL_27:
            if (v15)
            {

              MPSDecrementReadCount(a5);
            }

            return;
          }
        }

LABEL_26:
        objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceTexture_destinationTexture_(self, a2, a3, a4, explicit, v18, v109, v110);
        goto LABEL_27;
      }
    }

    v22 = self;
    v23 = a4;
    v24 = a3;
    MPSAutoTexture::AllocateTexture(v14, 0);
    self = v22;
    a3 = v24;
    a4 = v23;
    v18 = atomic_load_explicit(v14, memory_order_acquire);
    if (*(&v22->super.super.isa + v8))
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v35.receiver = self;
  v35.super_class = MPSUnaryImageKernel;
  [(MPSKernel *)&v35 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_offset.x, @"MPSImageUnaryKernel.offset.x", v6, v7);
  objc_msgSend_encodeInt64_forKey_(a3, v8, self->_offset.y, @"MPSImageUnaryKernel.offset.y", v9, v10);
  objc_msgSend_encodeInt64_forKey_(a3, v11, self->_offset.z, @"MPSImageUnaryKernel.offset.z", v12, v13);
  objc_msgSend_encodeInt64_forKey_(a3, v14, self->_clipRect.origin.x, @"MPSImageUnaryKernel.clipRect.origin.x", v15, v16);
  objc_msgSend_encodeInt64_forKey_(a3, v17, self->_clipRect.origin.y, @"MPSImageUnaryKernel.clipRect.origin.y", v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, self->_clipRect.origin.z, @"MPSImageUnaryKernel.clipRect.origin.z", v21, v22);
  objc_msgSend_encodeInt64_forKey_(a3, v23, self->_clipRect.size.width, @"MPSImageUnaryKernel.clipRect.size.width", v24, v25);
  objc_msgSend_encodeInt64_forKey_(a3, v26, self->_clipRect.size.height, @"MPSImageUnaryKernel.clipRect.size.height", v27, v28);
  objc_msgSend_encodeInt64_forKey_(a3, v29, self->_clipRect.size.depth, @"MPSImageUnaryKernel.clipRect.size.depth", v30, v31);
  objc_msgSend_encodeInt64_forKey_(a3, v32, self->_edgeMode, @"MPSImageUnaryKernel.edgeMode", v33, v34);
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