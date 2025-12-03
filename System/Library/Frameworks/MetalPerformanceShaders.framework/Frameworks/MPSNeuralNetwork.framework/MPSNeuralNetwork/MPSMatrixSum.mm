@interface MPSMatrixSum
- (MPSMatrixSum)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixSum)initWithDevice:(id)device count:(NSUInteger)count rows:(NSUInteger)rows columns:(NSUInteger)columns transpose:(BOOL)transpose;
- (void)encodeToCommandBuffer:(id)buffer encoder:(id)encoder sourceMatrices:(id)matrices resultMatrix:(id)matrix scaleVector:(id)vector offsetVector:(id)offsetVector biasVector:(id)biasVector startIndex:(unint64_t)self0;
- (void)encodeToCommandBuffer:(id)buffer sourceMatrices:(NSArray *)sourceMatrices resultMatrix:(MPSMatrix *)resultMatrix scaleVector:(MPSVector *)scaleVector offsetVector:(MPSVector *)offsetVector biasVector:(MPSVector *)biasVector startIndex:(NSUInteger)startIndex;
- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC;
- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin;
@end

@implementation MPSMatrixSum

- (MPSMatrixSum)initWithDevice:(id)device count:(NSUInteger)count rows:(NSUInteger)rows columns:(NSUInteger)columns transpose:(BOOL)transpose
{
  v12.receiver = self;
  v12.super_class = MPSMatrixSum;
  result = [(MPSKernel *)&v12 initWithDevice:device];
  if (result)
  {
    result->_rows = rows;
    result->_columns = columns;
    result->_count = count;
    result->_transpose = transpose;
    result->_neuronType = 0;
    result->_neuronA = 0.0;
    result->_neuronB = 0.0;
    result->_neuronC = 0.0;
    result->_resultMatrixOrigin.y = 0;
    result->_resultMatrixOrigin.z = 0;
    result->_resultMatrixOrigin.x = 0;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)buffer sourceMatrices:(NSArray *)sourceMatrices resultMatrix:(MPSMatrix *)resultMatrix scaleVector:(MPSVector *)scaleVector offsetVector:(MPSVector *)offsetVector biasVector:(MPSVector *)biasVector startIndex:(NSUInteger)startIndex
{
  v16 = objc_alloc(MEMORY[0x277CD7210]);
  v28 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v16, v17, buffer, 0, v18, v19, v20, v21);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v29 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v29 || (v30 = objc_opt_class(), v31 = NSStringFromClass(v30), objc_msgSend_setLabel_(self, v32, v31, v33, v34, v35, v36, v37), (v29 = v31) != 0))
    {
      objc_msgSend_setLabel_(v28, v22, v29, v23, v24, v25, v26, v27);
    }
  }

  objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrices_resultMatrix_scaleVector_offsetVector_biasVector_startIndex_(self, v22, buffer, v28, sourceMatrices, resultMatrix, scaleVector, offsetVector, biasVector, startIndex, v28, self);
  objc_msgSend_enumerateObjectsUsingBlock_(sourceMatrices, v38, &unk_284CC9FE8, v39, v40, v41, v42, v43);
  v51 = MEMORY[0x277CD74A0];
  if (scaleVector && *(&scaleVector[3].super.isa + *MEMORY[0x277CD74A0]))
  {
    MPSDecrementReadCount(scaleVector);
  }

  if (offsetVector && *(&offsetVector[3].super.isa + *v51))
  {
    MPSDecrementReadCount(offsetVector);
  }

  if (biasVector && *(&biasVector[3].super.isa + *v51))
  {
    MPSDecrementReadCount(biasVector);
  }

  objc_msgSend_endEncoding(v28, v44, v45, v46, v47, v48, v49, v50);
}

