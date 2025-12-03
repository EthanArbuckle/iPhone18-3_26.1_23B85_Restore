@interface MPSInstanceAccelerationStructure
- (BOOL)useResourceBuffer;
- (MPSInstanceAccelerationStructure)initWithCoder:(id)coder device:(id)device;
- (MPSInstanceAccelerationStructure)initWithCoder:(id)coder group:(id)group;
- (MPSInstanceAccelerationStructure)initWithDevice:(id)device;
- (MPSInstanceAccelerationStructure)initWithGroup:(id)group;
- (_MPSAxisAlignedBoundingBox)boundingBox;
- (id)copyInstanceAccelerationStructureWithZone:(_NSZone *)zone device:(id)device group:(id)group;
- (id)copyWithZone:(_NSZone *)zone group:(id)group;
- (id)description;
- (id)statistics;
- (void)bindResourcesWithEncoder:(id)encoder commandBuffer:(id)buffer retainedResources:(id)resources;
- (void)dealloc;
- (void)decodeInstanceAccelerationStructureWithCoder:(id)coder;
- (void)encodeInstanceOffsetsToBuffer:(id)buffer;
- (void)encodeRefitToCommandBuffer:(id)buffer;
- (void)encodeResourcesToBuffer:(id)buffer;
- (void)encodeWithCoder:(id)coder;
- (void)rebuild;
- (void)rebuildWithCompletionHandler:(id)handler;
- (void)setTransformType:(MPSTransformType)transformType;
- (void)validate;
@end

@implementation MPSInstanceAccelerationStructure

- (void)setTransformType:(MPSTransformType)transformType
{
  if (transformType >= 2)
  {
    sub_239E2217C();
  }

  self->_transformType = transformType;
}

- (_MPSAxisAlignedBoundingBox)boundingBox
{
  v6 = self[4].min.i64[1];
  if (v6)
  {
    self = objc_msgSend_contents(*(v6 + 96), a3, v3, v4, v5);
    min = self->min;
    max = self->max;
  }

  return self;
}

- (id)statistics
{
  bvh = self->_bvh;
  if (bvh)
  {
    return *(bvh + 13);
  }

  else
  {
    return 0;
  }
}

- (MPSInstanceAccelerationStructure)initWithDevice:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSInstanceAccelerationStructure;
  v3 = [(MPSAccelerationStructure *)&v10 initWithDevice:device];
  v8 = v3;
  if (v3)
  {
    objc_msgSend_sharedInitInstanceAccelerationStructure(v3, v4, v5, v6, v7);
  }

  return v8;
}

- (MPSInstanceAccelerationStructure)initWithGroup:(id)group
{
  v10.receiver = self;
  v10.super_class = MPSInstanceAccelerationStructure;
  v3 = [(MPSAccelerationStructure *)&v10 initWithGroup:group];
  v8 = v3;
  if (v3)
  {
    objc_msgSend_sharedInitInstanceAccelerationStructure(v3, v4, v5, v6, v7);
  }

  return v8;
}

- (void)decodeInstanceAccelerationStructureWithCoder:(id)coder
{
  self->_instanceCount = objc_msgSend_decodeInt64ForKey_(coder, a2, @"MPSInstanceAccelerationStructureKeyInstanceCount", v3, v4);
  self->_transformType = objc_msgSend_decodeInt64ForKey_(coder, v7, @"MPSInstanceAccelerationStructureKeyTransformType", v8, v9);
  if (objc_msgSend_status(self, v10, v11, v12, v13) == 1)
  {
    v18 = objc_msgSend_group(self, v14, v15, v16, v17);
    if (*(*(objc_msgSend_bvhGroup(v18, v19, v20, v21, v22) + 32) + 40))
    {
      operator new();
    }

    operator new();
  }
}

- (MPSInstanceAccelerationStructure)initWithCoder:(id)coder device:(id)device
{
  v15.receiver = self;
  v15.super_class = MPSInstanceAccelerationStructure;
  v5 = [(MPSAccelerationStructure *)&v15 initWithCoder:coder device:device];
  v10 = v5;
  if (v5)
  {
    objc_msgSend_sharedInitInstanceAccelerationStructure(v5, v6, v7, v8, v9);
    objc_msgSend_decodeInstanceAccelerationStructureWithCoder_(v10, v11, coder, v12, v13);
  }

  return v10;
}

- (MPSInstanceAccelerationStructure)initWithCoder:(id)coder group:(id)group
{
  v15.receiver = self;
  v15.super_class = MPSInstanceAccelerationStructure;
  v5 = [(MPSAccelerationStructure *)&v15 initWithCoder:coder group:group];
  v10 = v5;
  if (v5)
  {
    objc_msgSend_sharedInitInstanceAccelerationStructure(v5, v6, v7, v8, v9);
    objc_msgSend_decodeInstanceAccelerationStructureWithCoder_(v10, v11, coder, v12, v13);
  }

  return v10;
}

