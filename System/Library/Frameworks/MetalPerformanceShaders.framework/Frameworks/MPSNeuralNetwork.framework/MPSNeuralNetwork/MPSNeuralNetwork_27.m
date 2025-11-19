void sub_239D4B954(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (objc_msgSend_updateGammaAndBetaWithInstanceNormalizationStateBatch_(*(a1 + 32), a2, *(a1 + 40), a4, a5, a6, a7, a8))
  {
    objc_msgSend_reloadGammaAndBetaFromDataSource(*(a1 + 48), v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = *(a1 + 48);
}

uint64_t sub_239D4BC18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSCNNGroupNormalization alloc];
  result = objc_msgSend_initWithDevice_dataSource_(v5, v6, a2, *(v4 + 56), v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239D4BF24(uint64_t a1, uint64_t a2)
{
  v4 = [MPSCNNGroupNormalizationGradient alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239D4BF60(uint64_t result, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69[1] = *MEMORY[0x277D85DE8];
  if (*(result + 136))
  {
    v10 = result;
    result = objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
    if (result)
    {
      v17 = result;
      v18 = 0;
      while (1)
      {
        v19 = objc_msgSend_objectAtIndexedSubscript_(a4, v11, v18, v12, v13, v14, v15, v16);
        objc_opt_class();
        result = objc_opt_isKindOfClass();
        if (result)
        {
          break;
        }

        if (v17 == ++v18)
        {
          return result;
        }
      }

      if (v19)
      {
        v21 = objc_msgSend_groupNormalization(v19, v11, v20, v12, v13, v14, v15, v16);
        result = objc_msgSend_dataSource(v21, v22, v23, v24, v25, v26, v27, v28);
        v29 = result;
        if ((*(v10 + 136) & 2) != 0)
        {
          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            v67 = v29;
            MTLReportFailure();
          }

          v69[0] = v19;
          v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v69, 1, v31, v32, v33, v34, v67);
          result = objc_msgSend_updateGammaAndBetaWithCommandBuffer_groupNormalizationStateBatch_(v29, v36, a2, v35, v37, v38, v39, v40);
          if (result)
          {
            result = objc_msgSend_reloadGammaAndBetaWithCommandBuffer_gammaAndBetaState_(v21, v41, a2, result, v42, v43, v44, v45);
          }
        }

        if (*(v10 + 136))
        {
          if ((*(v19 + *MEMORY[0x277CD7470]) & 1) != 0 && MTLReportFailureTypeEnabled())
          {
            v67 = objc_msgSend_debugDescription(v19, v60, v61, v62, v63, v64, v65, v66);
            MTLReportFailure();
          }

          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            if (MTLReportFailureTypeEnabled())
            {
              v67 = v29;
              MTLReportFailure();
            }
          }

          objc_msgSend_synchronizeOnCommandBuffer_(v19, v46, a2, v47, v48, v49, v50, v51, v67);
          v52 = v19;
          v53 = v21;
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = sub_239D4C1F0;
          v68[3] = &unk_278B2F2A0;
          v68[4] = v29;
          v68[5] = v19;
          v68[6] = v21;
          return objc_msgSend_addCompletedHandler_(a2, v54, v68, v55, v56, v57, v58, v59);
        }
      }
    }
  }

  return result;
}

void sub_239D4C1F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v24[0] = *(a1 + 40);
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v24, 1, a5, a6, a7, a8);
  if (objc_msgSend_updateGammaAndBetaWithGroupNormalizationStateBatch_(v9, v11, v10, v12, v13, v14, v15, v16))
  {
    objc_msgSend_reloadGammaAndBetaFromDataSource(*(a1 + 48), v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_239D4C288(uint64_t result, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 136))
  {
    v10 = result;
    result = objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
    if (result)
    {
      v17 = result;
      v18 = 0;
      for (i = objc_msgSend_objectAtIndexedSubscript_(a4, v11, 0, v12, v13, v14, v15, v16); ; i = objc_msgSend_objectAtIndexedSubscript_(a4, v26, v18, v27, v28, v29, v30, v31))
      {
        objc_msgSend_objectAtIndexedSubscript_(i, v20, 0, v21, v22, v23, v24, v25);
        objc_opt_class();
        result = objc_opt_isKindOfClass();
        if (result)
        {
          v32 = objc_msgSend_objectAtIndexedSubscript_(a4, v26, v18, v27, v28, v29, v30, v31);
          result = objc_msgSend_count(v32, v33, v34, v35, v36, v37, v38, v39);
          if (result)
          {
            break;
          }
        }

        if (v17 == ++v18)
        {
          return result;
        }
      }

      result = objc_msgSend_objectAtIndexedSubscript_(a4, v26, v18, v27, v28, v29, v30, v31);
      if (result)
      {
        v46 = result;
        v47 = objc_msgSend_objectAtIndexedSubscript_(result, v40, 0, v41, v42, v43, v44, v45);
        v55 = objc_msgSend_groupNormalization(v47, v48, v49, v50, v51, v52, v53, v54);
        result = objc_msgSend_dataSource(v55, v56, v57, v58, v59, v60, v61, v62);
        v69 = result;
        if ((*(v10 + 136) & 2) != 0)
        {
          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            v99 = v69;
            MTLReportFailure();
          }

          result = objc_msgSend_updateGammaAndBetaWithCommandBuffer_groupNormalizationStateBatch_(v69, v70, a2, v46, v71, v72, v73, v74, v99);
          if (result)
          {
            v76 = result;
            result = objc_msgSend_gamma(result, v63, v75, v64, v65, v66, v67, v68);
            if (result)
            {
              result = objc_msgSend_beta(v76, v63, v77, v64, v65, v66, v67, v68);
              if (result)
              {
                result = objc_msgSend_reloadGammaAndBetaWithCommandBuffer_gammaAndBetaState_(v55, v63, a2, v76, v65, v66, v67, v68);
              }
            }
          }
        }

        if (*(v10 + 136))
        {
          objc_msgSend_objectAtIndexedSubscript_(v46, v63, 0, v64, v65, v66, v67, v68);
          if ((*(objc_msgSend_objectAtIndexedSubscript_(v46, v78, 0, v79, v80, v81, v82, v83) + *MEMORY[0x277CD7470]) & 1) != 0 && MTLReportFailureTypeEnabled())
          {
            objc_msgSend_debugDescription(v46, v92, v93, v94, v95, v96, v97, v98);
            MTLReportFailure();
          }

          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }

          MPSStateBatchSynchronize(v46, a2);
          v84 = v46;
          v85 = v55;
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = sub_239D4C538;
          v100[3] = &unk_278B2F2A0;
          v100[4] = v69;
          v100[5] = v46;
          v100[6] = v55;
          return objc_msgSend_addCompletedHandler_(a2, v86, v100, v87, v88, v89, v90, v91);
        }
      }
    }
  }

  return result;
}

void sub_239D4C538(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (objc_msgSend_updateGammaAndBetaWithGroupNormalizationStateBatch_(*(a1 + 32), a2, *(a1 + 40), a4, a5, a6, a7, a8))
  {
    objc_msgSend_reloadGammaAndBetaFromDataSource(*(a1 + 48), v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = *(a1 + 48);
}

void sub_239D4CA84(_Unwind_Exception *a1)
{
  v4 = sub_239C13FBC(v1);
  MEMORY[0x23EE7D130](v4, v2);
  _Unwind_Resume(a1);
}

void sub_239D4CAA0(_Unwind_Exception *a1)
{
  v4 = sub_239C14794(v1);
  MEMORY[0x23EE7D130](v4, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_239D4CB38(uint64_t a1)
{
  *a1 = &unk_284CCDAD0;

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;

  return sub_239C13FBC(a1);
}

void sub_239D4CB9C(uint64_t a1)
{
  *a1 = &unk_284CCDAD0;

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D4CC14(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MPSCNNBatchNormalization alloc];
  v6 = *(a1 + 144);
  v17 = sub_239BF0A68((a1 + 152), v7, v14, v15, v16, v8, v9, v10, v11, v12, v13);
  *(a1 + 104) = objc_msgSend_initWithDevice_dataSource_fusedNeuronDescriptor_(v5, v18, a2, v6, v17, v19, v20, v21);
  objc_autoreleasePoolPop(v4);

  *(a1 + 144) = 0;
}

uint64_t sub_239D4CC98(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 80))(a2) != 14)
  {
    return 0;
  }

  (*(*a2 + 352))(v5, a2);
  return sub_239BF0850(a1 + 152, v5);
}

uint64_t sub_239D4CD48(uint64_t a1)
{
  *a1 = &unk_284CCB900;

  *a1 = &unk_284CD2A80;

  return sub_239C13FBC(a1);
}

void sub_239D4CDCC(uint64_t a1)
{
  *a1 = &unk_284CCB900;

  *a1 = &unk_284CD2A80;
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

double sub_239D4CE64(uint64_t a1, uint64_t a2)
{
  v4 = [MPSCNNBatchNormalizationStatistics alloc];
  *(a1 + 144) = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  if (*(a1 + 160))
  {
    v17 = objc_autoreleasePoolPush();
    v21 = *(a1 + 160);
    if (v21 == 10)
    {
      v22 = objc_msgSend_bytes(*(a1 + 176), v11, v21, v12, v13, v14, v15, v16);
      v30 = v22 | objc_msgSend_length(*(a1 + 176), v23, v24, v25, v26, v27, v28, v29);
      v36 = objc_msgSend_cnnNeuronPReLUDescriptorWithData_noCopy_(MPSNNNeuronDescriptor, v31, *(a1 + 176), (*MEMORY[0x277D85F88] & v30) == 0, v32, v33, v34, v35);
    }

    else
    {
      LODWORD(v18) = *(a1 + 164);
      LODWORD(v19) = *(a1 + 168);
      LODWORD(v20) = *(a1 + 172);
      v36 = objc_msgSend_cnnNeuronDescriptorWithType_a_b_c_(MPSNNNeuronDescriptor, v11, v21, v12, v13, v14, v15, v16, v18, v19, v20);
    }

    v43 = v36;
    v44 = [MPSCNNBatchNormalization alloc];
    *(a1 + 104) = objc_msgSend_initWithDevice_dataSource_fusedNeuronDescriptor_(v44, v45, a2, *(a1 + 152), v43, v46, v47, v48);
    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v37 = [MPSCNNBatchNormalization alloc];
    *(a1 + 104) = objc_msgSend_initWithDevice_dataSource_(v37, v38, a2, *(a1 + 152), v39, v40, v41, v42);
  }

  result = 0.0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t sub_239D4CF78(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 80))(a2) != 14)
  {
    return 0;
  }

  (*(*a2 + 352))(v5, a2);
  return sub_239BF0850(a1 + 160, v5);
}

void sub_239D4D2E8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 152);
  if (*(a1 + 152))
  {
    v11 = objc_autoreleasePoolPush();
    v15 = *v4;
    if (v15 == 10)
    {
      v16 = objc_msgSend_bytes(*(a1 + 168), v5, v15, v6, v7, v8, v9, v10);
      v24 = v16 | objc_msgSend_length(*(a1 + 168), v17, v18, v19, v20, v21, v22, v23);
      v30 = objc_msgSend_cnnNeuronPReLUDescriptorWithData_noCopy_(MPSNNNeuronDescriptor, v25, *(a1 + 168), (*MEMORY[0x277D85F88] & v24) == 0, v26, v27, v28, v29);
    }

    else
    {
      LODWORD(v12) = *(a1 + 156);
      LODWORD(v13) = *(a1 + 160);
      LODWORD(v14) = *(a1 + 164);
      v30 = objc_msgSend_cnnNeuronDescriptorWithType_a_b_c_(MPSNNNeuronDescriptor, v5, v15, v6, v7, v8, v9, v10, v12, v13, v14);
    }

    v45 = v30;
    v46 = [MPSCNNBatchNormalizationStatisticsGradient alloc];
    *(a1 + 144) = objc_msgSend_initWithDevice_fusedNeuronDescriptor_(v46, v47, a2, v45, v48, v49, v50, v51);
    v52 = [MPSCNNBatchNormalizationGradient alloc];
    *(a1 + 104) = objc_msgSend_initWithDevice_fusedNeuronDescriptor_(v52, v53, a2, v45, v54, v55, v56, v57);
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v31 = [MPSCNNBatchNormalizationStatisticsGradient alloc];
    *(a1 + 144) = objc_msgSend_initWithDevice_(v31, v32, a2, v33, v34, v35, v36, v37);
    v38 = [MPSCNNBatchNormalizationGradient alloc];
    *(a1 + 104) = objc_msgSend_initWithDevice_(v38, v39, a2, v40, v41, v42, v43, v44);
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
}

uint64_t sub_239D4D410(uint64_t a1)
{
  *a1 = &unk_284CD0170;

  return sub_239C13FBC(a1);
}

void sub_239D4D46C(uint64_t a1)
{
  *a1 = &unk_284CD0170;

  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D4D4DC(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 104);
  result = objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v21 = result;
    v22 = 0;
    while (1)
    {
      v23 = objc_msgSend_objectAtIndexedSubscript_(a4, v15, v22, v16, v17, v18, v19, v20);
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        break;
      }

      if (v21 == ++v22)
      {
        return result;
      }
    }

    if (v23)
    {
      v24 = objc_msgSend_objectAtIndexedSubscript_(a3, v15, 0, v16, v17, v18, v19, v20);
      v31 = objc_msgSend_objectAtIndexedSubscript_(a3, v25, 1, v26, v27, v28, v29, v30);
      objc_msgSend_encodeToCommandBuffer_sourceGradient_sourceImage_batchNormalizationState_destinationGradient_(v13, v32, a2, v24, v31, v23, a6, v33);
      result = (*(*a1 + 352))(a1, a2, a3, a4, a5, a6);
      if (*(a1 + 136))
      {
        v41 = objc_msgSend_batchNormalization(v23, v34, v35, v36, v37, v38, v39, v40);
        result = objc_msgSend_dataSource(v41, v42, v43, v44, v45, v46, v47, v48);
        v49 = result;
        if ((*(a1 + 136) & 2) != 0)
        {
          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            v97 = v49;
            MTLReportFailure();
          }

          if (objc_opt_respondsToSelector())
          {
            if (*(v23 + *MEMORY[0x277CD7470]))
            {
              Count = objc_msgSend_readCount(v23, v50, v51, v52, v53, v54, v55, v56);
              objc_msgSend_setReadCount_(v23, v58, Count + 1, v59, v60, v61, v62, v63);
            }

            updated = objc_msgSend_updateMeanAndVarianceWithCommandBuffer_batchNormalizationState_(v49, v50, a2, v23, v53, v54, v55, v56, v97);
            result = objc_msgSend_updateGammaAndBetaWithCommandBuffer_batchNormalizationState_(v49, v65, a2, v23, v66, v67, v68, v69);
            v75 = result;
            if (updated)
            {
              result = objc_msgSend_reloadMeanAndVarianceWithCommandBuffer_meanAndVarianceState_(v41, v70, a2, updated, v71, v72, v73, v74);
            }
          }

          else
          {
            result = objc_msgSend_updateGammaAndBetaWithCommandBuffer_batchNormalizationState_(v49, v50, a2, v23, v53, v54, v55, v56);
            v75 = result;
          }

          if (v75)
          {
            result = objc_msgSend_reloadGammaAndBetaWithCommandBuffer_gammaAndBetaState_(v41, v70, a2, v75, v71, v72, v73, v74);
          }
        }

        if (*(a1 + 136))
        {
          if ((*(v23 + *MEMORY[0x277CD7470]) & 1) != 0 && MTLReportFailureTypeEnabled())
          {
            v97 = objc_msgSend_debugDescription(v23, v90, v91, v92, v93, v94, v95, v96);
            MTLReportFailure();
          }

          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            if (MTLReportFailureTypeEnabled())
            {
              v97 = v49;
              MTLReportFailure();
            }
          }

          objc_msgSend_synchronizeOnCommandBuffer_(v23, v76, a2, v77, v78, v79, v80, v81, v97);
          v82 = v23;
          v83 = v41;
          v99[0] = MEMORY[0x277D85DD0];
          v99[1] = 3221225472;
          v99[2] = sub_239D4D854;
          v99[3] = &unk_278B2F2A0;
          v99[4] = v49;
          v99[5] = v23;
          v99[6] = v41;
          return objc_msgSend_addCompletedHandler_(a2, v84, v99, v85, v86, v87, v88, v89);
        }
      }
    }
  }

  return result;
}

void sub_239D4D854(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  updated = objc_msgSend_updateGammaAndBetaWithBatchNormalizationState_(*(a1 + 32), a2, *(a1 + 40), a4, a5, a6, a7, a8);
  if ((objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_updateMeanAndVarianceWithBatchNormalizationState_(*(a1 + 32), v10, *(a1 + 40), v12, v13, v14, v15, v16))
  {
    objc_msgSend_reloadMeanAndVarianceFromDataSource(*(a1 + 48), v10, v11, v12, v13, v14, v15, v16);
  }

  if (updated)
  {
    objc_msgSend_reloadGammaAndBetaFromDataSource(*(a1 + 48), v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = *(a1 + 48);
}

uint64_t sub_239D4D8D4(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 104);
  result = objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v21 = result;
    v22 = 0;
    while (1)
    {
      v23 = objc_msgSend_objectAtIndexedSubscript_(a4, v15, v22, v16, v17, v18, v19, v20);
      v30 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, 0, v25, v26, v27, v28, v29);
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        break;
      }

      if (v21 == ++v22)
      {
        return result;
      }
    }

    if (v30)
    {
      v31 = objc_msgSend_objectAtIndexedSubscript_(a3, v15, 0, v16, v17, v18, v19, v20);
      v38 = objc_msgSend_objectAtIndexedSubscript_(a3, v32, 1, v33, v34, v35, v36, v37);
      objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_batchNormalizationState_destinationGradients_(v13, v39, a2, v31, v38, v30, a6, v40);
      result = (*(*a1 + 360))(a1, a2, a3, a4, a5, a6);
      if (*(a1 + 136))
      {
        v48 = objc_msgSend_batchNormalization(v30, v41, v42, v43, v44, v45, v46, v47);
        result = objc_msgSend_dataSource(v48, v49, v50, v51, v52, v53, v54, v55);
        v56 = result;
        if ((*(a1 + 136) & 2) != 0)
        {
          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            v104 = v56;
            MTLReportFailure();
          }

          if (objc_opt_respondsToSelector())
          {
            if (*(v30 + *MEMORY[0x277CD7470]))
            {
              Count = objc_msgSend_readCount(v30, v57, v58, v59, v60, v61, v62, v63);
              objc_msgSend_setReadCount_(v30, v65, Count + 1, v66, v67, v68, v69, v70);
            }

            updated = objc_msgSend_updateMeanAndVarianceWithCommandBuffer_batchNormalizationState_(v56, v57, a2, v30, v60, v61, v62, v63, v104);
            result = objc_msgSend_updateGammaAndBetaWithCommandBuffer_batchNormalizationState_(v56, v72, a2, v30, v73, v74, v75, v76);
            v82 = result;
            if (updated)
            {
              result = objc_msgSend_reloadMeanAndVarianceWithCommandBuffer_meanAndVarianceState_(v48, v77, a2, updated, v78, v79, v80, v81);
            }
          }

          else
          {
            result = objc_msgSend_updateGammaAndBetaWithCommandBuffer_batchNormalizationState_(v56, v57, a2, v30, v60, v61, v62, v63);
            v82 = result;
          }

          if (v82)
          {
            result = objc_msgSend_reloadGammaAndBetaWithCommandBuffer_gammaAndBetaState_(v48, v77, a2, v82, v78, v79, v80, v81);
          }
        }

        if (*(a1 + 136))
        {
          if ((*(v30 + *MEMORY[0x277CD7470]) & 1) != 0 && MTLReportFailureTypeEnabled())
          {
            v104 = objc_msgSend_debugDescription(v30, v97, v98, v99, v100, v101, v102, v103);
            MTLReportFailure();
          }

          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            if (MTLReportFailureTypeEnabled())
            {
              v104 = v56;
              MTLReportFailure();
            }
          }

          objc_msgSend_synchronizeOnCommandBuffer_(v30, v83, a2, v84, v85, v86, v87, v88, v104);
          v89 = v30;
          v90 = v48;
          v106[0] = MEMORY[0x277D85DD0];
          v106[1] = 3221225472;
          v106[2] = sub_239D4DC54;
          v106[3] = &unk_278B2F2A0;
          v106[4] = v56;
          v106[5] = v30;
          v106[6] = v48;
          return objc_msgSend_addCompletedHandler_(a2, v91, v106, v92, v93, v94, v95, v96);
        }
      }
    }
  }

  return result;
}

void sub_239D4DC54(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  updated = objc_msgSend_updateGammaAndBetaWithBatchNormalizationState_(*(a1 + 32), a2, *(a1 + 40), a4, a5, a6, a7, a8);
  if ((objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_updateMeanAndVarianceWithBatchNormalizationState_(*(a1 + 32), v10, *(a1 + 40), v12, v13, v14, v15, v16))
  {
    objc_msgSend_reloadMeanAndVarianceFromDataSource(*(a1 + 48), v10, v11, v12, v13, v14, v15, v16);
  }

  if (updated)
  {
    objc_msgSend_reloadGammaAndBetaFromDataSource(*(a1 + 48), v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = *(a1 + 48);
}

uint64_t sub_239D4DCD4(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 80))(a2) != 15)
  {
    return 0;
  }

  memset(v5, 0, sizeof(v5));
  (*(*a2 + 352))(v5, a2);
  return sub_239BF0850(a1 + 152, v5);
}

void sub_239D4DD90(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D4DDD4(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D4DE18(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D4DE5C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D4DEA0(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D4DEE4(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D4DF28(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void *sub_239D4DF68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v13 = *(a1 + 88);
  if (v13)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v16 = 0;
    do
    {
      v17 = *(*(a1 + 80) + 8 * v16);
      if (v17)
      {
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = 0;
          while (1)
          {
            v20 = *(*(v17 + 8) + 8 * v19);
            if (v20 && (*(*v20 + 80))(v20) == 11)
            {
              v8 = (v20[136] & 1) == 0;
              if (++v19 >= v18)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v8 = 1;
              if (++v19 >= v18)
              {
                goto LABEL_19;
              }
            }

            if (!v8)
            {
              goto LABEL_19;
            }
          }
        }

        v8 = 1;
        if (++v16 >= v13)
        {
          break;
        }
      }

      else
      {
        v8 = 1;
LABEL_19:
        if (++v16 >= v13)
        {
          break;
        }
      }
    }

    while (v8);
  }

  if (a5)
  {
    return 0;
  }

  v21 = *(a1 + 104);
  v23 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);
  if (v8)
  {
    result = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(v21, v22, a6, v23, a3, a4, v25, v26);
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
    result = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(v21, v22, v23, a3, a4, v24, v25, v26);
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

void *sub_239D4E130(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BOOL8 a7, uint64_t a8)
{
  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = !a7;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 80) + 8 * v15);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = 0;
          while (1)
          {
            v19 = *(*(v16 + 8) + 8 * v18);
            if (v19 && (*(*v19 + 80))(v19) == 11)
            {
              a7 = (v19[136] & 1) == 0;
              if (++v18 >= v17)
              {
                goto LABEL_19;
              }
            }

            else
            {
              a7 = 1;
              if (++v18 >= v17)
              {
                goto LABEL_19;
              }
            }

            if (!a7)
            {
              goto LABEL_19;
            }
          }
        }

        a7 = 1;
        if (++v15 >= v12)
        {
          break;
        }
      }

      else
      {
        a7 = 1;
LABEL_19:
        if (++v15 >= v12)
        {
          break;
        }
      }
    }

    while (a7);
  }

  return sub_239BE1E80(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_239D4E288(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D4E2C0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 136) & 2) == 0)
  {
    return 1;
  }

  v2 = *(*(a1 + 56) + 8 * a2);
  if (!v2)
  {
    return 1;
  }

  v3 = *(v2 + 32);
  if (!v3)
  {
    return 2;
  }

  if ((*(*v3 + 80))(v3) == 10)
  {
    return 2;
  }

  return 1;
}

void sub_239D4E348(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void *sub_239D4E388(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v13 = *(a1 + 88);
  if (v13)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v16 = 0;
    do
    {
      v17 = *(*(a1 + 80) + 8 * v16);
      if (v17)
      {
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = 0;
          while (1)
          {
            v20 = *(*(v17 + 8) + 8 * v19);
            if (v20 && (*(*v20 + 80))(v20) == 13)
            {
              v8 = (v20[136] & 1) == 0;
              if (++v19 >= v18)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v8 = 1;
              if (++v19 >= v18)
              {
                goto LABEL_19;
              }
            }

            if (!v8)
            {
              goto LABEL_19;
            }
          }
        }

        v8 = 1;
        if (++v16 >= v13)
        {
          break;
        }
      }

      else
      {
        v8 = 1;
LABEL_19:
        if (++v16 >= v13)
        {
          break;
        }
      }
    }

    while (v8);
  }

  if (a5)
  {
    return 0;
  }

  v21 = *(a1 + 104);
  v23 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);
  if (v8)
  {
    result = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(v21, v22, a6, v23, a3, a4, v25, v26);
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
    result = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(v21, v22, v23, a3, a4, v24, v25, v26);
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

void *sub_239D4E550(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BOOL8 a7, uint64_t a8)
{
  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = !a7;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 80) + 8 * v15);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = 0;
          while (1)
          {
            v19 = *(*(v16 + 8) + 8 * v18);
            if (v19 && (*(*v19 + 80))(v19) == 13)
            {
              a7 = (v19[136] & 1) == 0;
              if (++v18 >= v17)
              {
                goto LABEL_19;
              }
            }

            else
            {
              a7 = 1;
              if (++v18 >= v17)
              {
                goto LABEL_19;
              }
            }

            if (!a7)
            {
              goto LABEL_19;
            }
          }
        }

        a7 = 1;
        if (++v15 >= v12)
        {
          break;
        }
      }

      else
      {
        a7 = 1;
LABEL_19:
        if (++v15 >= v12)
        {
          break;
        }
      }
    }

    while (a7);
  }

  return sub_239BE1E80(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_239D4E6A8(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D4E6E0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 136) & 2) == 0)
  {
    return 1;
  }

  v2 = *(*(a1 + 56) + 8 * a2);
  if (!v2)
  {
    return 1;
  }

  v3 = *(v2 + 32);
  if (!v3)
  {
    return 2;
  }

  if ((*(*v3 + 80))(v3) == 12)
  {
    return 2;
  }

  return 1;
}

uint64_t sub_239D4E7A8(void *a1, const char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v14 = a1[18];
  v15 = objc_msgSend_objectAtIndexedSubscript_(a5, a2, 0, a4, a5, a6, a7, a8);
  v33[0] = objc_msgSend_objectAtIndexedSubscript_(a3, v16, 0, v17, v18, v19, v20, v21);
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v33, 1, v23, v24, v25, v26);
  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_batchNormalizationState_(v14, v28, a2, v27, v15, v29, v30, v31);
  return (*(*a1 + 184))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_239D4E8B0(void *a1, const char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[13];
  v15 = objc_msgSend_objectAtIndexedSubscript_(a5, a2, 0, a4, a5, a6, a7, a8);
  v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, 0, v17, v18, v19, v20, v21);
  objc_msgSend_encodeToCommandBuffer_sourceImage_batchNormalizationState_destinationImage_(v14, v23, a2, v22, v15, a6, v24, v25);
  v26 = *(*a1 + 352);

  return v26(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_239D4E990(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1[18];
  (*(*a1 + 192))(a1);
  v15 = objc_msgSend_objectAtIndexedSubscript_(a5, v9, 0, v10, v11, v12, v13, v14);
  v22 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0, v17, v18, v19, v20, v21);
  v30 = objc_msgSend_objectAtIndexedSubscript_(a3, v23, 0, v24, v25, v26, v27, v28);

  return objc_msgSend_encodeBatchToCommandBuffer_sourceImages_batchNormalizationState_(v8, v29, a2, v30, v22, v31, v32, v33);
}

uint64_t sub_239D4EA2C(void *a1, const char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[13];
  v15 = objc_msgSend_objectAtIndexedSubscript_(a5, a2, 0, a4, a5, a6, a7, a8);
  v22 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_objectAtIndexedSubscript_(a3, v23, 0, v24, v25, v26, v27, v28);
  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_batchNormalizationState_destinationImages_(v14, v30, a2, v29, v22, a6, v31, v32);
  v33 = *(*a1 + 360);

  return v33(a1, a2, a3, a4, a5, a6);
}

void *sub_239D4EB2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v13 = *(a1 + 88);
  if (v13)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v16 = 0;
    do
    {
      v17 = *(*(a1 + 80) + 8 * v16);
      if (v17)
      {
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = 0;
          while (1)
          {
            v20 = *(*(v17 + 8) + 8 * v19);
            if (v20 && (*(*v20 + 80))(v20) == 3)
            {
              v8 = (v20[136] & 1) == 0;
              if (++v19 >= v18)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v8 = 1;
              if (++v19 >= v18)
              {
                goto LABEL_19;
              }
            }

            if (!v8)
            {
              goto LABEL_19;
            }
          }
        }

        v8 = 1;
        if (++v16 >= v13)
        {
          break;
        }
      }

      else
      {
        v8 = 1;
LABEL_19:
        if (++v16 >= v13)
        {
          break;
        }
      }
    }

    while (v8);
  }

  if (a5)
  {
    return 0;
  }

  v21 = *(a1 + 104);
  v23 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);
  if (v8)
  {
    result = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(v21, v22, a6, v23, 0, a4, v25, v26);
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
    result = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(v21, v22, v23, 0, a4, v24, v25, v26);
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

void *sub_239D4ECF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BOOL8 a7, uint64_t a8)
{
  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = !a7;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 80) + 8 * v15);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = 0;
          while (1)
          {
            v19 = *(*(v16 + 8) + 8 * v18);
            if (v19 && (*(*v19 + 80))(v19) == 3)
            {
              a7 = (v19[136] & 1) == 0;
              if (++v18 >= v17)
              {
                goto LABEL_19;
              }
            }

            else
            {
              a7 = 1;
              if (++v18 >= v17)
              {
                goto LABEL_19;
              }
            }

            if (!a7)
            {
              goto LABEL_19;
            }
          }
        }

        a7 = 1;
        if (++v15 >= v12)
        {
          break;
        }
      }

      else
      {
        a7 = 1;
LABEL_19:
        if (++v15 >= v12)
        {
          break;
        }
      }
    }

    while (a7);
  }

  return sub_239BE1E80(a1, a2, 0, a4, a5, a6, a7, a8);
}

uint64_t sub_239D4EE68(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 136) & 2) == 0)
  {
    return 2;
  }

  v2 = *(*(a1 + 56) + 8 * a2);
  if (!v2)
  {
    return 2;
  }

  v3 = *(v2 + 32);
  if (!v3)
  {
    return 3;
  }

  if ((*(*v3 + 80))(v3) == 2)
  {
    return 3;
  }

  return 2;
}

