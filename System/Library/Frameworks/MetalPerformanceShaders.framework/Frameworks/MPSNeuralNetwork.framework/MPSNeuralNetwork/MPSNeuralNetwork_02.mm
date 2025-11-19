uint64_t sub_239BD9310(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v10 = a7;
  v127 = __PAIR64__(a5, a4);
  v128 = objc_msgSend_rowBytes(a2, a2, a3, a4, a5, a6, a7, a8) >> 2;
  v17 = *(a1 + 16);
  result = MPSLibrary::GetComputeState();
  if (result)
  {
    v25 = result;
    v121 = a2;
    v122 = a6;
    v123 = a3;
    objc_msgSend_setComputePipelineState_(v17, v19, result, v20, v21, v22, v23, v24);
    v33 = objc_msgSend_threadExecutionWidth(v25, v26, v27, v28, v29, v30, v31, v32);
    v41 = v33;
    if (v33 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = v33;
    }

    v43 = objc_msgSend_maxTotalThreadsPerThreadgroup(v25, v34, v35, v36, v37, v38, v39, v40);
    v44 = v10;
    if (v43 <= 1)
    {
      v45 = 1;
    }

    else
    {
      v45 = v43;
    }

    MPSLibrary::ReleaseComputeState();
    v52 = a5 < 8 || v45 < 4 * v42;
    v53 = 4;
    if (v52)
    {
      v53 = 1;
    }

    v54 = v42 >> 3;
    if (v41 < 8)
    {
      v54 = 1;
    }

    v55 = a5 > 7 && a4 > 16 * v42;
    if (a5 > 7 && a4 > 16 * v42)
    {
      v56 = 8;
    }

    else
    {
      v56 = v53;
    }

    if (v55)
    {
      v57 = v54;
    }

    else
    {
      v57 = v42;
    }

    if (v57)
    {
      v58 = (a4 + v57 - 1) / v57;
    }

    else
    {
      v58 = 0;
    }

    v59 = !v52;
    v60 = 2;
    if (!v59)
    {
      v60 = 0;
    }

    if (v55)
    {
      v60 = 3;
    }

    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v17, v46, (4 * v57) << v60, 0, v47, v48, v49, v50);
    if (v44)
    {
      v68 = 16;
    }

    else
    {
      v68 = 0;
    }

    v130 = v68;
    if (a8)
    {
      v129 = objc_msgSend_rowBytes(a8, v61, v62, v63, v64, v65, v66, v67) >> 2;
      v76 = objc_msgSend_data(a8, v69, v70, v71, v72, v73, v74, v75);
      objc_msgSend_setBuffer_offset_atIndex_(v17, v77, v76, a9, 3, v78, v79, v80);
      v85 = v121;
      v86 = v122;
    }

    else
    {
      v129 = 0;
      v85 = v121;
      v87 = objc_msgSend_data(v121, v61, v62, v63, v64, v65, v66, v67);
      objc_msgSend_setBuffer_offset_atIndex_(v17, v88, v87, 0, 3, v89, v90, v91);
      v86 = v122;
    }

    objc_msgSend_setBytes_length_atIndex_(v17, v81, &v127, 32, 0, v82, v83, v84);
    v99 = objc_msgSend_data(v85, v92, v93, v94, v95, v96, v97, v98);
    objc_msgSend_setBuffer_offset_atIndex_(v17, v100, v99, v86, 1, v101, v102, v103);
    v111 = objc_msgSend_data(v123, v104, v105, v106, v107, v108, v109, v110);
    objc_msgSend_setBuffer_offset_atIndex_(v17, v112, v111, 0, 2, v113, v114, v115);
    v124[2] = 1;
    v125 = v58;
    v126 = vdupq_n_s64(1uLL);
    v124[0] = v57;
    v124[1] = v56;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v17, v116, &v125, v124, v117, v118, v119, v120);
  }

  return result;
}

unint64_t sub_239BD9574(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = objc_msgSend_data(a2, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_length(v9, v10, v11, v12, v13, v14, v15, v16);
  result = objc_msgSend_length(v9, v17, v18, v19, v20, v21, v22, v23);
  if (result)
  {
    v25 = (result & 3) != 0 ? result : result >> 2;
    v26 = *(a1 + 16);
    result = MPSLibrary::GetComputeState();
    if (result)
    {
      v33 = result;
      objc_msgSend_setComputePipelineState_(v26, v27, result, v28, v29, v30, v31, v32);
      v41 = objc_msgSend_threadExecutionWidth(v33, v34, v35, v36, v37, v38, v39, v40);
      if (v41 <= 1)
      {
        v49 = 1;
      }

      else
      {
        v49 = v41;
      }

      v50 = objc_msgSend_maxTotalThreadsPerThreadgroup(v33, v42, v43, v44, v45, v46, v47, v48);
      if (v50 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v50;
      }

      MPSLibrary::ReleaseComputeState();
      if (8 * v49 >= v25 || 8 * v49 > v51)
      {
        v57 = v49;
      }

      else
      {
        v57 = 8 * v49;
      }

      if (v57)
      {
        v58 = (v25 + v57 - 1) / v57;
      }

      else
      {
        v58 = 0;
      }

      v72 = v25;
      objc_msgSend_setBytes_length_atIndex_(v26, v52, &v72, 4, 0, v53, v54, v55);
      objc_msgSend_setBuffer_offset_atIndex_(v26, v59, v9, 0, 1, v60, v61, v62);
      v70 = v58;
      v71 = vdupq_n_s64(1uLL);
      v68 = v57;
      v69 = v71;
      return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v26, v63, &v70, &v68, v64, v65, v66, v67);
    }
  }

  return result;
}

uint64_t sub_239BD96C4(uint64_t a1, void *a2, void **a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v120 = a4;
  v132 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_rowBytes(a2, a2, a3, a4, a5, a6, a7, a8);
  v126[0] = objc_msgSend_columns(*a3, v12, v13, v14, v15, v16, v17, v18);
  v122 = a3;
  v113 = v11;
  v126[1] = objc_msgSend_rowBytes(*a3, v19, v20, v21, v22, v23, v24, v25) >> 2;
  v126[2] = v11 >> 2;
  v115 = *(a1 + 16);
  result = MPSLibrary::GetComputeState();
  if (result)
  {
    v33 = result;
    objc_msgSend_setComputePipelineState_(v115, v27, result, v28, v29, v30, v31, v32);
    v41 = objc_msgSend_threadExecutionWidth(v33, v34, v35, v36, v37, v38, v39, v40);
    v42 = v41;
    if (v41 <= 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = v41;
    }

    MPSLibrary::ReleaseComputeState();
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v112 = v43;
    v123 = a5 - 1;
    v55 = v43 >> 2;
    if (v42 < 4)
    {
      v55 = 1;
    }

    v111 = v55;
    v121 = a6;
    v56 = v122;
    v57 = v43;
    v117 = 1;
    do
    {
      v118 = v57;
      v119 = v52;
      memset(v131, 0, sizeof(v131));
      LODWORD(v79) = 0;
      if (a6)
      {
        v80 = 0;
        v81 = 0;
        v82 = 1;
        v83 = v129;
        do
        {
          while (v54 + v81 >= a5)
          {
            v130[v81] = objc_msgSend_data(*v122, v44, v45, v46, v47, v48, v49, v50);
            *(v131 + v81) = 0;
            *(v83 - 28) = 0;
            ++v81;
            ++v83;
            if (v81 == 28)
            {
              goto LABEL_21;
            }
          }

          v130[v81] = objc_msgSend_data(v56[v81], v44, v45, v46, v47, v48, v49, v50);
          v91 = objc_msgSend_rows(v56[v81], v84, v85, v86, v87, v88, v89, v90);
          v92 = v91;
          *(v83 - 28) = v91;
          if (v91 > v51)
          {
            v51 = v91;
          }

          *v83 = v80;
          if (v123 == v81)
          {
            v92 = (v120 - v53);
            *(v83 - 28) = v120 - v53;
          }

          LODWORD(v79) = v79 + 1;
          v53 += v92;
          v80 += v92;
          v93 = *(v121 + 8 * v81);
          *(v131 + v81) = v93;
          if ((v93 & 0xF) != 0)
          {
            v82 = 0;
          }

          ++v81;
          ++v83;
        }

        while (v81 != 28);
LABEL_21:
        v57 = v118;
        if (v51 <= 0x1F)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v99 = 0;
        v100 = 0;
        v101 = v129;
        do
        {
          while (v54 + v100 >= a5)
          {
            v130[v100] = objc_msgSend_data(*v122, v44, v45, v46, v47, v48, v49, v50);
            *(v131 + v100) = 0;
            *(v101 - 28) = 0;
            ++v100;
            ++v101;
            if (v100 == 28)
            {
              goto LABEL_42;
            }
          }

          v130[v100] = objc_msgSend_data(v56[v100], v44, v45, v46, v47, v48, v49, v50);
          v109 = objc_msgSend_rows(v56[v100], v102, v103, v104, v105, v106, v107, v108);
          v110 = v109;
          *(v101 - 28) = v109;
          if (v109 > v51)
          {
            v51 = v109;
          }

          *v101 = v99;
          if (v123 == v100)
          {
            v110 = (v120 - v53);
            *(v101 - 28) = v120 - v53;
          }

          LODWORD(v79) = v79 + 1;
          v53 += v110;
          v99 += v110;
          ++v100;
          ++v101;
        }

        while (v100 != 28);
LABEL_42:
        v82 = 1;
        if (v51 <= 0x1F)
        {
LABEL_43:
          v98 = 1;
          v79 = v79;
          if (v79 <= 0xF)
          {
            goto LABEL_44;
          }

          goto LABEL_8;
        }
      }

      v94 = v126[0] < 0x200u;
      v95 = 1;
      if (v126[0] >= 0x200u)
      {
        v96 = 1;
      }

      else
      {
        v96 = 2;
      }

      if (v126[0] >= 0x200u)
      {
        v95 = 2;
      }

      v97 = v112 << v95;
      if (v126[0] >= 0x80u)
      {
        v57 = v97;
      }

      else
      {
        v96 = 4;
        v57 = v111;
      }

      v117 = v96;
      if (v126[0] < 0x80u)
      {
        v94 = 2;
      }

      v98 = (v96 + (v51 >> 3) - 1) >> v94;
      v79 = v79;
      if (v79 <= 0xF)
      {
LABEL_44:
        if (4 * v57)
        {
          v58 = (4 * v57 + v126[0] - 1) / (4 * v57);
        }

        else
        {
          v58 = 0;
        }

        goto LABEL_9;
      }

LABEL_8:
      v58 = 1;
LABEL_9:
      v127 = v79;
      v128 = v82;
      objc_msgSend_setBytes_length_atIndex_(v115, v44, v126, 128, 0, v48, v49, v50, v111);
      v66 = objc_msgSend_data(a2, v59, v60, v61, v62, v63, v64, v65);
      objc_msgSend_setBuffer_offset_atIndex_(v115, v67, v66, v119, 1, v68, v69, v70);
      objc_msgSend_setBuffers_offsets_withRange_(v115, v71, v130, v131, 2, 28, v72, v73);
      v125[0] = v58;
      v125[1] = v98;
      v125[2] = v79;
      v124[0] = v57;
      v124[1] = v117;
      v124[2] = 1;
      result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v115, v74, v125, v124, v75, v76, v77, v78);
      v52 = v53 * v113;
      v54 += 28;
      v56 += 28;
      v123 -= 28;
      v121 += 224;
    }

    while (v54 < a5);
  }

  return result;
}

unint64_t sub_239BD9B3C(unint64_t result, const char *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11, char a12)
{
  if (!a11)
  {
    return result;
  }

  v16 = result;
  v17 = a9;
  v18 = 56;
  if (a12)
  {
    v18 = 64;
  }

  v19 = *(result + v18);
  v20 = a4 - a2;
  if (a4 > a2)
  {
    objc_msgSend_setK_(*(result + v18), a2, v20, a4, a5, a6, a7, a8);
    objc_msgSend_setN_(v19, v22, a5, v23, v24, v25, v26, v27);
    v35 = objc_msgSend_rows(a11, v28, v29, v30, v31, v32, v33, v34);
    objc_msgSend_setM_(v19, v36, v35, v37, v38, v39, v40, v41);
    v135 = a2;
    v136 = a7;
    v17 = a9;
    v137 = 0;
    objc_msgSend_setLeftMatrixOrigin_(v19, v42, &v135, v43, v44, v45, v46, v47);
    v135 = 0;
    v136 = a9;
    v137 = 0;
    objc_msgSend_setRightMatrixOrigin_(v19, v48, &v135, v49, v50, v51, v52, v53);
    objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v19, v54, v16[1], v16[2], a6, a8, a11, v55);
    v135 = 0;
    v136 = 0;
    v137 = 0;
    objc_msgSend_setLeftMatrixOrigin_(v19, v56, &v135, v57, v58, v59, v60, v61);
    v135 = 0;
    v136 = 0;
    v137 = 0;
    result = objc_msgSend_setRightMatrixOrigin_(v19, v62, &v135, v63, v64, v65, v66, v67);
    if (!a10)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (a10)
  {
    if (!a12)
    {
LABEL_10:
      v68 = objc_msgSend_rows(a10, a2, v20, a4, a5, a6, a7, a8);
      v76 = objc_msgSend_rows(a8, v69, v70, v71, v72, v73, v74, v75);
      v133 = a8;
      v83 = a7;
      v84 = v17;
      v85 = v76 - v68;
      if (v68 >= a3)
      {
        objc_msgSend_setK_(v19, v77, a3, v78, v79, v80, v81, v82, v133);
      }

      else
      {
        objc_msgSend_setK_(v19, v77, v68, v78, v79, v80, v81, v82, v133);
      }

      objc_msgSend_setN_(v19, v86, a5, v87, v88, v89, v90, v91);
      v99 = objc_msgSend_rows(a11, v92, v93, v94, v95, v96, v97, v98);
      objc_msgSend_setM_(v19, v100, v99, v101, v102, v103, v104, v105);
      v135 = v85;
      v136 = v84;
      v137 = 0;
      objc_msgSend_setRightMatrixOrigin_(v19, v106, &v135, v107, v108, v109, v110, v111);
      v135 = 0;
      v136 = v83;
      v137 = 0;
      objc_msgSend_setLeftMatrixOrigin_(v19, v112, &v135, v113, v114, v115, v116, v117);
      objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v19, v118, v16[1], v16[2], a10, v134, a11, v119);
      v135 = 0;
      v136 = 0;
      v137 = 0;
      objc_msgSend_setRightMatrixOrigin_(v19, v120, &v135, v121, v122, v123, v124, v125);
      v135 = 0;
      v136 = 0;
      v137 = 0;
      return objc_msgSend_setLeftMatrixOrigin_(v19, v126, &v135, v127, v128, v129, v130, v131);
    }

LABEL_9:
    v19 = v16[8];
    goto LABEL_10;
  }

  if ((a12 & 1) == 0)
  {

    return sub_239BD9574(result, a11, v20, a4, a5, a6, a7, a8);
  }

  return result;
}

void *sub_239BD9D6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_useFloat32Weights(a2, a2, a3, a4, a5, a6, a7, a8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = 0;
  *(a3 + 72) = objc_msgSend_useLayerInputUnitTransformMode(a2, v11, v12, v13, v14, v15, v16, v17);
  *(a3 + 64) = objc_msgSend_layerSequenceDirection(a2, v18, v19, v20, v21, v22, v23, v24);
  *(a3 + 32) = objc_msgSend_inputFeatureChannels(a2, v25, v26, v27, v28, v29, v30, v31);
  *(a3 + 40) = objc_msgSend_outputFeatureChannels(a2, v32, v33, v34, v35, v36, v37, v38);
  *(a3 + 48) = objc_msgSend_outputFeatureChannels(a2, v39, v40, v41, v42, v43, v44, v45);
  *(a3 + 80) = objc_msgSend_internalKernelSelector(a2, v46, v47, v48, v49, v50, v51, v52);
  *(a3 + 56) = objc_msgSend_outputFeatureChannels(a2, v53, v54, v55, v56, v57, v58, v59);
  *(a3 + 88) = 0;
  if (objc_msgSend_inputTransform(a2, v60, v61, v62, v63, v64, v65, v66))
  {
    v74 = objc_msgSend_inputTransform(a2, v67, v68, v69, v70, v71, v72, v73);
    v75 = [MPSCNNConvolution alloc];
    v81 = objc_msgSend_initWithDevice_weights_(v75, v76, a1, v74, v77, v78, v79, v80);
    *a3 = v81;
    if (v81)
    {
      *(a3 + 32) = objc_msgSend_inputFeatureChannels(v81, v67, v68, v69, v70, v71, v72, v73);
      *(a3 + 24) = 0;
    }
  }

  if (objc_msgSend_outputTransform(a2, v67, v68, v69, v70, v71, v72, v73))
  {
    v89 = objc_msgSend_outputTransform(a2, v82, v83, v84, v85, v86, v87, v88);
    v90 = [MPSCNNConvolution alloc];
    v96 = objc_msgSend_initWithDevice_weights_(v90, v91, a1, v89, v92, v93, v94, v95);
    *(a3 + 8) = v96;
    if (v96)
    {
      v97 = objc_msgSend_inputFeatureChannels(v96, v82, v83, v84, v85, v86, v87, v88);
      objc_msgSend_outputFeatureChannels(*(a3 + 8), v98, v99, v100, v101, v102, v103, v104);
      *(a3 + 56) = v97;
      *(a3 + 25) = 0;
    }
  }

  result = objc_msgSend_recurrentOutputTransform(a2, v82, v83, v84, v85, v86, v87, v88);
  if (result)
  {
    v113 = objc_msgSend_recurrentOutputTransform(a2, v106, v107, v108, v109, v110, v111, v112);
    v114 = [MPSCNNConvolution alloc];
    result = objc_msgSend_initWithDevice_weights_(v114, v115, a1, v113, v116, v117, v118, v119);
    *(a3 + 16) = result;
    if (result)
    {
      v127 = objc_msgSend_inputFeatureChannels(result, v120, v121, v122, v123, v124, v125, v126);
      result = objc_msgSend_outputFeatureChannels(*(a3 + 16), v128, v129, v130, v131, v132, v133, v134);
      *(a3 + 56) = v127;
      *(a3 + 26) = 0;
    }
  }

  return result;
}

uint64_t sub_239BD9EEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = objc_msgSend_descriptor(a2, a2, a3, a4, a5, a6, a7, a8);
  v12 = [MPSCNNConvolutionDescriptorNoNeuron alloc];
  v19 = objc_msgSend_initWithConvDescriptor_(v12, v13, v11, v14, v15, v16, v17, v18);
  if (objc_opt_respondsToSelector())
  {
    v20 = &off_278B11380;
  }

  else
  {
    v21 = objc_opt_respondsToSelector();
    v20 = off_278B11370;
    if (v21)
    {
      v20 = off_278B11378;
    }
  }

  v22 = objc_alloc(*v20);
  v27 = objc_msgSend_initWithWeights_useBias_desc_(v22, v23, a2, a3, v19, v24, v25, v26);
  v28 = [MPSCNNConvolution alloc];
  v34 = objc_msgSend_initWithDevice_weights_(v28, v29, a1, v27, v30, v31, v32, v33);

  return v34;
}

