@interface MPSImageScreenTelemetry
- ($1C75447F214D9465CD650DD956230C7F)sourceRegion;
- (MPSImageScreenTelemetry)initWithCoder:(id)a3 device:(id)a4;
- (MPSImageScreenTelemetry)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationBuffer:(id)a5 destinationOffset:(unint64_t)a6;
- (void)encodeWithCoder:(id)a3;
- (void)setSourceRegion:(id *)a3;
@end

@implementation MPSImageScreenTelemetry

- (MPSImageScreenTelemetry)initWithDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = MPSImageScreenTelemetry;
  result = [(MPSUnaryImageKernel *)&v6 initWithDevice:a3];
  if (result)
  {
    result->_zoneWidth = 16;
    result->_zoneHeight = 16;
    result->_numberOfZonesInX = 1;
    result->_numberOfZonesInY = 1;
    v5 = *(MEMORY[0x277CD7200] + 16);
    v4 = *(MEMORY[0x277CD7200] + 32);
    *&result->_sourceRegion.origin.x = *MEMORY[0x277CD7200];
    *&result->_sourceRegion.origin.z = v5;
    *&result->_sourceRegion.size.height = v4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSImageScreenTelemetry;
  result = [(MPSUnaryImageKernel *)&v8 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 26) = self->_zoneWidth;
    *(result + 27) = self->_zoneHeight;
    v7 = *&self->_sourceRegion.origin.z;
    v6 = *&self->_sourceRegion.size.height;
    *(result + 15) = *&self->_sourceRegion.origin.x;
    *(result + 16) = v7;
    *(result + 17) = v6;
    *(result + 28) = self->_numberOfZonesInX;
    *(result + 29) = self->_numberOfZonesInY;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSImageScreenTelemetry;
  [(MPSKernel *)&v2 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = MPSImageScreenTelemetry;
  v4 = [(MPSUnaryImageKernel *)&v11 debugDescription];
  zoneWidth = self->_zoneWidth;
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@\n\tzoneWidth: %lu zoneHeight: %lu\n", v7, v8, v9, v4, zoneWidth, self->_zoneHeight);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v29.receiver = self;
  v29.super_class = MPSImageScreenTelemetry;
  [(MPSUnaryImageKernel *)&v29 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, v4[26], @"MPSImageScreenTelemetry.zoneWidth", v6, v7);
  objc_msgSend_encodeInt64_forKey_(a3, v8, v4[27], @"MPSImageScreenTelemetry.zoneHeight", v9, v10);
  objc_msgSend_encodeInt64_forKey_(a3, v11, v4[28], @"MPSImageScreenTelemetry.numberOfZonesInX", v12, v13);
  objc_msgSend_encodeInt64_forKey_(a3, v14, v4[29], @"MPSImageScreenTelemetry.numberOfZonesInY", v15, v16);
  v4 += 30;
  objc_msgSend_encodeInt64_forKey_(a3, v17, *v4, @"MPSImageScreenTelemetry.sourceRectOriginX", v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, v4[1], @"MPSImageScreenTelemetry.sourceRectOriginY", v21, v22);
  objc_msgSend_encodeInt64_forKey_(a3, v23, v4[3], @"MPSImageScreenTelemetry.sourceRectWidth", v24, v25);
  objc_msgSend_encodeInt64_forKey_(a3, v26, v4[4], @"MPSImageScreenTelemetry.sourceRectHeight", v27, v28);
}

- (MPSImageScreenTelemetry)initWithCoder:(id)a3 device:(id)a4
{
  v41.receiver = self;
  v41.super_class = MPSImageScreenTelemetry;
  v5 = [(MPSUnaryImageKernel *)&v41 initWithCoder:a3 device:a4];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_zoneWidth = objc_msgSend_decodeInt64ForKey_(a3, v6, @"MPSImageScreenTelemetry.zoneWidth", v7, v8, v9);
    v10->_zoneHeight = objc_msgSend_decodeInt64ForKey_(a3, v11, @"MPSImageScreenTelemetry.zoneHeight", v12, v13, v14);
    v10->_numberOfZonesInX = objc_msgSend_decodeInt64ForKey_(a3, v15, @"MPSImageScreenTelemetry.numberOfZonesInX", v16, v17, v18);
    v10->_numberOfZonesInY = objc_msgSend_decodeInt64ForKey_(a3, v19, @"MPSImageScreenTelemetry.numberOfZonesInY", v20, v21, v22);
    v10->_sourceRegion.origin.x = objc_msgSend_decodeInt64ForKey_(a3, v23, @"MPSImageScreenTelemetry.sourceRectOriginX", v24, v25, v26);
    v10->_sourceRegion.origin.y = objc_msgSend_decodeInt64ForKey_(a3, v27, @"MPSImageScreenTelemetry.sourceRectOriginY", v28, v29, v30);
    v10->_sourceRegion.size.width = objc_msgSend_decodeInt64ForKey_(a3, v31, @"MPSImageScreenTelemetry.sourceRectWidth", v32, v33, v34);
    v10->_sourceRegion.size.height = objc_msgSend_decodeInt64ForKey_(a3, v35, @"MPSImageScreenTelemetry.sourceRectHeight", v36, v37, v38);
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v40 = objc_opt_class();
    NSStringFromClass(v40);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationBuffer:(id)a5 destinationOffset:(unint64_t)a6
{
  v9 = *MEMORY[0x277CD7350];
  v10 = MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    v11 = *(&self->super.super.super.isa + v9);
    v12 = objc_msgSend_pixelFormat(a4, a2, a3, a4, a5, a6);
    PixelInfo = MPSDevice::GetPixelInfo(v11, v12, MPSImageFeatureChannelFormatNone);
    if (!a4 && MTLReportFailureTypeEnabled())
    {
      v202 = objc_opt_class();
      v204 = NSStringFromClass(v202);
      MTLReportFailure();
    }

    if (!a5 && MTLReportFailureTypeEnabled())
    {
      v203 = objc_opt_class();
      v204 = NSStringFromClass(v203);
      MTLReportFailure();
    }

    objc_msgSend_textureType(a4, v13, v14, v15, v16, v17, v204);
    if (objc_msgSend_textureType(a4, v19, v20, v21, v22, v23) != 2 && MTLReportFailureTypeEnabled())
    {
      v205 = a4;
      MTLReportFailure();
    }

    if ((~PixelInfo & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v205 = a4;
      v208 = v12;
      MTLReportFailure();
    }

    memset(&v224, 0, sizeof(v224));
    objc_msgSend_sourceRegion(self, v24, v25, v26, v27, v28, v205, v208);
    memset(&v223, 0, sizeof(v223));
    v222.width = objc_msgSend_width(a4, v29, v30, v31, v32, v33);
    v222.height = objc_msgSend_height(a4, v34, v35, v36, v37, v38);
    v222.depth = 1;
    v221 = v224;
    MPSGetEffectiveClipRegion(&v223, &v222, &v221);
    objc_msgSend_width(a4, v39, v40, v41, v42, v43);
    v44 = v223.size.width + v223.origin.x;
    if (v44 > objc_msgSend_width(a4, v45, v46, v47, v48, v49) && MTLReportFailureTypeEnabled())
    {
      v206 = v223.size.width + v223.origin.x;
      v209 = objc_msgSend_width(a4, v50, v51, v52, v53, v54);
      MTLReportFailure();
    }

    objc_msgSend_height(a4, v50, v51, v52, v53, v54, v206, v209);
    v55 = v223.size.height + v223.origin.y;
    if (v55 > objc_msgSend_height(a4, v56, v57, v58, v59, v60) && MTLReportFailureTypeEnabled())
    {
      v207 = v223.size.height + v223.origin.y;
      v210 = objc_msgSend_height(a4, v61, v62, v63, v64, v65);
      MTLReportFailure();
    }

    if (!v223.size.width && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!v223.size.height && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((a6 & 3) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v66 = objc_msgSend_numberOfZonesInX(self, v61, v62, v63, v64, v65, v207, v210);
    v72 = 16 * v66 * objc_msgSend_numberOfZonesInY(self, v67, v68, v69, v70, v71) + 16;
    objc_msgSend_length(a5, v73, v74, v75, v76, v77);
    if (v72 + a6 > objc_msgSend_length(a5, v78, v79, v80, v81, v82) && MTLReportFailureTypeEnabled())
    {
      v204 = v72;
      v208 = a6;
      MTLReportFailure();
    }
  }

  v214 = a6;
  memset(&v224, 0, sizeof(v224));
  v83 = objc_msgSend_width(a4, a2, a3, a4, a5, a6, v204, v208);
  v213 = a4;
  v89 = objc_msgSend_height(a4, v84, v85, v86, v87, v88);
  v221.origin.x = v83;
  v221.origin.y = v89;
  v221.origin.z = 1;
  v90 = *&self->_sourceRegion.origin.z;
  *&v223.origin.x = *&self->_sourceRegion.origin.x;
  v91 = *&self->_sourceRegion.size.height;
  *&v223.origin.z = v90;
  *&v223.size.height = v91;
  MPSGetEffectiveClipRegion(&v224, &v221, &v223);
  if (v224.size.height && v224.size.width)
  {
    v211 = v9;
    MEMORY[0x23EE7BAC0](&v221, a3, 0);
    v92 = objc_alloc(MEMORY[0x277CD7210]);
    v100 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v92, v93, a3, 0, v94, v95);
    v219 = v100;
    v220 = self;
    if ((*(&self->super.super.super.isa + *v10) & 0x18) != 0)
    {
      v101 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v101 || (v102 = objc_opt_class(), v101 = NSStringFromClass(v102), objc_msgSend_setLabel_(self, v103, v101, v104, v105, v106), v101))
      {
        objc_msgSend_setLabel_(v100, v96, v101, v97, v98, v99);
      }
    }

    numberOfZonesInX = self->_numberOfZonesInX;
    width = v224.size.width;
    height = v224.size.height;
    numberOfZonesInY = self->_numberOfZonesInY;
    zoneWidth = self->_zoneWidth;
    zoneHeight = self->_zoneHeight;
    TempBuffer = MPSAutoCache::GetTempBuffer(&v221, 16 * numberOfZonesInY * numberOfZonesInX, 0);
    MPSGetUShortDivisorMagicNumber();
    v113 = vmovn_s64(*&self->_sourceRegion.origin.x);
    WORD1(v222.width) = v113.i16[2];
    LOWORD(v222.width) = v113.i16[0];
    HIWORD(v222.width) = (height + numberOfZonesInY - 1) / numberOfZonesInY;
    WORD2(v222.width) = (width + numberOfZonesInX - 1) / numberOfZonesInX;
    LOWORD(v222.height) = zoneWidth;
    WORD1(v222.height) = zoneHeight;
    HIWORD(v222.height) = numberOfZonesInY;
    WORD2(v222.height) = numberOfZonesInX;
    WORD1(v222.depth) = v114;
    LOWORD(v222.depth) = v115;
    WORD2(v222.depth) = zoneHeight * zoneWidth;
    HIWORD(v222.depth) = numberOfZonesInY * numberOfZonesInX;
    v116 = *MEMORY[0x277CD7370];
    v117 = *(&self->super.super.super.isa + v116);
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(v100, v119, ComputeState, v120, v121, v122);
    v123 = *(&self->super.super.super.isa + v116);
    MPSLibrary::ReleaseComputeState();
    v129 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v124, v125, v126, v127, v128);
    if (v129 >= 0x100)
    {
      v135 = 256;
    }

    else
    {
      v135 = v129;
    }

    v136 = objc_msgSend_threadExecutionWidth(ComputeState, v130, v131, v132, v133, v134);
    v140 = v135;
    if (((*(&self->super.super.super.isa + v211))[1476] & 0x40) != 0)
    {
      v140 = v135 / v136;
    }

    objc_msgSend_setTexture_atIndex_(v100, v137, v213, 0, v138, v139);
    objc_msgSend_setBuffer_offset_atIndex_(v100, v141, a5, v214, 0, v142);
    objc_msgSend_setBuffer_offset_atIndex_(v100, v143, TempBuffer, 0, 1, v144);
    objc_msgSend_setBytes_length_atIndex_(v100, v145, &v222, 24, 2, v146);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v100, v147, 32 * v140, 0, v148, v149);
    v223.origin.x = numberOfZonesInX;
    v223.origin.y = numberOfZonesInY;
    v223.origin.z = 1;
    v217 = v135;
    v218 = vdupq_n_s64(1uLL);
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v100, v150, &v223, &v217, v151, v152);
    v153 = *(&self->super.super.super.isa + v116);
    v154 = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(v100, v155, v154, v156, v157, v158);
    v159 = *(&self->super.super.super.isa + v116);
    MPSLibrary::ReleaseComputeState();
    v165 = objc_msgSend_maxTotalThreadsPerThreadgroup(v154, v160, v161, v162, v163, v164);
    if (v165 >= 0x200)
    {
      v168 = 512;
    }

    else
    {
      v168 = v165;
    }

    objc_msgSend_setBuffer_offset_atIndex_(v100, v166, a5, v214, 0, v167);
    objc_msgSend_setBuffer_offset_atIndex_(v100, v169, TempBuffer, 0, 1, v170);
    objc_msgSend_setBytes_length_atIndex_(v100, v171, &v222, 24, 2, v172);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v100, v173, 16 * v168, 0, v174, v175);
    *&v223.origin.x = vdupq_n_s64(1uLL);
    v223.origin.z = 1;
    v217 = v168;
    v218 = *&v223.origin.x;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v100, v176, &v223, &v217, v177, v178);
    if (a5)
    {
      v184 = objc_msgSend_userDictionary(a3, v179, v180, v181, v182, v183);
      v189 = objc_msgSend_objectForKey_(v184, v185, @"_MPSCommandBufferRetainListKey", v186, v187, v188);
      if (!v189)
      {
        v194 = objc_alloc_init(MEMORY[0x277CBEB18]);
        objc_msgSend_setObject_forKey_(v184, v195, v194, @"_MPSCommandBufferRetainListKey", v196, v197);

        v223.origin.x = MEMORY[0x277D85DD0];
        v223.origin.y = 3221225472;
        v223.origin.z = sub_23993DAA4;
        v223.size.width = &unk_278AC37A8;
        v223.size.height = @"_MPSCommandBufferRetainListKey";
        objc_msgSend_addCompletedHandler_(a3, v198, &v223, v199, v200, v201);
        v189 = v194;
      }

      objc_msgSend_addObject_(v189, v190, a5, v191, v192, v193);
    }

    objc_msgSend_endEncoding(v100, v179, v180, v181, v182, v183);

    MPSAutoCache::~MPSAutoCache(&v221);
  }
}

- ($1C75447F214D9465CD650DD956230C7F)sourceRegion
{
  v3 = *&self[5].var0.var2;
  *&retstr->var0.var0 = *&self[5].var0.var0;
  *&retstr->var0.var2 = v3;
  *&retstr->var1.var1 = *&self[5].var1.var1;
  return self;
}

- (void)setSourceRegion:(id *)a3
{
  v4 = *&a3->var0.var2;
  v3 = *&a3->var1.var1;
  *&self->_sourceRegion.origin.x = *&a3->var0.var0;
  *&self->_sourceRegion.origin.z = v4;
  *&self->_sourceRegion.size.height = v3;
}

@end