- (void)dealloc
{
  bvh = self->_bvh;
  if (bvh)
  {
    if (atomic_fetch_add(bvh + 2, 0xFFFFFFFF) == 1)
    {
      (*(*bvh + 8))(bvh);
    }

    self->_bvh = 0;
  }

  v4.receiver = self;
  v4.super_class = MPSInstanceAccelerationStructure;
  [(MPSAccelerationStructure *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = MPSInstanceAccelerationStructure;
  [(MPSAccelerationStructure *)&v13 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_instanceCount, @"MPSInstanceAccelerationStructureKeyInstanceCount", v6);
  objc_msgSend_encodeInt64_forKey_(coder, v7, self->_transformType, @"MPSInstanceAccelerationStructureKeyTransformType", v8);
  if (objc_msgSend_status(self, v9, v10, v11, v12) == 1)
  {
    operator new();
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSInstanceAccelerationStructure;
  v4 = [(MPSAccelerationStructure *)&v13 description];
  transformType = self->_transformType;
  v9 = "Unknown";
  if (transformType == 1)
  {
    v9 = "MPSTransformTypeIdentity";
  }

  if (transformType)
  {
    v10 = v9;
  }

  else
  {
    v10 = "MPSTransformTypeFloat4x4";
  }

  maskBufferOffset = self->_maskBufferOffset;
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tacceleration structures: %p\n\tinstance buffer: %p\n\tinstance buffer offset: %llu\n\ttransform buffer: %p\n\ttransform buffer offset: %llu\n\ttransform type: %s\n\tmask buffer: %p\n\tmask buffer offset: %llu\n\tinstance count: %llu", v6, v7, v4, self->_accelerationStructures, self->_instanceBuffer, self->_instanceBufferOffset, self->_transformBuffer, self->_transformBufferOffset, v10, self->_maskBuffer, maskBufferOffset, self->_instanceCount);
}

- (void)validate
{
  v332 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  if (!self->_accelerationStructures)
  {
    sub_239E221CC();
  }

  if (!self->_instanceBuffer)
  {
    sub_239E2221C();
  }

  objc_msgSend_length(self->_instanceBuffer, v3, v4, v5, v6);
  instanceBufferOffset = self->_instanceBufferOffset;
  if (instanceBufferOffset >= objc_msgSend_length(self->_instanceBuffer, v8, v9, v10, v11))
  {
    sub_239E2226C();
  }

  objc_msgSend_length(self->_instanceBuffer, v12, v13, v14, v15);
  if (objc_msgSend_length(self->_instanceBuffer, v16, v17, v18, v19) < self->_instanceBufferOffset + 4 * self->_instanceCount)
  {
    sub_239E222C4();
  }

  if ((self->_instanceBufferOffset & 3) != 0)
  {
    sub_239E22318();
  }

  if (!self->_transformType)
  {
    if (!self->_transformBuffer)
    {
      sub_239E2236C();
    }

    objc_msgSend_length(self->_transformBuffer, v20, v21, v22, v23);
    transformBufferOffset = self->_transformBufferOffset;
    if (transformBufferOffset >= objc_msgSend_length(self->_transformBuffer, v25, v26, v27, v28))
    {
      sub_239E223BC();
    }

    objc_msgSend_length(self->_transformBuffer, v29, v30, v31, v32);
    if (objc_msgSend_length(self->_transformBuffer, v33, v34, v35, v36) < self->_transformBufferOffset + 8 * self->_instanceCount)
    {
      sub_239E22414();
    }

    if ((self->_transformBufferOffset & 7) != 0)
    {
      sub_239E22474();
    }
  }

  maskBuffer = self->_maskBuffer;
  if (maskBuffer)
  {
    objc_msgSend_length(maskBuffer, v20, v21, v22, v23);
    if (objc_msgSend_length(self->_maskBuffer, v38, v39, v40, v41) < self->_maskBufferOffset + 4 * self->_instanceCount)
    {
      sub_239E224C8();
    }

    objc_msgSend_length(self->_maskBuffer, v42, v43, v44, v45);
    maskBufferOffset = self->_maskBufferOffset;
    if (maskBufferOffset >= objc_msgSend_length(self->_maskBuffer, v47, v48, v49, v50))
    {
      sub_239E2251C();
    }

    if ((self->_maskBufferOffset & 3) != 0)
    {
      sub_239E22574();
    }
  }

  v51 = objc_msgSend_group(self, v20, v21, v22, v23);
  if (self->_instanceCount)
  {
    v56 = v51;
    objc_msgSend_count(self->_accelerationStructures, v52, v53, v54, v55);
    if (!objc_msgSend_count(self->_accelerationStructures, v57, v58, v59, v60))
    {
      sub_239E225C8();
    }

    v64 = objc_msgSend_objectAtIndexedSubscript_(self->_accelerationStructures, v61, 0, v62, v63);
    objc_msgSend_validate(v64, v65, v66, v67, v68);
    v73 = objc_msgSend_polygonBuffers(v64, v69, v70, v71, v72);
    v77 = objc_msgSend_objectAtIndexedSubscript_(v73, v74, 0, v75, v76);
    v321 = objc_msgSend_vertexBuffer(v77, v78, v79, v80, v81);
    v86 = objc_msgSend_polygonBuffers(v64, v82, v83, v84, v85);
    v90 = objc_msgSend_objectAtIndexedSubscript_(v86, v87, 0, v88, v89);
    v326 = objc_msgSend_indexBuffer(v90, v91, v92, v93, v94);
    v99 = objc_msgSend_polygonBuffers(v64, v95, v96, v97, v98);
    v103 = objc_msgSend_objectAtIndexedSubscript_(v99, v100, 0, v101, v102);
    v325 = objc_msgSend_maskBuffer(v103, v104, v105, v106, v107);
    v112 = objc_msgSend_vertexStride(v64, v108, v109, v110, v111);
    v117 = objc_msgSend_indexType(v64, v113, v114, v115, v116);
    v122 = objc_msgSend_nodeLayout(v64, v118, v119, v120, v121);
    v127 = objc_msgSend_branchingFactor(v64, v123, v124, v125, v126);
    v132 = objc_msgSend_polygonType(v64, v128, v129, v130, v131);
    v324 = sub_239E17B90((*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v133, v134, v135, v136);
    v327 = 0u;
    v328 = 0u;
    v329 = 0u;
    v330 = 0u;
    obj = self->_accelerationStructures;
    v138 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v137, &v327, v331, 16);
    if (v138)
    {
      v143 = v138;
      v144 = *v328;
      do
      {
        v145 = 0;
        v322 = v143;
        do
        {
          if (*v328 != v144)
          {
            objc_enumerationMutation(obj);
          }

          v146 = *(*(&v327 + 1) + 8 * v145);
          objc_msgSend_validate(v146, v139, v140, v141, v142);
          v151 = objc_msgSend_polygonBuffers(v146, v147, v148, v149, v150);
          v155 = objc_msgSend_objectAtIndexedSubscript_(v151, v152, 0, v153, v154);
          if (v324)
          {
            objc_msgSend_indexBuffer(v155, v156, v157, v158, v159);
            v164 = objc_msgSend_polygonBuffers(v146, v160, v161, v162, v163);
            v168 = objc_msgSend_objectAtIndexedSubscript_(v164, v165, 0, v166, v167);
            if ((v326 != 0) != (objc_msgSend_indexBuffer(v168, v169, v170, v171, v172) != 0))
            {
              sub_239E226CC();
            }

            v177 = objc_msgSend_polygonBuffers(v146, v173, v174, v175, v176);
            v181 = objc_msgSend_objectAtIndexedSubscript_(v177, v178, 0, v179, v180);
            objc_msgSend_maskBuffer(v181, v182, v183, v184, v185);
            v190 = objc_msgSend_polygonBuffers(v146, v186, v187, v188, v189);
            v194 = objc_msgSend_objectAtIndexedSubscript_(v190, v191, 0, v192, v193);
            v143 = v322;
            if ((v325 != 0) != (objc_msgSend_maskBuffer(v194, v195, v196, v197, v198) != 0))
            {
              sub_239E22708();
            }
          }

          else
          {
            objc_msgSend_vertexBuffer(v155, v156, v157, v158, v159);
            v207 = objc_msgSend_polygonBuffers(v146, v203, v204, v205, v206);
            v211 = objc_msgSend_objectAtIndexedSubscript_(v207, v208, 0, v209, v210);
            if (objc_msgSend_vertexBuffer(v211, v212, v213, v214, v215) != v321)
            {
              sub_239E22618();
            }

            v220 = objc_msgSend_polygonBuffers(v146, v216, v217, v218, v219);
            v224 = objc_msgSend_objectAtIndexedSubscript_(v220, v221, 0, v222, v223);
            objc_msgSend_indexBuffer(v224, v225, v226, v227, v228);
            v233 = objc_msgSend_polygonBuffers(v146, v229, v230, v231, v232);
            v237 = objc_msgSend_objectAtIndexedSubscript_(v233, v234, 0, v235, v236);
            if (objc_msgSend_indexBuffer(v237, v238, v239, v240, v241) != v326)
            {
              sub_239E22654();
            }

            v246 = objc_msgSend_polygonBuffers(v146, v242, v243, v244, v245);
            v250 = objc_msgSend_objectAtIndexedSubscript_(v246, v247, 0, v248, v249);
            objc_msgSend_maskBuffer(v250, v251, v252, v253, v254);
            v259 = objc_msgSend_polygonBuffers(v146, v255, v256, v257, v258);
            v263 = objc_msgSend_objectAtIndexedSubscript_(v259, v260, 0, v261, v262);
            if (objc_msgSend_maskBuffer(v263, v264, v265, v266, v267) != v325)
            {
              sub_239E22690();
            }
          }

          objc_msgSend_vertexStride(v146, v199, v200, v201, v202);
          if (objc_msgSend_vertexStride(v146, v268, v269, v270, v271) != v112)
          {
            sub_239E22744();
          }

          objc_msgSend_indexType(v146, v272, v273, v274, v275);
          if (objc_msgSend_indexType(v146, v276, v277, v278, v279) != v117)
          {
            sub_239E22780();
          }

          objc_msgSend_group(v146, v280, v281, v282, v283);
          if (objc_msgSend_group(v146, v284, v285, v286, v287) != v56)
          {
            sub_239E227BC();
          }

          objc_msgSend_status(v146, v288, v289, v290, v291);
          if (objc_msgSend_status(v146, v292, v293, v294, v295) != 1)
          {
            sub_239E227F8();
          }

          objc_msgSend_branchingFactor(v146, v296, v297, v298, v299);
          if (objc_msgSend_branchingFactor(v146, v300, v301, v302, v303) != v127)
          {
            sub_239E22844();
          }

          objc_msgSend_nodeLayout(v146, v304, v305, v306, v307);
          if (objc_msgSend_nodeLayout(v146, v308, v309, v310, v311) != v122)
          {
            sub_239E22880();
          }

          objc_msgSend_polygonType(v146, v312, v313, v314, v315);
          if (objc_msgSend_polygonType(v146, v316, v317, v318, v319) != v132)
          {
            sub_239E228BC();
          }

          ++v145;
        }

        while (v143 != v145);
        v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v139, &v327, v331, 16);
      }

      while (v143);
    }
  }

  kdebug_trace();
  v320 = *MEMORY[0x277D85DE8];
}

- (void)rebuildWithCompletionHandler:(id)handler
{
  kdebug_trace();
  kdebug_trace();
  selfCopy = self;
  global_queue = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239DF38B8;
  block[3] = &unk_278B3B328;
  block[4] = self;
  block[5] = selfCopy;
  block[6] = handler;
  dispatch_async(global_queue, block);
}

- (void)encodeInstanceOffsetsToBuffer:(id)buffer
{
  v127 = *MEMORY[0x277D85DE8];
  __src = 0;
  v124 = 0;
  v125 = 0;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = self->_accelerationStructures;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, a2, &v119, v126, 16);
  if (v7)
  {
    v114 = *v120;
    do
    {
      v8 = 0;
      v115 = v7;
      do
      {
        if (*v120 != v114)
        {
          objc_enumerationMutation(obj);
        }

        v118 = v8;
        v9 = *(*(&v119 + 1) + 8 * v8);
        v10 = objc_msgSend_indexType(v9, v3, v4, v5, v6);
        v117 = sub_239DE2F08(v10);
        v15 = *(objc_msgSend_innerNodeBufferRange(v9, v11, v12, v13, v14) + 32);
        v20 = objc_msgSend_innerNodeStride(v9, v16, v17, v18, v19);
        v25 = *(objc_msgSend_leafNodeBufferRange(v9, v21, v22, v23, v24) + 32);
        v30 = *(objc_msgSend_primitiveIndexBufferRange(v9, v26, v27, v28, v29) + 32);
        v35 = *(objc_msgSend_pageTable0BufferRange(v9, v31, v32, v33, v34) + 32);
        v40 = *(objc_msgSend_pageTable1BufferRange(v9, v36, v37, v38, v39) + 32);
        v45 = *(objc_msgSend_pageBufferRange(v9, v41, v42, v43, v44) + 32);
        v50 = objc_msgSend_polygonBuffers(v9, v46, v47, v48, v49);
        v54 = objc_msgSend_objectAtIndexedSubscript_(v50, v51, 0, v52, v53);
        v116 = objc_msgSend_vertexBufferOffset(v54, v55, v56, v57, v58);
        v63 = objc_msgSend_polygonBuffers(v9, v59, v60, v61, v62);
        v67 = objc_msgSend_objectAtIndexedSubscript_(v63, v64, 0, v65, v66);
        v72 = objc_msgSend_indexBufferOffset(v67, v68, v69, v70, v71);
        v77 = objc_msgSend_polygonBuffers(v9, v73, v74, v75, v76);
        v81 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, 0, v79, v80);
        v86 = objc_msgSend_maskBufferOffset(v81, v82, v83, v84, v85);
        v91 = objc_msgSend_rootNodeType(v9, v87, v88, v89, v90);
        v92 = v15 / v20;
        v93 = v25 >> 4;
        v94 = v30 >> 2;
        v95 = v35 >> 2;
        v96 = v40 >> 2;
        v97 = v45 >> 2;
        v98 = v86 >> 2;
        v99 = v124;
        v100 = v72 / v117;
        if (v124 >= v125)
        {
          v102 = __src;
          v103 = v124 - __src;
          v104 = 0xCCCCCCCCCCCCCCCDLL * ((v124 - __src) >> 3);
          v105 = v104 + 1;
          if (v104 + 1 > 0x666666666666666)
          {
            sub_239DEDF38();
          }

          if (0x999999999999999ALL * ((v125 - __src) >> 3) > v105)
          {
            v105 = 0x999999999999999ALL * ((v125 - __src) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v125 - __src) >> 3) >= 0x333333333333333)
          {
            v105 = 0x666666666666666;
          }

          if (v105)
          {
            sub_239DF5E8C(&__src, v105);
          }

          v106 = (8 * ((v124 - __src) >> 3));
          *v106 = v92;
          v106[1] = v93;
          v106[2] = v94;
          v106[3] = v116;
          v106[4] = v100;
          v106[5] = v98;
          v106[6] = v95;
          v106[7] = v96;
          v106[8] = v97;
          v106[9] = v91;
          v101 = 40 * v104 + 40;
          v107 = (40 * v104 - v103);
          memcpy(v107, v102, v103);
          v108 = __src;
          __src = v107;
          v124 = v101;
          v125 = 0;
          if (v108)
          {
            operator delete(v108);
          }
        }

        else
        {
          *v124 = v92;
          v99[1] = v93;
          v99[2] = v94;
          v99[3] = v116;
          v99[4] = v100;
          v99[5] = v98;
          v99[6] = v95;
          v99[7] = v96;
          v101 = (v99 + 10);
          v99[8] = v97;
          v99[9] = v91;
        }

        v124 = v101;
        v8 = v118 + 1;
      }

      while (v115 != v118 + 1);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v119, v126, 16);
    }

    while (v7);
    v109 = __src;
    if (v124 != __src)
    {
      v110 = objc_msgSend_contents(buffer, v3, v4, v5, v6);
      memcpy(v110, __src, v124 - __src);
      v109 = __src;
    }

    if (v109)
    {
      v124 = v109;
      operator delete(v109);
    }
  }

  v111 = *MEMORY[0x277D85DE8];
}