uint64_t sub_239BD9FCC(uint64_t result, char *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  *(result + 64) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0;
  if (a4)
  {
    result = objc_msgSend_load(a4, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    v21 = objc_msgSend_descriptor(a4, v14, v15, v16, v17, v18, v19, v20);
    v29 = v21;
    if (v21)
    {
      objc_msgSend_neuronInfo(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    else
    {
      v229 = 0uLL;
      v230 = 0;
    }

    *(v12 + 40) = v229;
    *(v12 + 56) = v230;
    if (objc_msgSend_useLayerInputUnitTransformMode(a3, v22, v23, v24, v25, v26, v27, v28))
    {
      v37 = objc_msgSend_biasTerms(a4, v30, v31, v32, v33, v34, v35, v36);
      v45 = objc_msgSend_outputFeatureChannels(v29, v38, v39, v40, v41, v42, v43, v44);
      MPSDevice = MPSDevice::GetMPSDevice();
      v54 = 0;
      if (v37)
      {
        if (MPSDevice)
        {
          v55 = 4 * v45;
          v56 = (*(*MPSDevice + 24))(MPSDevice);
          v62 = objc_msgSend_newBufferWithLength_options_(a2, v57, (v55 + 12) & 0x3FFFFFFF0, 16 * v56, v58, v59, v60, v61);
          v54 = v62;
          if (v62)
          {
            v63 = objc_msgSend_contents(v62, v47, v48, v49, v50, v51, v52, v53);
            memcpy(v63, v37, v55);
          }
        }
      }

      *(v12 + 32) = v54;
      *(v12 + 64) = 1;
    }

    else
    {
      v64 = objc_autoreleasePoolPush();
      if (objc_msgSend_dataType(a4, v65, v66, v67, v68, v69, v70, v71) != 268435472 && objc_msgSend_dataType(a4, v72, v73, v74, v75, v76, v77, v78) != 536870920 && objc_msgSend_dataType(a4, v79, v80, v74, v75, v76, v77, v78) != 8)
      {
        objc_msgSend_dataType(a4, v81, v82, v74, v75, v76, v77, v78);
      }

      *v12 = sub_239BD9EEC(a2, a4, 1, v74, v75, v76, v77, v78);
      if (objc_msgSend_biasTerms(a4, v83, v84, v85, v86, v87, v88, v89))
      {
        *(v12 + 64) = 1;
      }

      objc_autoreleasePoolPop(v64);
    }

    result = objc_msgSend_purge(a4, v47, v48, v49, v50, v51, v52, v53);
  }

  if (a5)
  {
    result = objc_msgSend_load(a5, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    *(v12 + 8) = sub_239BD9EEC(a2, a5, 0, v90, v91, v92, v93, v94);
    result = objc_msgSend_purge(a5, v95, v96, v97, v98, v99, v100, v101);
  }

  if (a6)
  {
    result = objc_msgSend_load(a6, a2, a3, a4, a5, a6, a7, a8);
    if (result)
    {
      v109 = objc_msgSend_descriptor(a6, v102, v103, v104, v105, v106, v107, v108);
      if (objc_msgSend_memoryWeightsAreDiagonal(a3, v110, v111, v112, v113, v114, v115, v116))
      {
        v124 = objc_msgSend_weights(a6, v117, v118, v119, v120, v121, v122, v123);
        v139 = objc_msgSend_dataType(a6, v125, v126, v127, v128, v129, v130, v131);
        if (v139 != 268435488)
        {
          v140 = objc_msgSend_outputFeatureChannels(v109, v132, v133, v134, v135, v136, v137, v138);
          v124 = malloc_type_malloc(4 * v140, 0x100004052888210uLL);
          if (objc_msgSend_dataType(a6, v141, v142, v143, v144, v145, v146, v147) == 268435472)
          {
            objc_msgSend_weights(a6, v148, v149, v150, v151, v152, v153, v154);
            objc_msgSend_outputFeatureChannels(v109, v155, v156, v157, v158, v159, v160, v161);
            MPSConvertHalfToFloat();
          }

          else
          {
            v169 = objc_msgSend_rangesForUInt8Kernel(a6, v148, v149, v150, v151, v152, v153, v154);
            if (objc_msgSend_outputFeatureChannels(v109, v170, v171, v172, v173, v174, v175, v176))
            {
              if (v169)
              {
                v177 = 0;
                do
                {
                  v178 = objc_msgSend_weights(a6, v132, v133, v134, v135, v136, v137, v138);
                  LODWORD(v228) = *(v169 + 8 * v177);
                  v179 = vcvtq_f64_f32(*(v169 + 8 * v177));
                  v180 = 0.00392156863 * vsubq_f64(vdupq_laneq_s64(v179, 1), v179).f64[0];
                  v188 = objc_msgSend_dataType(a6, v181, v182, v183, v184, v185, v186, v187);
                  v196 = *(v178 + v177);
                  if (v188 == 536870920)
                  {
                    v196 = v196 + 128;
                  }

                  v197 = v180;
                  v124[v177++] = v228 + (v197 * v196);
                }

                while (v177 < objc_msgSend_outputFeatureChannels(v109, v189, v190, v191, v192, v193, v194, v195));
              }

              else
              {
                v198 = 0;
                do
                {
                  v199 = objc_msgSend_weights(a6, v132, v133, v134, v135, v136, v137, v138);
                  v207 = objc_msgSend_dataType(a6, v200, v201, v202, v203, v204, v205, v206);
                  v215 = *(v199 + v198);
                  if (v207 == 536870920)
                  {
                    v215 = v215 + 128;
                  }

                  v124[v198++] = (v215 * 0.03937) + -5.0394;
                }

                while (v198 < objc_msgSend_outputFeatureChannels(v109, v208, v209, v210, v211, v212, v213, v214));
              }
            }
          }
        }

        v216 = objc_msgSend_outputFeatureChannels(v109, v132, v133, v134, v135, v136, v137, v138);
        v217 = MPSDevice::GetMPSDevice();
        v218 = 0;
        if (v124)
        {
          if (v217)
          {
            v219 = 4 * v216;
            v220 = (*(*v217 + 24))(v217);
            v226 = objc_msgSend_newBufferWithLength_options_(a2, v221, (v219 + 12) & 0x3FFFFFFF0, 16 * v220, v222, v223, v224, v225);
            v218 = v226;
            if (v226)
            {
              v227 = objc_msgSend_contents(v226, v162, v163, v164, v165, v166, v167, v168);
              memcpy(v227, v124, v219);
            }
          }
        }

        *(v12 + 24) = v218;
        if (v139 != 268435488)
        {
          free(v124);
        }
      }

      else
      {
        *(v12 + 16) = sub_239BD9EEC(a2, a6, 0, v119, v120, v121, v122, v123);
      }

      return objc_msgSend_purge(a6, v162, v163, v164, v165, v166, v167, v168);
    }
  }

  return result;
}

uint64_t sub_239BDA44C(void *a1, void *a2, uint64_t *a3, void *a4, _BYTE *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v8 = a8;
  result = objc_msgSend_load(a2, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v24 = result;
  if (a4)
  {
    *a4 = 0;
  }

  if (objc_msgSend_dataType(a2, v17, v18, v19, v20, v21, v22, v23) != 536870920 && objc_msgSend_dataType(a2, v25, v26, v27, v28, v29, v30, v31) != 8 && objc_msgSend_dataType(a2, v25, v26, v27, v28, v29, v30, v31) != 268435472)
  {
    objc_msgSend_dataType(a2, v25, v26, v27, v28, v29, v30, v31);
  }

  v32 = objc_msgSend_descriptor(a2, v25, v26, v27, v28, v29, v30, v31);
  v40 = v32;
  if (a6)
  {
    if (v32)
    {
      objc_msgSend_neuronInfo(v32, v33, v34, v35, v36, v37, v38, v39);
    }

    else
    {
      v76 = 0uLL;
      v77 = 0;
    }

    *a6 = v76;
    *(a6 + 16) = v77;
  }

  if (v8)
  {
    v41 = objc_msgSend_biasTerms(a2, v33, v34, v35, v36, v37, v38, v39);
    v49 = objc_msgSend_outputFeatureChannels(v40, v42, v43, v44, v45, v46, v47, v48);
    MPSDevice = MPSDevice::GetMPSDevice();
    v58 = 0;
    if (v41)
    {
      if (MPSDevice)
      {
        v59 = 4 * v49;
        v60 = (*(*MPSDevice + 24))(MPSDevice);
        v66 = objc_msgSend_newBufferWithLength_options_(a1, v61, (v59 + 12) & 0x3FFFFFFF0, 16 * v60, v62, v63, v64, v65);
        v58 = v66;
        if (v66)
        {
          v67 = objc_msgSend_contents(v66, v51, v52, v53, v54, v55, v56, v57);
          memcpy(v67, v41, v59);
        }
      }
    }

    *a4 = v58;
  }

  else
  {
    *a3 = sub_239BD9EEC(a1, a2, 1, v35, v36, v37, v38, v39);
    v75 = objc_msgSend_biasTerms(a2, v68, v69, v70, v71, v72, v73, v74);
    if (!a5 || !v75)
    {
      goto LABEL_24;
    }
  }

  *a5 = 1;
LABEL_24:
  if (a7)
  {
    if (!*a7)
    {
      *a7 = objc_msgSend_outputFeatureChannels(v40, v51, v52, v53, v54, v55, v56, v57);
    }
  }

  objc_msgSend_purge(a2, v51, v52, v53, v54, v55, v56, v57);
  return v24;
}

uint64_t sub_239BDA634(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  result = MPSDevice::GetMPSDevice();
  if (result)
  {
    v12 = result;
    result = 0;
    if (a1)
    {
      if (v4)
      {
        if (v4 == a3)
        {

          return MEMORY[0x2821F9840](0);
        }

        else
        {
          v13 = v12;
          v14 = objc_msgSend_length(a1, a1, v6, v7, v8, v9, v10, v11);
          v15 = (*(*v13 + 40))(v13);
          v16 = (*(*v13 + 24))(v13);
          v22 = objc_msgSend_newBufferWithLength_options_(v4, v17, v14, v15 | (16 * v16), v18, v19, v20, v21);
          if (v22)
          {
            v30 = v22;
            v31 = objc_msgSend_contents(v22, v23, v24, v25, v26, v27, v28, v29);
            v39 = objc_msgSend_contents(a1, v32, v33, v34, v35, v36, v37, v38);
            v47 = objc_msgSend_length(a1, v40, v41, v42, v43, v44, v45, v46);
            memcpy(v31, v39, v47);
            return v30;
          }

          else
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_239BDA7A4(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*a4)
  {
    v7 = result;
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v236 = objc_msgSend_initWithFormat_(v8, v9, @"%@%d", v10, v11, v12, v13, v14, @"kMPSRNNLayer.common.direction", a3);
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v235 = objc_msgSend_initWithFormat_(v15, v16, @"%@%d", v17, v18, v19, v20, v21, @"kMPSRNNLayer.common.useUnitXForm", a3);
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    v234 = objc_msgSend_initWithFormat_(v22, v23, @"%@%d", v24, v25, v26, v27, v28, @"kMPSRNNLayer.common.nHiddenFeatures", a3);
    v29 = objc_alloc(MEMORY[0x277CCACA8]);
    v233 = objc_msgSend_initWithFormat_(v29, v30, @"%@%d", v31, v32, v33, v34, v35, @"kMPSRNNLayer.common.nInputFeatures", a3);
    v36 = objc_alloc(MEMORY[0x277CCACA8]);
    v43 = objc_msgSend_initWithFormat_(v36, v37, @"%@%d", v38, v39, v40, v41, v42, @"kMPSRNNLayer.common.nOutputFeatures", a3);
    v44 = objc_alloc(MEMORY[0x277CCACA8]);
    v51 = objc_msgSend_initWithFormat_(v44, v45, @"%@%d", v46, v47, v48, v49, v50, @"kMPSRNNLayer.common.nRecurrentOutputFeatures", a3);
    v52 = objc_alloc(MEMORY[0x277CCACA8]);
    v59 = objc_msgSend_initWithFormat_(v52, v53, @"%@%d", v54, v55, v56, v57, v58, @"kMPSRNNLayer.common.inputTransform", a3);
    v60 = objc_alloc(MEMORY[0x277CCACA8]);
    v67 = objc_msgSend_initWithFormat_(v60, v61, @"%@%d", v62, v63, v64, v65, v66, @"kMPSRNNLayer.common.outputTransform", a3);
    v68 = objc_alloc(MEMORY[0x277CCACA8]);
    v237 = objc_msgSend_initWithFormat_(v68, v69, @"%@%d", v70, v71, v72, v73, v74, @"kMPSRNNLayer.common.recurrentOutputTransform", a3);
    v75 = objc_alloc(MEMORY[0x277CCACA8]);
    v239 = objc_msgSend_initWithFormat_(v75, v76, @"%@%d", v77, v78, v79, v80, v81, @"kMPSRNNLayer.common.inputTransform.hasBias", a3);
    v82 = objc_alloc(MEMORY[0x277CCACA8]);
    v238 = objc_msgSend_initWithFormat_(v82, v83, @"%@%d", v84, v85, v86, v87, v88, @"kMPSRNNLayer.common.outputTransform.hasBias", a3);
    v89 = objc_alloc(MEMORY[0x277CCACA8]);
    v96 = objc_msgSend_initWithFormat_(v89, v90, @"%@%d", v91, v92, v93, v94, v95, @"kMPSRNNLayer.common.recurrentOutputTransform.hasBias", a3);
    *(a2 + 64) = objc_msgSend_decodeInt64ForKey_(v7, v97, v236, v98, v99, v100, v101, v102);
    *(a2 + 72) = objc_msgSend_decodeBoolForKey_(v7, v103, v235, v104, v105, v106, v107, v108);
    *(a2 + 56) = objc_msgSend_decodeInt64ForKey_(v7, v109, v234, v110, v111, v112, v113, v114);
    *(a2 + 32) = objc_msgSend_decodeInt64ForKey_(v7, v115, v233, v116, v117, v118, v119, v120);
    *(a2 + 40) = objc_msgSend_decodeInt64ForKey_(v7, v121, v43, v122, v123, v124, v125, v126);
    *(a2 + 48) = objc_msgSend_decodeInt64ForKey_(v7, v127, v51, v128, v129, v130, v131, v132);
    if (objc_msgSend_decodeBoolForKey_(v7, v133, v59, v134, v135, v136, v137, v138) && *a4 == 1)
    {
      v145 = objc_alloc(MEMORY[0x277CCACA8]);
      v152 = objc_msgSend_initWithFormat_(v145, v146, @"%@%@", v147, v148, v149, v150, v151, v59, @".convolution");
      v159 = objc_msgSend_decodeObjectForKey_(v7, v153, v152, v154, v155, v156, v157, v158);
      if (v159)
      {

        *a2 = v159;
        if (!objc_msgSend_decodeBoolForKey_(v7, v160, v67, v161, v162, v163, v164, v165))
        {
          goto LABEL_14;
        }
      }

      else
      {
        *a4 = 0;

        *a2 = 0;
        if (!objc_msgSend_decodeBoolForKey_(v7, v200, v67, v201, v202, v203, v204, v205))
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      *a2 = 0;
      if (!objc_msgSend_decodeBoolForKey_(v7, v139, v67, v140, v141, v142, v143, v144))
      {
        goto LABEL_14;
      }
    }

    if (*a4 == 1)
    {
      v172 = objc_alloc(MEMORY[0x277CCACA8]);
      v179 = objc_msgSend_initWithFormat_(v172, v173, @"%@%@", v174, v175, v176, v177, v178, v67, @".convolution");
      v186 = objc_msgSend_decodeObjectForKey_(v7, v180, v179, v181, v182, v183, v184, v185);
      if (!v186)
      {
        *a4 = 0;
      }

      *(a2 + 8) = v186;
      v187 = v237;
      if (!objc_msgSend_decodeBoolForKey_(v7, v188, v237, v189, v190, v191, v192, v193))
      {
        goto LABEL_19;
      }

LABEL_15:
      if (*a4 == 1)
      {
        v206 = objc_alloc(MEMORY[0x277CCACA8]);
        v213 = objc_msgSend_initWithFormat_(v206, v207, @"%@%@", v208, v209, v210, v211, v212, v187, @".convolution");
        v220 = objc_msgSend_decodeObjectForKey_(v7, v214, v213, v215, v216, v217, v218, v219);
        if (!v220)
        {
          *a4 = 0;
        }

        goto LABEL_20;
      }

LABEL_19:
      v220 = 0;
LABEL_20:
      *(a2 + 16) = v220;
      *(a2 + 24) = objc_msgSend_decodeBoolForKey_(v7, v194, v239, v195, v196, v197, v198, v199);
      *(a2 + 25) = objc_msgSend_decodeBoolForKey_(v7, v221, v238, v222, v223, v224, v225, v226);
      result = objc_msgSend_decodeBoolForKey_(v7, v227, v96, v228, v229, v230, v231, v232);
      *(a2 + 26) = result;
      return result;
    }

LABEL_14:
    *(a2 + 8) = 0;
    v187 = v237;
    if (!objc_msgSend_decodeBoolForKey_(v7, v166, v237, v167, v168, v169, v170, v171))
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  return result;
}

void sub_239BDABDC(void *a1, uint64_t a2, _DWORD *a3)
{
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = objc_msgSend_initWithFormat_(v6, v7, @"%@%@", v8, v9, v10, v11, v12, a2, @"kMPSRNNLayer.neuron.neuronType");
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = objc_msgSend_initWithFormat_(v14, v15, @"%@%@", v16, v17, v18, v19, v20, a2, @"kMPSRNNLayer.neuron.neuronParamA");
  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  v29 = objc_msgSend_initWithFormat_(v22, v23, @"%@%@", v24, v25, v26, v27, v28, a2, @"kMPSRNNLayer.neuron.neuronParamB");
  v30 = objc_alloc(MEMORY[0x277CCACA8]);
  v64 = objc_msgSend_initWithFormat_(v30, v31, @"%@%@", v32, v33, v34, v35, v36, a2, @"kMPSRNNLayer.neuron.neuronParamC");
  *a3 = objc_msgSend_decodeInt64ForKey_(a1, v37, v13, v38, v39, v40, v41, v42);
  objc_msgSend_decodeFloatForKey_(a1, v43, v21, v44, v45, v46, v47, v48);
  a3[1] = v49;
  objc_msgSend_decodeFloatForKey_(a1, v50, v29, v51, v52, v53, v54, v55);
  a3[2] = v56;
  objc_msgSend_decodeFloatForKey_(a1, v57, v64, v58, v59, v60, v61, v62);
  a3[3] = v63;
}

void sub_239BDAD10(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  if (*a6)
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = objc_msgSend_initWithFormat_(v11, v12, @"%@%@", v13, v14, v15, v16, v17, a3, @".inputXForm");
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v192 = objc_msgSend_initWithFormat_(v19, v20, @"%@%@", v21, v22, v23, v24, v25, a3, @".recurrentXForm");
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    v33 = objc_msgSend_initWithFormat_(v26, v27, @"%@%@", v28, v29, v30, v31, v32, a3, @".peepholeXForm");
    v34 = objc_alloc(MEMORY[0x277CCACA8]);
    v41 = objc_msgSend_initWithFormat_(v34, v35, @"%@%@", v36, v37, v38, v39, v40, a3, @".hasBias");
    v42 = objc_alloc(MEMORY[0x277CCACA8]);
    v194 = objc_msgSend_initWithFormat_(v42, v43, @"%@%@", v44, v45, v46, v47, v48, a3, @".biasVector");
    v49 = objc_alloc(MEMORY[0x277CCACA8]);
    v195 = objc_msgSend_initWithFormat_(v49, v50, @"%@%@", v51, v52, v53, v54, v55, a3, @".peepholeVector");
    v56 = objc_alloc(MEMORY[0x277CCACA8]);
    v63 = objc_msgSend_initWithFormat_(v56, v57, @"%@%@", v58, v59, v60, v61, v62, a3, @".nHiddenFeatures");
    v193 = objc_msgSend_decodeInt64ForKey_(a1, v64, v63, v65, v66, v67, v68, v69);
    sub_239BDABDC(a1, a3, (a4 + 40));
    *(a4 + 64) = objc_msgSend_decodeBoolForKey_(a1, v70, v41, v71, v72, v73, v74, v75);
    if (objc_msgSend_decodeBoolForKey_(a1, v76, v18, v77, v78, v79, v80, v81))
    {
      v88 = a2;
      if (*a6 == 1)
      {
        v89 = objc_alloc(MEMORY[0x277CCACA8]);
        v96 = objc_msgSend_initWithFormat_(v89, v90, @"%@%@", v91, v92, v93, v94, v95, v18, @".convolution");
        v103 = objc_msgSend_decodeObjectForKey_(a1, v97, v96, v98, v99, v100, v101, v102);
        if (v103)
        {

          *a4 = v103;
          if (!a5)
          {
LABEL_6:
            if (objc_msgSend_decodeBoolForKey_(a1, v82, v192, v83, v84, v85, v86, v87) && *a6 == 1)
            {
              v110 = objc_alloc(MEMORY[0x277CCACA8]);
              v117 = objc_msgSend_initWithFormat_(v110, v111, @"%@%@", v112, v113, v114, v115, v116, v192, @".convolution");
              v124 = objc_msgSend_decodeObjectForKey_(a1, v118, v117, v119, v120, v121, v122, v123);
              if (!v124)
              {
                *a6 = 0;
              }

              *(a4 + 8) = v124;
              if (!objc_msgSend_decodeBoolForKey_(a1, v125, v33, v126, v127, v128, v129, v130))
              {
                goto LABEL_24;
              }
            }

            else
            {
              *(a4 + 8) = 0;
              if (!objc_msgSend_decodeBoolForKey_(a1, v104, v33, v105, v106, v107, v108, v109))
              {
                goto LABEL_24;
              }
            }

LABEL_16:
            if (*a6 == 1)
            {
              v137 = objc_alloc(MEMORY[0x277CCACA8]);
              v144 = objc_msgSend_initWithFormat_(v137, v138, @"%@%@", v139, v140, v141, v142, v143, v33, @".convolution");
              v151 = objc_msgSend_decodeObjectForKey_(a1, v145, v144, v146, v147, v148, v149, v150);
              if (v151)
              {

                *(a4 + 16) = v151;
                MPSDevice = MPSDevice::GetMPSDevice();
                if (MPSDevice)
                {
LABEL_25:
                  v179 = MPSDevice;
                  if (objc_msgSend_decodeBoolForKey_(a1, v153, v194, v154, v155, v156, v157, v158))
                  {
                    v197 = 0;
                    v184 = sub_239BCD898(a1, v194, &v197, a6, v180, v181, v182, v183);
                    if (v184)
                    {
                      v185 = v184;
                      if (v197 == v193)
                      {
                        v186 = (*(*v179 + 24))(v179);
                        v191 = objc_msgSend_newBufferWithBytes_length_options_(v88, v187, v185, 4 * v193, 16 * v186, v188, v189, v190);
                        free(v185);
                        *(a4 + 32) = v191;
                        v159 = MPSDevice::GetMPSDevice();
                        if (!v159)
                        {
                          goto LABEL_32;
                        }
                      }

                      else
                      {
                        *a6 = 0;
                        free(v184);
                        *(a4 + 32) = 0;
                        v159 = MPSDevice::GetMPSDevice();
                        if (!v159)
                        {
                          goto LABEL_32;
                        }
                      }
                    }

                    else
                    {
                      *(a4 + 32) = 0;
                      v159 = MPSDevice::GetMPSDevice();
                      if (!v159)
                      {
                        goto LABEL_32;
                      }
                    }

LABEL_20:
                    v166 = v159;
                    if (objc_msgSend_decodeBoolForKey_(a1, v160, v195, v161, v162, v163, v164, v165))
                    {
                      v197 = 0;
                      v171 = sub_239BCD898(a1, v195, &v197, a6, v167, v168, v169, v170);
                      if (v171)
                      {
                        v172 = v171;
                        if (v197 == v193)
                        {
                          v173 = (*(*v166 + 24))(v166);
                          v178 = objc_msgSend_newBufferWithBytes_length_options_(v88, v174, v172, 4 * v193, 16 * v173, v175, v176, v177);
                        }

                        else
                        {
                          v178 = 0;
                          *a6 = 0;
                        }

                        free(v172);
                      }

                      else
                      {
                        v178 = 0;
                      }
                    }

                    else
                    {
                      v178 = 0;
                      *a6 = 1;
                    }

                    goto LABEL_40;
                  }

                  *a6 = 1;
                  *(a4 + 32) = 0;
                  v159 = MPSDevice::GetMPSDevice();
                  if (v159)
                  {
                    goto LABEL_20;
                  }

LABEL_32:
                  v178 = 0;
                  *a6 = 0;
LABEL_40:
                  *(a4 + 24) = v178;
                  return;
                }
              }

              else
              {
                *a6 = 0;

                *(a4 + 16) = 0;
                MPSDevice = MPSDevice::GetMPSDevice();
                if (MPSDevice)
                {
                  goto LABEL_25;
                }
              }

LABEL_19:
              *a6 = 0;
              *(a4 + 32) = 0;
              v159 = MPSDevice::GetMPSDevice();
              if (v159)
              {
                goto LABEL_20;
              }

              goto LABEL_32;
            }

LABEL_24:
            *(a4 + 16) = 0;
            MPSDevice = MPSDevice::GetMPSDevice();
            if (MPSDevice)
            {
              goto LABEL_25;
            }

            goto LABEL_19;
          }
        }

        else
        {
          *a6 = 0;

          *a4 = 0;
          if (!a5)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        *a4 = 0;
        if (!a5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v88 = a2;
      *a4 = 0;
      if (!a5)
      {
        goto LABEL_6;
      }
    }

    *(a4 + 8) = a5;
    if (!objc_msgSend_decodeBoolForKey_(a1, v131, v33, v132, v133, v134, v135, v136))
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }
}

uint64_t sub_239BDB264(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v205 = objc_msgSend_initWithFormat_(v6, v7, @"%@%d", v8, v9, v10, v11, v12, @"kMPSRNNLayer.common.direction", a3);
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v204 = objc_msgSend_initWithFormat_(v13, v14, @"%@%d", v15, v16, v17, v18, v19, @"kMPSRNNLayer.common.useUnitXForm", a3);
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v203 = objc_msgSend_initWithFormat_(v20, v21, @"%@%d", v22, v23, v24, v25, v26, @"kMPSRNNLayer.common.nHiddenFeatures", a3);
  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  v201 = objc_msgSend_initWithFormat_(v27, v28, @"%@%d", v29, v30, v31, v32, v33, @"kMPSRNNLayer.common.nInputFeatures", a3);
  v34 = objc_alloc(MEMORY[0x277CCACA8]);
  v41 = objc_msgSend_initWithFormat_(v34, v35, @"%@%d", v36, v37, v38, v39, v40, @"kMPSRNNLayer.common.nOutputFeatures", a3);
  v42 = objc_alloc(MEMORY[0x277CCACA8]);
  v49 = objc_msgSend_initWithFormat_(v42, v43, @"%@%d", v44, v45, v46, v47, v48, @"kMPSRNNLayer.common.nRecurrentOutputFeatures", a3);
  v50 = objc_alloc(MEMORY[0x277CCACA8]);
  v57 = objc_msgSend_initWithFormat_(v50, v51, @"%@%d", v52, v53, v54, v55, v56, @"kMPSRNNLayer.common.inputTransform", a3);
  v58 = objc_alloc(MEMORY[0x277CCACA8]);
  v65 = objc_msgSend_initWithFormat_(v58, v59, @"%@%d", v60, v61, v62, v63, v64, @"kMPSRNNLayer.common.outputTransform", a3);
  v66 = objc_alloc(MEMORY[0x277CCACA8]);
  v73 = objc_msgSend_initWithFormat_(v66, v67, @"%@%d", v68, v69, v70, v71, v72, @"kMPSRNNLayer.common.recurrentOutputTransform", a3);
  v74 = objc_alloc(MEMORY[0x277CCACA8]);
  v202 = objc_msgSend_initWithFormat_(v74, v75, @"%@%d", v76, v77, v78, v79, v80, @"kMPSRNNLayer.common.inputTransform.hasBias", a3);
  v81 = objc_alloc(MEMORY[0x277CCACA8]);
  v200 = objc_msgSend_initWithFormat_(v81, v82, @"%@%d", v83, v84, v85, v86, v87, @"kMPSRNNLayer.common.outputTransform.hasBias", a3);
  v88 = objc_alloc(MEMORY[0x277CCACA8]);
  v95 = objc_msgSend_initWithFormat_(v88, v89, @"%@%d", v90, v91, v92, v93, v94, @"kMPSRNNLayer.common.recurrentOutputTransform.hasBias", a3);
  objc_msgSend_encodeInt64_forKey_(a1, v96, *(a2 + 64), v205, v97, v98, v99, v100);
  objc_msgSend_encodeBool_forKey_(a1, v101, *(a2 + 72), v204, v102, v103, v104, v105);
  objc_msgSend_encodeInt64_forKey_(a1, v106, *(a2 + 56), v203, v107, v108, v109, v110);
  objc_msgSend_encodeInt64_forKey_(a1, v111, *(a2 + 32), v201, v112, v113, v114, v115);
  objc_msgSend_encodeInt64_forKey_(a1, v116, *(a2 + 40), v41, v117, v118, v119, v120);
  objc_msgSend_encodeInt64_forKey_(a1, v121, *(a2 + 48), v49, v122, v123, v124, v125);
  v126 = *a2;
  objc_msgSend_encodeBool_forKey_(a1, v127, *a2 != 0, v57, v128, v129, v130, v131);
  if (v126)
  {
    v137 = objc_alloc(MEMORY[0x277CCACA8]);
    v144 = objc_msgSend_initWithFormat_(v137, v138, @"%@%@", v139, v140, v141, v142, v143, v57, @".convolution");
    objc_msgSend_encodeObject_forKey_(a1, v145, v126, v144, v146, v147, v148, v149);
  }

  v150 = *(a2 + 8);
  objc_msgSend_encodeBool_forKey_(a1, v132, v150 != 0, v65, v133, v134, v135, v136);
  if (v150)
  {
    v156 = objc_alloc(MEMORY[0x277CCACA8]);
    v163 = objc_msgSend_initWithFormat_(v156, v157, @"%@%@", v158, v159, v160, v161, v162, v65, @".convolution");
    objc_msgSend_encodeObject_forKey_(a1, v164, v150, v163, v165, v166, v167, v168);
  }

  v169 = *(a2 + 16);
  objc_msgSend_encodeBool_forKey_(a1, v151, v169 != 0, v73, v152, v153, v154, v155);
  if (v169)
  {
    v175 = objc_alloc(MEMORY[0x277CCACA8]);
    v182 = objc_msgSend_initWithFormat_(v175, v176, @"%@%@", v177, v178, v179, v180, v181, v73, @".convolution");
    objc_msgSend_encodeObject_forKey_(a1, v183, v169, v182, v184, v185, v186, v187);
  }

  objc_msgSend_encodeBool_forKey_(a1, v170, *(a2 + 24), v202, v171, v172, v173, v174);
  objc_msgSend_encodeBool_forKey_(a1, v188, *(a2 + 25), v200, v189, v190, v191, v192);
  v198 = *(a2 + 26);

  return objc_msgSend_encodeBool_forKey_(a1, v193, v198, v95, v194, v195, v196, v197);
}

void sub_239BDB5F8(void *a1, uint64_t a2, int *a3)
{
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = objc_msgSend_initWithFormat_(v6, v7, @"%@%@", v8, v9, v10, v11, v12, a2, @"kMPSRNNLayer.neuron.neuronType");
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = objc_msgSend_initWithFormat_(v14, v15, @"%@%@", v16, v17, v18, v19, v20, a2, @"kMPSRNNLayer.neuron.neuronParamA");
  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  v29 = objc_msgSend_initWithFormat_(v22, v23, @"%@%@", v24, v25, v26, v27, v28, a2, @"kMPSRNNLayer.neuron.neuronParamB");
  v30 = objc_alloc(MEMORY[0x277CCACA8]);
  v63 = objc_msgSend_initWithFormat_(v30, v31, @"%@%@", v32, v33, v34, v35, v36, a2, @"kMPSRNNLayer.neuron.neuronParamC");
  objc_msgSend_encodeInt64_forKey_(a1, v37, *a3, v13, v38, v39, v40, v41);
  LODWORD(v42) = a3[1];
  objc_msgSend_encodeFloat_forKey_(a1, v43, v21, v44, v45, v46, v47, v48, v42);
  LODWORD(v49) = a3[2];
  objc_msgSend_encodeFloat_forKey_(a1, v50, v29, v51, v52, v53, v54, v55, v49);
  LODWORD(v56) = a3[3];
  objc_msgSend_encodeFloat_forKey_(a1, v57, v63, v58, v59, v60, v61, v62, v56);
}

void sub_239BDB72C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = objc_msgSend_initWithFormat_(v9, v10, @"%@%@", v11, v12, v13, v14, v15, a3, @".inputXForm");
  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v24 = objc_msgSend_initWithFormat_(v17, v18, @"%@%@", v19, v20, v21, v22, v23, a3, @".recurrentXForm");
  v25 = objc_alloc(MEMORY[0x277CCACA8]);
  v32 = objc_msgSend_initWithFormat_(v25, v26, @"%@%@", v27, v28, v29, v30, v31, a3, @".peepholeXForm");
  v33 = objc_alloc(MEMORY[0x277CCACA8]);
  v40 = objc_msgSend_initWithFormat_(v33, v34, @"%@%@", v35, v36, v37, v38, v39, a3, @".hasBias");
  v41 = objc_alloc(MEMORY[0x277CCACA8]);
  v153 = objc_msgSend_initWithFormat_(v41, v42, @"%@%@", v43, v44, v45, v46, v47, a3, @".biasVector");
  v48 = objc_alloc(MEMORY[0x277CCACA8]);
  v154 = objc_msgSend_initWithFormat_(v48, v49, @"%@%@", v50, v51, v52, v53, v54, a3, @".peepholeVector");
  v55 = objc_alloc(MEMORY[0x277CCACA8]);
  v62 = objc_msgSend_initWithFormat_(v55, v56, @"%@%@", v57, v58, v59, v60, v61, a3, @".nHiddenFeatures");
  objc_msgSend_encodeInt64_forKey_(a1, v63, a4, v62, v64, v65, v66, v67);
  objc_msgSend_encodeBool_forKey_(a1, v68, *(a2 + 64), v40, v69, v70, v71, v72);
  sub_239BDB5F8(a1, a3, (a2 + 40));
  v73 = *a2;
  objc_msgSend_encodeBool_forKey_(a1, v74, *a2 != 0, v16, v75, v76, v77, v78);
  if (v73)
  {
    v84 = objc_alloc(MEMORY[0x277CCACA8]);
    v91 = objc_msgSend_initWithFormat_(v84, v85, @"%@%@", v86, v87, v88, v89, v90, v16, @".convolution");
    objc_msgSend_encodeObject_forKey_(a1, v92, v73, v91, v93, v94, v95, v96);
  }

  if (a5)
  {
    objc_msgSend_encodeBool_forKey_(a1, v79, 0, v24, v80, v81, v82, v83);
  }

  else
  {
    v102 = *(a2 + 8);
    objc_msgSend_encodeBool_forKey_(a1, v79, v102 != 0, v24, v80, v81, v82, v83);
    if (v102)
    {
      v103 = objc_alloc(MEMORY[0x277CCACA8]);
      v110 = objc_msgSend_initWithFormat_(v103, v104, @"%@%@", v105, v106, v107, v108, v109, v24, @".convolution");
      objc_msgSend_encodeObject_forKey_(a1, v111, v102, v110, v112, v113, v114, v115);
    }
  }

  v116 = *(a2 + 16);
  objc_msgSend_encodeBool_forKey_(a1, v97, v116 != 0, v32, v98, v99, v100, v101);
  if (v116)
  {
    v124 = objc_alloc(MEMORY[0x277CCACA8]);
    v131 = objc_msgSend_initWithFormat_(v124, v125, @"%@%@", v126, v127, v128, v129, v130, v32, @".convolution");
    objc_msgSend_encodeObject_forKey_(a1, v132, v116, v131, v133, v134, v135, v136);
  }

  v137 = *(a2 + 32);
  if (v137)
  {
    v138 = objc_msgSend_contents(v137, v117, v118, v119, v120, v121, v122, v123);
    sub_239BCD9D8(a1, v138, v153, a4, v139, v140, v141, v142);
    v150 = *(a2 + 24);
    if (v150)
    {
LABEL_11:
      v151 = objc_msgSend_contents(v150, v143, v144, v145, v146, v147, v148, v149);
      goto LABEL_14;
    }
  }

  else
  {
    sub_239BCD9D8(a1, 0, v153, a4, v120, v121, v122, v123);
    v150 = *(a2 + 24);
    if (v150)
    {
      goto LABEL_11;
    }
  }

  v151 = 0;
LABEL_14:

  sub_239BCD9D8(a1, v151, v154, a4, v146, v147, v148, v149);
}

void *sub_239BDBA40(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = objc_msgSend_useFloat32Weights(a2, a2, a3, a4, a5, a6, a7, a8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = 0;
  *(a3 + 72) = objc_msgSend_useLayerInputUnitTransformMode(a2, v12, v13, v14, v15, v16, v17, v18);
  *(a3 + 64) = objc_msgSend_layerSequenceDirection(a2, v19, v20, v21, v22, v23, v24, v25);
  *(a3 + 32) = objc_msgSend_inputFeatureChannels(a2, v26, v27, v28, v29, v30, v31, v32);
  *(a3 + 40) = objc_msgSend_outputFeatureChannels(a2, v33, v34, v35, v36, v37, v38, v39);
  *(a3 + 48) = objc_msgSend_outputFeatureChannels(a2, v40, v41, v42, v43, v44, v45, v46);
  *(a3 + 80) = objc_msgSend_internalKernelSelector(a2, v47, v48, v49, v50, v51, v52, v53);
  *(a3 + 56) = objc_msgSend_outputFeatureChannels(a2, v54, v55, v56, v57, v58, v59, v60);
  *(a3 + 88) = 0;
  if (objc_msgSend_inputTransform(a2, v61, v62, v63, v64, v65, v66, v67))
  {
    v75 = objc_msgSend_inputTransform(a2, v68, v69, v70, v71, v72, v73, v74);
    if (v75 && (v76 = v75, objc_msgSend_load(v75, v68, v69, v70, v71, v72, v73, v74)))
    {
      v85 = 1;
      if (objc_msgSend_dataType(v76, v68, v69, v70, v71, v72, v73, v74) != 268435472)
      {
        v84 = objc_msgSend_dataType(v76, v77, v78, v79, v80, v81, v82, v83) == 268435488 ? v11 : 1;
        if (v84)
        {
          v85 = 0;
        }
      }

      v86 = sub_239BDBD50(a1, v76, 1, v11 ^ 1u, v85, 0, 0);
      v94 = objc_msgSend_biasTerms(v76, v87, v88, v89, v90, v91, v92, v93);
      objc_msgSend_purge(v76, v95, v96, v97, v98, v99, v100, v101);
      *a3 = v86;
      if (v86)
      {
        *(a3 + 32) = objc_msgSend_columns(v86, v68, v69, v70, v71, v72, v73, v74);
        *(a3 + 24) = v94 != 0;
      }
    }

    else
    {
      *a3 = 0;
    }
  }

  if (objc_msgSend_outputTransform(a2, v68, v69, v70, v71, v72, v73, v74))
  {
    v109 = objc_msgSend_outputTransform(a2, v102, v103, v104, v105, v106, v107, v108);
    if (v109 && (v110 = v109, objc_msgSend_load(v109, v102, v103, v104, v105, v106, v107, v108)))
    {
      v119 = 1;
      if (objc_msgSend_dataType(v110, v102, v103, v104, v105, v106, v107, v108) != 268435472)
      {
        v118 = objc_msgSend_dataType(v110, v111, v112, v113, v114, v115, v116, v117) == 268435488 ? v11 : 1;
        if (v118)
        {
          v119 = 0;
        }
      }

      v120 = sub_239BDBD50(a1, v110, 1, v11 ^ 1u, v119, 0, 0);
      v128 = objc_msgSend_biasTerms(v110, v121, v122, v123, v124, v125, v126, v127);
      objc_msgSend_purge(v110, v129, v130, v131, v132, v133, v134, v135);
      *(a3 + 8) = v120;
      if (v120)
      {
        v136 = objc_msgSend_columns(v120, v102, v103, v104, v105, v106, v107, v108);
        objc_msgSend_rows(*(a3 + 8), v137, v138, v139, v140, v141, v142, v143);
        *(a3 + 56) = v136;
        *(a3 + 25) = v128 != 0;
      }
    }

    else
    {
      *(a3 + 8) = 0;
    }
  }

  result = objc_msgSend_recurrentOutputTransform(a2, v102, v103, v104, v105, v106, v107, v108);
  if (result)
  {
    result = objc_msgSend_recurrentOutputTransform(a2, v145, v146, v147, v148, v149, v150, v151);
    if (result && (v159 = result, result = objc_msgSend_load(result, v152, v153, v154, v155, v156, v157, v158), result))
    {
      v175 = 1;
      if (objc_msgSend_dataType(v159, v160, v161, v162, v163, v164, v165, v166) != 268435472)
      {
        v174 = objc_msgSend_dataType(v159, v167, v168, v169, v170, v171, v172, v173) == 268435488 ? v11 : 1;
        if (v174)
        {
          v175 = 0;
        }
      }

      v176 = sub_239BDBD50(a1, v159, 1, v11 ^ 1u, v175, 0, 0);
      v184 = objc_msgSend_biasTerms(v159, v177, v178, v179, v180, v181, v182, v183);
      result = objc_msgSend_purge(v159, v185, v186, v187, v188, v189, v190, v191);
      *(a3 + 16) = v176;
      if (v176)
      {
        v199 = v176;
        v200 = v184 != 0;
        v201 = objc_msgSend_columns(v199, v192, v193, v194, v195, v196, v197, v198);
        result = objc_msgSend_rows(*(a3 + 16), v202, v203, v204, v205, v206, v207, v208);
        *(a3 + 56) = v201;
        *(a3 + 26) = v200;
      }
    }

    else
    {
      *(a3 + 16) = 0;
    }
  }

  return result;
}

void *sub_239BDBD50(void *a1, void *a2, int a3, int a4, int a5, void *a6, void *a7)
{
  MPSDevice = MPSDevice::GetMPSDevice();
  if (!MPSDevice)
  {
    return 0;
  }

  v27 = objc_msgSend_descriptor(a2, v13, v14, v15, v16, v17, v18, v19);
  if (a3)
  {
    v28 = objc_msgSend_biasTerms(a2, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    v28 = 0;
  }

  v30 = objc_msgSend_dataType(a2, v20, v21, v22, v23, v24, v25, v26);
  v38 = objc_msgSend_inputFeatureChannels(v27, v31, v32, v33, v34, v35, v36, v37);
  v46 = objc_msgSend_outputFeatureChannels(v27, v39, v40, v41, v42, v43, v44, v45);
  v54 = 0;
  v29 = 0;
  if (a5)
  {
    v55 = v46;
  }

  else
  {
    v55 = v38;
  }

  if (a5)
  {
    v56 = v38;
  }

  else
  {
    v56 = v46;
  }

  if (v30 > 268435487)
  {
    LODWORD(v57) = v30;
    if (v30 != 536870920)
    {
      if (v30 != 268435488)
      {
        return v29;
      }

      if (a4)
      {
        LODWORD(v57) = 268435472;
      }

      else
      {
        LODWORD(v57) = 268435488;
      }

      v54 = a4;
    }
  }

  else if (v30 == 8)
  {
    LODWORD(v57) = 8;
  }

  else
  {
    LODWORD(v57) = v30;
    if (v30 != 268435472)
    {
      return v29;
    }
  }

  v191 = v54;
  v188 = a6;
  v189 = a7;
  if (v30 == 8)
  {
    LODWORD(v57) = 536870920;
  }

  v184 = a5 & (v57 == 536870920);
  if (v184)
  {
    v57 = 268435472;
  }

  else
  {
    v57 = v57;
  }

  v58 = v57;
  v59 = v57 >> 3;
  v60 = 16;
  if (v59 == 2)
  {
    v60 = 8;
  }

  if (v59 == 4)
  {
    v60 = 4;
  }

  v186 = v56;
  v187 = v55;
  v192 = ((v55 + v60 - 1) & -v60) * v59;
  v61 = v192 * v56;
  v62 = 4 * v46;
  __src = v28;
  __n = 4 * v46;
  if (!v28)
  {
    v62 = 0;
  }

  v63 = v61 + v62;
  if ((v30 | 0x20000000) == 0x20000008)
  {
    v64 = v46;
    v65 = objc_msgSend_rangesForUInt8Kernel(a2, v47, v48, v49, v50, v51, v52, v53);
    v63 += 8 * v64;
  }

  else
  {
    v65 = 0;
    v64 = v46;
  }

  v66 = (*(*MPSDevice + 24))(MPSDevice);
  v72 = objc_msgSend_newBufferWithLength_options_(a1, v67, (v63 + 15) & 0xFFFFFFFFFFFFFFF0, 16 * v66, v68, v69, v70, v71);
  v80 = objc_msgSend_weights(a2, v73, v74, v75, v76, v77, v78, v79);
  v88 = objc_msgSend_contents(v72, v81, v82, v83, v84, v85, v86, v87);
  v89 = v58;
  sub_239BDC270(v80, v38 * (v30 >> 3), v30, v88, v192, v58, v38, v64, v90, v91, v92, v93, v94, v95, v96, v97, a5, (v191 | v184) & 1, v65);
  v105 = objc_msgSend_contents(v72, v98, v99, v100, v101, v102, v103, v104);
  v106 = v105 + v61;
  if (__src)
  {
    memcpy((v105 + v61), __src, __n);
    v106 += __n;
    v89 = v58;
  }

  if (v89 == 536870920 && v64)
  {
    if (v65)
    {
      v107 = (v106 + 4);
      v108 = v64;
      do
      {
        v109 = *v65++;
        v110 = (*(&v109 + 1) - *&v109) * 0.00392156863;
        v111 = *&v109 + v110 * 128.0;
        *&v110 = v110;
        *&v111 = v111;
        *(v107 - 1) = LODWORD(v110);
        *v107 = LODWORD(v111);
        v107 += 2;
        --v108;
      }

      while (v108);
    }

    else
    {
      if (v64 >= 0x14 && ((v112 = 8 * (v64 - 1), v113 = v106 + v112, v114 = v106 + 4 + v112, v113 >= v106) ? (v115 = v114 >= v106 + 4) : (v115 = 0), v115 ? (v116 = (v64 - 1) >> 61 == 0) : (v116 = 0), v116))
      {
        v117 = v64 & 0x3FFFFFFFFFFFFFF8;
        v182 = (v106 + 32);
        v183 = v64 & 0x3FFFFFFFFFFFFFF8;
        do
        {
          *(v182 - 2) = xmmword_239D7D520;
          *(v182 - 1) = xmmword_239D7D520;
          *v182 = xmmword_239D7D520;
          v182[1] = xmmword_239D7D520;
          v182 += 4;
          v183 -= 8;
        }

        while (v183);
        if (v64 == v117)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v117 = 0;
      }

      v118 = (v106 + 8 * v117);
      v119 = v64 - v117;
      do
      {
        *v118++ = 0x3220A0A13D214285;
        --v119;
      }

      while (v119);
    }
  }

LABEL_56:
  v120 = objc_autoreleasePoolPush();
  v124 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v121, v186, v187, v192, v89, v122, v123);
  v125 = objc_alloc(MEMORY[0x277CD7250]);
  v29 = objc_msgSend_initWithBuffer_descriptor_(v125, v126, v72, v124, v127, v128, v129, v130);

  if (v188)
  {
    if (!v189 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_addObject_(v188, v131, v29, v132, v133, v134, v135, v136);
    objc_msgSend_addObject_(v189, v137, v124, v138, v139, v140, v141, v142);

    if (__src)
    {
      v143 = (*(*MPSDevice + 24))(MPSDevice);
      v149 = objc_msgSend_newBufferWithLength_options_(a1, v144, (__n + 12) & 0xFFFFFFFFFFFFFFF0, 16 * v143, v145, v146, v147, v148);
      v153 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v150, 1, v64, (__n + 12) & 0xFFFFFFFFFFFFFFF0, 268435488, v151, v152);
      v154 = objc_alloc(MEMORY[0x277CD7250]);
      v160 = objc_msgSend_initWithBuffer_descriptor_(v154, v155, v149, v153, v156, v157, v158, v159);
      v168 = objc_msgSend_contents(v149, v161, v162, v163, v164, v165, v166, v167);
      memcpy(v168, __src, __n);

      objc_msgSend_addObject_(v188, v169, v160, v170, v171, v172, v173, v174);
      objc_msgSend_addObject_(v189, v175, v153, v176, v177, v178, v179, v180);
    }

    v29 = 0;
  }

  objc_autoreleasePoolPop(v120);
  return v29;
}

void sub_239BDC270(int8x16_t *__src, uint64_t a2, int a3, char *__dst, uint64_t a5, int a6, unint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, float64x2_t _Q6, int8x16_t a16, unsigned __int8 a17, char a18, uint64_t a19)
{
  v19 = a8;
  v22 = __dst;
  v24 = __src;
  if (!a18)
  {
    if (a3 == 8)
    {
      if (!a8)
      {
        return;
      }

      if (((__src | a7) & 3) != 0)
      {
        v140 = 1;
      }

      else
      {
        v140 = a17;
      }

      if (a17)
      {
        v141 = 0;
        if (a7 < 0x10)
        {
          LOBYTE(v140) = 1;
        }

        v143 = a7 < 8 || a5 != 1;
        v144 = a7 & 0xFFFFFFFFFFFFFFE0;
        v145 = a7 & 0xFFFFFFFFFFFFFFF8;
        v146 = (__dst + 16);
        v147.i64[0] = 0x8080808080808080;
        v147.i64[1] = 0x8080808080808080;
        v148 = __dst;
        v149 = __dst;
        while ((v140 & 1) != 0)
        {
          v150 = (v24 + v141 * a7);
          if (a7)
          {
            goto LABEL_93;
          }

LABEL_86:
          ++v141;
          __src = (__src + a7);
          v149 += a5;
          v146 = (v146 + 1);
          ++v148;
          if (v141 == a8)
          {
            return;
          }
        }

        v151 = 0;
        do
        {
          *&v149[v151] = veorq_s8(__src[v151 / 0x10], v147);
          v152 = v151 + 16;
          v153 = v151 + 32;
          v151 += 16;
        }

        while (v153 <= a7);
        v150 = (__src + v152);
        if (!a7)
        {
          goto LABEL_86;
        }

LABEL_93:
        v154 = (&v22[v141] - v150) < 0x20 || v143;
        if (v154)
        {
          v155 = 0;
          v156 = v150;
          goto LABEL_109;
        }

        if (a7 >= 0x20)
        {
          v158 = v150 + 1;
          v159 = a7 & 0xFFFFFFFFFFFFFFE0;
          v160 = v146;
          do
          {
            v161 = veorq_s8(*v158, v147);
            v160[-1] = veorq_s8(v158[-1], v147);
            *v160 = v161;
            v160 += 2;
            v158 += 2;
            v159 -= 32;
          }

          while (v159);
          if (v144 == a7)
          {
            goto LABEL_86;
          }

          v157 = a7 & 0xFFFFFFFFFFFFFFE0;
          if ((a7 & 0x18) == 0)
          {
            v156 = &v150->i8[v144];
            v155 = a7 & 0xFFFFFFFFFFFFFFE0;
LABEL_109:
            v166 = a7 - v155;
            v167 = a5 * v155;
            do
            {
              v168 = *v156++;
              v148[v167] = v168 ^ 0x80;
              v167 += a5;
              --v166;
            }

            while (v166);
            goto LABEL_86;
          }
        }

        else
        {
          v157 = 0;
        }

        v156 = &v150->i8[v145];
        v162 = &v148[v157];
        v163 = &v150->i8[v157];
        v164 = v157 - (a7 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v165 = *v163++;
          *v162++ = veor_s8(v165, 0x8080808080808080);
          v164 += 8;
        }

        while (v164);
        v155 = a7 & 0xFFFFFFFFFFFFFFF8;
        if (v145 == a7)
        {
          goto LABEL_86;
        }

        goto LABEL_109;
      }

      if (!v140)
      {
        if (a7 >= 0x10)
        {
          v241 = 0;
          v242 = a7 & 0xFFFFFFFFFFFFFFF0;
          v243 = __dst - __src;
          v244 = a7 & 0xF;
          v245 = v244 - (a7 & 7);
          v246 = &__src->i8[v245];
          v247 = &__dst[v245];
          v248 = (__dst + 16);
          v249 = &v24[1];
          v250.i64[0] = 0x8080808080808080;
          v250.i64[1] = 0x8080808080808080;
          do
          {
            v251 = v249;
            v252 = v248;
            for (i = 16; i <= a7; i += 16)
            {
              v254 = v252;
              v255 = v251;
              *&v22[i - 16] = veorq_s8(v24[i / 0x10 - 1], v250);
              v252 += 2;
              v251 += 2;
            }

            if (v242 != a7)
            {
              i8 = v24[i / 0x10 - 1].i8;
              v257 = &v22[i - 16];
              v258 = a7 & 0xFFFFFFFFFFFFFFF0;
              if (v244 < 8)
              {
                goto LABEL_223;
              }

              if (v243 + (a5 - a7) * v241 < 0x20)
              {
                goto LABEL_223;
              }

              i8 = &v246[i - 16];
              v257 = &v247[i - 16];
              v259 = (a7 & 0xF) - (a7 & 7);
              do
              {
                v260 = *v255++;
                *v254++ = veor_s8(v260, 0x8080808080808080);
                v259 -= 8;
              }

              while (v259);
              v258 = (a7 & 0xFFFFFFFFFFFFFFF0) + v245;
              if ((a7 & 7) != 0)
              {
LABEL_223:
                v261 = a7 - v258;
                do
                {
                  v262 = *i8++;
                  *v257++ = v262 ^ 0x80;
                  --v261;
                }

                while (v261);
              }
            }

            ++v241;
            v24 = (v24 + a7);
            v246 += a7;
            v22 += a5;
            v247 += a5;
            v248 = (v248 + a5);
            v249 = (v249 + a7);
          }

          while (v241 != a8);
        }

        else if (a7)
        {
          for (j = 0; j != a8; ++j)
          {
            v237 = &__src->i8[j * a7];
            v238 = a7;
            v239 = &__dst[j * a5];
            do
            {
              v240 = *v237++;
              *v239++ = v240 ^ 0x80;
              --v238;
            }

            while (v238);
          }
        }

        return;
      }

      if (!a7)
      {
        return;
      }

      v209 = 0;
      v212 = &__src->i8[a8 * a7] > __dst && &__dst[(a8 - 1) * a5 + a7] > __src || ((a5 | a7) & 0x8000000000000000) != 0;
      v213 = a7 & 0xFFFFFFFFFFFFFFE0;
      v214 = a7 & 0xFFFFFFFFFFFFFFF8;
      v215 = (__dst + 16);
      v216 = __src + 1;
      v217.i64[0] = 0x8080808080808080;
      v217.i64[1] = 0x8080808080808080;
      v218 = __src;
      v219 = __dst;
      while (1)
      {
        v220 = &v24->i8[v209 * a7];
        v221 = &v22[v209 * a5];
        v222 = a7 < 8 || v212;
        if (v222)
        {
          v223 = 0;
        }

        else
        {
          if (a7 < 0x20)
          {
            v224 = 0;
LABEL_195:
            v220 += v214;
            v221 += v214;
            v229 = &v219[v224];
            v230 = &v218->i8[v224];
            v231 = v224 - (a7 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v232 = *v230++;
              *v229++ = veor_s8(v232, 0x8080808080808080);
              v231 += 8;
            }

            while (v231);
            v223 = a7 & 0xFFFFFFFFFFFFFFF8;
            if (v214 == a7)
            {
              goto LABEL_183;
            }

            goto LABEL_200;
          }

          v225 = a7 & 0xFFFFFFFFFFFFFFE0;
          v226 = v216;
          v227 = v215;
          do
          {
            v228 = veorq_s8(*v226, v217);
            v227[-1] = veorq_s8(v226[-1], v217);
            *v227 = v228;
            v227 += 2;
            v226 += 2;
            v225 -= 32;
          }

          while (v225);
          if (v213 == a7)
          {
            goto LABEL_183;
          }

          v224 = a7 & 0xFFFFFFFFFFFFFFE0;
          if ((a7 & 0x18) != 0)
          {
            goto LABEL_195;
          }

          v221 += v213;
          v220 += v213;
          v223 = a7 & 0xFFFFFFFFFFFFFFE0;
        }

LABEL_200:
        v233 = a7 - v223;
        do
        {
          v234 = *v220++;
          *v221++ = v234 ^ 0x80;
          --v233;
        }

        while (v233);
LABEL_183:
        ++v209;
        v215 = (v215 + a5);
        v216 = (v216 + a7);
        v219 += a5;
        v218 = (v218 + a7);
        if (v209 == a8)
        {
          return;
        }
      }
    }

    if (!a8)
    {
      return;
    }

    if ((a17 & 1) == 0)
    {
      v235 = (a3 >> 3) * a7;
      do
      {
        memcpy(v22, v24, v235);
        v24 = (v24 + a2);
        v22 += a5;
        --v19;
      }

      while (v19);
      return;
    }

    v169 = 0;
    v171 = a7 > 7 && a5 == 1;
    v174 = &__src->i8[a8 * a7] > __dst && &__dst[a8 - 1 + a7] > __src || (a7 & 0x8000000000000000) != 0;
    v175 = a7 & 0x7FFFFFFFFFFFFFE0;
    v176 = a7 & 0x7FFFFFFFFFFFFFF8;
    v177 = v22 + 16;
    v178 = __src + 1;
    v179 = !v171 || v174;
    v180 = v22;
    v181 = __src;
    v182 = __src;
    v183 = v22;
    while (1)
    {
      if (a6 == 268435472)
      {
        v189 = v180;
        v190 = v181;
        for (k = a7; k; --k)
        {
          v192 = v190->i16[0];
          v190 = (v190 + 2);
          *v189 = v192;
          v189 = (v189 + a5);
        }

        goto LABEL_130;
      }

      if (a6 == 268435488)
      {
        v185 = v22;
        v186 = v24;
        for (m = a7; m; --m)
        {
          v188 = v186->i32[0];
          v186 = (v186 + 4);
          *v185 = v188;
          v185 = (v185 + a5);
        }

        goto LABEL_130;
      }

      if (a6 == 536870920 && a7)
      {
        break;
      }

LABEL_130:
      ++v169;
      v177 = (v177 + 1);
      v178 = (v178 + a7);
      ++v183;
      v182 = (v182 + a7);
      v181 = (v181 + 2 * a7);
      ++v180;
      v24 = (v24 + 4 * a7);
      v22 += 4;
      if (v169 == v19)
      {
        return;
      }
    }

    if (v179)
    {
      v184 = 0;
LABEL_152:
      v202 = a5 * v184;
      do
      {
        v183[v202] = v182->i8[v184++];
        v202 += a5;
      }

      while (a7 != v184);
      goto LABEL_130;
    }

    if (a7 >= 0x20)
    {
      v194 = a7 & 0x7FFFFFFFFFFFFFE0;
      v195 = v178;
      v196 = v177;
      do
      {
        v197 = *v195;
        v196[-1] = v195[-1];
        *v196 = v197;
        v196 += 2;
        v195 += 2;
        v194 -= 32;
      }

      while (v194);
      if (v175 == a7)
      {
        goto LABEL_130;
      }

      v193 = a7 & 0x7FFFFFFFFFFFFFE0;
      v184 = a7 & 0x7FFFFFFFFFFFFFE0;
      if ((a7 & 0x18) == 0)
      {
        goto LABEL_152;
      }
    }

    else
    {
      v193 = 0;
    }

    v198 = &v183[v193];
    v199 = (v182->i64 + v193);
    v200 = v193 - (a7 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      v201 = *v199++;
      *v198 = v201;
      v198 += 8;
      v200 += 8;
    }

    while (v200);
    v184 = a7 & 0x7FFFFFFFFFFFFFF8;
    if (v176 == a7)
    {
      goto LABEL_130;
    }

    goto LABEL_152;
  }

  if ((a3 | 0x20000000) != 0x20000008)
  {
    if ((a17 & 1) == 0)
    {
      if (a8)
      {
        do
        {
          MPSConvertFloatToHalf();
          v22 += a5;
          v24 = (v24 + a2);
          --v19;
        }

        while (v19);
      }

      return;
    }

    v203 = malloc_type_malloc((2 * a7 + 6) & 0xFFFFFFFFFFFFFFF8, 0x1000040BDFB0063uLL);
    if (v19)
    {
      if (a7)
      {
        for (n = 0; n != v19; ++n)
        {
          MPSConvertFloatToHalf();
          v205 = v22;
          v206 = v203;
          v207 = a7;
          do
          {
            v208 = *v206++;
            *v205 = v208;
            v205 = (v205 + a5);
            --v207;
          }

          while (v207);
          v22 += 2;
        }

LABEL_165:

        free(v203);
        return;
      }

      do
      {
        MPSConvertFloatToHalf();
        v24 = (v24 + a2);
        --v19;
      }

      while (v19);
    }

    if (!v203)
    {
      return;
    }

    goto LABEL_165;
  }

  if (a8)
  {
    v25 = 0;
    v26 = &__dst[2 * a7 + (a8 - 1) * a5];
    v27 = a7 & 0xF;
    if ((a7 & 0xF) == 0)
    {
      v27 = 16;
    }

    if ((a7 & 7) != 0)
    {
      v28 = a7 & 7;
    }

    else
    {
      v28 = 8;
    }

    v29 = a7 - v28;
    v30 = v26 > __src;
    v31 = v26 > __src && &__src->i8[a7 - 1 + a8 * a7] > __dst;
    v32 = a5 | a7;
    v33 = v30 && &__src->i8[a8 * a7] > __dst;
    _NF = v32 < 0;
    if (v32 < 0)
    {
      v31 = 1;
    }

    v263 = 2 * (a7 - v27);
    v35 = 2 * v29;
    if (_NF)
    {
      v33 = 1;
    }

    v36 = a7 & 0xFFFFFFFFFFFFFFF0;
    v37 = a7 & 0xFFFFFFFFFFFFFFFCLL;
    v264 = v28 - a7;
    v38 = vdupq_n_s64(0x4060000000000000uLL);
    v39 = __dst;
    v40 = v24;
    v41 = __dst;
    while (1)
    {
      v42 = xmmword_239D7D530;
      if (a19)
      {
        v42 = vcvtq_f64_f32(*(a19 + 8 * v25));
      }

      v43 = 0.00392156863 * vsubq_f64(vdupq_laneq_s64(v42, 1), v42).f64[0];
      if (a17)
      {
        if (a7)
        {
          if (a3 == 536870920)
          {
            v44 = 0;
            v45 = v39;
            do
            {
              a16.i32[1] = 1080033280;
              _Q6.f64[0] = v42.f64[0] + v43 * (v40[v44] + 128.0);
              __asm { FCVT            H6, D6 }

              *v45 = LOWORD(_Q6.f64[0]);
              ++v44;
              v45 = (v45 + a5);
            }

            while (a7 != v44);
          }

          else
          {
            v52 = 0;
            v53 = v39;
            do
            {
              LOBYTE(_Q6.f64[0]) = v40[v52];
              _Q6.f64[0] = v42.f64[0] + v43 * *&_Q6.f64[0];
              __asm { FCVT            H6, D6 }

              *v53 = LOWORD(_Q6.f64[0]);
              ++v52;
              v53 = (v53 + a5);
            }

            while (a7 != v52);
          }
        }

        goto LABEL_21;
      }

      if (a7)
      {
        break;
      }

LABEL_21:
      ++v25;
      v41 += a5;
      v40 += a7;
      v39 += 2;
      if (v25 == v19)
      {
        return;
      }
    }

    v48 = &v24->i8[v25 * a7];
    v49 = &__dst[v25 * a5];
    if (a3 != 536870920)
    {
      v54 = a7 < 9 || v31;
      if (v54)
      {
        v55 = 0;
        goto LABEL_64;
      }

      v57 = vdupq_lane_s64(*&v42.f64[0], 0);
      if (a7 >= 0x11)
      {
        v91 = a7 - v27;
        v92 = v40;
        v93 = v41;
        do
        {
          v94 = vld2q_s8(v92);
          v92 += 32;
          v95 = vextq_s8(v94, v94, 8uLL).u64[0];
          v96.i32[0] = BYTE2(v95);
          v97.i32[0] = v95;
          v96.i32[1] = BYTE3(v95);
          v97.i32[1] = BYTE1(v95);
          v98.i32[0] = BYTE6(v95);
          v98.i32[1] = HIBYTE(v95);
          v99 = vand_s8(v96, 0xFF000000FFLL);
          v100.i32[0] = BYTE4(v95);
          v101 = BYTE5(v95);
          v102 = vand_s8(v97, 0xFF000000FFLL);
          v103 = vand_s8(v98, 0xFF000000FFLL);
          v100.i32[1] = v101;
          v104.i64[0] = v99.u32[0];
          v104.i64[1] = v99.u32[1];
          v105 = v104;
          v98.i32[0] = BYTE2(v94);
          v98.i32[1] = BYTE3(v94);
          v104.i64[0] = v102.u32[0];
          v104.i64[1] = v102.u32[1];
          v106 = v104;
          v107 = vand_s8(v100, 0xFF000000FFLL);
          v108 = vand_s8(v98, 0xFF000000FFLL);
          v104.i64[0] = v108.u32[0];
          v104.i64[1] = v108.u32[1];
          v109 = v104;
          v104.i64[0] = v103.u32[0];
          v104.i64[1] = v103.u32[1];
          v110 = v104;
          v111.i32[0] = v94;
          v111.i32[1] = BYTE1(v94);
          v104.i64[0] = v107.u32[0];
          v104.i64[1] = v107.u32[1];
          v112 = v104;
          v113 = vand_s8(v111, 0xFF000000FFLL);
          v104.i64[0] = v113.u32[0];
          v104.i64[1] = v113.u32[1];
          v114.i32[0] = BYTE6(v94);
          v114.i32[1] = BYTE7(v94);
          v115 = vcvtq_f64_u64(v104);
          v116 = vand_s8(v114, 0xFF000000FFLL);
          v104.i64[0] = v116.u32[0];
          v104.i64[1] = v116.u32[1];
          v117.i32[0] = BYTE4(v94);
          v117.i32[1] = BYTE5(v94);
          v118 = vcvtq_f64_u64(v112);
          v119 = vcvtq_f64_u64(v104);
          *v112.i8 = vand_s8(v117, 0xFF000000FFLL);
          v104.i64[0] = v112.u32[0];
          v104.i64[1] = v112.u32[1];
          a16 = vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(vmlaq_n_f64(v57, vcvtq_f64_u64(v106), v43)), vmlaq_n_f64(v57, vcvtq_f64_u64(v105), v43))), vcvtx_hight_f32_f64(vcvtx_f32_f64(vmlaq_n_f64(v57, v118, v43)), vmlaq_n_f64(v57, vcvtq_f64_u64(v110), v43)));
          *v93 = vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(vmlaq_n_f64(v57, v115, v43)), vmlaq_n_f64(v57, vcvtq_f64_u64(v109), v43))), vcvtx_hight_f32_f64(vcvtx_f32_f64(vmlaq_n_f64(v57, vcvtq_f64_u64(v104), v43)), vmlaq_n_f64(v57, v119, v43)));
          v93[1] = a16;
          v93 += 2;
          v91 -= 16;
        }

        while (v91);
        v58 = a7 - v27;
        v19 = a8;
        if (v27 <= 8)
        {
          v49 += v263;
          v48 += v263;
          v55 = a7 - v27;
LABEL_64:
          v136 = a7 - v55;
          do
          {
            v137 = *v48;
            v48 += 2;
            _Q6.f64[0] = v42.f64[0] + v43 * v137;
            __asm { FCVT            H6, D6 }

            *v49 = LOWORD(_Q6.f64[0]);
            v49 += 2;
            --v136;
          }

          while (v136);
          goto LABEL_21;
        }
      }

      else
      {
        v58 = 0;
      }

      v48 += v35;
      v49 += v35;
      v120 = 2 * v58;
      v121 = v264 + v58;
      do
      {
        v122 = &v40[v120];
        v123 = *vld2_s8(v122).val;
        v124.i32[0] = BYTE2(v123);
        v124.i32[1] = BYTE3(v123);
        v125 = vand_s8(v124, 0xFF000000FFLL);
        v126.i64[0] = v125.u32[0];
        v126.i64[1] = v125.u32[1];
        v127.i32[0] = v123;
        v127.i32[1] = BYTE1(v123);
        v128 = vcvtq_f64_u64(v126);
        v129 = vand_s8(v127, 0xFF000000FFLL);
        v126.i64[0] = v129.u32[0];
        v126.i64[1] = v129.u32[1];
        v130 = vcvtq_f64_u64(v126);
        v131.i32[0] = BYTE6(v123);
        v131.i32[1] = HIBYTE(v123);
        v132 = vand_s8(v131, 0xFF000000FFLL);
        v126.i64[0] = v132.u32[0];
        v126.i64[1] = v132.u32[1];
        v133.i32[0] = BYTE4(v123);
        LODWORD(v122) = BYTE5(v123);
        v134 = vcvtq_f64_u64(v126);
        v133.i32[1] = v122;
        v135 = vand_s8(v133, 0xFF000000FFLL);
        v126.i64[0] = v135.u32[0];
        v126.i64[1] = v135.u32[1];
        a16 = vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(vmlaq_n_f64(v57, v130, v43)), vmlaq_n_f64(v57, v128, v43))), vcvtx_hight_f32_f64(vcvtx_f32_f64(vmlaq_n_f64(v57, vcvtq_f64_u64(v126), v43)), vmlaq_n_f64(v57, v134, v43)));
        *&v41[v120] = a16;
        v120 += 16;
        v121 += 8;
      }

      while (v121);
      v55 = v29;
      goto LABEL_64;
    }

    v50 = a7 < 4 || v33;
    if (v50)
    {
      v51 = 0;
      goto LABEL_68;
    }

    if (a7 >= 0x10)
    {
      v59 = 0;
      _Q6 = vdupq_lane_s64(*&v42.f64[0], 0);
      v60 = v41;
      do
      {
        v61 = *&v40[v59];
        v62 = vextq_s8(v61, v61, 8uLL).u64[0];
        v63.i32[0] = BYTE4(v62);
        v63.i32[1] = BYTE5(v62);
        v64.i32[0] = BYTE6(v62);
        v64.i32[1] = HIBYTE(v62);
        v65.i32[0] = v62;
        v65.i32[1] = BYTE1(v62);
        v66 = vshr_n_s32(vshl_n_s32(v63, 0x18uLL), 0x18uLL);
        v67.i32[0] = BYTE2(v62);
        v67.i32[1] = BYTE3(v62);
        v68 = vshr_n_s32(vshl_n_s32(v64, 0x18uLL), 0x18uLL);
        v69 = vshr_n_s32(vshl_n_s32(v65, 0x18uLL), 0x18uLL);
        v70 = vshr_n_s32(vshl_n_s32(v67, 0x18uLL), 0x18uLL);
        v71.i64[0] = v66.i32[0];
        v71.i64[1] = v66.i32[1];
        v72 = v71;
        v67.i32[0] = v61.u8[4];
        v67.i32[1] = v61.u8[5];
        v71.i64[0] = v68.i32[0];
        v71.i64[1] = v68.i32[1];
        v73 = v71;
        v74 = vshr_n_s32(vshl_n_s32(v67, 0x18uLL), 0x18uLL);
        v71.i64[0] = v74.i32[0];
        v71.i64[1] = v74.i32[1];
        v75 = v71;
        v71.i64[0] = v69.i32[0];
        v71.i64[1] = v69.i32[1];
        v76 = v71;
        v77.i32[0] = v61.u8[6];
        v77.i32[1] = v61.u8[7];
        v71.i64[0] = v70.i32[0];
        v71.i64[1] = v70.i32[1];
        v78 = v71;
        v79 = vshr_n_s32(vshl_n_s32(v77, 0x18uLL), 0x18uLL);
        v71.i64[0] = v79.i32[0];
        v71.i64[1] = v79.i32[1];
        v80.i32[0] = v61.u8[0];
        v80.i32[1] = v61.u8[1];
        v81 = vcvtq_f64_s64(v71);
        v82 = vshr_n_s32(vshl_n_s32(v80, 0x18uLL), 0x18uLL);
        v71.i64[0] = v82.i32[0];
        v71.i64[1] = v82.i32[1];
        v83 = vcvtq_f64_s64(v71);
        v84.i32[0] = v61.u8[2];
        v85 = v61.u8[3];
        v86 = vcvtq_f64_s64(v76);
        v84.i32[1] = v85;
        *v76.i8 = vshr_n_s32(vshl_n_s32(v84, 0x18uLL), 0x18uLL);
        v71.i64[0] = v76.i32[0];
        v71.i64[1] = v76.i32[1];
        a16 = vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(vmlaq_n_f64(_Q6, vaddq_f64(v86, v38), v43)), vmlaq_n_f64(_Q6, vaddq_f64(vcvtq_f64_s64(v78), v38), v43))), vcvtx_hight_f32_f64(vcvtx_f32_f64(vmlaq_n_f64(_Q6, vaddq_f64(vcvtq_f64_s64(v72), v38), v43)), vmlaq_n_f64(_Q6, vaddq_f64(vcvtq_f64_s64(v73), v38), v43)));
        *v60 = vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(vmlaq_n_f64(_Q6, vaddq_f64(v83, v38), v43)), vmlaq_n_f64(_Q6, vaddq_f64(vcvtq_f64_s64(v71), v38), v43))), vcvtx_hight_f32_f64(vcvtx_f32_f64(vmlaq_n_f64(_Q6, vaddq_f64(vcvtq_f64_s64(v75), v38), v43)), vmlaq_n_f64(_Q6, vaddq_f64(v81, v38), v43)));
        v60[1] = a16;
        v60 += 2;
        v59 += 16;
      }

      while (v36 != v59);
      v19 = a8;
      if (v36 == a7)
      {
        goto LABEL_21;
      }

      v56 = a7 & 0xFFFFFFFFFFFFFFF0;
      if ((a7 & 0xC) == 0)
      {
        v49 += 2 * (a7 & 0xFFFFFFFFFFFFFFF0);
        v48 += v36;
        v51 = a7 & 0xFFFFFFFFFFFFFFF0;
LABEL_68:
        v138 = a7 - v51;
        do
        {
          v139 = *v48++;
          a16.i32[1] = 1080033280;
          _Q6.f64[0] = v42.f64[0] + v43 * (v139 + 128.0);
          __asm { FCVT            H6, D6 }

          *v49 = LOWORD(_Q6.f64[0]);
          v49 += 2;
          --v138;
        }

        while (v138);
        goto LABEL_21;
      }
    }

    else
    {
      v56 = 0;
    }

    v48 += v37;
    v49 += 2 * (a7 & 0xFFFFFFFFFFFFFFFCLL);
    _Q6 = vdupq_lane_s64(*&v42.f64[0], 0);
    v87 = 2 * v56;
    do
    {
      a16.i32[0] = *&v40[v56];
      a16 = vmovl_u16(*&vmovl_u8(*a16.i8));
      v88 = vshr_n_s32(vshl_n_s32(*a16.i8, 0x18uLL), 0x18uLL);
      v89.i64[0] = v88.i32[0];
      v89.i64[1] = v88.i32[1];
      v90 = vcvtq_f64_s64(v89);
      *a16.i8 = vshr_n_s32(vshl_n_s32(*&vextq_s8(a16, a16, 8uLL), 0x18uLL), 0x18uLL);
      v89.i64[0] = a16.i32[0];
      v89.i64[1] = a16.i32[1];
      *a16.i8 = vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(vmlaq_n_f64(_Q6, vaddq_f64(v90, v38), v43)), vmlaq_n_f64(_Q6, vaddq_f64(vcvtq_f64_s64(v89), v38), v43)));
      *&v41[v87] = a16.i64[0];
      v56 += 4;
      v87 += 8;
    }

    while (v37 != v56);
    v51 = a7 & 0xFFFFFFFFFFFFFFFCLL;
    if (v37 == a7)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }
}

