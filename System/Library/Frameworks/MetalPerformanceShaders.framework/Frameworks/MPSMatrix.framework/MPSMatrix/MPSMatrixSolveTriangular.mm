@interface MPSMatrixSolveTriangular
- (MPSMatrixSolveTriangular)initWithDevice:(id)device right:(BOOL)right upper:(BOOL)upper transpose:(BOOL)transpose unit:(BOOL)unit order:(NSUInteger)order numberOfRightHandSides:(NSUInteger)numberOfRightHandSides alpha:(double)alpha;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer encoder:(id)encoder sourceMatrix:(id)matrix rightHandSideMatrix:(id)sideMatrix solutionMatrix:(id)solutionMatrix;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix rightHandSideMatrix:(MPSMatrix *)rightHandSideMatrix solutionMatrix:(MPSMatrix *)solutionMatrix;
@end

@implementation MPSMatrixSolveTriangular

- (MPSMatrixSolveTriangular)initWithDevice:(id)device right:(BOOL)right upper:(BOOL)upper transpose:(BOOL)transpose unit:(BOOL)unit order:(NSUInteger)order numberOfRightHandSides:(NSUInteger)numberOfRightHandSides alpha:(double)alpha
{
  v76.receiver = self;
  v76.super_class = MPSMatrixSolveTriangular;
  v17 = [(MPSMatrixBinaryKernel *)&v76 initWithDevice:?];
  v24 = v17;
  if (v17)
  {
    v25 = (*(&v17->super.super.super.isa + *MEMORY[0x277CD7350]))[369];
    v73 = 0;
    v74 = 0;
    v75 = 0;
    objc_msgSend_setResultMatrixOrigin_(v17, v18, &v73, v19, v20, v21, v22, v23);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    objc_msgSend_setPrimarySourceMatrixOrigin_(v24, v26, &v73, v27, v28, v29, v30, v31);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    objc_msgSend_setSecondarySourceMatrixOrigin_(v24, v32, &v73, v33, v34, v35, v36, v37);
    v24->_right = right;
    v24->_upper = upper;
    v24->_transpose = transpose;
    v24->_unit = unit;
    v24->_order = order;
    v24->_numberOfRightHandSides = numberOfRightHandSides;
    v24->_alpha = alpha;
    if ((v25 & 0x400) != 0)
    {
      v41 = 32;
    }

    else
    {
      v41 = 64;
    }

    if ((v25 & 0x400) != 0)
    {
      v42 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v38, numberOfRightHandSides + order, v41, 128, 268435488, v39, v40);
    }

    else
    {
      v42 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v38, numberOfRightHandSides + order, v41, 256, 268435488, v39, v40);
    }

    v50 = v42;
    v51 = objc_msgSend_rows(v42, v43, v44, v45, v46, v47, v48, v49);
    v59 = objc_msgSend_rowBytes(v50, v52, v53, v54, v55, v56, v57, v58);
    v65 = objc_msgSend_newBufferWithLength_options_(device, v60, v59 * v51, 32, v61, v62, v63, v64);
    v66 = objc_alloc(MEMORY[0x277CD7250]);
    v24->_workspace = objc_msgSend_initWithBuffer_descriptor_(v66, v67, v65, v50, v68, v69, v70, v71);
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v149.receiver = self;
  v149.super_class = MPSMatrixSolveTriangular;
  v6 = [(MPSMatrixBinaryKernel *)&v149 copyWithZone:zone device:?];
  v14 = v6;
  if (v6)
  {
    if (self)
    {
      objc_msgSend_resultMatrixOrigin(self, v7, v8, v9, v10, v11, v12, v13);
      v145 = v147;
      v146 = v148;
      objc_msgSend_setResultMatrixOrigin_(v14, v15, &v145, v16, v17, v18, v19, v20);
      objc_msgSend_primarySourceMatrixOrigin(self, v21, v22, v23, v24, v25, v26, v27);
      v145 = v143;
      v146 = v144;
      objc_msgSend_setPrimarySourceMatrixOrigin_(v14, v28, &v145, v29, v30, v31, v32, v33);
      objc_msgSend_secondarySourceMatrixOrigin(self, v34, v35, v36, v37, v38, v39, v40);
    }

    else
    {
      v147 = 0uLL;
      v148 = 0;
      v145 = 0uLL;
      v146 = 0;
      objc_msgSend_setResultMatrixOrigin_(v6, v7, &v145, v9, v10, v11, v12, v13);
      v145 = 0uLL;
      v146 = 0;
      objc_msgSend_setPrimarySourceMatrixOrigin_(v14, v47, &v145, v48, v49, v50, v51, v52);
      v142 = 0;
      v141 = 0uLL;
    }

    v145 = v141;
    v146 = v142;
    objc_msgSend_setSecondarySourceMatrixOrigin_(v14, v41, &v145, v42, v43, v44, v45, v46, v141, v142);
    *(v14 + 176) = self->_right;
    *(v14 + 177) = self->_upper;
    *(v14 + 178) = self->_transpose;
    *(v14 + 179) = self->_unit;
    *(v14 + 23) = self->_order;
    *(v14 + 24) = self->_numberOfRightHandSides;
    *(v14 + 25) = *&self->_alpha;
    v60 = objc_msgSend_device(self, v53, v54, v55, v56, v57, v58, v59);
    v68 = objc_msgSend_device(v14, v61, v62, v63, v64, v65, v66, v67);
    if (self->_workspace)
    {
      if (objc_msgSend_isEqual_(v60, v69, v68, v70, v71, v72, v73, v74))
      {
        *(v14 + 26) = self->_workspace;
      }

      else
      {
        v82 = MEMORY[0x277CD7258];
        v83 = objc_msgSend_rows(self->_workspace, v75, v76, v77, v78, v79, v80, v81);
        v91 = objc_msgSend_columns(self->_workspace, v84, v85, v86, v87, v88, v89, v90);
        v99 = objc_msgSend_rowBytes(self->_workspace, v92, v93, v94, v95, v96, v97, v98);
        v107 = objc_msgSend_dataType(self->_workspace, v100, v101, v102, v103, v104, v105, v106);
        v111 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v82, v108, v83, v91, v99, v107, v109, v110);
        v119 = objc_msgSend_data(self->_workspace, v112, v113, v114, v115, v116, v117, v118);
        v127 = objc_msgSend_length(v119, v120, v121, v122, v123, v124, v125, v126);
        v133 = objc_msgSend_newBufferWithLength_options_(device, v128, v127, 32, v129, v130, v131, v132);
        v134 = objc_alloc(MEMORY[0x277CD7250]);
        *(v14 + 26) = objc_msgSend_initWithBuffer_descriptor_(v134, v135, v133, v111, v136, v137, v138, v139);
      }
    }
  }

  return v14;
}