- (void)encodeToCommandBuffer:(id)buffer encoder:(id)encoder sourceMatrices:(id)matrices resultMatrix:(id)matrix scaleVector:(id)vector offsetVector:(id)offsetVector biasVector:(id)biasVector startIndex:(unint64_t)self0
{
  selfCopy = self;
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_count(matrices, a2, buffer, encoder, matrices, matrix, vector, offsetVector);
    if (objc_msgSend_count(matrices, v15, v16, v17, v18, v19, v20, v21) <= 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(matrix, v22, v23, v24, v25, v26, v27, v28) != 268435472)
    {
      objc_msgSend_dataType(matrix, v29, v30, v31, v32, v33, v34, v35);
    }

    if (objc_msgSend_dataType(matrix, v29, v30, v31, v32, v33, v34, v35) != 268435472 && objc_msgSend_dataType(matrix, a2, v36, encoder, matrices, matrix, vector, offsetVector) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (offsetVector)
    {
      objc_msgSend_dataType(offsetVector, a2, v36, encoder, matrices, matrix, vector, offsetVector);
      if (objc_msgSend_dataType(offsetVector, v37, v38, v39, v40, v41, v42, v43) != 32)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }
  }

  v426 = 0;
  v427 = &v426;
  v428 = 0x2020000000;
  v429 = -1;
  v425[0] = MEMORY[0x277D85DD0];
  v425[1] = 3221225472;
  v425[2] = sub_239D68920;
  v425[3] = &unk_278B37250;
  v425[4] = &v426;
  objc_msgSend_enumerateObjectsUsingBlock_(matrices, a2, v425, encoder, matrices, matrix, vector, offsetVector);
  if (v427[3])
  {
    v51 = 0;
    v415 = vdupq_n_s64(8uLL);
    v424 = selfCopy;
    do
    {
      x = selfCopy->_resultMatrixOrigin.x;
      y = selfCopy->_resultMatrixOrigin.y;
      z = selfCopy->_resultMatrixOrigin.z;
      v420 = objc_msgSend_dataType(matrix, v44, v45, v46, v47, v48, v49, v50);
      v418 = objc_msgSend_rowBytes(matrix, v54, v55, v56, v57, v58, v59, v60);
      v416 = objc_msgSend_matrixBytes(matrix, v61, v62, v63, v64, v65, v66, v67);
      v470 = 0;
      v471 = &v470;
      v472 = 0xB812000000;
      v473 = sub_239D68E48;
      v474 = nullsub_48;
      v475 = &unk_239DC72C3;
      v75 = objc_msgSend_rows(selfCopy, v68, v69, v70, v71, v72, v73, v74);
      *(v471 + 12) = v75;
      v83 = objc_msgSend_columns(selfCopy, v76, v77, v78, v79, v80, v81, v82);
      *(v471 + 13) = v83;
      v91 = objc_msgSend_neuronType(selfCopy, v84, v85, v86, v87, v88, v89, v90);
      *(v471 + 14) = v91;
      objc_msgSend_neuronA(selfCopy, v92, v93, v94, v95, v96, v97, v98);
      *(v471 + 15) = v99;
      objc_msgSend_neuronB(selfCopy, v100, v101, v102, v103, v104, v105, v106);
      *(v471 + 16) = v107;
      objc_msgSend_neuronC(selfCopy, v108, v109, v110, v111, v112, v113, v114);
      *(v471 + 17) = v115;
      v123 = objc_msgSend_rowBytes(matrix, v116, v117, v118, v119, v120, v121, v122);
      v124 = z;
      v125 = x;
      *(v471 + 18) = v123;
      v438 = 0;
      v439 = &v438;
      v440 = 0x1D012000000;
      v441 = sub_239D68E80;
      v442 = nullsub_49;
      v443 = "oi";
      v444 = 0u;
      v445 = 0u;
      v446 = 0u;
      v447 = 0u;
      v448 = 0u;
      v449 = 0u;
      v450 = 0u;
      v451 = 0u;
      v452 = 0u;
      v453 = 0u;
      v454 = 0u;
      v455 = 0u;
      v456 = 0u;
      v457 = 0u;
      v458 = 0u;
      v459 = 0u;
      v460 = 0u;
      v461 = 0u;
      v462 = 0u;
      v463 = 0u;
      v464 = 0u;
      v465 = 0u;
      v466 = 0u;
      v467 = 0u;
      v468 = 0u;
      v469 = 0u;
      objc_msgSend_transpose(selfCopy, v126, v127, v128, v129, v130, v131, v132);
      v140 = objc_msgSend_columns(selfCopy, v133, v134, v135, v136, v137, v138, v139);
      v148 = objc_msgSend_rows(selfCopy, v141, v142, v143, v144, v145, v146, v147);
      v156 = objc_msgSend_count(selfCopy, v149, v150, v151, v152, v153, v154, v155);
      v164 = y * (v420 >> 3) + v418 * v125 + v416 * v124;
      v421 = (v140 + 7) >> 3;
      v423 = v164;
      v419 = (v148 + 7) >> 3;
      if (v156 < 0x1B)
      {
        i = 0;
        biasVectorCopy2 = biasVector;
        v328 = objc_msgSend_count(v424, v157, v158, v159, v160, v161, v162, v163);
      }

      else
      {
        biasVectorCopy2 = biasVector;
        objc_msgSend_dataType(matrix, v157, v158, v159, v160, v161, v162, v163);
        v171 = objc_msgSend_subarrayWithRange_(matrices, v166, 0, 26, v167, v168, v169, v170);
        v437[0] = MEMORY[0x277D85DD0];
        v437[1] = 3221225472;
        v437[2] = sub_239D68E94;
        v437[3] = &unk_278B37288;
        v437[4] = &v438;
        v437[5] = &v470;
        v437[6] = v51;
        objc_msgSend_enumerateObjectsUsingBlock_(v171, v172, v437, v173, v174, v175, v176, v177);
        ComputeState = MPSLibrary::GetComputeState();
        objc_msgSend_setComputePipelineState_(encoder, v179, ComputeState, v180, v181, v182, v183, v184);
        if (offsetVector)
        {
          v192 = objc_msgSend_data(offsetVector, v185, v186, v187, v188, v189, v190, v191);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v193, v192, *(offsetVector + *MEMORY[0x277CD74A8]) + 8 * index, 0, v194, v195, v196);
        }

        if (vector)
        {
          v197 = objc_msgSend_data(vector, v185, v186, v187, v188, v189, v190, v191);
          v205 = objc_msgSend_dataType(vector, v198, v199, v200, v201, v202, v203, v204);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v206, v197, *(vector + *MEMORY[0x277CD74A8]) + (v205 >> 3) * index, 1, v207, v208, v209);
        }

        v210 = objc_msgSend_data(matrix, v185, v186, v187, v188, v189, v190, v191);
        v218 = objc_msgSend_matrixBytes(matrix, v211, v212, v213, v214, v215, v216, v217);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v219, v210, v423 + v218 * v51 + *(matrix + *MEMORY[0x277CD73A8]), 2, v220, v221, v222);
        objc_msgSend_setBytes_length_atIndex_(encoder, v223, (v471 + 6), 132, 3, v224, v225, v226);
        objc_msgSend_setBuffers_offsets_withRange_(encoder, v227, (v439 + 6), (v439 + 32), 4, 26, v228, v229);
        if (biasVector)
        {
          v237 = objc_msgSend_data(biasVector, v230, v231, v232, v233, v234, v235, v236);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v238, v237, *(biasVector + *MEMORY[0x277CD74A8]), 30, v239, v240, v241);
        }

        v434 = (v140 + 7) >> 3;
        v435 = (v148 + 7) >> 3;
        v436 = 1;
        v432 = v415;
        v433 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v230, &v434, &v432, v233, v234, v235, v236);
        for (i = 26; objc_msgSend_count(v424, v242, v243, v244, v245, v246, v247, v248) >= (i + 27); i += 26)
        {
          if (i == 26)
          {
            v257 = MPSLibrary::GetComputeState();
            objc_msgSend_setComputePipelineState_(encoder, v258, v257, v259, v260, v261, v262, v263);
          }

          v264 = objc_msgSend_subarrayWithRange_(matrices, v250, i, 26, v253, v254, v255, v256);
          v431[0] = MEMORY[0x277D85DD0];
          v431[1] = 3221225472;
          v431[2] = sub_239D68F30;
          v431[3] = &unk_278B37288;
          v431[4] = &v438;
          v431[5] = &v470;
          v431[6] = v51;
          objc_msgSend_enumerateObjectsUsingBlock_(v264, v265, v431, v266, v267, v268, v269, v270);
          if (offsetVector)
          {
            v278 = objc_msgSend_data(offsetVector, v271, v272, v273, v274, v275, v276, v277);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v279, v278, *(offsetVector + *MEMORY[0x277CD74A8]) + 8 * (i + index), 0, v280, v281, v282);
          }

          if (vector)
          {
            v283 = objc_msgSend_data(vector, v271, v272, v273, v274, v275, v276, v277);
            v291 = objc_msgSend_dataType(vector, v284, v285, v286, v287, v288, v289, v290);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v292, v283, *(vector + *MEMORY[0x277CD74A8]) + (i + index) * (v291 >> 3), 1, v293, v294, v295);
          }

          v296 = objc_msgSend_data(matrix, v271, v272, v273, v274, v275, v276, v277);
          v304 = objc_msgSend_matrixBytes(matrix, v297, v298, v299, v300, v301, v302, v303);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v305, v296, v304 * v51 + v423 + *(matrix + *MEMORY[0x277CD73A8]), 2, v306, v307, v308);
          objc_msgSend_setBytes_length_atIndex_(encoder, v309, (v471 + 6), 132, 3, v310, v311, v312);
          objc_msgSend_setBuffers_offsets_withRange_(encoder, v313, (v439 + 6), (v439 + 32), 4, 26, v314, v315);
          if (biasVector)
          {
            v323 = objc_msgSend_data(biasVector, v316, v317, v318, v319, v320, v321, v322);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v324, v323, *(biasVector + *MEMORY[0x277CD74A8]), 30, v325, v326, v327);
          }

          v434 = v421;
          v435 = v419;
          v436 = 1;
          v432 = vdupq_n_s64(8uLL);
          v433 = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v316, &v434, &v432, v319, v320, v321, v322);
        }

        v328 = objc_msgSend_count(v424, v250, v251, v252, v253, v254, v255, v256);
      }

      v336 = v328;
      objc_msgSend_dataType(matrix, v329, v330, v331, v332, v333, v334, v335);
      v337 = i;
      v338 = v336 - i;
      MPSLibrary::CreateUberShaderKey();
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      v345 = objc_msgSend_subarrayWithRange_(matrices, v340, v337, v338, v341, v342, v343, v344, 0, 0, 0, 0, 0);
      v430[0] = MEMORY[0x277D85DD0];
      v430[1] = 3221225472;
      v430[2] = sub_239D69100;
      v430[3] = &unk_278B37288;
      v430[4] = &v438;
      v430[5] = &v470;
      v430[6] = v51;
      objc_msgSend_enumerateObjectsUsingBlock_(v345, v346, v430, v347, v348, v349, v350, v351);
      objc_msgSend_setComputePipelineState_(encoder, v352, PipelineStateForMPSKey, v353, v354, v355, v356, v357);
      MPSLibrary::ReleaseMPSKey();
      if (offsetVector)
      {
        v365 = objc_msgSend_data(offsetVector, v358, v359, v360, v361, v362, v363, v364);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v366, v365, *(offsetVector + *MEMORY[0x277CD74A8]) + 8 * (v337 + index), 0, v367, v368, v369);
      }

      if (vector)
      {
        v370 = objc_msgSend_data(vector, v358, v359, v360, v361, v362, v363, v364);
        v378 = objc_msgSend_dataType(vector, v371, v372, v373, v374, v375, v376, v377);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v379, v370, *(vector + *MEMORY[0x277CD74A8]) + (v337 + index) * (v378 >> 3), 1, v380, v381, v382);
      }

      v383 = objc_msgSend_data(matrix, v358, v359, v360, v361, v362, v363, v364);
      v391 = objc_msgSend_matrixBytes(matrix, v384, v385, v386, v387, v388, v389, v390);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v392, v383, v391 * v51 + v423 + *(matrix + *MEMORY[0x277CD73A8]), 2, v393, v394, v395);
      objc_msgSend_setBytes_length_atIndex_(encoder, v396, (v471 + 6), 132, 3, v397, v398, v399);
      objc_msgSend_setBuffers_offsets_withRange_(encoder, v400, (v439 + 6), (v439 + 32), 4, v338, v401, v402);
      if (biasVectorCopy2)
      {
        v410 = objc_msgSend_data(biasVectorCopy2, v403, v404, v405, v406, v407, v408, v409);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v411, v410, *&biasVectorCopy2[*MEMORY[0x277CD74A8]], 30, v412, v413, v414);
      }

      v434 = v421;
      v435 = v419;
      v436 = 1;
      v432 = vdupq_n_s64(8uLL);
      v433 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v403, &v434, &v432, v406, v407, v408, v409);
      _Block_object_dispose(&v438, 8);
      _Block_object_dispose(&v470, 8);
      ++v51;
      selfCopy = v424;
    }

    while (v51 < v427[3]);
  }

  _Block_object_dispose(&v426, 8);
}

- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC
{
  if (neuronType == MPSCNNNeuronTypePReLU)
  {
    selfCopy = self;
    v7 = parameterC;
    v8 = parameterB;
    v9 = parameterA;
    v10 = neuronType;
    v11 = MTLReportFailureTypeEnabled();
    neuronType = v10;
    parameterA = v9;
    parameterB = v8;
    parameterC = v7;
    v12 = v11;
    self = selfCopy;
    if (v12)
    {
      MTLReportFailure();
      neuronType = v10;
      parameterA = v9;
      self = selfCopy;
      parameterB = v8;
      parameterC = v7;
    }
  }

  self->_neuronType = neuronType;
  self->_neuronA = parameterA;
  self->_neuronB = parameterB;
  self->_neuronC = parameterC;
}

- (MPSMatrixSum)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v81.receiver = self;
  v81.super_class = MPSMatrixSum;
  v5 = [(MPSKernel *)&v81 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (v5)
  {
    if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v5->_rows = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSMatrixSum.rows", v7, v8, v9, v10, v11);
      v12->_columns = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSMatrixSum.columns", v14, v15, v16, v17, v18);
      v12->_count = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSMatrixSum.count", v20, v21, v22, v23, v24);
      v12->_transpose = objc_msgSend_decodeBoolForKey_(aDecoder, v25, @"MPSMatrixSum.transpose", v26, v27, v28, v29, v30);
      v12->_neuronType = objc_msgSend_decodeInt32ForKey_(aDecoder, v31, @"MPSMatrixSum.neuronType", v32, v33, v34, v35, v36);
      objc_msgSend_decodeFloatForKey_(aDecoder, v37, @"MPSMatrixSum.neuronA", v38, v39, v40, v41, v42);
      v12->_neuronA = v43;
      objc_msgSend_decodeFloatForKey_(aDecoder, v44, @"MPSMatrixSum.neuronB", v45, v46, v47, v48, v49);
      v12->_neuronB = v50;
      objc_msgSend_decodeFloatForKey_(aDecoder, v51, @"MPSMatrixSum.neuronC", v52, v53, v54, v55, v56);
      v12->_neuronC = v57;
      v64 = objc_msgSend_decodeInt64ForKey_(aDecoder, v58, @"MPSMatrixSum.resultOrigin.x", v59, v60, v61, v62, v63);
      v71 = objc_msgSend_decodeInt64ForKey_(aDecoder, v65, @"MPSMatrixSum.resultOrigin.y", v66, v67, v68, v69, v70);
      v78 = objc_msgSend_decodeInt64ForKey_(aDecoder, v72, @"MPSMatrixSum.resultOrigin.z", v73, v74, v75, v76, v77);
      v12->_resultMatrixOrigin.x = v64;
      v12->_resultMatrixOrigin.y = v71;
      v12->_resultMatrixOrigin.z = v78;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v79 = objc_opt_class();
        NSStringFromClass(v79);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v12;
}

- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin
{
  z = resultMatrixOrigin->z;
  *&self->_resultMatrixOrigin.x = *&resultMatrixOrigin->x;
  self->_resultMatrixOrigin.z = z;
}

@end