uint64_t sub_239BDD0FC(uint64_t result, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, void *a11, void *a12, uint64_t a13)
{
  v16 = a3;
  v17 = a2;
  v18 = result;
  *(result + 16) = 0;
  *(result + 24) = 0;
  v19 = (result + 16);
  *(result + 32) = 0;
  if (a7)
  {
    v20 = a13;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(result + 8) = 0;
    v21 = a11;
    v22 = a12;
    if (!a4)
    {
      goto LABEL_44;
    }

    goto LABEL_7;
  }

  *result = 0;
  *(result + 64) = 0;
  v20 = a13;
  if ((a8 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v21 = a11;
  v22 = a12;
  if (!a4)
  {
    goto LABEL_44;
  }

LABEL_7:
  if ((a7 & 1) == 0)
  {
    v381 = a8;
    result = objc_msgSend_load(a4, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    v385 = v17;
    v30 = objc_msgSend_descriptor(a4, v23, v24, v25, v26, v27, v28, v29);
    v38 = v30;
    if (v30)
    {
      objc_msgSend_neuronInfo(v30, v31, v32, v33, v34, v35, v36, v37);
    }

    else
    {
      v387 = 0uLL;
      v388 = 0;
    }

    v383 = v22;
    *(v18 + 40) = v387;
    *(v18 + 56) = v388;
    v379 = v16;
    if (objc_msgSend_useLayerInputUnitTransformMode(v16, v31, v32, v33, v34, v35, v36, v37))
    {
      v376 = v20;
      v46 = objc_msgSend_biasTerms(a4, v39, v40, v41, v42, v43, v44, v45);
      v54 = objc_msgSend_outputFeatureChannels(v38, v47, v48, v49, v50, v51, v52, v53);
      MPSDevice = MPSDevice::GetMPSDevice();
      v63 = 0;
      if (v46)
      {
        if (MPSDevice)
        {
          v64 = 4 * v54;
          v65 = (*(*MPSDevice + 24))(MPSDevice);
          v71 = objc_msgSend_newBufferWithLength_options_(v385, v66, (v64 + 12) & 0x3FFFFFFF0, 16 * v65, v67, v68, v69, v70);
          v63 = v71;
          if (v71)
          {
            v72 = objc_msgSend_contents(v71, v56, v57, v58, v59, v60, v61, v62);
            memcpy(v72, v46, v64);
          }
        }
      }

      *(v18 + 32) = v63;
      *(v18 + 64) = 1;
      v20 = v376;
      v16 = v379;
      if (v21)
      {
        if (v383)
        {
          v73 = MEMORY[0x277CD7258];
          v74 = objc_msgSend_outputFeatureChannels(v38, v56, v57, v58, v59, v60, v61, v62);
          v82 = objc_msgSend_length(*(v18 + 32), v75, v76, v77, v78, v79, v80, v81);
          v86 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v73, v83, 1, v74, v82, 268435488, v84, v85);
          v87 = objc_alloc(MEMORY[0x277CD7250]);
          v93 = objc_msgSend_initWithBuffer_descriptor_(v87, v88, *(v18 + 32), v86, v89, v90, v91, v92);

          *(v18 + 32) = 0;
          objc_msgSend_addObject_(v21, v94, v93, v95, v96, v97, v98, v99);
          v100 = v86;
          v16 = v379;
          objc_msgSend_addObject_(v383, v101, v100, v102, v103, v104, v105, v106);

          v20 = v376;
          if (v376)
          {
            v107 = objc_msgSend_count(v21, v56, v57, v58, v59, v60, v61, v62) - 1;
            *(v376 + 48) = 268435488;
            *(v376 + 56) = v107;
          }
        }
      }

LABEL_43:
      result = objc_msgSend_purge(a4, v56, v57, v58, v59, v60, v61, v62);
      a8 = v381;
      v22 = v383;
      v17 = v385;
      goto LABEL_44;
    }

    v108 = objc_autoreleasePoolPush();
    if (objc_msgSend_dataType(a4, v109, v110, v111, v112, v113, v114, v115) == 268435472 || objc_msgSend_dataType(a4, v116, v117, v118, v119, v120, v121, v122) == 536870920 || objc_msgSend_dataType(a4, v123, v124, v125, v126, v127, v128, v129) == 8 || (v137 = objc_msgSend_dataType(a4, v130, v131, v132, v133, v134, v135, v136), v138 = 0, v137 == 268435488) && a10)
    {
      v138 = 1;
    }

    *v18 = sub_239BDBD50(v385, a4, 1, a10, v138, v21, v22);
    if (v21)
    {
      if (objc_msgSend_count(v21, v139, v140, v141, v142, v143, v144, v145))
      {
        v153 = objc_msgSend_count(v21, v146, v147, v148, v149, v150, v151, v152) - 1;
        if (!objc_msgSend_biasTerms(a4, v154, v155, v156, v157, v158, v159, v160))
        {
          goto LABEL_39;
        }
      }

      else
      {
        v153 = 0;
        if (!objc_msgSend_biasTerms(a4, v146, v147, v148, v149, v150, v151, v152))
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v153 = 0;
      if (!objc_msgSend_biasTerms(a4, v139, v140, v141, v142, v143, v144, v145))
      {
LABEL_39:
        if (v21 && v20)
        {
          v175 = objc_msgSend_objectAtIndexedSubscript_(v21, v161, v153, v162, v163, v164, v165, v166);
          *v20 = objc_msgSend_dataType(v175, v176, v177, v178, v179, v180, v181, v182);
          *(v20 + 8) = v153;
        }

        objc_autoreleasePoolPop(v108);
        goto LABEL_43;
      }
    }

    *(v18 + 64) = 1;
    if (v21 && v20)
    {
      v167 = objc_msgSend_objectAtIndexedSubscript_(v21, v161, v153, v162, v163, v164, v165, v166);
      *(v20 + 48) = objc_msgSend_dataType(v167, v168, v169, v170, v171, v172, v173, v174);
      *(v20 + 56) = v153;
      if (v153)
      {
        --v153;
      }

      else
      {
        v153 = 0;
      }
    }

    goto LABEL_39;
  }

LABEL_44:
  if (a5 && (a8 & 1) == 0)
  {
    result = objc_msgSend_load(a5, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    *(v18 + 8) = sub_239BDBD50(v17, a5, 0, a9, 0, v21, v22);
    if (v21 && v20)
    {
      Object = objc_msgSend_lastObject(v21, v183, v184, v185, v186, v187, v188, v189);
      v198 = v16;
      v199 = objc_msgSend_dataType(Object, v191, v192, v193, v194, v195, v196, v197);
      v207 = objc_msgSend_count(v21, v200, v201, v202, v203, v204, v205, v206) - 1;
      *(v20 + 16) = v199;
      v16 = v198;
      *(v20 + 24) = v207;
    }

    result = objc_msgSend_purge(a5, v183, v184, v185, v186, v187, v188, v189);
  }

  if (a6)
  {
    result = objc_msgSend_load(a6, a2, a3, a4, a5, a6, a7, a8);
    if (result)
    {
      v215 = objc_msgSend_descriptor(a6, v208, v209, v210, v211, v212, v213, v214);
      if (objc_msgSend_memoryWeightsAreDiagonal(v16, v216, v217, v218, v219, v220, v221, v222))
      {
        v386 = v17;
        v230 = 268435488;
        v231 = objc_msgSend_weights(a6, v223, v224, v225, v226, v227, v228, v229);
        v246 = objc_msgSend_dataType(a6, v232, v233, v234, v235, v236, v237, v238);
        v377 = v20;
        if (v246 != 268435488)
        {
          v247 = objc_msgSend_outputFeatureChannels(v215, v239, v240, v241, v242, v243, v244, v245);
          v231 = malloc_type_malloc(4 * v247, 0x100004052888210uLL);
          if (objc_msgSend_dataType(a6, v248, v249, v250, v251, v252, v253, v254) == 268435472)
          {
            objc_msgSend_weights(a6, v255, v256, v257, v258, v259, v260, v261);
            objc_msgSend_outputFeatureChannels(v215, v262, v263, v264, v265, v266, v267, v268);
            MPSConvertHalfToFloat();
          }

          else
          {
            v384 = v22;
            v284 = objc_msgSend_rangesForUInt8Kernel(a6, v255, v256, v257, v258, v259, v260, v261);
            if (objc_msgSend_outputFeatureChannels(v215, v285, v286, v287, v288, v289, v290, v291))
            {
              v380 = v246;
              v292 = 0;
              if (v284)
              {
                do
                {
                  v293 = objc_msgSend_weights(a6, v239, v240, v241, v242, v243, v244, v245, v377);
                  LODWORD(v382) = *(v284 + 8 * v292);
                  v294 = vcvtq_f64_f32(*(v284 + 8 * v292));
                  v295 = 0.00392156863 * vsubq_f64(vdupq_laneq_s64(v294, 1), v294).f64[0];
                  v303 = objc_msgSend_dataType(a6, v296, v297, v298, v299, v300, v301, v302);
                  v311 = *(v293 + v292);
                  if (v303 == 536870920)
                  {
                    v311 = v311 + 128;
                  }

                  v312 = v295;
                  v231[v292++] = v382 + (v312 * v311);
                }

                while (v292 < objc_msgSend_outputFeatureChannels(v215, v304, v305, v306, v307, v308, v309, v310));
                v22 = v384;
              }

              else
              {
                v22 = v384;
                do
                {
                  v313 = objc_msgSend_weights(a6, v239, v240, v241, v242, v243, v244, v245, v377);
                  v321 = objc_msgSend_dataType(a6, v314, v315, v316, v317, v318, v319, v320);
                  v329 = *(v313 + v292);
                  if (v321 == 536870920)
                  {
                    v329 = v329 + 128;
                  }

                  v231[v292++] = (v329 * 0.03937) + -5.0394;
                }

                while (v292 < objc_msgSend_outputFeatureChannels(v215, v322, v323, v324, v325, v326, v327, v328));
              }

              v246 = v380;
            }

            else
            {
              v22 = v384;
            }
          }
        }

        v330 = objc_msgSend_outputFeatureChannels(v215, v239, v240, v241, v242, v243, v244, v245, v377);
        v331 = MPSDevice::GetMPSDevice();
        v332 = 0;
        if (v231)
        {
          if (v331)
          {
            v333 = 4 * v330;
            v334 = (*(*v331 + 24))(v331);
            v340 = objc_msgSend_newBufferWithLength_options_(v386, v335, (v333 + 12) & 0x3FFFFFFF0, 16 * v334, v336, v337, v338, v339);
            v332 = v340;
            if (v340)
            {
              v341 = objc_msgSend_contents(v340, v269, v270, v271, v272, v273, v274, v275);
              memcpy(v341, v231, v333);
            }
          }
        }

        *(v18 + 24) = v332;
        if (v246 != 268435488)
        {
          free(v231);
        }

        if (!v21)
        {
          return objc_msgSend_purge(a6, v269, v270, v271, v272, v273, v274, v275);
        }

        if (!v22)
        {
          return objc_msgSend_purge(a6, v269, v270, v271, v272, v273, v274, v275);
        }

        v342 = MEMORY[0x277CD7258];
        v343 = objc_msgSend_outputFeatureChannels(v215, v269, v270, v271, v272, v273, v274, v275);
        v351 = objc_msgSend_length(*(v18 + 24), v344, v345, v346, v347, v348, v349, v350);
        v355 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v342, v352, 1, v343, v351, 268435488, v353, v354);
        v356 = objc_alloc(MEMORY[0x277CD7250]);
        v362 = objc_msgSend_initWithBuffer_descriptor_(v356, v357, *(v18 + 24), v355, v358, v359, v360, v361);

        *(v18 + 24) = 0;
        objc_msgSend_addObject_(v21, v363, v362, v364, v365, v366, v367, v368);

        v20 = v378;
        objc_msgSend_addObject_(v22, v369, v355, v370, v371, v372, v373, v374);
        if (!v378)
        {
          return objc_msgSend_purge(a6, v269, v270, v271, v272, v273, v274, v275);
        }
      }

      else
      {
        *v19 = sub_239BDBD50(v17, a6, 0, 0, 0, v21, v22);
        if (!v21 || !v20)
        {
          return objc_msgSend_purge(a6, v269, v270, v271, v272, v273, v274, v275);
        }

        v276 = objc_msgSend_lastObject(v21, v269, v270, v271, v272, v273, v274, v275);
        v230 = objc_msgSend_dataType(v276, v277, v278, v279, v280, v281, v282, v283);
      }

      v375 = objc_msgSend_count(v21, v269, v270, v271, v272, v273, v274, v275) - 1;
      *(v20 + 32) = v230;
      *(v20 + 40) = v375;
      return objc_msgSend_purge(a6, v269, v270, v271, v272, v273, v274, v275);
    }
  }

  return result;
}

uint64_t sub_239BDD86C(void *a1, void *a2, void **a3, void **a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10, void *a11, uint64_t a12, uint64_t a13)
{
  v13 = a8;
  result = objc_msgSend_load(a2, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v148 = a7;
  v149 = result;
  if (a4)
  {
    *a4 = 0;
  }

  if (objc_msgSend_dataType(a2, v22, v23, v24, v25, v26, v27, v28) == 536870920 || objc_msgSend_dataType(a2, v29, v30, v31, v32, v33, v34, v35) == 8 || objc_msgSend_dataType(a2, v29, v30, v31, v32, v33, v34, v35) == 268435472 || (v36 = 0, objc_msgSend_dataType(a2, v29, v30, v31, v32, v33, v34, v35) == 268435488) && a9)
  {
    v36 = 1;
  }

  v37 = objc_msgSend_descriptor(a2, v29, v30, v31, v32, v33, v34, v35);
  v45 = v37;
  if (a6)
  {
    if (v37)
    {
      objc_msgSend_neuronInfo(v37, v38, v39, v40, v41, v42, v43, v44);
    }

    else
    {
      v150 = 0uLL;
      v151 = 0;
    }

    *a6 = v150;
    *(a6 + 16) = v151;
  }

  if (v13)
  {
    v46 = objc_msgSend_biasTerms(a2, v38, v39, v40, v41, v42, v43, v44);
    v54 = objc_msgSend_outputFeatureChannels(v45, v47, v48, v49, v50, v51, v52, v53);
    MPSDevice = MPSDevice::GetMPSDevice();
    v63 = 0;
    if (v46)
    {
      if (MPSDevice)
      {
        v64 = 4 * v54;
        v65 = (*(*MPSDevice + 24))(MPSDevice);
        v71 = objc_msgSend_newBufferWithLength_options_(a1, v66, (v64 + 12) & 0x3FFFFFFF0, 16 * v65, v67, v68, v69, v70);
        v63 = v71;
        if (v71)
        {
          v72 = objc_msgSend_contents(v71, v56, v57, v58, v59, v60, v61, v62);
          memcpy(v72, v46, v64);
        }
      }
    }

    *a4 = v63;
    *a5 = 1;
    if (!a10)
    {
      goto LABEL_43;
    }

    if (!a11)
    {
      goto LABEL_43;
    }

    v73 = MEMORY[0x277CD7258];
    v74 = objc_msgSend_outputFeatureChannels(v45, v56, v57, v58, v59, v60, v61, v62);
    v82 = objc_msgSend_length(*a4, v75, v76, v77, v78, v79, v80, v81);
    v86 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v73, v83, 1, v74, v82, 268435488, v84, v85);
    v87 = objc_alloc(MEMORY[0x277CD7250]);
    v93 = objc_msgSend_initWithBuffer_descriptor_(v87, v88, *a4, v86, v89, v90, v91, v92);

    *a4 = 0;
    objc_msgSend_addObject_(a10, v94, v93, v95, v96, v97, v98, v99);
    objc_msgSend_addObject_(a11, v100, v86, v101, v102, v103, v104, v105);

    if (!a12)
    {
      goto LABEL_43;
    }

    v106 = objc_msgSend_count(a10, v56, v57, v58, v59, v60, v61, v62) - 1;
    v107 = a12 + 16 * a13;
    *v107 = 268435488;
    goto LABEL_42;
  }

  *a3 = sub_239BDBD50(a1, a2, 1, a9, v36, a10, a11);
  if (a10)
  {
    v107 = a12;
    if (objc_msgSend_count(a10, v108, v109, v110, v111, v112, v113, v114))
    {
      v106 = objc_msgSend_count(a10, v115, v116, v117, v118, v119, v120, v121) - 1;
      v129 = objc_msgSend_biasTerms(a2, v122, v123, v124, v125, v126, v127, v128);
      if (!a5)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v106 = 0;
      v129 = objc_msgSend_biasTerms(a2, v115, v116, v117, v118, v119, v120, v121);
      if (!a5)
      {
        goto LABEL_39;
      }
    }

LABEL_33:
    if (v129)
    {
      *a5 = 1;
      if (a10)
      {
        if (v107)
        {
          v130 = objc_msgSend_objectAtIndexedSubscript_(a10, v56, v106, v58, v59, v60, v61, v62);
          v138 = objc_msgSend_dataType(v130, v131, v132, v133, v134, v135, v136, v137);
          v139 = v107 + 16 * a13;
          *v139 = v138;
          *(v139 + 8) = v106;
          if (v106)
          {
            --v106;
          }

          else
          {
            v106 = 0;
          }
        }
      }
    }

    goto LABEL_39;
  }

  v106 = 0;
  v107 = a12;
  v129 = objc_msgSend_biasTerms(a2, v108, v109, v110, v111, v112, v113, v114);
  if (a5)
  {
    goto LABEL_33;
  }

LABEL_39:
  if (!a10 || !v107)
  {
    goto LABEL_43;
  }

  v140 = objc_msgSend_objectAtIndexedSubscript_(a10, v56, v106, v58, v59, v60, v61, v62);
  *v107 = objc_msgSend_dataType(v140, v141, v142, v143, v144, v145, v146, v147);
LABEL_42:
  *(v107 + 8) = v106;
LABEL_43:
  if (v148)
  {
    if (!*v148)
    {
      *v148 = objc_msgSend_outputFeatureChannels(v45, v56, v57, v58, v59, v60, v61, v62);
    }
  }

  objc_msgSend_purge(a2, v56, v57, v58, v59, v60, v61, v62, a13);
  return v149;
}

uint64_t sub_239BDDBF4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = objc_msgSend_data(a2, a2, a3, a4, a5, a6, a7, a8);
  v12 = sub_239BDA634(v11, a1, a3);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = objc_autoreleasePoolPush();
  v15 = MEMORY[0x277CD7258];
  v23 = objc_msgSend_rows(a2, v16, v17, v18, v19, v20, v21, v22);
  v31 = objc_msgSend_columns(a2, v24, v25, v26, v27, v28, v29, v30);
  v39 = objc_msgSend_rowBytes(a2, v32, v33, v34, v35, v36, v37, v38);
  v47 = objc_msgSend_dataType(a2, v40, v41, v42, v43, v44, v45, v46);
  v51 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v15, v48, v23, v31, v39, v47, v49, v50);
  v52 = objc_alloc(MEMORY[0x277CD7250]);
  v58 = objc_msgSend_initWithBuffer_descriptor_(v52, v53, v13, v51, v54, v55, v56, v57);

  objc_autoreleasePoolPop(v14);
  return v58;
}

uint64_t sub_239BDDCF8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a2 + 40);
  *(a3 + 56) = *(a2 + 56);
  *(a3 + 40) = v13;
  *(a3 + 64) = *(a2 + 64);
  *a3 = sub_239BDDBF4(a1, *a2, a4, a4, a5, a6, a7, a8);
  if (a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = sub_239BDDBF4(a1, *(a2 + 8), a4, v14, v15, v16, v17, v18);
  }

  *(a3 + 8) = v19;
  *(a3 + 16) = sub_239BDDBF4(a1, *(a2 + 16), a4, v20, v21, v22, v23, v24);
  *(a3 + 32) = sub_239BDA634(*(a2 + 32), a1, a4);
  result = sub_239BDA634(*(a2 + 24), a1, a4);
  *(a3 + 24) = result;
  return result;
}