- (void)rebuild
{
  v2.receiver = self;
  v2.super_class = MPSInstanceAccelerationStructure;
  [(MPSAccelerationStructure *)&v2 rebuild];
}

- (void)encodeResourcesToBuffer:(id)buffer
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  accelerationStructures = self->_accelerationStructures;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(accelerationStructures, v7, &v20, v24, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(accelerationStructures);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ((objc_msgSend_containsObject_(v5, v9, v15, v10, v11) & 1) == 0)
        {
          objc_msgSend_encodeResourcesToBuffer_(v15, v9, buffer, v10, v11);
          objc_msgSend_addObject_(v5, v16, v15, v17, v18);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(accelerationStructures, v9, &v20, v24, 16);
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)useResourceBuffer
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_count(self->_accelerationStructures, a2, v2, v3, v4);
  if (v6)
  {
    v10 = objc_msgSend_objectAtIndexedSubscript_(self->_accelerationStructures, v7, 0, v8, v9);
    v15 = objc_msgSend_polygonBuffers(v10, v11, v12, v13, v14);
    v19 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0, v17, v18);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    accelerationStructures = self->_accelerationStructures;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(accelerationStructures, v21, &v73, v77, 16);
    if (v6)
    {
      v26 = v6;
      v27 = *v74;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v74 != v27)
          {
            objc_enumerationMutation(accelerationStructures);
          }

          v29 = *(*(&v73 + 1) + 8 * i);
          v30 = objc_msgSend_polygonBuffers(v29, v22, v23, v24, v25);
          if (objc_msgSend_count(v30, v31, v32, v33, v34) <= 1)
          {
            v39 = objc_msgSend_polygonBuffers(v29, v35, v36, v37, v38);
            v43 = objc_msgSend_objectAtIndexedSubscript_(v39, v40, 0, v41, v42);
            v48 = objc_msgSend_vertexBuffer(v43, v44, v45, v46, v47);
            if (v48 == objc_msgSend_vertexBuffer(v19, v49, v50, v51, v52))
            {
              v57 = objc_msgSend_indexBuffer(v43, v53, v54, v55, v56);
              if (v57 == objc_msgSend_indexBuffer(v19, v58, v59, v60, v61))
              {
                v66 = objc_msgSend_maskBuffer(v43, v62, v63, v64, v65);
                if (v66 == objc_msgSend_maskBuffer(v19, v67, v68, v69, v70))
                {
                  continue;
                }
              }
            }
          }

          LOBYTE(v6) = 1;
          goto LABEL_15;
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(accelerationStructures, v22, &v73, v77, 16);
        LOBYTE(v6) = 0;
        if (v26)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_15:
  v71 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)bindResourcesWithEncoder:(id)encoder commandBuffer:(id)buffer retainedResources:(id)resources
{
  v199 = *MEMORY[0x277D85DE8];
  objc_msgSend_device(buffer, a2, encoder, buffer, resources);
  MPSDevice = MPSDevice::GetMPSDevice();
  if (MPSDevice)
  {
    v10 = (*(*MPSDevice + 24))(MPSDevice);
    selfCopy = self;
    v198.receiver = self;
    v198.super_class = MPSInstanceAccelerationStructure;
    [(MPSAccelerationStructure *)&v198 bindResourcesWithEncoder:encoder commandBuffer:buffer retainedResources:resources];
    v15 = objc_msgSend_device(buffer, v11, v12, v13, v14);
    v20 = objc_msgSend_count(selfCopy->_accelerationStructures, v16, v17, v18, v19);
    if (v20 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v20;
    }

    v196 = objc_msgSend_newBufferWithLength_options_(v15, v21, 40 * v23, 16 * v10, v22);
    objc_msgSend_encodeInstanceOffsetsToBuffer_(selfCopy, v24, v196, v25, v26);
    v31 = objc_msgSend_group(selfCopy, v27, v28, v29, v30);
    v36 = objc_msgSend_bvhGroup(v31, v32, v33, v34, v35);
    v195 = objc_msgSend_objectAtIndexedSubscript_(*(*(v36 + 32) + 24), v37, 0, v38, v39);
    v44 = objc_msgSend_group(selfCopy, v40, v41, v42, v43);
    v49 = objc_msgSend_bvhGroup(v44, v45, v46, v47, v48);
    v53 = objc_msgSend_objectAtIndexedSubscript_(*(*(v49 + 32) + 24), v50, 1, v51, v52);
    v58 = objc_msgSend_group(selfCopy, v54, v55, v56, v57);
    v63 = objc_msgSend_bvhGroup(v58, v59, v60, v61, v62);
    v194 = objc_msgSend_objectAtIndexedSubscript_(*(*(v63 + 40) + 24), v64, 0, v65, v66);
    v71 = objc_msgSend_group(selfCopy, v67, v68, v69, v70);
    v76 = objc_msgSend_bvhGroup(v71, v72, v73, v74, v75);
    v193 = objc_msgSend_objectAtIndexedSubscript_(*(*(v76 + 48) + 24), v77, 0, v78, v79);
    v84 = objc_msgSend_group(selfCopy, v80, v81, v82, v83);
    v89 = objc_msgSend_bvhGroup(v84, v85, v86, v87, v88);
    v192 = objc_msgSend_objectAtIndexedSubscript_(*(*(v89 + 56) + 24), v90, 0, v91, v92);
    v97 = objc_msgSend_group(selfCopy, v93, v94, v95, v96);
    v102 = objc_msgSend_bvhGroup(v97, v98, v99, v100, v101);
    v191 = objc_msgSend_objectAtIndexedSubscript_(*(*(v102 + 64) + 24), v103, 0, v104, v105);
    v110 = objc_msgSend_group(selfCopy, v106, v107, v108, v109);
    v115 = objc_msgSend_bvhGroup(v110, v111, v112, v113, v114);
    v190 = objc_msgSend_objectAtIndexedSubscript_(*(*(v115 + 72) + 24), v116, 0, v117, v118);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v119, *(selfCopy->_bvh + 15), 0, 6);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v120, v196, 0, 7);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v121, selfCopy->_instanceBuffer, selfCopy->_instanceBufferOffset, 26);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v122, selfCopy->_maskBuffer, selfCopy->_maskBufferOffset, 11);
    if (objc_msgSend_count(selfCopy->_accelerationStructures, v123, v124, v125, v126))
    {
      v131 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_accelerationStructures, v127, 0, v129, v130);
      v136 = objc_msgSend_polygonBuffers(v131, v132, v133, v134, v135);
      v140 = objc_msgSend_objectAtIndexedSubscript_(v136, v137, 0, v138, v139);
      v145 = objc_msgSend_vertexBuffer(v140, v141, v142, v143, v144);
      v150 = objc_msgSend_polygonBuffers(v131, v146, v147, v148, v149);
      v154 = objc_msgSend_objectAtIndexedSubscript_(v150, v151, 0, v152, v153);
      v189 = objc_msgSend_indexBuffer(v154, v155, v156, v157, v158);
      v163 = objc_msgSend_polygonBuffers(v131, v159, v160, v161, v162);
      v167 = objc_msgSend_objectAtIndexedSubscript_(v163, v164, 0, v165, v166);
      v188 = objc_msgSend_maskBuffer(v167, v168, v169, v170, v171);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v172, v145, 0, 8, v145);
    }

    else
    {
      v174 = objc_msgSend_device(buffer, v127, v128, v129, v130);
      v188 = objc_msgSend_newBufferWithLength_options_(v174, v175, 16, 32, v176);
      v189 = v188;
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v177, v188, 0, 8, v188);
    }

    objc_msgSend_setBuffer_offset_atIndex_(encoder, v173, v189, 0, 9);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v178, v188, 0, 10);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v179, v194, 0, 12);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v180, v193, 0, 13);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v181, v195, 0, 14);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v182, v53, 0, 30);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v183, v192, 0, 15);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v184, v191, 0, 16);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v185, v190, 0, 17);
    v186 = objc_alloc_init(MEMORY[0x277CBEB58]);
    operator new();
  }

  v187 = *MEMORY[0x277D85DE8];
}