- (void)encodeToCommandBuffer:(id)buffer encoder:(id)encoder sourceMatrix:(id)matrix rightHandSideMatrix:(id)sideMatrix solutionMatrix:(id)solutionMatrix
{
  selfCopy = self;
  right = self->_right;
  upper = self->_upper;
  transpose = self->_transpose;
  v14 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
  v5222 = objc_msgSend_workspace(self, a2, buffer, encoder, matrix, sideMatrix, solutionMatrix, v7);
  v5191 = (*(&selfCopy->super.super.super.isa + *MEMORY[0x277CD7350]))[369];
  if ((v5191 & 0x400) != 0)
  {
    v22 = 32;
  }

  else
  {
    v22 = 64;
  }

  v23 = objc_msgSend_order(selfCopy, v15, v16, v17, v18, v19, v20, v21);
  matrixCopy = matrix;
  v5220 = v22;
  v5214 = selfCopy;
  sideMatrixCopy = sideMatrix;
  if (!right)
  {
    if (upper)
    {
      if (transpose)
      {
        if (v23 && objc_msgSend_numberOfRightHandSides(selfCopy, v24, v25, v26, v27, v28, v29, v30))
        {
          ComputeState = MPSLibrary::GetComputeState();
          v5201 = MPSLibrary::GetComputeState();
          objc_msgSend_unit(selfCopy, v410, v411, v412, v413, v414, v415, v416);
          v5119 = MPSLibrary::GetComputeState();
          v5158 = objc_msgSend_numberOfRightHandSides(selfCopy, v417, v418, v419, v420, v421, v422, v423);
          *v5233 = v5158;
          *&v5233[4] = v22;
          *&v5233[12] = objc_msgSend_rowBytes(solutionMatrix, v424, v425, v426, v427, v428, v429, v430);
          *&v5233[16] = objc_msgSend_rowBytes(matrix, v431, v432, v433, v434, v435, v436, v437);
          *&v5233[20] = objc_msgSend_rowBytes(sideMatrix, v438, v439, v440, v441, v442, v443, v444);
          *&v5233[24] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v445, v446, v447, v448, v449, v450, v451);
          *&v5233[28] = -1082130432;
          objc_msgSend_alpha(selfCopy, v452, v453, v454, v455, v456, v457, v458);
          *&v459 = v459;
          *&v5233[32] = LODWORD(v459);
          v5230 = *&v5222[*MEMORY[0x277CD7390]];
          v5231 = *&v5222[*MEMORY[0x277CD73B8]];
          v460 = MEMORY[0x277CD73B0];
          v5232 = *&v5222[*MEMORY[0x277CD73B0]];
          v5227 = objc_msgSend_numberOfRightHandSides(selfCopy, v461, v462, v463, v464, v465, v466, v467);
          v5228 = v22;
          v5229 = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v468, v469, v470, v471, v472, v473, v474);
          v5224 = objc_msgSend_columns(solutionMatrix, v475, v476, v477, v478, v479, v480, v481);
          v5225 = objc_msgSend_rows(solutionMatrix, v482, v483, v484, v485, v486, v487, v488);
          v5226 = objc_msgSend_rowBytes(solutionMatrix, v489, v490, v491, v492, v493, v494, v495);
          v5174 = objc_msgSend_numberOfRightHandSides(selfCopy, v496, v497, v498, v499, v500, v501, v502);
          v5147 = *&v5222[*v460];
          v5138 = objc_msgSend_order(selfCopy, v503, v504, v505, v506, v507, v508, v509);
          objc_msgSend_primarySourceMatrixOrigin(selfCopy, v510, v511, v512, v513, v514, v515, v516);
          v524 = objc_msgSend_rowBytes(matrix, v517, v518, v519, v520, v521, v522, v523);
          objc_msgSend_primarySourceMatrixOrigin(selfCopy, v525, v526, v527, v528, v529, v530, v531);
          v539 = objc_msgSend_dataType(matrix, v532, v533, v534, v535, v536, v537, v538);
          v540 = selfCopy;
          v541 = MEMORY[0x277CD73A8];
          v542 = *(matrix + *MEMORY[0x277CD73A8]) + v524 * *v5235 + *&v5234[8] * (v539 >> 3);
          objc_msgSend_secondarySourceMatrixOrigin(v540, v543, v544, v545, v546, v547, v548, v549);
          v5086 = objc_msgSend_rowBytes(sideMatrix, v550, v551, v552, v553, v554, v555, v556);
          objc_msgSend_secondarySourceMatrixOrigin(v540, v557, v558, v559, v560, v561, v562, v563);
          v5070 = objc_msgSend_dataType(sideMatrix, v564, v565, v566, v567, v568, v569, v570);
          v5064 = *(sideMatrix + *v541);
          objc_msgSend_resultMatrixOrigin(v540, v571, v572, v573, v574, v575, v576, v577);
          v5059 = *v5235;
          v5055 = objc_msgSend_rowBytes(solutionMatrix, v578, v579, v580, v581, v582, v583, v584);
          objc_msgSend_resultMatrixOrigin(v540, v585, v586, v587, v588, v589, v590, v591);
          v599 = objc_msgSend_dataType(solutionMatrix, v592, v593, v594, v595, v596, v597, v598);
          v600 = *(solutionMatrix + *v541);
          v608 = objc_msgSend_order(v540, v601, v602, v603, v604, v605, v606, v607);
          objc_msgSend_setComputePipelineState_(encoder, v609, v5119, v610, v611, v612, v613, v614);
          *v5239 = v608;
          *&v5239[4] = v608;
          *&v5239[8] = objc_msgSend_rowBytes(matrix, v615, v616, v617, v618, v619, v620, v621);
          v5236 = v5220;
          v5237 = v608;
          v5238 = objc_msgSend_rowBytes(v5222, v622, v623, v624, v625, v626, v627, v628);
          v636 = objc_msgSend_data(matrix, v629, v630, v631, v632, v633, v634, v635);
          v5111 = v542;
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v637, v636, v542, 0, v638, v639, v640);
          v648 = objc_msgSend_data(v5222, v641, v642, v643, v644, v645, v646, v647);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v649, v648, 0, 1, v650, v651, v652);
          objc_msgSend_setBytes_length_atIndex_(encoder, v653, v5239, 12, 2, v654, v655, v656);
          objc_msgSend_setBytes_length_atIndex_(encoder, v657, &v5236, 12, 3, v658, v659, v660);
          v666 = v5220 + v608 - 1;
          v667 = (v5191 & 0x400) == 0;
          v668 = 4;
          if ((v5191 & 0x400) != 0)
          {
            v669 = 4;
          }

          else
          {
            v669 = 64;
          }

          if ((v5191 & 0x400) != 0)
          {
            v670 = 8;
          }

          else
          {
            v670 = 4;
          }

          v5192 = v670;
          v671 = v670 >> 2;
          v5165 = v669;
          v672 = 4 * v669 + v5158 + 1;
          if (v667)
          {
            v668 = 8;
          }

          v5159 = v672 >> v668;
          v5101 = (32 * (v671 & 3)) | 1;
          v673 = 5;
          if (v667)
          {
            v674 = 5;
          }

          else
          {
            v674 = 6;
          }

          v5093 = v674;
          v675 = v5138 * v5147;
          v676 = v5064 + v5086 * *v5235 + *&v5234[8] * (v5070 >> 3);
          if (v667)
          {
            v673 = 6;
          }

          *v5235 = v666 >> v673;
          *&v5235[8] = vdupq_n_s64(1uLL);
          v677 = v600 + v5055 * v5059 + *&v5234[8] * (v599 >> 3);
          *v5234 = v5220;
          *&v5234[8] = *&v5235[8];
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v661, v5235, v5234, v662, v663, v664, v665);
          v692 = 0;
          if (objc_msgSend_order(v540, v678, v679, v680, v681, v682, v683, v684) >= v5220)
          {
            v692 = 0;
            v5129 = vdupq_n_s64(1uLL);
            v693 = v5111;
            do
            {
              *&v5233[8] = v692;
              objc_msgSend_setComputePipelineState_(encoder, v685, ComputeState, v687, v688, v689, v690, v691);
              v701 = objc_msgSend_data(solutionMatrix, v694, v695, v696, v697, v698, v699, v700);
              objc_msgSend_rowBytes(solutionMatrix, v702, v703, v704, v705, v706, v707, v708);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v709, v701, v677, 0, v710, v711, v712);
              v720 = objc_msgSend_data(matrixCopy, v713, v714, v715, v716, v717, v718, v719);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v721, v720, v693, 1, v722, v723, v724);
              v732 = objc_msgSend_data(sideMatrix, v725, v726, v727, v728, v729, v730, v731);
              v740 = objc_msgSend_rowBytes(sideMatrix, v733, v734, v735, v736, v737, v738, v739);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v741, v732, v676 + v740 * v692, 2, v742, v743, v744);
              v752 = objc_msgSend_data(v5222, v745, v746, v747, v748, v749, v750, v751);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v753, v752, v675, 3, v754, v755, v756);
              objc_msgSend_setBytes_length_atIndex_(encoder, v757, v5233, 36, 4, v758, v759, v760);
              *v5235 = v5159;
              *&v5235[8] = (v5101 + v5220) >> v5093;
              *&v5235[16] = 1;
              *v5234 = v5165;
              *&v5234[8] = v5192;
              *&v5234[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v761, v5235, v5234, v762, v763, v764, v765);
              objc_msgSend_setComputePipelineState_(encoder, v766, v5201, v767, v768, v769, v770, v771);
              v779 = objc_msgSend_data(v5222, v772, v773, v774, v775, v776, v777, v778);
              v787 = objc_msgSend_rowBytes(v5222, v780, v781, v782, v783, v784, v785, v786);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v788, v779, v787 * v692, 0, v789, v790, v791);
              v799 = objc_msgSend_data(v5222, v792, v793, v794, v795, v796, v797, v798);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v800, v799, v675, 1, v801, v802, v803);
              v811 = objc_msgSend_data(solutionMatrix, v804, v805, v806, v807, v808, v809, v810);
              v819 = objc_msgSend_rowBytes(solutionMatrix, v812, v813, v814, v815, v816, v817, v818);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v820, v811, v677 + v819 * v692, 2, v821, v822, v823);
              objc_msgSend_setBytes_length_atIndex_(encoder, v824, &v5230, 12, 3, v825, v826, v827);
              objc_msgSend_setBytes_length_atIndex_(encoder, v828, &v5227, 12, 4, v829, v830, v831);
              objc_msgSend_setBytes_length_atIndex_(encoder, v832, &v5224, 12, 5, v833, v834, v835);
              *v5235 = v5174;
              *&v5235[8] = v5129;
              *v5234 = v5220;
              *&v5234[8] = v5129;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v836, v5235, v5234, v837, v838, v839, v840);
              v692 += v5220;
              v693 += 4 * v5220;
            }

            while (v5220 + v692 <= objc_msgSend_order(v5214, v841, v842, v843, v844, v845, v846, v847));
          }

          if (v692 < objc_msgSend_order(v5214, v685, v686, v687, v688, v689, v690, v691))
          {
            v855 = objc_msgSend_order(v5214, v848, v849, v850, v851, v852, v853, v854);
            *&v5233[4] = v855 - v692;
            *&v5233[8] = v692;
            v5215 = (v855 - v692 + v5101) >> v5093;
            v5230 = v855 - v692;
            v5228 = v855 - v692;
            objc_msgSend_setComputePipelineState_(encoder, v856, ComputeState, v857, v858, v859, v860, v861);
            v869 = objc_msgSend_data(solutionMatrix, v862, v863, v864, v865, v866, v867, v868);
            objc_msgSend_rowBytes(solutionMatrix, v870, v871, v872, v873, v874, v875, v876);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v877, v869, v677, 0, v878, v879, v880);
            v888 = objc_msgSend_data(matrixCopy, v881, v882, v883, v884, v885, v886, v887);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v889, v888, v5111 + 4 * v692, 1, v890, v891, v892);
            v900 = objc_msgSend_data(sideMatrix, v893, v894, v895, v896, v897, v898, v899);
            v908 = objc_msgSend_rowBytes(sideMatrix, v901, v902, v903, v904, v905, v906, v907);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v909, v900, v676 + v908 * v692, 2, v910, v911, v912);
            v920 = objc_msgSend_data(v5222, v913, v914, v915, v916, v917, v918, v919);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v921, v920, v675, 3, v922, v923, v924);
            objc_msgSend_setBytes_length_atIndex_(encoder, v925, v5233, 36, 4, v926, v927, v928);
            *v5235 = v5159;
            *&v5235[8] = v5215;
            *&v5235[16] = 1;
            *v5234 = v5165;
            *&v5234[8] = v5192;
            *&v5234[16] = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v929, v5235, v5234, v930, v931, v932, v933);
            objc_msgSend_setComputePipelineState_(encoder, v934, v5201, v935, v936, v937, v938, v939);
            v947 = objc_msgSend_data(v5222, v940, v941, v942, v943, v944, v945, v946);
            v955 = objc_msgSend_rowBytes(v5222, v948, v949, v950, v951, v952, v953, v954);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v956, v947, v955 * v692, 0, v957, v958, v959);
            v967 = objc_msgSend_data(v5222, v960, v961, v962, v963, v964, v965, v966);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v968, v967, v675, 1, v969, v970, v971);
            v979 = objc_msgSend_data(solutionMatrix, v972, v973, v974, v975, v976, v977, v978);
            v987 = objc_msgSend_rowBytes(solutionMatrix, v980, v981, v982, v983, v984, v985, v986);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v988, v979, v677 + v987 * v692, 2, v989, v990, v991);
            objc_msgSend_setBytes_length_atIndex_(encoder, v992, &v5230, 12, 3, v993, v994, v995);
            objc_msgSend_setBytes_length_atIndex_(encoder, v996, &v5227, 12, 4, v997, v998, v999);
            objc_msgSend_setBytes_length_atIndex_(encoder, v1000, &v5224, 12, 5, v1001, v1002, v1003);
            *v5235 = v5174;
            *&v5235[8] = vdupq_n_s64(1uLL);
            *v5234 = v5220;
            *&v5234[8] = *&v5235[8];
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1004, v5235, v5234, v1005, v1006, v1007, v1008);
          }

          MPSLibrary::ReleaseComputeState();
          MPSLibrary::ReleaseComputeState();
          goto LABEL_146;
        }
      }

      else if (v23 && objc_msgSend_numberOfRightHandSides(selfCopy, v24, v25, v26, v27, v28, v29, v30))
      {
        v5142 = MPSLibrary::GetComputeState();
        v5178 = MPSLibrary::GetComputeState();
        v5089 = MPSLibrary::GetComputeState();
        objc_msgSend_unit(selfCopy, v3082, v3083, v3084, v3085, v3086, v3087, v3088);
        v5074 = MPSLibrary::GetComputeState();
        v5236 = objc_msgSend_columns(solutionMatrix, v3089, v3090, v3091, v3092, v3093, v3094, v3095);
        v5237 = objc_msgSend_rows(solutionMatrix, v3096, v3097, v3098, v3099, v3100, v3101, v3102);
        v5238 = objc_msgSend_rowBytes(solutionMatrix, v3103, v3104, v3105, v3106, v3107, v3108, v3109);
        v5170 = objc_msgSend_numberOfRightHandSides(selfCopy, v3110, v3111, v3112, v3113, v3114, v3115, v3116);
        v5207 = *&v5222[*MEMORY[0x277CD73B0]];
        v5187 = objc_msgSend_order(selfCopy, v3117, v3118, v3119, v3120, v3121, v3122, v3123);
        objc_msgSend_primarySourceMatrixOrigin(selfCopy, v3124, v3125, v3126, v3127, v3128, v3129, v3130);
        v3138 = v22;
        matrixCopy2 = matrix;
        v3140 = objc_msgSend_rowBytes(matrix, v3131, v3132, v3133, v3134, v3135, v3136, v3137);
        objc_msgSend_primarySourceMatrixOrigin(selfCopy, v3141, v3142, v3143, v3144, v3145, v3146, v3147);
        v3148 = *&v5235[8];
        v3156 = objc_msgSend_dataType(matrixCopy2, v3149, v3150, v3151, v3152, v3153, v3154, v3155);
        v3157 = MEMORY[0x277CD73A8];
        v3158 = *&matrixCopy2[*MEMORY[0x277CD73A8]] + v3140 * *v5233 + v3148 * (v3156 >> 3);
        objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v3159, v3160, v3161, v3162, v3163, v3164, v3165);
        v5153 = objc_msgSend_rowBytes(sideMatrix, v3166, v3167, v3168, v3169, v3170, v3171, v3172);
        objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v3173, v3174, v3175, v3176, v3177, v3178, v3179);
        v5115 = *&v5235[8];
        v5106 = objc_msgSend_dataType(sideMatrix, v3180, v3181, v3182, v3183, v3184, v3185, v3186);
        v5097 = *(sideMatrix + *v3157);
        objc_msgSend_resultMatrixOrigin(selfCopy, v3187, v3188, v3189, v3190, v3191, v3192, v3193);
        v5081 = *v5233;
        v5062 = objc_msgSend_rowBytes(solutionMatrix, v3194, v3195, v3196, v3197, v3198, v3199, v3200);
        objc_msgSend_resultMatrixOrigin(selfCopy, v3201, v3202, v3203, v3204, v3205, v3206, v3207);
        v5067 = *&v5235[8];
        v5058 = objc_msgSend_dataType(solutionMatrix, v3208, v3209, v3210, v3211, v3212, v3213, v3214);
        v3215 = *(solutionMatrix + *v3157);
        v3223 = objc_msgSend_order(selfCopy, v3216, v3217, v3218, v3219, v3220, v3221, v3222);
        objc_msgSend_setComputePipelineState_(encoder, v3224, v5074, v3225, v3226, v3227, v3228, v3229);
        *v5234 = v3223;
        *&v5234[4] = v3223;
        *&v5234[8] = objc_msgSend_rowBytes(matrixCopy2, v3230, v3231, v3232, v3233, v3234, v3235, v3236);
        *v5239 = v3138;
        *&v5239[4] = v3223;
        *&v5239[8] = objc_msgSend_rowBytes(v5222, v3237, v3238, v3239, v3240, v3241, v3242, v3243);
        v3251 = objc_msgSend_data(matrixCopy2, v3244, v3245, v3246, v3247, v3248, v3249, v3250);
        v5124 = v3158;
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v3252, v3251, v3158, 0, v3253, v3254, v3255);
        v3263 = objc_msgSend_data(v5222, v3256, v3257, v3258, v3259, v3260, v3261, v3262);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v3264, v3263, 0, 1, v3265, v3266, v3267);
        objc_msgSend_setBytes_length_atIndex_(encoder, v3268, v5234, 12, 2, v3269, v3270, v3271);
        objc_msgSend_setBytes_length_atIndex_(encoder, v3272, v5239, 12, 3, v3273, v3274, v3275);
        v3281 = v3138 - 1;
        v3282 = 4;
        if ((v5191 & 0x400) == 0)
        {
          v3282 = 32;
        }

        v5133 = v3282;
        v3283 = v5187 * v5207;
        v3284 = v5097 + v5153 * *v5233 + v5115 * (v5106 >> 3);
        v3285 = 5;
        if ((v5191 & 0x400) == 0)
        {
          v3285 = 6;
        }

        *v5233 = (v3223 + v3281) >> v3285;
        *&v5233[8] = vdupq_n_s64(1uLL);
        v3286 = v3215 + v5062 * v5081 + v5067 * (v5058 >> 3);
        *v5235 = v3138;
        *&v5235[8] = *&v5233[8];
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v3276, v5233, v5235, v3277, v3278, v3279, v3280);
        v3294 = objc_msgSend_order(selfCopy, v3287, v3288, v3289, v3290, v3291, v3292, v3293) & v3281;
        v3309 = objc_msgSend_order(selfCopy, v3295, v3296, v3297, v3298, v3299, v3300, v3301) - v3294;
        v5208 = v3286;
        if (v3294)
        {
          v3310 = objc_msgSend_numberOfRightHandSides(selfCopy, v3302, v3303, v3304, v3305, v3306, v3307, v3308);
          *v5234 = v3310;
          *&v5234[4] = v3294;
          *&v5234[8] = objc_msgSend_rowBytes(sideMatrixCopy, v3311, v3312, v3313, v3314, v3315, v3316, v3317);
          *&v5234[12] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v3318, v3319, v3320, v3321, v3322, v3323, v3324);
          objc_msgSend_alpha(selfCopy, v3325, v3326, v3327, v3328, v3329, v3330, v3331);
          *&v3332 = v3332;
          *&v5234[16] = LODWORD(v3332);
          v3333 = (v3310 + 15) >> 4;
          objc_msgSend_setComputePipelineState_(encoder, v3334, v5089, v3335, v3336, v3337, v3338, v3339);
          v3347 = objc_msgSend_data(sideMatrixCopy, v3340, v3341, v3342, v3343, v3344, v3345, v3346);
          v3355 = objc_msgSend_rowBytes(sideMatrixCopy, v3348, v3349, v3350, v3351, v3352, v3353, v3354);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v3356, v3347, v3284 + v3355 * v3309, 0, v3357, v3358, v3359);
          v3367 = objc_msgSend_data(v5222, v3360, v3361, v3362, v3363, v3364, v3365, v3366);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v3368, v3367, v3283, 1, v3369, v3370, v3371);
          objc_msgSend_setBytes_length_atIndex_(encoder, v3372, v5234, 20, 2, v3373, v3374, v3375);
          *v5233 = v3333;
          *&v5233[8] = (v3294 + 31) >> 5;
          *&v5233[16] = 1;
          *v5235 = vdupq_n_s64(8uLL);
          *&v5235[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v3376, v5233, v5235, v3377, v3378, v3379, v3380);
          *v5239 = v3294;
          *&v5239[4] = *&v5222[*MEMORY[0x277CD73B8]];
          *&v5239[8] = *&v5222[*MEMORY[0x277CD73B0]];
          v5230 = objc_msgSend_numberOfRightHandSides(selfCopy, v3381, v3382, v3383, v3384, v3385, v3386, v3387);
          v5231 = v3294;
          v5232 = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v3388, v3389, v3390, v3391, v3392, v3393, v3394);
          objc_msgSend_setComputePipelineState_(encoder, v3395, v5178, v3396, v3397, v3398, v3399, v3400);
          v3408 = objc_msgSend_data(v5222, v3401, v3402, v3403, v3404, v3405, v3406, v3407);
          v3416 = objc_msgSend_rowBytes(v5222, v3409, v3410, v3411, v3412, v3413, v3414, v3415);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v3417, v3408, v3416 * v3309, 0, v3418, v3419, v3420);
          v3428 = objc_msgSend_data(v5222, v3421, v3422, v3423, v3424, v3425, v3426, v3427);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v3429, v3428, v3283, 1, v3430, v3431, v3432);
          v3440 = objc_msgSend_data(solutionMatrix, v3433, v3434, v3435, v3436, v3437, v3438, v3439);
          v3448 = objc_msgSend_rowBytes(solutionMatrix, v3441, v3442, v3443, v3444, v3445, v3446, v3447);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v3449, v3440, v3286 + v3448 * v3309, 2, v3450, v3451, v3452);
          objc_msgSend_setBytes_length_atIndex_(encoder, v3453, v5239, 12, 3, v3454, v3455, v3456);
          objc_msgSend_setBytes_length_atIndex_(encoder, v3457, &v5230, 12, 4, v3458, v3459, v3460);
          objc_msgSend_setBytes_length_atIndex_(encoder, v3461, &v5236, 12, 5, v3462, v3463, v3464);
          *v5233 = v5170;
          *&v5233[8] = vdupq_n_s64(1uLL);
          *v5235 = v5220;
          *&v5235[8] = *&v5233[8];
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v3465, v5233, v5235, v3466, v3467, v3468, v3469);
        }

        if (v3309)
        {
          v3470 = 4;
          v5082 = vdupq_n_s64(8uLL);
          if ((v5191 & 0x400) == 0)
          {
            v3470 = 7;
          }

          v5116 = v3470;
          v5154 = v3284;
          do
          {
            v3634 = objc_msgSend_order(selfCopy, v3302, v3303, v3304, v3305, v3306, v3307, v3308);
            v3642 = v3634 - v3309;
            if (v3634 == v3309)
            {
              memset(v5234, 0, 20);
              *v5234 = objc_msgSend_numberOfRightHandSides(selfCopy, v3635, v3636, v3637, v3638, v3639, v3640, v3641);
              *&v5234[4] = v5220;
              *&v5234[8] = objc_msgSend_rowBytes(sideMatrixCopy, v3471, v3472, v3473, v3474, v3475, v3476, v3477);
              *&v5234[12] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v3478, v3479, v3480, v3481, v3482, v3483, v3484);
              objc_msgSend_alpha(selfCopy, v3485, v3486, v3487, v3488, v3489, v3490, v3491);
              *&v3492 = v3492;
              *&v5234[16] = LODWORD(v3492);
              v3493 = (*v5234 + 15) >> 4;
              v3494 = (*&v5234[4] + 31) >> 5;
              objc_msgSend_setComputePipelineState_(encoder, v3495, v5089, v3496, v3497, v3498, v3499, v3500);
              v3508 = objc_msgSend_data(sideMatrixCopy, v3501, v3502, v3503, v3504, v3505, v3506, v3507);
              v3309 -= v5220;
              v3516 = objc_msgSend_rowBytes(sideMatrixCopy, v3509, v3510, v3511, v3512, v3513, v3514, v3515);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v3517, v3508, v5154 + v3516 * v3309, 0, v3518, v3519, v3520);
              v3521 = v5222;
              v3529 = objc_msgSend_data(v5222, v3522, v3523, v3524, v3525, v3526, v3527, v3528);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v3530, v3529, v3283, 1, v3531, v3532, v3533);
              objc_msgSend_setBytes_length_atIndex_(encoder, v3534, v5234, 20, 2, v3535, v3536, v3537);
              *v5233 = v3493;
              *&v5233[8] = v3494;
              v3538 = v3283;
              *&v5233[16] = 1;
              *v5235 = v5082;
              *&v5235[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v3539, v5233, v5235, v3540, v3541, v3542, v3543);
              v3551 = v5178;
            }

            else
            {
              memset(v5233, 0, sizeof(v5233));
              *v5233 = objc_msgSend_numberOfRightHandSides(selfCopy, v3635, v3636, v3637, v3638, v3639, v3640, v3641);
              *&v5233[4] = v5220;
              *&v5233[8] = v3642;
              *&v5233[12] = objc_msgSend_rowBytes(solutionMatrix, v3643, v3644, v3645, v3646, v3647, v3648, v3649);
              *&v5233[16] = objc_msgSend_rowBytes(matrixCopy, v3650, v3651, v3652, v3653, v3654, v3655, v3656);
              *&v5233[20] = objc_msgSend_rowBytes(sideMatrixCopy, v3657, v3658, v3659, v3660, v3661, v3662, v3663);
              *&v5233[24] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v3664, v3665, v3666, v3667, v3668, v3669, v3670);
              *&v5233[28] = -1082130432;
              objc_msgSend_alpha(selfCopy, v3671, v3672, v3673, v3674, v3675, v3676, v3677);
              *&v3678 = v3678;
              *&v5233[32] = LODWORD(v3678);
              v5188 = (*&v5233[4] + 65) >> 6;
              v5197 = (((4 * v5133) | 1) + *v5233) >> v5116;
              objc_msgSend_setComputePipelineState_(encoder, v3679, v5142, v3680, v3681, v3682, v3683, v3684);
              v3692 = objc_msgSend_data(solutionMatrix, v3685, v3686, v3687, v3688, v3689, v3690, v3691);
              v3700 = objc_msgSend_rowBytes(solutionMatrix, v3693, v3694, v3695, v3696, v3697, v3698, v3699);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v3701, v3692, v5208 + v3700 * v3309, 0, v3702, v3703, v3704);
              v3712 = objc_msgSend_data(matrixCopy, v3705, v3706, v3707, v3708, v3709, v3710, v3711);
              v3720 = objc_msgSend_dataType(matrixCopy, v3713, v3714, v3715, v3716, v3717, v3718, v3719) >> 3;
              v3551 = v5178;
              v3728 = objc_msgSend_rowBytes(matrixCopy, v3721, v3722, v3723, v3724, v3725, v3726, v3727);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v3729, v3712, v5124 + v3728 * (v3309 - v5220) + v3309 * v3720, 1, v3730, v3731, v3732);
              v3740 = objc_msgSend_data(sideMatrixCopy, v3733, v3734, v3735, v3736, v3737, v3738, v3739);
              v3748 = objc_msgSend_rowBytes(sideMatrixCopy, v3741, v3742, v3743, v3744, v3745, v3746, v3747);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v3749, v3740, v5154 + v3748 * (v3309 - v5220), 2, v3750, v3751, v3752);
              v3521 = v5222;
              v3760 = objc_msgSend_data(v5222, v3753, v3754, v3755, v3756, v3757, v3758, v3759);
              v3538 = v3283;
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v3761, v3760, v3283, 3, v3762, v3763, v3764);
              objc_msgSend_setBytes_length_atIndex_(encoder, v3765, v5233, 36, 4, v3766, v3767, v3768);
              *v5235 = v5197;
              *&v5235[8] = v5188;
              *&v5235[16] = 1;
              *v5234 = v5133;
              *&v5234[8] = xmmword_2399EE7D0;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v3769, v5235, v5234, v3770, v3771, v3772, v3773);
              v3309 -= v5220;
              selfCopy = v5214;
            }

            *v5234 = v5220;
            *&v5234[4] = *&v3521[*MEMORY[0x277CD73B8]];
            *&v5234[8] = *&v3521[*MEMORY[0x277CD73B0]];
            *&v5239[8] = 0;
            *v5239 = 0;
            *v5239 = objc_msgSend_numberOfRightHandSides(selfCopy, v3544, v3545, v3546, v3547, v3548, v3549, v3550);
            *&v5239[4] = v5220;
            *&v5239[8] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v3552, v3553, v3554, v3555, v3556, v3557, v3558);
            objc_msgSend_setComputePipelineState_(encoder, v3559, v3551, v3560, v3561, v3562, v3563, v3564);
            v3572 = objc_msgSend_data(v3521, v3565, v3566, v3567, v3568, v3569, v3570, v3571);
            v3580 = objc_msgSend_rowBytes(v3521, v3573, v3574, v3575, v3576, v3577, v3578, v3579);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v3581, v3572, v3580 * v3309, 0, v3582, v3583, v3584);
            v3592 = objc_msgSend_data(v3521, v3585, v3586, v3587, v3588, v3589, v3590, v3591);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v3593, v3592, v3538, 1, v3594, v3595, v3596);
            v3604 = objc_msgSend_data(solutionMatrix, v3597, v3598, v3599, v3600, v3601, v3602, v3603);
            v3612 = objc_msgSend_rowBytes(solutionMatrix, v3605, v3606, v3607, v3608, v3609, v3610, v3611);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v3613, v3604, v5208 + v3612 * v3309, 2, v3614, v3615, v3616);
            objc_msgSend_setBytes_length_atIndex_(encoder, v3617, v5234, 12, 3, v3618, v3619, v3620);
            objc_msgSend_setBytes_length_atIndex_(encoder, v3621, v5239, 12, 4, v3622, v3623, v3624);
            objc_msgSend_setBytes_length_atIndex_(encoder, v3625, &v5236, 12, 5, v3626, v3627, v3628);
            *v5233 = v5170;
            *&v5233[8] = vdupq_n_s64(1uLL);
            *v5235 = v5220;
            *&v5235[8] = *&v5233[8];
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v3629, v5233, v5235, v3630, v3631, v3632, v3633);
          }

          while (v3309);
        }

        goto LABEL_144;
      }

      return;
    }

    if (transpose)
    {
      if (v23 && objc_msgSend_numberOfRightHandSides(selfCopy, v24, v25, v26, v27, v28, v29, v30))
      {
        v5140 = MPSLibrary::GetComputeState();
        v5185 = MPSLibrary::GetComputeState();
        v5072 = MPSLibrary::GetComputeState();
        objc_msgSend_unit(selfCopy, v1847, v1848, v1849, v1850, v1851, v1852, v1853);
        v5065 = MPSLibrary::GetComputeState();
        v5236 = objc_msgSend_columns(solutionMatrix, v1854, v1855, v1856, v1857, v1858, v1859, v1860);
        v5237 = objc_msgSend_rows(solutionMatrix, v1861, v1862, v1863, v1864, v1865, v1866, v1867);
        v5238 = objc_msgSend_rowBytes(solutionMatrix, v1868, v1869, v1870, v1871, v1872, v1873, v1874);
        v5176 = objc_msgSend_numberOfRightHandSides(selfCopy, v1875, v1876, v1877, v1878, v1879, v1880, v1881);
        v5204 = *&v5222[*MEMORY[0x277CD73B0]];
        v5167 = objc_msgSend_order(selfCopy, v1882, v1883, v1884, v1885, v1886, v1887, v1888);
        objc_msgSend_primarySourceMatrixOrigin(selfCopy, v1889, v1890, v1891, v1892, v1893, v1894, v1895);
        v1903 = v22;
        matrixCopy3 = matrix;
        v1905 = objc_msgSend_rowBytes(matrix, v1896, v1897, v1898, v1899, v1900, v1901, v1902);
        objc_msgSend_primarySourceMatrixOrigin(selfCopy, v1906, v1907, v1908, v1909, v1910, v1911, v1912);
        v1913 = *&v5235[8];
        v1921 = objc_msgSend_dataType(matrixCopy3, v1914, v1915, v1916, v1917, v1918, v1919, v1920);
        v1922 = MEMORY[0x277CD73A8];
        v1923 = *&matrixCopy3[*MEMORY[0x277CD73A8]] + v1905 * *v5233 + v1913 * (v1921 >> 3);
        objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v1924, v1925, v1926, v1927, v1928, v1929, v1930);
        v5161 = *v5233;
        v5150 = objc_msgSend_rowBytes(sideMatrix, v1931, v1932, v1933, v1934, v1935, v1936, v1937);
        objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v1938, v1939, v1940, v1941, v1942, v1943, v1944);
        v5103 = *&v5235[8];
        v5094 = objc_msgSend_dataType(sideMatrix, v1945, v1946, v1947, v1948, v1949, v1950, v1951);
        v5088 = *(sideMatrix + *v1922);
        objc_msgSend_resultMatrixOrigin(selfCopy, v1952, v1953, v1954, v1955, v1956, v1957, v1958);
        v5079 = *v5233;
        v5057 = objc_msgSend_rowBytes(solutionMatrix, v1959, v1960, v1961, v1962, v1963, v1964, v1965);
        objc_msgSend_resultMatrixOrigin(selfCopy, v1966, v1967, v1968, v1969, v1970, v1971, v1972);
        v5060 = *&v5235[8];
        v5056 = objc_msgSend_dataType(solutionMatrix, v1973, v1974, v1975, v1976, v1977, v1978, v1979);
        v1980 = *(solutionMatrix + *v1922);
        v1988 = objc_msgSend_order(selfCopy, v1981, v1982, v1983, v1984, v1985, v1986, v1987);
        objc_msgSend_setComputePipelineState_(encoder, v1989, v5065, v1990, v1991, v1992, v1993, v1994);
        *v5234 = v1988;
        *&v5234[4] = v1988;
        *&v5234[8] = objc_msgSend_rowBytes(matrixCopy3, v1995, v1996, v1997, v1998, v1999, v2000, v2001);
        *v5239 = v1903;
        *&v5239[4] = v1988;
        *&v5239[8] = objc_msgSend_rowBytes(v5222, v2002, v2003, v2004, v2005, v2006, v2007, v2008);
        v2016 = objc_msgSend_data(matrixCopy3, v2009, v2010, v2011, v2012, v2013, v2014, v2015);
        v5113 = v1923;
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v2017, v2016, v1923, 0, v2018, v2019, v2020);
        v2028 = objc_msgSend_data(v5222, v2021, v2022, v2023, v2024, v2025, v2026, v2027);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v2029, v2028, 0, 1, v2030, v2031, v2032);
        objc_msgSend_setBytes_length_atIndex_(encoder, v2033, v5234, 12, 2, v2034, v2035, v2036);
        objc_msgSend_setBytes_length_atIndex_(encoder, v2037, v5239, 12, 3, v2038, v2039, v2040);
        v2046 = v1903 - 1;
        v2047 = 4;
        v2048 = 64;
        if ((v5191 & 0x400) != 0)
        {
          v2048 = 4;
        }

        v5132 = v2048;
        if ((v5191 & 0x400) != 0)
        {
          v2047 = 8;
        }

        v5121 = v2047;
        v2049 = v5167 * v5204;
        v2050 = 5;
        if ((v5191 & 0x400) == 0)
        {
          v2050 = 6;
        }

        *v5233 = (v1988 + v2046) >> v2050;
        *&v5233[8] = vdupq_n_s64(1uLL);
        v2051 = v1980 + v5057 * v5079 + v5060 * (v5056 >> 3);
        *v5235 = v1903;
        *&v5235[8] = *&v5233[8];
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v2041, v5233, v5235, v2042, v2043, v2044, v2045);
        v2059 = objc_msgSend_order(selfCopy, v2052, v2053, v2054, v2055, v2056, v2057, v2058) & v2046;
        v2074 = objc_msgSend_order(selfCopy, v2060, v2061, v2062, v2063, v2064, v2065, v2066) - v2059;
        v5168 = v2051;
        if (v2059)
        {
          v2075 = objc_msgSend_numberOfRightHandSides(selfCopy, v2067, v2068, v2069, v2070, v2071, v2072, v2073);
          *v5234 = v2075;
          *&v5234[4] = v2059;
          *&v5234[8] = objc_msgSend_rowBytes(sideMatrixCopy, v2076, v2077, v2078, v2079, v2080, v2081, v2082);
          *&v5234[12] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v2083, v2084, v2085, v2086, v2087, v2088, v2089);
          objc_msgSend_alpha(selfCopy, v2090, v2091, v2092, v2093, v2094, v2095, v2096);
          *&v2097 = v2097;
          *&v5234[16] = LODWORD(v2097);
          v2098 = (v2075 + 15) >> 4;
          objc_msgSend_setComputePipelineState_(encoder, v2099, v5072, v2100, v2101, v2102, v2103, v2104);
          v2112 = objc_msgSend_data(sideMatrixCopy, v2105, v2106, v2107, v2108, v2109, v2110, v2111);
          v2120 = objc_msgSend_rowBytes(sideMatrixCopy, v2113, v2114, v2115, v2116, v2117, v2118, v2119);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v2121, v2112, v5088 + v5150 * v5161 + v5103 * (v5094 >> 3) + v2120 * v2074, 0, v2122, v2123, v2124);
          v2132 = objc_msgSend_data(v5222, v2125, v2126, v2127, v2128, v2129, v2130, v2131);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v2133, v2132, v2049, 1, v2134, v2135, v2136);
          objc_msgSend_setBytes_length_atIndex_(encoder, v2137, v5234, 20, 2, v2138, v2139, v2140);
          *v5233 = v2098;
          *&v5233[8] = (v2059 + 31) >> 5;
          *&v5233[16] = 1;
          *v5235 = vdupq_n_s64(8uLL);
          *&v5235[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v2141, v5233, v5235, v2142, v2143, v2144, v2145);
          *v5239 = v2059;
          *&v5239[4] = *&v5222[*MEMORY[0x277CD73B8]];
          *&v5239[8] = *&v5222[*MEMORY[0x277CD73B0]];
          v5230 = objc_msgSend_numberOfRightHandSides(selfCopy, v2146, v2147, v2148, v2149, v2150, v2151, v2152);
          v5231 = v2059;
          v5232 = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v2153, v2154, v2155, v2156, v2157, v2158, v2159);
          objc_msgSend_setComputePipelineState_(encoder, v2160, v5185, v2161, v2162, v2163, v2164, v2165);
          v2173 = objc_msgSend_data(v5222, v2166, v2167, v2168, v2169, v2170, v2171, v2172);
          v2181 = objc_msgSend_rowBytes(v5222, v2174, v2175, v2176, v2177, v2178, v2179, v2180);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v2182, v2173, v2181 * v2074, 0, v2183, v2184, v2185);
          v2193 = objc_msgSend_data(v5222, v2186, v2187, v2188, v2189, v2190, v2191, v2192);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v2194, v2193, v2049, 1, v2195, v2196, v2197);
          v2205 = objc_msgSend_data(solutionMatrix, v2198, v2199, v2200, v2201, v2202, v2203, v2204);
          v2213 = objc_msgSend_rowBytes(solutionMatrix, v2206, v2207, v2208, v2209, v2210, v2211, v2212);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v2214, v2205, v2051 + v2213 * v2074, 2, v2215, v2216, v2217);
          objc_msgSend_setBytes_length_atIndex_(encoder, v2218, v5239, 12, 3, v2219, v2220, v2221);
          objc_msgSend_setBytes_length_atIndex_(encoder, v2222, &v5230, 12, 4, v2223, v2224, v2225);
          objc_msgSend_setBytes_length_atIndex_(encoder, v2226, &v5236, 12, 5, v2227, v2228, v2229);
          *v5233 = v5176;
          *&v5233[8] = vdupq_n_s64(1uLL);
          *v5235 = v5220;
          *&v5235[8] = *&v5233[8];
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v2230, v5233, v5235, v2231, v2232, v2233, v2234);
        }

        v5151 = v5088 + v5150 * v5161 + v5103 * (v5094 >> 3);
        if (v2074)
        {
          if ((v5191 & 0x400) != 0)
          {
            v2235 = 4;
          }

          else
          {
            v2235 = 8;
          }

          v2236 = 5;
          if ((v5191 & 0x400) != 0)
          {
            v2236 = 6;
          }

          v5095 = v2236;
          v5104 = v2235;
          do
          {
            v2402 = objc_msgSend_order(selfCopy, v2067, v2068, v2069, v2070, v2071, v2072, v2073);
            v2410 = v2402 - v2074;
            if (v2402 == v2074)
            {
              memset(v5234, 0, 20);
              v2237 = v5220;
              *v5234 = objc_msgSend_numberOfRightHandSides(selfCopy, v2403, v2404, v2405, v2406, v2407, v2408, v2409);
              *&v5234[4] = v5220;
              *&v5234[8] = objc_msgSend_rowBytes(sideMatrixCopy, v2238, v2239, v2240, v2241, v2242, v2243, v2244);
              *&v5234[12] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v2245, v2246, v2247, v2248, v2249, v2250, v2251);
              objc_msgSend_alpha(selfCopy, v2252, v2253, v2254, v2255, v2256, v2257, v2258);
              *&v2259 = v2259;
              *&v5234[16] = LODWORD(v2259);
              v2260 = (*v5234 + 15) >> 4;
              v2261 = (*&v5234[4] + 31) >> 5;
              objc_msgSend_setComputePipelineState_(encoder, v2262, v5072, v2263, v2264, v2265, v2266, v2267);
              v2275 = objc_msgSend_data(sideMatrixCopy, v2268, v2269, v2270, v2271, v2272, v2273, v2274);
              v2074 -= v5220;
              v2283 = objc_msgSend_rowBytes(sideMatrixCopy, v2276, v2277, v2278, v2279, v2280, v2281, v2282);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v2284, v2275, v5151 + v2283 * v2074, 0, v2285, v2286, v2287);
              v2288 = v5222;
              v2296 = objc_msgSend_data(v5222, v2289, v2290, v2291, v2292, v2293, v2294, v2295);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v2297, v2296, v2049, 1, v2298, v2299, v2300);
              objc_msgSend_setBytes_length_atIndex_(encoder, v2301, v5234, 20, 2, v2302, v2303, v2304);
              *v5233 = v2260;
              *&v5233[8] = v2261;
              v2305 = v2049;
              *&v5233[16] = 1;
              *v5235 = vdupq_n_s64(8uLL);
              *&v5235[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v2306, v5233, v5235, v2307, v2308, v2309, v2310);
              v2318 = v5168;
              v2319 = v5185;
            }

            else
            {
              memset(v5233, 0, sizeof(v5233));
              v2237 = v5220;
              *v5233 = objc_msgSend_numberOfRightHandSides(selfCopy, v2403, v2404, v2405, v2406, v2407, v2408, v2409);
              *&v5233[4] = v5220;
              *&v5233[8] = v2410;
              *&v5233[12] = objc_msgSend_rowBytes(solutionMatrix, v2411, v2412, v2413, v2414, v2415, v2416, v2417);
              *&v5233[16] = objc_msgSend_rowBytes(matrixCopy, v2418, v2419, v2420, v2421, v2422, v2423, v2424);
              *&v5233[20] = objc_msgSend_rowBytes(sideMatrixCopy, v2425, v2426, v2427, v2428, v2429, v2430, v2431);
              *&v5233[24] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v2432, v2433, v2434, v2435, v2436, v2437, v2438);
              *&v5233[28] = -1082130432;
              objc_msgSend_alpha(selfCopy, v2439, v2440, v2441, v2442, v2443, v2444, v2445);
              *&v2446 = v2446;
              *&v5233[32] = LODWORD(v2446);
              v5195 = (((8 * v5121) | 1) + *&v5233[4]) >> v5095;
              v5205 = (((4 * v5132) | 1) + *v5233) >> v5104;
              objc_msgSend_setComputePipelineState_(encoder, v2447, v5140, v2448, v2449, v2450, v2451, v2452);
              v2460 = objc_msgSend_data(solutionMatrix, v2453, v2454, v2455, v2456, v2457, v2458, v2459);
              v2468 = objc_msgSend_rowBytes(solutionMatrix, v2461, v2462, v2463, v2464, v2465, v2466, v2467);
              v2318 = v5168;
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v2469, v2460, v5168 + v2468 * v2074, 0, v2470, v2471, v2472);
              v2480 = objc_msgSend_data(matrixCopy, v2473, v2474, v2475, v2476, v2477, v2478, v2479);
              v2488 = objc_msgSend_dataType(solutionMatrix, v2481, v2482, v2483, v2484, v2485, v2486, v2487) >> 3;
              v2496 = objc_msgSend_rowBytes(matrixCopy, v2489, v2490, v2491, v2492, v2493, v2494, v2495);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v2497, v2480, v5113 + v2496 * v2074 + (v2074 - v5220) * v2488, 1, v2498, v2499, v2500);
              v2508 = objc_msgSend_data(sideMatrixCopy, v2501, v2502, v2503, v2504, v2505, v2506, v2507);
              v2516 = objc_msgSend_rowBytes(sideMatrixCopy, v2509, v2510, v2511, v2512, v2513, v2514, v2515);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v2517, v2508, v5151 + v2516 * (v2074 - v5220), 2, v2518, v2519, v2520);
              v2288 = v5222;
              v2528 = objc_msgSend_data(v5222, v2521, v2522, v2523, v2524, v2525, v2526, v2527);
              v2305 = v2049;
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v2529, v2528, v2049, 3, v2530, v2531, v2532);
              objc_msgSend_setBytes_length_atIndex_(encoder, v2533, v5233, 36, 4, v2534, v2535, v2536);
              *v5235 = v5205;
              *&v5235[8] = v5195;
              v2319 = v5185;
              *&v5235[16] = 1;
              *v5234 = v5132;
              *&v5234[8] = v5121;
              *&v5234[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v2537, v5235, v5234, v2538, v2539, v2540, v2541);
              v2074 -= v5220;
              selfCopy = v5214;
            }

            *v5234 = v2237;
            *&v5234[4] = *&v2288[*MEMORY[0x277CD73B8]];
            *&v5234[8] = *&v2288[*MEMORY[0x277CD73B0]];
            *&v5239[8] = 0;
            *v5239 = 0;
            *v5239 = objc_msgSend_numberOfRightHandSides(selfCopy, v2311, v2312, v2313, v2314, v2315, v2316, v2317);
            *&v5239[4] = v2237;
            *&v5239[8] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v2320, v2321, v2322, v2323, v2324, v2325, v2326);
            objc_msgSend_setComputePipelineState_(encoder, v2327, v2319, v2328, v2329, v2330, v2331, v2332);
            v2340 = objc_msgSend_data(v2288, v2333, v2334, v2335, v2336, v2337, v2338, v2339);
            v2348 = objc_msgSend_rowBytes(v2288, v2341, v2342, v2343, v2344, v2345, v2346, v2347);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v2349, v2340, v2348 * v2074, 0, v2350, v2351, v2352);
            v2360 = objc_msgSend_data(v2288, v2353, v2354, v2355, v2356, v2357, v2358, v2359);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v2361, v2360, v2305, 1, v2362, v2363, v2364);
            v2372 = objc_msgSend_data(solutionMatrix, v2365, v2366, v2367, v2368, v2369, v2370, v2371);
            v2380 = objc_msgSend_rowBytes(solutionMatrix, v2373, v2374, v2375, v2376, v2377, v2378, v2379);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v2381, v2372, v2318 + v2380 * v2074, 2, v2382, v2383, v2384);
            objc_msgSend_setBytes_length_atIndex_(encoder, v2385, v5234, 12, 3, v2386, v2387, v2388);
            objc_msgSend_setBytes_length_atIndex_(encoder, v2389, v5239, 12, 4, v2390, v2391, v2392);
            objc_msgSend_setBytes_length_atIndex_(encoder, v2393, &v5236, 12, 5, v2394, v2395, v2396);
            *v5233 = v5176;
            *&v5233[8] = vdupq_n_s64(1uLL);
            *v5235 = v2237;
            *&v5235[8] = *&v5233[8];
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v2397, v5233, v5235, v2398, v2399, v2400, v2401);
          }

          while (v2074);
        }

        goto LABEL_144;
      }

      return;
    }

    if (!v23 || !objc_msgSend_numberOfRightHandSides(selfCopy, v24, v25, v26, v27, v28, v29, v30))
    {
      return;
    }

    v5190 = MPSLibrary::GetComputeState();
    v5181 = MPSLibrary::GetComputeState();
    objc_msgSend_unit(selfCopy, v4440, v4441, v4442, v4443, v4444, v4445, v4446);
    v5127 = MPSLibrary::GetComputeState();
    v4454 = objc_msgSend_numberOfRightHandSides(selfCopy, v4447, v4448, v4449, v4450, v4451, v4452, v4453);
    *v5233 = v4454;
    *&v5233[4] = v22;
    *&v5233[12] = objc_msgSend_rowBytes(solutionMatrix, v4455, v4456, v4457, v4458, v4459, v4460, v4461);
    *&v5233[16] = objc_msgSend_rowBytes(matrix, v4462, v4463, v4464, v4465, v4466, v4467, v4468);
    *&v5233[20] = objc_msgSend_rowBytes(sideMatrix, v4469, v4470, v4471, v4472, v4473, v4474, v4475);
    *&v5233[24] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v4476, v4477, v4478, v4479, v4480, v4481, v4482);
    *&v5233[28] = -1082130432;
    objc_msgSend_alpha(selfCopy, v4483, v4484, v4485, v4486, v4487, v4488, v4489);
    *&v4490 = v4490;
    *&v5233[32] = LODWORD(v4490);
    v5230 = *&v5222[*MEMORY[0x277CD7390]];
    v5231 = *&v5222[*MEMORY[0x277CD73B8]];
    v4491 = MEMORY[0x277CD73B0];
    v5232 = *&v5222[*MEMORY[0x277CD73B0]];
    v5227 = objc_msgSend_numberOfRightHandSides(selfCopy, v4492, v4493, v4494, v4495, v4496, v4497, v4498);
    v5228 = v22;
    v5229 = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v4499, v4500, v4501, v4502, v4503, v4504, v4505);
    v5224 = objc_msgSend_columns(solutionMatrix, v4506, v4507, v4508, v4509, v4510, v4511, v4512);
    v5225 = objc_msgSend_rows(solutionMatrix, v4513, v4514, v4515, v4516, v4517, v4518, v4519);
    v5226 = objc_msgSend_rowBytes(solutionMatrix, v4520, v4521, v4522, v4523, v4524, v4525, v4526);
    v5163 = objc_msgSend_numberOfRightHandSides(selfCopy, v4527, v4528, v4529, v4530, v4531, v4532, v4533);
    v5211 = *&v5222[*v4491];
    v5156 = objc_msgSend_order(selfCopy, v4534, v4535, v4536, v4537, v4538, v4539, v4540);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v4541, v4542, v4543, v4544, v4545, v4546, v4547);
    v4555 = objc_msgSend_rowBytes(matrix, v4548, v4549, v4550, v4551, v4552, v4553, v4554);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v4556, v4557, v4558, v4559, v4560, v4561, v4562);
    v4570 = objc_msgSend_dataType(matrix, v4563, v4564, v4565, v4566, v4567, v4568, v4569);
    matrixCopy4 = matrix;
    v4572 = MEMORY[0x277CD73A8];
    v4573 = *&matrixCopy4[*MEMORY[0x277CD73A8]] + v4555 * *v5235 + *&v5234[8] * (v4570 >> 3);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v4574, v4575, v4576, v4577, v4578, v4579, v4580);
    v5135 = objc_msgSend_rowBytes(sideMatrix, v4581, v4582, v4583, v4584, v4585, v4586, v4587);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v4588, v4589, v4590, v4591, v4592, v4593, v4594);
    v5108 = objc_msgSend_dataType(sideMatrix, v4595, v4596, v4597, v4598, v4599, v4600, v4601);
    v5099 = *(sideMatrix + *v4572);
    objc_msgSend_resultMatrixOrigin(selfCopy, v4602, v4603, v4604, v4605, v4606, v4607, v4608);
    v5076 = objc_msgSend_rowBytes(solutionMatrix, v4609, v4610, v4611, v4612, v4613, v4614, v4615);
    objc_msgSend_resultMatrixOrigin(selfCopy, v4616, v4617, v4618, v4619, v4620, v4621, v4622);
    v4630 = objc_msgSend_dataType(solutionMatrix, v4623, v4624, v4625, v4626, v4627, v4628, v4629);
    v4631 = *(solutionMatrix + *v4572);
    v4639 = objc_msgSend_order(selfCopy, v4632, v4633, v4634, v4635, v4636, v4637, v4638);
    objc_msgSend_setComputePipelineState_(encoder, v4640, v5127, v4641, v4642, v4643, v4644, v4645);
    *v5239 = v4639;
    *&v5239[4] = v4639;
    *&v5239[8] = objc_msgSend_rowBytes(matrixCopy4, v4646, v4647, v4648, v4649, v4650, v4651, v4652);
    v5236 = v5220;
    v5237 = v4639;
    v5238 = objc_msgSend_rowBytes(v5222, v4653, v4654, v4655, v4656, v4657, v4658, v4659);
    v4667 = objc_msgSend_data(matrixCopy4, v4660, v4661, v4662, v4663, v4664, v4665, v4666);
    v5172 = v4573;
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v4668, v4667, v4573, 0, v4669, v4670, v4671);
    v4679 = objc_msgSend_data(v5222, v4672, v4673, v4674, v4675, v4676, v4677, v4678);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v4680, v4679, 0, 1, v4681, v4682, v4683);
    objc_msgSend_setBytes_length_atIndex_(encoder, v4684, v5239, 12, 2, v4685, v4686, v4687);
    objc_msgSend_setBytes_length_atIndex_(encoder, v4688, &v5236, 12, 3, v4689, v4690, v4691);
    v4697 = v5220 + v4639 - 1;
    v4698 = 4;
    if ((v5191 & 0x400) != 0)
    {
      v4699 = 4;
    }

    else
    {
      v4699 = 32;
    }

    if ((v5191 & 0x400) == 0)
    {
      v4698 = 7;
    }

    v4700 = (4 * v4699 + v4454 + 1) >> v4698;
    v4701 = v5156 * v5211;
    v4702 = v5099 + v5135 * *v5235 + *&v5234[8] * (v5108 >> 3);
    v4703 = v4631 + v5076 * *v5235;
    v4704 = selfCopy;
    v4705 = 5;
    if ((v5191 & 0x400) == 0)
    {
      v4705 = 6;
    }

    *v5235 = v4697 >> v4705;
    *&v5235[8] = vdupq_n_s64(1uLL);
    v5212 = v4703 + *&v5234[8] * (v4630 >> 3);
    *v5234 = v5220;
    *&v5234[8] = *&v5235[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v4692, v5235, v5234, v4693, v4694, v4695, v4696);
    v4713 = objc_msgSend_order(selfCopy, v4706, v4707, v4708, v4709, v4710, v4711, v4712);
    v4721 = 0;
    if (v4713 >= v5220)
    {
      v4721 = 0;
      v5136 = vdupq_n_s64(1uLL);
      do
      {
        *&v5233[8] = v4721;
        objc_msgSend_setComputePipelineState_(encoder, v4714, v5190, v4716, v4717, v4718, v4719, v4720);
        v4729 = objc_msgSend_data(solutionMatrix, v4722, v4723, v4724, v4725, v4726, v4727, v4728);
        objc_msgSend_rowBytes(solutionMatrix, v4730, v4731, v4732, v4733, v4734, v4735, v4736);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v4737, v4729, v5212, 0, v4738, v4739, v4740);
        v4748 = objc_msgSend_data(matrixCopy, v4741, v4742, v4743, v4744, v4745, v4746, v4747);
        v4756 = objc_msgSend_rowBytes(matrixCopy, v4749, v4750, v4751, v4752, v4753, v4754, v4755);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v4757, v4748, v5172 + v4756 * v4721, 1, v4758, v4759, v4760);
        v4768 = objc_msgSend_data(sideMatrix, v4761, v4762, v4763, v4764, v4765, v4766, v4767);
        v4776 = objc_msgSend_rowBytes(sideMatrix, v4769, v4770, v4771, v4772, v4773, v4774, v4775);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v4777, v4768, v4702 + v4776 * v4721, 2, v4778, v4779, v4780);
        v4788 = objc_msgSend_data(v5222, v4781, v4782, v4783, v4784, v4785, v4786, v4787);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v4789, v4788, v4701, 3, v4790, v4791, v4792);
        objc_msgSend_setBytes_length_atIndex_(encoder, v4793, v5233, 36, 4, v4794, v4795, v4796);
        *v5235 = v4700;
        *&v5235[8] = (v5220 + 65) >> 6;
        *&v5235[16] = 1;
        *v5234 = v4699;
        *&v5234[8] = xmmword_2399EE7D0;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v4797, v5235, v5234, v4798, v4799, v4800, v4801);
        objc_msgSend_setComputePipelineState_(encoder, v4802, v5181, v4803, v4804, v4805, v4806, v4807);
        v4815 = objc_msgSend_data(v5222, v4808, v4809, v4810, v4811, v4812, v4813, v4814);
        v4823 = objc_msgSend_rowBytes(v5222, v4816, v4817, v4818, v4819, v4820, v4821, v4822);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v4824, v4815, v4823 * v4721, 0, v4825, v4826, v4827);
        v4835 = objc_msgSend_data(v5222, v4828, v4829, v4830, v4831, v4832, v4833, v4834);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v4836, v4835, v4701, 1, v4837, v4838, v4839);
        v4847 = objc_msgSend_data(solutionMatrix, v4840, v4841, v4842, v4843, v4844, v4845, v4846);
        v4855 = objc_msgSend_rowBytes(solutionMatrix, v4848, v4849, v4850, v4851, v4852, v4853, v4854);
        v4856 = v4847;
        v4704 = v5214;
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v4857, v4856, v5212 + v4855 * v4721, 2, v4858, v4859, v4860);
        objc_msgSend_setBytes_length_atIndex_(encoder, v4861, &v5230, 12, 3, v4862, v4863, v4864);
        objc_msgSend_setBytes_length_atIndex_(encoder, v4865, &v5227, 12, 4, v4866, v4867, v4868);
        objc_msgSend_setBytes_length_atIndex_(encoder, v4869, &v5224, 12, 5, v4870, v4871, v4872);
        *v5235 = v5163;
        *&v5235[8] = v5136;
        *v5234 = v5220;
        *&v5234[8] = v5136;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v4873, v5235, v5234, v4874, v4875, v4876, v4877);
        v4721 += v5220;
      }

      while (v5220 + v4721 <= objc_msgSend_order(v5214, v4878, v4879, v4880, v4881, v4882, v4883, v4884));
    }

    v5144 = v4700;
    v4885 = v4701;
    if (v4721 < objc_msgSend_order(v4704, v4714, v4715, v4716, v4717, v4718, v4719, v4720))
    {
      v4893 = objc_msgSend_order(v4704, v4886, v4887, v4888, v4889, v4890, v4891, v4892);
      *&v5233[4] = v4893 - v4721;
      *&v5233[8] = v4721;
      v5218 = (v4893 - v4721 + 65) >> 6;
      v5230 = v4893 - v4721;
      v5228 = v4893 - v4721;
      objc_msgSend_setComputePipelineState_(encoder, v4894, v5190, v4895, v4896, v4897, v4898, v4899);
      v4907 = objc_msgSend_data(solutionMatrix, v4900, v4901, v4902, v4903, v4904, v4905, v4906);
      objc_msgSend_rowBytes(solutionMatrix, v4908, v4909, v4910, v4911, v4912, v4913, v4914);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v4915, v4907, v5212, 0, v4916, v4917, v4918);
      v4926 = objc_msgSend_data(matrixCopy, v4919, v4920, v4921, v4922, v4923, v4924, v4925);
      v4934 = objc_msgSend_rowBytes(matrixCopy, v4927, v4928, v4929, v4930, v4931, v4932, v4933);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v4935, v4926, v5172 + v4934 * v4721, 1, v4936, v4937, v4938);
      v4946 = objc_msgSend_data(sideMatrix, v4939, v4940, v4941, v4942, v4943, v4944, v4945);
      v4954 = objc_msgSend_rowBytes(sideMatrix, v4947, v4948, v4949, v4950, v4951, v4952, v4953);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v4955, v4946, v4702 + v4954 * v4721, 2, v4956, v4957, v4958);
      v4966 = objc_msgSend_data(v5222, v4959, v4960, v4961, v4962, v4963, v4964, v4965);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v4967, v4966, v4885, 3, v4968, v4969, v4970);
      objc_msgSend_setBytes_length_atIndex_(encoder, v4971, v5233, 36, 4, v4972, v4973, v4974);
      *v5235 = v5144;
      *&v5235[8] = v5218;
      *&v5235[16] = 1;
      *v5234 = v4699;
      *&v5234[8] = xmmword_2399EE7D0;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v4975, v5235, v5234, v4976, v4977, v4978, v4979);
      objc_msgSend_setComputePipelineState_(encoder, v4980, v5181, v4981, v4982, v4983, v4984, v4985);
      v4993 = objc_msgSend_data(v5222, v4986, v4987, v4988, v4989, v4990, v4991, v4992);
      v5001 = objc_msgSend_rowBytes(v5222, v4994, v4995, v4996, v4997, v4998, v4999, v5000);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v5002, v4993, v5001 * v4721, 0, v5003, v5004, v5005);
      v5013 = objc_msgSend_data(v5222, v5006, v5007, v5008, v5009, v5010, v5011, v5012);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v5014, v5013, v4885, 1, v5015, v5016, v5017);
      v5025 = objc_msgSend_data(solutionMatrix, v5018, v5019, v5020, v5021, v5022, v5023, v5024);
      v5033 = objc_msgSend_rowBytes(solutionMatrix, v5026, v5027, v5028, v5029, v5030, v5031, v5032);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v5034, v5025, v5212 + v5033 * v4721, 2, v5035, v5036, v5037);
      objc_msgSend_setBytes_length_atIndex_(encoder, v5038, &v5230, 12, 3, v5039, v5040, v5041);
      objc_msgSend_setBytes_length_atIndex_(encoder, v5042, &v5227, 12, 4, v5043, v5044, v5045);
      objc_msgSend_setBytes_length_atIndex_(encoder, v5046, &v5224, 12, 5, v5047, v5048, v5049);
      *v5235 = v5163;
      *&v5235[8] = vdupq_n_s64(1uLL);
      *v5234 = v5220;
      *&v5234[8] = *&v5235[8];
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v5050, v5235, v5234, v5051, v5052, v5053, v5054);
    }

    goto LABEL_96;
  }

  if (upper)
  {
    if (transpose)
    {
      if (v23 && objc_msgSend_numberOfRightHandSides(selfCopy, v24, v25, v26, v27, v28, v29, v30))
      {
        v5137 = MPSLibrary::GetComputeState();
        v5182 = MPSLibrary::GetComputeState();
        v5092 = MPSLibrary::GetComputeState();
        objc_msgSend_unit(selfCopy, v31, v32, v33, v34, v35, v36, v37);
        v5077 = MPSLibrary::GetComputeState();
        solutionMatrixCopy3 = solutionMatrix;
        v5236 = objc_msgSend_columns(solutionMatrix, v39, v40, v41, v42, v43, v44, v45);
        v5237 = objc_msgSend_rows(solutionMatrix, v46, v47, v48, v49, v50, v51, v52);
        v5238 = objc_msgSend_rowBytes(solutionMatrix, v53, v54, v55, v56, v57, v58, v59);
        v5164 = objc_msgSend_numberOfRightHandSides(selfCopy, v60, v61, v62, v63, v64, v65, v66);
        v5199 = *&v5222[*MEMORY[0x277CD73B0]];
        v5173 = objc_msgSend_order(selfCopy, v67, v68, v69, v70, v71, v72, v73);
        objc_msgSend_primarySourceMatrixOrigin(selfCopy, v74, v75, v76, v77, v78, v79, v80);
        matrixCopy5 = matrix;
        v89 = objc_msgSend_rowBytes(matrix, v81, v82, v83, v84, v85, v86, v87);
        objc_msgSend_primarySourceMatrixOrigin(selfCopy, v90, v91, v92, v93, v94, v95, v96);
        v97 = *&v5235[8];
        v105 = objc_msgSend_dataType(matrixCopy5, v98, v99, v100, v101, v102, v103, v104);
        v106 = MEMORY[0x277CD73A8];
        v107 = *&matrixCopy5[*MEMORY[0x277CD73A8]] + v89 * *v5233 + v97 * (v105 >> 3);
        objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v108, v109, v110, v111, v112, v113, v114);
        v5145 = objc_msgSend_rowBytes(sideMatrix, v115, v116, v117, v118, v119, v120, v121);
        objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v122, v123, v124, v125, v126, v127, v128);
        v5109 = *&v5235[8];
        v5100 = objc_msgSend_dataType(sideMatrix, v129, v130, v131, v132, v133, v134, v135);
        v5084 = *(sideMatrix + *v106);
        objc_msgSend_resultMatrixOrigin(selfCopy, v136, v137, v138, v139, v140, v141, v142);
        v143 = selfCopy;
        v144 = *v5233;
        v5069 = objc_msgSend_rowBytes(solutionMatrix, v145, v146, v147, v148, v149, v150, v151);
        objc_msgSend_resultMatrixOrigin(v143, v152, v153, v154, v155, v156, v157, v158);
        v159 = *&v5235[8];
        v5063 = objc_msgSend_dataType(solutionMatrix, v160, v161, v162, v163, v164, v165, v166);
        v167 = *(solutionMatrix + *v106);
        v175 = objc_msgSend_order(v143, v168, v169, v170, v171, v172, v173, v174);
        objc_msgSend_setComputePipelineState_(encoder, v176, v5077, v177, v178, v179, v180, v181);
        *v5234 = v175;
        *&v5234[4] = v175;
        *&v5234[8] = objc_msgSend_rowBytes(matrixCopy5, v182, v183, v184, v185, v186, v187, v188);
        *v5239 = v5220;
        *&v5239[4] = v175;
        *&v5239[8] = objc_msgSend_rowBytes(v5222, v189, v190, v191, v192, v193, v194, v195);
        v196 = matrixCopy5;
        v197 = v5220;
        v205 = objc_msgSend_data(v196, v198, v199, v200, v201, v202, v203, v204);
        v5118 = v107;
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v206, v205, v107, 0, v207, v208, v209);
        v217 = objc_msgSend_data(v5222, v210, v211, v212, v213, v214, v215, v216);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v218, v217, 0, 1, v219, v220, v221);
        objc_msgSend_setBytes_length_atIndex_(encoder, v222, v5234, 12, 2, v223, v224, v225);
        objc_msgSend_setBytes_length_atIndex_(encoder, v226, v5239, 12, 3, v227, v228, v229);
        v235 = v5220 - 1;
        v236 = 8;
        if ((v5191 & 0x400) == 0)
        {
          v236 = 32;
        }

        v5128 = v236;
        v237 = v5173 * v5199;
        v5157 = v5084 + v5145 * *v5233 + v5109 * (v5100 >> 3);
        v238 = 5;
        if ((v5191 & 0x400) == 0)
        {
          v238 = 6;
        }

        *v5233 = (v175 + v235) >> v238;
        *&v5233[8] = vdupq_n_s64(1uLL);
        v239 = v167 + v5069 * v144 + v159 * (v5063 >> 3);
        *v5235 = v5220;
        *&v5235[8] = *&v5233[8];
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v230, v5233, v5235, v231, v232, v233, v234);
        v247 = objc_msgSend_order(v143, v240, v241, v242, v243, v244, v245, v246) & v235;
        v262 = objc_msgSend_order(v143, v248, v249, v250, v251, v252, v253, v254) - v247;
        v5146 = v239;
        if (v247)
        {
          *v5234 = v247;
          v263 = objc_msgSend_numberOfRightHandSides(v143, v255, v256, v257, v258, v259, v260, v261);
          *&v5234[4] = v263;
          *&v5234[8] = objc_msgSend_rowBytes(sideMatrixCopy, v264, v265, v266, v267, v268, v269, v270);
          *&v5234[12] = *&v5222[*MEMORY[0x277CD73B0]];
          objc_msgSend_alpha(v143, v271, v272, v273, v274, v275, v276, v277);
          *&v278 = v278;
          *&v5234[16] = LODWORD(v278);
          v5200 = (v263 + 31) >> 5;
          objc_msgSend_setComputePipelineState_(encoder, v279, v5092, v280, v281, v282, v283, v284);
          v292 = objc_msgSend_data(sideMatrixCopy, v285, v286, v287, v288, v289, v290, v291);
          v300 = objc_msgSend_dataType(sideMatrixCopy, v293, v294, v295, v296, v297, v298, v299);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v301, v292, v5157 + v262 * (v300 >> 3), 0, v302, v303, v304);
          v312 = objc_msgSend_data(v5222, v305, v306, v307, v308, v309, v310, v311);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v313, v312, v237, 1, v314, v315, v316);
          objc_msgSend_setBytes_length_atIndex_(encoder, v317, v5234, 20, 2, v318, v319, v320);
          *v5233 = (v247 + 15) >> 4;
          *&v5233[8] = v5200;
          *&v5233[16] = 1;
          *v5235 = vdupq_n_s64(8uLL);
          *&v5235[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v321, v5233, v5235, v322, v323, v324, v325);
          *v5239 = v247;
          *&v5239[4] = *&v5222[*MEMORY[0x277CD73B8]];
          v326 = MEMORY[0x277CD73B0];
          *&v5239[8] = *&v5222[*MEMORY[0x277CD73B0]];
          v5230 = v247;
          v5231 = objc_msgSend_numberOfRightHandSides(v143, v327, v328, v329, v330, v331, v332, v333);
          v5232 = *&v5222[*v326];
          objc_msgSend_setComputePipelineState_(encoder, v334, v5182, v335, v336, v337, v338, v339);
          v347 = objc_msgSend_data(v5222, v340, v341, v342, v343, v344, v345, v346);
          v355 = objc_msgSend_rowBytes(v5222, v348, v349, v350, v351, v352, v353, v354);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v356, v347, v355 * v262, 0, v357, v358, v359);
          v367 = objc_msgSend_data(v5222, v360, v361, v362, v363, v364, v365, v366);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v368, v367, v237, 1, v369, v370, v371);
          v379 = objc_msgSend_data(solutionMatrix, v372, v373, v374, v375, v376, v377, v378);
          v387 = objc_msgSend_dataType(solutionMatrix, v380, v381, v382, v383, v384, v385, v386);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v388, v379, v239 + v262 * (v387 >> 3), 2, v389, v390, v391);
          objc_msgSend_setBytes_length_atIndex_(encoder, v392, v5239, 12, 3, v393, v394, v395);
          objc_msgSend_setBytes_length_atIndex_(encoder, v396, &v5230, 12, 4, v397, v398, v399);
          objc_msgSend_setBytes_length_atIndex_(encoder, v400, &v5236, 12, 5, v401, v402, v403);
          *v5233 = v5164;
          *&v5233[8] = vdupq_n_s64(1uLL);
          *v5235 = v5220;
          *&v5235[8] = *&v5233[8];
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v404, v5233, v5235, v405, v406, v407, v408);
        }

        if (v262)
        {
          v409 = 5;
          if ((v5191 & 0x400) == 0)
          {
            v409 = 7;
          }

          v5110 = v409;
          v5085 = vdupq_n_s64(8uLL);
          do
          {
            v1159 = objc_msgSend_order(v143, v255, v256, v257, v258, v259, v260, v261);
            v1167 = v1159 - v262;
            v1168 = MEMORY[0x277CD73B0];
            if (v1159 == v262)
            {
              *&v5234[12] = 0;
              *&v5234[4] = 0;
              *v5234 = v197;
              *&v5234[4] = objc_msgSend_numberOfRightHandSides(v143, v1160, v1161, v1162, v1163, v1164, v1165, v1166);
              *&v5234[8] = objc_msgSend_rowBytes(sideMatrixCopy, v1009, v1010, v1011, v1012, v1013, v1014, v1015);
              *&v5234[12] = *&v5222[*v1168];
              objc_msgSend_alpha(v143, v1016, v1017, v1018, v1019, v1020, v1021, v1022);
              *&v1023 = v1023;
              *&v5234[16] = LODWORD(v1023);
              v1024 = (*v5234 + 15) >> 4;
              v1025 = (*&v5234[4] + 31) >> 5;
              encoderCopy2 = encoder;
              objc_msgSend_setComputePipelineState_(encoder, v1027, v5092, v1028, v1029, v1030, v1031, v1032);
              v1040 = objc_msgSend_data(sideMatrixCopy, v1033, v1034, v1035, v1036, v1037, v1038, v1039);
              v262 -= v197;
              v1048 = objc_msgSend_dataType(sideMatrixCopy, v1041, v1042, v1043, v1044, v1045, v1046, v1047);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v1049, v1040, v5157 + v262 * (v1048 >> 3), 0, v1050, v1051, v1052);
              v1060 = objc_msgSend_data(v5222, v1053, v1054, v1055, v1056, v1057, v1058, v1059);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v1061, v1060, v237, 1, v1062, v1063, v1064);
              objc_msgSend_setBytes_length_atIndex_(encoder, v1065, v5234, 20, 2, v1066, v1067, v1068);
              *v5233 = v1024;
              *&v5233[8] = v1025;
              v1069 = v237;
              solutionMatrixCopy3 = solutionMatrix;
              *&v5233[16] = 1;
              *v5235 = v5085;
              *&v5235[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1070, v5233, v5235, v1071, v1072, v1073, v1074);
              v1082 = v5146;
            }

            else
            {
              memset(&v5233[4], 0, 32);
              *v5233 = v197;
              *&v5233[4] = objc_msgSend_numberOfRightHandSides(v143, v1160, v1161, v1162, v1163, v1164, v1165, v1166);
              *&v5233[8] = v1167;
              *&v5233[12] = objc_msgSend_rowBytes(matrixCopy, v1169, v1170, v1171, v1172, v1173, v1174, v1175);
              *&v5233[16] = objc_msgSend_rowBytes(solutionMatrixCopy3, v1176, v1177, v1178, v1179, v1180, v1181, v1182);
              *&v5233[20] = objc_msgSend_rowBytes(sideMatrixCopy, v1183, v1184, v1185, v1186, v1187, v1188, v1189);
              *&v5233[24] = *&v5222[*v1168];
              *&v5233[28] = -1082130432;
              objc_msgSend_alpha(v143, v1190, v1191, v1192, v1193, v1194, v1195, v1196);
              *&v1197 = v1197;
              *&v5233[32] = LODWORD(v1197);
              v5193 = (((4 * v5128) | 1) + *&v5233[4]) >> v5110;
              v5202 = (*v5233 + 33) >> 5;
              encoderCopy2 = encoder;
              objc_msgSend_setComputePipelineState_(encoder, v1198, v5137, v1199, v1200, v1201, v1202, v1203);
              v1211 = objc_msgSend_data(matrixCopy, v1204, v1205, v1206, v1207, v1208, v1209, v1210);
              v1219 = v5118 + objc_msgSend_rowBytes(matrixCopy, v1212, v1213, v1214, v1215, v1216, v1217, v1218) * (v262 - v5220);
              v197 = v5220;
              v1227 = v1219 + v262 * (objc_msgSend_dataType(matrixCopy, v1220, v1221, v1222, v1223, v1224, v1225, v1226) >> 3);
              solutionMatrixCopy3 = solutionMatrix;
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v1228, v1211, v1227, 0, v1229, v1230, v1231);
              v1239 = objc_msgSend_data(solutionMatrix, v1232, v1233, v1234, v1235, v1236, v1237, v1238);
              v1247 = objc_msgSend_dataType(solutionMatrix, v1240, v1241, v1242, v1243, v1244, v1245, v1246);
              v1082 = v5146;
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v1248, v1239, v5146 + v262 * (v1247 >> 3), 1, v1249, v1250, v1251);
              v1259 = objc_msgSend_data(sideMatrixCopy, v1252, v1253, v1254, v1255, v1256, v1257, v1258);
              v1267 = objc_msgSend_dataType(sideMatrixCopy, v1260, v1261, v1262, v1263, v1264, v1265, v1266);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v1268, v1259, v5157 + (v262 - v5220) * (v1267 >> 3), 2, v1269, v1270, v1271);
              v1279 = objc_msgSend_data(v5222, v1272, v1273, v1274, v1275, v1276, v1277, v1278);
              v1069 = v237;
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v1280, v1279, v237, 3, v1281, v1282, v1283);
              objc_msgSend_setBytes_length_atIndex_(encoder, v1284, v5233, 36, 4, v1285, v1286, v1287);
              *v5235 = v5202;
              *&v5235[8] = v5193;
              *&v5235[16] = 1;
              *v5234 = 8;
              *&v5234[8] = v5128;
              *&v5234[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1288, v5235, v5234, v1289, v1290, v1291, v1292);
              v262 -= v5220;
            }

            *v5234 = v197;
            *&v5234[4] = *&v5222[*MEMORY[0x277CD73B8]];
            v1083 = MEMORY[0x277CD73B0];
            *&v5234[8] = *&v5222[*MEMORY[0x277CD73B0]];
            *&v5239[4] = 0;
            *v5239 = v197;
            *&v5239[4] = objc_msgSend_numberOfRightHandSides(v5214, v1075, v1076, v1077, v1078, v1079, v1080, v1081);
            *&v5239[8] = *&v5222[*v1083];
            objc_msgSend_setComputePipelineState_(encoderCopy2, v1084, v5182, v1085, v1086, v1087, v1088, v1089);
            v1097 = objc_msgSend_data(v5222, v1090, v1091, v1092, v1093, v1094, v1095, v1096);
            v1105 = objc_msgSend_rowBytes(v5222, v1098, v1099, v1100, v1101, v1102, v1103, v1104);
            objc_msgSend_setBuffer_offset_atIndex_(encoderCopy2, v1106, v1097, v1105 * v262, 0, v1107, v1108, v1109);
            v1117 = objc_msgSend_data(v5222, v1110, v1111, v1112, v1113, v1114, v1115, v1116);
            objc_msgSend_setBuffer_offset_atIndex_(encoderCopy2, v1118, v1117, v1069, 1, v1119, v1120, v1121);
            v1129 = objc_msgSend_data(solutionMatrixCopy3, v1122, v1123, v1124, v1125, v1126, v1127, v1128);
            v1137 = objc_msgSend_dataType(solutionMatrixCopy3, v1130, v1131, v1132, v1133, v1134, v1135, v1136);
            objc_msgSend_setBuffer_offset_atIndex_(encoderCopy2, v1138, v1129, v1082 + v262 * (v1137 >> 3), 2, v1139, v1140, v1141);
            objc_msgSend_setBytes_length_atIndex_(encoderCopy2, v1142, v5234, 12, 3, v1143, v1144, v1145);
            objc_msgSend_setBytes_length_atIndex_(encoderCopy2, v1146, v5239, 12, 4, v1147, v1148, v1149);
            objc_msgSend_setBytes_length_atIndex_(encoderCopy2, v1150, &v5236, 12, 5, v1151, v1152, v1153);
            *v5233 = v5164;
            *&v5233[8] = vdupq_n_s64(1uLL);
            *v5235 = v197;
            *&v5235[8] = *&v5233[8];
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoderCopy2, v1154, v5233, v5235, v1155, v1156, v1157, v1158);
            v143 = v5214;
          }

          while (v262);
        }