uint64_t sub_239BDDDBC(uint64_t result, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*a5)
  {
    v9 = result;
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v159 = objc_msgSend_initWithFormat_(v10, v11, @"%@%d", v12, v13, v14, v15, v16, @"kMPSRNNLayer.common.direction", a4);
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v158 = objc_msgSend_initWithFormat_(v17, v18, @"%@%d", v19, v20, v21, v22, v23, @"kMPSRNNLayer.common.useUnitXForm", a4);
    v24 = objc_alloc(MEMORY[0x277CCACA8]);
    v157 = objc_msgSend_initWithFormat_(v24, v25, @"%@%d", v26, v27, v28, v29, v30, @"kMPSRNNLayer.common.nHiddenFeatures", a4);
    v31 = objc_alloc(MEMORY[0x277CCACA8]);
    v156 = objc_msgSend_initWithFormat_(v31, v32, @"%@%d", v33, v34, v35, v36, v37, @"kMPSRNNLayer.common.nInputFeatures", a4);
    v38 = objc_alloc(MEMORY[0x277CCACA8]);
    v155 = objc_msgSend_initWithFormat_(v38, v39, @"%@%d", v40, v41, v42, v43, v44, @"kMPSRNNLayer.common.nOutputFeatures", a4);
    v45 = objc_alloc(MEMORY[0x277CCACA8]);
    v154 = objc_msgSend_initWithFormat_(v45, v46, @"%@%d", v47, v48, v49, v50, v51, @"kMPSRNNLayer.common.nRecurrentOutputFeatures", a4);
    v52 = objc_alloc(MEMORY[0x277CCACA8]);
    v153 = objc_msgSend_initWithFormat_(v52, v53, @"%@%d", v54, v55, v56, v57, v58, @"kMPSRNNLayer.common.inputTransform", a4);
    v59 = objc_alloc(MEMORY[0x277CCACA8]);
    v152 = objc_msgSend_initWithFormat_(v59, v60, @"%@%d", v61, v62, v63, v64, v65, @"kMPSRNNLayer.common.outputTransform", a4);
    v66 = objc_alloc(MEMORY[0x277CCACA8]);
    v73 = objc_msgSend_initWithFormat_(v66, v67, @"%@%d", v68, v69, v70, v71, v72, @"kMPSRNNLayer.common.recurrentOutputTransform", a4);
    v74 = objc_alloc(MEMORY[0x277CCACA8]);
    v81 = objc_msgSend_initWithFormat_(v74, v75, @"%@%d", v76, v77, v78, v79, v80, @"kMPSRNNLayer.common.inputTransform.hasBias", a4);
    v82 = objc_alloc(MEMORY[0x277CCACA8]);
    v89 = objc_msgSend_initWithFormat_(v82, v83, @"%@%d", v84, v85, v86, v87, v88, @"kMPSRNNLayer.common.outputTransform.hasBias", a4);
    v90 = objc_alloc(MEMORY[0x277CCACA8]);
    v97 = objc_msgSend_initWithFormat_(v90, v91, @"%@%d", v92, v93, v94, v95, v96, @"kMPSRNNLayer.common.recurrentOutputTransform.hasBias", a4);
    *(a3 + 64) = objc_msgSend_decodeInt64ForKey_(v9, v98, v159, v99, v100, v101, v102, v103);
    *(a3 + 72) = objc_msgSend_decodeBoolForKey_(v9, v104, v158, v105, v106, v107, v108, v109);
    *(a3 + 56) = objc_msgSend_decodeInt64ForKey_(v9, v110, v157, v111, v112, v113, v114, v115);
    *(a3 + 32) = objc_msgSend_decodeInt64ForKey_(v9, v116, v156, v117, v118, v119, v120, v121);
    *(a3 + 40) = objc_msgSend_decodeInt64ForKey_(v9, v122, v155, v123, v124, v125, v126, v127);
    *(a3 + 48) = objc_msgSend_decodeInt64ForKey_(v9, v128, v154, v129, v130, v131, v132, v133);
    *a3 = sub_239BDE0B4(v9, a2, v153, a5);
    *(a3 + 8) = sub_239BDE0B4(v9, a2, v152, a5);
    *(a3 + 16) = sub_239BDE0B4(v9, a2, v73, a5);
    *(a3 + 24) = objc_msgSend_decodeBoolForKey_(v9, v134, v81, v135, v136, v137, v138, v139);
    *(a3 + 25) = objc_msgSend_decodeBoolForKey_(v9, v140, v89, v141, v142, v143, v144, v145);
    result = objc_msgSend_decodeBoolForKey_(v9, v146, v97, v147, v148, v149, v150, v151);
    *(a3 + 26) = result;
  }

  return result;
}

uint64_t sub_239BDE0B4(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = 0;
  if (a2 && a4)
  {
    result = MPSDevice::GetMPSDevice();
    if (!result)
    {
      *a4 = 0;
      return result;
    }

    v15 = result;
    if ((objc_msgSend_decodeBoolForKey_(a1, v9, a3, v10, v11, v12, v13, v14) & 1) == 0)
    {
      result = 0;
      *a4 = 1;
      return result;
    }

    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v237 = objc_msgSend_initWithFormat_(v16, v17, @"%@%@", v18, v19, v20, v21, v22, a3, @".length");
    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    v236 = objc_msgSend_initWithFormat_(v23, v24, @"%@%@", v25, v26, v27, v28, v29, a3, @".dataType");
    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v37 = objc_msgSend_initWithFormat_(v30, v31, @"%@%@", v32, v33, v34, v35, v36, a3, @".hasBias");
    v38 = objc_alloc(MEMORY[0x277CCACA8]);
    v234 = objc_msgSend_initWithFormat_(v38, v39, @"%@%@", v40, v41, v42, v43, v44, a3, @".biasLength");
    v45 = objc_alloc(MEMORY[0x277CCACA8]);
    v233 = objc_msgSend_initWithFormat_(v45, v46, @"%@%@", v47, v48, v49, v50, v51, a3, @".biasData");
    v52 = objc_alloc(MEMORY[0x277CCACA8]);
    v235 = objc_msgSend_initWithFormat_(v52, v53, @"%@%@", v54, v55, v56, v57, v58, a3, @".data");
    v59 = objc_alloc(MEMORY[0x277CCACA8]);
    v66 = objc_msgSend_initWithFormat_(v59, v60, @"%@%@", v61, v62, v63, v64, v65, a3, @".rows");
    v67 = objc_alloc(MEMORY[0x277CCACA8]);
    v74 = objc_msgSend_initWithFormat_(v67, v68, @"%@%@", v69, v70, v71, v72, v73, a3, @".rowBytes");
    v75 = objc_alloc(MEMORY[0x277CCACA8]);
    v82 = objc_msgSend_initWithFormat_(v75, v76, @"%@%@", v77, v78, v79, v80, v81, a3, @".columns");
    v89 = objc_msgSend_decodeInt64ForKey_(a1, v83, v66, v84, v85, v86, v87, v88);
    v232 = objc_msgSend_decodeInt64ForKey_(a1, v90, v82, v91, v92, v93, v94, v95);
    v231 = objc_msgSend_decodeInt64ForKey_(a1, v96, v74, v97, v98, v99, v100, v101);
    v108 = objc_msgSend_decodeInt64ForKey_(a1, v102, v237, v103, v104, v105, v106, v107);
    v115 = objc_msgSend_decodeBoolForKey_(a1, v109, v37, v110, v111, v112, v113, v114);
    v122 = objc_msgSend_decodeInt64ForKey_(a1, v116, v236, v117, v118, v119, v120, v121);
    v129 = v122;
    if (v122 > 268435487)
    {
      if (v122 != 268435488 && v122 != 536870920)
      {
        goto LABEL_26;
      }
    }

    else if (v122 != 8 && v122 != 268435472)
    {
LABEL_26:
      result = 0;
      *a4 = 0;
      return result;
    }

    if (v115)
    {
      v130 = objc_msgSend_decodeInt64ForKey_(a1, v123, v234, v124, v125, v126, v127, v128);
    }

    else
    {
      v130 = 0;
    }

    v131 = (*(*v15 + 40))(v15);
    v132 = (*(*v15 + 24))(v15);
    v138 = objc_msgSend_newBufferWithLength_options_(a2, v133, v130 + v108, v131 | (16 * v132), v134, v135, v136, v137);
    if (!v138)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        return 0;
      }

      goto LABEL_54;
    }

    v146 = v138;
    v153 = objc_msgSend_contents(v138, v139, v140, v141, v142, v143, v144, v145);
    if (v115)
    {
      v239 = 0;
      v154 = sub_239BCD898(a1, v233, &v239, a4, v149, v150, v151, v152);
      if (v154)
      {
        v155 = v154;
        if (v130 == 4 * v239)
        {
          memcpy(&v153[v108], v154, v130);
          free(v155);
          goto LABEL_21;
        }

        free(v155);
      }

      else
      {
      }

      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_54;
      }

      return 0;
    }

LABEL_21:
    if (v129 != 268435472)
    {
      if (v129 == 268435488)
      {
        v239 = 0;
        v156 = sub_239BCD898(a1, v235, &v239, a4, v149, v150, v151, v152);
        if (v156)
        {
          v157 = v156;
          if (v108 == 4 * v239)
          {
            memcpy(v153, v156, v108);
            free(v157);
LABEL_39:
            v219 = objc_autoreleasePoolPush();
            v223 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v220, v89, v232, v231, v129, v221, v222);
            v224 = objc_alloc(MEMORY[0x277CD7250]);
            v230 = objc_msgSend_initWithBuffer_descriptor_(v224, v225, v146, v223, v226, v227, v228, v229);

            objc_autoreleasePoolPop(v219);
            return v230;
          }

          free(v157);
        }

        else
        {
        }

        if (!MTLReportFailureTypeEnabled())
        {
          return 0;
        }

        goto LABEL_54;
      }

      *a4 = 0;
      if (objc_msgSend_decodeBoolForKey_(a1, v147, v235, v148, v149, v150, v151, v152))
      {
        v238 = v89;
        v239 = 0;
        v189 = objc_alloc(MEMORY[0x277CCACA8]);
        v196 = objc_msgSend_initWithFormat_(v189, v190, @"%@%@", v191, v192, v193, v194, v195, v235, @".length");
        v197 = objc_alloc(MEMORY[0x277CCACA8]);
        v204 = objc_msgSend_initWithFormat_(v197, v198, @"%@%@", v199, v200, v201, v202, v203, v235, @".data");
        v211 = objc_msgSend_decodeInt64ForKey_(a1, v205, v196, v206, v207, v208, v209, v210);
        v217 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v212, v204, &v239, v213, v214, v215, v216);

        if (v217)
        {
          if (v211 == v239)
          {
            v218 = malloc_type_malloc(v211, 0x100004077774924uLL);
            if (v218)
            {
              v188 = v218;
              memcpy(v218, v217, v211);
              *a4 = 1;
              if (v211 != v108)
              {

                free(v188);
                if (!MTLReportFailureTypeEnabled())
                {
                  return 0;
                }

                goto LABEL_54;
              }

LABEL_38:
              memcpy(v153, v188, v108);
              free(v188);
              v89 = v238;
              goto LABEL_39;
            }
          }
        }
      }

      else
      {
        *a4 = 1;
      }

      if (MTLReportFailureTypeEnabled())
      {
LABEL_54:
        MTLReportFailure();
      }

      return 0;
    }

    *a4 = 0;
    if (objc_msgSend_decodeBoolForKey_(a1, v147, v235, v148, v149, v150, v151, v152))
    {
      v238 = v89;
      v239 = 0;
      v158 = objc_alloc(MEMORY[0x277CCACA8]);
      v165 = objc_msgSend_initWithFormat_(v158, v159, @"%@%@", v160, v161, v162, v163, v164, v235, @".length");
      v166 = objc_alloc(MEMORY[0x277CCACA8]);
      v173 = objc_msgSend_initWithFormat_(v166, v167, @"%@%@", v168, v169, v170, v171, v172, v235, @".data");
      v180 = objc_msgSend_decodeInt64ForKey_(a1, v174, v165, v175, v176, v177, v178, v179);
      v186 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v181, v173, &v239, v182, v183, v184, v185);

      if (v186)
      {
        if (2 * v180 == v239)
        {
          v187 = malloc_type_malloc(2 * v180, 0x1000040BDFB0063uLL);
          if (v187)
          {
            v188 = v187;
            MPSCopyToFromNetworkByteOrder16();
            *a4 = 1;
            if (2 * v180 == v108)
            {
              goto LABEL_38;
            }

            free(v188);
LABEL_46:
            if (MTLReportFailureTypeEnabled())
            {
              goto LABEL_54;
            }

            return 0;
          }
        }
      }
    }

    else
    {
      *a4 = 1;
    }

    goto LABEL_46;
  }

  return result;
}

void sub_239BDE800(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  if (*a6)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v121 = objc_msgSend_initWithFormat_(v12, v13, @"%@%@", v14, v15, v16, v17, v18, a3, @".inputXForm");
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v118 = objc_msgSend_initWithFormat_(v19, v20, @"%@%@", v21, v22, v23, v24, v25, a3, @".recurrentXForm");
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    v120 = objc_msgSend_initWithFormat_(v26, v27, @"%@%@", v28, v29, v30, v31, v32, a3, @".peepholeXForm");
    v33 = objc_alloc(MEMORY[0x277CCACA8]);
    v40 = objc_msgSend_initWithFormat_(v33, v34, @"%@%@", v35, v36, v37, v38, v39, a3, @".hasBias");
    v41 = objc_alloc(MEMORY[0x277CCACA8]);
    v48 = objc_msgSend_initWithFormat_(v41, v42, @"%@%@", v43, v44, v45, v46, v47, a3, @".biasVector");
    v49 = objc_alloc(MEMORY[0x277CCACA8]);
    v119 = objc_msgSend_initWithFormat_(v49, v50, @"%@%@", v51, v52, v53, v54, v55, a3, @".peepholeVector");
    v56 = objc_alloc(MEMORY[0x277CCACA8]);
    v63 = objc_msgSend_initWithFormat_(v56, v57, @"%@%@", v58, v59, v60, v61, v62, a3, @".nHiddenFeatures");
    v70 = objc_msgSend_decodeInt64ForKey_(a1, v64, v63, v65, v66, v67, v68, v69);
    sub_239BDABDC(a1, a3, (a4 + 40));
    *(a4 + 64) = objc_msgSend_decodeBoolForKey_(a1, v71, v40, v72, v73, v74, v75, v76);
    *a4 = sub_239BDE0B4(a1, a2, v121, a6);
    if (a5)
    {
      v77 = a5;
    }

    else
    {
      v77 = sub_239BDE0B4(a1, a2, v118, a6);
    }

    *(a4 + 8) = v77;
    *(a4 + 16) = sub_239BDE0B4(a1, a2, v120, a6);
    MPSDevice = MPSDevice::GetMPSDevice();
    if (MPSDevice)
    {
      v85 = MPSDevice;
      if (objc_msgSend_decodeBoolForKey_(a1, v79, v48, v80, v81, v82, v83, v84))
      {
        v122 = 0;
        v90 = sub_239BCD898(a1, v48, &v122, a6, v86, v87, v88, v89);
        if (v90)
        {
          v91 = v90;
          if (v122 == v70)
          {
            v92 = (*(*v85 + 24))(v85);
            v97 = objc_msgSend_newBufferWithBytes_length_options_(a2, v93, v91, 4 * v70, 16 * v92, v94, v95, v96);
          }

          else
          {
            v97 = 0;
            *a6 = 0;
          }

          free(v91);
          *(a4 + 32) = v97;
          v98 = MPSDevice::GetMPSDevice();
          if (v98)
          {
            goto LABEL_18;
          }

LABEL_15:
          v105 = 0;
          *a6 = 0;
LABEL_26:
          *(a4 + 24) = v105;
          return;
        }

        *(a4 + 32) = 0;
        v98 = MPSDevice::GetMPSDevice();
        if (!v98)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *a6 = 1;
        *(a4 + 32) = 0;
        v98 = MPSDevice::GetMPSDevice();
        if (!v98)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      *a6 = 0;
      *(a4 + 32) = 0;
      v98 = MPSDevice::GetMPSDevice();
      if (!v98)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v106 = v98;
    if (objc_msgSend_decodeBoolForKey_(a1, v99, v119, v100, v101, v102, v103, v104))
    {
      v122 = 0;
      v111 = sub_239BCD898(a1, v119, &v122, a6, v107, v108, v109, v110);
      if (v111)
      {
        v112 = v111;
        if (v122 == v70)
        {
          v113 = (*(*v106 + 24))(v106);
          v105 = objc_msgSend_newBufferWithBytes_length_options_(a2, v114, v112, 4 * v70, 16 * v113, v115, v116, v117);
        }

        else
        {
          v105 = 0;
          *a6 = 0;
        }

        free(v112);
      }

      else
      {
        v105 = 0;
      }
    }

    else
    {
      v105 = 0;
      *a6 = 1;
    }

    goto LABEL_26;
  }
}

uint64_t sub_239BDEBB8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v163 = objc_msgSend_initWithFormat_(v6, v7, @"%@%d", v8, v9, v10, v11, v12, @"kMPSRNNLayer.common.direction", a3);
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v162 = objc_msgSend_initWithFormat_(v13, v14, @"%@%d", v15, v16, v17, v18, v19, @"kMPSRNNLayer.common.useUnitXForm", a3);
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v161 = objc_msgSend_initWithFormat_(v20, v21, @"%@%d", v22, v23, v24, v25, v26, @"kMPSRNNLayer.common.nHiddenFeatures", a3);
  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  v160 = objc_msgSend_initWithFormat_(v27, v28, @"%@%d", v29, v30, v31, v32, v33, @"kMPSRNNLayer.common.nInputFeatures", a3);
  v34 = objc_alloc(MEMORY[0x277CCACA8]);
  v159 = objc_msgSend_initWithFormat_(v34, v35, @"%@%d", v36, v37, v38, v39, v40, @"kMPSRNNLayer.common.nOutputFeatures", a3);
  v41 = objc_alloc(MEMORY[0x277CCACA8]);
  v158 = objc_msgSend_initWithFormat_(v41, v42, @"%@%d", v43, v44, v45, v46, v47, @"kMPSRNNLayer.common.nRecurrentOutputFeatures", a3);
  v48 = objc_alloc(MEMORY[0x277CCACA8]);
  v55 = objc_msgSend_initWithFormat_(v48, v49, @"%@%d", v50, v51, v52, v53, v54, @"kMPSRNNLayer.common.inputTransform", a3);
  v56 = objc_alloc(MEMORY[0x277CCACA8]);
  v63 = objc_msgSend_initWithFormat_(v56, v57, @"%@%d", v58, v59, v60, v61, v62, @"kMPSRNNLayer.common.outputTransform", a3);
  v64 = objc_alloc(MEMORY[0x277CCACA8]);
  v71 = objc_msgSend_initWithFormat_(v64, v65, @"%@%d", v66, v67, v68, v69, v70, @"kMPSRNNLayer.common.recurrentOutputTransform", a3);
  v72 = objc_alloc(MEMORY[0x277CCACA8]);
  v79 = objc_msgSend_initWithFormat_(v72, v73, @"%@%d", v74, v75, v76, v77, v78, @"kMPSRNNLayer.common.inputTransform.hasBias", a3);
  v80 = objc_alloc(MEMORY[0x277CCACA8]);
  v87 = objc_msgSend_initWithFormat_(v80, v81, @"%@%d", v82, v83, v84, v85, v86, @"kMPSRNNLayer.common.outputTransform.hasBias", a3);
  v88 = objc_alloc(MEMORY[0x277CCACA8]);
  v95 = objc_msgSend_initWithFormat_(v88, v89, @"%@%d", v90, v91, v92, v93, v94, @"kMPSRNNLayer.common.recurrentOutputTransform.hasBias", a3);
  objc_msgSend_encodeInt64_forKey_(a1, v96, *(a2 + 64), v163, v97, v98, v99, v100);
  objc_msgSend_encodeBool_forKey_(a1, v101, *(a2 + 72), v162, v102, v103, v104, v105);
  objc_msgSend_encodeInt64_forKey_(a1, v106, *(a2 + 56), v161, v107, v108, v109, v110);
  objc_msgSend_encodeInt64_forKey_(a1, v111, *(a2 + 32), v160, v112, v113, v114, v115);
  objc_msgSend_encodeInt64_forKey_(a1, v116, *(a2 + 40), v159, v117, v118, v119, v120);
  objc_msgSend_encodeInt64_forKey_(a1, v121, *(a2 + 48), v158, v122, v123, v124, v125);
  sub_239BDEE90(a1, v55, *a2, v126, v127, v128, v129, v130);
  sub_239BDEE90(a1, v63, *(a2 + 8), v131, v132, v133, v134, v135);
  sub_239BDEE90(a1, v71, *(a2 + 16), v136, v137, v138, v139, v140);
  objc_msgSend_encodeBool_forKey_(a1, v141, *(a2 + 24), v79, v142, v143, v144, v145);
  objc_msgSend_encodeBool_forKey_(a1, v146, *(a2 + 25), v87, v147, v148, v149, v150);
  v156 = *(a2 + 26);

  return objc_msgSend_encodeBool_forKey_(a1, v151, v156, v95, v152, v153, v154, v155);
}

void sub_239BDEE90(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_encodeBool_forKey_(a1, a2, a3 != 0, a2, a5, a6, a7, a8);
  if (!a3)
  {
    return;
  }

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = objc_msgSend_initWithFormat_(v11, v12, @"%@%@", v13, v14, v15, v16, v17, a2, @".length");
  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v249 = objc_msgSend_initWithFormat_(v19, v20, @"%@%@", v21, v22, v23, v24, v25, a2, @".dataType");
  v26 = objc_alloc(MEMORY[0x277CCACA8]);
  v248 = objc_msgSend_initWithFormat_(v26, v27, @"%@%@", v28, v29, v30, v31, v32, a2, @".hasBias");
  v33 = objc_alloc(MEMORY[0x277CCACA8]);
  v247 = objc_msgSend_initWithFormat_(v33, v34, @"%@%@", v35, v36, v37, v38, v39, a2, @".biasLength");
  v40 = objc_alloc(MEMORY[0x277CCACA8]);
  v246 = objc_msgSend_initWithFormat_(v40, v41, @"%@%@", v42, v43, v44, v45, v46, a2, @".biasData");
  v47 = objc_alloc(MEMORY[0x277CCACA8]);
  v54 = objc_msgSend_initWithFormat_(v47, v48, @"%@%@", v49, v50, v51, v52, v53, a2, @".data");
  v55 = objc_alloc(MEMORY[0x277CCACA8]);
  v62 = objc_msgSend_initWithFormat_(v55, v56, @"%@%@", v57, v58, v59, v60, v61, a2, @".rows");
  v63 = objc_alloc(MEMORY[0x277CCACA8]);
  v70 = objc_msgSend_initWithFormat_(v63, v64, @"%@%@", v65, v66, v67, v68, v69, a2, @".rowBytes");
  v71 = objc_alloc(MEMORY[0x277CCACA8]);
  v78 = objc_msgSend_initWithFormat_(v71, v72, @"%@%@", v73, v74, v75, v76, v77, a2, @".columns");
  v86 = objc_msgSend_rows(a3, v79, v80, v81, v82, v83, v84, v85);
  objc_msgSend_encodeInt64_forKey_(a1, v87, v86, v62, v88, v89, v90, v91);
  v99 = objc_msgSend_columns(a3, v92, v93, v94, v95, v96, v97, v98);
  objc_msgSend_encodeInt64_forKey_(a1, v100, v99, v78, v101, v102, v103, v104);
  v112 = objc_msgSend_rowBytes(a3, v105, v106, v107, v108, v109, v110, v111);
  objc_msgSend_encodeInt64_forKey_(a1, v113, v112, v70, v114, v115, v116, v117);
  v125 = objc_msgSend_rowBytes(a3, v118, v119, v120, v121, v122, v123, v124);
  v133 = objc_msgSend_rows(a3, v126, v127, v128, v129, v130, v131, v132) * v125;
  v141 = objc_msgSend_data(a3, v134, v135, v136, v137, v138, v139, v140);
  v149 = objc_msgSend_length(v141, v142, v143, v144, v145, v146, v147, v148);
  v157 = v149 - v133;
  if (v149 < v133)
  {
    if (MTLReportFailureTypeEnabled())
    {

      MTLReportFailure();
    }
  }

  else
  {
    v158 = v149;
    v159 = v54;
    v160 = v149 != v133;
    v161 = objc_msgSend_dataType(a3, v150, v151, v152, v153, v154, v155, v156);
    objc_msgSend_encodeInt64_forKey_(a1, v162, v133, v18, v163, v164, v165, v166);
    objc_msgSend_encodeBool_forKey_(a1, v167, v160, v248, v168, v169, v170, v171);
    objc_msgSend_encodeInt64_forKey_(a1, v172, v161, v249, v173, v174, v175, v176);
    objc_msgSend_encodeInt64_forKey_(a1, v177, v157, v247, v178, v179, v180, v181);
    v189 = objc_msgSend_contents(v141, v182, v183, v184, v185, v186, v187, v188);
    v195 = v189;
    if (v158 != v133)
    {
      sub_239BCD9D8(a1, (v189 + v133), v246, (v158 - v133) >> 2, v191, v192, v193, v194);
    }

    if (v161 == 268435472)
    {
      objc_msgSend_encodeBool_forKey_(a1, v190, v195 != 0, v159, v191, v192, v193, v194);
      if (!v195)
      {
        return;
      }

      v196 = objc_alloc(MEMORY[0x277CCACA8]);
      v203 = objc_msgSend_initWithFormat_(v196, v197, @"%@%@", v198, v199, v200, v201, v202, v159, @".length");
      v204 = objc_alloc(MEMORY[0x277CCACA8]);
      v250 = objc_msgSend_initWithFormat_(v204, v205, @"%@%@", v206, v207, v208, v209, v210, v159, @".data");
      objc_msgSend_encodeInt64_forKey_(a1, v211, v133 >> 1, v203, v212, v213, v214, v215);

      v216 = malloc_type_malloc(v133 & 0xFFFFFFFFFFFFFFFELL, 0x1000040BDFB0063uLL);
      if (v216)
      {
        v217 = v216;
        MPSCopyToFromNetworkByteOrder16();
        objc_msgSend_encodeBytes_length_forKey_(a1, v218, v217, v133 & 0xFFFFFFFFFFFFFFFELL, v250, v219, v220, v221);
        free(v217);
      }
    }

    else
    {
      if (v161 == 268435488)
      {

        sub_239BCD9D8(a1, v195, v159, v133 >> 2, v191, v192, v193, v194);
        return;
      }

      objc_msgSend_encodeBool_forKey_(a1, v190, v195 != 0, v159, v191, v192, v193, v194);
      if (!v195)
      {
        return;
      }

      v222 = objc_alloc(MEMORY[0x277CCACA8]);
      v250 = objc_msgSend_initWithFormat_(v222, v223, @"%@%@", v224, v225, v226, v227, v228, v159, @".length");
      v229 = objc_alloc(MEMORY[0x277CCACA8]);
      v236 = objc_msgSend_initWithFormat_(v229, v230, @"%@%@", v231, v232, v233, v234, v235, v159, @".data");
      objc_msgSend_encodeInt64_forKey_(a1, v237, v133, v250, v238, v239, v240, v241);
      objc_msgSend_encodeBytes_length_forKey_(a1, v242, v195, v133, v236, v243, v244, v245);
    }
  }
}

void sub_239BDF37C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v112 = objc_msgSend_initWithFormat_(v9, v10, @"%@%@", v11, v12, v13, v14, v15, a3, @".inputXForm");
  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  v111 = objc_msgSend_initWithFormat_(v16, v17, @"%@%@", v18, v19, v20, v21, v22, a3, @".recurrentXForm");
  v23 = objc_alloc(MEMORY[0x277CCACA8]);
  v30 = objc_msgSend_initWithFormat_(v23, v24, @"%@%@", v25, v26, v27, v28, v29, a3, @".peepholeXForm");
  v31 = objc_alloc(MEMORY[0x277CCACA8]);
  v38 = objc_msgSend_initWithFormat_(v31, v32, @"%@%@", v33, v34, v35, v36, v37, a3, @".hasBias");
  v39 = objc_alloc(MEMORY[0x277CCACA8]);
  v46 = objc_msgSend_initWithFormat_(v39, v40, @"%@%@", v41, v42, v43, v44, v45, a3, @".biasVector");
  v47 = objc_alloc(MEMORY[0x277CCACA8]);
  v54 = objc_msgSend_initWithFormat_(v47, v48, @"%@%@", v49, v50, v51, v52, v53, a3, @".peepholeVector");
  v55 = objc_alloc(MEMORY[0x277CCACA8]);
  v62 = objc_msgSend_initWithFormat_(v55, v56, @"%@%@", v57, v58, v59, v60, v61, a3, @".nHiddenFeatures");
  objc_msgSend_encodeInt64_forKey_(a1, v63, a4, v62, v64, v65, v66, v67);
  objc_msgSend_encodeBool_forKey_(a1, v68, *(a2 + 64), v38, v69, v70, v71, v72);
  sub_239BDB5F8(a1, a3, (a2 + 40));
  sub_239BDEE90(a1, v112, *a2, v73, v74, v75, v76, v77);
  if (a5)
  {
    v83 = 0;
  }

  else
  {
    v83 = *(a2 + 8);
  }

  sub_239BDEE90(a1, v111, v83, v78, v79, v80, v81, v82);
  sub_239BDEE90(a1, v30, *(a2 + 16), v84, v85, v86, v87, v88);
  v96 = *(a2 + 32);
  if (v96)
  {
    v97 = objc_msgSend_contents(v96, v89, v90, v91, v92, v93, v94, v95);
    sub_239BCD9D8(a1, v97, v46, a4, v98, v99, v100, v101);
    v109 = *(a2 + 24);
    if (v109)
    {
LABEL_6:
      v110 = objc_msgSend_contents(v109, v102, v103, v104, v105, v106, v107, v108);
      goto LABEL_9;
    }
  }

  else
  {
    sub_239BCD9D8(a1, 0, v46, a4, v92, v93, v94, v95);
    v109 = *(a2 + 24);
    if (v109)
    {
      goto LABEL_6;
    }
  }

  v110 = 0;
LABEL_9:

  sub_239BCD9D8(a1, v110, v54, a4, v105, v106, v107, v108);
}