uint64_t sub_239D4EEE4(void *a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v14 = a1[18];
  v15 = objc_msgSend_objectAtIndexedSubscript_(a4, a2, 0, a4, a5, a6, a7, a8);
  v45[0] = objc_msgSend_objectAtIndexedSubscript_(a3, v16, 0, v17, v18, v19, v20, v21);
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v45, 1, v23, v24, v25, v26);
  v44 = objc_msgSend_objectAtIndexedSubscript_(a3, v28, 1, v29, v30, v31, v32, v33);
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, &v44, 1, v35, v36, v37, v38);
  objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_batchNormalizationState_(v14, v40, a2, v27, v39, v15, v41, v42);
  return (*(*a1 + 184))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_239D4F01C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1[18];
  (*(*a1 + 192))(a1);
  v14 = objc_msgSend_objectAtIndexedSubscript_(a4, v8, 0, v9, v10, v11, v12, v13);
  v21 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, 0, v16, v17, v18, v19, v20);
  v28 = objc_msgSend_objectAtIndexedSubscript_(a3, v22, 0, v23, v24, v25, v26, v27);
  v36 = objc_msgSend_objectAtIndexedSubscript_(a3, v29, 1, v30, v31, v32, v33, v34);

  return objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_batchNormalizationState_(v7, v35, a2, v28, v36, v21, v37, v38);
}

uint64_t sub_239D4F434(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1[25];
  v13 = a1[26];
  v44 = *(a4 + 120);
  v14 = *(a4 + 136);
  v15 = *(a4 + 144);
  v17 = *(a4 + 152);
  v16 = *(a4 + 160);
  if (a1[27] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (a1[28] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (a1[29] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (a1[30] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (a1[44] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_width(*a4, a2, a3, a4, a5, a6, a7, a8, v44);
  if (objc_msgSend_width(*a4, v18, v19, v20, v21, v22, v23, v24) != v12 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_height(*a4, v25, v26, v27, v28, v29, v30, v31);
  if (objc_msgSend_height(*a4, v32, v33, v34, v35, v36, v37, v38) != v13 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v15 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v17 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  *(a4 + 168) = v12 >> 1;
  *(a4 + 176) = v13 >> 1;
  *(a4 + 120) = v45;
  *(a4 + 136) = v14;
  *(a4 + 144) = vdupq_n_s64(1uLL);
  *(a4 + 160) = v16;

  return sub_239D5FB2C(a1, a2, a3, a4, v39, v40, v41, v42);
}

void sub_239D50514(_Unwind_Exception *a1)
{
  v4 = sub_239C13FBC(v2);
  MEMORY[0x23EE7D130](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239D506D8(uint64_t a1)
{
  *a1 = &unk_284CD1150;

  *(a1 + 144) = 0;

  return sub_239C13FBC(a1);
}

void sub_239D50738(uint64_t a1)
{
  *a1 = &unk_284CD1150;

  *(a1 + 144) = 0;
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D507AC(uint64_t a1, void *a2)
{
  if (*(a1 + 104) && MTLReportFailureTypeEnabled())
  {
    v74 = objc_msgSend_debugDescription(*(a1 + 104), v59, v60, v61, v62, v63, v64, v65);
    MTLReportFailure();
  }

  if (!*(a1 + 144) && MTLReportFailureTypeEnabled())
  {
    v73 = *(a1 + 104);
    if (!v73)
    {
      v73 = *(a1 + 112);
    }

    objc_msgSend_debugDescription(v73, v66, v67, v68, v69, v70, v71, v72, v74);
    MTLReportFailure();
  }

  v4 = (*(*a2 + 80))(a2);
  if (v4 != 1)
  {
    if (v4 != 14)
    {
      return 0;
    }

    memset(v75, 0, sizeof(v75));
    (*(*a2 + 352))(v75, a2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return objc_msgSend_appendNeuron_(*(a1 + 144), v12, v75, v13, v14, v15, v16, v17);
    }

    v21 = objc_autoreleasePoolPush();
    v28 = objc_msgSend_wrapperForDataSource_(MPSConvolutionDataSourceWrapper, v22, *(a1 + 144), v23, v24, v25, v26, v27);
    if (v28)
    {
      v35 = v28;
      if (objc_msgSend_appendNeuron_(v28, v29, v75, v30, v31, v32, v33, v34))
      {

        v36 = v35;
LABEL_21:
        *(a1 + 144) = v36;
        v58 = 1;
LABEL_23:
        objc_autoreleasePoolPop(v21);
        return v58;
      }
    }

    goto LABEL_22;
  }

  v19 = a2[13];
  if (v19)
  {
    v20 = objc_msgSend_dataSource(v19, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v20 = a2[18];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v50 = objc_msgSend_wrapperForDataSource_(MPSConvolutionDataSourceWrapper, v44, *(a1 + 144), v45, v46, v47, v48, v49);
    if (v50)
    {
      v57 = v50;
      if (objc_msgSend_appendBatchNorm_(v50, v51, v20, v52, v53, v54, v55, v56))
      {

        v36 = v57;
        goto LABEL_21;
      }
    }

LABEL_22:
    v58 = 0;
    goto LABEL_23;
  }

  v43 = *(a1 + 144);

  return objc_msgSend_appendBatchNorm_(v43, v37, v20, v38, v39, v40, v41, v42);
}

void sub_239D50A20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v4 = (*(*a1 + 352))(a1, a2, *(a1 + 144));
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      objc_msgSend_setAccumulatorPrecisionOption_(v4, v5, *(v3 + 64), v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 104) = v4;

  *(a1 + 144) = 0;
}

uint64_t sub_239D50AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MPSCNNConvolution alloc];

  return objc_msgSend_initWithDevice_weights_(v5, v6, a2, a3, v7, v8, v9, v10);
}

uint64_t sub_239D511E8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[14] + 56);
  if (v10)
  {
LABEL_12:
    v23 = objc_msgSend_load(v10, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_13;
  }

  v11 = a1[8];
  if (!v11)
  {
LABEL_10:
    v10 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v10 = 0;
    }

    goto LABEL_12;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(a1[7] + 8 * v12);
    if (v13)
    {
      v14 = *(v13 + 32);
      if (v14)
      {
        if ((*(*v14 + 80))(v14) == 6)
        {
          v15 = (*(*v14 + 360))(v14);
          if (v15)
          {
            break;
          }
        }
      }
    }

    if (v11 == ++v12)
    {
      goto LABEL_10;
    }
  }

  v10 = v15;
  v23 = objc_msgSend_load(v15, v16, v17, v18, v19, v20, v21, v22);
LABEL_13:
  v31 = v23;
  if ((v23 & 1) == 0)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_16;
    }

    v91 = v10;
    v92 = objc_msgSend_debugDescription(v10, v81, v82, v83, v84, v85, v86, v87);
    goto LABEL_32;
  }

  v32 = objc_msgSend_descriptor(v10, v24, v25, v26, v27, v28, v29, v30);
  if (!v32)
  {
    v88 = MTLReportFailureTypeEnabled();
    v32 = 0;
    if (v88)
    {
      v89 = objc_opt_class();
      v91 = NSStringFromClass(v89);
      MTLReportFailure();
      v32 = 0;
    }
  }

  v40 = v32;
  v41 = objc_msgSend_fusedNeuronDescriptor(v32, v33, v34, v35, v36, v37, v38, v39, v91);
  objc_msgSend_neuronType(v41, v42, v43, v44, v45, v46, v47, v48);
  v56 = objc_msgSend_fusedNeuronDescriptor(v40, v49, v50, v51, v52, v53, v54, v55);
  if (objc_msgSend_neuronType(v56, v57, v58, v59, v60, v61, v62, v63) && MTLReportFailureTypeEnabled())
  {
    v90 = objc_opt_class();
    v91 = NSStringFromClass(v90);
LABEL_32:
    MTLReportFailure();
  }

LABEL_16:
  v64 = [MPSCNNConvolutionGradient alloc];
  v77 = objc_msgSend_initWithDevice_weights_(v64, v65, a2, v10, v66, v67, v68, v69);
  if (v31)
  {
    objc_msgSend_purge(v10, v70, v71, v72, v73, v74, v75, v76);
  }

  v78 = a1[1];
  v79 = *(v78 + 16) || *(v78 + 80) == 1;
  if ((a1[17] & 3) != 0)
  {
    result = objc_msgSend_setGradientOption_(v77, v70, v79 | 2, v72, v73, v74, v75, v76, v91, v92);
  }

  else
  {
    result = objc_msgSend_setGradientOption_(v77, v70, v79, v72, v73, v74, v75, v76, v91, v92);
  }

  a1[13] = v77;
  return result;
}

uint64_t sub_239D5145C(uint64_t a1)
{
  if (!(*(*a1 + 352))(a1))
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = 0;
      while (1)
      {
        v4 = *(*(a1 + 56) + 8 * v3);
        if (v4)
        {
          v5 = *(v4 + 32);
          if (v5)
          {
            if ((*(*v5 + 80))(v5) == 6 && (*(*v5 + 360))(v5))
            {
              break;
            }
          }
        }

        if (v2 == ++v3)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      if (MTLReportFailureTypeEnabled())
      {
        objc_msgSend_debugDescription(*(a1 + 104), v6, v7, v8, v9, v10, v11, v12);
        MTLReportFailure();
      }
    }
  }

  v13 = *(*a1 + 288);

  return v13(a1);
}

_WORD *sub_239D515C4(uint64_t a1, size_t *a2)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v6 = *(*(a1 + 56) + 8 * v5);
        if (v6)
        {
          v7 = *(v6 + 32);
          if (v7)
          {
            break;
          }
        }

        if (++v5 >= v4)
        {
          goto LABEL_11;
        }
      }

      ++v5;
    }

    while ((*(*v7 + 80))(v7) != 6 && v5 < v4);
  }

LABEL_11:

  return sub_239C14460(a1, a2);
}

void sub_239D5166C(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 136))
  {
    v12 = objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
    if (v12)
    {
      v19 = v12;
      v20 = 0;
      while (1)
      {
        objc_msgSend_objectAtIndexedSubscript_(a4, v13, v20, v14, v15, v16, v17, v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v19 == ++v20)
        {
          return;
        }
      }

      v21 = objc_msgSend_objectAtIndexedSubscript_(a4, v13, v20, v14, v15, v16, v17, v18);
      if (v21)
      {
        v22 = v21;
        v23 = objc_autoreleasePoolPush();
        v31 = objc_msgSend_dataSource(*(a1 + 104), v24, v25, v26, v27, v28, v29, v30);
        v32 = *(a1 + 104);
        v40 = objc_msgSend_convolution(v22, v33, v34, v35, v36, v37, v38, v39);
        v48 = v40;
        if (!v31)
        {
          v31 = objc_msgSend_dataSource(v40, v41, v42, v43, v44, v45, v46, v47);
          if (!v31)
          {
            if (MTLReportFailureTypeEnabled())
            {
              v101 = objc_msgSend_debugDescription(*(a1 + 104), v41, v91, v92, v44, v45, v46, v47);
              MTLReportFailure();
              v31 = 0;
            }
          }
        }

        CanBeTemporary = objc_msgSend_exportWeightsAndBiasesWithCommandBuffer_resultStateCanBeTemporary_(v48, v41, a2, (*(a1 + 136) & 1) == 0, v44, v45, v46, v47, v101);
        if (CanBeTemporary)
        {
          v50 = CanBeTemporary;
          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            v102 = objc_msgSend_label(v31, v51, v93, v52, v53, v54, v55, v56);
            v103 = objc_msgSend_debugDescription(v31, v94, v95, v96, v97, v98, v99, v100);
            MTLReportFailure();
          }

          if ((*(a1 + 136) & 2) != 0)
          {
            v57 = objc_msgSend_updateWithCommandBuffer_gradientState_sourceState_(v31, v51, a2, v22, v50, v54, v55, v56);
            v58 = v57;
            v59 = MEMORY[0x277CD7470];
            if (v57)
            {
              v104 = v23;
              v60 = v32;
              v61 = *&v57[*MEMORY[0x277CD7470]];
              if (v48)
              {
                if (v61)
                {
                  objc_msgSend_setReadCount_(v57, v51, 2, v52, v53, v54, v55, v56);
                }

                objc_msgSend_reloadWeightsAndBiasesWithCommandBuffer_state_(v48, v51, a2, v58, v53, v54, v55, v56, v102, v103);
              }

              if (v61)
              {
                objc_msgSend_setReadCount_(v58, v51, 1, v52, v53, v54, v55, v56);
              }

              v32 = v60;
              objc_msgSend_reloadWeightsAndBiasesWithCommandBuffer_state_(v60, v51, a2, v58, v53, v54, v55, v56, v102);
              v23 = v104;
              v59 = MEMORY[0x277CD7470];
            }

            if (v58 != v50 && (*(v50 + *v59) & 1) != 0)
            {
              objc_msgSend_setReadCount_(v50, v51, 0, v52, v53, v54, v55, v56);
            }
          }

          if (*(a1 + 136))
          {
            objc_msgSend_objectAtIndexedSubscript_(a3, v51, 1, v52, v53, v54, v55, v56);
            if (*(objc_msgSend_objectAtIndexedSubscript_(a3, v62, 1, v63, v64, v65, v66, v67) + *MEMORY[0x277CD7320] + 56))
            {
              if (MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }
            }

            objc_msgSend_synchronizeOnCommandBuffer_(v50, v68, a2, v69, v70, v71, v72, v73, v102);
            objc_msgSend_synchronizeOnCommandBuffer_(v22, v74, a2, v75, v76, v77, v78, v79);
            v80 = v31;
            v81 = v50;
            v82 = v22;
            v83 = v48;
            v84 = v32;
            v105[0] = MEMORY[0x277D85DD0];
            v105[1] = 3221225472;
            v105[2] = sub_239D519CC;
            v105[3] = &unk_278B36D98;
            v105[4] = v31;
            v105[5] = v22;
            v105[6] = v50;
            v105[7] = v32;
            v105[8] = v48;
            objc_msgSend_addCompletedHandler_(a2, v85, v105, v86, v87, v88, v89, v90);
          }
        }

        objc_autoreleasePoolPop(v23);
      }
    }
  }
}

void sub_239D519CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (objc_msgSend_updateWithGradientState_sourceState_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), a5, a6, a7, a8))
  {
    objc_msgSend_reloadWeightsAndBiasesFromDataSource(*(a1 + 56), v9, v10, v11, v12, v13, v14, v15);
    v23 = *(a1 + 64);
    if (v23)
    {
      objc_msgSend_reloadWeightsAndBiasesFromDataSource(v23, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v24 = *(a1 + 56);
}

void sub_239D51A44(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 136))
  {
    v11 = objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
    if (v11)
    {
      v18 = v11;
      v19 = 0;
      while (1)
      {
        v20 = objc_msgSend_objectAtIndexedSubscript_(a4, v12, v19, v13, v14, v15, v16, v17);
        objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0, v22, v23, v24, v25, v26);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v18 == ++v19)
        {
          return;
        }
      }

      v27 = objc_msgSend_objectAtIndexedSubscript_(a4, v12, v19, v13, v14, v15, v16, v17);
      if (v27)
      {
        v28 = v27;
        v29 = objc_autoreleasePoolPush();
        v37 = objc_msgSend_dataSource(*(a1 + 104), v30, v31, v32, v33, v34, v35, v36);
        v38 = *(a1 + 104);
        v45 = objc_msgSend_objectAtIndexedSubscript_(v28, v39, 0, v40, v41, v42, v43, v44);
        v53 = objc_msgSend_convolution(v45, v46, v47, v48, v49, v50, v51, v52);
        v61 = v53;
        if (!v37)
        {
          v37 = objc_msgSend_dataSource(v53, v54, v55, v56, v57, v58, v59, v60);
          if (!v37)
          {
            if (MTLReportFailureTypeEnabled())
            {
              v128 = objc_msgSend_debugDescription(*(a1 + 104), v54, v118, v119, v57, v58, v59, v60);
              MTLReportFailure();
              v37 = 0;
            }
          }
        }

        CanBeTemporary = objc_msgSend_exportWeightsAndBiasesWithCommandBuffer_resultStateCanBeTemporary_(v61, v54, a2, (*(a1 + 136) & 1) == 0, v57, v58, v59, v60, v128);
        if (CanBeTemporary)
        {
          v63 = CanBeTemporary;
          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            v129 = objc_msgSend_label(v37, v64, v120, v65, v66, v67, v68, v69);
            v130 = objc_msgSend_debugDescription(v37, v121, v122, v123, v124, v125, v126, v127);
            MTLReportFailure();
          }

          v70 = MEMORY[0x277CD7470];
          if ((*(a1 + 136) & 2) != 0)
          {
            v71 = objc_msgSend_objectAtIndexedSubscript_(v28, v64, 0, v65, v66, v67, v68, v69);
            v76 = objc_msgSend_updateWithCommandBuffer_gradientState_sourceState_(v37, v72, a2, v71, v63, v73, v74, v75);
            v77 = v76;
            if (v76)
            {
              v78 = v70;
              v79 = v29;
              v80 = v38;
              v81 = *&v76[*v78];
              if (v61)
              {
                if (v81)
                {
                  objc_msgSend_setReadCount_(v76, v64, 2, v65, v66, v67, v68, v69);
                }

                objc_msgSend_reloadWeightsAndBiasesWithCommandBuffer_state_(v61, v64, a2, v77, v66, v67, v68, v69, v129, v130);
              }

              if (v81)
              {
                objc_msgSend_setReadCount_(v77, v64, 1, v65, v66, v67, v68, v69);
              }

              v38 = v80;
              objc_msgSend_reloadWeightsAndBiasesWithCommandBuffer_state_(v80, v64, a2, v77, v66, v67, v68, v69, v129);
              v29 = v79;
              v70 = MEMORY[0x277CD7470];
            }

            if (v77 != v63 && (*(v63 + *v70) & 1) != 0)
            {
              objc_msgSend_setReadCount_(v63, v64, 0, v65, v66, v67, v68, v69);
            }
          }

          if (*(a1 + 136))
          {
            objc_msgSend_objectAtIndexedSubscript_(v28, v64, 0, v65, v66, v67, v68, v69);
            if ((*(objc_msgSend_objectAtIndexedSubscript_(v28, v82, 0, v83, v84, v85, v86, v87) + *v70) & 1) != 0 && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            if (*(v63 + *v70))
            {
              if (MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }
            }

            objc_msgSend_synchronizeOnCommandBuffer_(v63, v88, a2, v89, v90, v91, v92, v93, v129);
            v100 = objc_msgSend_objectAtIndexedSubscript_(v28, v94, 0, v95, v96, v97, v98, v99);
            objc_msgSend_synchronizeOnCommandBuffer_(v100, v101, a2, v102, v103, v104, v105, v106);
            v107 = v37;
            v108 = v63;
            v109 = v28;
            v110 = v61;
            v111 = v38;
            v131[0] = MEMORY[0x277D85DD0];
            v131[1] = 3221225472;
            v131[2] = sub_239D51DF4;
            v131[3] = &unk_278B36D98;
            v131[4] = v37;
            v131[5] = v28;
            v131[6] = v63;
            v131[7] = v38;
            v131[8] = v61;
            objc_msgSend_addCompletedHandler_(a2, v112, v131, v113, v114, v115, v116, v117);
          }
        }

        objc_autoreleasePoolPop(v29);
      }
    }
  }
}

void sub_239D51DF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), a2, 0, a4, a5, a6, a7, a8);
  if (objc_msgSend_updateWithGradientState_sourceState_(v9, v11, v10, *(a1 + 48), v12, v13, v14, v15))
  {
    objc_msgSend_reloadWeightsAndBiasesFromDataSource(*(a1 + 56), v16, v17, v18, v19, v20, v21, v22);
    v30 = *(a1 + 64);
    if (v30)
    {
      objc_msgSend_reloadWeightsAndBiasesFromDataSource(v30, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v31 = *(a1 + 56);
}

uint64_t sub_239D52018(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[14] + 56);
  if (v10)
  {
LABEL_12:
    v23 = objc_msgSend_load(v10, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_13;
  }

  v11 = a1[8];
  if (!v11)
  {
LABEL_10:
    v10 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v10 = 0;
    }

    goto LABEL_12;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(a1[7] + 8 * v12);
    if (v13)
    {
      v14 = *(v13 + 32);
      if (v14)
      {
        if ((*(*v14 + 80))(v14) == 6)
        {
          v15 = (*(*v14 + 360))(v14);
          if (v15)
          {
            break;
          }
        }
      }
    }

    if (v11 == ++v12)
    {
      goto LABEL_10;
    }
  }

  v10 = v15;
  v23 = objc_msgSend_load(v15, v16, v17, v18, v19, v20, v21, v22);
LABEL_13:
  v31 = v23;
  if ((v23 & 1) == 0)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_16;
    }

    v91 = v10;
    v92 = objc_msgSend_debugDescription(v10, v81, v82, v83, v84, v85, v86, v87);
    goto LABEL_32;
  }

  v32 = objc_msgSend_descriptor(v10, v24, v25, v26, v27, v28, v29, v30);
  if (!v32)
  {
    v88 = MTLReportFailureTypeEnabled();
    v32 = 0;
    if (v88)
    {
      v89 = objc_opt_class();
      v91 = NSStringFromClass(v89);
      MTLReportFailure();
      v32 = 0;
    }
  }

  v40 = v32;
  v41 = objc_msgSend_fusedNeuronDescriptor(v32, v33, v34, v35, v36, v37, v38, v39, v91);
  objc_msgSend_neuronType(v41, v42, v43, v44, v45, v46, v47, v48);
  v56 = objc_msgSend_fusedNeuronDescriptor(v40, v49, v50, v51, v52, v53, v54, v55);
  if (objc_msgSend_neuronType(v56, v57, v58, v59, v60, v61, v62, v63) && MTLReportFailureTypeEnabled())
  {
    v90 = objc_opt_class();
    v91 = NSStringFromClass(v90);
LABEL_32:
    MTLReportFailure();
  }

LABEL_16:
  v64 = [MPSCNNConvolutionTransposeGradient alloc];
  v77 = objc_msgSend_initWithDevice_weights_(v64, v65, a2, v10, v66, v67, v68, v69);
  if (v31)
  {
    objc_msgSend_purge(v10, v70, v71, v72, v73, v74, v75, v76);
  }

  v78 = a1[1];
  v79 = *(v78 + 16) || *(v78 + 80) == 1;
  if ((a1[17] & 3) != 0)
  {
    result = objc_msgSend_setGradientOption_(v77, v70, v79 | 2, v72, v73, v74, v75, v76, v91, v92);
  }

  else
  {
    result = objc_msgSend_setGradientOption_(v77, v70, v79, v72, v73, v74, v75, v76, v91, v92);
  }

  a1[13] = v77;
  return result;
}

void sub_239D5228C(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 136))
  {
    v12 = objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
    if (v12)
    {
      v19 = v12;
      v20 = 0;
      while (1)
      {
        objc_msgSend_objectAtIndexedSubscript_(a4, v13, v20, v14, v15, v16, v17, v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v19 == ++v20)
        {
          return;
        }
      }

      v21 = objc_msgSend_objectAtIndexedSubscript_(a4, v13, v20, v14, v15, v16, v17, v18);
      if (v21)
      {
        v22 = v21;
        v23 = objc_autoreleasePoolPush();
        v31 = objc_msgSend_dataSource(*(a1 + 104), v24, v25, v26, v27, v28, v29, v30);
        v32 = *(a1 + 104);
        v40 = objc_msgSend_convolutionTranspose(v22, v33, v34, v35, v36, v37, v38, v39);
        v48 = v40;
        if (!v31)
        {
          v31 = objc_msgSend_dataSource(v40, v41, v42, v43, v44, v45, v46, v47);
          if (!v31)
          {
            if (MTLReportFailureTypeEnabled())
            {
              v101 = objc_msgSend_debugDescription(*(a1 + 104), v41, v91, v92, v44, v45, v46, v47);
              MTLReportFailure();
              v31 = 0;
            }
          }
        }

        CanBeTemporary = objc_msgSend_exportWeightsAndBiasesWithCommandBuffer_resultStateCanBeTemporary_(v48, v41, a2, (*(a1 + 136) & 1) == 0, v44, v45, v46, v47, v101);
        if (CanBeTemporary)
        {
          v50 = CanBeTemporary;
          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            v102 = objc_msgSend_label(v31, v51, v93, v52, v53, v54, v55, v56);
            v103 = objc_msgSend_debugDescription(v31, v94, v95, v96, v97, v98, v99, v100);
            MTLReportFailure();
          }

          if ((*(a1 + 136) & 2) != 0)
          {
            v57 = objc_msgSend_updateWithCommandBuffer_gradientState_sourceState_(v31, v51, a2, v22, v50, v54, v55, v56);
            v58 = v57;
            v59 = MEMORY[0x277CD7470];
            if (v57)
            {
              v104 = v23;
              v60 = v32;
              v61 = *&v57[*MEMORY[0x277CD7470]];
              if (v48)
              {
                if (v61)
                {
                  objc_msgSend_setReadCount_(v57, v51, 2, v52, v53, v54, v55, v56);
                }

                objc_msgSend_reloadWeightsAndBiasesWithCommandBuffer_state_(v48, v51, a2, v58, v53, v54, v55, v56, v102, v103);
              }

              if (v61)
              {
                objc_msgSend_setReadCount_(v58, v51, 1, v52, v53, v54, v55, v56);
              }

              v32 = v60;
              objc_msgSend_reloadWeightsAndBiasesWithCommandBuffer_state_(v60, v51, a2, v58, v53, v54, v55, v56, v102);
              v23 = v104;
              v59 = MEMORY[0x277CD7470];
            }

            if (v58 != v50 && (*(v50 + *v59) & 1) != 0)
            {
              objc_msgSend_setReadCount_(v50, v51, 0, v52, v53, v54, v55, v56);
            }
          }

          if (*(a1 + 136))
          {
            objc_msgSend_objectAtIndexedSubscript_(a3, v51, 1, v52, v53, v54, v55, v56);
            if (*(objc_msgSend_objectAtIndexedSubscript_(a3, v62, 1, v63, v64, v65, v66, v67) + *MEMORY[0x277CD7320] + 56))
            {
              if (MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }
            }

            objc_msgSend_synchronizeOnCommandBuffer_(v50, v68, a2, v69, v70, v71, v72, v73, v102);
            objc_msgSend_synchronizeOnCommandBuffer_(v22, v74, a2, v75, v76, v77, v78, v79);
            v80 = v31;
            v81 = v50;
            v82 = v22;
            v83 = v48;
            v84 = v32;
            v105[0] = MEMORY[0x277D85DD0];
            v105[1] = 3221225472;
            v105[2] = sub_239D525EC;
            v105[3] = &unk_278B36D98;
            v105[4] = v31;
            v105[5] = v22;
            v105[6] = v50;
            v105[7] = v32;
            v105[8] = v48;
            objc_msgSend_addCompletedHandler_(a2, v85, v105, v86, v87, v88, v89, v90);
          }
        }

        objc_autoreleasePoolPop(v23);
      }
    }
  }
}

void sub_239D525EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (objc_msgSend_updateWithGradientState_sourceState_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), a5, a6, a7, a8))
  {
    objc_msgSend_reloadWeightsAndBiasesFromDataSource(*(a1 + 56), v9, v10, v11, v12, v13, v14, v15);
    v23 = *(a1 + 64);
    if (v23)
    {
      objc_msgSend_reloadWeightsAndBiasesFromDataSource(v23, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v24 = *(a1 + 56);
}

void sub_239D52664(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 136))
  {
    v11 = objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
    if (v11)
    {
      v18 = v11;
      v19 = 0;
      while (1)
      {
        v20 = objc_msgSend_objectAtIndexedSubscript_(a4, v12, v19, v13, v14, v15, v16, v17);
        objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0, v22, v23, v24, v25, v26);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v18 == ++v19)
        {
          return;
        }
      }

      v27 = objc_msgSend_objectAtIndexedSubscript_(a4, v12, v19, v13, v14, v15, v16, v17);
      if (v27)
      {
        v28 = v27;
        v29 = objc_autoreleasePoolPush();
        v37 = objc_msgSend_dataSource(*(a1 + 104), v30, v31, v32, v33, v34, v35, v36);
        v38 = *(a1 + 104);
        v45 = objc_msgSend_objectAtIndexedSubscript_(v28, v39, 0, v40, v41, v42, v43, v44);
        v53 = objc_msgSend_convolutionTranspose(v45, v46, v47, v48, v49, v50, v51, v52);
        v61 = v53;
        if (!v37)
        {
          v37 = objc_msgSend_dataSource(v53, v54, v55, v56, v57, v58, v59, v60);
          if (!v37)
          {
            if (MTLReportFailureTypeEnabled())
            {
              v128 = objc_msgSend_debugDescription(*(a1 + 104), v54, v118, v119, v57, v58, v59, v60);
              MTLReportFailure();
              v37 = 0;
            }
          }
        }

        CanBeTemporary = objc_msgSend_exportWeightsAndBiasesWithCommandBuffer_resultStateCanBeTemporary_(v61, v54, a2, (*(a1 + 136) & 1) == 0, v57, v58, v59, v60, v128);
        if (CanBeTemporary)
        {
          v63 = CanBeTemporary;
          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            v129 = objc_msgSend_label(v37, v64, v120, v65, v66, v67, v68, v69);
            v130 = objc_msgSend_debugDescription(v37, v121, v122, v123, v124, v125, v126, v127);
            MTLReportFailure();
          }

          v70 = MEMORY[0x277CD7470];
          if ((*(a1 + 136) & 2) != 0)
          {
            v71 = objc_msgSend_objectAtIndexedSubscript_(v28, v64, 0, v65, v66, v67, v68, v69);
            v76 = objc_msgSend_updateWithCommandBuffer_gradientState_sourceState_(v37, v72, a2, v71, v63, v73, v74, v75);
            v77 = v76;
            if (v76)
            {
              v78 = v70;
              v79 = v29;
              v80 = v38;
              v81 = *&v76[*v78];
              if (v61)
              {
                if (v81)
                {
                  objc_msgSend_setReadCount_(v76, v64, 2, v65, v66, v67, v68, v69);
                }

                objc_msgSend_reloadWeightsAndBiasesWithCommandBuffer_state_(v61, v64, a2, v77, v66, v67, v68, v69, v129, v130);
              }

              if (v81)
              {
                objc_msgSend_setReadCount_(v77, v64, 1, v65, v66, v67, v68, v69);
              }

              v38 = v80;
              objc_msgSend_reloadWeightsAndBiasesWithCommandBuffer_state_(v80, v64, a2, v77, v66, v67, v68, v69, v129);
              v29 = v79;
              v70 = MEMORY[0x277CD7470];
            }

            if (v77 != v63 && (*(v63 + *v70) & 1) != 0)
            {
              objc_msgSend_setReadCount_(v63, v64, 0, v65, v66, v67, v68, v69);
            }
          }

          if (*(a1 + 136))
          {
            objc_msgSend_objectAtIndexedSubscript_(v28, v64, 0, v65, v66, v67, v68, v69);
            if ((*(objc_msgSend_objectAtIndexedSubscript_(v28, v82, 0, v83, v84, v85, v86, v87) + *v70) & 1) != 0 && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            if (*(v63 + *v70))
            {
              if (MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }
            }

            objc_msgSend_synchronizeOnCommandBuffer_(v63, v88, a2, v89, v90, v91, v92, v93, v129);
            v100 = objc_msgSend_objectAtIndexedSubscript_(v28, v94, 0, v95, v96, v97, v98, v99);
            objc_msgSend_synchronizeOnCommandBuffer_(v100, v101, a2, v102, v103, v104, v105, v106);
            v107 = v37;
            v108 = v63;
            v109 = v28;
            v110 = v61;
            v111 = v38;
            v131[0] = MEMORY[0x277D85DD0];
            v131[1] = 3221225472;
            v131[2] = sub_239D52A14;
            v131[3] = &unk_278B36D98;
            v131[4] = v37;
            v131[5] = v28;
            v131[6] = v63;
            v131[7] = v38;
            v131[8] = v61;
            objc_msgSend_addCompletedHandler_(a2, v112, v131, v113, v114, v115, v116, v117);
          }
        }

        objc_autoreleasePoolPop(v29);
      }
    }
  }
}