LABEL_144:
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseComputeState();
        goto LABEL_145;
      }

      return;
    }

    if (!v23 || !objc_msgSend_numberOfRightHandSides(selfCopy, v24, v25, v26, v27, v28, v29, v30))
    {
      return;
    }

    v5206 = MPSLibrary::GetComputeState();
    v5186 = MPSLibrary::GetComputeState();
    objc_msgSend_unit(selfCopy, v2542, v2543, v2544, v2545, v2546, v2547, v2548);
    v5114 = MPSLibrary::GetComputeState();
    *v5233 = v22;
    DWORD2(v5152) = objc_msgSend_numberOfRightHandSides(selfCopy, v2549, v2550, v2551, v2552, v2553, v2554, v2555);
    *&v5233[4] = DWORD2(v5152);
    *&v5233[12] = objc_msgSend_rowBytes(matrix, v2556, v2557, v2558, v2559, v2560, v2561, v2562);
    *&v5233[16] = objc_msgSend_rowBytes(solutionMatrix, v2563, v2564, v2565, v2566, v2567, v2568, v2569);
    *&v5233[20] = objc_msgSend_rowBytes(sideMatrix, v2570, v2571, v2572, v2573, v2574, v2575, v2576);
    v2577 = MEMORY[0x277CD73B0];
    *&v5233[24] = *&v5222[*MEMORY[0x277CD73B0]];
    *&v5233[28] = -1082130432;
    objc_msgSend_alpha(selfCopy, v2578, v2579, v2580, v2581, v2582, v2583, v2584);
    *&v2585 = v2585;
    *&v5233[32] = LODWORD(v2585);
    v5230 = *&v5222[*MEMORY[0x277CD7390]];
    v5231 = *&v5222[*MEMORY[0x277CD73B8]];
    v5232 = *&v5222[*v2577];
    v5227 = v22;
    v5228 = objc_msgSend_numberOfRightHandSides(selfCopy, v2586, v2587, v2588, v2589, v2590, v2591, v2592);
    v5229 = *&v5222[*v2577];
    v5224 = objc_msgSend_columns(solutionMatrix, v2593, v2594, v2595, v2596, v2597, v2598, v2599);
    v5225 = objc_msgSend_rows(solutionMatrix, v2600, v2601, v2602, v2603, v2604, v2605, v2606);
    v5226 = objc_msgSend_rowBytes(solutionMatrix, v2607, v2608, v2609, v2610, v2611, v2612, v2613);
    v5169 = objc_msgSend_numberOfRightHandSides(selfCopy, v2614, v2615, v2616, v2617, v2618, v2619, v2620);
    *&v5152 = *&v5222[*v2577];
    v5141 = objc_msgSend_order(selfCopy, v2621, v2622, v2623, v2624, v2625, v2626, v2627);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v2628, v2629, v2630, v2631, v2632, v2633, v2634);
    v2642 = objc_msgSend_rowBytes(matrix, v2635, v2636, v2637, v2638, v2639, v2640, v2641);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v2643, v2644, v2645, v2646, v2647, v2648, v2649);
    v2657 = objc_msgSend_dataType(matrix, v2650, v2651, v2652, v2653, v2654, v2655, v2656);
    v2658 = MEMORY[0x277CD73A8];
    v2659 = *&matrixCopy[*MEMORY[0x277CD73A8]] + v2642 * *v5235 + *&v5234[8] * (v2657 >> 3);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v2660, v2661, v2662, v2663, v2664, v2665, v2666);
    v5122 = objc_msgSend_rowBytes(sideMatrix, v2667, v2668, v2669, v2670, v2671, v2672, v2673);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v2674, v2675, v2676, v2677, v2678, v2679, v2680);
    v5080 = objc_msgSend_dataType(sideMatrix, v2681, v2682, v2683, v2684, v2685, v2686, v2687);
    v5073 = *(sideMatrix + *v2658);
    objc_msgSend_resultMatrixOrigin(selfCopy, v2688, v2689, v2690, v2691, v2692, v2693, v2694);
    v5066 = *v5235;
    v5061 = objc_msgSend_rowBytes(solutionMatrix, v2695, v2696, v2697, v2698, v2699, v2700, v2701);
    objc_msgSend_resultMatrixOrigin(selfCopy, v2702, v2703, v2704, v2705, v2706, v2707, v2708);
    v2716 = objc_msgSend_dataType(solutionMatrix, v2709, v2710, v2711, v2712, v2713, v2714, v2715);
    v2717 = *v2658;
    v2718 = selfCopy;
    v2719 = matrixCopy;
    v2720 = *(solutionMatrix + v2717);
    v2728 = objc_msgSend_order(v2718, v2721, v2722, v2723, v2724, v2725, v2726, v2727);
    objc_msgSend_setComputePipelineState_(encoder, v2729, v5114, v2730, v2731, v2732, v2733, v2734);
    *v5239 = v2728;
    *&v5239[4] = v2728;
    *&v5239[8] = objc_msgSend_rowBytes(matrixCopy, v2735, v2736, v2737, v2738, v2739, v2740, v2741);
    v5236 = v5220;
    v5237 = v2728;
    v5238 = objc_msgSend_rowBytes(v5222, v2742, v2743, v2744, v2745, v2746, v2747, v2748);
    v2756 = objc_msgSend_data(matrixCopy, v2749, v2750, v2751, v2752, v2753, v2754, v2755);
    v5177 = v2659;
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v2757, v2756, v2659, 0, v2758, v2759, v2760);
    v2768 = objc_msgSend_data(v5222, v2761, v2762, v2763, v2764, v2765, v2766, v2767);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v2769, v2768, 0, 1, v2770, v2771, v2772);
    objc_msgSend_setBytes_length_atIndex_(encoder, v2773, v5239, 12, 2, v2774, v2775, v2776);
    objc_msgSend_setBytes_length_atIndex_(encoder, v2777, &v5236, 12, 3, v2778, v2779, v2780);
    v2786 = v5220 + v2728 - 1;
    v2787 = (v5191 & 0x400) == 0;
    v2788 = 4;
    v2789 = 32;
    if ((v5191 & 0x400) != 0)
    {
      v2789 = 4;
    }

    v5196 = v2789;
    if (v2787)
    {
      v2788 = 7;
    }

    v5096 = v2788;
    v5105 = (4 * v2789) | 1;
    *(&v5152 + 1) = (DWORD2(v5152) + 65) >> 6;
    v2790 = v5141 * v5152;
    v2791 = v5073 + v5122 * *v5235 + *&v5234[8] * (v5080 >> 3);
    v2792 = 5;
    if (v2787)
    {
      v2792 = 6;
    }

    *v5235 = v2786 >> v2792;
    *&v5235[8] = vdupq_n_s64(1uLL);
    v2793 = v2720 + v5061 * v5066 + *&v5234[8] * (v2716 >> 3);
    v2794 = v5220;
    *v5234 = v5220;
    *&v5234[8] = *&v5235[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v2781, v5235, v5234, v2782, v2783, v2784, v2785);
    v2809 = 0;
    if (objc_msgSend_order(v2718, v2795, v2796, v2797, v2798, v2799, v2800, v2801) >= v5220)
    {
      v2810 = 0;
      v2809 = 0;
      v5123 = vdupq_n_s64(1uLL);
      do
      {
        *&v5233[8] = v2809;
        objc_msgSend_setComputePipelineState_(encoder, v2802, v5206, v2804, v2805, v2806, v2807, v2808);
        v2818 = objc_msgSend_data(v2719, v2811, v2812, v2813, v2814, v2815, v2816, v2817);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v2819, v2818, v5177 + v2810, 0, v2820, v2821, v2822);
        v2830 = objc_msgSend_data(solutionMatrix, v2823, v2824, v2825, v2826, v2827, v2828, v2829);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v2831, v2830, v2793, 1, v2832, v2833, v2834);
        v2842 = objc_msgSend_data(sideMatrixCopy, v2835, v2836, v2837, v2838, v2839, v2840, v2841);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v2843, v2842, v2791 + v2810, 2, v2844, v2845, v2846);
        v2854 = objc_msgSend_data(v5222, v2847, v2848, v2849, v2850, v2851, v2852, v2853);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v2855, v2854, v2790, 3, v2856, v2857, v2858);
        objc_msgSend_setBytes_length_atIndex_(encoder, v2859, v5233, 36, 4, v2860, v2861, v2862);
        *&v5152 = (v5105 | v5220) >> v5096;
        *v5235 = v5152;
        *&v5235[16] = 1;
        *v5234 = v5196;
        *&v5234[8] = xmmword_2399EE7D0;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v2863, v5235, v5234, v2864, v2865, v2866, v2867);
        objc_msgSend_setComputePipelineState_(encoder, v2868, v5186, v2869, v2870, v2871, v2872, v2873);
        v2881 = v2718;
        v2882 = objc_msgSend_data(v5222, v2874, v2875, v2876, v2877, v2878, v2879, v2880);
        v2890 = objc_msgSend_rowBytes(v5222, v2883, v2884, v2885, v2886, v2887, v2888, v2889);
        v2891 = v2882;
        v2718 = v2881;
        v2719 = matrixCopy;
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v2892, v2891, v2890 * v2809, 0, v2893, v2894, v2895);
        v2794 = v5220;
        v2903 = objc_msgSend_data(v5222, v2896, v2897, v2898, v2899, v2900, v2901, v2902);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v2904, v2903, v2790, 1, v2905, v2906, v2907);
        v2915 = objc_msgSend_data(solutionMatrix, v2908, v2909, v2910, v2911, v2912, v2913, v2914);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v2916, v2915, v2793 + v2810, 2, v2917, v2918, v2919);
        objc_msgSend_setBytes_length_atIndex_(encoder, v2920, &v5230, 12, 3, v2921, v2922, v2923);
        objc_msgSend_setBytes_length_atIndex_(encoder, v2924, &v5227, 12, 4, v2925, v2926, v2927);
        objc_msgSend_setBytes_length_atIndex_(encoder, v2928, &v5224, 12, 5, v2929, v2930, v2931);
        *v5235 = v5169;
        *&v5235[8] = v5123;
        *v5234 = v5220;
        *&v5234[8] = v5123;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v2932, v5235, v5234, v2933, v2934, v2935, v2936);
        v2809 += v5220;
        v2810 += 4 * v5220;
      }

      while (v5220 + v2809 <= objc_msgSend_order(v2718, v2937, v2938, v2939, v2940, v2941, v2942, v2943));
    }

    if (v2809 < objc_msgSend_order(v2718, v2802, v2803, v2804, v2805, v2806, v2807, v2808))
    {
      v2951 = objc_msgSend_order(v2718, v2944, v2945, v2946, v2947, v2948, v2949, v2950);
      *v5233 = v2951 - v2809;
      *&v5233[8] = v2809;
      v5217 = (v2951 - v2809 + v5105) >> v5096;
      v5230 = v2951 - v2809;
      v5227 = v2951 - v2809;
      objc_msgSend_setComputePipelineState_(encoder, v2952, v5206, v2953, v2954, v2955, v2956, v2957);
      v2965 = objc_msgSend_data(v2719, v2958, v2959, v2960, v2961, v2962, v2963, v2964);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v2966, v2965, 4 * v2809 + v5177, 0, v2967, v2968, v2969);
      v2977 = objc_msgSend_data(solutionMatrix, v2970, v2971, v2972, v2973, v2974, v2975, v2976);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v2978, v2977, v2793, 1, v2979, v2980, v2981);
      v2989 = objc_msgSend_data(sideMatrixCopy, v2982, v2983, v2984, v2985, v2986, v2987, v2988);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v2990, v2989, 4 * v2809 + v2791, 2, v2991, v2992, v2993);
      v3001 = objc_msgSend_data(v5222, v2994, v2995, v2996, v2997, v2998, v2999, v3000);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v3002, v3001, v2790, 3, v3003, v3004, v3005);
      objc_msgSend_setBytes_length_atIndex_(encoder, v3006, v5233, 36, 4, v3007, v3008, v3009);
      *v5235 = v5217;
      *&v5235[8] = *(&v5152 + 1);
      *&v5235[16] = 1;
      *v5234 = v5196;
      *&v5234[8] = xmmword_2399EE7D0;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v3010, v5235, v5234, v3011, v3012, v3013, v3014);
      objc_msgSend_setComputePipelineState_(encoder, v3015, v5186, v3016, v3017, v3018, v3019, v3020);
      v3028 = objc_msgSend_data(v5222, v3021, v3022, v3023, v3024, v3025, v3026, v3027);
      v3036 = objc_msgSend_rowBytes(v5222, v3029, v3030, v3031, v3032, v3033, v3034, v3035);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v3037, v3028, v3036 * v2809, 0, v3038, v3039, v3040);
      v3048 = objc_msgSend_data(v5222, v3041, v3042, v3043, v3044, v3045, v3046, v3047);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v3049, v3048, v2790, 1, v3050, v3051, v3052);
      v3060 = objc_msgSend_data(solutionMatrix, v3053, v3054, v3055, v3056, v3057, v3058, v3059);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v3061, v3060, 4 * v2809 + v2793, 2, v3062, v3063, v3064);
      objc_msgSend_setBytes_length_atIndex_(encoder, v3065, &v5230, 12, 3, v3066, v3067, v3068);
      objc_msgSend_setBytes_length_atIndex_(encoder, v3069, &v5227, 12, 4, v3070, v3071, v3072);
      objc_msgSend_setBytes_length_atIndex_(encoder, v3073, &v5224, 12, 5, v3074, v3075, v3076);
      *v5235 = v5169;
      *&v5235[8] = vdupq_n_s64(1uLL);
      *v5234 = v2794;
      *&v5234[8] = *&v5235[8];
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v3077, v5235, v5234, v3078, v3079, v3080, v3081);
    }