uint64_t sub_239BDF9A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSNNScale alloc];
  v6 = *(v4 + 56);
  v7 = **(a1 + 8);
  v8 = *(v4 + 80);
  v13 = *(v4 + 64);
  v14 = v8;
  v9 = objc_opt_class();
  result = objc_msgSend_initWithDevice_transformProvider_handle_outputSize_scaleClass_(v5, v10, a2, v6, v7, &v13, v9, v11);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BDFB20(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSNNScale alloc];
  v6 = *(v4 + 56);
  v7 = **(a1 + 8);
  v8 = *(v4 + 80);
  v13 = *(v4 + 64);
  v14 = v8;
  v9 = objc_opt_class();
  result = objc_msgSend_initWithDevice_transformProvider_handle_outputSize_scaleClass_(v5, v10, a2, v6, v7, &v13, v9, v11);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BDFDD4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a4 + 40);
  v13 = *(a4 + 104);
  v53 = *(a4 + 168);
  *&v54 = *(a4 + 184);
  objc_msgSend_setOffset_(*(a1 + 360), a2, &v53, a4, a5, a6, a7, a8);
  v14 = *(a4 + 136);
  v53 = *(a4 + 120);
  v54 = v14;
  v55 = *(a4 + 152);
  objc_msgSend_setClipRect_(*(a1 + 360), v15, &v53, v16, v17, v18, v19, v20);
  objc_msgSend_setEdgeMode_(*(a1 + 360), v21, *(a1 + 272), v22, v23, v24, v25, v26);
  v33 = 0;
  v34 = *(a4 + 72);
  *&v53 = *(a4 + 8);
  *(&v53 + 1) = v34;
  v35 = *(a4 + 152);
  v36 = *(a4 + 136);
  v54 = *(a4 + 120);
  v55 = v36;
  v37 = *(a4 + 168);
  v56 = v35;
  v57 = v37;
  v38 = *(a1 + 360);
  v58 = *(a4 + 184);
  v59 = 0;
  v39 = MEMORY[0x277CD7378];
  if ((*(v38 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v49 = *(v38 + *MEMORY[0x277CD7360]);
    if (!v49)
    {
      v50 = objc_opt_class();
      v49 = NSStringFromClass(v50);
    }

    objc_msgSend_pushDebugGroup_(a2, v27, v49, v28, v29, v30, v31, v32, v53, v54, v55);
    v33 = a2;
    v40 = *(v38 + *MEMORY[0x277CD75B0]);
    if (!v40)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v40 = *(v38 + *MEMORY[0x277CD75B0]);
    if (!v40)
    {
      goto LABEL_12;
    }
  }

  if ((*(v38 + *v39) & 4) == 0)
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v40(&v60, v38, v12, v13, &v53);
    if (v60)
    {
      if (v61 && 3 * v60 < (2 * *(&v55 + 1)) && 3 * v61 < (2 * v56))
      {
        v41 = MPSSubTileEncode();
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v41 = (*(v38 + *MEMORY[0x277CD75A0]))(*(v38 + *MEMORY[0x277CD75A8]), a2, a3, v12, v13, &v53);
LABEL_13:
  v51 = v41;
  if (v33)
  {
    objc_msgSend_popDebugGroup(v33, v42, v43, v44, v45, v46, v47, v48);
  }

  return v51;
}

void sub_239BE0004(_Unwind_Exception *exception_object, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (v8)
  {
    objc_msgSend_popDebugGroup(v8, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239BE08A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 104);
  v10 = &a2[objc_msgSend_destinationFeatureChannelOffset(v8, a2, a3, a4, a5, a6, a7, a8)];

  return objc_msgSend_setDestinationFeatureChannelOffset_(v8, v9, v10, v11, v12, v13, v14, v15);
}

void sub_239BE08EC(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239BE0948(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 104);
  if (!v9)
  {
    v9 = *(a1 + 112);
  }

  return objc_msgSend_label(v9, a2, a3, a4, a5, a6, a7, a8);
}

void *sub_239BE0970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = xmmword_239D7D680;
  (*(*a1 + 280))(a1, &v41, 0);
  objc_msgSend_setSourceFeatureChannelOffset_(*(a1 + 104), v8, v41, v9, v10, v11, v12, v13);
  objc_msgSend_setSourceFeatureChannelMaxCount_(*(a1 + 104), v14, *(&v41 + 1), v15, v16, v17, v18, v19);
  v25 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(*(a1 + 104), v20, a2, a3, v21, v22, v23, v24);
  v32 = v25;
  if (*(*(a1 + 8) + 88))
  {
    objc_msgSend_setChannelFormat_(v25, v26, *(*(a1 + 8) + 88), v27, v28, v29, v30, v31);
  }

  else
  {
    objc_msgSend_setChannelFormat_(v25, v26, a4, v27, v28, v29, v30, v31);
  }

  if (v32 || !MTLReportFailureTypeEnabled())
  {
    return v32;
  }

  objc_msgSend_padding(*(a1 + 104), v34, v35, v36, v37, v38, v39, v40);
  MTLReportFailure();
  return 0;
}

uint64_t sub_239BE0AD0(void *a1, const char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 && (*(a1[13] + *MEMORY[0x277CD7378]) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v14 = a1[13];
  v21 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, a5, a6, a7, a8);
  if (a5)
  {
    v22 = objc_msgSend_objectAtIndexedSubscript_(a5, v15, 0, v16, v17, v18, v19, v20);
    objc_msgSend_encodeToCommandBuffer_sourceImage_destinationState_destinationImage_(v14, v23, a2, v21, v22, a6, v24, v25);
  }

  else
  {
    objc_msgSend_encodeToCommandBuffer_sourceImage_destinationImage_(v14, v15, a2, v21, a6, v18, v19, v20);
  }

  v26 = *(*a1 + 184);

  return v26(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_239BE0C04(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a4 && (*(a1[13] + *MEMORY[0x277CD7378]) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  (*(*a1 + 192))(a1, a2, a3);
  v18 = objc_msgSend_count(a5, v11, v12, v13, v14, v15, v16, v17);
  v19 = a1[13];
  v32 = objc_msgSend_objectAtIndexedSubscript_(a3, v20, 0, v21, v22, v23, v24, v25);
  if (v18)
  {
    v34 = objc_msgSend_objectAtIndexedSubscript_(a5, v26, 0, v27, v28, v29, v30, v31);

    return objc_msgSend_encodeBatchToCommandBuffer_sourceImages_destinationStates_destinationImages_(v19, v33, a2, v32, v34, a6, v35, v36);
  }

  else
  {

    return MEMORY[0x2821F9670](v19, sel_encodeBatchToCommandBuffer_sourceImages_destinationImages_, a2, v32, a6, v29, v30, v31);
  }
}

void sub_239BE0D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && MTLReportFailureTypeEnabled())
  {

    MTLReportFailure();
  }
}

void sub_239BE0DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && MTLReportFailureTypeEnabled())
  {

    MTLReportFailure();
  }
}

void *sub_239BE0DFC(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if ((*(result[13] + *MEMORY[0x277CD7378]) & 0x10) == 0)
  {
    return result;
  }

  v10 = result;
  v11 = result[2];
  if (!v11)
  {
    v11 = result[1];
  }

  v12 = *(v11 + 64);
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, a5, a6, a7, a8);
  v21 = *MEMORY[0x277CD7318];
  v22 = *(v13 + v21 + 4) & 0x7FF;
  if (v22 <= 0x307)
  {
    if ((*(v13 + v21 + 4) & 0x7FFu) <= 0x117)
    {
      if (v22 == 264)
      {
        v23 = "bfloat16";
        goto LABEL_30;
      }

      if (v22 == 267)
      {
        v23 = "float16";
        goto LABEL_30;
      }
    }

    else
    {
      switch(v22)
      {
        case 0x118u:
          v23 = "float32";
          goto LABEL_30;
        case 0x208u:
          v23 = "unorm8";
          goto LABEL_30;
        case 0x210u:
          v23 = "unorm16";
          goto LABEL_30;
      }
    }
  }

  else if ((*(v13 + v21 + 4) & 0x7FFu) > 0x60F)
  {
    switch(v22)
    {
      case 0x610u:
        v23 = "uint6";
        goto LABEL_30;
      case 0x708u:
        v23 = "sint8";
        goto LABEL_30;
      case 0x710u:
        v23 = "sint16";
        goto LABEL_30;
    }
  }

  else
  {
    switch(v22)
    {
      case 0x308u:
        v23 = "snorm8";
        goto LABEL_30;
      case 0x310u:
        v23 = "snorm16";
        goto LABEL_30;
      case 0x608u:
        v23 = "uint8";
        goto LABEL_30;
    }
  }

  v23 = "<unknown channel format>";
LABEL_30:
  v154 = v23;
  v24 = *(a6 + v21 + 4) & 0x7FF;
  v159 = v12;
  if (v24 <= 775)
  {
    if (v24 <= 279)
    {
      if (v24 == 264)
      {
        v25 = "bfloat16";
        goto LABEL_56;
      }

      if (v24 == 267)
      {
        v25 = "float16";
        goto LABEL_56;
      }
    }

    else
    {
      switch(v24)
      {
        case 280:
          v25 = "float32";
          goto LABEL_56;
        case 520:
          v25 = "unorm8";
          goto LABEL_56;
        case 528:
          v25 = "unorm16";
          goto LABEL_56;
      }
    }

LABEL_55:
    v25 = "<unknown channel format>";
    goto LABEL_56;
  }

  if (v24 > 1551)
  {
    switch(v24)
    {
      case 1552:
        v25 = "uint6";
        goto LABEL_56;
      case 1800:
        v25 = "sint8";
        goto LABEL_56;
      case 1808:
        v25 = "sint16";
        goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v24 == 776)
  {
    v25 = "snorm8";
    goto LABEL_56;
  }

  if (v24 == 784)
  {
    v25 = "snorm16";
    goto LABEL_56;
  }

  if (v24 != 1544)
  {
    goto LABEL_55;
  }

  v25 = "uint8";
LABEL_56:
  v153 = v25;
  v26 = objc_msgSend_padding(v10[13], v14, v15, v16, v17, v18, v19, v20);
  if (objc_opt_respondsToSelector())
  {
    v157 = objc_msgSend_label(v26, v27, v28, v29, v30, v31, v32, v33);
  }

  else
  {
    v157 = @"<missing label>";
  }

  v158 = v10[13];
  v34 = (*(*v10 + 200))(v10);
  v41 = objc_msgSend_cStringUsingEncoding_(v34, v35, 1, v36, v37, v38, v39, v40);
  v155 = v10[15];
  v156 = v41;
  v48 = objc_msgSend_objectAtIndexedSubscript_(a3, v42, 0, v43, v44, v45, v46, v47);
  v56 = objc_msgSend_width(v48, v49, v50, v51, v52, v53, v54, v55);
  v63 = objc_msgSend_objectAtIndexedSubscript_(a3, v57, 0, v58, v59, v60, v61, v62);
  v71 = objc_msgSend_height(v63, v64, v65, v66, v67, v68, v69, v70);
  v78 = objc_msgSend_objectAtIndexedSubscript_(a3, v72, 0, v73, v74, v75, v76, v77);
  v93 = objc_msgSend_featureChannels(v78, v79, v80, v81, v82, v83, v84, v85);
  v94 = *v10[4];
  do
  {
    v95 = v94;
    v94 = *(v94 + 40);
  }

  while (v94);
  v96 = *(v95 + 64);
  v97 = objc_msgSend_sourceFeatureChannelOffset(v10[13], v86, v87, v88, v89, v90, v91, v92);
  v105 = objc_msgSend_width(a6, v98, v99, v100, v101, v102, v103, v104);
  v113 = objc_msgSend_height(a6, v106, v107, v108, v109, v110, v111, v112);
  v121 = objc_msgSend_featureChannels(a6, v114, v115, v116, v117, v118, v119, v120);
  v129 = objc_msgSend_destinationFeatureChannelOffset(v10[13], v122, v123, v124, v125, v126, v127, v128);
  v137 = objc_msgSend_label(v10[13], v130, v131, v132, v133, v134, v135, v136);
  v144 = objc_msgSend_cStringUsingEncoding_(v137, v138, 1, v139, v140, v141, v142, v143);
  v151 = objc_msgSend_cStringUsingEncoding_(v157, v145, 1, v146, v147, v148, v149, v150);
  return sub_239BE215C(v158, v152, "%s[%lu] {%lu x %lu x %lu %s}[%lu](offset:%lu) -> {%lu x %lu x %lu %s}[%lu]  offset: %lu  %s\n\tpadding policy: %s\n", v156, v155, v56, v71, v93, v154, v96, v97, v105, v113, v121, v153, v159, v129, v144, v151);
}

void *sub_239BE121C(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if ((*(result[13] + *MEMORY[0x277CD7378]) & 0x10) == 0)
  {
    return result;
  }

  v10 = result;
  v11 = result[2];
  if (!v11)
  {
    v11 = result[1];
  }

  v236 = *(v11 + 64);
  v12 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, a5, a6, a7, a8);
  v19 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, 0, v14, v15, v16, v17, v18);
  v26 = MEMORY[0x277CD7318];
  v27 = *(v19 + *MEMORY[0x277CD7318] + 4) & 0x7FF;
  if (v27 <= 0x307)
  {
    if ((*(v19 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) <= 0x117)
    {
      if (v27 == 264)
      {
        v28 = "bfloat16";
        goto LABEL_30;
      }

      if (v27 == 267)
      {
        v28 = "float16";
        goto LABEL_30;
      }
    }

    else
    {
      switch(v27)
      {
        case 0x118u:
          v28 = "float32";
          goto LABEL_30;
        case 0x208u:
          v28 = "unorm8";
          goto LABEL_30;
        case 0x210u:
          v28 = "unorm16";
          goto LABEL_30;
      }
    }
  }

  else if ((*(v19 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) > 0x60F)
  {
    switch(v27)
    {
      case 0x610u:
        v28 = "uint6";
        goto LABEL_30;
      case 0x708u:
        v28 = "sint8";
        goto LABEL_30;
      case 0x710u:
        v28 = "sint16";
        goto LABEL_30;
    }
  }

  else
  {
    switch(v27)
    {
      case 0x308u:
        v28 = "snorm8";
        goto LABEL_30;
      case 0x310u:
        v28 = "snorm16";
        goto LABEL_30;
      case 0x608u:
        v28 = "uint8";
        goto LABEL_30;
    }
  }

  v28 = "<unknown channel format>";
LABEL_30:
  v229 = v28;
  v36 = *(objc_msgSend_objectAtIndexedSubscript_(a6, v20, 0, v21, v22, v23, v24, v25) + *v26 + 4) & 0x7FF;
  if (v36 <= 0x307)
  {
    if (v36 <= 279)
    {
      if (v36 == 264)
      {
        v37 = "bfloat16";
        goto LABEL_56;
      }

      if (v36 == 267)
      {
        v37 = "float16";
        goto LABEL_56;
      }
    }

    else
    {
      switch(v36)
      {
        case 280:
          v37 = "float32";
          goto LABEL_56;
        case 520:
          v37 = "unorm8";
          goto LABEL_56;
        case 528:
          v37 = "unorm16";
          goto LABEL_56;
      }
    }

LABEL_55:
    v37 = "<unknown channel format>";
    goto LABEL_56;
  }

  if (v36 > 1551)
  {
    switch(v36)
    {
      case 1552:
        v37 = "uint6";
        goto LABEL_56;
      case 1800:
        v37 = "sint8";
        goto LABEL_56;
      case 1808:
        v37 = "sint16";
        goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v36 == 776)
  {
    v37 = "snorm8";
    goto LABEL_56;
  }

  if (v36 == 784)
  {
    v37 = "snorm16";
    goto LABEL_56;
  }

  if (v36 != 1544)
  {
    goto LABEL_55;
  }

  v37 = "uint8";
LABEL_56:
  v228 = v37;
  v38 = objc_msgSend_padding(v10[13], v29, v30, v31, v32, v33, v34, v35);
  if (objc_opt_respondsToSelector())
  {
    v234 = objc_msgSend_label(v38, v39, v40, v41, v42, v43, v44, v45);
  }

  else
  {
    v234 = @"<missing label>";
  }

  v235 = v10[13];
  v46 = (*(*v10 + 200))(v10);
  v53 = objc_msgSend_cStringUsingEncoding_(v46, v47, 1, v48, v49, v50, v51, v52);
  v232 = v10[15];
  v233 = v53;
  v60 = objc_msgSend_objectAtIndexedSubscript_(a3, v54, 0, v55, v56, v57, v58, v59);
  v231 = objc_msgSend_count(v60, v61, v62, v63, v64, v65, v66, v67);
  v74 = objc_msgSend_objectAtIndexedSubscript_(a3, v68, 0, v69, v70, v71, v72, v73);
  v81 = objc_msgSend_objectAtIndexedSubscript_(v74, v75, 0, v76, v77, v78, v79, v80);
  v230 = objc_msgSend_width(v81, v82, v83, v84, v85, v86, v87, v88);
  v95 = objc_msgSend_objectAtIndexedSubscript_(a3, v89, 0, v90, v91, v92, v93, v94);
  v102 = objc_msgSend_objectAtIndexedSubscript_(v95, v96, 0, v97, v98, v99, v100, v101);
  v110 = objc_msgSend_height(v102, v103, v104, v105, v106, v107, v108, v109);
  v117 = objc_msgSend_objectAtIndexedSubscript_(a3, v111, 0, v112, v113, v114, v115, v116);
  v124 = objc_msgSend_objectAtIndexedSubscript_(v117, v118, 0, v119, v120, v121, v122, v123);
  v139 = objc_msgSend_featureChannels(v124, v125, v126, v127, v128, v129, v130, v131);
  v140 = *v10[4];
  do
  {
    v141 = v140;
    v140 = *(v140 + 40);
  }

  while (v140);
  v142 = *(v141 + 64);
  v143 = objc_msgSend_sourceFeatureChannelOffset(v10[13], v132, v133, v134, v135, v136, v137, v138);
  v151 = objc_msgSend_count(a6, v144, v145, v146, v147, v148, v149, v150);
  v158 = objc_msgSend_objectAtIndexedSubscript_(a6, v152, 0, v153, v154, v155, v156, v157);
  v166 = objc_msgSend_width(v158, v159, v160, v161, v162, v163, v164, v165);
  v173 = objc_msgSend_objectAtIndexedSubscript_(a6, v167, 0, v168, v169, v170, v171, v172);
  v181 = objc_msgSend_height(v173, v174, v175, v176, v177, v178, v179, v180);
  v188 = objc_msgSend_objectAtIndexedSubscript_(a6, v182, 0, v183, v184, v185, v186, v187);
  v196 = objc_msgSend_featureChannels(v188, v189, v190, v191, v192, v193, v194, v195);
  v204 = objc_msgSend_destinationFeatureChannelOffset(v10[13], v197, v198, v199, v200, v201, v202, v203);
  v212 = objc_msgSend_label(v10[13], v205, v206, v207, v208, v209, v210, v211);
  v219 = objc_msgSend_cStringUsingEncoding_(v212, v213, 1, v214, v215, v216, v217, v218);
  v226 = objc_msgSend_cStringUsingEncoding_(v234, v220, 1, v221, v222, v223, v224, v225);
  return sub_239BE215C(v235, v227, "%s[%lu] %lu*{%lu x %lu x %lu %s}[%lu](offset:%lu) -> %lu*{%lu x %lu x %lu %s}[%lu]  offset: %lu  %s\n\tpadding policy: %s\n", v233, v232, v231, v230, v110, v139, v229, v142, v143, v151, v166, v181, v196, v228, v236, v204, v219, v226);
}

NSString *sub_239BE16B4(uint64_t a1)
{
  if (*(a1 + 104))
  {
    v1 = objc_opt_class();
  }

  else
  {
    v1 = objc_opt_class();
  }

  return NSStringFromClass(v1);
}

void *sub_239BE1708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7)
{
  if (a6)
  {
    v11 = a6;
  }

  else
  {
    v12 = a3;
    v13 = a2;
    v14 = (*(*a1 + 96))(a1);
    a2 = v13;
    a3 = v12;
    v11 = v14;
  }

  v15 = (*(*a1 + 88))(a1, a2, a3, a5);
  v20 = v15;
  v21 = a1[13];
  if ((*(v21 + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v22 = MEMORY[0x277CD7338];
    v23 = MEMORY[0x277CD7340];
    if (!*(v15 + *MEMORY[0x277CD7338]) || !*(v15 + *MEMORY[0x277CD7340]))
    {
      v24 = a1[13];
      v25 = (*(*a1 + 200))(a1);
      v32 = objc_msgSend_cStringUsingEncoding_(v25, v26, 1, v27, v28, v29, v30, v31);
      v40 = objc_msgSend_label(a1[13], v33, v34, v35, v36, v37, v38, v39);
      v47 = objc_msgSend_cStringUsingEncoding_(v40, v41, 1, v42, v43, v44, v45, v46);
      sub_239BE215C(v24, v48, "*** Warning: kernel %s (%s) produces a result of size %lu x %lu. We will probably assert soon.\n\tPerhaps the MPSNNGraph input image is too small for this network, or an upstream padding\n\tpolicy was incorrect (full>same>valid), or a stride too large?\n", v32, v47, *(v20 + *v23), *(v20 + *v22));
      v21 = a1[13];
    }
  }

  v56 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(v11, v16, a4, v20, v21, v17, v18, v19);
  v57 = *(a1[1] + 72) + *(a1[1] + 80);
  if (v57 != 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setReadCount_(v56, v49, v57, v51, v52, v53, v54, v55);
    }
  }

  v58 = *a1[1];
  if (v58)
  {
    v59 = objc_msgSend_label(v58, v49, v50, v51, v52, v53, v54, v55);
    if (v59)
    {
      objc_msgSend_setLabel_(v56, v60, v59, v61, v62, v63, v64, v65);
    }
  }

  if (a7)
  {
    *a7 = v20;
  }

  return v56;
}

MPSImageBatch *sub_239BE1908(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v8 = a6;
  v14 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);
  v29 = objc_msgSend_count(v14, v15, v16, v17, v18, v19, v20, v21);
  if (!v8)
  {
    v8 = (*(*a1 + 96))(a1);
  }

  v30 = objc_msgSend_count(a2, v22, v23, v24, v25, v26, v27, v28);
  v37 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v31, v30, v32, v33, v34, v35, v36);
  v45 = v37;
  if (v30 && v37)
  {
    for (i = 0; i != v30; ++i)
    {
      v47 = objc_msgSend_objectAtIndexedSubscript_(a2, v38, i, v40, v41, v42, v43, v44);
      v54 = objc_msgSend_objectAtIndexedSubscript_(v47, v48, 0, v49, v50, v51, v52, v53);
      objc_msgSend_setObject_atIndexedSubscript_(v45, v55, v54, i, v56, v57, v58, v59);
    }
  }

  if (a3)
  {
    v60 = objc_msgSend_count(a3, v38, v39, v40, v41, v42, v43, v44);
    v73 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v61, v60, v62, v63, v64, v65, v66);
    if (v73 && v60)
    {
      for (j = 0; j != v60; ++j)
      {
        v75 = objc_msgSend_objectAtIndexedSubscript_(a3, v67, j, v68, v69, v70, v71, v72);
        v82 = objc_msgSend_objectAtIndexedSubscript_(v75, v76, 0, v77, v78, v79, v80, v81);
        objc_msgSend_setObject_atIndexedSubscript_(v73, v83, v82, j, v84, v85, v86, v87);
      }
    }
  }

  else
  {
    v73 = 0;
  }

  v88 = (*(*a1 + 88))(a1, v45, v73, a5);
  v89 = v88;
  v90 = a1[13];
  v91 = MEMORY[0x277CD7378];
  if ((*(v90 + *MEMORY[0x277CD7378]) & 0x10) == 0 || (v92 = MEMORY[0x277CD7338], v93 = MEMORY[0x277CD7340], *(v88 + *MEMORY[0x277CD7338])) && *(v88 + *MEMORY[0x277CD7340]))
  {
    if (objc_opt_respondsToSelector())
    {
LABEL_18:
      v107 = objc_msgSend_imageBatchForCommandBuffer_imageDescriptor_kernel_count_(v8, v94, a4, v89, v90, v29, v98, v99);
      goto LABEL_28;
    }
  }

  else
  {
    v108 = (*(*a1 + 200))(a1);
    v115 = objc_msgSend_cStringUsingEncoding_(v108, v109, 1, v110, v111, v112, v113, v114);
    v123 = objc_msgSend_label(a1[13], v116, v117, v118, v119, v120, v121, v122);
    v130 = objc_msgSend_cStringUsingEncoding_(v123, v124, 1, v125, v126, v127, v128, v129);
    sub_239BE215C(v90, v131, "*** Warning: kernel %s (%s) produces a result of size %lu x %lu. We will probably assert soon.\n\tPerhaps the MPSNNGraph input image is too small for this network, or an upstream padding\n\tpolicy was incorrect (full>same>valid), or a stride too large?\n", v115, v130, *(v89 + *v93), *(v89 + *v92));
    v90 = a1[13];
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_18;
    }
  }

  v107 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v94, v29, v95, v96, v97, v98, v99);
  if (v107 && v29)
  {
    for (k = 0; k != v29; ++k)
    {
      v133 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(v8, v100, a4, v89, v90, v104, v105, v106, v180);
      objc_msgSend_setObject_atIndexedSubscript_(v107, v134, v133, k, v135, v136, v137, v138);
      if ((*(v90 + *v91) & 1) == 0)
      {
        objc_msgSend_objectAtIndexedSubscript_(v107, v100, k, v102, v103, v104, v105, v106);
        if (!objc_msgSend_objectAtIndexedSubscript_(v107, v139, k, v140, v141, v142, v143, v144))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v145 = objc_opt_class();
            v180 = NSStringFromClass(v145);
            MTLReportFailure();
          }
        }
      }
    }
  }

LABEL_28:
  v146 = *(a1[1] + 72) + *(a1[1] + 80);
  v147 = v146 - 1;
  if (v146 != 1)
  {
    objc_msgSend_objectAtIndexedSubscript_(v107, v100, 0, v102, v103, v104, v105, v106);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      MPSImageBatchIncrementReadCount(v107, v147);
    }
  }

  v148 = *a1[1];
  if (v148)
  {
    v149 = objc_msgSend_label(v148, v100, v101, v102, v103, v104, v105, v106);
    if (v149)
    {
      v156 = v29 == 0;
    }

    else
    {
      v156 = 1;
    }

    if (!v156)
    {
      v157 = v149;
      v158 = 0;
      do
      {
        v159 = objc_msgSend_objectAtIndexedSubscript_(v107, v150, v158, v151, v152, v153, v154, v155, v180);
        objc_msgSend_setLabel_(v159, v160, v157, v161, v162, v163, v164, v165);
        ++v158;
      }

      while (v29 != v158);
    }
  }

  if (a7)
  {
    v166 = malloc_type_malloc(8 * v29, 0x80040B8603338uLL);
    if (v166)
    {
      v172 = v166;
      if (v29)
      {
        if (v29 > 3)
        {
          v173 = v29 & 0xFFFFFFFFFFFFFFFCLL;
          v174 = vdupq_n_s64(v89);
          v175 = v166 + 1;
          v176 = v29 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v175[-1] = v174;
            *v175 = v174;
            v175 += 2;
            v176 -= 4;
          }

          while (v176);
          if (v29 == v173)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v173 = 0;
        }

        v177 = v29 - v173;
        v178 = v166 + v173;
        do
        {
          *v178++ = v89;
          --v177;
        }

        while (v177);
      }

LABEL_49:
      *a7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v167, v166, v29, v168, v169, v170, v171, v180);
      free(v172);
      return v107;
    }

    *a7 = 0;
  }

  return v107;
}

void *sub_239BE1D94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    return 0;
  }

  v9 = a7;
  v14 = *(a1 + 104);
  v16 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);
  if (v9)
  {
    result = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(v14, v15, a6, v16, a3, a4, v18, v19);
    if (!result)
    {
      return result;
    }

    v26 = *(**(a1 + 80) + 72) + *(**(a1 + 80) + 80);
    if (v26 != 1)
    {
      v27 = result;
      objc_msgSend_setReadCount_(result, v20, v26, v21, v22, v23, v24, v25);
      result = v27;
    }
  }

  else
  {
    result = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(v14, v15, v16, a3, a4, v17, v18, v19);
    if (!result)
    {
      return result;
    }
  }

  v28 = **(a1 + 8);
  if (v28)
  {
    v29 = result;
    v30 = objc_msgSend_label(v28, v20, v26, v21, v22, v23, v24, v25);
    if (v30)
    {
      objc_msgSend_setLabel_(v29, v31, v30, v32, v33, v34, v35, v36);
    }

    return v29;
  }

  return result;
}

void *sub_239BE1E80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    return 0;
  }

  v10 = a7;
  v15 = *(a1 + 104);
  v17 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, 0, a6, a7, a8);
  if (v10)
  {
    v21 = objc_msgSend_temporaryResultStateBatchForCommandBuffer_sourceImage_sourceStates_destinationImage_(v15, v16, a6, v17, a3, a4, v19, v20);
    v8 = v21;
    if (!v21)
    {
      return v8;
    }

    v28 = *(**(a1 + 80) + 72) + *(**(a1 + 80) + 80);
    v29 = (v28 - 1);
    if (v28 != 1)
    {
      MPSStateBatchIncrementReadCount(v21, v29);
    }
  }

  else
  {
    v8 = objc_msgSend_resultStateBatchForSourceImage_sourceStates_destinationImage_(v15, v16, v17, a3, a4, v18, v19, v20);
    if (!v8)
    {
      return v8;
    }
  }

  v30 = **(a1 + 8);
  if (v30)
  {
    v31 = objc_msgSend_label(v30, v29, v22, v23, v24, v25, v26, v27);
    if (v31)
    {
      v39 = v31;
      v40 = objc_msgSend_count(v8, v32, v33, v34, v35, v36, v37, v38);
      if (v40)
      {
        v47 = v40;
        for (i = 0; i != v47; ++i)
        {
          v49 = objc_msgSend_objectAtIndexedSubscript_(v8, v41, i, v42, v43, v44, v45, v46);
          objc_msgSend_setLabel_(v49, v50, v39, v51, v52, v53, v54, v55);
        }
      }
    }
  }

  return v8;
}

uint64_t sub_239BE1FB4(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8 * a3);
  if (v3)
  {
    result = *(v3 + 32);
    if (result)
    {
      result = (*(*result + 272))(result);
      v6 = a2[1];
      if (v6 >= v5)
      {
        v6 = v5;
      }

      *a2 += result;
      a2[1] = v6;
    }
  }

  return result;
}

uint64_t sub_239BE2030(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 104);
  v11 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);

  return MEMORY[0x2821F9670](v10, sel_encodingStorageSizeForSourceImage_sourceStates_destinationImage_, v11, a3, a4, v12, v13, v14);
}

uint64_t sub_239BE208C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 104);
  v11 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);

  return MEMORY[0x2821F9670](v10, sel_batchEncodingStorageSizeForSourceImage_sourceStates_destinationImage_, v11, a3, a4, v12, v13, v14);
}

void sub_239BE211C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239BE215C(uint64_t result, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    if (*(result + *MEMORY[0x277CD7380]))
    {
      return vfprintf(*MEMORY[0x277D85DF8], a3, va);
    }
  }

  return result;
}

void **sub_239BE43B4(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_endEncoding(*a1, a2, a3, a4, a5, a6, a7, a8);

  return a1;
}