void sub_239D52A14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), a2, 0, a4, a5, a6, a7, a8);
  if (objc_msgSend_updateWithGradientState_sourceState_(v9, v11, v10, *(a1 + 48), v12, v13, v14, v15))
  {
    objc_msgSend_reloadWeightsAndBiasesFromDataSource(*(a1 + 56), v16, v17, v18, v19, v20, v21, v22);
    v30 = *(a1 + 64);
    if (v30)
    {
      objc_msgSend_reloadWeightsAndBiasesFromDataSource(v30, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v31 = *(a1 + 56);
}

void sub_239D52BFC(_Unwind_Exception *a1)
{
  v4 = sub_239C13FBC(v2);
  MEMORY[0x23EE7D130](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239D52C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MPSCNNFullyConnected alloc];

  return objc_msgSend_initWithDevice_weights_(v5, v6, a2, a3, v7, v8, v9, v10);
}

uint64_t sub_239D52DB8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[14] + 56);
  if (v10)
  {
LABEL_12:
    v23 = objc_msgSend_load(v10, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_13;
  }

  v11 = a1[8];
  if (!v11)
  {
LABEL_10:
    v10 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v10 = 0;
    }

    goto LABEL_12;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(a1[7] + 8 * v12);
    if (v13)
    {
      v14 = *(v13 + 32);
      if (v14)
      {
        if ((*(*v14 + 80))(v14) == 6)
        {
          v15 = (*(*v14 + 360))(v14);
          if (v15)
          {
            break;
          }
        }
      }
    }

    if (v11 == ++v12)
    {
      goto LABEL_10;
    }
  }

  v10 = v15;
  v23 = objc_msgSend_load(v15, v16, v17, v18, v19, v20, v21, v22);
LABEL_13:
  v31 = v23;
  if ((v23 & 1) == 0)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_16;
    }

    v91 = v10;
    v92 = objc_msgSend_debugDescription(v10, v81, v82, v83, v84, v85, v86, v87);
    goto LABEL_32;
  }

  v32 = objc_msgSend_descriptor(v10, v24, v25, v26, v27, v28, v29, v30);
  if (!v32)
  {
    v88 = MTLReportFailureTypeEnabled();
    v32 = 0;
    if (v88)
    {
      v89 = objc_opt_class();
      v91 = NSStringFromClass(v89);
      MTLReportFailure();
      v32 = 0;
    }
  }

  v40 = v32;
  v41 = objc_msgSend_fusedNeuronDescriptor(v32, v33, v34, v35, v36, v37, v38, v39, v91);
  objc_msgSend_neuronType(v41, v42, v43, v44, v45, v46, v47, v48);
  v56 = objc_msgSend_fusedNeuronDescriptor(v40, v49, v50, v51, v52, v53, v54, v55);
  if (objc_msgSend_neuronType(v56, v57, v58, v59, v60, v61, v62, v63) && MTLReportFailureTypeEnabled())
  {
    v90 = objc_opt_class();
    v91 = NSStringFromClass(v90);
LABEL_32:
    MTLReportFailure();
  }

LABEL_16:
  v64 = [MPSCNNFullyConnectedGradient alloc];
  v77 = objc_msgSend_initWithDevice_weights_(v64, v65, a2, v10, v66, v67, v68, v69);
  if (v31)
  {
    objc_msgSend_purge(v10, v70, v71, v72, v73, v74, v75, v76);
  }

  v78 = a1[1];
  v79 = *(v78 + 16) || *(v78 + 80) == 1;
  if ((a1[17] & 3) != 0)
  {
    result = objc_msgSend_setGradientOption_(v77, v70, v79 | 2, v72, v73, v74, v75, v76, v91, v92);
  }

  else
  {
    result = objc_msgSend_setGradientOption_(v77, v70, v79, v72, v73, v74, v75, v76, v91, v92);
  }

  a1[13] = v77;
  return result;
}

void sub_239D5351C(_Unwind_Exception *a1)
{
  v4 = sub_239C13FBC(v2);
  MEMORY[0x23EE7D130](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239D53694(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  if (v3[15] || v3[16] || v3[13] || v3[14])
  {
    v4 = [MPSCNNBinaryConvolution alloc];
    v12 = objc_msgSend_weights(v3, v5, v6, v7, v8, v9, v10, v11);
    return objc_msgSend_initWithDevice_convolutionData_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_(v4, v13, a2, v12, v3[13], v3[14], v3[15], v3[16], v3[11], v3[12]);
  }

  else
  {
    v15 = [MPSCNNBinaryConvolution alloc];
    v23 = objc_msgSend_weights(v3, v16, v17, v18, v19, v20, v21, v22);
    v26 = v3[11];
    v27 = v3[12];

    return MEMORY[0x2821F9670](v15, sel_initWithDevice_convolutionData_scaleValue_type_flags_, a2, v23, v26, v27, v24, v25);
  }
}

void sub_239D53A54(_Unwind_Exception *a1)
{
  v4 = sub_239C13FBC(v2);
  MEMORY[0x23EE7D130](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239D53A70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  if (v3[15] || v3[16] || v3[13] || v3[14])
  {
    v4 = [MPSCNNBinaryFullyConnected alloc];
    v12 = objc_msgSend_weights(v3, v5, v6, v7, v8, v9, v10, v11);
    return objc_msgSend_initWithDevice_convolutionData_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_(v4, v13, a2, v12, v3[13], v3[14], v3[15], v3[16], v3[11], v3[12]);
  }

  else
  {
    v15 = [MPSCNNBinaryFullyConnected alloc];
    v23 = objc_msgSend_weights(v3, v16, v17, v18, v19, v20, v21, v22);
    v26 = v3[11];
    v27 = v3[12];

    return MEMORY[0x2821F9670](v15, sel_initWithDevice_convolutionData_scaleValue_type_flags_, a2, v23, v26, v27, v24, v25);
  }
}

void sub_239D53E4C(_Unwind_Exception *a1)
{
  v4 = sub_239C13FBC(v2);
  MEMORY[0x23EE7D130](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239D53F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MPSCNNConvolutionTranspose alloc];

  return objc_msgSend_initWithDevice_weights_(v5, v6, a2, a3, v7, v8, v9, v10);
}

void *sub_239D53F60(void *result, const char *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = result;
  if ((*(result[13] + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (result[8] > 1uLL || result[5] != 1 || result[11] >= 2uLL)
    {
      __break(1u);
      return result;
    }

    if (objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8))
    {
      objc_msgSend_objectAtIndexedSubscript_(a4, v14, 0, v16, v17, v18, v19, v20);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_msgSend_objectAtIndexedSubscript_(a4, v21, 0, v22, v23, v24, v25, v26);
        objc_opt_class();
        objc_opt_isKindOfClass();
      }

      objc_msgSend_objectAtIndexedSubscript_(a4, v21, 0, v22, v23, v24, v25, v26);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_msgSend_objectAtIndexedSubscript_(a4, v14, 0, v16, v17, v18, v19, v20);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }
        }
      }
    }

    if (objc_msgSend_count(a5, v14, v15, v16, v17, v18, v19, v20))
    {
      objc_msgSend_objectAtIndexedSubscript_(a5, a2, 0, a4, a5, a6, a7, a8);
      objc_opt_class();
      objc_opt_isKindOfClass();
      objc_msgSend_objectAtIndexedSubscript_(a5, v27, 0, v28, v29, v30, v31, v32);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v39 = objc_msgSend_objectAtIndexedSubscript_(a5, v33, 0, v34, v35, v36, v37, v38);
      objc_msgSend_convolutionGradientState(v39, v40, v41, v42, v43, v44, v45, v46);
      objc_msgSend_objectAtIndexedSubscript_(a4, v47, 0, v48, v49, v50, v51, v52);
      v59 = objc_msgSend_objectAtIndexedSubscript_(a5, v53, 0, v54, v55, v56, v57, v58);
      v67 = objc_msgSend_convolutionGradientState(v59, v60, v61, v62, v63, v64, v65, v66);
      if (v67 != objc_msgSend_objectAtIndexedSubscript_(a4, v68, 0, v69, v70, v71, v72, v73) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  if (objc_msgSend_count(a5, a2, a3, a4, a5, a6, a7, a8))
  {
    if (a5)
    {
      v80 = objc_msgSend_objectAtIndexedSubscript_(a5, v74, 0, v75, v76, v77, v78, v79);
    }

    else
    {
      v80 = 0;
    }

    v82 = v13[13];
    v83 = objc_msgSend_objectAtIndexedSubscript_(a3, v74, 0, v75, v76, v77, v78, v79);
    objc_msgSend_encodeToCommandBuffer_sourceImage_destinationState_destinationImage_(v82, v84, a2, v83, v80, a6, v85, v86);
  }

  else
  {
    if (a4)
    {
      v81 = objc_msgSend_objectAtIndexedSubscript_(a4, v74, 0, v75, v76, v77, v78, v79);
    }

    else
    {
      v81 = 0;
    }

    v87 = v13[13];
    v88 = objc_msgSend_objectAtIndexedSubscript_(a3, v74, 0, v75, v76, v77, v78, v79);
    objc_msgSend_encodeToCommandBuffer_sourceImage_convolutionGradientState_destinationImage_(v87, v89, a2, v88, v81, a6, v90, v91);
  }

  v92 = *(*v13 + 184);

  return v92(v13, a2, a3, a4, a5, a6);
}

void *sub_239D542A4(void *result, const char *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = result;
  if ((*(result[13] + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (result[8] > 1uLL || result[5] != 1 || result[11] >= 2uLL)
    {
      __break(1u);
      return result;
    }

    if (a4)
    {
      if (objc_msgSend_objectAtIndexedSubscript_(a4, a2, 0, a4, a5, a6, a7, a8))
      {
        v14 = objc_msgSend_objectAtIndexedSubscript_(a4, a2, 0, a4, a5, a6, a7, a8);
        if (objc_msgSend_count(v14, v15, v16, v17, v18, v19, v20, v21))
        {
          v22 = 0;
          do
          {
            v31 = objc_msgSend_objectAtIndexedSubscript_(a4, a2, 0, a4, a5, a6, a7, a8);
            objc_msgSend_objectAtIndexedSubscript_(v31, v32, v22, v33, v34, v35, v36, v37);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v44 = objc_msgSend_objectAtIndexedSubscript_(a4, v38, 0, v39, v40, v41, v42, v43);
              objc_msgSend_objectAtIndexedSubscript_(v44, v45, v22, v46, v47, v48, v49, v50);
              objc_opt_class();
              objc_opt_isKindOfClass();
            }

            v51 = objc_msgSend_objectAtIndexedSubscript_(a4, v38, 0, v39, v40, v41, v42, v43);
            objc_msgSend_objectAtIndexedSubscript_(v51, v52, v22, v53, v54, v55, v56, v57);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v64 = objc_msgSend_objectAtIndexedSubscript_(a4, v58, 0, v59, v60, v61, v62, v63);
              objc_msgSend_objectAtIndexedSubscript_(v64, v65, v22, v66, v67, v68, v69, v70);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (MTLReportFailureTypeEnabled())
                {
                  MTLReportFailure();
                }
              }
            }

            ++v22;
            v23 = objc_msgSend_objectAtIndexedSubscript_(a4, v58, 0, v59, v60, v61, v62, v63);
          }

          while (v22 < objc_msgSend_count(v23, v24, v25, v26, v27, v28, v29, v30));
        }
      }
    }

    if (!a5)
    {
      if (objc_msgSend_count(0, a2, a3, a4, a5, a6, a7, a8))
      {
        goto LABEL_32;
      }

LABEL_34:
      if (a4)
      {
        v195 = objc_msgSend_objectAtIndexedSubscript_(a4, v183, 0, v184, v185, v186, v187, v188);
      }

      else
      {
        v195 = 0;
      }

      v196 = v13[13];
      v197 = objc_msgSend_objectAtIndexedSubscript_(a3, v183, 0, v184, v185, v186, v187, v188);
      objc_msgSend_encodeBatchToCommandBuffer_sourceImages_convolutionGradientStates_destinationImages_(v196, v198, a2, v197, v195, a6, v199, v200);
      goto LABEL_38;
    }

    if (objc_msgSend_objectAtIndexedSubscript_(a5, a2, 0, a4, a5, a6, a7, a8))
    {
      v71 = objc_msgSend_objectAtIndexedSubscript_(a4, a2, 0, a4, a5, a6, a7, a8);
      if (objc_msgSend_count(v71, v72, v73, v74, v75, v76, v77, v78))
      {
        v79 = 0;
        do
        {
          v80 = objc_msgSend_objectAtIndexedSubscript_(a5, a2, 0, a4, a5, a6, a7, a8);
          objc_msgSend_objectAtIndexedSubscript_(v80, v81, v79, v82, v83, v84, v85, v86);
          objc_opt_class();
          objc_opt_isKindOfClass();
          v93 = objc_msgSend_objectAtIndexedSubscript_(a5, v87, 0, v88, v89, v90, v91, v92);
          objc_msgSend_objectAtIndexedSubscript_(v93, v94, v79, v95, v96, v97, v98, v99);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v106 = objc_msgSend_objectAtIndexedSubscript_(a5, v100, 0, v101, v102, v103, v104, v105);
          v113 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, v79, v108, v109, v110, v111, v112);
          objc_msgSend_convolutionGradientState(v113, v114, v115, v116, v117, v118, v119, v120);
          v127 = objc_msgSend_objectAtIndexedSubscript_(a4, v121, 0, v122, v123, v124, v125, v126);
          objc_msgSend_objectAtIndexedSubscript_(v127, v128, v79, v129, v130, v131, v132, v133);
          v140 = objc_msgSend_objectAtIndexedSubscript_(a5, v134, 0, v135, v136, v137, v138, v139);
          v147 = objc_msgSend_objectAtIndexedSubscript_(v140, v141, v79, v142, v143, v144, v145, v146);
          v155 = objc_msgSend_convolutionGradientState(v147, v148, v149, v150, v151, v152, v153, v154);
          v162 = objc_msgSend_objectAtIndexedSubscript_(a4, v156, 0, v157, v158, v159, v160, v161);
          if (v155 != objc_msgSend_objectAtIndexedSubscript_(v162, v163, v79, v164, v165, v166, v167, v168) && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          ++v79;
          v175 = objc_msgSend_objectAtIndexedSubscript_(a4, v169, 0, v170, v171, v172, v173, v174);
        }

        while (v79 < objc_msgSend_count(v175, v176, v177, v178, v179, v180, v181, v182));
      }
    }
  }

  if (!objc_msgSend_count(a5, a2, a3, a4, a5, a6, a7, a8))
  {
    goto LABEL_34;
  }

  if (!a5)
  {
LABEL_32:
    v189 = 0;
    goto LABEL_33;
  }

  v189 = objc_msgSend_objectAtIndexedSubscript_(a5, v183, 0, v184, v185, v186, v187, v188);
LABEL_33:
  v190 = v13[13];
  v191 = objc_msgSend_objectAtIndexedSubscript_(a3, v183, 0, v184, v185, v186, v187, v188);
  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_destinationStates_destinationImages_(v190, v192, a2, v191, v189, a6, v193, v194);
LABEL_38:
  v201 = *(*v13 + 192);

  return v201(v13, a2, a3, a4, a5, a6);
}

id sub_239D54934(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSNNGramMatrixCalculation alloc];
  LODWORD(v6) = *(v4 + 56);
  v13 = objc_msgSend_initWithDevice_alpha_(v5, v7, a2, v8, v9, v10, v11, v12, v6);
  result = *(v4 + 64);
  *(v13 + 328) = result;
  *(a1 + 104) = v13;
  return result;
}

uint64_t sub_239D54C40(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSNNGramMatrixCalculationGradient alloc];
  LODWORD(v6) = *(v4 + 56);
  result = objc_msgSend_initWithDevice_alpha_(v5, v7, a2, v8, v9, v10, v11, v12, v6);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239D54C94(uint64_t a1)
{
  *a1 = &unk_284CD1150;

  *(a1 + 144) = 0;

  return sub_239C13FBC(a1);
}

void sub_239D54CF4(uint64_t a1)
{
  *a1 = &unk_284CD1150;

  *(a1 + 144) = 0;
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D54D70(uint64_t result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(result + 104) + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v8 = result;
    sub_239BE0DFC(result, a2, a3, a4, a5, a6, a7, a8);
    v72 = 0;
    v73 = 0;
    v74 = 0;
    if (*(v8 + 104))
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if ((result & 1) == 0)
      {
        return result;
      }

      result = objc_msgSend_fusedNeuronDescriptor(*(v8 + 104), v16, v17, v18, v19, v20, v21, v22);
      if (!result)
      {
        return result;
      }

      v30 = result;
      v31 = objc_msgSend_neuronType(result, v23, v24, v25, v26, v27, v28, v29);
      LODWORD(v72) = v31;
      objc_msgSend_a(v30, v32, v33, v34, v35, v36, v37, v38);
      HIDWORD(v72) = v39;
      objc_msgSend_b(v30, v40, v41, v42, v43, v44, v45, v46);
      LODWORD(v73) = v47;
      objc_msgSend_c(v30, v48, v49, v50, v51, v52, v53, v54);
      HIDWORD(v73) = v55;
      result = objc_msgSend_data(v30, v56, v57, v58, v59, v60, v61, v62);
      v74 = result;
      if (!v31)
      {
        return result;
      }
    }

    else
    {
      result = objc_msgSend_descriptor(*(v8 + 144), v9, v10, v11, v12, v13, v14, v15);
      if (!result)
      {
        return result;
      }

      result = objc_msgSend_neuronInfo(result, v64, v65, v66, v67, v68, v69, v70);
      v31 = v72;
      if (!v72)
      {
        return result;
      }
    }

    if (v31 > 0xF)
    {
      v71 = "<invalid/missing type>";
    }

    else
    {
      v71 = off_278B30B88[v31];
    }

    return sub_239BE215C(*(v8 + 104), v63, "\tfused: %s,  a = %g b = %g c = %g\n", v71, *(&v72 + 1), *&v73, *(&v73 + 1));
  }

  return result;
}

void *sub_239D54EAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v13 = *(a1 + 88);
  if (v13)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v16 = 0;
    do
    {
      v17 = *(*(a1 + 80) + 8 * v16);
      if (v17)
      {
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = 0;
          while (1)
          {
            v20 = *(*(v17 + 8) + 8 * v19);
            if (v20 && (*(*v20 + 80))(v20) == 7)
            {
              v8 = (v20[136] & 1) == 0;
              if (++v19 >= v18)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v8 = 1;
              if (++v19 >= v18)
              {
                goto LABEL_19;
              }
            }

            if (!v8)
            {
              goto LABEL_19;
            }
          }
        }

        v8 = 1;
        if (++v16 >= v13)
        {
          break;
        }
      }

      else
      {
        v8 = 1;
LABEL_19:
        if (++v16 >= v13)
        {
          break;
        }
      }
    }

    while (v8);
  }

  if (a5)
  {
    return 0;
  }

  v21 = *(a1 + 104);
  v23 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);
  if (v8)
  {
    result = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(v21, v22, a6, v23, a3, a4, v25, v26);
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
    result = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(v21, v22, v23, a3, a4, v24, v25, v26);
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

void *sub_239D55074(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BOOL8 a7, uint64_t a8)
{
  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = !a7;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 80) + 8 * v15);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = 0;
          while (1)
          {
            v19 = *(*(v16 + 8) + 8 * v18);
            if (v19 && (*(*v19 + 80))(v19) == 7)
            {
              a7 = (v19[136] & 1) == 0;
              if (++v18 >= v17)
              {
                goto LABEL_19;
              }
            }

            else
            {
              a7 = 1;
              if (++v18 >= v17)
              {
                goto LABEL_19;
              }
            }

            if (!a7)
            {
              goto LABEL_19;
            }
          }
        }

        a7 = 1;
        if (++v15 >= v12)
        {
          break;
        }
      }

      else
      {
        a7 = 1;
LABEL_19:
        if (++v15 >= v12)
        {
          break;
        }
      }
    }

    while (a7);
  }

  return sub_239BE1E80(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_239D551C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 104);
  if (v9)
  {
    return objc_msgSend_dataSource(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return *(a1 + 144);
  }
}

uint64_t sub_239D551E0(uint64_t a1)
{
  *a1 = &unk_284CD1150;

  *(a1 + 144) = 0;

  return sub_239C13FBC(a1);
}

void sub_239D55240(uint64_t a1)
{
  *a1 = &unk_284CD1150;

  *(a1 + 144) = 0;
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D552BC(uint64_t a1)
{
  *a1 = &unk_284CD1150;

  *(a1 + 144) = 0;

  return sub_239C13FBC(a1);
}

void sub_239D5531C(uint64_t a1)
{
  *a1 = &unk_284CD1150;

  *(a1 + 144) = 0;
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D55398(uint64_t a1)
{
  *a1 = &unk_284CD1150;

  *(a1 + 144) = 0;

  return sub_239C13FBC(a1);
}

void sub_239D553F8(uint64_t a1)
{
  *a1 = &unk_284CD1150;

  *(a1 + 144) = 0;
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D5547C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 104);
  if (v9)
  {
    return objc_msgSend_dataSource(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return *(a1 + 144);
  }
}

void sub_239D55498(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D554D0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 136) & 2) == 0)
  {
    return 1;
  }

  v2 = *(*(a1 + 56) + 8 * a2);
  if (!v2)
  {
    return 1;
  }

  v3 = *(v2 + 32);
  if (!v3)
  {
    return 2;
  }

  if ((*(*v3 + 80))(v3) == 6)
  {
    return 2;
  }

  return 1;
}

void sub_239D55568(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D555BC(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D55600(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D55644(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D557DC(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v318 = *MEMORY[0x277D85DE8];
  v278 = *&a1[*MEMORY[0x277CD7350]];
  v281 = *&a1[*MEMORY[0x277CD7370]];
  v12 = *(*(a4 + 24) + 112);
  v13 = objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8);
  v280 = a4;
  if (!*(a4 + 16))
  {
    *(v12 + 296) = 0;
  }

  v14 = MEMORY[0x277CD7488];
  v15 = (*(v12 + *MEMORY[0x277CD7488]) + 8);
  explicit = atomic_load_explicit(v15, memory_order_acquire);
  if (!explicit)
  {
    MPSAutoBuffer::AllocateBuffer(v15, 0);
    explicit = atomic_load_explicit(v15, memory_order_acquire);
  }

  v274 = explicit;
  v17 = (*(v12 + *v14) + 80);
  v18 = atomic_load_explicit(v17, memory_order_acquire);
  if (!v18)
  {
    MPSAutoBuffer::AllocateBuffer(v17, 0);
    v18 = atomic_load_explicit(v17, memory_order_acquire);
  }

  v273 = v18;
  v19 = *(v280 + 160);
  v20 = *(v280 + 168);
  v301 = 0;
  v21 = *(v12 + 304);
  v300.i64[0] = 0x3F80000000000000;
  v299 = v21;
  v300.i32[2] = 0;
  v22 = v19;
  v23 = v20;
  v24 = 1.0 / (v19 * v20);
  v300.f32[3] = v24;
  v279 = v12;
  LOBYTE(v301) = *(v12 + 296) != 0;
  v25 = *(v281 + 32);
  v297 = 0uLL;
  v298 = 0;
  (*(*v25 + 16))(&v297, v25, 0);
  v295 = 0uLL;
  v296 = 0;
  (*(*v25 + 16))(&v295, v25, 2);
  v276 = *(v12 + 304);
  v26 = v299 > 4;
  v27 = v278[1482];
  *&v28 = -1;
  *(&v28 + 1) = -1;
  v293 = v28;
  v294 = v28;
  v291 = v28;
  v292 = v28;
  v290 = v28;
  *(&v290 + 1) = *(v280 + 32) & 0x3F | ((*(v280 + 88) & 0x3Fu) << 6);
  *&v290 = objc_msgSend_maxBatchSize(a1, v29, v30, v31, v32, v33, v34, v35);
  *&v291 = (8 * v26) | (v27 << 8);
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v275 = MPSLibrary::GetPipelineStateForMPSKey();
  v37 = MPSLibrary::GetPipelineStateForMPSKey();
  v45 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v38, v39, v40, v41, v42, v43, v44, 0, 0, 0, 0, 0);
  v53 = *(&v297 + 1);
  if (v298 * v297 * *(&v297 + 1) > v45)
  {
    do
    {
      v53 >>= 1;
    }

    while (v53 * v298 * v297 > v45);
    *(&v297 + 1) = v53;
  }

  v54 = objc_msgSend_maxTotalThreadsPerThreadgroup(v37, v46, v47, v48, v49, v50, v51, v52);
  v62 = objc_msgSend_maxTotalThreadsPerThreadgroup(v275, v55, v56, v57, v58, v59, v60, v61);
  if (v54 >= v62)
  {
    v70 = v62;
  }

  else
  {
    v70 = v54;
  }

  v71 = *(&v295 + 1);
  v72 = v296;
  if (v296 * v295 * *(&v295 + 1) > v70)
  {
    do
    {
      v71 >>= 1;
    }

    while (v71 * v296 * v295 > v70);
    *(&v295 + 1) = v71;
  }

  v268 = v298;
  v270 = v297;
  v269 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v63, v64, v65, v66, v67, v68, v69);
  v73 = v295;
  v81 = objc_msgSend_threadExecutionWidth(v37, v74, v75, v76, v77, v78, v79, v80);
  v88 = (v276 + 3) >> 2;
  v277 = v20 * v19;
  v267 = v88 - 1;
  v89 = v72 + v88 - 1;
  v90 = 16 * (v73 * *(&v73 + 1) + (v81 >> 1));
  v91 = *(&v297 + 1);
  v92 = v297;
  if ((v19 + v297 - 1) / v297 < v297)
  {
    v92 = (v19 + v297 - 1) / v297;
  }

  v272 = v92;
  if ((v20 + *(&v297 + 1) - 1) / *(&v297 + 1) < *(&v297 + 1))
  {
    v91 = (v20 + *(&v297 + 1) - 1) / *(&v297 + 1);
  }

  v271 = v91;
  v93 = v89 / v72;
  if (v19 > 0x10 || v20 >= 0x11)
  {
    MEMORY[0x23EE7D040](&v288, a3, 0);
    PixelInfo = MPSDevice::GetPixelInfo(v278, MTLPixelFormatRGBA32Float, MPSImageFeatureChannelFormatNone);
    v143 = (*(v279 + 304) + 3) >> 2;
    v284 = v272;
    v285 = v271;
    v286 = v143;
    TempTexture = MPSAutoCache::GetTempTexture();
    v145 = MPSAutoCache::GetTempTexture();
    v146 = *(v280 + 8);
    v147 = v22 * v146;
    v148 = *(v279 + 296);
    v149 = v146 * v277;
    v150.f64[0] = v148;
    *&v151 = (v148 + v149);
    v152.f64[0] = *&v151 * *&v151;
    v150.f64[1] = v149;
    __asm { FMOV            V3.2D, #1.0 }

    _Q3.f64[0] = v149 * v148;
    v152.f64[1] = v147 * v23;
    v300 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v150, vdupq_lane_s64(v151, 0))), vdivq_f64(_Q3, v152));
    objc_msgSend_setComputePipelineState_(a2, v158, PipelineStateForMPSKey, v159, v160, v161, v162, v163);
    v164 = *(v280 + 96);
    v172 = objc_msgSend_count(v164, v165, v166, v167, v168, v169, v170, v171);
    v266 = v145;
    v316 = 0u;
    v317 = 0u;
    v314 = 0u;
    v315 = 0u;
    v312 = 0u;
    v313 = 0u;
    v310 = 0u;
    v311 = 0u;
    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    v307 = 0u;
    v304 = 0u;
    v305 = 0u;
    v302 = 0u;
    v303 = 0u;
    if (!v13)
    {
LABEL_58:
      objc_msgSend_setBytes_length_atIndex_(a2, v173, v280 + 104, 32, 0, v174, v175, v176);
      objc_msgSend_setTexture_atIndex_(a2, v182, TempTexture, v13, v183, v184, v185, v186);
      objc_msgSend_setTexture_atIndex_(a2, v187, v266, v13 + 1, v188, v189, v190, v191);
      objc_msgSend_setBytes_length_atIndex_(a2, v192, &v299, 24, 30, v193, v194, v195);
      v196 = 16 * (v270 * *(&v270 + 1) + (v269 >> 1));
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v197, v298 * v196, 0, v198, v199, v200, v201);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v202, v298 * v196, 1, v203, v204, v205, v206);
      Sampler = MPSDevice::GetSampler();
      objc_msgSend_setSamplerState_atIndex_(a2, v208, Sampler, 0, v209, v210, v211, v212);
      v302.i64[0] = v272;
      v302.i64[1] = v271;
      *&v303 = (v268 + v267) / v268;
      v282 = v297;
      v283 = v298;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v213, &v302, &v282, v214, v215, v216, v217);
      objc_msgSend_setComputePipelineState_(a2, v218, v275, v219, v220, v221, v222, v223);
      objc_msgSend_setTexture_atIndex_(a2, v224, v73, 0, v225, v226, v227, v228);
      objc_msgSend_setTexture_atIndex_(a2, v229, v266, 1, v230, v231, v232, v233);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v234, v274, 0, 0, v235, v236, v237);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v238, v273, 0, 1, v239, v240, v241);
      objc_msgSend_setBytes_length_atIndex_(a2, v242, &v299, 24, 2, v243, v244, v245);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v246, v296 * v90, 0, v247, v248, v249, v250);
      v302 = vdupq_n_s64(1uLL);
      *&v303 = v93;
      v282 = v295;
      v283 = v296;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v251, &v302, &v282, v252, v253, v254, v255);
      *(v279 + 296) += *(v280 + 8) * v277;
      MPSAutoCache::~MPSAutoCache(&v288);
      goto LABEL_60;
    }

    v177 = v172;
    v178 = 0;
    while (1)
    {
      if (v177 <= v178)
      {
        v179 = 0;
        if (v13 - v178 >= 0x20)
        {
          v180 = 32;
        }

        else
        {
          v180 = v13 - v178;
        }

        v181 = v180;
        if (!v180)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v177 - v178 >= 0x20)
        {
          v179 = 32;
          objc_msgSend_getObjects_range_(v164, v173, &v302, v178, 32, v174, v175, v176);
        }

        else
        {
          v179 = v177 - v178;
          objc_msgSend_getObjects_range_(v164, v173, &v302, v178, v177 - v178, v174, v175, v176);
        }

        if (v13 - v178 >= 0x20)
        {
          v180 = 32;
        }

        else
        {
          v180 = v13 - v178;
        }

        v181 = v180 - v179;
        if (v180 == v179)
        {
          goto LABEL_51;
        }
      }

      bzero(&v302 + 8 * v179, 8 * v181);