- (id)copyInstanceAccelerationStructureWithZone:(_NSZone *)zone device:(id)device group:(id)group
{
  if (group)
  {
    v29.receiver = self;
    v29.super_class = MPSInstanceAccelerationStructure;
    v6 = [(MPSAccelerationStructure *)&v29 copyWithZone:zone group:group];
    objc_msgSend_sharedInitInstanceAccelerationStructure(v6, v7, v8, v9, v10);
  }

  else
  {
    v28.receiver = self;
    v28.super_class = MPSInstanceAccelerationStructure;
    v6 = [(MPSAccelerationStructure *)&v28 copyWithZone:zone device:device];
    objc_msgSend_group(v6, v15, v16, v17, v18);
    objc_msgSend_sharedInitInstanceAccelerationStructure(v6, v19, v20, v21, v22);
  }

  *&v6[1].super._tuningParams = objc_msgSend_instanceCount(self, v11, v12, v13, v14);
  v6[1].super.super.isa = self->_transformType;
  if (objc_msgSend_status(self, v23, v24, v25, v26) == 1)
  {
    operator new();
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone group:(id)group
{
  v8 = objc_msgSend_device(group, a2, zone, group, v4);

  return MEMORY[0x2821F9670](self, sel_copyInstanceAccelerationStructureWithZone_device_group_, zone, v8, group);
}

- (void)encodeRefitToCommandBuffer:(id)buffer
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_validate(self, a2, buffer, v3, v4);
    objc_msgSend_status(self, v7, v8, v9, v10);
    if (objc_msgSend_status(self, v11, v12, v13, v14) != 1)
    {
      sub_239E22A38();
    }

    objc_msgSend_usage(self, v15, v16, v17, v18);
    if ((objc_msgSend_usage(self, v19, v20, v21, v22) & 1) == 0)
    {
      sub_239E22A84();
    }
  }

  bvh = self->_bvh;
  v25 = bvh[21];
  v24 = bvh[22];
  v26 = (0x1000000000 - (__clz(v25) << 36)) & 0x1000000000;
  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = (((self->_transformType & 3) << 19) | ((v24 == 1) << 38) | v27) ^ 0x1000000000;
  v29 = *MEMORY[0x277CD7350];
  v30 = (*(&self->super.super.super.isa + v29))[2];
  v31 = *MEMORY[0x277CD7370];
  v32 = *(&self->super.super.super.isa + v31);
  *&v238[0] = v28 | 2;
  memset(v238 + 8, 0, 32);
  v33 = sub_239DE7190(@"refitInstanceLeafNodeKernel", v30, v32, v238);
  v34 = (*(&self->super.super.super.isa + v29))[2];
  v35 = *(&self->super.super.super.isa + v31);
  *&v238[0] = v28 | 3;
  memset(v238 + 8, 0, 32);
  v231 = sub_239DE7190(@"refitInnerNodeKernel", v34, v35, v238);
  v225 = 0;
  if ((objc_msgSend_retainedReferences(buffer, v36, v37, v38, v39) & 1) == 0)
  {
    v225 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v44 = objc_msgSend_device(buffer, v40, v41, v42, v43);
  v49 = 40 * objc_msgSend_count(self->_accelerationStructures, v45, v46, v47, v48);
  v50 = (*(**(&self->super.super.super.isa + v29) + 24))(*(&self->super.super.super.isa + v29));
  v53 = objc_msgSend_newBufferWithLength_options_(v44, v51, v49, 16 * v50, v52);
  objc_msgSend_encodeInstanceOffsetsToBuffer_(self, v54, v53, v55, v56);
  bufferCopy = buffer;
  v61 = objc_msgSend_computeCommandEncoder(buffer, v57, v58, v59, v60);
  v66 = objc_msgSend_group(self, v62, v63, v64, v65);
  v71 = objc_msgSend_bvhGroup(v66, v67, v68, v69, v70);
  v75 = objc_msgSend_objectAtIndexedSubscript_(*(*(v71 + 40) + 24), v72, 0, v73, v74);
  v80 = objc_msgSend_bvhGroup(v66, v76, v77, v78, v79);
  v84 = objc_msgSend_objectAtIndexedSubscript_(*(*(v80 + 48) + 24), v81, 0, v82, v83);
  objc_msgSend_setBuffer_offset_atIndex_(v61, v85, v75, 0, 2);
  v226 = v53;
  objc_msgSend_setBuffer_offset_atIndex_(v61, v86, v53, 0, 3);
  v223 = v75;
  objc_msgSend_setBuffer_offset_atIndex_(v61, v87, v75, 0, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v61, v88, self->_transformBuffer, self->_transformBufferOffset, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v61, v89, *(self->_bvh + 15), 0, 6);
  objc_msgSend_setBuffer_offset_atIndex_(v61, v90, self->_instanceBuffer, self->_instanceBufferOffset, 7);
  v222 = v84;
  objc_msgSend_setBuffer_offset_atIndex_(v61, v91, v84, 0, 8);
  v92 = self->_bvh;
  v93 = v92[3];
  v243[0] = *(v92[4] + 32) >> 3;
  v94 = *(v93 + 32);
  v242 = v94 / sub_239DE30C0(v92);
  objc_msgSend_setBytes_length_atIndex_(v61, v95, v243, 4, 9);
  objc_msgSend_setBytes_length_atIndex_(v61, v96, &v242, 4, 10);
  v241 = *(self->_bvh + 9);
  objc_msgSend_setBytes_length_atIndex_(v61, v97, &v241, 4, 0);
  v100 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v29))[2], v98, 4 * v241, 32, v99);
  v103 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v29))[2], v101, 4 * v241, 32, v102);
  v106 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v29))[2], v104, 4, 32, v105);
  v109 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v29))[2], v107, 4, 32, v108);
  v230 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v29))[2], v110, 12, 32, v111);
  objc_msgSend_setBuffer_offset_atIndex_(v61, v112, v109, 0, 13);
  objc_msgSend_setBuffer_offset_atIndex_(v61, v113, v103, 0, 14);
  objc_msgSend_encodeClearWithEncoder_buffer_bufferOffset_value_(self, v114, v61, v109, 0, 0);
  objc_msgSend_setComputePipelineState_(v61, v115, v33, v116, v117);
  v122 = objc_msgSend_threadExecutionWidth(v33, v118, v119, v120, v121);
  v228 = (v122 + *(self->_bvh + 9) - 1) / v122;
  v229 = v122;
  *&v238[0] = v228;
  *(v238 + 8) = vdupq_n_s64(1uLL);
  *v240 = v122;
  *&v240[8] = *(v238 + 8);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v61, v123, v238, v240, v124);
  v239 = 0;
  memset(v238, 0, sizeof(v238));
  objc_msgSend_getBVHOptions(self, v125, v126, v127, v128);
  v133 = sub_239DFA24C((*(&self->super.super.super.isa + v29))[2], v129, v130, v131, v132);
  if (LODWORD(v238[2]))
  {
    v135 = v133;
    v136 = 0;
    v227 = vdupq_n_s64(1uLL);
    do
    {
      v137 = v103;
      v138 = v109;
      objc_msgSend_encodeClearWithEncoder_buffer_bufferOffset_value_(self, v134, v61, v106, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v61, v139, v106, 0, 13);
      objc_msgSend_setBuffer_offset_atIndex_(v61, v140, v100, 0, 14);
      objc_msgSend_setBuffer_offset_atIndex_(v61, v141, v109, 0, 15);
      objc_msgSend_setBuffer_offset_atIndex_(v61, v142, v103, 0, 16);
      if (v135)
      {
        objc_msgSend_encodeIndirectDispatchWithEncoder_pipeline_threadCountBuffer_threadCountBufferOffset_indirectDispatchBuffer_indirectDispatchBufferOffset_(self, v143, v61, v231, v109, 0, v230, 0);
      }

      else
      {
        objc_msgSend_setComputePipelineState_(v61, v143, v231, v144, v145);
        *v240 = v228;
        *&v240[8] = v227;
        v236 = v229;
        v237 = v227;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v61, v146, v240, &v236, v147);
      }

      ++v136;
      v103 = v100;
      v109 = v106;
      v106 = v138;
      v100 = v137;
    }

    while (v136 < LODWORD(v238[2]));
  }

  else
  {
    v137 = v100;
    v138 = v106;
  }

  objc_msgSend_setBuffer_offset_atIndex_(v61, v134, *(self->_bvh + 12), 0, 0);
  v152 = objc_msgSend_boundingBoxCopyPipeline(self, v148, v149, v150, v151);
  objc_msgSend_setComputePipelineState_(v61, v153, v152, v154, v155);
  v235 = *(self->_bvh + 21);
  objc_msgSend_setBytes_length_atIndex_(v61, v156, &v235, 4, 30);
  v234 = *(self->_bvh + 22) == 1;
  objc_msgSend_setBytes_length_atIndex_(v61, v157, &v234, 1, 29);
  v162 = objc_msgSend_boundingBoxCopyPipeline(self, v158, v159, v160, v161);
  v167 = objc_msgSend_threadExecutionWidth(v162, v163, v164, v165, v166);
  *v240 = vdupq_n_s64(1uLL);
  *&v240[16] = 1;
  v236 = v167;
  v237 = *v240;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v61, v168, v240, &v236, v169);
  objc_msgSend_endEncoding(v61, v170, v171, v172, v173);
  if (v225)
  {
    objc_msgSend_addObject_(v225, v174, v226, v175, v176);
    objc_msgSend_addObject_(v225, v177, v223, v178, v179);
    objc_msgSend_addObject_(v225, v180, v222, v181, v182);
    transformBuffer = self->_transformBuffer;
    if (transformBuffer)
    {
      objc_msgSend_addObject_(v225, v183, transformBuffer, v184, v185);
    }

    objc_msgSend_addObject_(v225, v183, self->_instanceBuffer, v184, v185);
    v190 = self->_bvh;
    v191 = v190[15];
    if (v191)
    {
      objc_msgSend_addObject_(v225, v187, v191, v188, v189);
      v190 = self->_bvh;
    }

    objc_msgSend_addObject_(v225, v187, v190[12], v188, v189);
    v196 = objc_msgSend_boundingBoxCopyPipeline(self, v192, v193, v194, v195);
    objc_msgSend_addObject_(v225, v197, v196, v198, v199);
    objc_msgSend_addObject_(v225, v200, v137, v201, v202);
    objc_msgSend_addObject_(v225, v203, v103, v204, v205);
    objc_msgSend_addObject_(v225, v206, v138, v207, v208);
    objc_msgSend_addObject_(v225, v209, v109, v210, v211);
    objc_msgSend_addObject_(v225, v212, v230, v213, v214);
    v233[0] = MEMORY[0x277D85DD0];
    v233[1] = 3221225472;
    v233[2] = sub_239DF5D50;
    v233[3] = &unk_278B3B370;
    v233[4] = v225;
    objc_msgSend_addCompletedHandler_(bufferCopy, v215, v233, v216, v217);
  }

  v218 = self->_bvh;
  atomic_fetch_add(v218 + 2, 1u);
  v232[0] = MEMORY[0x277D85DD0];
  v232[1] = 3221225472;
  v232[2] = sub_239DF5D58;
  v232[3] = &unk_278B3BCE8;
  v232[4] = v218;
  objc_msgSend_addCompletedHandler_(bufferCopy, v219, v232, v220, v221);
}

@end