uint64_t sub_239BE4CE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 464);
  if ((v12 & 1) == 0)
  {
    result = 0;
    if ((v12 & 2) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v14 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (*(a1 + 432) > *(a4 + 24) && MTLReportFailureTypeEnabled())
    {
      v121 = *(a1 + 432);
      v122 = *(a4 + 24);
      MTLReportFailure();
    }

    if (*(a4 + 304) + *(a1 + 440) > *(a4 + 144) && MTLReportFailureTypeEnabled())
    {
      v122 = *(a4 + 144);
      v123 = *(a4 + 304);
      v121 = *(a1 + 440);
      MTLReportFailure();
    }
  }

  result = objc_msgSend_plugin(a1, a2, a3, a4, a5, a6, a7, a8, v121, v122, v123);
  if (result)
  {
    goto LABEL_29;
  }

  v21 = *(a4 + 112);
  if ((*(a1 + *v14) & 1) != 0 || !v21 || *(a1 + 492) == *(v21 + 332) || (v113 = *(a4 + 112), v114 = MTLReportFailureTypeEnabled(), v21 = v113, !v114))
  {
    v22 = objc_msgSend_PeakAtWeightsWithConvolutionGradientState_(a1, v15, v21, v16, v17, v18, v19, v20);
  }

  else
  {
    MTLReportFailure();
    v22 = objc_msgSend_PeakAtWeightsWithConvolutionGradientState_(a1, v115, v113, v116, v117, v118, v119, v120);
  }

  v30 = *(a1 + *MEMORY[0x277CD7370]);
  v31 = *(v30 + 32);
  v32 = *(a1 + 248);
  v125 = *(a1 + 240);
  v126 = v32;
  v33 = *(a1 + 280);
  v127 = *(a1 + 272);
  v128 = v33;
  v34 = *(a1 + 312);
  v133 = *(a1 + 304);
  v134 = v34;
  v35 = *(a1 + 440);
  v129 = *(a1 + 432);
  v130 = v35;
  v149 = *(a1 + 492);
  v36 = *(a1 + 448);
  v37 = *(a1 + 456);
  v38 = *(a1 + 416);
  *(&v140 + 1) = *(a1 + *v14);
  LOBYTE(v141) = *(a1 + 480);
  v39 = *(a1 + 424);
  v145 = v38;
  v146 = v39;
  v138 = 0uLL;
  LODWORD(v139) = -1;
  *(&v139 + 1) = 0;
  *&v140 = v30;
  v131 = v36;
  v132 = 1;
  v142 = v37;
  v143 = 1;
  v135 = 0;
  v136 = 0;
  *&v137 = 0;
  *(&v137 + 1) = v22;
  v144 = 1;
  v147 = objc_msgSend_maxBatchSize(a1, v23, v24, v25, v26, v27, v28, v29);
  v40 = *(a1 + 488);
  v148 = 0;
  v150 = v40;
  result = (*(*v31 + 32))(v31, &v125, a2, a3, a4);
  if ((v12 & 2) != 0)
  {
LABEL_13:
    v124 = result;
    if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      if (*(a1 + 432) > *(a4 + 24) && MTLReportFailureTypeEnabled())
      {
        v121 = *(a1 + 432);
        v122 = *(a4 + 24);
        MTLReportFailure();
      }

      if (*(a1 + 440) > *(a4 + 80))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v121 = *(a1 + 440);
          v122 = *(a4 + 80);
          MTLReportFailure();
        }
      }
    }

    result = objc_msgSend_plugin(a1, a2, a3, a4, a5, a6, a7, a8, v121, v122);
    if (!result)
    {
      v161 = *(a4 + 224);
      v162 = *(a4 + 240);
      v163 = *(a4 + 16);
      v164 = 0u;
      v48 = *(a4 + 40);
      v166 = 0;
      v167 = v48;
      v165 = 0u;
      v49 = objc_msgSend_width(*a4, v41, v42, v43, v44, v45, v46, v47);
      v168 = v49;
      v57 = objc_msgSend_height(*a4, v50, v51, v52, v53, v54, v55, v56);
      v169 = v57;
      v170 = objc_msgSend_featureChannelFormat(*a4, v58, v59, v60, v61, v62, v63, v64);
      v151 = *(a4 + 280);
      v152 = *(a4 + 296);
      v153 = *(a4 + 72);
      v154 = 0u;
      v65 = *(a4 + 96);
      v156 = 0;
      v157 = v65;
      v155 = 0u;
      v158 = objc_msgSend_width(*(a4 + 56), v66, v67, v68, v69, v70, v71, v72);
      v159 = objc_msgSend_height(*(a4 + 56), v73, v74, v75, v76, v77, v78, v79);
      v160 = objc_msgSend_featureChannelFormat(*(a4 + 56), v80, v81, v82, v83, v84, v85, v86);
      v87 = *(a4 + 112);
      v90 = a4 + 328;
      v88 = *(a4 + 328);
      v89 = *(v90 + 8);
      v91 = *(a1 + *MEMORY[0x277CD7370]);
      v92 = *(v91 + 32);
      v93 = *(a1 + 448);
      v141 = 0;
      v94 = *(a1 + 256);
      v95 = *(a1 + 264);
      v125 = v93;
      v126 = v94;
      v96 = *(a1 + 288);
      v97 = *(a1 + 296);
      v127 = v95;
      v128 = v96;
      v98 = *(a1 + 320);
      v99 = *(a1 + 328);
      v129 = v97;
      v130 = v98;
      v100 = *(a1 + 440);
      v131 = v99;
      v132 = v100;
      v101 = *(a1 + 432);
      v140 = 0u;
      v139 = 0u;
      v102 = *(a1 + 416);
      v133 = v101;
      v134 = v102;
      v103 = *(a1 + 424);
      v138 = 0u;
      v137 = 0u;
      v104 = *(a1 + 456);
      v135 = v103;
      v136 = v104;
      *(&v137 + 1) = v91;
      *&v138 = objc_msgSend_maxBatchSize(a1, v105, v106, v107, v108, v109, v110, v111);
      *(&v138 + 1) = v89;
      *&v139 = 1;
      *(&v139 + 1) = v49;
      v112 = *(a1 + 492);
      *&v140 = v57;
      *(&v140 + 1) = v89;
      LODWORD(v141) = v112;
      return (*(*v92 + 176))(v92, &v125, a2, a3, &v161, &v151, v87, v88) | v124;
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_239BE67E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 464);
  if ((v12 & 1) == 0)
  {
    result = 0;
    if ((v12 & 2) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v14 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (*(a1 + 432) > *(a4 + 130) && MTLReportFailureTypeEnabled())
    {
      v150 = *(a1 + 432);
      v151 = *(a4 + 130);
      MTLReportFailure();
    }

    if (*(a4 + 280) + *(a1 + 440) > *(a4 + 64) && MTLReportFailureTypeEnabled())
    {
      v151 = *(a4 + 280);
      v152 = *(a4 + 64);
      v150 = *(a1 + 440);
      MTLReportFailure();
    }
  }

  result = objc_msgSend_plugin(a1, a2, a3, a4, a5, a6, a7, a8, v150, v151, v152);
  if (result)
  {
    goto LABEL_29;
  }

  v21 = *(*(a4 + 24) + 168);
  if ((*(a1 + *v14) & 1) != 0 || !v21 || *(a1 + 492) == *(v21 + 332) || (v142 = *(*(a4 + 24) + 168), v143 = MTLReportFailureTypeEnabled(), v21 = v142, !v143))
  {
    v22 = objc_msgSend_PeakAtWeightsWithConvolutionGradientState_(a1, v15, v21, v16, v17, v18, v19, v20);
  }

  else
  {
    MTLReportFailure();
    v22 = objc_msgSend_PeakAtWeightsWithConvolutionGradientState_(a1, v144, v142, v145, v146, v147, v148, v149);
  }

  v30 = *(a1 + *MEMORY[0x277CD7370]);
  v31 = *(v30 + 32);
  v32 = *(a1 + 248);
  v155 = *(a1 + 240);
  v156 = v32;
  v33 = *(a1 + 280);
  v157 = *(a1 + 272);
  v158 = v33;
  v34 = *(a1 + 312);
  v163 = *(a1 + 304);
  v164 = v34;
  v35 = *(a1 + 440);
  v159 = *(a1 + 432);
  v160 = v35;
  v179 = *(a1 + 492);
  v36 = *(a1 + 448);
  v37 = *(a1 + 456);
  v38 = *(a1 + 416);
  *(&v170 + 1) = *(a1 + *v14);
  LOBYTE(v171) = *(a1 + 480);
  v39 = *(a1 + 424);
  v175 = v38;
  v176 = v39;
  v168 = 0uLL;
  LODWORD(v169) = -1;
  *(&v169 + 1) = 0;
  *&v170 = v30;
  v161 = v36;
  v162 = 1;
  v172 = v37;
  v173 = 1;
  v165 = 0;
  v166 = 0;
  *&v167 = 0;
  *(&v167 + 1) = v22;
  v174 = 1;
  v177 = objc_msgSend_maxBatchSize(a1, v23, v24, v25, v26, v27, v28, v29);
  v40 = *(a1 + 488);
  v178 = 0;
  v180 = v40;
  result = (*(*v31 + 40))(v31, &v155, a2, a3, a4);
  if ((v12 & 2) != 0)
  {
LABEL_13:
    v154 = result;
    if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      if (*(a1 + 432) > *(a4 + 130) && MTLReportFailureTypeEnabled())
      {
        v150 = *(a1 + 432);
        v151 = *(a4 + 130);
        MTLReportFailure();
      }

      if (*(a1 + 440) > *(a4 + 178))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v150 = *(a1 + 440);
          v151 = *(a4 + 178);
          MTLReportFailure();
        }
      }
    }

    v153 = a3;
    result = objc_msgSend_plugin(a1, a2, a3, a4, a5, a6, a7, a8, v150, v151);
    if (!result)
    {
      v191 = *(a4 + 232);
      v192 = *(a4 + 248);
      v193 = *(a4 + 88);
      v194 = *(a4 + 104);
      v47 = *(a4 + 120);
      v48 = *(a4 + 96);
      v196 = 0;
      v197 = v48;
      v195 = v47;
      v49 = objc_msgSend_objectAtIndexedSubscript_(v48, v41, 0, v42, v43, v44, v45, v46);
      v57 = objc_msgSend_width(v49, v50, v51, v52, v53, v54, v55, v56);
      v198 = v57;
      v64 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v58, 0, v59, v60, v61, v62, v63);
      v72 = objc_msgSend_height(v64, v65, v66, v67, v68, v69, v70, v71);
      v199 = v72;
      v200 = objc_msgSend_featureChannelFormat(**(a4 + 24), v73, v74, v75, v76, v77, v78, v79);
      v181 = *(a4 + 256);
      v182 = *(a4 + 272);
      v183 = *(a4 + 136);
      v184 = *(a4 + 152);
      v80 = *(a4 + 168);
      v81 = *(a4 + 144);
      v186 = 0;
      v187 = v81;
      v185 = v80;
      v88 = objc_msgSend_objectAtIndexedSubscript_(v81, v82, 0, v83, v84, v85, v86, v87);
      v188 = objc_msgSend_width(v88, v89, v90, v91, v92, v93, v94, v95);
      v102 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 144), v96, 0, v97, v98, v99, v100, v101);
      v189 = objc_msgSend_height(v102, v103, v104, v105, v106, v107, v108, v109);
      v190 = objc_msgSend_featureChannelFormat(*(*(a4 + 24) + 56), v110, v111, v112, v113, v114, v115, v116);
      v117 = *(a4 + 16);
      v118 = *(*(a4 + 24) + 168);
      v120 = *a4;
      v119 = *(a4 + 8);
      v121 = *(a1 + *MEMORY[0x277CD7370]);
      v122 = *(v121 + 32);
      v171 = 0;
      v123 = *(a1 + 256);
      v124 = *(a1 + 264);
      v155 = *(a1 + 448);
      v156 = v123;
      v125 = *(a1 + 288);
      v126 = *(a1 + 296);
      v157 = v124;
      v158 = v125;
      v127 = *(a1 + 320);
      v128 = *(a1 + 328);
      v159 = v126;
      v160 = v127;
      v129 = *(a1 + 440);
      v161 = v128;
      v162 = v129;
      v130 = *(a1 + 432);
      v170 = 0u;
      v169 = 0u;
      v131 = *(a1 + 416);
      v163 = v130;
      v164 = v131;
      v132 = *(a1 + 424);
      v168 = 0u;
      v167 = 0u;
      v133 = *(a1 + 456);
      v165 = v132;
      v166 = v133;
      *(&v167 + 1) = v121;
      *&v168 = objc_msgSend_maxBatchSize(a1, v134, v135, v136, v137, v138, v139, v140);
      *(&v168 + 1) = v120;
      *&v169 = v119;
      *(&v169 + 1) = v57;
      v141 = *(a1 + 492);
      *&v170 = v72;
      *(&v170 + 1) = v120;
      LODWORD(v171) = v141;
      return (*(*v122 + 176))(v122, &v155, a2, v153, &v191, &v181, v118, v117) | v154;
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_239BE70F0(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceRowMin alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE71B4(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceColumnMin alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE7278(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceFeatureChannelsMin alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE733C(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceFeatureChannelsArgumentMin alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE7400(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceRowMax alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE74C4(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceColumnMax alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE7588(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceFeatureChannelsMax alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE764C(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceFeatureChannelsArgumentMax alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE7710(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceRowMean alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE77D4(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceColumnMean alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE7898(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceFeatureChannelsMean alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE7968(uint64_t a1, uint64_t a2)
{
  v4 = [MPSCNNPoolingAverage alloc];
  result = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_(v4, v5, a2, 1, 1, 1, 1, v6);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE79B4(void *a1, const char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[13];
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, a5, a6, a7, a8);
  v23 = objc_msgSend_width(v15, v16, v17, v18, v19, v20, v21, v22);
  v30 = objc_msgSend_objectAtIndexedSubscript_(a3, v24, 0, v25, v26, v27, v28, v29);
  v38 = objc_msgSend_height(v30, v31, v32, v33, v34, v35, v36, v37);
  objc_msgSend_setKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_(v14, v39, v23, v38, v23, v38, v40, v41);
  v57[0] = v23 >> 1;
  v57[1] = v38 >> 1;
  v57[2] = 0;
  objc_msgSend_setOffset_(v14, v42, v57, v43, v44, v45, v46, v47);
  objc_msgSend_setEdgeMode_(v14, v48, 0, v49, v50, v51, v52, v53);
  return sub_239BE0AD0(a1, a2, a3, a4, a5, a6, v54, v55);
}

uint64_t sub_239BE7A98(void *a1, const char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[13];
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, a5, a6, a7, a8);
  v22 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0, v17, v18, v19, v20, v21);
  v30 = objc_msgSend_width(v22, v23, v24, v25, v26, v27, v28, v29);
  v37 = objc_msgSend_objectAtIndexedSubscript_(a3, v31, 0, v32, v33, v34, v35, v36);
  v44 = objc_msgSend_objectAtIndexedSubscript_(v37, v38, 0, v39, v40, v41, v42, v43);
  v52 = objc_msgSend_height(v44, v45, v46, v47, v48, v49, v50, v51);
  objc_msgSend_setKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_(v14, v53, v30, v52, v30, v52, v54, v55);
  v69[0] = v30 >> 1;
  v69[1] = v52 >> 1;
  v69[2] = 0;
  objc_msgSend_setOffset_(v14, v56, v69, v57, v58, v59, v60, v61);
  objc_msgSend_setEdgeMode_(v14, v62, 0, v63, v64, v65, v66, v67);
  return sub_239BE0C04(a1, a2, a3, a4, a5, a6);
}

void *sub_239BE7B8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 104);
  v13 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);
  v21 = objc_msgSend_width(v13, v14, v15, v16, v17, v18, v19, v20);
  v28 = objc_msgSend_objectAtIndexedSubscript_(a2, v22, 0, v23, v24, v25, v26, v27);
  v36 = objc_msgSend_height(v28, v29, v30, v31, v32, v33, v34, v35);
  objc_msgSend_setKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_(v12, v37, v21, v36, v21, v36, v38, v39);
  v53[0] = v21 >> 1;
  v53[1] = v36 >> 1;
  v53[2] = 0;
  objc_msgSend_setOffset_(v12, v40, v53, v41, v42, v43, v44, v45);
  objc_msgSend_setEdgeMode_(v12, v46, 0, v47, v48, v49, v50, v51);
  return sub_239BE0970(a1, a2, a3, a4);
}

uint64_t sub_239BE7DFC(uint64_t a1, uint64_t a2)
{
  v4 = [MPSCNNPoolingAverageGradient alloc];
  result = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_(v4, v5, a2, 1, 1, 1, 1, v6);
  *(a1 + 104) = result;
  return result;
}

void *sub_239BE7E48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 104);
  v13 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 1, a4, a5, a6, a7, a8);
  v21 = objc_msgSend_width(v13, v14, v15, v16, v17, v18, v19, v20);
  v28 = objc_msgSend_objectAtIndexedSubscript_(a2, v22, 1, v23, v24, v25, v26, v27);
  v36 = objc_msgSend_height(v28, v29, v30, v31, v32, v33, v34, v35);
  objc_msgSend_setKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_(v12, v37, v21, v36, v21, v36, v38, v39);

  return sub_239BE7EE4(a1, a2, a3, a4);
}

void *sub_239BE7EE4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = xmmword_239D7D680;
  (*(*a1 + 35))(a1, &v50, 0);
  objc_msgSend_setPrimarySourceFeatureChannelOffset_(a1[13], v8, v50, v9, v10, v11, v12, v13);
  objc_msgSend_setPrimarySourceFeatureChannelMaxCount_(a1[13], v14, *(&v50 + 1), v15, v16, v17, v18, v19);
  v50 = xmmword_239D7D680;
  (*(*a1 + 35))(a1, &v50, 1);
  objc_msgSend_setSecondarySourceFeatureChannelOffset_(a1[13], v20, v50, v21, v22, v23, v24, v25);
  objc_msgSend_setSecondarySourceFeatureChannelMaxCount_(a1[13], v26, *(&v50 + 1), v27, v28, v29, v30, v31);
  v37 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(a1[13], v32, a2, a3, v33, v34, v35, v36);
  if (!v37)
  {
    v48 = MTLReportFailureTypeEnabled();
    v37 = 0;
    if (v48)
    {
      v49 = objc_msgSend_padding(a1[13], v38, v47, v39, v40, v41, v42, v43);
      MTLReportFailure();
      v37 = 0;
    }
  }

  if (*(a1[1] + 11))
  {
    v44 = *(a1[1] + 11);
  }

  else
  {
    v44 = a4;
  }

  v45 = v37;
  objc_msgSend_setChannelFormat_(v37, v38, v44, v39, v40, v41, v42, v43, v49);
  return v45;
}

uint64_t sub_239BE805C(void *a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[13];
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 1, a4, a5, a6, a7, a8);
  v23 = objc_msgSend_width(v15, v16, v17, v18, v19, v20, v21, v22);
  v30 = objc_msgSend_objectAtIndexedSubscript_(a3, v24, 1, v25, v26, v27, v28, v29);
  v38 = objc_msgSend_height(v30, v31, v32, v33, v34, v35, v36, v37);
  objc_msgSend_setKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_(v14, v39, v23, v38, v23, v38, v40, v41);
  v48 = objc_msgSend_objectAtIndexedSubscript_(a4, v42, 0, v43, v44, v45, v46, v47);
  v49 = a1[13];
  v56 = objc_msgSend_objectAtIndexedSubscript_(a3, v50, 0, v51, v52, v53, v54, v55);
  v63 = objc_msgSend_objectAtIndexedSubscript_(a3, v57, 1, v58, v59, v60, v61, v62);
  objc_msgSend_encodeToCommandBuffer_sourceGradient_sourceImage_gradientState_destinationGradient_(v49, v64, a2, v56, v63, v48, a6, v65);
  v66 = *(*a1 + 184);

  return v66(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_239BE8184(void *a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[13];
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 1, a4, a5, a6, a7, a8);
  v22 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0, v17, v18, v19, v20, v21);
  v30 = objc_msgSend_width(v22, v23, v24, v25, v26, v27, v28, v29);
  v37 = objc_msgSend_objectAtIndexedSubscript_(a3, v31, 1, v32, v33, v34, v35, v36);
  v44 = objc_msgSend_objectAtIndexedSubscript_(v37, v38, 0, v39, v40, v41, v42, v43);
  v52 = objc_msgSend_height(v44, v45, v46, v47, v48, v49, v50, v51);
  objc_msgSend_setKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_(v14, v53, v30, v52, v30, v52, v54, v55);
  v62 = objc_msgSend_objectAtIndexedSubscript_(a4, v56, 0, v57, v58, v59, v60, v61);
  (*(*a1 + 192))(a1, a2, a3, a4, a5, a6);
  v63 = a1[13];
  v70 = objc_msgSend_objectAtIndexedSubscript_(a3, v64, 0, v65, v66, v67, v68, v69);
  v78 = objc_msgSend_objectAtIndexedSubscript_(a3, v71, 1, v72, v73, v74, v75, v76);

  return objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_gradientStates_destinationGradients_(v63, v77, a2, v70, v78, v62, a6, v79);
}

uint64_t sub_239BE833C(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceRowSum alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE8400(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceColumnSum alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BE84E4(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReduceFeatureChannelsSum alloc];
  v11 = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  LODWORD(v12) = *(*(a1 + 112) + 104);
  result = objc_msgSend_setWeight_(v11, v13, v14, v15, v16, v17, v18, v19, v12);
  *(a1 + 104) = v11;
  return result;
}

void sub_239BE853C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE8580(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE85C4(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE8608(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE864C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE8690(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE86D4(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE8718(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE875C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE87A0(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE87E4(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE8828(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE886C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE88B0(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BE88F4(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239BE8934(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 104);
  v10 = &a2[objc_msgSend_destinationFeatureChannelOffset(v8, a2, a3, a4, a5, a6, a7, a8)];

  return objc_msgSend_setDestinationFeatureChannelOffset_(v8, v9, v10, v11, v12, v13, v14, v15);
}

void sub_239BE897C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

unint64_t sub_239BE89F0(unint64_t result, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(result + 104) + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (a5 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!a4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
    if (objc_msgSend_count(a4, v10, v11, v12, v13, v14, v15, v16) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_count(a3, v17, v18, v19, v20, v21, v22, v23);
    result = objc_msgSend_count(a3, v24, v25, v26, v27, v28, v29, v30);
    if (result <= 1)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {

        return MTLReportFailure();
      }
    }
  }

  return result;
}

unint64_t sub_239BE8B28(unint64_t result, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(result + 104) + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (a5 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!a4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
    if (objc_msgSend_count(a4, v10, v11, v12, v13, v14, v15, v16) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_count(a3, v17, v18, v19, v20, v21, v22, v23);
    result = objc_msgSend_count(a3, v24, v25, v26, v27, v28, v29, v30);
    if (result <= 1)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {

        return MTLReportFailure();
      }
    }
  }

  return result;
}

void *sub_239BE8C60(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if ((*(result[13] + *MEMORY[0x277CD7378]) & 0x10) == 0)
  {
    return result;
  }

  v10 = result;
  v11 = result[2];
  if (!v11)
  {
    v11 = result[1];
  }

  v12 = *(v11 + 64);
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, a5, a6, a7, a8);
  v20 = MEMORY[0x277CD7318];
  v21 = *(v13 + *MEMORY[0x277CD7318] + 4) & 0x7FF;
  if (v21 <= 0x307)
  {
    if ((*(v13 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) <= 0x117)
    {
      if (v21 == 264)
      {
        v22 = "bfloat16";
        goto LABEL_30;
      }

      if (v21 == 267)
      {
        v22 = "float16";
        goto LABEL_30;
      }
    }

    else
    {
      switch(v21)
      {
        case 0x118u:
          v22 = "float32";
          goto LABEL_30;
        case 0x208u:
          v22 = "unorm8";
          goto LABEL_30;
        case 0x210u:
          v22 = "unorm16";
          goto LABEL_30;
      }
    }
  }

  else if ((*(v13 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) > 0x60F)
  {
    switch(v21)
    {
      case 0x610u:
        v22 = "uint6";
        goto LABEL_30;
      case 0x708u:
        v22 = "sint8";
        goto LABEL_30;
      case 0x710u:
        v22 = "sint16";
        goto LABEL_30;
    }
  }

  else
  {
    switch(v21)
    {
      case 0x308u:
        v22 = "snorm8";
        goto LABEL_30;
      case 0x310u:
        v22 = "snorm16";
        goto LABEL_30;
      case 0x608u:
        v22 = "uint8";
        goto LABEL_30;
    }
  }

  v22 = "<unknown channel format>";
LABEL_30:
  v216 = v22;
  v23 = objc_msgSend_objectAtIndexedSubscript_(a3, v14, 1, v15, v16, v17, v18, v19);
  v31 = *v20;
  v32 = *(v23 + v31 + 4) & 0x7FF;
  if (v32 <= 0x307)
  {
    if ((*(v23 + v31 + 4) & 0x7FFu) <= 0x117)
    {
      if (v32 == 264)
      {
        v33 = "bfloat16";
        goto LABEL_56;
      }

      if (v32 == 267)
      {
        v33 = "float16";
        goto LABEL_56;
      }
    }

    else
    {
      switch(v32)
      {
        case 0x118u:
          v33 = "float32";
          goto LABEL_56;
        case 0x208u:
          v33 = "unorm8";
          goto LABEL_56;
        case 0x210u:
          v33 = "unorm16";
          goto LABEL_56;
      }
    }
  }

  else if ((*(v23 + v31 + 4) & 0x7FFu) > 0x60F)
  {
    switch(v32)
    {
      case 0x610u:
        v33 = "uint6";
        goto LABEL_56;
      case 0x708u:
        v33 = "sint8";
        goto LABEL_56;
      case 0x710u:
        v33 = "sint16";
        goto LABEL_56;
    }
  }

  else
  {
    switch(v32)
    {
      case 0x308u:
        v33 = "snorm8";
        goto LABEL_56;
      case 0x310u:
        v33 = "snorm16";
        goto LABEL_56;
      case 0x608u:
        v33 = "uint8";
        goto LABEL_56;
    }
  }

  v33 = "<unknown channel format>";
LABEL_56:
  v215 = v33;
  v34 = *(a6 + v31 + 4) & 0x7FF;
  v226 = v12;
  if (v34 <= 775)
  {
    if (v34 <= 279)
    {
      if (v34 == 264)
      {
        v35 = "bfloat16";
        goto LABEL_82;
      }

      if (v34 == 267)
      {
        v35 = "float16";
        goto LABEL_82;
      }
    }

    else
    {
      switch(v34)
      {
        case 280:
          v35 = "float32";
          goto LABEL_82;
        case 520:
          v35 = "unorm8";
          goto LABEL_82;
        case 528:
          v35 = "unorm16";
          goto LABEL_82;
      }
    }

LABEL_81:
    v35 = "<unknown channel format>";
    goto LABEL_82;
  }

  if (v34 > 1551)
  {
    switch(v34)
    {
      case 1552:
        v35 = "uint6";
        goto LABEL_82;
      case 1800:
        v35 = "sint8";
        goto LABEL_82;
      case 1808:
        v35 = "sint16";
        goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (v34 == 776)
  {
    v35 = "snorm8";
    goto LABEL_82;
  }

  if (v34 == 784)
  {
    v35 = "snorm16";
    goto LABEL_82;
  }

  if (v34 != 1544)
  {
    goto LABEL_81;
  }

  v35 = "uint8";
LABEL_82:
  v214 = v35;
  v36 = objc_msgSend_padding(v10[13], v24, v25, v26, v27, v28, v29, v30);
  if (objc_opt_respondsToSelector())
  {
    v222 = objc_msgSend_label(v36, v37, v38, v39, v40, v41, v42, v43);
  }

  else
  {
    v222 = @"<missing label>";
  }

  v225 = v10[13];
  v44 = (*(*v10 + 200))(v10);
  v51 = objc_msgSend_cStringUsingEncoding_(v44, v45, 1, v46, v47, v48, v49, v50);
  v223 = v10[15];
  v224 = v51;
  v58 = objc_msgSend_objectAtIndexedSubscript_(a3, v52, 0, v53, v54, v55, v56, v57);
  v221 = objc_msgSend_width(v58, v59, v60, v61, v62, v63, v64, v65);
  v72 = objc_msgSend_objectAtIndexedSubscript_(a3, v66, 0, v67, v68, v69, v70, v71);
  v220 = objc_msgSend_height(v72, v73, v74, v75, v76, v77, v78, v79);
  v86 = objc_msgSend_objectAtIndexedSubscript_(a3, v80, 0, v81, v82, v83, v84, v85);
  v219 = objc_msgSend_featureChannels(v86, v87, v88, v89, v90, v91, v92, v93);
  v101 = *v10[4];
  do
  {
    v102 = v101;
    v101 = *(v101 + 40);
  }

  while (v101);
  v218 = *(v102 + 64);
  v217 = objc_msgSend_primarySourceFeatureChannelOffset(v10[13], v94, v95, v96, v97, v98, v99, v100);
  v109 = objc_msgSend_objectAtIndexedSubscript_(a3, v103, 1, v104, v105, v106, v107, v108);
  v117 = objc_msgSend_width(v109, v110, v111, v112, v113, v114, v115, v116);
  v124 = objc_msgSend_objectAtIndexedSubscript_(a3, v118, 1, v119, v120, v121, v122, v123);
  v132 = objc_msgSend_height(v124, v125, v126, v127, v128, v129, v130, v131);
  v139 = objc_msgSend_objectAtIndexedSubscript_(a3, v133, 1, v134, v135, v136, v137, v138);
  v154 = objc_msgSend_featureChannels(v139, v140, v141, v142, v143, v144, v145, v146);
  v155 = *(v10[4] + 8);
  do
  {
    v156 = v155;
    v155 = *(v155 + 40);
  }

  while (v155);
  v157 = *(v156 + 64);
  v158 = objc_msgSend_secondarySourceFeatureChannelOffset(v10[13], v147, v148, v149, v150, v151, v152, v153);
  v166 = objc_msgSend_width(a6, v159, v160, v161, v162, v163, v164, v165);
  v174 = objc_msgSend_height(a6, v167, v168, v169, v170, v171, v172, v173);
  v182 = objc_msgSend_featureChannels(a6, v175, v176, v177, v178, v179, v180, v181);
  v190 = objc_msgSend_destinationFeatureChannelOffset(v10[13], v183, v184, v185, v186, v187, v188, v189);
  v198 = objc_msgSend_label(v10[13], v191, v192, v193, v194, v195, v196, v197);
  v205 = objc_msgSend_cStringUsingEncoding_(v198, v199, 1, v200, v201, v202, v203, v204);
  v212 = objc_msgSend_cStringUsingEncoding_(v222, v206, 1, v207, v208, v209, v210, v211);
  return sub_239BE215C(v225, v213, "%s[%lu] {%lu x %lu x %lu %s}[%lu](offset:%lu) + {%lu x %lu x %lu %s}[%lu](offset:%lu) -> {%lu x %lu x %lu %s}[%lu]  offset: %lu %s\n\tpadding policy: %s\n", v224, v223, v221, v220, v219, v216, v218, v217, v117, v132, v154, v215, v157, v158, v166, v174, v182, v214, v226, v190, v205, v212);
}

void *sub_239BE9230(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if ((*(result[13] + *MEMORY[0x277CD7378]) & 0x10) == 0)
  {
    return result;
  }

  v10 = result;
  v11 = result[2];
  if (!v11)
  {
    v11 = result[1];
  }

  v12 = *(v11 + 64);
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, a5, a6, a7, a8);
  v20 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, 0, v15, v16, v17, v18, v19);
  v27 = MEMORY[0x277CD7318];
  v28 = *(v20 + *MEMORY[0x277CD7318] + 4) & 0x7FF;
  if (v28 <= 0x307)
  {
    if ((*(v20 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) <= 0x117)
    {
      if (v28 == 264)
      {
        v29 = "bfloat16";
        goto LABEL_30;
      }

      if (v28 == 267)
      {
        v29 = "float16";
        goto LABEL_30;
      }
    }

    else
    {
      switch(v28)
      {
        case 0x118u:
          v29 = "float32";
          goto LABEL_30;
        case 0x208u:
          v29 = "unorm8";
          goto LABEL_30;
        case 0x210u:
          v29 = "unorm16";
          goto LABEL_30;
      }
    }
  }

  else if ((*(v20 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) > 0x60F)
  {
    switch(v28)
    {
      case 0x610u:
        v29 = "uint6";
        goto LABEL_30;
      case 0x708u:
        v29 = "sint8";
        goto LABEL_30;
      case 0x710u:
        v29 = "sint16";
        goto LABEL_30;
    }
  }

  else
  {
    switch(v28)
    {
      case 0x308u:
        v29 = "snorm8";
        goto LABEL_30;
      case 0x310u:
        v29 = "snorm16";
        goto LABEL_30;
      case 0x608u:
        v29 = "uint8";
        goto LABEL_30;
    }
  }

  v29 = "<unknown channel format>";
LABEL_30:
  v332 = v29;
  v30 = objc_msgSend_objectAtIndexedSubscript_(a3, v21, 1, v22, v23, v24, v25, v26);
  v43 = *(objc_msgSend_objectAtIndexedSubscript_(v30, v31, 0, v32, v33, v34, v35, v36) + *v27 + 4) & 0x7FF;
  if (v43 <= 0x307)
  {
    if (v43 <= 279)
    {
      if (v43 == 264)
      {
        v44 = "bfloat16";
        goto LABEL_56;
      }

      if (v43 == 267)
      {
        v44 = "float16";
        goto LABEL_56;
      }
    }

    else
    {
      switch(v43)
      {
        case 280:
          v44 = "float32";
          goto LABEL_56;
        case 520:
          v44 = "unorm8";
          goto LABEL_56;
        case 528:
          v44 = "unorm16";
          goto LABEL_56;
      }
    }
  }

  else if (v43 > 1551)
  {
    switch(v43)
    {
      case 1552:
        v44 = "uint6";
        goto LABEL_56;
      case 1800:
        v44 = "sint8";
        goto LABEL_56;
      case 1808:
        v44 = "sint16";
        goto LABEL_56;
    }
  }

  else
  {
    switch(v43)
    {
      case 776:
        v44 = "snorm8";
        goto LABEL_56;
      case 784:
        v44 = "snorm16";
        goto LABEL_56;
      case 1544:
        v44 = "uint8";
        goto LABEL_56;
    }
  }

  v44 = "<unknown channel format>";
LABEL_56:
  v331 = v44;
  v52 = *(objc_msgSend_objectAtIndexedSubscript_(a6, v37, 0, v38, v39, v40, v41, v42) + *v27 + 4) & 0x7FF;
  v345 = v12;
  if (v52 <= 0x307)
  {
    if (v52 <= 279)
    {
      if (v52 == 264)
      {
        v53 = "bfloat16";
        goto LABEL_82;
      }

      if (v52 == 267)
      {
        v53 = "float16";
        goto LABEL_82;
      }
    }

    else
    {
      switch(v52)
      {
        case 280:
          v53 = "float32";
          goto LABEL_82;
        case 520:
          v53 = "unorm8";
          goto LABEL_82;
        case 528:
          v53 = "unorm16";
          goto LABEL_82;
      }
    }

LABEL_81:
    v53 = "<unknown channel format>";
    goto LABEL_82;
  }

  if (v52 > 1551)
  {
    switch(v52)
    {
      case 1552:
        v53 = "uint6";
        goto LABEL_82;
      case 1800:
        v53 = "sint8";
        goto LABEL_82;
      case 1808:
        v53 = "sint16";
        goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (v52 == 776)
  {
    v53 = "snorm8";
    goto LABEL_82;
  }

  if (v52 == 784)
  {
    v53 = "snorm16";
    goto LABEL_82;
  }

  if (v52 != 1544)
  {
    goto LABEL_81;
  }

  v53 = "uint8";
LABEL_82:
  v330 = v53;
  v54 = objc_msgSend_padding(v10[13], v45, v46, v47, v48, v49, v50, v51);
  if (objc_opt_respondsToSelector())
  {
    v341 = objc_msgSend_label(v54, v55, v56, v57, v58, v59, v60, v61);
  }

  else
  {
    v341 = @"<missing label>";
  }

  v344 = v10[13];
  v62 = (*(*v10 + 200))(v10);
  v69 = objc_msgSend_cStringUsingEncoding_(v62, v63, 1, v64, v65, v66, v67, v68);
  v342 = v10[15];
  v343 = v69;
  v76 = objc_msgSend_objectAtIndexedSubscript_(a3, v70, 0, v71, v72, v73, v74, v75);
  v340 = objc_msgSend_count(v76, v77, v78, v79, v80, v81, v82, v83);
  v90 = objc_msgSend_objectAtIndexedSubscript_(a3, v84, 0, v85, v86, v87, v88, v89);
  v97 = objc_msgSend_objectAtIndexedSubscript_(v90, v91, 0, v92, v93, v94, v95, v96);
  v339 = objc_msgSend_width(v97, v98, v99, v100, v101, v102, v103, v104);
  v111 = objc_msgSend_objectAtIndexedSubscript_(a3, v105, 0, v106, v107, v108, v109, v110);
  v118 = objc_msgSend_objectAtIndexedSubscript_(v111, v112, 0, v113, v114, v115, v116, v117);
  v338 = objc_msgSend_height(v118, v119, v120, v121, v122, v123, v124, v125);
  v132 = objc_msgSend_objectAtIndexedSubscript_(a3, v126, 0, v127, v128, v129, v130, v131);
  v139 = objc_msgSend_objectAtIndexedSubscript_(v132, v133, 0, v134, v135, v136, v137, v138);
  v337 = objc_msgSend_featureChannels(v139, v140, v141, v142, v143, v144, v145, v146);
  v154 = *v10[4];
  do
  {
    v155 = v154;
    v154 = *(v154 + 40);
  }

  while (v154);
  v336 = *(v155 + 64);
  v335 = objc_msgSend_primarySourceFeatureChannelOffset(v10[13], v147, v148, v149, v150, v151, v152, v153);
  v162 = objc_msgSend_objectAtIndexedSubscript_(a3, v156, 1, v157, v158, v159, v160, v161);
  v334 = objc_msgSend_count(v162, v163, v164, v165, v166, v167, v168, v169);
  v176 = objc_msgSend_objectAtIndexedSubscript_(a3, v170, 1, v171, v172, v173, v174, v175);
  v183 = objc_msgSend_objectAtIndexedSubscript_(v176, v177, 0, v178, v179, v180, v181, v182);
  v333 = objc_msgSend_width(v183, v184, v185, v186, v187, v188, v189, v190);
  v197 = objc_msgSend_objectAtIndexedSubscript_(a3, v191, 1, v192, v193, v194, v195, v196);
  v204 = objc_msgSend_objectAtIndexedSubscript_(v197, v198, 0, v199, v200, v201, v202, v203);
  v212 = objc_msgSend_height(v204, v205, v206, v207, v208, v209, v210, v211);
  v219 = objc_msgSend_objectAtIndexedSubscript_(a3, v213, 1, v214, v215, v216, v217, v218);
  v226 = objc_msgSend_objectAtIndexedSubscript_(v219, v220, 0, v221, v222, v223, v224, v225);
  v241 = objc_msgSend_featureChannels(v226, v227, v228, v229, v230, v231, v232, v233);
  v242 = *(v10[4] + 8);
  do
  {
    v243 = v242;
    v242 = *(v242 + 40);
  }

  while (v242);
  v244 = *(v243 + 64);
  v245 = objc_msgSend_secondarySourceFeatureChannelOffset(v10[13], v234, v235, v236, v237, v238, v239, v240);
  v253 = objc_msgSend_count(a6, v246, v247, v248, v249, v250, v251, v252);
  v260 = objc_msgSend_objectAtIndexedSubscript_(a6, v254, 0, v255, v256, v257, v258, v259);
  v268 = objc_msgSend_width(v260, v261, v262, v263, v264, v265, v266, v267);
  v275 = objc_msgSend_objectAtIndexedSubscript_(a6, v269, 0, v270, v271, v272, v273, v274);
  v283 = objc_msgSend_height(v275, v276, v277, v278, v279, v280, v281, v282);
  v290 = objc_msgSend_objectAtIndexedSubscript_(a6, v284, 0, v285, v286, v287, v288, v289);
  v298 = objc_msgSend_featureChannels(v290, v291, v292, v293, v294, v295, v296, v297);
  v306 = objc_msgSend_destinationFeatureChannelOffset(v10[13], v299, v300, v301, v302, v303, v304, v305);
  v314 = objc_msgSend_label(v10[13], v307, v308, v309, v310, v311, v312, v313);
  v321 = objc_msgSend_cStringUsingEncoding_(v314, v315, 1, v316, v317, v318, v319, v320);
  v328 = objc_msgSend_cStringUsingEncoding_(v341, v322, 1, v323, v324, v325, v326, v327);
  return sub_239BE215C(v344, v329, "%s[%lu] %lu*{%lu x %lu x %lu %s}[%lu](offset:%lu) + %lu*{%lu x %lu x %lu %s}[%lu](offset:%lu) -> %lu*{%lu x %lu x %lu %s}[%lu]  offset: %lu %s\n\tpadding policy: %s\n", v343, v342, v340, v339, v338, v337, v332, v336, v335, v334, v333, v212, v241, v331, v244, v245, v253, v268, v283, v298, v330, v345, v306, v321, v328);
}

NSString *sub_239BE98B4(uint64_t a1)
{
  if (*(a1 + 104))
  {
    v1 = objc_opt_class();
  }

  else
  {
    v1 = objc_opt_class();
  }

  return NSStringFromClass(v1);
}

void *sub_239BE9908(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    return 0;
  }

  v9 = a7;
  v14 = *(a1 + 104);
  v16 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);
  v24 = objc_msgSend_objectAtIndexedSubscript_(a2, v17, 1, v18, v19, v20, v21, v22);
  if (v9)
  {
    result = objc_msgSend_temporaryResultStateForCommandBuffer_primaryImage_secondaryImage_sourceStates_destinationImage_(v14, v23, a6, v16, v24, a3, a4, v26);
    if (!result)
    {
      return result;
    }

    v33 = *(**(a1 + 80) + 72) + *(**(a1 + 80) + 80);
    if (v33 != 1)
    {
      v34 = result;
      objc_msgSend_setReadCount_(result, v27, v33, v28, v29, v30, v31, v32);
      result = v34;
    }
  }

  else
  {
    result = objc_msgSend_resultStateForPrimaryImage_secondaryImage_sourceStates_destinationImage_(v14, v23, v16, v24, a3, a4, v25, v26);
    if (!result)
    {
      return result;
    }
  }

  v35 = **(a1 + 8);
  if (v35)
  {
    v36 = result;
    v37 = objc_msgSend_label(v35, v27, v33, v28, v29, v30, v31, v32);
    if (v37)
    {
      objc_msgSend_setLabel_(v36, v38, v37, v39, v40, v41, v42, v43);
    }

    return v36;
  }

  return result;
}

void *sub_239BE9A18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    return 0;
  }

  v10 = a7;
  v15 = *(a1 + 104);
  v17 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, 0, a6, a7, a8);
  v25 = objc_msgSend_objectAtIndexedSubscript_(a2, v18, 1, v19, v20, v21, v22, v23);
  if (v10)
  {
    v28 = objc_msgSend_temporaryResultStateBatchForCommandBuffer_primaryImage_secondaryImage_sourceStates_destinationImage_(v15, v24, a6, v17, v25, a3, a4, v27);
    v8 = v28;
    if (!v28)
    {
      return v8;
    }

    v35 = *(**(a1 + 80) + 72) + *(**(a1 + 80) + 80);
    v36 = (v35 - 1);
    if (v35 != 1)
    {
      MPSStateBatchIncrementReadCount(v28, v36);
    }
  }

  else
  {
    v8 = objc_msgSend_resultStateBatchForPrimaryImage_secondaryImage_sourceStates_destinationImage_(v15, v24, v17, v25, a3, a4, v26, v27);
    if (!v8)
    {
      return v8;
    }
  }

  v37 = **(a1 + 8);
  if (v37)
  {
    v38 = objc_msgSend_label(v37, v36, v29, v30, v31, v32, v33, v34);
    if (v38)
    {
      v46 = v38;
      v47 = objc_msgSend_count(v8, v39, v40, v41, v42, v43, v44, v45);
      if (v47)
      {
        v54 = v47;
        for (i = 0; i != v54; ++i)
        {
          v56 = objc_msgSend_objectAtIndexedSubscript_(v8, v48, i, v49, v50, v51, v52, v53);
          objc_msgSend_setLabel_(v56, v57, v46, v58, v59, v60, v61, v62);
        }
      }
    }
  }

  return v8;
}

uint64_t sub_239BE9B54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 104);
  v12 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);
  v19 = objc_msgSend_objectAtIndexedSubscript_(a2, v13, 1, v14, v15, v16, v17, v18);

  return MEMORY[0x2821F9670](v11, sel_encodingStorageSizeForPrimaryImage_secondaryImage_sourceStates_destinationImage_, v12, v19, a3, a4, v20, v21);
}

uint64_t sub_239BE9BD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 104);
  v12 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);
  v19 = objc_msgSend_objectAtIndexedSubscript_(a2, v13, 1, v14, v15, v16, v17, v18);

  return MEMORY[0x2821F9670](v11, sel_batchEncodingStorageSizeForPrimaryImage_secondaryImage_sourceStates_destinationImage_, v12, v19, a3, a4, v20, v21);
}

uint64_t sub_239BEACD4(uint64_t a1, uint64_t a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v8 = v3;
  v12 = 1;
  v9 = *(a2 + 64);
  if (v9)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v12, 53, 0, v5, v6, v7);
    v9 = *(a2 + 64);
    if ((v9 & 2) == 0)
    {
LABEL_3:
      if ((v9 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_3;
  }

  objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 53, 1, v5, v6, v7);
  v9 = *(a2 + 64);
  if ((v9 & 4) == 0)
  {
LABEL_4:
    if ((v9 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 53, 3, v5, v6, v7);
    if ((*(a2 + 64) & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 53, 2, v5, v6, v7);
  v9 = *(a2 + 64);
  if ((v9 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v9 & 0x10) != 0)
  {
LABEL_6:
    objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 53, 4, v5, v6, v7);
  }

LABEL_7:
  v10 = _MPSNewSpecializedFunction();

  return v10;
}

uint64_t sub_239BEB408(void **a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a4 + 16);
  v18[0] = *a4;
  v18[1] = v8;
  v19 = *(a4 + 32);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = *(a4 + 56);
  v24 = 0;
  v25 = v9;
  v10 = *(a4 + 64);
  v11 = *(a4 + 80);
  v28 = *(a4 + 96);
  v27 = v11;
  v26 = v10;
  v12 = *(a4 + 152);
  v13 = *(a4 + 136);
  v30 = *(a4 + 120);
  v31 = v13;
  v39 = *(a4 + 168);
  v14 = *(a4 + 192);
  v34 = *(a4 + 184);
  v35 = 0;
  v32 = v12;
  v33 = v39;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v40 = v34;
  v41 = v14;
  v42 = *(a4 + 200);
  v43 = v42;
  v44 = 0;
  v45 = 0;
  v15 = *(a4 + 48);
  *(&v19 + 1) = *(a4 + 40);
  v20 = v15;
  v16 = *(a4 + 112);
  *(&v28 + 1) = *(a4 + 104);
  v29 = v16;
  sub_239BEC5DC(a1, a2, a3, v18, 0, a6, a7, a8);
  return 0;
}

uint64_t sub_239BEB4CC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8);
  v13 = malloc_type_calloc(v12, 0xB0uLL, 0x10E00404CD50508uLL);
  v17 = v13;
  memset(&v46[16], 0, 32);
  v45 = 0u;
  *v46 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = *(a4 + 64);
  v43 = *(a4 + 48);
  v44 = 0u;
  v39 = *a4;
  v40 = *(a4 + 8);
  v41 = v13;
  LODWORD(v42) = *(a4 + 32);
  *(&v42 + 1) = *(a4 + 40);
  *&v45 = *(a4 + 80);
  v44 = v18;
  DWORD2(v45) = *(a4 + 88);
  *v46 = *(a4 + 96);
  *&v46[24] = *(a4 + 120);
  *&v46[8] = *(a4 + 104);
  v48 = *&v46[8];
  v49 = *&v46[24];
  v19 = *(a4 + 136);
  v20 = *(a4 + 152);
  v52 = *(a4 + 168);
  v51 = v20;
  v50 = v19;
  v53 = *(a4 + 184);
  v21 = *(a4 + 200);
  v22 = *(a4 + 208);
  v47 = *v46;
  v54 = v21;
  v55 = v53;
  v56 = v21;
  v57 = v22;
  v58 = *(a4 + 216);
  v59 = v58;
  if (v40)
  {
    v23 = 0;
    v24 = 0;
    v25 = v13 + 112;
    do
    {
      v26 = (*(a4 + 24) + v23);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      *(v25 - 8) = *(v26 + 6);
      *(v25 - 6) = v28;
      *(v25 - 5) = v29;
      *(v25 - 7) = v27;
      v30 = (*(a4 + 24) + v23);
      v31 = *v30;
      v32 = v30[1];
      v33 = v30[2];
      *(v25 - 1) = *(v30 + 6);
      *(v25 - 24) = v33;
      *(v25 - 40) = v32;
      *(v25 - 56) = v31;
      v34 = *(a4 + 24) + v23;
      v35 = *(v34 + 56);
      v36 = *(v34 + 72);
      v37 = *(v34 + 88);
      *(v25 + 6) = *(v34 + 104);
      *(v25 + 1) = v36;
      *(v25 + 2) = v37;
      *v25 = v35;
      *(v25 + 7) = *(*(a4 + 24) + v23 + 112);
      ++v24;
      v23 += 120;
      v25 += 176;
    }

    while (v24 < *(a4 + 8));
  }

  sub_239BECE58(a1, a2, a3, &v39, 0, v14, v15, v16);
  free(v17);
  return 0;
}

uint64_t sub_239BEC5DC(void **a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v262 = *(a4 + 216);
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v266 = a5;
  if (a5)
  {
    v13 = 56;
  }

  else
  {
    v13 = 43;
  }

  v14 = &a1[v13];
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  objc_msgSend_clipRect(a1, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_keepProbability(a1, v18, v19, v20, v21, v22, v23, v24);
  v26 = v25;
  if ((v11 & 1) == 0)
  {
    v27 = v16 > 1 || v15 > 1;
    v28 = v27 || v17 >= 2;
    if (v28 && MTLReportFailureTypeEnabled())
    {
      v250 = objc_opt_class();
      v253 = v15;
      v254 = v17;
      v251 = NSStringFromClass(v250);
      v252 = v16;
      MTLReportFailure();
    }
  }

  v257 = v17;
  v258 = v15;
  v29 = (*(*v12 + 5))(v12);
  v37 = (*(*v12 + 3))(v12);
  v38 = *(a4 + 112);
  if (v38)
  {
    v261 = v38[41];
    v259 = v38[42];
    v39 = v38[43];
    v256 = v16;
    if (objc_msgSend_featureChannels(*a4, v30, v31, v32, v33, v34, v35, v36) == 2)
    {
      goto LABEL_14;
    }

LABEL_35:
    v103 = objc_msgSend_featureChannels(*a4, v40, v41, v42, v43, v44, v45, v46, v251, v252, v253, v254);
    if (v103 == 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = 4;
    }

    v255 = v39;
    if ((v266 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

  v77 = objc_msgSend_width(*a4, v30, v31, v32, v33, v34, v35, v36);
  v85 = objc_msgSend_height(*a4, v78, v79, v80, v81, v82, v83, v84);
  v93 = objc_msgSend_featureChannels(*a4, v86, v87, v88, v89, v90, v91, v92);
  if (v16)
  {
    v101 = v77;
  }

  else
  {
    v101 = 1;
  }

  v261 = v101;
  if (v258)
  {
    v102 = v85;
  }

  else
  {
    v102 = 1;
  }

  v259 = v102;
  if (v257)
  {
    v39 = (v93 + 3) >> 2;
  }

  else
  {
    v39 = 1;
  }

  v256 = v16;
  if (objc_msgSend_featureChannels(*a4, v94, v95, v96, v97, v98, v99, v100, v251, v252, v253, v254) != 2)
  {
    goto LABEL_35;
  }

LABEL_14:
  v255 = v39;
  v47 = 2;
  if ((v266 & 1) == 0)
  {
LABEL_15:
    v48 = v29 | (16 * v37);
    v49 = v39 * v262 * v259 * v261 * v47;
    v50 = objc_msgSend_newBufferWithLength_options_(v12[2], v40, v49, v48, v43, v44, v45, v46, v251, v252, v253, v254);
    if (v38)
    {
      v51 = v38[45];
      if (v51)
      {
      }

      v38[45] = v50;
      v38[44] = 0;
    }

    if (v50)
    {
      v52 = objc_msgSend_userDictionary(a3, v40, v41, v42, v43, v44, v45, v46);
      v65 = objc_msgSend_objectForKey_(v52, v53, @"_MPSCommandBufferRetainListKey", v54, v55, v56, v57, v58);
      if (!v65)
      {
        v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
        objc_msgSend_setObject_forKey_(v52, v66, v65, @"_MPSCommandBufferRetainListKey", v67, v68, v69, v70);

        v289 = MEMORY[0x277D85DD0];
        v290 = 3221225472;
        v291 = sub_239BECE1C;
        *&v292 = &unk_278B28F28;
        *(&v292 + 1) = @"_MPSCommandBufferRetainListKey";
        objc_msgSend_addCompletedHandler_(a3, v71, &v289, v72, v73, v74, v75, v76);
      }

      objc_msgSend_addObject_(v65, v59, v50, v60, v61, v62, v63, v64);
    }

    v263 = v50;
    if (v26 != 1.0)
    {
      objc_msgSend_encodeToCommandBuffer_computeEncoder_destinationBuffer_destinationOffset_numEntries_(a1[46], v40, a3, a2, v50, 0, v49, v46);
    }

    goto LABEL_44;
  }

LABEL_39:
  v104 = v38[45];
  if (v104)
  {
    v105 = objc_msgSend_userDictionary(a3, v40, v41, v42, v43, v44, v45, v46);
    v112 = objc_msgSend_objectForKey_(v105, v106, @"_MPSCommandBufferRetainListKey", v107, v108, v109, v110, v111);
    if (!v112)
    {
      v119 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v105, v120, v119, @"_MPSCommandBufferRetainListKey", v121, v122, v123, v124);

      v289 = MEMORY[0x277D85DD0];
      v290 = 3221225472;
      v291 = sub_239BECE1C;
      *&v292 = &unk_278B28F28;
      *(&v292 + 1) = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(a3, v125, &v289, v126, v127, v128, v129, v130);
      v112 = v119;
    }

    v263 = v104;
    objc_msgSend_addObject_(v112, v113, v104, v114, v115, v116, v117, v118, v251, v252, v253, v254);
  }

  else
  {
    v263 = 0;
  }

LABEL_44:
  v131 = *(a4 + 136);
  v132 = *(a4 + 16);
  v133 = objc_msgSend_maxBatchSize(a1, v40, v41, v42, v43, v44, v45, v46, v251, v252, v253, v254);
  *&v134 = -1;
  *(&v134 + 1) = -1;
  v294 = v134;
  v293 = v134;
  v292 = v134;
  v295 = -1;
  v290 = v131 & 0x3F | ((v132 & 0x3F) << 6);
  v291 = 0;
  v289 = v133;
  MPSLibrary::CreateUberShaderKey();
  v135 = v47 * v261 * v259;
  v136 = *(a4 + 24) + 3;
  v137 = v136 >> 2;
  v287[0] = v47 * v256;
  v287[1] = v47 * v261 * v258;
  v287[2] = v135 * v257;
  v287[3] = v135 * v255;
  *&v287[4] = 1.0 / v26;
  if ((v136 & 0x3FFF8) != 0)
  {
    v138 = (v136 >> 2);
    v139 = __clz(0x80000000 / v138);
    v140 = (0x80000000 / v138) >> (16 - v139);
    v141 = v139 + 15;
    v142 = -65536 * v137 * v140 / v138;
    if (v142 <= v140)
    {
      v143 = v140;
    }

    else
    {
      v143 = v140 + 1;
    }

    if (v142 <= v140)
    {
      LOWORD(v140) = 0;
    }

    v144 = (v141 << 48) | ((v142 - v140) << 32) | (v143 << 16) | (v136 >> 2);
  }

  else
  {
    v144 = 65537;
  }

  v288 = v144;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v146, PipelineStateForMPSKey, v147, v148, v149, v150, v151, 0, 0, 0, 0, 0);
  v159 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v152, v153, v154, v155, v156, v157, v158);
  if (v159 <= 1)
  {
    v167 = 1;
  }

  else
  {
    v167 = v159;
  }

  if (v167 >= 0x10)
  {
    v168 = 16;
  }

  else
  {
    v168 = v167;
  }

  v169 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v160, v161, v162, v163, v164, v165, v166);
  v170 = *(a4 + 216);
  v171.i32[0] = (*(a4 + 304) + 3) >> 2;
  v171.i32[1] = *(a4 + 192);
  v172.i32[0] = (*(a4 + 24) + 3) >> 2;
  v172.i32[1] = v170;
  v265 = *(a4 + 200);
  v280[0] = vuzp1_s16(vmovn_s64(*(a4 + 176)), v171);
  v280[1] = vuzp1_s16(vmovn_s64(v265), v172);
  v281 = *(a4 + 144);
  v282 = objc_msgSend_numberOfImages(*(a4 + 120), v173, v174, v175, v176, v177, v178, v179);
  v283 = 2;
  v284 = 0;
  v285 = v133;
  memset(v286, 0, sizeof(v286));
  objc_msgSend_setTexture_atIndex_(a2, v180, *(a4 + 160), 0, v181, v182, v183, v184);
  objc_msgSend_setBytes_length_atIndex_(a2, v185, v280, 40, 0, v186, v187, v188);
  if (v266)
  {
    v260 = objc_msgSend_primaryStrideInPixelsX(a1, v189, v190, v191, v192, v193, v194, v195);
    v203 = objc_msgSend_primaryStrideInPixelsY(a1, v196, v197, v198, v199, v200, v201, v202);
  }

  else
  {
    v260 = objc_msgSend_strideInPixelsX(a1, v189, v190, v191, v192, v193, v194, v195);
    v203 = objc_msgSend_strideInPixelsY(a1, v211, v212, v213, v214, v215, v216, v217);
  }

  v218 = v170 * v137;
  v270 = 0;
  v269 = 0;
  v219 = vmovn_s64(*(a4 + 224));
  v272 = v219.i16[2];
  v271 = v219.i16[0];
  v274 = v203;
  v273 = v260;
  v275 = 0;
  v276 = (*(a4 + 312) + 3) >> 2;
  v277 = *(a4 + 24);
  v278 = *(a4 + 240);
  v279 = objc_msgSend_numberOfImages(*a4, v204, v205, v206, v207, v208, v209, v210);
  objc_msgSend_setTexture_atIndex_(a2, v220, *(a4 + 40), v133, v221, v222, v223, v224);
  objc_msgSend_setBytes_length_atIndex_(a2, v225, &v269, 32, 1, v226, v227, v228);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v229, v263, 0, 29, v230, v231, v232);
  objc_msgSend_setBytes_length_atIndex_(a2, v233, v287, 28, 30, v234, v235, v236);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v238, Sampler, 0, v239, v240, v241, v242);
  v248 = 0;
  if (v168 <= v169)
  {
    v248 = (v169 / v168 + v265.i64[1] - 1) / (v169 / v168);
  }

  v268[0] = (v168 + v265.i64[0] - 1) / v168;
  v268[1] = v248;
  v268[2] = v218;
  v267[0] = v168;
  v267[1] = v169 / v168;
  v267[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v243, v268, v267, v244, v245, v246, v247);
  if ((v266 & 1) == 0)
  {
  }

  return MPSLibrary::ReleaseMPSKey();
}

uint64_t sub_239BECE1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5, a6, a7, a8);
  v15 = *(a1 + 32);

  return MEMORY[0x2821F9670](v9, sel_removeObjectForKey_, v15, v10, v11, v12, v13, v14);
}

id sub_239BECE58(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v10 = a3;
  v11 = a2;
  v298 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + *MEMORY[0x277CD7378]);
  v14 = *(a1 + *MEMORY[0x277CD7350]);
  v15 = *(a4 + 8);
  if (a5)
  {
    v16 = a1[56];
    v257 = a1[58];
    v259 = a1[57];
  }

  else
  {
    v16 = a1[43];
    v257 = a1[45];
    v259 = a1[44];
  }

  objc_msgSend_clipRect(a1, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_keepProbability(a1, v17, v18, v19, v20, v21, v22, v23);
  v25 = v24;
  if ((v13 & 1) == 0)
  {
    v26 = v16 > 1 || v259 > 1;
    v27 = v26 || v257 >= 2;
    if (v27 && MTLReportFailureTypeEnabled())
    {
      v246 = objc_opt_class();
      v249 = v259;
      v250 = v257;
      v247 = NSStringFromClass(v246);
      v248 = v16;
      MTLReportFailure();
    }
  }

  v253 = v16;
  v267 = a1;
  v28 = (*(*v14 + 5))(v14);
  v36 = (*(*v14 + 3))(v14);
  v37 = *(a4 + 24);
  v38 = *(v37 + 168);
  v268 = v8;
  if (v38)
  {
    v261 = v38[42];
    v263 = v38[41];
    v265 = v38[43];
    result = objc_msgSend_featureChannels(*v37, v29, v30, v31, v32, v33, v34, v35);
    if (result == 2)
    {
      goto LABEL_14;
    }

LABEL_38:
    result = objc_msgSend_featureChannels(**(a4 + 24), v40, v41, v42, v43, v44, v45, v46, v247);
    if (result == 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = 4;
    }

    v255 = v47;
    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

  v80 = objc_msgSend_width(*v37, v29, v30, v31, v32, v33, v34, v35);
  v270 = v36;
  v88 = v28;
  v89 = v10;
  v90 = objc_msgSend_height(**(a4 + 24), v81, v82, v83, v84, v85, v86, v87);
  v105 = (objc_msgSend_featureChannels(**(a4 + 24), v91, v92, v93, v94, v95, v96, v97) + 3) >> 2;
  if (v253)
  {
    v106 = v80;
  }

  else
  {
    v106 = 1;
  }

  v8 = v268;
  if (v259)
  {
    v107 = v90;
  }

  else
  {
    v107 = 1;
  }

  v261 = v107;
  v263 = v106;
  v10 = v89;
  v28 = v88;
  v36 = v270;
  if (!v257)
  {
    v105 = 1;
  }

  v265 = v105;
  result = objc_msgSend_featureChannels(**(a4 + 24), v98, v99, v100, v101, v102, v103, v104, v247, v248, v249, v250);
  if (result != 2)
  {
    goto LABEL_38;
  }

LABEL_14:
  v47 = 2;
  v255 = 2;
  if ((v8 & 1) == 0)
  {
LABEL_15:
    v251 = v10;
    v252 = v11;
    result = objc_msgSend_newBufferWithLength_options_(v14[2], v40, v261 * v265 * v15 * v263 * v47, v28 | (16 * v36), v43, v44, v45, v46, v247);
    v269 = result;
    if (v15)
    {
      v48 = 0;
      v49 = 0;
      v50 = v15;
      do
      {
        if (*(*(a4 + 24) + v48 + 48) != 1)
        {
          result = MTLReportFailureTypeEnabled();
          if (result)
          {
            v53 = objc_opt_class();
            v247 = NSStringFromClass(v53);
            result = MTLReportFailure();
          }
        }

        v51 = *(*(a4 + 24) + v48 + 168);
        if (v51)
        {
          v52 = *(v51 + 360);
          if (v52)
          {
          }

          result = v269;
          *(v51 + 360) = result;
          *(v51 + 352) = v49;
        }

        v49 += v261 * v263 * v265 * v255;
        v48 += 176;
        --v50;
      }

      while (v50);
    }

    if (v269)
    {
      v10 = v251;
      v54 = objc_msgSend_userDictionary(v251, v40, v41, v42, v43, v44, v45, v46);
      v67 = objc_msgSend_objectForKey_(v54, v55, @"_MPSCommandBufferRetainListKey", v56, v57, v58, v59, v60);
      v11 = v252;
      v68 = v267;
      if (!v67)
      {
        v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
        objc_msgSend_setObject_forKey_(v54, v69, v67, @"_MPSCommandBufferRetainListKey", v70, v71, v72, v73);

        *&v282 = MEMORY[0x277D85DD0];
        *(&v282 + 1) = 3221225472;
        *&v283 = sub_239BECE1C;
        *(&v283 + 1) = &unk_278B28F28;
        *&v284 = @"_MPSCommandBufferRetainListKey";
        objc_msgSend_addCompletedHandler_(v251, v74, &v282, v75, v76, v77, v78, v79);
      }

      result = objc_msgSend_addObject_(v67, v61, v269, v62, v63, v64, v65, v66, v247);
      goto LABEL_46;
    }

    v269 = 0;
    v10 = v251;
    v11 = v252;
    v8 = v268;
    v68 = v267;
    if (v25 == 1.0)
    {
      goto LABEL_54;
    }

LABEL_49:
    if ((v8 & 1) == 0)
    {
      objc_msgSend_encodeToCommandBuffer_computeEncoder_destinationBuffer_destinationOffset_numEntries_(v68[46], v40, v10, v11, v269, 0, v261 * v265 * v15 * v263 * v255, v46);
    }

    v135 = v11;
    v136 = *(a4 + 32);
    v137 = *(a4 + 88);
    v138 = objc_msgSend_maxBatchSize(v68, v40, v41, v42, v43, v44, v45, v46, v247);
    v281 = -1;
    *&v139 = -1;
    *(&v139 + 1) = -1;
    v280 = v139;
    v279 = v139;
    v278 = v139;
    v277[1] = v136 & 0x3F | ((v137 & 0x3F) << 6);
    v277[2] = 0;
    v277[0] = v138;
    MPSLibrary::CreateUberShaderKey();
    v140 = v255 * v263 * v261;
    v141 = *(a4 + 130);
    v142 = (v141 + 3) >> 2;
    LODWORD(v272) = v255 * v253;
    HIDWORD(v272) = v255 * v263 * v259;
    v273 = v140 * v257;
    v274 = v140 * v265;
    v275 = 1.0 / v25;
    v262 = v142;
    if (v141 >= 5)
    {
      v156 = __clz(0x80000000 / v142);
      v157 = (0x80000000 / v142) >> (16 - v156);
      v158 = v156 + 15;
      v159 = -65536 * v142 * v157 / v142;
      if (v159 <= v157)
      {
        v160 = v157;
      }

      else
      {
        v160 = v157 + 1;
      }

      if (v159 <= v157)
      {
        LOWORD(v157) = 0;
      }

      v143 = (v158 << 48) | ((v159 - v157) << 32) | (v160 << 16) | v142;
    }

    else
    {
      v143 = 65537;
    }

    v161 = v135;
    v276 = v143;
    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
    objc_msgSend_setComputePipelineState_(v161, v163, PipelineStateForMPSKey, v164, v165, v166, v167, v168, 0, 0, 0, 0, 0);
    v176 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v169, v170, v171, v172, v173, v174, v175);
    if (v176 <= 1)
    {
      v184 = 1;
    }

    else
    {
      v184 = v176;
    }

    if (v184 >= 0x10)
    {
      v184 = 16;
    }

    v266 = v184;
    v185 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v177, v178, v179, v180, v181, v182, v183);
    v193 = *(a4 + 56);
    v254 = WORD1(v193);
    v258 = HIWORD(v193);
    v260 = v193;
    v194 = *(a4 + 40);
    v264 = v185;
    if ((*(a4 + 32) & 2) == 0)
    {
      v195 = v185;
      objc_msgSend_setTexture_atIndex_(v161, v186, v194, 0, v189, v190, v191, v192);
      v200 = v266;
LABEL_89:
      v256 = v195 / v200;
      objc_msgSend_setBytes_length_atIndex_(v161, v196, a4 + 48, 40, 0, v197, v198, v199);
      v214 = *(a4 + 96);
      if ((*(a4 + 88) & 2) == 0)
      {
        objc_msgSend_setTexture_atIndex_(v161, v207, *(a4 + 96), v138, v210, v211, v212, v213);
        v219 = v268;
LABEL_109:
        objc_msgSend_setBytes_length_atIndex_(v161, v215, a4 + 104, 32, 1, v216, v217, v218);
        objc_msgSend_setBuffer_offset_atIndex_(v161, v226, v269, 0, 29, v227, v228, v229);
        objc_msgSend_setBytes_length_atIndex_(v161, v230, &v272, 28, 30, v231, v232, v233);
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(v161, v235, Sampler, 0, v236, v237, v238, v239);
        v245 = 0;
        if (v266 <= v264)
        {
          v245 = (v256 + v254 - 1) / v256;
        }

        *&v282 = (v266 + v260 - 1) / v266;
        *(&v282 + 1) = v245;
        *&v283 = v262 * v258;
        v271[0] = v266;
        v271[1] = v256;
        v271[2] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v161, v240, &v282, v271, v241, v242, v243, v244);
        if ((v219 & 1) == 0)
        {
        }

        return MPSLibrary::ReleaseMPSKey();
      }

      v220 = objc_msgSend_count(*(a4 + 96), v207, v208, v209, v210, v211, v212, v213);
      v296 = 0u;
      v297 = 0u;
      v294 = 0u;
      v295 = 0u;
      v292 = 0u;
      v293 = 0u;
      v290 = 0u;
      v291 = 0u;
      v288 = 0u;
      v289 = 0u;
      v286 = 0u;
      v287 = 0u;
      v284 = 0u;
      v285 = 0u;
      v282 = 0u;
      v283 = 0u;
      if (!v138)
      {
LABEL_108:
        v219 = v268;
        goto LABEL_109;
      }

      v221 = v220;
      v222 = 0;
      while (1)
      {
        if (v221 <= v222)
        {
          v223 = 0;
          if (v138 - v222 >= 0x20)
          {
            v224 = 32;
          }

          else
          {
            v224 = v138 - v222;
          }

          v225 = v224;
          if (!v224)
          {
            goto LABEL_93;
          }
        }

        else
        {
          if (v221 - v222 >= 0x20)
          {
            v223 = 32;
            objc_msgSend_getObjects_range_(v214, v215, &v282, v222, 32, v216, v217, v218);
          }

          else
          {
            v223 = v221 - v222;
            objc_msgSend_getObjects_range_(v214, v215, &v282, v222, v221 - v222, v216, v217, v218);
          }

          if (v138 - v222 >= 0x20)
          {
            v224 = 32;
          }

          else
          {
            v224 = v138 - v222;
          }

          v225 = v224 - v223;
          if (v224 == v223)
          {
            goto LABEL_93;
          }
        }

        bzero(&v282 + 8 * v223, 8 * v225);
LABEL_93:
        objc_msgSend_setTextures_withRange_(v161, v215, &v282, v222 + v138, v224, v216, v217, v218);
        v222 += v224;
        if (v222 >= v138)
        {
          goto LABEL_108;
        }
      }
    }

    v201 = objc_msgSend_count(v194, v186, v187, v188, v189, v190, v191, v192);
    v296 = 0u;
    v297 = 0u;
    v294 = 0u;
    v295 = 0u;
    v292 = 0u;
    v293 = 0u;
    v290 = 0u;
    v291 = 0u;
    v288 = 0u;
    v289 = 0u;
    v286 = 0u;
    v287 = 0u;
    v284 = 0u;
    v285 = 0u;
    v282 = 0u;
    v283 = 0u;
    if (!v138)
    {
LABEL_88:
      v200 = v266;
      v195 = v264;
      goto LABEL_89;
    }

    v202 = v201;
    v203 = 0;
    while (1)
    {
      if (v202 <= v203)
      {
        v204 = 0;
        if (v138 - v203 >= 0x20)
        {
          v205 = 32;
        }

        else
        {
          v205 = v138 - v203;
        }

        v206 = v205;
        if (!v205)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v202 - v203 >= 0x20)
        {
          v204 = 32;
          objc_msgSend_getObjects_range_(v194, v196, &v282, v203, 32, v197, v198, v199);
        }

        else
        {
          v204 = v202 - v203;
          objc_msgSend_getObjects_range_(v194, v196, &v282, v203, v202 - v203, v197, v198, v199);
        }

        if (v138 - v203 >= 0x20)
        {
          v205 = 32;
        }

        else
        {
          v205 = v138 - v203;
        }

        v206 = v205 - v204;
        if (v205 == v204)
        {
          goto LABEL_73;
        }
      }

      bzero(&v282 + 8 * v204, 8 * v206);
LABEL_73:
      objc_msgSend_setTextures_withRange_(v161, v196, &v282, v203, v205, v197, v198, v199);
      v203 += v205;
      if (v203 >= v138)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_42:
  v269 = v38[45];
  if (!v269)
  {
    v269 = 0;
    v68 = v267;
    if (v25 == 1.0)
    {
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  v108 = objc_msgSend_userDictionary(v10, v40, v41, v42, v43, v44, v45, v46);
  v115 = objc_msgSend_objectForKey_(v108, v109, @"_MPSCommandBufferRetainListKey", v110, v111, v112, v113, v114);
  v68 = v267;
  if (!v115)
  {
    v122 = v10;
    v123 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_setObject_forKey_(v108, v124, v123, @"_MPSCommandBufferRetainListKey", v125, v126, v127, v128);

    *&v282 = MEMORY[0x277D85DD0];
    *(&v282 + 1) = 3221225472;
    *&v283 = sub_239BECE1C;
    *(&v283 + 1) = &unk_278B28F28;
    *&v284 = @"_MPSCommandBufferRetainListKey";
    objc_msgSend_addCompletedHandler_(v122, v129, &v282, v130, v131, v132, v133, v134);
    v115 = v123;
    v10 = v122;
  }

  result = objc_msgSend_addObject_(v115, v116, v269, v117, v118, v119, v120, v121, v247);
LABEL_46:
  v8 = v268;
  if (v25 != 1.0)
  {
    goto LABEL_49;
  }

LABEL_54:
  v144 = *(a4 + 24);
  v277[0] = **(v144 + 8);
  v272 = **(v144 + 120);
  *&v282 = v277;
  *(&v282 + 1) = &v272;
  v145 = *(a4 + 216);
  v146 = *(a4 + 200);
  v283 = *(a4 + 184);
  v284 = v146;
  v147 = *(a4 + 232);
  v285 = v145;
  v286 = v147;
  v287 = *(a4 + 248);
  v148 = (*(v144 + 24) + 3) >> 2;
  *&v284 = v148 * v146;
  *(&v285 + 1) = *(&v145 + 1) * v148;
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v40, i, v42, v43, v44, v45, v46, v247);
      objc_msgSend_objectAtIndexedSubscript_(*(a4 + 40), v150, i, v151, v152, v153, v154, v155);
      result = MPSEncodeCopyTexture();
    }
  }

  return result;
}