LABEL_51:
      objc_msgSend_setTextures_withRange_(a2, v173, &v302, v178, v180, v174, v175, v176);
      v178 += v180;
      if (v178 >= v13)
      {
        goto LABEL_58;
      }
    }
  }

  v94 = 1.0 / (v22 * *(v280 + 8) * v23);
  v300.f32[3] = v94;
  objc_msgSend_setComputePipelineState_(a2, v82, v37, v83, v84, v85, v86, v87);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v95, v274, 0, 30, v96, v97, v98);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v99, v273, 0, 29, v100, v101, v102);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v103, v296 * v90, 0, v104, v105, v106, v107);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v108, v296 * v90, 1, v109, v110, v111, v112);
  v113 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v114, v113, 0, v115, v116, v117, v118);
  v119 = *(v279 + 296);
  v120 = *(v280 + 8) * v277;
  v121 = (v120 + v119);
  *&v122 = v119 / v121;
  *&v123 = v120 / v121;
  v300.i64[0] = __PAIR64__(v123, v122);
  v124 = v119 * v120 / (v121 * v121);
  v300.f32[2] = v124;
  v125 = *(v280 + 96);
  v133 = objc_msgSend_count(v125, v126, v127, v128, v129, v130, v131, v132);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v312 = 0u;
  v313 = 0u;
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v306 = 0u;
  v307 = 0u;
  v304 = 0u;
  v305 = 0u;
  v302 = 0u;
  v303 = 0u;
  if (v13)
  {
    v138 = v133;
    for (i = 0; i < v13; i += v141)
    {
      if (v138 <= i)
      {
        v140 = 0;
        if (v13 - i >= 0x20)
        {
          v141 = 32;
        }

        else
        {
          v141 = v13 - i;
        }

        v142 = v141;
        if (!v141)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v138 - i >= 0x20)
        {
          v140 = 32;
          objc_msgSend_getObjects_range_(v125, v134, &v302, i, 32, v135, v136, v137);
        }

        else
        {
          v140 = v138 - i;
          objc_msgSend_getObjects_range_(v125, v134, &v302, i, v138 - i, v135, v136, v137);
        }

        if (v13 - i >= 0x20)
        {
          v141 = 32;
        }

        else
        {
          v141 = v13 - i;
        }

        v142 = v141 - v140;
        if (v141 == v140)
        {
          goto LABEL_33;
        }
      }

      bzero(&v302 + 8 * v140, 8 * v142);
LABEL_33:
      objc_msgSend_setTextures_withRange_(a2, v134, &v302, i, v141, v135, v136, v137);
    }
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v134, v280 + 104, 32, 0, v135, v136, v137);
  objc_msgSend_setBytes_length_atIndex_(a2, v256, &v299, 24, 28, v257, v258, v259);
  v302 = vdupq_n_s64(1uLL);
  *&v303 = v93;
  v288 = v295;
  v289 = v296;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v260, &v302, &v288, v261, v262, v263, v264);
  *(v279 + 296) += *(v280 + 8) * v277;
LABEL_60:
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  return 0;
}

__n128 sub_239D564CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = (*(a1 + 8) + 24 * a2);
  result = *v3;
  *a3 = *v3;
  a3[1].n128_u64[0] = v3[1].n128_u64[0];
  return result;
}

uint64_t sub_239D58060(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v82[1] = *MEMORY[0x277D85DE8];
  v74 = *(a4 + 120);
  v75 = *(a4 + 136);
  v76 = *(a4 + 152);
  v12 = *(a4 + 192);
  v51[0] = 1;
  v79 = v12;
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

  v54 = v27;
  v55 = v29;
  v56 = v31;
  v57 = v23 != 0;
  v58 = 1;
  v59 = 0;
  v60 = v20;
  v61 = 0;
  if (*(a4 + 104))
  {
    v82[0] = *(a4 + 104);
    v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v82, 1, v16, v17, v18, v19);
  }

  else
  {
    v32 = 0;
  }

  v33 = *(a4 + 80);
  v46 = *v22;
  v47 = v33;
  v48 = *(a4 + 96);
  v34 = *(a4 + 16);
  v35 = *(a4 + 32);
  v44[0] = *a4;
  v44[1] = v34;
  v53 = v32;
  v52 = *(a4 + 80);
  v36 = *(a4 + 112);
  v44[2] = v35;
  v37 = *(a4 + 40);
  v45 = *(a4 + 48);
  v38 = *(a4 + 56);
  v49 = v36;
  v50 = v38;
  v51[3] = v44;
  v77 = *(a4 + 168);
  v39 = *(a4 + 200);
  v78 = *(a4 + 184);
  v80 = v39;
  v40 = *(*a4 + *v30);
  v41 = vmovn_s64(*(a4 + 168));
  v65 = v41.i16[2];
  v66 = 0x1000100000000;
  v64 = v41.i16[0];
  v68 = v41.i16[2];
  v67 = v41.i16[0];
  v69 = 0x1000100010001;
  v70 = v39;
  v71 = v40;
  v72 = v78;
  v73 = 1;
  v81 = v37;
  v63 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, &v81, 1, v16, v17, v18, v19, v44[0], v34, v35, v45, v46, v47, v48, v36, v50);
  v62 = *(a4 + 16);
  v42 = *(a4 + 208);
  v51[0] = *(a4 + 216);
  v51[1] = 1;
  v51[2] = v42;
  sub_239D582EC(a1, a2, a3, v51);
  return 0;
}

uint64_t sub_239D582EC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v980 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 408);
  v8 = *(a1 + 368);
  v9 = *(a1 + 372);
  v10 = *(a1 + 376);
  v11 = *(a1 + 380);
  v12 = *(a1 + 384);
  v13 = *(a1 + 388);
  v14 = *(a1 + 416);
  v15 = *(a1 + 392);
  v16 = *(a1 + 396);
  v909 = *(a1 + *MEMORY[0x277CD7350]);
  MEMORY[0x23EE7D040](v963, a3, 0);
  v24 = objc_msgSend_bytes(v7, v17, v18, v19, v20, v21, v22, v23);
  v916 = a2;
  if (objc_msgSend_length(v7, v25, v26, v27, v28, v29, v30, v31) < 0x201)
  {
    v46 = 0;
  }

  else
  {
    v39 = v909[2];
    v40 = objc_msgSend_length(v7, v32, v33, v34, v35, v36, v37, v38);
    v41 = (*(*v909 + 3))(v909);
    v46 = objc_msgSend_newBufferWithBytes_length_options_(v39, v42, v24, v40, 16 * v41, v43, v44, v45);
  }

  v47 = *(a4 + 24);
  v48 = v47[14];
  v49 = *v47;
  v50 = objc_msgSend_labelsImage(v48, v32, v33, v34, v35, v36, v37, v38);
  v912 = objc_msgSend_weightsImage(v48, v51, v52, v53, v54, v55, v56, v57);
  v65 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!v50 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!v49 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v887 = v24;
  v888 = v7;
  v906 = v46;
  v902 = objc_msgSend_featureChannels(v49, v58, v59, v60, v61, v62, v63, v64);
  v73 = v49;
  v74 = *&v49[*MEMORY[0x277CD7330]];
  context = v73;
  v75 = *&v73[*MEMORY[0x277CD7308]];
  v893 = *(v50 + *MEMORY[0x277CD72F8]);
  v899 = a1;
  if ((*(a1 + *v65) & 1) == 0 && *(a4 + 8))
  {
    v76 = MEMORY[0x277CD7330];
    v77 = 0;
    v78 = 0;
    do
    {
      v79 = (*(a4 + 24) + v77);
      v80 = *v79;
      v81 = v79[14];
      if (!v81 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v89 = objc_msgSend_labelsImage(v81, v66, v67, v68, v69, v70, v71, v72);
      if (!v80 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (!v89 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v912 && !objc_msgSend_weightsImage(v81, v82, v83, v84, v85, v86, v87, v88) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      objc_msgSend_featureChannels(v80, v82, v83, v84, v85, v86, v87, v88);
      if (objc_msgSend_featureChannels(v80, v90, v91, v92, v93, v94, v95, v96) / v14 <= 5 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      objc_msgSend_featureChannels(v80, v97, v98, v99, v100, v101, v102, v103);
      if (objc_msgSend_featureChannels(v80, v104, v105, v106, v107, v108, v109, v110) % v14 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v74 != *(v89 + *v76) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v75 != *(v89 + *MEMORY[0x277CD7308]) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (((*(v89 + *MEMORY[0x277CD72F8]) + 3) ^ (*&v80[*MEMORY[0x277CD72F8]] + 3)) >= 4 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      ++v78;
      v77 += 120;
    }

    while (v78 < *(a4 + 8));
  }

  objc_msgSend_lossType(*(v899 + 352), v66, v67, v68, v69, v70, v71, v72);
  objc_msgSend_lossType(*(v899 + 344), v111, v112, v113, v114, v115, v116, v117);
  objc_msgSend_lossType(*(v899 + 328), v118, v119, v120, v121, v122, v123, v124);
  objc_msgSend_lossType(*(v899 + 336), v125, v126, v127, v128, v129, v130, v131);
  *&v132 = -1;
  *(&v132 + 1) = -1;
  v961 = v132;
  v962 = v132;
  v959 = v132;
  v960 = v132;
  *(&v958 + 1) = -1;
  *&v958 = objc_msgSend_maxBatchSize(v899, v133, v134, v135, v136, v137, v138, v139);
  MPSLibrary::CreateUberShaderKey();
  v140 = v899;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(v916, v142, PipelineStateForMPSKey, v143, v144, v145, v146, v147, 0, 0, 0, 0, 0);
  MPSLibrary::ReleaseMPSKey();
  v148 = *(a4 + 8);
  v156 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v149, v150, v151, v152, v153, v154, v155);
  v162.i16[0] = v74;
  v162.i16[1] = v75;
  v890 = v162.i32[0];
  v162.i16[2] = v14;
  v162.i16[3] = v148;
  if (v156 >= 0x100)
  {
    v163 = 256;
  }

  else
  {
    v163 = v156;
  }

  v957 = 0;
  sub_239BB1200(v909[2], v163, &v957, v157, v158, v159, v160, v161, v162);
  v171 = v902 / v14 - 5;
  v173 = v172;
  v891 = v174;
  v176 = v175;
  v903 = v957;
  *(a4 + 70) = v174 * v172 * v175;
  v954 = 0;
  v177 = *(a4 + 16);
  v955 = v177 == 0;
  v178 = *(a4 + 8);
  v956 = (v178 + v177) >= *a4;
  v179 = 65537;
  if (v14 >= 2u)
  {
    v180 = 0x80000000 / v14;
    v181 = __clz(v180);
    v182 = v180 >> (16 - v181);
    v183 = v181 + 15;
    v184 = -65536 * v14 * v182 / v14;
    if (v184 <= v182)
    {
      v185 = v182;
    }

    else
    {
      v185 = v182 + 1;
    }

    if (v184 <= v182)
    {
      LOWORD(v182) = 0;
    }

    v179 = (v183 << 48) | ((v184 - v182) << 32) | (v185 << 16) | v14;
  }

  v952 = v179;
  v937 = v8;
  v938 = v9;
  v940 = v11;
  v939 = v10;
  v943 = v13;
  v944 = v15;
  v947 = v16;
  v945 = v14;
  v946 = v171;
  v186 = 1.0 / v171;
  v187.f64[0] = v14;
  v188 = v75 * v74;
  v187.f64[1] = (v75 * v74);
  __asm { FMOV            V2.2D, #1.0 }

  v950 = vcvt_f32_f64(vdivq_f64(_Q2, v187));
  v941 = v12;
  v942 = 1.0 / (v74 * v75);
  v949 = v186;
  v948 = 1.0 / (v16 + 0.0001);
  v951 = v178;
  v953 = 0;
  v194 = *(v899 + 360);
  v195 = v906;
  if (v194)
  {
    LOBYTE(v953) = 1;
    if (v194 == 2)
    {
      BYTE1(v953) = 1;
    }

    if (*(v899 + 364) == 1)
    {
      v954 = 1;
    }
  }

  objc_msgSend_delta(*(v899 + 328), v164, v165, v166, v167, v168, v169, v170);
  v920 = v196;
  objc_msgSend_weight(*(v899 + 328), v197, v198, v199, v200, v201, v202, v203);
  v919[0] = v204;
  objc_msgSend_labelSmoothing(*(v899 + 328), v205, v206, v207, v208, v209, v210, v211);
  v919[1] = v212;
  objc_msgSend_epsilon(*(v899 + 328), v213, v214, v215, v216, v217, v218, v219);
  v919[2] = v220;
  objc_msgSend_delta(*(v899 + 328), v221, v222, v223, v224, v225, v226, v227);
  v920 = v235;
  v921 = 1.0;
  if (*(v899 + 360) == 2)
  {
    v236 = v188 << (objc_msgSend_lossType(*(v899 + 328), v228, v229, v230, v231, v232, v233, v234) != 2);
    if (v954)
    {
      v236 *= *a4;
    }

    v921 = v921 / v236;
  }

  objc_msgSend_delta(*(v899 + 336), v228, v229, v230, v231, v232, v233, v234);
  v925 = v237;
  objc_msgSend_weight(*(v899 + 336), v238, v239, v240, v241, v242, v243, v244);
  v922 = v245;
  objc_msgSend_labelSmoothing(*(v899 + 336), v246, v247, v248, v249, v250, v251, v252);
  v923 = v253;
  objc_msgSend_epsilon(*(v899 + 336), v254, v255, v256, v257, v258, v259, v260);
  v924 = v261;
  objc_msgSend_delta(*(v899 + 336), v262, v263, v264, v265, v266, v267, v268);
  v925 = v276;
  v926 = 1.0;
  if (*(v899 + 360) == 2)
  {
    v277 = v188 << (objc_msgSend_lossType(*(v899 + 336), v269, v270, v271, v272, v273, v274, v275) != 2);
    if (v954)
    {
      v277 *= *a4;
    }

    v926 = v926 / v277;
  }

  objc_msgSend_delta(*(v899 + 344), v269, v270, v271, v272, v273, v274, v275);
  v930 = v278;
  objc_msgSend_weight(*(v899 + 344), v279, v280, v281, v282, v283, v284, v285);
  v927 = v286;
  objc_msgSend_labelSmoothing(*(v899 + 344), v287, v288, v289, v290, v291, v292, v293);
  v928 = v294;
  objc_msgSend_epsilon(*(v899 + 344), v295, v296, v297, v298, v299, v300, v301);
  v929 = v302;
  objc_msgSend_delta(*(v899 + 344), v303, v304, v305, v306, v307, v308, v309);
  v930 = v317;
  v931 = 1.0;
  if (*(v899 + 360) == 2)
  {
    v318 = v188;
    if (v954 == 1)
    {
      v318 = *a4 * v188;
    }

    v931 = 1.0 / v318;
  }

  objc_msgSend_delta(*(v899 + 352), v310, v311, v312, v313, v314, v315, v316);
  v935 = v319;
  objc_msgSend_weight(*(v899 + 352), v320, v321, v322, v323, v324, v325, v326);
  v932 = v327;
  objc_msgSend_labelSmoothing(*(v899 + 352), v328, v329, v330, v331, v332, v333, v334);
  v933 = v335;
  objc_msgSend_epsilon(*(v899 + 352), v336, v337, v338, v339, v340, v341, v342);
  v934 = v343;
  objc_msgSend_delta(*(v899 + 352), v344, v345, v346, v347, v348, v349, v350);
  v935 = v358;
  v936 = 1.0;
  if (*(v899 + 360) == 2)
  {
    if (objc_msgSend_lossType(*(v899 + 352), v351, v352, v353, v354, v355, v356, v357) == 2)
    {
      v359 = 1;
    }

    else
    {
      v359 = v171;
    }

    v360 = v359 * v188;
    if (v954)
    {
      v360 *= *a4;
    }

    v936 = v936 / v360;
  }

  if (objc_msgSend_retainedReferences(a3, v351, v352, v353, v354, v355, v356, v357))
  {
    v915 = 0;
  }

  else
  {
    v915 = objc_opt_new();
    v918[0] = MEMORY[0x277D85DD0];
    v918[1] = 3221225472;
    v918[2] = sub_239D5B7F8;
    v918[3] = &unk_278B28F28;
    v918[4] = v915;
    objc_msgSend_addCompletedHandler_(a3, v368, v918, v369, v370, v371, v372, v373);
  }

  v381 = objc_msgSend_maxBatchSize(v899, v361, v362, v363, v364, v365, v366, v367);
  v382 = *(a4 + 40);
  v889 = v176;
  v892 = v173;
  if ((*(a4 + 32) & 2) == 0)
  {
    v383 = objc_msgSend_objectAtIndexedSubscript_(v382, v374, 0, v376, v377, v378, v379, v380);
    objc_msgSend_setTexture_atIndex_(v916, v384, v383, 0, v385, v386, v387, v388);
    goto LABEL_98;
  }

  v393 = objc_msgSend_count(v382, v374, v375, v376, v377, v378, v379, v380);
  v978 = 0u;
  v979 = 0u;
  v976 = 0u;
  v977 = 0u;
  v974 = 0u;
  v975 = 0u;
  v972 = 0u;
  v973 = 0u;
  v970 = 0u;
  v971 = 0u;
  v968 = 0u;
  v969 = 0u;
  v966 = 0u;
  v967 = 0u;
  v964 = 0u;
  v965 = 0u;
  if (v381)
  {
    v394 = v393;
    for (i = 0; i < v381; i += v397)
    {
      if (v394 <= i)
      {
        v396 = 0;
        if (v381 - i >= 0x20)
        {
          v397 = 32;
        }

        else
        {
          v397 = v381 - i;
        }

        v398 = v397;
        if (!v397)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v394 - i >= 0x20)
        {
          v396 = 32;
          objc_msgSend_getObjects_range_(v382, v389, &v964, i, 32, v390, v391, v392);
        }

        else
        {
          v396 = v394 - i;
          objc_msgSend_getObjects_range_(v382, v389, &v964, i, v394 - i, v390, v391, v392);
        }

        if (v381 - i >= 0x20)
        {
          v397 = 32;
        }

        else
        {
          v397 = v381 - i;
        }

        v398 = v397 - v396;
        if (v397 == v396)
        {
          goto LABEL_90;
        }
      }

      bzero(&v964 + 8 * v396, 8 * v398);
LABEL_90:
      objc_msgSend_setTextures_withRange_(v916, v389, &v964, i, v397, v390, v391, v392);
    }
  }

  v140 = v899;
  v195 = v906;
  v173 = v892;
LABEL_98:
  objc_msgSend_setBytes_length_atIndex_(v916, v389, a4 + 48, 40, 0, v390, v391, v392);
  v399 = *(a4 + 8);
  v400 = 4 * v399 * ((*&context[*MEMORY[0x277CD72F8]] + 3) & 0x3FFFFFFFFFFFFFFCLL) * *&context[*MEMORY[0x277CD7330]] * *&context[*MEMORY[0x277CD7308]];
  v894.i64[0] = v903.u16[0];
  v894.i64[1] = v903.u16[1];
  if (*(v140 + 360))
  {
    v401 = 4 * v14 * v903.u16[0] * v903.u16[1] * v399;
  }

  else
  {
    v401 = 4 * v399 * ((*&context[*MEMORY[0x277CD72F8]] + 3) & 0x3FFFFFFFFFFFFFFCLL) * *&context[*MEMORY[0x277CD7330]] * *&context[*MEMORY[0x277CD7308]];
  }

  TempBuffer = MPSAutoCache::GetTempBuffer(v963, (v401 + 15) & 0xFFFFFFFFFFFFFFF0, 0);
  contexta = MPSAutoCache::GetTempBuffer(v963, v400, 0);
  v409 = *(a4 + 96);
  if ((*(a4 + 88) & 2) == 0)
  {
    v410 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v402, 0, v404, v405, v406, v407, v408);
    objc_msgSend_setTexture_atIndex_(v916, v411, v410, v381, v412, v413, v414, v415);
    goto LABEL_122;
  }

  v420 = objc_msgSend_count(*(a4 + 96), v402, v403, v404, v405, v406, v407, v408);
  v978 = 0u;
  v979 = 0u;
  v976 = 0u;
  v977 = 0u;
  v974 = 0u;
  v975 = 0u;
  v972 = 0u;
  v973 = 0u;
  v970 = 0u;
  v971 = 0u;
  v968 = 0u;
  v969 = 0u;
  v966 = 0u;
  v967 = 0u;
  v964 = 0u;
  v965 = 0u;
  if (v381)
  {
    v421 = v420;
    for (j = 0; j < v381; j += v424)
    {
      if (v421 <= j)
      {
        v423 = 0;
        if (v381 - j >= 0x20)
        {
          v424 = 32;
        }

        else
        {
          v424 = v381 - j;
        }

        v425 = v424;
        if (!v424)
        {
          goto LABEL_114;
        }
      }

      else
      {
        if (v421 - j >= 0x20)
        {
          v423 = 32;
          objc_msgSend_getObjects_range_(v409, v416, &v964, j, 32, v417, v418, v419);
        }

        else
        {
          v423 = v421 - j;
          objc_msgSend_getObjects_range_(v409, v416, &v964, j, v421 - j, v417, v418, v419);
        }

        if (v381 - j >= 0x20)
        {
          v424 = 32;
        }

        else
        {
          v424 = v381 - j;
        }

        v425 = v424 - v423;
        if (v424 == v423)
        {
          goto LABEL_114;
        }
      }

      bzero(&v964 + 8 * v423, 8 * v425);
LABEL_114:
      objc_msgSend_setTextures_withRange_(v916, v416, &v964, j + v381, v424, v417, v418, v419);
    }
  }

  v195 = v906;
  v173 = v892;
LABEL_122:
  objc_msgSend_setBytes_length_atIndex_(v916, v416, a4 + 104, 32, 1, v417, v418, v419);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(v916, v427, Sampler, 1, v428, v429, v430, v431);
  objc_msgSend_setBuffer_offset_atIndex_(v916, v432, TempBuffer, 0, 28, v433, v434, v435);
  objc_msgSend_setBuffer_offset_atIndex_(v916, v436, contexta, 0, 27, v437, v438, v439);
  v447 = v173;
  if ((*(a4 + 88) & 2) != 0)
  {
    if (*(a4 + 8))
    {
      v473 = 0;
      v474 = 2 * v381;
      v475 = 3 * v381;
      v476 = 112;
      do
      {
        v477 = *(*(a4 + 24) + v476);
        v485 = objc_msgSend_labelsImage(v477, v440, v441, v442, v443, v444, v445, v446);
        if (v915)
        {
          objc_msgSend_addObject_(v915, v478, v485, v480, v481, v482, v483, v484);
        }

        v486 = objc_msgSend_texture(v485, v478, v479, v480, v481, v482, v483, v484);
        objc_msgSend_setTexture_atIndex_(v916, v487, v486, v474 + v473, v488, v489, v490, v491);
        if (v912)
        {
          v499 = objc_msgSend_weightsImage(v477, v440, v441, v442, v443, v444, v445, v446);
          if (v915)
          {
            objc_msgSend_addObject_(v915, v492, v499, v494, v495, v496, v497, v498);
          }

          v500 = objc_msgSend_texture(v499, v492, v493, v494, v495, v496, v497, v498);
          objc_msgSend_setTexture_atIndex_(v916, v501, v500, v475 + v473, v502, v503, v504, v505);
        }

        ++v473;
        v476 += 120;
      }

      while (v473 < *(a4 + 8));
    }
  }

  else
  {
    v455 = objc_msgSend_labelsImage(*(*(a4 + 24) + 112), v440, v441, v442, v443, v444, v445, v446);
    if (v915)
    {
      objc_msgSend_addObject_(v915, v448, v455, v450, v451, v452, v453, v454);
    }

    v456 = objc_msgSend_texture(v455, v448, v449, v450, v451, v452, v453, v454);
    objc_msgSend_setTexture_atIndex_(v916, v457, v456, 2 * v381, v458, v459, v460, v461);
    if (v912)
    {
      v465 = objc_msgSend_texture(v912, v440, v462, v463, v464, v444, v445, v446);
      objc_msgSend_setTexture_atIndex_(v916, v466, v465, 3 * v381, v467, v468, v469, v470);
      if (v915)
      {
        objc_msgSend_addObject_(v915, v440, v912, v471, v472, v444, v445, v446);
      }
    }
  }

  objc_msgSend_setBytes_length_atIndex_(v916, v440, a4 + 104, 32, 2, v444, v445, v446);
  objc_msgSend_setBytes_length_atIndex_(v916, v506, a4 + 104, 32, 3, v507, v508, v509);
  objc_msgSend_setBytes_length_atIndex_(v916, v510, v919, 160, 30, v511, v512, v513);
  if (v195)
  {
    v521 = v916;
    objc_msgSend_setBuffer_offset_atIndex_(v916, v514, v195, 0, 29, v518, v519, v520);
    if (v915)
    {
      objc_msgSend_addObject_(v915, v522, v195, v523, v524, v525, v526, v527);
    }
  }

  else
  {
    v528 = objc_msgSend_length(v888, v514, v515, v516, v517, v518, v519, v520);
    v521 = v916;
    objc_msgSend_setBytes_length_atIndex_(v916, v529, v887, v528, 29, v530, v531, v532);
  }

  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v521, v522, (4 * v891 * v447 * v889 + 15) & 0x7FFFFFFFFFFF0, 0, v524, v525, v526, v527);
  v964 = v894;
  *&v965 = (v903.i16[2] * v903.i16[3]);
  *v917 = v891;
  *&v917[8] = v447;
  *&v917[16] = v889;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v521, v533, &v964, v917, v534, v535, v536, v537);

  v937 = v894.u32[0];
  v947 = v903.u16[1];
  v538 = (*(**(v140 + *MEMORY[0x277CD7350]) + 56))(*(v140 + *MEMORY[0x277CD7350]));
  *&v539 = -1;
  *(&v539 + 1) = -1;
  v958 = v539;
  v959 = v539;
  v960 = v539;
  v961 = v539;
  v962 = v539;
  *&v958 = 2 * objc_msgSend_maxBatchSize(v140, v540, v541, v542, v543, v544, v545, v546);
  MPSLibrary::CreateUberShaderKey();
  v913 = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(v521, v547, v913, v548, v549, v550, v551, v552, 0, 0, 0, 0, 0);
  MPSLibrary::ReleaseMPSKey();
  v553 = *(a4 + 8);
  v561 = objc_msgSend_maxTotalThreadsPerThreadgroup(v913, v554, v555, v556, v557, v558, v559, v560);
  v567 = v893 + 3;
  v568.i32[0] = v890;
  if (v561 >= 0x100)
  {
    v569 = 256;
  }

  else
  {
    v569 = v561;
  }

  v957 = 0;
  v895 = v569;
  v568.i16[3] = 2 * v553;
  v568.i16[2] = (v893 + 3) >> 2;
  sub_239BB1200(v909[2], v569, &v957, v562, v563, v564, v565, v566, v568);
  v910 = v570;
  v904 = v957;
  v907 = v570.u16[2];
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v521, v571, (4 * v910.u16[0] * v910.u16[1] * v570.u16[2] + 15) & 0x7FFFFFFFFFFF0, 0, v572, v573, v574, v575);
  v580 = 65537;
  if ((v567 >> 2) >= 2u)
  {
    v581 = (v567 >> 2);
    v582 = __clz(0x80000000 / v581);
    v583 = (0x80000000 / v581) >> (16 - v582);
    v584 = v582 + 15;
    v585 = -65536 * ((v893 + 3) >> 2) * v583 / v581;
    if (v585 <= v583)
    {
      v586 = v583;
    }

    else
    {
      v586 = v583 + 1;
    }

    if (v585 <= v583)
    {
      LOWORD(v583) = 0;
    }

    v580 = (v584 << 48) | ((v585 - v583) << 32) | (v586 << 16) | (v567 >> 2);
  }

  v952 = v580;
  objc_msgSend_setBuffer_offset_atIndex_(v521, v576, TempBuffer, 0, 28, v577, v578, v579);
  objc_msgSend_setBuffer_offset_atIndex_(v521, v587, contexta, 0, 27, v588, v589, v590);
  objc_msgSend_setBytes_length_atIndex_(v521, v591, a4 + 48, 40, 0, v592, v593, v594);
  contextb = objc_autoreleasePoolPush();
  v901 = vmovl_u16(v904).u64[0];
  v905 = (v904.i16[2] * v904.i16[3]);
  v911 = vmovl_u16(v910).u64[0];
  if ((*(a4 + 32) & 2) == 0)
  {
    v602 = objc_msgSend_lossImage(*(*(a4 + 24) + 112), v595, v596, v597, v598, v599, v600, v601);
    v610 = objc_msgSend_texture(v602, v603, v604, v605, v606, v607, v608, v609);
    v611 = *&v602[*MEMORY[0x277CD7328]];
    v618 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 40), v612, 0, v613, v614, v615, v616, v617);
    if (v611 == objc_msgSend_textureType(v618, v619, v620, v621, v622, v623, v624, v625))
    {
      v633 = v610;
      if (!v915)
      {
LABEL_163:
        if (v538)
        {
          objc_msgSend_setTexture_atIndex_(v916, v634, v610, 1, v636, v637, v638, v639);
          if (!v955)
          {
            goto LABEL_169;
          }
        }

        else
        {
          objc_msgSend_setTexture_atIndex_(v916, v634, v610, 0, v636, v637, v638, v639);
          BYTE2(v953) = 1;
          objc_msgSend_setBytes_length_atIndex_(v916, v718, v919, 160, 30, v719, v720, v721);
          v722 = vand_s8(v901, 0xFFFF0000FFFFLL);
          v723.i64[0] = v722.u32[0];
          v723.i64[1] = v722.u32[1];
          v964 = v723;
          *&v965 = v905;
          v724 = vand_s8(v911, 0xFFFF0000FFFFLL);
          v723.i64[0] = v724.u32[0];
          v723.i64[1] = v724.u32[1];
          *v917 = v723;
          *&v917[16] = v907;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v916, v725, &v964, v917, v726, v727, v728, v729);
          HIWORD(v953) = 256;
          if (!v955)
          {
LABEL_169:

            v736 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 40), v730, 0, v731, v732, v733, v734, v735);
            objc_msgSend_setTexture_atIndex_(v916, v737, v736, 0, v738, v739, v740, v741);
            goto LABEL_183;
          }
        }

        if (v954 == 1)
        {
          *(v140 + 432) = v610;
        }

        goto LABEL_169;
      }
    }

    else
    {
      v693 = objc_msgSend_pixelFormat(v610, v626, v627, v628, v629, v630, v631, v632);
      v700 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 40), v694, 0, v695, v696, v697, v698, v699);
      v708 = objc_msgSend_textureType(v700, v701, v702, v703, v704, v705, v706, v707);
      v716 = objc_msgSend_arrayLength(v610, v709, v710, v711, v712, v713, v714, v715);
      v610 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v610, v717, v693, v708, 0, 1, 0, v716);
      if (!v915)
      {
        goto LABEL_163;
      }
    }

    objc_msgSend_addObject_(v915, v634, v610, v635, v636, v637, v638, v639);
    goto LABEL_163;
  }

  v646 = objc_msgSend_count(*(a4 + 40), v595, v596, v597, v598, v599, v600, v601);
  if (!v646)
  {
    goto LABEL_183;
  }

  for (k = 0; k != v646; ++k)
  {
    v648 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 40), v640, k, v641, v642, v643, v644, v645);
    objc_msgSend_setTexture_atIndex_(v916, v649, v648, k, v650, v651, v652, v653);
  }

  v655 = objc_msgSend_lossImage(*(*(a4 + 24) + 112), v640, v654, v641, v642, v643, v644, v645);
  v663 = objc_msgSend_texture(v655, v656, v657, v658, v659, v660, v661, v662);
  v664 = *&v655[*MEMORY[0x277CD7328]];
  v671 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 40), v665, 0, v666, v667, v668, v669, v670);
  if (v664 == objc_msgSend_textureType(v671, v672, v673, v674, v675, v676, v677, v678))
  {
    v686 = v663;
    if (!v915)
    {
      goto LABEL_172;
    }

    goto LABEL_171;
  }

  v742 = objc_msgSend_pixelFormat(v663, v679, v680, v681, v682, v683, v684, v685);
  v749 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 40), v743, 0, v744, v745, v746, v747, v748);
  v757 = objc_msgSend_textureType(v749, v750, v751, v752, v753, v754, v755, v756);
  v765 = objc_msgSend_arrayLength(v663, v758, v759, v760, v761, v762, v763, v764);
  v663 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v663, v766, v742, v757, 0, 1, 0, v765);
  if (v915)
  {
LABEL_171:
    objc_msgSend_addObject_(v915, v687, v663, v688, v689, v690, v691, v692);
  }

