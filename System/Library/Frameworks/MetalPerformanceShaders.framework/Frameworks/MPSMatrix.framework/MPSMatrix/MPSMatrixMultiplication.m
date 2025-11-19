@interface MPSMatrixMultiplication
- (MPSMatrixMultiplication)initWithCoder:(id)a3 device:(id)a4;
- (MPSMatrixMultiplication)initWithDevice:(id)device transposeLeft:(BOOL)transposeLeft transposeRight:(BOOL)transposeRight resultRows:(NSUInteger)resultRows resultColumns:(NSUInteger)resultColumns interiorColumns:(NSUInteger)interiorColumns alpha:(double)alpha beta:(double)beta;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer leftMatrix:(MPSMatrix *)leftMatrix rightMatrix:(MPSMatrix *)rightMatrix resultMatrix:(MPSMatrix *)resultMatrix;
- (void)encodeWithCoder:(id)a3;
- (void)setLeftMatrixOrigin:(MTLOrigin *)leftMatrixOrigin;
- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin;
- (void)setRightMatrixOrigin:(MTLOrigin *)rightMatrixOrigin;
@end

@implementation MPSMatrixMultiplication

- (MPSMatrixMultiplication)initWithDevice:(id)device transposeLeft:(BOOL)transposeLeft transposeRight:(BOOL)transposeRight resultRows:(NSUInteger)resultRows resultColumns:(NSUInteger)resultColumns interiorColumns:(NSUInteger)interiorColumns alpha:(double)alpha beta:(double)beta
{
  v40.receiver = self;
  v40.super_class = MPSMatrixMultiplication;
  v18 = [(MPSKernel *)&v40 initWithDevice:?];
  v19 = v18;
  if (v18)
  {
    v18->_resultMatrixOrigin.y = 0;
    v18->_resultMatrixOrigin.z = 0;
    v18->_resultMatrixOrigin.x = 0;
    v18->_leftMatrixOrigin.y = 0;
    v18->_leftMatrixOrigin.z = 0;
    v18->_leftMatrixOrigin.x = 0;
    v18->_rightMatrixOrigin.y = 0;
    v18->_rightMatrixOrigin.z = 0;
    v18->_rightMatrixOrigin.x = 0;
    v18->_batchStart = 0;
    v18->_batchSize = -1;
    v18->_transA = transposeLeft;
    v18->_transB = transposeRight;
    v18->_alpha = alpha;
    v18->_beta = beta;
    v18->_M = resultRows;
    v18->_N = resultColumns;
    v18->_K = interiorColumns;
    v18->_useTiling = 0;
    v18->_plugin = 0;
    v18->_encode = 0;
    v18->_ndArrayKernel = 0;
    v20 = (*(&v18->super.super.isa + *MEMORY[0x277CD7350]))[368];
    if (v20 < 18)
    {
      v21 = sub_2399CE960;
      if (v20 <= 10)
      {
        v21 = sub_2399D1A44;
        if (v20 <= 6)
        {
          v21 = sub_2399D276C;
        }
      }
    }

    else
    {
      v21 = sub_2399CE960;
      if (v20 <= 0x17)
      {
        v22 = objc_alloc(NSClassFromString(&cfstr_Mpsndarraymatr.isa));
        v23 = [v22 getUid("initWithDevice:device sourceCount:3")];
        v19->_ndArrayKernel = v23;
        objc_msgSend_setBeta_(v23, v24, v25, v26, v27, v28, v29, v30, beta);
        objc_msgSend_setAlpha_(v19->_ndArrayKernel, v31, v32, v33, v34, v35, v36, v37, alpha);
        v21 = sub_2399CE398;
      }
    }

    v19->_encode = v21;
    v38 = (*(&v19->super.super.isa + *MEMORY[0x277CD7370]))[4];
    v19->_useTiling = (*(*v38 + 16))(v38, v19->_M, v19->_N, v19->_K);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v14.receiver = self;
  v14.super_class = MPSMatrixMultiplication;
  result = [(MPSKernel *)&v14 copyWithZone:a3 device:a4];
  if (result)
  {
    z = self->_resultMatrixOrigin.z;
    *(result + 184) = *&self->_resultMatrixOrigin.x;
    *(result + 25) = z;
    v7 = self->_leftMatrixOrigin.z;
    *(result + 13) = *&self->_leftMatrixOrigin.x;
    *(result + 28) = v7;
    v8 = self->_rightMatrixOrigin.z;
    *(result + 232) = *&self->_rightMatrixOrigin.x;
    *(result + 31) = v8;
    *(result + 16) = self->_batchStart;
    *(result + 17) = self->_batchSize;
    *(result + 120) = self->_transA;
    *(result + 121) = self->_transB;
    *(result + 18) = *&self->_alpha;
    *(result + 19) = *&self->_beta;
    *(result + 20) = self->_M;
    *(result + 21) = self->_N;
    *(result + 22) = self->_K;
    *(result + 88) = 0;
    *(result + 12) = 0;
    *(result + 13) = 0;
    v9 = (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[368];
    if (v9 < 18)
    {
      if (v9 < 11)
      {
        if (v9 < 7)
        {
          v11 = sub_2399D276C;
        }

        else
        {
          v11 = sub_2399D1A44;
        }
      }

      else
      {
        v11 = sub_2399CE960;
      }

      v10 = result;
      *(result + 13) = v11;
    }

    else
    {
      v10 = result;
      self->_encode = sub_2399CE398;
    }

    v12 = (*(&self->super.super.isa + *MEMORY[0x277CD7370]))[4];
    v13 = (*(*v12 + 16))(v12, self->_M, self->_N, self->_K);
    result = v10;
    v10[88] = v13;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358]) = *(&self->super.super.isa + *MEMORY[0x277CD7358]) | 0x10100;
  v97.receiver = self;
  v97.super_class = MPSMatrixMultiplication;
  [(MPSKernel *)&v97 encodeWithCoder:?];
  objc_msgSend_encodeBool_forKey_(a3, v5, self->_transA, @"MPSMatrixMultiplication.transA", v6, v7, v8, v9);
  objc_msgSend_encodeBool_forKey_(a3, v10, self->_transB, @"MPSMatrixMultiplication.transB", v11, v12, v13, v14);
  objc_msgSend_encodeDouble_forKey_(a3, v15, @"MPSMatrixMultiplication.alpha", v16, v17, v18, v19, v20, self->_alpha);
  objc_msgSend_encodeDouble_forKey_(a3, v21, @"MPSMatrixMultiplication.beta", v22, v23, v24, v25, v26, self->_beta);
  objc_msgSend_encodeInt64_forKey_(a3, v27, self->_M, @"MPSMatrixMultiplication.M", v28, v29, v30, v31);
  objc_msgSend_encodeInt64_forKey_(a3, v32, self->_N, @"MPSMatrixMultiplication.N", v33, v34, v35, v36);
  objc_msgSend_encodeInt64_forKey_(a3, v37, self->_K, @"MPSMatrixMultiplication.K", v38, v39, v40, v41);
  objc_msgSend_encodeInt64_forKey_(a3, v42, self->_leftMatrixOrigin.x, @"MPSMatrixMultiplication.leftMatrixOrigin.x", v43, v44, v45, v46);
  objc_msgSend_encodeInt64_forKey_(a3, v47, self->_leftMatrixOrigin.y, @"MPSMatrixMultiplication.leftMatrixOrigin.y", v48, v49, v50, v51);
  objc_msgSend_encodeInt64_forKey_(a3, v52, self->_leftMatrixOrigin.z, @"MPSMatrixMultiplication.leftMatrixOrigin.z", v53, v54, v55, v56);
  objc_msgSend_encodeInt64_forKey_(a3, v57, self->_rightMatrixOrigin.x, @"MPSMatrixMultiplication.rightMatrixOrigin.x", v58, v59, v60, v61);
  objc_msgSend_encodeInt64_forKey_(a3, v62, self->_rightMatrixOrigin.y, @"MPSMatrixMultiplication.rightMatrixOrigin.y", v63, v64, v65, v66);
  objc_msgSend_encodeInt64_forKey_(a3, v67, self->_rightMatrixOrigin.z, @"MPSMatrixMultiplication.rightMatrixOrigin.z", v68, v69, v70, v71);
  objc_msgSend_encodeInt64_forKey_(a3, v72, self->_resultMatrixOrigin.x, @"MPSMatrixMultiplication.resultMatrixOrigin.x", v73, v74, v75, v76);
  objc_msgSend_encodeInt64_forKey_(a3, v77, self->_resultMatrixOrigin.y, @"MPSMatrixMultiplication.resultMatrixOrigin.y", v78, v79, v80, v81);
  objc_msgSend_encodeInt64_forKey_(a3, v82, self->_resultMatrixOrigin.z, @"MPSMatrixMultiplication.resulttMatrixOrigin.z", v83, v84, v85, v86);
  objc_msgSend_encodeInt64_forKey_(a3, v87, self->_batchStart, @"MPSMatrixMultiplication.batchStart", v88, v89, v90, v91);
  objc_msgSend_encodeInt64_forKey_(a3, v92, self->_batchSize, @"MPSMatrixMultiplication.batchSize", v93, v94, v95, v96);
}

- (MPSMatrixMultiplication)initWithCoder:(id)a3 device:(id)a4
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7358]) & 0xFFFF0000) == 0x10000)
  {
    v132.receiver = self;
    v132.super_class = MPSMatrixMultiplication;
    v11 = [(MPSKernel *)&v132 initWithCoder:a3 device:a4];
    if (v11)
    {
      v11->_transA = objc_msgSend_decodeBoolForKey_(a3, v5, @"MPSMatrixMultiplication.transA", v6, v7, v8, v9, v10);
      v11->_transB = objc_msgSend_decodeBoolForKey_(a3, v12, @"MPSMatrixMultiplication.transB", v13, v14, v15, v16, v17);
      objc_msgSend_decodeDoubleForKey_(a3, v18, @"MPSMatrixMultiplication.alpha", v19, v20, v21, v22, v23);
      v11->_alpha = v24;
      objc_msgSend_decodeDoubleForKey_(a3, v25, @"MPSMatrixMultiplication.beta", v26, v27, v28, v29, v30);
      v11->_beta = v31;
      v11->_M = objc_msgSend_decodeInt64ForKey_(a3, v32, @"MPSMatrixMultiplication.M", v33, v34, v35, v36, v37);
      v11->_N = objc_msgSend_decodeInt64ForKey_(a3, v38, @"MPSMatrixMultiplication.N", v39, v40, v41, v42, v43);
      v11->_K = objc_msgSend_decodeInt64ForKey_(a3, v44, @"MPSMatrixMultiplication.K", v45, v46, v47, v48, v49);
      v56 = objc_msgSend_decodeInt64ForKey_(a3, v50, @"MPSMatrixMultiplication.leftMatrixOrigin.x", v51, v52, v53, v54, v55);
      v63 = objc_msgSend_decodeInt64ForKey_(a3, v57, @"MPSMatrixMultiplication.leftMatrixOrigin.y", v58, v59, v60, v61, v62);
      v70 = objc_msgSend_decodeInt64ForKey_(a3, v64, @"MPSMatrixMultiplication.leftMatrixOrigin.z", v65, v66, v67, v68, v69);
      v11->_leftMatrixOrigin.x = v56;
      v11->_leftMatrixOrigin.y = v63;
      v11->_leftMatrixOrigin.z = v70;
      v77 = objc_msgSend_decodeInt64ForKey_(a3, v71, @"MPSMatrixMultiplication.rightMatrixOrigin.x", v72, v73, v74, v75, v76);
      v84 = objc_msgSend_decodeInt64ForKey_(a3, v78, @"MPSMatrixMultiplication.rightMatrixOrigin.y", v79, v80, v81, v82, v83);
      v91 = objc_msgSend_decodeInt64ForKey_(a3, v85, @"MPSMatrixMultiplication.rightMatrixOrigin.z", v86, v87, v88, v89, v90);
      v11->_rightMatrixOrigin.x = v77;
      v11->_rightMatrixOrigin.y = v84;
      v11->_rightMatrixOrigin.z = v91;
      v98 = objc_msgSend_decodeInt64ForKey_(a3, v92, @"MPSMatrixMultiplication.resultMatrixOrigin.x", v93, v94, v95, v96, v97);
      v105 = objc_msgSend_decodeInt64ForKey_(a3, v99, @"MPSMatrixMultiplication.resultMatrixOrigin.y", v100, v101, v102, v103, v104);
      v112 = objc_msgSend_decodeInt64ForKey_(a3, v106, @"MPSMatrixMultiplication.resulttMatrixOrigin.z", v107, v108, v109, v110, v111);
      v11->_resultMatrixOrigin.x = v98;
      v11->_resultMatrixOrigin.y = v105;
      v11->_resultMatrixOrigin.z = v112;
      v11->_batchStart = objc_msgSend_decodeInt64ForKey_(a3, v113, @"MPSMatrixMultiplication.batchStart", v114, v115, v116, v117, v118);
      v11->_batchSize = objc_msgSend_decodeInt64ForKey_(a3, v119, @"MPSMatrixMultiplication.batchSize", v120, v121, v122, v123, v124);
      v125 = (*(&v11->super.super.isa + *MEMORY[0x277CD7350]))[368];
      if (v125 < 18)
      {
        if (v125 < 11)
        {
          if (v125 < 7)
          {
            v126 = sub_2399D276C;
          }

          else
          {
            v126 = sub_2399D1A44;
          }
        }

        else
        {
          v126 = sub_2399CE960;
        }
      }

      else
      {
        v126 = sub_2399CE398;
      }

      v11->_encode = v126;
      v127 = (*(&v11->super.super.isa + *MEMORY[0x277CD7370]))[4];
      v11->_useTiling = (*(*v127 + 16))(v127, v11->_M, v11->_N, v11->_K);
    }
  }

  else
  {
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7358]) & 0xFF00) != 0x100)
    {
      v129 = self;
      v130 = MTLReportFailureTypeEnabled();
      self = v129;
      if (v130)
      {
        v131 = objc_opt_class();
        NSStringFromClass(v131);
        MTLReportFailure();
        self = v129;
      }
    }

    return 0;
  }

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = MPSMatrixMultiplication;
  v4 = [(MPSKernel *)&v21 debugDescription];
  v10 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
  if (!v10)
  {
    v10 = &stru_284CAA7D8;
  }

  v11 = *&self->_leftMatrixOrigin.x;
  z = self->_leftMatrixOrigin.z;
  v13 = *&self->_rightMatrixOrigin.x;
  v14 = self->_rightMatrixOrigin.z;
  v15 = *&self->_resultMatrixOrigin.x;
  v16 = self->_resultMatrixOrigin.z;
  if (self->_transA)
  {
    v17 = @"transposed";
  }

  else
  {
    v17 = @"non-transposed";
  }

  M = self->_M;
  K = self->_K;
  if (self->_transB)
  {
    return objc_msgSend_stringWithFormat_(v3, 0xA8, @"%@ %@\n\tleftMatrixOrigin: {%ld,%ld,%ld}\n\trightMatrixOrigin: {%ld,%ld,%ld}\n\tresultMatrixOrigin{%ld,%ld,%ld}\n\tleftMatrix (%@) Size: {%ld x %ld}\n\trightMatrix (%@) Size: {%ld x %ld}\n\tresultMatrixSize: {%ld x %ld}\n\tdevice: %p", v5, v6, v7, v8, v9, v4, v10, v11, z, v13, v14, v15, v16, v17, M, K, @"transposed", K, self->_N, M, self->_N, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, 0xA8, @"%@ %@\n\tleftMatrixOrigin: {%ld,%ld,%ld}\n\trightMatrixOrigin: {%ld,%ld,%ld}\n\tresultMatrixOrigin{%ld,%ld,%ld}\n\tleftMatrix (%@) Size: {%ld x %ld}\n\trightMatrix (%@) Size: {%ld x %ld}\n\tresultMatrixSize: {%ld x %ld}\n\tdevice: %p", v5, v6, v7, v8, v9, v4, v10, v11, z, v13, v14, v15, v16, v17, M, K, @"non-transposed", K, self->_N, M, self->_N, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer leftMatrix:(MPSMatrix *)leftMatrix rightMatrix:(MPSMatrix *)rightMatrix resultMatrix:(MPSMatrix *)resultMatrix
{
  v13 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v13))
  {
    goto LABEL_51;
  }

  if (!commandBuffer && MTLReportFailureTypeEnabled())
  {
    v282 = objc_opt_class();
    v289 = NSStringFromClass(v282);
    MTLReportFailure();
  }

  if (!leftMatrix && MTLReportFailureTypeEnabled())
  {
    v283 = objc_opt_class();
    v289 = NSStringFromClass(v283);
    MTLReportFailure();
  }

  if (!rightMatrix && MTLReportFailureTypeEnabled())
  {
    v284 = objc_opt_class();
    v289 = NSStringFromClass(v284);
    MTLReportFailure();
  }

  if (!resultMatrix && MTLReportFailureTypeEnabled())
  {
    v285 = objc_opt_class();
    v289 = NSStringFromClass(v285);
    MTLReportFailure();
  }

  p_leftMatrixOrigin = &self->_leftMatrixOrigin;
  if (self->_leftMatrixOrigin.z && MTLReportFailureTypeEnabled())
  {
    v286 = objc_opt_class();
    v289 = NSStringFromClass(v286);
    MTLReportFailure();
  }

  if (self->_rightMatrixOrigin.z && MTLReportFailureTypeEnabled())
  {
    v287 = objc_opt_class();
    v289 = NSStringFromClass(v287);
    MTLReportFailure();
  }

  v290 = v13;
  if (self->_resultMatrixOrigin.z && MTLReportFailureTypeEnabled())
  {
    v288 = objc_opt_class();
    v289 = NSStringFromClass(v288);
    MTLReportFailure();
  }

  batchStart = self->_batchStart;
  if (batchStart < objc_msgSend_matrices(leftMatrix, a2, commandBuffer, leftMatrix, rightMatrix, resultMatrix, v6, v7, v289))
  {
    v23 = self->_batchStart;
    if (v23 < objc_msgSend_matrices(rightMatrix, v16, v17, v18, v19, v20, v21, v22))
    {
      objc_msgSend_matrices(resultMatrix, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v24 = self->_batchStart;
  if (v24 >= objc_msgSend_matrices(leftMatrix, v16, v17, v18, v19, v20, v21, v22) || (v32 = self->_batchStart, v32 >= objc_msgSend_matrices(rightMatrix, v25, v26, v27, v28, v29, v30, v31)) || (v40 = self->_batchStart, v40 >= objc_msgSend_matrices(resultMatrix, v33, v34, v35, v36, v37, v38, v39)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  objc_msgSend_rows(resultMatrix, v41, v42, v43, v44, v45, v46, v47);
  v48 = self->_M + self->_resultMatrixOrigin.x;
  if (v48 > objc_msgSend_rows(resultMatrix, v49, v50, v51, v52, v53, v54, v55) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_columns(resultMatrix, v56, v57, v58, v59, v60, v61, v62);
  v63 = self->_N + self->_resultMatrixOrigin.y;
  if (v63 > objc_msgSend_columns(resultMatrix, v64, v65, v66, v67, v68, v69, v70) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v78 = objc_msgSend_dataType(leftMatrix, v71, v72, v73, v74, v75, v76, v77);
  v86 = objc_msgSend_dataType(rightMatrix, v79, v80, v81, v82, v83, v84, v85);
  v94 = objc_msgSend_dataType(leftMatrix, v87, v88, v89, v90, v91, v92, v93);
  if (v78 == v86)
  {
    if (v94 != 268435488 && objc_msgSend_dataType(leftMatrix, v95, v96, v97, v98, v99, v100, v101) != 268435472 && objc_msgSend_dataType(leftMatrix, v95, v96, v97, v98, v99, v100, v101) != 536870920)
    {
      objc_msgSend_dataType(leftMatrix, v95, v96, v97, v98, v99, v100, v101);
    }

    if (objc_msgSend_dataType(leftMatrix, v95, v96, v97, v98, v99, v100, v101) != 268435488 && objc_msgSend_dataType(leftMatrix, v102, v103, v104, v105, v106, v107, v108) != 268435472 && objc_msgSend_dataType(leftMatrix, v102, v103, v104, v105, v106, v107, v108) != 536870920 && objc_msgSend_dataType(leftMatrix, v102, v103, v104, v105, v106, v107, v108) != 536870928 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(leftMatrix, v102, v103, v104, v105, v106, v107, v108) == 268435488 || objc_msgSend_dataType(leftMatrix, v109, v110, v111, v112, v113, v114, v115) == 536870928)
    {
      objc_msgSend_dataType(resultMatrix, v109, v110, v111, v112, v113, v114, v115);
      if (objc_msgSend_dataType(resultMatrix, v116, v117, v118, v119, v120, v121, v122) != 268435488 && MTLReportFailureTypeEnabled())
      {
LABEL_74:
        MTLReportFailure();
      }
    }

    else if (objc_msgSend_dataType(leftMatrix, v109, v110, v111, v112, v113, v114, v115) == 268435472 || objc_msgSend_dataType(leftMatrix, v123, v124, v125, v126, v127, v128, v129) == 536870920)
    {
      if (objc_msgSend_dataType(resultMatrix, v123, v124, v125, v126, v127, v128, v129) != 268435472)
      {
        objc_msgSend_dataType(resultMatrix, v275, v276, v277, v278, v279, v280, v281);
      }

      if (objc_msgSend_dataType(resultMatrix, v275, v276, v277, v278, v279, v280, v281) != 268435472 && objc_msgSend_dataType(resultMatrix, v123, v124, v125, v126, v127, v128, v129) != 268435488 && MTLReportFailureTypeEnabled())
      {
        goto LABEL_74;
      }
    }
  }

  else
  {
    if (v94 == 268435488 && objc_msgSend_dataType(rightMatrix, v95, v96, v97, v98, v99, v100, v101) == 268435472)
    {
      objc_msgSend_dataType(resultMatrix, v95, v96, v97, v98, v99, v100, v101);
    }

    if ((objc_msgSend_dataType(leftMatrix, v95, v96, v97, v98, v99, v100, v101) != 268435488 || objc_msgSend_dataType(rightMatrix, v130, v131, v132, v133, v134, v135, v136) != 268435472 || objc_msgSend_dataType(resultMatrix, v137, v138, v139, v140, v141, v142, v143) != 268435488) && MTLReportFailureTypeEnabled())
    {
      goto LABEL_74;
    }
  }

  if (self->_transA)
  {
    objc_msgSend_rows(leftMatrix, v123, v124, v125, v126, v127, v128, v129);
    v144 = self->_K + p_leftMatrixOrigin->x;
    p_rightMatrixOrigin = &self->_rightMatrixOrigin;
    if (v144 > objc_msgSend_rows(leftMatrix, v145, v146, v147, v148, v149, v150, v151) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(leftMatrix, v152, v153, v154, v155, v156, v157, v158);
    v160 = self->_M + self->_leftMatrixOrigin.y;
    if (v160 > objc_msgSend_columns(leftMatrix, v161, v162, v163, v164, v165, v166, v167) && MTLReportFailureTypeEnabled())
    {
LABEL_100:
      MTLReportFailure();
    }
  }

  else
  {
    objc_msgSend_rows(leftMatrix, v123, v124, v125, v126, v127, v128, v129);
    v175 = self->_M + p_leftMatrixOrigin->x;
    p_rightMatrixOrigin = &self->_rightMatrixOrigin;
    if (v175 > objc_msgSend_rows(leftMatrix, v176, v177, v178, v179, v180, v181, v182) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(leftMatrix, v183, v184, v185, v186, v187, v188, v189);
    v190 = self->_K + self->_leftMatrixOrigin.y;
    if (v190 > objc_msgSend_columns(leftMatrix, v191, v192, v193, v194, v195, v196, v197) && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
      goto LABEL_100;
    }
  }

  if (self->_transB)
  {
    objc_msgSend_rows(rightMatrix, v168, v169, v170, v171, v172, v173, v174);
    v198 = self->_N + p_rightMatrixOrigin->x;
    if (v198 > objc_msgSend_rows(rightMatrix, v199, v200, v201, v202, v203, v204, v205) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(rightMatrix, v206, v207, v208, v209, v210, v211, v212);
    v213 = self->_K + p_rightMatrixOrigin->y;
    v13 = v290;
    if (v213 > objc_msgSend_columns(rightMatrix, v214, v215, v216, v217, v218, v219, v220) && MTLReportFailureTypeEnabled())
    {
LABEL_104:
      MTLReportFailure();
    }
  }

  else
  {
    objc_msgSend_rows(rightMatrix, v168, v169, v170, v171, v172, v173, v174);
    v221 = self->_K + p_rightMatrixOrigin->x;
    v13 = v290;
    if (v221 > objc_msgSend_rows(rightMatrix, v222, v223, v224, v225, v226, v227, v228) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(rightMatrix, v229, v230, v231, v232, v233, v234, v235);
    v236 = self->_N + p_rightMatrixOrigin->y;
    if (v236 > objc_msgSend_columns(rightMatrix, v237, v238, v239, v240, v241, v242, v243) && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
      goto LABEL_104;
    }
  }

LABEL_51:
  v244 = objc_alloc(MEMORY[0x277CD7210]);
  v256 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v244, v245, commandBuffer, 0, v246, v247, v248, v249);
  if ((*(&self->super.super.isa + v13) & 0x18) != 0)
  {
    v257 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v257 || (v258 = objc_opt_class(), v259 = NSStringFromClass(v258), objc_msgSend_setLabel_(self, v260, v259, v261, v262, v263, v264, v265), (v257 = v259) != 0))
    {
      objc_msgSend_setLabel_(v256, v250, v257, v251, v252, v253, v254, v255);
    }
  }

  sub_2399CDE90(self, v256, commandBuffer, leftMatrix, rightMatrix, resultMatrix, v254, v255);
  v273 = MEMORY[0x277CD7388];
  v274 = *MEMORY[0x277CD7388];
  if (*(&leftMatrix[3].super.isa + v274))
  {
    MPSDecrementReadCount(leftMatrix);
    v274 = *v273;
  }

  if (*(&rightMatrix[3].super.isa + v274))
  {
    MPSDecrementReadCount(rightMatrix);
  }

  if (self->_beta != 0.0 && *(&resultMatrix[3].super.isa + *v273))
  {
    MPSDecrementReadCount(resultMatrix);
  }

  objc_msgSend_endEncoding(v256, v266, v267, v268, v269, v270, v271, v272);
}

- (void)dealloc
{
  ndArrayKernel = self->_ndArrayKernel;
  if (ndArrayKernel)
  {
  }

  v4.receiver = self;
  v4.super_class = MPSMatrixMultiplication;
  [(MPSKernel *)&v4 dealloc];
}

- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin
{
  z = resultMatrixOrigin->z;
  *&self->_resultMatrixOrigin.x = *&resultMatrixOrigin->x;
  self->_resultMatrixOrigin.z = z;
}

- (void)setLeftMatrixOrigin:(MTLOrigin *)leftMatrixOrigin
{
  z = leftMatrixOrigin->z;
  *&self->_leftMatrixOrigin.x = *&leftMatrixOrigin->x;
  self->_leftMatrixOrigin.z = z;
}

- (void)setRightMatrixOrigin:(MTLOrigin *)rightMatrixOrigin
{
  z = rightMatrixOrigin->z;
  *&self->_rightMatrixOrigin.x = *&rightMatrixOrigin->x;
  self->_rightMatrixOrigin.z = z;
}

@end