uint64_t sub_239BEDC70(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86[1] = *MEMORY[0x277D85DE8];
  v78 = *(a4 + 120);
  v79 = *(a4 + 136);
  v80 = *(a4 + 152);
  v12 = *(a4 + 192);
  v55[0] = 1;
  v83 = v12;
  v20 = objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8);
  v22 = (a4 + 64);
  v21 = *(a4 + 64);
  if (v21)
  {
    v21 = objc_msgSend_featureChannels(v21, v13, v14, v15, v16, v17, v18, v19);
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a4 + 192);
  v25 = (v21 - v24 + 3) >> 2;
  if (v21 <= v24)
  {
    LOWORD(v25) = 0;
  }

  v26 = vmovn_s64(*(a4 + 120));
  LOWORD(v27) = v26.i16[0];
  WORD1(v27) = v26.i16[2];
  HIDWORD(v27) = ((v24 + 3) >> 2);
  v28 = vmovn_s64(*(a4 + 144));
  HIWORD(v29) = 1;
  LOWORD(v29) = v28.i16[0];
  WORD1(v29) = v28.i16[2];
  WORD2(v29) = v25;
  v30 = MEMORY[0x277CD72F8];
  if (v23)
  {
    v31 = *(v23 + *MEMORY[0x277CD72F8]);
  }

  else
  {
    v31 = 0;
  }

  v58 = v27;
  v59 = v29;
  v60 = v31;
  v61 = v23 != 0;
  v62 = 1;
  v63 = 0;
  v64 = v20;
  v65 = 0;
  if (*(a4 + 104))
  {
    v86[0] = *(a4 + 104);
    v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v86, 1, v16, v17, v18, v19);
  }

  else
  {
    v32 = 0;
  }

  v33 = *(a4 + 80);
  v50 = *v22;
  v51 = v33;
  v52 = *(a4 + 96);
  v34 = *(a4 + 16);
  v35 = *(a4 + 32);
  v48[0] = *a4;
  v48[1] = v34;
  v57 = v32;
  v56 = *(a4 + 80);
  v36 = *(a4 + 112);
  v48[2] = v35;
  v37 = *(a4 + 40);
  v49 = *(a4 + 48);
  v38 = *(a4 + 56);
  v53 = v36;
  v54 = v38;
  v55[3] = v48;
  v81 = *(a4 + 168);
  v39 = *(a4 + 200);
  v82 = *(a4 + 184);
  v84 = v39;
  v40 = *(*a4 + *v30);
  v41 = vmovn_s64(*(a4 + 168));
  v69 = v41.i16[2];
  v70 = 0x1000100000000;
  v68 = v41.i16[0];
  v72 = v41.i16[2];
  v71 = v41.i16[0];
  v73 = 0x1000100010001;
  v74 = v39;
  v75 = v40;
  v76 = v82;
  v77 = 1;
  v85 = v37;
  v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, &v85, 1, v16, v17, v18, v19, v48[0], v34, v35, v49, v50, v51, v52, v36, v54);
  v66 = *(a4 + 16);
  v42 = *(a4 + 208);
  v55[0] = *(a4 + 216);
  v55[1] = 1;
  v55[2] = v42;
  sub_239BEDEFC(a1, a2, a3, v55, v43, v44, v45, v46);
  return 0;
}