LABEL_172:
  objc_msgSend_setTexture_atIndex_(v916, v687, v663, v646, v689, v690, v691, v692);
  if (v955 && v954 == 1)
  {
    *(v140 + 432) = v663;
  }

  if (v646 != 1)
  {
    v774 = 1;
    v775 = 232;
    while (1)
    {
      v776 = objc_msgSend_lossImage(*(*(a4 + 24) + v775), v767, v768, v769, v770, v771, v772, v773);
      v784 = objc_msgSend_texture(v776, v777, v778, v779, v780, v781, v782, v783);
      v785 = *&v776[*MEMORY[0x277CD7328]];
      v792 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 40), v786, v774, v787, v788, v789, v790, v791);
      if (v785 == objc_msgSend_textureType(v792, v793, v794, v795, v796, v797, v798, v799))
      {
        break;
      }

      v814 = objc_msgSend_pixelFormat(v784, v800, v801, v802, v803, v804, v805, v806);
      v821 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 40), v815, v774, v816, v817, v818, v819, v820);
      v829 = objc_msgSend_textureType(v821, v822, v823, v824, v825, v826, v827, v828);
      v837 = objc_msgSend_arrayLength(v784, v830, v831, v832, v833, v834, v835, v836);
      v784 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v784, v838, v814, v829, 0, 1, 0, v837);
      if (v915)
      {
        goto LABEL_181;
      }

LABEL_182:
      objc_msgSend_setTexture_atIndex_(v916, v808, v784, v646 + v774, v810, v811, v812, v813);

      ++v774;
      v775 += 120;
      if (v646 == v774)
      {
        goto LABEL_183;
      }
    }

    v807 = v784;
    if (!v915)
    {
      goto LABEL_182;
    }

LABEL_181:
    objc_msgSend_addObject_(v915, v808, v784, v809, v810, v811, v812, v813);
    goto LABEL_182;
  }

LABEL_183:
  objc_autoreleasePoolPop(contextb);
  objc_msgSend_setBytes_length_atIndex_(v916, v839, v919, 160, 30, v840, v841, v842);
  v843 = vand_s8(v901, 0xFFFF0000FFFFLL);
  v844.i64[0] = v843.u32[0];
  v844.i64[1] = v843.u32[1];
  v964 = v844;
  *&v965 = v905;
  v845 = vand_s8(v911, 0xFFFF0000FFFFLL);
  v844.i64[0] = v845.u32[0];
  v844.i64[1] = v845.u32[1];
  *v917 = v844;
  *&v917[16] = v907;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v916, v846, &v964, v917, v847, v848, v849, v850);
  if (v954 == 1)
  {
    MPSLibrary::CreateUberShaderKey();
    v914 = MPSLibrary::GetPipelineStateForMPSKey();
    objc_msgSend_setComputePipelineState_(v916, v851, v914, v852, v853, v854, v855, v856, 0, 0, 0, 0, 0);
    MPSLibrary::ReleaseMPSKey();
    if (v956)
    {
      v863 = *(v140 + 432);
      objc_msgSend_addObject_(v915, v857, v863, v858, v859, v860, v861, v862);
      objc_msgSend_setTexture_atIndex_(v916, v864, v863, 0, v865, v866, v867, v868);
    }

    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v916, v857, (4 * v895 + 15) & 0xFF0, 0, v859, v860, v861, v862);
    v876 = objc_msgSend_data(*(v140 + 424), v869, v870, v871, v872, v873, v874, v875);
    objc_msgSend_setBuffer_offset_atIndex_(v916, v877, v876, 0, 27, v878, v879, v880);
    v964 = vdupq_n_s64(1uLL);
    *&v965 = 1;
    *v917 = v895;
    *&v917[8] = v964;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v916, v881, &v964, v917, v882, v883, v884, v885);
  }

  MPSLibrary::ReleaseComputeState();
  MPSAutoCache::~MPSAutoCache(v963);
  return 0;
}

uint64_t sub_239D5B5B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 64);
  v5 = MPSCreateFunctionConstantValues();
  v6 = *a3;
  v7 = vandq_s8(vshlq_u32(vdupq_n_s32(v4), xmmword_239D98240), xmmword_239D98250);
  *v7.i8 = vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
  v71 = v7.i32[0] | (4 * v4) & 0x7000000 | v7.i32[1];
  objc_msgSend_setConstantValue_type_atIndex_(v5, v8, &v71, 33, 126, v9, v10, v11);
  if (v6 != -1)
  {
    v71 = v6;
    objc_msgSend_setConstantValue_type_atIndex_(v5, v12, &v71, 33, 125, v13, v14, v15);
  }

  v71 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v12, &v71, 33, 123, v13, v14, v15);
  v71 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v16, &v71, 33, 119, v17, v18, v19);
  v71 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v20, &v71, 33, 118, v21, v22, v23);
  v71 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v24, &v71, 33, 122, v25, v26, v27);
  v71 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v28, &v71, 33, 121, v29, v30, v31);
  v71 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v32, &v71, 33, 117, v33, v34, v35);
  v71 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v36, &v71, 33, 116, v37, v38, v39);
  LOWORD(v71) = v4 & 0xF;
  v70 = v4 >> 4;
  v69 = (v4 >> 8) & 0xF;
  v68 = v4 >> 12;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v40, &v71, 41, 0, v41, v42, v43);
  objc_msgSend_setConstantValue_type_atIndex_(v5, v44, &v70, 41, 1, v45, v46, v47);
  objc_msgSend_setConstantValue_type_atIndex_(v5, v48, &v69, 41, 2, v49, v50, v51);
  objc_msgSend_setConstantValue_type_atIndex_(v5, v52, &v68, 41, 3, v53, v54, v55);
  v67 = v4 < 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v56, &v67, 53, 4, v57, v58, v59);
  v66 = BYTE4(v4) & 1;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v60, &v66, 53, 5, v61, v62, v63);
  v64 = _MPSNewSpecializedFunction();

  return v64;
}

uint64_t sub_239D5E22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v13 = objc_msgSend_kernelWidth(a3, a2, a3, a4, a5, a6, a7, a8);
  v21 = objc_msgSend_kernelHeight(a3, v14, v15, v16, v17, v18, v19, v20);
  v29 = objc_msgSend_inputFeatureChannels(a3, v22, v23, v24, v25, v26, v27, v28);
  v37 = objc_msgSend_outputFeatureChannels(a3, v30, v31, v32, v33, v34, v35, v36);
  v45 = objc_msgSend_groups(a3, v38, v39, v40, v41, v42, v43, v44);
  result = objc_msgSend_channelMultiplier(a3, v46, v47, v48, v49, v50, v51, v52);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  if (v10 == -1)
  {
    if (*(a3 + 394))
    {
      v54 = 268435472;
      v55 = v21 * v13 * v37;
      if (result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v54 = *(a3 + 432);
      v55 = v21 * v13 * v37;
      if (result)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v54 = 8;
    v55 = v21 * v13 * v37;
    if (result)
    {
      goto LABEL_9;
    }
  }

  v55 *= v29 / v45;
LABEL_9:
  if (v54 == 8)
  {
    v57 = 0x100004077774924;
    v56 = v55;
  }

  else
  {
    if (v54 != 268435472)
    {
      goto LABEL_14;
    }

    v56 = 2 * v55;
    v57 = 0x1000040BDFB0063;
  }

  result = malloc_type_malloc(v56, v57);
  *(a2 + 8) = result;
LABEL_14:
  if (v9)
  {
    result = malloc_type_malloc(4 * v37, 0x100004052888210uLL);
    *(a2 + 16) = result;
  }

  if (v10 != -1)
  {
    if (v10 < 2)
    {
      result = malloc_type_malloc(8 * v37, 0x100004000313F17uLL);
      *(a2 + 32) = result;
    }

    else
    {
      result = malloc_type_malloc(0x400uLL, 0x100004052888210uLL);
      *(a2 + 24) = result;
      if (v10 == 3)
      {
        *(a2 + 40) = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
        **(a2 + 40) = malloc_type_malloc(4 * v37, 0x100004052888210uLL);
        result = malloc_type_malloc(4 * v37, 0x100004052888210uLL);
        *(*(a2 + 40) + 8) = result;
      }
    }
  }

  if (v8)
  {
    result = malloc_type_malloc(4 * v37, 0x100004052888210uLL);
    *(a2 + 64) = result;
  }

  return result;
}

void sub_239D5E448(uint64_t a1, uint64_t a2, int a3)
{
  free(*(a2 + 8));
  free(*(a2 + 16));
  free(*(a2 + 64));
  if (a3 != -1)
  {
    if (a3 < 2)
    {
      v8 = *(a2 + 32);

      goto LABEL_7;
    }

    free(*(a2 + 24));
    if (a3 == 3)
    {
      v7 = *(a2 + 40);
      v6 = a2 + 40;
      v5 = v7;
      if (v7)
      {
        free(*v5);
        free(*(*v6 + 8));
        v8 = *v6;

LABEL_7:
        free(v8);
      }
    }
  }
}

void sub_239D5E500(void *a1, unsigned int *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = objc_msgSend_kernelWidth(a3, a2, a3, a4, a5, a6, a7, a8);
  v19 = objc_msgSend_kernelHeight(a3, v12, v13, v14, v15, v16, v17, v18);
  v27 = objc_msgSend_inputFeatureChannels(a3, v20, v21, v22, v23, v24, v25, v26);
  v35 = objc_msgSend_outputFeatureChannels(a3, v28, v29, v30, v31, v32, v33, v34);
  v43 = objc_msgSend_groups(a3, v36, v37, v38, v39, v40, v41, v42);
  v51 = objc_msgSend_channelMultiplier(a3, v44, v45, v46, v47, v48, v49, v50);
  v52 = *a2;
  objc_msgSend_encodeInt64_forKey_(a1, v53, a2[1], @"MPSCNNConvolutionWeight.dataLayout", v54, v55, v56, v57);
  objc_msgSend_encodeInt64_forKey_(a1, v58, v52, @"MPSCNNConvolutionWeight.dataType", v59, v60, v61, v62);
  objc_msgSend_encodeBool_forKey_(a1, v63, *(a2 + 2) == 0, @"MPSCNNConvolutionBias.isNull", v64, v65, v66, v67);
  if (!*(a2 + 1))
  {
    goto LABEL_11;
  }

  v72 = v19 * v11 * v35;
  if (v51)
  {
    if (v52 != 268435472)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v72 *= v27 / v43;
    if (v52 != 268435472)
    {
LABEL_4:
      if (v52 == 268435488)
      {
        v73 = malloc_type_malloc(4 * v72, 0x100004052888210uLL);
        if (v73)
        {
          v74 = v73;
          MPSCopyToFromNetworkByteOrder32();
          objc_msgSend_encodeBytes_length_forKey_(a1, v75, v74, 4 * v72, @"MPSCNNConvolutionWeight.data", v76, v77, v78);
          free(v74);
        }
      }

      objc_msgSend_encodeBytes_length_forKey_(a1, v68, *(a2 + 1), v72, @"MPSCNNConvolutionWeight.data", v69, v70, v71);
      goto LABEL_11;
    }
  }

  v79 = malloc_type_malloc(2 * v72, 0x1000040BDFB0063uLL);
  if (v79)
  {
    v80 = v79;
    MPSCopyToFromNetworkByteOrder16();
    objc_msgSend_encodeBytes_length_forKey_(a1, v81, v80, 2 * v72, @"MPSCNNConvolutionWeight.data", v82, v83, v84);
    free(v80);
  }

LABEL_11:
  if (*(a2 + 2))
  {
    v85 = malloc_type_malloc(4 * v35, 0x100004052888210uLL);
    if (v85)
    {
      v86 = v85;
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_encodeBytes_length_forKey_(a1, v87, v86, 4 * v35, @"MPSCNNConvolutionBias.data", v88, v89, v90);
      free(v86);
    }
  }

  if (*(a2 + 3))
  {
    v91 = malloc_type_malloc(0x400uLL, 0x100004052888210uLL);
    if (!v91)
    {
      return;
    }

    v92 = v91;
    MPSCopyToFromNetworkByteOrder32();
    objc_msgSend_encodeBytes_length_forKey_(a1, v93, v92, 1024, @"MPSCNNConvolutionQuantizationData.data", v94, v95, v96);
  }

  else
  {
    if (!*(a2 + 4))
    {
      return;
    }

    v97 = malloc_type_malloc(8 * v35, 0x100004052888210uLL);
    if (!v97)
    {
      return;
    }

    v92 = v97;
    MPSCopyToFromNetworkByteOrder32();
    objc_msgSend_encodeBytes_length_forKey_(a1, v98, v92, 8 * v35, @"MPSCNNConvolutionQuantizationData.data", v99, v100, v101);
  }

  free(v92);
}

uint64_t sub_239D5E7EC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  (*(*a1 + 96))(a1, v23, a3, a9, (a5 | a7) != 0, a6 != 0);
  (*(*a1 + 112))(a1, v23, a3, a4, a5, a6, a7, a8, a9);
  sub_239D5E500(a2, v23, a3, v17, v18, v19, v20, v21);
  return (*(*a1 + 104))(a1, v23, a9);
}

uint64_t sub_239D5FB2C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = objc_msgSend_width(*a4, a2, a3, a4, a5, a6, a7, a8);
  v18 = objc_msgSend_height(*a4, v11, v12, v13, v14, v15, v16, v17);
  v80 = a1[28];
  v81 = a1[44];
  v78 = a1[26];
  v79 = a1[27];
  v76 = a1[42];
  v77 = a1[25];
  v74 = *(a4 + 144);
  v75 = *(a4 + 152);
  v72 = v18;
  v73 = a1[41];
  sub_239D62398(a1, a1[29], a1[30], *(a4 + 216), v19, v20, v21, v22, v10);
  v30 = a1;
  v31 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (*(a4 + 48) != a1[43])
    {
      v58 = MTLReportFailureTypeEnabled();
      v30 = a1;
      if (v58)
      {
        MTLReportFailure();
        v30 = a1;
      }
    }

    if (*(a4 + 112) != v30[43])
    {
      v59 = v30;
      v60 = MTLReportFailureTypeEnabled();
      v30 = v59;
      if (v60)
      {
        MTLReportFailure();
        v30 = v59;
      }
    }

    if (v30[41] > *(a4 + 24))
    {
      v61 = v30;
      v62 = MTLReportFailureTypeEnabled();
      v30 = v61;
      if (v62)
      {
        v71 = v61[41];
        v72 = *(a4 + 24);
        MTLReportFailure();
        v30 = v61;
      }
    }

    if (*(a4 + 192) + v30[42] / (v30[52] * v30[52]) > *(a4 + 88))
    {
      v63 = v30;
      v64 = MTLReportFailureTypeEnabled();
      v30 = v63;
      if (v64)
      {
        v72 = *(a4 + 88);
        v73 = *(a4 + 192);
        v71 = v63[42];
        MTLReportFailure();
        v30 = v63;
      }
    }

    if (*(v30 + 392) == 1)
    {
      if (*(a4 + 144) != 1)
      {
        v65 = v30;
        v66 = MTLReportFailureTypeEnabled();
        v30 = v65;
        if (v66)
        {
          MTLReportFailure();
          v30 = v65;
        }
      }

      if (*(a4 + 152) != 1)
      {
        v67 = v30;
        v68 = MTLReportFailureTypeEnabled();
        v30 = v67;
        if (v68)
        {
          MTLReportFailure();
          v30 = v67;
        }
      }
    }

    if (*(v30 + 108) == 268435488 && v30[57] != 1)
    {
      v69 = v30;
      v70 = MTLReportFailureTypeEnabled();
      v30 = v69;
      if (v70)
      {
        MTLReportFailure();
        v30 = v69;
      }
    }
  }

  v32 = *(a4 + 48);
  v33 = v30[60];
  v34 = *(v30 + *MEMORY[0x277CD7370]);
  v35 = *(v34 + 32);
  v36 = v30[26];
  v86[0] = v30[25];
  v86[1] = v36;
  v37 = v30[28];
  v38 = v30[41];
  v39 = v30[42];
  v86[2] = v30[27];
  v86[3] = v37;
  v40 = v30[46];
  v86[4] = v38;
  v86[5] = v39;
  v41 = v30[47];
  v89 = v40;
  v90 = v41;
  v91 = v30[56];
  v92 = *(v30 + 102);
  v42 = v30[50];
  v43 = v30[52];
  v44 = *(a4 + 112);
  v86[6] = v30[44];
  v86[7] = v43;
  v45 = v30[30];
  v86[8] = v30[29];
  v86[9] = v45;
  v93 = v42;
  v94 = v34;
  v95 = *(v30 + *v31);
  v46 = v30[53];
  v47 = v30[57];
  v96 = *(v30 + 392);
  v97 = v46;
  v98 = v47;
  v48 = *(v30 + 108);
  if (v48 == 268435488 && (*(v30 + 394) & 1) != 0)
  {
    v48 = 268435472;
  }

  v104 = v48;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = objc_msgSend_maxBatchSize(v30, v23, v24, v25, v26, v27, v28, v29, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
  v103 = 0;
  if (v33)
  {
    objc_msgSend_neuronInfo(v33, v49, v50, v51, v52, v53, v54, v55);
  }

  else
  {
    v84 = 0uLL;
    v85 = 0;
  }

  v87 = v84;
  v88 = v85;
  v56 = *v35;
  if (v32 | v44)
  {
    return (*(v56 + 16))(v35, v86, a2, a3, a4);
  }

  else
  {
    return (*(v56 + 48))(v35, v86, a2, a3, a4);
  }
}

uint64_t sub_239D62398(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    if (*(result + *MEMORY[0x277CD7380]))
    {
      return vfprintf(*MEMORY[0x277D85DF8], "srcWidth %lu srcHeight %lu inputChannels %lu destWidth %lu destHeight %lu outputChannels %lu kernelWidth %lu kernelHeight %lu strideX %lu strideY %lu group %lu dilationX %lu dilationY %lu channelMultiplier %lu batchSize %lu\n", &a9);
    }
  }

  return result;
}

uint64_t sub_239D62404(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), a2, 0, a4, a5, a6, a7, a8);
  v18 = objc_msgSend_width(v10, v11, v12, v13, v14, v15, v16, v17);
  v25 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v19, 0, v20, v21, v22, v23, v24);
  v33 = objc_msgSend_height(v25, v26, v27, v28, v29, v30, v31, v32);
  v85 = a1[28];
  v86 = a1[44];
  v83 = a1[26];
  v84 = a1[27];
  v81 = a1[42];
  v82 = a1[25];
  v79 = *(a4 + 160);
  v80 = *(a4 + 168);
  v77 = v33;
  v78 = a1[41];
  sub_239D62398(a1, a1[29], a1[30], *a4, v34, v35, v36, v37, v18);
  v45 = a1;
  v46 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (*(a4 + 208) + a1[42] / (a1[52] * a1[52]) > *(a4 + 64))
    {
      v69 = MTLReportFailureTypeEnabled();
      v45 = a1;
      if (v69)
      {
        v77 = *(a4 + 64);
        v78 = v77;
        v76 = a1[42];
        MTLReportFailure();
        v45 = a1;
      }
    }

    if (*(v45 + 392) == 1)
    {
      if (*(a4 + 160) != 1)
      {
        v70 = v45;
        v71 = MTLReportFailureTypeEnabled();
        v45 = v70;
        if (v71)
        {
          MTLReportFailure();
          v45 = v70;
        }
      }

      if (*(a4 + 168) != 1)
      {
        v72 = v45;
        v73 = MTLReportFailureTypeEnabled();
        v45 = v72;
        if (v73)
        {
          MTLReportFailure();
          v45 = v72;
        }
      }
    }

    if (*(v45 + 108) == 268435488 && v45[57] != 1)
    {
      v74 = v45;
      v75 = MTLReportFailureTypeEnabled();
      v45 = v74;
      if (v75)
      {
        MTLReportFailure();
        v45 = v74;
      }
    }
  }

  v47 = v45[60];
  v48 = *(v45 + *MEMORY[0x277CD7370]);
  v49 = *(v48 + 32);
  v50 = v45[26];
  v91[0] = v45[25];
  v91[1] = v50;
  v51 = v45[28];
  v91[2] = v45[27];
  v91[3] = v51;
  v52 = v45[42];
  v91[4] = v45[41];
  v91[5] = v52;
  v53 = v45[47];
  v94 = v45[46];
  v95 = v53;
  v96 = v45[56];
  v54 = v45[50];
  v55 = v45[44];
  v56 = v45[52];
  v97 = *(v45 + 102);
  v91[6] = v55;
  v91[7] = v56;
  v57 = v45[30];
  v91[8] = v45[29];
  v91[9] = v57;
  v98 = v54;
  v99 = v48;
  v100 = *(v45 + *v46);
  v58 = v45[53];
  v59 = v45[57];
  v101 = *(v45 + 392);
  v102 = v58;
  v103 = v59;
  v60 = *(v45 + 108);
  if (v60 == 268435488 && (*(v45 + 394) & 1) != 0)
  {
    v60 = 268435472;
  }

  v109 = v60;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = objc_msgSend_maxBatchSize(v45, v38, v39, v40, v41, v42, v43, v44, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v108 = 0;
  if (v47)
  {
    objc_msgSend_neuronInfo(v47, v61, v62, v63, v64, v65, v66, v67);
  }

  else
  {
    v89 = 0uLL;
    v90 = 0;
  }

  v92 = v89;
  v93 = v90;
  return (*(*v49 + 24))(v49, v91, a2, a3, a4);
}

uint64_t sub_239D64968(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 328);
  v11 = *(a1 + 336);
  v12 = *(a1 + 340);
  v13 = *(a1 + 344);
  v14 = MEMORY[0x277CD7378];
  v15 = *(a1 + *MEMORY[0x277CD7378]);
  v16 = MEMORY[0x277CD7350];
  v17 = vmovn_s64(*(a4 + 168));
  v251 = v17.i16[2];
  v250 = v17.i16[0];
  v18 = vmovn_s64(*(a4 + 120));
  v253 = v18.i16[2];
  v19 = v18.i16[0];
  v20 = vmovn_s64(*(a4 + 144));
  v252 = v19;
  v255 = v20.u16[2];
  v254 = v20.i16[0];
  v21 = *(a4 + 184);
  v256 = v21;
  v22 = *(a4 + 136);
  v257 = v22;
  v258 = *(a4 + 24);
  *&v249[1] = -v12;
  if (v10)
  {
    v11 = v11 / v10;
  }

  *v249 = v11;
  v249[2] = v13;
  v259 = v10;
  if ((v15 & 1) == 0)
  {
    v23 = v21;
    v24 = v22;
    objc_msgSend_numberOfImages(*a4, a2, a3, a4, a5, a6, a7, a8);
    v25 = *(a4 + 160) + v23;
    if (v25 > objc_msgSend_numberOfImages(*a4, v26, v27, v28, v29, v30, v31, v32) && MTLReportFailureTypeEnabled())
    {
      v240 = objc_opt_class();
      v242 = NSStringFromClass(v240);
      MTLReportFailure();
    }

    objc_msgSend_numberOfImages(*(a4 + 64), v33, v34, v35, v36, v37, v38, v39, v242);
    v40 = *(a4 + 160) + v24;
    if (v40 > objc_msgSend_numberOfImages(*(a4 + 64), v41, v42, v43, v44, v45, v46, v47) && MTLReportFailureTypeEnabled())
    {
      v241 = objc_opt_class();
      v242 = NSStringFromClass(v241);
      MTLReportFailure();
    }
  }

  if (*(a4 + 112) != 1 || (v48 = *(a4 + 24), v48 < 5))
  {
    v90 = *(a4 + 192);
    v91 = *(a4 + 40);
    if (*(a4 + 32) != *(a4 + 96) || v90)
    {
      v98 = (v90 + 3) >> 2;
      v99 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*(a4 + 40), a2, **(a4 + 8) & 0x3FFLL, 2, 0, 1, 0, 1, v242);
      v101 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*(a4 + 104), v100, **(a4 + 72) & 0x3FFLL, 2, 0, 1, v98, 1);
      v246 = v101;
      if ((objc_msgSend_retainedReferences(a3, v102, v103, v104, v105, v106, v107, v108) & 1) == 0)
      {
        v109 = v99;
        v110 = v101;
        v248[0] = MEMORY[0x277D85DD0];
        v248[1] = 3221225472;
        v248[2] = sub_239D668A8;
        v248[3] = &unk_278B2F6B0;
        v248[4] = v101;
        v248[5] = v99;
        objc_msgSend_addCompletedHandler_(a3, v111, v248, v112, v113, v114, v115, v116);
      }

      v95 = *(a4 + 24);
      v96 = (v95 + 3) >> 2;
      v245 = v99;
      if (v10 >= 0xA)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v92 = *(a4 + 104);
      v93 = v91;
      v246 = v92;
      v94 = v92;
      v95 = *(a4 + 24);
      v96 = (v95 + 3) >> 2;
      v245 = v91;
      if (v10 >= 0xA)
      {
LABEL_24:
        if ((v95 - 1) > 0x7F || 0x20 % v96)
        {
          v97 = 0;
          v243 = 0;
        }

        else
        {
          v97 = 1;
          v243 = 1;
        }

        goto LABEL_31;
      }
    }

    v243 = 0;
    v97 = 1;
LABEL_31:
    v117 = 1;
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a2, v119, ComputeState, v120, v121, v122, v123, v124);
    v132 = objc_msgSend_threadExecutionWidth(ComputeState, v125, v126, v127, v128, v129, v130, v131);
    if (v132 <= 1)
    {
      v140 = 1;
    }

    else
    {
      v140 = v132;
    }

    v141 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v133, v134, v135, v136, v137, v138, v139, v242);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setTexture_atIndex_(a2, v142, v245, 0, v143, v144, v145, v146);
    objc_msgSend_setTexture_atIndex_(a2, v147, v246, 1, v148, v149, v150, v151);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v153, Sampler, 0, v154, v155, v156, v157);
    v163 = v140 - 1;
    v164 = *(a4 + 152);
    v165 = *(a4 + 160);
    v166 = v141 / v140;
    if (v97)
    {
      v250 *= v96;
      v252 *= v96;
      v167 = v254 * v96;
      v254 *= v96;
      if (v243)
      {
        if (v166 >= 2)
        {
          v117 = 2;
        }

        else
        {
          v117 = v141 / v140;
        }

        v166 = v140 / v96;
        v168 = (v163 + v167) / v140;
        v169 = (v117 * (32 * v140 + 64));
        v140 = v96;
        v170 = (2 * v117 + v164 - 1) / (2 * v117);
      }

      else
      {
        if (v140 >> 2 <= 1)
        {
          v178 = 1;
        }

        else
        {
          v178 = v140 >> 2;
        }

        v179 = MPSIsTextureTwiddled();
        v169 = 0;
        if (v179)
        {
          v166 = 8;
        }

        else
        {
          v166 = 1;
        }

        if (v179)
        {
          v140 = v178;
        }

        else
        {
          v140 *= 4;
        }

        v170 = (2 * v166 + v255 - 1) / (2 * v166);
        v168 = (v140 + v254 - 1) / v140;
        v165 = *(a4 + 160);
        v180 = 1.0 / v96;
        v260 = v180;
        v117 = 1;
      }

      v172 = v245;
      v171 = a2;
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v158, v169, 0, v159, v160, v161, v162);
      objc_msgSend_setBytes_length_atIndex_(a2, v181, v249, 48, 0, v182, v183, v184);
    }

    else
    {
      v168 = (*(a4 + 144) + v163) / v140;
      v170 = (v164 + v166 - 1) / v166;
      v171 = a2;
      v172 = v245;
      objc_msgSend_setBytes_length_atIndex_(a2, v158, v249, 48, 0, v160, v161, v162);
    }

    v268 = v168;
    v269 = v170;
    v270 = v165;
    v265 = v140;
    v266 = v166;
    v267 = v117;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v171, v173, &v268, &v265, v174, v175, v176, v177);

    return 0;
  }

  v49 = *(a1 + 328);
  v50 = *(a1 + *v16);
  v51 = *(a1 + *v14);
  v52 = v48 + 3;
  v53 = (v48 + 3) >> 2;
  v262 = v53;
  v54 = *(a4 + 88);
  v55 = (v54 + 3) >> 2;
  v263 = v55;
  v56 = *(a4 + 192);
  if (v56 >= v54)
  {
    return 0;
  }

  if (v56 + v48 > v54)
  {
    if ((v51 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v57 = objc_opt_class();
      v242 = NSStringFromClass(v57);
      MTLReportFailure();
    }

    v56 = *(a4 + 192);
    v58 = *(a4 + 88) - v56;
    if (!v58)
    {
      return 0;
    }

    v53 = (v58 + 3) >> 2;
  }

  v264 = v53;
  v59 = 1.0 / v53;
  v261 = v59;
  v256 = *(a4 + 184) * (v52 >> 2);
  v257 = *(a4 + 136) * v55 + ((v56 + 3) >> 2);
  if (v49 < 0xA)
  {
    if ((v53 & 3) != 0)
    {
      if (v53)
      {
        v186 = 1;
      }

      else
      {
        v186 = 2;
      }
    }

    else
    {
      v186 = 4;
    }

    v187 = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a2, v188, v187, v189, v190, v191, v192, v193);
    v201 = objc_msgSend_threadExecutionWidth(v187, v194, v195, v196, v197, v198, v199, v200);
    if (v201 <= 1)
    {
      v209 = 1;
    }

    else
    {
      v209 = v201;
    }

    v210 = objc_msgSend_maxTotalThreadsPerThreadgroup(v187, v202, v203, v204, v205, v206, v207, v208, v242);
    MPSLibrary::ReleaseComputeState();
    v211 = 2;
    if ((*(v50 + 1472) - 5) >= 2)
    {
      v89 = 8;
    }

    else
    {
      v211 = 3;
      v89 = 32;
    }

    v212 = v209 >> v211;
    v213 = 3;
    if ((*(v50 + 1472) - 5) < 2)
    {
      v213 = 5;
    }

    if (v212 <= 1)
    {
      v88 = 1;
    }

    else
    {
      v88 = v212;
    }

    v214 = v53;
    v215 = v53 / v186;
    v216 = v88 << v213;
    while (v216 * v215 > v210)
    {
      if (v89 >= 2)
      {
        v89 >>= 1;
        v216 = v89 * v88;
      }

      else if (v88 < 2)
      {
        if (v215 < 2)
        {
          v88 = 1;
          break;
        }

        v215 >>= 1;
        v88 = 1;
        v216 = v89;
      }

      else
      {
        v88 >>= 1;
        v216 = v89 * v88;
      }
    }

    v217 = (v88 + *(a4 + 144) - 1) / v88;
    v219 = (v89 + *(a4 + 152) - 1) / v89;
    v218 = (v215 + *(a4 + 160) * v214 / v186 - 1) / v215;
  }

  else
  {
    v60 = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a2, v61, v60, v62, v63, v64, v65, v66);
    v74 = objc_msgSend_threadExecutionWidth(v60, v67, v68, v69, v70, v71, v72, v73);
    v82 = objc_msgSend_maxTotalThreadsPerThreadgroup(v60, v75, v76, v77, v78, v79, v80, v81);
    MPSLibrary::ReleaseComputeState();
    if (v74 >> 2 <= 1)
    {
      v88 = 1;
    }

    else
    {
      v88 = v74 >> 2;
    }

    v89 = 8;
    if (v82 < 8 * v88)
    {
      while (1)
      {
        while (v89 >= 2)
        {
          v89 >>= 1;
          if (v89 * v88 <= v82)
          {
            goto LABEL_85;
          }
        }

        if (v88 < 2)
        {
          break;
        }

        v88 >>= 1;
        if (v89 * v88 <= v82)
        {
          goto LABEL_85;
        }
      }

      v88 = 1;
    }

