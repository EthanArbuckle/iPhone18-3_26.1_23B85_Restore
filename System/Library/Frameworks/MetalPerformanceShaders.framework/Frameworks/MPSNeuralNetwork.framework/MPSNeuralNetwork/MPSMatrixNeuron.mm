@interface MPSMatrixNeuron
- (MPSMatrixNeuron)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSMatrixNeuron)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixNeuron)initWithDevice:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix biasVector:(MPSVector *)biasVector resultMatrix:(MPSMatrix *)resultMatrix;
- (void)encodeWithCoder:(id)coder;
- (void)setNeuronToPReLUWithParametersA:(NSData *)A;
- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC;
@end

@implementation MPSMatrixNeuron

- (MPSMatrixNeuron)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixNeuron;
  result = [(MPSMatrixUnaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_alpha = 1.0;
    result->_sourceNumberOfFeatureVectors = -1;
    result->_sourceInputFeatureChannels = -1;
    result->_neuronType = 0;
    result->_neuronA = 0.0;
    result->_neuronB = 0.0;
    result->_neuronC = 0.0;
    result->neuronAParamBuf = 0;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix biasVector:(MPSVector *)biasVector resultMatrix:(MPSMatrix *)resultMatrix
{
  v13 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v13) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v653 = objc_opt_class();
      v658 = NSStringFromClass(v653);
      MTLReportFailure();
    }

    if (!inputMatrix && MTLReportFailureTypeEnabled())
    {
      v654 = objc_opt_class();
      v658 = NSStringFromClass(v654);
      MTLReportFailure();
    }

    if (!resultMatrix && MTLReportFailureTypeEnabled())
    {
      v655 = objc_opt_class();
      v658 = NSStringFromClass(v655);
      MTLReportFailure();
    }

    objc_msgSend_sourceMatrixOrigin(self, a2, commandBuffer, inputMatrix, biasVector, resultMatrix, v6, v7, v658);
    objc_msgSend_sourceMatrixOrigin(self, v14, v15, v16, v17, v18, v19, v20);
    if (v680 && MTLReportFailureTypeEnabled())
    {
      v656 = objc_opt_class();
      v659 = NSStringFromClass(v656);
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v21, v22, v23, v24, v25, v26, v27, v659);
    objc_msgSend_resultMatrixOrigin(self, v28, v29, v30, v31, v32, v33, v34);
    if (v680 && MTLReportFailureTypeEnabled())
    {
      v657 = objc_opt_class();
      v660 = NSStringFromClass(v657);
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(resultMatrix, v35, v36, v37, v38, v39, v40, v41, v660) != 268435488)
    {
      objc_msgSend_dataType(resultMatrix, v42, v43, v44, v45, v46, v47, v48);
    }

    if (objc_msgSend_dataType(resultMatrix, v42, v43, v44, v45, v46, v47, v48) != 268435488 && objc_msgSend_dataType(resultMatrix, v49, v50, v51, v52, v53, v54, v55) != 268435472 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (biasVector)
    {
      objc_msgSend_dataType(biasVector, v49, v50, v51, v52, v53, v54, v55);
      if (objc_msgSend_dataType(biasVector, v56, v57, v58, v59, v60, v61, v62) != 268435488)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }

    if (objc_msgSend_dataType(inputMatrix, v49, v50, v51, v52, v53, v54, v55) != 268435488)
    {
      objc_msgSend_dataType(inputMatrix, v63, v64, v65, v66, v67, v68, v69);
    }

    if (objc_msgSend_dataType(inputMatrix, v63, v64, v65, v66, v67, v68, v69) != 268435488 && objc_msgSend_dataType(inputMatrix, v70, v71, v72, v73, v74, v75, v76) != 268435472 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(inputMatrix, v70, v71, v72, v73, v74, v75, v76);
    objc_msgSend_dataType(resultMatrix, v77, v78, v79, v80, v81, v82, v83);
    v91 = objc_msgSend_dataType(inputMatrix, v84, v85, v86, v87, v88, v89, v90);
    if (v91 != objc_msgSend_dataType(resultMatrix, v92, v93, v94, v95, v96, v97, v98) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_matrices(inputMatrix, v99, v100, v101, v102, v103, v104, v105);
    objc_msgSend_batchStart(self, v106, v107, v108, v109, v110, v111, v112);
    v120 = objc_msgSend_matrices(inputMatrix, v113, v114, v115, v116, v117, v118, v119);
    if (v120 <= objc_msgSend_batchStart(self, v121, v122, v123, v124, v125, v126, v127) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_matrices(resultMatrix, v128, v129, v130, v131, v132, v133, v134);
    objc_msgSend_batchStart(self, v135, v136, v137, v138, v139, v140, v141);
    v149 = objc_msgSend_matrices(resultMatrix, v142, v143, v144, v145, v146, v147, v148);
    if (v149 <= objc_msgSend_batchStart(self, v150, v151, v152, v153, v154, v155, v156) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (biasVector)
    {
      objc_msgSend_vectors(biasVector, v157, v158, v159, v160, v161, v162, v163);
      objc_msgSend_batchStart(self, v164, v165, v166, v167, v168, v169, v170);
      v178 = objc_msgSend_vectors(biasVector, v171, v172, v173, v174, v175, v176, v177);
      if (v178 <= objc_msgSend_batchStart(self, v179, v180, v181, v182, v183, v184, v185))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }

    objc_msgSend_columns(inputMatrix, v157, v158, v159, v160, v161, v162, v163);
    objc_msgSend_sourceMatrixOrigin(self, v186, v187, v188, v189, v190, v191, v192);
    v200 = objc_msgSend_columns(inputMatrix, v193, v194, v195, v196, v197, v198, v199);
    objc_msgSend_sourceMatrixOrigin(self, v201, v202, v203, v204, v205, v206, v207);
    if (v200 <= v679 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_rows(inputMatrix, v208, v209, v210, v211, v212, v213, v214);
    objc_msgSend_sourceMatrixOrigin(self, v215, v216, v217, v218, v219, v220, v221);
    v229 = objc_msgSend_rows(inputMatrix, v222, v223, v224, v225, v226, v227, v228);
    objc_msgSend_sourceMatrixOrigin(self, v230, v231, v232, v233, v234, v235, v236);
    if (v229 <= v678 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (self->_neuronType == 10)
    {
      if (self->neuronAParamBuf)
      {
        goto LABEL_26;
      }

      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (self->neuronAParamBuf)
      {
LABEL_26:
        v244 = objc_msgSend_columns(inputMatrix, v237, v238, v239, v240, v241, v242, v243);
        objc_msgSend_sourceMatrixOrigin(self, v245, v246, v247, v248, v249, v250, v251);
        if (v244 - v679 >= self->_sourceInputFeatureChannels)
        {
          sourceInputFeatureChannels = self->_sourceInputFeatureChannels;
        }

        else
        {
          sourceInputFeatureChannels = v244 - v679;
        }

        objc_msgSend_length(self->neuronAParamBuf, v252, v253, v254, v255, v256, v257, v258);
        if (objc_msgSend_length(self->neuronAParamBuf, v260, v261, v262, v263, v264, v265, v266) < 4 * sourceInputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }
  }

  v267 = objc_alloc(MEMORY[0x277CD7210]);
  v672 = commandBuffer;
  v280 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v267, v268, commandBuffer, 0, v269, v270, v271, v272);
  if ((*(&self->super.super.super.isa + v13) & 0x18) != 0)
  {
    v274 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v274 || (v281 = objc_opt_class(), v282 = NSStringFromClass(v281), objc_msgSend_setLabel_(self, v283, v282, v284, v285, v286, v287, v288), (v274 = v282) != 0))
    {
      objc_msgSend_setLabel_(v280, v273, v274, v275, v276, v277, v278, v279);
    }
  }

  if (objc_msgSend_batchSize(self, v273, v274, v275, v276, v277, v278, v279))
  {
    v296 = objc_msgSend_batchStart(self, v289, v290, v291, v292, v293, v294, v295);
    if (v296 >= objc_msgSend_matrices(inputMatrix, v297, v298, v299, v300, v301, v302, v303))
    {
      v319 = 0;
    }

    else
    {
      v311 = objc_msgSend_matrices(inputMatrix, v304, v305, v306, v307, v308, v309, v310);
      v319 = v311 - objc_msgSend_batchStart(self, v312, v313, v314, v315, v316, v317, v318);
    }

    v320 = objc_msgSend_batchStart(self, v304, v305, v306, v307, v308, v309, v310);
    if (v320 >= objc_msgSend_matrices(resultMatrix, v321, v322, v323, v324, v325, v326, v327))
    {
      v343 = 0;
      if (!biasVector)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v335 = objc_msgSend_matrices(resultMatrix, v328, v329, v330, v331, v332, v333, v334);
      v343 = v335 - objc_msgSend_batchStart(self, v336, v337, v338, v339, v340, v341, v342);
      if (!biasVector)
      {
LABEL_40:
        v351 = objc_msgSend_batchSize(self, v328, v329, v330, v331, v332, v333, v334);
        goto LABEL_45;
      }
    }

    v352 = objc_msgSend_batchStart(self, v328, v329, v330, v331, v332, v333, v334);
    if (v352 >= objc_msgSend_vectors(biasVector, v353, v354, v355, v356, v357, v358, v359))
    {
      v351 = 0;
    }

    else
    {
      v360 = objc_msgSend_vectors(biasVector, v344, v345, v346, v347, v348, v349, v350);
      v351 = v360 - objc_msgSend_batchStart(self, v361, v362, v363, v364, v365, v366, v367);
    }

LABEL_45:
    v368 = objc_msgSend_batchSize(self, v344, v345, v346, v347, v348, v349, v350);
    if (v319 >= v351)
    {
      v376 = v351;
    }

    else
    {
      v376 = v319;
    }

    if (v376 >= v343)
    {
      v376 = v343;
    }

    if (v376 >= v368)
    {
      v376 = v368;
    }

    v673 = v376;
    v377 = objc_msgSend_columns(inputMatrix, v369, v370, v371, v372, v373, v374, v375);
    objc_msgSend_sourceMatrixOrigin(self, v378, v379, v380, v381, v382, v383, v384);
    v392 = objc_msgSend_sourceInputFeatureChannels(self, v385, v386, v387, v388, v389, v390, v391);
    if (v377 - v679 >= v392)
    {
      v400 = v392;
    }

    else
    {
      v400 = v377 - v679;
    }

    objc_msgSend_sourceMatrixOrigin(self, v393, v394, v395, v396, v397, v398, v399);
    if (v679 >= objc_msgSend_columns(inputMatrix, v401, v402, v403, v404, v405, v406, v407))
    {
      v415 = 0;
    }

    else
    {
      v415 = v400;
    }

    v416 = objc_msgSend_rows(inputMatrix, v408, v409, v410, v411, v412, v413, v414);
    objc_msgSend_sourceMatrixOrigin(self, v417, v418, v419, v420, v421, v422, v423);
    v431 = objc_msgSend_sourceNumberOfFeatureVectors(self, v424, v425, v426, v427, v428, v429, v430);
    if (v416 - v678 >= v431)
    {
      v439 = v431;
    }

    else
    {
      v439 = v416 - v678;
    }

    objc_msgSend_sourceMatrixOrigin(self, v432, v433, v434, v435, v436, v437, v438);
    if (v678 >= objc_msgSend_rows(inputMatrix, v440, v441, v442, v443, v444, v445, v446))
    {
      v447 = 0;
    }

    else
    {
      v447 = v439;
    }

    if (v415 && v447 && v673)
    {
      v448 = objc_msgSend_batchStart(self, v289, v290, v291, v292, v293, v294, v295);
      objc_msgSend_sourceMatrixOrigin(self, v449, v450, v451, v452, v453, v454, v455);
      v671 = v679;
      v670 = objc_msgSend_dataType(inputMatrix, v456, v457, v458, v459, v460, v461, v462);
      objc_msgSend_sourceMatrixOrigin(self, v463, v464, v465, v466, v467, v468, v469);
      v669 = objc_msgSend_rowBytes(inputMatrix, v470, v471, v472, v473, v474, v475, v476);
      v668 = objc_msgSend_matrixBytes(inputMatrix, v477, v478, v479, v480, v481, v482, v483);
      v491 = MEMORY[0x277CD73A8];
      v667 = *(&inputMatrix->super.isa + *MEMORY[0x277CD73A8]);
      if (biasVector)
      {
        v661 = *(&biasVector->super.isa + *MEMORY[0x277CD74A8]) + objc_msgSend_vectorBytes(biasVector, v484, v485, v486, v487, v488, v489, v490) * v448;
      }

      else
      {
        v661 = 0;
      }

      objc_msgSend_resultMatrixOrigin(self, v484, v485, v486, v487, v488, v489, v490);
      v666 = v679;
      v665 = objc_msgSend_dataType(resultMatrix, v492, v493, v494, v495, v496, v497, v498);
      objc_msgSend_resultMatrixOrigin(self, v499, v500, v501, v502, v503, v504, v505);
      v664 = objc_msgSend_rowBytes(resultMatrix, v506, v507, v508, v509, v510, v511, v512);
      v663 = objc_msgSend_matrixBytes(resultMatrix, v513, v514, v515, v516, v517, v518, v519);
      v662 = *(&resultMatrix->super.isa + *v491);
      objc_msgSend_neuronType(self, v520, v521, v522, v523, v524, v525, v526);
      objc_msgSend_dataType(inputMatrix, v527, v528, v529, v530, v531, v532, v533);
      ComputeState = MPSLibrary::GetComputeState();
      alpha = self->_alpha;
      v683 = alpha;
      v681 = objc_msgSend_vectorBytes(biasVector, v536, v537, v538, v539, v540, v541, v542);
      LODWORD(v680) = objc_msgSend_matrixBytes(inputMatrix, v543, v544, v545, v546, v547, v548, v549);
      LODWORD(v679) = objc_msgSend_rowBytes(inputMatrix, v550, v551, v552, v553, v554, v555, v556);
      HIDWORD(v680) = objc_msgSend_matrixBytes(resultMatrix, v557, v558, v559, v560, v561, v562, v563);
      HIDWORD(v679) = objc_msgSend_rowBytes(resultMatrix, v564, v565, v566, v567, v568, v569, v570);
      v678 = __PAIR64__(v447, v415);
      neuronB = self->_neuronB;
      neuronA = self->_neuronA;
      v685 = neuronB;
      neuronC = self->_neuronC;
      v682 = objc_msgSend_neuronType(self, v572, v573, v574, v575, v576, v577, v578);
      v592 = 4 * objc_msgSend_threadExecutionWidth(ComputeState, v579, v580, v581, v582, v583, v584, v585);
      if (v592)
      {
        v593 = (v415 + v592 - 1) / v592;
      }

      else
      {
        v593 = 0;
      }

      objc_msgSend_setComputePipelineState_(v280, v586, ComputeState, v587, v588, v589, v590, v591);
      v601 = objc_msgSend_data(inputMatrix, v594, v595, v596, v597, v598, v599, v600);
      objc_msgSend_setBuffer_offset_atIndex_(v280, v602, v601, v671 * (v670 >> 3) + v669 * v677[0] + v668 * v448 + v667, 0, v603, v604, v605);
      if (biasVector)
      {
        v613 = objc_msgSend_data(biasVector, v606, v607, v608, v609, v610, v611, v612);
        objc_msgSend_setBuffer_offset_atIndex_(v280, v614, v613, v661, 1, v615, v616, v617);
      }

      v618 = objc_msgSend_data(resultMatrix, v606, v607, v608, v609, v610, v611, v612);
      objc_msgSend_setBuffer_offset_atIndex_(v280, v619, v618, v666 * (v665 >> 3) + v664 * v677[0] + v663 * v448 + v662, 2, v620, v621, v622);
      objc_msgSend_setBytes_length_atIndex_(v280, v623, &v678, 48, 3, v624, v625, v626);
      if (objc_msgSend_neuronType(self, v627, v628, v629, v630, v631, v632, v633) == 10)
      {
        objc_msgSend_setBuffer_offset_atIndex_(v280, v634, self->neuronAParamBuf, 0, 4, v636, v637, v638);
        if ((objc_msgSend_retainedReferences(v672, v639, v640, v641, v642, v643, v644, v645) & 1) == 0)
        {
          v646 = self->neuronAParamBuf;
          v677[0] = MEMORY[0x277D85DD0];
          v677[1] = 3221225472;
          v677[2] = sub_239BF7CF0;
          v677[3] = &unk_278B28F28;
          v677[4] = self;
          objc_msgSend_addCompletedHandler_(v672, v647, v677, v648, v649, v650, v651, v652);
        }
      }

      v676[0] = v593;
      v676[1] = v447;
      v676[2] = v673;
      v674 = v592;
      v675 = vdupq_n_s64(1uLL);
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v280, v634, v676, &v674, v635, v636, v637, v638);
      MPSLibrary::ReleaseComputeState();
    }
  }

  if (*(&inputMatrix[3].super.isa + *MEMORY[0x277CD7388]))
  {
    MPSDecrementReadCount(inputMatrix);
  }

  if (biasVector && *(&biasVector[3].super.isa + *MEMORY[0x277CD74A0]))
  {
    MPSDecrementReadCount(biasVector);
  }

  objc_msgSend_endEncoding(v280, v289, v290, v291, v292, v293, v294, v295);
}

- (MPSMatrixNeuron)copyWithZone:(NSZone *)zone device:(id)device
{
  v12.receiver = self;
  v12.super_class = MPSMatrixNeuron;
  result = [(MPSMatrixUnaryKernel *)&v12 copyWithZone:zone device:?];
  result->_sourceNumberOfFeatureVectors = self->_sourceNumberOfFeatureVectors;
  result->_sourceInputFeatureChannels = self->_sourceInputFeatureChannels;
  result->_alpha = self->_alpha;
  neuronType = self->_neuronType;
  result->_neuronType = neuronType;
  result->_neuronA = self->_neuronA;
  result->_neuronB = self->_neuronB;
  result->_neuronC = self->_neuronC;
  if (neuronType == 10)
  {
    neuronAParamBuf = self->neuronAParamBuf;
    v9 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2];
    v10 = result;
    v11 = sub_239BF59C0(neuronAParamBuf, device, v9);
    result = v10;
    v10->neuronAParamBuf = v11;
  }

  return result;
}

- (MPSMatrixNeuron)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v57.receiver = self;
  v57.super_class = MPSMatrixNeuron;
  v6 = [MPSMatrixUnaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
    {
      if (MTLReportFailureTypeEnabled())
      {
LABEL_8:
        v55 = objc_opt_class();
        NSStringFromClass(v55);
        MTLReportFailure();
      }

LABEL_9:

      return 0;
    }

    objc_msgSend_decodeDoubleForKey_(aDecoder, v7, @"MPSMatrixFullyConnected._alpha;", v8, v9, v10, v11, v12);
    v13->_alpha = v14;
    v13->_sourceNumberOfFeatureVectors = objc_msgSend_decodeInt64ForKey_(aDecoder, v15, @"MPSMatrixFullyConnected._sourceNumberOfFeatureVectors;", v16, v17, v18, v19, v20);
    v13->_sourceInputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v21, @"MPSMatrixFullyConnected._sourceInputFeatureChannels;", v22, v23, v24, v25, v26);
    v13->_neuronType = objc_msgSend_decodeInt32ForKey_(aDecoder, v27, @"MPSMatrixFullyConnected._neuronType;", v28, v29, v30, v31, v32);
    objc_msgSend_decodeFloatForKey_(aDecoder, v33, @"MPSMatrixFullyConnected._neuronA;", v34, v35, v36, v37, v38);
    v13->_neuronA = v39;
    objc_msgSend_decodeFloatForKey_(aDecoder, v40, @"MPSMatrixFullyConnected._neuronB;", v41, v42, v43, v44, v45);
    v13->_neuronB = v46;
    objc_msgSend_decodeFloatForKey_(aDecoder, v47, @"MPSMatrixFullyConnected._neuronC;", v48, v49, v50, v51, v52);
    v13->_neuronC = v53;
    v13->neuronAParamBuf = 0;
    if (v13->_neuronType == 10)
    {
      v54 = sub_239BF5D38(aDecoder, device);
      v13->neuronAParamBuf = v54;
      if (!v54)
      {
        if (MTLReportFailureTypeEnabled())
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v61.receiver = self;
  v61.super_class = MPSMatrixNeuron;
  [(MPSMatrixUnaryKernel *)&v61 encodeWithCoder:?];
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"MPSMatrixFullyConnected._alpha;", v6, v7, v8, v9, v10, self->_alpha);
  objc_msgSend_encodeInt64_forKey_(coder, v11, self->_sourceNumberOfFeatureVectors, @"MPSMatrixFullyConnected._sourceNumberOfFeatureVectors;", v12, v13, v14, v15);
  objc_msgSend_encodeInt64_forKey_(coder, v16, self->_sourceInputFeatureChannels, @"MPSMatrixFullyConnected._sourceInputFeatureChannels;", v17, v18, v19, v20);
  objc_msgSend_encodeInt32_forKey_(coder, v21, self->_neuronType, @"MPSMatrixFullyConnected._neuronType;", v22, v23, v24, v25);
  *&v26 = self->_neuronA;
  objc_msgSend_encodeFloat_forKey_(coder, v27, @"MPSMatrixFullyConnected._neuronA;", v28, v29, v30, v31, v32, v26);
  *&v33 = self->_neuronB;
  objc_msgSend_encodeFloat_forKey_(coder, v34, @"MPSMatrixFullyConnected._neuronB;", v35, v36, v37, v38, v39, v33);
  *&v40 = self->_neuronC;
  objc_msgSend_encodeFloat_forKey_(coder, v41, @"MPSMatrixFullyConnected._neuronC;", v42, v43, v44, v45, v46, v40);
  if (self->_neuronType == 10)
  {
    neuronAParamBuf = self->neuronAParamBuf;
    if (neuronAParamBuf)
    {
      v55 = objc_msgSend_length(neuronAParamBuf, v47, v48, v49, v50, v51, v52, v53);
      sub_239BF605C(coder, neuronAParamBuf, v55 >> 2, v56, v57, v58, v59, v60);
    }
  }
}

- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC
{
  if (neuronType == MPSCNNNeuronTypePReLU && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (self->_neuronType == 10)
  {

    self->neuronAParamBuf = 0;
  }

  self->_neuronType = neuronType;
  self->_neuronA = parameterA;
  self->_neuronB = parameterB;
  self->_neuronC = parameterC;
}

- (void)setNeuronToPReLUWithParametersA:(NSData *)A
{
  self->_neuronType = 10;
  self->_neuronA = 0.0;
  self->_neuronB = 0.0;
  self->_neuronC = 0.0;
  v10 = *MEMORY[0x277CD7350];
  v11 = *(&self->super.super.super.isa + v10);
  if (v11)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_msgSend_length(A, a2, A, v3, v4, v5, v6, v7);
  v14 = (*(**(&self->super.super.super.isa + v10) + 40))(*(&self->super.super.super.isa + v10));
  v15 = (*(**(&self->super.super.super.isa + v10) + 24))(*(&self->super.super.super.isa + v10));
  v21 = objc_msgSend_newBufferWithLength_options_(v12, v16, v13, v14 | (16 * v15), v17, v18, v19, v20);
  self->neuronAParamBuf = v21;
  if (v21)
  {
    v29 = objc_msgSend_contents(v21, v22, v23, v24, v25, v26, v27, v28);
    v37 = objc_msgSend_bytes(A, v30, v31, v32, v33, v34, v35, v36);
    v45 = objc_msgSend_length(A, v38, v39, v40, v41, v42, v43, v44);

    memcpy(v29, v37, v45);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixNeuron;
  [(MPSKernel *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSMatrixNeuron;
  v4 = [(MPSMatrixUnaryKernel *)&v13 debugDescription];
  alpha = self->_alpha;
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@\n\tsourceNumberOfFeatureVectors:  \t%lu\n\tsourceInputFeatureChannels:  \t%lu\n\talpha:\t%f\n\tneuronType:  \t%lu\n\tneuronParamA:  \t%f\n\tneuronParamB:  \t%f\n\tneuronParamC:  \t%f", v7, v8, v9, v10, v11, v4, self->_sourceNumberOfFeatureVectors, self->_sourceInputFeatureChannels, alpha, self->_neuronType, self->_neuronA, self->_neuronB, self->_neuronC);
}

@end