uint64_t sub_239BEDEFC(double *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v304 = *MEMORY[0x277D85DE8];
  v11 = a1[42];
  v12 = a1[43];
  v13 = *(a1 + 352);
  v14 = *(a1 + *MEMORY[0x277CD7378]);
  v15 = MEMORY[0x277CD7350];
  v16 = *(a1 + *MEMORY[0x277CD7350]);
  v17 = *(a4 + 130);
  v18 = vmovn_s64(*(a4 + 184));
  v280 = 0;
  v279 = vuzp1_s16(v18, v18).u32[0];
  v19 = vmovn_s64(*(a4 + 136));
  v282 = (*(a4 + 208) + 3) >> 2;
  v281 = vuzp1_s16(v19, v19).u32[0];
  if (v13 == 1)
  {
    v20 = *(a4 + 160);
    v21.f64[0] = v11;
    v21.f64[1] = v12;
    v22 = vdivq_f64(vcvtq_f64_u64(v20), v21);
    __asm { FMOV            V2.2D, #-1.0 }

    v27 = vaddq_f64(v22, _Q2);
    _Q2.f64[0] = NAN;
    _Q2.f64[1] = NAN;
    v275 = v17;
    v278 = v17 + 3;
    v283 = vcvt_f32_f64(vdivq_f64(v27, vcvtq_f64_u64(vaddq_s64(v20, _Q2))));
    if (v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v28.f64[0] = v11;
    v28.f64[1] = v12;
    __asm { FMOV            V1.2S, #1.0 }

    v275 = v17;
    v278 = v17 + 3;
    v283 = vdiv_f32(_D1, vcvt_f32_f64(v28));
    if (v14)
    {
      goto LABEL_7;
    }
  }

  v276 = v12;
  v277 = v11;
  v30 = *(v16 + 16);
  v31 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), a2, 0, a4, a5, a6, a7, a8);
  objc_msgSend_width(v31, v32, v33, v34, v35, v36, v37, v38);
  objc_msgSend_maxTextureWidth2D(v30, v39, v40, v41, v42, v43, v44, v45);
  v52 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v46, 0, v47, v48, v49, v50, v51);
  v60 = v277 * objc_msgSend_width(v52, v53, v54, v55, v56, v57, v58, v59);
  if (v60 > objc_msgSend_maxTextureWidth2D(v30, v61, v62, v63, v64, v65, v66, v67) && MTLReportFailureTypeEnabled())
  {
    v266 = objc_opt_class();
    v268 = NSStringFromClass(v266);
    MTLReportFailure();
  }

  v74 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v68, 0, v69, v70, v71, v72, v73, v268);
  objc_msgSend_height(v74, v75, v76, v77, v78, v79, v80, v81);
  objc_msgSend_maxTextureHeight2D(v30, v82, v83, v84, v85, v86, v87, v88);
  v95 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v89, 0, v90, v91, v92, v93, v94);
  v103 = v276 * objc_msgSend_height(v95, v96, v97, v98, v99, v100, v101, v102);
  if (v103 > objc_msgSend_maxTextureHeight2D(v30, v104, v105, v106, v107, v108, v109, v110) && MTLReportFailureTypeEnabled())
  {
    v267 = objc_opt_class();
    v268 = NSStringFromClass(v267);
    MTLReportFailure();
  }

LABEL_7:
  if (*(a1 + 41) == 1)
  {
    objc_msgSend_featureChannelFormat(**(a4 + 24), a2, a3, a4, a5, a6, a7, a8);
  }

  v111 = a1;
  objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8, v268);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v113, PipelineStateForMPSKey, v114, v115, v116, v117, v118, 0, 0, 0, 0, 0);
  MPSLibrary::ReleaseMPSKey();
  v119 = vmovn_s64(*(a4 + 160));
  v119.i16[1] = v119.i16[2];
  v119.i16[2] = v278 >> 2;
  v119.i16[3] = *(a4 + 8);
  v272 = v119;
  v127 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v120, v121, v122, v123, v124, v125, v126);
  objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v128, v129, v130, v131, v132, v133, v134);
  if (v127 >= 0x100)
  {
    v142 = 256;
  }

  else
  {
    v142 = v127;
  }

  v143 = *(*(v111 + *v15) + 16);
  v144 = vmax_u16(v272, 0x1000100010001);
  v285 = 0;
  v286 = 0;
  v287 = 0;
  v273 = v144;
  if (v143)
  {
    objc_msgSend_maxThreadsPerThreadgroup(v143, v135, v136, v137, v138, v139, v140, v141);
    v144 = v273;
    v145 = v285;
    v146 = v286;
    v147 = v287;
  }

  else
  {
    v147 = 0;
    v146 = 0;
    v145 = 0;
  }

  v148 = v144.u16[0];
  v149 = v144.u16[1];
  v150 = v144.u16[2];
  if (v144.u16[0] * v144.u16[1] * v144.u16[2] <= v142 && v145 >= v144.u16[0] && v146 >= v144.u16[1] && v147 >= v144.u16[2])
  {
    v154 = v144;
    v155 = v144.u16[2];
    v156 = v144.u16[1];
    v157 = v144.u16[0];
    goto LABEL_83;
  }

  if (v143)
  {
    v288 = 0uLL;
    *&v289 = 0;
    objc_msgSend_maxThreadsPerThreadgroup(v143, v135, v136, v137, v138, v139, v140, v141);
    v144.i16[3] = v273.i16[3];
    v145 = v285;
    v146 = v286;
    v147 = v287;
  }

  v158 = (64 - __clz(v142)) >> 1;
  v159 = 0;
  if (v158 < 0x8000000000000000)
  {
    v159 = v158;
  }

  if (v142 >> v159)
  {
    v160 = 0;
  }

  else
  {
    v160 = v142 >> v159;
  }

  v161 = 1 << v159;
  v154.i16[2] = 1;
  if (v145 >= v148)
  {
    v162 = v148;
  }

  else
  {
    v162 = v145;
  }

  if (v146 >= v149)
  {
    v163 = v149;
  }

  else
  {
    v163 = v146;
  }

  if (v147 >= v150)
  {
    v164 = v150;
  }

  else
  {
    v164 = v147;
  }

  if (v160)
  {
    v165 = v148 + v160 - 1;
    v166 = (v149 + v161 - 1) / v161;
    if (v160 > v165)
    {
      v167 = 0;
      v154.i16[0] = v160;
      if (!v166)
      {
        goto LABEL_49;
      }

LABEL_47:
      v168 = (v149 + v166 - 1) / v166;
      goto LABEL_50;
    }

    v167 = (v148 + v165 / v160 - 1) / (v165 / v160);
    v154.i16[0] = v160;
    if (v166)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v167 = 0;
    v166 = (v149 + v161 - 1) / v161;
    v154.i16[0] = 0;
    if (v166)
    {
      goto LABEL_47;
    }
  }

LABEL_49:
  v168 = 0;
LABEL_50:
  if (v167 >= v162)
  {
    v157 = v162;
  }

  else
  {
    v157 = v167;
  }

  if (v168 >= v163)
  {
    v156 = v163;
  }

  else
  {
    v156 = v168;
  }

  v169 = v156 * v157;
  if (v142 / (v156 * v157) >= v164)
  {
    v170 = v164;
  }

  else
  {
    v170 = v142 / (v156 * v157);
  }

  if (v144.u16[3] < 2u)
  {
    v155 = v170;
    v172 = v142 - v170 * v169;
    if (v168 < v163)
    {
      goto LABEL_65;
    }
  }

  else
  {
    if (v170 < 2)
    {
      v155 = v170;
    }

    else
    {
      do
      {
        v155 = v170;
        v171 = v150 / v170 * v170;
        --v170;
      }

      while (v150 != v171);
    }

    v172 = v142 - v155 * v169;
    if (v168 < v163)
    {
LABEL_65:
      v173 = v155 * v157;
      if (v172 > v155 * v157)
      {
        v156 += v172 / v173;
        if (v156 >= v163)
        {
          v156 = v163;
        }

        v172 = v142 - v156 * v173;
      }
    }
  }

  v154.i16[1] = v161;
  if (v167 < v162)
  {
    v174 = v156 * v155;
    if (v172 > v156 * v155)
    {
      v157 += v172 / v174;
      if (v157 >= v162)
      {
        v157 = v162;
      }

      v172 = v142 - v157 * v174;
    }
  }

  if (v155 < v164 && v172 > v157 * v156)
  {
    v155 += v172 / (v157 * v156);
    if (v155 >= v164)
    {
      v155 = v164;
    }

    if (v144.u16[3] >= 2u && v155 >= 2)
    {
      do
      {
        v175 = v155;
        v176 = v150 / v155 * v155;
        --v155;
      }

      while (v150 != v176);
      v155 = v175;
    }
  }

LABEL_83:
  v177 = v154.i16[0];
  if (v154.i16[0])
  {
    v178 = (v148 + v154.u16[0] - 1) / v154.u16[0];
    LOWORD(v179) = v178;
    v180 = v154.u16[1];
    if (v154.i16[1])
    {
      goto LABEL_85;
    }
  }

  else
  {
    LOWORD(v178) = 0;
    LOWORD(v179) = 0;
    v180 = v154.u16[1];
    if (v154.i16[1])
    {
LABEL_85:
      v181 = (v149 + v180 - 1) / v180;
      WORD1(v179) = v181;
      v182 = v154.u16[2];
      if (v154.i16[2])
      {
        goto LABEL_86;
      }

      goto LABEL_92;
    }
  }

  LOWORD(v181) = 0;
  WORD1(v179) = 0;
  v182 = v154.u16[2];
  if (v154.i16[2])
  {
LABEL_86:
    v183 = (v150 + v182 - 1) / v182;
    WORD2(v179) = v183;
    if (v157)
    {
      goto LABEL_87;
    }

    goto LABEL_93;
  }

LABEL_92:
  LOWORD(v183) = 0;
  WORD2(v179) = 0;
  if (v157)
  {
LABEL_87:
    v184 = (v148 + v157 - 1) / v157;
    HIWORD(v179) = v144.i16[3];
    if (v156)
    {
      goto LABEL_88;
    }

LABEL_94:
    LOWORD(v185) = 0;
    if (v155)
    {
      goto LABEL_89;
    }

    goto LABEL_95;
  }

LABEL_93:
  LOWORD(v184) = 0;
  HIWORD(v179) = v144.i16[3];
  if (!v156)
  {
    goto LABEL_94;
  }

LABEL_88:
  v185 = (v149 + v156 - 1) / v156;
  if (v155)
  {
LABEL_89:
    v186 = (v150 + v155 - 1) / v155;
    goto LABEL_96;
  }

LABEL_95:
  v186 = 0;
LABEL_96:
  v187 = v185 * v184 * v186;
  v188 = v181 * v178 * v183;
  v189 = v187 >= v188;
  LOWORD(v190) = v184;
  WORD1(v190) = v185;
  WORD2(v190) = v186;
  HIWORD(v190) = v144.i16[3];
  if (v187 < v188)
  {
    v191 = v155;
  }

  else
  {
    v191 = v182;
  }

  if (v189)
  {
    v192 = v180;
  }

  else
  {
    v192 = v156;
  }

  if (v189)
  {
    v193 = v177;
  }

  else
  {
    v193 = v157;
  }

  if (v189)
  {
    v190 = v179;
  }

  v274 = v190;
  v269 = v191;
  v270 = v192;
  v271 = v193;
  *(a4 + 70) = v192 * v191 * v193;
  if (v275 >= 5)
  {
    v195 = 0x80000000 / (v278 >> 2);
    v196 = __clz(v195);
    v197 = v195 >> (16 - v196);
    v198 = v196 + 15;
    v199 = -65536 * (v278 >> 2) * v197 / (v278 >> 2);
    if (v199 <= v197)
    {
      v200 = v197;
    }

    else
    {
      v200 = v197 + 1;
    }

    if (v199 <= v197)
    {
      LOWORD(v197) = 0;
    }

    v194 = (v198 << 48) | ((v199 - v197) << 32) | (v200 << 16) | (v278 >> 2);
  }

  else
  {
    v194 = 65537;
  }

  v284 = v194;
  v208 = objc_msgSend_maxBatchSize(v111, v186, v187, v186, v138, v139, v140, v141);
  v209 = *(a4 + 40);
  if ((*(a4 + 32) & 2) == 0)
  {
    v210 = objc_msgSend_objectAtIndexedSubscript_(v209, v201, 0, v203, v204, v205, v206, v207);
    objc_msgSend_setTexture_atIndex_(a2, v211, v210, 0, v212, v213, v214, v215);
    goto LABEL_134;
  }

  v220 = objc_msgSend_count(v209, v201, v202, v203, v204, v205, v206, v207);
  v302 = 0u;
  v303 = 0u;
  v300 = 0u;
  v301 = 0u;
  v298 = 0u;
  v299 = 0u;
  v296 = 0u;
  v297 = 0u;
  v294 = 0u;
  v295 = 0u;
  v292 = 0u;
  v293 = 0u;
  v290 = 0u;
  v291 = 0u;
  v288 = 0u;
  v289 = 0u;
  if (v208)
  {
    v221 = v220;
    for (i = 0; i < v208; i += v224)
    {
      if (v221 <= i)
      {
        v223 = 0;
        if (v208 - i >= 0x20)
        {
          v224 = 32;
        }

        else
        {
          v224 = v208 - i;
        }

        v225 = v224;
        if (!v224)
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (v221 - i >= 0x20)
        {
          v223 = 32;
          objc_msgSend_getObjects_range_(v209, v216, &v288, i, 32, v217, v218, v219);
        }

        else
        {
          v223 = v221 - i;
          objc_msgSend_getObjects_range_(v209, v216, &v288, i, v221 - i, v217, v218, v219);
        }

        if (v208 - i >= 0x20)
        {
          v224 = 32;
        }

        else
        {
          v224 = v208 - i;
        }

        v225 = v224 - v223;
        if (v224 == v223)
        {
          goto LABEL_119;
        }
      }

      bzero(&v288 + 8 * v223, 8 * v225);
LABEL_119:
      objc_msgSend_setTextures_withRange_(a2, v216, &v288, i, v224, v217, v218, v219);
    }
  }

LABEL_134:
  objc_msgSend_setBytes_length_atIndex_(a2, v216, a4 + 48, 40, 0, v217, v218, v219);
  v233 = *(a4 + 96);
  if ((*(a4 + 88) & 2) != 0)
  {
    v244 = objc_msgSend_count(*(a4 + 96), v226, v227, v228, v229, v230, v231, v232);
    v302 = 0u;
    v303 = 0u;
    v300 = 0u;
    v301 = 0u;
    v298 = 0u;
    v299 = 0u;
    v296 = 0u;
    v297 = 0u;
    v294 = 0u;
    v295 = 0u;
    v292 = 0u;
    v293 = 0u;
    v290 = 0u;
    v291 = 0u;
    v288 = 0u;
    v289 = 0u;
    if (!v208)
    {
      goto LABEL_153;
    }

    v245 = v244;
    v246 = 0;
    while (1)
    {
      if (v245 <= v246)
      {
        v247 = 0;
        if (v208 - v246 >= 0x20)
        {
          v248 = 32;
        }

        else
        {
          v248 = v208 - v246;
        }

        v249 = v248;
        if (!v248)
        {
          goto LABEL_138;
        }
      }

      else
      {
        if (v245 - v246 >= 0x20)
        {
          v247 = 32;
          objc_msgSend_getObjects_range_(v233, v240, &v288, v246, 32, v241, v242, v243);
        }

        else
        {
          v247 = v245 - v246;
          objc_msgSend_getObjects_range_(v233, v240, &v288, v246, v245 - v246, v241, v242, v243);
        }

        if (v208 - v246 >= 0x20)
        {
          v248 = 32;
        }

        else
        {
          v248 = v208 - v246;
        }

        v249 = v248 - v247;
        if (v248 == v247)
        {
          goto LABEL_138;
        }
      }

      bzero(&v288 + 8 * v247, 8 * v249);
LABEL_138:
      objc_msgSend_setTextures_withRange_(a2, v240, &v288, v246 + v208, v248, v241, v242, v243);
      v246 += v248;
      if (v246 >= v208)
      {
        goto LABEL_153;
      }
    }
  }

  v234 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v226, 0, v228, v229, v230, v231, v232);
  objc_msgSend_setTexture_atIndex_(a2, v235, v234, v208, v236, v237, v238, v239);
LABEL_153:
  objc_msgSend_setBytes_length_atIndex_(a2, v240, a4 + 104, 32, 1, v241, v242, v243);
  objc_msgSend_setBytes_length_atIndex_(a2, v250, &v279, 40, 30, v251, v252, v253);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v255, Sampler, 1, v256, v257, v258, v259);
  *&v288 = v274;
  *(&v288 + 1) = WORD1(v274);
  *&v289 = (WORD2(v274) * HIWORD(v274));
  v285 = v271;
  v286 = v270;
  v287 = v269;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v260, &v288, &v285, v261, v262, v263, v264);
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t sub_239BEEF98(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 64);
  v5 = MPSCreateFunctionConstantValues();
  v6 = *a3;
  v54 = (v4 >> 6) & 0x3F | ((v4 & 0x3F) << 6);
  objc_msgSend_setConstantValue_type_atIndex_(v5, v7, &v54, 33, 126, v8, v9, v10);
  if (v6 != -1)
  {
    v54 = v6;
    objc_msgSend_setConstantValue_type_atIndex_(v5, v11, &v54, 33, 125, v12, v13, v14);
  }

  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v11, &v54, 33, 124, v12, v13, v14);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v15, &v54, 33, 123, v16, v17, v18);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v19, &v54, 33, 119, v20, v21, v22);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v23, &v54, 33, 118, v24, v25, v26);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v27, &v54, 33, 122, v28, v29, v30);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v31, &v54, 33, 121, v32, v33, v34);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v35, &v54, 33, 117, v36, v37, v38);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v39, &v54, 33, 116, v40, v41, v42);
  LOBYTE(v54) = (v4 & 0x2000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v43, &v54, 53, 0, v44, v45, v46);
  v53 = (v4 & 0x1000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v47, &v53, 53, 1, v48, v49, v50);
  v51 = _MPSNewSpecializedFunction();

  return v51;
}

_objc_msgSend$nodeWithSource_:
      result = (MEMORY[0x2821F9670])(v9, sel_nodeWithSource_, sourceNode, descriptor);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void sub_239BF06C0(_Unwind_Exception *a1)
{
  v4 = sub_239C13FBC(v2);
  MEMORY[0x23EE7D130](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239BF0728(uint64_t a1)
{
  v1 = *a1;
  if (*a1 <= 2)
  {
    if (!v1)
    {
      return 1;
    }

    if (v1 == 1)
    {
      return *(a1 + 4) == 1.0;
    }

    if (v1 != 2)
    {
      goto LABEL_15;
    }

    if (*(a1 + 4) != 1.0)
    {
      return 0;
    }

    return *(a1 + 8) == 0.0;
  }

  else
  {
    if (v1 > 0xF)
    {
      goto LABEL_15;
    }

    if (((1 << v1) & 0xE7F8) != 0)
    {
      return 0;
    }

    if (v1 != 11)
    {
      if (v1 == 12)
      {
        if (*(a1 + 4) != 1.0 || *(a1 + 8) != 0.0)
        {
          return 0;
        }

        return *(a1 + 12) == 1.0;
      }

LABEL_15:
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        MTLReportFailure();
        return 0;
      }

      return result;
    }

    if (*(a1 + 4) != 1.0)
    {
      return 0;
    }

    return *(a1 + 8) == INFINITY;
  }
}

uint64_t sub_239BF0850(uint64_t a1, uint64_t a2)
{
  if (sub_239BF0728(a2))
  {
    return 1;
  }

  result = sub_239BF0728(a1);
  if (result)
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v5;
    return 1;
  }

  v6 = *a1;
  v7 = 0.0;
  if (*a1 > 5)
  {
    if (v6 <= 10)
    {
      if (v6 != 6)
      {
        if (v6 != 7)
        {
          return result;
        }

        if (*(a1 + 4) < 0.0)
        {
          return 0;
        }
      }

      goto LABEL_27;
    }

    if (v6 != 11)
    {
      if (v6 == 12)
      {
        v9 = *(a1 + 12);
        if ((v9 * 0.5) != floorf(v9 * 0.5))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v6 != 13)
        {
          return result;
        }

        if (*(a1 + 12) < 0.0)
        {
          return 0;
        }
      }

      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v6 > 2)
  {
    if ((v6 - 3) >= 2)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_33;
    }

LABEL_23:
    if (*(a1 + 4) > 0.0)
    {
LABEL_31:
      result = 0;
      if (v6 <= 10)
      {
        if (v6 != 1)
        {
LABEL_33:
          if (v6 != 2)
          {
            return result;
          }

          goto LABEL_34;
        }

LABEL_44:
        v8 = 1.0;
        if (*(a1 + 4) == 1.0)
        {
          goto LABEL_35;
        }

        return 0;
      }

      if (v6 == 11)
      {
        if (*(a1 + 8) != INFINITY)
        {
          return 0;
        }

        goto LABEL_44;
      }

      if (v6 != 12)
      {
        return result;
      }

      v9 = *(a1 + 12);
LABEL_41:
      if (v9 == 1.0)
      {
LABEL_34:
        v8 = *(a1 + 4);
        v7 = *(a1 + 8);
        goto LABEL_35;
      }

      return 0;
    }

LABEL_27:
    v10 = *a2;
    if (*a2 <= 0xBu)
    {
      result = 1;
      if (((1 << v10) & 0x642) != 0 || v10 == 11 && *(a2 + 8) == INFINITY)
      {
        return result;
      }
    }

    goto LABEL_31;
  }

  v8 = 1.0;
LABEL_35:
  result = 0;
  v11 = *a2;
  if (*a2 <= 0xEu && ((1 << v11) & 0x7015) != 0)
  {
    *a1 = v11;
    v12 = *(a2 + 8);
    *(a1 + 4) = v8 * *(a2 + 4);
    v13 = *(a2 + 12);
    *(a1 + 8) = v12 + (v7 * *(a2 + 4));
    *(a1 + 12) = v13;
    *(a1 + 16) = 0;
    return 1;
  }

  return result;
}

uint64_t sub_239BF0A68(void **a1, const char *a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *a1;
  if (!v12)
  {
    return 0;
  }

  if (v12 == 10)
  {
    v14 = objc_msgSend_bytes(a1[2], a2, v12, a7, a8, a9, a10, a11);
    v27 = v14 | objc_msgSend_length(a1[2], v15, v16, v17, v18, v19, v20, v21);
    v28 = a1[2];
    v29 = (*MEMORY[0x277D85F88] & v27) == 0;

    return objc_msgSend_cnnNeuronPReLUDescriptorWithData_noCopy_(MPSNNNeuronDescriptor, v22, v28, v29, v23, v24, v25, v26);
  }

  else
  {
    LODWORD(a3) = *(a1 + 1);
    LODWORD(a4) = *(a1 + 2);
    LODWORD(a5) = *(a1 + 3);

    return objc_msgSend_cnnNeuronDescriptorWithType_a_b_c_(MPSNNNeuronDescriptor, a2, v12, a7, a8, a9, a10, a11, a3, a4, a5);
  }
}

uint64_t sub_239BF0B10(uint64_t a1, void *a2, unsigned __int16 **a3, unint64_t *a4)
{
  *sub_239C140D4(a1, a2, a3, a4) = &unk_284CD2C00;
  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 4;
      __cxa_throw(exception, &unk_284CD31F8, 0);
    }

    *(a1 + 144) = objc_msgSend_neuronType(a2, v6, v7, v8, v9, v10, v11, v12);
    objc_msgSend_a(a2, v13, v14, v15, v16, v17, v18, v19);
    *(a1 + 148) = v20;
    objc_msgSend_b(a2, v21, v22, v23, v24, v25, v26, v27);
    *(a1 + 152) = v28;
    objc_msgSend_c(a2, v29, v30, v31, v32, v33, v34, v35);
    *(a1 + 156) = v36;
    v44 = objc_msgSend_data(a2, v37, v38, v39, v40, v41, v42, v43);
    *(a1 + 160) = objc_msgSend_copyWithZone_(v44, v45, 0, v46, v47, v48, v49, v50);
    return a1;
  }

  else
  {
    *(a1 + 144) = -1;
    *(a1 + 156) = 0;
    *(a1 + 148) = 0;
    *(a1 + 164) = 0;
    return a1;
  }
}

uint64_t sub_239BF0C2C(uint64_t a1)
{
  *a1 = &unk_284CD2C00;

  return sub_239C13FBC(a1);
}

void sub_239BF0C88(uint64_t a1)
{
  *a1 = &unk_284CD2C00;

  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BF0CF8(uint64_t a1, uint64_t a2)
{
  v10 = objc_autoreleasePoolPush();
  v14 = *(a1 + 144);
  if (v14 == 10)
  {
    v15 = objc_msgSend_cnnNeuronPReLUDescriptorWithData_noCopy_(MPSNNNeuronDescriptor, v4, *(a1 + 160), 0, v6, v7, v8, v9);
  }

  else
  {
    LODWORD(v11) = *(a1 + 148);
    LODWORD(v12) = *(a1 + 152);
    LODWORD(v13) = *(a1 + 156);
    v15 = objc_msgSend_cnnNeuronDescriptorWithType_a_b_c_(MPSNNNeuronDescriptor, v4, v14, v5, v6, v7, v8, v9, v11, v12, v13);
  }

  v16 = v15;
  v17 = [MPSCNNNeuron alloc];
  *(a1 + 104) = objc_msgSend_initWithDevice_neuronDescriptor_(v17, v18, a2, v16, v19, v20, v21, v22);

  objc_autoreleasePoolPop(v10);
}

uint64_t sub_239BF0D98(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 80))(a2) != 14)
  {
    return 0;
  }

  v4 = *(a1 + 160);
  result = sub_239BF0850(a1 + 144, a2 + 144);
  if (v4 != *(a1 + 160))
  {
    v6 = result;

    v13 = objc_msgSend_copyWithZone_(*(a1 + 160), v7, 0, v8, v9, v10, v11, v12);
    result = v6;
    *(a1 + 160) = v13;
  }

  return result;
}

uint64_t sub_239BF1D28(uint64_t a1, void *a2, unsigned __int16 **a3, unint64_t *a4)
{
  *sub_239C140D4(a1, a2, a3, a4) = &unk_284CD0460;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4;
    __cxa_throw(exception, &unk_284CD31F8, 0);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  return a1;
}

void sub_239BF1DD4(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239BF1E0C(uint64_t a1, const char *a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a1 + 144;
  v13 = *(a1 + 144);
  if (v13 == 10)
  {
    v15 = objc_msgSend_cnnNeuronPReLUDescriptorWithData_noCopy_(MPSNNNeuronDescriptor, a2, *(a1 + 160), *(a1 + 168), a8, a9, a10, a11);
  }

  else
  {
    LODWORD(a3) = *(a1 + 148);
    LODWORD(a4) = *(a1 + 152);
    LODWORD(a5) = *(a1 + 156);
    v15 = objc_msgSend_cnnNeuronDescriptorWithType_a_b_c_(MPSNNNeuronDescriptor, a2, v13, a7, a8, a9, a10, a11, a3, a4, a5);
  }

  v16 = v15;
  v17 = [MPSCNNNeuronGradient alloc];
  result = objc_msgSend_initWithDevice_neuronDescriptor_(v17, v18, a2, v16, v19, v20, v21, v22);
  *(a1 + 104) = result;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = 0;
  *(v14 + 24) = 0;
  return result;
}

uint64_t sub_239BF1EA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = MEMORY[0x277CCACA8];
  if (*(a1 + 104))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v19 = objc_msgSend_neuronType(*(a1 + 104), v12, v13, v14, v15, v16, v17, v18);
    if (v19 > 0xF)
    {
      v26 = "<invalid/missing type>";
    }

    else
    {
      v26 = off_278B30B88[v19];
    }

    return objc_msgSend_stringWithFormat_(v9, v20, @"%@ (%s)", v21, v22, v23, v24, v25, v11, v26);
  }

  else
  {
    v27 = *(a1 + 144);
    if (v27 > 0xF)
    {
      return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"MPSCNNNeuron (%s)", a4, a5, a6, a7, a8, "<invalid/missing type>");
    }

    else
    {
      return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"MPSCNNNeuron (%s)", a4, a5, a6, a7, a8, off_278B30B88[v27]);
    }
  }
}

__n128 sub_239BF1F6C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[9];
  *a2 = result;
  a2[1].n128_u64[0] = a1[10].n128_u64[0];
  return result;
}

uint64_t sub_239BF1F88(void *a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = objc_msgSend_objectAtIndexedSubscript_(a4, a2, 0, a4, a5, a6, a7, a8);
  v15 = a1[13];
  v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, 0, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_objectAtIndexedSubscript_(a3, v23, 1, v24, v25, v26, v27, v28);
  objc_msgSend_encodeToCommandBuffer_sourceGradient_sourceImage_gradientState_destinationGradient_(v15, v30, a2, v22, v29, v14, a6, v31);
  v32 = *(*a1 + 184);

  return v32(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_239BF2070(void *a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = objc_msgSend_objectAtIndexedSubscript_(a4, a2, 0, a4, a5, a6, a7, a8);
  (*(*a1 + 192))(a1, a2, a3, a4, a5, a6);
  v15 = a1[13];
  v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, 0, v17, v18, v19, v20, v21);
  v30 = objc_msgSend_objectAtIndexedSubscript_(a3, v23, 1, v24, v25, v26, v27, v28);

  return objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_gradientStates_destinationGradients_(v15, v29, a2, v22, v30, v14, a6, v31);
}

uint64_t sub_239BF2150(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = MEMORY[0x277CCACA8];
  if (*(a1 + 104))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v19 = objc_msgSend_neuronType(*(a1 + 104), v12, v13, v14, v15, v16, v17, v18);
    if (v19 > 0xF)
    {
      v26 = "<invalid/missing type>";
    }

    else
    {
      v26 = off_278B30B88[v19];
    }

    return objc_msgSend_stringWithFormat_(v9, v20, @"%@ (%s)", v21, v22, v23, v24, v25, v11, v26);
  }

  else
  {
    v27 = *(a1 + 144);
    if (v27 > 0xF)
    {
      return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"MPSCNNNeuronGradient (%s)", a4, a5, a6, a7, a8, "<invalid/missing type>");
    }

    else
    {
      return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"MPSCNNNeuronGradient (%s)", a4, a5, a6, a7, a8, off_278B30B88[v27]);
    }
  }
}

uint64_t sub_239BF2224(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 80))(a2) != 15)
  {
    return 0;
  }

  (*(*a2 + 352))(v5, a2);
  return sub_239BF0850(a1 + 144, v5);
}

__n128 sub_239BF22D4@<Q0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (*(a1 + 104))
  {
    v10 = objc_msgSend_descriptor(*(a1 + 112), a2, a3, a4, a5, a6, a7, a8);
    *a9 = objc_msgSend_neuronType(v10, v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_a(v10, v18, v19, v20, v21, v22, v23, v24);
    *(a9 + 4) = v25;
    objc_msgSend_b(v10, v26, v27, v28, v29, v30, v31, v32);
    *(a9 + 8) = v33;
    objc_msgSend_c(v10, v34, v35, v36, v37, v38, v39, v40);
    *(a9 + 12) = v41;
    *(a9 + 16) = objc_msgSend_data(v10, v42, v43, v44, v45, v46, v47, v48);
  }

  else
  {
    result = *(a1 + 144);
    *a9 = result;
    *(a9 + 16) = *(a1 + 160);
  }

  return result;
}

void *sub_239BF2514(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReshape alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  v12 = *(a1 + 112);
  result[41] = v12[7];
  result[42] = v12[8];
  result[43] = v12[9];
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BF2748(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNReshapeGradient alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BF29A0(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNPad alloc];
  v11 = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  v12 = *(a1 + 112);
  v44 = *(v12 + 72);
  v43 = *(v12 + 56);
  v41 = v43;
  v42 = v44;
  objc_msgSend_setPaddingSizeBefore_(v11, v13, &v41, v14, v15, v16, v17, v18);
  v40 = *(v12 + 96);
  v41 = *(v12 + 80);
  v42 = v40;
  objc_msgSend_setPaddingSizeAfter_(v11, v19, &v41, v20, v21, v22, v23, v24, v41, v40);
  objc_msgSend_setEdgeMode_(v11, v25, *(v12 + 104), v26, v27, v28, v29, v30);
  LODWORD(v31) = *(v12 + 112);
  result = objc_msgSend_setFillValue_(v11, v32, v33, v34, v35, v36, v37, v38, v31);
  *(a1 + 104) = v11;
  return result;
}

uint64_t sub_239BF2C14(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNPadGradient alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

void sub_239BF2C54(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BF2C98(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BF2CDC(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BF2D20(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239BF2E14(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a4 + 48) != 1)
  {
    v85 = a1;
    v86 = MTLReportFailureTypeEnabled();
    a1 = v85;
    if (v86)
    {
      v87 = objc_opt_class();
      v94 = NSStringFromClass(v87);
      MTLReportFailure();
      a1 = v85;
    }
  }

  if (*(a4 + 104) != 1)
  {
    v88 = a1;
    v89 = MTLReportFailureTypeEnabled();
    a1 = v88;
    if (v89)
    {
      v90 = objc_opt_class();
      v94 = NSStringFromClass(v90);
      MTLReportFailure();
      a1 = v88;
    }
  }

  if (*(a4 + 80) != 2)
  {
    v91 = a1;
    v92 = MTLReportFailureTypeEnabled();
    a1 = v91;
    if (v92)
    {
      v93 = objc_opt_class();
      v94 = NSStringFromClass(v93);
      MTLReportFailure();
      a1 = v91;
    }
  }

  v11 = a1;
  v12 = objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8, v94);
  memset(v110, 0, sizeof(v110));
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v13 = *(a4 + 192);
  v96 = *(a4 + 176);
  v97 = v13;
  v14 = *(a4 + 224);
  v98 = *(a4 + 208);
  v95 = 1;
  v15 = *(a4 + 40);
  v99 = *(a4 + 304);
  v100 = v15;
  LODWORD(v101) = *(a4 + 16);
  *(&v101 + 1) = **(a4 + 8);
  v16 = vmovn_s64(v14);
  HIWORD(v102) = v16.i16[2];
  WORD6(v102) = v16.i16[0];
  LOWORD(v103) = objc_msgSend_primaryStrideInPixelsX(v11, v17, v18, v19, v20, v21, v22, v23);
  WORD1(v103) = objc_msgSend_primaryStrideInPixelsY(v11, v24, v25, v26, v27, v28, v29, v30);
  DWORD1(v103) = 0;
  WORD4(v103) = (*(a4 + 312) + 3) >> 2;
  WORD5(v103) = *(a4 + 24);
  WORD6(v103) = *(a4 + 240);
  HIWORD(v103) = objc_msgSend_numberOfImages(*a4, v31, v32, v33, v34, v35, v36, v37);
  *&v104 = *(a4 + 96);
  DWORD2(v104) = *(a4 + 72);
  v105 = **(a4 + 64);
  LODWORD(v106) = 0;
  v38 = vmovn_s64(*(a4 + 280));
  WORD3(v106) = v38.i16[2];
  WORD2(v106) = v38.i16[0];
  WORD4(v106) = objc_msgSend_secondaryStrideInPixelsX(v11, v39, v40, v41, v42, v43, v44, v45);
  WORD5(v106) = objc_msgSend_secondaryStrideInPixelsY(v11, v46, v47, v48, v49, v50, v51, v52);
  HIDWORD(v106) = 0;
  LOWORD(v107) = (*(a4 + 320) + 3) >> 2;
  WORD1(v107) = *(a4 + 80);
  WORD2(v107) = *(a4 + 296);
  v60 = objc_msgSend_numberOfImages(*(a4 + 56), v53, v54, v55, v56, v57, v58, v59);
  v61.i32[0] = (*(a4 + 304) + 3) >> 2;
  v61.i32[1] = *(a4 + 192);
  v62 = vuzp1_s16(vmovn_s64(*(a4 + 176)), v61);
  v63.i32[0] = (*(a4 + 24) + 3) >> 2;
  v63.i32[1] = *(a4 + 216);
  v64 = vuzp1_s16(vmovn_s64(*(a4 + 200)), v63);
  WORD3(v107) = v60;
  *(&v107 + 1) = *(a4 + 160);
  LODWORD(v108) = *(a4 + 136);
  v65 = *(a4 + 120);
  *(&v108 + 1) = **(a4 + 128);
  *&v109 = v62;
  *(&v109 + 1) = v64;
  LOWORD(v110[0]) = *(a4 + 144);
  WORD1(v110[0]) = objc_msgSend_numberOfImages(v65, v66, v67, v68, v69, v70, v71, v72);
  HIDWORD(v110[0]) = 2;
  LOWORD(v110[1]) = 0;
  WORD1(v110[1]) = v12;
  *(&v110[1] + 4) = 0;
  v80 = objc_msgSend_useGridValueAsInputCoordinate(v11, v73, v74, v75, v76, v77, v78, v79);
  sub_239BF3730(v11, a2, a3, &v95, v80, v81, v82, v83);
  return 0;
}