LABEL_85:
    v217 = (v88 + *(a4 + 144) - 1) / v88;
    v218 = *(a4 + 160);
    v215 = 1;
    v219 = (v89 + *(a4 + 152) - 1) / v89;
  }

  objc_msgSend_setTexture_atIndex_(a2, v83, *(a4 + 40), 0, v84, v85, v86, v87, v242);
  objc_msgSend_setTexture_atIndex_(a2, v220, *(a4 + 104), 1, v221, v222, v223, v224);
  v225 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v226, v225, 0, v227, v228, v229, v230);
  objc_msgSend_setBytes_length_atIndex_(a2, v231, v249, 48, 0, v232, v233, v234);
  v268 = v217;
  v269 = v219;
  v270 = v218;
  v265 = v88;
  v266 = v89;
  v267 = v215;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v235, &v268, &v265, v236, v237, v238, v239);
  return 0;
}

uint64_t sub_239D65910(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 200);
  v10 = *(a1 + 208);
  v11 = *(a1 + 328);
  v12 = *(a1 + 332);
  v13 = *(a1 + 336);
  v14 = *(a1 + *MEMORY[0x277CD7378]);
  v15 = *(a1 + *MEMORY[0x277CD7370]);
  v16 = *(a1 + *MEMORY[0x277CD7350]);
  if ((v14 & 1) == 0)
  {
    v17 = a1;
    v18 = a2;
    v19 = a3;
    objc_msgSend_numberOfImages(*a4, a2, a3, a4, a5, a6, a7, a8);
    v20 = *(a4 + 160) + *(a4 + 184);
    if (v20 > objc_msgSend_numberOfImages(*a4, v21, v22, v23, v24, v25, v26, v27) && MTLReportFailureTypeEnabled())
    {
      v45 = objc_opt_class();
      v49 = NSStringFromClass(v45);
      MTLReportFailure();
    }

    objc_msgSend_numberOfImages(*(a4 + 64), v28, v29, v30, v31, v32, v33, v34, v49);
    v35 = *(a4 + 160) + *(a4 + 136);
    v43 = v35 > objc_msgSend_numberOfImages(*(a4 + 64), v36, v37, v38, v39, v40, v41, v42);
    a3 = v19;
    a2 = v18;
    a1 = v17;
    if (v43)
    {
      v46 = MTLReportFailureTypeEnabled();
      a2 = v18;
      a3 = v19;
      v47 = v46;
      a1 = v17;
      if (v47)
      {
        v48 = objc_opt_class();
        NSStringFromClass(v48);
        MTLReportFailure();
        a1 = v17;
        a2 = v18;
        a3 = v19;
      }
    }
  }

  sub_239D668E4(v11, v12, v13, 0.0, 0.0, 0.0, a1, a2, a3, a4, v9, v10, v15, v16, v14, *(a1 + 272), 0);
  return 0;
}

uint64_t sub_239D66044(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 200);
  v10 = *(a1 + 208);
  v11 = *(a1 + 328);
  v12 = *(a1 + 332);
  v13 = *(a1 + 336);
  v14 = *(a1 + 340);
  v15 = *(a1 + 344);
  v16 = *(a1 + 348);
  v17 = *(a1 + *MEMORY[0x277CD7378]);
  v18 = *(a1 + *MEMORY[0x277CD7370]);
  v19 = *(a1 + *MEMORY[0x277CD7350]);
  if ((v17 & 1) == 0)
  {
    v20 = a1;
    v21 = a2;
    v22 = a3;
    objc_msgSend_numberOfImages(*a4, a2, a3, a4, a5, a6, a7, a8);
    v23 = *(a4 + 160) + *(a4 + 184);
    if (v23 > objc_msgSend_numberOfImages(*a4, v24, v25, v26, v27, v28, v29, v30) && MTLReportFailureTypeEnabled())
    {
      v48 = objc_opt_class();
      v52 = NSStringFromClass(v48);
      MTLReportFailure();
    }

    objc_msgSend_numberOfImages(*(a4 + 64), v31, v32, v33, v34, v35, v36, v37, v52);
    v38 = *(a4 + 160) + *(a4 + 136);
    v46 = v38 > objc_msgSend_numberOfImages(*(a4 + 64), v39, v40, v41, v42, v43, v44, v45);
    a3 = v22;
    a2 = v21;
    a1 = v20;
    if (v46)
    {
      v49 = MTLReportFailureTypeEnabled();
      a2 = v21;
      a3 = v22;
      v50 = v49;
      a1 = v20;
      if (v50)
      {
        v51 = objc_opt_class();
        NSStringFromClass(v51);
        MTLReportFailure();
        a1 = v20;
        a2 = v21;
        a3 = v22;
      }
    }
  }

  sub_239D668E4(v11, v12, v13, v14, v15, v16, a1, a2, a3, a4, v9, v10, v18, v19, v17, *(a1 + 272), 1);
  return 0;
}

void sub_239D668A8(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_239D668E4(float a1, float a2, float a3, float a4, float a5, float a6, uint64_t a7, char *a8, void *a9, uint64_t *a10, unint64_t a11, unint64_t a12, uint64_t a13, MPSDevice *a14, char a15, uint64_t a16, char a17)
{
  v27 = a10[5];
  v28 = a10[12];
  v29 = a10[3];
  if (a10[4] == v28)
  {
    v30 = a10[13];
    v31 = v27;
    v32 = v30;
  }

  else
  {
    v33 = (a10[24] + 3) >> 2;
    v28 = 2;
    v27 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(a10[5], a8, *a10[1] & 0x3FFLL, 2, 0, 1, 0, 1);
    v30 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(a10[13], v34, *a10[9] & 0x3FFLL, 2, 0, 1, v33, 1);
    if ((objc_msgSend_retainedReferences(a9, v35, v36, v37, v38, v39, v40, v41) & 1) == 0)
    {
      v42 = v27;
      v43 = v30;
      v356[0] = MEMORY[0x277D85DD0];
      v356[1] = 3221225472;
      v356[2] = sub_239D67A0C;
      v356[3] = &unk_278B2F6B0;
      v356[4] = v30;
      v356[5] = v27;
      objc_msgSend_addCompletedHandler_(a9, v44, v356, v45, v46, v47, v48, v49);
      v28 = 2;
    }
  }

  v50 = a10[6];
  if (v50 == 1)
  {
    v333 = (a10[3] + 3) >> 2;
    v29 = 4;
  }

  else
  {
    v333 = 1;
  }

  v357 = vcvt_f32_f64(vcvtq_f64_s64(*(a10 + 21)));
  v51 = vmovn_s64(*(a10 + 15));
  HIWORD(v360) = v51.i16[2];
  LOWORD(v360) = v51.i16[0];
  v52 = vmovn_s64(*(a10 + 9));
  v327 = v29 + 3;
  v362 = v52.u16[2];
  v361 = v52.i16[0];
  v338 = (v29 + 3) >> 2;
  v367 = v338;
  v369 = a1;
  v370 = -a2;
  v373 = a6;
  v374 = a5;
  v372 = a4;
  if (a12 * a11)
  {
    v369 = a1 / (a12 * a11);
  }

  v371 = a3;
  v328 = MPSIsTextureTwiddled();
  v54 = a11 < 9 && a12 == 8;
  v335 = v27;
  v336 = v30;
  v330 = v50;
  v331 = a9;
  if (a17)
  {
    if (v54)
    {
      v332 = 0;
      v55 = 185;
      goto LABEL_28;
    }

    if (a11 == 8 && a12 < 9)
    {
      v55 = 187;
LABEL_27:
      v332 = 1;
      goto LABEL_28;
    }

    if (a11 <= 8 && a12 == 7)
    {
      if (a11 == 1)
      {
        v332 = 0;
        v55 = 173;
      }

      else if (a11 == 7)
      {
        v87 = v328;
        if (v29 > 0x20)
        {
          v87 = 1;
        }

        v332 = v87;
        if (v87)
        {
          v55 = 177;
        }

        else
        {
          v55 = 175;
        }
      }

      else
      {
        v332 = 0;
        v55 = 179;
      }

      goto LABEL_28;
    }

    if (a11 <= 8 && a12 == 6)
    {
      v332 = 0;
      v55 = 169;
      goto LABEL_28;
    }

    if (a11 <= 8 && a12 == 5)
    {
      v291 = v328;
      if (a11 == 1)
      {
        v332 = 0;
        v55 = 157;
      }

      else if (a11 == 5)
      {
        if (v29 > 0x20)
        {
          v291 = 1;
        }

        v332 = v291;
        if (v291)
        {
          v55 = 161;
        }

        else
        {
          v55 = 159;
        }
      }

      else
      {
        v332 = 0;
        v55 = 163;
      }

      goto LABEL_28;
    }

    if (a11 <= 8 && a12 == 4)
    {
      v332 = 0;
      v55 = 153;
      goto LABEL_28;
    }

    if (a11 <= 8 && a12 == 3)
    {
      v321 = v328;
      if (a11 == 1)
      {
        v332 = 0;
        v55 = 141;
        goto LABEL_28;
      }

      if (a11 != 3)
      {
        v332 = 0;
        v55 = 147;
        goto LABEL_28;
      }

      v322 = v328 == 0;
      v55 = 143;
      v323 = 145;
LABEL_224:
      if (!v322)
      {
        v55 = v323;
      }

      v332 = v321;
      goto LABEL_28;
    }

    if (a11 <= 8 && a12 == 2)
    {
      v332 = 0;
      v55 = 137;
    }

    else if (a11 <= 8 && a12 == 1)
    {
      v332 = 0;
      if (a11 == 1)
      {
        v55 = 131;
      }

      else
      {
        v55 = 133;
      }
    }

    else
    {
      v324 = v328;
      if (v29 > 8)
      {
        v324 = 1;
      }

      v332 = v324;
      if (v324)
      {
        v55 = 197;
      }

      else
      {
        v55 = 199;
      }
    }
  }

  else
  {
    if (v54)
    {
      v332 = 0;
      v55 = 111;
      goto LABEL_28;
    }

    if (a11 == 8 && a12 < 9)
    {
      v55 = 113;
      goto LABEL_27;
    }

    if (a11 <= 8 && a12 == 7)
    {
      if (a11 == 1)
      {
        v332 = 0;
        v55 = 99;
      }

      else if (a11 == 7)
      {
        v88 = v328;
        if (v29 > 0x20)
        {
          v88 = 1;
        }

        v332 = v88;
        if (v88)
        {
          v55 = 103;
        }

        else
        {
          v55 = 101;
        }
      }

      else
      {
        v332 = 0;
        v55 = 105;
      }
    }

    else
    {
      if (a11 <= 8 && a12 == 6)
      {
        v332 = 0;
        v55 = 95;
        goto LABEL_28;
      }

      if (a11 <= 8 && a12 == 5)
      {
        v292 = v328;
        if (a11 == 1)
        {
          v332 = 0;
          v55 = 83;
        }

        else if (a11 == 5)
        {
          if (v29 > 0x20)
          {
            v292 = 1;
          }

          v332 = v292;
          if (v292)
          {
            v55 = 87;
          }

          else
          {
            v55 = 85;
          }
        }

        else
        {
          v332 = 0;
          v55 = 89;
        }
      }

      else
      {
        if (a11 <= 8 && a12 == 4)
        {
          v332 = 0;
          v55 = 79;
          goto LABEL_28;
        }

        if (a11 <= 8 && a12 == 3)
        {
          v321 = v328;
          if (a11 == 1)
          {
            v332 = 0;
            v55 = 67;
            goto LABEL_28;
          }

          if (a11 != 3)
          {
            v332 = 0;
            v55 = 73;
            goto LABEL_28;
          }

          v322 = v328 == 0;
          v55 = 69;
          v323 = 71;
          goto LABEL_224;
        }

        if (a11 <= 8 && a12 == 2)
        {
          v332 = 0;
          v55 = 63;
        }

        else
        {
          if (a11 <= 8 && a12 == 1)
          {
            v332 = 0;
            if (a11 == 1)
            {
              v55 = 57;
            }

            else
            {
              v55 = 59;
            }

            goto LABEL_28;
          }

          if (a11 == 1 && a12 < 9)
          {
            v55 = 61;
            goto LABEL_27;
          }

          v325 = v328;
          if (v29 > 8)
          {
            v325 = 1;
          }

          v332 = v325;
          if (v325)
          {
            v55 = 123;
          }

          else
          {
            v55 = 125;
          }
        }
      }
    }
  }

LABEL_28:
  v329 = v28;
  if (v28 == 3)
  {
    v56 = v55 + 1;
  }

  else
  {
    v56 = v55;
  }

  LOWORD(v57) = 1;
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(a8, v59, ComputeState, v60, v61, v62, v63, v64);
  v72 = objc_msgSend_threadExecutionWidth(ComputeState, v65, v66, v67, v68, v69, v70, v71);
  v73 = v72;
  if (v72 <= 1)
  {
    v74 = 1;
  }

  else
  {
    v74 = v72;
  }

  MPSLibrary::ReleaseComputeState();
  v80 = a10[24];
  if (a10[14] == 1)
  {
    v81 = a10[11];
    if (v80 >= v81)
    {
      return;
    }

    v82 = a10[3];
    if (v82 + v80 <= v81)
    {
      v84 = a10[3];
    }

    else
    {
      if ((a15 & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        v83 = objc_opt_class();
        v326 = NSStringFromClass(v83);
        MTLReportFailure();
      }

      v81 = a10[11];
      v80 = a10[24];
      v84 = v81 - v80;
      if (v81 == v80)
      {
        return;
      }

      v82 = a10[3];
    }

    v85 = (v84 + 3) >> 2;
    v86 = (v82 + 3) >> 2;
    v57 = (v81 + 3) >> 2;
  }

  else
  {
    LODWORD(v85) = v333;
    LOWORD(v86) = 1;
  }

  v376 = v86;
  v377 = v57;
  v378 = v85;
  v89 = 1.0 / v85;
  v375 = v89;
  v363 = v86 * *(a10 + 92);
  v364 = *(a10 + 68) * v57 + ((v80 + 3) >> 2);
  if (v74 >= a12 && v73 >= 0x20 && v74 >= a11)
  {
    v91 = (v56 - 123) < 4 || (v56 - 197) < 4;
    objc_msgSend_setTexture_atIndex_(a8, v75, v27, 0, v76, v77, v78, v79, v326);
    objc_msgSend_setTexture_atIndex_(a8, v92, v336, 1, v93, v94, v95, v96);
    v97 = 6;
    if (v91)
    {
      v97 = 7;
    }

    v98 = ((v362 / a12) >> v97) + 1;
    v99 = v333 * v361;
    v102 = a11 > 2 && a12 > 2 && v99 > 100;
    v103 = v98 << v102;
    v104 = a12 == 1 || a11 == 1;
    v105 = v103 >> 1;
    if (!v104)
    {
      v105 = 0;
    }

    v106 = v103 - v105 - ((v103 - v105) >> 1);
    if (v330 == 1 && a12 > 1)
    {
      v106 = 1;
    }

    if (v106 * a12)
    {
      v108 = (v362 + v106 * a12 - 1) / (v106 * a12);
      if (!v332)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v108 = 0;
      if (!v332)
      {
LABEL_192:
        v368 = v108;
        v365 = a11;
        v366 = a12;
        v379 = v106;
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a8, v296, Sampler, 0, v297, v298, v299, v300);
        objc_msgSend_setBytes_length_atIndex_(a8, v301, &v357, 72, 0, v302, v303, v304);
        if (v91)
        {
          v310 = 2 * v74;
        }

        else
        {
          v310 = v74;
        }

        v311 = v310 + (a11 >> 1);
        v312 = (v310 - a11 + v361) / (v310 - a11 + 1);
        v313 = v74;
        if (a11 == 3 && a12 == 3)
        {
          v311 = 0;
          v313 = 2 * v74;
          v312 = (2 * v74 + v361 - 1) / (2 * v74);
        }

        if (v332)
        {
          v312 = (v310 - a12 + v362) / (v310 - a12 + 1);
          v311 = v310 + (a12 >> 1);
          v313 = v74;
        }

        v314 = v108 * v333 * a10[20];
        v315 = 4;
        if (a17)
        {
          v315 = 5;
        }

        objc_msgSend_setThreadgroupMemoryLength_atIndex_(a8, v305, (v311 << v315) & 0xFFFFFFF0, 0, v306, v307, v308, v309);
        v353 = v338;
        v354 = v312;
        v355 = v314;
        *v352 = v313;
        *&v352[8] = vdupq_n_s64(1uLL);
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a8, v316, &v353, v352, v317, v318, v319, v320);

        return;
      }
    }

    if (!v328 || a11 == 3 && a12 == 3 && v327 > 0xB)
    {
      v286 = (v361 >> 7) - 1;
      if (v361 <= 0x7Fu)
      {
        v286 = 1;
      }

      v287 = v286 << (v338 * v333 == 1);
      if (v327 < 0xC)
      {
        v288 = 1;
      }

      else
      {
        v288 = v328;
      }

      if (v288 != 1)
      {
        goto LABEL_178;
      }

      if (!v328)
      {
        goto LABEL_179;
      }

LABEL_176:
      if (v362 > 0x12Bu || v361 > 0x12Bu)
      {
LABEL_179:
        if ((*(a14 + 368) - 5) > 1)
        {
          if (v287 <= 1)
          {
            v106 = 1;
          }

          else
          {
            v106 = v287;
          }

          v294 = v106 * a11;
          if (v106 * a11)
          {
LABEL_186:
            v108 = (v361 + v294 - 1) / v294;
            goto LABEL_192;
          }
        }

        else
        {
          v293 = 2 * v287;
          if (v85 >= 32)
          {
            v293 += v287 & 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v293 <= 1)
          {
            v106 = 1;
          }

          else
          {
            v106 = v293;
          }

          v294 = v106 * a11;
          if (v106 * a11)
          {
            goto LABEL_186;
          }
        }

        v108 = 0;
        goto LABEL_192;
      }

LABEL_178:
      v287 -= v287 >> 1;
      goto LABEL_179;
    }

    v290 = v99 > 0x64 && v327 > 7;
    v287 = (v361 / ((a11 + 3) >> 2)) >> 5 << v290;
    if (a11 <= 4)
    {
      if (v361 > 0x12Bu || v327 <= 0x13)
      {
        goto LABEL_176;
      }
    }

    else if (v327 < 0x14)
    {
      if (v361 >= 0x12Du && v333 >= 4)
      {
        v287 += v287 >> 2;
        goto LABEL_179;
      }

      goto LABEL_176;
    }

    v287 -= v287 >> 1;
    goto LABEL_176;
  }

  v353 = 0;
  v354 = 0;
  v355 = 0;
  v109 = *a10;
  v353 = *(*a10 + *MEMORY[0x277CD7330]);
  v354 = *(v109 + *MEMORY[0x277CD7308]);
  v355 = 1;
  MPSSeparatePassDimensions();
  MEMORY[0x23EE7D040](v346, v331, v336);
  if (*(a10[9] + 4) > 0xAuLL || (a15 & 2) == 0)
  {
    v111 = MTLPixelFormatRGBA32Float;
  }

  else
  {
    v111 = MTLPixelFormatRGBA16Float;
  }

  PixelInfo = MPSDevice::GetPixelInfo(a14, v111, MPSImageFeatureChannelFormatNone);
  v112 = objc_alloc_init(MEMORY[0x277CD7058]);
  objc_msgSend_setTextureType_(v112, v113, v329, v114, v115, v116, v117, v118, v348, v347);
  objc_msgSend_setPixelFormat_(v112, v119, v111, v120, v121, v122, v123, v124);
  objc_msgSend_setWidth_(v112, v125, *v352 * v338, v126, v127, v128, v129, v130);
  objc_msgSend_setHeight_(v112, v131, *&v352[8], v132, v133, v134, v135, v136);
  objc_msgSend_setArrayLength_(v112, v137, a10[20] * v85, v138, v139, v140, v141, v142);
  v143 = (*(*a14 + 32))(a14);
  objc_msgSend_setStorageMode_(v112, v144, v143, v145, v146, v147, v148, v149);
  objc_msgSend_setUsage_(v112, v150, 3, v151, v152, v153, v154, v155);
  v350 = *&v352[8];
  v351 = *&v352[16];
  v349 = *v352 * v338;
  TempTexture = MPSAutoCache::GetTempTexture();
  if (a17)
  {
    v334 = MPSAutoCache::GetTempTexture();
  }

  else
  {
    v334 = 0;
  }

  v357 = vcvt_f32_f64(vcvtq_f64_s64(v348[0]));
  v360 = 0;
  v164 = vmovn_s64(*v352);
  v362 = v164.u16[2];
  v361 = v164.i16[0];
  v365 = a11;
  v364 = 0;
  if (a10[14] == 1)
  {
    v376 = (*(a10 + 6) + 3) >> 2;
  }

  v377 = v85;
  objc_msgSend_textureType(TempTexture, v157, v158, v159, v160, v161, v162, v163);
  v165 = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(a8, v166, v165, v167, v168, v169, v170, v171);
  v179 = objc_msgSend_threadExecutionWidth(v165, v172, v173, v174, v175, v176, v177, v178);
  if (v179 <= 1)
  {
    v187 = 1;
  }

  else
  {
    v187 = v179;
  }

  v188 = objc_msgSend_maxTotalThreadsPerThreadgroup(v165, v180, v181, v182, v183, v184, v185, v186);
  MPSLibrary::ReleaseComputeState();
  objc_msgSend_setTexture_atIndex_(a8, v189, v335, 0, v190, v191, v192, v193);
  objc_msgSend_setTexture_atIndex_(a8, v194, TempTexture, 1, v195, v196, v197, v198);
  if (a17)
  {
    objc_msgSend_setTexture_atIndex_(a8, v199, v334, 2, v200, v201, v202, v203);
  }

  v204 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a8, v205, v204, 0, v206, v207, v208, v209);
  objc_msgSend_setBytes_length_atIndex_(a8, v210, &v357, 72, 0, v211, v212, v213);
  v219 = v188 / v187 * v187;
  if (v219 > 8 * v187)
  {
    v219 = 4 * v187;
  }

  v220 = a10[20];
  v342 = (*&v352[8] + v219 - 1) / v219;
  v343 = v220;
  v344 = v85;
  v340 = v219;
  v341 = vdupq_n_s64(1uLL);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a8, v214, &v342, &v340, v215, v216, v217, v218);
  v221.f32[0] = v338 * v347[0];
  v221.f32[1] = v347[1];
  v357 = v221;
  v222 = *(a10 + 30) * v338;
  HIWORD(v360) = *(a10 + 64);
  LOWORD(v360) = v222;
  v223 = *(a10 + 36) * v338;
  v362 = *(a10 + 76);
  v361 = v223;
  v366 = a12;
  v364 = *(a10 + 34) * v57 + ((*(a10 + 48) + 3) >> 2);
  v376 = v85;
  if (a10[14] == 1)
  {
    v377 = (*(a10 + 22) + 3) >> 2;
  }

  v224 = *(a10 + 42) * v338;
  v359 = *(a10 + 88);
  v358 = v224;
  v225 = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(a8, v226, v225, v227, v228, v229, v230, v231);
  v239 = objc_msgSend_threadExecutionWidth(v225, v232, v233, v234, v235, v236, v237, v238);
  if (v239 <= 1)
  {
    v247 = 1;
  }

  else
  {
    v247 = v239;
  }

  v248 = objc_msgSend_maxTotalThreadsPerThreadgroup(v225, v240, v241, v242, v243, v244, v245, v246);
  MPSLibrary::ReleaseComputeState();
  objc_msgSend_setTexture_atIndex_(a8, v249, TempTexture, 0, v250, v251, v252, v253);
  objc_msgSend_setTexture_atIndex_(a8, v254, v336, 1, v255, v256, v257, v258);
  objc_msgSend_setTexture_atIndex_(a8, v259, v335, 2, v260, v261, v262, v263);
  if (a17)
  {
    objc_msgSend_setTexture_atIndex_(a8, v264, v334, 3, v265, v266, v267, v268);
  }

  v269 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a8, v270, v269, 0, v271, v272, v273, v274);
  objc_msgSend_setBytes_length_atIndex_(a8, v275, &v357, 72, 0, v276, v277, v278);
  v284 = v248 / v247 * v247;
  if (v284 > 8 * v247)
  {
    v284 = 4 * v247;
  }

  v285 = a10[20];
  v342 = (v284 + a10[18] * v338 - 1) / v284;
  v343 = v285;
  v344 = v85;
  v340 = v284;
  v341 = vdupq_n_s64(1uLL);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a8, v279, &v342, &v340, v280, v281, v282, v283);

  MPSAutoCache::~MPSAutoCache(v346);
}

void sub_239D67A0C(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_239D67C98(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_239BE43B4(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_239D67CAC(int a1, MPSTemporaryMatrix *a2)
{
  if (*(&a2[3].super.super.isa + *MEMORY[0x277CD7388]))
  {
    return MPSDecrementReadCount(a2);
  }

  return result;
}

void sub_239D688F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x3C8], 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_239D68920(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = objc_msgSend_matrices(a2, a2, a3, a4, a5, a6, a7, a8);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 24);
  if (result < v11)
  {
    v11 = result;
  }

  *(v10 + 24) = v11;
  return result;
}

uint64_t sub_239D68D30(uint64_t a1, uint64_t a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v8 = v3;
  v12 = 1;
  v9 = *(a2 + 16);
  if (v9)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v12, 53, 0, v5, v6, v7);
    v9 = *(a2 + 16);
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
  v9 = *(a2 + 16);
  if ((v9 & 4) == 0)
  {
LABEL_4:
    if ((v9 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 53, 3, v5, v6, v7);
    if ((*(a2 + 16) & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 53, 2, v5, v6, v7);
  v9 = *(a2 + 16);
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

__n128 sub_239D68E48(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  result = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v6;
  *(a1 + 160) = v7;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_239D68E94(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(a1[4] + 8) + 8 * a3 + 48) = objc_msgSend_data(a2, a2, a3, a4, a5, a6, a7, a8);
  v11 = a1[6];
  *(*(a1[4] + 8) + 8 * a3 + 256) = *&a2[*MEMORY[0x277CD73A8]] + objc_msgSend_matrixBytes(a2, v12, v13, v14, v15, v16, v17, v18) * v11;
  result = objc_msgSend_rowBytes(a2, v19, v20, v21, v22, v23, v24, v25);
  *(*(a1[5] + 8) + 4 * a3 + 76) = result;
  return result;
}

uint64_t sub_239D68F30(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(a1[4] + 8) + 8 * a3 + 48) = objc_msgSend_data(a2, a2, a3, a4, a5, a6, a7, a8);
  v11 = a1[6];
  *(*(a1[4] + 8) + 8 * a3 + 256) = *&a2[*MEMORY[0x277CD73A8]] + objc_msgSend_matrixBytes(a2, v12, v13, v14, v15, v16, v17, v18) * v11;
  result = objc_msgSend_rowBytes(a2, v19, v20, v21, v22, v23, v24, v25);
  *(*(a1[5] + 8) + 4 * a3 + 76) = result;
  return result;
}

uint64_t sub_239D68FCC(uint64_t a1, uint64_t a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v8 = v3;
  v13 = 1;
  v9 = *(a2 + 64);
  v12 = v9 >> 5;
  if (v9)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v13, 53, 0, v5, v6, v7);
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

  objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v13, 53, 1, v5, v6, v7);
  v9 = *(a2 + 64);
  if ((v9 & 4) == 0)
  {
LABEL_4:
    if ((v9 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v13, 53, 3, v5, v6, v7);
    if ((*(a2 + 64) & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v13, 53, 2, v5, v6, v7);
  v9 = *(a2 + 64);
  if ((v9 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v9 & 0x10) != 0)
  {
LABEL_6:
    objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v13, 53, 4, v5, v6, v7);
  }

LABEL_7:
  objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 41, 5, v5, v6, v7);
  v10 = _MPSNewSpecializedFunction();

  return v10;
}

uint64_t sub_239D69100(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(a1[4] + 8) + 8 * a3 + 48) = objc_msgSend_data(a2, a2, a3, a4, a5, a6, a7, a8);
  v11 = a1[6];
  *(*(a1[4] + 8) + 8 * a3 + 256) = *&a2[*MEMORY[0x277CD73A8]] + objc_msgSend_matrixBytes(a2, v12, v13, v14, v15, v16, v17, v18) * v11;
  result = objc_msgSend_rowBytes(a2, v19, v20, v21, v22, v23, v24, v25);
  *(*(a1[5] + 8) + 4 * a3 + 76) = result;
  return result;
}

uint64_t sub_239D697DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 456);
  v13 = MEMORY[0x277CD7378];
  if ((v12 & 1) == 0)
  {
    result = 0;
    if ((v12 & 2) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (*(a1 + 432) > *(a4 + 24) && MTLReportFailureTypeEnabled())
    {
      v102 = *(a1 + 432);
      v103 = *(a4 + 24);
      MTLReportFailure();
    }

    if (*(a4 + 304) + *(a1 + 440) > *(a4 + 144) && MTLReportFailureTypeEnabled())
    {
      v103 = *(a4 + 144);
      v104 = *(a4 + 304);
      v102 = *(a1 + 440);
      MTLReportFailure();
    }
  }

  v15 = objc_msgSend_PeakAtWeights_(a1, a2, *(a4 + 112), a4, a5, a6, a7, a8, v102, v103, v104);
  v16 = *(a1 + *MEMORY[0x277CD7370]);
  v17 = *(v16 + 32);
  v18 = *(a1 + 424);
  v19 = *(a1 + *v13);
  v126 = *(a1 + 416);
  v127 = v18;
  v20 = *(a1 + 240);
  *(&v121 + 1) = v19;
  v21 = *(a1 + 248);
  v22 = *(a1 + 272);
  v106 = v20;
  v107 = v21;
  v23 = *(a1 + 280);
  v24 = *(a1 + 304);
  v108 = v22;
  v109 = v23;
  v25 = *(a1 + 312);
  v114 = v24;
  v115 = v25;
  v26 = *(a1 + 440);
  v110 = *(a1 + 432);
  v111 = v26;
  LODWORD(v120) = -1;
  v27 = *(a1 + 448);
  LOBYTE(v122) = 0;
  v119 = 0uLL;
  *(&v120 + 1) = 0;
  *&v121 = v16;
  v112 = v27;
  v113 = 1;
  v123 = 0;
  v124 = 1;
  v116 = 0;
  v117 = 0;
  *&v118 = 0;
  *(&v118 + 1) = v15;
  v131 = objc_msgSend_preferredWeightsDataType(*(a1 + 464), v28, v29, v30, v31, v32, v33, v34);
  v125 = 0;
  v128 = objc_msgSend_maxBatchSize(a1, v35, v36, v37, v38, v39, v40, v41);
  v129 = 1;
  v130 = objc_msgSend_weightsLayout(*(a1 + 464), v42, v43, v44, v45, v46, v47, v48);
  result = (*(*v17 + 32))(v17, &v106, a2, a3, a4);
  if ((v12 & 2) != 0)
  {
LABEL_8:
    v105 = result;
    if ((*(a1 + *v13) & 1) == 0)
    {
      if (*(a1 + 432) > *(a4 + 24) && MTLReportFailureTypeEnabled())
      {
        v102 = *(a1 + 432);
        v103 = *(a4 + 24);
        MTLReportFailure();
      }

      if (*(a1 + 440) > *(a4 + 80))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v102 = *(a1 + 440);
          v103 = *(a4 + 80);
          MTLReportFailure();
        }
      }
    }

    v142 = *(a4 + 224);
    v143 = *(a4 + 240);
    v144 = *(a4 + 16);
    v145 = 0u;
    v49 = *(a4 + 40);
    v147 = 0;
    v148 = v49;
    v146 = 0u;
    v50 = objc_msgSend_width(*a4, a2, a3, a4, a5, a6, a7, a8, v102, v103);
    v149 = v50;
    v58 = objc_msgSend_height(*a4, v51, v52, v53, v54, v55, v56, v57);
    v150 = v58;
    v151 = 0;
    v132 = *(a4 + 280);
    v133 = *(a4 + 296);
    v134 = *(a4 + 72);
    v135 = 0u;
    v59 = *(a4 + 96);
    v137 = 0;
    v138 = v59;
    v136 = 0u;
    v139 = objc_msgSend_width(*(a4 + 56), v60, v61, v62, v63, v64, v65, v66);
    v140 = objc_msgSend_height(*(a4 + 56), v67, v68, v69, v70, v71, v72, v73);
    v141 = 0;
    v74 = *(a1 + *MEMORY[0x277CD7370]);
    v75 = *(a4 + 112);
    v76 = *(a1 + 256);
    v77 = *(v74 + 32);
    v78 = *(a1 + 264);
    v79 = *(a1 + 288);
    v106 = *(a1 + 448);
    v107 = v76;
    v80 = *(a1 + 296);
    v81 = *(a1 + 320);
    v108 = v78;
    v109 = v79;
    v110 = v80;
    v111 = v81;
    v82 = *(a1 + 440);
    v112 = *(a1 + 328);
    v113 = v82;
    v85 = a4 + 328;
    v83 = *(a4 + 328);
    v84 = *(v85 + 8);
    v122 = 0;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v86 = *(a1 + 416);
    v87 = *(a1 + 424);
    v114 = *(a1 + 432);
    v115 = v86;
    v116 = v87;
    v117 = 0;
    LOBYTE(v118) = 1;
    *(&v118 + 1) = v74;
    *&v119 = objc_msgSend_maxBatchSize(a1, v88, v89, v90, v91, v92, v93, v94);
    *(&v119 + 1) = v84;
    *&v120 = 1;
    *(&v120 + 1) = v50;
    *&v121 = v58;
    *(&v121 + 1) = v84;
    LODWORD(v122) = objc_msgSend_weightsLayout(*(a1 + 464), v95, v96, v97, v98, v99, v100, v101);
    return (*(*v77 + 176))(v77, &v106, a2, a3, &v142, &v132, v75, v83) | v105;
  }

  return result;
}