LABEL_96:
    MPSLibrary::ReleaseComputeState();
LABEL_145:
    MPSLibrary::ReleaseComputeState();
LABEL_146:
    MPSLibrary::ReleaseComputeState();
    return;
  }

  if (transpose)
  {
    if (!v23 || !objc_msgSend_numberOfRightHandSides(selfCopy, v24, v25, v26, v27, v28, v29, v30))
    {
      return;
    }

    v5203 = MPSLibrary::GetComputeState();
    v5184 = MPSLibrary::GetComputeState();
    objc_msgSend_unit(selfCopy, v1293, v1294, v1295, v1296, v1297, v1298, v1299);
    v5120 = MPSLibrary::GetComputeState();
    *v5233 = v22;
    v5148 = objc_msgSend_numberOfRightHandSides(selfCopy, v1300, v1301, v1302, v1303, v1304, v1305, v1306);
    *&v5233[4] = v5148;
    *&v5233[12] = objc_msgSend_rowBytes(matrix, v1307, v1308, v1309, v1310, v1311, v1312, v1313);
    *&v5233[16] = objc_msgSend_rowBytes(solutionMatrix, v1314, v1315, v1316, v1317, v1318, v1319, v1320);
    *&v5233[20] = objc_msgSend_rowBytes(sideMatrix, v1321, v1322, v1323, v1324, v1325, v1326, v1327);
    v1328 = MEMORY[0x277CD73B0];
    *&v5233[24] = *&v5222[*MEMORY[0x277CD73B0]];
    *&v5233[28] = -1082130432;
    objc_msgSend_alpha(selfCopy, v1329, v1330, v1331, v1332, v1333, v1334, v1335);
    *&v1336 = v1336;
    *&v5233[32] = LODWORD(v1336);
    v5230 = *&v5222[*MEMORY[0x277CD7390]];
    v5231 = *&v5222[*MEMORY[0x277CD73B8]];
    v5232 = *&v5222[*v1328];
    v5227 = v22;
    v5228 = objc_msgSend_numberOfRightHandSides(selfCopy, v1337, v1338, v1339, v1340, v1341, v1342, v1343);
    v5229 = *&v5222[*v1328];
    v5224 = objc_msgSend_columns(solutionMatrix, v1344, v1345, v1346, v1347, v1348, v1349, v1350);
    v5225 = objc_msgSend_rows(solutionMatrix, v1351, v1352, v1353, v1354, v1355, v1356, v1357);
    v5226 = objc_msgSend_rowBytes(solutionMatrix, v1358, v1359, v1360, v1361, v1362, v1363, v1364);
    v5166 = objc_msgSend_numberOfRightHandSides(selfCopy, v1365, v1366, v1367, v1368, v1369, v1370, v1371);
    v5139 = *&v5222[*v1328];
    v5130 = objc_msgSend_order(selfCopy, v1372, v1373, v1374, v1375, v1376, v1377, v1378);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v1379, v1380, v1381, v1382, v1383, v1384, v1385);
    v1393 = objc_msgSend_rowBytes(matrix, v1386, v1387, v1388, v1389, v1390, v1391, v1392);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v1394, v1395, v1396, v1397, v1398, v1399, v1400);
    v1408 = objc_msgSend_dataType(matrix, v1401, v1402, v1403, v1404, v1405, v1406, v1407);
    matrixCopy6 = matrix;
    v1410 = MEMORY[0x277CD73A8];
    v1411 = *&matrixCopy6[*MEMORY[0x277CD73A8]] + v1393 * *v5235 + *&v5234[8] * (v1408 >> 3);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v1412, v1413, v1414, v1415, v1416, v1417, v1418);
    v5102 = objc_msgSend_rowBytes(sideMatrix, v1419, v1420, v1421, v1422, v1423, v1424, v1425);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v1426, v1427, v1428, v1429, v1430, v1431, v1432);
    v5087 = objc_msgSend_dataType(sideMatrix, v1433, v1434, v1435, v1436, v1437, v1438, v1439);
    v5078 = *(sideMatrix + *v1410);
    objc_msgSend_resultMatrixOrigin(selfCopy, v1440, v1441, v1442, v1443, v1444, v1445, v1446);
    v5071 = *v5235;
    v1454 = objc_msgSend_rowBytes(solutionMatrix, v1447, v1448, v1449, v1450, v1451, v1452, v1453);
    objc_msgSend_resultMatrixOrigin(selfCopy, v1455, v1456, v1457, v1458, v1459, v1460, v1461);
    v1469 = objc_msgSend_dataType(solutionMatrix, v1462, v1463, v1464, v1465, v1466, v1467, v1468);
    v1470 = *(solutionMatrix + *v1410);
    v1478 = objc_msgSend_order(v5214, v1471, v1472, v1473, v1474, v1475, v1476, v1477);
    objc_msgSend_setComputePipelineState_(encoder, v1479, v5120, v1480, v1481, v1482, v1483, v1484);
    *v5239 = v1478;
    *&v5239[4] = v1478;
    *&v5239[8] = objc_msgSend_rowBytes(matrixCopy6, v1485, v1486, v1487, v1488, v1489, v1490, v1491);
    v5236 = v5220;
    v5237 = v1478;
    v5238 = objc_msgSend_rowBytes(v5222, v1492, v1493, v1494, v1495, v1496, v1497, v1498);
    v1506 = objc_msgSend_data(matrixCopy6, v1499, v1500, v1501, v1502, v1503, v1504, v1505);
    v5175 = v1411;
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v1507, v1506, v1411, 0, v1508, v1509, v1510);
    v1518 = objc_msgSend_data(v5222, v1511, v1512, v1513, v1514, v1515, v1516, v1517);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v1519, v1518, 0, 1, v1520, v1521, v1522);
    objc_msgSend_setBytes_length_atIndex_(encoder, v1523, v5239, 12, 2, v1524, v1525, v1526);
    objc_msgSend_setBytes_length_atIndex_(encoder, v1527, &v5236, 12, 3, v1528, v1529, v1530);
    v1536 = 8;
    if ((v5191 & 0x400) == 0)
    {
      v1536 = 32;
    }

    v5160 = v1536;
    v1537 = 4 * v1536 + v5148 + 1;
    v1538 = 5;
    v1539 = 7;
    if ((v5191 & 0x400) != 0)
    {
      v1539 = 5;
    }

    v5149 = v1537 >> v1539;
    v1540 = v5130 * v5139;
    v5112 = v5078 + v5102 * *v5235 + *&v5234[8] * (v5087 >> 3);
    v1541 = v1469 >> 3;
    v1542 = v5214;
    if ((v5191 & 0x400) == 0)
    {
      v1538 = 6;
    }

    *v5235 = (v5220 + v1478 - 1) >> v1538;
    *&v5235[8] = vdupq_n_s64(1uLL);
    v5194 = v1470 + v1454 * v5071 + *&v5234[8] * v1541;
    *v5234 = v5220;
    *&v5234[8] = *&v5235[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1531, v5235, v5234, v1532, v1533, v1534, v1535);
    v1557 = 0;
    if (objc_msgSend_order(v5214, v1543, v1544, v1545, v1546, v1547, v1548, v1549) >= v5220)
    {
      v1557 = 0;
      v1558 = 4 * v5220;
      v5131 = vdupq_n_s64(1uLL);
      v1559 = v5112;
      v1560 = v5194;
      do
      {
        *&v5233[8] = v1557;
        objc_msgSend_setComputePipelineState_(encoder, v1550, v5203, v1552, v1553, v1554, v1555, v1556);
        v1568 = objc_msgSend_data(matrixCopy, v1561, v1562, v1563, v1564, v1565, v1566, v1567);
        v1576 = objc_msgSend_rowBytes(matrixCopy, v1569, v1570, v1571, v1572, v1573, v1574, v1575);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1577, v1568, v5175 + v1576 * v1557, 0, v1578, v1579, v1580);
        v1588 = objc_msgSend_data(solutionMatrix, v1581, v1582, v1583, v1584, v1585, v1586, v1587);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1589, v1588, v5194, 1, v1590, v1591, v1592);
        v1600 = objc_msgSend_data(sideMatrixCopy, v1593, v1594, v1595, v1596, v1597, v1598, v1599);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1601, v1600, v1559, 2, v1602, v1603, v1604);
        v1612 = objc_msgSend_data(v5222, v1605, v1606, v1607, v1608, v1609, v1610, v1611);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1613, v1612, v1540, 3, v1614, v1615, v1616);
        objc_msgSend_setBytes_length_atIndex_(encoder, v1617, v5233, 36, 4, v1618, v1619, v1620);
        *v5235 = (v5220 + 33) >> 5;
        *&v5235[8] = v5149;
        *&v5235[16] = 1;
        *v5234 = 8;
        *&v5234[8] = v5160;
        *&v5234[16] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1621, v5235, v5234, v1622, v1623, v1624, v1625);
        objc_msgSend_setComputePipelineState_(encoder, v1626, v5184, v1627, v1628, v1629, v1630, v1631);
        v1639 = objc_msgSend_data(v5222, v1632, v1633, v1634, v1635, v1636, v1637, v1638);
        v1647 = objc_msgSend_rowBytes(v5222, v1640, v1641, v1642, v1643, v1644, v1645, v1646);
        v1648 = v1639;
        v1542 = v5214;
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1649, v1648, v1647 * v1557, 0, v1650, v1651, v1652);
        v1660 = objc_msgSend_data(v5222, v1653, v1654, v1655, v1656, v1657, v1658, v1659);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1661, v1660, v1540, 1, v1662, v1663, v1664);
        v1672 = objc_msgSend_data(solutionMatrix, v1665, v1666, v1667, v1668, v1669, v1670, v1671);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1673, v1672, v1560, 2, v1674, v1675, v1676);
        objc_msgSend_setBytes_length_atIndex_(encoder, v1677, &v5230, 12, 3, v1678, v1679, v1680);
        objc_msgSend_setBytes_length_atIndex_(encoder, v1681, &v5227, 12, 4, v1682, v1683, v1684);
        objc_msgSend_setBytes_length_atIndex_(encoder, v1685, &v5224, 12, 5, v1686, v1687, v1688);
        *v5235 = v5166;
        *&v5235[8] = v5131;
        *v5234 = v5220;
        *&v5234[8] = v5131;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1689, v5235, v5234, v1690, v1691, v1692, v1693);
        v1557 += v5220;
        v1560 += v1558;
        v1559 += v1558;
      }

      while (v5220 + v1557 <= objc_msgSend_order(v5214, v1694, v1695, v1696, v1697, v1698, v1699, v1700));
    }

    if (v1557 < objc_msgSend_order(v1542, v1550, v1551, v1552, v1553, v1554, v1555, v1556))
    {
      v1708 = objc_msgSend_order(v1542, v1701, v1702, v1703, v1704, v1705, v1706, v1707);
      *v5233 = v1708 - v1557;
      *&v5233[8] = v1557;
      v5216 = (v1708 - v1557 + 33) >> 5;
      v5230 = v1708 - v1557;
      v5227 = v1708 - v1557;
      objc_msgSend_setComputePipelineState_(encoder, v1709, v5203, v1710, v1711, v1712, v1713, v1714);
      v1722 = objc_msgSend_data(matrixCopy, v1715, v1716, v1717, v1718, v1719, v1720, v1721);
      v1730 = objc_msgSend_rowBytes(matrixCopy, v1723, v1724, v1725, v1726, v1727, v1728, v1729);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1731, v1722, v5175 + v1730 * v1557, 0, v1732, v1733, v1734);
      v1742 = objc_msgSend_data(solutionMatrix, v1735, v1736, v1737, v1738, v1739, v1740, v1741);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1743, v1742, v5194, 1, v1744, v1745, v1746);
      v1754 = objc_msgSend_data(sideMatrixCopy, v1747, v1748, v1749, v1750, v1751, v1752, v1753);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1755, v1754, 4 * v1557 + v5112, 2, v1756, v1757, v1758);
      v1766 = objc_msgSend_data(v5222, v1759, v1760, v1761, v1762, v1763, v1764, v1765);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1767, v1766, v1540, 3, v1768, v1769, v1770);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1771, v5233, 36, 4, v1772, v1773, v1774);
      *v5235 = v5216;
      *&v5235[8] = v5149;
      *&v5235[16] = 1;
      *v5234 = 8;
      *&v5234[8] = v5160;
      *&v5234[16] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1775, v5235, v5234, v1776, v1777, v1778, v1779);
      objc_msgSend_setComputePipelineState_(encoder, v1780, v5184, v1781, v1782, v1783, v1784, v1785);
      v1793 = objc_msgSend_data(v5222, v1786, v1787, v1788, v1789, v1790, v1791, v1792);
      v1801 = objc_msgSend_rowBytes(v5222, v1794, v1795, v1796, v1797, v1798, v1799, v1800);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1802, v1793, v1801 * v1557, 0, v1803, v1804, v1805);
      v1813 = objc_msgSend_data(v5222, v1806, v1807, v1808, v1809, v1810, v1811, v1812);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1814, v1813, v1540, 1, v1815, v1816, v1817);
      v1825 = objc_msgSend_data(solutionMatrix, v1818, v1819, v1820, v1821, v1822, v1823, v1824);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1826, v1825, 4 * v1557 + v5194, 2, v1827, v1828, v1829);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1830, &v5230, 12, 3, v1831, v1832, v1833);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1834, &v5227, 12, 4, v1835, v1836, v1837);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1838, &v5224, 12, 5, v1839, v1840, v1841);
      *v5235 = v5166;
      *&v5235[8] = vdupq_n_s64(1uLL);
      *v5234 = v5220;
      *&v5234[8] = *&v5235[8];
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1842, v5235, v5234, v1843, v1844, v1845, v1846);
    }

    goto LABEL_96;
  }

  if (v23 && objc_msgSend_numberOfRightHandSides(selfCopy, v24, v25, v26, v27, v28, v29, v30))
  {
    v5155 = MPSLibrary::GetComputeState();
    v5189 = MPSLibrary::GetComputeState();
    v5098 = MPSLibrary::GetComputeState();
    objc_msgSend_unit(selfCopy, v3774, v3775, v3776, v3777, v3778, v3779, v3780);
    v5083 = MPSLibrary::GetComputeState();
    v5236 = objc_msgSend_columns(solutionMatrix, v3781, v3782, v3783, v3784, v3785, v3786, v3787);
    v5237 = objc_msgSend_rows(solutionMatrix, v3788, v3789, v3790, v3791, v3792, v3793, v3794);
    v5238 = objc_msgSend_rowBytes(solutionMatrix, v3795, v3796, v3797, v3798, v3799, v3800, v3801);
    v5171 = objc_msgSend_numberOfRightHandSides(selfCopy, v3802, v3803, v3804, v3805, v3806, v3807, v3808);
    v5209 = *&v5222[*MEMORY[0x277CD73B0]];
    v5179 = objc_msgSend_order(selfCopy, v3809, v3810, v3811, v3812, v3813, v3814, v3815);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v3816, v3817, v3818, v3819, v3820, v3821, v3822);
    matrixCopy7 = matrix;
    v3831 = objc_msgSend_rowBytes(matrix, v3823, v3824, v3825, v3826, v3827, v3828, v3829);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v3832, v3833, v3834, v3835, v3836, v3837, v3838);
    v3839 = *&v5235[8];
    v3847 = objc_msgSend_dataType(matrixCopy7, v3840, v3841, v3842, v3843, v3844, v3845, v3846);
    v3848 = MEMORY[0x277CD73A8];
    v3849 = *&matrixCopy7[*MEMORY[0x277CD73A8]] + v3831 * *v5233 + v3839 * (v3847 >> 3);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v3850, v3851, v3852, v3853, v3854, v3855, v3856);
    v5125 = objc_msgSend_rowBytes(sideMatrix, v3857, v3858, v3859, v3860, v3861, v3862, v3863);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v3864, v3865, v3866, v3867, v3868, v3869, v3870);
    v5117 = *&v5235[8];
    v5107 = objc_msgSend_dataType(sideMatrix, v3871, v3872, v3873, v3874, v3875, v3876, v3877);
    v5090 = *(sideMatrix + *v3848);
    objc_msgSend_resultMatrixOrigin(selfCopy, v3878, v3879, v3880, v3881, v3882, v3883, v3884);
    v3885 = *v5233;
    v5075 = objc_msgSend_rowBytes(solutionMatrix, v3886, v3887, v3888, v3889, v3890, v3891, v3892);
    objc_msgSend_resultMatrixOrigin(selfCopy, v3893, v3894, v3895, v3896, v3897, v3898, v3899);
    v3900 = *&v5235[8];
    v5068 = objc_msgSend_dataType(solutionMatrix, v3901, v3902, v3903, v3904, v3905, v3906, v3907);
    v3908 = *(solutionMatrix + *v3848);
    v3916 = objc_msgSend_order(selfCopy, v3909, v3910, v3911, v3912, v3913, v3914, v3915);
    objc_msgSend_setComputePipelineState_(encoder, v3917, v5083, v3918, v3919, v3920, v3921, v3922);
    *v5234 = v3916;
    *&v5234[4] = v3916;
    *&v5234[8] = objc_msgSend_rowBytes(matrixCopy7, v3923, v3924, v3925, v3926, v3927, v3928, v3929);
    *v5239 = v5220;
    *&v5239[4] = v3916;
    *&v5239[8] = objc_msgSend_rowBytes(v5222, v3930, v3931, v3932, v3933, v3934, v3935, v3936);
    v3944 = objc_msgSend_data(matrixCopy7, v3937, v3938, v3939, v3940, v3941, v3942, v3943);
    v5134 = v3849;
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v3945, v3944, v3849, 0, v3946, v3947, v3948);
    v3956 = objc_msgSend_data(v5222, v3949, v3950, v3951, v3952, v3953, v3954, v3955);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v3957, v3956, 0, 1, v3958, v3959, v3960);
    objc_msgSend_setBytes_length_atIndex_(encoder, v3961, v5234, 12, 2, v3962, v3963, v3964);
    objc_msgSend_setBytes_length_atIndex_(encoder, v3965, v5239, 12, 3, v3966, v3967, v3968);
    v3974 = v5220 - 1;
    v3975 = 4;
    if ((v5191 & 0x400) == 0)
    {
      v3975 = 32;
    }

    v5143 = v3975;
    v3976 = v5179 * v5209;
    v5162 = v5090 + v5125 * *v5233 + v5117 * (v5107 >> 3);
    v3977 = 5;
    if ((v5191 & 0x400) == 0)
    {
      v3977 = 6;
    }

    *v5233 = (v3916 + v3974) >> v3977;
    *&v5233[8] = vdupq_n_s64(1uLL);
    v3978 = v3908 + v5075 * v3885 + v3900 * (v5068 >> 3);
    v3979 = v5220;
    *v5235 = v5220;
    *&v5235[8] = *&v5233[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v3969, v5233, v5235, v3970, v3971, v3972, v3973);
    v3987 = objc_msgSend_order(selfCopy, v3980, v3981, v3982, v3983, v3984, v3985, v3986) & v3974;
    v4002 = objc_msgSend_order(selfCopy, v3988, v3989, v3990, v3991, v3992, v3993, v3994) - v3987;
    v5180 = v5179 * v5209;
    v5210 = v3978;
    if (v3987)
    {
      *v5234 = v3987;
      v4003 = objc_msgSend_numberOfRightHandSides(selfCopy, v3995, v3996, v3997, v3998, v3999, v4000, v4001);
      *&v5234[4] = v4003;
      *&v5234[8] = objc_msgSend_rowBytes(sideMatrixCopy, v4004, v4005, v4006, v4007, v4008, v4009, v4010);
      *&v5234[12] = *&v5222[*MEMORY[0x277CD73B0]];
      objc_msgSend_alpha(selfCopy, v4011, v4012, v4013, v4014, v4015, v4016, v4017);
      *&v4018 = v4018;
      *&v5234[16] = LODWORD(v4018);
      v4019 = (v4003 + 31) >> 5;
      objc_msgSend_setComputePipelineState_(encoder, v4020, v5098, v4021, v4022, v4023, v4024, v4025);
      v4033 = objc_msgSend_data(sideMatrixCopy, v4026, v4027, v4028, v4029, v4030, v4031, v4032);
      v4041 = objc_msgSend_dataType(sideMatrixCopy, v4034, v4035, v4036, v4037, v4038, v4039, v4040);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v4042, v4033, v5162 + v4002 * (v4041 >> 3), 0, v4043, v4044, v4045);
      v4053 = objc_msgSend_data(v5222, v4046, v4047, v4048, v4049, v4050, v4051, v4052);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v4054, v4053, v3976, 1, v4055, v4056, v4057);
      objc_msgSend_setBytes_length_atIndex_(encoder, v4058, v5234, 20, 2, v4059, v4060, v4061);
      *v5233 = (v3987 + 15) >> 4;
      *&v5233[8] = v4019;
      *&v5233[16] = 1;
      *v5235 = vdupq_n_s64(8uLL);
      *&v5235[16] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v4062, v5233, v5235, v4063, v4064, v4065, v4066);
      *v5239 = v3987;
      *&v5239[4] = *&v5222[*MEMORY[0x277CD73B8]];
      v4067 = MEMORY[0x277CD73B0];
      *&v5239[8] = *&v5222[*MEMORY[0x277CD73B0]];
      v5230 = v3987;
      v5231 = objc_msgSend_numberOfRightHandSides(selfCopy, v4068, v4069, v4070, v4071, v4072, v4073, v4074);
      v5232 = *&v5222[*v4067];
      objc_msgSend_setComputePipelineState_(encoder, v4075, v5189, v4076, v4077, v4078, v4079, v4080);
      v4088 = objc_msgSend_data(v5222, v4081, v4082, v4083, v4084, v4085, v4086, v4087);
      v4096 = objc_msgSend_rowBytes(v5222, v4089, v4090, v4091, v4092, v4093, v4094, v4095);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v4097, v4088, v4096 * v4002, 0, v4098, v4099, v4100);
      v4108 = objc_msgSend_data(v5222, v4101, v4102, v4103, v4104, v4105, v4106, v4107);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v4109, v4108, v3976, 1, v4110, v4111, v4112);
      v4120 = objc_msgSend_data(solutionMatrix, v4113, v4114, v4115, v4116, v4117, v4118, v4119);
      v4128 = objc_msgSend_dataType(solutionMatrix, v4121, v4122, v4123, v4124, v4125, v4126, v4127);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v4129, v4120, v3978 + v4002 * (v4128 >> 3), 2, v4130, v4131, v4132);
      objc_msgSend_setBytes_length_atIndex_(encoder, v4133, v5239, 12, 3, v4134, v4135, v4136);
      objc_msgSend_setBytes_length_atIndex_(encoder, v4137, &v5230, 12, 4, v4138, v4139, v4140);
      objc_msgSend_setBytes_length_atIndex_(encoder, v4141, &v5236, 12, 5, v4142, v4143, v4144);
      *v5233 = v5171;
      v3979 = v5220;
      *&v5233[8] = vdupq_n_s64(1uLL);
      *v5235 = v5220;
      *&v5235[8] = *&v5233[8];
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v4145, v5233, v5235, v4146, v4147, v4148, v4149);
    }

    solutionMatrixCopy6 = solutionMatrix;
    if (v4002)
    {
      v4151 = v4002;
      v4152 = 4;
      if ((v5191 & 0x400) == 0)
      {
        v4152 = 7;
      }

      v5126 = v4152;
      v5091 = vdupq_n_s64(8uLL);
      do
      {
        v4305 = objc_msgSend_order(selfCopy, v3995, v3996, v3997, v3998, v3999, v4000, v4001);
        v4313 = v4305 - v4151;
        v4314 = MEMORY[0x277CD73B0];
        if (v4305 == v4151)
        {
          *&v5234[12] = 0;
          *&v5234[4] = 0;
          *v5234 = v3979;
          *&v5234[4] = objc_msgSend_numberOfRightHandSides(selfCopy, v4306, v4307, v4308, v4309, v4310, v4311, v4312);
          *&v5234[8] = objc_msgSend_rowBytes(sideMatrixCopy, v4153, v4154, v4155, v4156, v4157, v4158, v4159);
          *&v5234[12] = *&v5222[*v4314];
          objc_msgSend_alpha(selfCopy, v4160, v4161, v4162, v4163, v4164, v4165, v4166);
          *&v4167 = v4167;
          *&v5234[16] = LODWORD(v4167);
          v4168 = (*v5234 + 15) >> 4;
          v4169 = (*&v5234[4] + 31) >> 5;
          encoderCopy4 = encoder;
          objc_msgSend_setComputePipelineState_(encoder, v4171, v5098, v4172, v4173, v4174, v4175, v4176);
          v4184 = objc_msgSend_data(sideMatrixCopy, v4177, v4178, v4179, v4180, v4181, v4182, v4183);
          v4151 -= v3979;
          v4185 = v5222;
          v4193 = objc_msgSend_dataType(sideMatrixCopy, v4186, v4187, v4188, v4189, v4190, v4191, v4192);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v4194, v4184, v5162 + v4151 * (v4193 >> 3), 0, v4195, v4196, v4197);
          v4205 = objc_msgSend_data(v5222, v4198, v4199, v4200, v4201, v4202, v4203, v4204);
          v4206 = v5180;
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v4207, v4205, v5180, 1, v4208, v4209, v4210);
          objc_msgSend_setBytes_length_atIndex_(encoder, v4211, v5234, 20, 2, v4212, v4213, v4214);
          *v5233 = v4168;
          *&v5233[8] = v4169;
          solutionMatrixCopy6 = solutionMatrix;
          *&v5233[16] = 1;
          *v5235 = v5091;
          *&v5235[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v4215, v5233, v5235, v4216, v4217, v4218, v4219);
          v4227 = v5189;
          v4228 = selfCopy;
        }

        else
        {
          memset(&v5233[4], 0, 32);
          *v5233 = v3979;
          *&v5233[4] = objc_msgSend_numberOfRightHandSides(selfCopy, v4306, v4307, v4308, v4309, v4310, v4311, v4312);
          *&v5233[8] = v4313;
          *&v5233[12] = objc_msgSend_rowBytes(matrixCopy, v4315, v4316, v4317, v4318, v4319, v4320, v4321);
          *&v5233[16] = objc_msgSend_rowBytes(solutionMatrixCopy6, v4322, v4323, v4324, v4325, v4326, v4327, v4328);
          *&v5233[20] = objc_msgSend_rowBytes(sideMatrixCopy, v4329, v4330, v4331, v4332, v4333, v4334, v4335);
          *&v5233[24] = *&v5222[*v4314];
          *&v5233[28] = -1082130432;
          objc_msgSend_alpha(selfCopy, v4336, v4337, v4338, v4339, v4340, v4341, v4342);
          *&v4343 = v4343;
          *&v5233[32] = LODWORD(v4343);
          v4344 = (((4 * v5143) | 1) + *v5233) >> v5126;
          v5198 = (*&v5233[4] + 65) >> 6;
          encoderCopy4 = encoder;
          objc_msgSend_setComputePipelineState_(encoder, v4345, v5155, v4346, v4347, v4348, v4349, v4350);
          v4358 = objc_msgSend_data(matrixCopy, v4351, v4352, v4353, v4354, v4355, v4356, v4357);
          v4366 = objc_msgSend_dataType(matrixCopy, v4359, v4360, v4361, v4362, v4363, v4364, v4365) >> 3;
          v4374 = v5134 + objc_msgSend_rowBytes(matrixCopy, v4367, v4368, v4369, v4370, v4371, v4372, v4373) * v4151 + (v4151 - v3979) * v4366;
          solutionMatrixCopy6 = solutionMatrix;
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v4375, v4358, v4374, 0, v4376, v4377, v4378);
          v4386 = objc_msgSend_data(solutionMatrix, v4379, v4380, v4381, v4382, v4383, v4384, v4385);
          v4394 = objc_msgSend_dataType(solutionMatrix, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v4395, v4386, v5210 + v4151 * (v4394 >> 3), 1, v4396, v4397, v4398);
          v4406 = objc_msgSend_data(sideMatrixCopy, v4399, v4400, v4401, v4402, v4403, v4404, v4405);
          v4185 = v5222;
          v4414 = objc_msgSend_dataType(sideMatrixCopy, v4407, v4408, v4409, v4410, v4411, v4412, v4413);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v4415, v4406, v5162 + (v4151 - v3979) * (v4414 >> 3), 2, v4416, v4417, v4418);
          v4426 = objc_msgSend_data(v5222, v4419, v4420, v4421, v4422, v4423, v4424, v4425);
          v4206 = v5180;
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v4427, v4426, v5180, 3, v4428, v4429, v4430);
          objc_msgSend_setBytes_length_atIndex_(encoder, v4431, v5233, 36, 4, v4432, v4433, v4434);
          v4227 = v5189;
          *v5235 = v4344;
          *&v5235[8] = v5198;
          *&v5235[16] = 1;
          *v5234 = v5143;
          *&v5234[8] = xmmword_2399EE7D0;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v4435, v5235, v5234, v4436, v4437, v4438, v4439);
          v4151 -= v3979;
          v4228 = v5214;
        }

        *v5234 = v3979;
        *&v5234[4] = *&v4185[*MEMORY[0x277CD73B8]];
        v4229 = MEMORY[0x277CD73B0];
        *&v5234[8] = *&v4185[*MEMORY[0x277CD73B0]];
        *&v5239[4] = 0;
        *v5239 = v3979;
        *&v5239[4] = objc_msgSend_numberOfRightHandSides(v4228, v4220, v4221, v4222, v4223, v4224, v4225, v4226);
        *&v5239[8] = *&v4185[*v4229];
        objc_msgSend_setComputePipelineState_(encoderCopy4, v4230, v4227, v4231, v4232, v4233, v4234, v4235);
        v4243 = objc_msgSend_data(v4185, v4236, v4237, v4238, v4239, v4240, v4241, v4242);
        v4251 = objc_msgSend_rowBytes(v4185, v4244, v4245, v4246, v4247, v4248, v4249, v4250);
        objc_msgSend_setBuffer_offset_atIndex_(encoderCopy4, v4252, v4243, v4251 * v4151, 0, v4253, v4254, v4255);
        v4263 = objc_msgSend_data(v4185, v4256, v4257, v4258, v4259, v4260, v4261, v4262);
        objc_msgSend_setBuffer_offset_atIndex_(encoderCopy4, v4264, v4263, v4206, 1, v4265, v4266, v4267);
        v4275 = objc_msgSend_data(solutionMatrixCopy6, v4268, v4269, v4270, v4271, v4272, v4273, v4274);
        v4283 = objc_msgSend_dataType(solutionMatrixCopy6, v4276, v4277, v4278, v4279, v4280, v4281, v4282);
        objc_msgSend_setBuffer_offset_atIndex_(encoderCopy4, v4284, v4275, v5210 + v4151 * (v4283 >> 3), 2, v4285, v4286, v4287);
        objc_msgSend_setBytes_length_atIndex_(encoderCopy4, v4288, v5234, 12, 3, v4289, v4290, v4291);
        objc_msgSend_setBytes_length_atIndex_(encoderCopy4, v4292, v5239, 12, 4, v4293, v4294, v4295);
        objc_msgSend_setBytes_length_atIndex_(encoderCopy4, v4296, &v5236, 12, 5, v4297, v4298, v4299);
        *v5233 = v5171;
        *&v5233[8] = vdupq_n_s64(1uLL);
        *v5235 = v3979;
        *&v5235[8] = *&v5233[8];
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoderCopy4, v4300, v5233, v5235, v4301, v4302, v4303, v4304);
        selfCopy = v4228;
      }

      while (v4151);
    }

    goto LABEL_144;
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix rightHandSideMatrix:(MPSMatrix *)rightHandSideMatrix solutionMatrix:(MPSMatrix *)solutionMatrix
{
  if (objc_msgSend_options(self, a2, commandBuffer, sourceMatrix, rightHandSideMatrix, solutionMatrix, v6, v7))
  {
    goto LABEL_31;
  }

  if (!commandBuffer && MTLReportFailureTypeEnabled())
  {
    v388 = objc_opt_class();
    v395 = NSStringFromClass(v388);
    MTLReportFailure();
  }

  if (!sourceMatrix && MTLReportFailureTypeEnabled())
  {
    v389 = objc_opt_class();
    v395 = NSStringFromClass(v389);
    MTLReportFailure();
  }

  if (!rightHandSideMatrix && MTLReportFailureTypeEnabled())
  {
    v390 = objc_opt_class();
    v395 = NSStringFromClass(v390);
    MTLReportFailure();
  }

  if (!solutionMatrix && MTLReportFailureTypeEnabled())
  {
    v391 = objc_opt_class();
    v395 = NSStringFromClass(v391);
    MTLReportFailure();
  }

  if (self)
  {
    objc_msgSend_primarySourceMatrixOrigin(self, v13, v14, v15, v16, v17, v18, v19);
    objc_msgSend_primarySourceMatrixOrigin(self, v20, v21, v22, v23, v24, v25, v26);
    if (v399 && MTLReportFailureTypeEnabled())
    {
      v392 = objc_opt_class();
      v395 = NSStringFromClass(v392);
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v27, v28, v29, v30, v31, v32, v33, v395);
    objc_msgSend_secondarySourceMatrixOrigin(self, v34, v35, v36, v37, v38, v39, v40);
    if (v399 && MTLReportFailureTypeEnabled())
    {
      v393 = objc_opt_class();
      v396 = NSStringFromClass(v393);
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v41, v42, v43, v44, v45, v46, v47, v396);
    objc_msgSend_resultMatrixOrigin(self, v48, v49, v50, v51, v52, v53, v54);
    if (v399 && MTLReportFailureTypeEnabled())
    {
      v394 = objc_opt_class();
      v395 = NSStringFromClass(v394);
      MTLReportFailure();
    }
  }

  if (self->_right)
  {
    objc_msgSend_resultMatrixOrigin(self, v13, v14, v15, v16, v17, v18, v19);
    objc_msgSend_rows(solutionMatrix, v55, v56, v57, v58, v59, v60, v61);
    objc_msgSend_resultMatrixOrigin(self, v62, v63, v64, v65, v66, v67, v68);
    v69 = self->_numberOfRightHandSides + v397;
    if (v69 > objc_msgSend_rows(solutionMatrix, v70, v71, v72, v73, v74, v75, v76) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v77, v78, v79, v80, v81, v82, v83, v395);
    objc_msgSend_columns(solutionMatrix, v84, v85, v86, v87, v88, v89, v90);
    objc_msgSend_resultMatrixOrigin(self, v91, v92, v93, v94, v95, v96, v97);
    v98 = self->_order + v398;
    if (v98 > objc_msgSend_columns(solutionMatrix, v99, v100, v101, v102, v103, v104, v105) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v106, v107, v108, v109, v110, v111, v112);
    objc_msgSend_rows(rightHandSideMatrix, v113, v114, v115, v116, v117, v118, v119);
    objc_msgSend_secondarySourceMatrixOrigin(self, v120, v121, v122, v123, v124, v125, v126);
    v127 = self->_numberOfRightHandSides + v397;
    if (v127 > objc_msgSend_rows(rightHandSideMatrix, v128, v129, v130, v131, v132, v133, v134) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v135, v136, v137, v138, v139, v140, v141);
    objc_msgSend_columns(rightHandSideMatrix, v142, v143, v144, v145, v146, v147, v148);
    objc_msgSend_secondarySourceMatrixOrigin(self, v149, v150, v151, v152, v153, v154, v155);
    v156 = self->_order + v398;
    if (v156 <= objc_msgSend_columns(rightHandSideMatrix, v157, v158, v159, v160, v161, v162, v163) || !MTLReportFailureTypeEnabled())
    {
      goto LABEL_21;
    }
  }

  else
  {
    objc_msgSend_resultMatrixOrigin(self, v13, v14, v15, v16, v17, v18, v19);
    objc_msgSend_rows(solutionMatrix, v171, v172, v173, v174, v175, v176, v177);
    objc_msgSend_resultMatrixOrigin(self, v178, v179, v180, v181, v182, v183, v184);
    v185 = self->_order + v397;
    if (v185 > objc_msgSend_rows(solutionMatrix, v186, v187, v188, v189, v190, v191, v192) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v193, v194, v195, v196, v197, v198, v199, v395);
    objc_msgSend_columns(solutionMatrix, v200, v201, v202, v203, v204, v205, v206);
    objc_msgSend_resultMatrixOrigin(self, v207, v208, v209, v210, v211, v212, v213);
    v214 = self->_numberOfRightHandSides + v398;
    if (v214 > objc_msgSend_columns(solutionMatrix, v215, v216, v217, v218, v219, v220, v221) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v222, v223, v224, v225, v226, v227, v228);
    objc_msgSend_rows(rightHandSideMatrix, v229, v230, v231, v232, v233, v234, v235);
    objc_msgSend_secondarySourceMatrixOrigin(self, v236, v237, v238, v239, v240, v241, v242);
    v243 = self->_order + v397;
    if (v243 > objc_msgSend_rows(rightHandSideMatrix, v244, v245, v246, v247, v248, v249, v250) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v251, v252, v253, v254, v255, v256, v257);
    objc_msgSend_columns(rightHandSideMatrix, v258, v259, v260, v261, v262, v263, v264);
    objc_msgSend_secondarySourceMatrixOrigin(self, v265, v266, v267, v268, v269, v270, v271);
    v272 = self->_numberOfRightHandSides + v398;
    if (v272 <= objc_msgSend_columns(rightHandSideMatrix, v273, v274, v275, v276, v277, v278, v279) || !MTLReportFailureTypeEnabled())
    {
      goto LABEL_21;
    }
  }

  MTLReportFailure();
LABEL_21:
  if (objc_msgSend_dataType(sourceMatrix, v164, v165, v166, v167, v168, v169, v170) == 268435488 && objc_msgSend_dataType(rightHandSideMatrix, v280, v281, v282, v283, v284, v285, v286) == 268435488)
  {
    objc_msgSend_dataType(solutionMatrix, v280, v281, v282, v283, v284, v285, v286);
  }

  if ((objc_msgSend_dataType(sourceMatrix, v280, v281, v282, v283, v284, v285, v286) != 268435488 || objc_msgSend_dataType(rightHandSideMatrix, v287, v288, v289, v290, v291, v292, v293) != 268435488 || objc_msgSend_dataType(solutionMatrix, v294, v295, v296, v297, v298, v299, v300) != 268435488) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_primarySourceMatrixOrigin(self, v301, v302, v303, v304, v305, v306, v307);
  objc_msgSend_rows(sourceMatrix, v308, v309, v310, v311, v312, v313, v314);
  objc_msgSend_primarySourceMatrixOrigin(self, v315, v316, v317, v318, v319, v320, v321);
  v322 = self->_order + v397;
  if (v322 > objc_msgSend_rows(sourceMatrix, v323, v324, v325, v326, v327, v328, v329) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_primarySourceMatrixOrigin(self, v330, v331, v332, v333, v334, v335, v336);
  objc_msgSend_columns(sourceMatrix, v337, v338, v339, v340, v341, v342, v343);
  objc_msgSend_primarySourceMatrixOrigin(self, v344, v345, v346, v347, v348, v349, v350);
  v351 = self->_order + v398;
  if (v351 > objc_msgSend_columns(sourceMatrix, v352, v353, v354, v355, v356, v357, v358) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_31:
  v359 = objc_alloc(MEMORY[0x277CD7210]);
  v371 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v359, v360, commandBuffer, 0, v361, v362, v363, v364);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v372 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v372 || (v373 = objc_opt_class(), v374 = NSStringFromClass(v373), objc_msgSend_setLabel_(self, v375, v374, v376, v377, v378, v379, v380), (v372 = v374) != 0))
    {
      objc_msgSend_setLabel_(v371, v365, v372, v366, v367, v368, v369, v370);
    }
  }

  objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self, v365, commandBuffer, v371, sourceMatrix, rightHandSideMatrix, solutionMatrix, v370);
  objc_msgSend_endEncoding(v371, v381, v382, v383, v384, v385, v386, v387);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixSolveTriangular;
  [(MPSKernel *)&v3 dealloc];
}

@end