uint64_t sub_239D69D38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 456);
  v12 = MEMORY[0x277CD7378];
  v13 = MEMORY[0x277CD7370];
  if ((v11 & 1) == 0)
  {
    result = 0;
    if ((v11 & 2) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (*(a1 + 432) > *(a4 + 130) && MTLReportFailureTypeEnabled())
    {
      v134 = *(a1 + 432);
      v135 = *(a4 + 130);
      MTLReportFailure();
    }

    if (*(a4 + 280) + *(a1 + 440) > *(a4 + 64) && MTLReportFailureTypeEnabled())
    {
      v135 = *(a4 + 280);
      v136 = *(a4 + 64);
      v134 = *(a1 + 440);
      MTLReportFailure();
    }
  }

  v15 = objc_msgSend_PeakAtWeights_(a1, a2, *(*(a4 + 24) + 168), a4, a5, a6, a7, a8, v134, v135, v136);
  v16 = *(a1 + *v13);
  v17 = *(v16 + 32);
  v18 = *(a1 + 424);
  v19 = *(a1 + *v12);
  v160 = *(a1 + 416);
  v161 = v18;
  v20 = *(a1 + 240);
  *(&v155 + 1) = v19;
  v21 = *(a1 + 248);
  v22 = *(a1 + 272);
  v140 = v20;
  v141 = v21;
  v23 = *(a1 + 280);
  v24 = *(a1 + 304);
  v142 = v22;
  v143 = v23;
  v25 = *(a1 + 312);
  v148 = v24;
  v149 = v25;
  v26 = *(a1 + 440);
  v144 = *(a1 + 432);
  v145 = v26;
  LODWORD(v154) = -1;
  v27 = *(a1 + 448);
  LOBYTE(v156) = 0;
  v153 = 0uLL;
  *(&v154 + 1) = 0;
  *&v155 = v16;
  v146 = v27;
  v147 = 1;
  v157 = 0;
  v158 = 1;
  v150 = 0;
  v151 = 0;
  *&v152 = 0;
  *(&v152 + 1) = v15;
  v165 = objc_msgSend_preferredWeightsDataType(*(a1 + 464), v28, v29, v30, v31, v32, v33, v34);
  v159 = 0;
  v162 = objc_msgSend_maxBatchSize(a1, v35, v36, v37, v38, v39, v40, v41);
  v163 = 1;
  v164 = objc_msgSend_weightsLayout(*(a1 + 464), v42, v43, v44, v45, v46, v47, v48);
  result = (*(*v17 + 40))(v17, &v140, a2, a3, a4);
  if ((v11 & 2) != 0)
  {
LABEL_8:
    v137 = a3;
    v138 = result;
    if ((*(a1 + *v12) & 1) == 0)
    {
      if (*(a1 + 432) > *(a4 + 130) && MTLReportFailureTypeEnabled())
      {
        v134 = *(a1 + 432);
        v135 = *(a4 + 130);
        MTLReportFailure();
      }

      if (*(a1 + 440) > *(a4 + 178))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v134 = *(a1 + 440);
          v135 = *(a4 + 178);
          MTLReportFailure();
        }
      }
    }

    v176 = *(a4 + 232);
    v177 = *(a4 + 248);
    v178 = *(a4 + 88);
    v179 = *(a4 + 104);
    v49 = *(a4 + 120);
    v50 = *(a4 + 96);
    v181 = 0;
    v182 = v50;
    v180 = v49;
    v51 = objc_msgSend_objectAtIndexedSubscript_(v50, a2, 0, a4, a5, a6, a7, a8, v134, v135);
    v59 = objc_msgSend_width(v51, v52, v53, v54, v55, v56, v57, v58);
    v183 = v59;
    v66 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v60, 0, v61, v62, v63, v64, v65);
    v74 = objc_msgSend_height(v66, v67, v68, v69, v70, v71, v72, v73);
    v184 = v74;
    v185 = 0;
    v166 = *(a4 + 256);
    v167 = *(a4 + 272);
    v168 = *(a4 + 136);
    v169 = *(a4 + 152);
    v75 = *(a4 + 168);
    v76 = *(a4 + 144);
    v171 = 0;
    v172 = v76;
    v170 = v75;
    v83 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, 0, v78, v79, v80, v81, v82);
    v173 = objc_msgSend_width(v83, v84, v85, v86, v87, v88, v89, v90);
    v97 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 144), v91, 0, v92, v93, v94, v95, v96);
    v174 = objc_msgSend_height(v97, v98, v99, v100, v101, v102, v103, v104);
    v175 = 0;
    v105 = *(a4 + 16);
    v106 = *(*(a4 + 24) + 168);
    v107 = *(a1 + *v13);
    v108 = *(v107 + 32);
    v109 = *(a1 + 256);
    v110 = *(a1 + 264);
    v140 = *(a1 + 448);
    v141 = v109;
    v111 = *(a1 + 288);
    v112 = *(a1 + 296);
    v142 = v110;
    v143 = v111;
    v113 = *(a1 + 320);
    v114 = *(a1 + 328);
    v144 = v112;
    v145 = v113;
    v115 = *(a1 + 440);
    v146 = v114;
    v147 = v115;
    v116 = *a4;
    v117 = *(a4 + 8);
    v156 = 0;
    v155 = 0u;
    v154 = 0u;
    v153 = 0u;
    v152 = 0u;
    v118 = *(a1 + 416);
    v119 = *(a1 + 424);
    v148 = *(a1 + 432);
    v149 = v118;
    v150 = v119;
    v151 = 0;
    LOBYTE(v152) = 1;
    *(&v152 + 1) = v107;
    *&v153 = objc_msgSend_maxBatchSize(a1, v120, v121, v122, v123, v124, v125, v126);
    *(&v153 + 1) = v116;
    *&v154 = v117;
    *(&v154 + 1) = v59;
    *&v155 = v74;
    *(&v155 + 1) = v116;
    LODWORD(v156) = objc_msgSend_weightsLayout(*(a1 + 464), v127, v128, v129, v130, v131, v132, v133);
    return (*(*v108 + 176))(v108, &v140, a2, v137, &v176, &v166, v106, v105) | v138;
  }

  return result;
}

uint64_t sub_239D6A9FC(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a4 + 168);
  v13 = objc_msgSend_kernelWidth(a1, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_kernelHeight(a1, v14, v15, v16, v17, v18, v19, v20);
  v28 = objc_msgSend_dilationRateX(a1, v21, v22, v23, v24, v25, v26, v27);
  objc_msgSend_dilationRateY(a1, v29, v30, v31, v32, v33, v34, v35);
  memset(v83, 0, sizeof(v83));
  v81 = 0u;
  v82 = 0u;
  v70 = vdupq_n_s64(1uLL);
  v71 = 0;
  v36 = *(a4 + 16);
  v72 = *a4;
  v73 = v36;
  v74 = *(a4 + 32);
  v37 = *(a4 + 56);
  v75 = *(a4 + 48);
  v38 = *(a4 + 64);
  v39 = *(a4 + 96);
  v77 = *(a4 + 80);
  v78 = v39;
  v76 = v38;
  v40 = *(a4 + 104);
  v79 = *(a4 + 112);
  v80 = v37;
  LODWORD(v81) = *(a4 + 80);
  *(&v81 + 1) = v40;
  *&v38 = vmovn_s64(*(a4 + 120));
  LOWORD(v36) = v38;
  WORD1(v36) = WORD2(v38);
  DWORD1(v36) = ((*(a4 + 192) + 3) >> 2);
  *&v38 = vmovn_s64(*(a4 + 144));
  WORD3(v39) = 1;
  LOWORD(v39) = v38;
  WORD1(v39) = WORD2(v38);
  WORD2(v39) = (*(a4 + 88) + 3) >> 2;
  LOWORD(v83[0]) = *(a4 + 88);
  WORD2(v83[0]) = 1;
  WORD5(v83[0]) = objc_msgSend_maxBatchSize(a1, v41, v42, v43, v44, v45, v46, v47, *&v70, 0, v72, v73, v74, v75, v76, v77, v78, v79, v37, v81, v40, v36, v39, *&v83[0], 0, 0, 0);
  *(v83 + 12) = 0;
  DWORD2(v83[1]) = *(a4 + 16);
  v84 = *(a4 + 40);
  v86 = v12 - (v13 >> 1) * v28;
  v85 = v86;
  v87 = 0;
  v89 = v13;
  v88 = v13;
  v91 = v12;
  v90 = v12;
  v92 = objc_msgSend_strideInPixelsX(a1, v48, v49, v50, v51, v52, v53, v54);
  v93 = objc_msgSend_strideInPixelsY(a1, v55, v56, v57, v58, v59, v60, v61);
  v95 = v28;
  v94 = v28;
  v63 = *(a4 + 192);
  v62 = *(a4 + 200);
  v96 = v62;
  v97 = *(a4 + 24);
  v64 = *(a4 + 152);
  v101 = *(a4 + 136);
  v102 = v64;
  v65 = *(a4 + 184);
  v98 = v65;
  v99 = 0;
  v100 = *(a4 + 120);
  v103 = *(a4 + 168);
  v104 = v65;
  v105 = v63;
  v106 = v62;
  return sub_239D6B43C(a1, a2, a3, &v70, 0, v66, v67, v68);
}

uint64_t sub_239D6ABFC(char *a1, char *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = *a4;
  v8 = *(a4 + 3);
  v23 = *(a4 + 2);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(v8 + 6);
  v26 = v8[2];
  v27 = v11;
  v24 = v10;
  v25 = v9;
  v12 = *(v8 + 56);
  v13 = *(v8 + 13);
  v14 = *(v8 + 88);
  v29 = *(v8 + 72);
  v30 = v14;
  v31 = v13;
  v28 = v12;
  v32 = *(v8 + 14);
  LODWORD(v33) = *(a4 + 8);
  *(&v33 + 1) = *(a4 + 5);
  v15 = a4[4];
  v34 = a4[3];
  v35 = v15;
  *&v36 = *(a4 + 10);
  DWORD2(v36) = *(a4 + 22);
  v16 = *(a4 + 12);
  v17 = *(a4 + 104);
  v39 = *(a4 + 120);
  v38 = v17;
  v18 = *(a4 + 136);
  v19 = *(a4 + 168);
  v41 = *(a4 + 152);
  v42 = v19;
  v40 = v18;
  v20 = *(a4 + 25);
  v43 = *(a4 + 184);
  v37 = v16;
  v44 = v20;
  v45 = a4[13];
  return sub_239D6B43C(a1, a2, a3, &v22, 0, a6, a7, a8);
}

uint64_t sub_239D6AFBC(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a4 + 168);
  v13 = objc_msgSend_kernelWidth(a1, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_kernelHeight(a1, v14, v15, v16, v17, v18, v19, v20);
  v28 = objc_msgSend_dilationRateX(a1, v21, v22, v23, v24, v25, v26, v27);
  objc_msgSend_dilationRateY(a1, v29, v30, v31, v32, v33, v34, v35);
  memset(v83, 0, sizeof(v83));
  v81 = 0u;
  v82 = 0u;
  v70 = vdupq_n_s64(1uLL);
  v71 = 0;
  v36 = *(a4 + 16);
  v72 = *a4;
  v73 = v36;
  v74 = *(a4 + 32);
  v37 = *(a4 + 56);
  v75 = *(a4 + 48);
  v38 = *(a4 + 64);
  v39 = *(a4 + 96);
  v77 = *(a4 + 80);
  v78 = v39;
  v76 = v38;
  v40 = *(a4 + 104);
  v79 = *(a4 + 112);
  v80 = v37;
  LODWORD(v81) = *(a4 + 80);
  *(&v81 + 1) = v40;
  *&v38 = vmovn_s64(*(a4 + 120));
  LOWORD(v36) = v38;
  WORD1(v36) = WORD2(v38);
  DWORD1(v36) = ((*(a4 + 192) + 3) >> 2);
  *&v38 = vmovn_s64(*(a4 + 144));
  WORD3(v39) = 1;
  LOWORD(v39) = v38;
  WORD1(v39) = WORD2(v38);
  WORD2(v39) = (*(a4 + 88) + 3) >> 2;
  LOWORD(v83[0]) = *(a4 + 88);
  WORD2(v83[0]) = 1;
  WORD5(v83[0]) = objc_msgSend_maxBatchSize(a1, v41, v42, v43, v44, v45, v46, v47, *&v70, 0, v72, v73, v74, v75, v76, v77, v78, v79, v37, v81, v40, v36, v39, *&v83[0], 0, 0, 0);
  *(v83 + 12) = 0;
  DWORD2(v83[1]) = *(a4 + 16);
  v84 = *(a4 + 40);
  v86 = v12 - (v13 >> 1) * v28;
  v85 = v86;
  v87 = 0;
  v89 = v13;
  v88 = v13;
  v91 = v12;
  v90 = v12;
  v92 = objc_msgSend_strideInPixelsX(a1, v48, v49, v50, v51, v52, v53, v54);
  v93 = objc_msgSend_strideInPixelsY(a1, v55, v56, v57, v58, v59, v60, v61);
  v95 = v28;
  v94 = v28;
  v63 = *(a4 + 192);
  v62 = *(a4 + 200);
  v96 = v62;
  v97 = *(a4 + 24);
  v64 = *(a4 + 152);
  v101 = *(a4 + 136);
  v102 = v64;
  v65 = *(a4 + 184);
  v98 = v65;
  v99 = 0;
  v100 = *(a4 + 120);
  v103 = *(a4 + 168);
  v104 = v65;
  v105 = v63;
  v106 = v62;
  return sub_239D6B43C(a1, a2, a3, &v70, 1, v66, v67, v68);
}

uint64_t sub_239D6B1BC(char *a1, char *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = *a4;
  v8 = *(a4 + 3);
  v23 = *(a4 + 2);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(v8 + 6);
  v26 = v8[2];
  v27 = v11;
  v24 = v10;
  v25 = v9;
  v12 = *(v8 + 56);
  v13 = *(v8 + 13);
  v14 = *(v8 + 88);
  v29 = *(v8 + 72);
  v30 = v14;
  v31 = v13;
  v28 = v12;
  v32 = *(v8 + 14);
  LODWORD(v33) = *(a4 + 8);
  *(&v33 + 1) = *(a4 + 5);
  v15 = a4[4];
  v34 = a4[3];
  v35 = v15;
  *&v36 = *(a4 + 10);
  DWORD2(v36) = *(a4 + 22);
  v16 = *(a4 + 12);
  v17 = *(a4 + 104);
  v39 = *(a4 + 120);
  v38 = v17;
  v18 = *(a4 + 136);
  v19 = *(a4 + 168);
  v41 = *(a4 + 152);
  v42 = v19;
  v40 = v18;
  v20 = *(a4 + 25);
  v43 = *(a4 + 184);
  v37 = v16;
  v44 = v20;
  v45 = a4[13];
  return sub_239D6B43C(a1, a2, a3, &v22, 1, a6, a7, a8);
}

uint64_t sub_239D6B43C(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v166 = *MEMORY[0x277D85DE8];
  v12 = objc_msgSend_featureChannelsLayout(*(a4 + 24), a2, a3, a4, a5, a6, a7, a8);
  v13 = *(a4 + 104);
  v14 = *(a4 + 320);
  if (objc_msgSend_numberOfImages(*(a4 + 24), v15, v16, v17, v18, v19, v20, v21) >= 2 && *(a4 + 288) > 1uLL || *(a4 + 56) == 3 || (*(a4 + 200) & 2) != 0)
  {
    v29 = *(a4 + 48);
    if (v29 < 0x80 || (v29 & 3) != 0)
    {
      if (v29 > 4)
      {
        if (v29 > 8)
        {
          if (v29 > 0xC)
          {
            v30 = v12 == 0;
            if ((v29 & 3) != 0)
            {
              v31 = 16;
              v32 = 10;
            }

            else
            {
              v31 = 15;
              v32 = 9;
            }
          }

          else
          {
            v30 = v12 == 0;
            v31 = 14;
            v32 = 8;
          }
        }

        else
        {
          v30 = v12 == 0;
          v31 = 13;
          v32 = 7;
        }
      }

      else
      {
        v30 = v12 == 0;
        v31 = 12;
        v32 = 6;
      }
    }

    else
    {
      v30 = v12 == 0;
      v31 = 17;
      v32 = 11;
    }

LABEL_31:
    if (v30)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    v34 = MEMORY[0x277CD7370];
    v35 = v29 + 3;
    v141 = v29 + 3;
    if (v12)
    {
      goto LABEL_35;
    }

    goto LABEL_43;
  }

  v29 = *(a4 + 48);
  if (v29 >= 0x80 && (v29 & 3) == 0)
  {
    v30 = v12 == 0;
    v31 = 17;
    v32 = 5;
    goto LABEL_31;
  }

  if (v29 >= 5)
  {
    if (v29 <= 8)
    {
      if (v12)
      {
        v33 = 13;
      }

      else
      {
        v33 = 1;
      }

      v34 = MEMORY[0x277CD7370];
      v35 = v29 + 3;
      v141 = v29 + 3;
      if (v12)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }

    if (v29 > 0xC)
    {
      if ((v29 & 3) != 0)
      {
        v40 = 16;
        v41 = 4;
      }

      else
      {
        v40 = 15;
        v41 = 3;
      }

      if (v12)
      {
        v33 = v40;
      }

      else
      {
        v33 = v41;
      }

      v34 = MEMORY[0x277CD7370];
      v35 = v29 + 3;
      v141 = v29 + 3;
      if (v12)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }

    v30 = v12 == 0;
    v31 = 14;
    v32 = 2;
    goto LABEL_31;
  }

  v33 = 0;
  v34 = MEMORY[0x277CD7370];
  v35 = v29 + 3;
  v141 = v29 + 3;
  if (v12)
  {
LABEL_35:
    v36 = 0;
    v37 = 0;
    v38 = vmovn_s64(*(a4 + 296));
    v39 = vmovn_s64(*(a4 + 248));
    goto LABEL_44;
  }

LABEL_43:
  v42 = v35 >> 2;
  v38.i32[0] = *(a4 + 296) * (v35 >> 2);
  v38.i16[2] = *(a4 + 304);
  v36 = *(a4 + 312);
  v39.i32[0] = *(a4 + 248) * v42;
  v39.i16[2] = *(a4 + 256);
  v37 = *(a4 + 264);
LABEL_44:
  v149[1] = v38.i16[2];
  v149[0] = v38.i16[0];
  v149[6] = v36;
  v149[3] = v39.i16[2];
  v149[2] = v39.i16[0];
  v43 = vmovn_s64(*(a4 + 272));
  v149[7] = v37;
  v149[5] = v43.i16[2];
  v149[4] = v43.i16[0];
  v149[8] = v29;
  v149[9] = v13;
  v149[10] = *(a4 + 328) >> 2;
  v149[11] = v14 >> 2;
  if (v8)
  {
    v44 = 8;
  }

  else
  {
    v44 = 0;
  }

  if (v12)
  {
    v45 = v44;
  }

  else
  {
    v45 = v44 | 4;
  }

  v46 = v45 & 0xFFFFFFCF | (16 * (v29 & 3));
  v47 = *(*(*&a1[*v34] + 32) + 8);
  v48 = objc_msgSend_maxBatchSize(a1, v22, v23, v24, v25, v26, v27, v28);
  v49 = -1;
  v148 = -1;
  *&v50 = -1;
  *(&v50 + 1) = -1;
  v146 = v50;
  v147 = v50;
  v145 = v50;
  v51 = *(a4 + 144) & 0x3F | ((*(a4 + 200) & 0x3Fu) << 6);
  v144[3] = v48;
  v144[4] = v51;
  v144[5] = v46;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    v59 = PipelineStateForMPSKey;
    objc_msgSend_setComputePipelineState_(a2, v53, PipelineStateForMPSKey, v54, v55, v56, v57, v58, 0, 0, 0, 0, 0);
    v67 = objc_msgSend_threadExecutionWidth(v59, v60, v61, v62, v63, v64, v65, v66);
    v75 = objc_msgSend_maxTotalThreadsPerThreadgroup(v59, v68, v69, v70, v71, v72, v73, v74);
    v76 = v75;
    if (v75 >= 0x100)
    {
      v77 = 256;
    }

    else
    {
      v77 = v75;
    }

    MPSLibrary::ReleaseMPSKey();
    if (((1 << v33) & 0x20820) != 0)
    {
      v85 = 256;
      v86 = 128;
      v87 = 64;
      if (v141 <= 0x3FF)
      {
        v87 = v67;
      }

      if (v141 <= 0x7FF)
      {
        v86 = v87;
      }

      if (v141 <= 0xFFF)
      {
        v85 = v86;
      }

      if ((v85 > v77) | v47 & 1)
      {
        v85 = v67;
      }

      v138 = *(a4 + 280);
      v139 = *(a4 + 8);
      v140 = *(a4 + 272);
      v142 = v85;
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v78, 4 * v85, 0, v81, v82, v83, v84);
      v143 = 1;
      if ((*(a4 + 200) & 2) == 0)
      {
        goto LABEL_64;
      }

LABEL_75:
      v96 = *(a4 + 208);
      v97 = objc_msgSend_count(v96, v78, v79, v80, v81, v82, v83, v84);
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      if (!v48)
      {
        goto LABEL_92;
      }

      v98 = v97;
      v99 = 0;
      while (1)
      {
        if (v98 <= v99)
        {
          v100 = 0;
          if (v48 - v99 >= 0x20)
          {
            v101 = 32;
          }

          else
          {
            v101 = v48 - v99;
          }

          v102 = v101;
          if (!v101)
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (v98 - v99 >= 0x20)
          {
            v100 = 32;
            objc_msgSend_getObjects_range_(v96, v88, &v150, v99, 32, v89, v90, v91);
          }

          else
          {
            v100 = v98 - v99;
            objc_msgSend_getObjects_range_(v96, v88, &v150, v99, v98 - v99, v89, v90, v91);
          }

          if (v48 - v99 >= 0x20)
          {
            v101 = 32;
          }

          else
          {
            v101 = v48 - v99;
          }

          v102 = v101 - v100;
          if (v101 == v100)
          {
            goto LABEL_77;
          }
        }

        bzero(&v150 + 8 * v100, 8 * v102);
LABEL_77:
        objc_msgSend_setTextures_withRange_(a2, v88, &v150, v99 + v48, v101, v89, v90, v91);
        v99 += v101;
        if (v99 >= v48)
        {
          goto LABEL_92;
        }
      }
    }

    if (v47)
    {
      v92 = 4;
    }

    else
    {
      v92 = 16;
    }

    v93 = *(a4 + 272);
    if (v92 <= v93)
    {
      v137 = 256;
      if (v47)
      {
        v137 = 16;
      }

      v95 = v92;
      if (v76 < v137)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v94 = 256;
      if (v47)
      {
        v94 = 16;
      }

      if (v92 > *(a4 + 280) || (v95 = v92, v76 < v94))
      {
LABEL_73:
        v92 = 1;
        v95 = v67;
      }
    }

    v140 = (v93 + v95 - 1) / v95;
    v142 = v95;
    v138 = (v92 + *(a4 + 280) - 1) / v92;
    v139 = *(a4 + 8);
    v143 = v92;
    if ((*(a4 + 200) & 2) == 0)
    {
LABEL_64:
      objc_msgSend_setTexture_atIndex_(a2, v78, *(a4 + 64), v48, v81, v82, v83, v84);
LABEL_92:
      objc_msgSend_setBytes_length_atIndex_(a2, v88, a4 + 216, 32, 1, v89, v90, v91);
      if ((*(a4 + 144) & 2) == 0)
      {
        objc_msgSend_setTexture_atIndex_(a2, v103, *(a4 + 120), 0, v106, v107, v108, v109);
LABEL_111:
        objc_msgSend_setBytes_length_atIndex_(a2, v110, a4 + 160, 40, 0, v111, v112, v113);
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v122, Sampler, 0, v123, v124, v125, v126);
        objc_msgSend_setBytes_length_atIndex_(a2, v127, v149, 24, 30, v128, v129, v130);
        *&v150 = v140;
        *(&v150 + 1) = v138;
        *&v151 = v139;
        v144[0] = v142;
        v144[1] = v143;
        v144[2] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v131, &v150, v144, v132, v133, v134, v135);
        return 0;
      }

      v114 = *(a4 + 152);
      v115 = objc_msgSend_count(v114, v103, v104, v105, v106, v107, v108, v109);
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      if (!v48)
      {
        goto LABEL_111;
      }

      v116 = v115;
      v117 = 0;
      while (1)
      {
        if (v116 <= v117)
        {
          v118 = 0;
          if (v48 - v117 >= 0x20)
          {
            v119 = 32;
          }

          else
          {
            v119 = v48 - v117;
          }

          v120 = v119;
          if (!v119)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v116 - v117 >= 0x20)
          {
            v118 = 32;
            objc_msgSend_getObjects_range_(v114, v110, &v150, v117, 32, v111, v112, v113);
          }

          else
          {
            v118 = v116 - v117;
            objc_msgSend_getObjects_range_(v114, v110, &v150, v117, v116 - v117, v111, v112, v113);
          }

          if (v48 - v117 >= 0x20)
          {
            v119 = 32;
          }

          else
          {
            v119 = v48 - v117;
          }

          v120 = v119 - v118;
          if (v119 == v118)
          {
            goto LABEL_96;
          }
        }

        bzero(&v150 + 8 * v118, 8 * v120);
LABEL_96:
        objc_msgSend_setTextures_withRange_(a2, v110, &v150, v117, v119, v111, v112, v113);
        v117 += v119;
        if (v117 >= v48)
        {
          goto LABEL_111;
        }
      }
    }

    goto LABEL_75;
  }

  return v49;
}

uint64_t sub_239D6CBA0(uint64_t a1, uint64_t a2)
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

LABEL_9:
      objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 53, 2, v5, v6, v7);
      if ((*(a2 + 64) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_3;
  }

  objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 53, 1, v5, v6, v7);
  v9 = *(a2 + 64);
  if ((v9 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v9 & 8) != 0)
  {
LABEL_5:
    objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 53, 3, v5, v6, v7);
  }

LABEL_6:
  v10 = _MPSNewSpecializedFunction();

  return v10;
}

void sub_239D6D734(void *a1@<X3>, unint64_t a2@<X7>, unint64_t *a3@<X8>, unint64_t a4)
{
  v4 = a2 >> 2;
  if (a2 >> 2 <= 1)
  {
    v4 = 1;
  }

  a3[2] = 1;
  if (*a1 >= 4 * v4)
  {
    v8 = 16;
    if (a4 < 2 || 16 * v4 <= a4)
    {
LABEL_20:
      if (v4 <= 1)
      {
        v4 = 1;
      }

      *a3 = v4;
      a3[1] = v8;
      return;
    }
  }

  else
  {
    v5 = a1[1];
    v6 = a2 >> 3;
    if (a2 >> 3 <= 1)
    {
      v6 = 1;
    }

    v7 = v5 > 0x3F;
    if (v5 <= 0x3F)
    {
      v8 = 8;
    }

    else
    {
      v8 = 16;
    }

    if (!v7)
    {
      v4 = v6;
    }

    if (a4 < 2 || v4 * v8 <= a4)
    {
      goto LABEL_20;
    }
  }

  do
  {
    v11 = v8 >> (v8 > 1);
    v13 = v4 > 1 && v8 < 2;
    v4 >>= v13;
    v8 = v11;
  }

  while (v4 * v11 > a4);
  if (v4 <= 1)
  {
    v4 = 1;
  }

  if (v11 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v11;
  }

  *a3 = v4;
  a3[1] = v14;
}

void sub_239D6D800(void *a1@<X3>, unint64_t a2@<X6>, uint64_t a3@<X7>, int64x2_t *a4@<X8>, uint64_t a5, uint64_t a6)
{
  a4->i64[0] = 0;
  a4->i64[1] = 0;
  a4[1].i64[0] = 0;
  if (!a6)
  {
    if (*a1 > 0x10uLL || a1[1] >= 0x11uLL)
    {
      v6 = xmmword_239D7D410;
      a3 = 1;
    }

    else
    {
      v6 = vdupq_n_s64(2uLL);
      a3 = 8;
    }

    goto LABEL_11;
  }

  *a4 = vdupq_n_s64(2uLL);
  a4[1].i64[0] = 8;
  if (a2 <= 0x40)
  {
    *a4 = xmmword_239D7D410;
    a4[1].i64[0] = 1;
  }

  if (*a1 <= 3uLL && a1[1] < 4uLL)
  {
    v6 = vdupq_n_s64(1uLL);
LABEL_11:
    *a4 = v6;
    a4[1].i64[0] = a3;
  }
}

void sub_239D6D8EC(void *a1@<X3>, unint64_t a2@<X6>, uint64_t a3@<X7>, int64x2_t *a4@<X8>, uint64_t a5, uint64_t a6)
{
  a4->i64[0] = 0;
  a4->i64[1] = 0;
  a4[1].i64[0] = 0;
  if (!a6)
  {
    if (*a1 > 0x10uLL || a1[1] >= 0x11uLL)
    {
      v8 = xmmword_239D7D410;
      a3 = 1;
    }

    else
    {
      v8 = vdupq_n_s64(2uLL);
      a3 = 8;
    }

    goto LABEL_14;
  }

  *a4 = vdupq_n_s64(2uLL);
  v6 = 8;
  a4[1].i64[0] = 8;
  if (a2 == 1)
  {
    v7 = 1;
LABEL_9:
    a4->i64[0] = v6;
    a4->i64[1] = v6;
    a4[1].i64[0] = v7;
    goto LABEL_10;
  }

  if (a2 <= 0x20)
  {
    v7 = 2;
    v6 = 4;
    goto LABEL_9;
  }

LABEL_10:
  if (*a1 <= 3uLL && a1[1] < 4uLL)
  {
    v8 = vdupq_n_s64(1uLL);
LABEL_14:
    *a4 = v8;
    a4[1].i64[0] = a3;
  }
}

void sub_239D6D9E4(void *a1@<X3>, unint64_t a2@<X6>, unint64_t a3@<X7>, uint64_t *a4@<X8>, unint64_t a5, uint64_t a6)
{
  if (!a6)
  {
    if (*a1 > 0x10uLL || a1[1] > 0x10uLL)
    {
      if (a3 >> 3 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = a3 >> 3;
      }

      v7 = 8;
      v6 = 1;
      goto LABEL_24;
    }

    if (a3 >> 4 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = a3 >> 4;
    }

    v6 = 8;
LABEL_19:
    v10 = v7;
    goto LABEL_24;
  }

  v6 = 4;
  if (a2 < 4)
  {
    v6 = 1;
  }

  v7 = a3 >> v6;
  if (a3 >> v6 <= 1)
  {
    v7 = 1;
  }

  if (*a1 > 3uLL)
  {
    goto LABEL_19;
  }

  v8 = a1[1];
  v9 = v8 > 3;
  if (v8 > 3)
  {
    v10 = v7;
  }

  else
  {
    v6 = a3;
    v10 = 1;
  }

  if (!v9)
  {
    v7 = 1;
  }

LABEL_24:
  if (v7 * v6 * v10 < a3)
  {
    v6 = a3;
    v7 = 1;
    v10 = 1;
  }

  if (a5 >= 2 && v7 * v10 * v6 > a5)
  {
    do
    {
      v11 = v6 >> (v6 > 1);
      v12 = v10 >> 1;
      if (v10 < 2)
      {
        v12 = 1;
      }

      else
      {
        v11 = v6;
      }

      v13 = v7 >= 2;
      if (v7 >= 2)
      {
        v7 >>= 1;
      }

      else
      {
        v6 = v11;
        v7 = 1;
      }

      if (!v13)
      {
        v10 = v12;
      }
    }

    while (v7 * v6 * v10 > a5);
  }

  a4[1] = v7;
  a4[2] = v6;
  if (v10 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v10;
  }

  *a4 = v14;
}

uint64_t sub_239D6E498(uint64_t a1, void *a2, void *a3, char **a4, __n128 a5)
{
  v427 = *(a1 + 416);
  v423 = *(a1 + 424);
  v424 = *(a1 + 328);
  v421 = *(a1 + *MEMORY[0x277CD7350]);
  v419 = (a4 + 18);
  v410 = a4[18] == 1 && a4[19] == 1;
  v414 = *(a1 + 200);
  v415 = *(a1 + 208);
  v408 = *(a1 + 224);
  v409 = *(a1 + 216);
  v407 = *(a1 + 344);
  v418 = *(a1 + 392);
  *&v425 = *(a1 + 408);
  *(&v425 + 1) = *(a1 + 400);
  v411 = *(a1 + 384);
  v412 = *(a1 + 336);
  v402 = *(a1 + *MEMORY[0x277CD7378]);
  a5.n128_u64[0] = *(a1 + 348);
  v406 = a5;
  v405 = *(a1 + 356);
  v8 = *(a1 + 376);
  v9 = *(a1 + 444);
  v404 = a4[9][4] << 32 < 0x1600000001;
  v10 = a4[5];
  MEMORY[0x23EE7D040](v451, a3, a4[13]);
  v403 = v8;
  if (!v423)
  {
    if (v425 == 0 && !a4[23])
    {
      TempTexture = v10;
      v19 = (a4 + 20);
      v18 = a4[20];
      if (v18 == objc_msgSend_numberOfImages(*a4, v11, v12, v13, v14, v15, v16, v17))
      {
        v20 = (a4[3] + 3) >> 2;
        if (a4[6] == 1)
        {
          v420 = (a4[3] + 3) >> 2;
          LOBYTE(v427) = 0;
          v413 = 0;
          v422 = 1;
          goto LABEL_83;
        }

        LODWORD(v427) = 0;
        v21 = *v19;
        LOWORD(v24) = 1;
        LOWORD(v23) = (a4[3] + 3) >> 2;
        goto LABEL_17;
      }
    }

    LODWORD(v427) = 0;
  }

  v19 = (a4 + 20);
  v21 = a4[20];
  v22 = a4[3];
  v23 = (v22 + 3) >> 2;
  if (a4[6] == 1)
  {
    v24 = (v22 + 3) >> 2;
  }

  else
  {
    LOWORD(v24) = 1;
  }

  if (v423)
  {
    v422 = 0;
    v20 = (v22 + 31) >> 5;
    goto LABEL_18;
  }

  v20 = (v22 + 3) >> 2;
LABEL_17:
  v422 = 1;
LABEL_18:
  v449 = 0uLL;
  v450 = 0;
  v25 = *a4;
  v449.i64[0] = *&(*a4)[*MEMORY[0x277CD7330]];
  v420 = v20;
  v26 = v20 * v21;
  v449.i64[1] = *&v25[*MEMORY[0x277CD7308]];
  v450 = v20 * v21;
  v27 = objc_msgSend_pixelFormat(v25, v11, v12, v13, v14, v15, v16, v17);
  if (v425 == 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 125;
  }

  PixelInfo = MPSDevice::GetPixelInfo(v421, MTLPixelFormatR32Uint, MPSImageFeatureChannelFormatNone);
  v29 = objc_alloc_init(MEMORY[0x277CD7058]);
  v36 = v29;
  if (v26 <= 1)
  {
    objc_msgSend_setTextureType_(v29, v30, 2, v31, v32, v33, v34, v35);
  }

  else
  {
    objc_msgSend_setTextureType_(v29, v30, 3, v31, v32, v33, v34, v35);
  }

  if (v422)
  {
    objc_msgSend_setPixelFormat_(v36, v37, v28, v38, v39, v40, v41, v42);
  }

  else
  {
    objc_msgSend_setPixelFormat_(v36, v37, 53, v38, v39, v40, v41, v42);
  }

  objc_msgSend_setWidth_(v36, v43, v449.i64[0], v44, v45, v46, v47, v48);
  objc_msgSend_setHeight_(v36, v49, v449.i64[1], v50, v51, v52, v53, v54);
  objc_msgSend_setArrayLength_(v36, v55, v450, v56, v57, v58, v59, v60);
  objc_msgSend_setUsage_(v36, v61, 3, v62, v63, v64, v65, v66);
  objc_msgSend_setStorageMode_(v36, v67, 2, v68, v69, v70, v71, v72);
  TempTexture = MPSAutoCache::GetTempTexture();
  objc_msgSend_textureType(v36, v73, v74, v75, v76, v77, v78, v79);
  if (v427)
  {
    objc_msgSend_setPixelFormat_(v36, v80, 55, v81, v82, v83, v84, v85);
    objc_msgSend_setArrayLength_(v36, v86, v21, v87, v88, v89, v90, v91);
    objc_msgSend_setTextureType_(v36, v92, 3, v93, v94, v95, v96, v97);
    PixelInfo = MPSDevice::GetPixelInfo(v421, MTLPixelFormatR32Float, MPSImageFeatureChannelFormatNone);
    v450 = v21;
    v416 = MPSAutoCache::GetTempTexture();
    objc_msgSend_setWidth_(v36, v98, *v419, v99, v100, v101, v102, v103);
    objc_msgSend_setHeight_(v36, v104, a4[19], v105, v106, v107, v108, v109);
    objc_msgSend_setArrayLength_(v36, v110, v21, v111, v112, v113, v114, v115);
    v449 = *v419;
    v413 = MPSAutoCache::GetTempTexture();
  }

  else
  {
    v416 = 0;
    v413 = 0;
  }

  v116 = *a4;
  v428.i16[2] = *&(*a4)[*MEMORY[0x277CD7330]];
  v428.i16[3] = *&v116[*MEMORY[0x277CD7308]];
  v428.i16[4] = (a4[23] & ~(a4[23] >> 63)) * v24;
  v428.i16[5] = v23;
  v428.i16[6] = v420;
  v428.i16[7] = objc_msgSend_numberOfImages(v116, v117, v118, v119, v120, v121, v122, v123) * v24;
  LOWORD(v429) = v424;
  WORD1(v429) = v26;
  v124 = v420;
  if (v427)
  {
    v124 = v424;
  }

  v125 = 1.0 / v124;
  *v428.i32 = v125;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v127, PipelineStateForMPSKey, v128, v129, v130, v131, v132, 0, 0, 0, 0, 0);
  v140 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v133, v134, v135, v136, v137, v138, v139);
  if (v140 <= 1)
  {
    v148 = 1;
  }

  else
  {
    v148 = v140;
  }

  v149 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v141, v142, v143, v144, v145, v146, v147);
  v150 = v149;
  if (v149 >= 0x100)
  {
    v151 = 256;
  }

  else
  {
    v151 = v149;
  }

  MPSLibrary::ReleaseMPSKey();
  v152 = MPSIsTextureTwiddled();
  if (v148 >> 2 <= 1)
  {
    v153 = 1;
  }

  else
  {
    v153 = v148 >> 2;
  }

  v154 = 16;
  if (!v152)
  {
    v154 = 1;
    v153 = 4 * v148;
  }

  v155 = 4;
  if (!v152)
  {
    v155 = 0;
  }

  if (v150 >= 2 && v153 << v155 > v151)
  {
    do
    {
      v156 = v154 >= 2;
      if (v154 < 2)
      {
        v154 = 1;
      }

      else
      {
        v154 >>= 1;
      }

      v157 = !v156 && v153 > 1;
      v153 >>= v157;
    }

    while (v153 * v154 > v151);
  }

  if (v153 <= 1)
  {
    v158 = 1;
  }

  else
  {
    v158 = v153;
  }

  if (v154 <= 1)
  {
    v159 = 1;
  }

  else
  {
    v159 = v154;
  }

  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v161, Sampler, 0, v162, v163, v164, v165);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v166, 0, 0, v167, v168, v169, v170);
  objc_msgSend_setTexture_atIndex_(a2, v171, a4[5], 0, v172, v173, v174, v175);
  objc_msgSend_setTexture_atIndex_(a2, v176, TempTexture, 1, v177, v178, v179, v180);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v181, *(&v425 + 1), 0, 1, v182, v183, v184);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v185, v425, 0, 2, v186, v187, v188);
  objc_msgSend_setBytes_length_atIndex_(a2, v189, &v428, 20, 0, v190, v191, v192);
  v200 = *&(*a4)[*MEMORY[0x277CD7330]];
  v201 = *&(*a4)[*MEMORY[0x277CD7308]];
  if (v158 <= 2 * v200 || (v159 > 2 * v201 ? (v202 = v26 >= v148 >> 1) : (v202 = 0), v202 ? (v203 = 0) : (v203 = 1), ((v203 | v427) & 1) != 0))
  {
    v148 = 1;
    if (v427)
    {
LABEL_69:
      objc_msgSend_setTexture_atIndex_(a2, v193, v416, 2, v196, v197, v198, v199);
      v204 = *v19;
      goto LABEL_72;
    }
  }

  else
  {
    v159 = 1;
    v158 = 1;
    if (v427)
    {
      goto LABEL_69;
    }
  }

  v204 = (v26 + v148 - 1) / v148;
LABEL_72:
  if ((objc_msgSend_retainedReferences(a3, v193, v194, v195, v196, v197, v198, v199) & 1) == 0)
  {
    if (*(&v425 + 1))
    {
      v211 = *(&v425 + 1);
    }

    if (v425)
    {
      v212 = v425;
    }

    v447[0] = MEMORY[0x277D85DD0];
    v447[1] = 3221225472;
    v447[2] = sub_239D7129C;
    v447[3] = &unk_278B2F6B0;
    v447[4] = *(&v425 + 1);
    v447[5] = v425;
    objc_msgSend_addCompletedHandler_(a3, v205, v447, v206, v207, v208, v209, v210);
  }

  v431.n128_u64[0] = (v200 + v158 - 1) / v158;
  v431.n128_u64[1] = (v201 + v159 - 1) / v159;
  *&v432 = v204;
  v445.i64[0] = v158;
  v445.i64[1] = v159;
  v446 = v148;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v205, &v431, &v445, v207, v208, v209, v210);
  if ((v427 & 1) == 0)
  {
    goto LABEL_83;
  }

  v213 = objc_msgSend_width(v413, v11, v12, v13, v14, v15, v16, v17);
  v221 = objc_msgSend_height(v413, v214, v215, v216, v217, v218, v219, v220);
  v229 = objc_msgSend_arrayLength(v413, v222, v223, v224, v225, v226, v227, v228);
  v230 = objc_alloc(MEMORY[0x277CD7218]);
  v236 = objc_msgSend_initWithTexture_featureChannels_(v230, v231, v416, 1, v232, v233, v234, v235);
  v237 = objc_alloc(MEMORY[0x277CD7218]);
  v249 = objc_msgSend_initWithTexture_featureChannels_(v237, v238, v413, 1, v239, v240, v241, v242);
  v250 = 0;
  v251 = *MEMORY[0x277CD7318];
  v445.i64[0] = *&v236[v251];
  v444 = *&v249[v251];
  v442 = 0u;
  v443 = 0u;
  memset(v441, 0, sizeof(v441));
  v439 = 0u;
  v440 = 0u;
  v437 = 0u;
  v438 = 0u;
  v435 = 0u;
  v436 = 0u;
  v433 = 0u;
  v434 = 0u;
  v432 = 0u;
  v431.n128_u64[0] = v236;
  v431.n128_u64[1] = &v445;
  v252 = *MEMORY[0x277CD72F8];
  *(&v432 + 1) = *&v236[v252];
  v253 = *MEMORY[0x277CD7328];
  *&v433 = *&v236[v253];
  v254 = *MEMORY[0x277CD7300];
  v255 = *&v236[v254];
  *&v435 = v249;
  *(&v435 + 1) = &v444;
  *&v434 = v255;
  *(&v436 + 1) = *&v249[v252];
  *&v437 = *&v249[v253];
  v256 = *&v249[v254];
  v439 = 0uLL;
  *(&v437 + 1) = v413;
  v438 = v256;
  *&v440 = v213;
  *(&v440 + 1) = v221;
  *&v441[0] = v229;
  *(v441 + 8) = *(a4 + 21);
  v442 = 0uLL;
  *(&v441[1] + 1) = 0;
  *(&v433 + 1) = v416;
  v443 = *(a4 + 13);
  v257 = *(a1 + 432);
  if ((*(v257 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v400 = *(v257 + *MEMORY[0x277CD7360]);
    if (!v400)
    {
      v401 = objc_opt_class();
      v400 = NSStringFromClass(v401);
    }

    objc_msgSend_pushDebugGroup_(a2, v243, v400, v244, v245, v246, v247, v248);
    v250 = a2;
  }

  v265 = (*(v257 + 288))(*(v257 + 304), a2, a3, &v431);
  if (v250)
  {
    objc_msgSend_popDebugGroup(v250, v258, v259, v260, v261, v262, v263, v264);
  }

  if (!v265)
  {
LABEL_83:
    v266 = vmovn_s64(*(a4 + 9));
    WORD5(v432) = v266.i16[2];
    v267 = v266.i16[0];
    v268 = vmovn_s64(*(a4 + 15));
    WORD4(v432) = v267;
    WORD3(v432) = v268.i16[2];
    WORD2(v432) = v268.i16[0];
    v269 = vmovn_s64(*(a4 + 21));
    WORD1(v432) = v269.i16[2];
    LOWORD(v432) = v269.i16[0];
    WORD5(v434) = objc_msgSend_width(*a4, v11, v12, v13, v14, v15, v16, v17);
    v277 = objc_msgSend_height(*a4, v270, v271, v272, v273, v274, v275, v276);
    v284 = *(a1 + 368);
    WORD6(v434) = v277;
    DWORD2(v433) = v284;
    v285 = a4[14];
    WORD1(v434) = v420;
    v286 = a4[11];
    v287 = (v286 + 3) >> 2;
    LOWORD(v434) = v287;
    v288 = a4[24];
    v289 = v412;
    if (&v288[v412] > v286)
    {
      if ((v402 & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        v290 = objc_opt_class();
        NSStringFromClass(v290);
        MTLReportFailure();
      }

      v288 = a4[24];
      v289 = *(a4 + 22) - v288;
      if (v289 < 1)
      {
        goto LABEL_121;
      }
    }

    v292 = v289 + 3;
    v291 = v289 < -3;
    v293 = v289 + 6;
    if (!v291)
    {
      v293 = v292;
    }

    v294 = v293 >> 2;
    v295 = (v288 + 3) >> 2;
    if (v285 == 1)
    {
      v296 = v295 + v287 * *(a4 + 68);
    }

    else
    {
      WORD3(v434) = v295;
      v296 = *(a4 + 68);
    }

    *&v297 = 1.0 / v294;
    HIWORD(v433) = v294;
    WORD6(v433) = v296;
    *&v433 = __PAIR64__(v297, v9);
    WORD2(v434) = v424;
    HIWORD(v432) = v408;
    WORD6(v432) = v409;
    v298 = v406;
    v298.n128_u32[2] = v405;
    v431 = v298;
    v299 = a4[20];
    v300 = v299 * v294;
    WORD4(v434) = v299 * v294;
    if (v423 == 1)
    {
      v301 = *(a4 + 42);
      if (((v301 - v414 / 2) & 0x80000000) == 0 && ((*(a4 + 44) - v415 / 2) & 0x80000000) == 0)
      {
        v302 = *(a4 + 36);
        if (v301 + (v414 - 1) / 2 + (v302 - 1) * v409 < objc_msgSend_width(*a4, v278, v279, v280, v281, ((v414 & 7) << 6) & 0xF1C0 | ((v415 & 7) << 9) | v407 & 0x3F | ((v411 != 0) << 13) | ((v418 != 0) << 12) | ((v423 == 1) << 14) | (v404 << 21), v282, v283))
        {
          objc_msgSend_height(*a4, v303, v304, v305, v306, ((v414 & 7) << 6) & 0xF1C0 | ((v415 & 7) << 9) | v407 & 0x3F | ((v411 != 0) << 13) | ((v418 != 0) << 12) | 0x4000 | (v404 << 21), v307, v308);
        }
      }
    }

    MPSLibrary::CreateUberShaderKey();
    v309 = MPSLibrary::GetPipelineStateForMPSKey();
    objc_msgSend_setComputePipelineState_(a2, v310, v309, v311, v312, v313, v314, v315, 0, 0, 0, 0, 0);
    v323 = objc_msgSend_threadExecutionWidth(v309, v316, v317, v318, v319, v320, v321, v322);
    if (v323 <= 1)
    {
      v331 = 1;
    }

    else
    {
      v331 = v323;
    }

    objc_msgSend_maxTotalThreadsPerThreadgroup(v309, v324, v325, v326, v327, v328, v329, v330);
    MPSLibrary::ReleaseMPSKey();
    v332 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
    v449 = 0uLL;
    v450 = 0;
    v446 = v419[2];
    v445 = *v419;
    (*(*v332 + 16))(&v449);
    v333 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v334, v333, 0, v335, v336, v337, v338);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v339, 0, 0, v340, v341, v342, v343);
    objc_msgSend_setTexture_atIndex_(a2, v344, TempTexture, 0, v345, v346, v347, v348);
    objc_msgSend_setTexture_atIndex_(a2, v349, a4[13], 1, v350, v351, v352, v353);
    if (v427)
    {
      objc_msgSend_setTexture_atIndex_(a2, v354, v413, 2, v355, v356, v357, v358);
    }

    objc_msgSend_setBuffer_offset_atIndex_(a2, v354, v411, 0, 1, v356, v357, v358);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v359, v418, 0, 2, v360, v361, v362);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v363, v403, 0, 3, v364, v365, v366);
    objc_msgSend_setBytes_length_atIndex_(a2, v367, &v431, 64, 0, v368, v369, v370);
    v378 = *v419;
    v379 = 2 * v449.i64[0];
    if (*v419 > (2 * v449.i64[0]) || a4[19] > 2 * v449.i64[1] || v300 < v331 >> 1)
    {
      if (!v379)
      {
        v380 = 0;
        v381 = a4[19];
        v382 = 2 * v449.i64[1];
        if (2 * v449.i64[1])
        {
          goto LABEL_112;
        }

        goto LABEL_106;
      }
    }

    else
    {
      v449 = vdupq_n_s64(1uLL);
      v450 = v331;
      v379 = 2;
    }

    v380 = (v378 + v379 - 1) / v379;
    v381 = a4[19];
    v382 = 2 * v449.i64[1];
    if (2 * v449.i64[1])
    {
LABEL_112:
      v383 = &v381[v382 - 1] / v382;
      if ((v410 | v422 ^ 1))
      {
LABEL_114:
        v384 = v450;
        if ((objc_msgSend_retainedReferences(a3, v371, v372, v373, v374, v375, v376, v377) & 1) == 0)
        {
          v390 = v403;
          if (v411)
          {
            v397 = v411;
          }

          if (v418)
          {
            v398 = v418;
          }

          v430[0] = MEMORY[0x277D85DD0];
          v430[1] = 3221225472;
          v430[2] = sub_239D712EC;
          v430[3] = &unk_278B2F2A0;
          v430[4] = v403;
          v430[5] = v411;
          v430[6] = v418;
          objc_msgSend_addCompletedHandler_(a3, v391, v430, v392, v393, v394, v395, v396);
        }

        v445.i64[0] = v380;
        v445.i64[1] = v383;
        v446 = (v300 + v384 - 1) / v384;
        v428 = v449;
        v429 = v450;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v385, &v445, &v428, v386, v387, v388, v389);
LABEL_121:
        v265 = 0;
        goto LABEL_122;
      }

LABEL_113:
      v380 = (v378 + v379 - 1) / v379;
      v383 = &v381[v382 - 1] / v382;
      goto LABEL_114;
    }

LABEL_106:
    v383 = 0;
    if ((v410 | v422 ^ 1))
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

LABEL_122:
  MPSAutoCache::~MPSAutoCache(v451);
  return v265;
}

uint64_t sub_239D6FC44(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = MPSDevice::GetMPSDevice();
  if (result)
  {
    v17 = result;
    if (objc_msgSend_decodeBoolForKey_(a1, v11, a3, v12, v13, v14, v15, v16) & 1) != 0 && (*a5 = 0, (objc_msgSend_decodeBoolForKey_(a1, v18, a3, v19, v20, v21, v22, v23)))
    {
      v61 = 0;
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v31 = objc_msgSend_initWithFormat_(v24, v25, @"%@%@", v26, v27, v28, v29, v30, a3, @".length");
      v32 = objc_alloc(MEMORY[0x277CCACA8]);
      v39 = objc_msgSend_initWithFormat_(v32, v33, @"%@%@", v34, v35, v36, v37, v38, a3, @".data");
      v46 = objc_msgSend_decodeInt64ForKey_(a1, v40, v31, v41, v42, v43, v44, v45);
      v52 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v47, v39, &v61, v48, v49, v50, v51);

      if (v52 && 4 * v46 == v61 && (v53 = malloc_type_malloc(4 * v46, 0x100004052888210uLL)) != 0)
      {
        v54 = v53;
        MPSCopyToFromNetworkByteOrder32();
        *a5 = 1;
        if (v46 == a4)
        {
          v55 = (*(*v17 + 24))(v17);
          v60 = objc_msgSend_newBufferWithBytes_length_options_(a2, v56, v54, 4 * a4, 16 * v55, v57, v58, v59);
        }

        else
        {
          v60 = 0;
          *a5 = 0;
        }

        free(v54);
        return v60;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      *a5 = 1;
    }
  }

  return result;
}

void sub_239D700A4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v11 = objc_msgSend_contents(a2, a2, a3, a4, a5, a6, a7, a8);
    objc_msgSend_encodeBool_forKey_(a1, v12, v11 != 0, a3, v13, v14, v15, v16);
    if (v11)
    {
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v24 = objc_msgSend_initWithFormat_(v17, v18, @"%@%@", v19, v20, v21, v22, v23, a3, @".length");
      v25 = objc_alloc(MEMORY[0x277CCACA8]);
      v43 = objc_msgSend_initWithFormat_(v25, v26, @"%@%@", v27, v28, v29, v30, v31, a3, @".data");
      objc_msgSend_encodeInt64_forKey_(a1, v32, a4, v24, v33, v34, v35, v36);

      v37 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
      if (v37)
      {
        v38 = v37;
        MPSCopyToFromNetworkByteOrder32();
        objc_msgSend_encodeBytes_length_forKey_(a1, v39, v38, 4 * a4, v43, v40, v41, v42);
        free(v38);
      }
    }
  }

  else
  {

    objc_msgSend_encodeBool_forKey_(a1, 0, 0, a3, a5, a6, a7, a8);
  }
}

uint64_t sub_239D70B04(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 200);
  v10 = *(a1 + 208);
  v11 = *(a4 + 120);
  v12 = *(a4 + 136);
  v13 = *(a4 + 160);
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    v44 = *(a4 + 120);
    v46 = a2;
    v48 = a3;
    v14 = *(a4 + 144);
    v15 = *(a4 + 152);
    if (*(a1 + 216) != 1)
    {
      v40 = a1;
      v41 = MTLReportFailureTypeEnabled();
      a1 = v40;
      if (v41)
      {
        MTLReportFailure();
        a1 = v40;
      }
    }

    v16 = a1;
    if (*(a1 + 224) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_width(*a4, a2, a3, a4, a5, a6, a7, a8, v44, v46, v48);
    if (objc_msgSend_width(*a4, v17, v18, v19, v20, v21, v22, v23) != v9 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_height(*a4, v24, v25, v26, v27, v28, v29, v30);
    if (objc_msgSend_height(*a4, v31, v32, v33, v34, v35, v36, v37) != v10 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v14 != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    a2 = v47;
    a3 = v49;
    a1 = v16;
    v11 = v45;
    if (v15 != 1)
    {
      v42 = MTLReportFailureTypeEnabled();
      v11 = v45;
      a2 = v47;
      a3 = v49;
      v43 = v42;
      a1 = v16;
      if (v43)
      {
        MTLReportFailure();
        v11 = v45;
        a1 = v16;
        a2 = v47;
        a3 = v49;
      }
    }
  }

  *(a1 + 216) = 1;
  *(a1 + 224) = 1;
  *(a1 + 440) = 1;
  *(a4 + 168) = v9 >> 1;
  *(a4 + 176) = v10 >> 1;
  *(a4 + 120) = v11;
  *(a4 + 136) = v12;
  v38 = vdupq_n_s64(1uLL);
  *(a4 + 144) = v38;
  *(a4 + 160) = v13;

  return sub_239D6E498(a1, a2, a3, a4, v38);
}

uint64_t sub_239D710B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 64);
  objc_msgSend_device(a1, a2, a3, a4, a5, a6, a7, a8);
  MPSDevice = MPSDevice::GetMPSDevice();
  if (!MPSDevice && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = MPSCreateFunctionConstantValues();
  v55 = (v8 >> 6) & 7;
  v54 = (v8 >> 9) & 7;
  v53 = (v8 & 0x1000) != 0;
  v52 = (v8 & 0x2000) != 0;
  v51 = (v8 & 0x4000) != 0;
  v50 = (v8 & 0x8000) != 0;
  v49 = (v8 & 0x200000) != 0;
  v48 = BYTE2(v8) & 0x1F;
  v47 = (*(MPSDevice + 1476) & 0x400) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v11, &v53, 53, 2, v12, v13, v14);
  objc_msgSend_setConstantValue_type_atIndex_(v10, v15, &v52, 53, 3, v16, v17, v18);
  if (((v8 >> 6) & 7) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v10, v19, &v55, 37, 4, v20, v21, v22);
  }

  if (((v8 >> 9) & 7) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v10, v19, &v54, 37, 5, v20, v21, v22);
  }

  v23 = v8 & 0x3F;
  if ((v8 & 0x3F) - 1 >= 0xF)
  {
    v23 = 0;
  }

  v46 = v23;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v19, &v46, 41, 6, v20, v21, v22);
  objc_msgSend_setConstantValue_type_atIndex_(v10, v24, &v51, 53, 7, v25, v26, v27);
  objc_msgSend_setConstantValue_type_atIndex_(v10, v28, &v50, 53, 8, v29, v30, v31);
  objc_msgSend_setConstantValue_type_atIndex_(v10, v32, &v48, 41, 9, v33, v34, v35);
  objc_msgSend_setConstantValue_type_atIndex_(v10, v36, &v49, 53, 10, v37, v38, v39);
  objc_msgSend_setConstantValue_type_atIndex_(v10, v40, &v47, 53, 11, v41, v42, v43);
  v44 = _MPSNewSpecializedFunction();

  return v44;
}

void sub_239D7129C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
  }

  v3 = *(a1 + 40);
  if (v3)
  {
  }
}

void sub_239D712EC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
  }

  v3 = *(a1 + 48);
  if (v3)
  {
  }
}

uint64_t MPSDecrementReadCount()
{
  return MEMORY[0x282123FB0]();
}

{
  return MEMORY[0x282123FB8]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}